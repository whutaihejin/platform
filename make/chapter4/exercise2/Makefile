.PHONY: all
all: test_filter test_filter-out test_findstring

# function filter test
words := he the hen other the%
test_filter:
	@echo he matches: $(filter he, $(words))
	@echo %he matches: $(filter %he, $(words))
	@echo he% matches: $(filter he%, $(words))
	@echo %he% matches: $(filter %he%, $(words))

# function filter-out test
all_source := count_words.c counter.c lexer.l counter.h lexer.h
to_compile := $(filter-out %.h, $(all_source))
test_filter-out:
	@echo all_source: $(all_source)
	@echo to_comile: $(to_compile)

# function findstring test
path := /test/book/out/ch03-findstring-1
test_findstring:
	# path = $(path)
	# $(findstring /test/book/admin, $(path))
	# $(findstring /test/book/bin, $(path))
	# $(findstring /test/book/dblite_0.5, $(path))
	# $(findstring /test/book/examples, $(path))
	# $(findstring /test/book/out, $(path))
	# $(findstring /test/book/test, $(path))
