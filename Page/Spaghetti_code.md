SPAGHETTI CODE is a pejorative phrase for unstructured and difficult-to-maintain source code. Spaghetti code can be caused by several factors, such as volatile project requirements, lack of programming style rules, and insufficient ability or experience.[1]


Meaning

Code that overuses GOTO statements rather than structured programming constructs, resulting in convoluted and unmaintainable programs, is often called spaghetti code.[2] Such code has a complex and tangled control structure, resulting in a program flow that is conceptually like a bowl of spaghetti, twisted and tangled .[3] In a 1980 publication by the United States National Bureau of Standards, the phrase SPAGHETTI PROGRAM was used to describe older programs having "fragmented and scattered files".[4] Spaghetti code can also describe an anti-pattern in which object-oriented code is written in a procedural style, such as by creating classes whose methods are overly long and messy, or forsaking object oriented concepts like polymorphism.[5] The presence of this form of spaghetti code can significantly reduce the comprehensibility of a system.[6]


History

It is not clear when the phrase spaghetti code came into common usage; however, several references appeared in 1977 including _Macaroni is Better Than Spaghetti_ by Steele published in Proceedings of the 1977 symposium on artificial intelligence and programming languages. In the 1978 book _A primer on disciplined programming using PL/I, PL/CS, and PL/CT_, Richard Conway used the term to describe types of programs that "have the same clean logical structure as a plate of spaghetti",[7] a phrase repeated in the 1979 book _An Introduction to Programming_ he co-authored with David Gries.[8] In the 1988 paper _A spiral model of software development and enhancement_, the term is used to describe the older practice of the _code and fix model_, which lacked planning and eventually led to the development of the waterfall model.[9] In the 1979 book _Structured programming for the COBOL programmer_, author Paul Noll uses the phrases _spaghetti code_ and _rat's nest_ as synonyms to describe poorly structured source code.[10]

In the _Ada – Europe '93_ conference, Ada was described as forcing the programmer to "produce understandable, instead of spaghetti code", because of its restrictive exception propagation mechanism.[11]

In a 1981 computer languages spoof in _The Michigan Technic_ titled "BASICally speaking...FORTRAN bytes!!", the author described FORTRAN as "proof positive that the cofounders of IBM were Italian, for it consists entirely of spaghetti code".[12]


Related phrases

Ravioli code

Ravioli code is a term specific to object-oriented programming. It describes code that comprises well-structured classes that are easy to understand in isolation, but difficult to understand as a whole.[13]

Lasagna code

Lasagna code refers to code whose layers are so complicated and intertwined that making a change in one layer would necessitate changes in all other layers.[14]


Examples

Here follows what would be considered a trivial example of spaghetti code in BASIC. The program prints each of the numbers 1 to 100 to the screen along with its square. Indentation is not used to differentiate the various actions performed by the code, and that the program's GOTO statements create a reliance on line numbers. The flow of execution from one area to another is harder to predict. Real-world occurrences of spaghetti code are more complex and can add greatly to a program's maintenance costs.

    1 i=0
    2 i=i+1
    3 PRINT i; "squared=";i*i
    4 IF i>=100 THEN GOTO 6
    5 GOTO 2
    6 PRINT "Program Completed."
    7 END

Here is the same code written in a structured programming style:

    1 FOR i=1 TO 100
    2     PRINT i;"squared=";i*i
    3 NEXT i
    4 PRINT "Program Completed."
    5 END

The program jumps from one area to another, but this jumping is formal and more easily predictable, because for loops and functions provide flow control whereas the _goto_ statement encourages arbitrary flow control. Though this example is small, real world programs are composed of many lines of code and are difficult to maintain when written in a spaghetti code fashion.

Here is another example of Spaghetti code with embedded GOTO statements.

SCREEN 0
 INPUT "How many numbers to sort? "; T
 DIM n(T)
 FOR i = 1 TO T
   PRINT "NUMBER:"; i
   INPUT n(i)
 NEXT i
 'Calculations:
 C = T
E180:
 C = INT(C / 2)
 IF C = 0 THEN GOTO C330
 D = T - C
 E = 1
I220:
 f = E
F230:
 g = f + C
 SWAP n(f), n(g)
 f = f - C
 IF f > 0 THEN GOTO F230
 E = E + 1
 IF E > D THEN GOTO E180
GOTO I220
C330:
 PRINT "The sorted list is"
 FOR i = 1 TO T
   PRINT n(i)
 NEXT i


See also

-   Big ball of mud, a piece of software with no perceivable architecture
-   International Obfuscated C Code Contest, a competition to produce pleasingly obscure C code
-   Write-only language, a language with such bizarre syntax that resulting code is incomprehensible


References

-


External links

-   Go To Statement Considered Harmful. The classic repudiation of spaghetti code by Edsger Dijkstra
-   _We don't know where to GOTO if we don't know where we've COME FROM_ by R. Lawrence Clark from DATAMATION, December, 1973
-   Refactoring Java spaghetti code into Java bento code separating out a bowl full of code from one class into seven classes
-   Objects and Frameworks – Taking a Step Back by Brian Rinaldi
-   Programming Pasta - Spaghetti, Lasagna, Ravioli and Macaroni Code
-   Pasta Theory of Programming
-   Spaghetti Code: Detangling Life and Work with Programmer Wisdom (English Edition)

Category:Anti-patterns Category:Articles with example BASIC code Category:Software engineering folklore Category:Pejoratives Category:Metaphors referring to spaghetti

[1]

[2]

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