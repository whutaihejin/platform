.PHONY: all
all: test_suffix show-words test_foreach

file_list := hello.x hello.c hello.o hello.h
test_suffix:
	@echo ---suffix: $(suffix $(file_list)) 
	@echo ---basename: $(basename $(file_list)) 

letters := $(foreach letter,a b c d e,$(letter))
show-words:
	# letters has $(words $(letters)) words: '$(letters)'

var_list := SOURCES OBJECTS HOME
test_foreach:
	$(foreach i,$(var_list), $(if $($i),,$(shell echo $i has no value > /dev/stderr)))
