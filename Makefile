CFLAGS = -Wall -g
EXE = msh
SOURCE = src/mentat.c
CC = gcc
DEPS = 

all: clean mentat

mentat: $(DEPS)
	$(CC) $(CFLAGS) $(SOURCE) -o $(EXE) $(DEPS)

clean:
	rm -rf *.o msh
