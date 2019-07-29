EUPHORIA is a programming language originally created by Robert Craig of Rapid Deployment Software[1] in Toronto, Ontario, Canada. Initially developed (though not publicly released) on the Atari ST,[2] the first commercial release[3] was for the 16-bit DOS platform and was proprietary. In 2006, with the release of version 3,[4] Euphoria became open-source software. The openEuphoria Group continues to administer and develop the project.[5] In December 2010, the openEuphoria Group released version 4[6] of openEuphoria along with a new identity and mascot for the project. OpenEuphoria is currently available for Windows, Linux, macOS and three flavors of *BSD.

Euphoria is a general-purpose high-level imperative-procedural interpreted language. A translator generates C source code and the GNU compiler collection (GCC) and Open Watcom compilers are supported. Alternatively, Euphoria programs may be bound[7] with the interpreter to create stand-alone executables. A number of graphical user interface (GUI) libraries are supported including Win32lib[8] and wrappers for wxWidgets,[9] GTK+[10] and IUP.[11] Euphoria has a simple built-in database[12] and wrappers for a variety of other databases.[13]


Overview

The Euphoria language is a general purpose procedural language that focuses on simplicity, legibility, rapid development and performance via several means.

-   _Simplicity_ – It uses just four built-in data types (see below) and implements automatic garbage collection.
-   _Legibility_ – The syntax favors simple English keywords over the use of punctuation to delineate constructs.
-   _Rapid development_ – An interpreter encourages prototyping and incremental development.
-   _Performance_ – An efficient reference-counting garbage collector correctly handles cyclic references.


History

Developed as a personal project to invent a programming language from scratch, Euphoria was created by Robert Craig[14] on an Atari Mega-ST.[15] Many design ideas for the language came from Craig's Master's thesis in computer science at the University of Toronto.[16] Craig's thesis was heavily influenced by the work of John Backus on functional programming (FP) languages.[17]

Craig ported his original Atari implementation to the 16-bit DOS platform and Euphoria was first released, version 1.0, in July 1993[18] under a proprietary licence. The original Atari implementation is described by Craig as "primitive"[19] and has not been publicly released. Euphoria continued to be developed and released by Craig via his company Rapid Deployment Software (RDS) and website rapideuphoria.com.[20] In October 2006 RDS released version 3[21] of Euphoria and announced that henceforth Euphoria would be freely distributed under an open-source software licence.

RDS continued to develop Euphoria, culminating with the release of version 3.1.1 in August, 2007.[22][23] Subsequently, RDS ceased unilateral development of Euphoria and the openEuphoria Group[24] took over ongoing development. The openEuphoria Group released version 4 in December, 2010[25] along with a new logo and mascot for the openEuphoria project.

Version 3.1.1 remains an important milestone release, being the last version of Euphoria which supports the DOS platform.[26]

Euphoria is an acronym for _End-User Programming with Hierarchical Objects for Robust Interpreted Applications_ although there is some suspicion that this is a backronym.

The Euphoria interpreter was originally written in C. With the release of version 2.5[27] in November 2004 the Euphoria interpreter was split into two parts: a front-end parser, and a back-end interpreter. The front-end is now written in Euphoria (and used with the Euphoria-to-C translator and the Binder). The main back-end and run time library are written in C.


Features

Euphoria was conceived and developed with the following design goals and features:

-   Ease of learning and with consistent high-level constructs (more so than e.g., the BASIC language)
-   Implementation of flat-form 32-bit memory to avoid complex memory management and size-addressing limits
-   Debugging support and run-time error-handling
-   Subscript and type checking
-   Loose and strict variable typing
-   Programming via objects as types (user-defined or otherwise)
-   Interpreted, with automatic memory management and garbage collection
-   Heterogeneous collection types (sequences)
-   DOS graphics library (Euphoria language versions up to and including 3.1.1)
-   Debugger
-   Integrated database system
-   Low-level memory handling
-   Straightforward wrapping of (or access to) C libraries


Execution modes

-   Interpreter
-   C translator (E2C) for standalone executables or dynamic linking
-   Bytecode compiler and interpreter (shrouder[28])
-   The Binder[29] binds the Euphoria source code to the interpreter to create an executable.
-   A read–eval–print loop (REPL) version is on the openEuphoria roadmap.[30]


Use

Euphoria is designed to readily facilitate handling of dynamic sets of data of varying types and is particularly useful for string and image processing. Euphoria has been used in artificial intelligence experiments, the study of mathematics, for teaching programming, and to implement fonts involving thousands of characters. A large part of the Euphoria interpreter is written in Euphoria.


Data types

Euphoria has two basic data types:

    Atom – A number, implemented as a 31-bit signed integer or a 64-bit IEEE floating-point. Euphoria dynamically changes between integer and floating point representation according to the current value.
    Sequence – A vector (array) with zero or more elements. Each element may be an _atom_ or another _sequence_. The number of elements in a sequence is not fixed (i.e., the size of the vector/array does not have to be declared). The program may add or remove elements as needed during run-time. Memory allocation-deallocation is automatically handled by reference counting. Individual elements are referenced using an index value enclosed in square brackets. The first element in a sequence has an index of one [1]. Elements inside embedded sequences are referenced by additional bracked index values, thus X[3][2] refers to the second element contained in the sequence that is the third element of X. Each element of a sequence is an _object_ type (see below).

Euphoria has two additional data types predefined:

    Integer – An _atom_, restricted to 31-bit signed integer values in the range -1073741824 to 1073741823 (-2^30 to 2^30-1). _Integer_ data types are more efficient than the _atom_ data types, but cannot contain the same range of values. Characters are stored as integers, e.g., coding ASCII-'A' is exactly the same as coding 65.
    Object – A generic datatype which may contain any of the above (i.e., _atom_, _sequence_ or _integer_) and which may be changed to another type during run-time.

There is no character string data type. Strings are represented by a _sequence_ of _integer_ values. However, because literal strings are so commonly used in programming, Euphoria interprets double-quote enclosed characters as a sequence of integers. Thus

"ABC"

is seen as if the coder had written:

{'A', 'B', 'C'}

which is the same as:

{65, 66, 67}


Hello, World!

puts(1, "Hello, World!\n")


Examples

Program comments start with a double hyphen -- and go through the end of line.

The following code looks for an old item in a group of items. If found, it removes it by concatenating all the elements before it with all the elements after it. Note that the first element in a sequence has the index one [1] and that $ refers to the length (i.e., total number of elements) of the sequence.

global function delete_item( object old, sequence group )
   integer pos
             -- Code begins --
   pos = find( old, group )
   if pos > 0 then
       group = group[1 .. pos-1] & group[pos+1 .. $]
   end if
   return group
end function

The following modification to the above example replaces an old item with a new item. As the variables _old_ and _new_ have been defined as objects, they could be _atoms_ or _sequences_. Type checking is not needed as the function will work with any sequence of data of any type and needs no external libraries.

global function replace_item( object old, object new, sequence group )
   integer pos
             -- Code begins --
   pos = find( old, group )
   if pos > 0 then
       group[pos] = new
   end if
   return group
end function

Furthermore, no pointers are involved and subscripts are automatically checked. Thus the function cannot access memory out-of-bounds. There is no need to allocate or deallocate memory explicitly and no chance of a memory leak.

The line

group = group[1 .. pos-1] & group[pos+1 .. $]

shows some of the _sequence_ handling facilities. A _sequence_ may contain a set of any types, and this can be sliced (to take a subset of the data in a _sequence_) and concatenated in expressions with no need for special functions.


Parameter passing

Arguments to routines are always passed by value; there is no pass-by-reference facility. However, parameters are allowed to be modified _locally_ (i.e., within the callee) which is implemented very efficiently as sequences have automatic copy-on-write semantics. In other words, when you pass a sequence to a routine, initially only a reference to it is passed, but at the point the routine modifies this sequence parameter the sequence is copied and the routine updates only a copy of the original.


Comparable languages

-   Lua
-   Phix
-   Python
-   REBOL
-   Ruby


References


External links

Free downloads of Euphoria for the various platforms, packages, Windows IDE, Windows API libraries, a cross-platform GTK3 wrapper for Linux and Windows, graphics libraries (DOS, OpenGL, etc.).

-   OpenEuphoria

-   RapidEuphoria

-   openEuphoria Wiki
-   openEuphoria Forum
-   OpenEuphoria · GitHub Development repositories.
-   Using Euphoria

Category:Procedural programming languages Category:Cross-platform software Category:Programming languages created in 1993 Category:Free educational software Category:Software using the BSD license

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