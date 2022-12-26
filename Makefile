.PHONY: build clean run

build:
	dune build

clean:
	rm -Rf _build

run: build
	./_build/default/bin/main.exe
