## Hello OCaml

Just taking [OCaml](https://ocaml.org/) for a spin.

### Getting Started

Make sure you have a [basic OCaml development environment](https://ocaml.org/docs/up-and-running) and you've installed
[dune](https://dune.build/). Then run:

```bash
make run
```

### Usage

_Recommended: Add `_build/default/bin` to your `PATH`. The [.envrc file](.envrc.template) will do that for you if you
have direnv installed._

```bash
main.exe
# Hello, World!

main.exe Phil
# Hello, Phil!

main.exe Phil the Magnificent
# Hello, Phil the Magnificent!
```

<small>_Yes, it's called `main.exe` even on a non-Windows system..._</small>

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

* [ ] Figure out testing
* [ ] Code formatter / linter?
* [ ] Get feedback from an experienced OCamler
