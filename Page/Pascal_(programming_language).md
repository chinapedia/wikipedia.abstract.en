-2{{\}}-3

-   Oberon{{\}}-2
-   Object Pascal
-   Oxygene
-   Seed7
-   VHDL
-   Structured text

| operating_system = | license = | file ext = .pp, .pas, .inc, | website = }}

PASCAL is an imperative and procedural programming language, designed by Niklaus Wirth as a small, efficient language intended to encourage good programming practices using structured programming and data structuring. It is named in honor of the French mathematician, philosopher and physicist Blaise Pascal.

Pascal was developed on the pattern of the ALGOL 60 language. Wirth was involved in the process to improve the language as part of the ALGOL X efforts and proposed a version known as ALGOL W. This was not accepted, and the ALGOL X process bogged down. In 1968, Wirth decided to abandon the ALGOL X process and further improve ALGOL W, releasing this as Pascal in 1970.

Pascal became very successful in the 1970s, notably on the burgeoning minicomputer market. Compilers were also available for many microcomputers as the field emerged in the late 1970s. It was widely used as a teaching language in university-level programming courses in the 1980s, and also used in production settings for writing commercial software during the same period. It was displaced by the C programming language during the late 1980s and early 1990s as UNIX-based systems became popular, and especially with the release of C++.

A derivative known as Object Pascal designed for object-oriented programming was developed in 1985; this was used by Apple Computer and Borland in the late 1980s and later developed into Delphi on the Microsoft Windows platform. Extensions to the Pascal concepts led to the languages Modula-2 and Oberon.


History

Earlier efforts

Much of the history of computer language design during the 1960s can be traced to the ALGOL 60 language. ALGOL was developed during the 1950s with the explicit goal to be able to clearly describe algorithms. It included a number of features for structured programming that remain common in languages to this day.

Shortly after its introduction, in 1962 Wirth began working on his dissertation with Helmut Weber on the Euler programming language. Euler was based on ALGOL's syntax and many concepts but was not a derivative. Its primary goal was to add dynamic lists and types, allowing it to be used in roles similar to Lisp. The language was published in 1965.

By this time, a number of problems in ALGOL had been identified, notably the lack of a standardized string system. The group tasked with maintaining the language had begun the ALGOL X process to identify improvements, calling for submissions. Wirth and Tony Hoare submitted a conservative set of modifications to add strings and clean up some of the syntax. These were considered too minor to be worth using as the new standard ALGOL, so Wirth wrote a compiler for the language, which became known as ALGOL W.

The ALGOL X efforts would go on to choose a dramatically more complex language, ALGOL 68. The complexity of this language led to considerable difficulty producing high-performance compilers, and it was not widely used in the industry. This left an opening for newer languages.

Pascal

Pascal was influenced by the ALGOL W efforts, with the explicit goals of producing a language that would be efficient both in the compiler and at run-time, allow for the development of well-structured programs, and to be useful for teaching students structured programming.[1] A generation of students used Pascal as an introductory language in undergraduate courses.

One of the early successes for language was the introduction of UCSD Pascal, a version that ran on a custom operating system that could be ported to different platforms. A key platform was the Apple II, where it saw widespread use. This led to the use of Pascal becoming the primary high-level language used for development in the Apple Lisa, and later, the Macintosh. Parts of the original Macintosh operating system were hand-translated into Motorola 68000 assembly language from the Pascal sources.[2]

The typesetting system TeX by Donald E. Knuth was written in WEB, the original literate programming system, based on DEC PDP-10 Pascal. Successful commercial applications like Adobe Photoshop[3] were written in Macintosh Programmer's Workshop Pascal, while applications like Total Commander, Skype and Macromedia Captivate were written in Delphi (Object Pascal). Apollo Computer used Pascal as the systems programming language for its operating systems beginning in 1980.

Variants of Pascal have also been used for everything from research projects to PC games and embedded systems. Newer Pascal compilers exist which are widely used.[4]

Object Pascal

During work on the Lisa, Larry Tesler began corresponding with Wirth on the idea of adding object oriented extensions to the language. This led initially to Clascal, introduced in 1983. As the Lisa program faded and was replaced by the Mac, a further version known as Object Pascal was created. This was introduced on the Macintosh in 1985 as part of the MacApp application framework, and became Apple's primary development language into the early 1990s.

The Object Pascal extensions were added to Turbo Pascal with the release of version 5.5 in 1989.[5] Over the years, Object Pascal became the basis of the Delphi system for Microsoft Windows, which is still used for developing Windows applications, and can cross-compile code to other systems. Free Pascal is an open source, cross-platform alternative.


Brief description

Wirth's intention was to create an efficient language (regarding both compilation speed and generated code) based on structured programming, a recently popularized concept that he promoted in his book _Algorithms + Data Structures = Programs_. Pascal has its roots in the ALGOL 60 language, but also introduced concepts and mechanisms which (on top of ALGOL's scalars and arrays) enabled programmers to define their own complex (structured) datatypes, and also made it easier to build dynamic and recursive data structures such as _lists_, _trees_ and _graphs_. Important features included for this were _records_, _enumerations_, _subranges_, _dynamically_ allocated variables with associated _pointers_, and _sets_. To make this possible and meaningful, Pascal has a strong typing on all objects, which means that one type of data cannot be converted or interpreted as another without _explicit_ conversions. Similar mechanisms are standard in many programming languages today. Other languages that influenced Pascal's development were Simula 67 and Wirth's own ALGOL W.

Pascal, like many programming languages of today (but unlike most languages in the C family), allows nested procedure definitions to any level of depth, and also allows most kinds of definitions and declarations inside subroutines (procedures and functions). This enables a very simple and coherent syntax where a complete _program_ is syntactically nearly identical to a single _procedure_ or _function_ (except for the heading, which has one of these three keywords).


Implementations

Early Pascal compilers

The first Pascal compiler was designed in Zürich for the CDC 6000 series mainframe computer family. Niklaus Wirth reports that a first attempt to implement it in Fortran in 1969 was unsuccessful due to Fortran's inadequacy to express complex data structures. The second attempt was implemented in a C-like language (Scallop by Max Engeli) and then translated by hand (by R. Schild) to Pascal itself for boot-strapping.[6] It was operational by mid-1970. Many Pascal compilers since have been similarly self-hosting, that is, the compiler is itself written in Pascal, and the compiler is usually capable of recompiling itself when new features are added to the language, or when the compiler is to be ported to a new environment. The GNU Pascal compiler is one notable exception, being written in C.

The first successful port of the CDC Pascal compiler to another mainframe was completed by Welsh and Quinn at the Queen's University of Belfast (QUB) in 1972. The target was the ICL 1900 series. This compiler, in turn, was the parent of the Pascal compiler for the Information Computer Systems (ICS) Multum minicomputer. The Multum port was developed – with a view to using Pascal as a systems programming language – by Findlay, Cupples, Cavouras and Davis, working at the Department of Computing Science in Glasgow University. It is thought that Multum Pascal, which was completed in the summer of 1973, may have been the first 16-bit implementation.

A completely new compiler was completed by Welsh et al. at QUB in 1977. It offered a source-language diagnostic feature (incorporating profiling, tracing and type-aware formatted postmortem dumps) that was implemented by Findlay and Watt at Glasgow University. This implementation was ported in 1980 to the ICL 2900 series by a team based at Southampton University and Glasgow University. The Standard Pascal Model Implementation was also based on this compiler, having been adapted, by Welsh and Hay at Manchester University in 1984, to check rigorously for conformity to the BSI 6192/ISO 7185 Standard and to generate code for a portable abstract machine.

The first Pascal compiler written in North America was constructed at the University of Illinois under Donald B. Gillies for the PDP-11 and generated native machine code.

The Pascal-P system

To propagate the language rapidly, a compiler "porting kit" was created in Zurich that included a compiler that generated code for a "virtual" stack machine, _i.e._, code that lends itself to reasonably efficient interpretation, along with an interpreter for that code – the _Pascal-P_ system. The P-system compilers were termed Pascal-P1, Pascal-P2, Pascal-P3, and Pascal-P4. Pascal-P1 was the first version, and Pascal-P4 was the last to come from Zurich. The version termed Pascal-P1 was coined after the fact for the many different sources for Pascal-P that existed. The compiler was redesigned to enhance portability, and issued as Pascal-P2. This code was later enhanced to become Pascal-P3, with an intermediate code backward compatible with Pascal-P2, and Pascal-P4, which was not backward compatible.

The Pascal-P4 compiler/interpreter can still be run and compiled on systems compatible with original Pascal. However, it only accepts a subset of the Pascal language.

Pascal-P5, created outside the Zurich group, accepts the full Pascal language and includes ISO 7185 compatibility.

UCSD Pascal branched off Pascal-P2, where Kenneth Bowles utilized it to create the interpretive UCSD p-System. The UCSD p-System was one of three operating systems available at the launch of the original IBM Personal Computer.[7] UCSD Pascal used an intermediate code based on byte values, and thus was one of the earliest "byte code compilers". Pascal-P1 through Pascal-P4 was not, but rather based on the CDC 6600 60 bit word length.

A compiler based on the Pascal-P4 compiler, which created native binaries, was released for the IBM System/370 mainframe computer by the Australian Atomic Energy Commission; it was called the "AAEC Pascal Compiler" after the abbreviation of the name of the Commission.[8]

Object Pascal and Turbo Pascal

Apple Computer created its own Lisa Pascal for the Lisa Workshop in 1982, and ported the compiler to the Apple Macintosh and MPW in 1985. In 1985 Larry Tesler, in consultation with Niklaus Wirth, defined Object Pascal and these extensions were incorporated in both the Lisa Pascal and Mac Pascal compilers.

In the 1980s, Anders Hejlsberg wrote the Blue Label Pascal compiler for the Nascom-2. A reimplementation of this compiler for the IBM PC was marketed under the names Compas Pascal and PolyPascal before it was acquired by Borland and renamed _Turbo Pascal_.

Turbo Pascal became hugely popular, thanks to an aggressive pricing strategy, having one of the first full-screen IDEs, and very fast turnaround time (just seconds to compile, link, and run). It was written and highly optimized entirely in assembly language, making it smaller and faster than much of the competition.

In 1986, Anders ported Turbo Pascal to the Macintosh and incorporated Apple's Object Pascal extensions into Turbo Pascal. These extensions were then added back into the PC version of Turbo Pascal for version 5.5. At the same time Microsoft also implemented the Object Pascal compiler.[9][10] Turbo Pascal 5.5 had a large influence on the Pascal community, which began concentrating mainly on the IBM PC in the late 1980s. Many PC hobbyists in search of a structured replacement for BASIC used this product. It also began to be adopted by professional developers. Around the same time a number of concepts were imported from C to let Pascal programmers use the C-based API of Microsoft Windows directly. These extensions included null-terminated strings, pointer arithmetic, function pointers, an address-of operator and unsafe typecasts.

Turbo Pascal, and other derivatives with units or module concepts are modular languages. However, it does not provide a nested module concept or qualified import and export of specific symbols.

Other variants

Super Pascal is a variant that added non-numeric labels, a return statement and expressions as names of types.

TMT Pascal was the first Borland-compatible compiler for 32-bit DOS protected mode, OS/2 and Win32 operating systems. The TMT Pascal language was the first one to allow function and operator overloading.

The universities of Wisconsin-Madison, Zürich, Karlsruhe and Wuppertal developed the _Pascal-SC_[11][12] and _Pascal-XSC_[13][14][15] (_Extensions for Scientific Computation_) compilers, aimed at programming numerical computations. Development for Pascal-SC started in 1978 supporting ISO 7185 Pascal level 0, but level 2 support was added at a later stage.[16] Pascal-SC originally targeted the Z80 processor, but was later rewritten for DOS (x86) and 68000. Pascal-XSC has at various times been ported to Unix (Linux, SunOS, HP-UX, AIX) and Microsoft/IBM (DOS with EMX, OS/2, Windows) operating systems. It operates by generating intermediate C source code which is then compiled to a native executable. Some of the Pascal-SC language extensions have been adopted by GNU Pascal.

Pascal Sol was designed around 1983 by a French team to implement a Unix-like systems named Sol. It was standard Pascal level-1 (with parametrized array bounds) but the definition allowed alternative keywords and predefined identifiers in French and the language included a few extensions to ease system programming (e.g. an equivalent to lseek).[17] The Sol team later on moved to the ChorusOS project to design a distributed operating system.[18]

IP Pascal was an implementation of the Pascal programming language using Micropolis DOS, but was moved rapidly to CP/M-80 running on the Z80. It was moved to the 80386 machine types in 1994, and exists today as Windows/XP and Linux implementations. In 2008, the system was brought up to a new level and the resulting language termed "Pascaline" (after Pascal's calculator). It includes objects, namespace controls, dynamic arrays, along with many other extensions, and generally features the same functionality and type protection as C#. It is the only such implementation that is also compatible with the original Pascal implementation, which is standardized as ISO 7185.


Language constructs

Pascal, in its original form, is a purely procedural language and includes the traditional array of ALGOL-like control structures with reserved words such as IF, THEN, ELSE, WHILE, FOR, and CASE ranging on a single statement or a BEGIN-END statements block. Pascal also has data structuring constructs not included in the original ALGOL 60 types, like records, variants, pointers, enumerations, and sets and procedure/pointers. Such constructs were in part inherited or inspired from Simula 67, ALGOL 68, Niklaus Wirth's own ALGOL W and suggestions by C. A. R. Hoare.

Pascal programs start with the PROGRAM keyword with a list of external file descriptors as parameters[19]Pascal ISO 7185:1990 6.10 (not required in Turbo Pascal etc.); then follows the main block bracketed by the BEGIN and END keywords. Semicolons separate statements, and the full stop (i.e., a period) ends the whole program (or _unit_). Letter case is ignored in Pascal source.

Here is an example of the source code in use for a very simple "Hello world" program:

:

    program HelloWorld(output);
    begin
        Write('Hello, world!')
        {no ";" is required after the last statement of a block -
            adding one adds a "null statement" to the program;}
    end.

Data types

A type in Pascal, and in several other popular programming languages, defines a variable in such a way that it defines a range of values which the variable is capable of storing, and it also defines a set of operations that are permissible to be performed on variables of that type. The predefined types are:

  Data type   Type of values which the variable is capable of storing
  ----------- ---------------------------------------------------------
  integer     integer (whole) numbers
  real        floating-point numbers
  boolean     the values True or False
  char        a single character from an ordered character set
  string      a sequence or "string" of characters
  set         equivalent to an array of boolean values

The range of values allowed for each (except boolean) is implementation defined. Functions are provided for some data conversions. For conversion of real to integer, the following functions are available: round (which rounds to integer using banker's rounding) and trunc (rounds towards zero).

The programmer has the freedom to define other commonly used data types (e.g. byte, string, etc.) in terms of the predefined types using Pascal's type declaration facility, for example

:

    type
        byte        = 0..255;
        signed_byte = -128..127;
        string      = packed array[1..255] of char;

(Often-used types like byte and string are already defined in many implementations.)

Subrange types

Subranges of any ordinal data type (any simple type except real) can also be made:

:

    var
        x : 1..10;
        y : 'a'..'z';

Set types

In contrast with other programming languages from its time, Pascal supports a set type:

:

    var
        Set1 : set of 1..10;
        Set2 : set of 'a'..'z';

A set is a fundamental concept for modern mathematics, and they may be used in many algorithms. Such a feature is useful and may be faster than an equivalent construct in a language that does not support sets. For example, for many Pascal compilers:

:

    if i in [5..10] then ...

executes faster than:

:

    if (i > 4) and (i < 11) then ...

Sets of non-contiguous values can be particularly useful, in terms of both performance and readability:

:

    if i in [0..3, 7, 9, 12..15] then ...

For these examples, which involve sets over small domains, the improved performance is usually achieved by the compiler representing set variables as bit vectors. The set operators can then be implemented efficiently as bitwise machine code operations.

Type declarations

Types can be defined from other types using type declarations:

:

    type
        x = integer;
        y = x;
    ...

Further, complex types can be constructed from simple types:

:

    type
        a = array[1..10] of integer;
        b = record
            x : integer;
            y : char  {extra semicolon not strictly required}
        end;
        c = file of a;

File type

As shown in the example above, Pascal files are sequences of components. Every file has a buffer variable which is denoted by _f^_. The procedures _get_ (for reading) and _put_ (for writing) move the buffer variable to the next element. Read is introduced such that _read(f, x)_ is the same as _x := f^; get(f);_. Write is introduced such that _write(f, x)_ is the same as _f^ := x; put(f);_ The type text is predefined as file of char. While the buffer variable could be used for inspecting the next character to be used (check for a digit before reading an integer), this leads to serious problems with interactive programs in early implementations, but was solved later with the "lazy I/O" concept.

In Jensen & Wirth Pascal, strings are represented as packed arrays of chars; they therefore have fixed length and are usually space-padded.

Pointer types

Pascal supports the use of pointers:

:

    type
        pNode = ^Node;
        Node  = record
            a : integer;
            b : char;
            c : pNode
        end;
    var
        NodePtr : pNode;
        IntPtr  : ^integer;

Here the variable _NodePtr_ is a pointer to the data type _Node_, a record. Pointers can be used before they are declared. This is a forward declaration, an exception to the rule that things must be declared before they are used.

To create a new record and assign the value _10_ and character _A_ to the fields _a_ and _b_ in the record, and to initialise the pointer _c_ to the null pointer ("NIL" in Pascal), the statements would be:

:

    New(NodePtr);
    ...
    NodePtr^.a := 10;
    NodePtr^.b := 'A';
    NodePtr^.c := NIL;
    ...

This could also be done using the WITH statement, as follows:

:

    New(NodePtr);
    ...
    with NodePtr^ do
    begin
        a := 10;
        b := 'A';
        c := NIL
    end;
    ...

Inside of the scope of the _with_ statement, a and b refer to the subfields of the record pointer _NodePtr_ and not to the record Node or the pointer type pNode.

Linked lists, stacks and queues can be created by including a pointer type field (c) in the record.

Unlike many languages that feature pointers, Pascal only allows pointers to reference dynamically created variables that are anonymous, and does not allow them to reference standard static or local variables. Pointers also must have an associated type, and a pointer to one type is not compatible with a pointer to another type (e.g. a pointer to a char is not compatible with a pointer to an integer). This helps eliminate the type security issues inherent with other pointer implementations, particularly those used for PL/I or C. It also removes some risks caused by dangling pointers, but the ability to dynamically deallocate referenced space by using the _dispose_ function (which has the same effect as the _free_ library function found in C) means that the risk of dangling pointers has not been entirely eliminated[20] as it has in languages such as Java and C#, which provide automatic garbage collection (but which do not entirely eliminate the related problem of memory leaks).

Some of these restrictions can be lifted in newer dialects.

Control structures

Pascal is a structured programming language, meaning that the flow of control is structured into standard statements, usually without 'goto' commands.

:

    while a <> b do  WriteLn('Waiting');

    if a > b then WriteLn('Condition met')   {no semicolon allowed!}
        else WriteLn('Condition not met');

    for i := 1 to 10 do  {no semicolon for single statements allowed!}
        WriteLn('Iteration: ', i);

    repeat
        a := a + 1
    until a = 10;

    case i of
        0 : Write('zero');
        1 : Write('one');
        2 : Write('two');
        3,4,5,6,7,8,9,10: Write('?')
    end;

Procedures and functions

Pascal structures programs into procedures and functions.

:

    program Printing;

    var i : integer;

    procedure Print(j : integer);
    begin
        ...
    end;

    begin { main program }
        ...
        Print(i);
    end.

Procedures and functions can be nested to any depth, and the 'program' construct is the logical outermost block.

By default, parameters are passed by value. If 'var' precedes a parameter's name, it is passed by reference.

Each procedure or function can have its own declarations of goto labels, constants, types, variables, and other procedures and functions, which must all be in that order. This ordering requirement was originally intended to allow efficient single-pass compilation. However, in some dialects (such as Embarcadero Delphi) the strict ordering requirement of declaration sections has been relaxed.

Semicolons as statement separators

Pascal adopted many language syntax features from the ALGOL language, including the use of a semicolon as a statement separator. This is in contrast to other languages, such as PL/I, C etc. which use the semicolon as a statement terminator. No semicolon is needed before the end keyword of a record type declaration, a block, or a _case_ statement; before the until keyword of a repeat statement; and before the else keyword of an _if_ statement.

The presence of an extra semicolon was not permitted in early versions of Pascal. However, the addition of ALGOL-like empty statements in the 1973 _Revised Report_ and later changes to the language in ISO 7185:1983 now allow for optional semicolons in most of these cases. A semicolon is still not permitted immediately before the _else_ keyword in an _if_ statement, because the else follows a single statement, not a statement sequence. In the case of nested ifs, a semicolon cannot be used to avoid the dangling else problem (where the inner if does not have an else, but the outer if does) by putatively terminating the nested if with a semicolon – this instead terminates both if clauses. Instead, an explicit begin...end block must be used.[21]


Resources

Compilers and interpreters

Several Pascal compilers and interpreters are available for general use:

-   Delphi is Embarcadero's (formerly Borland/CodeGear) flagship rapid application development (RAD) product. It uses the Object Pascal language (termed 'Delphi' by Borland), descended from Pascal, to create applications for Windows, macOS, iOS, and Android. The .NET support that existed from D8 through D2005, D2006 and D2007 has been terminated, and replaced by a new language (Prism, which is rebranded Oxygene, see below) that is not fully backward compatible. In recent years Unicode support and generics were added (D2009, D2010, Delphi XE).
-   Free Pascal is a multi-platform compiler written in Object Pascal (and is self-hosting). It is aimed at providing a convenient and powerful compiler, both able to compile legacy applications and to be the means of developing new ones. It is distributed under the GNU GPL, while packages and runtime library come under a modified GNU LGPL. Apart from compatibility modes for Turbo Pascal, Delphi and Mac Pascal, it also has its own procedural and object-oriented syntax modes with support for extended features such as operator overloading. It supports many platforms and operating systems. Current versions also feature an ISO mode.
-   Modern Pascal is a multi-platform interpreter and p-code compiler written in Free Pascal. It is aimed at providing alternative solutions for PHP and node.js, using either an ISO standard pascal dialect or a hybrid supporting JavaScript/C operators. From the CLI it is useful as a Free Pascal interpreter.
-   Turbo51 is a free Pascal compiler for the 8051 family of microcontrollers, with Turbo Pascal 7 syntax.
-   Oxygene (formerly known as _Chrome_) is an Object Pascal compiler for the .NET and Mono platforms. It was created and is sold by RemObjects Software, and sold for a while by Embarcadero as the backend compiler of Prism.
-   Kylix was a descendant of Delphi, with support for the Linux operating system and an improved object library. It is no longer supported. Compiler and IDE are available now for non-commercial use.
-   GNU Pascal Compiler (GPC) is the Pascal compiler of the GNU Compiler Collection (GCC). The compiler itself is written in C, the runtime library mostly in Pascal. Distributed under the GNU General Public License, it runs on many platforms and operating systems. It supports the ANSI/ISO standard languages and has partial Turbo Pascal dialect support. One of the more painful omissions is the absence of a 100% Turbo Pascal-compatible (short)string type. Support for Borland Delphi and other language variations is quite limited. There is some support for Mac-pascal however.
-   Virtual Pascal was created by Vitaly Miryanov in 1995 as a native OS/2 compiler compatible with Borland Pascal syntax. Then, it had been commercially developed by fPrint, adding Win32 support, and in 2000 it became freeware. Today it can compile for Win32, OS/2 and Linux, and is mostly compatible with Borland Pascal and Delphi. Development was canceled on April 4, 2005.
-   P4 compiler, the basis for many subsequent Pascal-implemented-in-Pascal compilers. It implements a subset of full Pascal.
-   P5 compiler, is an ISO 7185 (full Pascal) adaption of P4.
-   Smart Mobile Studio is a Pascal to HTML5/Javascript compiler
-   Turbo Pascal was the dominant Pascal compiler for PCs during the 1980s and early 1990s, popular both because of its powerful extensions and extremely short compilation times. Turbo Pascal was compactly written and could compile, run, and debug all from memory without accessing disk. Slow floppy disk drives were common for programmers at the time, further magnifying Turbo Pascal's speed advantage. Currently, older versions of Turbo Pascal (up to 5.5) are available for free download from Borland's site.
-   IP Pascal Implements the language "Pascaline" (named after Pascal's calculator), which is a highly extended Pascal compatible with original Pascal according to ISO 7185. It features modules with namespace control, including parallel tasking modules with semaphores, objects, dynamic arrays of any dimensions that are allocated at runtime, overloads, overrides, and many other extensions. IP Pascal has a built-in portability library that is custom tailored to the Pascal language. For example, a standard text output application from 1970's original Pascal can be recompiled to work in a window and even have graphical constructs added.
-   Pascal-XT was created by Siemens for their mainframe operating systems BS2000 and SINIX.
-   PocketStudio is a Pascal subset compiler and RAD tool for Palm OS and MC68xxx processors with some own extensions to assist interfacing with the Palm OS API. It resembles Delphi and Lazarus with a visual form designer, an object inspector and a source code editor.
-   MIDletPascal – A Pascal compiler and IDE that generates small and fast Java bytecode specifically designed to create software for mobiles
-   Vector Pascal Vector Pascal is a language for SIMD instruction sets such as the MMX and the AMD 3d Now, supporting all Intel and AMD processors, and Sony's PlayStation 2 Emotion Engine.
-   Morfik Pascal allows the development of Web applications entirely written in Object Pascal (both server and browser side).
-   WDSibyl – Visual Development Environment and Pascal compiler for Win32 and OS/2
-   PP Compiler, a compiler for Palm OS that runs directly on the handheld computer.
-   CDC 6000 Pascal compiler is the source code for the first (CDC 6000) Pascal compiler.
-   Pascal-S[22]

-   AmigaPascal is a free Pascal compiler for the Amiga computer.

IDEs

-   Dev-Pascal is a Pascal IDE that was designed in Borland Delphi and which supports Free Pascal and GNU Pascal as backends.
-   Lazarus is a free Delphi-like visual cross-platform IDE for rapid application development (RAD). Based on Free Pascal, Lazarus is available for numerous platforms including Linux, FreeBSD, macOS and Microsoft Windows.

Libraries

-   WOL Library for creating GUI applications with the Free Pascal Compiler.


Standards

ISO/IEC 7185:1990 Pascal

In 1983, the language was standardized, in the international standard IEC/ISO 7185,[23] and several local country specific standards, including the American ANSI/IEEE770X3.97-1983, and ISO 7185:1983. These two standards differed only in that the ISO standard included a "level 1" extension for conformant arrays (an array where the boundaries of the array are not known until run time), where ANSI did not allow for this extension to the original (Wirth version) language. In 1989, ISO 7185 was revised (ISO 7185:1990) to correct various errors and ambiguities found in the original document.

The ISO 7185 was stated to be a clarification of Wirth's 1974 language as detailed by the User Manual and Report [Jensen and Wirth], but was also notable for adding "Conformant Array Parameters" as a level 1 to the standard, level 0 being Pascal without conformant arrays. This addition was made at the request of C. A. R. Hoare, and with the approval of Niklaus Wirth. The precipitating cause was that Hoare wanted to create a Pascal version of the (NAG) Numerical Algorithms Library, which had originally been written in FORTRAN, and found that it was not possible to do so without an extension that would allow array parameters of varying size. Similar considerations motivated the inclusion in ISO 7185 of the facility to specify the parameter types of procedural and functional parameters.

Niklaus Wirth himself referred to the 1974 language as "the Standard", for example, to differentiate it from the machine specific features of the CDC 6000 compiler. This language was documented in _The Pascal Report_,[24] the second part of the "Pascal users manual and report".

On the large machines (mainframes and minicomputers) Pascal originated on, the standards were generally followed. On the IBM PC, they were not. On IBM PCs, the Borland standards Turbo Pascal and Delphi have the greatest number of users. Thus, it is typically important to understand whether a particular implementation corresponds to the original Pascal language, or a Borland dialect of it.

The IBM PC versions of the language began to differ with the advent of UCSD Pascal, an interpreted implementation that featured several extensions to the language, along with several omissions and changes. Many UCSD language features survive today, including in Borland's dialect.

ISO/IEC 10206:1990 Extended Pascal

In 1990, an extended Pascal standard was created as ISO/IEC 10206,[25] which is identical in technical content[26] to IEEE/ANSI 770X3.160-1989[27] As of 2019, Support of Extended Pascal in FreePascal Compiler is planned.[28]

Variations

Niklaus Wirth's Zurich version of Pascal was issued outside ETH in two basic forms, the CDC 6000 compiler source, and a porting kit called Pascal-P system. The Pascal-P compiler left out several features of the full language that were not required to bootstrap the compiler. For example, procedures and functions used as parameters, undiscriminated variant records, packing, dispose, interprocedural gotos and other features of the full compiler were omitted.

UCSD Pascal, under Professor Kenneth Bowles, was based on the Pascal-P2 kit, and consequently shared several of the Pascal-P language restrictions. UCSD Pascal was later adopted as Apple Pascal, and continued through several versions there. Although UCSD Pascal actually expanded the subset Pascal in the Pascal-P kit by adding back standard Pascal constructs, it was still not a complete standard installation of Pascal.

In the early 1990s, Alan Burns and Geoff Davies developed Pascal-FC, an extension to Pl/0 (from the Niklaus' book 'Algorithms+Data Structures=Programs'). Several constructs were added to use Pascal-FC as a teaching tool for Concurrent Programming (such as semaphores, monitors, channels, remote-invocation and resources). To be able to demonstrate concurrency, the compiler output (a kind of P-code) could then be executed on a virtual machine. This virtual machine not only simulated a normal – fair – environment, but could also simulate extreme conditions (unfair mode).

Borland-like Pascal compilers

Borland's Turbo Pascal, written by Anders Hejlsberg, was written in assembly language independent of UCSD or the Zurich compilers. However, it adopted much of the same subset and extensions as the UCSD compiler. This is probably because the UCSD system was the most common Pascal system suitable for developing applications on the resource-limited microprocessor systems available at that time.

The shrink-wrapped Turbo Pascal version 3 and later incarnations, including Borland's Object Pascal and Delphi and non-Borland near-compatibles became popular with programmers including shareware authors, and so the SWAG library of Pascal code features a large amount of code written with such versions as Delphi in mind.

Software products (compilers, and IDE/Rapid Application Development (RAD) in this category:

-   Turbo Pascal - "TURBO.EXE" up to version 7, and Turbo Pascal for Windows ("TPW") and Turbo Pascal for Macintosh.
-   Borland Pascal 7 (essentially Turbo Pascal 7 for Windows).
-   Object Pascal - an extension of the Pascal language that was developed at Apple Computer by a team led by Larry Tesler in consultation with Niklaus Wirth, the inventor of Pascal; its features were added to Borland's Turbo Pascal for Macintosh and in 1989 for Turbo Pascal 5.5 for DOS.
-   Delphi - Object Pascal is essentially its underlying language.
-   Free Pascal compiler (FPC) - Free Pascal adopted the de facto standard dialect of Pascal programmers, Borland Pascal and, later, Delphi.
-   PascalABC.NET - is a new generation Pascal programming language including compiler and IDE
-   Borland Kylix is a compiler and IDE formerly sold by Borland, but later discontinued. It is a Linux version of the Borland Delphi software development environment and C++Builder.
-   Lazarus - similar to Kylix in function, is a free cross-platform visual IDE for RAD using the Free Pascal compiler, which supports dialects of Object Pascal, to varying degrees.
-   Virtual Pascal - VP2/1 is a fully Borland Pascal and Borland Delphi compatible 32-bit Pascal compiler for OS/2 and Win 32 (with a Linux version "on the way").[29]
-   Sybil is an open source Delphi-like IDE and compiler; implementations include WDSibyl[30] for Microsoft Windows and OS/2, a commercial Borland Pascal compatible environment released by a company called Speedsoft that was later developed into a Delphi like RAD environment called Sybil and then open sourced under the GPL when that company closed down; Open Sybil is an ongoing project, an Open source Pascal RAD (Rapid Application Development) Tool for OS/2 and eCS that was originally based on Speedsoft's WDsybl SPCC (Sibyl Portable Component Classes) and SVDE (Sibyl Visual Development Tool) sources but now the core is SOM, WPS and OpenDoc.[31]

List of related standards

-   ISO 8651-2:1988 _Information processing systems – Computer graphics – Graphical Kernel System (GKS) language bindings – Part 2: Pascal_


Reception

Pascal generated a wide variety of responses in the computing community, both critical and complimentary.

Early criticism

While very popular in the 1980s and early 1990s, implementations of Pascal that closely followed Wirth's initial definition of the language were widely criticized as being unsuitable for use outside teaching. Brian Kernighan, who popularized the C language, outlined his most notable criticisms of Pascal as early as 1981 in his article "Why Pascal is Not My Favorite Programming Language".[32] The most serious problem described by him was that array sizes and string lengths were part of the type, so it was not possible to write a function that would accept variable-length arrays or even strings as parameters. This made it unfeasible to write, for example, a sorting library. Kernighan also criticized the unpredictable order of evaluation of boolean expressions, poor library support, and lack of static variables, and raised a number of smaller issues. Also, he stated that the language did not provide any simple constructs to "escape" (knowingly and forcibly ignore) restrictions and limitations. More general complaints from other sources[33][34] noted that the scope of declarations was not clearly defined in the original language definition, which sometimes had serious consequences when using forward declarations to define pointer types, or when record declarations led to mutual recursion, or when an identifier may or may not have been used in an enumeration list. Another difficulty was that, like ALGOL 60, the language did not allow procedures or functions passed as parameters to predefine the expected type of their parameters.

Most of Kernighan's criticisms were directly addressed in the article "The Pascal Programming Language" by Bill Catambay,[35] specifically, under "Myth 6: Pascal Is Not For Serious Programmers".[36]

Despite initial criticisms, Pascal continued to evolve, and most of Kernighan's points do not apply to versions of the language which were enhanced to be suitable for commercial product development, such as Borland's Turbo Pascal. As Kernighan predicted in his article, most of the extensions to fix these issues were incompatible from compiler to compiler. Since the early 1990s, however, most of the varieties seem condensed into two categories: ISO and Borland-like.

Extended Pascal addresses many of these early criticisms. It supports variable-length strings, variable initialization, separate compilation, short-circuit boolean operators, and default (otherwise) clauses for case statements.[37]


See also

-   Concurrent Pascal
-   Comparison of Pascal and Borland Delphi
-   Comparison of Pascal and C
-   Modula-2
-   Oberon (programming language)
-   Object Pascal


References


Further reading

-   Niklaus Wirth: _The Programming Language Pascal_. 35–63, Acta Informatica, Volume 1, 1971.
-   C. A. R. Hoare: "Notes on data structuring". In O.-J. Dahl, E. W. Dijkstra and C. A. R. Hoare, editors, _Structured Programming_, pages 83–174. Academic Press, 1972.
-   C. A. R. Hoare, Niklaus Wirth: _An Axiomatic Definition of the Programming Language Pascal_. 335–355, Acta Informatica, Volume 2, 1973.
-   Kathleen Jensen and Niklaus Wirth: _PASCAL – User Manual and Report_. Springer-Verlag, 1974, 1985, 1991, and .
-   Niklaus Wirth: _Algorithms + Data Structures = Programs_. Prentice-Hall, 1975, .
-   Niklaus Wirth: _An assessment of the programming language PASCAL_. 23–30 ACM SIGPLAN Notices Volume 10, Issue 6, June 1975.
-   N. Wirth, and A. I. Wasserman, ed: _Programming Language Design_. IEEE Computer Society Press, 1980
-   D. W. Barron (Ed.): _Pascal – The Language and its Implementation_. John Wiley 1981,
-   Peter Grogono: _Programming in Pascal_, Revised Edition, Addison-Wesley, 1980
-   Richard S. Forsyth: _Pascal in Work and Play_, Chapman and Hall, 1982
-   N. Wirth, M. Broy, ed, and E. Denert, ed: _Pascal and its Successors_ in _Software Pioneers: Contributions to Software Engineering._ Springer-Verlag, 2002,
-   N. Wirth: _Recollections about the Development of Pascal_. ACM SIGPLAN Notices, Volume 28, No 3, March 1993.

Category:Academic programming languages Category:Articles with example Pascal code Category:Educational programming languages Pascal_(programming_language) Category:High-level programming languages Category:Programming languages created in 1970 Category:Programming languages with an ISO standard Category:1970 software

[1] Essential Pascal by Marco Cantù

[2] Hertzfeld, Andy. "Hungarian folklore.org : Macintosh Stories. Retrieved 2012-03-06.

[3] https://www.computerhistory.org/atchm/adobe-photoshop-source-code/, Adobe Photoshop Source Code

[4] tiobe.com , Programming Community Index for January 2011.

[5]

[6] Computers and Computing. A Personal Perspective. by Niklaus Wirth

[7] cbi.umn.edu, "An Interview with JOHN BRACKETT AND DOUG ROSS", p15, Charles Babbage Institute, 2004

[8] iaea.org, "AUSTRALIAN ATOMIC ENERGY COMMISSION RESEARCH ESTABLISHMENT, LUCAS HEIGHTS, NUCLEAR SCIENCE AND TECHNOLOGY BRANCH REPORT 1977, DIVISIONAL RESEARCH", p.22, International Atomic Energy Agency (IEAE)

[9] Jon Udell, Crash of the Object-Oriented Pascals, BYTE, July, 1989.

[10] M. I. Trofimov, The End of Pascal?, BYTE, March, 1990, p. 36.

[11]

[12]

[13]

[14]

[15]

[16]

[17] Michel Gien, "The SOL Operating System", in Usenix Summer '83 Conference, Toronto, ON, (July 1983), pp. 75-78

[18] cs.berkeley.edu

[19]

[20] J. Welsh, W. J. Sneeringer, and C. A. R. Hoare, "Ambiguities and Insecurities in Pascal", _Software Practice and Experience 7_, pp. 685–696 (1977)

[21] _Pascal,_ Nell Dale and Chip Weems, "Dangling Else", p. 160–161

[22] "Pascal-S: A Subset and Its Implementation", N. Wirth in Pascal – The Language and Its Implementation, by D.W. Barron, Wiley 1979.

[23]

[24]

[25]

[26]

[27]

[28] http://wiki.freepascal.org/Extended_Pascal

[29]

[30]

[31]

[32] Brian W. Kernighan (1981). "Why Pascal is Not My Favorite Programming Language".

[33]

[34] O. Lecarme, P. Desjardins, "More Comments on the Programming Language Pascal", _Acta Informatica 4_, pp. 231–243 (1975).

[35] Bill Catambay. "The Pascal Programming Language".

[36] Bill Catambay. "The Pascal Programming Language", "Chapter IV. Myths Uncovered". .

[37] "Extended Pascal". .