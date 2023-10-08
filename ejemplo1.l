%{
#include <stdio.h>
%}

%%

"if"    { printf("Palabra reservada: IF\n"); }
"else"  { printf("Palabra reservada: ELSE\n"); }
[0-9]+  { printf("Numero entero: %s\n", yytext); }
[a-zA-Z]+ { printf("Identificador: %s\n", yytext); }
"=="    { printf("Operador de igualdad\n"); }
"="     { printf("Operador de asignación\n"); }
"("     { printf("Parentesis de apertura\n"); }
")"     { printf("Parentesis de cierre\n"); }
";"     { printf("Punto y coma\n"); }
"+"     { printf("Operador de suma\n"); }
"-"     { printf("Operador de resta\n"); }
"*"     { printf("Operador de multiplicacion\n"); }
"/"     { printf("Operador de division\n"); }
.       { printf("Carácter no reconocido: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}


