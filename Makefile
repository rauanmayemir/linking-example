STDLIB_PATH=$(shell ocamlc -where)
BUILD_PATH=_build/default

all: app main

clean:
	dune clean
	rm -rf main

app:
	dune build app.exe.o

main:
	clang -o main -I $(STDLIB_PATH) -I $(BUILD_PATH) main.c _build/default/app.exe.o
