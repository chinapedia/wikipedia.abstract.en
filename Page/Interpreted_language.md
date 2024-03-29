An INTERPRETED LANGUAGE is a type of programming language for which most of its implementations execute instructions directly and freely, without previously compiling a program into machine-language instructions. The interpreter executes the program directly, translating each statement into a sequence of one or more subroutines, and then into another language (often machine code).

The terms _interpreted language_ and _compiled language_ are not well defined because, in theory, any programming language can be either interpreted or compiled. In modern programming language implementation, it is increasingly popular for a platform to provide both options.

Interpreted languages can also be contrasted with machine languages. Functionally, both execution and interpretation mean the same thing — fetching the next instruction/statement from the program and executing it. Although interpreted byte code is additionally identical to machine code in form and has an assembler representation, the term "interpreted" is practically reserved for "software processed" languages (by virtual machine or emulator) on top of the native (i.e. hardware) processor.

In principle, programs in many languages may be compiled or interpreted, emulated or executed natively, so this designation is applied solely based on common implementation practice, rather than representing an essential property of a language.

Many languages have been implemented using both compilers and interpreters, including BASIC, C, Lisp, Pascal, and Python. Java and C# are compiled into bytecode, the virtual-machine-friendly interpreted language. Lisp implementations can freely mix interpreted and compiled code.


Historical background

In the early days of computing, language design was heavily influenced by the decision to use compiling or interpreting as a mode of execution. For example, Smalltalk (1980), which was designed to be interpreted at run-time, allows generic objects to dynamically interact with each other.

Initially, interpreted languages were compiled line-by-line; that is, each line was compiled as it was about to be executed, and if a loop or subroutine caused certain lines to be executed multiple times, they would be recompiled every time. This has become much less common. Most so-called interpreted languages use an intermediate representation, which combines compiling and interpreting.

Examples include:

-   JavaScript
-   Python
-   BASIC
-   Forth

The intermediate representation can be compiled once and for all (as in Java), each time before execution (as in Perl or Ruby), or each time a change in the source is detected before execution (as in Python).


Advantages

Interpreting a language gives implementations some additional flexibility over compiled implementations. Features that are often easier to implement in interpreters than in compilers include:

-   platform independence (Java's byte code, for example)
-   reflection and reflective use of the evaluator (e.g. a first-order eval function)
-   dynamic typing
-   smaller executable program size (since implementations have flexibility to choose the instruction code)
-   dynamic scoping

Furthermore, source code can be read and copied, giving users more freedom.


Disadvantages

Disadvantages of interpreted languages are:

-   Without static type-checking, which is usually performed by a compiler, programs can be less reliable, because type checking eliminates a class of programming errors (though type-checking of the code can be done by using additional stand-alone tools. See TypeScript for instance)
-   Interpreters can be susceptible to Code injection attacks.
-   Slower execution compared to direct native machine code execution on the host CPU. A technique used to improve performance is just-in-time compilation which converts frequently executed sequences of interpreted instruction to host machine code. JIT is most often combined with compilation to byte-code as in Java.
-   Source code can be read and copied (e.g. JavaScript in web pages), or more easily reverse engineered through reflection in applications where intellectual property has a commercial advantage. In some cases, obfuscation is used as a partial defense against this.


List of frequently used interpreted languages

-   APL A vector oriented language using an unusual character set
    -   J An APL variant in which tacit definition provides some of the benefits of compiling
-   BASIC (although the original version, Dartmouth BASIC, was compiled, as are many modern BASICs)
-   Equation manipulation and solving systems
    -   GNU Octave
    -   Interactive Data Language (IDL)
    -   TK Solver
    -   Mathematica
    -   MATLAB
-   Euphoria Interpreted or compiled.
-   GameMaker Language Bytecode after GameMaker: Studio.
-   JavaScript
-   Forth
-   Lava
-   Lisp
    -   Logo
    -   Scheme
-   MUMPS
-   Perl
-   PHP
-   PostScript
-   PowerShell
-   Ruby
-   REXX
-   Seed7
-   Smalltalk
-   Spreadsheets
    -   Excel
-   S
    -   R
-   Tcl
    -   XOTcl
-   VBScript
-   XMLmosaic – an xml contained C# like programming language interpreted by a console application written in Visual Basic .NET[1]

Languages usually compiled to bytecode

Many languages are first compiled to bytecode. Ѕometimes, bytecode can also be compiled to a native binary using an AOT compiler or executed natively, by hardware processor.

-   AppleScript
-   Erlang (compiled into Erlang bytecode and interpreted by the BEAM VM)
    -   Elixir (runs on the Erlang VM)
-   Java (is compiled into Java bytecode to be interpreted by JVM)
    -   Clojure
    -   Groovy
    -   Kotlin
    -   ColdFusion
    -   Scala
-   .NET Framework languages (translated to bytecode, called CIL).
    -   C++/CLI
    -   C#
    -   Visual Basic .NET
    -   F#
-   Lisp
-   Lua
-   Pike
-   Python (compiled into Python bytecode and interpreted by CPython)
-   Squeak Smalltalk
-   Visual FoxPro


See also

-   List of interpreted languages
-   Compiled language
-   Executable
-   Managed code
-   Scripting language


Citation


References

-

Category:Programming language classification

[1]