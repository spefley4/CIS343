%{
	#include <stdio.h>
%}
%union {
	int iVal;
	float fVal;
	char* sVal;
}

%token <iVal> INT
%token <fVal> FLOAT
%token <sVal> VAR
%token <sVal> ADD
%token <sVal> SUB
%token <sVal> MULT
%token <sVal> DIV
%token <sVal> EQ
%token <sVal> END
%%

program:	statement END
statement:	INT operator INT EQ INT
	|	FLOAT operator FLOAT EQ FLOAT
	|	INT operator FLOAT EQ FLOAT
	|	FLOAT operator INT EQ FLOAT
	;
operator:	ADD
	|	SUB
	|	MULT
	|	DIV	
	;
%%
int main(int argc, char** argv) {
	yyparse();
	return 0;
}
