%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "zoomjoystrong.h"
	
%}

%option noyywrap

%%

END				{finish();}
END_STATEMENT			{}
POINT				{point(int x, int y);}
LINE				{line(int x1, int y1, int x2, int y2);}
CIRCLE				{circle(int x, int y, int r);}
RECTANGLE			{rectangle(int x, int y, int w, int h);}
SET_COLOR			{set_color(int r, int g, int b);}
[0-9].				{return(INT);}
[0-9]*\.[0-9].			{return(FLOAT);}
\n|\t|" "			{}
.				{printf("Invalid token! Try again!");}

%%
