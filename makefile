all: base64.o test.o
	gcc base64.o test.o -lstdc++ -o base64test

base64.o: base64.h base64.cpp
	gcc -c base64.cpp -lstdc++ -o base64.o

test.o: test.cpp base64.h
	gcc -c test.cpp -lstdc++ -o test.o

clean:
	rm -rf *.o
