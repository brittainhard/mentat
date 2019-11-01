import subprocess, os, pty, sys


class MentatShell:

    def __init__(self):
        shell = os.environ.get("SHELL", "sh")
        self.pty = pty.spawn(shell, self.read)

    def read(self, fd):
        data = os.read(fd, 1024)
        return data
    

if __name__ == "__main__":
    a = MentatShell()
