%{
#include "prog1.tab.h"
int yyparse();
%}
%%
[b] {return B;}
\n {return NL;}
. return *yytext;
%%
int yywrap(void){
    yyparse();
    return 0;
}