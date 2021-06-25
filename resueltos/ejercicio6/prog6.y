%{
#include <stdio.h>
int yylex();
int yyerror (char *s);
%}
%token A
%token B
%token NL

%%
cadena: 
| cadena P NL {printf("Se imprimio una cadena 'b' \n");}
;
| cadena S NL {printf("Se imprimio una cadena 'a' \n");}
;
S: S A | A
;
P: P B | B
%%
int yyerror (char *s){
    printf("%s \n",s);
    return 1;
}
int main(int argc ,char ** argv) {
    yyparse();
    return 0;
}