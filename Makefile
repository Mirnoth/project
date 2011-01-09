#
#  Makefile
#  Hedgewood
#	
#	Prozedurale Programmierung WS10/11	TUHH
#
#  Created by Tobias Conradi
#	Version 08.01.11
#
#  Copyright 2011 Gruppe 34. All rights reserved.
#	
#	Description:



CC = gcc 
# Fuer Kompilerflags wird meistens die Konstante CFLAGS definiert
#CFLAGS = -Wall -Wextra -ansi -pedantic -DPARAUSGABE -O3 -mtune=core2 -march=core2 
CFLAGS = -Wall -Wextra -ansi -pedantic
#CFLAGS = -Wall -Wextra
SDLFLAGS = `sdl-config --cflags --libs` -lSDL_gfx

Hedgewood: main.o SDLfunctions.o
	$(CC) $(SDLFLAGS) $(CFLAGS) -o Hedgewood main.o SDLfunctions.o

main.o: main.c main.h SDLincludes.h
	$(CC) $(SDLFLAGS) $(CFLAGS)  -c main.c SDLincludes.h

#gcc `sdl-config --cflags --libs` -lSDL_gfx -Wall -Wextra -o Hedgewood main.c

SDLfunctions.o: SDLfunctions.c SDLfunctions.h SDLincludes.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c SDLfunctions.c SDLincludes.h


#functions.o: functions.c
#	$(CC) $(CFLAGS) -c functions.c


# Aufruf des Targets "clean" löscht  alle nicht mehr benötigten Dateien
clean: 
	rm *.o # lösche alle Objektdateien 