%{
	
 	#include "head.h"
    void yyerror(char *);
    int yylex(void);
%}

%token ID IF ELSE THEN
%start E
%%
	
	E
		: IF expr THEN E
		| IF expr THEN expr ELSE E
		|expr
		;
	expr
		:ID
		;
	
%%
void yyerror(char *s)
{
  extern int yylineno;	// predefinida en lex.c
  extern char *yytext;	// predefinida en lex.c

  printf("ERROR: %s en simbolo \"%s\" en linea %d \n",s,yytext,yylineno); 
  exit(1);
}

