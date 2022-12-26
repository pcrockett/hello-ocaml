.PHONY: build clean run

build: _build/default/bin/main.exe

clean:
	rm -Rf _build

run: build
	./_build/default/bin/main.exe

_build/default/bin/main.exe: bin/main.ml lib/safe.ml lib/util.ml
	dune build
