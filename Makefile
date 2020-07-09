all: sum_test

sum_test: sum.o main.o
	gcc -o sum_test sum.o main.c

sum.o: sum.h sum.cpp
	gcc -c -o main.o main.c

main.o: main.cpp sum.h
	gcc -c -o main.o main.c

clean: rm -f sum_test *.o
