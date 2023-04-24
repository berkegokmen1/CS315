%token INTEGER NEWLINE

%%
lines: /* empty */
		 	| lines NEWLINE
		 	| lines line NEWLINE { printf("%d) =%d\n", lineno, $2); }
		 	| error NEWLINE { printf("Error in line %d! Reenter: ", lineno); yyerrok; }
			;

line: INTEGER { $$ = $1; }
			;
%%
#include "lex.yy.c"

int lineno = 0;

void yyerror(char *s) { printf("%s", s); }

int main() {
	return yyparse();
}