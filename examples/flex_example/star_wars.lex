%{

%}

%option noyywrap

%%

luke|rey|obiwan|revan|yoda		{yyval.str = yytext; return JEDI;}
42					{yyval.int = atoi(yytext); return MEANING;}
palpatine|vader|bane|maul|dooku|kylo	{return SITH;}
maz					{return FORCE_SENSITIVE;}
finn					{return UNKNOWN;}
.					{return REDSHIRT;}
\n					;

%%

int main(int argc, char** argv) {

	yylex();
	return 0;

}
