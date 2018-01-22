%{
	#include <stdio.h>
%}

%union {

	int iVal;
	float fVal;
	char* sVal;

}

%token <sVal> END
%token <sVal> END_STATEMENT
%token <iVal> POINT
%token <iVal> LINE
%token <iVal> CIRCLE
%token <iVal> RECTANGLE
%token <iVal> SET_COLOR
%token <iVal> INT
%token <fVal> FLOAT

%%

program:	action END
action:		shape
	|	color
	;
shape:		POINT INT INT
		{
			return point(INT, INT);
		}
	|	LINE INT INT INT INT
		{
			return line(INT, INT, INT, INT);
		}
	|	CIRCLE INT INT INT
		{
			return circle(INT, INT, INT);
		}
	|	RECTANGLE INT INT INT INT
		{
			return rectangle(INT, INT, INT, INT);
		}
	;
color:		SET_COLOR INT INT INT
		{	
			return set_color(INT, INT, INT);
		}

%%

int main(int argc, char** argv) {
	yyparse();
	return 0;
}






