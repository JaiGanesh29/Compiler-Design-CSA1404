/* Q5: Identify and count vowels and consonants in a given string */
%{
#include <stdio.h>
int vowels = 0, consonants = 0;
%}

%%
[aeiouAEIOU]    { vowels++; }
[a-zA-Z]        { consonants++; }
.               { }
\n              { }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Total Vowels: %d\n", vowels);
    printf("Total Consonants: %d\n", consonants);
    return 0;
}

int yywrap() {
    return 1;
}
