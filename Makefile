CC=gcc
LD=gcc
OBJ=bin2h.o 

%.o: %.c
	$(CC) -c $< -o $@

bin2h: $(OBJ)
	$(LD) $^ -o $@

.PHONY: clean

clean:
	rm -f *.o *~ bin2h
