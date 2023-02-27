/*anbn_0.y */
%token A B
%%
start: anbn '\n' { printf(" is in anbn_0\n"); return 0; }
anbn: empty
		| A anbn B
		; 
empty: 
		;
%%
#include "lex.yy.c"
void yyerror(char *s) { printf("%s, it is not in anbn_0\n", s); } 
int main() { return yyparse(); }