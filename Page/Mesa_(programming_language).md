MESA[1] is a programming language developed in the late 1970s at the Xerox Palo Alto Research Center in Palo Alto, California, United States. The language name was a pun based upon the programming language catchphrases of the time, because Mesa is a "high level" programming language.

Mesa is an ALGOL-like language with strong support for modular programming. Every library module has at least two source files: a _definitions_ file specifying the library's interface plus one or more _program_ files specifying the implementation of the procedures in the interface.[2] To use a library, a program or higher-level library must "import" the definitions. The Mesa compiler type-checks all uses of imported entities; this combination of separate compilation with type-checking was unusual at the time.

Mesa introduced several other innovations in language design and implementation, notably in the handling of software exceptions, thread synchronization, and incremental compilation.

Mesa was developed on the Xerox Alto, one of the first personal computers with a graphical user interface, however most of the Alto's system software was written in BCPL. Mesa was the system programming language of the later Xerox Star workstations, and for the GlobalView desktop environment. Xerox PARC later developed Cedar, which was a superset of Mesa.

Mesa and Cedar had a major influence on the design of other important languages, such as Modula-2 and Java, and was an important vehicle for the development and dissemination of the fundamentals of GUIs, networked environments, and the other advances Xerox contributed to the field of computer science.


History

Mesa was originally designed in the Computer Systems Laboratory (CSL), a branch of the Xerox Palo Alto Research Center, for the Alto, an experimental micro-coded workstation. Initially its spread was confined to PARC and a few universities to which Xerox had donated some Altos.

Mesa was later adopted as the systems programming language for Xerox's commercial workstations such as the Xerox 8010 (Xerox Star, Dandelion) and Xerox 6085 (Daybreak), in particular for the Pilot operating system.

A secondary development environment, called the Xerox Development Environment (XDE) allowed developers to debug both the operating system Pilot as well as ViewPoint GUI applications using a world swap mechanism. This allowed the entire "state" of the world to be swapped out, and allowed low level system crashes which paralyzed the whole system to be debugged. This technique did not scale very well to large application images (several megabytes), and so the Pilot/Mesa world in later releases moved away from the world swap view when the micro-coded machines were phased out in favor of SPARC workstations and Intel PCs running a Mesa PrincOps emulator for the basic hardware instruction set.

Mesa was compiled into a stack-machine language, purportedly with the highest code density ever achieved (roughly 4 bytes per high-level language statement). This was touted in a 1981 paper where implementors from the Xerox Systems Development Department (then, the development arm of PARC), tuned up the instruction set and published a paper on the resultant code density.[3]

Mesa was taught via the Mesa Programming Course that took people through the wide range of technology Xerox had available at the time and ended with the programmer writing a "hack", a workable program designed to be useful. An actual example of such a hack is the BWSMagnifier, which was written in 1988 and allowed people to magnify sections of the workstation screen as defined by a resizable window and a changeable magnification factor. Trained Mesa programmers from Xerox were well versed in the fundamental of GUIs, networking, exceptions, and multi-threaded programming, almost a decade before they became standard tools of the trade.

Within Xerox, Mesa was eventually superseded by the Cedar programming language. Many Mesa programmers and developers left Xerox in 1985; some of them went to DEC Systems Research Center where they used their experience with Mesa in the design of Modula-2+, and later of Modula-3.


Main features

Semantics

Mesa was a strongly typed programming language with type-checking across module boundaries, but with enough flexibility in its type system that heap allocators could be written in Mesa.[4]

Because of its strict separation between interface and implementation, Mesa allows true incremental compilation and encourages architecture- and platform-independent programming. They also simplified source-level debugging, including remote debugging via the Ethernet.

Mesa had rich exception handling facilities, with four types of exceptions. It had support for thread synchronization via monitors. Mesa was the first language to implement monitor BROADCAST, a concept introduced by the Pilot operating system.[5]

Syntax

Mesa has an "imperative" and "algebraic" syntax, based on ALGOL and Pascal rather than on BCPL or C; for instance, compound commands are indicated by the and keywords rather than braces. In Mesa, all keywords are written in uppercase.[6]

Due to a peculiarity of the ASCII variant used at PARC, the Alto's character set included a left-pointing arrow (←) rather than an underscore. The result of this is that Alto programmers (including those using Mesa, Smalltalk etc.) conventionally used CamelCase for compound identifiers, a practice which was incorporated in PARC's standard programming style. On the other hand, the availability of the left-pointing arrow allowed them to use it for the assignment operator, as it originally had been in ALGOL.

When the Mesa designers wanted to implement an exception facility, they hired a recent M.S. graduate from Colorado who had written his thesis on exception handling facilities in algorithmic languages. This led to the richest exception facility for its time, with primitives , , , , , and . Because the language did not have type-safe checks to verify full coverage for signal handling, uncaught exceptions were a common cause of bugs in released software.


Cedar

Xerox PARC later developed Cedar, which was a superset of Mesa, with a number of additions including garbage collection; better string support, called ropes; and later a native compiler for Sun SPARC workstations. Most importantly, Cedar contained a type-safe subset and the compiler had a subset-checking mode to ensure deterministic execution and no memory leaks from conformant Cedar code.

Mesa was the precursor to the programming language Cedar.[7][8] Cedar's main additions were garbage collection, dynamic types, a limited form of type parameterization, and special syntax to identify the "type-safe" parts of a multi-module software package.


Descendants

-   The United States Department of Defense approached Xerox to use Mesa for its "IronMan" programming language, but Xerox declined due to conflicting goals. Xerox PARC employees argued that Mesa was a proprietary advantage that made Xerox software engineers more productive than engineers at other companies. The Department of Defense instead eventually chose and developed the Ada programming language from the candidates.
-   The original Star Desktop evolved into the ViewPoint Desktop and later became GlobalView which was ported to various Unix platforms, such as SunOS Unix and AIX. A Mesa to C compiler was written and the resulting code compiled for the target platform. This was a workable solution but made it nearly impossible to develop on the Unix machines since the power of the Mesa compiler and associated tool chain was lost using this approach. There was some commercial success on Sun SPARC workstations in the publishing world, but this approach resulted in isolating the product to narrow market opportunities.
-   In 1976, during a sabbatical at Xerox PARC, Niklaus Wirth became acquainted with Mesa, which had a major influence in the design of his Modula-2 language.[9]
-   Java explicitly refers to Mesa as a predecessor.[10]


See also

-   History of the graphical user interface


References


External links

-   Mesa Programming Language Manual, Version 5 (1979) at bitsavers.org
-   Other Mesa documents at bitsavers.org
-   World-Stop Debuggers, Don Gillies, Xerox SDD/ISD Employee, 1984-86.
-

Category:Xerox Category:Procedural programming languages Category:Concurrent programming languages Category:Programming languages created in 1976 Category:Statically typed programming languages Category:Systems programming languages

[1]

[2] Mesa Language Manual, chapter 7. (The Manual uses the term _module_ to mean a source file.)

[3]

[4]

[5]

[6]

[7]

[8]

[9] .

[10]