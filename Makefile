.PHONY: build clean run test

build:
	dune build

clean:
	rm -Rf _build

run:
	./_build/default/bin/main.exe

test:
	dune test
