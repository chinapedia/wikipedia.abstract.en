In computer science, the BOOLEAN SATISFIABILITY PROBLEM (sometimes called PROPOSITIONAL SATISFIABILITY PROBLEM and abbreviated SATISFIABILITY or SAT) is the problem of determining if there exists an interpretation that satisfies a given Boolean formula. In other words, it asks whether the variables of a given Boolean formula can be consistently replaced by the values TRUE or FALSE in such a way that the formula evaluates to TRUE. If this is the case, the formula is called _satisfiable_. On the other hand, if no such assignment exists, the function expressed by the formula is FALSE for all possible variable assignments and the formula is _unsatisfiable_. For example, the formula "_a_ AND NOT _b_" is satisfiable because one can find the values _a_ = TRUE and _b_ = FALSE, which make (_a_ AND NOT _b_) = TRUE. In contrast, "_a_ AND NOT _a_" is unsatisfiable.

SAT is the first problem that was proven to be NP-complete; see Cook–Levin theorem. This means that all problems in the complexity class NP, which includes a wide range of natural decision and optimization problems, are at most as difficult to solve as SAT. There is no known algorithm that efficiently solves each SAT problem, and it is generally believed that no such algorithm exists; yet this belief has not been proven mathematically, and resolving the question of whether SAT has a polynomial-time algorithm is equivalent to the P versus NP problem, which is a famous open problem in the theory of computing.

Nevertheless, as of 2007, heuristic SAT-algorithms are able to solve problem instances involving tens of thousands of variables and formulas consisting of millions of symbols,[1] which is sufficient for many practical SAT problems from, e.g., artificial intelligence, circuit design, and automatic theorem proving.


Basic definitions and terminology

A _propositional logic formula_, also called _Boolean expression_, is built from variables, operators AND (conjunction, also denoted by ∧), OR (disjunction, ∨), NOT (negation, ¬), and parentheses. A formula is said to be _satisfiable_ if it can be made TRUE by assigning appropriate logical values (i.e. TRUE, FALSE) to its variables. The _Boolean satisfiability problem_ (SAT) is, given a formula, to check whether it is satisfiable. This decision problem is of central importance in many areas of computer science, including theoretical computer science, complexity theory, algorithmics, cryptography and artificial intelligence.

There are several special cases of the Boolean satisfiability problem in which the formulas are required to have a particular structure. A _literal_ is either a variable, called _positive literal_, or the negation of a variable, called _negative literal_. A _clause_ is a disjunction of literals (or a single literal). A clause is called a _Horn clause_ if it contains at most one positive literal. A formula is in _conjunctive normal form_ (CNF) if it is a conjunction of clauses (or a single clause). For example, is a positive literal, is a negative literal, is a clause, and is a formula in conjunctive normal form; its first and third clauses are Horn clauses, but its second clause is not. The formula is satisfiable, by choosing _x_₁ = FALSE, _x_₂ = FALSE, and _x_₃ arbitrarily, since (FALSE ∨ ¬FALSE) ∧ (¬FALSE ∨ FALSE ∨ _x_₃) ∧ ¬FALSE evaluates to (FALSE ∨ TRUE) ∧ (TRUE ∨ FALSE ∨ _x_₃) ∧ TRUE, and in turn to TRUE ∧ TRUE ∧ TRUE (i.e. to TRUE). In contrast, the CNF formula _a_ ∧ ¬_a_, consisting of two clauses of one literal, is unsatisfiable, since for _a_=TRUE or _a_=FALSE it evaluates to TRUE ∧ ¬TRUE (i.e., FALSE) or FALSE ∧ ¬FALSE (i.e., again FALSE), respectively.

For some versions of the SAT problem, it is useful to define the notion of a _generalized conjunctive normal form_ formula, viz. as a conjunction of arbitrarily many _generalized clauses_, the latter being of the form for some boolean operator _R_ and (ordinary) literals . Different sets of allowed boolean operators lead to different problem versions. As an example, _R_(¬_x_,_a_,_b_) is a generalized clause, and _R_(¬_x_,_a_,_b_) ∧ _R_(_b_,_y_,_c_) ∧ _R_(_c_,_d_,¬_z_) is a generalized conjunctive normal form. This formula is used below, with _R_ being the ternary operator that is TRUE just when exactly one of its arguments is.

Using the laws of Boolean algebra, every propositional logic formula can be transformed into an equivalent conjunctive normal form, which may, however, be exponentially longer. For example, transforming the formula (_x_₁∧_y_₁) ∨ (_x_₂∧_y_₂) ∨ ... ∨ (_x__(_n_)∧_y__(_n_)) into conjunctive normal form yields








    ;

while the former is a disjunction of _n_ conjunctions of 2 variables, the latter consists of 2^(_n_) clauses of _n_ variables.


Complexity and restricted versions

Unrestricted satisfiability (SAT)

SAT was the first known NP-complete problem, as proved by Stephen Cook at the University of Toronto in 1971[2] and independently by Leonid Levin at the National Academy of Sciences in 1973.[3] Until that time, the concept of an NP-complete problem did not even exist. The proof shows how every decision problem in the complexity class NP can be reduced to the SAT problem for CNF[4] formulas, sometimes called CNFSAT. A useful property of Cook's reduction is that it preserves the number of accepting answers. For example, deciding whether a given graph has a 3-coloring is another problem in NP; if a graph has 17 valid 3-colorings, the SAT formula produced by the Cook–Levin reduction will have 17 satisfying assignments.

NP-completeness only refers to the run-time of the worst case instances. Many of the instances that occur in practical applications can be solved much more quickly. See Algorithms for solving SAT below.

SAT is trivial if the formulas are restricted to those in DISJUNCTIVE NORMAL FORM, that is, they are disjunction of conjunctions of literals. Such a formula is indeed satisfiable if and only if at least one of its conjunctions is satisfiable, and a conjunction is satisfiable if and only if it does not contain both _x_ and NOT _x_ for some variable _x_. This can be checked in linear time. Furthermore, if they are restricted to being in FULL DISJUNCTIVE NORMAL FORM, in which every variable appears exactly once in every conjunction, they can be checked in constant time (each conjunction represents one satisfying assignment). But it can take exponential time and space to convert a general SAT problem to disjunctive normal form; for an example exchange "∧" and "∨" in the above exponential blow-up example for conjunctive normal forms.

3-satisfiability

Sat_reduced_to_Clique_from_Sipser.svg. The green vertices form a 3-clique and correspond to the satisfying assignment _x_=FALSE, _y_=TRUE.]] Like the satisfiability problem for arbitrary formulas, determining the satisfiability of a formula in conjunctive normal form where each clause is limited to at most three literals is NP-complete also; this problem is called 3-SAT, 3CNFSAT, or 3-SATISFIABILITY. To reduce the unrestricted SAT problem to 3-SAT, transform each clause to a conjunction of _n_ − 2 clauses







where are fresh variables not occurring elsewhere. Although the two formulas are not logically equivalent, they are equisatisfiable. The formula resulting from transforming all clauses is at most 3 times as long as its original, i.e. the length growth is polynomial.[5]

3-SAT is one of Karp's 21 NP-complete problems, and it is used as a starting point for proving that other problems are also NP-hard.[6] This is done by polynomial-time reduction from 3-SAT to the other problem. An example of a problem where this method has been used is the clique problem: given a CNF formula consisting of _c_ clauses, the corresponding graph consists of a vertex for each literal, and an edge between each two non-contradicting[7] literals from different clauses, cf. picture. The graph has a _c_-clique if and only if the formula is satisfiable.

There is a simple randomized algorithm due to Schöning (1999) that runs in time (4/3)^(_n_) where _n_ is the number of variables in the 3-SAT proposition, and succeeds with high probability to correctly decide 3-SAT.[8]

The exponential time hypothesis asserts that no algorithm can solve 3-SAT (or indeed _k_-SAT for any _k > 2_) in time (i.e., fundamentally faster than exponential in _n_).

Selman, Mitchell, and Levesque (1996) give empirical data on the difficulty of randomly generated 3-SAT formulas, depending on their size parameters. Difficulty is measured in number recursive calls made by a DPLL algorithm.[9]

3-satisfiability can be generalized to K-SATISFIABILITY (K-SAT, also K-CNF-SAT), when formulas in CNF are considered with each clause containing up to _k_ literals. However, since for any _k_≥3, this problem can neither be easier than 3-SAT nor harder than SAT, and the latter two are NP-complete, so must be k-SAT.

Some authors restrict k-SAT to CNF formulas with EXACTLY K LITERALS. This doesn't lead to a different complexity class either, as each clause with _j_<_k_ literals can be padded with fixed dummy variables to . After padding all clauses, 2^(_k_)-1 extra clauses[10] have to be appended to ensure that only can lead to a satisfying assignment. Since _k_ doesn't depend on the formula length, the extra clauses lead to a constant increase in length. For the same reason, it does not matter whether DUPLICATE LITERALS are allowed in clauses (like e.g. ), or not.

Exactly-1 3-satisfiability

Schaefer's_3-SAT_to_1-in-3-SAT_reduction.gif A variant of the 3-satisfiability problem is the ONE-IN-THREE 3-SAT (also known variously as 1-IN-3-SAT and EXACTLY-1 3-SAT). Given a conjunctive normal form with three literals per clause, the problem is to determine whether there exists a truth assignment to the variables so that each clause has _exactly_ one TRUE literal (and thus exactly two FALSE literals). In contrast, ordinary 3-SAT requires that every clause has _at least_ one TRUE literal. Formally, a one-in-three 3-SAT problem is given as a generalized conjunctive normal form with all generalized clauses using a ternary operator _R_ that is TRUE just if exactly one of its arguments is. When all literals of a one-in-three 3-SAT formula are positive, the satisfiability problem is called ONE-IN-THREE POSITIVE 3-SAT.

One-in-three 3-SAT, together with its positive case, is listed as NP-complete problem "LO4" in the standard reference, _Computers and Intractability: A Guide to the Theory of NP-Completeness_ by Michael R. Garey and David S. Johnson. One-in-three 3-SAT was proved to be NP-complete by Thomas Jerome Schaefer as a special case of Schaefer's dichotomy theorem, which asserts that any problem generalizing Boolean satisfiability in a certain way is either in the class P or is NP-complete.[11]

Schaefer gives a construction allowing an easy polynomial-time reduction from 3-SAT to one-in-three 3-SAT. Let "(_x_ or _y_ or _z_)" be a clause in a 3CNF formula. Add six fresh boolean variables _a_, _b_, _c_, _d_, _e_, and _f_, to be used to simulate this clause and no other. Then the formula _R_(_x_,_a_,_d_) ∧ _R_(_y_,_b_,_d_) ∧ _R_(_a_,_b_,_e_) ∧ _R_(_c_,_d_,_f_) ∧ _R_(_z_,_c_,FALSE) is satisfiable by some setting of the fresh variables if and only if at least one of _x_, _y_, or _z_ is TRUE, see picture (left). Thus any 3-SAT instance with _m_ clauses and _n_ variables may be converted into an equisatisfiable one-in-three 3-SAT instance with 5_m_ clauses and _n_+6_m_ variables.[12] Another reduction involves only four fresh variables and three clauses: _R_(¬_x_,_a_,_b_) ∧ _R_(_b_,_y_,_c_) ∧ R(_c_,_d_,¬_z_), see picture (right).

Not-all-equal 3-satisfiability

Another variant is the NOT-ALL-EQUAL 3-SATISFIABILITY problem (also called NAE3SAT). Given a conjunctive normal form with three literals per clause, the problem is to determine if an assignment to the variables exists such that in no clause all three literals have the same truth value. This problem is NP-complete, too, even if no negation symbols are admitted, by Schaefer's dichotomy theorem.[13]

2-satisfiability

SAT is easier if the number of literals in a clause is limited to at most 2, in which case the problem is called 2-SAT. This problem can be solved in polynomial time, and in fact is complete for the complexity class NL. If additionally all OR operations in literals are changed to XOR operations, the result is called EXCLUSIVE-OR 2-SATISFIABILITY, which is a problem complete for the complexity class SL = L.

Horn-satisfiability

The problem of deciding the satisfiability of a given conjunction of Horn clauses is called HORN-SATISFIABILITY, or HORN-SAT. It can be solved in polynomial time by a single step of the Unit propagation algorithm, which produces the single minimal model of the set of Horn clauses (w.r.t. the set of literals assigned to TRUE). Horn-satisfiability is P-complete. It can be seen as P's version of the Boolean satisfiability problem. Also, deciding the truth of quantified Horn formulas can be done in polynomial time. [14]

Horn clauses are of interest because they are able to express implication of one variable from a set of other variables. Indeed, one such clause ¬_x_₁ ∨ ... ∨ ¬_x__(_n_) ∨ _y_ can be rewritten as _x_₁ ∧ ... ∧ _x__(_n_) → _y_, that is, if _x_₁,...,_x__(_n_) are all TRUE, then _y_ needs to be TRUE as well.

A generalization of the class of Horn formulae is that of renameable-Horn formulae, which is the set of formulae that can be placed in Horn form by replacing some variables with their respective negation. For example, (_x_₁ ∨ ¬_x_₂) ∧ (¬_x_₁ ∨ _x_₂ ∨ _x_₃) ∧ ¬_x_₁ is not a Horn formula, but can be renamed to the Horn formula (_x_₁ ∨ ¬_x_₂) ∧ (¬_x_₁ ∨ _x_₂ ∨ ¬_y_₃) ∧ ¬_x_₁ by introducing _y_₃ as negation of _x_₃. In contrast, no renaming of (_x_₁ ∨ ¬_x_₂ ∨ ¬_x_₃) ∧ (¬_x_₁ ∨ _x_₂ ∨ _x_₃) ∧ ¬_x_₁ leads to a Horn formula. Checking the existence of such a replacement can be done in linear time; therefore, the satisfiability of such formulae is in P as it can be solved by first performing this replacement and then checking the satisfiability of the resulting Horn formula.

  ---------------------------------------------------
  Boolean_satisfiability_vs_true_literal_counts.png
  ---------------------------------------------------

XOR-satisfiability

+-----------------------------------------------------------------------------------+
| Solving an XOR-SAT example                                                        |
| by Gaussian elimination                                                           |
+===================================================================================+
|   Given formula                                                                   |
|   -------------------------------------------------------------------             |
|   ("⊕" means XOR, the is optional)                                                |
|   (_a_⊕_c_⊕_d_) ∧ (_b_⊕¬_c_⊕_d_) ∧ (_a_⊕_b_⊕¬_d_) ∧ (_a_⊕¬_b_⊕¬_c_)               |
+-----------------------------------------------------------------------------------+
| +------------------------------------+                                            |
| | Equation system                    |                                            |
| +====================================+                                            |
| | ("1" means TRUE, "0" means FALSE)  |                                            |
| +------------------------------------+                                            |
| | Each clause leads to one equation. |                                            |
| +------------------------------------+                                            |
| |                                    |                                            |
| +------------------------------------+                                            |
| |                                    |                                            |
| +------------------------------------+                                            |
| |                                    |                                            |
| +------------------------------------+                                            |
| |                                    |                                            |
| +------------------------------------+                                            |
| |                                    |                                            |
| +------------------------------------+                                            |
+-----------------------------------------------------------------------------------+
| +-----------------------------------------------------------+                     |
| | Normalized equation system                                |                     |
| +===========================================================+                     |
| | using properties of Boolean rings (¬_x_=1⊕_x_, _x_⊕_x_=0) |                     |
| +-----------------------------------------------------------+                     |
| | _a_                                                       |                     |
| +-----------------------------------------------------------+                     |
| | _b_                                                       |                     |
| +-----------------------------------------------------------+                     |
| | _a_                                                       |                     |
| +-----------------------------------------------------------+                     |
| | _a_                                                       |                     |
| +-----------------------------------------------------------+                     |
| |                                                           |                     |
| +-----------------------------------------------------------+                     |
| | (If the is present, contradicts                           |                     |
| +-----------------------------------------------------------+                     |
| | the last black one, so the system is unsolvable.          |                     |
| +-----------------------------------------------------------+                     |
| | Therefore, Gauss' algorithm is                            |                     |
| +-----------------------------------------------------------+                     |
| | used only for the black equations.)                       |                     |
| +-----------------------------------------------------------+                     |
+-----------------------------------------------------------------------------------+
|   Associated coefficient matrix                                                   |
|   -------------------------------                                                 |
|                                                                                   |
|   _a_                                                                             |
|                                                                                   |
|   1                                                                               |
|   0                                                                               |
|   1                                                                               |
|   1                                                                               |
+-----------------------------------------------------------------------------------+
|   Transforming to echelon form                                                    |
|   ------------------------------                                                  |
|                                                                                   |
|   _a_                                                                             |
|                                                                                   |
|   1                                                                               |
|   1                                                                               |
|   1                                                                               |
|   0                                                                               |
|                                                                                   |
|   1                                                                               |
|   0                                                                               |
|   0                                                                               |
|   0                                                                               |
|                                                                                   |
|   1                                                                               |
|   0                                                                               |
|   0                                                                               |
|   0                                                                               |
+-----------------------------------------------------------------------------------+
|   Transforming to diagonal form                                                   |
|   -------------------------------                                                 |
|                                                                                   |
|   _a_                                                                             |
|                                                                                   |
|   1                                                                               |
|   0                                                                               |
|   0                                                                               |
|   0                                                                               |
|                                                                                   |
|   1                                                                               |
|   0                                                                               |
|   0                                                                               |
|   0                                                                               |
+-----------------------------------------------------------------------------------+
|   Solution:                                                                       |
|   ------------------------------------------------------------------------------- |
|   If the is present:                                                              |
|   Else:                                                                           |
|   AS A CONSEQUENCE:                                                               |
|   _R_(_a_,_c_,_d_) ∧ _R_(_b_,¬_c_,_d_) ∧ _R_(_a_,_b_,¬_d_) ∧ _R_(_a_,¬_b_,¬_c_)   |
|   is not 1-in-3-satisfiable,                                                      |
|   while (_a_∨_c_∨_d_) ∧ (_b_∨¬_c_∨_d_) ∧ (_a_∨_b_∨¬_d_) ∧ (_a_∨¬_b_∨¬_c_)         |
|   is 3-satisfiable with _a_=_c_=FALSE and _b_=_d_=TRUE.                           |
+-----------------------------------------------------------------------------------+

Another special case is the class of problems where each clause contains XOR (i.e. exclusive or) rather than (plain) OR operators.[15] This is in P, since an XOR-SAT formula can also be viewed as a system of linear equations mod 2, and can be solved in cubic time by Gaussian elimination;[16] see the box for an example. This recast is based on the kinship between Boolean algebras and Boolean rings, and the fact that arithmetic modulo two forms a finite field. Since _a_ XOR _b_ XOR _c_ evaluates to TRUE if and only if exactly 1 or 3 members of {_a_,_b_,_c_} are TRUE, each solution of the 1-in-3-SAT problem for a given CNF formula is also a solution of the XOR-3-SAT problem, and in turn each solution of XOR-3-SAT is a solution of 3-SAT, cf. picture. As a consequence, for each CNF formula, it is possible to solve the XOR-3-SAT problem defined by the formula, and based on the result infer either that the 3-SAT problem is solvable or that the 1-in-3-SAT problem is unsolvable.

Provided that the complexity classes P and NP are not equal, neither 2-, nor Horn-, nor XOR-satisfiability is NP-complete, unlike SAT.

Schaefer's dichotomy theorem

The restrictions above (CNF, 2CNF, 3CNF, Horn, XOR-SAT) bound the considered formulae to be conjunctions of subformulae; each restriction states a specific form for all subformulae: for example, only binary clauses can be subformulae in 2CNF.

Schaefer's dichotomy theorem states that, for any restriction to Boolean operators that can be used to form these subformulae, the corresponding satisfiability problem is in P or NP-complete. The membership in P of the satisfiability of 2CNF, Horn, and XOR-SAT formulae are special cases of this theorem.[17]


Extensions of SAT

An extension that has gained significant popularity since 2003 is SATISFIABILITY MODULO THEORIES (SMT) that can enrich CNF formulas with linear constraints, arrays, all-different constraints, uninterpreted functions,[18] _etc._ Such extensions typically remain NP-complete, but very efficient solvers are now available that can handle many such kinds of constraints.

The satisfiability problem becomes more difficult if both "for all" (∀) and "there exists" (∃) quantifiers are allowed to bind the Boolean variables. An example of such an expression would be ; it is valid, since for all values of _x_ and _y_, an appropriate value of _z_ can be found, viz. _z_=TRUE if both _x_ and _y_ are FALSE, and _z_=FALSE else. SAT itself (tacitly) uses only ∃ quantifiers. If only ∀ quantifiers are allowed instead, the so-called TAUTOLOGY PROBLEM is obtained, which is co-NP-complete. If both quantifiers are allowed, the problem is called the QUANTIFIED BOOLEAN FORMULA PROBLEM (QBF), which can be shown to be PSPACE-complete. It is widely believed that PSPACE-complete problems are strictly harder than any problem in NP, although this has not yet been proved. Using highly parallel _P systems_, QBF-SAT problems can be solved in linear time.[19]

Ordinary SAT asks if there is at least one variable assignment that makes the formula true. A variety of variants deal with the number of such assignments:

-   MAJ-SAT asks if the majority of all assignments make the formula TRUE. It is known to be complete for PP, a probabilistic class.
-   #SAT, the problem of counting how many variable assignments satisfy a formula, is a counting problem, not a decision problem, and is #P-complete.
-   UNIQUE-SAT is the problem of determining whether a formula has exactly one assignment. It is complete for US, the complexity class describing problems solvable by a non-deterministic polynomial time Turing machine that accepts when there is exactly one nondeterministic accepting path and rejects otherwise.
-   UNAMBIGUOUS-SAT is the name given to the satisfiability problem when the input is restricted to formulas having at most one satisfying assignment. The problem is also called USAT[20]. A solving algorithm for UNAMBIGUOUS-SAT is allowed to exhibit any behavior, including endless looping, on a formula having several satisfying assignments. Although this problem seems easier, Valiant and Vazirani have shown[21] that if there is a practical (i.e. randomized polynomial-time) algorithm to solve it, then all problems in NP can be solved just as easily.
-   MAX-SAT, the maximum satisfiability problem, is an FNP generalization of SAT. It asks for the maximum number of clauses, which can be satisfied by any assignment. It has efficient approximation algorithms, but is NP-hard to solve exactly. Worse still, it is APX-complete, meaning there is no polynomial-time approximation scheme (PTAS) for this problem unless P=NP.

Other generalizations include satisfiability for first- and second-order logic, constraint satisfaction problems, 0-1 integer programming.


Self-reducibility

The SAT problem is SELF-REDUCIBLE, that is, each algorithm which correctly answers if an instance of SAT is solvable can be used to find a satisfying assignment. First, the question is asked on the given formula Φ. If the answer is "no", the formula is unsatisfiable. Otherwise, the question is asked on the partly instantiated formula Φ{_x_₁=TRUE}, i.e. Φ with the first variable _x_₁ replaced by TRUE, and simplified accordingly. If the answer is "yes", then _x_₁=TRUE, otherwise _x_₁=FALSE. Values of other variables can be found subsequently in the same way. In total, _n_+1 runs of the algorithm are required, where _n_ is the number of distinct variables in Φ.

This property of self-reducibility is used in several theorems in complexity theory:

    NP ⊆ P/poly ⇒ PH = Σ₂   (Karp–Lipton theorem)
    NP ⊆ BPP ⇒ NP = RP
    P = NP ⇒ FP = FNP


Algorithms for solving SAT

Since the SAT problem is NP-complete, only algorithms with exponential worst-case complexity are known for it. In spite of this, efficient and scalable algorithms for SAT were developed during the 2000s and have contributed to dramatic advances in our ability to automatically solve problem instances involving tens of thousands of variables and millions of constraints (i.e. clauses).[22] Examples of such problems in electronic design automation (EDA) include formal equivalence checking, model checking, formal verification of pipelined microprocessors,[23] automatic test pattern generation, routing of FPGAs,[24] planning, and scheduling problems, and so on. A SAT-solving engine is now considered to be an essential component in the EDA toolbox.

There are two classes of high-performance algorithms for solving instances of SAT in practice: the conflict-driven clause learning algorithm, which can be viewed as a modern variant of the DPLL algorithm (well known implementations include Chaff[25] and GRASP[26]) and stochastic local search algorithms, such as WalkSAT.

A DPLL SAT solver employs a systematic backtracking search procedure to explore the (exponentially sized) space of variable assignments looking for satisfying assignments. The basic search procedure was proposed in two seminal papers in the early 1960s (see references below) and is now commonly referred to as the Davis–Putnam–Logemann–Loveland algorithm ("DPLL" or "DLL").[27][28] Theoretically, exponential lower bounds have been proved for the DPLL family of algorithms.

In contrast, randomized algorithms like the PPSZ algorithm by Paturi, Pudlak, Saks, and Zane set variables in a random order according to some heuristics, for example bounded-width resolution. If the heuristic can't find the correct setting, the variable is assigned randomly. The PPSZ algorithm has a runtime of O(2^(0.386n)) for 3-SAT with a single satisfying assignment. Currently this is the best-known runtime for this problem. In the setting with many satisfying assignments the randomized algorithm by Schöning has a better bound.[29][30]

Modern SAT solvers (developed in the 2000s) come in two flavors: "conflict-driven" and "look-ahead". Conflict-driven solvers augment the basic DPLL search algorithm with efficient conflict analysis, clause learning, non-chronological backtracking (a.k.a. backjumping), as well as "two-watched-literals" unit propagation, adaptive branching, and random restarts. These "extras" to the basic systematic search have been empirically shown to be essential for handling the large SAT instances that arise in electronic design automation (EDA).[31] Look-ahead solvers have especially strengthened reductions (going beyond unit-clause propagation) and the heuristics, and they are generally stronger than conflict-driven solvers on hard instances (while conflict-driven solvers can be much better on large instances which actually have an easy instance inside).

Modern SAT solvers are also having significant impact on the fields of software verification, constraint solving in artificial intelligence, and operations research, among others. Powerful solvers are readily available as free and open source software. In particular, the conflict-driven MiniSAT, which was relatively successful at the 2005 SAT competition, only has about 600 lines of code. A modern Parallel SAT solver is ManySAT[32]. It can achieve super linear speed-ups on important classes of problems. An example for look-ahead solvers is march_dl, which won a prize at the 2007 SAT competition.

Certain types of large random satisfiable instances of SAT can be solved by survey propagation (SP). Particularly in hardware design and verification applications, satisfiability and other logical properties of a given propositional formula are sometimes decided based on a representation of the formula as a binary decision diagram (BDD).

Almost all SAT solvers include time-outs, so they will terminate in reasonable time even if they cannot find a solution. Different SAT solvers will find different instances easy or hard, and some excel at proving unsatisfiability, and others at finding solutions. All of these behaviors can be seen in the SAT solving contests.[33]


See also

-   Unsatisfiable core
-   Satisfiability modulo theories
-   Counting SAT
-   Karloff–Zwick algorithm
-   Circuit satisfiability


Notes


References

References are ordered by date of publication:

-   A9.1: LO1 – LO7, pp. 259 – 260.

-   -   -   -   -   -   -


External links

SAT Game - try solving a Boolean satisfiability problem yourself

SAT problem format

A SAT problem is often described in the DIMACS-CNF format: an input file in which each line represents a single disjunction. For example, a file with the two lines

1 -5 4 0
-1 5 3 4 0

represents the formula "(_x_₁ ∨ ¬_x_₅ ∨ _x_₄) ∧ (¬_x_₁ ∨ _x_₅ ∨ _x_₃ ∨ _x_₄)".

Another common format for this formula is the 7-bit ASCII representation "(x1 | ~x5 | x4) & (~x1 | x5 | x3 | x4)".

-   BCSAT is a tool that converts input files in human-readable format to the DIMACS-CNF format.

Online SAT solvers

-   BoolSAT – Solves formulas in the DIMACS-CNF format or in a more human-friendly format: "a and not b or a". Runs on a server.
-   Logictools – Provides different solvers in javascript for learning, comparison and hacking. Runs in the browser.
-   minisat-in-your-browser – Solves formulas in the DIMACS-CNF format. Runs in the browser.
-   SATRennesPA – Solves formulas written in a user-friendly way. Runs on a server.
-   somerby.net/mack/logic – Solves formulas written in symbolic logic. Runs in the browser.

Offline SAT solvers

-   MiniSAT – DIMACS-CNF format and OPB format for it's companion Pseudo-Boolean constraint solver MiniSat+
-   Lingeling – won a gold medal in a 2011 SAT competition.
    -   PicoSAT – an earlier solver from the Lingeling group.
-   Sat4j – DIMACS-CNF format. Java source code available.
-   Glucose – DIMACS-CNF format.
-   RSat – won a gold medal in a 2007 SAT competition.
-   UBCSAT. Supports unweighted and weighted clauses, both in the DIMACS-CNF format. C source code hosted on GitHub.
-   CryptoMiniSat – won a gold medal in a 2011 SAT competition. C++ source code hosted on GitHub. Tries to put many useful features of MiniSat 2.0 core, PrecoSat ver 236, and Glucose into one package, adding many new features
-   Spear – Supports bit-vector arithmetic. Can use the DIMACS-CNF format or the Spear format.
    -   HyperSAT – Written to experiment with B-cubing search space pruning. Won 3rd place in a 2005 SAT competition. An earlier and slower solver from the developers of Spear.
-   BASolver
-   ArgoSAT
-   Fast SAT Solver – based on genetic algorithms.
-   zChaff – not supported anymore.
-   BCSAT – human-readable boolean circuit format (also converts this format to the DIMACS-CNF format and automatically links to MiniSAT or zChaff).
-   gini – Golang sat solver with related tools.
-   gophersat – Golang SAT solver with can also deal with pseudo-boolean and MAXSAT problems.
-   CLP(B) – Boolean Constraint Logic Programming, for example SWI-Prolog.

SAT applications

-   WinSAT v2.04: A Windows-based SAT application made particularly for researchers.

Conferences

-   International Conference on Theory and Applications of Satisfiability Testing

Publications

-   Journal on Satisfiability, Boolean Modeling and Computation
-   Survey Propagation

Benchmarks

-   Forced Satisfiable SAT Benchmarks
-   Software Verification Benchmarks
-   Fadi Aloul SAT Benchmarks

SAT solving in general:

-   http://www.satlive.org
-   http://www.satisfiability.org

Evaluation of SAT solvers

-   Yearly evaluation of SAT solvers
-   SAT solvers evaluation results for 2008
-   International SAT Competitions
-   History

More information on SAT:

-   SAT and MAX-SAT for the Lay-researcher
-   SAT/SMT by Example

------------------------------------------------------------------------

_This article includes material from a column in the ACM SIGDA e-newsletter by Prof. Karem Sakallah
Original text is available here_

Category:Boolean algebra Category:Electronic design automation Category:Formal methods Category:Logic in computer science Category:NP-complete problems Category:Satisfiability problems

[1]

[2]

[3]  (pdf) , translated into English by

[4] The SAT problem for _arbitrary_ formulas is NP-complete, too, since it is easily shown to be in NP, and it cannot be easier than SAT for CNF formulas.

[5] ; here: Thm.10.4

[6] i.e. at least as hard as every other problem in NP. A decision problem is NP-complete if and only if it is in NP and is NP-hard.

[7] i.e. such that one literal is not the negation of the other

[8]

[9]

[10] viz. all maxterms that can be built with , except

[11]

[12] (Schaefer, 1978), p.222, Lemma 3.5

[13]

[14]

[15] Formally, generalized conjunctive normal forms with a ternary boolean operator _R_ are employed, which is TRUE just if 1 or 3 of its arguments is. An input clause with more than 3 literals can be transformed into an equisatisfiable conjunction of clauses á 3 literals similar to above; i.e. XOR-SAT can be reduced to XOR-3-SAT.

[16] .

[17]

[18] R. E. Bryant, S. M. German, and M. N. Velev, Microprocessor Verification Using Efficient Decision Procedures for a Logic of Equality with Uninterpreted Functions, in Analytic Tableaux and Related Methods, pp. 1–13, 1999.

[19]

[20]

[21]

[22] .

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30] "An improved exponential-time algorithm for k-SAT", Paturi, Pudlak, Saks, Zani

[31]

[32] http://www.cril.univ-artois.fr/~jabbour/manysat.htm

[33]