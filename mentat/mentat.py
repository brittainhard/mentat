"""
https://docs.python.org/3/library/pty.html
"""

import subprocess, os, pty, sys


class MentatShell:

    def __init__(self):
        self.counter = 0
        self.shell = os.environ.get("SHELL", "sh")
        self.pty = pty.spawn(self.shell, self.pty_loop)

    def pty_loop(self, fd):
        if self.counter == 0:
            os.write(fd, b'export PS1="[M] $PS1"\n')
            os.write(fd, b"echo Welcome!\n")
            self.counter += 1
        data = os.read(fd, 1024)
        return data
    

if __name__ == "__main__":
    a = MentatShell()
