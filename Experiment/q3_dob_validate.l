/* Q3: Recognize and validate a Date of Birth in DD/MM/YYYY format */
%{
#include <stdio.h>
int valid = 0;
%}

%%
^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/[0-9]{4}$   { valid = 1; }
.*                                                        { }
\n                                                        { }
%%

int main() {
    printf("Enter Date of Birth (DD/MM/YYYY): ");
    yylex();
    if (valid)
        printf("Valid Date of Birth.\n");
    else
        printf("Invalid Date of Birth.\n");
    return 0;
}

int yywrap() {
    return 1;
}
