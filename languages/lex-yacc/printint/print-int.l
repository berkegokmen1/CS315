/* print-int.l */
alphabetic [A-Za-z]
digit [0-9]
alphanumeric ({alphabetic}|{digit})

%%
[+-]?{digit}*(\.){digit}+  				{ sscanf(yytext, "%lf", &yylval.real); return REAL; }
{digit}+ 													{ sscanf(yytext, "%d", &yylval.integer); return INTEGER; }
{alphabetic}{alphanumeric}* 			{ strcpy(yylval.str, yytext); return STRING; }
\n 																{ extern int lineno; lineno++; return NEWLINE; }; 
. 																; 
%%

int yywrap() { return 1; }
