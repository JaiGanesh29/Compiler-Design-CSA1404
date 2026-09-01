/* Q2: Validate an email address (username@domain.tld) */
%{
#include <stdio.h>
int valid = 0;
%}

%%
^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$    { valid = 1; }
.*                                                  { }
\n                                                  { }
%%

int main() {
    printf("Enter an email address: ");
    yylex();
    if (valid)
        printf("Valid email address.\n");
    else
        printf("Invalid email address.\n");
    return 0;
}

int yywrap() {
    return 1;
}
