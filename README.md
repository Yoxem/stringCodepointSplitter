# stringCodepointSplitter

Split a string to a list of strings of a character by the unicode codepoint.

It requires module Uutf.

## Dependencies
 - OCaml >= 4.06
 - dune
 - uutf
 - fildlib

## Install

```
$ cd /path/to/stringCodepointSplitter

$ dune build

$ dune install

```

## Generate Docs
```
$ dune build @doc
```

Generated documentations will be in `/path/to/stringCodepointSplitter/_build/default/_doc` in 
various formats, incl. html.
## Example

```OCaml

let example = "m̄知 who you're." (*don't know who you are*) in

List.map (fun x -> print_string (x ^ ", ")) (StringCodepointSplitter.split_string_by_unicode_codepoint example);;
  
(*it will output : "m, ̄, 知,  , w, h, o,  , y, o, u, ', r, e, ., "*)
```
