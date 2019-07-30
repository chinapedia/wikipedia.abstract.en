In mathematics, a CONVERGENCE GROUP or a DISCRETE CONVERGENCE GROUP is a group Γ acting by homeomorphisms on a compact metrizable space M in a way that generalizes the properties of the action of Kleinian group by Möbius transformations on the ideal boundary 𝕊² of the hyperbolic 3-space ℍ³. The notion of a convergence group was introduced by Gehring and Martin (1987) [1] and has since found wide applications in geometric topology, quasiconformal analysis, and geometric group theory.


Formal definition

Let Γ be a group acting by homeomorphisms on a compact metrizable space M. This action is called a _convergence action_ or a _discrete convergence action_ (and then Γ is called a _convergence group_ or a _discrete convergence group_ for this action) if for every infinite distinct sequence of elements γ_(n) ∈ Γ there exist a subsequence γ_(n_(k)), k = 1, 2, … and points a, b ∈ M such that the maps γ_(n_(k))|_(M \ {a}) converge uniformly on compact subsets to the constant map sending M \ {a} to b. Here converging uniformly on compact subsets means that for every open neighborhood U of b in M and every compact K ⊂ M \ {a} there exists an index k₀ ≥ 1 such that for every k ≥ k₀, γ_(n_(k))(K) ⊆ U. Note that the "poles" a, b ∈ M associated with the subsequence γ_(n_(k)) are not required to be distinct.

Reformulation in terms of the action on distinct triples

The above definition of convergence group admits a useful equivalent reformulation in terms of the action of Γ on the "space of distinct triples" of M. For a set M denote Θ(M) := M³ \ Δ(M), where Δ(M) = {(a, b, c) ∈ M³ ∣ #{a, b, c} ≤ 2}. The set Θ(M) is called the "space of distinct triples" for M.

Then the following equivalence is known to hold:[2]

Let Γ be a group acting by homeomorphisms on a compact metrizable space M with at least two points. Then this action is a discrete convergence action if and only if the inducted action of Γ on Θ(M) is properly discontinuous.


Examples

-   The action of a Kleinian group Γ on 𝕊² = ∂ℍ³ by Möbius transformations is a convergence group action.
-   The action of a word-hyperbolic group G by translations on its ideal boundary ∂G is a convergence group action.
-   The action of a relatively hyperbolic group G by translations on its Bowditch boundary ∂G is a convergence group action.
-   Let X be a proper geodesic Gromov-hyperbolic metric space and let Γ be a group acting properly discontinuously by isometries on X. Then the corresponding boundary action of Γ on ∂X is a discrete convergence action (Lemma 2.11 of [3]).


Classification of elements in convergence groups

Let Γ be a group acting by homeomorphisms on a compact metrizable space Mwith at least three points, and let γ ∈ Γ. Then it is known (Lemma 3.1 in [4] or Lemma 6.2 in [5]) that exactly one of the following occurs:

(1) The element γ has finite order in Γ; in this case γ is called _elliptic_.

(2) The element γ has infinite order in Γ and the fixed set Fix_(M)(γ) is a single point; in this case γ is called _parabolic_.

(3) The element γ has infinite order in Γ and the fixed set Fix_(M)(γ) consists of two distinct points; in this case γ is called _loxodromic_.

Moreover, for every p ≠ 0 the elements γ and γ^(p)have the same type. Also in cases (2) and (3) Fix_(M)(γ) = Fix_(M)(γ^(p)) (where p ≠ 0) and the group ⟨γ⟩ acts properly discontinuously on M \ Fix_(M)(γ). Additionally, if γ is loxodromic, then ⟨γ⟩ acts properly discontinuously and cocompactly on M \ Fix_(M)(γ).

If γ ∈ Γ is parabolic with a fixed point a ∈ M then for every x ∈ M one has lim_(n → ∞)γ^(n)x = lim_(n →  − ∞)γ^(n)x = a If γ ∈ Γ is loxodromic, then Fix_(M)(γ) can be written as Fix_(M)(γ) = {a_(−), a₊} so that for every x ∈ M \ {a_(−)} one has lim_(n → ∞)γ^(n)x = a₊ and for every x ∈ M \ {a₊} one has lim_(n →  − ∞)γ^(n)x = a_(−), and these convergences are uniform on compact subsets of M \ {a_(−), a₊}.


Uniform convergence groups

A discrete convergence action of a group Γ on a compact metrizable space M is called _uniform_ (in which case Γ is called a _uniform convergence group_) if the action of Γ on Θ(M) is co-compact. Thus Γ is a uniform convergence group if and only if its action on Θ(M) is both properly discontinuous and co-compact.

Conical limit points

Let Γ act on a compact metrizable space M as a discrete convergence group. A point x ∈ M is called a _conical limit point_ (sometimes also called a _radial limit point_ or a _point of approximation_) if there exist an infinite sequence of distinct elements γ_(n) ∈ Γ and distinct points a, b ∈ M such that lim_(n → ∞)γ_(n)x = a and for every y ∈ M \ {x} one has lim_(n → ∞)γ_(n)y = b.

An important result of Tukia,[6] also independently obtained by Bowditch,[7][8] states:

A discrete convergence group action of a group Γ on a compact metrizable space M is uniform if and only if every non-isolated point of M is a conical limit point.

Word-hyperbolic groups and their boundaries

It was already observed by Gromov[9] that the natural action by translations of a word-hyperbolic group G on its boundary ∂G is a uniform convergence action (see[10] for a formal proof). Bowditch[11] proved an important converse, thus obtaining a topological characterization of word-hyperbolic groups:

THEOREM. Let G act as a discrete uniform convergence group on a compact metrizable space M with no isolated points. Then the group G is word-hyperbolic and there exists a G-equivariant homeomorphism M → ∂G.


Convergence actions on the circle

An isometric action of a group G on the hyperbolic plane ℍ² is called _geometric_ if this action is properly discontinuous and cocompact. Every geometric action of G on ℍ² induces a uniform convergence action of G on 𝕊¹ = ∂H² ≈ ∂G. An important result of Tukia (1986),[12] Gabai (1992),[13] Casson–Jungreis (1994),[14] and Freden (1995)[15] shows that the converse also holds:

THEOREM. If G is a group acting as a discrete uniform convergence group on 𝕊¹ then this action is topologically conjugate to an action induced by a geometric action of G on ℍ² by isometries.

Note that whenever G acts geometrically on ℍ², the group G is virtually a hyperbolic surface group, that is, G contains a finite index subgroup isomorphic to the fundamental group of a closed hyperbolic surface.


Convergence actions on the 2-sphere

One of the equivalent reformulations of Cannon's conjecture, originally posed by James W. Cannon in terms of word-hyperbolic groups with boundaries homeomorphic to 𝕊²,[16] says that if G is a group acting as a discrete uniform convergence group on 𝕊² then this action is topologically conjugate to an action induced by a geometric action of G on ℍ³ by isometries. This conjecture still remains open.


Applications and further generalizations

-   Yaman gave a characterization of relatively hyperbolic groups in terms of convergence actions,[17] generalizing Bowditch's characterization of word-hyperbolic groups as uniform convergence groups.
-   One can consider more general versions of group actions with "convergence property" without the discreteness assumption.[18]
-   The most general version of the notion of Cannon–Thurston map, originally defined in the context of Kleinian and word-hyperbolic groups, can be defined and studied in the context of setting of convergence groups.[19]


References

Category:Group theory Category:Dynamical systems Category:Geometric topology Category:Geometric group theory

[1] F. W. Gehring and G. J. Martin, _Discrete quasiconformal groups I_, Proceedings of the London Mathematical Society 55 (1987), 331–358

[2] B. H. Bowditch, _Convergence groups and configuration spaces_. Geometric group theory down under (Canberra, 1996), 23–54, de Gruyter, Berlin, 1999.

[3]

[4]

[5] B. H. Bowditch, _Treelike structures arising from continua and convergence groups_. Memoirs of the American Mathematical Society 139 (1999), no. 662.

[6] P. Tukia, _Conical limit points and uniform convergence groups._ Journal für die Reine und Angewandte Mathematik _501_ (1998), 71–98

[7]

[8] B. Bowditch, ''A topological characterisation of hyperbolic groups. Journal of the American Mathematical Society 11 (1998), no. 3, 643–667

[9]

[10]

[11]

[12] P. Tukia, _On quasiconformal groups._ Journal d'Analyse Mathématique 46 (1986), 318–346.

[13] D. Gabai, _Convergence groups are Fuchsian groups._ Annals of Mathematics 136 (1992), no. 3, 447–510.

[14] A. Casson, D. Jungreis, _Convergence groups and Seifert fibered 3-manifolds._ Inventiones Mathematicae 118 (1994), no. 3, 441–456.

[15] E. Freden, _Negatively curved groups have the convergence property. I._ Annales Academiae Scientiarum Fennicae. Series A I. Mathematica 20 (1995), no. 2, 333–348.

[16] James W. Cannon, _The theory of negatively curved spaces and groups_. Ergodic theory, symbolic dynamics, and hyperbolic spaces (Trieste, 1989), 315–369, Oxford Sci. Publ., Oxford Univ. Press, New York, 1991

[17] A. Yaman, _A topological characterisation of relatively hyperbolic groups._ Journal für die Reine und Angewandte Mathematik 566 (2004), 41–89

[18] V. Gerasimov, _Expansive convergence groups are relatively hyperbolic_, Geometric and Functional Analysis (GAFA) 19 (2009), no. 1, 137–169

[19] W.Jeon, I. Kapovich, C. Leininger, K. Ohshika, _Conical limit points and the Cannon-Thurston map._ Conformal Geometry and Dynamics 20 (2016), 58–80