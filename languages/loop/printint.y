%token INTEGER NEWLINE

%%
lines: /* empty */
		 	| lines NEWLINE
		 	| lines value NEWLINE { printf(" =%d\n", $2); }
		 	| error NEWLINE { yyerror("! Reenter: "); yyerrok; }
			;

value: INTEGER { $$ = $1; }
			;
%%
#include "lex.yy.c"
void yyerror(char *s) { printf("%s", s); }
int main() {
	return yyparse();
}