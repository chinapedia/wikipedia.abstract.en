In metric geometry, ASYMPTOTIC DIMENSION of a metric space is a large-scale analog of Lebesgue covering dimension. The notion of asymptotic dimension was introduced my Mikhail Gromov in his 1993 monograph _Asymptotic invariants of infinite groups_[1] in the context of geometric group theory, as a quasi-isometry invariant of finitely generated groups. As shown by Guoliang Yu, finitely generated groups of finite homotopy type with finite asymptotic dimension satisfy the Novikov conjecture.[2] Asymptotic dimension has important applications in geometric analysis and index theory.


Formal definition

Let X be a metric space and n ≥ 0 be an integer. We say that asdim(X) ≤ n if for every R ≥ 1 there exists a uniformly bounded cover 𝒰 of X such that every closed R-ball in X intersects at most n + 1 subsets from 𝒰. Here 'uniformly bounded' means that sup_(U ∈ 𝒰)diam(U) < ∞.

We then define the _asymptotic dimension_ asdim(X) as the smallest integer n ≥ 0 such that asdim(X) ≤ n, if at least one such n exists, and define asdim(X) := ∞ otherwise.

Also, one says that a family (X_(i))_(i ∈ I) of metric spaces satisfies asdim(X) ≤ n _uniformly_ if for every R ≥ 1 and every i ∈ I there exists a cover 𝒰_(i) of X_(i) by sets of diameter at most D(R) < ∞ (independent of i) such that every closed R-ball in X_(i) intersects at most n + 1 subsets from 𝒰_(i).


Examples

-   If X is a metric space of bounded diameter then asdim(X) = 0.
-   asdim(ℝ) = asdim(ℤ) = 1.
-   asdim(ℝ^(n)) = n.
-   asdim(ℍ^(n)) = n.


Properties

-   If Y ⊆ X is a subspace of a metric space X, then asdim(Y) ≤ asdim(X).
-   For any metric spaces X and Y one has asdim(X × Y) ≤ asdim(X) + asdim(Y).
-   If A, B ⊆ X then asdim(A ∪ B) ≤ max {asdim(A), asdim(B)}.
-   If f : Y → X is a coarse embedding (e.g. a quasi-isometric embedding), then asdim(Y) ≤ asdim(X).
-   If X and Y are coarsely equivalent metric spaces (e.g. quasi-isometric metric spaces), then asdim(X) = asdim(Y).
-   If X is a real tree then asdim(X) ≤ 1.
-   Let f : X → Y be a Lipschitz map from a geodesic metric space X to a metric space Y . Suppose that for every r > 0 the set family {f^( − 1)(B_(r)(y))}_(y ∈ Y) satisfies the inequality asdim ≤ n uniformly. Then asdim(X) ≤ asdim(Y) + n. See[3]
-   If X is a metric space with asdim(X) < ∞ then X admits a coarse (uniform) embedding into a Hilbert space.[4]
-   If X is a metric space of bounded geometry with asdim(X) ≤ n then X admits a coarse embedding into a product of n + 1 locally finite simplicial trees.Alexander Dranishnikov, _On hypersphericity of manifolds with finite asymptotic dimension._

Transactions of the American Mathematical Society 355 (2003), no. 1, 155–167.


Asymptotic dimension in geometric group theory

Asymptotic dimension achieved particular prominence in geometric group theory after a 1998 paper of Guoliang Yu[5] , which proved that if G is a finitely generated group of finite homotopy type (that is with a classifying space of the homotopy type of a finite CW-complex) such that asdim(G) < ∞, then G satisfies the Novikov conjecture. As was subsequently shown,[6] finitely generated groups with finite asymptotic dimension are _topologically amenable_, i.e. satisfy Guoliang Yu's _Property A_ introduced in[7] and equivalent to the exactness of the reduced C*-algebra of the group.

-   If G is a word-hyperbolic group then asdim(G) < ∞.[8]
-   If G is relatively hyperbolic with respect to subgroups H₁, …, H_(k) each of which has finite asymptotic dimension then asdim(G) < ∞.[9]
-   asdim(ℤ^(n)) = n.
-   If H ≤ G, where H, G are finitely generated, then asdim(H) ≤ asdim(G).
-   For Thompson's group F we have asdim(F) = ∞ since F contains subgroups isomorphic to ℤ^(n) for arbitrarily large n.
-   If G is the fundamental group of a finite graph of groups 𝔸 with underlying graph A and finitely generated vertex groups, then[10]

_a__s__d__i__m_(_G_) ≤ 1 + max_(_v_ ∈ _V__Y_)_a__s__d__i__m_(_A__(_v_))
.

-   Mapping class groups of orientable finite type surfaces have finite asymptotic dimension.[11]
-   Let G be a connected Lie group and let Γ ≤ G be a finitely generated discrete subgroup. Then asdim(Γ) < ∞.[12]
-   It is not known if Out(F_(n)) has finite asymptotic dimension for n > 2.[13]


References


Further reading

-   Gregory Bell, and Alexander Dranishnikov, _Asymptotic dimension._ Topology and its Applications 155 (2008), no. 12, 1265–1296.
-   Sergei Buyalo, and Schroeder, _Elements of asymptotic geometry_. EMS Monographs in Mathematics. European Mathematical Society (EMS), Zürich, 2007.

Category:Metric geometry Category:Geometric group theory

[1] M. Gromov, _Asymptotic invariants of infinite groups_. Geometric group theory, Vol. 2 (Sussex, 1991), 1–295, London Math. Soc. Lecture Note Ser., 182, Cambridge Univ. Press, Cambridge, 1993;

[2]

[3] G.C. Bell, A.N. Dranishnikov, _A Hurewicz-type theorem for asymptotic dimension and applications to geometric group theory_, Transactions of the American Mathematical Society 358 (2006), no. 11, 4749–4764.

[4] John Roe, _Lectures on Coarse Geometry_, Univ. Lecture Ser., vol. 31, Amer. Math. Soc., Providence, RI, 2003. .

[5] G. Yu, _The Novikov conjecture for groups with finite asymptotic dimension_, Annals of Mathematics _147_ (1998), no. 2, 325-355.

[6] Alexander Dranishnikov, _Asymptotic topology._ Uspekhi Mat. Nauk _'55_ (2000), no. 6, 71--116; translation in Russian Mathematical Surveys 55 (2000), no. 6, 1085–1129.

[7] Guoliang Yu. _The coarse Baum-Connes conjecture for spaces which admit a uniform embedding into Hilbert space._ Inventiones Mathematicae 139 (2000), no. 1, 201–240.

[8] John Roe, _Hyperbolic groups have finite asymptotic dimension_, Proceedings of the American Mathematical Society 133 (2005), no. 9, 2489–2490

[9] Densi Osin, _Asymptotic dimension of relatively hyperbolic groups_, International Mathematics Research Notices, 2005, no. 35, 2143–2161

[10] G. Bell, and A. Dranishnikov, _On asymptotic dimension of groups acting on trees._ Geometriae Dedicata 103 (2004), 89–101.

[11] Mladen Bestvina, and Koji Fujiwara, _Bounded cohomology of subgroups of mapping class groups_, Geometry & Topology 6 (2002), 69–89.

[12] Lizhen Ji, _Asymptotic dimension and the integral K-theoretic Novikov conjecture for arithmetic groups_, Journal of Differential Geometry 68 (2004), no. 3, 535–544.

[13] Karen Vogtmann, On the geometry of Outer space, Bulletin of the American Mathematical Society 52 (2015), no. 1, 27-46; Ch. 9.1