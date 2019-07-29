ANSI C, ISO C and STANDARD C refer to the successive standards for the C programming language published by the American National Standards Institute (ANSI) and the International Organization for Standardization (ISO). Historically, the names referred specifically to the original and best-supported version of the standard (known as C89 or C90). Software developers writing in C are encouraged to conform to the standards, as doing so helps portability between compilers.


History and outlook

The first standard for C was published by ANSI. Although this document was subsequently adopted by International Organization for Standardization (ISO) and subsequent revisions published by ISO have been adopted by ANSI, "ANSI C" is still used to refer to the standard.[1] While some software developers use the term ISO C, others are standards-body neutral and use Standard C.

C89

In 1983, the American National Standards Institute formed a committee, X3J11, to establish a standard specification of C. The standard was completed in 1989 and ratified as ANSI X3.159-1989 "Programming Language C." This version of the language is often referred to as "ANSI C". Later on sometimes the label "C89" is used to distinguish it from C99 but using the same labelling method.

C90

The same standard as C89 was ratified by the International Organization for Standardization as ISO/IEC 9899:1990, with only formatting changes,[2] which is sometimes referred to as C90. Therefore, the terms "C89" and "C90" refer to essentially the same language.

This standard has been withdrawn by both ANSI/INCITS[3] and ISO/IEC.[4]

C95

In 1995, the ISO published an extension, called Amendment 1, for the ANSI-C standard. Its full name finally was _ISO/IEC 9899:1990/AMD1:1995_ or nicknamed _C95_. Aside from error correction there were further changes to the language capabilities,[5][6] such as:

-   Improved _multi-byte_ and _wide character_ support in the standard library, introducing <wchar.h> and <wctype.h> as well as multi-byte I/O
-   Addition of digraphs to the language
-   Specification of standard macros for the alternative specification of operators, e.g. and for &&
-   Specification of the standard macro __STDC_VERSION__

In addition to the amendment, two technical corrigenda were published by ISO for C90:

-   ISO/IEC 9899:1990/Cor 1:1994 TCOR1 in 1994[7]
-   ISO/IEC 9899:1990/Cor 2:1996 in 1996[8]

Preprocessor test for C95 compatibility

    #if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199409L

    /* C95 compatible source code. */
    #elif defined(__STDC__)
    /* C89 compatible source code. */
    #endif

C99

In March 2000, ANSI adopted the ISO/IEC 9899:1999[9] standard. This standard is commonly referred to as C99. Some notable additions to the previous standard include:

-   New built-in data types: long long, _Bool, _Complex, and _Imaginary
-   Several new core language features, including static array indices, designated initializers, compound literals, variable-length arrays, flexible array members, variadic macros, and restrict keyword
-   Several new library headers, including stdint.h, <tgmath.h>, fenv.h, <complex.h>
-   Improved compatibility with several C++ features, including inline functions, single-line comments with //, mixing declarations and code, and universal character names in identifiers
-   Removed several dangerous C89 language features such as implicit function declarations and implicit int

Three technical corrigenda were published by ISO for C99:

-   ISO/IEC 9899:1999/Cor 1:2001(E)
-   ISO/IEC 9899:1999/Cor 2:2004(E)
-   ISO/IEC 9899:1999/Cor 3:2007(E), notable for deprecating the standard library function gets

This standard has been withdrawn by both ANSI/INCITS[10] and ISO/IEC[11] in favour of C11.

C11

, "C11" is the previous standard for the C programming language. Notable features introduced over the previous revision include improved Unicode support, type-generic expressions using the new _Generic keyword, a cross-platform multi-threading API (threads.h) and atomic types support in both core language and the library (stdatomic.h).

One technical corrigendum has been published by ISO for C11:

-   ISO/IEC 9899:2011/Cor 1:2012[12]

C18

, "C18" is the current standard for the C programming language.[13]

Other related ISO publications

As part of the standardization process, ISO also publishes technical reports and specifications related to the C language:

-   ISO/IEC TR 19769:2004,[14] on library extensions to support Unicode transformation formats, integrated into C11
-   ISO/IEC TR 24731-1:2007,[15] on library extensions to support bounds-checked interfaces, integrated into C11
-   ISO/IEC TR 18037:2008,[16] on embedded C extensions
-   ISO/IEC TR 24732:2009,[17] on decimal floating point arithmetic, superseded by ISO/IEC TS 18661-2:2015
-   ISO/IEC TR 24747:2009,[18] on special mathematical functions,
-   ISO/IEC TR 24731-2:2010,[19] on library extensions to support dynamic allocation functions
-   ISO/IEC TS 17961:2013,[20] on secure coding in C
-   ISO/IEC TS 18661-1:2014,[21] on IEC 60559:2011-compatible binary floating-point arithmetic
-   ISO/IEC TS 18661-2:2015,[22] on IEC 60559:2011-compatible decimal floating point arithmetic
-   ISO/IEC TS 18661-3:2015,[23] on IEC 60559:2011-compatible interchange and extended floating-point types
-   ISO/IEC TS 18661-4:2015,[24] on IEC 60559:2011-compatible supplementary functions

More technical specifications are in development and pending approval, including the fifth and final part of TS 18661, a software transactional memory specification, and parallel library extensions.[25]


Support from major compilers

ANSI C is now supported by almost all the widely used compilers. GCC and Clang are two major C compilers popular today, both are based on the C11 with updates including changes from later specifications such as C17 and C18.[26][27] Any program written _only_ in standard C and without any hardware dependent assumptions is virtually guaranteed to compile correctly on any platform with a conforming C implementation. Without such precautions, most programs may compile only on a certain platform or with a particular compiler, due, for example, to the use of non-standard libraries, such as GUI libraries, or to the reliance on compiler- or platform-specific attributes such as the exact size of certain data types and byte endianness.

Compliance detectability

To mitigate the differences between K&R C and the ANSI C standard, the __STDC__ ("standard c") macro can be used to split code into ANSI and K&R sections.

     #if defined(__STDC__) && __STDC__
     extern int getopt(int, char * const *, const char *);
     #else
     extern int getopt();
     #endif

In the above example, a prototype is used in a function declaration for ANSI compliant implementations, while an obsolescent non-prototype declaration is used otherwise. Those are still ANSI-compliant as of C99. Note how this code checks both definition and evaluation: this is because some implementations may set __STDC__ to zero to indicate non-ANSI compliance.[28]


Compilers supporting ANSI C

-   Amsterdam Compiler Kit (C K&R and C89/90)
-   ARM RealView
-   Clang, using LLVM backend
-   GCC (full C89/90, C99 and C11)
-   HP C/ANSI C compiler (C89 and C99)[29]
-   IBM XL C/C++ (C11, starting with version 12.1)[30]
-   Intel's ICC
-   LabWindows/CVI
-   LCC
-   OpenWatcom (C89/90 and some C99)
-   Microsoft Visual C++ (C89/90 and some C99)
-   Pelles C (C99 and C11. Windows only.)[31]
-   vbcc (C89/90 and C99)
-   Tiny C Compiler (C89/90 and some C99)
-   Oracle Developer Studio


See also

-   Compatibility of C and C++
-   C++17, C++14, C++11, C++03, C++98, versions of the C++ programming language standard
-   C++ Technical Report 1


References

[32]


External links

-   ISO C working group
-   _Draft ANSI C Standard_ (ANSI X3J11/88-090) (May 13, 1988), Third Public Review
-   _Draft ANSI C Rationale_ (ANSI X3J11/88-151) (Nov 18, 1988)
-   _C Information Bulletin #1_ (ANSI X3J11/93-007) (May 27, 1992)
-   ANSI C Yacc grammar
    -   ANSI C grammar, Lex specification
-   -   -

Category:ANSI standards Category:C (programming language) Category:Programming language standards

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

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25] See a list at https://en.cppreference.com/w/c/experimental Visited 16 January 2016.

[26]

[27]

[28]

[29]

[30] Support for ISO C11 added to IBM XL C/C++ compilers

[31] link to Pelles C pages

[32]