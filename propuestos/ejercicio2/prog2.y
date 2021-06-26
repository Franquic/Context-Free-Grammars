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
| cadena S NL {printf("Accepted \n");};
S: A A T B B
;
T: A A T B B | 
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