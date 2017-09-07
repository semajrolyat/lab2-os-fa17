CC=gcc
CFLAGS=-I.
DEPS = media.h
OBJ = main.o media.o
BIN = flix

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

flix: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:
	rm -f *.o $(BIN)
