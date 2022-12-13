DEBUG=0
CFLAGS=-Wall -Wextra -Wshadow -std=c89
OBJ=bin2h.o 
EXECUTABLE=bin2h
prefix=/usr/local
exec_prefix=$(prefix)

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
.PHONY: install
.PHONY: uninstall

clean:
	$(RM) -f $(OBJ) $(EXECUTABLE)

install:
	cp $(EXECUTABLE) $(exec_prefix)/bin/$(EXECUTABLE)

uninstall:
	$(RM) $(exec_prefix)/bin/$(EXECUTABLE)
