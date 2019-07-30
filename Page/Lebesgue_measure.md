In measure theory, the LEBESGUE MEASURE, named after French mathematician Henri Lebesgue, is the standard way of assigning a measure to subsets of _n_-dimensional Euclidean space. For _n_ = 1, 2, or 3, it coincides with the standard measure of length, area, or volume. In general, it is also called _N_-DIMENSIONAL VOLUME, _N_-VOLUME, or simply VOLUME.[1] It is used throughout real analysis, in particular to define Lebesgue integration. Sets that can be assigned a Lebesgue measure are called LEBESGUE-MEASURABLE; the measure of the Lebesgue-measurable set _A_ is here denoted by _λ_(_A_).

Henri Lebesgue described this measure in the year 1901, followed the next year by his description of the Lebesgue integral. Both were published as part of his dissertation in 1902.[2]

The Lebesgue measure is often denoted by _dx_, but this should not be confused with the distinct notion of a volume form.


Definition

Given a subset E ⊆ ℝ, with the length of interval I = [a, b] (or I = (a, b)) given by ℓ(I) = b − a, the Lebesgue outer measure [3] λ^(*)(E) is defined as

$$\lambda^*(E) = \operatorname{inf} \left\{\sum_{k=1}^\infty \ell(I_k) : {(I_k)_{k \in \mathbb N}} \text{ is a sequence of intervals with open boundaries with } E\subseteq \bigcup_{k=1}^\infty I_k\right\}$$
.

The Lebesgue measure is defined on the Lebesgue _σ_-algebra, which is the collection of all sets E which satisfy the "Carathéodory criterion" which requires that for every A ⊆ ℝ,

_λ_^(*)(_A_) = _λ_^(*)(_A_ ∩ _E_) + _λ_^(*)(_A_ ∩ _E_^(_c_))
For any set in the Lebesgue _σ_-algebra, its Lebesgue measure is given by its Lebesgue outer measure λ(E) = λ^(*)(E).

Sets that are not included in the Lebesgue _σ_-algebra are not Lebesgue-measurable. Such sets do exist, i.e., the Lebesgue _σ_-algebra is strictly contained in the power set of ℝ.

Intuition

The first part of the definition states that the subset E of the real numbers is reduced to its outer measure by coverage by sets of open intervals. Each of these sets of intervals I covers E in the sense that when the intervals are combined together by union, they contain E. The total length of any covering interval set can easily overestimate the measure of E, because E is a subset of the union of the intervals, and so the intervals may include points which are not in E. The Lebesgue outer measure emerges as the greatest lower bound (infimum) of the lengths from among all possible such sets. Intuitively, it is the total length of those interval sets which fit E most tightly and do not overlap.

That characterizes the Lebesgue outer measure. Whether this outer measure translates to the Lebesgue measure proper depends on an additional condition. This condition is tested by taking subsets A of the real numbers using E as an instrument to split A into two partitions: the part of A which intersects with E and the remaining part of A which is not in E: the set difference of A and E. These partitions of A are subject to the outer measure. If for all possible such subsets A of the real numbers, the partitions of A cut apart by E have outer measures whose sum is the outer measure of A, then the outer Lebesgue measure of E gives its Lebesgue measure. Intuitively, this condition means that the set E must not have some curious properties which causes a discrepancy in the measure of another set when E is used as a "mask" to "clip" that set, hinting at the existence of sets for which the Lebesgue outer measure does not give the Lebesgue measure. (Such sets are, in fact, not Lebesgue-measurable.)


Examples

-   Any open or closed interval of real numbers is Lebesgue-measurable, and its Lebesgue measure is the length . The open interval has the same measure, since the difference between the two sets consists only of the end points _a_ and _b_ and has measure zero.
-   Any Cartesian product of intervals and is Lebesgue-measurable, and its Lebesgue measure is , the area of the corresponding rectangle.
-   Moreover, every Borel set is Lebesgue-measurable. However, there are Lebesgue-measurable sets which are not Borel sets.[4][5]
-   Any countable set of real numbers has Lebesgue measure 0.
-   In particular, the Lebesgue measure of the set of rational numbers is 0, although the set is dense in R.
-   The Cantor set is an example of an uncountable set that has Lebesgue measure zero.
-   If the axiom of determinacy holds then all sets of reals are Lebesgue-measurable. Determinacy is however not compatible with the axiom of choice.
-   Vitali sets are examples of sets that are not measurable with respect to the Lebesgue measure. Their existence relies on the axiom of choice.
-   Osgood curves are simple plane curves with positive Lebesgue measure[6] (it can be obtained by small variation of the Peano curve construction). The dragon curve is another unusual example.
-   Any line in ℝ^(n), for n ≥ 2, has a zero Lebesgue measure. In general, every proper hyperplane has a zero Lebesgue measure in its ambient space.


Properties

The Lebesgue measure on R^(_n_) has the following properties:

1.  If _A_ is a cartesian product of intervals _I_₁ × _I_₂ × ... × _I__(_n_), then _A_ is Lebesgue-measurable and λ(A) = |I₁| ⋅ |I₂|⋯|I_(n)|. Here, |_I_| denotes the length of the interval _I_.
2.  If _A_ is a disjoint union of countably many disjoint Lebesgue-measurable sets, then _A_ is itself Lebesgue-measurable and _λ_(_A_) is equal to the sum (or infinite series) of the measures of the involved measurable sets.
3.  If _A_ is Lebesgue-measurable, then so is its complement.
4.  _λ_(_A_) ≥ 0 for every Lebesgue-measurable set _A_.
5.  If _A_ and _B_ are Lebesgue-measurable and _A_ is a subset of _B_, then _λ_(_A_) ≤ _λ_(_B_). (A consequence of 2, 3 and 4.)
6.  Countable unions and intersections of Lebesgue-measurable sets are Lebesgue-measurable. (Not a consequence of 2 and 3, because a family of sets that is closed under complements and disjoint countable unions need not be closed under countable unions: {∅, {1, 2, 3, 4}, {1, 2}, {3, 4}, {1, 3}, {2, 4}}.)
7.  If _A_ is an open or closed subset of R^(_n_) (or even Borel set, see metric space), then _A_ is Lebesgue-measurable.
8.  If _A_ is a Lebesgue-measurable set, then it is "approximately open" and "approximately closed" in the sense of Lebesgue measure (see the regularity theorem for Lebesgue measure).
9.  A Lebesgue-measurable set can be "squeezed" between a containing open set and a contained closed set. This property has been used as an alternative definition of Lebesgue measurability. More precisely, E ⊂ ℝ is Lebesgue-measurable if and only if for every ε > 0 there exist an open set G and a closed set F such that F ⊂ E ⊂ G and λ(G \ F) < ε.[7]
10. A Lebesgue-measurable set can be "squeezed" between a containing G_(_δ_)set and a contained F_(_σ_). I.e, if _A_ is Lebesgue-measurable then there exist a G_(_δ_)set _G_ and an F_(_σ_) _F_ such that _G_ ⊇ _A_ ⊇ _F_ and _λ_(_G_ \ _A_) = _λ_(_A_ \ _F_) = 0.
11. Lebesgue measure is both locally finite and inner regular, and so it is a Radon measure.
12. Lebesgue measure is strictly positive on non-empty open sets, and so its support is the whole of R^(_n_).
13. If _A_ is a Lebesgue-measurable set with _λ(_A'') = 0 (a null set), then every subset of _A_ is also a null set. A fortiori, every subset of _A_ is measurable.
14. If _A_ is Lebesgue-measurable and _x_ is an element of R^(_n_), then the ''translation of _A_ by x'', defined by _A_ + _x_ = {_a_ + _x_ : _a_ ∈ _A_}, is also Lebesgue-measurable and has the same measure as _A_.
15. If _A_ is Lebesgue-measurable and δ > 0, then the _dilation of A by δ_ defined by δA = {δx : x ∈ A} is also Lebesgue-measurable and has measure δ^(n)λ (A).
16. More generally, if _T_ is a linear transformation and _A_ is a measurable subset of R^(_n_), then _T_(_A_) is also Lebesgue-measurable and has the measure |det(T)|λ(A).

All the above may be succinctly summarized as follows:

    The Lebesgue-measurable sets form a _σ_-algebra containing all products of intervals, and _λ_ is the unique complete translation-invariant measure on that σ-algebra with λ([0, 1] × [0, 1] × ⋯ × [0, 1]) = 1.

The Lebesgue measure also has the property of being _σ_-finite.


Null sets

A subset of R^(_n_) is a _null set_ if, for every ε > 0, it can be covered with countably many products of _n_ intervals whose total volume is at most ε. All countable sets are null sets.

If a subset of R^(_n_) has Hausdorff dimension less than _n_ then it is a null set with respect to _n_-dimensional Lebesgue measure. Here Hausdorff dimension is relative to the Euclidean metric on R^(_n_) (or any metric Lipschitz equivalent to it). On the other hand, a set may have topological dimension less than _n_ and have positive _n_-dimensional Lebesgue measure. An example of this is the Smith–Volterra–Cantor set which has topological dimension 0 yet has positive 1-dimensional Lebesgue measure.

In order to show that a given set _A_ is Lebesgue-measurable, one usually tries to find a "nicer" set _B_ which differs from _A_ only by a null set (in the sense that the symmetric difference (_A_ − _B_) ∪(_B_ − _A_) is a null set) and then show that _B_ can be generated using countable unions and intersections from open or closed sets.


Construction of the Lebesgue measure

The modern construction of the Lebesgue measure is an application of Carathéodory's extension theorem. It proceeds as follows.

Fix . A BOX in R^(_n_) is a set of the form

$$B=\prod_{i=1}^n [a_i,b_i] \, ,$$
where , and the product symbol here represents a Cartesian product. The volume of this box is defined to be

$$\operatorname{vol}(B)=\prod_{i=1}^n (b_i-a_i) \, .$$

For _any_ subset _A_ of R^(_n_), we can define its outer measure _λ_*(_A_) by:

_λ_^(*)(_A_) = inf {∑_(_B_ ∈ 𝒞)vol(_B_):𝒞 is a countable collection of boxes whose union covers _A_}.

We then define the set _A_ to be Lebesgue-measurable if for every subset _S_ of R^(_n_),

_λ_^(*)(_S_) = _λ_^(*)(_S_ ∩ _A_) + _λ_^(*)(_S_ \ _A_) .

These Lebesgue-measurable sets form a _σ_-algebra, and the Lebesgue measure is defined by _λ_*(_A_)}} for any Lebesgue-measurable set _A_.

The existence of sets that are not Lebesgue-measurable is a consequence of a certain set-theoretical axiom, the axiom of choice, which is independent from many of the conventional systems of axioms for set theory. The Vitali theorem, which follows from the axiom, states that there exist subsets of R that are not Lebesgue-measurable. Assuming the axiom of choice, non-measurable sets with many surprising properties have been demonstrated, such as those of the Banach–Tarski paradox.

In 1970, Robert M. Solovay showed that the existence of sets that are not Lebesgue-measurable is not provable within the framework of Zermelo–Fraenkel set theory in the absence of the axiom of choice (see Solovay's model).[8]


Relation to other measures

The Borel measure agrees with the Lebesgue measure on those sets for which it is defined; however, there are many more Lebesgue-measurable sets than there are Borel measurable sets. The Borel measure is translation-invariant, but not complete.

The Haar measure can be defined on any locally compact group and is a generalization of the Lebesgue measure (R^(_n_) with addition is a locally compact group).

The Hausdorff measure is a generalization of the Lebesgue measure that is useful for measuring the subsets of R^(_n_) of lower dimensions than _n_, like submanifolds, for example, surfaces or curves in R³ and fractal sets. The Hausdorff measure is not to be confused with the notion of Hausdorff dimension.

It can be shown that there is no infinite-dimensional analogue of Lebesgue measure.


See also

-   Lebesgue's density theorem
-   Lebesgue measure of the set of Liouville numbers


References

Category:Measures (measure theory)

[1] The term _volume_ is also used, more strictly, as a synonym of 3-dimensional volume

[2]

[3]

[4]

[5]

[6]

[7]

[8]