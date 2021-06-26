%{
#include <stdio.h>
int yylex();
int yyerror (char *s);
%}
%token B
%token NL

%%
cadena: 
| cadena B B NL {printf("Accepted \n");}
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