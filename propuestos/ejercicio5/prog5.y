%{
#include <stdio.h>
int yylex();
int yyerror (char *s);
%}
%token VAR
%token PLUS
%token NL

%%
cadena: 
| cadena VAR PLUS VAR NL {printf("Accepted \n");}
;
%%
int yyerror (char *s){
    printf("%s \n",s);
    return 1;
}
int main(int argc ,char ** argv) {
    yyparse();
    return 0;
}