.PHONY: all
all: test_suffix show-words

file_list := hello.x hello.c hello.o hello.h
test_suffix:
	@echo ---suffix: $(suffix $(file_list)) 
	@echo ---basename: $(basename $(file_list)) 

letters := $(foreach letter,a b c d e,$(letter))
show-words:
	# letters has $(words $(letters)) words: '$(letters)'
