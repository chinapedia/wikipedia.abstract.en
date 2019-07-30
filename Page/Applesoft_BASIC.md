APPLESOFT BASIC is a dialect of Microsoft BASIC, developed by Marc McDonald and Ric Weiland, supplied with the Apple II series of computers. It supersedes Integer BASIC and is the BASIC in ROM in all Apple II series computers after the original Apple II model. It is also referred to as FP BASIC (from "floating point") because of the Apple DOS command used to invoke it, instead of INT for Integer BASIC.

Applesoft BASIC was supplied by Microsoft and its name is derived from the names of both Apple and Microsoft. Apple employees, including Randy Wigginton, adapted Microsoft's interpreter for the Apple II and added several features. The first version of Applesoft was released in 1977 on cassette tape and lacked proper support for high-resolution graphics. APPLESOFT II, which was made available on cassette and disk and in the ROM of the Apple II Plus and subsequent models, was released in 1978. It is this latter version, which has some syntax differences and support for the Apple II high-resolution graphics modes, that is usually synonymous with the term "Applesoft."

An Applesoft compiler, _TASC (The AppleSoft Compiler)_, was produced by Microsoft in 1981.[1]


History

When Steve Wozniak wrote Integer BASIC for the Apple II, he did not implement support for floating point math because he was primarily interested in writing games, a task for which integers alone were sufficient.[2] In 1976, Microsoft had developed Microsoft BASIC, a BASIC interpreter for the MOS Technology 6502, but at the time there was no production computer that used it. Upon learning that Apple had a 6502 machine, Microsoft asked if the company were interested in licensing BASIC, but Steve Jobs replied that Apple already had one.

The Apple II was unveiled to the public at the West Coast Computer Faire in April 1977 and became available for sale in June. One of the most common customer complaints about the computer was BASIC's lack of floating-point capability.[3] Integer BASIC is limited to whole numbers between −32768 and 32767 and caused problems for users attempting to write business applications with it. Steve Wozniak had never added floating point capabilities to Integer BASIC as he did not consider them necessary for gaming and educational software, the two primary tasks he envisioned for the Apple II. As Wozniak—the only person who understood Integer BASIC well enough to add floating point features—was busy with the Disk II drive and controller and with Apple DOS, Apple turned to Microsoft. Making things more problematic was that the rival Commodore PET personal computer had a floating point-capable BASIC interpreter from the beginning. The Applesoft license also saved Microsoft from near-bankruptcy when they licensed BASIC to Commodore for the PET in an agreement that proved unexpectedly costly for them.

Apple reportedly obtained an eight-year license for Applesoft BASIC from Microsoft for a flat fee of $31,000, renewing it in 1985 through an arrangement that gave Microsoft the rights and source code for Apple's Macintosh version of BASIC.[4] Applesoft was designed to be backwards-compatible with Integer BASIC and uses the core of Microsoft's 6502 BASIC implementation, which includes using the GET command for detecting key presses and not requiring any spaces on program lines. While Applesoft BASIC is slower than Integer BASIC, it has many features that the older BASIC lacks:

-   Atomic strings: A string is no longer an array of characters (as in Integer BASIC and C); it is instead a garbage-collected object (as in Scheme and Java). This allows for string arrays; resulted in a vector of _eleven_ string variables numbered 0–10.
-   Multidimensional arrays (numbers or strings)
-   Single-precision floating point variables with an 8-bit exponent and a 31-bit significand and improved math capabilities, including trigonometry and logarithmic functions
-   Commands for high-resolution graphics
-   DATA statements, with READ and RESTORE commands, for representing numerical and string values in quantity
-   CHR$, STR$, and VAL functions for converting between string and numeric types (both languages did have the ASC function)
-   User-defined functions: simple one-line functions written in BASIC, with a single parameter
-   Error-trapping, allowing BASIC programs to handle unexpected errors by means of a subroutine written in BASIC

Conversely, Applesoft lacks the MOD (remainder) operator that had been present in Integer BASIC.

Adapting BASIC for the Apple II was a tedious job as Apple received a source listing for Microsoft 6502 BASIC which proved to be buggy and also required the addition of Integer BASIC commands. Since Apple had no 6502 assembler on hand, the development team was forced to send the source code over the phone lines to Call Computer, an outfit that offered compiler services. This was an extremely tedious, slow process and after Call Computer lost the source code due to an equipment malfunction, one of the programmers, Cliff Huston, used his own IMSAI 8080 computer to cross assemble the BASIC source.[5]


Features

Applesoft is similar to Commodore's BASIC 2.0 aside from features inherited from Integer BASIC. There are a few minor differences such as Applesoft's lack of bitwise operators; otherwise most BASIC programs that do not utilize hardware-dependent features will run on both BASICs.

The PR# statement is used to redirect output to an expansion card, and IN# is used to redirect input from an expansion card. The slot number of the card is specified after the PR# or IN# within the statement. The computer will lock up if there is no card present in the slot and require a reboot. PR#0 will restore output to the 40 column screen and IN#0 to the keyboard.

The PR# statement can be used to redirect output to the printer (e.g. ) where x is the slot number containing the printer port card. To send a BASIC program listing to the printer, the user would type . After outputting to the printer, it is necessary to execute a PR#0 statement to reset output to the screen.

PR#6 will cause Applesoft to boot the disk drives (although the Disk II controller can be in any slot, it is usually in slot 6). PR#3 will switch to 80 column text mode if an 80 column card is present. 80 column cards also add 12 new control codes that can be generated with the CHR$ function. Enhanced Apple IIe and IIc models with the MouseText character set include another two control codes to enable and disable the feature.

As with Commodore BASIC, numeric variables are stored as 40-bit floating point; each variable requires five bytes of memory. The programmer may designate variables as integer by following them with a percent sign, in which case they use two bytes and are limited to a range of -32768 to 32767; however BASIC internally converts them back to floating point, while each percent sign also takes an additional byte of program code, so in practice this feature is only useful for reducing the memory usage of large array variables.

The RND function generates a pseudorandom fractional number between 0 and 1. returns the most recently generated random number. RND with a negative number will jump to a point in the sequence determined by the particular negative number used. RND with any positive value will generate a new random number from the sequence, not dependent on the actual value given. Random numbers are generated via a formula based on the previously generated value, and thus are not truly random. Locations $4E and $4F, which the system cycles the values of continuously while waiting for user keystrokes, can be PEEKed to provide truly random values to use as a seed (when negated) for RND.

Like other implementations of Microsoft BASIC, Applesoft discards spaces (outside of strings) on program lines. LIST adds spaces when displaying code for the sake of readability.

The default prompt for INPUT is a question mark. PRINT does not add a leading space in front of numbers.

Coleco claimed that its Adam home computer's SmartBASIC was source-code compatible with Applesoft.[6] Microsoft licensed a BASIC compatible with Applesoft to VTech for its Laser 128 clone.[7]

Limitations

Through several early models of the Apple II, Applesoft BASIC did not support the use of lowercase letters in programs, except in strings. (Thus, Applesoft can display lowercase letters, but cannot recognize them as part of a program; hence PRINT is a valid command but print and Print are unrecognizable and result in a syntax error.)

Applesoft lacks several commands and functions common to most of the non-6502 Microsoft BASIC interpreters, such as:

-   INSTR (search for a substring in a given string)
-   PRINT USING (formatting numbers in printed output)
-   INKEY$ (check for a keypress without stopping the program) although a PEEK location provides this functionality.
-   LPRINT (output printed content to a printer instead of the screen)

Applesoft, like Integer BASIC before it, does not come with any built-in commands for file or disk handling, other than a feature to save programs to, and load programs from, cassette tape. The Apple II disk operating system, known simply as DOS, augments the language to provide such abilities.

Unlike in Integer BASIC, Applesoft BASIC variable names are significant only to two letters; they can be made longer, but only the first two letters are used. For instance, "LOW" and "LOSS" are treated as the same variable, and attempting to assign a value to "LOSS" overwrites any value assigned to "LOW". Furthermore, because the language used tokenization, a programmer has to avoid using any consecutive letters that are also Applesoft commands or operations (one cannot use the name "SCORE" for a variable because it interprets the OR as a Boolean operator, thus rendering it SC OR E, nor can one use "BACKGROUND" because the command "GR" invokes the low-resolution graphics mode, in this case creating a syntax error).

Sound and graphics

The only sound support is the option to PRINT an ASCII bell character to sound the system alert beep, and a PEEK command to click the speaker. The language is not fast enough to produce more than a baritone buzz from repeated clicks. Programs can, however, store a machine-language routine to be called to generate electronic musical tones spanning several octaves.

Applesoft supports the Apple II lores graphics display, where 40 color "blocks" horizontally, and up to 48 blocks vertically, can be displayed in 16 colors, with commands to plot individual blocks and horizontal or vertical lines; as well as the hires mode, where six colors (a fixed subset of the lores palette of 16 colors) can be displayed in a resolution of 280 horizontally by 192 vertically (with some limitations on horizontal placement), with a command to draw points or any diagonal lines onscreen. Beginning with the Apple IIe, a new "double-high resolution" mode, based on a mode introduced on the Apple III computer, became available on machines with 128k of memory. This mode essentially duplicates the resolution of the original hires mode, but including all 16 colors of the lores palette. Applesoft, however, does not provide support for this mode, and must rely on supplemental machine-language routines in order to utilize it. Additional new graphics modes on the Apple IIgs are likewise not supported.

No provision exists for mixing text and graphics, except for the limited "hardware split screen" of the Apple II (four lines of text at the bottom of the screen).

Vector-based shape tables can be used to draw objects in hires graphics, but are slow in comparison to routines that draw bitmaps directly. They also only support the defining of horizontal and vertical lines. Diagonals and curves are not supported, although shapes can be drawn rotated to various angles, so that lines ostensibly defined as horizontal or vertical will appear diagonal. In addition, shapes can be drawn scaled up to larger sizes.

Extensions

Applesoft BASIC can be extended by two means: the ampersand (&) command and the USR() function. These are two features that call low-level machine-language routines stored in memory, which is useful for routines that need to be fast or require direct access to arbitrary functions or data in memory. The USR() function takes one numerical argument, and can be programmed to derive and return a calculated function value, to be used in a numerical expression. "&" is effectively a shorthand for CALL, with an address that is predefined.

Bugs

A deficiency in Applesoft's error-trapping with ONERR means that the system stack would not be reset if an error-handling routine did not invoke RESUME, potentially leading to a crash. Error-handling that does not employ RESUME can avoid the problem with a CALL -3288 or (equivalent) 62248 before exiting the routine.[8]

Performance

Wozniak originally referred to his Integer BASIC as "Game BASIC" (having written it so he could implement a _Breakout_ clone for his new computer).[9] Few action games were written in Applesoft BASIC, in large part because the use of floating-point numbers for all math operations degrades performance.

Applesoft BASIC programs are stored as a linked list of lines; a GOTO or GOSUB takes linear time. Some programs had the subroutines at the top to reduce the time for calling them.


Sample code

, with inverse video and bell character, run then listed]] Hello World in Applesoft BASIC can be entered as the following:

     10TEXT:HOME
     20?"HELLO WORLD"

Multiple commands can be included on the same line of code if separated by a colon (:). The ? can be used in Applesoft BASIC (and almost all versions of Microsoft BASIC) as a shortcut for "PRINT", though spelling out the word is not only acceptable but canonical—Applesoft converted "?" in entered programs to the same token as "PRINT" (thus no memory is actually saved by using "?"), thus either appears as "PRINT" when a program is listed. The program above appears in a LIST command as:

     10  TEXT : HOME
     20  PRINT "HELLO WORLD"

[10]

When Applesoft II BASIC was initially released in mid-1978, it came on cassette tape and could be loaded into memory via the Apple II's machine language monitor. When the enhanced Apple II+ replaced the original II in 1979, Applesoft was now included in ROM and automatically started on power-up if no bootable floppy disk was present. Conversely, Integer BASIC was now removed from ROM and turned into an executable file on the DOS 3.3 disk.


Early evolution

The original Applesoft, stored in RAM as documented in its Reference Manual of November 1977, has smaller interpreter code than the later Applesoft II, occupying 8½ kb of memory,[11] instead of the 10 kb used by the later Applesoft II. Consequently, it lacks a number of command features developed for the later, mainstream version:

-   All commands supporting Apple's "high resolution" graphics (9 total)
-   Error-trapping with ONERR...GOTO and RESUME
-   Machine-routine shorthand call "&"
-   Screen-clearing HOME (a call to a system ROM routine)
-   Text-output control NORMAL, INVERSE, FLASH and SPEED=
-   The print-space function SPC() is listed among reserved words in the manual, but is not otherwise documented (the TAB() print-function _is_ documented)
-   Cassette tape storage of numerical arrays: STORE and RECALL
-   Device response: WAIT

as well as several the later version would have, that had already been present in Apple's Integer BASIC:

-   Program-line deletion: DEL
-   Machine-routine access: CALL
-   Peripheral device access: IN# and PR# (although IN without "#" is listed among reserved words)
-   Memory range control: HIMEM: and LOMEM:
-   Execution tracking for debugging: TRACE and NOTRACE
-   Screen-positioning: HTAB and VTAB
-   Subroutine aborting POP
-   Functions PDL() to read the analog controllers, and SCRN() to read the low-resolution graphics screen (both accessing system ROM routines)

In addition, its low-resolution graphics commands have different names from their Integer BASIC/Applesoft II counterparts. All command names are of the form PLTx such that GR, COLOR=, PLOT, HLIN and VLIN are called PLTG, PLTC, PLTP, PLTH, and PLTV, respectively. The command for returning to text mode, known as TEXT in other versions, is simply TEX, and carries the proviso that it has to be the last statement in a program line.

Applesoft BASIC 1.x was closer to Microsoft's original 6502 BASIC code than the later Applesoft II; it retained the Memory Size? prompt and displayed a Microsoft copyright notice. To maintain consistency with Integer BASIC, the "Ok" prompt from Microsoft's code was replaced by a ] character. Applesoft 1.x also prompted the user upon loading if he wished to disable the REM statement and the LET keyword in assignment statements in exchange for lores graphics commands.

The USR() function is also defined differently, serving as a stand-in for the absent CALL command. Its argument is not for passing a numerical value to the machine-language routine, but is instead the call-address of the routine itself; there is no "hook" to pre-define the address. All of several examples in the manual use the function only to access "system monitor ROM" routines, or short user-routines to manipulate the ROM routines. No mention is made of any code to calculate the value returned by the function itself; the function is always shown being assigned to "dummy" variables, which, without action to set a value by user-code, just receive a meaningless value handed back to them. Even accessed ROM routines that return values (in examples, those that provide the service of PDL() and SCRN() functions) merely have their values stored, by user-routines, in locations that are separately PEEKed in a subsequent statement.

Unlike in Integer BASIC and Applesoft II, the Boolean operators AND, OR and NOT perform bitwise operations on 16-bit integer values. If they are given values outside that range, an error results.

The terms OUT and PLT (and the aforementioned IN) appear in the list of reserved words, but are not explained anywhere in the manual.


See also

-   ALF's Formula Transfer Link, speed enhancement for Applesoft BASIC
-   Chinese BASIC, a Chinese-localized version of Applesoft BASIC
-   Apple III BASICs from Apple and Microsoft


References


External links

-   Disassembled ROM
-   AppleSoft BASIC in JavaScript

Category:Apple II software Category:BASIC interpreters Category:Discontinued Microsoft BASICs

[1] TASC (The AppleSoft Compiler) Manual, 1981

[2]

[3]

[4] Herzfeld, Andy "MacBasic – The Sad Story of MacBasic". http://www.folklore.org/StoryView.py?project=Macintosh&story=MacBasic.txt . Folklore.org. 2014 February 12

[5]

[6]

[7]

[8] Applesoft BASIC Programmer's Reference Manual (for IIe only), Apple Computer, Inc., 1982

[9]

[10] This article includes text from Everything2, licensed under GFDL.

[11] Applesoft Extended Precision Floating Point Basic Language Reference Manual, Apple Computer, Inc., November 1977