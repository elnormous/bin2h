DEBUG=0
INSTALL=cp
INSTALL_PROGRAM=$(INSTALL)
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
	$(RM) $(OBJ) $(EXECUTABLE)

install:$(EXECUTABLE)
	mkdir -p $(exec_prefix)/bin
	$(INSTALL_PROGRAM) $(EXECUTABLE) $(exec_prefix)/bin/$(EXECUTABLE)

uninstall:
	$(RM) $(exec_prefix)/bin/$(EXECUTABLE)
