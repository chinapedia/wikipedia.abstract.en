MERCURY is a functional logic programming language made for real-world uses. The first version was developed at the University of Melbourne, Computer Science department, by Fergus Henderson, Thomas Conway, and Zoltan Somogyi, under Somogyi's supervision, and released on April 8, 1995.

Mercury is a purely declarative logic programming language. It is related to both Prolog and Haskell.[1] It features a strong, static, polymorphic type system, and a strong mode and determinism system.

The official implementation, the Melbourne Mercury Compiler, is available for most Unix and Unix-like platforms, including Linux, macOS, and for Windows (32bits only).


Overview

Mercury is based on the logic programming language Prolog. It has the same syntax and the same basic concepts such as the selective linear definite clause resolution (SLD) algorithm. It can be viewed as a pure subset of Prolog with strong types and modes. As such, it is often compared to its predecessor in features and run-time efficiency.

The language is designed using software engineering principles. Unlike the original implementations of Prolog, it has a separate compilation phase, rather than being directly interpreted. This allows a much wider range of errors to be detected before running a program. It features a strict static type and mode system[2] and a module system.

By using information obtained at compile time (such as type and mode), programs written in Mercury typically perform significantly faster than equivalent programs written in Prolog.[3][4] Its authors claim that Mercury is the fastest logic language in the world, by a wide margin.[5]

Mercury is a purely declarative language, unlike Prolog, since it lacks _extra-logical_ Prolog statements such as ! (cut) and imperative input/output (I/O). This enables advanced static program analysis and program optimization, including compile-time garbage collection,[6] but it can make certain programming constructs (such as a switch over a number of options, with a default) harder to express. (While Mercury does allow impure functionality, this serves mainly as a way to call foreign language code. All impure code must be marked explicitly.) Operations which would typically be impure (such as input/output) are expressed using pure constructs in Mercury using linear types, by threading a dummy _world_ value through all relevant code.

Notable programs written in Mercury include the Mercury compiler and the Prince XML formatter. Software company Mission Critical IT has also been using Mercury since 2000 to develop enterprise applications and its Ontology-Driven software development platform, ODASE.[7]


Back-ends

Mercury has several back-ends, which enable compiling Mercury code into several languages, including:

Production level

-   Low-level C for GNU Compiler Collection (GCC), the original Mercury back-end
-   High-level C
-   Java
-   C#
-   Erlang

Past

-   Assembly language via the GCC back-end
-   Aditi, a deductive database system also developed at the University of Melbourne. Mercury-0.12.2 is the last version to support Aditi.
-   Common Intermediate Language (CIL) for the .NET Framework

Mercury also features a foreign language interface, allowing code in other languages (depending on the chosen back-end) to be linked with Mercury code. The following foreign languages are possible:

  Back-end          Foreign language(s)
  ----------------- ------------------------------------------
  C (both levels)   C
  Java              Java
  Erlang            Erlang
  IL                Common Intermediate Language (CIL) or C#

Other languages can then be interfaced to by calling them from these languages. However, this means that foreign language code may need to be written several times for the different backends, otherwise portability between backends will be lost.

The most commonly used back-end is the original low-level C back-end.


Examples

Hello World:

     :- module hello.
     :- interface.
     :- import_module io.
     :- pred main(io::di, io::uo) is det.

     :- implementation.
     main(!IO) :-
        io.write_string("Hello, World!\n", !IO).

Calculating the 10th Fibonacci number (in the most obvious way):[8]

     :- module fib.
     :- interface.
     :- import_module io.
     :- pred main(io::di, io::uo) is det.

     :- implementation.
     :- import_module int.

     :- func fib(int) = int.
     fib(N) = (if N =< 2 then 1 else fib(N - 1) + fib(N - 2)).

     main(!IO) :-
            io.write_string("fib(10) = ", !IO),
            io.write_int(fib(10), !IO),
            io.nl(!IO).
            % Could instead use io.format("fib(10) = %d\n", [i(fib(10))], !IO).

!IO is a "state variable", which is syntactic sugar for a pair of variables which are assigned concrete names at compilation; for example, the above is desugared to something like:

     main(IO0, IO) :-
            io.write_string("fib(10) = ", IO0, IO1),
            io.write_int(fib(10), IO1, IO2),
            io.nl(IO2, IO).


Release schedule

Releases are named according to the year and month of release. The current stable release is 14.01.1 (September 2014). Prior releases were numbered 0.12, 0.13, etc., and the time between stable releases can be as long as 3 years.

There is often also a snapshot _release of the day_ (ROTD) consisting of the latest features and bug fixes added to the last stable release.


IDE and editor support

-   Developers provide support for Vim
-   Flycheck library for Emacs
-   A plugin is available for the Eclipse IDE
-   A plugin is available for the NetBeans IDE


See also

-   Curry, another functional logic language
-   Alice, a dialect language of Standard ML
-   Logtalk, language, an object-oriented extension of Prolog which compiles down to Prolog
-   Oz/Mozart, a multiparadigm language
-   Visual Prolog, language, a strongly typed object-oriented extension of Prolog, with a new syntax


References


External links

-

Category:Programming languages Category:Cross-platform free software Category:Functional languages Category:Functional logic programming languages Category:Logic programming languages Category:.NET programming languages Category:Programming languages created in 1995

[1] The Mercury Project - Motivation

[2]

[3] The Mercury Project - Benchmarks

[4]

[5]

[6]

[7] Mission Critical IT

[8] Adapted from Ralph Becket's Mercury tutorial