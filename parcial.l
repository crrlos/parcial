%{
	#include "head.h"
    #include "y.tab.h"
    void yyerror(char *);
%}
ID [a-zA-Z_]+[_a-zA-Z0-9]*
%%

"if"	return IF;
"else"	return ELSE;
"then"	return THEN;
{ID}	{yylval = *yytext; return ID;}
[ \t]		;
[\n]		{ yylineno++;	}
.           {yyerror("caracter invalido"); }
%%
int yywrap(void) {
    return 1;
}
