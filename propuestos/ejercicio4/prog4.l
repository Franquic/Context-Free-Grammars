%{
#include "prog4.tab.h"
int yyparse();
%}
%%
[0-9]+ {return NUMBER;}
"+" {return PLUS;}
\n {return NL;}
[ ] { }
. return *yytext;
%%
int yywrap(void){
    yyparse();
    return 0;
}