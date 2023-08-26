doc : docs stringCodepointSplitter.ml
	ocamlfind ocamldoc -package uutf -html -charset=utf-8 stringCodepointSplitter.ml -d docs

docs :
	mkdir docs