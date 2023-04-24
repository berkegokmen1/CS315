/* L = { INT PLUS INT NL } */

%token INT PLUS NL

%%
add: INT PLUS INT NL { printf("\n%d + %d = %d\n", $1, $3, $1 + $3); }
   | NL;
%%

#include "lex.yy.c"

void yyerror(char *s) { printf("%s\n", s); }

int main() {
	return yyparse();
}