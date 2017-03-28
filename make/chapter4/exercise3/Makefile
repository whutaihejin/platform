.PHONY: all
all: test_subst test_patsubst

uid_gid = $(wordlist 3, 4, $(subst :, , $(shell grep "^$1:" /etc/passwd)))

sources := count_words.c counter.c lexer.c
objects := $(subst .c,.o,$(sources))
objects_test := $(subst .c, .o, $(sources))
test_subst:
	@echo "sources:" $(sources)	
	@echo "objects:" $(objects)
	@echo "objects:" $(objects_test)

dir_path := /test/output/target/
words_content := test output target
test_patsubst:
	@echo "patsubst:" $(patsubst %/,%, $(dir_path))
	@echo "patsubst2:" $(dir_path:%/=%)
	
	@echo "words:" $(words_content)
	@echo "words:" $(words $(words_content))
	@echo "word 1:" $(word 1, $(words_content))
	@echo "word 2:" $(word 2, $(words_content))
	@echo "word 3:" $(word 3, $(words_content))
	@echo "word 4:" $(word 4, $(words_content))
	@echo "word last:" $(word $(words $(words_content)), $(words_content))
	
	@echo "make version:" $(subst ., ,$(MAKE_VERSION))
	@echo "minor version:" $(word 2, $(subst ., ,$(MAKE_VERSION)))
	@echo "major version:" $(firstword $(subst ., ,$(MAKE_VERSION)))
	
	@echo "word list:" $(wordlist 3, 4, $(subst :, , $(shell grep "^taihejin:" /etc/passwd)))
	@echo "word list 2:" $(call uid_gid, taihejin)
