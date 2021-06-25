%{
#include <stdio.h> 
int yylex();
int yyerror (char *s);   
%}

%token PRON
%token NL
%%
cadena: 
| cadena PRON NL {printf("Se imprime un texto \n");};
%%
int yyerror (char *s){
    printf("Cadena invalida %s\n", s);
    return 1;
}
int main(int argc, char **argv){
    printf("Ingrese la cadena\n");
    yyparse();
    return 0;
}