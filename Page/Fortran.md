FORTRAN (; formerly FORTRAN, derived from _Formula Translation_[1]) is a general-purpose, compiled imperative programming language that is especially suited to numeric computation and scientific computing.

Originally developed by IBM[2] in the 1950s for scientific and engineering applications, FORTRAN came to dominate this area of programming early on and has been in continuous use for over six decades in computationally intensive areas such as numerical weather prediction, finite element analysis, computational fluid dynamics, computational physics, crystallography and computational chemistry. It is a popular language for high-performance computing[3] and is used for programs that benchmark and rank the world's fastest supercomputers.[4]

Fortran encompasses a lineage of versions, each of which evolved to add extensions to the language while usually retaining compatibility with prior versions. Successive versions have added support for structured programming and processing of character-based data (FORTRAN 77), array programming, modular programming and generic programming (Fortran 90), high performance Fortran (Fortran 95), object-oriented programming (Fortran 2003) and concurrent programming (Fortran 2008).

Fortran's design was the basis for many other programming languages. Among the better known is BASIC, which is based on FORTRAN II with a number of syntax cleanups, notably better logical structures,[5] and other changes to more easily work in an interactive environment.[6]


Naming

The names of earlier versions of the language through FORTRAN 77 were conventionally spelled in all-capitals (FORTRAN 77 was the last version in which the use of lowercase letters in keywords was strictly non-standard). The capitalization has been dropped in referring to newer versions beginning with Fortran 90. The official language standards now refer to the language as "Fortran" rather than all-caps "FORTRAN".


History

IBM_704_mainframe.gif mainframe computer]] In late 1953, John W. Backus submitted a proposal to his superiors at IBM to develop a more practical alternative to assembly language for programming their IBM 704 mainframe computer.[7] Backus' historic FORTRAN team consisted of programmers Richard Goldberg, Sheldon F. Best, Harlan Herrick, Peter Sheridan, Roy Nutt, Robert Nelson, Irving Ziller, Harold Stern, Lois Haibt, and David Sayre.[8] Its concepts included easier entry of equations into a computer, an idea developed by J. Halcombe Laning and demonstrated in the Laning and Zierler system of 1952.[9] Some of these programmers were chess players and were chosen to work at IBM with the thought being they had logical minds.

A draft specification for _The IBM Mathematical Formula Translating System_ was completed by November 1954.[10] The first manual for FORTRAN appeared in October 1956,[11] with the first FORTRAN compiler delivered in April 1957.[12] This was the first optimizing compiler, because customers were reluctant to use a high-level programming language unless its compiler could generate code with performance comparable to that of hand-coded assembly language.[13]

While the community was skeptical that this new method could possibly outperform hand-coding, it reduced the number of programming statements necessary to operate a machine by a factor of 20, and quickly gained acceptance. John Backus said during a 1979 interview with _Think_, the IBM employee magazine, "Much of my work has come from being lazy. I didn't like writing programs, and so, when I was working on the IBM 701, writing programs for computing missile trajectories, I started work on a programming system to make it easier to write programs."[14]

The language was widely adopted by scientists for writing numerically intensive programs, which encouraged compiler writers to produce compilers that could generate faster and more efficient code. The inclusion of a complex number data type in the language made Fortran especially suited to technical applications such as electrical engineering.

By 1960, versions of FORTRAN were available for the IBM 709, 650, 1620, and 7090 computers. Significantly, the increasing popularity of FORTRAN spurred competing computer manufacturers to provide FORTRAN compilers for their machines, so that by 1963 over 40 FORTRAN compilers existed. For these reasons, FORTRAN is considered to be the first widely used cross-platform programming language.

The development of Fortran paralleled the early evolution of compiler technology, and many advances in the theory and design of compilers were specifically motivated by the need to generate efficient code for Fortran programs.

FORTRAN

The initial release of FORTRAN for the IBM 704 contained 32 statements, including:

-   and statements

-   Assignment statements
-   Three-way _arithmetic_ {{code statement, which passed control to one of three locations in the program depending on whether the result of the arithmetic statement was negative, zero, or positive
-   statements for checking exceptions (, , and ); and statements for manipulating sense switches and sense lights

-   , computed , , and assigned

-   loops

-   Formatted I/O: , , , , , , and
-   Unformatted I/O: , , , and
-   Other I/O: , , and
-   , , and

-   statement (for providing optimization hints to the compiler).

The arithmetic statement was reminiscent of (but not readily implementable by) a three-way comparison instruction (CAS Compare Accumulator with Storage) available on the 704. The statement provided the only way to compare numbers by testing their difference, with an attendant risk of overflow. This deficiency was later overcome by "logical" facilities introduced in FORTRAN IV.

The statement was used originally (and optionally) to give branch probabilities for the three branch cases of the arithmetic IF statement. The first FORTRAN compiler used this weighting to perform _at compile time_ a Monte Carlo simulation of the generated code, the results of which were used to optimize the placement of basic blocks in memory a very sophisticated optimization for its time. The Monte Carlo technique is documented in Backus et al.'s paper on this original implementation, _The FORTRAN Automatic Coding System_:

  The fundamental unit of program is the basic block; a basic block is a stretch of program which has one entry point and one exit point. The purpose of section 4 is to prepare for section 5 a table of predecessors (PRED table) which enumerates the basic blocks and lists for every basic block each of the basic blocks which can be its immediate predecessor in flow, together with the absolute frequency of each such basic block link. This table is obtained by running the program once in Monte-Carlo fashion, in which the outcome of conditional transfers arising out of IF-type statements and computed GO TO's is determined by a random number generator suitably weighted according to whatever FREQUENCY statements have been provided.[15]

Many years later, the statement had no effect on the code, and was treated as a comment statement, since the compilers no longer did this kind of compile-time simulation. A similar fate has befallen _compiler hints_ in several other programming languages; for example C's keyword.

The first FORTRAN compiler reported diagnostic information by halting the program when an error was found and outputting an error code on its console. That code could be looked up by the programmer in an error messages table in the operator's manual, providing them with a brief description of the problem.[16][17] Later, an error handling subroutine to handle users error such as division by zero, developed by NASA[18] was incorporated, giving users feedback on which line of code the error appeared.

Fixed layout and punched cards

FortranCardPROJ039.agr.jpg, showing the specialized uses of columns 1–5, 6 and 73–80]] Before the development of disk files, text editors and terminals, programs were most often entered on a keypunch keyboard onto 80-column punched cards, one line to a card. The resulting deck of cards would be fed into a card reader to be compiled. Punched card codes included no lower-case letters or many special characters, and special versions of the IBM 026 keypunch were offered that would correctly print the re-purposed special characters used in FORTRAN.

Reflecting punched card input practice, Fortran programs were originally written in a fixed-column format, with the first 72 columns read into twelve 36-bit words.

A letter "C" in column 1 caused the entire card to be treated as a comment and ignored by the compiler. Otherwise, the columns of the card were divided into four fields:

-   1 to 5 were the label field: a sequence of digits here was taken as a label for use in DO or control statements such as GO TO and IF, or to identify a FORMAT statement referred to in a WRITE or READ statement. Leading zeros are ignored and 0 is not a valid label number.
-   6 was a continuation field: a character other than a blank or a zero here caused the card to be taken as a continuation of the statement on the prior card. The continuation cards were usually numbered 1, 2, _etc._ and the starting card might therefore have zero in its continuation column – which is not a continuation of its preceding card.
-   7 to 72 served as the statement field.
-   73 to 80 were ignored (the IBM 704's card reader only used 72 columns).[19]

Columns 73 to 80 could therefore be used for identification information, such as punching a sequence number or text, which could be used to re-order cards if a stack of cards was dropped; though in practice this was reserved for stable, production programs. An IBM 519 could be used to copy a program deck and add sequence numbers. Some early compilers, e.g., the IBM 650's, had additional restrictions due to limitations on their card readers.[20] Keypunches could be programmed to tab to column 7 and skip out after column 72. Later compilers relaxed most fixed-format restrictions, and the requirement was eliminated in the Fortran 90 standard.

Within the statement field, whitespace characters (blanks) were ignored outside a text literal. This allowed omitting spaces between tokens for brevity or including spaces within identifiers for clarity. For example, was a valid identifier, equivalent to , and

    101010DO101I=1,101

was a valid statement, equivalent to

    10101    DO 101   I = 1, 101

because the zero in column 6 is treated as if it were a space (!), while

    101010DO101I=1.101

was instead

    10101    DO101I = 1.101

, the assignment of 1.101 to a variable called

    DO101I

. Note the slight visual difference between a comma and a period.

Hollerith strings, originally allowed only in FORMAT and DATA statements, were prefixed by a character count and the letter H (e.g., ), allowing blanks to be retained within the character string. Miscounts were a problem.

FORTRAN II

IBM's _FORTRAN II_ appeared in 1958. The main enhancement was to support procedural programming by allowing user-written subroutines and functions which returned values, with parameters passed by reference. The COMMON statement provided a way for subroutines to access common (or global) variables. Six new statements were introduced:[21]

-   , , and

-   and

-

Over the next few years, FORTRAN II would also add support for the and data types.

Early FORTRAN compilers supported no recursion in subroutines. Early computer architectures supported no concept of a stack, and when they did directly support subroutine calls, the return location was often stored in one fixed location adjacent to the subroutine code (e.g. the IBM 1130) or a specific machine register (IBM 360 _et seq_), which only allows recursion if a stack is maintained by software and the return address is stored on the stack before the call is made and restored after the call returns. Although not specified in FORTRAN 77, many F77 compilers supported recursion as an option, and the Burroughs mainframes, designed with recursion built-in, did so by default. It became a standard in Fortran 90 via the new keyword RECURSIVE.[22]

Simple FORTRAN II program

This program, for Heron's formula, reads data on a tape reel containing three 5-digit integers A, B, and C as input. There are no "type" declarations available: variables whose name starts with I, J, K, L, M, or N are "fixed-point" (i.e. integers), otherwise floating-point. Since integers are to be processed in this example, the names of the variables start with the letter "I". The name of a variable must start with a letter and can continue with both letters and digits, up to a limit of six characters in FORTRAN II. If A, B, and C cannot represent the sides of a triangle in plane geometry, then the program's execution will end with an error code of "STOP 1". Otherwise, an output line will be printed showing the input values for A, B, and C, followed by the computed AREA of the triangle as a floating-point number occupying ten spaces along the line of output and showing 2 digits after the decimal point, the .2 in F10.2 of the FORMAT statement with label 601.

    C AREA OF A TRIANGLE WITH A STANDARD SQUARE ROOT FUNCTION
    C INPUT - TAPE READER UNIT 5, INTEGER INPUT
    C OUTPUT - LINE PRINTER UNIT 6, REAL OUTPUT
    C INPUT ERROR DISPLAY ERROR OUTPUT CODE 1 IN JOB CONTROL LISTING
          READ INPUT TAPE 5, 501, IA, IB, IC
      501 FORMAT (3I5)
    C IA, IB, AND IC MAY NOT BE NEGATIVE OR ZERO
    C FURTHERMORE, THE SUM OF TWO SIDES OF A TRIANGLE
    C MUST BE GREATER THAN THE THIRD SIDE, SO WE CHECK FOR THAT, TOO
          IF (IA) 777, 777, 701
      701 IF (IB) 777, 777, 702
      702 IF (IC) 777, 777, 703
      703 IF (IA+IB-IC) 777, 777, 704
      704 IF (IA+IC-IB) 777, 777, 705
      705 IF (IB+IC-IA) 777, 777, 799
      777 STOP 1
    C USING HERON'S FORMULA WE CALCULATE THE
    C AREA OF THE TRIANGLE
      799 S = FLOATF (IA + IB + IC) / 2.0
          AREA = SQRTF( S * (S - FLOATF(IA)) * (S - FLOATF(IB)) *
         +     (S - FLOATF(IC)))
          WRITE OUTPUT TAPE 6, 601, IA, IB, IC, AREA
      601 FORMAT (4H A= ,I5,5H  B= ,I5,5H  C= ,I5,8H  AREA= ,F10.2,
         +        13H SQUARE UNITS)
          STOP
          END

FORTRAN III

FortranCodingForm.png operators. Now obsolete.]] IBM also developed a _FORTRAN III_ in 1958 that allowed for inline assembly code among other features; however, this version was never released as a product. Like the 704 FORTRAN and FORTRAN II, FORTRAN III included machine-dependent features that made code written in it unportable from machine to machine.[23] Early versions of FORTRAN provided by other vendors suffered from the same disadvantage.

IBM 1401 FORTRAN

FORTRAN was provided for the IBM 1401 computer by an innovative 63-phase compiler that ran entirely in its core memory of only 8000 (six-bit) characters. The compiler could be run from tape, or from a 2200-card deck; it used no further tape or disk storage. It kept the program in memory and loaded overlays that gradually transformed it, in place, into executable form, as described by Haines.[24] This article was reprinted, edited, in both editions of _Anatomy of a Compiler_ [25] and in the IBM manual "Fortran Specifications and Operating Procedures, IBM 1401".[26] The executable form was not entirely machine language; rather, floating-point arithmetic, sub-scripting, input/output, and function references were interpreted, preceding UCSD Pascal P-code by two decades.

IBM later provided a FORTRAN IV compiler for the 1400 series of computers.[27]

FORTRAN IV

Starting in 1961, as a result of customer demands, IBM began development of a _FORTRAN IV_ that removed the machine-dependent features of FORTRAN II (such as ), while adding new features such as a {{code, logical Boolean expressions and the _logical IF statement_ as an alternative to the _arithmetic IF statement._ FORTRAN IV was eventually released in 1962, first for the IBM 7030 ("Stretch") computer, followed by versions for the IBM 7090, IBM 7094, and later for the IBM 1401 in 1966.

By 1965, FORTRAN IV was supposed to be compliant with the _standard_ being developed by the American Standards Association X3.4.3 FORTRAN Working Group.[28]

Between 1966 and 1968, IBM offered several FORTRAN IV compilers for its System/360, each named by letters that indicated the minimum amount of memory the complier needed to run. [29] The letters (F, G, H) matched the codes used with System/360 model numbers to indicate memory size, each letter increment being a factor of two larger:[30]

-   1966 : FORTRAN IV F for DOS/360 (64K bytes)
-   1966 : FORTRAN IV G for OS/360 (128K bytes)
-   1968 : FORTRAN IV H for OS/360 (256K bytes)

At about this time FORTRAN IV had started to become an important educational tool and implementations such as the University of Waterloo's WATFOR and WATFIV were created to simplify the complex compile and link processes of earlier compilers.

FORTRAN 66

Perhaps the most significant development in the early history of FORTRAN was the decision by the _American Standards Association_ (now American National Standards Institute (ANSI)) to form a committee sponsored by BEMA, the Business Equipment Manufacturers Association, to develop an _American Standard Fortran_. The resulting two standards, approved in March 1966, defined two languages, _FORTRAN_ (based on FORTRAN IV, which had served as a de facto standard), and _Basic FORTRAN_ (based on FORTRAN II, but stripped of its machine-dependent features). The FORTRAN defined by the first standard, officially denoted X3.9-1966, became known as _FORTRAN 66_ (although many continued to term it FORTRAN IV, the language on which the standard was largely based). FORTRAN 66 effectively became the first industry-standard version of FORTRAN. FORTRAN 66 included:

-   Main program, , , and program units
-   , , , , and data types

-   , , and statements

-   statement for specifying initial values

-   Intrinsic and (e.g., library) functions
-   Assignment statement
-   , computed , assigned , and statements

-   Logical and arithmetic (three-way) statements
-   loop statement

-   , , , , and statements for sequential I/O

-   statement and assigned format

-   , , , and statements

-   Hollerith constants in and statements, and as arguments to procedures
-   Identifiers of up to six characters in length
-   Comment lines
-   line

FORTRAN 77

FORTRAN-77 program with compiler output, written on a CDC 175 at RWTH Aachen University, Germany, in 1987 4.3_BSD_UWisc_VAX_Emulation_f77_Manual.png for the Digital Equipment Corporation (DEC) VAX, displaying the manual for FORTRAN 77 (f77) compiler]] After the release of the FORTRAN 66 standard, compiler vendors introduced several extensions to _Standard Fortran_, prompting ANSI committee X3J3 in 1969 to begin work on revising the 1966 standard, under sponsorship of CBEMA, the Computer Business Equipment Manufacturers Association (formerly BEMA). Final drafts of this revised standard circulated in 1977, leading to formal approval of the new FORTRAN standard in April 1978. The new standard, called _FORTRAN 77_ and officially denoted X3.9-1978, added a number of significant features to address many of the shortcomings of FORTRAN 66:

-   Block and statements, with optional and clauses, to provide improved language support for structured programming
-   loop extensions, including parameter expressions, negative increments, and zero trip counts

-   , , and statements for improved I/O capability

-   Direct-access file I/O
-   statement, to override implicit conventions that undeclared variables are INTEGER if their name begins with I, J, K, L, M, or N (and REAL otherwise)

-   data type, replacing Hollerith strings with vastly expanded facilities for character input and output and processing of character-based data

-   statement for specifying constants

-   statement for persistent local variables

-   Generic names for intrinsic functions (e.g. also accepts arguments of other types, such as or ).
-   A set of intrinsics () for lexical comparison of strings, based upon the ASCII collating sequence. (These ASCII functions were demanded by the U.S. Department of Defense, in their conditional approval vote.)

In this revision of the standard, a number of features were removed or altered in a manner that might invalidate formerly standard-conforming programs. _(Removal was the only allowable alternative to X3J3 at that time, since the concept of "deprecation" was not yet available for ANSI standards.)_ While most of the 24 items in the conflict list (see Appendix A2 of X3.9-1978) addressed loopholes or pathological cases permitted by the prior standard but rarely used, a small number of specific capabilities were deliberately removed, such as:

-   Hollerith constants and Hollerith data, such as
              GREET = 12HHELLO THERE!

-   Reading into an H edit (Hollerith field) descriptor in a FORMAT specification

* Overindexing of array bounds by subscripts

          DIMENSION A(10,5)
          Y=  A(11,1)

-   Transfer of control out of and back into the range of a DO loop (also known as "Extended Range")

Variants: Minnesota FORTRAN

Control Data Corporation computers had another version of FORTRAN 77, called Minnesota FORTRAN (MNF), designed especially for student use, with variations in output constructs, special uses of COMMONs and DATA statements, optimizations code levels for compiling, and detailed error listings, extensive warning messages, and debugs.[31]

Transition to ANSI Standard Fortran

The development of a revised standard to succeed FORTRAN 77 would be repeatedly delayed as the standardization process struggled to keep up with rapid changes in computing and programming practice. In the meantime, as the "Standard FORTRAN" for nearly fifteen years, FORTRAN 77 would become the historically most important dialect.

An important practical extension to FORTRAN 77 was the release of MIL-STD-1753 in 1978.[32] This specification, developed by the U.S. Department of Defense, standardized a number of features implemented by most FORTRAN 77 compilers but not included in the ANSI FORTRAN 77 standard. These features would eventually be incorporated into the Fortran 90 standard.

-   , , , and statements

-   statement

-   variant of the statement

-   Bit manipulation intrinsic functions, based on similar functions included in Industrial Real-Time Fortran (ANSI/ISA S61.1 (1976))

The IEEE 1003.9 POSIX Standard, released in 1991, provided a simple means for FORTRAN 77 programmers to issue POSIX system calls.[33] Over 100 calls were defined in the document allowing access to POSIX-compatible process control, signal handling, file system control, device control, procedure pointing, and stream I/O in a portable manner.

Fortran 90

The much-delayed successor to FORTRAN 77, informally known as _Fortran 90_ (and prior to that, _Fortran 8X_), was finally released as ISO/IEC standard 1539:1991 in 1991 and an ANSI Standard in 1992. In addition to changing the official spelling from FORTRAN to Fortran, this major revision added many new features to reflect the significant changes in programming practice that had evolved since the 1978 standard:

-   Free-form source input, also with lowercase Fortran keywords
-   Identifiers up to 31 characters in length (In the previous standard, it was only six characters).
-   Inline comments
-   Ability to operate on arrays (or array sections) as a whole, thus greatly simplifying math and engineering computations.
    -   whole, partial and masked array assignment statements and array expressions, such as
            X(1:N)=R(1:N)*COS(A(1:N))

    -   statement for selective array assignment

    -   array-valued constants and expressions,
    -   user-defined array-valued functions and array constructors.

-   {{code procedures
-   Modules, to group related procedures and data together, and make them available to other program units, including the capability to limit the accessibility to only specific parts of the module.
-   A vastly improved argument-passing mechanism, allowing interfaces to be checked at compile time
-   User-written interfaces for generic procedures
-   Operator overloading
-   Derived (structured) data types
-   New data type declaration syntax, to specify the data type and other attributes of variables
-   Dynamic memory allocation by means of the attribute and the and statements
-   {{code attribute, pointer assignment, and statement to facilitate the creation and manipulation of dynamic data structures
-   Structured looping constructs, with an statement for loop termination, and and statements for terminating normal loop iterations in an orderly way
-   . . . construct for multi-way selection

-   Portable specification of numerical precision under the user's control
-   New and enhanced intrinsic procedures.

Obsolescence and deletions

Unlike the prior revision, Fortran 90 removed no features. _(Appendix B.1 says, "The list of deleted features in this standard is empty.")_ Any standard-conforming FORTRAN 77 program is also standard-conforming under Fortran 90, and either standard should be usable to define its behavior.

A small set of features were identified as "obsolescent" and expected to be removed in a future standard. All of the functionalities of these early version features are performed by new Fortran 95 features. Some are kept to simplify porting of old programs but may eventually be deleted.

+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Obsolescent feature                              | Example                                           | Status/fate in Fortran 95 |
+==================================================+===================================================+===========================+
| Arithmetic IF-statement                          |           IF (X) 10, 20, 30                       | Deprecated                |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Non-integer DO parameters or control variables   |           DO 9 X= 1.7, 1.6, -0.1                  | Deleted                   |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Shared DO-loop termination or                    |           DO 9 J= 1, 10                           | Deprecated                |
| termination with a statement                     |               DO 9 K= 1, 10                       |                           |
| other than END DO or CONTINUE                    |       9       L=  J + K                           |                           |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Branching to END IF                              |      66   GO TO 77 ; . . .                        | Deleted                   |
| from outside a block                             |           IF (E) THEN ;     . . .                 |                           |
|                                                  |      77   END IF                                  |                           |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Alternate return                                 |           CALL SUBR( X, Y, *100, *200 )           | Deprecated                |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| PAUSE statement                                  |           PAUSE 600                               | Deleted                   |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| ASSIGN statement                                 |      100   . . .                                  | Deleted                   |
|   and assigned GO TO statement                   |           ASSIGN 100 TO H                         |                           |
|                                                  |            . . .                                  |                           |
|                                                  |           GO TO H . . .                           |                           |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Assigned statement numbers and FORMAT specifiers |           ASSIGN 606 TO F ... WRITE ( 6, F )...   | Deleted                   |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| H edit descriptors                               |      606  FORMAT ( 9H1GOODBYE. )                  | Deleted                   |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Computed GO TO statement                         |           GO TO (10, 20, 30, 40), index           | (obsolete)                |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Statement functions                              |           FOIL( X, Y )=  X**2 + 2*X*Y + Y**2      | (obsolete)                |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| DATA statements                                  |           X= 27.3                                 | (obsolete)                |
|   among executable statements                    |           DATA  A, B, C  / 5.0, 12.0, 13.0 /      |                           |
|                                                  |           . . .                                   |                           |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| CHARACTER* form of CHARACTER declaration         |           CHARACTER*8 STRING   ! Use CHARACTER(8) | (obsolete)                |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Assumed character length functions               |           CHARACTER*(*) STRING                    | (obsolete)[34]            |
+--------------------------------------------------+---------------------------------------------------+---------------------------+
| Fixed form source code                           | Column 1 contains C or * or ! for comments.       | (obsolete)                |
|                                                  | Columns 1 through 5 for statement numbers         |                           |
|                                                  | Any character in column 6 for continuation.       |                           |
|                                                  | Columns 73 and up ignored                         |                           |
+--------------------------------------------------+---------------------------------------------------+---------------------------+

"Hello world" example

    program helloworld
         print *, "Hello world!"
    end program helloworld

Fortran 95

_Fortran 95_, published officially as ISO/IEC 1539-1:1997, was a minor revision, mostly to resolve some outstanding issues from the Fortran 90 standard. Nevertheless, Fortran 95 also added a number of extensions, notably from the High Performance Fortran specification:

-   and nested constructs to aid vectorization

-   User-defined and procedures
-   Default initialization of derived type components, including pointer initialization
-   Expanded the ability to use initialization expressions for data objects
-   Initialization of pointers to
-   Clearly defined that arrays are automatically deallocated when they go out of scope.

A number of intrinsic functions were extended (for example a argument was added to the intrinsic).

Several features noted in Fortran 90 to be "obsolescent" were removed from Fortran 95:

-   statements using and index variables

-   Branching to an statement from outside its block
-   statement

-   and assigned statement, and assigned format specifiers

-   Hollerith edit descriptor.

An important supplement to Fortran 95 was the ISO technical report _TR-15581: Enhanced Data Type Facilities_, informally known as the _Allocatable TR._ This specification defined enhanced use of arrays, prior to the availability of fully Fortran 2003-compliant Fortran compilers. Such uses include arrays as derived type components, in procedure dummy argument lists, and as function return values. ( arrays are preferable to -based arrays because arrays are guaranteed by Fortran 95 to be deallocated automatically when they go out of scope, eliminating the possibility of memory leakage. In addition, elements of allocatable arrays are contiguous, and aliasing is not an issue for optimization of array references, allowing compilers to generate faster code than in the case of pointers.[35])

Another important supplement to Fortran 95 was the ISO technical report _TR-15580: Floating-point exception handling_, informally known as the _IEEE TR._ This specification defined support for IEEE floating-point arithmetic and floating point exception handling.

Conditional compilation and varying length strings

In addition to the mandatory "Base language" (defined in ISO/IEC 1539-1 : 1997), the Fortran 95 language also includes two optional modules:

-   Varying length character strings (ISO/IEC 1539-2 : 2000)
-   Conditional compilation (ISO/IEC 1539-3 : 1998)

which, together, compose the multi-part International Standard (ISO/IEC 1539).

According to the standards developers, "the optional parts describe self-contained features which have been requested by a substantial body of users and/or implementors, but which are not deemed to be of sufficient generality for them to be required in all standard-conforming Fortran compilers." Nevertheless, if a standard-conforming Fortran does provide such options, then they "must be provided in accordance with the description of those facilities in the appropriate Part of the Standard".

Fortran 2003

_Fortran 2003,_ officially published as ISO/IEC 1539-1:2004, is a major revision introducing many new features.[36] A comprehensive summary of the new features of Fortran 2003 is available at the Fortran Working Group (ISO/IEC JTC1/SC22/WG5) official Web site.[37]

From that article, the major enhancements for this revision include:

-   Derived type enhancements: parameterized derived types, improved control of accessibility, improved structure constructors, and finalizers
-   Object-oriented programming support: type extension and inheritance, polymorphism, dynamic type allocation, and type-bound procedures, providing complete support for abstract data types
-   Data manipulation enhancements: allocatable components (incorporating TR 15581), deferred type parameters, {{code, explicit type specification in array constructors and allocate statements, pointer enhancements, extended initialization expressions, and enhanced intrinsic procedures
-   Input/output enhancements: asynchronous transfer, stream access, user specified transfer operations for derived types, user specified control of rounding during format conversions, named constants for preconnected units, the statement, regularization of keywords, and access to error messages
-   Procedure pointers
-   Support for IEEE floating-point arithmetic and floating point exception handling (incorporating TR 15580)
-   Interoperability with the C programming language
-   Support for international usage: access to ISO 10646 4-byte characters and choice of decimal or comma in numeric formatted input/output
-   Enhanced integration with the host operating system: access to command line arguments, environment variables, and processor error messages

An important supplement to Fortran 2003 was the ISO technical report _TR-19767: Enhanced module facilities in Fortran._ This report provided _sub-modules,_ which make Fortran modules more similar to Modula-2 modules. They are similar to Ada private child sub-units. This allows the specification and implementation of a module to be expressed in separate program units, which improves packaging of large libraries, allows preservation of trade secrets while publishing definitive interfaces, and prevents compilation cascades.

Fortran 2008

ISO/IEC 1539-1:2010, informally known as Fortran 2008, was approved in September 2010.[38][39] As with Fortran 95, this is a minor upgrade, incorporating clarifications and corrections to Fortran 2003, as well as introducing a select few new capabilities. The new capabilities include:

-   Sub-modules – additional structuring facilities for modules; supersedes ISO/IEC TR 19767:2005
-   Coarray Fortran – a parallel execution model
-   The DO CONCURRENT construct – for loop iterations with no interdependencies
-   The CONTIGUOUS attribute – to specify storage layout restrictions
-   The BLOCK construct – can contain declarations of objects with construct scope
-   Recursive allocatable components – as an alternative to recursive pointers in derived types

The Final Draft international Standard (FDIS) is available as document N1830.[40]

An important supplement to Fortran 2008 is the ISO Technical Specification (TS) 29113 on _Further Interoperability of Fortran with C_,[41][42] which has been submitted to ISO in May 2012 for approval. The specification adds support for accessing the array descriptor from C and allows ignoring the type and rank of arguments.

Fortran 2018

The latest revision of the language (Fortran 2018) was earlier referred to as Fortran 2015.[43] It is a significant revision and was released on November 28, 2018.[44]

Fortran 2018 incorporates two previously published Technical Specifications:

-   ISO/IEC TS 29113:2012 Further Interoperability with C[45]
-   ISO/IEC TS 18508:2015 Additional Parallel Features in Fortran[46]

Additional changes and new features include support for ISO/IEC/IEEE 60559:2011 (the latest version of the IEEE floating point standard as of 2019), hexadecimal input/output, IMPLICIT NONE enhancements and other changes[47][48][49][50]


Science and engineering

Although a 1968 journal article by the authors of BASIC already described FORTRAN as "old-fashioned",[51] Fortran has now been in use for several decades and there is a vast body of Fortran software in daily use throughout the scientific and engineering communities.[52] Jay Pasachoff wrote in 1984 that "physics and astronomy students simply have to learn FORTRAN. So much exists in FORTRAN that it seems unlikely that scientists will change to Pascal, Modula-2, or whatever."[53] In 1993, Cecil E. Leith called FORTRAN the "mother tongue of scientific computing", adding that its replacement by any other possible language "may remain a forlorn hope".[54]

It is the primary language for some of the most intensive super-computing tasks, such as in astronomy, climate modeling, computational chemistry, computational economics, computational fluid dynamics, computational physics, data analysis, hydrological modeling, numerical linear algebra and numerical libraries (LAPACK, IMSL and NAG), optimization, satellite simulation, structural engineering, and weather prediction. Many of the floating-point benchmarks to gauge the performance of new computer processors, such as CFP2006, the floating-point component of the SPEC CPU2006 benchmarks, are written in Fortran.

Apart from this, more modern codes in computational science generally use large program libraries, such as METIS for graph partitioning, PETSc or Trilinos for linear algebra capabilities, DUNE or FEniCS for mesh and finite element support, and other generic libraries. Since the early 2000s, many of the widely used support libraries have also been implemented in C and more recently, in C++. On the other hand, high-level languages such as Matlab, Python, or R have become popular in particular areas of computational science. Consequently, a growing fraction of scientific programs are also written in such higher-level languages. For this reason, facilities for inter-operation with C were added to Fortran 2003 and enhanced by the ISO/IEC technical specification 29113, which was incorporated into Fortran 2018. This shift in the popularity of programming languages is also evident in the selection of applications between the SPEC CPU 2000 and SPEC CPU 2006 floating point benchmarks.

Software for NASA probes Voyager 1 and Voyager 2 was originally written in FORTRAN 5, and later ported to FORTRAN 77. , some of the software is still written in Fortran and some has been ported to C.[55]


Language features

The precise characteristics and syntax of Fortran 95 are discussed in Fortran 95 language features.


Portability

Portability was a problem in the early days because there was no agreed upon standard not even IBM's reference manual and computer companies vied to differentiate their offerings from others by providing incompatible features. Standards have improved portability. The 1966 standard provided a reference syntax and semantics, but vendors continued to provide incompatible extensions. Although careful programmers were coming to realize that use of incompatible extensions caused expensive portability problems, and were therefore using programs such as _The PFORT Verifier,_[56][57] it was not until after the 1977 standard, when the National Bureau of Standards (now NIST) published _FIPS PUB 69_, that processors purchased by the U.S. Government were required to diagnose extensions of the standard. Rather than offer two processors, essentially every compiler eventually had at least an option to diagnose extensions.[58][59]

Incompatible extensions were not the only portability problem. For numerical calculations, it is important to take account of the characteristics of the arithmetic. This was addressed by Fox et al. in the context of the 1966 standard by the _PORT_ library.[60] The ideas therein became widely used, and were eventually incorporated into the 1990 standard by way of intrinsic inquiry functions. The widespread (now almost universal) adoption of the IEEE 754 standard for binary floating-point arithmetic has essentially removed this problem.

Access to the computing environment (e.g., the program's command line, environment variables, textual explanation of error conditions) remained a problem until it was addressed by the 2003 standard.

Large collections of library software that could be described as being loosely related to engineering and scientific calculations, such as graphics libraries, have been written in C, and therefore access to them presented a portability problem. This has been addressed by incorporation of C interoperability into the 2003 standard.

It is now possible (and relatively easy) to write an entirely portable program in Fortran, even without recourse to a preprocessor.


Variants

Fortran 5

Fortran 5 was marketed by Data General Corp in the late 1970s and early 1980s, for the Nova, Eclipse, and MV line of computers. It had an optimizing compiler that was quite good for minicomputers of its time. The language most closely resembles FORTRAN 66. The name is a pun on the earlier FORTRAN IV.

FORTRAN V

FORTRAN V was distributed by Control Data Corporation in 1968 for the CDC 6600 series. The language was based upon FORTRAN IV.[61]

Univac also offered a compiler for the 1100 series known as FORTRAN V. A spinoff of Univac Fortran V was Athena FORTRAN.

Fortran 6

FORTRAN 6 or Visual Fortran 2001 was licensed to Compaq by Microsoft. They have licensed Compaq Visual Fortran and have provided the Visual Studio 5 environment interface for Compaq v6 up to v6.1.[62]

Specific variants

Vendors of high-performance scientific computers (_e.g.,_ Burroughs, Control Data Corporation (CDC), Cray, Honeywell, IBM, Texas Instruments, and UNIVAC) added extensions to Fortran to take advantage of special hardware features such as instruction cache, CPU pipelines, and vector arrays. For example, one of IBM's FORTRAN compilers (_H Extended IUP_) had a level of optimization which reordered the machine code instructions to keep multiple internal arithmetic units busy simultaneously. Another example is _CFD_, a special variant of FORTRAN designed specifically for the ILLIAC IV supercomputer, running at NASA's Ames Research Center. IBM Research Labs also developed an extended FORTRAN-based language called _VECTRAN_ for processing vectors and matrices.

Object-Oriented Fortran was an object-oriented extension of Fortran, in which data items can be grouped into objects, which can be instantiated and executed in parallel. It was available for Sun, Iris, iPSC, and nCUBE, but is no longer supported.

Such machine-specific extensions have either disappeared over time or have had elements incorporated into the main standards. The major remaining extension is OpenMP, which is a cross-platform extension for shared memory programming. One new extension, Coarray Fortran, is intended to support parallel programming.

FOR TRANSIT for the IBM 650

_FOR TRANSIT_ was the name of a reduced version of the IBM 704 FORTRAN language, which was implemented for the IBM 650, using a translator program developed at Carnegie in the late 1950s.[63] The following comment appears in the IBM Reference Manual (_FOR TRANSIT Automatic Coding System_ C28-4038, Copyright 1957, 1959 by IBM):

  The FORTRAN system was designed for a more complex machine than the 650, and consequently some of the 32 statements found in the FORTRAN Programmer's Reference Manual are not acceptable to the FOR TRANSIT system. In addition, certain restrictions to the FORTRAN language have been added. However, none of these restrictions make a source program written for FOR TRANSIT incompatible with the FORTRAN system for the 704.

The permissible statements were:

-   Arithmetic assignment statements, e.g., a = b
-   -   GO TO (n₁, n₂, ..., n_(m)), i
-   IF (a) n₁, n₂, n₃
-   -   -   DO n i = m1, m2
-   -   -   -   -   -

Up to ten subroutines could be used in one program.

FOR TRANSIT statements were limited to columns 7 through 56, only. Punched cards were used for input and output on the IBM 650. Three passes were required to translate source code to the "IT" language, then to compile the IT statements into SOAP assembly language, and finally to produce the object program, which could then be loaded into the machine to run the program (using punched cards for data input, and outputting results onto punched cards).

Two versions existed for the 650s with a 2000 word memory drum: FOR TRANSIT I (S) and FOR TRANSIT II, the latter for machines equipped with indexing registers and automatic floating point decimal (bi-quinary) arithmetic. Appendix A of the manual included wiring diagrams for the IBM 533 card reader/punch control panel.

Fortran-based languages

Prior to FORTRAN 77, a number of preprocessors were commonly used to provide a friendlier language, with the advantage that the preprocessed code could be compiled on any machine with a standard FORTRAN compiler. These preprocessors would typically support structured programming, variable names longer than six characters, additional data types, conditional compilation, and even macro capabilities. Popular preprocessors included FLECS, iftran, MORTRAN, SFtran, S-Fortran, Ratfor, and Ratfiv. Ratfor and Ratfiv, for example, implemented a C-like language, outputting preprocessed code in standard FORTRAN 66. Despite advances in the Fortran language, preprocessors continue to be used for conditional compilation and macro substitution.

One of the earliest versions of FORTRAN, introduced in the '60s, was popularly used in colleges and universities. Developed, supported, and distributed by the University of Waterloo, WATFOR was based largely on FORTRAN IV. A student using WATFOR could submit their batch FORTRAN job and, if there were no syntax errors, the program would move straight to execution. This simplification allowed students to concentrate on their program's syntax and semantics, or execution logic flow, rather than dealing with submission Job Control Language (JCL), the compile/link-edit/execution successive process(es), or other complexities of the mainframe/minicomputer environment. A down side to this simplified environment was that WATFOR was not a good choice for programmers needing the expanded abilities of their host processor(s), e.g., WATFOR typically had very limited access to I/O devices. WATFOR was succeeded by WATFIV and its later versions.

(line programming)

LRLTRAN was developed at the Lawrence Radiation Laboratory to provide support for vector arithmetic and dynamic storage, among other extensions to support systems programming. The distribution included the LTSS operating system.

The Fortran-95 Standard includes an optional _Part 3_ which defines an optional conditional compilation capability. This capability is often referred to as "CoCo".

Many Fortran compilers have integrated subsets of the C preprocessor into their systems.

SIMSCRIPT is an application specific Fortran preprocessor for modeling and simulating large discrete systems.

The F programming language was designed to be a clean subset of Fortran 95 that attempted to remove the redundant, unstructured, and deprecated features of Fortran, such as the statement. F retains the array features added in Fortran 90, and removes control statements that were made obsolete by structured programming constructs added to both FORTRAN 77 and Fortran 90. F is described by its creators as "a compiled, structured, array programming language especially well suited to education and scientific computing".[64]

Lahey and Fujitsu teamed up to create Fortran for the Microsoft .NET Framework.[65] Silverfrost FTN95 is also capable of creating .NET code.[66]


Code examples

The following program illustrates dynamic memory allocation and array-based operations, two features introduced with Fortran 90. Particularly noteworthy is the absence of loops and / statements in manipulating the array; mathematical operations are applied to the array as a whole. Also apparent is the use of descriptive variable names and general code formatting that conform with contemporary programming style. This example computes an average over data entered interactively.

    program average

      ! Read in some numbers and take the average
      ! As written, if there are no data points, an average of zero is returned
      ! While this may not be desired behavior, it keeps this example simple

      implicit none

      real, dimension(:), allocatable :: points
      integer                         :: number_of_points
      real                            :: average_points=0., positive_average=0., negative_average=0.

      write (*,*) "Input number of points to average:"
      read  (*,*) number_of_points

      allocate (points(number_of_points))

      write (*,*) "Enter the points to average:"
      read  (*,*) points

      ! Take the average by summing points and dividing by number_of_points
      if (number_of_points > 0) average_points = sum(points) / number_of_points

      ! Now form average over positive and negative points only
      if (count(points > 0.) > 0) then
         positive_average = sum(points, points > 0.) / count(points > 0.)
      end if

      if (count(points < 0.) > 0) then
         negative_average = sum(points, points < 0.) / count(points < 0.)
      end if

      deallocate (points)

      ! Print result to terminal
      write (*,'(a,g12.4)') 'Average = ', average_points
      write (*,'(a,g12.4)') 'Average of positive points = ', positive_average
      write (*,'(a,g12.4)') 'Average of negative points = ', negative_average

    end program average


Humor

During the same FORTRAN standards committee meeting at which the name "FORTRAN 77" was chosen, a satirical technical proposal was incorporated into the official distribution bearing the title "Letter O Considered Harmful". This proposal purported to address the confusion that sometimes arises between the letter "O" and the numeral zero, by eliminating the letter from allowable variable names. However, the method proposed was to eliminate the letter from the character set entirely (thereby retaining 48 as the number of lexical characters, which the colon had increased to 49). This was considered beneficial in that it would promote structured programming, by making it impossible to use the notorious statement as before. (Troublesome statements would also be eliminated.) It was noted that this "might invalidate some existing programs" but that most of these "probably were non-conforming, anyway".[67][68]

When assumed-length arrays were being added, there was a dispute as to the appropriate character to separate upper and lower bounds. In a comment examining these arguments, Dr. Walt Brainerd penned an article entitled "Astronomy vs. Gastroenterology" because some proponents had suggested using the star or asterisk ("*"), while others favored the colon (":").

In FORTRAN 77 (and most earlier versions), variable names beginning with the letters I–N had a default type of integer, while variables starting with any other letters defaulted to real, although programmers could override the defaults with an explicit declaration.[69] This led to the joke: "In Fortran, GOD is REAL (unless declared INTEGER)."


See also

-   f2c
-   FORMAC
-   List of Fortran compilers
-   List of Fortran numerical libraries
-   List of programming languages
-   Matrix representation
-   Row-major order


References


Further reading

Articles

-   -   -   -   -

"Core" language standards

-   Informally known as FORTRAN 66.

-   Also known as ISO 1539–1980, informally known as FORTRAN 77.

-   Informally known as Fortran 90.

-   Informally known as Fortran 95. There are a further two parts to this standard. Part 1 has been formally adopted by ANSI.

-   Informally known as Fortran 2003.

-   Informally known as Fortran 2008.

Related standards

-   -

Other reference material

-   -   -   -   -

Textbooks

-   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   ISO/IEC JTC1/SC22/WG5 – the official home of Fortran standards
-   Fortran Standards Documents – GFortran standards
-   History of FORTRAN and Fortran II – Computer History Museum
-   Valmer Norrod, et al:"A self-study course in FORTRAN programing – Volume I – textbook", Computer Science Corporation El Segundo, California, (April,1970). NASA(N70-25287).
-   Valmer Norrod, Sheldom Blecher, and Martha Horton: "A self-study course in FORTRAN programing – Volume II – workbook", NASA CR-1478, Vol.II (April,1970), NASA(N70-25288).

Fortran Fortran_programming_language_family Category:American inventions Category:Array programming languages Category:Computer standards Category:Numerical programming languages Category:Object-oriented programming languages Category:Procedural programming languages Category:High-level programming languages Category:Programming languages created in 1957 Category:Programming languages with an ISO standard Category:Statically typed programming languages Category:Unix programming tools

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] Mindell, David, Digital Apollo, MIT Press, Cambridge MA, 2008, p.99

[10]

[11]

[12]

[13] The Fortran I Compiler "The Fortran I compiler was the first major project in code optimization. It tackled problems of crucial importance whose general solution was an important research focus in compiler technology for several decades. Many classical techniques for compiler analysis and optimization can trace their origins and inspiration to the Fortran I compiler."

[14]

[15]

[16]

[17]

[18]

[19] Reference Manual, IBM 7090 Data Processing System, 1961, IBM A22-6528-3.

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

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37] Fortran Working Group (WG5). It may also be downloaded as a PDF file, FTP.nag.co.uk

[38]

[39]

[40] N1830, Information technology – Programming languages – Fortran – Part 1: Base language 1

[41] ISO page to ISO/IEC DTS 29113, Further Interoperability of Fortran with C

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50] Fortran 2018 Interpretation Document, 9 October 2018

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63] "Internal Translator (IT) A Compiler for the IBM 650", by A. J. Perlis, J. W. Smith, and H. R. Van Zoeren, Computation Center, Carnegie Institute of Technology

[64]

[65]

[66]

[67] X3J3 post-meeting distribution for meeting held at Brookhaven National Laboratory in November 1976.

[68] "The obliteration of O", Computer Weekly, 3 March 1977.

[69]