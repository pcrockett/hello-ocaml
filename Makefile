.PHONY: build clean run

build: out/hello

clean:
	rm -Rf out

out/hello: src/hello.ml
	mkdir --parent out
	ocamlopt -o out/hello src/hello.ml

run: out/hello
	./out/hello
