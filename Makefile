CC = g++ -std=c++11 $(CFLAGS) $(LDFLAGS)
STATIC_LIB=libillegalword.a

all:
	$(CC) -c word_finder.cpp
	$(CC) -c illegal_word.cpp
	
	# ar -crv $(STATIC_LIB) word_finder.o illegal_word.o
	gcc-ar -crv $(STATIC_LIB) word_finder.o illegal_word.o

	rm -rf word_finder.o
	rm -rf illegal_word.o
	#@g++ -std=c++11 -fPIC $(CFLAGS) $(LDFLAGS) -shared -o libillegalword.so word_finder.cpp illegal_word.cpp

