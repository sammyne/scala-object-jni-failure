
.PHONY: all
all: helloworld

CFLAGS=-I$(JAVA_HOME)/include -I$(JAVA_HOME)/include/linux

helloworld:
	gcc -c -Wall -Werror -fPIC -o $@.o $(CFLAGS) helloworld.c
	gcc -shared -o lib$@.so $@.o

.PHONY: clean
clean:
	@rm -f *.o *.so
