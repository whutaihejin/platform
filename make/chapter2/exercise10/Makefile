CFLAGS = -I include -L.

vpath %.c src
vpath %.l src
vpath %.h include

count_words: libcounter.a -lfl

count_words.o: counter.h

libcounter.a: libcounter.a(counter.o) libcounter.a(lexer.o)

counter.o: counter.h lexer.h

lexer.o: include/lexer.h

.PHONY: clean
clean:
	rm -rf libcounter.a count_words* lexer* counter*
