PROLOG is a logic programming language associated with artificial intelligence and computational linguistics.[1][2][3]

Prolog has its roots in first-order logic, a formal logic, and unlike many other programming languages, Prolog is intended primarily as a declarative programming language: the program logic is expressed in terms of relations, represented as facts and rules. A computation is initiated by running a _query_ over these relations.[4]

The language was first conceived by Alain Colmerauer and his group in Marseille, France, in the early 1970s and the first Prolog system was developed in 1972 by Colmerauer with Philippe Roussel.[5][6]

Prolog was one of the first logic programming languages,[7] and remains the most popular among such languages today, with several free and commercial implementations available. The language has been used for theorem proving,[8] expert systems,[9] term rewriting,[10] type systems,[11] and automated planning,[12] as well as its original intended field of use, natural language processing.[13][14] Modern Prolog environments support the creation of graphical user interfaces, as well as administrative and networked applications.

Prolog is well-suited for specific tasks that benefit from rule-based logical queries such as searching databases, voice control systems, and filling templates.


Syntax and semantics

In Prolog, program logic is expressed in terms of relations, and a computation is initiated by running a _query_ over these relations. Relations and queries are constructed using Prolog's single data type, the _term_.[15] Relations are defined by _clauses_. Given a query, the Prolog engine attempts to find a resolution refutation of the negated query. If the negated query can be refuted, i.e., an instantiation for all free variables is found that makes the union of clauses and the singleton set consisting of the negated query false, it follows that the original query, with the found instantiation applied, is a logical consequence of the program. This makes Prolog (and other logic programming languages) particularly useful for database, symbolic mathematics, and language parsing applications. Because Prolog allows impure predicates, checking the truth value of certain special predicates may have some deliberate side effect, such as printing a value to the screen. Because of this, the programmer is permitted to use some amount of conventional imperative programming when the logical paradigm is inconvenient. It has a purely logical subset, called "pure Prolog", as well as a number of extralogical features.

Data types

Prolog's single data type is the _term_. Terms are either _atoms_, _numbers_, _variables_ or _compound terms_.

-   An ATOM is a general-purpose name with no inherent meaning. Examples of atoms include x, red, 'Taco', and 'some atom'.
-   NUMBERS can be floats or integers. ISO standard compatible Prolog systems can check the Prolog flag "bounded". Most of the major Prolog systems support arbitrary length integer numbers.
-   VARIABLES are denoted by a string consisting of letters, numbers and underscore characters, and beginning with an upper-case letter or underscore. Variables closely resemble variables in logic in that they are placeholders for arbitrary terms.
-   A COMPOUND TERM is composed of an atom called a "functor" and a number of "arguments", which are again terms. Compound terms are ordinarily written as a functor followed by a comma-separated list of argument terms, which is contained in parentheses. The number of arguments is called the term's arity. An atom can be regarded as a compound term with arity zero. An example of a compound term is person_friends(zelda,[tom,jim]).

Special cases of compound terms:

-   A _List_ is an ordered collection of terms. It is denoted by square brackets with the terms separated by commas or in the case of the empty list, []. For example, [1,2,3] or [red,green,blue].
-   _Strings_: A sequence of characters surrounded by quotes is equivalent to either a list of (numeric) character codes, a list of characters (atoms of length 1), or an atom depending on the value of the Prolog flag double_quotes. For example, "to be, or not to be".[16]

ISO Prolog provides the atom/1, number/1, integer/1, and float/1 predicates for type-checking.[17]

Rules and facts

Prolog programs describe relations, defined by means of clauses. Pure Prolog is restricted to Horn clauses. There are two types of clauses: facts and rules. A rule is of the form

    Head :- Body.

and is read as "Head is true if Body is true". A rule's body consists of calls to predicates, which are called the rule's GOALS. The built-in predicate ,/2 (meaning a 2-arity operator with name ,) denotes conjunction of goals, and ;/2 denotes disjunction. Conjunctions and disjunctions can only appear in the body, not in the head of a rule.

Clauses with empty bodies are called FACTS. An example of a fact is:

    cat(tom).

which is equivalent to the rule:

    cat(tom) :- true.

The built-in predicate true/0 is always true.

Given the above fact, one can ask:

_is tom a cat?_

     ?- cat(tom).
     Yes

_what things are cats?_

     ?- cat(X).
     X = tom

Clauses with bodies are called RULES. An example of a rule is:

    animal(X) :- cat(X).

If we add that rule and ask _what things are animals?_

     ?- animal(X).
     X = tom

Due to the relational nature of many built-in predicates, they can typically be used in several directions. For example, length/2 can be used to determine the length of a list (length(List, L), given a list List) as well as to generate a list skeleton of a given length (length(X, 5)), and also to generate both list skeletons and their lengths together (length(X, L)). Similarly, append/3 can be used both to append two lists (append(ListA, ListB, X) given lists ListA and ListB) as well as to split a given list into parts (append(X, Y, List), given a list List). For this reason, a comparatively small set of library predicates suffices for many Prolog programs.

As a general purpose language, Prolog also provides various built-in predicates to perform routine activities like input/output, using graphics and otherwise communicating with the operating system. These predicates are not given a relational meaning and are only useful for the side-effects they exhibit on the system. For example, the predicate write/1 displays a term on the screen.

Execution

Execution of a Prolog program is initiated by the user's posting of a single goal, called the query. Logically, the Prolog engine tries to find a resolution refutation of the negated query. The resolution method used by Prolog is called SLD resolution. If the negated query can be refuted, it follows that the query, with the appropriate variable bindings in place, is a logical consequence of the program. In that case, all generated variable bindings are reported to the user, and the query is said to have succeeded. Operationally, Prolog's execution strategy can be thought of as a generalization of function calls in other languages, one difference being that multiple clause heads can match a given call. In that case, the system creates a choice-point, unifies the goal with the clause head of the first alternative, and continues with the goals of that first alternative. If any goal fails in the course of executing the program, all variable bindings that were made since the most recent choice-point was created are undone, and execution continues with the next alternative of that choice-point. This execution strategy is called chronological backtracking. For example:

    mother_child(trude, sally).

    father_child(tom, sally).
    father_child(tom, erica).
    father_child(mike, tom).

    sibling(X, Y)      :- parent_child(Z, X), parent_child(Z, Y).

    parent_child(X, Y) :- father_child(X, Y).
    parent_child(X, Y) :- mother_child(X, Y).

This results in the following query being evaluated as true:

     ?- sibling(sally, erica).
     Yes

This is obtained as follows: Initially, the only matching clause-head for the query sibling(sally, erica) is the first one, so proving the query is equivalent to proving the body of that clause with the appropriate variable bindings in place, i.e., the conjunction (parent_child(Z,sally), parent_child(Z,erica)). The next goal to be proved is the leftmost one of this conjunction, i.e., parent_child(Z, sally). Two clause heads match this goal. The system creates a choice-point and tries the first alternative, whose body is father_child(Z, sally). This goal can be proved using the fact father_child(tom, sally), so the binding Z = tom is generated, and the next goal to be proved is the second part of the above conjunction: parent_child(tom, erica). Again, this can be proved by the corresponding fact. Since all goals could be proved, the query succeeds. Since the query contained no variables, no bindings are reported to the user. A query with variables, like:

    ?- father_child(Father, Child).

enumerates all valid answers on backtracking.

Notice that with the code as stated above, the query ?- sibling(sally, sally). also succeeds. One would insert additional goals to describe the relevant restrictions, if desired.

Loops and recursion

Iterative algorithms can be implemented by means of recursive predicates.[18]

Negation

The built-in Prolog predicate \+/1 provides negation as failure, which allows for non-monotonic reasoning. The goal \+ illegal(X) in the rule

    legal(X) :- \+ illegal(X).

is evaluated as follows: Prolog attempts to prove illegal(X). If a proof for that goal can be found, the original goal (i.e., \+ illegal(X)) fails. If no proof can be found, the original goal succeeds. Therefore, the \+/1 prefix operator is called the "not provable" operator, since the query ?- \+ Goal. succeeds if Goal is not provable. This kind of negation is sound if its argument is "ground" (i.e. contains no variables). Soundness is lost if the argument contains variables and the proof procedure is complete. In particular, the query ?- legal(X). now cannot be used to enumerate all things that are legal.


Programming in Prolog

In Prolog, loading code is referred to as _consulting_. Prolog can be used interactively by entering queries at the Prolog prompt ?-. If there is no solution, Prolog writes no. If a solution exists then it is printed. If there are multiple solutions to the query, then these can be requested by entering a semi-colon ;. There are guidelines on good programming practice to improve code efficiency, readability and maintainability.[19]

Here follow some example programs written in Prolog.

Hello World

An example of a query:

    ?- write('Hello World!'), nl.
    Hello World!
    true.

    ?-

Compiler optimization

Any computation can be expressed declaratively as a sequence of state transitions. As an example, an optimizing compiler with three optimization passes could be implemented as a relation between an initial program and its optimized form:

    program_optimized(Prog0, Prog) :-
        optimization_pass_1(Prog0, Prog1),
        optimization_pass_2(Prog1, Prog2),
        optimization_pass_3(Prog2, Prog).

or equivalently using DCG notation:

    program_optimized --> optimization_pass_1, optimization_pass_2, optimization_pass_3.

Quicksort

The quicksort sorting algorithm, relating a list to its sorted version:

    partition([], _, [], []).
    partition([X|Xs], Pivot, Smalls, Bigs) :-
        (   X @< Pivot ->
            Smalls = [X|Rest],
            partition(Xs, Pivot, Rest, Bigs)
        ;   Bigs = [X|Rest],
            partition(Xs, Pivot, Smalls, Rest)
        ).

    quicksort([])     --> [].
    quicksort([X|Xs]) -->
        { partition(Xs, X, Smaller, Bigger) },
        quicksort(Smaller), [X], quicksort(Bigger).


Design patterns

A design pattern is a general reusable solution to a commonly occurring problem in software design. In Prolog, design patterns go under various names: skeletons and techniques,[20][21] cliches,[22] program schemata,[23] and logic description schemata.[24] An alternative to design patterns is higher order programming.[25]


Higher-order programming

A higher-order predicate is a predicate that takes one or more other predicates as arguments. Although support for higher-order programming takes Prolog outside the domain of first-order logic, which does not allow quantification over predicates,[26] ISO Prolog now has some built-in higher-order predicates such as call/1, call/2, call/3, findall/3, setof/3, and bagof/3.[27] Furthermore, since arbitrary Prolog goals can be constructed and evaluated at run-time, it is easy to write higher-order predicates like maplist/2, which applies an arbitrary predicate to each member of a given list, and sublist/3, which filters elements that satisfy a given predicate, also allowing for currying.[28]

To convert solutions from temporal representation (answer substitutions on backtracking) to spatial representation (terms), Prolog has various all-solutions predicates that collect all answer substitutions of a given query in a list. This can be used for list comprehension. For example, perfect numbers equal the sum of their proper divisors:

     perfect(N) :-
         between(1, inf, N), U is N // 2,
         findall(D, (between(1,U,D), N mod D =:= 0), Ds),
         sumlist(Ds, N).

This can be used to enumerate perfect numbers, and also to check whether a number is perfect.

As another example, the predicate maplist applies a predicate P to all corresponding positions in a pair of lists:

    maplist(_, [], []).
    maplist(P, [X|Xs], [Y|Ys]) :-
       call(P, X, Y),
       maplist(P, Xs, Ys).

When P is a predicate that for all X, P(X,Y) unifies Y with a single unique value, maplist(P, Xs, Ys) is equivalent to applying the map function in functional programming as Ys = map(Function, Xs).

Higher-order programming style in Prolog was pioneered in HiLog and λProlog.


Modules

For programming in the large, Prolog provides a module system. The module system is standardised by ISO.[29] However, not all Prolog compilers support modules, and there are compatibility problems between the module systems of the major Prolog compilers.[30] Consequently, modules written on one Prolog compiler will not necessarily work on others.


Parsing

There is a special notation called definite clause grammars (DCGs). A rule defined via -->/2 instead of :-/2 is expanded by the preprocessor (expand_term/2, a facility analogous to macros in other languages) according to a few straightforward rewriting rules, resulting in ordinary Prolog clauses. Most notably, the rewriting equips the predicate with two additional arguments, which can be used to implicitly thread state around, analogous to monads in other languages. DCGs are often used to write parsers or list generators, as they also provide a convenient interface to difference lists.


Meta-interpreters and reflection

Prolog is a homoiconic language and provides many facilities for reflection. Its implicit execution strategy makes it possible to write a concise meta-circular evaluator (also called _meta-interpreter_) for pure Prolog code:

    solve(true).
    solve((Subgoal1,Subgoal2)) :-
        solve(Subgoal1),
        solve(Subgoal2).
    solve(Head) :-
        clause(Head, Body),
        solve(Body).

where true represents an empty conjunction, and clause(Head, Body) unifies with clauses in the database of the form Head :- Body.

Since Prolog programs are themselves sequences of Prolog terms (:-/2 is an infix operator) that are easily read and inspected using built-in mechanisms (like read/1), it is possible to write customized interpreters that augment Prolog with domain-specific features. For example, Sterling and Shapiro present a meta-interpreter that performs reasoning with uncertainty, reproduced here with slight modifications:[31]

    solve(true, 1) :- !.
    solve((Subgoal1,Subgoal2), Certainty) :-
        !,
        solve(Subgoal1, Certainty1),
        solve(Subgoal2, Certainty2),
        Certainty is min(Certainty1, Certainty2).
    solve(Goal, 1) :-
        builtin(Goal), !,
        Goal.
    solve(Head, Certainty) :-
        clause_cf(Head, Body, Certainty1),
        solve(Body, Certainty2),
        Certainty is Certainty1 * Certainty2.

This interpreter uses a table of built-in Prolog predicates of the form[32]

    builtin(A is B).
    builtin(read(X)).
    % etc.

and clauses represented as clause_cf(Head, Body, Certainty). Given those, it can be called as solve(Goal, Certainty) to execute Goal and obtain a measure of certainty about the result.


Turing completeness

Pure Prolog is based on a subset of first-order predicate logic, Horn clauses, which is Turing-complete. Turing completeness of Prolog can be shown by using it to simulate a Turing machine:

    turing(Tape0, Tape) :-
        perform(q0, [], Ls, Tape0, Rs),
        reverse(Ls, Ls1),
        append(Ls1, Rs, Tape).

    perform(qf, Ls, Ls, Rs, Rs) :- !.
    perform(Q0, Ls0, Ls, Rs0, Rs) :-
        symbol(Rs0, Sym, RsRest),
        once(rule(Q0, Sym, Q1, NewSym, Action)),
        action(Action, Ls0, Ls1, [NewSym|RsRest], Rs1),
        perform(Q1, Ls1, Ls, Rs1, Rs).

    symbol([], b, []).
    symbol([Sym|Rs], Sym, Rs).

    action(left, Ls0, Ls, Rs0, Rs) :- left(Ls0, Ls, Rs0, Rs).
    action(stay, Ls, Ls, Rs, Rs).
    action(right, Ls0, [Sym|Ls0], [Sym|Rs], Rs).

    left([], [], Rs0, [b|Rs0]).
    left([L|Ls], Ls, Rs, [L|Rs]).

A simple example Turing machine is specified by the facts:

    rule(q0, 1, q0, 1, right).
    rule(q0, b, qf, 1, stay).

This machine performs incrementation by one of a number in unary encoding: It loops over any number of "1" cells and appends an additional "1" at the end. Example query and result:

    ?- turing([1,1,1], Ts).
    Ts = [1, 1, 1, 1] ;

This illustrates how any computation can be expressed declaratively as a sequence of state transitions, implemented in Prolog as a relation between successive states of interest.


Implementation

ISO Prolog

The ISO Prolog standard consists of two parts. ISO/IEC 13211-1,[33][34] published in 1995, aims to standardize the existing practices of the many implementations of the core elements of Prolog. It has clarified aspects of the language that were previously ambiguous and leads to portable programs. There are three corrigenda: Cor.1:2007[35], Cor.2:2012,[36] and Cor.3:2017.[37] ISO/IEC 13211-2,[38] published in 2000, adds support for modules to the standard. The standard is maintained by the ISO/IEC JTC1/SC22/WG17[39] working group. ANSI X3J17 is the US Technical Advisory Group for the standard.[40]

Compilation

For efficiency, Prolog code is typically compiled to abstract machine code, often influenced by the register-based Warren Abstract Machine (WAM) instruction set.[41] Some implementations employ abstract interpretation to derive type and mode information of predicates at compile time, or compile to real machine code for high performance.[42] Devising efficient implementation methods for Prolog code is a field of active research in the logic programming community, and various other execution methods are employed in some implementations. These include clause binarization and stack-based virtual machines.

Tail recursion

Prolog systems typically implement a well-known optimization method called tail call optimization (TCO) for deterministic predicates exhibiting tail recursion or, more generally, tail calls: A clause's stack frame is discarded before performing a call in a tail position. Therefore, deterministic tail-recursive predicates are executed with constant stack space, like loops in other languages.

Term indexing

Finding clauses that are unifiable with a term in a query is linear in the number of clauses. Term indexing uses a data structure that enables sub-linear-time lookups.[43] Indexing only affects program performance, it does not affect semantics. Most Prologs only use indexing on the first term, as indexing on all terms is expensive, but techniques based on _field-encoded words_ or _superimposed codewords_ provide fast indexing across the full query and head.[44][45]

Hashing

Some Prolog systems, such as WIN-PROLOG and SWI-Prolog, now implement hashing to help handle large datasets more efficiently. This tends to yield very large performance gains when working with large corpora such as WordNet.

Tabling

Some Prolog systems, (B-Prolog, XSB, SWI-Prolog, YAP, and Ciao), implement a memoization method called _tabling_, which frees the user from manually storing intermediate results.[46][47]

  Subgoals encountered in a query evaluation are maintained in a table, along with answers to these subgoals. If a subgoal is re-encountered, the evaluation reuses information from the table rather than re-performing resolution against program clauses.[48]

Tabling is a space–time tradeoff; execution time can be reduced by using more memory to store intermediate results.

Implementation in hardware

During the Fifth Generation Computer Systems project, there were attempts to implement Prolog in hardware with the aim of achieving faster execution with dedicated architectures.[49][50][51] Furthermore, Prolog has a number of properties that may allow speed-up through parallel execution.[52] A more recent approach has been to compile restricted Prolog programs to a field programmable gate array.[53] However, rapid progress in general-purpose hardware has consistently overtaken more specialised architectures.


Limitations

Although Prolog is widely used in research and education, Prolog and other logic programming languages have not had a significant impact on the computer industry in general.[54] Most applications are small by industrial standards, with few exceeding 100,000 lines of code.[55][56] Programming in the large is considered to be complicated because not all Prolog compilers support modules, and there are compatibility problems between the module systems of the major Prolog compilers.[57] Portability of Prolog code across implementations has also been a problem, but developments since 2007 have meant: "the portability within the family of Edinburgh/Quintus derived Prolog implementations is good enough to allow for maintaining portable real-world applications."[58]

Software developed in Prolog has been criticised for having a high performance penalty compared to conventional programming languages. In particular, Prolog's non-deterministic evaluation strategy can be problematic when programming deterministic computations, or when even using "don't care non-determinism" (where a single choice is made instead of backtracking over all possibilities). Cuts and other language constructs may have to be used to achieve desirable performance, destroying one of Prolog's main attractions, the ability to run programs "backwards and forwards".[59]

Prolog is not purely declarative: because of constructs like the cut operator, a procedural reading of a Prolog program is needed to understand it.[60] The order of clauses in a Prolog program is significant, as the execution strategy of the language depends on it.[61] Other logic programming languages, such as Datalog, are truly declarative but restrict the language. As a result, many practical Prolog programs are written to conform to Prolog's depth-first search order, rather than as purely declarative logic programs.[62]


Extensions

Various implementations have been developed from Prolog to extend logic programming capabilities in numerous directions. These include types, modes, constraint logic programming (CLP), object-oriented logic programming (OOLP), concurrency, linear logic (LLP), functional and higher-order logic programming capabilities, plus interoperability with knowledge bases:

Types

Prolog is an untyped language. Attempts to introduce types date back to the 1980s,[63][64] and as of 2008 there are still attempts to extend Prolog with types.[65] Type information is useful not only for type safety but also for reasoning about Prolog programs.[66]

Modes

  Mode specifier   Interpretation
  ---------------- -----------------
  +                nonvar on entry
  -                var on entry
  ?                Not specified

The syntax of Prolog does not specify which arguments of a predicate are inputs and which are outputs.[67] However, this information is significant and it is recommended that it be included in the comments.[68] Modes provide valuable information when reasoning about Prolog programs[69] and can also be used to accelerate execution.[70]

Constraints

Constraint logic programming extends Prolog to include concepts from constraint satisfaction.[71][72] A constraint logic program allows constraints in the body of clauses, such as: A(X,Y) :- X+Y>0. It is suited to large-scale combinatorial optimisation problems[73] and is thus useful for applications in industrial settings, such as automated time-tabling and production scheduling. Most Prolog systems ship with at least one constraint solver for finite domains, and often also with solvers for other domains like rational numbers.

Object-orientation

Flora-2 is an object-oriented knowledge representation and reasoning system based on F-logic and incorporates HiLog, Transaction logic, and defeasible reasoning.

Logtalk is an object-oriented logic programming language that can use most Prolog implementations as a back-end compiler. As a multi-paradigm language, it includes support for both prototypes and classes.

Oblog is a small, portable, object-oriented extension to Prolog by Margaret McDougall of EdCAAD, University of Edinburgh.

Objlog was a frame-based language combining objects and Prolog II from CNRS, Marseille, France.

Prolog++ was developed by Logic Programming Associates and first released in 1989 for MS-DOS PCs. Support for other platforms was added, and a second version was released in 1995. A book about Prolog++ by Chris Moss was published by Addison-Wesley in 1994.

Graphics

Prolog systems that provide a graphics library are SWI-Prolog,[74] Visual Prolog, WIN-PROLOG, and B-Prolog.

Concurrency

Prolog-MPI is an open-source SWI-Prolog extension for distributed computing over the Message Passing Interface.[75] Also there are various concurrent Prolog programming languages.[76]

Web programming

Some Prolog implementations, notably SWI-Prolog and Ciao, support server-side web programming with support for web protocols, HTML and XML.[77] There are also extensions to support semantic web formats such as RDF and OWL.[78][79] Prolog has also been suggested as a client-side language.[80]

Adobe Flash

Cedar is a free and basic Prolog interpreter. From version 4 and above Cedar has a FCA (Flash Cedar App) support. This provides a new platform to programming in Prolog through ActionScript.

Other

-   F-logic extends Prolog with frames/objects for knowledge representation.
-   Transaction logic extends Prolog with a logical theory of state-changing update operators. It has both a model-theoretic and procedural semantics.
-   OW Prolog has been created in order to answer Prolog's lack of graphics and interface.


Interfaces to other languages

Frameworks exist which can bridge between Prolog and other languages:

-   The LPA Intelligence Server allows the embedding of LPA Prolog within C, C#, C++, Java, VB, Delphi, .Net, Lua, Python and other languages. It exploits the dedicated string data-type which LPA Prolog provides
-   The Logic Server API allows both the extension and embedding of Prolog in C, C++, Java, VB, Delphi, .NET and any language/environment which can call a .dll or .so. It is implemented for Amzi! Prolog Amzi! Prolog + Logic Server but the API specification can be made available for any implementation.
-   JPL is a bi-directional Java Prolog bridge which ships with SWI-Prolog by default, allowing Java and Prolog to call each other (recursively). It is known to have good concurrency support and is under active development.
-   InterProlog, a programming library bridge between Java and Prolog, implementing bi-directional predicate/method calling between both languages. Java objects can be mapped into Prolog terms and vice versa. Allows the development of GUIs and other functionality in Java while leaving logic processing in the Prolog layer. Supports XSB, with support for SWI-Prolog and YAP planned for 2013.
-   Prova provides native syntax integration with Java, agent messaging and reaction rules. Prova positions itself as a rule-based scripting (RBS) system for middleware. The language breaks new ground in combining imperative and declarative programming.
-   PROL An embeddable Prolog engine for Java. It includes a small IDE and a few libraries.
-   GNU Prolog for Java is an implementation of ISO Prolog as a Java library (gnu.prolog)
-   Ciao provides interfaces to C, C++, Java, and relational databases.
-   C#-Prolog is a Prolog interpreter written in (managed) C#. Can easily be integrated in C# programs. Characteristics: reliable and fairly fast interpreter, command line interface, Windows-interface, builtin DCG, XML-predicates, SQL-predicates, extendible. The complete source code is available, including a parser generator that can be used for adding special purpose extensions.
-   Jekejeke Prolog API provides tightly coupled concurrent call-in and call-out facilities between Prolog and Java or Android, with the marked possibility to create individual knowledge base objects. It can be used to embed the ISO Prolog interpreter in standalones, applets, servlets, APKs, etc..
-   A Warren Abstract Machine for PHP A Prolog compiler and interpreter in PHP 5.3. A library that can be used standalone or within Symfony2.1 framework which was translated from Stephan Buettcher's work in Java which can be found [here ]
-   tuProlog is a light-weight Prolog system for distributed applications and infrastructures, intentionally designed around a minimal core, to be either statically or dynamically configured by loading/unloading libraries of predicates. tuProlog natively supports multi-paradigm programming, providing a clean, seamless integration model between Prolog and mainstream object-oriented languages -- namely Java, for tuProlog Java version, and any .NET-based language (C#, F#..), for tuProlog .NET version.[81]


History

The name _Prolog_ was chosen by Philippe Roussel as an abbreviation for __ (French for _programming in logic_). It was created around 1972 by Alain Colmerauer with Philippe Roussel, based on Robert Kowalski's procedural interpretation of Horn clauses. It was motivated in part by the desire to reconcile the use of logic as a declarative knowledge representation language with the procedural representation of knowledge that was popular in North America in the late 1960s and early 1970s. According to Robert Kowalski, the first Prolog system was developed in 1972 by Colmerauer and Phillipe Roussel.[82] The first implementation of Prolog was an interpreter written in Fortran by Gerard Battani and Henri Meloni. David H. D. Warren took this interpreter to Edinburgh, and there implemented an alternative front-end, which came to define the “Edinburgh Prolog” syntax used by most modern implementations. Warren also implemented the first compiler for Prolog, creating the influential DEC-10 Prolog in collaboration with Fernando Pereira. Warren later generalised the ideas behind DEC-10 Prolog, to create the Warren Abstract Machine.

European AI researchers favored Prolog while Americans favored Lisp, reportedly causing many nationalistic debates on the merits of the languages.[83] Much of the modern development of Prolog came from the impetus of the Fifth Generation Computer Systems project (FGCS), which developed a variant of Prolog named _Kernel Language_ for its first operating system.

Pure Prolog was originally restricted to the use of a resolution theorem prover with Horn clauses of the form:

H :- B₁, ..., B_(n).

The application of the theorem-prover treats such clauses as procedures:

to show/solve H, show/solve B₁ and ... and B_(n).

Pure Prolog was soon extended, however, to include negation as failure, in which negative conditions of the form not(B_(i)) are shown by trying and failing to solve the corresponding positive conditions B_(i).

Subsequent extensions of Prolog by the original team introduced constraint logic programming abilities into the implementations.


Use in industry

Prolog has been used in Watson. Watson uses IBM's DeepQA software and the Apache UIMA (Unstructured Information Management Architecture) framework. The system was written in various languages, including Java, C++, and Prolog, and runs on the SUSE Linux Enterprise Server 11 operating system using Apache Hadoop framework to provide distributed computing. Prolog is used for pattern matching over natural language parse trees. The developers have stated: "We required a language in which we could conveniently express pattern matching rules over the parse trees and other annotations (such as named entity recognition results), and a technology that could execute these rules very efficiently. We found that Prolog was the ideal choice for the language due to its simplicity and expressiveness."[84]


See also

-   Comparison of Prolog implementations
-   Logico-linguistic modeling. A method for building knowledge-based system that uses Prolog.
-   Answer set programming. A fully declarative approach to logic programming.
-   Association for Logic Programming

Related languages

-   The Gödel language is a strongly typed implementation of concurrent constraint logic programming. It is built on SICStus Prolog.
-   Visual Prolog, formerly known as PDC Prolog and Turbo Prolog, is a strongly typed object-oriented dialect of Prolog, which is very different from standard Prolog. As Turbo Prolog, it was marketed by Borland, but it is now developed and marketed by the Danish firm PDC (Prolog Development Center) that originally produced it.
-   Datalog is a subset of Prolog. It is limited to relationships that may be stratified and does not allow compound terms. In contrast to Prolog, Datalog is not Turing-complete.
-   Mercury is an offshoot of Prolog geared toward software engineering in the large with a static, polymorphic type system, as well as a mode and determinism system.
-   GraphTalk is a proprietary implementation of Warren's Abstract Machine, with additional object-oriented properties.
-   In some ways Prolog is a subset of Planner. The ideas in Planner were later further developed in the Scientific Community Metaphor.
-   AgentSpeak is a variant of Prolog for programming agent behavior in multi-agent systems.
-   Erlang began life with a Prolog-based implementation and maintains much of Prolog's unification-based syntax.
-   Pilog is a declarative language built on top of PicoLisp, that has the semantics of Prolog, but uses the syntax of Lisp.


References


Further reading

-   -   Ivan Bratko, _Prolog Programming for Artificial Intelligence_, 4th ed., 2012, . Book supplements and source code
-   William F. Clocksin, Christopher S. Mellish: _Programming in Prolog: Using the ISO Standard_. Springer, 5th ed., 2003, . _(This edition is updated for ISO Prolog. Previous editions described Edinburgh Prolog.)_
-   William F. Clocksin: _Clause and Effect. Prolog Programming for the Working Programmer_. Springer, 2003, .
-   Michael A. Covington, Donald Nute, Andre Vellino, _Prolog Programming in Depth_, 1996, .
-   Michael A. Covington, _Natural Language Processing for Prolog Programmers_, 1994,
-   M. S. Dawe and C.M.Dawe, _Prolog for Computer Sciences_, Springer Verlag 1992.
-   _ISO/IEC 13211: Information technology — Programming languages — Prolog_. International Organization for Standardization, Geneva.
-   Feliks Kluźniak and Stanisław Szpakowicz (with a contribution by Janusz S. Bień). _Prolog for Programmers_. Academic Press Inc. (London), 1985, 1987 (available under a Creative Commons license at ). .
-   Richard O'Keefe, _The Craft of Prolog_, .
-   Robert Smith, John Gibson, Aaron Sloman: 'POPLOG's two-level virtual machine support for interactive languages', in _Research Directions in Cognitive Science Volume 5: Artificial Intelligence_, Eds D. Sleeman and N. Bernsen, Lawrence Erlbaum Associates, pp 203–231, 1992.
-   Leon Sterling and Ehud Shapiro, _The Art of Prolog: Advanced Programming Techniques_, 1994, .
-   David H D Warren, Luis M. Pereira and Fernando Pereira, Prolog - the language and its implementation compared with Lisp. ACM SIGART Bulletin archive, Issue 64. Proceedings of the 1977 symposium on Artificial intelligence and programming languages, pp 109–115.

Category:1972 in computer science Category:Declarative programming languages Category:Dynamically typed programming languages Category:Logic programming languages Category:Pattern matching programming languages Category:Programming languages created in 1972 Category:Programming languages with an ISO standard Category:Prolog programming language family Category:Homoiconic programming languages

[1]

[2]

[3]

[4]

[5]

[6]

[7] See .

[8]

[9]

[10] Felty, Amy. "A logic programming approach to implementing higher-order term rewriting." Extensions of Logic Programming (1992): 135-161.

[11]

[12]

[13]

[14]  See also Watson (computer).

[15]

[16] ISO/IEC 13211-1:1995 Prolog, 6.3.7 Terms - double quoted list notation. International Organization for Standardization, Geneva.

[17] Verify Type of a Term - SWI-Prolog

[18]

[19]

[20]

[21]

[22] D. Barker-Plummer. Cliche programming in Prolog. In M. Bruynooghe, editor, Proc. Second Workshop on Meta-Programming in Logic, pages 247--256. Dept. of Comp. Sci., Katholieke Univ. Leuven, 1990.

[23]

[24]

[25]

[26]

[27]

[28]

[29] ISO/IEC 13211-2: Modules.

[30]

[31]

[32]

[33] ISO/IEC 13211: Information technology — Programming languages — Prolog. International Organization for Standardization, Geneva.

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41] David H. D. Warren. "An abstract Prolog instruction set". Technical Note 309, SRI International, Menlo Park, CA, October 1983.

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

[54] Logic programming for the real world. Zoltan Somogyi, Fergus Henderson, Thomas Conway, Richard O'Keefe. Proceedings of the ILPS'95 Postconference Workshop on Visions for the Future of Logic Programming.

[55]

[56]

[57]

[58] Jan Wielemaker and Vıtor Santos Costa: Portability of Prolog programs: theory and case-studies. CICLOPS-WLPE Workshop 2010.

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76] Ehud Shapiro. _The family of concurrent logic programming languages_ ACM Computing Surveys. September 1989.

[77]

[78]

[79] Processing OWL2 Ontologies using Thea: An Application of Logic Programming. Vangelis Vassiliadis, Jan Wielemaker and Chris Mungall. Proceedings of the 5th International Workshop on OWL: Experiences and Directions (OWLED 2009), Chantilly, VA, United States, October 23–24, 2009

[80]

[81] http://apice.unibo.it/xwiki/bin/view/Tuprolog/WebHome#

[82]

[83]

[84]