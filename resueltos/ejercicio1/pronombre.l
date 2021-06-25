%{
#include "pronombre.tab.h"
int yyparse();
%}

%%
Yo|Usted|El|Ella|Ellos|Ustedes {return PRON;}
\n {return NL;}
. return *yytext;
%%

int yywrap(void){
    yyparse();
    return 0;
}