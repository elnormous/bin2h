CFLAGS=-Wall -std=c89
OBJ=bin2h.o 

%.o: %.c
	$(CC) -c -x c $(CFLAGS) $< -o $@

bin2h: $(OBJ)
	$(CC) $^ $(LDFLAGS) -o $@

.PHONY: clean

clean:
	rm -f *.o *~ bin2h
