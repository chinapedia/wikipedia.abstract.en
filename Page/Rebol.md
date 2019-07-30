REBOL ( ; historically REBOL) is a cross-platform[1] data exchange language and a multi-paradigm dynamic programming language designed by Carl Sassenrath for network communications and distributed computing. It introduces the concept of dialecting: small, optimized, domain-specific languages for code and data,[2][3] which is also the most notable property of the language according to its designer Carl Sassenrath:

Douglas Crockford, known for his involvement in the development of JavaScript, has described Rebol as "a more modern language, but with some very similar ideas to Lisp, in that it's all built upon a representation of data which is then executable as programs" and as one of JSON's influences.[4]

Originally, the language and its official implementation were proprietary and closed source, developed by REBOL Technologies. Following discussion with Lawrence Rosen,[5] the Rebol version 3 interpreter was released under the Apache 2.0 license on December 12, 2012.[6] Older versions are only available in binary form, and no source release for them is planned.

Rebol has been used to program Internet applications (both client- and server-side), database applications, utilities, and multimedia applications.[7]


Etymology

Rebol was initially an acronym for Relative Expression Based Object Language written in all caps.[8][9] To align with modern trends in language naming represented, e.g. by the change replacing historical name _LISP_ by _Lisp_, programmers ceased the practice of writing _REBOL_ in all caps. Sassenrath eventually put the naming question to the community debate on his blog.[10] In subsequent writing, Sassenrath adopted the convention of writing the language name as _Rebol_.[11]


History

First released in 1997, Rebol was designed over a 20-year period by Carl Sassenrath, the architect and primary developer of AmigaOS, based on his study of denotational semantics and using concepts from the programming languages Lisp, Forth, Logo, and Self.

1.  REBOL Technologies was founded in 1998.
2.  _REBOL 2_, the interpreter, which became the core of extended interpreter editions, was first released in 1999.
    1.  _REBOL/Command_, which added strong encryption and ODBC access, was released in September 2000.
    2.  _REBOL/View_ was released in April 2001, adding graphical abilities on the core language.
    3.  _REBOL/IOS_, an extensible collaboration environment built with REBOL was released in August 2001.
    4.  _REBOL/SDK_, providing a choice of kernels to bind against, as well as a preprocessor, was released in December 2002.
3.  _Rebol 3_ [R3], the newest version of the interpreter, had alpha versions released by REBOL Technologies since January 2008. Since its release as an Apache 2 project in December 2012, it is being developed by the Rebol community.[12]


Design

Ease of use

One of the Rebol design principles is "to do simple things in simple ways".[13] In the following example the _Visual interface dialect_ is used to describe a simple Hello world program with a graphical user interface:

    view layout [text "Hello world!" button "Quit" [quit]]

This is how a similar example looks in R3-GUI:

    view [text "Hello world!" button "Quit" on-action [quit]]

Dialects

Rebol domain-specific languages, called _dialects_, are micro-languages optimized for a specific purpose. Dialects can be used to define business rules, graphical user interfaces or sequences of screens during the installation of a program. Users can define their own dialects, reusing any existing Rebol word and giving it a specific meaning in that dialect.[14] Dialects are interpreted by functions processing Rebol blocks (or parsing strings) in a specific way.

An example of Rebol's dialecting abilities can be seen with the word _return_. In the _data exchange dialect_ _return_ is just a word not having any specific meaning. In the _do dialect_, _return_ is a global variable referring to a native function passing back a function result value.[15] In the _visual interface dialect (VID)_, _return_ is a keyword causing the layout engine to simulate a carriage return, moving the "rendering pen" down to the beginning of the next line.[16]

A Rebol interpreter with graphical abilities must understand and interpret many dialects. The table below lists the most important ones in order of significance.

+--------------------------------+------------------+------------------------------------------------------------------+
| Dialect name                   | Interpreted by   | Purpose                                                          |
+================================+==================+==================================================================+
| Data exchange dialect          | load function    | represents data and metadata; common platform for Rebol dialects |
+--------------------------------+------------------+------------------------------------------------------------------+
| Do dialect                     | do function      | programming                                                      |
+--------------------------------+------------------+------------------------------------------------------------------+
| Parse dialect                  | parse function   | pattern matching                                                 |
+--------------------------------+------------------+------------------------------------------------------------------+
| Function specification dialect | make function    | function definition; functional programming                      |
+--------------------------------+------------------+------------------------------------------------------------------+
| Object specification dialect   | make function    | object definition/inheritance; prototype-based programming       |
+--------------------------------+------------------+------------------------------------------------------------------+
| Visual interface dialect (VID) | layout function  | specifies graphical user interface                               |
| or                             | or               |                                                                  |
| RebGUI                         | display function |                                                                  |
+--------------------------------+------------------+------------------------------------------------------------------+
| Draw dialect                   | view function    | defines graphical elements (lines, polygons, etc.)               |
+--------------------------------+------------------+------------------------------------------------------------------+
| Script specification dialect   | do function      | script definition                                                |
+--------------------------------+------------------+------------------------------------------------------------------+
| Security policy dialect        | secure function  | specifies security policy                                        |
+--------------------------------+------------------+------------------------------------------------------------------+

Syntax

Rebol syntax is free-form, not requiring specific positioning. However, indentation is recommended to better convey the structure of the text to human readers.

Syntactic properties of different dialects may differ. The common platform for all Rebol dialects is the _data exchange dialect_; other dialects are usually derived from it. In addition to being the common platform for all dialects, the _data exchange dialect_ is directly used to represent data and metadata, populate data structures, send data over Internet, and save them in data storage.

In contrast to programming languages like C, the _data exchange dialect_ does not consist of declarations, statements, expressions or keywords. A valid _data exchange dialect_ text stream is a tree data structure consisting of blocks (the root block is implicit, subblocks are delimited by square brackets), parens (delimited by round brackets), strings (delimited by double quotes or curly brackets suitable for multi-line strings; caret notation is used for unprintable characters), URLs, e-mail addresses, files, paths or other composite values. Unlike ALGOL blocks, Rebol blocks are composite values similar to quoted s-expressions in Lisp. The fact that code is written in the form of Rebol blocks makes the language homoiconic.[17]

Blocks as well as parens may contain other composite values (a block may contain subblocks, parens, strings, ...) or scalar values like words, set-words (words suffixed by the colon), get-words (words prefixed by the colon), lit-words (words prefixed by the apostrophe), numbers, money, characters, etc., separated by whitespace. Note that special characters are allowed in words, so a+b is a word unlike a + b, which is a sequence of three words separated by spaces.

Comments may appear following the semicolon until the end of the line. Multi-line comments or comments not ignored by the lexical parser can be written using "ordinary" datatypes like multi-line strings.[18]

Semantics

Blocks containing domain-specific language can be submitted as arguments to specific _evaluator_ functions.[19]

do

The most frequently used evaluator is the do function. It is used by default to interpret the text input to the interpreter console.

The _do dialect_ interpreted by the do function, is an expression-oriented sublanguage of the _data exchange dialect_. The main semantic unit of the language is the expression. In contrast to imperative programming languages descending from ALGOL, the _do dialect_ has neither keywords, nor statements.

Words are used as case-insensitive variables. Like in all dynamically typed languages, variables don't have an associated type, type is associated with values. The result, i.e. the evaluation of a word is returned, when a word is encountered by the do function. The set-word form of a word can be used for assignment. While not having statements, assignment, together with functions with side-effects can be used for imperative programming.[20]

Subblocks of the root block evaluate to themselves. This property is used to handle data blocks, for structured programming by submitting blocks as arguments to control functions like if, either, loop, etc., and for dialecting, when a block is passed to a specific interpreter function.[21]

A specific problem worth noting is that composite values, assigned to variables, are not copied. To make a copy, the value must be passed to the copy function.[22]

The do function normally follows a prefix style of evaluation, where a function processes the arguments that follow it. However, infix evaluation using infix operators exists too. Infix evaluation takes precedence over the prefix evaluation. For example,

abs -2 + 3

returns 1, since the infix addition takes precedence over the computation of the absolute value. When evaluating infix expressions, the order of evaluation is left to right, no operator takes precedence over another. For example,

    2 + 3 * 4

returns 20, while an evaluation giving precedence to multiplication would yield 14. All operators have prefix versions. Do usually evaluates arguments before passing them to a function. So, the below expression:

print read http://en.wikipedia.org/wiki/Rebol

first reads the Wikipedia Rebol page and then passes the result to the print function. Parentheses can be used to change the order of evaluation. Using prefix notation, the usage of parentheses in expressions can be avoided.[23]

The simple precedence rules are both an advantage:

-   No need to "consult" precedence tables when writing expressions
-   No need to rewrite precedence tables when a new operator is defined
-   Expressions can be easily transliterated from infix to prefix notation and vice versa

as well as a disadvantage:

-   Users accustomed to more conventional precedence rules may easily make a mistake[24]

parse

The parse function is preferably used to specify, validate, transform and interpret dialects. It does so by matching _parse expressions_ at run time.[25]

_Parse expressions_ are written in the _parse dialect_, which, like the _do dialect_, is an expression-oriented sublanguage of the _data exchange dialect_. Unlike the _do dialect_, the _parse dialect_ uses keywords representing operators and the most important nonterminals, infix parsing operators don't have prefix equivalents and use precedence rules (_sequence_ has higher precedence than _choice_).[26]

Actions can be included to be taken during the parsing process as well and the parse function can be used to process blocks or strings. At the _string parsing_ level parse must handle the "low level" parsing, taking into account characters and delimiters. _Block parsing_ is higher level, handling the scanning at the level of Rebol values.[27]

The parse dialect belongs to the family of grammars represented by the top-down parsing language or the parsing expression grammar (PEG). The main similarity is the presence of the _sequence_ and _choice_ operators all the family members have. Parse dialect syntax and the similarities between the parse dialect and the PEG are illustrated by this transliteration of a PEG example that parses an arithmetic expression:

    Digit: charset [#"0" - #"9"]
    Value: [some Digit | "(" Expr ")"]
    Product: [Value any [["*"|"/"] Value]]
    Sum: [Product any [["+"|"-"] Product]]
    Expr: Sum
    parse/all "12+13" Expr


Implementations

The official Rebol 2.7.8 implementation is available in several editions (_/Core_, _/View_, _/Command_, _/SDK_ and _/IOS_). Both _/Core_ and _/View_ editions are freely redistributable software.[28]

The runtime environment is stored in a single executable file. _Rebol/Core_ 2.7.8, the console edition, is about 300 KB and _Rebol/View_ 2.7.8, the graphical user interface edition, is about 650 KB in size.

_Rebol/View_ provides platform-independent graphics and sound access, and comes with its own windowing toolkit and extensible set of styles (GUI widgets). Extended editions, such as _Rebol/Command_ 2.7.8 or _Rebol/SDK_ 2.7.8 require a paid license; they add features like ODBC data access, and the option to create standalone executable files.


Legacy

-   Rebol was named by Douglas Crockford as one of the inspirations of JavaScript Object Notation.[29]
-   Rebol also inspired the open-source Orca project, which is an interpreted Rebol-like language.[30]
-   Boron is an interpreted, homoiconic language inspired by and similar to Rebol, which is meant for embedding domain specific languages. It is implemented as a C library licensed under the terms of the LGPLv3.
-   The Red programming language was directly inspired by Rebol, yet the implementation choices of Red were geared specifically to overcoming its perceived limitations.[31]


See also

-   Domain-specific language
-   Language-oriented programming
-   Red (programming language)


References


Further reading

-   -


External links

-   -   A REBOL tutorial
-   Rebol 3 Tutorial

Category:Programming languages Category:AmigaOS 4 software Category:Dynamic programming languages Category:Dynamically typed programming languages Category:Functional languages Category:Prototype-based programming languages Category:Scripting languages Category:Extensible syntax programming languages Category:Formerly proprietary software Category:Programming languages created in 1997 Category:1997 software Category:High-level programming languages Category:Homoiconic programming languages

[1]

[2] Roberts, Ralph (2000). _REBOL for Dummies._ Hungry Minds. .

[3] Auverlot, Olivier (2001). _Rebol Programmation._ Eyrolles. .

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

[15] Goldman, E., Blanton, J. (2000). _REBOL: The Official Guide._ McGraw-Hill Osborne Media. .

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30] The rebol-orca project at Freecode

[31] The Red project at GitHub