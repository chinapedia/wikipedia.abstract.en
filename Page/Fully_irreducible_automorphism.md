In the mathematical subject geometric group theory, a FULLY IRREDUCIBLE AUTOMORPHISM of the free group _F_(n)_ is an element of Out(_F_(n)_) which has no periodic conjugacy classes of proper free factors in _F_(n)_ (where _n_ > 1). Fully irreducible automorphisms are also referred to as "irreducible with irreducible powers" or "iwip" automorphisms. The notion of being fully irreducible provides a key Out(_F_(n)_) counterpart of the notion of a pseudo-Anosov element of the mapping class group of a finite type surface. Fully irreducibles play an important role in the study of structural properties of individual elements and of subgroups of Out(_F_(n)_).


Formal definition

Let φ ∈ Out (F_(n)) where n ≥ 2. Then φ is called _fully irreducible_[1] if there do not exist an integer p ≠ 0 and a proper free factor A of F_(n) such that φ^(p)([A]) = [A], where [A] is the conjugacy class of A in F_(n). Here saying that A is a proper free factor of F_(n) means that A ≠ 1 and there exists a subgroup B ≤ F_(n), B ≠ 1 such that F_(n) = A * B.

Also, Φ ∈ Aut (F_(n)) is called _fully irreducible_ if the outer automorphism class φ ∈ Out (F_(n)) of Φ is fully irreducible.

Two fully irreducibles φ, ψ ∈ Out (F_(n)) are called _independent_ if ⟨φ⟩ ∩ ⟨ψ⟩ = {1}.

Relationship to irreducible automorphisms

The notion of being fully irreducible grew out of an older notion of an ``irreducible" outer automorphism of F_(n) originally introduced in.[2] An element φ ∈ Out (F_(n)), where n ≥ 2, is called _irreducible_ if there does not exist a free product decomposition

_F__(_n_) = _A_₁ * … * _A__(_k_) * _C_
with k ≥ 1, and with A_(i) ≠ 1, i = 1, …k being proper free factors of F_(n), such that φ permutes the conjugacy classes [A₁], …, [A_(k)].

Then φ ∈ Out (F_(n)) is fully irreducible in the sense of the definition above if and only if for every p ≠ 0 φ^(p) is irreducible.

It is known that for any _atoroidal_ φ ∈ Out (F_(n)) (that is, without periodic conjugacy classes of nontrivial elements of F_(n)), being irreducible is equivalent to being fully irreducible.[3] For non-atoroidal automorphisms, Bestvina and Handel[4] produce an example of an irreducible but not fully irreducible element of Out (F_(n)), induced by a suitably chosen pseudo-Anosov homeomorphism of a surface with more than one boundary component.


Properties

-   If φ ∈ Out (F_(n)) and p ≠ 0 then φ is fully irreducible if and only if φ^(p) is fully irreducible.
-   Every fully irreducible φ ∈ Out (F_(n)) can be represented by an expanding irreducible train track map.[5]
-   Every fully irreducible φ ∈ Out (F_(n)) has exponential growth in F_(n) given by a _stretch factor_ λ = λ(φ) > 1. This stretch factor has the property that for every free basis X of F_(n) (and, more generally, for every point of the Culler–Vogtmann Outer space X ∈ cv_(n)) and for every 1 ≠ g ∈ F_(n) one has:



        $\lim_{k\to\infty}\sqrt[k]{\|\varphi^k(g)\|_X}=\lambda.$

Moreover, λ = λ(φ) is equal to the Perron–Frobenius eigenvalue of the transition matrix of any train track representative of φ.[6][7]

-   Unlike for stretch factors of pseudo-Anosov surface homeomorphisms, it can happen that for a fully irreducible φ ∈ Out (F_(n)) one has λ(φ) ≠ λ(φ^( − 1))[8] and this behavior is believed to be generic. However, Handel and Mosher[9] proved that for every n ≥ 2 there exists a finite constant 0 < C_(n) < ∞ such that for every fully irreducible φ ∈ Out (F_(n))



        $\frac{\log\lambda(\varphi) }{\log \lambda(\varphi^{-1})} \le C_n.$

-   A fully irreducible φ ∈ Out (F_(n)) is _non-atoroidal_, that is, has a periodic conjugacy class of a nontrivial element of F_(n), if and only if φ is induced by a pseudo-Anosov homeomorphism of a compact connected surface with one boundary component and with the fundamental group isomorphic to F_(n).[10]
-   A fully irreducible element φ ∈ Out (F_(n)) has exactly two fixed points in the Thurston compactification $\overline{CV}_n$ of the projectivized Outer space CV_(n), and φ ∈ Out (F_(n)) acts on $\overline{CV}_n$ with ``North-South" dynamics.[11]
-   For a fully irreducible element φ ∈ Out (F_(n)), its fixed points in $\overline{CV}_n$ are projectivized ℝ-trees [T₊(φ)], [T_(−)(φ)], where $T_+(\varphi),T_-(\varphi)\in \overline{cv}_n$, satisfying the property that T₊(φ)φ = λ(φ)T₊(φ) and T_(−)(φ)φ^( − 1) = λ(φ^( − 1))T_(−)(φ).[12]
-   A fully irreducible element φ ∈ Out (F_(n)) acts on the space of projectivized geodesic currents ℙCurr(F_(n)) with either ``North-South" or ``generalized North-South" dynamics, depending on whether φ is atoroidal or non-atoroidal.[13][14]
-   If φ ∈ Out (F_(n)) is fully irreducible, then the commensurator Comm(⟨φ⟩) ≤ Out (F_(n)) is virtually cyclic.Ilya Kapovich, and Martin Lustig, _Stabilizers of_ ℝ-_trees with free isometric actions of F_(N)_.

Journal of Group Theory 14 (2011), no. 5, 673–694. In particular, the centralizer and the normalizer of ⟨φ⟩ in Out (F_(n)) are virtually cyclic.

-   If φ, ψ ∈ Out (F_(n)) are independent fully irreducibles, then $[T_\pm(\varphi)], [T_\pm(\psi)]\in \overline{CV}_n$ are four distinct points, and there exists M ≥ 1 such that for every p, q ≥ M the subgroup ⟨φ^(p), ψ^(q)⟩ ≤ Out (F_(n)) is isomorphic to F₂.[15]
-   If φ ∈ Out (F_(n)) is fully irreducible and φ ∈ H ≤ Out (F_(n)), then either H is virtually cyclic or H contains a subgroup isomorphic to F₂.[16] [This statement provides a strong form of the Tits alternative for subgroups of Out (F_(n)) containing fully irreducibles.]
-   If H ≤ Out (F_(n)) is an arbitrary subgroup, then either H contains a fully irreducible element, or there exist a finite index subgroup H₀ ≤ H and a proper free factor A of F_(n) such that H₀[A] = [A].[17]
-   An element φ ∈ Out (F_(n)) acts as a loxodromic isometry on the free factor complex ℱℱ_(n) if and only if φ is fully irreducible.[18]
-   It is known that ``random" (in the sense of random walks) elements of Out (F_(n)) are fully irreducible. More precisely, if μ is a measure on Out (F_(n)) whose support generates a semigroup in Out (F_(n)) containing some two independent fully irreducibles. Then for the random walk of length k on Out (F_(n)) determined by μ, the probability that we obtain a fully irreducible element converges to 1 as k → ∞.[19]
-   A fully irreducible element φ ∈ Out (F_(n)) admits a (generally non-unique) periodic _axis_ in the volume-one normalized Outer space X_(n), which is geodesic with respect to the asymmetric Lipschitz metric on X_(n) and possesses strong ``contraction"-type properties.Yael Algom-Kfir,

_Strongly contracting geodesics in outer space_. Geometry & Topology 15 (2011), no. 4, 2181–2233. A related object, defined for an atoroidal fully irreducible φ ∈ Out (F_(n)), is the _axis bundle_ A_(φ) ⊆ X_(n), which is a certain φ-invariant closed subset proper homotopy equivalent to a line.[20]


References


Further reading

-   Thierry Coulbois and Arnaud Hilion, _Botany of irreducible automorphisms of free groups_, Pacific Journal of Mathematics 256 (2012), 291–307.
-   Karen Vogtmann, _On the geometry of outer space_. Bulletin of the American Mathematical Society 52 (2015), no. 1, 27–46.

Category:Geometric group theory Category:Geometric topology

[1] Thierry Coulbois and Arnaud Hilion, _Botany of irreducible automorphisms of free groups_, Pacific Journal of Mathematics 256 (2012), 291–307

[2]

[3] Ilya Kapovich, _Algorithmic detectability of iwip automorphisms_. Bulletin of the London Mathematical Society 46 (2014), no. 2, 279–290.

[4]

[5] Mladen Bestvina, and Michael Handel, _Train tracks and automorphisms of free groups._ Annals of Mathematics (2), vol. 135 (1992), no. 1, pp. 1–51

[6]

[7] Oleg Bogopolski. _Introduction to group theory_. EMS Textbooks in Mathematics. European Mathematical Society, Zürich, 2008.

[8] Michael Handel, and Lee Mosher, _Parageometric outer automorphisms of free groups._ Transactions of the American Mathematical Society 359 (2007), no. 7, 3153–3183

[9] Michael Handel, Lee Mosher, _The expansion factors of an outer automorphism and its inverse._ Transactions of the American Mathematical Society 359 (2007), no. 7, 3185–3208

[10]

[11] Gilbert Levitt, and Martin Lustig, _Automorphisms of free groups have asymptotically periodic dynamics._ Crelle's journal, vol. 619 (2008), pp. 1–36

[12]

[13] Caglar Uyanik, _Dynamics of hyperbolic iwips_. Conformal Geometry and Dynamics 18 (2014), 192–216.

[14] Caglar Uyanik, _Generalized north-south dynamics on the space of geodesic currents_. Geometriae Dedicata 177 (2015), 129–148.

[15]

[16] Mladen Bestvina, Mark Feighn and Michael Handel, _Laminations, trees, and irreducible automorphisms of free groups_. Geometric and Functional Analysis (GAFA) 7 (1997), 215–244.

[17] Camille Horbez, _A short proof of Handel and Mosher's alternative for subgroups of_ Out(_F__(_N_)). Groups, Geometry, and Dynamics 10 (2016), no. 2, 709–721.

[18] Mladen Bestvina, and Mark Feighn, _Hyperbolicity of the complex of free factors_. Advances in Mathematics 256 (2014), 104–155.

[19] Joseph Maher and Giulio Tiozzo, _Random walks on weakly hyperbolic groups_, Journal für die reine und angewandte Mathematik, Ahead of print (Jan 2016); c.f. Theorem 1.4

[20] Michael Handel, and Lee Mosher, _Axes in outer space._ Memoirs of the American Mathematical Society 213 (2011), no. 1004; .