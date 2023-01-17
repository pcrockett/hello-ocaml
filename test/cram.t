End-to-end Cram tests:

  $ main.exe
  Hello, World!

  $ main.exe Phil
  Hello, Phil!

  $ main.exe Phil the Magnificent
  Hello, Phil the Magnificent!

  $ main.exe > /dev/full
  No space left on device
  [1]

The following tests make sure our executable is statically linked. Inspired by:

https://ocamlpro.com/fr/blog/2021_09_02_generating_static_and_portable_executables_with_ocaml

  $ file "$(command -v main.exe)" | grep --perl-regexp --only-matching "\w+ linked"
  statically linked

  $ ldd "$(command -v main.exe)" 2>&1 | grep --fixed-strings --only-matching "not a dynamic executable"
  not a dynamic executable
