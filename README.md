# Lex Programs — Compile & Run Instructions

Each `.l` file is a standalone Lex/Flex source file. On a Linux/WSL/Mac terminal
with `flex` and `gcc` installed, compile and run any of them like this:

```bash
flex q1_uppercase_count.l
gcc lex.yy.c -o q1 -ll        # use -lfl on some systems instead of -ll
./q1
```

Repeat the same three steps for q2, q3, q4, q5 (swap the filename each time).

| File                          | Question | What it does                                      |
|--------------------------------|----------|----------------------------------------------------|
| q1_uppercase_count.l          | Q1       | Counts uppercase letters (A–Z) in the input        |
| q2_email_validate.l           | Q2       | Validates username@domain.tld email format         |
| q3_dob_validate.l             | Q3       | Validates DD/MM/YYYY date-of-birth format          |
| q4_token_recognizer.l         | Q4       | Classifies tokens: keyword/identifier/operator/separator/number |
| q5_vowel_consonant_count.l    | Q5       | Counts vowels and consonants in the input          |

For Q1, Q2, Q3, Q5: type your input, then press **Enter** followed by **Ctrl+D**
(end-of-file) to trigger `yylex()` to finish and print the result.

For Q4: type one or more lines of source code, then press **Ctrl+D** on a new
line to end input — each token is printed as it's recognized.
