# -*- MakeFile -*-


#target: dependencies
#	action

all: tip geom

geom: geom.o gd.o
	gcc geom.o gd.o -o geom -Wall

geom.o: geom.c gd.h
	gcc -c geom.c -Wall

gd.o: gd.c
	gcc -c gd.c -Wall

tip: tip.o gd.o
	gcc tip.o gd.o -o tip -Wall

tip.o: tip.c gd.h
	gcc -c tip.c -Wall

clean:
	rm -f *.o tip geom