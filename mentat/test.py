import subprocess, os

from mentat import MentatShell

shell = os.environ.get("SHELL", "sh")

def proc_loop(command):
    process = subprocess.Popen(["/bin/bash"], bufsize=0, stdin=subprocess.PIPE)
    process.stdin.write(command + b"\n")

proc_loop(b"vim")
