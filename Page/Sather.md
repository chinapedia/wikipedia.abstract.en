_For people with the surname, see Sather (surname)._

SATHER is an object-oriented programming language. It originated circa 1990 at the International Computer Science Institute (ICSI) at the University of California, Berkeley, developed by an international team led by Steve Omohundro. It supports garbage collection and generics by subtypes.

Originally, it was based on Eiffel, but it has diverged, and now includes several functional programming features.

The name is inspired by Eiffel; the Sather Tower is a recognizable landmark at Berkeley, named after Jane Krom Sather, the widow of Peder Sather, who donated large sums to the foundation of the university.

Sather also takes inspiration from other programming languages and paradigms: iterators, design by contract, abstract classes, multiple inheritance, anonymous functions, operator overloading, contravariant type system.

The original Berkeley implementation (last stable version 1.1 was released in 1995, no longer maintained[1]) has been adopted by the Free Software Foundation therefore becoming GNU Sather. Last stable GNU version (1.2.3) was released in July 2007[2] and the software is currently not maintained. There were several other variants: Sather-K from the University of Karlsruhe;[3][4] Sather-W from the University of Waikato[5] (implementation of Sather version 1.3); Peter Naulls' port of ICSI Sather 1.1 to RISC OS;[6] and pSather,[7][8] a parallel version of ICSI Sather addressing non-uniform memory access multiprocessor architectures but presenting a shared memory model to the programmer.

The former ICSI Sather compiler (now GNU Sather) is implemented as a compiler to C, i.e., the compiler does not output object or machine code, but takes Sather source code and generates C source code as an intermediate language. Optimizing is left to the C compiler.

The GNU Sather compiler, written in Sather itself, is dual licensed under the GNU GPL & LGPL.


Hello World

     class HELLO_WORLD is
      main is
       #OUT+"Hello World\n";
      end;
     end;

A few remarks:

-   Class names are ALL CAPS; this is not only a convention but is enforced by the compiler.
-   The method called main is the entry point for execution. It may belong to any class, but if this is different from MAIN, it must be specified as a compiler option.
-   # is the constructor symbol, calling method create of the corresponding class; here it is used for instantiating the OUT class, which is actually stdout.
-   The + operator has been overloaded here to stand for stream append.
-   Operators such as + are syntactic sugar for conventionally named method calls: a + b stands for a.plus(b). The usual arithmetic precedence conventions are used to resolve the calling order of methods in complex formulae.
-   The program layout allows for pre- and post-conditions (not shown here), showing Sather's Eiffel lineage.


Example of iterators

     class MAIN is
       main is
         loop
          i := 1.upto!(10);
          #OUT + i + "\n";
         end;
       end;
     end;

This program prints numbers from 1 to 10.

The loop ... end construct is the preferred means of defining loops (although while and repeat-until are also available). Within the construct, one or more iterators may be used. Iterator names always end with an exclamation mark (this convention is enforced by the compiler). upto! is a method of the integer class INT accepting one once argument, meaning its value will not change as the iterator yields. upto! could be implemented in the INT class like this:

      upto!(once m:INT):SAME is
        i: INT := self; -- initialise i to the value of self,
                        -- that is the integer of which this method is called
        loop
          if i>m then
            quit;  -- leave the loop when i goes beyond m
          end;
          yield i; -- else use i as return value and stay in the loop
          i := i + 1; -- and increment
        end;
      end;

Type information for variables is denoted by a postfix syntax variable:CLASS. The type can often be inferred and thus the typing information is optional, like in anInteger::=1. SAME is a convenience pseudo-class referring to the current class.


References


External links

-   Sather homepage

Category:Class-based programming languages Category:GNU Project software

[1] ICSI Sather future plans

[2] GNU Sather downloads

[3] Sather-K project page (archive from year 2001)

[4] Sather-K 0.9 download, version from year 1994

[5] Sather-W 1.3 project page (archived link from year 2002)

[6] Peter Naulls' port is no longer available on the Web.

[7] pSather description

[8] pSather download