/*
 *  menu.h
 *  Hedgewood
 *	
 *	Prozedurale Programmierung WS10/11	TUHH
 *
 *  Created by Tobias Conradi
 *	Version 09.01.11
 *
 *  Copyright 2011 Gruppe 34. All rights reserved.
 *	
 *	Description:
 *	
 *	
 */

#include "SDLfunctions.h"

#define BUTTONCOUNT 4

struct menuDataStore
{
	SDL_Rect *buttons[BUTTONCOUNT];
};


void menuStart(SDL_Surface *screen);

void setupMenu(SDL_Surface *screen, struct menuDataStore *dataStore);

int testLoop(SDL_Surface *screen, struct menuDataStore *dataStore);


