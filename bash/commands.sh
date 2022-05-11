declare -A -g commands

# You can do nested arrays but you have to simulated it with for loops. No
# biggie.

commands[g]=git
commands[p]=ipython

declare -A -g git

git[p]=push
git[s]=status
