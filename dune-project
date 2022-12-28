(lang dune 3.6)

(name hello_ocaml)

(generate_opam_files true)

(source
 (github pcrockett/hello-ocaml))

(authors "Phil Crockett")

(maintainers "Phil Crockett")

(license LICENSE)

; (documentation https://url/to/documentation)

(package
 (name hello_ocaml)
 (synopsis "Taking OCaml for a spin")
 (description "Just a test to help get me started with OCaml")
 (depends ocaml dune (ounit2 :with-test)))
; (tags
;  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
