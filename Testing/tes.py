import socket

# --------------------------------------------------------------------
# Bind to the same port used by the TC sender socket
LOCAL_PORT = 5002  # must match the port your sender uses
BUFFER_SIZE = 2048
# --------------------------------------------------------------------

def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("192.168.1.10", LOCAL_PORT))
    print(f"Listening for UDP messages on port {LOCAL_PORT}...")

    while True:
        data, addr = sock.recvfrom(BUFFER_SIZE)
        print(f"\nReceived {len(data)} bytes from {addr}")
        print(data.hex())  # raw hex output
        # optionally, also print as bytes:
        print("Raw bytes:", data)

if __name__ == "__main__":
    main()