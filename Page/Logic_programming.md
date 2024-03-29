LOGIC PROGRAMMING is a type of programming paradigm which is largely based on formal logic. Any program written in a logic programming language is a set of sentences in logical form, expressing facts and rules about some problem domain. Major logic programming language families include Prolog, answer set programming (ASP) and Datalog. In all of these languages, rules are written in the form of _clauses_:

    H :- B₁, …, B_(n).

and are read declaratively as logical implications:

    H if B₁ and … and B_(n).

H is called the _head_ of the rule and B₁, …, B_(n) is called the _body_. Facts are rules that have no body, and are written in the simplified form:

    H.

In the simplest case in which H, B₁, …, B_(n) are all atomic formulae, these clauses are called definite clauses or Horn clauses. However, there exist many extensions of this simple case, the most important one being the case in which conditions in the body of a clause can also be negations of atomic formulae. Logic programming languages that include this extension have the knowledge representation capabilities of a non-monotonic logic.

In ASP and Datalog, logic programs have only a declarative reading, and their execution is performed by means of a proof procedure or model generator whose behaviour is not meant to be under the control of the programmer. However, in the Prolog family of languages, logic programs also have a procedural interpretation as goal-reduction procedures:

    to solve H, solve B₁, and ... and solve B_(n).

Consider, for example, the following clause:

    fallible(X) :- human(X).

based on an example used by Terry Winograd[1] to illustrate the programming language Planner. As a clause in a logic program, it can be used both as a procedure to test whether X is fallible by testing whether X is human, and as a procedure to find an X that is fallible by finding an X that is human. Even facts have a procedural interpretation. For example, the clause:

    human(socrates).

can be used both as a procedure to show that socrates is human, and as a procedure to find an X that is human by "assigning" socrates to X.

The declarative reading of logic programs can be used by a programmer to verify their correctness. Moreover, logic-based program transformation techniques can also be used to transform logic programs into logically equivalent programs that are more efficient. In the Prolog family of logic programming languages, the programmer can also use the known problem-solving behaviour of the execution mechanism to improve the efficiency of programs.


History

The use of mathematical logic to represent and execute computer programs is also a feature of the lambda calculus, developed by Alonzo Church in the 1930s. However, the first proposal to use the clausal form of logic for representing computer programs was made by Cordell Green.[2] This used an axiomatization of a subset of LISP, together with a representation of an input-output relation, to compute the relation by simulating the execution of the program in LISP. Foster and Elcock's Absys, on the other hand, employed a combination of equations and lambda calculus in an assertional programming language which places no constraints on the order in which operations are performed.[3]

Logic programming in its present form can be traced back to debates in the late 1960s and early 1970s about declarative versus procedural representations of knowledge in artificial intelligence. Advocates of declarative representations were notably working at Stanford, associated with John McCarthy, Bertram Raphael and Cordell Green, and in Edinburgh, with John Alan Robinson (an academic visitor from Syracuse University), Pat Hayes, and Robert Kowalski. Advocates of procedural representations were mainly centered at MIT, under the leadership of Marvin Minsky and Seymour Papert.

Although it was based on the proof methods of logic, Planner, developed at MIT, was the first language to emerge within this proceduralist paradigm.[4] Planner featured pattern-directed invocation of procedural plans from goals (i.e. goal-reduction or backward chaining) and from assertions (i.e. forward chaining). The most influential implementation of Planner was the subset of Planner, called Micro-Planner, implemented by Gerry Sussman, Eugene Charniak and Terry Winograd. It was used to implement Winograd's natural-language understanding program SHRDLU, which was a landmark at that time.[5] To cope with the very limited memory systems at the time, Planner used a backtracking control structure so that only one possible computation path had to be stored at a time. Planner gave rise to the programming languages QA-4, Popler, Conniver, QLISP, and the concurrent language Ether.

Hayes and Kowalski in Edinburgh tried to reconcile the logic-based declarative approach to knowledge representation with Planner's procedural approach. Hayes (1973) developed an equational language, Golux, in which different procedures could be obtained by altering the behavior of the theorem prover.[6] Kowalski, on the other hand, developed SLD resolution,[7] a variant of SL-resolution,[8] and showed how it treats implications as goal-reduction procedures. Kowalski collaborated with Colmerauer in Marseille, who developed these ideas in the design and implementation of the programming language Prolog.

The Association for Logic Programming was founded to promote Logic Programming in 1986.

Prolog gave rise to the programming languages ALF, Fril, Gödel, Mercury, Oz, Ciao, Visual Prolog, XSB, and λProlog, as well as a variety of concurrent logic programming languages,[9] constraint logic programming languages and Datalog.[10]


Concepts

Logic and control

Logic programming can be viewed as controlled deduction. An important concept in logic programming is the separation of programs into their logic component and their control component. With pure logic programming languages, the logic component alone determines the solutions produced. The control component can be varied to provide alternative ways of executing a logic program. This notion is captured by the slogan

    Algorithm = Logic + Control

where "Logic" represents a logic program and "Control" represents different theorem-proving strategies.[11]

Problem solving

In the simplified, propositional case in which a logic program and a top-level atomic goal contain no variables, backward reasoning determines an and-or tree, which constitutes the search space for solving the goal. The top-level goal is the root of the tree. Given any node in the tree and any clause whose head matches the node, there exists a set of child nodes corresponding to the sub-goals in the body of the clause. These child nodes are grouped together by an "and". The alternative sets of children corresponding to alternative ways of solving the node are grouped together by an "or".

Any search strategy can be used to search this space. Prolog uses a sequential, last-in-first-out, backtracking strategy, in which only one alternative and one sub-goal is considered at a time. Other search strategies, such as parallel search, intelligent backtracking, or best-first search to find an optimal solution, are also possible.

In the more general case, where sub-goals share variables, other strategies can be used, such as choosing the subgoal that is most highly instantiated or that is sufficiently instantiated so that only one procedure applies. Such strategies are used, for example, in concurrent logic programming.

Negation as failure

For most practical applications, as well as for applications that require non-monotonic reasoning in artificial intelligence, Horn clause logic programs need to be extended to normal logic programs, with negative conditions. A _clause_ in a normal logic program has the form:

    H :- A₁, …, A_(n), not B₁, …, not B_(n).

and is read declaratively as a logical implication:

    H if A₁ and … and A_(n) and not B₁ and … and not B_(n).

where H and all the A_(i) and B_(i) are atomic formulas. The negation in the negative literals not B_(i) is commonly referred to as "negation as failure", because in most implementations, a negative condition not B_(i) is shown to hold by showing that the positive condition B_(i) fails to hold. For example:

    canfly(X) :- bird(X), not abnormal(X).
    abnormal(X) :-  wounded(X).
    bird(john).
    bird(mary).
    wounded(john).

Given the goal of finding something that can fly:

    :- canfly(X).

there are two candidate solutions, which solve the first subgoal bird(X), namely X = john and X = mary. The second subgoal not abnormal(john) of the first candidate solution fails, because wounded(john) succeeds and therefore abnormal(john) succeeds. However, The second subgoal not abnormal(mary) of the second candidate solution succeeds, because wounded(mary) fails and therefore abnormal(mary) fails. Therefore, X = mary is the only solution of the goal.

Micro-Planner had a construct, called "thnot", which when applied to an expression returns the value true if (and only if) the evaluation of the expression fails. An equivalent operator is normally built-in in modern Prolog's implementations. It is normally written as not(_Goal_) or \+ _Goal_, where _Goal_ is some goal (proposition) to be proved by the program. This operator differs from negation in first-order logic: a negation such as \+ X == 1 fails when the variable X has been bound to the atom 1, but it succeeds in all other cases, including when X is unbound. This makes Prolog's reasoning non-monotonic: X = 1, \+ X == 1 always fails, while \+ X == 1, X = 1 can succeed, binding X to 1, depending on whether X was initially bound (note that standard Prolog executes goals in left-to-right order).

The logical status of negation as failure was unresolved until Keith Clark [1978] showed that, under certain natural conditions, it is a correct (and sometimes complete) implementation of classical negation with respect to the completion of the program. Completion amounts roughly to regarding the set of all the program clauses with the same predicate on the left hand side, say

    H :- Body₁.
    …
    H :- Body_(k).

as a definition of the predicate

    H iff (Body₁ or … or Body_(k))

where "iff" means "if and only if". Writing the completion also requires explicit use of the equality predicate and the inclusion of a set of appropriate axioms for equality. However, the implementation of negation by failure needs only the if-halves of the definitions without the axioms of equality.

For example, the completion of the program above is:

    canfly(X) iff bird(X), not abnormal(X).
    abnormal(X) iff wounded(X).
    bird(X) iff X = john or X = mary.
    X = X.
    not john = mary.
    not mary = john.

The notion of completion is closely related to McCarthy's circumscription semantics for default reasoning, and to the closed world assumption.

As an alternative to the completion semantics, negation as failure can also be interpreted epistemically, as in the stable model semantics of answer set programming. In this interpretation not(B_(i)) means literally that B_(i) is not known or not believed. The epistemic interpretation has the advantage that it can be combined very simply with classical negation, as in "extended logic programming", to formalise such phrases as "the contrary can not be shown", where "contrary" is classical negation and "can not be shown" is the epistemic interpretation of negation as failure.

Knowledge representation

The fact that Horn clauses can be given a procedural interpretation and, vice versa, that goal-reduction procedures can be understood as Horn clauses + backward reasoning means that logic programs combine declarative and procedural representations of knowledge. The inclusion of negation as failure means that logic programming is a kind of non-monotonic logic.

Despite its simplicity compared with classical logic, this combination of Horn clauses and negation as failure has proved to be surprisingly expressive. For example, it provides a natural representation for the common-sense laws of cause and effect, as formalised by both the situation calculus and event calculus. It has also been shown to correspond quite naturally to the semi-formal language of legislation. In particular, Prakken and Sartor[12] credit the representation of the British Nationality Act as a logic program[13] with being "hugely influential for the development of computational representations of legislation, showing how logic programming enables intuitively appealing representations that can be directly deployed to generate automatic inferences".


Variants and extensions

Prolog

The programming language Prolog was developed in 1972 by Alain Colmerauer. It emerged from a collaboration between Colmerauer in Marseille and Robert Kowalski in Edinburgh. Colmerauer was working on natural language understanding, using logic to represent semantics and using resolution for question-answering. During the summer of 1971, Colmerauer and Kowalski discovered that the clausal form of logic could be used to represent formal grammars and that resolution theorem provers could be used for parsing. They observed that some theorem provers, like hyper-resolution, behave as bottom-up parsers and others, like SL-resolution (1971), behave as top-down parsers.

It was in the following summer of 1972, that Kowalski, again working with Colmerauer, developed the procedural interpretation of implications. This dual declarative/procedural interpretation later became formalised in the Prolog notation

    H :- B₁, …, B_(n).

which can be read (and used) both declaratively and procedurally. It also became clear that such clauses could be restricted to definite clauses or Horn clauses, where H, B₁, …, B_(n) are all atomic predicate logic formulae, and that SL-resolution could be restricted (and generalised) to LUSH or SLD-resolution. Kowalski's procedural interpretation and LUSH were described in a 1973 memo, published in 1974.[14]

Colmerauer, with Philippe Roussel, used this dual interpretation of clauses as the basis of Prolog, which was implemented in the summer and autumn of 1972. The first Prolog program, also written in 1972 and implemented in Marseille, was a French question-answering system. The use of Prolog as a practical programming language was given great momentum by the development of a compiler by David Warren in Edinburgh in 1977. Experiments demonstrated that Edinburgh Prolog could compete with the processing speed of other symbolic programming languages such as Lisp. Edinburgh Prolog became the _de facto_ standard and strongly influenced the definition of ISO standard Prolog.

Abductive logic programming

Abductive logic programming is an extension of normal Logic Programming that allows some predicates, declared as abducible predicates, to be "open" or undefined. A clause in an abductive logic program has the form:

    H :- B₁, …, B_(n), A₁, …, A_(n).

where H is an atomic formula that is not abducible, all the B_(i) are literals whose predicates are not abducible, and the A_(i) are atomic formulas whose predicates are abducible. The abducible predicates can be constrained by integrity constraints, which can have the form:

    false :- L₁, …, L_(n).

where the L_(i) are arbitrary literals (defined or abducible, and atomic or negated). For example:

    canfly(X) :- bird(X), normal(X).
    false :-  normal(X), wounded(X).
    bird(john).
    bird(mary).
    wounded(john).

where the predicate normal is abducible.

Problem solving is achieved by deriving hypotheses expressed in terms of the abducible predicates as solutions of problems to be solved. These problems can be either observations that need to be explained (as in classical abductive reasoning) or goals to be solved (as in normal logic programming). For example, the hypothesis normal(mary) explains the observation canfly(mary). Moreover, the same hypothesis entails the only solution X = mary of the goal of finding something that can fly:

    :- canfly(X).

Abductive logic programming has been used for fault diagnosis, planning, natural language processing and machine learning. It has also been used to interpret Negation as Failure as a form of abductive reasoning.

Metalogic programming

Because mathematical logic has a long tradition of distinguishing between object language and metalanguage, logic programming also allows metalevel programming. The simplest metalogic program is the so-called "vanilla" meta-interpreter:

        solve(true).
        solve((A,B)):- solve(A),solve(B).
        solve(A):- clause(A,B),solve(B).

where true represents an empty conjunction, and clause(A,B) means there is an object-level clause of the form A :- B.

Metalogic programming allows object-level and metalevel representations to be combined, as in natural language. It can also be used to implement any logic that is specified by means of inference rules. Metalogic is used in logic programming to implement metaprograms, which manipulate other programs, databases, knowledge bases or axiomatic theories as data.

Constraint logic programming

Constraint logic programming combines Horn clause logic programming with constraint solving. It extends Horn clauses by allowing some predicates, declared as constraint predicates, to occur as literals in the body of clauses. A constraint logic program is a set of clauses of the form:

    H :- C₁, …, C_(n) ◊ B₁, …, B_(n).

where H and all the B_(i) are atomic formulas, and the C_(i) are constraints. Declaratively, such clauses are read as ordinary logical implications:

    H if C₁ and … and C_(n) and B₁ and … and B_(n).

However, whereas the predicates in the heads of clauses are defined by the constraint logic program, the predicates in the constraints are predefined by some domain-specific model-theoretic structure or theory.

Procedurally, subgoals whose predicates are defined by the program are solved by goal-reduction, as in ordinary logic programming, but constraints are checked for satisfiability by a domain-specific constraint-solver, which implements the semantics of the constraint predicates. An initial problem is solved by reducing it to a satisfiable conjunction of constraints.

The following constraint logic program represents a toy temporal database of john's history as a teacher:

    teaches(john, hardware, T) :- 1990 ≤ T, T < 1999.
    teaches(john, software, T) :- 1999 ≤ T, T < 2005.
    teaches(john, logic, T) :- 2005 ≤ T, T ≤ 2012.
    rank(john, instructor, T) :- 1990 ≤ T, T < 2010.
    rank(john, professor, T) :- 2010 ≤ T, T < 2014.

Here ≤ and < are constraint predicates, with their usual intended semantics. The following goal clause queries the database to find out when john both taught logic and was a professor:

    :- teaches(john, logic, T), rank(john, professor, T).

The solution is 2010 ≤ T, T ≤ 2012.

Constraint logic programming has been used to solve problems in such fields as civil engineering, mechanical engineering, digital circuit verification, automated timetabling, air traffic control, and finance. It is closely related to abductive logic programming.

Concurrent logic programming

Concurrent logic programming integrates concepts of logic programming with concurrent programming. Its development was given a big impetus in the 1980s by its choice for the systems programming language of the Japanese Fifth Generation Project (FGCS).[15]

A concurrent logic program is a set of guarded Horn clauses of the form:



        H :- G₁, …, G_(n) | B₁, …, B_(n).

The conjunction G₁, … , G_(n) is called the guard of the clause, and | is the commitment operator. Declaratively, guarded Horn clauses are read as ordinary logical implications:



        H if G₁ and … and G_(n) and B₁ and … and B_(n).

However, procedurally, when there are several clauses whose heads H match a given goal, then all of the clauses are executed in parallel, checking whether their guards G₁, … , G_(n) hold. If the guards of more than one clause hold, then a committed choice is made to one of the clauses, and execution proceedes with the subgoals B₁, …, B_(n) of the chosen clause. These subgoals can also be executed in parallel. Thus concurrent logic programming implements a form of "don't care nondeterminism", rather than "don't know nondeterminism".

For example, the following concurrent logic program defines a predicate shuffle(Left, Right, Merge) , which can be used to shuffle two lists Left and Right, combining them into a single list Merge that preserves the ordering of the two lists Left and Right:

    shuffle([], [], []).
    shuffle(Left, Right, Merge) :-
        Left = [First | Rest] |
        Merge = [First | ShortMerge],
        shuffle(Rest, Right, ShortMerge).
    shuffle(Left, Right, Merge) :-
        Right = [First | Rest] |
        Merge = [First | ShortMerge],
        shuffle(Left, Rest, ShortMerge).

Here, [] represents the empty list, and [Head | Tail] represents a list with first element Head followed by list Tail, as in Prolog. (Notice that the first occurrence of | in the second and third clauses is the list constructor, whereas the second occurrence of | is the commitment operator.) The program can be used, for example, to shuffle the lists [ace, queen, king] and [1, 4, 2] by invoking the goal clause:

    shuffle([ace, queen, king], [1, 4, 2], Merge).

The program will non-deterministically generate a single solution, for example Merge = [ace, queen, 1, king, 4, 2].

Arguably, concurrent logic programming is based on message passing and consequently is subject to the same indeterminacy as other concurrent message-passing systems, such as Actors (see Indeterminacy in concurrent computation). Carl Hewitt has argued that, concurrent logic programming is not based on logic in his sense that computational steps cannot be logically deduced.[16] However, in concurrent logic programming, any result of a terminating computation is a logical consequence of the program, and any partial result of a partial computation is a logical consequence of the program and the residual goal (process network). Consequently, the indeterminacy of computations implies that not all logical consequences of the program can be deduced.

Concurrent constraint logic programming

Concurrent constraint logic programming combines concurrent logic programming and constraint logic programming, using constraints to control concurrency. A clause can contain a guard, which is a set of constraints that may block the applicability of the clause. When the guards of several clauses are satisfied, concurrent constraint logic programming makes a committed choice to the use of only one.

Inductive logic programming

Inductive logic programming is concerned with generalizing positive and negative examples in the context of background knowledge: machine learning of logic programs. Recent work in this area, combining logic programming, learning and probability, has given rise to the new field of statistical relational learning and probabilistic inductive logic programming.

Higher-order logic programming

Several researchers have extended logic programming with higher-order programming features derived from higher-order logic, such as predicate variables. Such languages include the Prolog extensions HiLog and λProlog.

Linear logic programming

Basing logic programming within linear logic has resulted in the design of logic programming languages that are considerably more expressive than those based on classical logic. Horn clause programs can only represent state change by the change in arguments to predicates. In linear logic programming, one can use the ambient linear logic to support state change. Some early designs of logic programming languages based on linear logic include LO [Andreoli & Pareschi, 1991], Lolli,[17] ACL,[18] and Forum [Miller, 1996]. Forum provides a goal-directed interpretation of all of linear logic.

Object-oriented logic programming

F-logic extends logic programming with objects and the frame syntax.

Logtalk extends the Prolog programming language with support for objects, protocols, and other OOP concepts. Highly portable, it supports most standard-compliant Prolog systems as backend compilers.

Transaction logic programming

Transaction logic is an extension of logic programming with a logical theory of state-modifying updates. It has both a model-theoretic semantics and a procedural one. An implementation of a subset of Transaction logic is available in the Flora-2 system. Other prototypes are also available.


See also

-   Automated theorem proving
-   Boolean satisfiability problem
-   Constraint logic programming
-   Datalog
-   Fril
-   Functional programming
-   Fuzzy logic
-   Inductive logic programming
-   Logic in computer science (includes Formal methods)
-   Logic programming languages
-   Programming paradigm
-   R++
-   Reasoning system
-   Rule-based machine learning
-   Satisfiability


References

Citations

General introductions

-   -   Robert Kowalski. THE EARLY YEARS OF LOGIC PROGRAMMING
-

Other sources

-   John McCarthy. PROGRAMS WITH COMMON SENSE Symposium on Mechanization of Thought Processes. National Physical Laboratory. Teddington, England. 1958.
-   -   Ehud Shapiro (Editor). CONCURRENT PROLOG MIT Press. 1987.
-   James Slagle. EXPERIMENTS WITH A DEDUCTIVE QUESTION-ANSWERING PROGRAM CACM. December 1965.


Further reading

-   Carl Hewitt. PROCEDURAL EMBEDDING OF KNOWLEDGE IN PLANNER IJCAI 1971.
-   Carl Hewitt. THE REPEATED DEMISE OF LOGIC PROGRAMMING AND WHY IT WILL BE REINCARNATED
-   Evgeny Dantsin, Thomas , Georg Gottlob, Andrei Voronkov: Complexity and expressive power of logic programming. ACM Comput. Surv. 33(3): 374–425 (2001)
-   Ulf Nilsson and Jan Maluszynski, Logic, Programming and Prolog


External links

-   _Logic Programming_ Virtual Library entry
-   Bibliographies on Logic Programming
-   Association for Logic Programming (ALP)
-   Theory and Practice of Logic Programming journal
-   Logic programming in C++ with Castor
-   Logic programming in Oz
-   Prolog Development Center
-   Racklog: Logic Programming in Racket

Category:Computer-related introductions in 1972 Logic_programming Category:Programming paradigms

[1]

[2] Cordell Green. APPLICATION OF THEOREM PROVING TO PROBLEM SOLVING IJCAI 1969.

[3] J.M. Foster and E.W. Elcock. ABSYS 1: An Incremental Compiler for Assertions: an Introduction, Machine Intelligence 4, Edinburgh U Press, 1969, pp. 423–429

[4] Carl Hewitt. PLANNER: A LANGUAGE FOR PROVING THEOREMS IN ROBOTS IJCAI 1969.

[5]

[6] Pat Hayes. Computation and Deduction. In Proceedings of the 2nd MFCS Symposium. Czechoslovak Academy of Sciences, 1973, pp. 105–118.

[7] Robert Kowalski PREDICATE LOGIC AS A PROGRAMMING LANGUAGE Memo 70, Department of Artificial Intelligence, Edinburgh University. 1973. Also in Proceedings IFIP Congress, Stockholm, North Holland Publishing Co., 1974, pp. 569–574.

[8] Robert Kowalski and Donald and Kuehner LINEAR RESOLUTION WITH SELECTION FUNCTION Artificial Intelligence, Vol. 2, 1971, pp. 227–60.

[9]  Also appeared in

[10]

[11]

[12] Prakken, H. and Sartor, G., 2015. Law and logic: a review from an argumentation perspective. Artificial Intelligence, 227, 214–245.

[13] Sergot, M.J., Sadri, F., Kowalski, R.A., Kriwaczek, F., Hammond, P. and Cory, H.T., 1986. The British Nationality Act as a logic program. Communications of the ACM, 29(5), 370–386.

[14]

[15] Shunichi Uchida and Kazuhiro Fuchi PROCEEDINGS OF THE FGCS PROJECT EVALUATION WORKSHOP Institute for New Generation Computer Technology (ICOT). 1992.

[16]

[17] Joshua Hodas and Dale Miller. LOGIC PROGRAMMING IN A FRAGMENT OF INTUITIONISTIC LINEAR LOGIC, Information and Computation, 1994, 110(2), 327–365.

[18] Naoki Kobayashi and Akinori Yonezawa. ASYNCHRONOUS COMMUNICATION MODEL BASED ON LINEAR LOGIC, Formal Aspects of Computing, 1994, 279–294.