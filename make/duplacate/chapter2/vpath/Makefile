VPATH = src
#CPPFLAGS = -I include

vpath %.c src
vpath %.h include

count_words: count_words.o counter.o lexer.o -lfl 
	gcc $^ -o $@

count_words.o: count_words.c include/counter.h
	gcc -c $<

counter.o: counter.c include/counter.h include/lexer.h
	gcc -c -I include $<

lexer.o: lexer.c include/lexer.h
	gcc -c $<

lexer.c: lexer.l
	flex -t $< > $@

clean:
	rm -rf lexer.c lexer.o counter.o count_words.o count_words
