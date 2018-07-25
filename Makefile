STDLIB = $(shell ocamlc -where)

all: app main

app:
	dune build app.exe.o

main:
	clang -o main -I $(STDLIB) main.c _build/default/app.exe.o

clean:
	dune clean
