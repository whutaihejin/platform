OUTPUT_DIR := /tmp

$(OUTPUT_DIR)/very_big_file:
	$(free-space)

.PHONY: test
test:
	$(free-space)

define free-space
	@printf "Free disk space "
	@$(DF) . | $(AWK) 'NR == 3 {print $$4}'
endef

BIN    := /usr/bin
DF     := /bin/df
AWK    := $(BIN)/awk
