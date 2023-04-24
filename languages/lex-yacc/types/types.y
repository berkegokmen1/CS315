/* types.y */ 
%union{
double real; /* real value */ 
int integer; /* integer value */ 
char str[30]; /* string value */
}

%token <real> REAL
%token<str> IDENTIFIER
%token ASSIGNOP NL
%type <real> assignment_stmt

%%
assignment_stmt: IDENTIFIER ASSIGNOP REAL NL { $$=$3; printf("%s is assigned to %g\n", $1, $$); }
%%
#include "lex.yy.c"

void yyerror(char *s) { printf("%s, it is not an assignment!\n", s); } 

int main() { return yyparse(); }