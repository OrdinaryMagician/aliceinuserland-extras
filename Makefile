CFLAGS := -std=c99 -Wall -Wextra -Werror -pedantic -O2 -pipe \
	  -Wno-unused-function -Wno-unused-parameter -Wno-empty-body \
	  -Wno-sequence-point -Isrc/
PREFIX ?= /usr/local
.PHONY : clean install
UTILS := say
SOURCES := $(patsubst %.c,%.o,$(wildcard src/*.c))
all: $(SOURCES) $(UTILS)
.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<
say:
	$(CC) $(CFLAGS) src/say.o -o bin/say
clean:
	rm -f bin/*
	rm -f src/*.o
install:
	mkdir -p "$(PREFIX)/bin"
	cp -r bin/ "$(PREFIX)/bin/"
