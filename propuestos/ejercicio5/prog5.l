%{
#include "prog5.tab.h"
int yyparse();
%}
%%
[A-Za-z]+ {return VAR;}
"+" {return PLUS;}
\n {return NL;}
[ ] { }
. return *yytext;
%%
int yywrap(void){
    yyparse();
    return 0;
}