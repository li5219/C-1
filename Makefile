CFLAGS = -Wall

clean	:
	rm -f *.o *.*~ *~ main wynik*

test1	:
	./main < test1 > wynik1

main	: main.c lib.c lib.o lib.h
	cc -c main.c lib.c
	cc main.o lib.o -o main
