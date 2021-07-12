DEBUG=0
CFLAGS=-Wall -Wextra -Wshadow -std=c89
OBJ=bin2h.o 
EXECUTABLE=bin2h

all: $(EXECUTABLE)
ifeq ($(DEBUG),1)
all: CFLAGS+=-DDEBUG -g
else
all: CFLAGS+=-O3
all: LDFLAGS+=-O3
endif

%.o: %.c
	$(CC) -c -x c $(CFLAGS) $< -o $@

$(EXECUTABLE): $(OBJ)
	$(CC) $^ $(LDFLAGS) -o $@

.PHONY: clean

clean:
	$(RM) -f $(OBJ) $(EXECUTABLE)
