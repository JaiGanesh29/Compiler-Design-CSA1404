/* Q1: Recognize and count uppercase letters (A-Z) in the input */
%{
#include <stdio.h>
int count = 0;
%}

%%
[A-Z]   { count++; }
.       { }
\n      { }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Total number of uppercase letters: %d\n", count);
    return 0;
}

int yywrap() {
    return 1;
}
