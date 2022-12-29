## Hello OCaml

Just taking [OCaml](https://ocaml.org/) for a spin.

### Getting Started

Make sure you have a [basic OCaml development environment](https://ocaml.org/docs/up-and-running) and you've installed
[dune](https://dune.build/). Then run:

```bash
make build run
```

_It seems like you need specifically OCaml 4.14.0 to compile this codebase:_

* Use anything newer and you get OCaml 5.0, which seems to break `ocamlformat` because it's so new (as of this writing).
* Use anything older and you'll get a stdlib with some missing `Seq` functions.

I could be wrong about that.

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
* [x] Code formatter / linter?
* [x] [Get feedback from an experienced OCamler](https://fosstodon.org/@pcrock/109585554601601900)
    * [x] Make `Util.join` parameters more explicit
    * [x] Resolve errors when running `opam install ocamlformat` on my dev machine
    * [x] Format codebase
    * [ ] Capture stack trace for unexpected exceptions
