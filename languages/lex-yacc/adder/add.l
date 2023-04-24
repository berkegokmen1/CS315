
digit [0-9]
%%
{digit}+ {sscanf(yytext, "%d", &yylval); return (INT); }
\+				return (PLUS);
\n				return (NL);
.					;

%%

int yywrap() { return 1; }