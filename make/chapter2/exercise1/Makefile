.PHONY: all
all: msg hello

.PHONY: msg
msg:	
	@printf "building the program...\n"

hello: hello.c
	gcc $^ -o $@

.PHONY: clean
clean:
	rm -f hello
