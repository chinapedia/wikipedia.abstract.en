GW-BASIC is a dialect of the BASIC programming language developed by Microsoft from BASICA, originally for Compaq. It is otherwise identical to Microsoft/IBM BASICA, but is a fully self-contained executable and does not need the ROM BASIC. It was bundled with MS-DOS operating systems on IBM PC compatibles by Microsoft. Microsoft also sold a BASIC compiler, BASCOM, compatible with GW-BASIC, for programs needing more speed. The language is suitable for simple games, business programs and the like. Since it was included with most versions of MS-DOS, it was also a low-cost way for many aspiring programmers to learn the fundamentals of computer programming.[1][2] With the release of MS-DOS 5.0, GW-BASIC's place was eventually taken by QBasic, the interpreter part of the separately available QuickBASIC compiler.[3]


Features

IBM BASICA and GW-BASIC were largely ports of MBASIC version 5.x, but with added features specifically for the IBM PC hardware. Common features of BASIC-80 5.x and BASICA/GW-BASIC include:

-   WHILE...WEND loops
-   Variable names of up to 40 characters
-   OPTION BASE statement to set the starting index of array variables as either 0 or 1
-   Dynamic string space allocation
-   LINE INPUT statement for reading in data from the keyboard
-   CALL statement for executing machine language routines
-   CHAIN and MERGE commands
-   Ability to save programs in either tokenized binary format or ASCII text

The ability to "crunch" program lines by omitting spaces, a common feature of earlier Microsoft BASIC implementations, was removed from BASIC-80 5.x and BASICA/GWBASIC.

BASIC-80 programs not using PEEK/POKE statements would run under GW-BASIC. BASICA added a large number of features for the IBM PC such as sound, graphics, and memory commands. A few other features not present in BASIC-80 included the ability to execute the RND function with no parameters and the ability to also save programs in a "protected" format, preventing them from being LISTed. BASICA also allowed double-precision numbers to be used with mathematical and trigonometric functions such as COS, SIN, and ATN, which wasn't allowed in 8-bit versions of BASIC. This feature was normally not enabled and required the optional parameter /D at startup, _i.e._, GWBASIC /D. BASIC's memory footprint was slightly increased if it was used.

Microsoft did not offer a generic version of MS-DOS until v3.20 in 1986; before then, all variants of the operating system were OEM versions. Depending on the OEM, BASIC was distributed as either BASICA.EXE or GWBASIC.EXE. The former should not be confused with IBM BASICA, which always came as a .COM file. Some variants of BASIC had extra features to support a particular machine. For example, the AT&T and Tandy versions of DOS included a special GW-BASIC that supported their enhanced sound and graphics capabilities.

The initial version of GW-BASIC was the one included with Compaq DOS 1.13, released with the Compaq Portable in 1983, and was analogous to IBM BASICA 1.10. It used the CP/M-derived file control blocks for disk access and did not support subdirectories. Later versions added this feature and improved graphics and other capabilities.

GW-BASIC 3.20 (1986) added EGA graphics support (no version of BASICA or GW-BASIC had VGA support) and was, in effect, the last new version released before it was superseded by QBasic.

Buyers of Hercules Graphics Cards received a special version of GW-BASIC on the card's utility disk that was called HBASIC and which added support for its 720×348 monochrome graphics. Other versions of BASICA/GW-BASIC did not support Hercules graphics and could only display graphics on that card through the use of third-party CGA emulation, such as SIMCGA.

GW-BASIC has a command line-based integrated development environment (IDE) based on Dartmouth BASIC. Using the cursor movement keys, any line displayed on screen can be edited. It also includes function key shortcuts at the bottom of the screen. Like other early microcomputer versions of BASIC, GW-BASIC lacked many of the structures needed for structured programming such as local variables, and GW-BASIC programs executed relatively slowly, because it was an interpreted language. All program lines must be numbered; all non-numbered lines are considered to be commands in direct mode to be executed immediately. Program source files are normally saved in binary compressed format with tokens replacing keywords, with an option to save in ASCII text form.[4]

The GW-BASIC command-line environment has commands to RUN, LOAD, SAVE, LIST the current program, or quit to the operating SYSTEM; these commands can also be used as program statements. There is little support for structured programming in GW-BASIC. All IF/THEN/ELSE conditional statements must be written on one line, although WHILE/WEND statements may group multiple lines. Functions can only be defined using the single line DEF FNf(x)= statement (e.g., DEF FNLOG(base,number)=LOG(number)/LOG(base)). The data type of variables can be specified with a character at the end of the variable name: A$ is a string of characters, A% is an integer, etc. Groups of variables can also be set to default types based on the initial letter of their name by use of the DEFINT, DEFSTR, etc., statements. The default type for undeclared variables not identified by such typing statements, is single-precision floating point (32-bit MBF).[5]

GW-BASIC allowed use of joystick and light pen input devices. GW-BASIC can read from and write to files and COM ports; it can also do event trapping for ports. Since the cassette port interface of the original IBM PC was never implemented on compatibles, cassette operations are not supported. GW-BASIC can play simple music using the PLAY statement, needing a string of notes represented in a music macro language, e.g., PLAY "edcdeeL2edfedL4c". More low-level control is possible with the SOUND statement, which takes the arguments of a frequency in hertz and a length in clock ticks for the standard internal PC speaker in IBM machines. Consequently, sound is limited to single channel beeps and whistles as befits a 'business' machine. Home-based PCs like the Tandy 1000 allowed up to three channels of sound for the SOUND and PLAY commands.[6]


Name

There are several theories on what the initials "GW" stand for. Greg Whitten, an early Microsoft employee who developed the standards in the company's BASIC compiler line, says Bill Gates picked the name GW-BASIC. Whitten refers to it as _Gee-Whiz_ BASIC and is unsure if Gates named the program after him.[7] The _Microsoft User Manual_ from Microsoft Press also refers to it by this name. It may have also been nicknamed _Gee-Whiz_ because it had a large number of graphics commands.[8] Other common theories as to the initials' origins include "Graphics and Windows", "Gates, William" (Microsoft's president at the time), or "Gates-Whitten" (the two main designers of the program).[9][10]


See also

-   Microsoft Binary Format (MBF)


References


External links

-   Classic Basic Games Page, a resource for BASIC games and other programs
-   Back to BASICs, another BASIC resource site
-   -   GW-BASIC User's Manual
-   Gary Beene's Information Center regarding BASIC, with timeline dates for DOS, Windows and BASIC dialects
-   GW-BASIC - Gee Whiz! Neil C. Obremski's site devoted to GW-BASIC.
-   PC-BASIC - a GW-BASIC emulator for modern operating systems.

Category:Discontinued Microsoft BASICs Category:Programming languages created in 1983 Category:BASIC interpreters

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