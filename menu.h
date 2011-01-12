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
#ifndef MENU_H
#define MENU_H

#include "structs.h"
#include "SDLincludes.h"
#include "SDLfunctions.h"
#include "about.h"
#include "highscore.h"

#define BUTTONCOUNT 4

struct menuDataStore
{
	SDL_Rect buttons[BUTTONCOUNT];
};


void menuStart(SDL_Surface *screen, dataStore *data);

void setupMenu(SDL_Surface *screen, struct menuDataStore *menuData);

void apply_surface( int x, int y, SDL_Surface* source, SDL_Surface* destination, SDL_Rect* clip);


int testLoop(SDL_Surface *screen, struct menuDataStore *menuData, dataStore *data);

#endif