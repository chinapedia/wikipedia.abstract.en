OBERON is a general-purpose programming language created in 1986 by Niklaus Wirth and the latest member of the Wirthian family of ALGOL-like languages (Euler, Algol-W, Pascal, Modula, and Modula-2).[1][2][3] Oberon was the result of a concentrated effort to increase the power of Modula-2, the direct successor of Pascal, and simultaneously to reduce its complexity. Its principal new feature is the concept of type extension of record types:[4] It permits the construction of new data types on the basis of existing ones and to relate them, deviating from the dogma of strictly static data typing. Type extension is Wirth's way of inheritance reflecting the viewpoint of the parent site. Oberon was developed as part of the implementation of the Oberon operating system at ETH Zurich in Switzerland. The name is from the moon of Uranus, Oberon.

Oberon is still maintained by Wirth and the latest language change is dated May 8, 2016.[5]


Design

Oberon is designed with a motto attributed to Albert Einstein in mind: “Make things as simple as possible, but not simpler.” The principal guideline was to concentrate on features that are basic and essential and to omit ephemeral issues. Another factor was recognition of the growth of complexity in languages such as C++ and Ada: in contrast to these, Oberon emphasizes the use of the library concept for extending the language. Enumeration and subrange types, which were present in Modula-2, have been removed; similarly, set types have been limited to small sets of integers, and the number of low-level facilities has been sharply reduced (most particularly, type transfer functions have been eliminated). Elimination of the remaining potentially-unsafe facilities concludes the most essential step toward obtaining a truly high-level language. Very close type-checking even across modules, strict index-checking at run time, null-pointer checking, and the safe type extension concept largely allow the programmer to rely on the language rules alone.

The intent of this strategy was to produce a language that is easier to learn, simpler to implement, and very efficient. Oberon compilers have been viewed as compact and fast, while providing adequate code quality compared to commercial compilers.[6]


Characteristics

The following features characterize the Oberon language:

-   Case sensitive syntax with uppercase keywords
-   Type-extension with type test
-   Modules and separate compilation
-   String operations
-   Isolation of unsafe code
-   Support for system programming


Object orientation

Oberon supports extension of record types for the construction of abstractions and heterogeneous structures. In contrast to the later dialects—Oberon-2 and Active Oberon—the original Oberon doesn't have a dispatch mechanism as a language feature but rather as programming technique or design pattern. This gives great flexibility in the OOP world. In the Oberon operating system two programming techniques have been used in conjunction for the dispatch call: Method suite and Message handler.

Method suite

In this technique a table of procedure variables is defined and a global variable of this type is declared in the extended module and assigned back in the generic module:

MODULE Figures; _(* Abstract module *)_
TYPE
   Figure*    = POINTER TO FigureDesc;
   Interface* = POINTER TO InterfaceDesc;
   InterfaceDesc* = RECORD
      draw*  : PROCEDURE (f : Figure);
      clear* : PROCEDURE (f : Figure);
      mark*  : PROCEDURE (f : Figure);
      move*  : PROCEDURE (f : Figure; dx, dy : INTEGER);
   END;
   FigureDesc* = RECORD
      if : Interface;
   END;
PROCEDURE Init* (f : Figure; if : Interface);
BEGIN
   f.if := if;
END Init;
PROCEDURE Draw* (f : Figure);
BEGIN
   f.if.draw(f);
END Draw;
_(* Other procedures here *)_
END Figures.

We extend the generic type Figure to a specific shape:

MODULE Rectangles;
IMPORT Figures;
TYPE
   Rectangle* = POINTER TO RectangleDesc;
   RectangleDesc* = RECORD
      (Figures.FigureDesc)
      x, y, w, h : INTEGER;
   END;
VAR
   if : Figures.Interface;
PROCEDURE New* (VAR r : Rectangle);
BEGIN
   NEW(r);
   Figures.Init(r, if);
END New;
PROCEDURE Draw* (f : Figure);
   VAR
      r : Rectangle;
BEGIN
   r := f(Rectangle); _(* f AS Rectangle *)_
   _(* ... *)_
END Draw;
(* Other procedures here *)
BEGIN _(* Module initialisation *)_
   NEW(if);
   if.draw  := Draw;
   if.clear := Clear;
   if.mark  := Mark;
   if.move  := Move;
END Rectangles.

Dynamic dispatch is only done via procedures in Figures module that is the generic module.

Message handler

This technique consists of replacing the set of methods with a single procedure, which discriminates among the various methods:

MODULE Figures; _(* Abstract module *)_
TYPE
   Figure*    = POINTER TO FigureDesc;
   Message*   = RECORD END;
   DrawMsg*   = RECORD (Message) END;
   ClearMsg*  = RECORD (Message) END;
   MarkMsg*   = RECORD (Message) END;
   MoveMsg*   = RECORD (Message) dx*, dy* : INTEGER END;
   Handler*   = PROCEDURE (f : Figure; VAR msg : Message);
   FigureDesc* = RECORD
      _(* Abstract *)_
      handle : Handler;
   END;
PROCEDURE Handle* (f : Figure; VAR msg : Message);
BEGIN
   f.handle(f, msg);
END Handle;
PROCEDURE Init* (f : Figure; handle : Handler);
BEGIN
   f.handle := handle;
END Init;
END Figures.

We extend the generic type Figure to a specific shape:

MODULE Rectangles;
IMPORT Figures;
TYPE
   Rectangle* = POINTER TO RectangleDesc;
   RectangleDesc* = RECORD
      (Figures.FigureDesc)
      x, y, w, h : INTEGER;
   END;
PROCEDURE Draw* (r : Rectangle);
BEGIN
  _(* ... *)_
END Draw;
_(* Other procedures here *)_
PROCEDURE Handle* (f: Figure; VAR msg: Figures.Message);
   VAR
      r : Rectangle;
BEGIN
   r := f(Rectangle);
   IF    msg IS Figures.DrawMsg THEN Draw(r)
   ELSIF msg IS Figures.MarkMsg THEN Mark(r)
   ELSIF msg IS Figures.MoveMsg THEN Move(r, msg(Figures.MoveMsg).dx, msg(Figures.MoveMsg).dy)
   ELSE  (* ignore *)
   END
END Handle;
PROCEDURE New* (VAR r : Rectangle);
BEGIN
   NEW(r);
   Figures.Init(r, Handle);
END New;
END Rectangles.

In the Oberon operating system both of these techniques are used for dynamic dispatch. The first one is used for a known set of methods; the second is used for any new methods declared in the extension module. For example, if the extension module Rectangles were to implement a new Rotate() procedure, within the Figures module it could only be called via a message handler.


Implementations and variants

Oberon

No-cost implementations of Oberon (the language) and Oberon (the operating system) can be found on the Internet (several are from ETHZ itself).

Oberon-2

A few changes were made to the first released specification (object-oriented programming features were added, the 'FOR' loop was reinstated, for instance); the result was OBERON-2, currently the most common implementation. There is a release called _Native Oberon_ which includes an operating system, and can directly boot on PC class hardware. A .NET implementation of Oberon with the addition of some minor .NET-related extensions has also been developed at ETHZ. In 1993 an ETHZ spin off company brought a dialect of Oberon-2 to the market with the name Oberon-L, which was renamed to Component Pascal in 1997.

Oberon-2 compilers maintained by ETH include versions for Microsoft Windows, Linux, Solaris, and classic Mac OS. Furthermore, there are implementations for various other operating systems, such as Atari-TOS or AmigaOS.

There is an Oberon-2 Lex scanner and Yacc parser by Stephen J Bevan of Manchester University, UK, based on the one in the Mössenböck and Wirth reference. It is at version 1.4.

There is also the Oxford Oberon-2 Compiler, which also understands Oberon-07 and Vishap Oberon. The latter is based on Josef Templ's Oberon to C transpiler called Ofront, which in turn is based on the OP2 Compiler developed by Regis Crelier at ETHZ .

Oberon-07

Oberon-07, defined by Niklaus Wirth in 2007 and revised in 2011, 2013, 2014, 2015 and 2016 is based on the original version of Oberon rather than Oberon-2. The main changes are: explicit numeric conversion functions (e.g. FLOOR and FLT) must be used, the LOOP and EXIT statements have been eliminated, WHILE statements have been extended, CASE statements can be used for type extension tests, RETURN statements can only be connected to the end of a function, imported variables and structured value parameters are read-only and arrays can be assigned without using COPY. For full details, see The Programming Language Oberon-07.

Oberon-07 compilers have been developed for use with several different computer systems. Wirth's compiler targets a RISC processor of his own design that was used to implement the 2013 version of the Project Oberon operating system on a Xilinx FPGA Spartan-3 board. Ports of the RISC processor to FPGA Spartan-6, Spartan-7, Artix-7 and a RISC emulator for Windows (compilable on Linux and OS X, as well as binaries available for Windows) also exist. OBNC compiles via C and can be used on any POSIX compatible operating system. The commercial Astrobe implementation targets 32-bit ARM Cortex-M3, M4 and M7 microcontrollers. The Patchouli compiler produces 64-bit Windows binaries. Oberon-07M produces 32-bit Windows binaries and implements revision 2008 of the language. Akron's produces binaries for both Windows and Linux. oberonjs translates Oberon to JavaScript, while oberonc is an implementation for the Java virtual machine.

Active Oberon

Active Oberon is yet another variant of Oberon, which adds objects (with object-centered access protection and local activity control), system-guarded assertions, preemptive priority scheduling and a changed syntax for methods (- type-bound procedures in the Oberon world). Objects may be active, which means that they may be threads or processes. Additionally, Active Oberon has a way to implement operators (including overloading), an advanced syntax for using arrays (see OberonX language extensions and Proceedings[7] of the 7th Joint Modular Languages Conference 2006 Oxford, UK), and knows about namespaces (see Proposal for Module Contexts). The operating system A2 - Bluebottle, especially the kernel, synchronizes and coordinates different active objects.

ETHZ has released Active Oberon which supports active objects, and the Bluebottle operating system and environment (JDK, HTTP, FTP, etc.) for the language. As with many prior designs from ETHZ, versions of both are available for download on the Internet. As this is written, both single and dual x86 CPUs and the StrongARM family are supported.

Related languages

Development has continued on languages in this family. A further extension of Oberon-2, originally named Oberon/L but later renamed to Component Pascal, was developed for Windows and classic Mac OS by Oberon microsystems, a commercial company spin-off from ETHZ, and for .NET by Queensland University of Technology. In addition, the Lagoona and Obliq languages carry the Oberon spirit into specialized areas.

Recent .NET development efforts at ETHZ have been focused on a new language called Zonnon. This includes the features of Oberon and restores some from Pascal (enumerated types, built-in IO) but has some syntactic differences. Additional features include support for active objects, operator overloading and exception handling. Zonnon is available as a plug-in language for the Microsoft Visual Studio for .NET development environment.

Oberon-V (originally called Seneca, after Seneca the Younger) is a descendant of Oberon designed for numerical applications on supercomputers, especially vector or pipelined architectures. It includes array constructors and an ALL statement. (See "Seneca - A Language for Numerical Applications on Vectorcomputers", Proc CONPAR 90 - VAPP IV Conf. R. Griesemer, Diss Nr. 10277, ETH Zurich.)


See also

-   Oberon (operating system)
-   Bluebottle OS
-   Oberon on Wikibooks


References


External links

General

-   _Niklaus Wirth's Oberon Page_ at ETH-Zürich
-   _Oberon Page_ at ETH-Zürich
-   _Oberon Page_ at SSW, Linz
-   _Oberon: The Programming Language_ at Ulm
-   _Project Oberon, The Design of an Operating System and a Compiler_, book in PDF by Niklaus Wirth and Jürg Gutknecht, 2005 Edition
-   _Oberon Language Genealogy_
-   _Astrobe_ ARM Oberon-07 Development System
-   _Oberon System V4 for HP OpenVMS Alpha_ with source code upward-compatible 64 bit addressing
-   _64 bit Oberon-2 compiler_ for HP OpenVMS Alpha
-   _Oxford Oberon-2 Compiler_ and its User Manual

Evolution of Oberon

-   _Modula-2 and Oberon_ Wirth (2005)
-   _The Programming Language Oberon_ Wirth, (1988/90)
-   _The Programming Language Oberon (Oberon-7, Revised Oberon)_ Wirth, (2016, most current language report)
-   _Differences between Oberon-07 and Oberon_ Wirth (2011)
-   _The Programming Language Oberon-2_ H. Mössenböck, N. Wirth, Institut für Computersysteme, ETH Zürich, January 1992
-   _Differences between Oberon and Oberon-2_ Mössenböck and Wirth (1991)
-   _What's New in Component Pascal_ (Changes from Oberon-2 to CP), Pfister (2001)

ja:Oberon

Category:Modula programming language family Category:Class-based programming languages Category:Procedural programming languages Category:Oberon programming language family Category:Systems programming languages Category:Programming languages created in 1986 Category:Statically typed programming languages

[1] Wirth, Niklaus: The Programming Language Oberon. Software - Practice and Experience, 18:7, 661-670, Jul. 1988

[2] Wirth, Niklaus: From Modula to Oberon. Software - Practice and Experience, 18:7, 671-690, Jul. 1988

[3] Wirth, Niklaus: Type Extensions. ACM Transactions on Programming Languages, 10:2, 204-214, Apr. 1988

[4] D. Pountain, Modula's Children, Part II: Oberon - BYTE 16(3), 135-142, Mar. 1991.

[5]

[6]

[7]