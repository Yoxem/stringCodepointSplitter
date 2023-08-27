(lang dune 3.9)

(name stringCodepointSplitter)
(version 0.0.1)
(generate_opam_files true)

(source
 (github yoxem/stringCodepointSplitter))

(authors "Tan Kian-ting <yoxem@kianting.info>")

(maintainers "Tan Kian-ting <yoxem@kianting.info>")
(bug_reports https://github.com/Yoxem/stringCodepointSplitter/issues)
(license MIT)

(documentation https://github.com/Yoxem/stringCodepointSplitter/)

(package
 (name stringCodepointSplitter)
 (synopsis "Split a string to a list of strings of a character by the unicode codepoint")
 (description "Split a string to a list of strings of a character by the unicode codepoint.
It requires module Uutf.")

 (depends ocaml findlib dune uutf)
 (tags (string utf8)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
