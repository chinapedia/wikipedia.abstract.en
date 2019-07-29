B is a programming language developed at Bell Labs circa 1969. It is the work of Ken Thompson with Dennis Ritchie.

B was derived from BCPL, and its name may be a contraction of BCPL. Thompson's coworker Dennis Ritchie speculated that the name might be based on Bon, an earlier, but unrelated, programming language that Thompson designed for use on Multics.

B was designed for recursive, non-numeric, machine-independent applications, such as system and language software.[1]


History

Initially Ken Thompson[2] and later Dennis Ritchie[3] developed B basing it mainly on the BCPL language Thompson used in the Multics project. B was essentially the BCPL system stripped of any component Thompson felt he could do without in order to make it fit within the memory capacity of the minicomputers of the time. The BCPL to B transition also included changes made to suit Thompson's preferences (mostly along the lines of reducing the number of non-whitespace characters in a typical program).[4] Much of the typical ALGOL-like syntax of BCPL was rather heavily changed in this process. The assignment operator := reverted to the = of Rutishauser's Superplan (the source of ALGOL 58's :=), and the equality operator = was replaced by ==.

Thompson invented arithmetic assignment operators for B, using x =+ y to add y to x (in C the operator is written +=). B also introduced the increment and decrement operators (++ and --). Their prefix or postfix position determines whether the value is taken before or after alteration of the operand. These innovations were not in the earliest versions of B. According to Dennis Ritchie, people often assumed that they were created for the auto-increment and auto-decrement address modes of the DEC PDP-11, but this is historically impossible as the machine didn't exist when B was developed.[5]

B is typeless, or more precisely has one data type: the computer word. Most operators (e.g. +, -, *, /) treated this as an integer, but others treated it as a memory address to be dereferenced. In many other ways it looked a lot like an early version of C. There are a few library functions, including some that vaguely resemble functions from the standard I/O library in C.[6]

Early implementations were for the DEC PDP-7 and PDP-11 minicomputers using early Unix, and Honeywell [7] 36-bit mainframes running the operating system GCOS. The earliest PDP-7 implementations compiled to threaded code, and Ritchie wrote a compiler using TMG which produced machine code.[8][9][10] In 1970 a PDP-11 was acquired and threaded code was used for the port; an assembler, dc, and the B language itself were written in B to bootstrap the computer. An early version of yacc was produced with this PDP-11 configuration. Ritchie took over maintenance during this period.[11]

The typeless nature of B made sense on the Honeywell, PDP-7 and many older computers, but was a problem on the PDP-11 because it was difficult to elegantly access the character data type that the PDP-11 and most modern computers fully support. Starting in 1971 Ritchie made changes to the language while converting its compiler to produce machine code, most notably adding data typing for variables. During 1971 and 1972 B evolved into "New B" (NB) and then C.[12]

B is almost extinct, having been superseded by the C language.[13] However, it continues to see use on GCOS mainframes ()[14] and on certain embedded systems () for a variety of reasons: limited hardware in small systems, extensive libraries, tooling, licensing cost issues, and simply being good enough for the job.[15] The highly influential AberMUD was originally written in B.


Examples

The following examples are from the _Users' Reference to B_ by Ken Thompson:[16]

    /* The following function will print a non-negative number, n, to
       the base b, where 2<=b<=10.  This routine uses the fact that
       in the ASCII character set, the digits 0 to 9 have sequential
       code values.  */

    printn(n, b) {
            extrn putchar;
            auto a;

            if (a = n / b)        /* assignment, not test for equality */
                    printn(a, b); /* recursive */
            putchar(n % b + '0');
    }

    /* The following program will calculate the constant e-2 to about
       4000 decimal digits, and print it 50 characters to the line in
       groups of 5 characters.  The method is simple output conversion
       of the expansion
         1/2! + 1/3! + ... = .111....
       where the bases of the digits are 2, 3, 4, . . . */

    main() {
        extrn putchar, n, v;
        auto i, c, col, a;

        i = col = 0;
        while(i<n)
            v[i++] = 1;
        while(col<2*n) {
            a = n+1 ;
            c = i = 0;
            while (i<n) {
                c =+ v[i] *10;
                v[i++]  = c%a;
                c =/ a--;
            }

            putchar(c+'0');
            if(!(++col%5))
                putchar(col%50?' ': '*n');
        }
        putchar('*n*n');
    }
    v[2000];
    n 2000;


See also


Notes


References


External links

-   _Manual page for b(1) from Unix First Edition_
-   _The Development of the C Language_, Dennis M. Ritchie. Puts B in the context of BCPL and C.
-   _Users' Reference to B_, Ken Thompson. Describes the PDP-11 version.
-   _The Programming Language B_, S. C. Johnson & B. W. Kernighan, Technical Report CS TR 8, Bell Labs (January 1973). The GCOS version on Honeywell equipment.
-   _B Language Reference Manual_, Thinkage Ltd. The production version of the language as used on GCOS, including language and runtime library.

Category:Procedural programming languages Category:Programming languages created in 1969

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