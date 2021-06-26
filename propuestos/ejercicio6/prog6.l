%{
#include "prog6.tab.h"
int yyparse();
%}
CHAR [a-zA-Z]+
DIGIT [0-9]+

%%
{CHAR}({CHAR}|{DIGIT})* {return VAR;}
{DIGIT} {return NUMBER;}
"+" {return PLUS;}
[ ] { }
\n {return NL;}
. return *yytext;
%%
int yywrap(void){
    yyparse();
    return 0;
}