/*lex program to count number of words*/
%{
    #include <stdio.h>
    #include <string.h>
%}

/* Rules Section*/
%%
[+-]?[0-9]*\.[0-9]+    { printf("FLOAT(%.2f) ", atof(yytext)); }

[+-]?[0-9]+  { printf("INTEGER(%d) ", atoi(yytext)); }

"\n"    { printf("END_OF_LINE\n"); }
%%
  
int yywrap(void) {}
  
int main() {   
    // The function that starts the analysis
    yylex();
  
    return 0;
}