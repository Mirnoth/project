#include "SDLfunctions.h"
#include "pathfinding.h"

int updateGraphics(SDL_Surface *l_screen, struct dataStore *data);
void graphicLoop(SDL_Surface *l_screen, struct dataStore *data);
struct position *pixelToGrid(struct position *l_pos);
struct position *gridToPixel(struct position *l_pos);
void verticalScrollPos(struct dataStore *data);
