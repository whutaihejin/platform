.PHONY: all
all: test_wildcard

vim_exists := $(wildcard ~/.vimrc)
not_exists := $(wildcard ~/.testrc)
dir_list := /home/taihejin/ll.v /home/ll/vim.v
test_wildcard:
	@echo --$(vim_exists)--
	@echo --$(not_exists)--
	@echo --$(dir /home/taihejin/ll.v /home/ll/vim.v)--
	@echo --$(notdir /home/taihejin/ll.v /home/ll/vim.v)--

