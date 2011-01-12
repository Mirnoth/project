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
CFLAGS = -Wall -Wextra -std=c99 -pedantic
#CFLAGS = -Wall -Wextra
SDLFLAGS = `sdl-config --cflags --libs` -lSDL_image -lSDL_ttf

Hedgewood: main.o SDLfunctions.o menu.o graphicUpdate.o about.o highscore.o pathfinding.o hedgewoodIO.o
	$(CC) $(SDLFLAGS) $(CFLAGS) -o Hedgewood main.o SDLfunctions.o menu.o graphicUpdate.o about.o highscore.o pathfinding.o hedgewoodIO.o

main.o: main.c main.h SDLincludes.h structs.h hedgewoodIO.o
	$(CC) $(SDLFLAGS) $(CFLAGS)  -c main.c hedgewoodIO.o
#gcc `sdl-config --cflags --libs` -lSDL_gfx -Wall -Wextra -o Hedgewood main.c

SDLfunctions.o: SDLfunctions.c SDLfunctions.h SDLincludes.h structs.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c SDLfunctions.c SDLincludes.h

menu.o: menu.c menu.h SDLincludes.h SDLfunctions.o about.o highscore.o structs.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c menu.c SDLfunctions.o about.o highscore.o
	
about.o: about.h about.c SDLfunctions.o SDLincludes.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c about.c SDLfunctions.o

highscore.o: highscore.c highscore.h SDLfunctions.o SDLincludes.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c highscore.c SDLfunctions.o

graphicUpdate.o: graphicUpdate.c graphicUpdate.h pathfinding.o structs.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c graphicUpdate.c pathfinding.o
	
pathfinding.o: pathfinding.c pathfinding.h SDLincludes.h SDLfunctions.o structs.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c pathfinding.c SDLfunctions.o


hedgewoodIO.o: hedgewoodIO.h hedgewoodIO.c structs.h SDLincludes.h
	$(CC) $(SDLFLAGS) $(CFLAGS) -c hedgewoodIO.h hedgewoodIO.c

# Aufruf des Targets "clean" löscht  alle nicht mehr benötigten Dateien
clean: 
	rm *.o # lösche alle Objektdateien 
	rm *.gch # lösche precompiled header
