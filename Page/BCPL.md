BCPL ("BASIC COMBINED PROGRAMMING LANGUAGE") is a procedural, imperative, and structured computer programming language. Originally intended for writing compilers for other languages, BCPL is no longer in common use. However, its influence is still felt because a stripped down and syntactically changed version of BCPL, called B, was the language on which the C programming language was based. BCPL introduced several features of many modern programming languages, including using curly braces to delimit code blocks [1].


Design

BCPL was designed so that small and simple compilers could be written for it; reputedly some compilers could be run in 16 kilobytes. Further, the original compiler, itself written in BCPL, was easily portable. BCPL was thus a popular choice for bootstrapping a system. A major reason for the compiler's portability lay in its structure. It was split into two parts: the front end parsed the source and generated O-code, and the back end took the O-code and translated it into the code for the target machine. Only 1/5 of the compiler's code needed to be rewritten to support a new machine, a task that usually took between 2 and 5 man-months. This approach became common practice later (e.g. Pascal, Java).

The language is unusual in having only one data type: a word, a fixed number of bits, usually chosen to align with the architecture's machine word and of adequate capacity to represent any valid storage address. For many machines of the time, this data type was a 16-bit word. This choice later proved to be a significant problem when BCPL was used on machines in which the smallest addressable item was not a word but a byte or on machines with larger word sizes such as 32-bit or 64-bit.

The interpretation of any value was determined by the operators used to process the values. (For example, + added two values together, treating them as integers; ! indirected through a value, effectively treating it as a pointer.) In order for this to work, the implementation provided no type checking. Hungarian notation was developed to help programmers avoid inadvertent type errors.

The mismatch between BCPL's word orientation and byte-oriented hardware was addressed in several ways. One was by providing standard library routines for packing and unpacking words into byte strings. Later, two language features were added: the bit-field selection operator and the infix byte indirection operator (denoted by %).

BCPL handles bindings spanning separate compilation units in a unique way. There are no user-declarable global variables; instead there is a global vector, similar to "blank common" in Fortran. All data shared between different compilation units comprises scalars and pointers to vectors stored in a pre-arranged place in the global vector. Thus the header files (files included during compilation using the "GET" directive) become the primary means of synchronizing global data between compilation units, containing "GLOBAL" directives that present lists of symbolic names, each paired with a number that associates the name with the corresponding numerically addressed word in the global vector. As well as variables, the global vector contains bindings for external procedures. This makes dynamic loading of compilation units very simple to achieve. Instead of relying on the link loader of the underlying implementation, effectively BCPL gives the programmer control of the linking process.

The global vector also made it very simple to replace or augment standard library routines. A program could save the pointer from the global vector to the original routine and replace it with a pointer to an alternative version. The alternative might call the original as part of its processing. This could be used as a quick _ad hoc_ debugging aid.

BCPL was the first brace programming language and the braces survived the syntactical changes and have become a common means of denoting program source code statements. In practice, on limited keyboards of the day, source programs often used the sequences $( and $) in place of the symbols { and }. The single-line // comments of BCPL, which were not adopted by C, reappeared in C++ and later in C99.

The book _BCPL: The language and its compiler_ describes the philosophy of BCPL as follows:


Examples

(NOTE: If these programs are run using Martin Richards' current version of Cintsys (December 2018), LIBHDR, START and WRITEF must be changed to lower case to avoid errors.)

Print factorials:

    GET "LIBHDR"

    LET START() = VALOF $(
        FOR I = 1 TO 5 DO
            WRITEF("%N! = %I4*N", I, FACT(I))
        RESULTIS 0
    $)

    AND FACT(N) = N = 0 -> 1, N * FACT(N - 1)

Count solutions to the N queens problem:

    GET "LIBHDR"

    GLOBAL $(
        COUNT: 200
        ALL: 201
    $)

    LET TRY(LD, ROW, RD) BE
        TEST ROW = ALL THEN
            COUNT := COUNT + 1
        ELSE $(
            LET POSS = ALL & ~(LD | ROW | RD)
            UNTIL POSS = 0 DO $(
                LET P = POSS & -POSS
                POSS := POSS - P
                TRY(LD + P << 1, ROW + P, RD + P >> 1)
            $)
        $)

    LET START() = VALOF $(
        ALL := 1
        FOR I = 1 TO 12 DO $(
            COUNT := 0
            TRY(0, 0, 0)
            WRITEF("%I2-QUEENS PROBLEM HAS %I5 SOLUTIONS*N", I, COUNT)
            ALL := 2 * ALL + 1
        $)
        RESULTIS 0
    $)


History

BCPL was first implemented by Martin Richards of the University of Cambridge in 1967.[2] BCPL was a response to difficulties with its predecessor, Cambridge Programming Language, later renamed Combined Programming Language (CPL), which was designed during the early 1960s. Richards created BCPL by "removing those features of the full language which make compilation difficult". The first compiler implementation, for the IBM 7094 under Compatible Time-Sharing System (CTSS), was written while Richards was visiting Project MAC at the Massachusetts Institute of Technology (MIT) in the spring of 1967. The language was first described in a paper presented to the 1969 Spring Joint Computer Conference.

BCPL has been rumored to have originally stood for "Bootstrap Cambridge Programming Language", but CPL was never created since development stopped at BCPL, and the acronym was later reinterpreted for the BCPL book.

BCPL is the language in which the original hello world program was written.[3] The first MUD was also written in BCPL (MUD1).

Several operating systems were written partially or wholly in BCPL (for example, TRIPOS and the earliest versions of AmigaDOS). BCPL was also the initial language used in the seminal Xerox PARC Alto project, the first modern personal computer; among other projects, the Bravo document preparation system was written in BCPL.

An early compiler, bootstrapped in 1969, by starting with a paper tape of the O-code of Martin Richards's Atlas 2 compiler, targeted the ICT 1900 series. The two machines had different word-lengths (48 vs 24 bits), different character encodings, and different packed string representations—and the successful bootstrapping increased confidence in the practicality of the method.

By late 1970, implementations existed for the Honeywell 635 and Honeywell 645, the IBM 360, the PDP-10, the TX-2, the CDC 6400, the UNIVAC 1108, the PDP-9, the KDF 9 and the Atlas 2. In 1974 a dialect of BCPL was implemented at BBN without using the intermediate O-code. The initial implementation was a cross-compiler hosted on BBN's TENEX PDP-10s, and directly targeted the PDP-11s used in BBN's implementation of the second generation IMPs used in the Arpanet.

There was also a version produced for the BBC Micro in the mid-1980s, by Richards Computer Products, a company started by John Richards, the brother of Dr. Martin Richards.[4] The BBC Domesday Project made use of the language. Versions of BCPL for the Amstrad CPC and Amstrad PCW computers were also released in 1986 by UK software house Arnor Ltd. MacBCPL was released for the Apple Macintosh in 1985 by Topexpress Ltd, of Kensington, England.

Both the design and philosophy of BCPL strongly influenced B, which in turn influenced C.[5] Programmers at the time debated whether an eventual successor to C would be called "D", the next letter in the alphabet, or "P", the next letter in the parent language name. The language most accepted as being C's successor is C++ (with ++ being C's increment operator),[6] although a D programming language also exists.

In 1979, implementations of BCPL existed for at least 25 architectures; the language gradually fell out of favour as C became popular on non-Unix systems.

Martin Richards maintains a modern version of BCPL on his website, last updated in 2018. This can be set up to run on various systems including Linux, FreeBSD, Mac OS X and Raspberry Pi. The latest distribution includes Graphics and Sound libraries and there is a comprehensive manual in PDF format. He continues to program in it, including for his research on musical automated score following.


References


Further reading

-   Martin Richards, _The BCPL Reference Manual_ (Memorandum M-352, Project MAC, Cambridge, MA, USA, July, 1967)
-   Martin Richards, _BCPL - a tool for compiler writing and systems programming_ (PROCEEDINGS OF THE SPRING JOINT COMPUTER CONFERENCE, Vol 34, pp 557–566, 1969)
-   Martin Richards, Arthur Evans, Robert F. Mabee, _The BCPL Reference Manual_ (MAC TR-141, Project MAC, Cambridge, MA, USA, 1974)
-   Martin Richards, C. Whitby-Strevens, _BCPL, the language and its compiler_ (Cambridge University Press, 1980)


External links

-   Martin Richards' BCPL distribution
-   Martin Richards' BCPL Reference Manual, 1967 by Dennis M. Ritchie
-   BCPL entry in the Jargon File
-   Nordier & Associates' x86 port
-   ArnorBCPL manual
-   Ritchie's _The Development of the C Language_ has commentary about BCPL's influence on C
-   The BCPL Cintsys and Cintpos User Guide

Category:History of computing in the United Kingdom Category:Procedural programming languages Category:Programming languages created in 1967 Category:Structured programming languages Category:Systems programming languages Category:University of Cambridge Computer Laboratory

[1] https://www.cl.cam.ac.uk/~mr10/bcplman.pdf The BCPL Cintsys and Cintpos User Guide, 2.1.4 Section brackets

[2]

[3] BCPL, _Jargon File_

[4]

[5]

[6] History of C++ Retrieved 12 December 2017