In mathematics, an ORDERED FIELD is a field together with a total ordering of its elements that is compatible with the field operations. Historically, the axiomatization of an ordered field was abstracted gradually from the real numbers, by mathematicians including David Hilbert, Otto Hölder and Hans Hahn. This grew eventually into the Artin–Schreier theory of ordered fields and formally real fields.

An ordered field necessarily has characteristic 0 since the elements necessarily are all distinct. Thus, an ordered field necessarily contains an infinite number of elements: a finite field cannot be ordered.

Every subfield of an ordered field is also an ordered field in the inherited order. Every ordered field contains an ordered subfield that is isomorphic to the rational numbers. Any Dedekind-complete ordered field is isomorphic to the real numbers. Squares are necessarily non-negative in an ordered field. This implies that the complex numbers cannot be ordered since the square of the imaginary unit _i_ is . Every ordered field is a formally real field.


Definitions

There are two equivalent common definitions of an ordered field. The definition of TOTAL ORDER appeared first historically and is a first-order axiomatization of the ordering ≤ as a binary predicate. Artin and Schreier gave the definition in terms of POSITIVE CONE in 1926, which axiomatizes the subcollection of nonnegative elements. Although the latter is higher-order, viewing positive cones as _maximal_ prepositive cones provides a larger context in which field orderings are _extremal_ partial orderings.

Total order

A field (_F_, +, ·) together with a (strict) total order < on _F_ is an ORDERED FIELD if the order satisfies the following properties for all _a_, _b_ and _c_ in _F_:

-   if _a_ < _b_ then _a_ + _c_ < _b_ + _c_, and
-   if 0 < _a_ and 0 < _b_ then 0 < _a_·_b_.

The symbol for multiplication will be henceforth omitted.

Positive cone

A PREPOSITIVE CONE or PREORDERING of a field _F_ is a subset _P_ ⊂ _F_ that has the following properties:[1]

-   For _x_ and _y_ in _P_, both _x_ + _y_ and _xy_ are in _P_.
-   If _x_ is in _F_, then _x_² is in _P_.
-   The element −1 is not in _P_.

A PREORDERED FIELD is a field equipped with a preordering _P_. Its non-zero elements _P_^(∗) form a subgroup of the multiplicative group of _F_.

If in addition, the set _F_ is the union of _P_ and −_P_, we call _P_ a POSITIVE CONE of _F_. The non-zero elements of _P_ are called the POSITIVE elements of _F_.

An ORDERED FIELD is a field _F_ together with a positive cone _P_.

The preorderings on _F_ are precisely the intersections of families of positive cones on _F_. The positive cones are the maximal preorderings.[2]

Equivalence of the two definitions

Let _F_ be a field. There is a bijection between the field orderings of _F_ and the positive cones of _F_.

Given a field ordering ≤ as in the first definition, the set of elements such that _x_ ≥ 0 forms a positive cone of _F_. Conversely, given a positive cone _P_ of _F_ as in the second definition, one can associate a total ordering ≤_(_P_) on _F_ by setting _x_ ≤_(_P_) _y_ to mean _y_ − _x_ ∈ _P_. This total ordering ≤_(_P_) satisfies the properties of the first definition.


Examples of ordered fields

Examples of ordered fields are:

-   the rational numbers
-   the real numbers
-   any subfield of an ordered field, such as the real algebraic numbers or computable numbers
-   the field of real rational functions $\frac {p(x)} {q(x)}\,$, where p(x) and q(x) are polynomials with real coefficients, q(x) ≠ 0 , can be made into an ordered field where the polynomial p(x) = x is greater than any constant polynomial, by defining that $\frac {p(x)} {q(x)} > 0\,$ whenever $\frac {p_0} {q_0} > 0\,$, for p(x) = p₀x^(n) + ⋯ and q(x) = q₀x^(m) + ⋯ . This ordered field is not Archimedean.
-   The field ℝ((x)) of formal Laurent series with real coefficients, where _x_ is taken to be infinitesimal and positive
-   the transseries
-   real closed fields
-   the superreal numbers
-   the hyperreal numbers

The surreal numbers form a proper class rather than a set, but otherwise obey the axioms of an ordered field. Every ordered field can be embedded into the surreal numbers.


Properties of ordered fields

For every _a_, _b_, _c_, _d_ in _F_:

-   Either −_a_ ≤ 0 ≤ _a_ or _a_ ≤ 0 ≤ −_a_
-   One can "add inequalities": if _a_ ≤ _b_ and _c_ ≤ _d_, then _a_ + _c_ ≤ _b_ + _d_
-   One can "multiply inequalities with positive elements": if _a_ ≤ _b_ and 0 ≤ _c_, then _ac_ ≤ _bc_
-   Transitivity of inequality: if _a_ < _b_ and _b_ < _c_, then _a_ < _c_
-   If _x_ < _y_ and _x_, _y_ > 0, then 1/_y_ < 1/_x_
-   1 is positive
-   An ordered field has characteristic 0. (Since 1 > 0, then 1 + 1 > 0, and 1 + 1 + 1 > 0, etc. If the field had characteristic _p_ > 0, then −1 would be the sum of _p_ − 1 ones, but −1 is not positive.) In particular, finite fields cannot be ordered.
-   Squares are non-negative: 0 ≤ _a_² for all _a_ in _F_

Every subfield of an ordered field is also an ordered field (inheriting the induced ordering). The smallest subfield is isomorphic to the rationals (as for any other field of characteristic 0), and the order on this rational subfield is the same as the order of the rationals themselves. If every element of an ordered field lies between two elements of its rational subfield, then the field is said to be _Archimedean_. Otherwise, such field is a non-Archimedean ordered field and contains infinitesimals. For example, the real numbers form an Archimedean field, but hyperreal numbers form a non-Archimedean field, because it extends real numbers with elements greater than any standard natural number.[3]

An ordered field _K_ is isomorphic to the real number field if every non-empty subset of _K_ with an upper bound in _K_ has a least upper bound in _K_. This property implies that the field is Archimedean.

Vector spaces over an ordered field

Vector spaces (particularly, _n_-spaces) over an ordered field exhibit some special properties and have some specific structures, namely: orientation, convexity, and positively-definite inner product. See Real coordinate space#Geometric properties and uses for discussion of those properties of R^(_n_), which can be generalized to vector spaces over other ordered fields.


Which fields can be ordered?

Every ordered field is a formally real field, i.e., 0 cannot be written as a sum of nonzero squares.[4][5]

Conversely, every formally real field can be equipped with a compatible total order, that will turn it into an ordered field. (This order need not be uniquely determined.) The proof uses Zorn's lemma.[6]

Finite fields and more generally fields of finite characteristic cannot be turned into ordered fields, because in characteristic _p_, the element −1 can be written as a sum of (_p_ − 1) squares 1². The complex numbers also cannot be turned into an ordered field, as −1 is a square (of the imaginary number _i_) and would thus be positive. Also, the p-adic numbers cannot be ordered, since according to Hensel's lemma Q₂ contains a square root of −7, thus 1²+1²+1²+2²+()²=0, and Q_(_p_) (_p_ > 2) contains a square root of 1−_p_, thus (_p_−1)·1²+()²=0.


Topology induced by the order

If _F_ is equipped with the order topology arising from the total order ≤, then the axioms guarantee that the operations + and × are continuous, so that _F_ is a topological field.


Harrison topology

The HARRISON TOPOLOGY is a topology on the set of orderings _X__(_F_) of a formally real field _F_. Each order can be regarded as a multiplicative group homomorphism from _F_^(∗) onto ±1. Giving ±1 the discrete topology and ±1^(_F_) the product topology induces the subspace topology on _X__(_F_). The HARRISON SETS H(a) = {P ∈ X_(F) : a ∈ P} form a subbasis for the Harrison topology. The product is a Boolean space (compact, Hausdorff and totally disconnected), and _X__(_F_) is a closed subset, hence again Boolean.[7][8]


Fans and superordered fields

A FAN on _F_ is a preordering _T_ with the property that if _S_ is a subgroup of index 2 in _F_^(∗) containing _T_ − {0} and not containing −1 then _S_ is an ordering (that is, _S_ is closed under addition).[9] A SUPERORDERED FIELD is a totally real field in which the set of sums of squares forms a fan.[10]


See also

-   Ordered ring
-   Ordered vector space
-   Preorder field


Notes


References

-   -   -

Category:Ordered algebraic structures Category:Ordered groups Category:Real algebraic geometry

[1] Lam (2005) p. 289

[2]

[3]

[4] Lam (2005) p. 41

[5] Lam (2005) p. 232

[6] Lam (2005) p. 236

[7] Lam (2005) p. 271

[8] Lam (1983) pp. 1–2

[9] Lam (1983) p. 39

[10] Lam (1983) p. 45