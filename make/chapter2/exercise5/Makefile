CXXFLAGS = -I include
vpath %.c src
vpath %.l src
vpath %.h include

count_words: count_words.o counter.o lexer.o -lfl
	gcc $^ -o $@

count_words.o: count_words.c counter.h
	gcc -c $< -o $@

counter.o: counter.c counter.h lexer.h
	gcc $(CXXFLAGS) -c $< -o $@

lexer.o: lexer.c lexer.h
	gcc -c $<

lexer.c: lexer.l
	flex -t $< > $@

.PHONY: clean
clean:
	rm -rf count_words* lexer* counter*
