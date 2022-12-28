.PHONY: build ci clean run test

build:
	dune build

ci: clean build test

clean:
	rm -Rf _build

run:
	./_build/default/bin/main.exe

test:
	dune test
