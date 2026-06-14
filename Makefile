.PHONY: init update

init:
	git submodule update --init --recursive

update:
	git submodule update --remote --merge
