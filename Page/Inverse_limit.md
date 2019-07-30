In mathematics, the INVERSE LIMIT (also called the PROJECTIVE LIMIT) is a construction that allows one to "glue together" several related objects, the precise manner of the gluing process being specified by morphisms between the objects. Inverse limits can be defined in any category, and they are a special case of the concept of a limit in category theory.


Formal definition

Algebraic objects

We start with the definition of an INVERSE SYSTEM (or projective system) of groups and homomorphisms. Let (_I_, ≤) be a directed poset (not all authors require _I_ to be directed). Let (_A__(_i_))_(_i_∈_I_) be a family of groups and suppose we have a family of homomorphisms _f__(_ij_): _A__(_j_) → _A__(_i_) for all _i_ ≤ _j_ (note the order), called bonding maps, with the following properties:

1.  _f__(_ii_) is the identity on _A__(_i_),
2.  _f__(_ik_) = _f__(_ij_) ∘ _f__(_jk_) for all _i_ ≤ _j_ ≤ _k_.

Then the pair ((_A__(_i_))_(_i_∈_I_), (_f__(_ij_))_(_i_≤\ _j_∈_I_)) is called an inverse system of groups and morphisms over _I_, and the morphisms _f__(_ij_) are called the transition morphisms of the system.

We define the INVERSE LIMIT of the inverse system ((_A__(_i_))_(_i_∈_I_), (_f__(_ij_))_(_i_≤\ _j_∈_I_)) as a particular subgroup of the direct product of the _A__(_i_)'s:

$$A = \varprojlim_{i\in I}{A_i} = \left\{\left.\vec a \in \prod_{i\in I}A_i \;\right|\; a_i = f_{ij}(a_j) \text{ for all } i \leq j \text{ in } I\right\}.$$

The inverse limit _A_ comes equipped with _natural projections_ π_(_i_): _A_ → _A__(_i_) which pick out the _i_th component of the direct product for each _i_ in _I_. The inverse limit and the natural projections satisfy a universal property described in the next section.

This same construction may be carried out if the _A__(_i_)'s are sets,[1] semigroups,[2] topological spaces,[3] rings, modules (over a fixed ring), algebras (over a fixed ring), etc., and the homomorphisms are morphisms in the corresponding category. The inverse limit will also belong to that category.

General definition

The inverse limit can be defined abstractly in an arbitrary category by means of a universal property. Let (_X__(_i_), _f__(_ij_)) be an inverse system of objects and morphisms in a category _C_ (same definition as above). The INVERSE LIMIT of this system is an object _X_ in _C_ together with morphisms π_(_i_): _X_ → _X__(_i_) (called _projections_) satisfying π_(_i_) = _f__(_ij_) ∘ π_(_j_) for all _i_ ≤ _j_. The pair (_X_, π_(_i_)) must be universal in the sense that for any other such pair (_Y_, ψ_(_i_)) (i.e. ψ_(_i_): _Y_ → _X__(_i_) with ψ_(_i_) = _f__(_ij_) ∘ ψ_(_j_) for all _i_ ≤ _j_) there exists a unique morphism _u_: _Y_ → _X_ such that the diagram

commutes for all _i_ ≤ _j_, for which it suffices to show that ψ_(_i_) = π_(_i_) ∘ _u_ for all _i_. The inverse limit is often denoted

$$X = \varprojlim X_i$$
with the inverse system (_X__(_i_), _f__(_ij_)) being understood.

In some categories, the inverse limit of certain inverse systems does not exist. If it does, however, it is unique in a strong sense: given any two inverse limits _X_ and _X_' of an inverse system, there exists a _unique_ isomorphism _X_′ → _X_ commuting with the projection maps.

We note that an inverse system in a category _C_ admits an alternative description in terms of functors. Any partially ordered set _I_ can be considered as a small category where the morphisms consist of arrows _i_ → _j_ if and only if _i_ ≤ _j_. An inverse system is then just a contravariant functor _I_ → _C_, and the inverse limit functor $\varprojlim:C^{I^{op}}\rightarrow C$ is a covariant functor.


Examples

-   The ring of _p_-adic integers is the inverse limit of the rings Z/_p_^(_n_)Z (see modular arithmetic) with the index set being the natural numbers with the usual order, and the morphisms being "take remainder". That is, one considers sequences of integers (n₀, n₁, ⋯) such that each element of the sequence "projects" down to the previous ones, namely, that n_(i) ≡ n_(j) mod p^(i + 1) whenever i < j. The natural topology on the _p_-adic integers is the one implied here, namely the product topology with cylinder sets as the open sets.
-   The ring $\textstyle R[[t|t]]$ of formal power series over a commutative ring _R_ can be thought of as the inverse limit of the rings $\textstyle R[t]/t^nR[t]$, indexed by the natural numbers as usually ordered, with the morphisms from $\textstyle R[t]/t^{n+j}R[t]$ to $\textstyle R[t]/t^nR[t]$ given by the natural projection.
-   Pro-finite groups are defined as inverse limits of (discrete) finite groups.
-   Let the index set _I_ of an inverse system (_X__(_i_), _f__(_ij_)) have a greatest element _m_. Then the natural projection π_(_m_): _X_ → _X__(_m_) is an isomorphism.
-   In the category of sets, every inverse system has an inverse limit, which can be constructed in an elementary manner as a subset of the product of the sets forming the inverse system. The inverse limit of any inverse system of non-empty finite sets is non-empty. This is a generalization of Kőnig's lemma in graph theory and may be proved with Tychonoff's theorem, viewing the finite sets as compact discrete spaces, and then applying the finite intersection property characterization of compactness.
-   In the category of topological spaces, every inverse system has an inverse limit. It is constructed by placing the initial topology on the underlying set-theoretic inverse limit. This is known as the LIMIT TOPOLOGY.
    -   The set of infinite strings is the inverse limit of the set of finite strings, and is thus endowed with the limit topology. As the original spaces are discrete, the limit space is totally disconnected. This is one way of realizing the _p_-adic numbers and the Cantor set (as infinite strings).


Derived functors of the inverse limit

For an abelian category _C_, the inverse limit functor

$$\varprojlim:C^I\rightarrow C$$
is left exact. If _I_ is ordered (not simply partially ordered) and countable, and _C_ is the category AB of abelian groups, the Mittag-Leffler condition is a condition on the transition morphisms _f__(_ij_) that ensures the exactness of $\varprojlim$. Specifically, Eilenberg constructed a functor

$$\varprojlim{}^1:\operatorname{Ab}^I\rightarrow\operatorname{Ab}$$
(pronounced "lim one") such that if (_A__(_i_), _f__(_ij_)), (_B__(_i_), _g__(_ij_)), and (_C__(_i_), _h__(_ij_)) are three inverse systems of abelian groups, and

0 → _A__(_i_) → _B__(_i_) → _C__(_i_) → 0
is a short exact sequence of inverse systems, then

$$0\rightarrow\varprojlim A_i\rightarrow\varprojlim B_i\rightarrow\varprojlim C_i\rightarrow\varprojlim{}^1A_i$$
is an exact sequence in AB.

Mittag-Leffler condition

If the ranges of the morphisms of an inverse system of abelian groups (_A__(_i_), _f__(_ij_)) are _stationary_, that is, for every _k_ there exists _j_ ≥ _k_ such that for all _i_ ≥ _j_
_f__(_k__j_)(_A__(_j_)) = _f__(_k__i_)(_A__(_i_))
one says that the system satisfies the MITTAG-LEFFLER CONDITION.

The name "Mittag-Leffler" for this condition was given by Bourbaki in their chapter on uniform structures for a similar result about inverse limits of complete Hausdorff uniform spaces. Mittag-Leffler used a similar argument in the proof of Mittag-Leffler's theorem.

The following situations are examples where the Mittag-Leffler condition is satisfied:

-   a system in which the morphisms _f__(_ij_) are surjective
-   a system of finite-dimensional vector spaces or finite abelian groups or modules of finite length or Artinian modules.

An example where $\varprojlim{}^1$ is non-zero is obtained by taking _I_ to be the non-negative integers, letting _A__(_i_) = _p_^(_i_)Z, _B__(_i_) = Z, and _C__(_i_) = _B__(_i_) / _A__(_i_) = Z/_p_^(_i_)Z. Then

$$\varprojlim{}^1A_i=\mathbf{Z}_p/\mathbf{Z}$$
where Z_(_p_) denotes the p-adic integers.

Further results

More generally, if _C_ is an arbitrary abelian category that has enough injectives, then so does _C_^(_I_), and the right derived functors of the inverse limit functor can thus be defined. The _n_th right derived functor is denoted

$$R^n\varprojlim:C^I\rightarrow C.$$
In the case where _C_ satisfies Grothendieck's axiom (AB4*), Jan-Erik Roos generalized the functor lim¹ on AB^(_I_) to series of functors lim^(n) such that

$$\varprojlim{}^n\cong R^n\varprojlim.$$
It was thought for almost 40 years that Roos had proved (in ''Sur les foncteurs dérivés de lim. Applications. '') that lim¹ _A__(_i_) = 0 for (_A__(_i_), _f__(_ij_)) an inverse system with surjective transition morphisms and _I_ the set of non-negative integers (such inverse systems are often called "Mittag-Leffler sequences"). However, in 2002, Amnon Neeman and Pierre Deligne constructed an example of such a system in a category satisfying (AB4) (in addition to (AB4*)) with lim¹ _A__(_i_) ≠ 0. Roos has since shown (in "Derived functors of inverse limits revisited") that his result is correct if _C_ has a set of generators (in addition to satisfying (AB3) and (AB4*)).

Barry Mitchell has shown (in "The cohomological dimension of a directed set") that if _I_ has cardinality ℵ_(d) (the _d_th infinite cardinal), then _R_^(_n_)lim is zero for all _n_ ≥ _d_ + 2. This applies to the _I_-indexed diagrams in the category of _R_-modules, with _R_ a commutative ring; it is not necessarily true in an arbitrary abelian category (see Roos' "Derived functors of inverse limits revisited" for examples of abelian categories in which lim^(_n_), on diagrams indexed by a countable set, is nonzero for _n_ > 1).


Related concepts and generalizations

The categorical dual of an inverse limit is a direct limit (or inductive limit). More general concepts are the limits and colimits of category theory. The terminology is somewhat confusing: inverse limits are a class of limits, while direct limits are a class of colimits.


See also

-   Direct, or inductive limit
-   Protorus


Notes


References

-   -   -   -   -   -   -   -   Section 3.5 of

de:Limes (Kategorientheorie)

Category:Limits (category theory) Category:Abstract algebra

[1] John Rhodes & Benjamin Steinberg. The q-theory of Finite Semigroups. p. 133. .

[2]

[3]