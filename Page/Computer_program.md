(1978)]]

A COMPUTER PROGRAM is a collection of instructions[1] that performs a specific task when executed by a computer. Most computer devices require programs to function properly.

A computer program is usually written by a computer programmer in a programming language. From the program in its human-readable form of source code, a compiler or assembler can derive machine code—a form consisting of instructions that the computer can directly execute. Alternatively, a computer program may be executed with the aid of an interpreter.

A collection of computer programs, libraries, and related data are referred to as software. Computer programs may be categorized along functional lines, such as application software and system software. The underlying method used for some calculation or manipulation is known as an algorithm.


History

Early programmable machines

The earliest programmable machines preceded the invention of the digital computer. In 1801, Joseph-Marie Jacquard devised a loom that would weave a pattern by following a series of perforated cards. Patterns could be woven and repeated by arranging the cards.[2]

Analytical Engine

]] In 1837, Charles Babbage was inspired by Jacquard's loom to attempt to build the Analytical Engine.[3] The names of the components of the calculating device were borrowed from the textile industry. In the textile industry, yarn was brought from the store to be milled. The device would have had a "store"—memory to hold 1,000 numbers of 40 decimal digits each. Numbers from the "store" would then have then been transferred to the "mill" (analogous to the CPU of a modern machine), for processing. And a "thread" being the execution of programmed instructions by the device. It was programmed using two sets of perforated cards—one to direct the operation and the other for the input variables.[4] [5] However, after more than 17,000 pounds of the British government's money, the thousands of cogged wheels and gears never fully worked together.[6]

During a nine-month period in 1842–43, Ada Lovelace translated the memoir of Italian mathematician Luigi Menabrea. The memoir covered the Analytical Engine. The translation contained Note G which completely detailed a method for calculating Bernoulli numbers using the Analytical Engine. This note is recognized by some historians as the world's first written computer program.[7]

Universal Turing machine

In 1936, Alan Turing introduced the Universal Turing machine—a theoretical device that can model every computation that can be performed on a Turing complete computing machine.[8] It is a finite-state machine that has an infinitely long read/write tape. The machine can move the tape back and forth, changing its contents as it performs an algorithm. The machine starts in the initial state, goes through a sequence of steps, and halts when it encounters the halt state.[9] This machine is considered by some to be the origin of the stored-program computer—used by John von Neumann (1946) for the "Electronic Computing Instrument" that now bears the von Neumann architecture name.[10]

Early programmable computers

The Z3 computer, invented by Konrad Zuse (1941) in Germany, was a digital and programmable computer.[11] A digital computer uses electricity as the calculating component. The Z3 contained 2,400 relays to create the circuits. The circuits provided a binary, floating-point, nine-instruction computer. Programming the Z3 was through a specially designed keyboard and punched tape.

The Electronic Numerical Integrator And Computer (Fall 1945) was a Turing complete, general-purpose computer that used 17,468 vacuum tubes to create the circuits. At its core, it was a series of Pascalines wired together.[12] Its 40 units weighed 30 tons, occupied , and consumed $650 per hour (in 1940s currency) in electricity when idle.[13] It had 20 base-10 accumulators. Programming the ENIAC took up to two months.[14] Three function tables were on wheels and needed to be rolled to fixed function panels. Function tables were connected to function panels using heavy black cables. Each function table had 728 rotating knobs. Programming the ENIAC also involved setting some of the 3,000 switches. Debugging a program took a week.[15] The programmers of the ENIAC were women who were known collectively as the "ENIAC girls."[16] The ENIAC featured parallel operations. Different sets of accumulators could simultaneously work on different algorithms. It used punched card machines for input and output, and it was controlled with a clock signal. It ran for eight years, calculating hydrogen bomb parameters, predicting weather patterns, and producing firing tables to aim artillery guns.

The Manchester Baby (June 1948) was a stored-program computer.[17] Programming transitioned away from moving cables and setting dials; instead, a computer program was stored in memory as numbers. Only three bits of memory were available to store each instruction, so it was limited to eight instructions. 32 switches were available for programming.

Later computers

3, manufactured in the mid-1970s]] Computers manufactured until the 1970s had front-panel switches for programming. The computer program was written on paper for reference. An instruction was represented by a configuration of on/off settings. After setting the configuration, an execute button was pressed. This process was then repeated. Computer programs also were manually input via paper tape or punched cards. After the medium was loaded, the starting address was set via switches and the execute button pressed.[18]

In 1961, the Burroughs B5000 was built specifically to be programmed in the ALGOL 60 language. The hardware featured circuits to ease the compile phase.[19]

In 1964, the IBM System/360 was a line of six computers each having the same instruction set architecture. The Model 30 was the smallest and least expensive. Customers could upgrade and retain the same application software.[20] Each System/360 model featured multiprogramming. With operating system support, multiple programs could be in memory at once. When one was waiting for input/output, another could compute. Each model also could emulate other computers. Customers could upgrade to the System/360 and retain their IBM 7094 or IBM 1401 application software.[21]


Computer programming

Computer programming is the process of writing or editing source code. Editing source code involves testing, analyzing, refining, and sometimes coordinating with other programmers on a jointly developed program. A person who practices this skill is referred to as a computer programmer, software developer, and sometimes coder.

The sometimes lengthy process of computer programming is usually referred to as software development. The term software engineering is becoming popular as the process is seen as an engineering discipline.

Programming languages

Computer programs can be categorized by the programming language paradigm used to produce them. Two of the main paradigms are imperative and declarative.

Imperative languages

_Imperative programming languages_ specify a sequential algorithm using declarations, expressions, and statements:[22]

-   A _declaration_ couples a variable name to a datatype – for example: var x: integer;
-   An _expression_ yields a value – for example: 2 + 2 yields 4
-   A _statement_ might assign an expression to a variable or use the value of a variable to alter the program's control flow – for example: x := 2 + 2; if x = 4 then do_something();

One criticism of imperative languages is the side effect of an assignment statement on a class of variables called non-local variables.[23]

Declarative languages

_Declarative programming languages_ describe _what_ computation should be performed and not _how_ to compute it. Declarative programs omit the control flow and are considered _sets_ of instructions. Two broad categories of declarative languages are functional languages and logical languages. The principle behind functional languages (like Haskell) is to not allow side effects, which makes it easier to reason about programs like mathematical functions.[24] The principle behind logical languages (like Prolog) is to define the problem to be solved – the goal – and leave the detailed solution to the Prolog system itself.[25] The goal is defined by providing a list of subgoals. Then each subgoal is defined by further providing a list of its subgoals, etc. If a path of subgoals fails to find a solution, then that subgoal is backtracked and another path is systematically attempted.

Compilation and interpretation

A computer program in the form of a human-readable, computer programming language is called source code. Source code may be converted into an executable image by a compiler or assembler, or executed immediately with the aid of an interpreter.

Compilers are used to translate source code from a programming language into either object code or machine code.[26] Object code needs further processing to become machine code, and machine code consists of the central processing unit's native instructions, ready for execution. Compiled computer programs are commonly referred to as executables, binary images, or simply as binaries – a reference to the binary file format used to store the executable code.

Some compiled and assembled object programs need to be combined as modules with a linker utility in order to produce an executable program.

Interpreters are used to execute source code from a programming language line-by-line. The interpreter decodes each statement and performs its behavior. One advantage of interpreters is that they can easily be extended to an interactive session. The programmer is presented with a prompt, and individual lines of code are typed in and performed immediately.

The main disadvantage of interpreters is computer programs run slower than when compiled. Interpreting code is slower because the interpreter must decode each statement and then perform it. However, software development may be faster using an interpreter because testing is immediate when the compiling step is omitted. Another disadvantage of interpreters is an interpreter must be present on the executing computer. By contrast, compiled computer programs need no compiler present during execution.

Just in time compilers pre-compile computer programs just before execution. For example, the Java virtual machine Hotspot contains a Just In Time Compiler which selectively compiles Java bytecode into machine code – but only code which Hotspot predicts is likely to be used many times.

Either compiled or interpreted programs might be executed in a batch process without human interaction.

Scripting languages are often used to create batch processes. One common scripting language is Unix shell, and its executing environment is called the command-line interface.

No properties of a programming language require it to be exclusively compiled or exclusively interpreted. The categorization usually reflects the most popular method of language execution. For example, Java is thought of as an interpreted language and C a compiled language, despite the existence of Java compilers and C interpreters.


Storage and execution

]]

Typically, computer programs are stored in non-volatile memory until requested either directly or indirectly to be executed by the computer user. Upon such a request, the program is loaded into random-access memory, by a computer program called an operating system, where it can be accessed directly by the central processor. The central processor then executes ("runs") the program, instruction by instruction, until termination. A program in execution is called a process.[27] Termination is either by normal self-termination, by user intervention, or by error – software or hardware error.

Simultaneous execution

Many operating systems support multitasking which enables many computer programs to appear to run simultaneously on one computer. Operating systems may run multiple programs through process scheduling – a software mechanism to switch the CPU among processes often so users can interact with each program while it runs.[28] Within hardware, modern day multiprocessor computers or computers with multicore processors may run multiple programs.[29]

Self-modifying programs

A computer program in execution is normally treated as being different from the data the program operates on. However, in some cases, this distinction is blurred when a computer program modifies itself. The modified computer program is subsequently executed as part of the same program. Self-modifying code is possible for programs written in machine code, assembly language, Lisp, C, COBOL, PL/1, and Prolog.


Functional categories

Computer programs may be categorized along functional lines. The main functional categories are application software and system software. System software includes the operating system which couples computer hardware with application software.[30] The purpose of the operating system is to provide an environment in which application software executes in a convenient and efficient manner.[31] In addition to the operating system, system software includes embedded programs, boot programs, and micro programs. Application software designed for end users have a user interface. Application software not designed for the end user includes middleware, which couples one application with another. Application software also includes utility programs. The distinction between system software and application software is under debate.

Application software

, a software calculator]]

There are many types of application software:

-   The word APP came to being in 21st century. It is a clipping of the word "application". They have been designed for many platforms, but the word was first used for smaller mobile apps. Desktop apps are traditional computer programs that run on desktop computers. Mobile apps run on mobile devices. Web apps run inside a web browser. Both mobile and desktop apps may be downloaded from the developers' website or purchased from app stores such as Microsoft Store, Apple App Store, Mac App Store, Google Play or Intel AppUp.
-   An APPLICATION SUITE consists of multiple applications bundled together. Examples include Microsoft Office, LibreOffice, and iWork. They bundle a word processor, spreadsheet, and other applications.
-   ENTERPRISE APPLICATIONS bundle accounting, personnel, customer, and vendor applications. Examples include enterprise resource planning, customer relationship management, and supply chain management software.
-   ENTERPRISE INFRASTRUCTURE SOFTWARE supports the enterprise's software systems. Examples include databases, email servers, and network servers.
-   INFORMATION WORKER SOFTWARE are designed for workers at the departmental level. Examples include time management, resource management, analytical, collaborative and documentation tools. Word processors, spreadsheets, email and blog clients, personal information system, and individual media editors may aid in multiple information worker tasks.
-   MEDIA DEVELOPMENT SOFTWARE generates print and electronic media for others to consume, most often in a commercial or educational setting. These produce graphics, publications, animations, and videos.
-   PRODUCT ENGINEERING SOFTWARE is used to help develop large machines and other application software. Examples includes computer-aided design (CAD), computer-aided engineering (CAE), and integrated development environments.
-   ENTERTAINMENT SOFTWARE can refer to video games, movie recorders and players, and music recorders and players.

Utility programs

Utility programs are application programs designed to aid system administrators and computer programmers.

Operating system

An operating system is a computer program that acts as an intermediary between a user of a computer and the computer hardware. [32]

In the 1950s, the programmer, who was also the operator, would write a program and run it.[33] After the program finished executing, the output may have been printed, or it may have been punched onto paper tape or cards for later processing.[34] More often than not the program did not work. [35] The programmer then looked at the console lights and fiddled with the console switches. If less fortunate, a memory printout was made for further study.[36] In the 1960s, programmers reduced the amount of wasted time by automating the operator's job.[37] A program called an _operating system_ was kept in the computer at all times.[38]

Originally, operating systems were programmed in assembly; however, modern operating systems are typically written in C.

Boot program

A stored-program computer requires an initial computer program stored in its read-only memory to boot. The boot process is to identify and initialize all aspects of the system, from processor registers to device controllers to memory contents.[39] Following the initialization process, this initial computer program loads the operating system and sets the program counter to begin normal operations.

Embedded programs

on the right of this USB flash drive is controlled with embedded firmware.]]

Independent of the host computer, a hardware device might have embedded firmware to control its operation. Firmware is used when the computer program is rarely or never expected to change, or when the program must not be lost when the power is off.[40]

Microcode programs

Microcode programs control some central processing units and some other hardware. This code moves data between the registers, buses, arithmetic logic units, and other functional units in the CPU. Unlike conventional programs, microcode is not usually written by, or even visible to, the end users of systems, and is usually provided by the manufacturer, and is considered internal to the device.


See also

-   Artificial intelligence
-   Automatic programming
-   Firmware
-   Killer application
-   Software
-   Software[41] bug


References


Further reading

-   -   -

Category:Computer programming Category:Articles with example Java code Category:Articles with example C code Category:Articles with example C Sharp code Category:Software Category:Mathematical and quantitative methods (economics)

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

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]