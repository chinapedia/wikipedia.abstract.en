for a simple computer program written in the C programming language. When compiled and run, it will give the output "Hello, world!".]] A PROGRAMMING LANGUAGE is a formal language, which comprises a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.

Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Early ones preceded the invention of the digital computer, the first probably being the automatic flute player described in the 9th century by the brothers Musa in Baghdad, during the Islamic Golden Age.[1] Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[2] The programs for these machines (such as a player piano's scrolls) did not produce different behavior in response to different inputs or conditions.

Thousands of different programming languages have been created, and more are being created every year. Many programming languages are written in an imperative form (i.e., as a sequence of operations to perform) while other languages use the declarative form (i.e. the desired result is specified, not how to achieve it).

The description of a programming language is usually split into the two components of syntax (form) and semantics (meaning). Some languages are defined by a specification document (for example, the C programming language is specified by an ISO Standard) while other languages (such as Perl) have a dominant implementation that is treated as a reference. Some languages have both, with the basic language defined by a standard and extensions taken from the dominant implementation being common.


Definitions

A programming language is a notation for writing programs, which are specifications of a computation or algorithm.[3] Some authors restrict the term "programming language" to those languages that can express all possible algorithms.[4][5] Traits often considered important for what constitutes a programming language include:

Function and target
    A _computer programming language_ is a language used to write computer programs, which involves a computer performing some kind of computation[6] or algorithm and possibly control external devices such as printers, disk drives, robots,[7] and so on. For example, PostScript programs are frequently created by another program to control a computer printer or display. More generally, a programming language may describe computation on some, possibly abstract, machine. It is generally accepted that a complete specification for a programming language includes a description, possibly idealized, of a machine or processor for that language.[8] In most practical contexts, a programming language involves a computer; consequently, programming languages are usually defined and studied this way.[9] Programming languages differ from natural languages in that natural languages are only used for interaction between people, while programming languages also allow humans to communicate instructions to machines.

Abstractions
    Programming languages usually contain abstractions for defining and manipulating data structures or controlling the flow of execution. The practical necessity that a programming language support adequate abstractions is expressed by the abstraction principle.[10] This principle is sometimes formulated as a recommendation to the programmer to make proper use of such abstractions.[11]

Expressive power
    The theory of computation classifies languages by the computations they are capable of expressing. All Turing complete languages can implement the same set of algorithms. ANSI/ISO SQL-92 and Charity are examples of languages that are not Turing complete, yet often called programming languages.[12][13]

Markup languages like XML, HTML, or troff, which define structured data, are not usually considered programming languages.[14][15][16] Programming languages may, however, share the syntax with markup languages if a computational semantics is defined. XSLT, for example, is a Turing complete language entirely using XML syntax.[17][18][19] Moreover, LaTeX, which is mostly used for structuring documents, also contains a Turing complete subset.[20][21]

The term _computer language_ is sometimes used interchangeably with programming language.[22] However, the usage of both terms varies among authors, including the exact scope of each. One usage describes programming languages as a subset of computer languages.[23] Similarly, languages used in computing that have a different goal than expressing computer programs are generically designated computer languages. For instance, markup languages are sometimes referred to as computer languages to emphasize that they are not meant to be used for programming.[24]

Another usage regards programming languages as theoretical constructs for programming abstract machines, and computer languages as the subset thereof that runs on physical computers, which have finite hardware resources.[25] John C. Reynolds emphasizes that formal specification languages are just as much programming languages as are the languages intended for execution. He also argues that textual and even graphical input formats that affect the behavior of a computer are programming languages, despite the fact they are commonly not Turing-complete, and remarks that ignorance of programming language concepts is the reason for many flaws in input formats.[26]


History

Early developments

Very early computers, such as Colossus, were programmed without the help of a stored program, by modifying their circuitry or setting banks of physical controls.

Slightly later, programs could be written in machine language, where the programmer writes each instruction in a numeric form the hardware can execute directly. For example, the instruction to add the value in two memory location might consist of 3 numbers: an "opcode" that selects the "add" operation, and two memory locations. The programs, in decimal or binary form, were read in from punched cards, paper tape, magnetic tape or toggled in on switches on the front panel of the computer. Machine languages were later termed _first-generation programming languages_ (1GL).

The next step was development of so-called _second-generation programming languages_ (2GL) or assembly languages, which were still closely tied to the instruction set architecture of the specific computer. These served to make the program much more human-readable and relieved the programmer of tedious and error-prone address calculations.

The first _high-level programming languages_, or _third-generation programming languages_ (3GL), were written in the 1950s. An early high-level programming language to be designed for a computer was Plankalkül, developed for the German Z3 by Konrad Zuse between 1943 and 1945. However, it was not implemented until 1998 and 2000.[27]

John Mauchly's Short Code, proposed in 1949, was one of the first high-level languages ever developed for an electronic computer.[28] Unlike machine code, Short Code statements represented mathematical expressions in understandable form. However, the program had to be translated into machine code every time it ran, making the process much slower than running the equivalent machine code.

At the University of Manchester, Alick Glennie developed Autocode in the early 1950s. As a programming language, it used a compiler to automatically convert the language into machine code. The first code and compiler was developed in 1952 for the Mark 1 computer at the University of Manchester and is considered to be the first compiled high-level programming language.[29][30]

The second autocode was developed for the Mark 1 by R. A. Brooker in 1954 and was called the "Mark 1 Autocode". Brooker also developed an autocode for the Ferranti Mercury in the 1950s in conjunction with the University of Manchester. The version for the EDSAC 2 was devised by D. F. Hartley of University of Cambridge Mathematical Laboratory in 1961. Known as EDSAC 2 Autocode, it was a straight development from Mercury Autocode adapted for local circumstances and was noted for its object code optimisation and source-language diagnostics which were advanced for the time. A contemporary but separate thread of development, Atlas Autocode was developed for the University of Manchester Atlas 1 machine.

In 1954, FORTRAN was invented at IBM by John Backus. It was the first widely used high-level general purpose programming language to have a functional implementation, as opposed to just a design on paper.[31][32] It is still a popular language for high-performance computing[33] and is used for programs that benchmark and rank the world's fastest supercomputers.[34]

Another early programming language was devised by Grace Hopper in the US, called FLOW-MATIC. It was developed for the UNIVAC I at Remington Rand during the period from 1955 until 1959. Hopper found that business data processing customers were uncomfortable with mathematical notation, and in early 1955, she and her team wrote a specification for an English programming language and implemented a prototype.[35] The FLOW-MATIC compiler became publicly available in early 1958 and was substantially complete in 1959.[36] FLOW-MATIC was a major influence in the design of COBOL, since only it and its direct descendant AIMACO were in actual use at the time.[37]

Refinement

The increased use of high-level languages introduced a requirement for _low-level programming languages_ or _system programming languages_. These languages, to varying degrees, provide facilities between assembly languages and high-level languages. They can be used to perform tasks which require direct access to hardware facilities but still provide higher-level control structures and error-checking.

The period from the 1960s to the late 1970s brought the development of the major language paradigms now in use:

-   APL introduced _array programming_ and influenced functional programming.[38]
-   ALGOL refined both _structured procedural programming_ and the discipline of language specification; the "Revised Report on the Algorithmic Language ALGOL 60" became a model for how later language specifications were written.
-   Lisp, implemented in 1958, was the first dynamically typed _functional programming_ language.
-   In the 1960s, Simula was the first language designed to support _object-oriented programming_; in the mid-1970s, Smalltalk followed with the first "purely" object-oriented language.
-   C was developed between 1969 and 1973 as a system programming language for the Unix operating system and remains popular.[39]
-   Prolog, designed in 1972, was the first _logic programming_ language.
-   In 1978, ML built a polymorphic type system on top of Lisp, pioneering _statically typed functional programming_ languages.

Each of these languages spawned descendants, and most modern programming languages count at least one of them in their ancestry.

The 1960s and 1970s also saw considerable debate over the merits of _structured programming_, and whether programming languages should be designed to support it.[40] Edsger Dijkstra, in a famous 1968 letter published in the Communications of the ACM, argued that GOTO statements should be eliminated from all "higher level" programming languages.[41]

Consolidation and growth

The 1980s were years of relative consolidation. C++ combined object-oriented and systems programming. The United States government standardized Ada, a systems programming language derived from Pascal and intended for use by defense contractors. In Japan and elsewhere, vast sums were spent investigating so-called "fifth-generation" languages that incorporated logic programming constructs.[42] The functional languages community moved to standardize ML and Lisp. Rather than inventing new paradigms, all of these movements elaborated upon the ideas invented in the previous decades.

One important trend in language design for programming large-scale systems during the 1980s was an increased focus on the use of _modules_ or large-scale organizational units of code. Modula-2, Ada, and ML all developed notable module systems in the 1980s, which were often wedded to generic programming constructs.[43]

The rapid growth of the Internet in the mid-1990s created opportunities for new languages. Perl, originally a Unix scripting tool first released in 1987, became common in dynamic websites. Java came to be used for server-side programming, and bytecode virtual machines became popular again in commercial settings with their promise of "Write once, run anywhere" (UCSD Pascal had been popular for a time in the early 1980s). These developments were not fundamentally novel, rather they were refinements of many existing languages and paradigms (although their syntax was often based on the C family of programming languages).

Programming language evolution continues, in both industry and research. Current directions include security and reliability verification, new kinds of modularity (mixins, delegates, aspects), and database integration such as Microsoft's LINQ.

_Fourth-generation programming languages_ (4GL) are computer programming languages which aim to provide a higher level of abstraction of the internal computer hardware details than 3GLs. _Fifth-generation programming languages_ (5GL) are programming languages based on solving problems using constraints given to the program, rather than using an algorithm written by a programmer.


Elements

All programming languages have some primitive building blocks for the description of data and the processes or transformations applied to them (like the addition of two numbers or the selection of an item from a collection). These primitives are defined by syntactic and semantic rules which describe their structure and meaning respectively.

Syntax

of Python code with inset tokenization]] is often used to aid programmers in recognizing elements of source code. The language above is Python.]] A programming language's surface form is known as its syntax. Most programming languages are purely textual; they use sequences of text including words, numbers, and punctuation, much like written natural languages. On the other hand, there are some programming languages which are more graphical in nature, using visual relationships between symbols to specify a program.

The syntax of a language describes the possible combinations of symbols that form a syntactically correct program. The meaning given to a combination of symbols is handled by semantics (either formal or hard-coded in a reference implementation). Since most languages are textual, this article discusses textual syntax.

Programming language syntax is usually defined using a combination of regular expressions (for lexical structure) and Backus–Naur form (for grammatical structure). Below is a simple grammar, based on Lisp:

    expression ::= atom | list
    atom       ::= number | symbol
    number     ::= [+-]?['0'-'9']+
    symbol     ::= ['A'-'Z''a'-'z'].*
    list       ::= '(' expression* ')'

This grammar specifies the following:

-   an _expression_ is either an _atom_ or a _list_;
-   an _atom_ is either a _number_ or a _symbol_;
-   a _number_ is an unbroken sequence of one or more decimal digits, optionally preceded by a plus or minus sign;
-   a _symbol_ is a letter followed by zero or more of any characters (excluding whitespace); and
-   a _list_ is a matched pair of parentheses, with zero or more _expressions_ inside it.

The following are examples of well-formed token sequences in this grammar: 12345, () and (a b c232 (1)).

Not all syntactically correct programs are semantically correct. Many syntactically correct programs are nonetheless ill-formed, per the language's rules; and may (depending on the language specification and the soundness of the implementation) result in an error on translation or execution. In some cases, such programs may exhibit undefined behavior. Even when a program is well-defined within a language, it may still have a meaning that is not intended by the person who wrote it.

Using natural language as an example, it may not be possible to assign a meaning to a grammatically correct sentence or the sentence may be false:

-   "Colorless green ideas sleep furiously." is grammatically well-formed but has no generally accepted meaning.
-   "John is a married bachelor." is grammatically well-formed but expresses a meaning that cannot be true.

The following C language fragment is syntactically correct, but performs operations that are not semantically defined (the operation *p >> 4 has no meaning for a value having a complex type and p->im is not defined because the value of p is the null pointer):

    complex *p = NULL;
    complex abs_p = sqrt(*p >> 4 + p->im);

If the type declaration on the first line were omitted, the program would trigger an error on undefined variable "p" during compilation. However, the program would still be syntactically correct since type declarations provide only semantic information.

The grammar needed to specify a programming language can be classified by its position in the Chomsky hierarchy. The syntax of most programming languages can be specified using a Type-2 grammar, i.e., they are context-free grammars.[44] Some languages, including Perl and Lisp, contain constructs that allow execution during the parsing phase. Languages that have constructs that allow the programmer to alter the behavior of the parser make syntax analysis an undecidable problem, and generally blur the distinction between parsing and execution.[45] In contrast to Lisp's macro system and Perl's BEGIN blocks, which may contain general computations, C macros are merely string replacements and do not require code execution.[46]

Semantics

The term _semantics_ refers to the meaning of languages, as opposed to their form (syntax).

Static semantics

The static semantics defines restrictions on the structure of valid texts that are hard or impossible to express in standard syntactic formalisms.[47] For compiled languages, static semantics essentially include those semantic rules that can be checked at compile time. Examples include checking that every identifier is declared before it is used (in languages that require such declarations) or that the labels on the arms of a case statement are distinct.[48] Many important restrictions of this type, like checking that identifiers are used in the appropriate context (e.g. not adding an integer to a function name), or that subroutine calls have the appropriate number and type of arguments, can be enforced by defining them as rules in a logic called a type system. Other forms of static analyses like data flow analysis may also be part of static semantics. Newer programming languages like Java and C# have definite assignment analysis, a form of data flow analysis, as part of their static semantics.

Dynamic semantics

Once data has been specified, the machine must be instructed to perform operations on the data. For example, the semantics may define the strategy by which expressions are evaluated to values, or the manner in which control structures conditionally execute statements. The _dynamic semantics_ (also known as _execution semantics_) of a language defines how and when the various constructs of a language should produce a program behavior. There are many ways of defining execution semantics. Natural language is often used to specify the execution semantics of languages commonly used in practice. A significant amount of academic research went into formal semantics of programming languages, which allow execution semantics to be specified in a formal manner. Results from this field of research have seen limited application to programming language design and implementation outside academia.

Type system

A type system defines how a programming language classifies values and expressions into _types_, how it can manipulate those types and how they interact. The goal of a type system is to verify and usually enforce a certain level of correctness in programs written in that language by detecting certain incorrect operations. Any decidable type system involves a trade-off: while it rejects many incorrect programs, it can also prohibit some correct, albeit unusual programs. In order to bypass this downside, a number of languages have _type loopholes_, usually unchecked casts that may be used by the programmer to explicitly allow a normally disallowed operation between different types. In most typed languages, the type system is used only to type check programs, but a number of languages, usually functional ones, infer types, relieving the programmer from the need to write type annotations. The formal design and study of type systems is known as _type theory_.

Typed versus untyped languages

A language is _typed_ if the specification of every operation defines types of data to which the operation is applicable.[49] For example, the data represented by "this text between the quotes" is a string, and in many programming languages dividing a number by a string has no meaning and will not be executed. The invalid operation may be detected when the program is compiled ("static" type checking) and will be rejected by the compiler with a compilation error message, or it may be detected while the program is running ("dynamic" type checking), resulting in a run-time exception. Many languages allow a function called an exception handler to handle this exception and, for example, always return "-1" as the result.

A special case of typed languages are the _single-typed_ languages. These are often scripting or markup languages, such as REXX or SGML, and have only one data type–—most commonly character strings which are used for both symbolic and numeric data.

In contrast, an _untyped language_, such as most assembly languages, allows any operation to be performed on any data, generally sequences of bits of various lengths.[50] High-level untyped languages include BCPL, Tcl, and some varieties of Forth.

In practice, while few languages are considered typed from the type theory (verifying or rejecting all operations), most modern languages offer a degree of typing.[51] Many production languages provide means to bypass or subvert the type system, trading type-safety for finer control over the program's execution (see casting).

Static versus dynamic typing

In _static typing_, all expressions have their types determined prior to when the program is executed, typically at compile-time. For example, 1 and (2+2) are integer expressions; they cannot be passed to a function that expects a string, or stored in a variable that is defined to hold dates.[52]

Statically typed languages can be either _manifestly typed_ or _type-inferred_. In the first case, the programmer must explicitly write types at certain textual positions (for example, at variable declarations). In the second case, the compiler _infers_ the types of expressions and declarations based on context. Most mainstream statically typed languages, such as C++, C# and Java, are manifestly typed. Complete type inference has traditionally been associated with less mainstream languages, such as Haskell and ML. However, many manifestly typed languages support partial type inference; for example, C++, Java and C# all infer types in certain limited cases.[53] Additionally, some programming languages allow for some types to be automatically converted to other types; for example, an int can be used where the program expects a float.

_Dynamic typing_, also called _latent typing_, determines the type-safety of operations at run time; in other words, types are associated with _run-time values_ rather than _textual expressions_.[54] As with type-inferred languages, dynamically typed languages do not require the programmer to write explicit type annotations on expressions. Among other things, this may permit a single variable to refer to values of different types at different points in the program execution. However, type errors cannot be automatically detected until a piece of code is actually executed, potentially making debugging more difficult. Lisp, Smalltalk, Perl, Python, JavaScript, and Ruby are all examples of dynamically typed languages.

Weak and strong typing

_Weak typing_ allows a value of one type to be treated as another, for example treating a string as a number.[55] This can occasionally be useful, but it can also allow some kinds of program faults to go undetected at compile time and even at run time.

_Strong typing_ prevents these program faults. An attempt to perform an operation on the wrong type of value raises an error.[56] Strongly typed languages are often termed _type-safe_ or _safe_.

An alternative definition for "weakly typed" refers to languages, such as Perl and JavaScript, which permit a large number of implicit type conversions. In JavaScript, for example, the expression 2 * x implicitly converts x to a number, and this conversion succeeds even if x is null, undefined, an Array, or a string of letters. Such implicit conversions are often useful, but they can mask programming errors. _Strong_ and _static_ are now generally considered orthogonal concepts, but usage in the literature differs. Some use the term _strongly typed_ to mean _strongly, statically typed_, or, even more confusingly, to mean simply _statically typed_. Thus C has been called both strongly typed and weakly, statically typed.[57][58]

It may seem odd to some professional programmers that C could be "weakly, statically typed". However, notice that the use of the generic pointer, the VOID* pointer, does allow for casting of pointers to other pointers without needing to do an explicit cast. This is extremely similar to somehow casting an array of bytes to any kind of datatype in C without using an explicit cast, such as (int) or (char).

Standard library and run-time system

Most programming languages have an associated core library (sometimes known as the 'standard library', especially if it is included as part of the published language standard), which is conventionally made available by all implementations of the language. Core libraries typically include definitions for commonly used algorithms, data structures, and mechanisms for input and output.

The line between a language and its core library differs from language to language. In some cases, the language designers may treat the library as a separate entity from the language. However, a language's core library is often treated as part of the language by its users, and some language specifications even require that this library be made available in all implementations. Indeed, some languages are designed so that the meanings of certain syntactic constructs cannot even be described without referring to the core library. For example, in Java, a string literal is defined as an instance of the java.lang.String class; similarly, in Smalltalk, an anonymous function expression (a "block") constructs an instance of the library's BlockContext class. Conversely, Scheme contains multiple coherent subsets that suffice to construct the rest of the language as library macros, and so the language designers do not even bother to say which portions of the language must be implemented as language constructs, and which must be implemented as parts of a library.


Design and implementation

Programming languages share properties with natural languages related to their purpose as vehicles for communication, having a syntactic form separate from its semantics, and showing _language families_ of related languages branching one from another.[59][60] But as artificial constructs, they also differ in fundamental ways from languages that have evolved through usage. A significant difference is that a programming language can be fully described and studied in its entirety, since it has a precise and finite definition.[61] By contrast, natural languages have changing meanings given by their users in different communities. While constructed languages are also artificial languages designed from the ground up with a specific purpose, they lack the precise and complete semantic definition that a programming language has.

Many programming languages have been designed from scratch, altered to meet new needs, and combined with other languages. Many have eventually fallen into disuse. Although there have been attempts to design one "universal" programming language that serves all purposes, all of them have failed to be generally accepted as filling this role.[62] The need for diverse programming languages arises from the diversity of contexts in which languages are used:

-   Programs range from tiny scripts written by individual hobbyists to huge systems written by hundreds of programmers.
-   Programmers range in expertise from novices who need simplicity above all else, to experts who may be comfortable with considerable complexity.
-   Programs must balance speed, size, and simplicity on systems ranging from microcontrollers to supercomputers.
-   Programs may be written once and not change for generations, or they may undergo continual modification.
-   Programmers may simply differ in their tastes: they may be accustomed to discussing problems and expressing them in a particular language.

One common trend in the development of programming languages has been to add more ability to solve problems using a higher level of abstraction. The earliest programming languages were tied very closely to the underlying hardware of the computer. As new programming languages have developed, features have been added that let programmers express ideas that are more remote from simple translation into underlying hardware instructions. Because programmers are less tied to the complexity of the computer, their programs can do more computing with less effort from the programmer. This lets them write more functionality per time unit.[63]

Natural language programming has been proposed as a way to eliminate the need for a specialized language for programming. However, this goal remains distant and its benefits are open to debate. Edsger W. Dijkstra took the position that the use of a formal language is essential to prevent the introduction of meaningless constructs, and dismissed natural language programming as "foolish".[64] Alan Perlis was similarly dismissive of the idea.[65] Hybrid approaches have been taken in Structured English and SQL.

A language's designers and users must construct a number of artifacts that govern and enable the practice of programming. The most important of these artifacts are the language _specification_ and _implementation_.

Specification

The specification of a programming language is an artifact that the language users and the implementors can use to agree upon whether a piece of source code is a valid program in that language, and if so what its behavior shall be.

A programming language specification can take several forms, including the following:

-   An explicit definition of the syntax, static semantics, and execution semantics of the language. While syntax is commonly specified using a formal grammar, semantic definitions may be written in natural language (e.g., as in the C language), or a formal semantics (e.g., as in Standard ML[66] and Scheme[67] specifications).
-   A description of the behavior of a translator for the language (e.g., the C++ and Fortran specifications). The syntax and semantics of the language have to be inferred from this description, which may be written in natural or a formal language.
-   A _reference_ or _model_ implementation, sometimes written in the language being specified (e.g., Prolog or ANSI REXX[68]). The syntax and semantics of the language are explicit in the behavior of the reference implementation.

Implementation

An _implementation_ of a programming language provides a way to write programs in that language and execute them on one or more configurations of hardware and software. There are, broadly, two approaches to programming language implementation: _compilation_ and _interpretation_. It is generally possible to implement a language using either technique.

The output of a compiler may be executed by hardware or a program called an interpreter. In some implementations that make use of the interpreter approach there is no distinct boundary between compiling and interpreting. For instance, some implementations of BASIC compile and then execute the source a line at a time.

Programs that are executed directly on the hardware usually run much faster than those that are interpreted in software.[69]

One technique for improving the performance of interpreted programs is just-in-time compilation. Here the virtual machine, just before execution, translates the blocks of bytecode which are going to be used to machine code, for direct execution on the hardware.


Proprietary languages

Although most of the most commonly used programming languages have fully open specifications and implementations, many programming languages exist only as proprietary programming languages with the implementation available only from a single vendor, which may claim that such a proprietary language is their intellectual property. Proprietary programming languages are commonly domain specific languages or internal scripting languages for a single product; some proprietary languages are used only internally within a vendor, while others are available to external users.

Some programming languages exist on the border between proprietary and open; for example, Oracle Corporation asserts proprietary rights to some aspects of the Java programming language,[70] and Microsoft's C# programming language, which has open implementations of most parts of the system, also has Common Language Runtime (CLR) as a closed environment.[71]

Many proprietary languages are widely used, in spite of their proprietary nature; examples include MATLAB, VBScript, and Wolfram Language. Some languages may make the transition from closed to open; for example, Erlang was originally an Ericsson's internal programming language.[72]


Use

Thousands of different programming languages have been created, mainly in the computing field.[73] Software is commonly built with 5 programming languages or more.[74]

Programming languages differ from most other forms of human expression in that they require a greater degree of precision and completeness. When using a natural language to communicate with other people, human authors and speakers can be ambiguous and make small errors, and still expect their intent to be understood. However, figuratively speaking, computers "do exactly what they are told to do", and cannot "understand" what code the programmer intended to write. The combination of the language definition, a program, and the program's inputs must fully specify the external behavior that occurs when the program is executed, within the domain of control of that program. On the other hand, ideas about an algorithm can be communicated to humans without the precision required for execution by using pseudocode, which interleaves natural language with code written in a programming language.

A programming language provides a structured mechanism for defining pieces of data, and the operations or transformations that may be carried out automatically on that data. A programmer uses the abstractions present in the language to represent the concepts involved in a computation. These concepts are represented as a collection of the simplest elements available (called primitives).[75] _Programming_ is the process by which programmers combine these primitives to compose new programs, or adapt existing ones to new uses or a changing environment.

Programs for a computer might be executed in a batch process without human interaction, or a user might type commands in an interactive session of an interpreter. In this case the "commands" are simply programs, whose execution is chained together. When a language can run its commands through an interpreter (such as a Unix shell or other command-line interface), without compiling, it is called a scripting language.[76]

Measuring language usage

Determining which is the most widely used programming language is difficult since the definition of usage varies by context. One language may occupy the greater number of programmer hours, a different one has more lines of code, and a third may consume the most CPU time. Some languages are very popular for particular kinds of applications. For example, COBOL is still strong in the corporate data center, often on large mainframes;[77][78] Fortran in scientific and engineering applications; Ada in aerospace, transportation, military, real-time and embedded applications; and C in embedded applications and operating systems. Other languages are regularly used to write many different kinds of applications.

Various methods of measuring language popularity, each subject to a different bias over what is measured, have been proposed:

-   counting the number of job advertisements that mention the language[79]
-   the number of books sold that teach or describe the language[80]
-   estimates of the number of existing lines of code written in the language which may underestimate languages not often found in public searches[81]
-   counts of language references (i.e., to the name of the language) found using a web search engine.

Combining and averaging information from various internet sites, stackify.com reported the ten most popular programming languages as (in descending order by overall popularity): Java, C, C++, Python, C#, JavaScript, VB .NET, R, PHP, and MATLAB.[82]


Dialects, flavors and implementations

A DIALECT of a programming language or a data exchange language is a (relatively small) variation or extension of the language that does not change its intrinsic nature. With languages such as Scheme and Forth, standards may be considered insufficient, inadequate or illegitimate by implementors, so often they will deviate from the standard, making a new dialect. In other cases, a dialect is created for use in a domain-specific language, often a subset. In the Lisp world, most languages that use basic S-expression syntax and Lisp-like semantics are considered Lisp dialects, although they vary wildly, as do, say, Racket and Clojure. As it is common for one language to have several dialects, it can become quite difficult for an inexperienced programmer to find the right documentation. The BASIC programming language has many dialects.

The explosion of Forth dialects led to the saying "If you've seen one Forth... you've seen _one_ Forth."


Taxonomies

There is no overarching classification scheme for programming languages. A given programming language does not usually have a single ancestor language. Languages commonly arise by combining the elements of several predecessor languages with new ideas in circulation at the time. Ideas that originate in one language will diffuse throughout a family of related languages, and then leap suddenly across familial gaps to appear in an entirely different family.

The task is further complicated by the fact that languages can be classified along multiple axes. For example, Java is both an object-oriented language (because it encourages object-oriented organization) and a concurrent language (because it contains built-in constructs for running multiple threads in parallel). Python is an object-oriented scripting language.

In broad strokes, programming languages divide into _programming paradigms_ and a classification by _intended domain of use,_ with general-purpose programming languages distinguished from domain-specific programming languages. Traditionally, programming languages have been regarded as describing computation in terms of imperative sentences, i.e. issuing commands. These are generally called imperative programming languages. A great deal of research in programming languages has been aimed at blurring the distinction between a program as a set of instructions and a program as an assertion about the desired answer, which is the main feature of declarative programming.[83] More refined paradigms include procedural programming, object-oriented programming, functional programming, and logic programming; some languages are hybrids of paradigms or multi-paradigmatic. An assembly language is not so much a paradigm as a direct model of an underlying machine architecture. By purpose, programming languages might be considered general purpose, system programming languages, scripting languages, domain-specific languages, or concurrent/distributed languages (or a combination of these).[84] Some general purpose languages were designed largely with educational goals.[85]

A programming language may also be classified by factors unrelated to programming paradigm. For instance, most programming languages use English language keywords, while a minority do not. Other languages may be classified as being deliberately esoteric or not.


See also

-   Comparison of programming languages (basic instructions)
-   Comparison of programming languages
-   Computer programming
-   Computer science and Outline of computer science
-   Domain-specific language
-   Domain-specific modelling
-   Educational programming language
-   Esoteric programming language
-   Extensible programming
-   :Category:Extensible syntax programming languages
-   Invariant based programming
-   List of BASIC dialects
-   Lists of programming languages
-   List of programming language researchers
-   Programming languages used in most popular websites
-   Language-oriented programming
-   Logic programming
-   Literate programming
-   Metaprogramming
    -

-   Modeling language
-   Programming language theory
-   Pseudocode
-   -   Reflection
-   Scientific programming language
-   Scripting language
-   Software engineering and List of software engineering topics


References


Further reading

-   -   Raphael Finkel: _Advanced Programming Language Design_, Addison Wesley 1995.
-   Daniel P. Friedman, Mitchell Wand, Christopher T. Haynes: _Essentials of Programming Languages_, The MIT Press 2001.
-   Maurizio Gabbrielli and Simone Martini: "Programming Languages: Principles and Paradigms", Springer, 2010.
-   David Gelernter, Suresh Jagannathan: _Programming Linguistics_, The MIT Press 1990.
-   Ellis Horowitz (ed.): _Programming Languages, a Grand Tour_ (3rd ed.), 1987.
-   Ellis Horowitz: _Fundamentals of Programming Languages_, 1989.
-   Shriram Krishnamurthi: _Programming Languages: Application and Interpretation_, online publication.
-   Bruce J. MacLennan: _Principles of Programming Languages: Design, Evaluation, and Implementation_, Oxford University Press 1999.
-   John C. Mitchell: _Concepts in Programming Languages_, Cambridge University Press 2002.
-   Benjamin C. Pierce: _Types and Programming Languages_, The MIT Press 2002.
-   Terrence W. Pratt and Marvin V. Zelkowitz: _Programming Languages: Design and Implementation_ (4th ed.), Prentice Hall 2000.
-   Peter H. Salus. _Handbook of Programming Languages_ (4 vols.). Macmillan 1998.
-   Ravi Sethi: _Programming Languages: Concepts and Constructs_, 2nd ed., Addison-Wesley 1996.
-   Michael L. Scott: _Programming Language Pragmatics_, Morgan Kaufmann Publishers 2005.
-   Robert W. Sebesta: _Concepts of Programming Languages_, 9th ed., Addison Wesley 2009.
-   Franklyn Turbak and David Gifford with Mark Sheldon: _Design Concepts in Programming Languages_, The MIT Press 2009.
-   Peter Van Roy and Seif Haridi. _Concepts, Techniques, and Models of Computer Programming_, The MIT Press 2004.
-   David A. Watt. _Programming Language Concepts and Paradigms_. Prentice Hall 1990.
-   David A. Watt and Muffy Thomas. _Programming Language Syntax and Semantics_. Prentice Hall 1991.
-   David A. Watt. _Programming Language Processors_. Prentice Hall 1993.
-   David A. Watt. _Programming Language Design Concepts_. John Wiley & Sons 2004.


External links

Category:Programming language classification Programming_languages Category:Notation

[1]

[2] Ettinger, James (2004) _Jacquard's Web_, Oxford University Press

[3]

[4]

[5] In mathematical terms, this means the programming language is Turing-complete

[6] , "The scope of SIGPLAN is the theory, design, implementation, description, and application of computer programming languages – languages that permit the specification of a variety of different computations, thereby providing the user with significant control (immediate or delayed) over the computer's operation."

[7]

[8] R. Narasimahan, Programming Languages and Computers: A Unified Metatheory, pp. 189—247 in Franz Alt, Morris Rubinoff (eds.) Advances in computers, Volume 8, Academic Press, 1994, , p.193 : "a complete specification of a programming language must, by definition, include a specification of a processor—idealized, if you will—for that language." [the source cites many references to support this statement]

[9]

[10] David A. Schmidt, _The structure of typed programming languages_, MIT Press, 1994, , p. 32

[11]

[12]

[13] , "Charity is a categorical programming language...", "All Charity computations terminate."

[14] XML in 10 points W3C, 1999, "XML is not a programming language."

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22] Robert A. Edmunds, The Prentice-Hall standard glossary of computer terminology, Prentice-Hall, 1985, p. 91

[23] Pascal Lando, Anne Lapujade, Gilles Kassel, and Frédéric Fürst, _Towards a General Ontology of Computer Programs_ , ICSOFT 2007 , pp. 163–170

[24] S.K. Bajpai, _Introduction To Computers And C Programming_, New Age International, 2007, , p. 346

[25] R. Narasimahan, Programming Languages and Computers: A Unified Metatheory, pp. 189—247 in Franz Alt, Morris Rubinoff (eds.) Advances in computers, Volume 8, Academic Press, 1994, , p.215: "[...] the model [...] for computer languages differs from that [...] for programming languages in only two respects. In a computer language, there are only finitely many names—or registers—which can assume only finitely many values—or states—and these states are not further distinguished in terms of any other attributes. [author's footnote:] This may sound like a truism but its implications are far reaching. For example, it would imply that any model for programming languages, by fixing certain of its parameters or features, should be reducible in a natural way to a model for computer languages."

[26] John C. Reynolds, "Some thoughts on teaching programming and programming languages", _SIGPLAN Notices_, Volume 43, Issue 11, November 2008, p.109

[27] Rojas, Raúl, et al. (2000). "Plankalkül: The First High-Level Programming Language and its Implementation". Institut für Informatik, Freie Universität Berlin, Technical Report B-3/2000. (full text)

[28] Sebesta, W.S Concepts of Programming languages. 2006;M6 14:18 pp.44.

[29]

[30]

[31]

[32]

[33]

[34]

[35] Hopper (1978) p. 16.

[36] Sammet (1969) p. 316

[37] Sammet (1978) p. 204.

[38] Richard L. Wexelblat: _History of Programming Languages_, Academic Press, 1981, chapter XIV.

[39] . This comparison analyzes trends in number of projects hosted by a popular community programming repository. During most years of the comparison, C leads by a considerable margin; in 2006, Java overtakes C, but the combination of C/C++ still leads considerably.

[40]

[41]

[42] Tetsuro Fujise, Takashi Chikayama, Kazuaki Rokusawa, Akihiko Nakase (December 1994). "KLIC: A Portable Implementation of KL1" _Proc. of FGCS '94, ICOT_ Tokyo, December 1994. KLIC is a portable implementation of a concurrent logic programming language KL1.

[43]

[44]  Section 2.2: Pushdown Automata, pp.101–114.

[45] Jeffrey Kegler, "Perl and Undecidability ", _The Perl Review_. Papers 2 and 3 prove, using respectively Rice's theorem and direct reduction to the halting problem, that the parsing of Perl programs is in general undecidable.

[46] Marty Hall, 1995, Lecture Notes: Macros , PostScript version

[47]

[48] Michael Lee Scott, _Programming language pragmatics_, Edition 2, Morgan Kaufmann, 2006, , p. 18–19

[49]

[50]

[51]

[52]

[53] Specifically, instantiations of generic types are inferred for certain expression forms. Type inference in Generic Java—the research language that provided the basis for Java 1.5's bounded parametric polymorphism extensions—is discussed in two informal manuscripts from the Types mailing list: Generic Java type inference is unsound (Alan Jeffrey, 17 December 2001) and Sound Generic Java type inference (Martin Odersky, 15 January 2002). C#'s type system is similar to Java's, and uses a similar partial type inference scheme.

[54]

[55]

[56]

[57]

[58]

[59] Steven R. Fischer, _A history of language_, Reaktion Books, 2003, , p. 205

[60]

[61]

[62] IBM in first publishing PL/I, for example, rather ambitiously titled its manual _The universal programming language PL/I_ (IBM Library; 1966). The title reflected IBM's goals for unlimited subsetting capability: "PL/I is designed in such a way that one can isolate subsets from it satisfying the requirements of particular applications." (). Ada and UNCOL had similar early goals.

[63] Frederick P. Brooks, Jr.: _The Mythical Man-Month_, Addison-Wesley, 1982, pp. 93–94

[64] Dijkstra, Edsger W. On the foolishness of "natural language programming." EWD667.

[65]

[66]

[67]

[68] ANSI – Programming Language Rexx, X3-274.1996

[69]

[70] See: Oracle America, Inc. v. Google, Inc.

[71]  ComputerScience.org|work=ComputerScience.org|access-date=2018-05-13|language=en-US}}

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81] Bieman, J.M.; Murdock, V., Finding code on the World Wide Web: a preliminary investigation, Proceedings First IEEE International Workshop on Source Code Analysis and Manipulation, 2001

[82]

[83] Carl A. Gunter, _Semantics of Programming Languages: Structures and Techniques_, MIT Press, 1992, , p. 1

[84]

[85]