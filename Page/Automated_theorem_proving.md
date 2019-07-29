AUTOMATED THEOREM PROVING (also known as ATP or AUTOMATED DEDUCTION) is a subfield of automated reasoning and mathematical logic dealing with proving mathematical theorems by computer programs. Automated reasoning over mathematical proof was a major impetus for the development of computer science.


Logical foundations

While the roots of formalised logic go back to Aristotle, the end of the 19th and early 20th centuries saw the development of modern logic and formalised mathematics. Frege's _Begriffsschrift_ (1879) introduced both a complete propositional calculus and what is essentially modern predicate logic.[1] His _Foundations of Arithmetic_, published 1884,[2] expressed (parts of) mathematics in formal logic. This approach was continued by Russell and Whitehead in their influential _Principia Mathematica_, first published 1910–1913,[3] and with a revised second edition in 1927.[4] Russell and Whitehead thought they could derive all mathematical truth using axioms and inference rules of formal logic, in principle opening up the process to automatisation. In 1920, Thoralf Skolem simplified a previous result by Leopold Löwenheim, leading to the Löwenheim–Skolem theorem and, in 1930, to the notion of a Herbrand universe and a Herbrand interpretation that allowed (un)satisfiability of first-order formulas (and hence the validity of a theorem) to be reduced to (potentially infinitely many) propositional satisfiability problems.[5]

In 1929, Mojżesz Presburger showed that the theory of natural numbers with addition and equality (now called Presburger arithmetic in his honor) is decidable and gave an algorithm that could determine if a given sentence in the language was true or false.[6][7] However, shortly after this positive result, Kurt Gödel published _On Formally Undecidable Propositions of Principia Mathematica and Related Systems_ (1931), showing that in any sufficiently strong axiomatic system there are true statements which cannot be proved in the system. This topic was further developed in the 1930s by Alonzo Church and Alan Turing, who on the one hand gave two independent but equivalent definitions of computability, and on the other gave concrete examples for undecidable questions.


First implementations

Shortly after World War II, the first general purpose computers became available. In 1954, Martin Davis programmed Presburger's algorithm for a JOHNNIAC vacuum tube computer at the Princeton Institute for Advanced Study. According to Davis, "Its great triumph was to prove that the sum of two even numbers is even".[8][9] More ambitious was the Logic Theory Machine in 1956, a deduction system for the propositional logic of the _Principia Mathematica_, developed by Allen Newell, Herbert A. Simon and J. C. Shaw. Also running on a JOHNNIAC, the Logic Theory Machine constructed proofs from a small set of propositional axioms and three deduction rules: modus ponens, (propositional) variable substitution, and the replacement of formulas by their definition. The system used heuristic guidance, and managed to prove 38 of the first 52 theorems of the _Principia_.[10]

The "heuristic" approach of the Logic Theory Machine tried to emulate human mathematicians, and could not guarantee that a proof could be found for every valid theorem even in principle. In contrast, other, more systematic algorithms achieved, at least theoretically, completeness for first-order logic. Initial approaches relied on the results of Herbrand and Skolem to convert a first-order formula into successively larger sets of propositional formulae by instantiating variables with terms from the Herbrand universe. The propositional formulas could then be checked for unsatisfiability using a number of methods. Gilmore's program used conversion to disjunctive normal form, a form in which the satisfiability of a formula is obvious.[11][12]


Decidability of the problem

Depending on the underlying logic, the problem of deciding the validity of a formula varies from trivial to impossible. For the frequent case of propositional logic, the problem is decidable but co-NP-complete, and hence only exponential-time algorithms are believed to exist for general proof tasks. For a first order predicate calculus, Gödel's completeness theorem states that the theorems (provable statements) are exactly the logically valid well-formed formulas, so identifying valid formulas is recursively enumerable: given unbounded resources, any valid formula can eventually be proven. However, _invalid_ formulas (those that are _not_ entailed by a given theory), cannot always be recognized.

The above applies to first order theories, such as Peano arithmetic. However, for a specific model that may be described by a first order theory, some statements may be true but undecidable in the theory used to describe the model. For example, by Gödel's incompleteness theorem, we know that any theory whose proper axioms are true for the natural numbers cannot prove all first order statements true for the natural numbers, even if the list of proper axioms is allowed to be infinite enumerable. It follows that an automated theorem prover will fail to terminate while searching for a proof precisely when the statement being investigated is undecidable in the theory being used, even if it is true in the model of interest. Despite this theoretical limit, in practice, theorem provers can solve many hard problems, even in models that are not fully described by any first order theory (such as the integers).


Related problems

A simpler, but related, problem is _proof verification_, where an existing proof for a theorem is certified valid. For this, it is generally required that each individual proof step can be verified by a primitive recursive function or program, and hence the problem is always decidable.

Since the proofs generated by automated theorem provers are typically very large, the problem of proof compression is crucial and various techniques aiming at making the prover's output smaller, and consequently more easily understandable and checkable, have been developed.

Proof assistants require a human user to give hints to the system. Depending on the degree of automation, the prover can essentially be reduced to a proof checker, with the user providing the proof in a formal way, or significant proof tasks can be performed automatically. Interactive provers are used for a variety of tasks, but even fully automatic systems have proved a number of interesting and hard theorems, including at least one that has eluded human mathematicians for a long time, namely the Robbins conjecture.[13][14] However, these successes are sporadic, and work on hard problems usually requires a proficient user.

Another distinction is sometimes drawn between theorem proving and other techniques, where a process is considered to be theorem proving if it consists of a traditional proof, starting with axioms and producing new inference steps using rules of inference. Other techniques would include model checking, which, in the simplest case, involves brute-force enumeration of many possible states (although the actual implementation of model checkers requires much cleverness, and does not simply reduce to brute force).

There are hybrid theorem proving systems which use model checking as an inference rule. There are also programs which were written to prove a particular theorem, with a (usually informal) proof that if the program finishes with a certain result, then the theorem is true. A good example of this was the machine-aided proof of the four color theorem, which was very controversial as the first claimed mathematical proof which was essentially impossible to verify by humans due to the enormous size of the program's calculation (such proofs are called non-surveyable proofs). Another example of a program-assisted proof is the one that shows that the game of Connect Four can always be won by first player.


Industrial uses

Commercial use of automated theorem proving is mostly concentrated in integrated circuit design and verification. Since the Pentium FDIV bug, the complicated floating point units of modern microprocessors have been designed with extra scrutiny. AMD, Intel and others use automated theorem proving to verify that division and other operations are correctly implemented in their processors.


First-order theorem proving

In the late 1960s agencies funding research in automated deduction began to emphasize the need for practical applications. One of the first fruitful areas was that of program verification whereby first-order theorem provers were applied to the problem of verifying the correctness of computer programs in languages such as Pascal, Ada, Java etc. Notable among early program verification systems was the Stanford Pascal Verifier developed by David Luckham at Stanford University. This was based on the Stanford Resolution Prover also developed at Stanford using John Alan Robinson's resolution principle. This was the first automated deduction system to demonstrate an ability to solve mathematical problems that were announced in the Notices of the American Mathematical Society before solutions were formally published.

First-order theorem proving is one of the most mature subfields of automated theorem proving. The logic is expressive enough to allow the specification of arbitrary problems, often in a reasonably natural and intuitive way. On the other hand, it is still semi-decidable, and a number of sound and complete calculi have been developed, enabling _fully_ automated systems. More expressive logics, such as Higher-order logics, allow the convenient expression of a wider range of problems than first order logic, but theorem proving for these logics is less well developed.


Benchmarks, competitions, and sources

The quality of implemented systems has benefited from the existence of a large library of standard benchmark examples — the Thousands of Problems for Theorem Provers (TPTP) Problem Library[15] — as well as from the CADE ATP System Competition (CASC), a yearly competition of first-order systems for many important classes of first-order problems.

Some important systems (all have won at least one CASC competition division) are listed below.

-   E is a high-performance prover for full first-order logic, but built on a purely equational calculus, originally developed in the automated reasoning group of Technical University of Munich, and now at Baden-Württemberg Cooperative State University in Stuttgart.
-   Otter, developed at the Argonne National Laboratory, is based on first-order resolution and paramodulation. Otter has since been replaced by Prover9, which is paired with Mace4.
-   SETHEO is a high-performance system based on the goal-directed model elimination calculus. It is developed in the automated reasoning group of Technical University of Munich. E and SETHEO have been combined (with other systems) in the composite theorem prover E-SETHEO.
-   Vampire is developed and implemented at Manchester University by Andrei Voronkov and Krystof Hoder, formerly also by Alexandre Riazanov. It has won the CADE ATP System Competition in the most prestigious CNF (MIX) division for eleven years (1999, 2001–2010).
-   Waldmeister is a specialized system for unit-equational first-order logic developed by Arnim Buch and Thomas Hillenbrand. It won the CASC UEQ division for fourteen consecutive years (1997–2010).
-   SPASS is a first order logic theorem prover with equality. This is developed by the research group Automation of Logic, Max Planck Institute for Computer Science.

The Theorem Prover Museum is an initiative to conserve the sources of theorem prover systems for future analysis, since they are important cultural/scientific artefacts. It has the sources of many of the systems mentioned above.


Popular techniques

-   First-order resolution with unification
-   Model elimination
-   Method of analytic tableaux
-   Superposition and term rewriting
-   Model checking
-   Mathematical induction[16]
-   Binary decision diagrams
-   DPLL
-   Higher-order unification


Software systems

+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Name                         | License type               | Web service | Library | Standalone | Last update |
+==============================+============================+=============+=========+============+=============+
| ACL2                         | 3-clause BSD               |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Prover9/Otter                | Public Domain              |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Metis                        | MIT License                |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| MetiTarski                   | MIT                        |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Jape                         | GPLv2                      |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| PVS                          | GPLv2                      |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Leo II                       | BSD License                |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| EQP                          |                            |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| SAD                          | GPLv3                      |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| PhoX                         |                            |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| KeYmaera                     | GPL                        |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Gandalf                      |                            |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| E                            | GPL                        |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| SNARK                        | Mozilla Public License 1.1 |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Vampire                      | Vampire License            |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Theorem Proving System (TPS) | TPS Distribution Agreement |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| SPASS                        | FreeBSD license            |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| IsaPlanner                   | GPL                        |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| KeY                          | GPL                        |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Princess                     | lgpl v2.1                  |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| iProver                      | GPL                        |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
| Meta Theorem                 | Freeware                   |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+
|                              |                            |             |         |            |             |
+------------------------------+----------------------------+-------------+---------+------------+-------------+

: Comparison

Free software

-   Alt-Ergo
-   Automath
-   CVC
-   E (1)
-   Gödel machine
-   iProver
-   IsaPlanner
-   KED theorem prover[17]
-   leanCoP[18]
-   Leo II (2)
-   LCF
-   LoTREC[19]
-   MetaPRL[20]
-   Mizar
-   NuPRL
-   Paradox
-   Simplify (GPL'ed since 5/2011)
-   Twelf
-   SPARK (programming language)

Proprietary software

-   Acumen RuleManager (commercial product)
-   ALLIGATOR (CC BY-NC-SA 2.0 UK)
-   CARINE
-   KIV (freely available as a plugin for Eclipse)
-   Prover Plug-In (commercial proof engine product)
-   ProverBox
-   Wolfram Mathematica[21]
-   ResearchCyc
-   Spear modular arithmetic theorem prover


Notable people

-   Leo Bachmair, co-developer of the superposition calculus
-   Woody Bledsoe, artificial intelligence pioneer
-   Robert S. Boyer, co-author of the Boyer-Moore theorem prover, co-recipient of the Herbrand Award 1999
-   Alan Bundy, University of Edinburgh, meta-level reasoning for guiding inductive proof, proof planning and recipient of 2007 IJCAI Award for Research Excellence, Herbrand Award, and 2003 Donald E. Walker Distinguished Service Award
-   William McCune, Argonne National Laboratory, author of Otter, the first high-performance theorem prover, many important papers, recipient of the Herbrand Award 2000
-   Hubert Comon, CNRS and now ENS Cachan, many important papers
-   Robert Lee Constable, Cornell University, important contributions to type theory, NuPRL
-   Martin Davis, author of the "Handbook of Artificial Reasoning", co-inventor of the DPLL algorithm, recipient of the Herbrand Award 2005
-   Branden Fitelson, University of California at Berkeley, work in automated discovery of shortest axiomatic bases for logic systems
-   Harald Ganzinger, co-developer of the superposition calculus, head of the MPI Saarbrücken, recipient of the Herbrand Award 2004 (posthumous)
-   Michael Genesereth, Stanford University professor of Computer Science
-   Melvin Fitting, author of several books and several hundred articles in ATP, software researcher in tableau proof systems
-   Keith Goolsbey, chief developer of the Cyc inference engine
-   Michael J. C. Gordon led the development of the HOL theorem prover
-   Gérard Huet, term rewriting, HOL logics, Herbrand Award 1998
-   Robert Kowalski developed the connection graph theorem-prover and SLD resolution, the inference engine that executes logic programs
-   Donald W. Loveland, Duke University, author, co-developer of the DPLL-procedure, developer of model elimination, recipient of the Herbrand Award 2001
-   David Luckham, Stanford University, Developed the Stanford Resolution Theorem Prover 1968, the first automated deduction system used to solve problems announced in the Notices of the AMS, and subsequently developed the Stanford Pascal Verifier, the first program verification system for Pascal, and a widely distributed program verification system, 1968–75
-   Norman Megill, developer of Metamath, and maintainer of its site at metamath.org, an online database of automatically verified proofs
-   J Strother Moore, co-author of the Boyer–Moore theorem prover, co-recipient of the Herbrand Award 1999
-   Robert Nieuwenhuis, University of Barcelona, co-developer of the superposition calculus
-   Tobias Nipkow of the Technical University of Munich, contributions to (higher-order) rewriting, co-developer of the Isabelle proof assistant
-   Ross Overbeek, Argonne National Laboratory, founder of The Fellowship for Interpretation of Genomes
-   Lawrence C. Paulson of the University of Cambridge, work on higher-order logic system, co-developer of the Isabelle Theorem Prover
-   David Plaisted University of North Carolina at Chapel Hill, complexity results, contributions to rewriting and completion, instance-based theorem proving
-   John Rushby, Program Director – SRI International[22]
-   J. Alan Robinson, Syracuse University, developed original resolution and unification based first order theorem proving, co-editor of the "Handbook of Automated Reasoning", recipient of the Herbrand Award 1996
-   Jürgen Schmidhuber, work on Gödel Machines: Self-Referential Universal Problem Solvers Making Provably Optimal Self-Improvements
-   Stephan Schulz, E theorem Prover
-   Natarajan Shankar, SRI International, work on decision procedures, _little engines of proof_, co-developer of PVS
-   Mark Stickel, SRI International, recipient of the Herbrand Award 2002
-   Geoff Sutcliffe, University of Miami, maintainer of the TPTP collection, an organizer of the CADE annual contest
-   Dolph Ulrich, Purdue, Work on automated discovery of shortest axiomatic bases for systems
-   Robert Veroff, University of New Mexico, many important papers
-   Andrei Voronkov, developer of Vampire and Co-Editor of the "Handbook of Automated Reasoning"
-   Christoph Weidenbach, author of SPASS, automated theorem prover
-   Larry Wos, Argonne National Laboratory (Otter), many important papers, very first Herbrand Award winner (1992)
-   Wen-Tsun Wu, work in geometric theorem proving: Wu's method, Herbrand Award 1997


See also

-   Symbolic computation
-   Computer-aided proof
-   Automated reasoning
-   Formal verification
-   Logic programming
-   Proof checking
-   Model checking
-   Proof complexity
-   Computer algebra system
-   Program analysis (computer science)
-   General Problem Solver
-   Metamath language for formalized mathematics


Notes


References

-   -   -

-   -   -   -   -


External links

-   A list of theorem proving tools

Category:Formal methods Automated_theorem_proving

[1]

[2]

[3]

[4]

[5]

[6]

[7] )

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Bundy, Alan. The automation of proof by mathematical induction. 1999.

[17] Artosi, Alberto, Paola Cattabriga, and Guido Governatori. "Ked: A deontic theorem prover." Eleventh International Conference on Logic Programming (ICLP’94). 1994.

[18]

[19] del Cerro, Luis Farinas, et al. "Lotrec: the generic tableau prover for modal and description logics." International Joint Conference on Automated Reasoning. Springer, Berlin, Heidelberg, 2001.

[20] Hickey, Jason, et al. "MetaPRL–a modular logical environment." International Conference on Theorem Proving in Higher Order Logics. Springer, Berlin, Heidelberg, 2003.

[21] 3 Mathematica documentation

[22]