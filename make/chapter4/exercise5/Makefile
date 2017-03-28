.PHONY: all
all: test_wildcard test_dir

vim_exists := $(wildcard ~/.vimrc)
not_exists := $(wildcard ~/.testrc)
dir_list := /home/taihejin/ll.v /home/ll/vim.v
test_wildcard:
	@echo --$(vim_exists)--
	@echo --$(not_exists)--
	@echo --$(dir /home/taihejin/ll.v /home/ll/vim.v)--
	@echo --$(notdir /home/taihejin/ll.v /home/ll/vim.v)--

source-dirs := $(sort $(dir $(shell find . -name '*.c')))
extrieve-dirs = $(sort 														\
									$(dir 													\
										$(shell find $1 -name '*.c')))

source-files := $(sort $(notdir $(shell find . -name '*.h')))
extrieve-files = $(sort 													\
										$(notdir 											\
											$(shell find . -name '*.h')))
test_dir:
	@echo ---$(source-dirs)---
	@echo ---$(call extrieve-dirs,.)---
	@echo ---source-files: $(source-files)---
	@echo ---source-files 2: $(call extrieve-files,.)---
