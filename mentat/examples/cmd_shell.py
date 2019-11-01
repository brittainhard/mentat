import cmd

class MentatShell(cmd.Cmd):
    """
    This one literally interprets any command input and parses it to a function.
    You would have to make thousands of functions for this to work, or
    auto-generate functions. Either way, this doesnt seem to be working.
    """

    intro = "Mentat"
    prompt = "m> "
    file = None

    def do_potato(self, arg):
        print("Potato!")

if __name__ == "__main__":
    MentatShell().cmdloop()
