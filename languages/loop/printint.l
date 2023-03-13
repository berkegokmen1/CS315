%%
[0-9]+ { sscanf(yytext, "%d", &yylval); return (INTEGER); }
\n		 { extern int lineno; lineno++; return (NEWLINE) };
. 			return (yytext[0]);
%%
int yywrap() { return 1; }