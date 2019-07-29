In topology and related branches of mathematics, a HAUSDORFF SPACE, SEPARATED SPACE or T₂ SPACE is a topological space where for any two distinct points there exists a neighbourhood of each which is disjoint from the neighbourhood of the other. Of the many separation axioms that can be imposed on a topological space, the "Hausdorff condition" (T₂) is the most frequently used and discussed. It implies the uniqueness of limits of sequences, nets, and filters.

Hausdorff spaces are named after Felix Hausdorff, one of the founders of topology. Hausdorff's original definition of a topological space (in 1914) included the Hausdorff condition as an axiom.


Definitions

Hausdorff_space.svg

Points _x_ and _y_ in a topological space _X_ can be _separated by neighbourhoods_ if there exists a neighbourhood _U_ of _x_ and a neighbourhood _V_ of _y_ such that _U_ and _V_ are disjoint ( ∅}}). _X_ is a HAUSDORFF SPACE if all distinct points in _X_ are pairwise neighbourhood-separable. This condition is the third separation axiom (after T₀ and T₁), which is why Hausdorff spaces are also called _T₂ spaces_. The name _separated space_ is also used.

A related, but weaker, notion is that of a PREREGULAR SPACE. _X_ is a preregular space if any two topologically distinguishable points can be separated by disjoint neighbourhoods. Preregular spaces are also called _R₁ spaces_.

The relationship between these two conditions is as follows. A topological space is Hausdorff if and only if it is both preregular (i.e. topologically distinguishable points are separated by neighbourhoods) and Kolmogorov (i.e. distinct points are topologically distinguishable). A topological space is preregular if and only if its Kolmogorov quotient is Hausdorff.


Equivalences

For a topological space _X_, the following are equivalent:

-   _X_ is a Hausdorff space.
-   Limits of nets in _X_ are unique.[1]
-   Limits of filters on _X_ are unique.[2]
-   Any singleton set is equal to the intersection of all closed neighbourhoods of _x_.[3] (A closed neighbourhood of _x_ is a closed set that contains an open set containing _x_.)
-   The diagonal Δ = {(_x_,_x_) | _x_ ∈ _X_} is closed as a subset of the product space _X_ × _X_.


Examples and non-examples

Almost all spaces encountered in analysis are Hausdorff; most importantly, the real numbers (under the standard metric topology on real numbers) are a Hausdorff space. More generally, all metric spaces are Hausdorff. In fact, many spaces of use in analysis, such as topological groups and topological manifolds, have the Hausdorff condition explicitly stated in their definitions.

A simple example of a topology that is T₁ but is not Hausdorff is the cofinite topology defined on an infinite set.

Pseudometric spaces typically are not Hausdorff, but they are preregular, and their use in analysis is usually only in the construction of Hausdorff gauge spaces. Indeed, when analysts run across a non-Hausdorff space, it is still probably at least preregular, and then they simply replace it with its Kolmogorov quotient, which is Hausdorff.[4]

In contrast, non-preregular spaces are encountered much more frequently in abstract algebra and algebraic geometry, in particular as the Zariski topology on an algebraic variety or the spectrum of a ring. They also arise in the model theory of intuitionistic logic: every complete Heyting algebra is the algebra of open sets of some topological space, but this space need not be preregular, much less Hausdorff, and in fact usually is neither. The related concept of Scott domain also consists of non-preregular spaces.

While the existence of unique limits for convergent nets and filters implies that a space is Hausdorff, there are non-Hausdorff T₁ spaces in which every convergent sequence has a unique limit.[5]


Properties

Subspaces and products of Hausdorff spaces are Hausdorff,[6] but quotient spaces of Hausdorff spaces need not be Hausdorff. In fact, _every_ topological space can be realized as the quotient of some Hausdorff space.[7]

Hausdorff spaces are T₁, meaning that all singletons are closed. Similarly, preregular spaces are R₀.

Another nice property of Hausdorff spaces is that compact sets are always closed.[8] This may fail in non-Hausdorff spaces such as the Sierpiński space.

The definition of a Hausdorff space says that points can be separated by neighborhoods. It turns out that this implies something which is seemingly stronger: in a Hausdorff space every pair of disjoint compact sets can also be separated by neighborhoods,[9] in other words there is a neighborhood of one set and a neighborhood of the other, such that the two neighborhoods are disjoint. This is an example of the general rule that compact sets often behave like points.

Compactness conditions together with preregularity often imply stronger separation axioms. For example, any locally compact preregular space is completely regular. Compact preregular spaces are normal, meaning that they satisfy Urysohn's lemma and the Tietze extension theorem and have partitions of unity subordinate to locally finite open covers. The Hausdorff versions of these statements are: every locally compact Hausdorff space is Tychonoff, and every compact Hausdorff space is normal Hausdorff.

The following results are some technical properties regarding maps (continuous and otherwise) to and from Hausdorff spaces.

Let _f_ : _X_ → _Y_ be a continuous function and suppose _Y_ is Hausdorff. Then the graph of _f_, {(x, f(x)) ∣ x ∈ X}, is a closed subset of _X_ × _Y_.

Let _f_ : _X_ → _Y_ be a function and let ker (f) ≜ {(x, x′) ∣ f(x) = f(x′)} be its kernel regarded as a subspace of _X_ × _X_.

-   If _f_ is continuous and _Y_ is Hausdorff then ker(_f_) is closed.
-   If _f_ is an open surjection and ker(_f_) is closed then _Y_ is Hausdorff.
-   If _f_ is a continuous, open surjection (i.e. an open quotient map) then _Y_ is Hausdorff if and only if ker(f) is closed.

If _f,g_ : _X_ → _Y_ are continuous maps and _Y_ is Hausdorff then the equalizer eq(f, g) = {x ∣ f(x) = g(x)} is closed in _X_. It follows that if _Y_ is Hausdorff and _f_ and _g_ agree on a dense subset of _X_ then _f_ = _g_. In other words, continuous functions into Hausdorff spaces are determined by their values on dense subsets.

Let _f_ : _X_ → _Y_ be a closed surjection such that _f_^(−1)(_y_) is compact for all _y_ ∈ _Y_. Then if _X_ is Hausdorff so is _Y_.

Let _f_ : _X_ → _Y_ be a quotient map with _X_ a compact Hausdorff space. Then the following are equivalent:

-   _Y_ is Hausdorff.
-   _f_ is a closed map.
-   ker(_f_) is closed.


Preregularity versus regularity

All regular spaces are preregular, as are all Hausdorff spaces. There are many results for topological spaces that hold for both regular and Hausdorff spaces. Most of the time, these results hold for all preregular spaces; they were listed for regular and Hausdorff spaces separately because the idea of preregular spaces came later. On the other hand, those results that are truly about regularity generally do not also apply to nonregular Hausdorff spaces.

There are many situations where another condition of topological spaces (such as paracompactness or local compactness) will imply regularity if preregularity is satisfied. Such conditions often come in two versions: a regular version and a Hausdorff version. Although Hausdorff spaces are not, in general, regular, a Hausdorff space that is also (say) locally compact will be regular, because any Hausdorff space is preregular. Thus from a certain point of view, it is really preregularity, rather than regularity, that matters in these situations. However, definitions are usually still phrased in terms of regularity, since this condition is better known than preregularity.

See History of the separation axioms for more on this issue.


Variants

The terms "Hausdorff", "separated", and "preregular" can also be applied to such variants on topological spaces as uniform spaces, Cauchy spaces, and convergence spaces. The characteristic that unites the concept in all of these examples is that limits of nets and filters (when they exist) are unique (for separated spaces) or unique up to topological indistinguishability (for preregular spaces).

As it turns out, uniform spaces, and more generally Cauchy spaces, are always preregular, so the Hausdorff condition in these cases reduces to the T₀ condition. These are also the spaces in which completeness makes sense, and Hausdorffness is a natural companion to completeness in these cases. Specifically, a space is complete if and only if every Cauchy net has at _least_ one limit, while a space is Hausdorff if and only if every Cauchy net has at _most_ one limit (since only Cauchy nets can have limits in the first place).


Algebra of functions

The algebra of continuous (real or complex) functions on a compact Hausdorff space is a commutative C*-algebra, and conversely by the Banach–Stone theorem one can recover the topology of the space from the algebraic properties of its algebra of continuous functions. This leads to noncommutative geometry, where one considers noncommutative C*-algebras as representing algebras of functions on a noncommutative space.


Academic humour

-   Hausdorff condition is illustrated by the pun that in Hausdorff spaces any two points can be "housed off" from each other by open sets.[10]
-   In the Mathematics Institute of the University of Bonn, in which Felix Hausdorff researched and lectured, there is a certain room designated the HAUSDORFF-RAUM. This is a pun, as _Raum_ means both _room_ and _space_ in German.


See also

-   Quasitopological space
-   Weak Hausdorff space
-   Fixed-point space, a Hausdorff space _X_ such that every continuous function _f_ : _X_ → _X_ has a fixed point.


Notes


References

-   Arkhangelskii, A.V., L.S. Pontryagin, _General Topology I_, (1990) Springer-Verlag, Berlin. .
-   Bourbaki; _Elements of Mathematics: General Topology_, Addison-Wesley (1966).
-   -

Category:Separation axioms Category:Topological spaces

[1] Willard, pp. 86–87.

[2] Willard, pp. 86–87.

[3] Bourbaki, p. 75.

[4] See for instance Lp space#Lp spaces, Banach–Mazur compactum etc.

[5]

[6]

[7]

[8]

[9] Willard, p. 124.

[10] Colin Adams and Robert Franzosa. _Introduction to Topology: Pure and Applied._ p. 42