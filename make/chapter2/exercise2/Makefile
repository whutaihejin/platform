.PHONY: all
all: prog

prog: size prog.o
	gcc -o $@ prog.o

size: prog.o
	size $^
	touch size

.PHONY: clean
clean:
	rm -rf size prog.o prog
