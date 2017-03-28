.PHONY: all
all: test_subst

sources := count_words.c counter.c lexer.c
objects := $(subst .c,.o,$(sources))
objects_test := $(subst .c, .o, $(sources))
test_subst:
	@echo "sources:" $(sources)	
	@echo "objects:" $(objects)
	@echo "objects:" $(objects_test)
