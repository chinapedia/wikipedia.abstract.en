HelloWorld_Maktivism_ComputerProgramming_LEDs.jpg with a moving strip of LED lights]]

A "HELLO, WORLD!" PROGRAM generally is a computer program that outputs or displays the message "Hello, World!". Such a program is very simple in most programming languages, and is often used to illustrate the basic syntax of a programming language. It is often the first program written by people learning to code.[1][2]


Purpose

A "Hello, World!" program is traditionally used to introduce novice programmers to a programming language.

"Hello, world!" is also traditionally used in a sanity test to make sure that a computer language is correctly installed, and that the operator understands how to use it.


History

Hello_World_Brian_Kernighan_1974.jpg (1978)]] While small test programs have existed since the development of programmable computers, the tradition of using the phrase "Hello, world!" as a test message was influenced by an example program in the seminal 1978 book _The C Programming Language_.[3] The example program in that book prints "", and was inherited from a 1974 Bell Laboratories internal memorandum by Brian Kernighan, _Programming in C: A Tutorial_:[4]

    main( ) {
            printf("hello, world\n");
    }

The C language version was preceded by Kernighan's own 1972 _A Tutorial Introduction to the Language B_,[5] where the first known version of the program is found in an example used to illustrate external variables:

    main( ) {
     extern a, b, c;
     putchar(a); putchar(b); putchar(c); putchar('!*n');
    }

    a 'hell';
    b 'o, w';
    c 'orld';

The program prints __ on the terminal, including a newline character. The phrase is divided into multiple variables because in B, a character constant is limited to four ASCII characters. The previous example in the tutorial printed __ on the terminal, and the phrase __ was introduced as a slightly longer greeting that required several character constants for its expression.

The Jargon File claims that _hello, world_ originated instead with BCPL (1967).[6]This claim is supported by the archived notes of the inventors of BCPL, Prof. Brian Kernighan at Princeton and Martin Richards at Cambridge.

For modern languages, hello, world programs vary in sophistication. For example, the Go programming language introduced a multilingual program,[7] Sun demonstrated a Java hello, world based on scalable vector graphics,[8] and the XL programming language features a spinning Earth hello, world using 3D graphics.[9] While some languages such as Perl, Python or Ruby may need only a single statement to print "hello, world", a low-level assembly language may require dozens of commands. Mark Guzdial and Elliot Soloway have suggested that the "hello, world" test message may be outdated now that graphics and sound can be manipulated as easily as text.[10]


Variations

PSP-Homebrew.jpeg as a proof of concept.]] There are many variations on the punctuation and casing of the phrase. Variations include the presence or absence of the comma and exclamation mark, and the capitalization of the 'H', both the 'H' and the 'W', or neither. Some languages are forced to implement different forms, such as "HELLO WORLD", on systems that support only capital letters, while many "hello, world" programs in esoteric languages print out a slightly modified string. For example, the first non-trivial Malbolge program printed "HEllO WORld", this having been determined to be good enough.[11]

There are variations in spirit, as well. Functional programming languages, like Lisp, ML and Haskell, tend to substitute a factorial program for Hello, World, as functional programming emphasizes recursive techniques, whereas the original examples emphasize I/O, which violates the spirit of pure functional programming by producing side effects. Languages otherwise capable of Hello, World (Assembly, C, VHDL) may also be used in embedded systems, where text output is either difficult (requiring additional components or communication with another computer) or nonexistent. For devices such as microcontrollers, field-programmable gate arrays, and CPLD's, "Hello, World" may thus be substituted with a blinking LED, which demonstrates timing and interaction between components.[12][13][14][15][16]

The Debian and Ubuntu Linux distributions provide the "hello, world" program through the apt packaging system; this allows users to simply type "apt-get install hello" for the program to be installed, along with any software dependencies. While of itself useless, it serves as a sanity check and a simple example to newcomers of how to install a package. It is significantly more useful for developers, however, as it provides an example of how to create a .deb package, either traditionally or using debhelper, and the version of hello used, GNU Hello, serves as an example of how to write a GNU program.[17]


Time to Hello World

Time to "Hello World" (TTHW) is a metric for the time to create from scratch a "Hello World" program in a given programming language and run it.[18]


See also

-   "99 Bottles of Beer" as used in computer science
-   Foobar
-   Java Pet Store
-   Just another Perl hacker
-   List of basic computer science topics
-   Trabb Pardo-Knuth algorithm
-


References


External links

-   -   -

Category:Test items in computer languages Category:Computer programming folklore Category:Articles with example code

[1]

[2]

[3]

[4]

[5]

[6] BCPL, _Jargon File_

[7] A Tutorial for the Go Programming Language. The Go Programming Language. Retrieved July 26, 2011.

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