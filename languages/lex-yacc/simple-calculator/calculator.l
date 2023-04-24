integer [0-9]+
dreal ([0-9]*\.[0-9]+)
ereal ([0-9]*\.[0-9]+[Ee][+-]?[0-9]+)
real {dreal}|{ereal}
nl \n

%%
[ \t] ;

{integer} { sscanf(yytext, "%d", &yylval.integer); return INTEGER; }

{real} { sscanf(yytext, "%lf", &yylval.real); return REAL; }

\+ { return PLUS;}
\- { return MINUS;}
\* { return TIMES;}
\/ { return DIVIDE;}
\( { return LP;}
\) { return RP;}

{nl} { extern int lineno; lineno++; return NL; }

. { return yytext[0]; }
%%

int yywrap() { return 1; }