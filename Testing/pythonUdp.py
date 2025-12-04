#!/usr/bin/env python3
import socket
import struct
import itertools

# ---------- Protocol constants from slides ----------
START_WORD = 0xAFFE
TYPE_TM = 0x00
TYPE_TC = 0x01

# Packet identifiers (from your slides – adapt if needed)
PID_TC_ENABLE_INSTRUMENT      = 0x01
PID_TC_SET_RECEIVE_STATE      = 0x02
PID_TC_DUMP_INSTRUMENT_DATA   = 0x03
PID_TC_READ_LAST_TEMP         = 0x04
PID_TC_SET_HEATER_STATE       = 0x05
PID_TC_GET_AVERAGE_TEMP       = 0x06

PID_TM_ACK                    = 0x01
PID_TM_EXEC                   = 0x02
# ... instrument_data = 0x03, instrument_housekeeping = 0x04, etc.

SAT_IP = "192.168.1.10"   # from your slide
SAT_PORT = 5001           # receive port on satellite

# ---------- Helper: build common header ----------

def build_header(packet_type: int, packet_id: int, seq: int, payload_len: int) -> bytes:
    """
    Build the 7-byte TM/TC header.
    All fields big-endian as specified.
    """
    total_len = 7 + payload_len
    # >  = big endian
    # H  = 2-byte unsigned short (start)
    # B  = 1 byte (type)
    # B  = 1 byte (id)
    # B  = 1 byte (seq)
    # H  = 2-byte length
    return struct.pack(">H B B B H", START_WORD, packet_type, packet_id, seq, total_len)

# ---------- Build some example Telecommands ----------

def tc_enable_instrument(seq: int, on: bool) -> bytes:
    # cmd_state: 0x01 on, 0x00 off
    cmd_state = 0x01 if on else 0x00
    payload = struct.pack(">B", cmd_state)
    return build_header(TYPE_TC, PID_TC_ENABLE_INSTRUMENT, seq, len(payload)) + payload

def tc_set_receive_state(seq: int, on: bool) -> bytes:
    cmd_state = 0x01 if on else 0x00
    payload = struct.pack(">B", cmd_state)
    return build_header(TYPE_TC, PID_TC_SET_RECEIVE_STATE, seq, len(payload)) + payload

def tc_dump_instrument_data(seq: int) -> bytes:
    # no payload, just header
    return build_header(TYPE_TC, PID_TC_DUMP_INSTRUMENT_DATA, seq, 0)

def tc_read_last_temperature(seq: int, sensor_id: int) -> bytes:
    # sensor_id = 0x01 or 0x02 according to slide
    payload = struct.pack(">B", sensor_id)
    return build_header(TYPE_TC, PID_TC_READ_LAST_TEMP, seq, len(payload)) + payload

def tc_set_heater_state(seq: int, heater_id: int, on: bool) -> bytes:
    # heater_id = 0x01 or 0x02
    heater_state = 0x01 if on else 0x00
    payload = struct.pack(">B B", heater_id, heater_state)
    return build_header(TYPE_TC, PID_TC_SET_HEATER_STATE, seq, len(payload)) + payload

def tc_get_average_temperature(seq: int, sensor_id: int) -> bytes:
    payload = struct.pack(">B", sensor_id)
    return build_header(TYPE_TC, PID_TC_GET_AVERAGE_TEMP, seq, len(payload)) + payload

# ---------- TM parsing (at least the header) ----------

def parse_tm(packet: bytes):
    print(packet.hex())
    if len(packet) < 7:
        return
    start, ptype, pid, seq, total_len = struct.unpack(">H B B B H", packet[:7])
    payload = packet[7:total_len]

    print(f"TM header: start=0x{start:04X}, type=0x{ptype:02X}, "
          f"id=0x{pid:02X}, seq={seq}, len={total_len} payload={payload}")



# ---------- Simple interactive client ----------

def main():
    seq_counter = itertools.count(0)  # 0,1,2,... wrap handled by &0xFF below

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(2.0)

    print("== Simple TM/TC UDP test client ==")
    print(f"Target satellite: {SAT_IP}:{SAT_PORT}")
    print("Commands:")
    print("  1  enable instrument ON")
    print("  2  enable instrument OFF")
    print("  3  set receive_state ON")
    print("  4  set receive_state OFF")
    print("  5  dump instrument data")
    print("  6  read last temp (sensor 1)")
    print("  7  set heater 1 ON")
    print("  8  set heater 1 OFF")
    print("  9  get average temp (sensor 1)")
    print("  q  quit")
    print()

    while True:
        cmd = input("Select command: ").strip().lower()
        if cmd == "q":
            break

        seq = next(seq_counter) & 0xFF  # keep it 0–255

        if cmd == "1":
            packet = tc_enable_instrument(seq, True)
        elif cmd == "2":
            packet = tc_enable_instrument(seq, False)
        elif cmd == "3":
            packet = tc_set_receive_state(seq, True)
        elif cmd == "4":
            packet = tc_set_receive_state(seq, False)
        elif cmd == "5":
            packet = tc_dump_instrument_data(seq)
        elif cmd == "6":
            packet = tc_read_last_temperature(seq, sensor_id=0x01)
        elif cmd == "7":
            packet = tc_set_heater_state(seq, heater_id=0x01, on=True)
        elif cmd == "8":
            packet = tc_set_heater_state(seq, heater_id=0x01, on=False)
        elif cmd == "9":
            packet = tc_get_average_temperature(seq, sensor_id=0x01)
        else:
            print("Unknown selection")
            continue

        print(f"Sending TC (seq={seq}): {packet.hex()}")
        sock.sendto(packet, (SAT_IP, SAT_PORT))

        try:
            data, addr = sock.recvfrom(2048)
        except socket.timeout:
            print("No TM received (timeout)")
            continue
            

        print(f"Received {len(data)} bytes from {addr}")
        parse_tm(data)
        print()

        try:
            data, addr = sock.recvfrom(2048)
        except socket.timeout:
            print("No TM received (timeout)")
            continue
            

        print(f"Received {len(data)} bytes from {addr}")
        parse_tm(data)
        print()

        try:
            data, addr = sock.recvfrom(2048)
        except socket.timeout:
            print("No TM received (timeout)")
            continue
            

        print(f"Received {len(data)} bytes from {addr}")
        parse_tm(data)
        print()


if __name__ == "__main__":
    main()