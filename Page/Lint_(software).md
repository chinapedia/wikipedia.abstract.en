LINT, or a LINTER, is a tool that analyzes source code to flag programming errors, bugs, stylistic errors, and suspicious constructs.[1] The term originates from a Unix utility that examined C language source code.[2]


History

Stephen C. Johnson, a computer scientist at Bell Labs, came up with lint in 1978 while debugging the Yacc grammar he was writing for C and dealing with portability issues stemming from porting Unix to a 32-bit machine.[3][4] The term "lint" was derived from the name of the undesirable bits of fiber and fluff found in sheep's wool. In 1979, lint was used outside of Bell Labs for the first time in the seventh version (V7) of the Unix operating system.

Over the years, different versions of lint were developed for many C and C++ compilers and while modern-day compilers have lint-like functions, lint-like tools have also advanced their capabilities. For example, Gimpel's PC-Lint, used to analyze C++ source code, is still being sold even though it was introduced in 1985.[5]


Overview

The analysis performed by lint-like tools can also be performed by an optimizing compiler, which aims to generate faster code. In his original 1978 paper, Johnson addressed this issue, concluding that "the general notion of having two programs is a good one" because they concentrated on different things, thereby allowing the programmer to "concentrate at one stage of the programming process solely on the algorithms, data structures, and correctness of the program, and then later retrofit, with the aid of lint, the desirable properties of universality and portability".[6]

Even though modern compilers have evolved to include many of lint's historical functions, lint-like tools have also evolved to detect an even wider variety of suspicious constructs. These include "warnings about syntax errors, uses of undeclared variables, calls to deprecated functions, spacing and formatting conventions, misuse of scope, implicit fallthrough in switch statements, missing license headers, [and]...dangerous language features".[7]

Lint-like tools are especially useful for interpreted languages like JavaScript and Python. Because such languages lack a compiling phase that displays a list of errors prior to execution, the tools can also be used as simple debuggers for common errors (e.g. syntactic discrepancies) as well as hard-to-find errors such as heisenbugs (drawing attention to suspicious code as "possible errors").[8] Lint-like tools generally perform static analysis of source code.[9]


See also

-   List of tools for static code analysis


References


Further reading

-   -

Category:Static program analysis tools Category:Unix software

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]