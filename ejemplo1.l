%{
#include <stdio.h>
%}

%%
[0-9]+          { printf("Número entero: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("Identificador: %s\n", yytext); }
[ \t\n]         ; // Ignorar espacios en blanco y saltos de línea
.               { printf("Carácter no reconocido: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
