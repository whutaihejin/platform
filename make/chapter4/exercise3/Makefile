.PHONY: all
all: test_subst test_patsubst

sources := count_words.c counter.c lexer.c
objects := $(subst .c,.o,$(sources))
objects_test := $(subst .c, .o, $(sources))
test_subst:
	@echo "sources:" $(sources)	
	@echo "objects:" $(objects)
	@echo "objects:" $(objects_test)

dir_path := /test/output/target/
words_content := "test output target"
test_patsubst:
	@echo "patsubst:" $(patsubst %/,%, $(dir_path))
	@echo "patsubst2:" $(dir_path:%/=%)
	@echo "words:" $(words $(words_content))
