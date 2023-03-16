%{
  #include <stdio.h>
	int yylex(void);
	void yyerror(char* s);
	int lineno;
%}

%union { 
	double real; /* real value */
	int integer; /* integer value */
}

%token <real> REAL
%token <integer> INTEGER
%token PLUS MINUS TIMES DIVIDE LP RP NL
%type <real> rexpr
%type <integer> iexpr
%left PLUS MINUS
%left TIMES DIVIDE
%left UMINUS

%%
lines: /* nothing */
| lines line
; 

line: NL { printf("%d) empty line.\n", lineno); }
| iexpr NL { printf("%d) %d\n", lineno, $1); }
| rexpr NL { printf("%d) %.4f\n", lineno, $1); }
;

iexpr: INTEGER
| iexpr PLUS iexpr { $$ = $1 + $3; }
| iexpr MINUS iexpr { $$ = $1 - $3; }
| iexpr TIMES iexpr { $$ = $1 * $3; }
| iexpr DIVIDE iexpr { if ($3) $$ = $1 / $3; else { yyerror("divide by zero"); } }
| MINUS iexpr %prec UMINUS { $$ = - $2; }
| LP iexpr RP { $$ = $2; }
;

rexpr: REAL
| rexpr PLUS rexpr { $$ = $1 + $3;}
| rexpr MINUS rexpr { $$ = $1 - $3; }
| rexpr TIMES rexpr { $$ = $1 * $3; }
| rexpr DIVIDE rexpr { if ($3) $$ = $1 / $3; else { yyerror( "divide by zero" ); } }
| MINUS rexpr %prec UMINUS { $$ = - $2; }
| LP rexpr RP { $$ = $2; }
| iexpr PLUS rexpr { $$ = (double) $1 + $3; }
| iexpr MINUS rexpr { $$ = (double) $1 - $3; }
| iexpr TIMES rexpr { $$ = (double) $1 * $3; }
| iexpr DIVIDE rexpr { if ($3) $$ = (double) $1 / $3; else { yyerror( "divide by zero" ); } }
| rexpr PLUS iexpr { $$ = $1 + (double) $3; }
| rexpr MINUS iexpr { $$ = $1 - (double) $3; }
| rexpr TIMES iexpr { $$ = $1 * (double) $3; }
| rexpr DIVIDE iexpr { if ($3) $$ = $1 / (double) $3; else { yyerror( "divide by zero" ); } }
;

%%
#include "lex.yy.c"

void yyerror(char *s) { printf("%s, it is not an assignment!\n", s); } 

int main() { return yyparse(); }