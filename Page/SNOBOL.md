SNOBOL ("StriNg Oriented and symBOlic Language") is a series of computer programming languages developed between 1962 and 1967 at AT&T Bell Laboratories by David J. Farber, Ralph E. Griswold and Ivan P. Polonsky, culminating in SNOBOL4. It was one of a number of text-string-oriented languages developed during the 1950s and 1960s; others included COMIT and TRAC.

SNOBOL4 stands apart from most programming languages of its era by having patterns as a first-class data type (_i.e._ a data type whose values can be manipulated in all ways permitted to any other data type in the programming language) and by providing operators for pattern concatenation and alternation. In later object-oriented languages, such as JavaScript, patterns are a type of object, and admit various manipulations. Further, strings generated during execution can be treated as programs and executed (as in the eval function of other languages).

SNOBOL4 was quite widely taught in larger US universities in the late 1960s and early 1970s and was widely used in the 1970s and 1980s as a text manipulation language in the humanities.

In the 1980s and 1990s its use faded as newer languages such as AWK and Perl made string manipulation by means of regular expressions fashionable. SNOBOL4 patterns subsume BNF grammars, which are equivalent to context-free grammars and more powerful than regular expressions.[1] The "regular expressions" in current versions of AWK and Perl are in fact extensions of regular expressions in the traditional sense, but regular expressions, unlike SNOBOL4 patterns, are not recursive, which gives a distinct computational advantage to SNOBOL4 patterns.[2] (Recursive expressions did appear in Perl 5.10, though, released in December 2007.[3][4])

One of the designers of SNOBOL, Ralph Griswold, designed successors to SNOBOL4 called SL5 and Icon, which combined the backtracking of SNOBOL4 pattern matching with more standard ALGOL-like structuring, as well as adding some features of their own.


Development

The initial SNOBOL language was created as a tool to be used by its authors to work with the symbolic manipulation of polynomials. It was written in assembly language for the IBM 7090. It had a simple syntax, only one datatype, the string, no functions, and no declarations and very little error control. However, despite its simplicity and its "personal" nature its use began to spread to other groups. As a result, the authors decided to extend it and tidy it up. They rewrote it and added functions, both standard and user-defined, and released the result as SNOBOL3. SNOBOL2 did exist but it was a short-lived intermediate development version without user-defined functions and was never released. SNOBOL3 became quite popular and was rewritten for other computers than the IBM 7090 by other programmers. As a result, several incompatible dialects arose.

As SNOBOL3 became more popular the authors received more and more requests for extensions to the language. They also began to receive complaints about incompatibility and bugs in versions that they hadn't written. To address this and to take advantage of the new computers being introduced in the late 1960s, the decision was taken to develop SNOBOL4 with many extra datatypes and features but based on a virtual machine to allow improved portability across computers.[5] The SNOBOL4 language translator was still written in assembly language. However the macro features of the assembler were used to define the virtual machine instructions of the SNOBOL Implementation Language, the SIL. This very much improved the portability of the language by making it relatively easy to port the virtual machine which hosted the translator by recreating its virtual instructions on any machine which included a macro assembler or indeed a high level language.[6]


Features

SNOBOL4 supports a number of built-in data types, such as integers and limited precision real numbers, strings, patterns, arrays, and tables (associative arrays), and also allows the programmer to define additional data types and new functions. SNOBOL4's programmer-defined data type facility was advanced at the time—it is similar to the earlier COBOL's and the later Pascal's records.

All SNOBOL command lines are of the form

    _label subject pattern_ = _object_ : _transfer_

Each of the five elements is optional. In general, the _subject_ is matched against the _pattern_. If the _object_ is present, any matched portion is replaced by the _object_ via rules for replacement. The _transfer_ can be an absolute branch or a conditional branch dependent upon the success or failure of the subject evaluation, the pattern evaluation, the pattern match, the object evaluation or the final assignment. It can also be a transfer to code created and compiled by the program itself during a run.

A SNOBOL pattern can be very simple or extremely complex. A simple pattern is just a text string (e.g. "ABCD"), but a complex pattern may be a large structure describing, for example, the complete grammar of a computer language. It is possible to implement a language interpreter in SNOBOL almost directly from a Backus–Naur form expression of it, with few changes. Creating a macro assembler and an interpreter for a completely theoretical piece of hardware could take as little as a few hundred lines, with a new instruction being added with a single line.

Complex SNOBOL patterns can do things that would be impractical or impossible using the more primitive regular expressions used in most other pattern matching languages. Some of this power derives from the so-called "SPITBOL extensions" (which have since been incorporated in basically all modern implementations of the original SNOBOL 4 language too), although it is possible to achieve the same power without them. Part of this power comes from the side effects that it is possible to produce during the pattern matching operation, including saving numerous intermediate/tentative matching results and the ability to invoke user-written functions during the pattern match which can perform nearly any desired processing, and then influence the ongoing direction the interrupted pattern match takes, or even to indeed change the pattern itself during the matching operation. Patterns can be saved like any other first-class data item, and can be concatenated, used within other patterns, and used to create very complex and sophisticated pattern expressions. It is possible to write, for example, a SNOBOL4 pattern which matches "a complete name and international postal mailing address", which is well beyond anything that is practical to even attempt using regular expressions.

SNOBOL4 pattern-matching uses a backtracking algorithm similar to that used in the logic programming language Prolog, which provides pattern-like constructs via DCGs. This algorithm makes it easier to use SNOBOL as a logic programming language than is the case for most languages.

SNOBOL stores variables, strings and data structures in a single garbage-collected heap.

SNOBOL rivals APL for its distinctiveness in format and programming style, both being radically unlike more "standard" procedural languages such as BASIC, Fortran, or C.


Example programs

The Hello World program might be as follows...

              OUTPUT = "Hello world"
    END

A simple program to ask for a user's name and then use it in an output sentence...

              OUTPUT = "What is your name?"
              Username = INPUT
              OUTPUT = "Thank you, " Username
    END

To choose between three possible outputs...

              OUTPUT = "What is your name?"
              Username = INPUT
              Username "J"                                             :S(LOVE)
              Username "K"                                             :S(HATE)
    MEH       OUTPUT = "Hi, " Username                                 :(END)
    LOVE      OUTPUT = "How nice to meet you, " Username               :(END)
    HATE      OUTPUT = "Oh. It's you, " Username
    END

To continue requesting input until no more is forthcoming...

              OUTPUT = "This program will ask you for personal names"
              OUTPUT = "until you press return without giving it one"
              NameCount = 0                                            :(GETINPUT)
    AGAIN     NameCount = NameCount + 1
              OUTPUT = "Name " NameCount ": " PersonalName
    GETINPUT  OUTPUT = "Please give me name " NameCount + 1
              PersonalName = INPUT
              PersonalName LEN(1)                                      :S(AGAIN)
              OUTPUT = "Finished. " NameCount " names requested."
    END


Implementations

The classic implementation was on the PDP-10; it has been used to study compilers, formal grammars, and artificial intelligence, especially machine translation and machine comprehension of natural languages. The original implementation was on an IBM 7090 at Bell Labs, Holmdel, N.J. SNOBOL4 was specifically designed for portability; the first implementation was started on an IBM 7094 in 1966 but completed on an IBM 360 in 1967. It was rapidly ported to many other platforms.

It is normally implemented as an interpreter because of the difficulty in implementing some of its very high-level features, but there is a compiler, the SPITBOL compiler, which provides nearly all the facilities that the interpreter provides.

The Gnat Ada Compiler comes with a package (GNAT.Spitbol) which implements all of the Spitbol string manipulation semantics. This can be called from within an Ada program.

The file editor for the Michigan Terminal System (MTS) provided pattern matching based on SNOBOL4 patterns.[7]

Several implementations are currently available. Macro SNOBOL4 in C written by Phil Budne is a free, open source implementation, capable of running on almost any platform.[8] Catspaw, Inc provided a commercial implementation of the SNOBOL4 language for many different computer platforms, including DOS, Macintosh, Sun, RS/6000, and others, and these implementations are now available free from Catspaw. Minnesota SNOBOL4, by Viktors Berstis, the closest PC implementation to the original IBM mainframe version (even including Fortran-like FORMAT statement support) is also free.[9]

Although SNOBOL itself has no structured programming features, a SNOBOL preprocessor called Snostorm was designed and implemented during the 1970s by Fred G. Swartz for use under the Michigan Terminal System (MTS) at the University of Michigan.[10] Snostorm was used at the eight to fifteen sites that ran MTS. It was also available at University College London (UCL) between 1982 and 1984.

Snocone by Andrew Koenig adds block-structured constructs to the SNOBOL4 language. Snocone is a self-contained programming language, rather than a proper superset of SNOBOL4.[11]

The SPITBOL implementation also introduced a number of features which, while not using traditional structured programming keywords, nevertheless can be used to provide many of the equivalent capabilities normally thought of as "structured programming", most notably nested if/then/else type constructs. These features have since been added to most recent SNOBOL4 implementations. After many years as a commercial product, in April 2009 SPITBOL was released as free software under the GNU General Public License.


Naming

According to Dave Farber,[12] he, Griswold and Polonsky "finally arrived at the name Symbolic EXpression Interpreter SEXI."

Common backronyms of "SNOBOL" are 'String Oriented Symbolic Language'[13] or (as a quasi-initialism) 'StriNg Oriented symBOlic Language'.[14]


See also

-   Icon (programming language)
-   Snowball (programming language)
-   Snostorm
-   SPITBOL
-   Unicon (programming language)


References


Further reading

-   Emmer, Mark B. _SNOBOL4+: The SNOBOL4 Language for the Personal Computer User_. Englewood Cliffs, NJ: Prentice Hall, 1985 ().
-   Gimpel, James F. _Algorithms in SNOBOL4_. New York: Wiley, 1976 (); republished Salida, CO: Catspaw, 1986 ().
-   Griswold, Ralph E. _The Macro Implementation of SNOBOL4_. San Francisco, CA: W. H. Freeman and Company, 1972 ().
-   Griswold, Ralph E., J. F. Poage, and I. P. Polonsky. _The SNOBOL4 Programming Language_. Englewood Cliffs, NJ: Prentice Hall, 1968 ().
-   Griswold, Ralph E. _String and List Processing in SNOBOL4: Techniques and Applications_. Englewood Cliffs, NJ: Prentice Hall, 1975 ().
-   Hockey, Susan M. _Snobol Programming for the Humanities_. New York: Clarendon Press; Oxford: Oxford University Press, 1985 ().


External links

-   Phil Budne offers a free and open source BSD-licensed port of the original Bell Labs SNOBOL4 to UNIX and UNIX-like platforms
-   Catspaw, Inc. offers implementations of and commercial support for SNOBOL4
-   -   Oral history interview with Ralph E. Griswold—Griswold discusses development of SNOBOL Charles Babbage Institute, University of Minnesota, Minneapolis.
-   Charles Hall Collection on the SNOBOL Programming Language. Charles Babbage Institute, University of Minnesota, Minneapolis.
-   For a small brief taste of what SNOBOL4 is about try this online compiler

Category:Pattern matching programming languages Category:Programming languages created in 1962 Category:SNOBOL programming language family Category:Software written primarily in assembly language Category:Text-oriented programming languages Category:Programming languages Category:1962 software Category:Homoiconic programming languages

[1] Gimpel, J. F. 1973. A theory of discrete patterns and their implementation in SNOBOL4. Commun. ACM 16, 2 (Feb. 1973), 91-100. DOI=http://doi.acm.org/10.1145/361952.361960

[2]

[3]

[4]

[5] See Chapter 1 of _The Macro Implementation of SNOBOL4_

[6] SNOBOL4 has been implemented using C to recreate the virtual machine instructions.

[7] Introduction to the MTS file editor, University of Michigan Computing Center, 1986.

[8] http://www.snobol4.org/

[9] http://www.berstis.com/snobol4.htm

[10] "SNOSTORM", _MTS Volume 9: SNOBOL4 in MTS_, Computing Center, University of Michigan, June 1979, pages 99-120. Retrieved 1 September 2014.

[11] "The Snocone Programming Language", Andrew Koenig, USENIX (Portland, Oregon), June 1985. Retrieved 2 September 2014.

[12] WORTH READING Wikipedia entry on SNOBOL -- the TRUE story NOT Wikipedias (Dave Farber, Interesting People mailing list, 26 December 2008)

[13] _Computers and the humanities_ 1:158, 1967.

[14] Jack Belzer _et al._, _eds._, _Encyclopedia of Computer Science and Technology_, CRC Press, 1979, . 13:173 at Google Books