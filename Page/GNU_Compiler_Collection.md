The GNU COMPILER COLLECTION (GCC) is a compiler system produced by the GNU Project supporting various programming languages. GCC is a key component of the GNU toolchain and the standard compiler for most projects related to GNU and Linux, the most notable is the Linux kernel. The Free Software Foundation (FSF) distributes GCC under the GNU General Public License (GNU GPL). GCC has played an important role in the growth of free software, as both a tool and an example.

When it was first released in 1987, GCC 1.0 was named the GNU C COMPILER since it only handled the C programming language.[1] It was extended to compile C++ in December of that year. Front ends were later developed for Objective-C, Objective-C++, Fortran, Java, Ada, and Go, among others.[2]

Version 4.5 of the OpenMP specification is now supported in the C and C++ compilers [3] and a "much improved" implementation of the OpenACC 2.0a specification[4] is also supported. By default, the current version supports _gnu++14_, a superset of C++14, and _gnu11_, a superset of C11, with strict standard support also available. It also provides experimental support for C++17 and later.

GCC has been ported to a wide variety of instruction set architectures, and is widely deployed as a tool in the development of both free and proprietary software. GCC is also available for most embedded systems, including ARM-based; AMCC, and Freescale Power ISA-based chips.[5] The compiler can target a wide variety of platforms.

As well as being the official compiler of the GNU operating system, GCC has been adopted as the standard compiler by many other modern Unix-like computer operating systems, including Linux and the BSD family, although FreeBSD and macOS have moved to the LLVM system.[6] Versions are also available for Microsoft Windows and other operating systems; GCC can compile code for Android and iOS.

GCC is still not able to produce reproducible builds, but patches are available and waiting to be merged.[7]


History

In an effort to bootstrap the GNU operating system, Richard Stallman asked Andrew S. Tanenbaum, the author of the Amsterdam Compiler Kit (also known as the _Free University_ Compiler Kit) for permission to use that software for GNU. When Tanenbaum advised him that the compiler was not free, and that only the _Free University_ kit was free, Stallman decided to write a new compiler.[8] Stallman's initial plan[9] was to rewrite an existing compiler from Lawrence Livermore Laboratory from Pastel to C with some help from Len Tower and others.[10] Stallman wrote a new C front end for the Livermore compiler, but then realized that it required megabytes of stack space, an impossibility on a 68000 Unix system with only 64 KB, and concluded he would have to write a new compiler from scratch.[11] None of the Pastel compiler code ended up in GCC, though Stallman did use the C front end he had written.[12]

GCC was first released March 22, 1987, available by FTP from MIT.[13] Stallman was listed as the author but cited others for their contributions, including Jack Davidson and Christopher Fraser for the idea of using RTL as an intermediate language, Paul Rubin for writing most of the preprocessor and Leonard Tower for "parts of the parser, RTL generator, RTL definitions, and of the Vax machine description."[14] Described as the "first free software hit" by Salus, the GNU compiler arrived just at the time when Sun Microsystems was unbundling its development tools from its operating system, selling them separately at a higher combined price than the previous bundle, which led many of Sun's users to buy or download GCC instead of the vendor's tools.[15] By 1990, GCC supported thirteen computer architectures, was outperforming several vendor compilers, was shipped by Data General and NeXT with their workstations and was used by Lotus Development Corporation.[16]

As GCC was licensed under the GPL, programmers wanting to work in other directions—particularly those writing interfaces for languages other than C—were free to develop their own fork of the compiler, provided they meet the GPL's terms, including its requirements to distribute source code. Multiple forks proved inefficient and unwieldy, however, and the difficulty in getting work accepted by the official GCC project was greatly frustrating for many.[17] The FSF kept such close control on what was added to the official version of GCC 2.x that GCC was used as one example of the "cathedral" development model in Eric S. Raymond's essay _The Cathedral and the Bazaar_.

In 1997, a group of developers formed Experimental/Enhanced GNU Compiler System (EGCS) to merge several experimental forks into a single project.[18][19] The basis of the merger was a GCC development snapshot taken between the 2.7 and 2.81 releases. Projects merged included g77 (Fortran), PGCC (P5 Pentium-optimized GCC), many C++ improvements, and many new architectures and operating system variants.[20] EGCS development proved considerably more vigorous than GCC development, so much so that the FSF officially halted development on their GCC 2.x compiler, blessed EGCS as the official version of GCC and appointed the EGCS project as the GCC maintainers in April 1999. With the release of GCC 2.95 in July 1999 the two projects were once again united.

GCC has since been maintained by a varied group of programmers from around the world under the direction of a steering committee.[21] It has been ported to more kinds of processors and operating systems than any other compiler.[22]

GCC has been ported to a wide variety of instruction set architectures, and is widely deployed as a tool in the development of both free and proprietary software. GCC is also available for most embedded systems, including Symbian (called _gcce_),[23] ARM-based; AMCC, and Freescale Power ISA-based chips.[24] The compiler can target a wide variety of platforms, including video game consoles such as the PlayStation 2,[25] Cell SPE of PlayStation 3[26] and Dreamcast.[27]


Design

, like e.g. the Linux Standard Base aims to procure, the compiler version is important.]]

GCC's external interface follows Unix conventions. Users invoke a language-specific driver program (gcc for C, g++ for C++, etc.), which interprets command arguments, calls the actual compiler, runs the assembler on the output, and then optionally runs the linker to produce a complete executable binary.

Each of the language compilers is a separate program that reads source code and outputs machine code. All have a common internal structure. A per-language front end parses the source code in that language and produces an abstract syntax tree ("tree" for short).

These are, if necessary, converted to the middle end's input representation, called _GENERIC_ form; the middle end then gradually transforms the program towards its final form. Compiler optimizations and static code analysis techniques (such as FORTIFY_SOURCE,[28] a compiler directive that attempts to discover some buffer overflows) are applied to the code. These work on multiple representations, mostly the architecture-independent GIMPLE representation and the architecture-dependent RTL representation. Finally, machine code is produced using architecture-specific pattern matching originally based on an algorithm of Jack Davidson and Chris Fraser.

GCC was written primarily in C except for parts of the Ada front end. The distribution includes the standard libraries for Ada, C++, and Java whose code is mostly written in those languages.[29] On some platforms, the distribution also includes a low-level runtime library, LIBGCC, written in a combination of machine-independent C and processor-specific machine code, designed primarily to handle arithmetic operations that the target processor cannot perform directly.[30]

In May 2010, the GCC steering committee decided to allow use of a C++ compiler to compile GCC.[31] The compiler was intended to be written in C plus a subset of features from C++. In particular, this was decided so that GCC's developers could use the destructors and generics features of C++.[32]

In August 2012, the GCC steering committee announced that GCC now uses C++ as its implementation language.[33] This means that to build GCC from sources, a C++ compiler is required that understands ISO/IEC C++03 standard.

Front ends

Each front end uses a parser to produce the abstract syntax tree of a given source file. Due to the syntax tree abstraction, source files of any of the different supported languages can be processed by the same back end. GCC started out using LALR parsers generated with Bison, but gradually switched to hand-written recursive-descent parsers; for C++ in 2004,[34] and for C and Objective-C in 2006.[35] Currently all front ends use hand-written recursive-descent parsers.

Until recently, the tree representation of the program was not fully independent of the processor being targeted.

The meaning of a tree was somewhat different for different language front ends, and front ends could provide their own tree codes. This was simplified with the introduction of GENERIC and GIMPLE, two new forms of language-independent trees that were introduced with the advent of GCC 4.0. GENERIC is more complex, based on the GCC 3.x Java front end's intermediate representation. GIMPLE is a simplified GENERIC, in which various constructs are _lowered_ to multiple GIMPLE instructions. The C, C++ and Java front ends produce GENERIC directly in the front end. Other front ends instead have different intermediate representations after parsing and convert these to GENERIC.

In either case, the so-called "gimplifier" then converts this more complex form into the simpler SSA-based GIMPLE form that is the common language for a large number of powerful language- and architecture-independent global (function scope) optimizations.

GENERIC and GIMPLE

_GENERIC_ is an intermediate representation language used as a "middle end" while compiling source code into executable binaries. A subset, called _GIMPLE_, is targeted by all the front ends of GCC.

The middle stage of GCC does all of the code analysis and optimization, working independently of both the compiled language and the target architecture, starting from the GENERIC[36] representation and expanding it to register transfer language (RTL). The GENERIC representation contains only the subset of the imperative programming constructs optimized by the middle end.

In transforming the source code to GIMPLE,[37] complex expressions are split into a three-address code using temporary variables. This representation was inspired by the SIMPLE representation proposed in the McCAT compiler[38] by Laurie J. Hendren[39] for simplifying the analysis and optimization of imperative programs.

Optimization

Optimization can occur during any phase of compilation; however, the bulk of optimizations are performed after the syntax and semantic analysis of the front end and before the code generation of the back end; thus a common, even though somewhat contradictory, name for this part of the compiler is the "middle end."

The exact set of GCC optimizations varies from release to release as it develops, but includes the standard algorithms, such as loop optimization, jump threading, common subexpression elimination, instruction scheduling, and so forth. The RTL optimizations are of less importance with the addition of global SSA-based optimizations on GIMPLE trees,[40] as RTL optimizations have a much more limited scope, and have less high-level information.

Some of these optimizations performed at this level include dead code elimination, partial redundancy elimination, global value numbering, sparse conditional constant propagation, and scalar replacement of aggregates. Array dependence based optimizations such as automatic vectorization and automatic parallelization are also performed. Profile-guided optimization is also possible.[41]

Back end

The GCC's back end is partly specified by preprocessor macros and functions specific to a target architecture, for instance to define its endianness, word size, and calling conventions. The front part of the back end uses these to help decide RTL generation, so although GCC's RTL is nominally processor-independent, the initial sequence of abstract instructions is already adapted to the target. At any moment, the actual RTL instructions forming the program representation have to comply with the machine description of the target architecture.

The machine description file contains RTL patterns, along with operand constraints, and code snippets to output the final assembly. The constraints indicate that a particular RTL pattern might only apply (for example) to certain hardware registers, or (for example) allow immediate operand offsets of only a limited size (_e.g._ 12, 16, 24, … bit offsets, etc.). During RTL generation, the constraints for the given target architecture are checked. In order to issue a given snippet of RTL, it must match one (or more) of the RTL patterns in the machine description file, and satisfy the constraints for that pattern; otherwise, it would be impossible to convert the final RTL into machine code.

Towards the end of compilation, valid RTL is reduced to a _strict_ form in which each instruction refers to real machine registers and a pattern from the target's machine description file. Forming strict RTL is a complicated task; an important step is register allocation, where real hardware registers are chosen to replace the initially assigned pseudo-registers. This is followed by a "reloading" phase; any pseudo-registers that were not assigned a real hardware register are 'spilled' to the stack, and RTL to perform this spilling is generated. Likewise, offsets that are too large to fit into an actual instruction must be broken up and replaced by RTL sequences that will obey the offset constraints.

In the final phase, the machine code is built by calling a small snippet of code, associated with each pattern, to generate the real instructions from the target's instruction set, using the final registers, offsets, and addresses chosen during the reload phase. The assembly-generation snippet may be just a string, in which case a simple string substitution of the registers, offsets, and/or addresses into the string is performed. The assembly-generation snippet may also be a short block of C code, performing some additional work, but ultimately returning a string containing the valid assembly code.

Features

Some features of GCC include:

-   Link-time optimization optimizes across object file boundaries to directly improve the linked binary. Link-time optimization relies on an intermediate file containing the serialization of some _Gimple_ representation included in the object file. The file is generated alongside the object file during source compilation. Each source compilation generates a separate object file and link-time helper file. When the object files are linked, the compiler is executed again and uses the helper files to optimize code across the separately compiled object files.
-   Plugins can extend the GCC compiler directly.[42] Plugins allow a stock compiler to be tailored to specific needs by external code loaded as plugins. For example, plugins can add, replace, or even remove middle-end passes operating on _Gimple_ representations.[43] Several GCC plugins have already been published, notably the GCC Python plugin, which links against libpython, and allows one to invoke arbitrary Python scripts from inside the compiler. The aim is to allow GCC plugins to be written in Python. The MELT plugin provides a high-level Lisp-like language to extend GCC.[44]
-   "C++ transactional memory when compiling with -fgnu-tm."[45][46]


Languages

The standard compiler releases since 7 include front ends for C (gcc), C++ (g++), Objective-C, Objective-C++, Fortran (gfortran), Ada (GNAT), and Go (gccgo).[47] A popular parallel language extension, OpenMP, is also supported. Version 5.0 added support for Cilk Plus, version 9.1 added support for D[48], and since version 5.1, there is preliminary support for OpenACC.[49] Versions prior to GCC 7 also supported Java (gcj), allowing compilation of Java to native machine code.[50]

The Fortran front end was g77 before version 4.0, which only supports FORTRAN 77. In newer versions, g77 is dropped in favor of the new GNU Fortran front end (retaining most of g77's language extensions) that supports Fortran 95 and large parts of Fortran 2003 and Fortran 2008 as well.[51][52] A front-end for CHILL was dropped due to a lack of maintenance.[53]

Third-party front ends exist for Pascal (gpc), Modula-2, Modula-3, PL/I and VHDL (ghdl).

A few experimental branches exist to support additional languages, such as the GCC UPC compiler[54] for Unified Parallel C.


Architectures

GCC target processor families as of version 4.3 include:

-   Alpha
-   ARM
-   AVR
-   Blackfin
-   Epiphany (GCC 4.8)
-   H8/300
-   HC12
-   IA-32 (x86)
-   IA-64 (Intel Itanium)
-   MIPS
-   Motorola 68000
-   PA-RISC
-   PDP-11
-   PowerPC
-   R8C / M16C / M32C
-   SPARC
-   SPU
-   SuperH
-   System/390 / zSeries
-   VAX
-   x86-64

Lesser-known target processors supported in the standard release have included:

-   68HC11
-   A29K
-   CR16
-   C6x
-   D30V
-   DSP16xx
-   ETRAX CRIS
-   FR-30
-   FR-V
-   Intel i960
-   IP2000
-   M32R
-   MCORE
-   MIL-STD-1750A
-   MMIX
-   MN10200
-   MN10300
-   Motorola 88000
-   NS32K
-   IBM ROMP
-   RL78
-   Stormy16
-   V850
-   Xtensa

Additional processors have been supported by GCC versions maintained separately from the FSF version:

-   Cortus APS3
-   ARC
-   AVR32
-   C166 and C167
-   D10V
-   EISC
-   eSi-RISC
-   Hexagon[55]
-   LatticeMico32
-   LatticeMico8
-   MeP
-   MicroBlaze
-   Motorola 6809
-   MSP430
-   NEC SX architecture[56]
-   Nios II and Nios
-   OpenRISC
-   PDP-10
-   PIC24/dsPIC
-   PIC32
-   Propeller
-   RISC-V
-   Saturn (HP48XGCC)
-   System/370
-   TIGCC (m68k variant)
-   TriCore
-   Z8000
-   ZPU

The gcj Java compiler can target either a native machine language architecture or the Java virtual machine's Java bytecode.[57] When retargeting GCC to a new platform, bootstrapping is often used.


Development

The current stable version of GCC is 9.1, which was released on May 5, 2019.[58]

As of version 4.8, GCC is implemented in C++.[59]

GCC 4.6 supports many new Objective-C features, such as declared and synthesized properties, dot syntax, fast enumeration, optional protocol methods, method/protocol/class attributes, class extensions and a new GNU Objective-C runtime API. It also supports the Go programming language and includes the libquadmath library, which provides quadruple-precision mathematical functions on targets supporting the __float128 datatype. The library is used to provide the REAL(16) type in GNU Fortran on such targets.

GCC uses many standard tools in its build, including Perl, Flex, Bison, and other common tools. In addition it currently requires three additional libraries to be present in order to build: GMP, MPC, and MPFR.

The trunk concentrates the major part of the development efforts, where new features are implemented and tested.


License

The _GCC runtime exception_ permits compilation of proprietary and free software programs with GCC and usage of free software plugins.[60] The availability of this exception does not imply any general presumption that third-party software is unaffected by the copyleft requirements of the license of GCC.


Uses

Several companies make a business out of supplying and supporting GCC ports to various platforms.[61]

-   Linux
-   Wind River Systems
-   Arm Holdings


See also

-   List of compilers
-   MinGW
-   C++ concepts, an extension of the C++ standard. This extension is supported exclusively by GCC.


References


Further reading

-   _Using the GNU Compiler Collection (GCC)_, Free Software Foundation, 2008.
-   _GNU Compiler Collection (GCC) Internals_, Free Software Foundation, 2008.
-   _An Introduction to GCC_, Network Theory Ltd., 2004 (Revised August 2005). .
-   Arthur Griffith, _GCC: The Complete Reference_. McGrawHill / Osborne, 2002. .


External links

Official

-   -   GCC Release Timeline
-   GCC Development Plan

Other

-   GCC optimisations
-   Collection of GCC 4.0.2 architecture and internals documents at I.I.T. Bombay
-   -   -   From Source to Binary: The Inner Workings of GCC, by Diego Novillo, _Red Hat Magazine_, December 2004
-   A 2003 paper on GENERIC and GIMPLE
-   Marketing Cygnus Support, an essay covering GCC development for the 1990s, with 30 monthly reports for in the "Inside Cygnus Engineering" section near the end
-   EGCS 1.0 announcement
-   EGCS 1.0 features list
-   Fear of Forking, an essay by Rick Moen recording seven well-known forks, including the GCC/EGCS one

Category:1987 software Category:C compilers Category:C++ compilers Category:Compilers Category:Cross-platform free software Category:Fortran compilers Category:Free compilers and interpreters Compiler Collection Category:Java development tools Category:Pascal compilers Category:Software that was rewritten in C++ Category:Free software programmed in C++ Category:Software using the GPL license Category:Unix programming tools

[1]

[2]

[3]

[4]

[5]

[6] http://llvm.org/Users.html

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14] {{ citation | last = Stallman | first = Richard M. | title = Using and Porting the GNU Compiler Collection (GCC) | chapter-url = https://gcc.gnu.org/onlinedocs/gcc-2.95.3/gcc_23.html | publisher = Free Software Foundation, Inc. | date = June 22, 2001 | orig-year = First published 1988 | chapter = Contributors to GNU CC | page = 7 | accessdate = June 18, 2015 |postscript=.}}

[15]

[16]

[17] {{ citation | last = Henkel-Wallace | first = David | title = A new compiler project to merge the existing GCC forks | url = https://gcc.gnu.org/news/announcement.html | date = August 15, 1997 | accessdate = May 25, 2012 |postscript=.}}

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26] https://gcc.gnu.org/wiki/CompileFarm

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

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58] https://www.gnu.org/software/gcc/releases.html

[59]

[60]

[61]