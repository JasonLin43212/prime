all: sieve.o sieve.h main.o
	gcc sieve.o main.o -lm

sieve.o: sieve.c sieve.h
	gcc -c sieve.c -lm

main.o: main.c sieve.h
	gcc -c main.c -lm

run:
	./a.out $(args)