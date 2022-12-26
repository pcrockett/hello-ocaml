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
