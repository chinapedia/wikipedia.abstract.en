Jedit_macro_recorder.png macro editor]] A MACRO (short for "macroinstruction", from Greek 'long') in computer science is a rule or pattern that specifies how a certain input sequence (often a sequence of characters) should be mapped to a replacement output sequence (also often a sequence of characters) according to a defined procedure. The mapping process that instantiates (transforms) a macro use into a specific sequence is known as _macro expansion_. A facility for writing macros may be provided as part of a software application or as a part of a programming language. In the former case, macros are used to make tasks using the application less repetitive. In the latter case, they are a tool that allows a programmer to enable code reuse or even to design domain-specific languages.

Macros are used to make a sequence of computing instructions available to the programmer as a single program statement, making the programming task less tedious and less error-prone.[1][2] (Thus, they are called "macros" because a "big" block of code can be expanded from a "small" sequence of characters.) Macros often allow positional or keyword parameters that dictate what the conditional assembler program generates and have been used to create entire programs or program suites according to such variables as operating system, platform or other factors. The term derives from "macro instruction", and such expansions were originally used in generating assembly language code.


Keyboard and mouse macros

KEYBOARD MACROS and MOUSE MACROS allow short sequences of keystrokes and mouse actions to transform into other, usually more time-consuming, sequences of keystrokes and mouse actions. In this way, frequently used or repetitive sequences of keystrokes and mouse movements can be automated. Separate programs for creating these macros are called macro recorders.

During the 1980s, macro programs – originally SmartKey, then SuperKey, KeyWorks, Prokey – were very popular, first as a means to automatically format screenplays, then for a variety of user input tasks. These programs were based on the TSR (terminate and stay resident) mode of operation and applied to all keyboard input, no matter in which context it occurred. They have to some extent fallen into obsolescence following the advent of mouse-driven user interface and the availability of keyboard and mouse macros in applications such as word processors and spreadsheets, making it possible to create application-sensitive keyboard macros.

Keyboard macros have in more recent times come to life as a method of exploiting the economy of massively multiplayer online role-playing games (MMORPGs). By tirelessly performing a boring, repetitive, but low risk action, a player running a macro can earn a large amount of the game's currency or resources. This effect is even larger when a macro-using player operates multiple accounts simultaneously, or operates the accounts for a large amount of time each day. As this money is generated without human intervention, it can dramatically upset the economy of the game. For this reason, use of macros is a violation of the TOS or EULA of most MMORPGs, and administrators of MMORPGs fight a continual war to identify and punish macro users.[3]

Application macros and scripting

Keyboard and mouse macros that are created using an application's built-in macro features are sometimes called APPLICATION MACROS. They are created by carrying out the sequence once and letting the application record the actions. An underlying macro programming language, most commonly a scripting language, with direct access to the features of the application may also exist.

The programmers' text editor, Emacs, (short for "editing macros") follows this idea to a conclusion. In effect, most of the editor is made of macros. Emacs was originally devised as a set of macros in the editing language TECO; it was later ported to dialects of Lisp.

Another programmers' text editor, Vim (a descendant of vi), also has full implementation of macros. It can record into a register (macro) what a person types on the keyboard and it can be replayed or edited just like VBA macros for Microsoft Office. Vim also has a scripting language called Vimscript[4] to create macros.

Visual Basic for Applications (VBA) is a programming language included in Microsoft Office from Office 97 through Office 2019 (although it was available in some components of Office prior to Office 97). However, its function has evolved from and replaced the macro languages that were originally included in some of these applications.

Macro virus

VBA has access to most Microsoft Windows system calls and executes when documents are opened. This makes it relatively easy to write computer viruses in VBA, commonly known as macro viruses. In the mid-to-late 1990s, this became one of the most common types of computer virus. However, during the late 1990s and to date, Microsoft has been patching and updating their programs. In addition, current anti-virus programs immediately counteract such attacks.


Parameterized macro

A PARAMETERIZED MACRO is a macro that is able to insert given objects into its expansion. This gives the macro some of the power of a function.

As a simple example, in the C programming language, this is a typical macro that is _not_ a parameterized macro:

 #define PI   3.14159

This causes the string "PI" to be replaced with "3.14159" wherever it occurs. It will always be replaced by this string, and the resulting string cannot be modified in any way. An example of a parameterized macro, on the other hand, is this:

 #define pred(x)  ((x)-1)

What this macro expands to depends on what argument _x_ is passed to it. Here are some possible expansions:

 pred(2)    →  ((2)   -1)
 pred(y+2)  →  ((y+2) -1)
 pred(f(5)) →  ((f(5))-1)

Parameterized macros are a useful source-level mechanism for performing in-line expansion, but in languages such as C where they use simple textual substitution, they have a number of severe disadvantages over other mechanisms for performing in-line expansion, such as inline functions.

The parameterized macros used in languages such as Lisp, PL/I and Scheme, on the other hand, are much more powerful, able to make decisions about what code to produce based on their arguments; thus, they can effectively be used to perform run-time code generation.


Text-substitution macros

Languages such as C and some assembly languages have rudimentary macro systems, implemented as preprocessors to the compiler or assembler. C preprocessor macros work by simple textual substitution at the token, rather than the character level. However, the macro facilities of more sophisticated assemblers, e.g., IBM High Level Assembler (HLASM) can't be implemented with a preprocessor; the code for assembling instructions and data is interspersed with the code for assembling macro invocations. A classic use of macros is in the computer typesetting system TeX and its derivatives, where most of the functionality is based on macros. MacroML is an experimental system that seeks to reconcile static typing and macro systems. Nemerle has typed syntax macros, and one productive way to think of these syntax macros is as a multi-stage computation. Other examples:

-   m4 is a sophisticated stand-alone macro processor.
-   TRAC
-   Macro Extension TAL, accompanying Template Attribute Language
-   SMX: for web pages
-   ML/1 (Macro Language One)
-   The General Purpose Macroprocessor is a contextual pattern matching macro processor, which could be described as a combination of regular expressions, EBNF and AWK
-   SAM76
-   troff and nroff: for typesetting and formatting Unix manpages.
-   CMS EXEC: for command-line macros and application macros
-   EXEC 2 in Conversational Monitor System (CMS): for command-line macros and application macros
-   CLIST in IBM's Time Sharing Option (TSO): for command-line macros and application macros
-   REXX: for command-line macros and application macros in, e.g., AmigaOS, CMS, OS/2, TSO
-   SCRIPT: for formatting documents
-   Various shells for, e.g., Linux

Some major applications have been written as text macro invoked by other applications, e.g., by XEDIT in CMS.

Embeddable languages

Some languages, such as PHP, can be embedded in free-format text, or the source code of other languages. The mechanism by which the code fragments are recognised (for instance, being bracketed by

and ?>) is similar to a textual macro language, but they are much more powerful, fully featured languages.


Procedural macros

Macros in the PL/I language are written in a subset of PL/I itself: the compiler executes "preprocessor statements" at compilation time, and the output of this execution forms part of the code that is compiled. The ability to use a familiar procedural language as the macro language gives power much greater than that of text substitution macros, at the expense of a larger and slower compiler.

Frame technology's frame macros have their own command syntax but can also contain text in any language. Each frame is both a generic component in a hierarchy of nested subassemblies, and a procedure for integrating itself with its subassembly frames (a recursive process that resolves integration conflicts in favor of higher level subassemblies). The outputs are custom documents, typically compilable source modules. Frame technology can avoid the proliferation of similar but subtly different components, an issue that has plagued software development since the invention of macros and subroutines.

Most assembly languages have less powerful procedural macro facilities, for example allowing a block of code to be repeated N times for loop unrolling; but these have a completely different syntax from the actual assembly language.


Syntactic macros

Macro systems—such as the C preprocessor described earlier—that work at the level of lexical tokens cannot preserve the lexical structure reliably. Syntactic macro systems work instead at the level of abstract syntax trees, and preserve the lexical structure of the original program. The most widely used implementations of syntactic macro systems are found in Lisp-like languages. These languages are especially suited for this style of macro due to their uniform, parenthesized syntax (known as S-expressions). In particular, uniform syntax makes it easier to determine the invocations of macros. Lisp macros transform the program structure itself, with the full language available to express such transformations. While syntactic macros are often found in Lisp-like languages, they are also available in other languages such as Prolog, Dylan, Scala, Nemerle, Rust, Elixir, Nim, Haxe,[5], and Julia. They are also available as third-party extensions to JavaScript,[6] C# and Python.[7].[8]

Early Lisp macros

Before Lisp had macros, it had so-called FEXPRs, function-like operators whose inputs were not the values computed by the arguments but rather the syntactic forms of the arguments, and whose output were values to be used in the computation. In other words, FEXPRs were implemented at the same level as EVAL, and provided a window into the meta-evaluation layer. This was generally found to be a difficult model to reason about effectively.[9]

In 1963, Timothy Hart proposed adding macros to Lisp 1.5 in AI Memo 57: MACRO Definitions for LISP.[10]

Anaphoric macros

An anaphoric macro is a type of programming macro that deliberately captures some form supplied to the macro which may be referred to by an anaphor (an expression referring to another). Anaphoric macros first appeared in Paul Graham's On Lisp and their name is a reference to linguistic anaphora—the use of words as a substitute for preceding words.

Hygienic macros

In the mid-eighties, a number of papers[11][12] introduced the notion of hygienic macro expansion (syntax-rules), a pattern-based system where the syntactic environments of the macro definition and the macro use are distinct, allowing macro definers and users not to worry about inadvertent variable capture (cf. referential transparency). Hygienic macros have been standardized for Scheme in the R5RS, R6RS, and R7RS standards. A number of competing implementations of hygienic macros exist such as syntax-rules, syntax-case, explicit renaming, and syntactic closures. Both syntax-rules and syntax-case have been standardized in the Scheme standards.

Recently, Racket has combined the notions of hygienic macros with a "tower of evaluators", so that the syntactic expansion time of one macro system is the ordinary runtime of another block of code,[13] and showed how to apply interleaved expansion and parsing in a non-parenthesized language.[14]

A number of languages other than Scheme either implement hygienic macros or implement partially hygienic systems. Examples include Scala, Rust, Elixir, Julia, Dylan, and Nemerle.

Applications

Evaluation order
    Macro systems have a range of uses. Being able to choose the order of evaluation (see lazy evaluation and non-strict functions) enables the creation of new syntactic constructs (e.g. control structures) indistinguishable from those built into the language. For instance, in a Lisp dialect that has cond but lacks if, it is possible to define the latter in terms of the former using macros. For example, Scheme has both continuations and hygienic macros, which enables a programmer to design their own control abstractions, such as looping and early exit constructs, without the need to build them into the language.

Data sub-languages and domain-specific languages
    Next, macros make it possible to define data languages that are immediately compiled into code, which means that constructs such as state machines can be implemented in a way that is both natural and efficient.[15]

Binding constructs
    Macros can also be used to introduce new binding constructs. The most well-known example is the transformation of let into the application of a function to a set of arguments.

Felleisen conjectures[16] that these three categories make up the primary legitimate uses of macros in such a system. Others have proposed alternative uses of macros, such as anaphoric macros in macro systems that are unhygienic or allow selective unhygienic transformation.

The interaction of macros and other language features has been a productive area of research. For example, components and modules are useful for large-scale programming, but the interaction of macros and these other constructs must be defined for their use together. Module and component-systems that can interact with macros have been proposed for Scheme and other languages with macros. For example, the Racket language extends the notion of a macro system to a syntactic tower, where macros can be written in languages including macros, using hygiene to ensure that syntactic layers are distinct and allowing modules to export macros to other modules.


Macros for machine-independent software

Macros are normally used to map a short string (macro invocation) to a longer sequence of instructions. Another, less common, use of macros is to do the reverse: to map a sequence of instructions to a macro string. This was the approach taken by the STAGE2 Mobile Programming System, which used a rudimentary macro compiler (called SIMCMP) to map the specific instruction set of a given computer to counterpart _machine-independent_ macros. Applications (notably compilers) written in these machine-independent macros can then be run without change on any computer equipped with the rudimentary macro compiler. The first application run in such a context is a more sophisticated and powerful macro compiler, written in the machine-independent macro language. This macro compiler is applied to itself, in a bootstrap fashion, to produce a compiled and much more efficient version of itself. The advantage of this approach is that complex applications can be ported from one computer to a very different computer with very little effort (for each target machine architecture, just the writing of the rudimentary macro compiler).[17][18] The advent of modern programming languages, notably C, for which compilers are available on virtually all computers, has rendered such an approach superfluous. This was, however, one of the first instances (if not the first) of compiler bootstrapping.


Assembly language

While _macro instructions_ can be defined by a programmer for any set of native assembler program instructions, typically macros are associated with macro libraries delivered with the operating system allowing access to operating system functions such as

-   peripheral access by access methods (including macros such as OPEN, CLOSE, READ and WRITE)
-   operating system functions such as ATTACH, WAIT and POST for subtask creation and synchronization.[19] Typically such macros expand into executable code, e.g., for the EXIT macroinstruction,
-   a list of _define constant_ instructions, e.g., for the DCB macro -- DTF (Define The File) for DOS[20] -- or a combination of code and constants, with the details of the expansion depending on the parameters of the macro instruction (such as a reference to a file and a data area for a READ instruction);
-   the executable code often terminated in either a _branch and link register_ instruction to call a routine, or a supervisor call instruction to call an operating system function directly.

In older operating systems such as those used on IBM mainframes, full operating system functionality was only available to assembler language programs, not to high level language programs (unless assembly language subroutines were used, of course), as the standard macro instructions did not always have counterparts in routines available to high-level languages.


History

In the mid-1950s, when assembly language programming was commonly used to write programs for digital computers, the use of MACRO INSTRUCTIONS was initiated for two main purposes: to reduce the amount of program coding that had to be written by generating several assembly language statements from one macro instruction and to enforce program writing standards, e.g. specifying input/output commands in standard ways.[21] Macro instructions were effectively a middle step between assembly language programming and the high-level programming languages that followed, such as FORTRAN and COBOL. Two of the earliest programming installations to develop "macro languages" for the IBM 705 computer were at Dow Chemical Corp. in Delaware and the Air Material Command, Ballistics Missile Logistics Office in California. A macro instruction written in the format of the target assembly language would be processed by a macro compiler, which was a pre-processor to the assembler, to generate one or more assembly language instructions to be processed next by the assembler program that would translate the assembly language instructions into machine language instructions.[22]

By the late 1950s the macro language was followed by the Macro Assemblers. This was a combination of both where one program served both functions, that of a macro pre-processor and an assembler in the same package.[23] This allowed assembly language programmers to implement their own macro-language and allowed limited portability of code between two machines running the same CPU but different operating systems, for example, early versions of MSDOS and CPM-86. The macro library would need to be written for each target machine but not the overall assembly language program. Note that more powerful macro assemblers allowed use of conditional assembly constructs in macro instructions that could generate different code on different machines or different operating systems, reducing the need for multiple libraries.

In the 1980s and early 1990s, desktop PCs were only running at a few MHz and assembly language routines were commonly used to speed up programs written in C, Fortran, Pascal and others. These languages, at the time, used different calling conventions. Macros could be used to interface routines written in assembly language to the front end of applications written in almost any language. Again, the basic assembly language code remained the same, only the macro libraries needed to be written for each target language.

In modern operating systems such as Unix and its derivatives, operating system access is provided through subroutines, usually provided by dynamic libraries. High-level languages such as C offer comprehensive access to operating system functions, obviating the need for assembler language programs for such functionality.


See also

-   Anaphoric macros
-   (the origin of the concept of macros)

-   Extensible programming
-   Hygienic macros
-   Programming by demonstration
-   String interpolation


References


External links

-   How to write Macro Instructions
-   Rochester Institute of Technology, Professors Powerpoint

Category:Programming constructs Category:Source code Category:Automation software

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

[12] 1 Clinger, Rees. "Macros that Work"

[13]

[14]

[15]

[16] 2, Matthias Felleisen, LL1 mailing list posting

[17]

[18]

[19]

[20]

[21]

[22]

[23]