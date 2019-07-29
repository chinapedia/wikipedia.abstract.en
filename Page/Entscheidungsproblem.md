In mathematics and computer science, the __ (, German for "decision problem") is a challenge posed by David Hilbert and Wilhelm Ackermann in 1928.David Hilbert and Wilhlem Ackermann. Grundzüge der Theoretischen Logik. Springer, Berlin, Germany, 1928. English translation: David Hilbert and Wilhelm Ackermann. Principles of Mathematical Logic. AMS Chelsea Publishing, Providence, Rhode Island, USA,

1950 The problem asks for an algorithm that takes as input a statement of a first-order logic (possibly with a finite number of axioms beyond the usual axioms of first-order logic) and answers "Yes" or "No" according to whether the statement is _universally valid_, i.e., valid in every structure satisfying the axioms. By the completeness theorem of first-order logic, a statement is universally valid if and only if it can be deduced from the axioms, so the __ can also be viewed as asking for an algorithm to decide whether a given statement is provable from the axioms using the rules of logic.

In 1936, Alonzo Church and Alan Turing published independent papers[1] showing that a general solution to the __ is impossible, assuming that the intuitive notion of "effectively calculable" is captured by the functions computable by a Turing machine (or equivalently, by those expressible in the lambda calculus). This assumption is now known as the Church–Turing thesis.


History of the problem

The origin of the __ goes back to Gottfried Leibniz, who in the seventeenth century, after having constructed a successful mechanical calculating machine, dreamt of building a machine that could manipulate symbols in order to determine the truth values of mathematical statements.[2] He realized that the first step would have to be a clean formal language, and much of his subsequent work was directed towards that goal. In 1928, David Hilbert and Wilhelm Ackermann posed the question in the form outlined above.

In continuation of his "program", Hilbert posed three questions at an international conference in 1928, the third of which became known as "Hilbert's __."[3] In 1929, Moses Schönfinkel published one paper on special cases of the decision problem, that was prepared by Paul Bernays.[4]

As late as 1930, Hilbert believed that there would be no such thing as an unsolvable problem.[5]


Negative answer

Before the question could be answered, the notion of "algorithm" had to be formally defined. This was done by Alonzo Church in 1936 with the concept of "effective calculability" based on his λ-calculus and by Alan Turing in the same year with his concept of Turing machines. Turing immediately recognized that these are equivalent models of computation.

The negative answer to the __ was then given by Alonzo Church in 1935–36 and independently shortly thereafter by Alan Turing in 1936. Church proved that there is no computable function which decides for two given λ-calculus expressions whether they are equivalent or not. He relied heavily on earlier work by Stephen Kleene. Turing reduced the question of the existence of a 'general method' which decides whether any given Turing Machine halts or not (the halting problem) to the question of the existence of an 'algorithm' or 'general method' able to solve the __. If 'Algorithm' is understood as being equivalent to a Turing Machine, and with the answer to the latter question negative (in general), the question about the existence of an Algorithm for the __ also must be negative (in general). In his 1936 paper, Turing says: _"Corresponding to each computing machine 'it' we construct a formula 'Un(it)' and we show that, if there is a general method for determining whether 'Un(it)' is provable, then there is a general method for determining whether 'it' ever prints 0"_.

The work of both Church and Turing was heavily influenced by Kurt Gödel's earlier work on his incompleteness theorem, especially by the method of assigning numbers (a Gödel numbering) to logical formulas in order to reduce logic to arithmetic.

The __ is related to Hilbert's tenth problem, which asks for an algorithm to decide whether Diophantine equations have a solution. The non-existence of such an algorithm, established by Yuri Matiyasevich in 1970, also implies a negative answer to the Entscheidungsproblem.

Some first-order theories are algorithmically decidable; examples of this include Presburger arithmetic, real closed fields and static type systems of many programming languages. The general first-order theory of the natural numbers expressed in Peano's axioms cannot be decided with an algorithm, however.


Practical decision procedures

Having practical decision procedures for classes of logical formulas is of considerable interest for program verification and circuit verification. Pure Boolean logical formulas are usually decided using SAT-solving techniques based on the DPLL algorithm. Conjunctive formulas over linear real or rational arithmetic can be decided using the simplex algorithm, formulas in linear integer arithmetic (Presburger arithmetic) can be decided using Cooper's algorithm or William Pugh's Omega test. Formulas with negations, conjunctions and disjunctions combine the difficulties of satisfiability testing with that of decision of conjunctions; they are generally decided nowadays using SMT-solving techniques, which combine SAT-solving with decision procedures for conjunctions and propagation techniques. Real polynomial arithmetic, also known as the theory of real closed fields, is decidable; this is the Tarski–Seidenberg theorem, which has been implemented in computers by using the cylindrical algebraic decomposition.


See also

-   Automated theorem proving
-   Hilbert's second problem
-   Oracle machine
-   Turing's proof


Notes


References

-   David Hilbert and Wilhelm Ackermann (1928). _Grundzüge der theoretischen Logik_ (_Principles of Mathematical Logic_). Springer-Verlag, .
-   Alonzo Church, "An unsolvable problem of elementary number theory", American Journal of Mathematics, 58 (1936), pp 345–363
-   Alonzo Church, "A note on the Entscheidungsproblem", Journal of Symbolic Logic, 1 (1936), pp 40–41.
-   Martin Davis, 2000, _Engines of Logic_, W.W. Norton & Company, London, pbk.
-   Alan Turing, "On Computable Numbers, with an Application to the Entscheidungsproblem", Proceedings of the London Mathematical Society, Series 2, 42 (1936–7), pp 230–265. Online versions: from journal website, from Turing Digital Archive, from abelard.org. Errata appeared in Series 2, 43 (1937), pp 544–546.
-   Martin Davis, "The Undecidable, Basic Papers on Undecidable Propositions, Unsolvable Problems And Computable Functions", Raven Press, New York, 1965. Turing's paper is #3 in this volume. Papers include those by Gödel, Church, Rosser, Kleene, and Post.
-   Andrew Hodges, Alan Turing: The Enigma, Simon and Schuster, New York, 1983. Alan M. Turing's biography. Cf Chapter "The Spirit of Truth" for a history leading to, and a discussion of, his proof.
-   Robert Soare, "Computability and recursion", Bull. Symbolic Logic 2 (1996), no. 3, 284–321.
-   Stephen Toulmin, "Fall of a Genius", a book review of "Alan Turing: The Enigma by Andrew Hodges", in The New York Review of Books, 19 January 1984, p. 3ff.
-   Alfred North Whitehead and Bertrand Russell, Principia Mathematica to *56, Cambridge at the University Press, 1962. Re: the problem of paradoxes, the authors discuss the problem of a set not be an object in any of its "determining functions", in particular "Introduction, Chap. 1 p. 24 "...difficulties which arise in formal logic", and Chap. 2.I. "The Vicious-Circle Principle" p. 37ff, and Chap. 2.VIII. "The Contradictions" p. 60 ff.


External links

-

Category:Theory of computation Category:Computability theory Category:Gottfried Leibniz Category:Mathematical logic Category:Metatheorems Category:Undecidable problems

[1] Church's paper was presented to the American Mathematical Society on 19 April 1935 and published on 15 April 1936. Turing, who had made substantial progress in writing up his own results, was disappointed to learn of Church's proof upon its publication (see correspondence between Max Newman and Church in Alonzo Church papers ). Turing quickly completed his paper and rushed it to publication; it was received by the _Proceedings of the London Mathematical Society_ on 28 May 1936, read on 12 November 1936, and published in series 2, volume 42 (1936–7); it appeared in two sections: in Part 3 (pages 230–240), issued on Nov 30, 1936 and in Part 4 (pages 241–265), issued on Dec 23, 1936; Turing added corrections in volume 43 (1937), pp. 544–546. See the footnote at the end of Soare: 1996.

[2] Davis 2000: pp. 3–20

[3] Hodges p. 91

[4]

[5] Hodges p. 92, quoting from Hilbert