import os
import sys
import subprocess
import platform

def launch_listener():
    listener_script = os.path.join(os.path.dirname(__file__), "udp_listener_worker.py")
    subprocess.Popen([
        "powershell.exe", "-NoExit", "-Command",
        f"python {listener_script}"
    ])

if __name__ == "__main__":
    launch_listener()