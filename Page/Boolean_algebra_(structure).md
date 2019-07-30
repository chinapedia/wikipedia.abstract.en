In abstract algebra, a BOOLEAN ALGEBRA or BOOLEAN LATTICE is a complemented distributive lattice. This type of algebraic structure captures essential properties of both set operations and logic operations. A Boolean algebra can be seen as a generalization of a power set algebra or a field of sets, or its elements can be viewed as generalized truth values. It is also a special case of a De Morgan algebra and a Kleene algebra (with involution).

Every Boolean algebra gives rise to a Boolean ring, and vice versa, with ring multiplication corresponding to conjunction or meet ∧, and ring addition to exclusive disjunction or symmetric difference (not disjunction ∨). However, the theory of Boolean rings has an inherent asymmetry between the two operators, while the axioms and theorems of Boolean algebra express the symmetry of the theory described by the duality principle.[1] __TOC__


History

The term "Boolean algebra" honors George Boole (1815–1864), a self-educated English mathematician. He introduced the algebraic system initially in a small pamphlet, _The Mathematical Analysis of Logic_, published in 1847 in response to an ongoing public controversy between Augustus De Morgan and William Hamilton, and later as a more substantial book, _The Laws of Thought_, published in 1854. Boole's formulation differs from that described above in some important respects. For example, conjunction and disjunction in Boole were not a dual pair of operations. Boolean algebra emerged in the 1860s, in papers written by William Jevons and Charles Sanders Peirce. The first systematic presentation of Boolean algebra and distributive lattices is owed to the 1890 _Vorlesungen_ of Ernst Schröder. The first extensive treatment of Boolean algebra in English is A. N. Whitehead's 1898 _Universal Algebra_. Boolean algebra as an axiomatic algebraic structure in the modern axiomatic sense begins with a 1904 paper by Edward V. Huntington. Boolean algebra came of age as serious mathematics with the work of Marshall Stone in the 1930s, and with Garrett Birkhoff's 1940 _Lattice Theory_. In the 1960s, Paul Cohen, Dana Scott, and others found deep new results in mathematical logic and axiomatic set theory using offshoots of Boolean algebra, namely forcing and Boolean-valued models.


Definition

A BOOLEAN ALGEBRA is a six-tuple consisting of a set _A_, equipped with two binary operations ∧ (called "meet" or "and"), ∨ (called "join" or "or"), a unary operation ¬ (called "complement" or "not") and two elements 0 and 1 (called "bottom" and "top", or "least" and "greatest" element, also denoted by the symbols ⊥ and ⊤, respectively), such that for all elements _a_, _b_ and _c_ of _A_, the following axioms hold:[2]



        {| cellpadding=5

|_a_ ∨ (_b_ ∨ _c_) = (_a_ ∨ _b_) ∨ _c_ |_a_ ∧ (_b_ ∧ _c_) = (_a_ ∧ _b_) ∧ _c_ | associativity |- |_a_ ∨ _b_ = _b_ ∨ _a_ |_a_ ∧ _b_ = _b_ ∧ _a_ | commutativity |- |_a_ ∨ (_a_ ∧ _b_) = _a_ |_a_ ∧ (_a_ ∨ _b_) = _a_ | absorption |- |_a_ ∨ 0 = _a_ |_a_ ∧ 1 = _a_ | identity |- |_a_ ∨ (_b_ ∧ _c_) = (_a_ ∨ _b_) ∧ (_a_ ∨ _c_)   |_a_ ∧ (_b_ ∨ _c_) = (_a_ ∧ _b_) ∨ (_a_ ∧ _c_)   | distributivity |- |_a_ ∨ ¬_a_ = 1 |_a_ ∧ ¬_a_ = 0 | complements |} Note, however, that the absorption law and even the associativity law can be excluded from the set of axioms as they can be derived from the other axioms (see Proven properties).

A Boolean algebra with only one element is called a TRIVIAL BOOLEAN ALGEBRA or a DEGENERATE BOOLEAN ALGEBRA. (Some authors require 0 and 1 to be _distinct_ elements in order to exclude this case.)

It follows from the last three pairs of axioms above (identity, distributivity and complements), or from the absorption axiom, that



        _a_ = _b_ ∧ _a_     if and only if     _a_ ∨ _b_ = _b_.

The relation ≤ defined by _a_ ≤ _b_ if these equivalent conditions hold, is a partial order with least element 0 and greatest element 1. The meet _a_ ∧ _b_ and the join _a_ ∨ _b_ of two elements coincide with their infimum and supremum, respectively, with respect to ≤.

The first four pairs of axioms constitute a definition of a bounded lattice.

It follows from the first five pairs of axioms that any complement is unique.

The set of axioms is self-dual in the sense that if one exchanges ∨ with ∧ and 0 with 1 in an axiom, the result is again an axiom. Therefore, by applying this operation to a Boolean algebra (or Boolean lattice), one obtains another Boolean algebra with the same elements; it is called its DUAL.[3]


Examples

-   The simplest non-trivial Boolean algebra, the two-element Boolean algebra, has only two elements, 0 and 1, and is defined by the rules:

+--+---------------+--+--+---------------+--+--+------------------+
|  |   ∧   0   1   |  |  |   ∨   0   1   |  |  |   _a_    0   1   |
|  |   --- --- --- |  |  |   --- --- --- |  |  |   ------ --- --- |
|  |   0   0   0   |  |  |   0   0   1   |  |  |   ¬_a_   1   0   |
|  |   1   0   1   |  |  |   1   1   1   |  |  |                  |
+--+---------------+--+--+---------------+--+--+------------------+

:* It has applications in logic, interpreting 0 as _false_, 1 as _true_, ∧ as _and_, ∨ as _or_, and ¬ as _not_. Expressions involving variables and the Boolean operations represent statement forms, and two such expressions can be shown to be equal using the above axioms if and only if the corresponding statement forms are logically equivalent.

:* The two-element Boolean algebra is also used for circuit design in electrical engineering;[4] here 0 and 1 represent the two different states of one bit in a digital circuit, typically high and low voltage. Circuits are described by expressions containing variables, and two such expressions are equal for all values of the variables if and only if the corresponding circuits have the same input-output behavior. Furthermore, every possible input-output behavior can be modeled by a suitable Boolean expression.

:* The two-element Boolean algebra is also important in the general theory of Boolean algebras, because an equation involving several variables is generally true in all Boolean algebras if and only if it is true in the two-element Boolean algebra (which can be checked by a trivial brute force algorithm for small numbers of variables). This can for example be used to show that the following laws (_Consensus theorems_) are generally valid in all Boolean algebras:

:** (_a_ ∨ _b_) ∧ (¬_a_ ∨ _c_) ∧ (_b_ ∨ _c_) ≡ (_a_ ∨ _b_) ∧ (¬_a_ ∨ _c_)

:** (_a_ ∧ _b_) ∨ (¬_a_ ∧ _c_) ∨ (_b_ ∧ _c_) ≡ (_a_ ∧ _b_) ∨ (¬_a_ ∧ _c_)

-   The power set (set of all subsets) of any given nonempty set _S_ forms a Boolean algebra, an algebra of sets, with the two operations ∨ := ∪ (union) and ∧ := ∩ (intersection). The smallest element 0 is the empty set and the largest element 1 is the set _S_ itself.

:* After the two-element Boolean algebra, the simplest Boolean algebra is that defined by the power set of two atoms:

+--+-----------------------+--+--+-----------------------+--+--+--------------------------+
|  |   ∧   0   a   b   1   |  |  |   ∨   0   a   b   1   |  |  |   _x_    0   a   b   1   |
|  |   --- --- --- --- --- |  |  |   --- --- --- --- --- |  |  |   ------ --- --- --- --- |
|  |   0   0   0   0   0   |  |  |   0   0   a   b   1   |  |  |   ¬_x_   1   b   a   0   |
|  |   a   0   a   0   a   |  |  |   a   a   a   1   1   |  |  |                          |
|  |   b   0   0   b   b   |  |  |   b   b   1   b   1   |  |  |                          |
|  |   1   0   a   b   1   |  |  |   1   1   1   1   1   |  |  |                          |
+--+-----------------------+--+--+-----------------------+--+--+--------------------------+

-   The set of all subsets of _S_ that are either finite or cofinite is a Boolean algebra, an algebra of sets.
-   Starting with the propositional calculus with κ sentence symbols, form the Lindenbaum algebra (that is, the set of sentences in the propositional calculus modulo logical equivalence). This construction yields a Boolean algebra. It is in fact the free Boolean algebra on κ generators. A truth assignment in propositional calculus is then a Boolean algebra homomorphism from this algebra to the two-element Boolean algebra.
-   Given any linearly ordered set _L_ with a least element, the interval algebra is the smallest algebra of subsets of _L_ containing all of the half-open intervals [_a_, _b_) such that _a_ is in _L_ and _b_ is either in _L_ or equal to ∞. Interval algebras are useful in the study of Lindenbaum–Tarski algebras; every countable Boolean algebra is isomorphic to an interval algebra.

of the Boolean algebra of divisors of 30.]]

-   For any natural number _n_, the set of all positive divisors of _n_, defining _a_≤_b_ if _a_ divides _b_, forms a distributive lattice. This lattice is a Boolean algebra if and only if _n_ is square-free. The bottom and the top element of this Boolean algebra is the natural number 1 and _n_, respectively. The complement of _a_ is given by _n_/_a_. The meet and the join of _a_ and _b_ is given by the greatest common divisor (gcd) and the least common multiple (lcm) of _a_ and _b_, respectively. The ring addition _a_+_b_ is given by lcm(_a_,_b_)/gcd(_a_,_b_). The picture shows an example for _n_ = 30. As a counter-example, considering the non-square-free _n_=60, the greatest common divisor of 30 and its complement 2 would be 2, while it should be the bottom element 1.
-   Other examples of Boolean algebras arise from topological spaces: if _X_ is a topological space, then the collection of all subsets of _X_ which are both open and closed forms a Boolean algebra with the operations ∨ := ∪ (union) and ∧ := ∩ (intersection).
-   If _R_ is an arbitrary ring and we define the set of _central idempotents_ by
    _A_ = { _e_ ∈ _R_ : _e_² = _e_, _ex_ = _xe_, ∀_x_ ∈ _R_ }
    then the set _A_ becomes a Boolean algebra with the operations _e_ ∨ _f_ := _e_ + _f_ - _ef_ and _e_ ∧ _f_ := _ef_.


Homomorphisms and isomorphisms

A _homomorphism_ between two Boolean algebras _A_ and _B_ is a function _f_ : _A_ → _B_ such that for all _a_, _b_ in _A_:

    _f_(_a_ ∨ _b_) = _f_(_a_) ∨ _f_(_b_),
    _f_(_a_ ∧ _b_) = _f_(_a_) ∧ _f_(_b_),
    _f_(0) = 0,
    _f_(1) = 1.

It then follows that _f_(¬_a_) = ¬_f_(_a_) for all _a_ in _A_. The class of all Boolean algebras, together with this notion of morphism, forms a full subcategory of the category of lattices.

An _isomorphism_ between two Boolean algebras _A_ and _B_ is a homomorphism _f_ : _A_ → _B_ with an inverse homomorphism, that is, a homomorphism _g_ : _B_ → _A_ such that the composition _g_ ◌ _f_: _A_ → _A_ is the identity function on _A_, and the composition _f_ ◌ _g_: _B_ → _B_ is the identity function on _B_. A homomorphism of Boolean algebras is an isomorphism if and only if it is bijective.


Boolean rings

Every Boolean algebra (A, ∧, ∨) gives rise to a ring (_A_, +, ·) by defining _a_ + _b_ := (_a_ ∧ ¬_b_) ∨ (_b_ ∧ ¬_a_) = (_a_ ∨ _b_) ∧ ¬(_a_ ∧ _b_) (this operation is called symmetric difference in the case of sets and XOR in the case of logic) and _a_ · _b_ := _a_ ∧ _b_. The zero element of this ring coincides with the 0 of the Boolean algebra; the multiplicative identity element of the ring is the 1 of the Boolean algebra. This ring has the property that _a_ · _a_ = _a_ for all _a_ in _A_; rings with this property are called Boolean rings.

Conversely, if a Boolean ring _A_ is given, we can turn it into a Boolean algebra by defining _x_ ∨ _y_ := _x_ + _y_ + (_x_ · _y_) and _x_ ∧ _y_ := _x_ · _y_. [5][6] Since these two constructions are inverses of each other, we can say that every Boolean ring arises from a Boolean algebra, and vice versa. Furthermore, a map _f_ : _A_ → _B_ is a homomorphism of Boolean algebras if and only if it is a homomorphism of Boolean rings. The categories of Boolean rings and Boolean algebras are equivalent.[7]

Hsiang (1985) gave a rule-based algorithm to check whether two arbitrary expressions denote the same value in every Boolean ring. More generally, Boudet, Jouannaud, and Schmidt-Schauß (1989) gave an algorithm to solve equations between arbitrary Boolean-ring expressions. Employing the similarity of Boolean rings and Boolean algebras, both algorithms have applications in automated theorem proving.


Ideals and filters

An _ideal_ of the Boolean algebra _A_ is a subset _I_ such that for all _x_, _y_ in _I_ we have _x_ ∨ _y_ in _I_ and for all _a_ in _A_ we have _a_ ∧ _x_ in _I_. This notion of ideal coincides with the notion of ring ideal in the Boolean ring _A_. An ideal _I_ of _A_ is called _prime_ if _I_ ≠ _A_ and if _a_ ∧ _b_ in _I_ always implies _a_ in _I_ or _b_ in _I_. Furthermore, for every _a_ ∈ _A_ we have that _a_ ∧ _-a_ = 0 ∈ _I_ and then _a_ ∈ _I_ or _-a_ ∈ _I_ for every _a_ ∈ _A_, if _I_ is prime. An ideal _I_ of _A_ is called _maximal_ if _I_ ≠ _A_ and if the only ideal properly containing _I_ is _A_ itself. For an ideal _I_, if _a_ ∉ _I_ and _-a_ ∉ _I_, then _I_ ∪ {_a_} or _I_ ∪ {_-a_} is properly contained in another ideal _J_. Hence, that an _I_ is not maximal and therefore the notions of prime ideal and maximal ideal are equivalent in Boolean algebras. Moreover, these notions coincide with ring theoretic ones of prime ideal and maximal ideal in the Boolean ring _A_.

The dual of an _ideal_ is a _filter_. A _filter_ of the Boolean algebra _A_ is a subset _p_ such that for all _x_, _y_ in _p_ we have _x_ ∧ _y_ in _p_ and for all _a_ in _A_ we have _a_ ∨ _x_ in _p_. The dual of a _maximal_ (or _prime_) _ideal_ in a Boolean algebra is _ultrafilter_. Ultrafilters can alternatively be described as 2-valued morphisms from _A_ to the two-element Boolean algebra. The statement _every filter in a Boolean algebra can be extended to an ultrafilter_ is called the _Ultrafilter Theorem_ and cannot be proven in ZF, if ZF is consistent. Within ZF, it is strictly weaker than the axiom of choice. The Ultrafilter Theorem has many equivalent formulations: _every Boolean algebra has an ultrafilter_, _every ideal in a Boolean algebra can be extended to a prime ideal_, etc.


Representations

It can be shown that every _finite_ Boolean algebra is isomorphic to the Boolean algebra of all subsets of a finite set. Therefore, the number of elements of every finite Boolean algebra is a power of two.

Stone's celebrated _representation theorem for Boolean algebras_ states that _every_ Boolean algebra _A_ is isomorphic to the Boolean algebra of all clopen sets in some (compact totally disconnected Hausdorff) topological space.


Axiomatics

+---------------------------------------------------------------------------------------------------+
| PROVEN PROPERTIES                                                                                 |
+===================================================================================================+
|   UID₁         If _x_ ∨ _o_ = _x_ for all _x_, then _o_ = 0                                       |
|   -------- --- ----------------------------------------------                                     |
|   Proof:       If _x_ ∨ _o_ = _x_, then                                                           |
|                0                                                                                  |
|            =   0 ∨ _o_                                                                            |
|            =   _o_ ∨ 0                                                                            |
|            =   _o_                                                                                |
+---------------------------------------------------------------------------------------------------+
|   IDM₁         _x_ ∨ _x_ = _x_                                                                    |
|   -------- --- ----------------------------                                                       |
|   Proof:       _x_ ∨ _x_                                                                          |
|            =   (_x_ ∨ _x_) ∧ 1                                                                    |
|            =   (_x_ ∨ _x_) ∧ (_x_ ∨ ¬_x_)                                                         |
|            =   _x_ ∨ (_x_ ∧ ¬_x_)                                                                 |
|            =   _x_ ∨ 0                                                                            |
|            =   _x_                                                                                |
+---------------------------------------------------------------------------------------------------+
|   BND₁         _x_ ∨ 1 = 1                                                                        |
|   -------- --- --------------------------                                                         |
|   Proof:       _x_ ∨ 1                                                                            |
|            =   (_x_ ∨ 1) ∧ 1                                                                      |
|            =   1 ∧ (_x_ ∨ 1)                                                                      |
|            =   (_x_ ∨ ¬_x_) ∧ (_x_ ∨ 1)                                                           |
|            =   _x_ ∨ (¬_x_ ∧ 1)                                                                   |
|            =   _x_ ∨ ¬_x_                                                                         |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   ABS₁         _x_ ∨ (_x_ ∧ _y_) = _x_                                                            |
|   -------- --- -------------------------                                                          |
|   Proof:       _x_ ∨ (_x_ ∧ _y_)                                                                  |
|            =   (_x_ ∧ 1) ∨ (_x_ ∧ _y_)                                                            |
|            =   _x_ ∧ (1 ∨ _y_)                                                                    |
|            =   _x_ ∧ (_y_ ∨ 1)                                                                    |
|            =   _x_ ∧ 1                                                                            |
|            =   _x_                                                                                |
+---------------------------------------------------------------------------------------------------+
|   UNG          If _x_ ∨ _x__(n) = 1 and _x_ ∧ _x__(n) = 0, then _x__(n) = ¬_x_                    |
|   -------- --- -----------------------------------------------------------------                  |
|   Proof:       If _x_ ∨ _x__(n) = 1 and _x_ ∧ _x__(n) = 0, then                                   |
|                _x__(n)                                                                            |
|            =   _x__(n) ∧ 1                                                                        |
|            =   _x__(n) ∧ (_x_ ∨ ¬_x_)                                                             |
|            =   (_x__(n) ∧ _x_) ∨ (_x__(n) ∧ ¬_x_)                                                 |
|            =   (_x_ ∧ _x__(n)) ∨ (¬_x_ ∧ _x__(n))                                                 |
|            =   0 ∨ (¬_x_ ∧ _x__(n))                                                               |
|            =   (_x_ ∧ ¬_x_) ∨ (¬_x_ ∧ _x__(n))                                                    |
|            =   (¬_x_ ∧ _x_) ∨ (¬_x_ ∧ _x__(n))                                                    |
|            =   ¬_x_ ∧ (_x_ ∨ _x__(n))                                                             |
|            =   ¬_x_ ∧ 1                                                                           |
|            =   ¬_x_                                                                               |
+---------------------------------------------------------------------------------------------------+
|   DNG              ¬¬_x_ = _x_                                                                    |
|   -------- ------- -----------------------------                                                  |
|   Proof:           ¬_x_ ∨ _x_ = _x_ ∨ ¬_x_ = 1                                                    |
|            and     ¬_x_ ∧ _x_ = _x_ ∧ ¬_x_ = 0                                                    |
|            hence   _x_ = ¬¬_x_                                                                    |
+---------------------------------------------------------------------------------------------------+
|   A₁           _x_ ∨ (¬_x_ ∨ _y_) = 1                                                             |
|   -------- --- -------------------------------------                                              |
|   Proof:       _x_ ∨ (¬_x_ ∨ _y_)                                                                 |
|            =   (_x_ ∨ (¬_x_ ∨ _y_)) ∧ 1                                                           |
|            =   1 ∧ (_x_ ∨ (¬_x_ ∨ _y_))                                                           |
|            =   (_x_ ∨ ¬_x_) ∧ (_x_ ∨ (¬_x_ ∨ _y_))                                                |
|            =   _x_ ∨ (¬_x_ ∧ (¬_x_ ∨ _y_))                                                        |
|            =   _x_ ∨ ¬_x_                                                                         |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   B₁           (_x_ ∨ _y_) ∨ (¬_x_ ∧ ¬_y_) = 1                                                    |
|   -------- --- -------------------------------------------------                                  |
|   Proof:       (_x_ ∨ _y_) ∨ (¬_x_ ∧ ¬_y_)                                                        |
|            =   ((_x_ ∨ _y_) ∨ ¬_x_) ∧ ((_x_ ∨ _y_) ∨ ¬_y_)                                        |
|            =   (¬_x_ ∨ (_x_ ∨ _y_)) ∧ (¬_y_ ∨ (_y_ ∨ _x_))                                        |
|            =   (¬_x_ ∨ (¬¬_x_ ∨ _y_)) ∧ (¬_y_ ∨ (¬¬_y_ ∨ _x_))                                    |
|            =   1 ∧ 1                                                                              |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   C₁           (_x_ ∨ _y_) ∧ (¬_x_ ∧ ¬_y_) = 0                                                    |
|   -------- --- -----------------------------------------------                                    |
|   Proof:       (_x_ ∨ _y_) ∧ (¬_x_ ∧ ¬_y_)                                                        |
|            =   (¬_x_ ∧ ¬_y_) ∧ (_x_ ∨ _y_)                                                        |
|            =   ((¬_x_ ∧ ¬_y_) ∧ _x_) ∨ ((¬_x_ ∧ ¬_y_) ∧ _y_)                                      |
|            =   (_x_ ∧ (¬_x_ ∧ ¬_y_)) ∨ (_y_ ∧ (¬_y_ ∧ ¬_x_))                                      |
|            =   0 ∨ 0                                                                              |
|            =   0                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   DMG₁        ¬(_x_ ∨ _y_) = ¬_x_ ∧ ¬_y_                                                          |
|   -------- -- ----------------------------                                                        |
|   Proof:      by B₁, C₁, and UNG                                                                  |
+---------------------------------------------------------------------------------------------------+
|   D₁           (_x_∨(_y_∨_z_)) ∨ ¬_x_ = 1                                                         |
|   -------- --- ------------------------------                                                     |
|   Proof:       (_x_ ∨ (_y_ ∨ _z_)) ∨ ¬_x_                                                         |
|            =   ¬_x_ ∨ (_x_ ∨ (_y_ ∨ _z_))                                                         |
|            =   ¬_x_ ∨ (¬¬_x_ ∨ (_y_ ∨ _z_))                                                       |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   E₁           _y_ ∧ (_x_∨(_y_∨_z_)) = _y_                                                        |
|   -------- --- -----------------------------------                                                |
|   Proof:       _y_ ∧ (_x_ ∨ (_y_ ∨ _z_))                                                          |
|            =   (_y_ ∧ _x_) ∨ (_y_ ∧ (_y_ ∨ _z_))                                                  |
|            =   (_y_ ∧ _x_) ∨ _y_                                                                  |
|            =   _y_ ∨ (_y_ ∧ _x_)                                                                  |
|            =   _y_                                                                                |
+---------------------------------------------------------------------------------------------------+
|   F₁           (_x_∨(_y_∨_z_)) ∨ ¬_y_ = 1                                                         |
|   -------- --- ---------------------------------------------                                      |
|   Proof:       (_x_ ∨ (_y_ ∨ _z_)) ∨ ¬_y_                                                         |
|            =   ¬_y_ ∨ (_x_ ∨ (_y_ ∨ _z_))                                                         |
|            =   (¬_y_ ∨ (_x_ ∨ (_y_ ∨ _z_))) ∧ 1                                                   |
|            =   1 ∧ (¬_y_ ∨ (_x_ ∨ (_y_ ∨ _z_)))                                                   |
|            =   (_y_ ∨ ¬_y_) ∧ (¬_y_ ∨ (_x_ ∨ (_y_ ∨ _z_)))                                        |
|            =   (¬_y_ ∨ _y_) ∧ (¬_y_ ∨ (_x_ ∨ (_y_ ∨ _z_)))                                        |
|            =   ¬_y_ ∨ (_y_ ∧ (_x_ ∨ (_y_ ∨ _z_)))                                                 |
|            =   ¬_y_ ∨ _y_                                                                         |
|            =   _y_ ∨ ¬_y_                                                                         |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   G₁           (_x_∨(_y_∨_z_)) ∨ ¬_z_ = 1                                                         |
|   -------- --- ----------------------------                                                       |
|   Proof:       (_x_ ∨ (_y_ ∨ _z_)) ∨ ¬_z_                                                         |
|            =   (_x_ ∨ (_z_ ∨ _y_)) ∨ ¬_z_                                                         |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   H₁           ¬((_x_∨_y_)∨_z_) ∧ _x_ = 0                                                         |
|   -------- --- -----------------------------------------------                                    |
|   Proof:       ¬((_x_ ∨ _y_) ∨ _z_) ∧ _x_                                                         |
|            =   (¬(_x_ ∨ _y_) ∧ ¬_z_) ∧ _x_                                                        |
|            =   ((¬_x_ ∧ ¬_y_) ∧ ¬_z_) ∧ _x_                                                       |
|            =   _x_ ∧ ((¬_x_ ∧ ¬_y_) ∧ ¬_z_)                                                       |
|            =   (_x_ ∧ ((¬_x_ ∧ ¬_y_) ∧ ¬_z_)) ∨ 0                                                 |
|            =   0 ∨ (_x_ ∧ ((¬_x_ ∧ ¬_y_) ∧ ¬_z_))                                                 |
|            =   (_x_ ∧ ¬_x_) ∨ (_x_ ∧ ((¬_x_ ∧ ¬_y_) ∧ ¬_z_))                                      |
|            =   _x_ ∧ (¬_x_ ∨ ((¬_x_ ∧ ¬_y_) ∧ ¬_z_))                                              |
|            =   _x_ ∧ (¬_x_ ∨ (¬_z_ ∧ (¬_x_ ∧ ¬_y_)))                                              |
|            =   _x_ ∧ ¬_x_                                                                         |
|            =   0                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   I₁           ¬((_x_∨_y_)∨_z_) ∧ _y_ = 0                                                         |
|   -------- --- ----------------------------                                                       |
|   Proof:       ¬((_x_ ∨ _y_) ∨ _z_) ∧ _y_                                                         |
|            =   ¬((_y_ ∨ _x_) ∨ _z_) ∧ _y_                                                         |
|            =   0                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   J₁           ¬((_x_∨_y_)∨_z_) ∧ _z_ = 0                                                         |
|   -------- --- ------------------------------                                                     |
|   Proof:       ¬((_x_ ∨ _y_) ∨ _z_) ∧ _z_                                                         |
|            =   (¬(_x_ ∨ _y_) ∧ ¬_z_) ∧ _z_                                                        |
|            =   _z_ ∧ (¬(_x_ ∨ _y_) ∧ ¬_z_)                                                        |
|            =   _z_ ∧ ( ¬_z_ ∧ ¬(_x_ ∨ _y_))                                                       |
|            =   0                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   K₁           (_x_ ∨ (_y_ ∨ _z_)) ∨ ¬((_x_ ∨ _y_) ∨ _z_) = 1                                     |
|   -------- --- ---------------------------------------------------------------------------------- |
|   Proof:       (_x_∨(_y_∨_z_)) ∨ ¬((_x_ ∨ _y_) ∨ _z_)                                             |
|            =   (_x_∨(_y_∨_z_)) ∨ (¬(_x_ ∨ _y_) ∧ ¬_z_)                                            |
|            =   (_x_∨(_y_∨_z_)) ∨ ((¬_x_ ∧ ¬_y_) ∧ ¬_z_)                                           |
|            =   ((_x_∨(_y_∨_z_)) ∨ (¬_x_ ∧ ¬_y_)) ∧ ((_x_∨(_y_∨_z_)) ∨ ¬_z_)                       |
|            =   (((_x_∨(_y_∨_z_)) ∨ ¬_x_) ∧ ((_x_∨(_y_∨_z_)) ∨ ¬_y_)) ∧ ((_x_∨(_y_∨_z_)) ∨ ¬_z_)   |
|            =   (1 ∧ 1) ∧ 1                                                                        |
|            =   1                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   L₁           (_x_ ∨ (_y_ ∨ _z_)) ∧ ¬((_x_ ∨ _y_) ∨ _z_) = 0                                     |
|   -------- --- ---------------------------------------------------------------------------------- |
|   Proof:       (_x_ ∨ (_y_ ∨ _z_)) ∧ ¬((_x_ ∨ _y_) ∨ _z_)                                         |
|            =   ¬((_x_∨_y_)∨_z_) ∧ (_x_ ∨ (_y_ ∨ _z_))                                             |
|            =   (¬((_x_∨_y_)∨_z_) ∧ _x_) ∨ (¬((_x_∨_y_)∨_z_) ∧ (_y_ ∨ _z_))                        |
|            =   (¬((_x_∨_y_)∨_z_) ∧ _x_) ∨ ((¬((_x_∨_y_)∨_z_) ∧ _y_) ∨ (¬((_x_∨_y_)∨_z_) ∧ _z_))   |
|            =   0 ∨ (0 ∨ 0)                                                                        |
|            =   0                                                                                  |
+---------------------------------------------------------------------------------------------------+
|   ASS₁        _x_ ∨ (_y_ ∨ _z_) = (_x_ ∨ _y_) ∨ _z_                                               |
|   -------- -- ---------------------------------------                                             |
|   Proof:      by K₁, L₁, UNG, DNG                                                                 |
+---------------------------------------------------------------------------------------------------+
|   Abbreviations                                                                                   |
|   ---------------                                                                                 |
|   UID                                                                                             |
|   IDM                                                                                             |
|   BND                                                                                             |
|   ABS                                                                                             |
|   UNG                                                                                             |
|   DNG                                                                                             |
|   DMG                                                                                             |
|   ASS                                                                                             |
+---------------------------------------------------------------------------------------------------+

+----------------------------------------+
| HUNTINGTON 1904 BOOLEAN ALGEBRA AXIOMS |
+========================================+
| IDN₁                                   |
+----------------------------------------+
| CMM₁                                   |
+----------------------------------------+
| DST₁                                   |
+----------------------------------------+
| CPL₁                                   |
+----------------------------------------+
|   Abbreviations                        |
|   ---------------                      |
|   IDN                                  |
|   CMM                                  |
|   DST                                  |
|   CPL                                  |
+----------------------------------------+

The first axiomatization of Boolean lattices/algebras in general was given by the English philosopher and mathematician Alfred North Whitehead in 1898.[8][9] It included the above axioms and additionally _x_∨1=1 and _x_∧0=0. In 1904, the American mathematician Edward V. Huntington (1874–1952) gave probably the most parsimonious axiomatization based on ∧, ∨, ¬, even proving the associativity laws (see box).[10] He also proved that these axioms are independent of each other.[11] In 1933, Huntington set out the following elegant axiomatization for Boolean algebra. It requires just one binary operation + and a unary functional symbol _n_, to be read as 'complement', which satisfy the following laws:

1.  _Commutativity_: _x_ + _y_ = _y_ + _x_.
2.  _Associativity_: (_x_ + _y_) + _z_ = _x_ + (_y_ + _z_).
3.  _Huntington equation_: _n_(_n_(_x_) + _y_) + _n_(_n_(_x_) + _n_(_y_)) = _x_.

Herbert Robbins immediately asked: If the Huntington equation is replaced with its dual, to wit:

    4. _Robbins Equation_: _n_(_n_(_x_ + _y_) + _n_(_x_ + _n_(_y_))) = _x_,

do (1), (2), and (4) form a basis for Boolean algebra? Calling (1), (2), and (4) a _Robbins algebra_, the question then becomes: Is every Robbins algebra a Boolean algebra? This question (which came to be known as the Robbins conjecture) remained open for decades, and became a favorite question of Alfred Tarski and his students. In 1996, William McCune at Argonne National Laboratory, building on earlier work by Larry Wos, Steve Winker, and Bob Veroff, answered Robbins's question in the affirmative: Every Robbins algebra is a Boolean algebra. Crucial to McCune's proof was the automated reasoning program EQP he designed. For a simplification of McCune's proof, see Dahn (1998).

Further work has been done for reducing the number of axioms; see Minimal axioms for Boolean algebra.


Generalizations

+--+
|  |
+--+

Removing the requirement of existence of a unit from the axioms of Boolean algebra yields "generalized Boolean algebras". Formally, a distributive lattice _B_ is a generalized Boolean lattice, if it has a smallest element 0 and for any elements _a_ and _b_ in _B_ such that _a_ ≤ _b_, there exists an element _x_ such that a ∧ x = 0 and a ∨ x = b. Defining a ∖ b as the unique _x_ such that (a ∧ b) ∨ x = a and (a ∧ b) ∧ x = 0, we say that the structure (B,∧,∨,∖,0) is a _generalized Boolean algebra_, while (B,∨,0) is a _generalized Boolean semilattice_. Generalized Boolean lattices are exactly the ideals of Boolean lattices.

A structure that satisfies all axioms for Boolean algebras except the two distributivity axioms is called an orthocomplemented lattice. Orthocomplemented lattices arise naturally in quantum logic as lattices of closed subspaces for separable Hilbert spaces.


See also


Notes


References

-   . See Section 2.5.

-   -   -   . See Chapter 2.

-   .

-   -   .

-   .

-   .

-   -   -   .

-   .

-   .

-   . In 3 volumes. (Vol.1:, Vol.2:, Vol.3:)

-   .

-   .

-   . Reprinted by Dover Publications, 1979.

-   -


External links

-   -   Stanford Encyclopedia of Philosophy: "The Mathematics of Boolean Algebra," by J. Donald Monk.
-   McCune W., 1997. _Robbins Algebras Are Boolean_ JAR 19(3), 263—276
-   "Boolean Algebra" by Eric W. Weisstein, Wolfram Demonstrations Project, 2007.
-   Burris, Stanley N.; Sankappanavar, H. P., 1981. _A Course in Universal Algebra._ Springer-Verlag. .
-

Boolean_algebra Category:Algebraic structures Category:Ockham algebras

[1] Givant and Paul Halmos, 2009, p. 20

[2] Davey, Priestley, 1990, p.109, 131, 144

[3] .

[4] Strictly, electrical engineers tend to use additional states to represent other circuit conditions such as high impedance - see IEEE 1164 or IEEE 1364.

[5] Stone, 1936

[6] Hsiang, 1985, p.260

[7] , p. 81.

[8] Padmanabhan, p. 73

[9] Whitehead, 1898, p.37

[10] Huntington, 1904, p.292-293, (first of several axiomatizations by Huntington)

[11] Huntington, 1904, p.296