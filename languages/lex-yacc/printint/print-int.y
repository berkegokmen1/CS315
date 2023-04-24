/* print-int.y */ 
%{
	#include <stdio.h>
	#include <string.h>

	int yylex(void);
	void yyerror(char* s);
	int lineno;
%}

%union {
	double real; /* real value */ 
	int integer; /* integer value */ 
	char str[255]; /* string value */
}

%token <integer> INTEGER 
%token <real> REAL 
%token <str> STRING 
%token NEWLINE 
%type <integer> integer_value
%type <real> real_value
%type <str> str_value

%%
lines: /* empty */
	| lines NEWLINE
	| lines integer_value NEWLINE {printf("integer -> %d\n", $2);}
	| lines str_value NEWLINE {printf("string -> %s\n", $2);}
	| lines real_value NEWLINE {printf("real -> %.4f\n", $2);}
	| error NEWLINE { printf(" in line %d!\nReenter: ", lineno); yyerrok; } 
	;

integer_value: INTEGER { $$ = $1; };
real_value: REAL { $$ = $1; };
str_value: STRING { strcpy($$, $1); };
%%

#include "lex.yy.c"

void yyerror(char *s) { printf("%s, it is not a valid expression!\n", s); } 

int main() { return yyparse(); }