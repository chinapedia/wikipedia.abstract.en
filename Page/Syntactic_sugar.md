In computer science, SYNTACTIC SUGAR is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use: things can be expressed more clearly, more concisely, or in an alternative style that some may prefer.

For example, many programming languages provide special syntax for referencing and updating array elements. Abstractly, an array reference is a procedure of two arguments: an array and a subscript vector, which could be expressed as get_array(Array, vector(i,j)). Instead, many languages provide syntax such as Array[i,j]. Similarly an array element update is a procedure of three arguments, for example set_array(Array, vector(i,j), value), but many languages provide syntax such as Array[i,j] = value.

A construct in a language is called "syntactic sugar" if it can be removed from the language without any effect on what the language can do: functionality and expressive power will remain the same.

Language processors, including compilers and static analyzers, often expand sugared constructs into more fundamental constructs before processing, a process sometimes called "desugaring".


Origins

The term _syntactic sugar_ was coined by Peter J. Landin in 1964 to describe the surface syntax of a simple ALGOL-like programming language which was defined semantically in terms of the applicative expressions of lambda calculus,[1] centered on lexically replacing λ with "where".

Later programming languages, such as CLU, ML and Scheme, extended the term to refer to syntax within a language which could be defined in terms of a language core of essential constructs; the convenient, higher-level features could be "desugared" and decomposed into that subset.[2] This is, in fact, the usual mathematical practice of building up from primitives.

Building on Landin's distinction between essential language constructs and syntactic sugar, in 1991, Matthias Felleisen proposed a codification of "expressive power" to align with "widely held beliefs" in the literature. He defined "more expressive" to mean that without the language constructs in question, a program would have to be completely reorganized.[3]


Notable examples

-   In COBOL, many of the intermediate keywords are syntactic sugar that may optionally be omitted. For example, the sentence MOVE A B. and the sentence MOVE A TO B. perform exactly the same function, but the second makes the action to be performed clearer.
-   Augmented assignment or compound assignment operators: For example, a += b is equivalent to a = a + b in C and similar languages, assuming a has no side effects such as if a is a regular variable.[4][5]
-   In Perl, unless (condition) {...} is syntactic sugar for if (not condition) {...}. Additionally, any statement can be followed by a condition, so statement if condition is equivalent to if (condition) {statement}, but the former is more naturally formatted on a single line.
-   In the C language, the a[i] notation is syntactic sugar for *(a + i).[6] Likewise, the a->x notation is syntactic sugar for accessing members using the dereference operator (*a).x.
-   The using statement in C# ensures that certain objects are disposed of correctly. The compiler expands the statement into a try-finally block.[7]
-   The C# language allows variables to be declared as var x = expr, which allows the compiler to infer the type of x from the expression expr, instead of requiring an explicit type declaration. Similarly, C++ allows auto x = expr since C++11.
-   Python list comprehensions (such as [x*x for x in range(10)] for a list of squares) and decorators (such as @staticmethod).
-   In Haskell, a string, denoted in quotation marks, is semantically equivalent to a list of characters.
-   In R, the _pipe_, denoted by %>%, declares that the data (or output of the function) preceding the pipe will serve as the first argument for the function following the pipe.[8] This provides for more linear flow and design of data manipulation. The tidyverse is written to accommodate pipes.
-   In SQL, JOIN is equivalent to INNER JOIN, the latter clarifies that the join statement is specifically an inner join operation as opposed to an outer join operation.


Criticism

Some programmers feel that these syntax usability features are either unimportant or outright frivolous. Notably, special syntactic forms make a language less uniform and its specification more complex, and may cause problems as programs become large and complex. This view is particularly widespread in the Lisp community, as Lisp has very simple and regular syntax, and the surface syntax can easily be modified. For example, Alan Perlis once quipped in "Epigrams on Programming", in a reference to bracket-delimited languages, that "Syntactic sugar causes cancer of the semi-colons".


Derivative terms

Syntactic salt

The metaphor has been extended by coining the term _syntactic salt_, which indicates a feature designed to make it harder to write bad code.[9] Specifically, syntactic salt is a hoop that programmers must jump through just to prove that they know what is going on, rather than to express a program action. For example, in Java and Pascal assigning a float value to a variable declared as an int without additional syntax explicitly stating that intention will result in a compile error, while C and C++ will automatically truncate any floats assigned to an int. However this is not syntax, but semantics.

In C#, when hiding an inherited class member, a compiler warning is issued unless the new keyword is used to specify that the hiding is intentional.[10] To avoid potential bugs owing to the similarity of the switch statement syntax with that of C or C++, C# requires a break for each non-empty case label of a switch (unless goto, return, or throw is used) even though it does not allow implicit _fall-through_.[11] (Using goto and specifying the subsequent label produces a C/C++-like _fall-through_.)

Syntactic salt may defeat its purpose by making the code unreadable and thus worsen its quality – in extreme cases, the essential part of the code may be shorter than the overhead introduced to satisfy language requirements.

An alternative to syntactic salt is generating compiler warnings when there is high probability that the code is a result of a mistake – a practice common in modern C/C++ compilers.

Syntactic saccharin

Other extensions are _syntactic saccharin_ and _syntactic syrup_, meaning gratuitous syntax that does not make programming any easier.[12][13][14][15]


Notes


References

-   -   -   -   -   , reprinted in

-

Category:Programming language syntax Category:Computer jargon Category:Source code Category:Programming language design

[1]

[2] Barbara Liskov, "A History of CLU", MIT Laboratory for Computer Science Technical Report 561 (1993)

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]