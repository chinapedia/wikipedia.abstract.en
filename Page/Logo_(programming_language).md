LOGO is an educational programming language, designed in 1967 by Wally Feurzeig, Seymour Papert, and Cynthia Solomon.[1] _Logo_ is not an acronym: the name was coined by Feurzeig while he was at Bolt, Beranek and Newman,[2] and derives from the Greek _logos_, meaning _word_ or _thought_.

A general-purpose language, Logo is widely known for its use of turtle graphics, in which commands for movement and drawing produced line or vector graphics, either on screen or with a small robot termed a turtle. The language was conceived to teach concepts of programming related to Lisp and only later to enable what Papert called "body-syntonic reasoning", where students could understand, predict, and reason about the turtle's motion by imagining what they would do if they were the turtle. There are substantial differences among the many dialects of Logo, and the situation is confused by the regular appearance of turtle graphics programs that are named Logo.

Logo is a multi-paradigm adaptation and dialect of Lisp, a functional programming language.[3] There is no standard Logo, but UCBLogo has the best facilities for handling lists, files, I/O, and recursion in scripts, and can be used to teach all computer science concepts, as UC Berkeley lecturer Brian Harvey did in his _Computer Science Logo Style_ trilogy.[4]

Logo is usually an interpreted language, although there have been developed compiled Logo dialects (such as Lhogho and Liogo). Logo is not case-sensitive but retains the case used for formatting.


History

Logo was created in 1967 at Bolt, Beranek and Newman (BBN), a Cambridge, Massachusetts research firm, by Wally Feurzeig, Cynthia Solomon, and Seymour Papert.[5] Its intellectual roots are in artificial intelligence, mathematical logic and developmental psychology. The first four years of Logo research, development and teaching work was done at BBN. The first implementation of Logo, called Ghost, was written in LISP on a PDP-1. The goal was to create a mathematical land where children could play with words and sentences.[6] Modeled on LISP, the design goals of Logo included accessible power and informative error messages. The use of virtual Turtles allowed for immediate visual feedback and debugging of graphic programming.

The first working Logo turtle robot was created in 1969. A display turtle preceded the physical floor turtle. Modern Logo has not changed too much from the basic concepts before the first turtle. The first turtle was a tethered floor roamer, not radio-controlled or wireless. At BBN Paul Wexelblat developed a turtle named Irving that had touch sensors and could move forwards, backwards, rotate, and ding its bell. The earliest year-long school users of Logo were in 1968-69 at Muzzey Jr High, Lexington MA. The virtual and physical turtles were first used by fifth-graders at the Bridge School in Lexington, MA in 1970-71.


Turtle and graphics

Logo's most-known feature is the turtle (derived originally from a robot of the same name),[7] an on-screen "cursor" that showed output from commands for movement and small retractable pen, together producing line graphics. It has traditionally been displayed either as a triangle or a turtle icon (though it can be represented by any icon). Turtle graphics were added to the Logo language by Seymour Papert in the late 1960s to support Papert's version of the turtle robot, a simple robot controlled from the user's workstation that is designed to carry out the drawing functions assigned to it using a small retractable pen set into or attached to the robot's body.

As a practical matter, the use of turtle geometry instead of a more traditional model mimics the actual movement logic of the turtle robot. The turtle moves with commands that are relative to its own position, _LEFT 90_ means spin left by 90 degrees. Some Logo implementations, particularly those that allow the use of concurrency and multiple turtles, support collision detection and allow the user to redefine the appearance of the turtle cursor, essentially allowing the Logo turtles to function as sprites.

Multiple turtles are supported by MSWLogo, as well as 3D graphics. Input from COM ports and LPT ports are also allowed by MSWLogo through windows GUI. Interrupts can be triggered via keyboard and mouse events. Simple GIF animations may also be produced on MSWLogo version 6.5 with the _gifsave_ command.

Turtle geometry is also sometimes used in environments other than Logo as an alternative to a strictly coordinate-addressed graphics system. For instance, the idea of turtle graphics is also useful in Lindenmayer system for generating fractals.


Implementations

IBM_LCSI_Logo_Welcome_Screen.png IBM_LCSI_Logo_Circles.png Some modern derivatives of Logo allow thousands of independently moving turtles. There are two popular implementations: Massachusetts Institute of Technology's StarLogo and Northwestern University Center for Connected Learning's (CCL) NetLogo. They allow exploring emergent phenomena and come with many experiments in social studies, biology, physics, and other areas. NetLogo is widely used in agent-based simulation in the biological and social sciences.

Although there is no one agreed-upon standard, there is a broad consensus on core aspects of the language. As of March 2009 there were 197 implementations and dialects of Logo, each with its own strengths.[8] Most of those 197 are no longer in wide use, but many are still under active development. Commercial Logos that are still widely used in schools include _MicroWorlds Logo_ and _Imagine Logo_.

-   Apple Logo for the Apple II Plus and Apple Logo Writer for the Apple IIe, developed by Logo Computer Systems, Inc. (LCSI), was the most broadly used and prevalent early implementation of Logo that peaked in the early to mid-1980s.
-   Atari Logo was released on cartridge by Atari for the Atari 8-bit family.
-   Color Logo was released in 1983 on cartridge (26-2722) and disk (26-2721) by Tandy for the TRS-80 Color Computer
-   Commodore Logo was released, with the subtitle "A Language for Learning", by Commodore Electronics. It was based on MIT Logo and enhanced by Terrapin, Inc. The Commodore 64 version (C64105) was released on diskette in 1983; the Plus/4 version (T263001) was released on cartridge in 1984.[9][10]
-   ExperLogo was released in 1985 on floppy by Expertelligence Inc. for the Macintosh 128K.
-   Hot-Logo was released in the mid-1980s by EPCOM for the MSX 8-bit computers with its own set of commands in Brazilian Portuguese.
-   TI Logo (for the TI 99/4A computer) was also used in primary schools, emphasizing Logo's usefulness in teaching computing fundamentals to novice programmers.
-   IBM marketed their own version of Logo (P/N 6024076), also developed by Logo Computer Systems, Inc. (LCSI), for their then-new IBM PC.
-   UCBLogo, also known as Berkeley Logo, is free and cross-platform standard Logo last released in 2009. Subsequently, George Mills at MIT used UCBLogo as the basis for _MSWLogo_ which is more refined and also free. After that, Jim Muller wrote a book, _The Great Logo Adventure_, which was a complete Logo manual and which used MSWLogo as the demonstration language. It is now out of print, but Jim has released all the files in pdf format. (Check the Logo Foundation website for details.) MSWLogo has evolved into FMSLogo: An Educational Programming Environment.
-   ObjectLOGO is a variant with object-oriented extensions.
-   aUCBLogo a rewrite and enhancement of UCBLogo.
-   Logo3D is a tridimensional version of Logo and can be found at .
-   Dr. Logo developed by Digital Research and distributed in computers including the Amstrad CPC.
-   Acornsoft Logo, released in 1985 for the BBC Micro and Acorn Electron.
-   In February 1990, _Electron User_ published Timothy Grantham's simple implementation of Logo for the Acorn Electron under the article "Talking Turtle".[11]
-   Work continues to be done in writing Logo implementations. In 2012, the LibreOffice team developed LibreLogo as an extension to some LibreOffice versions. This Logo is written in Python and allows vector graphics to be written in Writer. At least two web based Logos using Berkeley Logo, HTML5, CSS3 and JQuery can be found.
-   POOL is a dialect of LOGO with object-oriented extensions, implemented in 2014. POOL programs are compiled and run in the graphical IDE on Microsoft Windows. Simplified, cross-platform environment is also available for systems supporting .NET Framework.
-   QLogo is an open-source and cross-platform rewrite of UCBLogo with nearly full UCB compatibility that uses hardware-accelerated graphics.


Influence

Logo was a primary influence on the Smalltalk programming language. It is also the main influence on the Etoys educational programming environment and language, which is essentially a Logo written in Squeak (a variant of Smalltalk). Logo influenced the procedure/method model in AgentSheets and AgentCubes to program agents similar to the notion of a turtle in Logo. Logo provided the underlying language for Boxer. Boxer was developed at University of California, Berkeley and MIT and is based on a _literacy model_, making it easier to use for nontechnical people.

KTurtle is a variation of Logo implemented at Qt for the KDE environment loosely based on Logo.[12]

Another result of Logo's influence is the Kojo, a variant of Scala and Scratch educational programming language, which runs on Squeak, a variant of Smalltalk, which was inspired by Logo.

In 2015, Cubetto, an education robotics system for children 3 years and older, was developed through crowd-source funding. Cubetto was influenced both by LOGO and by Montessori. Cubetto features a small cubic Turtle that turns only through 90 degrees.[13] Cubetto has been described to be an update of button-box MIT LOGO system TORTIS.[14]


See also

-   AgentCubes
-   AgentSheets
-   UCBLogo
-   MSWLogo
-   MicroWorlds
-   StarLogo
-   NetLogo
-   LibreLogo a turtle graphics language without full UCB compatibility


References


Further reading

-   _The Great Logo Adventure_, Jim Muller, Doone Publications ; now out of print; downloadable free of charge in pdf form from The MSWLogo website, along with the freeware MSWLogo program
-   _To Artificial Intelligence_ (1976) Early AI textbook where Logo is used extensively. (Using the Edinburgh University dialect, AI2LOGO)
-   Turtle Geometry Abelson and diSessa
-   _Children Designers_, Idit Harel Caperton, Ablex Publishing Corporation . Available online
-   _Learning With Logo_, Daniel Watt, McGraw Hill, . Available Through Amazon
-   Teaching With Logo: Building Blocks For Learning, Molly Watt and Daniel Watt, Addison Wesley (now Pearson) 1986, Available through Amazon


External links

-   Logo Interpreter
-   papert: logo in your browser
-   Online PHP-based Logo Interpreter
-   [http://etl.ppp.uoa.gr/malt2/. MachineLab TurtleSphere (MaLT)] Online LOGO Interprepter with 3D graphics using three.js javascript library.
-   Vlad Tudor's Free Online Logo Interpreter using HTML5, CSS3 and JQuery
-   TurtleAcademy (Learn Logo for free)
-   XLogo4Schools is a revised version of XLogo
-   XLogoOnline is a modern, browser-based programming environment for the primary school. The programming language is a subset of the XLogo dialect. In addition to the online version, offline versions are available for Windows, macOS and Linux.
-   DR Logo at CPCWiki
-   WIN-LOGO 3.0 of a German Author in English and German language
-   POOL is a compiled LOGO dialect
-   QLogo
-   The microM8 Apple II emulator contains a three-dimensional update of the Apple Logo II interpreter called microLogo. There are versions for macOS, Linux and Windows.

Category:1967 in robotics Category:Dynamically typed programming languages Category:Domain-specific programming languages Category:Educational programming languages Category:Free educational software Category:Functional languages Category:Lisp programming language family Category:Logo programming language family Category:Programming languages created in 1967 Category:Robot programming languages

[1]

[2]

[3] CSLS Vol 1, Preface .pxvi, Harvey 1997

[4] _Computer Science Logo Style_, Brian Harvey, MIT Press (3 volumes) , , . Available online

[5]

[6]

[7]

[8]

[9]

[10]

[11] Talking Turtle page 20 and 21

[12]

[13]

[14]