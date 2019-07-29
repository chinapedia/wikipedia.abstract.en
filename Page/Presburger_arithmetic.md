PRESBURGER ARITHMETIC is the first-order theory of the natural numbers with addition, named in honor of Mojżesz Presburger, who introduced it in 1929. The signature of Presburger arithmetic contains only the addition operation and equality, omitting the multiplication operation entirely. The axioms include a schema of induction.

Presburger arithmetic is much weaker than Peano arithmetic, which includes both addition and multiplication operations. Unlike Peano arithmetic, Presburger arithmetic is a decidable theory. This means it is possible to algorithmically determine, for any sentence in the language of Presburger arithmetic, whether that sentence is provable from the axioms of Presburger arithmetic. The asymptotic running-time computational complexity of this decision problem is at least doubly exponential, however, as shown by .


Overview

The language of Presburger arithmetic contains constants 0 and 1 and a binary function +, interpreted as addition. In this language, the axioms of Presburger arithmetic are the universal closures of the following:

1.  ¬(0 = _x_ + 1)
2.  _x_ + 1 = _y_ + 1 → _x_ = _y_
3.  _x_ + 0 = _x_
4.  _x_ + (_y_ + 1) = (_x_ + _y_) + 1
5.  Let _P_(_x_) be a first-order formula in the language of Presburger arithmetic with a free variable _x_ (and possibly other free variables). Then the following formula is an axiom:



        (_P_(0) ∧ ∀_x_(_P_(_x_) → _P_(_x_ + 1))) → ∀_y_ _P_(_y_).

(5) is an axiom schema of induction, representing infinitely many axioms. Since the axioms in the schema in (5) cannot be replaced by any finite number of axioms, Presburger arithmetic is not finitely axiomatizable in first-order logic.

Presburger arithmetic cannot formalize concepts such as divisibility or primality. Generally, any number concept leading to multiplication cannot be defined in Presburger arithmetic, since that leads to incompleteness and undecidability. However, it can formulate individual instances of divisibility; for example, it proves "for all _x_, there exists _y_ : (_y_ + _y_ = _x_) ∨ (_y_ + _y_ + 1 = _x_)". This states that every number is either even or odd.


Properties

Mojżesz Presburger proved Presburger arithmetic to be:

-   consistent: There is no statement in Presburger arithmetic which can be deduced from the axioms such that its negation can also be deduced.
-   complete: For each statement in the language of Presburger arithmetic, either it is possible to deduce it from the axioms or it is possible to deduce its negation.
-   decidable: There exists an algorithm which decides whether any given statement in Presburger arithmetic is a theorem or a nontheorem.

The decidability of Presburger arithmetic can be shown using quantifier elimination, supplemented by reasoning about arithmetical congruence (Enderton 2001, p. 188).

Peano arithmetic, which is Presburger arithmetic augmented with multiplication, is not decidable, as a consequence of the negative answer to the Entscheidungsproblem. By Gödel's incompleteness theorem, Peano arithmetic is incomplete and its consistency is not internally provable (but see Gentzen's consistency proof).

The decision problem for Presburger arithmetic is an interesting example in computational complexity theory and computation. Let _n_ be the length of a statement in Presburger arithmetic. Then Fischer and Rabin (1974) proved that any decision algorithm for Presburger arithmetic has a worst-case runtime of at least 2^(2^(cn)), for some constant _c_>0. Hence, the decision problem for Presburger arithmetic is an example of a decision problem that has been proved to require more than exponential run time. Fischer and Rabin also proved that for any reasonable axiomatization (defined precisely in their paper), there exist theorems of length _n_ which have doubly exponential length proofs. Intuitively, this means there are computational limits on what can be proven by computer programs. Fischer and Rabin's work also implies that Presburger arithmetic can be used to define formulas which correctly calculate any algorithm as long as the inputs are less than relatively large bounds. The bounds can be increased, but only by using new formulas. On the other hand, a triply exponential upper bound on a decision procedure for Presburger Arithmetic was proved by Oppen (1978). A more tight complexity bound was shown using alternating complexity classes by .

The set of true statements in Presburger arithmetic (PA) is complete for TimeAlternations(2^(2^(n^(O(1)))), n). Thus, its complexity is between double exponential nondeterministic time (2-NEXP) and double exponential space (2-EXPSPACE). Completeness is under polynomial time many-to-one reductions. (Also, note that while Presburger arithmetic is commonly abbreviated PA, in mathematics in general PA usually means Peano arithmetic.)

For a more fine-grained result, let PA(i) be the set of true Σ_(i) PA statements, and PA(i, j) the set of true Σ_(i) PA statements with each quantifier block limited to j variables. '<' is considered to be quantifier-free; here, bounded quantifiers are counted as quantifiers.
PA(1, j) is in P, while PA(1) is NP-complete.
For i > 0 and j > 2, PA(i + 1, j) is Σ_(i)^(P)-complete. The hardness result only needs j>2 (as opposed to j=1) in the last quantifier block.
For i>0, PA(i+1) is Σ_(i)^(EXP)-complete (and is TimeAlternations(2^(n^(O(i))), i)-complete). [1]


Applications

Because Presburger arithmetic is decidable, automatic theorem provers for Presburger arithmetic exist. For example, the Coq proof assistant system features the tactic omega for Presburger arithmetic and the Isabelle proof assistant contains a verified quantifier elimination procedure by Nipkow (2010). The double exponential complexity of the theory makes it infeasible to use the theorem provers on complicated formulas, but this behavior occurs only in the presence of nested quantifiers: Oppen and Nelson (1980) describe an automatic theorem prover which uses the simplex algorithm on an extended Presburger arithmetic without nested quantifiers to prove some of the instances of quantifier-free Presburger arithmetic formulas. More recent satisfiability modulo theories solvers use complete integer programming techniques to handle quantifier-free fragment of Presburger arithmetic theory (King, Barrett, Tinelli 2014).

Presburger arithmetic can be extended to include multiplication by constants, since multiplication is repeated addition. Most array subscript calculations then fall within the region of decidable problems. This approach is the basis of at least five proof-of-correctness systems for computer programs, beginning with the Stanford Pascal Verifier in the late 1970s and continuing through to Microsoft's Spec# system of 2005.


Presburger-definable integer relation

Some properties are now given about integer relations definable in Presburger Arithmetic. For the sake of simplicity, all relations considered in this section are over natural integers.

A relation is Presburger-definable if and only if it is a semilinear set.[2]

A unary integer relation R, that is, a set of natural integers, is Presburger-definable if and only if it is ultimately periodic. That is, if there exists a threshold $t\in \N$ and a positive period $p\in\N^{>0}$ such that, for all integer n such that |n| ≥ t, n ∈ R if and only if n + p ∈ R.

By the Cobham–Semenov theorem, a relation is Presburger-definable if and only if it is definable in Büchi arithmetic of base k for all k ≥ 2.[3][4] A relation definable in Büchi arithmetic of base k and k′ for k and k′ being multiplicatively independent integers is Presburger definable.

An integer relation R is Presburger-definable if and only if all sets of integers which are definable in first order logic with addition and R (that is, Presburger Arithmetic plus a predicate for R) are Presburger-definable.[5] Equivalently, for each relation R which is not Presburger-definable, there exists a first-order formula with addition and R which defines a set of integers which is not definable using only addition.

Muchnik's characterization

Presburger-definable relations admit another characterization: by Muchnik's theorem.[6] It is more complicated to state, but led to the proof of the two former characterizations. Before Muchnik's theorem can be stated, some additional definitions must be introduced.

Let $R\subseteq\N^d$ be a set, the section x_(i) = j of R, for i < d and $j\in\N$ is defined as

$$\left \{(x_0,\ldots,x_{i-1},x_{i+1},\ldots,x_{d-1})\in\N^{d-1}\mid(x_0,\ldots,x_{i-1},j,x_{i+1},\ldots,x_{d-1})\in R \right \}.$$

Given two sets $R,S\subseteq\N^d$ and a d-tuple of integers $(p_0,\ldots,p_{d-1})\in\N^d$, the set R is called (p₀, …, p_(d − 1))-periodic in S if, for all (x₀, …, x_(d − 1)) ∈ S such that (x₀ + p₀, …, x_(d − 1) + p_(d − 1)) ∈ S, then (x₀, …, x_(d − 1)) ∈ R if and only if (x₀ + p₀, …, x_(d − 1) + p_(d − 1)) ∈ R. For $s\in\N$, the set R is said to be s-periodic in S if it is (p₀, …, p_(d − 1))-periodic for some $(p_0,\dots,p_{d-1})\in\Z^d$ such that

$$\sum_{i=0}^{d-1}|p_i|<s.$$

Finally, for $k,x_0,\dots,x_{d-1}\in\N$ let

_C_(_k_, (_x_₀, …, _x__(_d_ − 1))) = {(_x_₀+_c_₀,…,_x__(_d_ − 1)+_c__(_d_ − 1))∣0≤_c__(_i_)<_k_}

denote the cube of size k whose lesser corner is (x₀, …, x_(d − 1)).

    MUCHNIK'S THEOREM. $R\subseteq\N^d$ is Presburger-definable if and only if:
    -   if d > 1 then all sections of R are Presburger-definable and
    -   there exists $s\in\N$ such that, for every $k\in\N$, there exists $t\in\N$ such that for all $(x_0,\dots,x_{d-1})\in\N^d$ with

    $$\sum_{i=0}^{d-1}x_i>t,$$

    _R_
    is s-periodic in C(k, (x₀, …, x_(d − 1))).

Intuitively, the integer s represents the length of a shift, the integer k is the size of the cubes and t is the threshold before the periodicity. This result remains true when the condition

$$\sum_{i=0}^{d-1}x_i>t$$

is replaced either by min (x₀, …, x_(d − 1)) > t or by max (x₀, …, x_(d − 1)) > t.

This characterization led to the so-called "definable criterion for definability in Presburger arithmetic", that is: there exists a first-order formula with addition and a d-ary predicate R which holds if and only if R is interpreted by a Presburger-definable relation. Muchnik's theorem also allows one to prove that it is decidable whether an automatic sequence accepts a Presburger-definable set.


See also

-   Robinson arithmetic


References

-   Cooper, D. C., 1972, "Theorem Proving in Arithmetic without Multiplication" in B. Meltzer and D. Michie, eds., _Machine Intelligence Vol. 7_. Edinburgh University Press: 91–99.
-   -   Ferrante, Jeanne, and Charles W. Rackoff, 1979. _The Computational Complexity of Logical Theories_. Lecture Notes in Mathematics 718. Springer-Verlag.
-   -   -   Mojżesz Presburger, 1929, "Über die Vollständigkeit eines gewissen Systems der Arithmetik ganzer Zahlen, in welchem die Addition als einzige Operation hervortritt" in _Comptes Rendus du I congrès de Mathématiciens des Pays Slaves_. Warszawa: 92–101. — see Stansifer (1984) for an English translation
-   -   William Pugh, 1991, "The Omega test: a fast and practical integer programming algorithm for dependence analysis,".
-   Reddy, C. R., and D. W. Loveland, 1978, "Presburger Arithmetic with Bounded Quantifier Alternation." _ACM Symposium on Theory of Computing_: 320–325.
-   Young, P., 1985, "Gödel theorems, exponential difficulty and undecidability of arithmetic theories: an exposition" in A. Nerode and R. Shore, Recursion Theory, American Mathematical Society: 503-522.
-   -   -   -


External links

-   1 A complete Theorem Prover for Presburger Arithmetic by Philipp Rümmer

Category:1929 introductions Category:Formal theories of arithmetic Category:Logic in computer science Category:Proof theory Category:Model theory

[1]

[2]

[3]

[4]

[5]

[6]