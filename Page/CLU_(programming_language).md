CLU is a programming language created at the Massachusetts Institute of Technology (MIT) by Barbara Liskov and her students between 1974 and 1975. While it did not find extensive use, it introduced many features that are used widely now, and is seen as a step in the development of object-oriented programming (OOP).

Key contributions include abstract data types,[1] call-by-sharing, iterators, multiple return values (a form of parallel assignment), type-safe parameterized types, and type-safe variant types. It is also notable for its use of classes with constructors and methods, but without inheritance.


Clusters

The syntax of CLU was based on ALGOL, then the starting point for most new language designs. The key addition was the concept of a _cluster_, CLU's type extension system and the root of the language's name (CLUster).[2] Clusters correspond generally to the concept of a "class" in an OO language, and have similar syntax. For instance, here is the CLU syntax for a cluster that implements complex numbers:

        complex_number = cluster is add, subtract, multiply, ...
            rep = record [ real_part: real, imag_part: real ]
            add = proc ... end add;
            subtract = proc ... end subtract;
            multiply = proc ... end multiply;
            ...
        end complex_number;

A cluster is a module that encapsulates all of its components except for those explicitly named in the "is" clause. These correspond to the public components of a class in recent OO languages. A cluster also defines a type that can be named outside the cluster (in this case, "complex_number"), but its representation type (rep) is hidden from external clients.

Cluster names are global, and no namespace mechanism was provided to group clusters or allow them to be created "locally" inside other clusters.

CLU does not perform implicit type conversions. In a cluster, the explicit type conversions _up_ and _down_ change between the abstract type and the representation. There is a universal type _any_, and a procedure force[] to check that an object is a certain type. Objects may be mutable or immutable, the latter being _base types_ such as integers, booleans, characters and strings.[3]


Other features

Another key feature of the CLU type system are _iterators_, which return objects from a collection serially, one after another.[4] Iterators offer an identical application programming interface (API) no matter what data they are being used with. Thus the iterator for a collection of complex_numbers can be used interchangeably with that for an array of integers. A distinctive feature of CLU iterators is that they are implemented as coroutines, with each value being provided to the caller via a _yield_ statement. Iterators like those in CLU are now a common feature of many modern languages, such as C#, Ruby, and Python, though recently they are often referred to as generators.

CLU also includes exception handling, based on various attempts in other languages; exceptions are raised using signal and handled with except. Unlike most other languages with exception handling, exceptions are not implicitly resignaled up the calling chain. Also unlike most other languages that provide exception handling, exceptions in CLU are considered part of ordinary execution flow and are considered a "normal" and efficient typesafe way to break out of loops or return from functions; this allows for direct assignment of return values "except when" other conditions apply. Exceptions that are neither caught nor resignaled explicitly are immediately converted into a special failure exception that typically terminates the program.

CLU is often credited as being the first language with type-safe variant types, called _oneofs_, before the language ML had them.

A final distinctive feature in CLU is parallel assignment (multiple assignment), where more than one variable can appear on the left hand side of an assignment operator. For instance, writing x,y := y,x would exchange values of x and y. In the same way, functions could return several values, like x,y,z := f(t). Parallel assignment (though not multiple return values) predates CLU, appearing in CPL (1963), named _simultaneous assignment_,[5] but CLU popularized it and is often credited as the direct influence leading to parallel assignment in later languages.

All objects in a CLU program live in the heap, and memory management is automatic.

CLU supports type parameterized user-defined data abstractions. It was the first language to offer type-safe bounded parameterized types, using structure _where clauses_ to express constraints on actual type arguments.


Influence on other programming languages

CLU has influenced many other languages in many ways. In approximate chronological order, these include:

CLU and Ada were major inspirations for C++ templates.

CLU's exception handling mechanisms influenced later languages like C++ and Java.

Sather, Python, and C# include iterators, which first appeared in CLU.

Perl and Lua took multiple assignment and multiple returns from function calls from CLU.[6]

Python and Ruby borrowed several concepts from CLU, such as call by sharing, the _yield_ statement, and multiple assignment


References


External links

-   -   A History of CLU (pdf)
-   clu2c: a program to compile CLU code to C
-   Dictionary of Programming Languages
-   CLU comparison at '99 bottles of beer' multi-language demo algorithm site

Category:Academic programming languages Category:Class-based programming languages Category:Massachusetts Institute of Technology software Category:Procedural programming languages Category:Programming languages created in 1975 Category:Programming languages created by women

[1]

[2]

[3]

[4]

[5]

[6]