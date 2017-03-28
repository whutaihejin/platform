.PHONY: all
all: test_sort test_shell test_duplicate

test_sort:
	@echo =$(sort d b s d t)=

stdout := $(shell echo normal message)
stderr := $(shell echo error message 1>&2)
start_time := $(shell date)
current_time = $(shell sleep 1; date)
test_shell:
	# $(stdout)
	# $(stderr)
	# $(start_time)
	# $(current_time)

has-duplicate = $(filter $(words $1), $(words $(sort $1)))
test_duplicate:
	@echo ---$(call has-duplicate, word)
	@echo ---$(foo)
	@echo ---$(call reverse,a,b)

reverse = $(2)$(1)
foo = $(call reverse,a,b)
