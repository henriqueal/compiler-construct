env:
	eval `opam config env`
msg:
	menhir -v --list-errors sintatico.mly --compile-errors sintatico.msg > erroSint.ml

build:
	ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib sintaticoTest.byte

semantico:
	ocamlbuild -r -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib semanticoTest.byte
