/* Q4: Token recognition - keywords, identifiers, operators, separators, numeric constants */
%{
#include <stdio.h>
%}

DIGIT   [0-9]
LETTER  [a-zA-Z_]

%%
"int"|"float"|"char"|"double"|"if"|"else"|"while"|"for"|"return"|"void"|"break"|"continue"|"switch"|"case"    { printf("%-15s : Keyword\n", yytext); }

{LETTER}({LETTER}|{DIGIT})*        { printf("%-15s : Identifier\n", yytext); }

{DIGIT}+(\.{DIGIT}+)?               { printf("%-15s : Numeric Constant\n", yytext); }

"=="|"!="|"<="|">="|"&&"|"\|\|"     { printf("%-15s : Operator\n", yytext); }
[+\-*/=<>]                          { printf("%-15s : Operator\n", yytext); }

[;,(){}\[\]]                        { printf("%-15s : Separator\n", yytext); }

[ \t]+                              { }
\n                                   { }
.                                    { printf("%-15s : Unknown Token\n", yytext); }
%%

int main() {
    printf("Enter source code (press Ctrl+D on a new line to end):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
