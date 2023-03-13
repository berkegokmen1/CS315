/* types.l */
alphabetic [A-Za-z]
digit [0-9]
alphanumeric ({alphabetic}|{digit})

%%
[+-]?{digit}*(\.)?{digit}+ { sscanf(yytext, "%lf", &yylval.real); return REAL; }

{alphabetic}{alphanumeric}* { strcpy(yylval.str, yytext); return IDENTIFIER; }

\<\- return ASSIGNOP;

\n return NL; 
%%

int yywrap() { return 1; }