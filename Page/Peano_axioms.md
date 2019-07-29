In mathematical logic, the PEANO AXIOMS, also known as the DEDEKIND–PEANO AXIOMS or the PEANO POSTULATES, are axioms for the natural numbers presented by the 19th century Italian mathematician Giuseppe Peano. These axioms have been used nearly unchanged in a number of metamathematical investigations, including research into fundamental questions of whether number theory is consistent and complete.

The need to formalize arithmetic was not well appreciated until the work of Hermann Grassmann, who showed in the 1860s that many facts in arithmetic could be derived from more basic facts about the successor operation and induction. In 1881, Charles Sanders Peirce provided an axiomatization of natural-number arithmetic.[1] In 1888, Richard Dedekind proposed another axiomatization of natural-number arithmetic, and in 1889, Peano published a simplified version of them as a collection of axioms in his book, _The principles of arithmetic presented by a new method_ ().

The Peano axioms contain three types of statements. The first axiom asserts the existence of at least one member of the set of natural numbers. The next four are general statements about equality; in modern treatments these are often not taken as part of the Peano axioms, but rather as axioms of the "underlying logic". The next three axioms are first-order statements about natural numbers expressing the fundamental properties of the successor operation. The ninth, final axiom is a second order statement of the principle of mathematical induction over the natural numbers. A weaker first-order system called PEANO ARITHMETIC is obtained by explicitly adding the addition and multiplication operation symbols and replacing the second-order induction axiom with a first-order axiom schema.


Formulation

When Peano formulated his axioms, the language of mathematical logic was in its infancy. The system of logical notation he created to present the axioms did not prove to be popular, although it was the genesis of the modern notation for set membership (∈, which comes from Peano's ε) and implication (⊃, which comes from Peano's reversed 'C'.) Peano maintained a clear distinction between mathematical and logical symbols, which was not yet common in mathematics; such a separation had first been introduced in the _Begriffsschrift_ by Gottlob Frege, published in 1879. Peano was unaware of Frege's work and independently recreated his logical apparatus based on the work of Boole and Schröder.

The Peano axioms define the arithmetical properties of _natural numbers_, usually represented as a set N or ℕ. The non-logical symbols for the axioms consist of a constant symbol 0 and a unary function symbol _S_.

The first axiom states that the constant 0 is a natural number: The next four axioms describe the equality relation. Since they are logically valid in first-order logic with equality, they are not considered to be part of "the Peano axioms" in modern treatments. The remaining axioms define the arithmetical properties of the natural numbers. The naturals are assumed to be closed under a single-valued "successor" function _S_. Peano's original formulation of the axioms used 1 instead of 0 as the "first" natural number. This choice is arbitrary, as axiom 1 does not endow the constant 0 with any additional properties. However, because 0 is the additive identity in arithmetic, most modern formulations of the Peano axioms start from 0. Axioms 1, 6, 7, 8 define a unary representation of the intuitive notion of natural numbers: the number 1 can be defined as _S_(0), 2 as _S_(_S_(0)), etc. However, considering the notion of natural numbers as being defined by these axioms, axioms 1, 6, 7, 8 do not imply that the successor function generates all the natural numbers different from 0. Put differently, they do not guarantee that every natural number other than zero must succeed some other natural number.

The intuitive notion that each natural number can be obtained by applying _successor_ sufficiently often to zero requires an additional axiom, which is sometimes called the _axiom of induction_.

The induction axiom is sometimes stated in the following form:

In Peano's original formulation, the induction axiom is a second-order axiom. It is now common to replace this second-order principle with a weaker first-order induction scheme. There are important differences between the second-order and first-order formulations, as discussed in the section below.


Arithmetic

The Peano axioms can be augmented with the operations of addition and multiplication and the usual total (linear) ordering on N. The respective functions and relations are constructed in set theory or second-order logic, and can be shown to be unique using the Peano axioms.

Addition

Addition is a function that maps two natural numbers (two elements of N) to another one. It is defined recursively as:

    \begin{align}

a + 0 &= a , & \textrm{(1)}\\ a + S (b) &= S (a + b). & \textrm{(2)} \end{align} For example:

    \begin{align}

a + 1 &= a + S(0) & \mbox{by definition} \\

     &= S(a + 0)     & \mbox{using (2)} \\
     &= S(a),        & \mbox{using (1)} \\

\\ a + 2 &= a + S(1) & \mbox{by definition} \\

     &= S(a + 1)     & \mbox{using (2)} \\
     &= S(S(a))      & \mbox{using } a + 1 = S(a) \\

\\ a + 3 &= a + S(2) & \mbox{by definition} \\

     &= S(a + 2)     & \mbox{using (2)} \\
     &= S(S(S(a)))    & \mbox{using } a + 2 = S(S(a)) \\

\text{etc.} & \\ \end{align}

The structure is a commutative monoid with identity element 0. is also a cancellative magma, and thus embeddable in a group. The smallest group embedding N is the integers.

Multiplication

Similarly, multiplication is a function mapping two natural numbers to another one. Given addition, it is defined recursively as:

    \begin{align}

a \cdot 0 &= 0, \\ a \cdot S (b) &= a + (a \cdot b). \end{align} It is easy to see that _S_(0) (or "1", in the familiar language of decimal representation) is the multiplicative right identity:

    _a_ · _S_(0) = _a_ + (_a_ · 0) = _a_ + 0 = _a_

To show that _S_(0) is also the multiplicative left identity requires the induction axiom due to the way multiplication is defined:

-   _S_(0) is the left identity of 0: _S_(0) · 0 = 0.
-   If _S_(0) is the left identity of _a_ (that is _S_(0) · _a_ = _a_), then _S_(0) is also the left identity of _S_(_a_): _S_(0) · _S_(_a_) = _S_(0) + _S_(0) · _a_ = _S_(0) + _a_ = _a_ + _S_(0) = _S_(_a_ + 0) = _S_(_a_).

Therefore by the induction axiom _S_(0) is the multiplicative left identity of all natural numbers. Moreover, it can be shown that multiplication distributes over addition:

    _a_ · (_b_ + _c_) = (_a_ · _b_) + (_a_ · _c_).

Thus, is a commutative semiring.

Inequalities

The usual total order relation ≤ on natural numbers can be defined as follows, assuming 0 is a natural number:

    For all , if and only if there exists some such that .

This relation is stable under addition and multiplication: for a, b, c ∈ N, if , then:

-   _a_ + _c_ ≤ _b_ + _c_, and
-   _a_ · _c_ ≤ _b_ · _c_.

Thus, the structure is an ordered semiring; because there is no natural number between 0 and 1, it is a discrete ordered semiring.

The axiom of induction is sometimes stated in the following form that uses a stronger hypothesis, making use of the order relation "≤":

    For any predicate _φ_, if
    -   _φ_(0) is true, and
    -   for every , if implies that _φ_(_k_) is true, then _φ_(_S_(_n_)) is true,

    then for every , _φ_(_n_) is true.

This form of the induction axiom, called _strong induction_, is a consequence of the standard formulation, but is often better suited for reasoning about the ≤ order. For example, to show that the naturals are well-ordered—every nonempty subset of N has a least element—one can reason as follows. Let a nonempty be given and assume _X_ has no least element.

-   Because 0 is the least element of N, it must be that .
-   For any , suppose for every , . Then , for otherwise it would be the least element of _X_.

Thus, by the strong induction principle, for every , . Thus, , which contradicts _X_ being a nonempty subset of N. Thus _X_ has a least element.


First-order theory of arithmetic

All of the Peano axioms except the ninth axiom (the induction axiom) are statements in first-order logic. The arithmetical operations of addition and multiplication and the order relation can also be defined using first-order axioms. The axiom of induction is in second-order, since it quantifies over predicates (equivalently, sets of natural numbers rather than natural numbers), but it can be transformed into a first-order _axiom schema_ of induction. Such a schema includes one axiom per predicate definable in the first-order language of Peano arithmetic, making it weaker than the second-order axiom. The reason that it is weaker is that the number of predicates in first-order language is countable, whereas the number of sets of natural numbers is uncountable. Thus, there exist sets that cannot be described in first-order language (in fact, most sets have this property).

First-order axiomatizations of Peano arithmetic have another technical limitation. In second-order logic, it is possible to define the addition and multiplication operations from the successor operation, but this cannot be done in the more restrictive setting of first-order logic. Therefore, the addition and multiplication operations are directly included in the signature of Peano arithmetic, and axioms are included that relate the three operations to each other.

The following list of axioms (along with the usual axioms of equality), which contains six of the seven axioms of Robinson arithmetic, is sufficient for this purpose:

-   ∀x ∈ N (0 ≠ S(x))
-   ∀x, y ∈ N (S(x) = S(y) ⇒ x = y)
-   ∀x ∈ N (x + 0 = x)
-   ∀x, y ∈ N (x + S(y) = S(x + y))
-   ∀x ∈ N (x ⋅ 0 = 0)
-   ∀x, y ∈ N (x ⋅ S(y) = x ⋅ y + x)

In addition to this list of numerical axioms, Peano arithmetic contains the induction schema, which consists of a countably infinite set of axioms. For each formula in the language of Peano arithmetic, the FIRST-ORDER INDUCTION AXIOM for _φ_ is the sentence

    ∀ȳ(φ(0, ȳ) ∧ ∀x(φ(x, ȳ) ⇒ φ(S(x), ȳ)) ⇒ ∀xφ(x, ȳ))

where ȳ is an abbreviation for _y_₁,...,_y__(_k_). The first-order induction schema includes every instance of the first-order induction axiom, that is, it includes the induction axiom for every formula _φ_.

Equivalent axiomatizations

There are many different, but equivalent, axiomatizations of Peano arithmetic. While some axiomatizations, such as the one just described, use a signature that only has symbols for 0 and the successor, addition, and multiplications operations, other axiomatizations use the language of ordered semirings, including an additional order relation symbol. One such axiomatization begins with the following axioms that describe a discrete ordered semiring.

1.  ∀x, y, z ∈ N ((x + y) + z = x + (y + z)), i.e., addition is associative.
2.  ∀x, y ∈ N (x + y = y + x), i.e., addition is commutative.
3.  ∀x, y, z ∈ N ((x ⋅ y) ⋅ z = x ⋅ (y ⋅ z)), i.e., multiplication is associative.
4.  ∀x, y ∈ N (x ⋅ y = y ⋅ x), i.e., multiplication is commutative.
5.  ∀x, y, z ∈ N (x ⋅ (y + z) = (x ⋅ y) + (x ⋅ z)), i.e., multiplication distributes over addition.
6.  ∀x ∈ N (x + 0 = x ∧ x ⋅ 0 = 0), i.e., zero is an identity for addition, and an absorbing element for multiplication (actually superfluous).
7.  ∀x ∈ N (x ⋅ 1 = x), i.e., one is an identity for multiplication.
8.  ∀x, y, z ∈ N (x < y ∧ y < z ⇒ x < z), i.e., the '<' operator is transitive.
9.  ∀x ∈ N (¬(x < x)), i.e., the '<' operator is irreflexive.
10. ∀x, y ∈ N (x < y ∨ x = y ∨ y < x), i.e., the ordering satisfies trichotomy.
11. ∀x, y, z ∈ N (x < y ⇒ x + z < y + z), i.e. the ordering is preserved under addition of the same element.
12. ∀x, y, z ∈ N (0 < z ∧ x < y ⇒ x ⋅ z < y ⋅ z), i.e. the ordering is preserved under multiplication by the same positive element.
13. ∀x, y ∈ N (x < y ⇒ ∃z ∈ N (x + z = y)), i.e. given any two distinct elements, the larger is the smaller plus another element.
14. 0 < 1 ∧ ∀x ∈ N (x > 0 ⇒ x ≥ 1), i.e. zero and one are distinct and there is no element between them.
15. ∀x ∈ N (x ≥ 0), i.e. zero is the minimum element.

The theory defined by these axioms is known as PA^(−); the theory PA is obtained by adding the first-order induction schema. An important property of PA^(−) is that any structure M satisfying this theory has an initial segment (ordered by ≤) isomorphic to N. Elements in that segment are called STANDARD elements, while other elements are called NONSTANDARD elements.


Models

A model of the Peano axioms is a triple , where N is a (necessarily infinite) set, and satisfies the axioms above. Dedekind proved in his 1888 book, _The Nature and Meaning of Numbers_ (, i.e., “What are the numbers and what are they good for?”) that any two models of the Peano axioms (including the second-order induction axiom) are isomorphic. In particular, given two models and of the Peano axioms, there is a unique homomorphism satisfying

    \begin{align}

f(0_A) &= 0_B \\ f(S_A (n)) &= S_B (f (n)) \end{align} and it is a bijection. This means that the second-order Peano axioms are categorical. This is not the case with any first-order reformulation of the Peano axioms, however.

Set-theoretic models

The Peano axioms can be derived from set theoretic constructions of the natural numbers and axioms of set theory such as ZF.[2] The standard construction of the naturals, due to John von Neumann, starts from a definition of 0 as the empty set, ∅, and an operator _s_ on sets defined as:

    s(a) = a ∪ {a}

The set of natural numbers N is defined as the intersection of all sets closed under _s_ that contain the empty set. Each natural number is equal (as a set) to the set of natural numbers less than it:

    \begin{align}

0 &= \emptyset \\ 1 &= s(0) = s(\emptyset) = \emptyset \cup \{ \emptyset \} = \{ \emptyset \} = \{ 0 \} \\ 2 &= s(1) = s(\{ 0 \}) = \{ 0 \} \cup \{ \{ 0 \} \} = \{ 0 , \{ 0 \} \} = \{ 0, 1 \} \\ 3 &= s(2) = s(\{ 0, 1 \}) = \{ 0, 1 \} \cup \{ \{ 0, 1 \} \} = \{ 0, 1, \{ 0, 1 \} \} = \{ 0, 1, 2 \} \end{align} and so on. The set N together with 0 and the successor function satisfies the Peano axioms.

Peano arithmetic is equiconsistent with several weak systems of set theory. One such system is ZFC with the axiom of infinity replaced by its negation. Another such system consists of general set theory (extensionality, existence of the empty set, and the axiom of adjunction), augmented by an axiom schema stating that a property that holds for the empty set and holds of an adjunction whenever it holds of the adjunct must hold for all sets.

Interpretation in category theory

The Peano axioms can also be understood using category theory. Let _C_ be a category with terminal object 1_(_C_), and define the category of pointed unary systems, US₁(_C_) as follows:

-   The objects of US₁(_C_) are triples where _X_ is an object of _C_, and and are _C_-morphisms.
-   A morphism _φ_ : (_X_, 0_(_X_), _S__(_X_)) → (_Y_, 0_(_Y_), _S__(_Y_)) is a _C_-morphism with and .

Then _C_ is said to satisfy the Dedekind–Peano axioms if US₁(_C_) has an initial object; this initial object is known as a natural number object in _C_. If is this initial object, and is any other object, then the unique map is such that

    \begin{align}

u 0 &= 0_X, \\ u (S x) &= S_X (u x). \end{align} This is precisely the recursive definition of 0_(_X_) and _S__(_X_).


Nonstandard models

Although the usual natural numbers satisfy the axioms of PA, there are other models as well (called "non-standard models"); the compactness theorem implies that the existence of nonstandard elements cannot be excluded in first-order logic. The upward Löwenheim–Skolem theorem shows that there are nonstandard models of PA of all infinite cardinalities. This is not the case for the original (second-order) Peano axioms, which have only one model, up to isomorphism. This illustrates one way the first-order system PA is weaker than the second-order Peano axioms.

When interpreted as a proof within a first-order set theory, such as ZFC, Dedekind's categoricity proof for PA shows that each model of set theory has a unique model of the Peano axioms, up to isomorphism, that embeds as an initial segment of all other models of PA contained within that model of set theory. In the standard model of set theory, this smallest model of PA is the standard model of PA; however, in a nonstandard model of set theory, it may be a nonstandard model of PA. This situation cannot be avoided with any first-order formalization of set theory.

It is natural to ask whether a countable nonstandard model can be explicitly constructed. The answer is affirmative as Skolem in 1933 provided an explicit construction of such a nonstandard model. On the other hand, Tennenbaum's theorem, proved in 1959, shows that there is no countable nonstandard model of PA in which either the addition or multiplication operation is computable. This result shows it is difficult to be completely explicit in describing the addition and multiplication operations of a countable nonstandard model of PA. There is only one possible order type of a countable nonstandard model. Letting _ω_ be the order type of the natural numbers, _ζ_ be the order type of the integers, and _η_ be the order type of the rationals, the order type of any countable nonstandard model of PA is , which can be visualized as a copy of the natural numbers followed by a dense linear ordering of copies of the integers.

Overspill

A CUT in a nonstandard model _M_ is a nonempty subset _I_ of _M_ so that _I_ is downward closed (_x_<_y_ and _y_∈_I_ implies _x_∈_I_) and _I_ is closed under successor. A PROPER CUT is a cut that is a proper subset of _M_. Each nonstandard model has many proper cuts, including one that corresponds to the standard natural numbers. However, the induction scheme in Peano arithmetic prevents any proper cut from being definable. The overspill lemma, first proved by Abraham Robinson, formalizes this fact.

    OVERSPILL LEMMA Let _M_ be a nonstandard model of PA and let _I_ be a proper cut of _M_. Suppose that ā is a tuple of elements of _M_ and ϕ(x, ā) is a formula in the language of arithmetic so that
    _M_ ⊨ _ϕ_(_b_, _ā_)
    for all _b_∈_I_.

    Then there is a _c_ in _M_ that is greater than every element of _I_ such that
    _M_ ⊨ _ϕ_(_c_, _ā_).


Consistency

When the Peano axioms were first proposed, Bertrand Russell and others agreed that these axioms implicitly defined what we mean by a "natural number".[3] Henri Poincaré was more cautious, saying they only defined natural numbers if they were _consistent_; if there is a proof that starts from just these axioms and derives a contradiction such as 0 = 1, then the axioms are inconsistent, and don't define anything.[4] In 1900, David Hilbert posed the problem of proving their consistency using only finitistic methods as the second of his twenty-three problems. In 1931, Kurt Gödel proved his second incompleteness theorem, which shows that such a consistency proof cannot be formalized within Peano arithmetic itself.

Although it is widely claimed that Gödel's theorem rules out the possibility of a finitistic consistency proof for Peano arithmetic, this depends on exactly what one means by a finitistic proof. Gödel himself pointed out the possibility of giving a finitistic consistency proof of Peano arithmetic or stronger systems by using finitistic methods that are not formalizable in Peano arithmetic, and in 1958, Gödel published a method for proving the consistency of arithmetic using type theory.[5] In 1936, Gerhard Gentzen gave a proof of the consistency of Peano's axioms, using transfinite induction up to an ordinal called ε₀.[6] Gentzen explained: "The aim of the present paper is to prove the consistency of elementary number theory or, rather, to reduce the question of consistency to certain fundamental principles". Gentzen's proof is arguably finitistic, since the transfinite ordinal ε₀ can be encoded in terms of finite objects (for example, as a Turing machine describing a suitable order on the integers, or more abstractly as consisting of the finite trees, suitably linearly ordered). Whether or not Gentzen's proof meets the requirements Hilbert envisioned is unclear: there is no generally accepted definition of exactly what is meant by a finitistic proof, and Hilbert himself never gave a precise definition.

The vast majority of contemporary mathematicians believe that Peano's axioms are consistent, relying either on intuition or the acceptance of a consistency proof such as Gentzen's proof. A small number of philosophers and mathematicians, some of whom also advocate ultrafinitism, reject Peano's axioms because accepting the axioms amounts to accepting the infinite collection of natural numbers. In particular, addition (including the successor function) and multiplication are assumed to be total. Curiously, there are self-verifying theories that are similar to PA but have subtraction and division instead of addition and multiplication, which are axiomatized in such a way to avoid proving sentences that correspond to the totality of addition and multiplication, but which are still able to prove all true Π₁ theorems of PA, and yet can be extended to a consistent theory that proves its own consistency (stated as the non-existence of a Hilbert-style proof of "0=1").


See also

-   Foundations of mathematics
-   Frege's theorem
-   Goodstein's theorem
-   Neo-logicism
-   Non-standard model of arithmetic
-   Paris–Harrington theorem
-   Presburger arithmetic
-   Robinson arithmetic
-   Second-order arithmetic
-   Typographical Number Theory


Notes


References

Citations

Sources

-   -   .

    -   Two English translations:
        -   -

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   Contains translations of the following two papers, with valuable commentary:
        -   -

-


Further reading

-


External links

-   Internet Encyclopedia of Philosophy: "Henri Poincaré" by Mauro Murzi. Includes a discussion of Poincaré's critique of the Peano's axioms.
-   First-order arithmetic, a chapter of a book on the incompleteness theorems by Karl Podnieks.
-   -   -   -   What are numbers, and what is their meaning?: Dedekind commentary on Dedekind's work, Stanley N. Burris, 2001.

hu:Giuseppe Peano#A természetes számok Peano-axiómái

Category:1889 introductions Category:Mathematical axioms Category:Formal theories of arithmetic Category:Logic in computer science Category:Mathematical logic

[1] ,

[2] ,

[3]
An illustration of 'interpretation' is Russell's own definition of 'cardinal number'. The uninterpreted system in this case is Peano's axioms for the number system, whose three primitive ideas and five axioms, Peano believed, were sufficient to enable one to derive all the properties of the system of natural numbers. Actually, Russell maintains, Peano's axioms define any progression of the form x₀, x₁, x₂, …, x_(n), … of which the series of the natural numbers is one instance.

[4]
So Poincaré turned to see whether logicism could generate arithmetic, more precisely, the arithmetic of ordinals. Couturat, said Poincaré, had accepted the Peano axioms as a definition of a number. But this will not do. The axioms cannot be shown to be free of contradiction by finding examples of them, and any attempt to show that they were contradiction-free by examining the totality of their implications would require the very principle of mathematical induction Couturat believed they implied. For (in a further passage dropped from S&M) either one assumed the principle in order to prove it, which would only prove that if it is true it is not self-contradictory, which says nothing; or one used the principle in another form than the one stated, in which case one must show that the number of steps in one's reasoning was an integer according to the new definition, but this could not be done (1905c, 834).

[5]

[6]