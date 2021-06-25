%{
#include "prog2.tab.h"
int yyparse();
%}

%%
[a] {return A;}
\n {return NL;}
. return *yytext;
%%
int yywrap(void){
    yyparse();
    return 0;
}