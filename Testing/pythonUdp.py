#!/usr/bin/env python3
import socket
import struct
import threading

# --------------------------------------------------------------------
# Protocol constants
# --------------------------------------------------------------------
START_WORD = 0xAFFE

TYPE_TM = 0x00
TYPE_TC = 0x01

# TM IDs
TM_ACK = 0x01
TM_EXEC = 0x02
TM_INSTRUMENT_DATA = 0x03
TM_INSTRUMENT_HK = 0x04
TM_SENSOR_TEMPERATURE = 0x05

# TC IDs
TC_ENABLE_INSTRUMENT = 0x01
TC_SET_RECEIVE_STATE = 0x02
TC_DUMP_INSTRUMENT_DATA = 0x03
TC_READ_LAST_TEMP = 0x04
TC_SET_HEATER_STATE = 0x05
TC_GET_AVERAGE_TEMP = 0x06

# Target satellite IP and port
SAT_IP = "192.168.1.10"

SAT_PORT = 5001

# Local port to bind so that replies come back here
LOCAL_PORT = 5002

# --------------------------------------------------------------------
# Sequence counter management
# --------------------------------------------------------------------
seq_lock = threading.Lock()
seq_counter = 1  # initial sequence, will be updated by incoming TM

# --------------------------------------------------------------------
# TM decoding helpers
# --------------------------------------------------------------------
def decode_tm_ack(payload: bytes):
    print(" TM_ACK (no payload)")


def decode_tm_exec(payload: bytes):
    if len(payload) < 1:
        print(" TM_EXEC: invalid length")
        return
    status = payload[0]
    print(f" TM_EXEC: status={status}")


def decode_tm_instrument_data(payload: bytes):
    if len(payload) < 1:
        print(" TM_INSTRUMENT_DATA: invalid length")
        return
    status = payload[0]
    raw_data = payload[1:]
    if len(raw_data) % 2 != 0:
        print(" TM_INSTRUMENT_DATA: invalid uint16 array")
        return
    values = [struct.unpack(">H", raw_data[i:i+2])[0] for i in range(0, len(raw_data), 2)]
    print(f" TM_INSTRUMENT_DATA: status={status}, values={values}")


def decode_tm_instrument_hk(payload: bytes):
    if len(payload) < 3:
        print(" TM_INSTRUMENT_HK: invalid length")
        return
    receive_state, bytes_received, overflow = struct.unpack(">BBB", payload[:3])
    print(f" TM_INSTRUMENT_HK: receive_state={receive_state}, "
          f"bytes_received={bytes_received}, overflow={overflow}")


def decode_tm_sensor_temperature(payload: bytes):
    if len(payload) < 3:
        print(" TM_SENSOR_TEMPERATURE: invalid length")
        return
    sensor_id = payload[0]
    temperature = struct.unpack(">H", payload[1:3])[0]
    print(f" TM_SENSOR_TEMPERATURE: id={sensor_id}, temperature={temperature}")


# --------------------------------------------------------------------
# Parse incoming TM packet
# --------------------------------------------------------------------
def parse_tm(packet: bytes):
    global seq_counter

    print("\nRAW PACKET HEX:", packet.hex())
    if len(packet) < 7:
        print("Packet too short")
        return

    start, ptype, pid, seq, total_len = struct.unpack(">H B B B H", packet[:7])
    payload = packet[7:total_len]
    extra_data = packet[total_len:]

    print(f"TM header: start=0x{start:04X}, type=0x{ptype:02X}, "
          f"id=0x{pid:02X}, seq={seq}, total_len={total_len}")
    print(f"Payload ({len(payload)} bytes): {payload.hex()}")
    print(f"Extra data ({len(extra_data)} bytes): {extra_data.hex()}")

    # Decode payload
    if pid == TM_ACK:
        decode_tm_ack(payload)
    elif pid == TM_EXEC:
        decode_tm_exec(payload)
    elif pid == TM_INSTRUMENT_DATA:
        decode_tm_instrument_data(payload)
    elif pid == TM_INSTRUMENT_HK:
        decode_tm_instrument_hk(payload)
    elif pid == TM_SENSOR_TEMPERATURE:
        decode_tm_sensor_temperature(payload)
    else:
        print(f" Unknown TM ID 0x{pid:02X}")

    # Update sequence counter for next TC (skip ACK & EXEC)
    if pid not in (TM_ACK, TM_EXEC):
        with seq_lock:
            seq_counter = (seq + 1) & 0xFFFF
            print(f" Updated sequence counter to {seq_counter}")

    print("-" * 60)


# --------------------------------------------------------------------
# TM listener thread
# --------------------------------------------------------------------
def tm_listener(sock: socket.socket):
    while True:
        data, addr = sock.recvfrom(2048)
        print(f"\nReceived {len(data)} bytes from {addr}")
        parse_tm(data)


# --------------------------------------------------------------------
# TC packet builders
# --------------------------------------------------------------------
def build_header(packet_id: int, seq: int, payload_len: int) -> bytes:
    total_len = 7 + payload_len  # header=8 bytes (start+type+id+seq+total_len)
    return struct.pack(">H B B B H", START_WORD, TYPE_TC, packet_id, seq, total_len)


def tc_enable_instrument(seq: int, on: bool) -> bytes:
    payload = struct.pack(">B", 1 if on else 0)
    return build_header(TC_ENABLE_INSTRUMENT, seq, len(payload)) + payload


def tc_set_receive_state(seq: int, on: bool) -> bytes:
    payload = struct.pack(">B", 1 if on else 0)
    return build_header(TC_SET_RECEIVE_STATE, seq, len(payload)) + payload


def tc_dump_instrument_data(seq: int) -> bytes:
    return build_header(TC_DUMP_INSTRUMENT_DATA, seq, 0)


def tc_read_last_temperature(seq: int, sensor_id: int) -> bytes:
    payload = struct.pack(">B", sensor_id)
    return build_header(TC_READ_LAST_TEMP, seq, len(payload)) + payload


def tc_set_heater_state(seq: int, heater_id: int, on: bool) -> bytes:
    payload = struct.pack(">B B", heater_id, 1 if on else 0)
    return build_header(TC_SET_HEATER_STATE, seq, len(payload)) + payload


def tc_get_average_temperature(seq: int, sensor_id: int) -> bytes:
    payload = struct.pack(">B", sensor_id)
    return build_header(TC_GET_AVERAGE_TEMP, seq, len(payload)) + payload


# --------------------------------------------------------------------
# Main function
# --------------------------------------------------------------------
def main():
    global seq_counter

    # Create single socket for sending + receiving
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("192.168.1.1", LOCAL_PORT))  # bind to fixed port so device replies here

    # Start TM listener thread
    threading.Thread(target=tm_listener, args=(sock,), daemon=True).start()

    # User interface loop
    print("== TM/TC UDP Client ==")
    print(f"Sending TC to {SAT_IP}:{SAT_PORT}")
    print(f"Listening for TM on 0.0.0.0:{LOCAL_PORT}")
    print("Commands:")
    print(" 1 enable instrument ON")
    print(" 2 enable instrument OFF")
    print(" 3 set receive_state ON")
    print(" 4 set receive_state OFF")
    print(" 5 dump instrument data")
    print(" 6 read last temp (sensor 1)")
    print(" 7 heater 1 ON")
    print(" 8 heater 1 OFF")
    print(" 9 average temp sensor 1")
    print(" q quit")

    while True:
        cmd = input("Select command: ").strip().lower()
        if cmd == "q":
            break

        with seq_lock:
            seq = seq_counter

        # Build packet
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
            packet = tc_read_last_temperature(seq, 0x01)
        elif cmd == "7":
            packet = tc_set_heater_state(seq, 0x01, True)
        elif cmd == "8":
            packet = tc_set_heater_state(seq, 0x01, False)
        elif cmd == "9":
            packet = tc_get_average_temperature(seq, 0x01)
        else:
            print("Unknown command")
            continue

        sock.sendto(packet, (SAT_IP, SAT_PORT))
        print(f"Sent TC (seq={seq})\n")

        # Increment local sequence after sending
        with seq_lock:
            seq_counter = (seq_counter + 1) & 0xFFFF


if __name__ == "__main__":
    main()
