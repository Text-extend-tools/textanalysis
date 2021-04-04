CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wshadow -Wunused-parameter -Wstrict-prototypes
RM = rm -f

all: bigrams cryptogram spellcheck

bigrams: src/bigrams/bigrams.c src/bigrams/hashtable.c
	$(CC) $(CFLAGS) -o $@ $^ -lm -s

cryptogram: src/cryptogram/cryptogram.c
	$(CC) $(CFLAGS) -o $@ $^ -s

spellcheck: src/spellcheck/spellcheck.c
	$(CC) $(CFLAGS) -o $@ $^ -lm -s

clean:
	$(RM) bigrams cryptogram spellcheck
