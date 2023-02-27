/* def-in-def.l */
%option main
alphabetic [A-Za-z_$]
digit [0-9]
alphanumeric ({alphabetic}|{digit}) 
%%

{alphabetic}{alphanumeric}* printf("Java identifier"); 
\, printf("Comma");
\{ printf("Left brace");
\= printf("Assignment op"); 
\=\= printf("Equality op2");
\=\= printf("Equality op");
%%