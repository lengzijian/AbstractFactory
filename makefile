CC=g++
FLAGS=-I.  
LDFLAGS=-L/usr/lib -Wall

OBJECTS=Product.o AbstractFactory.o main.o
ALL_BIN=abstractfactory

all:$(ALL_BIN) 

$(ALL_BIN):$(OBJECTS) 
	$(CC) $(FLAGS) $(LDFLAGS) -o $@ $^


%.o:%.cpp
	$(CC) -c $< $(FLAGS)

clean:
	rm -fr $(OBJECTS)
	rm -fr $(ALL_BIN)
