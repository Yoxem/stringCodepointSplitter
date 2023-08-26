doc : docs lib/stringCodepointSplitter.ml
	ocamlfind ocamldoc -package uutf -package findlib -html -charset=utf-8 lib/stringCodepointSplitter.ml -d docs

docs :
	mkdir docs