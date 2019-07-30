BASIC (BEGINNER'S ALL-PURPOSE SYMBOLIC INSTRUCTION CODE)[1] is a family of general-purpose, high-level programming languages whose design philosophy emphasizes ease of use. In 1964, John G. Kemeny and Thomas E. Kurtz designed the original BASIC language at Dartmouth College. They wanted to enable students in fields other than science and mathematics to use computers. At the time, nearly all use of computers required writing custom software, which was something only scientists and mathematicians tended to learn.

In addition to the language itself, Kemeny and Kurtz developed the Dartmouth Time Sharing System (DTSS), which allowed multiple users to edit and run BASIC programs at the same time. This general model became very popular on minicomputer systems like the PDP-11 and Data General Nova in the late 1960s and early 1970s. Hewlett-Packard produced an entire computer line for this method of operation, introducing the HP2000 series in the late 1960s and continuing sales into the 1980s. Many early video games trace their history to one of these versions of BASIC.

The emergence of early microcomputers in the mid-1970s led to the development of the original Microsoft BASIC in 1975. Due to the tiny main memory available on these machines, often 4 kB, a variety of Tiny BASIC dialects were also created. BASIC was available for almost any system of the era, and naturally became the _de facto_ programming language for the home computer systems that emerged in the late 1970s. These machines almost always had a BASIC installed by default, often in the machine's firmware or sometimes on a ROM cartridge.

BASIC fell from use during the later 1980s as newer machines with far greater capabilities came to market and other programming languages (such as Pascal and C) became tenable. In 1991, Microsoft released Visual Basic, combining a greatly updated version of BASIC with a visual forms builder. This reignited use of the language and "VB" remains a major programming language in the form of VB.NET.


Origin

John G. Kemeny was the math department chairman at Dartmouth College, and largely on his reputation as an innovator in math teaching, in 1959 the school won an Alfred P. Sloan Foundation award for $500,000 to build a new department building.[2] Thomas E. Kurtz had joined the department in 1956, and from the 1960s they agreed on the need for programming literacy among students outside the traditional STEM fields. Kemeny later noted that “Our vision was that every student on campus should have access to a computer, and any faculty member should be able to use a computer in the classroom whenever appropriate. It was as simple as that."

Kemeny and Kurtz had made two previous experiments with simplified languages, DARSIMCO (Dartmouth Simplified Code) and DOPE (Dartmouth Oversimplified Programming Experiment). These did not progress past a single freshman class. New experiments using Fortran and ALGOL followed, but Kurtz concluded these languages were too tricky for what they desired. As Kurtz noted, Fortran had numerous oddly-formed commands, notably an "almost impossible-to-memorize convention for specifying a loop: 'DO 100, I = 1, 10, 2'. Is it '1, 10, 2' or '1, 2, 10', and is the comma after the line number required or not?"

Moreover, the lack of any sort of immediate feedback was a key problem; the machines of the era used batch processing and took long times to complete a run of a program. Kurtz suggested that time-sharing offered a solution; a single machine could divide up its processing time among many users, giving them the illusion of having a slow computer to themselves. Small programs would return results in a few seconds. This led to increasing interest in a system using time-sharing and a new language specifically for use by non-STEM students.

Kemeny wrote the first version of BASIC. The acronym _BASIC_ comes from the name of an unpublished paper by Thomas Kurtz.[3] The new language was heavily patterned on FORTRAN II; statements were one-to-a-line, numbers were used to indicate the target of loops and branches, and many of the commands were similar or identical. However, the syntax was changed wherever it could be improved. For instance, the difficult to remember DO loop was replaced by the much easier to remember FOR I = 1 TO 10 STEP 2, and the line number used in the DO was instead indicated by the NEXT I. Likewise, the cryptic IF statement of Fortran, whose syntax matched a particular instruction of the machine on which it was originally written, became the simpler IF I=5 THEN GOTO 100. These changes made the language much less idiosyncratic while still having an overall structure and feel similar to the original FORTRAN.

The project received a $300,000 grant from the National Science Foundation, which was used to purchase a GE-225 computer for processing, and a Datanet-30 realtime processor to handle the Teletype Model 33 teleprinters used for input and output. A team of a dozen undergraduates worked on the project for about a year, writing both the DTSS system and the BASIC compiler. The main CPU was later replaced by a GE-235, and still later by a GE-635

The first version BASIC language was released on 1 May 1964.[4][5]

One of the graduate students on the implementation team was Sr. Mary Kenneth Keller, one of the first people in the United States to earn a Ph.D. in computer science and the first woman to do so.[6]

Initially, BASIC concentrated on supporting straightforward mathematical work, with matrix arithmetic support from its initial implementation as a batch language, and character string functionality being added by 1965. Wanting use of the language to become widespread, its designers made the compiler available free of charge. (In the 1960s, software became a chargeable commodity; until then, it was provided without charge as a service with the very expensive computers, usually available only to lease.) They also made it available to high schools in the Hanover, New Hampshire area and put considerable effort into promoting the language. In the following years, as other dialects of BASIC appeared, Kemeny and Kurtz's original BASIC dialect became known as _Dartmouth BASIC_.


Spread on minicomputers

Knowledge of the relatively simple BASIC became widespread for a computer language, and it was implemented by a number of manufacturers, becoming fairly popular on newer minicomputers, such as the DEC PDP series, where BASIC-PLUS was an extended dialect for use on the RSTS/E time-sharing operating system. The BASIC language was available for the Data General Nova, and also central to the HP Time-Shared BASIC system in the late 1960s and early 1970s, where the language was implemented as an interpreter. A version was a core part of the Pick operating system from 1973 onward, where a compiler renders it into bytecode, able to be interpreted by a virtual machine.

During this period a number of simple text-based games were written in BASIC, most notably Mike Mayfield's _Star Trek_. A number of these were collected by DEC employee David H. Ahl and published in a newsletter he compiled. He later collected a number of these into book form, _101 BASIC Computer Games_, published in 1973.[7] During the same period, Ahl was involved in the creation of a small computer for education use, an early personal computer. When management refused to support the concept, Ahl left DEC in 1974 to found the seminal computer magazine, _Creative Computing_. The book remained popular, and was re-published on several occasions.[8]


Explosive growth: the home computer era

v2.0 on the Commodore 64]] version 3.0]] The introduction of the first microcomputers in the mid-1970s was the start of explosive growth for BASIC. It had the advantage that it was fairly well known to the young designers and computer hobbyists who took an interest in microcomputers. Despite Dijkstra's famous judgement in 1975, "It is practically impossible to teach good programming to students that have had a prior exposure to BASIC: as potential programmers they are mentally mutilated beyond hope of regeneration",[9] BASIC was one of the few languages that was both high-level enough to be usable by those without training and small enough to fit into the microcomputers of the day, making it the de facto standard programming language on early microcomputers.

One of the first BASICs to appear was Tiny BASIC, a simple BASIC variant designed by Dennis Allison at the urging of Bob Albrecht of the Homebrew Computer Club. He had seen BASIC on minicomputers and felt it would be the perfect match for new machines like the MITS Altair 8800. How to design and implement a stripped-down version of an interpreter for the BASIC language was covered in articles by Allison in the first three quarterly issues of the _People's Computer Company_ newsletter published in 1975 and implementations with source code published in _Dr. Dobb's Journal of Tiny BASIC Calisthenics & Orthodontia: Running Light Without Overbyte_. Versions were written by Li-Chen Wang and Tom Pittman.[10] In 1975 MITS released Altair BASIC, developed by Bill Gates and Paul Allen as the company Micro-Soft,[11] which eventually grew into corporate giant Microsoft. The first Altair version was co-written by Gates, Allen, and Monte Davidoff.

Almost universally, home computers of the 1980s had a ROM-resident BASIC interpreter, which the machines booted directly into. When the Apple II, PET 2001, and TRS-80 were all released in 1977, all three had BASIC as their primary programming language and operating environment. Upon boot, a BASIC interpreter in immediate mode was presented. Commodore Business Machines included Commodore BASIC, based on Microsoft BASIC. The Apple II and TRS-80 each had two versions of BASIC, a smaller introductory version introduced with the initial releases of the machines and a more advanced version developed as interest in the platforms increased. As new companies entered the field, additional versions were added that subtly changed the BASIC family. The Atari 8-bit family had its own Atari BASIC that was modified in order to fit on an 8 kB ROM cartridge. Sinclair BASIC was introduced in 1980 with the Sinclair ZX-80, and was later extended for the Sinclair ZX-81 and the Sinclair ZX Spectrum. The BBC published BBC BASIC, developed by Acorn Computers Ltd, incorporating many extra structured programming keywords and advanced floating-point operation features.

As the popularity of BASIC grew in this period, computer magazines published complete source code in BASIC for video games, utilities, and other programs. Given BASIC's straightforward nature, it was a simple matter to type in the code from the magazine and execute the program. Different magazines were published featuring programs for specific computers, though some BASIC programs were considered universal and could be used in machines running any variant of BASIC (sometimes with minor adaptations). Many books of type-in programs were also available, and in particular, Ahl published versions of the original 101 BASIC games converted into the Microsoft dialect and published it from _Creative Computing_ as _BASIC Computer Games_. This book, and its sequels, provided hundreds of ready-to-go programs that could be easily converted to practically any BASIC-running platform.[12][13][14] The book reached the stores in 1978, just as the home computer market was starting off, and it became the first million-selling computer book. Later packages, such as Learn to Program BASIC would also have gaming as an introductory focus. On the business-focused CP/M computers which soon became widespread in small business environments, Microsoft BASIC (MBASIC) was one of the leading applications.[15]


IBM PC and compatibles

1.10]]

When IBM was designing the IBM PC they followed the paradigm of existing home computers in wanting to have a built-in BASIC. They sourced this from Microsoft – IBM Cassette BASIC – but Microsoft also produced several other versions of BASIC for MS-DOS/PC DOS including IBM Disk BASIC (BASIC D), IBM BASICA (BASIC A), GW-BASIC (a BASICA-compatible version that did not need IBM's ROM) and QBasic, all typically bundled with the machine. In addition they produced the Microsoft BASIC Compiler aimed at professional programmers. Turbo Pascal-publisher Borland published Turbo Basic 1.0 in 1985 (successor versions are still being marketed by the original author under the name PowerBASIC). Microsoft wrote the windowed AmigaBASIC that was supplied with version 1.1 of the pre-emptive multitasking GUI Amiga computers (late 1985 / early 1986), although the product unusually did not bear any Microsoft marks.

These later variations introduced many extensions, such as improved string manipulation and graphics support, access to the file system and additional data types. More important were the facilities for structured programming, including additional control structures and proper subroutines supporting local variables. However, by the latter half of the 1980s, users were increasingly using pre-made applications written by others rather than learning programming themselves; while professional programmers now had a wide range of more advanced languages available on small computers. C and later C++ became the languages of choice for professional "shrink wrap" application development.[16][17]


Visual Basic

In 1991 Microsoft introduced Visual Basic, an evolutionary development of QuickBasic. It included constructs from that language such as block-structured control statements, parameterized subroutines, and optional static typing, as well as object-oriented constructs from other languages such as "With" and "For Each". The language retained some compatibility with its predecessors, such as the Dim keyword for declarations, "Gosub"/Return statements, and optional line numbers which could be used to locate errors. An important driver for the development of Visual Basic was as the new macro language for Microsoft Excel, a spreadsheet program. To the surprise of many at Microsoft who still initially marketed it as a language for hobbyists, the language came into widespread use for small custom business applications shortly after the release of VB version 3.0, which is widely considered the first relatively stable version.

While many advanced programmers still scoffed at its use, VB met the needs of small businesses efficiently as by that time, computers running Windows 3.1 had become fast enough that many business-related processes could be completed "in the blink of an eye" even using a "slow" language, as long as large amounts of data were not involved. Many small business owners found they could create their own small, yet useful applications in a few evenings to meet their own specialized needs. Eventually, during the lengthy lifetime of VB3, knowledge of Visual Basic had become a marketable job skill. Microsoft also produced VBScript in 1996 and Visual Basic .NET in 2001. The latter has essentially the same power as C# and Java but with syntax that reflects the original Basic language. Basic, OpenOffice.org Basic and Gambas]]


Post-1990 versions and dialects

Many other BASIC dialects have also sprung up since 1990, including the open source QB64 and FreeBASIC, inspired by QBasic, and the Visual Basic-styled RapidQ, Basic For Qt and Gambas. Modern commercial incarnations include PureBasic, PowerBASIC, Xojo, Monkey X and True BASIC (the direct successor to Dartmouth BASIC from a company controlled by Kurtz).

Several web-based simple BASIC interpreters also now exist, including Quite BASIC and Microsoft's Small Basic. Many versions of BASIC are also now available for smartphones and tablets via the Apple App Store, or Google Play store for Android. On game consoles, an application for the Nintendo 3DS and Nintendo DSi called _Petit Computer_ allows for programming in a slightly modified version of BASIC with DS button support.


Calculators

Variants of BASIC are available on graphing and otherwise programmable calculators made by Texas Instruments, HP, Casio, and others.


Windows command line

QBasic, a version of Microsoft QuickBASIC without the linker to make EXE files, is present in the Windows NT and DOS-Windows 95 streams of operating systems and can be obtained for more recent releases like Windows 7 which do not have them. Prior to DOS 5, the Basic interpreter was GW-Basic. QuickBasic is part of a series of three languages issued by Microsoft for the home and office power user and small-scale professional development; QuickC and QuickPascal are the other two. For Windows 95 and 98, which do not have QBasic installed by default, they can be copied from the installation disc, which will have a set of directories for old and optional software; other missing commands like Exe2Bin and others are in these same directories.


Other

.]] The various Microsoft, Lotus, and Corel office suites and related products are programmable with Visual Basic in one form or another, including LotusScript, which is very similar to VBA 6. The Host Explorer terminal emulator uses WWB as a macro language; or more recently the programme and the suite in which it is contained is programmable in an in-house Basic variant known as Hummingbird Basic. The VBScript variant is used for programming web content, Outlook 97, Internet Explorer, and the Windows Script Host. WSH also has a Visual Basic for Applications (VBA) engine installed as the third of the default engines along with VBScript, JScript, and the numerous proprietary or open source engines which can be installed like PerlScript, a couple of Rexx-based engines, Python, Ruby, Tcl, Delphi, XLNT, PHP, and others; meaning that the two versions of Basic can be used along with the other mentioned languages, as well as LotusScript, in a WSF file, through the component object model, and other WSH and VBA constructions. VBScript is one of the languages that can be accessed by the 4Dos, 4NT, and Take Command enhanced shells. SaxBasic and WWB are also very similar to the Visual Basic line of Basic implementations. The pre-Office 97 macro language for Microsoft Word is known as WordBASIC. Excel 4 and 5 use Visual Basic itself as a macro language. Chipmunk Basic, an old school interpreter similar to BASICs of the 1970s, is available for Linux, Microsoft Windows and macOS.


Nostalgia

The ubiquity of BASIC interpreters on personal computers was such that textbooks once included simple "Try It In BASIC" exercises that encouraged students to experiment with mathematical and computational concepts on classroom or home computers. Popular computer magazines of the day typically included type-in programs.

Futurist and sci-fi writer David Brin mourned the loss of ubiquitous BASIC in a 2006 _Salon_ article[18] as have others who first used computers during this era. In turn, the article prompted Microsoft to develop and release Small Basic.[19] Dartmouth held a 50th anniversary celebration for BASIC on 1 May 2014,[20] as did other organisations; at least one organisation of VBA programmers organised a 35th anniversary observance in 1999.[21]

Dartmouth College celebrated the 50th anniversary of the BASIC language with a day of events[22] on April 30, 2014. A short documentary film was produced for the event.[23]


Syntax

Typical BASIC keywords

Data manipulation:

-   LET—assigns a value (which may be the result of an expression) to a variable.
-   DATA—holds a list of values which are assigned sequentially using the READ command.

Program flow control:

-   IF ... THEN ... {ELSE}—used to perform comparisons or make decisions.
-   FOR ... TO ... {STEP} ... NEXT—repeat a section of code a given number of times. A variable that acts as a counter is available within the loop.
-   WHILE ... WEND and REPEAT ... UNTIL—repeat a section of code while the specified condition is true. The condition may be evaluated before each iteration of the loop, or after.
-   DO ... LOOP {WHILE} or {UNTIL}—repeat a section of code indefinitely or while/until the specified condition is true. The condition may be evaluated before each iteration of the loop, or after.
-   GOTO—jumps to a numbered or labelled line in the program.
-   GOSUB—jumps to a numbered or labelled line, executes the code it finds there until it reaches a RETURN command, on which it jumps back to the statement following the GOSUB, either after a colon, or on the next line. This is used to implement subroutines.
-   ON ... GOTO/GOSUB—chooses where to jump based on the specified conditions. See Switch statement for other forms.
-   DEF FN—a pair of keywords introduced in the early 1960s to define functions. The original BASIC functions were modelled on FORTRAN single-line functions. BASIC functions were one expression with variable arguments, rather than subroutines, with a syntax on the model of DEF FND(x) = x*x at the beginning of a program. Function names were originally restricted to FN, plus one letter, _i.e._, FNA, FNB ...

Input and output:

-   LIST—displays the full source code of the current program.
-   PRINT—displays a message on the screen or other output device.
-   INPUT—asks the user to enter the value of a variable. The statement may include a prompt message.
-   TAB or AT: used with PRINT to set the position where the next character will be shown on the screen or printed on paper.

Mathematical functions:

-   ABS—Absolute value
-   ATN—Arctangent (result in radians)
-   COS—Cosine (argument in radians)
-   EXP—Exponential function
-   INT—Integer part (typically floor function)
-   LOG—Natural logarithm
-   RND—Random number generation
-   SIN—Sine (argument in radians)
-   SQR—Square root
-   TAN—Tangent (argument in radians)

Miscellaneous:

-   REM—holds a programmer's comment or REMark; often used to give a title to the program and to help identify the purpose of a given section of code.
-   USR—transfers program control to a machine language subroutine, usually entered as an alphanumeric string or in a list of DATA statements.
-   TRON—turns on display of each line number as it is run ("TRace ON"). This was useful for debugging or correcting of problems in a program.
-   TROFF—turns off the display of line numbers.
-   ASM—some compilers such as Freebasic,[24] Purebasic,[25] and Powerbasic[26] also support inline assembly language, allowing the programmer to intermix high-level and low-level code, typically prefixed with "ASM" or "!" statements.

Data types and variables

Minimal versions of BASIC had only integer variables and one- or two-letter variable names, which minimized requirements of limited and expensive memory (RAM). More powerful versions had floating-point arithmetic, and variables could be labelled with names six or more characters long. There were some problems and restrictions in early implementations; for example, Applesoft allowed variable names to be several characters long, but only the first two were significant, thus it was possible to inadvertently write a program with variables "LOSS" and "LOAN", which would be treated as being the same; assigning a value to "LOAN" would silently overwrite the value intended as "LOSS". Keywords could not be used in variables in many early BASICs; "SCORE" would be interpreted as "SC" OR "E", where OR was a keyword. String variables are usually distinguished in many microcomputer dialects by having $ suffixed to their name, and values are often identified as strings by being delimited by "double quotation marks". Arrays in BASIC could contain integers, floating point or string variables.

Some dialects of BASIC supported matrices and matrix operations, useful for the solution of sets of simultaneous linear algebraic equations. These dialects would directly support matrix operations such as assignment, addition, multiplication (of compatible matrix types), and evaluation of a determinant. Many microcomputer BASICs did not support this data type; matrix operations were still possible, but had to be programmed explicitly on array elements.

Examples

Unstructured BASIC

The original Dartmouth Basic was unusual in having a matrix keyword, MAT. Although not implemented by most later microprocessor derivatives, it is used in this example from the 1968 manual[27] which averages the numbers that are input:

    5 LET S = 0
    10 MAT INPUT V
    20 LET N = NUM
    30 IF N = 0 THEN 99
    40 FOR I = 1 TO N
    45 LET S = S + V(I)
    50 NEXT I
    60 PRINT S/N
    70 GO TO 5
    99 END

New BASIC programmers on a home computer might start with a simple program, perhaps using the language's PRINT statement to display a message on the screen; a well-known and often-replicated example is Kernighan and Ritchie's "Hello, World!" program:

    10 PRINT "Hello, World!"
    20 END

An infinite loop could be used to fill the display with the message.

Most first-generation BASIC versions, such as MSX BASIC and GW-BASIC, supported simple data types, loop cycles, and arrays. The following example is written for GW-BASIC, but will work in most versions of BASIC with minimal changes:

    10 INPUT "What is your name: "; U$
    20 PRINT "Hello "; U$
    30 INPUT "How many stars do you want: "; N
    40 S$ = ""
    50 FOR I = 1 TO N
    60 S$ = S$ + "*"
    70 NEXT I
    80 PRINT S$
    90 INPUT "Do you want more stars? "; A$
    100 IF LEN(A$) = 0 THEN GOTO 90
    110 A$ = LEFT$(A$, 1)
    120 IF A$ = "Y" OR A$ = "y" THEN GOTO 30
    130 PRINT "Goodbye "; U$
    140 END

The resulting dialog might resemble:

What is your name: Mike
Hello Mike
How many stars do you want: 7
*******
Do you want more stars? yes
How many stars do you want: 3
***
Do you want more stars? no
Goodbye Mike

Structured BASIC

Second-generation BASICs (for example, VAX Basic, SuperBASIC, True BASIC, QuickBASIC, BBC BASIC, Pick BASIC, PowerBASIC and arguably COMAL) introduced a number of features into the language, primarily related to structured and procedure-oriented programming. Usually, line numbering is omitted from the language and replaced with labels (for GOTO) and procedures to encourage easier and more flexible design.[28] In addition keywords and structures to support repetition, selection and procedures with local variables were introduced.

The following example is in Microsoft QuickBASIC:

    DECLARE SUB PrintSomeStars (StarCount!)
    REM QuickBASIC example
    INPUT "What is your name: ", UserName$
    PRINT "Hello "; UserName$
    DO
       INPUT "How many stars do you want: ", NumStars
       CALL PrintSomeStars(NumStars)
       DO
          INPUT "Do you want more stars? ", Answer$
       LOOP UNTIL Answer$ <> ""
       Answer$ = LEFT$(Answer$, 1)
    LOOP WHILE UCASE$(Answer$) = "Y"
    PRINT "Goodbye "; UserName$
    END

    SUB PrintSomeStars (StarCount)
       REM This procedure uses a local variable called Stars$
       Stars$ = STRING$(StarCount, "*")
       PRINT Stars$
    END SUB

Object-oriented BASIC

Third-generation BASIC dialects such as Visual Basic, Xojo, StarOffice Basic and BlitzMax introduced features to support object-oriented and event-driven programming paradigm. Most built-in procedures and functions are now represented as _methods_ of standard objects rather than _operators_. Also, the operating system became increasingly accessible to the BASIC language.

The following example is in Visual Basic .NET:

    Public Module StarsProgram
       Private Function Ask(prompt As String) As String
          Console.Write(prompt)
          Return Console.ReadLine()
       End Function

       Public Sub Main()
          Dim userName = Ask("What is your name: ")
          Console.WriteLine("Hello {0}", userName)

          Dim answer As String

          Do
             Dim numStars = CInt(Ask("How many stars do you want: "))
             Dim stars As New String("*"c, numStars)
             Console.WriteLine(stars)

             Do
                answer = Ask("Do you want more stars? ")
             Loop Until answer <> ""
          Loop While answer.StartsWith("Y", StringComparison.OrdinalIgnoreCase)

          Console.WriteLine("Goodbye {0}", userName)
       End Sub
    End Module


Standards

-   ANSI/ISO/IEC Standard for Minimal BASIC:
    -   ANSI X3.60-1978 "For minimal BASIC"
    -   ISO/IEC 6373:1984 "Data Processing — Programming Languages — Minimal BASIC"
-   ECMA-55 Minimal BASIC _(withdrawn, similar to ANSI X3.60-1978)_
-   ANSI/ISO/IEC Standard for Full BASIC:
    -   ANSI X3.113-1987 "Programming Languages Full BASIC"
    -   INCITS/ISO/IEC 10279-1991 (R2005) "Information Technology – Programming Languages – Full BASIC"
-   ANSI/ISO/IEC Addendum Defining Modules:
    -   ANSI X3.113 Interpretations-1992 "BASIC Technical Information Bulletin # 1 Interpretations of ANSI 03.113-1987"
    -   ISO/IEC 10279:1991/ Amd 1:1994 "Modules and Single Character Input Enhancement"
-   ECMA-116 BASIC _(withdrawn, similar to ANSI X3.113-1987)_


See also

-   -   List of BASIC dialects
-   List of Computers With On-Board BASIC


Notes


References

General references

-   -   -   -   -


External links

-   -   -

Category:American inventions Category:Articles with example BASIC code BASIC_programming_language_family Category:Programming languages Category:Programming languages created in 1964 Category:Programming languages with an ISO standard

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

[25]

[26]

[27]

[28]