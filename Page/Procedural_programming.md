PROCEDURAL PROGRAMMING is a programming paradigm, derived from structured programming, based on the concept of the _procedure call_. Procedures, also known as routines, subroutines, or functions, simply contain a series of computational steps to be carried out. Any given procedure might be called at any point during a program's execution, including by other procedures or itself. The first major procedural programming languages first appeared circa 1960, including Fortran, ALGOL, COBOL and BASIC.[1] Pascal and C were published closer to the 1970s.

Computer processors provide hardware support for procedural programming through a stack register and instructions for calling procedures and returning from them. Hardware support for other types of programming is possible, but no attempt was commercially successful (for example Lisp machines or Java processors).


Procedures and modularity

Modularity is generally desirable, especially in large, complicated programs. Inputs are usually specified syntactically in the form of _arguments_ and the outputs delivered as _return values_.

Scoping is another technique that helps keep procedures modular. It prevents the procedure from accessing the variables of other procedures (and vice versa), including previous instances of itself, without explicit authorization.

Less modular procedures, often used in small or quickly written programs, tend to interact with a large number of variables in the execution environment, which other procedures might also modify.

Because of the ability to specify a simple interface, to be self-contained, and to be reused, procedures are a convenient vehicle for making pieces of code written by different people or different groups, including through programming libraries.


Comparison with other programming paradigms

Imperative programming

Procedural programming languages are also imperative languages, because they make explicit references to the state of the execution environment. This could be anything from _variables_ (which may correspond to processor registers) to something like the position of the "turtle" in the Logo programming language.

Often, the terms "procedural programming" and "imperative programming" are used synonymously. However, procedural programming relies heavily on blocks and scope, whereas imperative programming as a whole may or may not have such features. As such, procedural languages generally use reserved words that act on blocks, such as if, while, and for, to implement control flow, whereas non-structured imperative languages use goto statements and branch tables for the same purpose.

Object-oriented programming

The focus of procedural programming is to break down a programming task into a collection of variables, data structures, and subroutines, whereas in object-oriented programming it is to break down a programming task into objects that expose behavior (methods) and data (members or attributes) using interfaces. The most important distinction is that while procedural programming uses procedures to operate on data structures, object-oriented programming bundles the two together, so an "object", which is an instance of a class, operates on its "own" data structure.[2]

Nomenclature varies between the two, although they have similar semantics:

+----------------+-----------------+
| Procedural     | Object-oriented |
+================+=================+
| procedure      | method          |
+----------------+-----------------+
| record         | object          |
+----------------+-----------------+
| module         | class           |
+----------------+-----------------+
| procedure call | message         |
+----------------+-----------------+

Functional programming

The principles of modularity and code reuse in practical functional languages are fundamentally the same as in procedural languages, since they both stem from structured programming. So for example:

-   Procedures correspond to functions. Both allow the reuse of the same code in various parts of the programs, and at various points of its execution.
-   By the same token, procedure calls correspond to function application.
-   Functions and their invocations are modularly separated from each other in the same manner, by the use of function arguments, return values and variable scopes.

The main difference between the styles is that functional programming languages remove or at least deemphasize the imperative elements of procedural programming. The feature set of functional languages is therefore designed to support writing programs as much as possible in terms of pure functions:

-   Whereas procedural languages model execution of the program as a sequence of imperative commands that may implicitly alter shared state, functional programming languages model execution as the evaluation of complex expressions that only depend on each other in terms of arguments and return values. For this reason, functional programs can have a free order of code execution, and the languages may offer little control over the order in which various parts of the program are executed. (For example, the arguments to a procedure invocation in Scheme are executed in an arbitrary order.)
-   Functional programming languages support (and heavily use) first-class functions, anonymous functions and closures, although these concepts are being included in newer procedural languages.
-   Functional programming languages tend to rely on tail call optimization and higher-order functions instead of imperative looping constructs.

Many functional languages, however, are in fact impurely functional and offer imperative/procedural constructs that allow the programmer to write programs in procedural style, or in a combination of both styles. It is common for input/output code in functional languages to be written in a procedural style.

There do exist a few esoteric functional languages (like Unlambda) that eschew structured programming precepts for the sake of being difficult to program in (and therefore challenging). These languages are the exception to the common ground between procedural and functional languages.

Logic programming

In logic programming, a program is a set of premises, and computation is performed by attempting to prove candidate theorems. From this point of view, logic programs are declarative, focusing on what the problem is, rather than on how to solve it.

However, the backward reasoning technique, implemented by SLD resolution, used to solve problems in logic programming languages such as Prolog, treats programs as goal-reduction procedures. Thus clauses of the form:

    H :- B₁, …, B_(n).

have a dual interpretation, both as procedures

    to show/solve H, show/solve B₁ and … and B_(n)

and as logical implications:

    B₁ and … and B_(n) implies H.

Experienced logic programmers use the procedural interpretation to write programs that are effective and efficient, and they use the declarative interpretation to help ensure that programs are correct.


See also

-   Comparison of programming paradigms
-   Declarative programming
-   Functional programming (contrast)
-   Imperative programming
-   Logic programming
-   Object-oriented programming
-   Programming paradigms
-   Programming language
-   Structured programming
-   SQL procedural extensions


References


External links

-

Category:Programming paradigms

[1]

[2]