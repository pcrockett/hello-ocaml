## Hello OCaml

Just taking [OCaml](https://ocaml.org/) for a spin.

### Getting Started

Make sure you have a [basic OCaml development environment](https://ocaml.org/docs/up-and-running) and you've installed
[dune](https://dune.build/). Then run:

```bash
make build run
```

### Usage

Check out the end-to-end tests in [the Cram test file](test/cram.t) to see how the program should behave.

Run `make test` to execute these tests.

### What is Demonstrated

This is a little more than a simple one-line Hello World app. I'd call this a _near_ production-grade Hello World app.
Among other things, it demonstrates:

* The dune build system
* Using modules
* Error handling
    * Specifically, handling the error when you do something like `main.exe > /dev/full`
    * Wrapping exceptions in Results
* Pipelining
* Partially applied functions

### To do

* [x] Figure out testing
* [ ] Code formatter / linter?
* [ ] [Get feedback from an experienced OCamler](https://fosstodon.org/@pcrock/109585554601601900)
