In mathematics, PROFINITE GROUPS are topological groups that are in a certain sense assembled from finite groups. They share many properties with their finite quotients: for example, both Lagrange's theorem and the Sylow theorems generalise well to profinite groups.[1]

A non-compact generalization of a profinite group is a locally profinite group.


Definition

Profinite groups can be defined in either of two equivalent ways.

First definition

A profinite group is a topological group that is isomorphic to the inverse limit of an inverse system of discrete finite groups.[2] In this context, an inverse system consists of a directed set (I,  ≤ ), a collection of finite groups 𝒢 = {G_(i) : i ∈ I}, each having the discrete topology, and a collection of homomorphisms {f_(i)^(j) : G_(j) → G_(i) ∣ i, j ∈ I, i ≤ j} such that f_(i)^(i) is the identity on G_(i) and the collection satisfies the composition property f_(i)^(j) ∘ f_(j)^(k) = f_(i)^(k). The inverse limit is the set:

lim_(←)G_(i) = {(g_(i))_(i ∈ I)∈∏_(i ∈ I)G_(i):f_(i)^(j)(g_(j))=g_(i) for all j≥i}

equipped with the relative product topology. In categorical terms, this is a special case of a (co)filtered limit construction. One can also define the inverse limit in terms of a universal property.

Second definition

A profinite group is a Hausdorff, compact, and totally disconnected topological group:[3] that is, a topological group that is also a Stone space. Given this definition, it is possible to recover the first definition using the inverse limit lim_(←)G/N where N ranges through the open normal subgroups of G ordered by (reverse) inclusion.


Examples

-   Finite groups are profinite, if given the discrete topology.
-   The group of _p_-adic integers Z_(_p_) under addition is profinite (in fact procyclic). It is the inverse limit of the finite groups Z/_p_^(_n_)Z where _n_ ranges over all natural numbers and the natural maps Z/_p_^(_n_)Z → Z/_p_^(_m_)Z (_n_ ≥ _m_) are used for the limit process. The topology on this profinite group is the same as the topology arising from the p-adic valuation on Z_(_p_).
-   The Galois theory of field extensions of infinite degree gives rise naturally to Galois groups that are profinite. Specifically, if _L_/_K_ is a Galois extension, we consider the group _G_ = Gal(_L_/_K_) consisting of all field automorphisms of _L_ which keep all elements of _K_ fixed. This group is the inverse limit of the finite groups Gal(_F_/_K_), where _F_ ranges over all intermediate fields such that _F_/_K_ is a _finite_ Galois extension. For the limit process, we use the restriction homomorphisms Gal(_F_₁/_K_) → Gal(_F_₂/_K_), where _F_₂ ⊆ _F_₁. The topology we obtain on Gal(_L_/_K_) is known as the KRULL TOPOLOGY after Wolfgang Krull. showed that _every_ profinite group is isomorphic to one arising from the Galois theory of _some_ field _K_, but one cannot (yet) control which field _K_ will be in this case. In fact, for many fields _K_ one does not know in general precisely which finite groups occur as Galois groups over _K_. This is the inverse Galois problem for a field _K_. (For some fields _K_ the inverse Galois problem is settled, such as the field of rational functions in one variable over the complex numbers.) Not every profinite group occurs as an absolute Galois group of a field.[4]
-   The fundamental groups considered in algebraic geometry are also profinite groups, roughly speaking because the algebra can only 'see' finite coverings of an algebraic variety. The fundamental groups of algebraic topology, however, are in general not profinite: for any prescribed group, there is a 2-dimensional CW complex whose fundamental group equals it (fix a presentation of the group; the CW complex has one 0-cell, a loop for every generator, and a 2-cell for every relation, whose attaching map corresponds to the relation in the "obvious" way: e.g. for the relation _abc=1_, the attaching map traces a generator of the fundamental groups of the loops for _a_, _b_, and _c_ in order. The computation follows by van Kampen's theorem.)
-   The automorphism group of a locally finite rooted tree is profinite.


Properties and facts

-   Every product of (arbitrarily many) profinite groups is profinite; the topology arising from the profiniteness agrees with the product topology. The inverse limit of an inverse system of profinite groups with continuous transition maps is profinite and the inverse limit functor is exact on the category of profinite groups. Further, being profinite is an extension property.
-   Every closed subgroup of a profinite group is itself profinite; the topology arising from the profiniteness agrees with the subspace topology. If _N_ is a closed normal subgroup of a profinite group _G_, then the factor group _G_/_N_ is profinite; the topology arising from the profiniteness agrees with the quotient topology.
-   Since every profinite group _G_ is compact Hausdorff, we have a Haar measure on _G_, which allows us to measure the "size" of subsets of _G_, compute certain probabilities, and integrate functions on _G_.
-   A subgroup of a profinite group is open if and only if it is closed and has finite index.
-   According to a theorem of Nikolay Nikolov and Dan Segal, in any topologically finitely-generated profinite group (that is, a profinite group that has a dense finitely-generated subgroup) the subgroups of finite index are open. This generalizes an earlier analogous result of Jean-Pierre Serre for topologically finitely-generated pro-p groups. The proof uses the classification of finite simple groups.
-   As an easy corollary of the Nikolov–Segal result above, _any_ surjective discrete group homomorphism φ: _G_ → _H_ between profinite groups _G_ and _H_ is continuous as long as _G_ is topologically finitely-generated. Indeed, any open subgroup of _H_ is of finite index, so its preimage in _G_ is also of finite index, hence it must be open.
-   Suppose _G_ and _H_ are topologically finitely-generated profinite groups which are isomorphic as discrete groups by an isomorphism ι. Then ι is bijective and continuous by the above result. Furthermore, ι^(−1) is also continuous, so ι is a homeomorphism. Therefore the topology on a topologically finitely-generated profinite group is uniquely determined by its _algebraic_ structure.


Profinite completion

Given an arbitrary group _G_, there is a related profinite group _G_^(^), the PROFINITE COMPLETION of _G_.[5] It is defined as the inverse limit of the groups _G_/_N_, where _N_ runs through the normal subgroups in _G_ of finite index (these normal subgroups are partially ordered by inclusion, which translates into an inverse system of natural homomorphisms between the quotients). There is a natural homomorphism η : _G_ → _G_^(^), and the image of _G_ under this homomorphism is dense in _G_^(^). The homomorphism η is injective if and only if the group _G_ is residually finite (i.e., ⋂N = 1, where the intersection runs through all normal subgroups of finite index). The homomorphism η is characterized by the following universal property: given any profinite group _H_ and any group homomorphism _f_ : _G_ → _H_, there exists a unique continuous group homomorphism _g_ : _G_^(^) → _H_ with _f_ = _g_η.


Ind-finite groups

There is a notion of IND-FINITE GROUP, which is the conceptual dual to profinite groups; i.e. a group _G_ is ind-finite if it is the direct limit of an inductive system of finite groups. (In particular, it is an ind-group.) The usual terminology is different: a group _G_ is called locally finite if every finitely-generated subgroup is finite. This is equivalent, in fact, to being 'ind-finite'.

By applying Pontryagin duality, one can see that abelian profinite groups are in duality with locally finite discrete abelian groups. The latter are just the abelian torsion groups.


Projective profinite groups

A profinite group is PROJECTIVE if it has the lifting property for every extension. This is equivalent to saying that _G_ is projective if for every surjective morphism from a profinite _H_ → _G_ there is a section _G_ → _H_.[6][7]

Projectivity for a profinite group _G_ is equivalent to either of the two properties:[8]

-   the cohomological dimension cd(_G_) ≤ 1;
-   for every prime _p_ the Sylow _p_-subgroups of _G_ are free pro-_p_-groups.

Every projective profinite group can be realized as an absolute Galois group of a pseudo algebraically closed field. This result is due to Alexander Lubotzky and Lou van den Dries.[9]


See also

-   Locally cyclic group
-   Pro-p group
-   Profinite integer
-   Residual property (mathematics)
-   Residually finite group
-   Hausdorff completion


References

-   -   .

-   .

-   .

-   . Review of several books about profinite groups.

-   .

-   .

Category:Infinite group theory Category:Topological groups

[1]

[2]

[3]

[4] Fried & Jarden (2008) p. 497

[5]

[6] Serre (1997) p. 58

[7] Fried & Jarden (2008) p. 207

[8]

[9] Fried & Jarden (2008) pp. 208,545