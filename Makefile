.PHONY: build ci clean format run test

build:
	@dune build

ci: clean build format test

clean:
	@rm -Rf _build

format:
	@dune fmt

run:
	@./_build/default/bin/main.exe

test:
	@dune test
