CFLAGS = -I include

vpath %.c src
vpath %.l src
vpath %.h include

count_words: counter.o lexer.o -lfl

count_words.o: counter.h

counter.o: counter.h lexer.h

lexer.o: include/lexer.h

.PHONY: clean
clean:
	rm -rf count_words* lexer* counter*
