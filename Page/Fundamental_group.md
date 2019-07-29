In the mathematical field of algebraic topology, the FUNDAMENTAL GROUP is a mathematical group associated to any given pointed topological space that provides a way to determine when two paths, starting and ending at a fixed base point, can be continuously deformed into each other. It records information about the basic shape, or holes, of the topological space. The fundamental group is the first and simplest homotopy group. The fundamental group is a topological invariant: homeomorphic topological spaces have the same fundamental group.

Fundamental groups can be studied using the theory of covering spaces, since a fundamental group coincides with the group of deck transformations of the associated universal covering space. The abelianization of the fundamental group can be identified with the first homology group of the space. When the topological space is homeomorphic to a simplicial complex, its fundamental group can be described explicitly in terms of generators and relations.

Henri Poincaré defined the fundamental group in 1895 in his paper "Analysis situs".[1] The concept emerged in the theory of Riemann surfaces, in the work of Bernhard Riemann, Poincaré, and Felix Klein. It describes the monodromy properties of complex-valued functions, as well as providing a complete topological classification of closed surfaces.


Intuition

Start with a space (e.g. a surface), and some point in it, and all the loops both starting and ending at this point — paths that start at this point, wander around and eventually return to the starting point. Two loops can be combined together in an obvious way: travel along the first loop, then along the second. Two loops are considered equivalent if one can be deformed into the other without breaking. The set of all such loops with this method of combining and this equivalence between them is the fundamental group for that particular space.


Definition

Let _X_ be a topological space, and let x₀ be a point of _X_. We are interested in the following set of continuous functions called LOOPS with BASE POINT x₀.

{_f_: [0, 1] → _X_: _f_(0) = _x_₀ = _f_(1)}

Now the FUNDAMENTAL GROUP OF X WITH BASE POINT x₀ is this set modulo homotopy _h_

{_f_: [0, 1] → _X_: _f_(0) = _x_₀ = _f_(1)}/_h_

equipped with the group multiplication defined by

$$(f * g) (t) = \begin{cases} f(2t) & 0 \leq t \leq \tfrac{1}{2} \\ g(2t-1) & \tfrac{1}{2} \leq t \leq 1 \end{cases}$$

Thus the loop f * g first follows the loop _f_ with "twice the speed" and then follows _g_ with "twice the speed." The product of two homotopy classes of loops [f] and [g] is then defined as [f * g], and it can be shown that this product does not depend on the choice of representatives.

With the above product, the set of all homotopy classes of loops with base point x₀ forms the FUNDAMENTAL GROUP of _X_ at the point x₀ and is denoted

_π_₁(_X_, _x_₀)
.

The identity element is the constant map at the basepoint, and the inverse of a loop _f_ is the loop _g_ defined by _g_(t) = _f_(1 − _t_). That is, _g_ follows _f_ backwards.

Although the fundamental group in general depends on the choice of base point, it turns out that, up to isomorphism (actually, even up to _inner_ isomorphism), this choice makes no difference as long as the space _X_ is path-connected. For path-connected spaces, therefore, we can write π₁(X) instead of π₁(X, x₀) without ambiguity whenever we care about the isomorphism class only.


Examples

Trivial fundamental group

In Euclidean space ($\R^n$) or any convex subset of $\R^n$, there is only one homotopy class of loops, and the fundamental group is therefore the trivial group with one element. More generally, any contractible space has a trivial fundamental group. A path-connected space whose fundamental group is trivial is called simply connected.

Infinite cyclic fundamental group

The circle. Each homotopy class consists of all loops which wind around the circle a given number of times (which can be positive or negative, depending on the direction of winding). The product of a loop which winds around _m_ times and another that winds around _n_ times is a loop which winds around m + n times. So the fundamental group of the circle is isomorphic to $(\Z, +)$, the additive group of integers. This fact can be used to give proofs of the Brouwer fixed point theorem and the Borsuk–Ulam theorem in dimension 2.

Since the fundamental group is a homotopy invariant, the theory of the winding number for the complex plane minus one point is the same as for the circle.

In contrast to the circle, which is the 1-sphere, for every n ≥ 2 the n-sphere is simply-connected, so it has a trivial fundamental group.

Free groups of higher rank

Unlike the homology groups and higher homotopy groups associated to a topological space, the fundamental group need not be abelian. For example, the fundamental group of the figure eight is the free group on two letters. More generally, the fundamental group of any graph is a free group. If the graph _G_ is connected, then the rank of the free group is equal to the number of edges not in a spanning tree.

The fundamental group of the plane punctured at _n_ points is also the free group with _n_ generators. The _i_-th generator is the class of the loop that goes around the _i_-th puncture without going around any other punctures.

Knot theory

A somewhat more sophisticated example of a space with a non-abelian fundamental group is the complement of a trefoil knot in $\R^3$, as known, whose fundamental group is the braid group B₃.

Lie groups

The fundamental group of a connected Lie group is always commutative.[2][3]

The fundamental group of a compact Lie group can be computed by either of two methods. The first , applicable to the compact classical groups, is inductive and relies on the long exact sequence of homotopy groups for fiber bundles. Consider, for example, the case of the special unitary group SU(n), with n ≥ 2. This group acts transitively on the unit sphere S^(2n − 1) inside ℂ^(n) = ℝ^(2n). The stabilizer of a point in the sphere is isomorphic to SU(n − 1). It then can be shown[4] that SU(n) is a fiber bundle with base S^(2n − 1) and fiber SU(n − 1). Since n ≥ 2, the sphere S^(2n − 1) has dimension at least 3. Thus, the first and second homotopy groups of the base are trivial. The long exact sequence then shows that the fundamental groups of the fiber and the total space are isomorphic: That is:

_π_₁(_S__U_(_n_)) ≅ _π_₁(_S__U_(_n_ − 1))
. Since SU(1) is the trivial group (a single point, which is simply connected), we then conclude inductively that SU(n) is simply connected for all n. A similar argument shows that SO(n) has the same fundamental group for all n ≥ 3, namely $\Z/2$.[5]

The inductive method gives the following results:

-   The special unitary groups SU(n) is simply connected for all n;
-   The special orthogonal group SO(n) has fundamental group $\Z/2$ for n ≥ 3 and fundamental group $\Z$ for n = 2;
-   The compact symplectic group Sp(n) is simply connected for all n;
-   The unitary group U(n) has fundamental group $\Z$ for all n.

The second method of computing fundamental groups applies to all connected compact Lie groups and uses the machinery of the maximal torus and the associated root system. Specifically, let T be a maximal torus in a connected compact Lie group K, and let 𝔱 be the Lie algebra of T. Let Γ ⊂ 𝔱 denote the kernel of the exponential mapping, and let I denote the set of integer linear combination of coroots. Then the fundamental group of K is isomorphic to the quotient Γ/I.[6] This method shows, for example, that any connected compact Lie group for which the associated root system is of type G₂ is simply connected.[7] Thus, there is (up to isomorphism) only one connected compact Lie group having Lie algebra of type G₂; this group is simply connected and has trivial center.

The fundamental group of noncompact Lie groups can be reduced to the compact case, since such a group is homotopic to its maximal compact subgroup.[8] Thus, for example, $\mathrm{SL}(n,\Complex)$ is simply connected because its maximal compact subgroup SU(n) is simply connected.

The fundamental group π₁(G) is the group of connected components of the associated loop group of G.


Functoriality

If f: X → Y is a continuous map, x₀ ∈ X and y₀ ∈ Y with f(x₀) = y₀, then every loop in _X_ with base point x₀ can be composed with _f_ to yield a loop in _Y_ with base point y₀. This operation is compatible with the homotopy equivalence relation and with composition of loops. The resulting group homomorphism, called the induced homomorphism, is written as π(f) or, more commonly,

_f__(*): _π_₁(_X_, _x_₀) → _π_₁(_Y_, _y_₀).

This mapping from continuous maps to group homomorphisms is compatible with composition of maps and identity morphisms. In other words, we have a functor from the category of topological spaces with base point to the category of groups.

It turns out that this functor cannot distinguish maps which are homotopic relative to the base point: if _f_, _g_ : _X_ → _Y_ are continuous maps with _f_(_x_₀) = _g_(_x_₀) = _y_₀, and _f_ and _g_ are homotopic relative to {_x_₀}, then _f__(∗) = _g__(∗). As a consequence, two homotopy equivalent path-connected spaces have isomorphic fundamental groups:

_X_ ≃ _Y_ ⇒ _π_₁(_X_, _x_₀) ≅ _π_₁(_Y_, _y_₀).

As an important special case, if _X_ is path-connected then any two basepoints give isomorphic fundamental groups, with isomorphism given by a choice of path between the given basepoints.

The fundamental group functor takes products to products and coproducts to coproducts. That is, if _X_ and _Y_ are path connected, then

_π_₁(_X_ × _Y_, (_x_₀, _y_₀)) ≅ _π_₁(_X_, _x_₀) × _π_₁(_Y_, _y_₀)

and if they are also locally contractible, then

_π_₁(_X_ ∨ _Y_) ≅ _π_₁(_X_) * _π_₁(_Y_).

(In the latter formula, ∨ denotes the wedge sum of topological spaces with base point, and * the free product of groups.) Both formulas generalize to arbitrary products. Furthermore, the latter formula is a special case of the Seifert–van Kampen theorem which states that the fundamental group functor takes pushouts along inclusions to pushouts.


Fibrations

A generalization of a product of spaces is given by a fibration,

_F_ → _E_ → _B_.

Here the total space _E_ is a sort of "twisted product" of the base space _B_ and the fiber _F_. In general the fundamental groups of _B_, _E_ and _F_ are terms in a long exact sequence involving higher homotopy groups. When all the spaces are connected, this has the following consequences for the fundamental groups:

-   π₁(_B_) and π₁(_E_) are isomorphic if _F_ is simply connected
-   π_(_n_+1)(_B_) and π_(_n_)(_F_) are isomorphic if _E_ is contractible.


Relationship to first homology group

The fundamental groups of a topological space _X_ are related to its first singular homology group, because a loop is also a singular 1-cycle. Mapping the homotopy class of each loop at a base point _x_₀ to the homology class of the loop gives a homomorphism from the fundamental group π₁(_X_, _x_₀) to the homology group _H_₁(_X_). If _X_ is path-connected, then this homomorphism is surjective and its kernel is the commutator subgroup of π₁(_X_, _x_₀), and _H_₁(_X_) is therefore isomorphic to the abelianization of π₁(_X_, _x_₀). This is a special case of the Hurewicz theorem of algebraic topology.


Universal covering space

If _X_ is a topological space that is path connected, locally path connected and locally simply connected, then it has a simply connected universal covering space on which the fundamental group π₁(_X_,_x_₀) acts freely by deck transformations with quotient space _X_. This space can be constructed analogously to the fundamental group by taking pairs (_x_, γ), where _x_ is a point in _X_ and γ is a homotopy class of paths from _x_₀ to _x_ and the action of π₁(_X_, _x_₀) is by concatenation of paths. It is uniquely determined as a covering space.

Examples

Circle

The universal cover of a circle S¹ is the line R, we have S¹ = R/Z. Thus π₁(S¹,_x_) = Z for any base point _x_.

Torus

By taking the Cartesian product of two instances of the previous example, we see that the universal cover of a 2-dimensional torus T² = S¹ × S¹ is the plane R² and we have T² = R²/Z². Thus π₁(T²,_x_) = Z² for any base point _x_.

Similarly, the fundamental group of the _n_-dimensional torus T^(n) equals Z^(_n_).

Real projective spaces

For _n_ ≥ 1 the real _n_-dimensional real projective space P^(_n_)(R) is obtained by factorizing the _n_-dimensional sphere S^(_n_) by the central symmetry: P^(_n_)(R) = S^(_n_)/Z₂. Since the _n_-sphere S^(_n_) is simply connected for _n_ ≥ 2, we conclude that it is the universal cover of the real projective space. Thus the fundamental group of P^(_n_)(R) is equal to Z₂ for any _n_ ≥ 2.

Lie groups

Let _G_ be a connected, simply connected compact Lie group, for example the special unitary group SU(_n_), and let Γ be a finite subgroup of _G_. Then the homogeneous space _X_ = _G_/Γ has fundamental group Γ, which acts by right multiplication on the universal covering space _G_. Among the many variants of this construction, one of the most important is given by locally symmetric spaces _X_ = Γ_G_/_K_, where

-   _G_ is a non-compact simply connected, connected Lie group (often semisimple),
-   _K_ is a maximal compact subgroup of _G_
-   Γ is a discrete countable torsion-free subgroup of _G_.

In this case the fundamental group is Γ and the universal covering space _G_/_K_ is actually contractible (by the Cartan decomposition for Lie groups).

As an example take _G_ = SL(2, R), _K_ = SO(2) and Γ any torsion-free congruence subgroup of the modular group SL(2, Z).

From the explicit realization, it also follows that the universal covering space of a path connected topological group _H_ is again a path connected topological group _G_. Moreover, the covering map is a continuous open homomorphism of _G_ onto _H_ with kernel Γ, a closed discrete normal subgroup of _G_:

1 → _Γ_ → _G_ → _H_ → 1.

Since _G_ is a connected group with a continuous action by conjugation on a discrete group Γ, it must act trivially, so that Γ has to be a subgroup of the center of _G_. In particular π₁(_H_) = Γ is an abelian group; this can also easily be seen directly without using covering spaces. The group _G_ is called the _universal covering group_ of _H_.

As the universal covering group suggests, there is an analogy between the fundamental group of a topological group and the center of a group; this is elaborated at Lattice of covering groups.


Edge-path group of a simplicial complex

If _X_ is a connected simplicial complex, an _edge-path_ in _X_ is defined to be a chain of vertices connected by edges in _X_. Two edge-paths are said to be _edge-equivalent_ if one can be obtained from the other by successively switching between an edge and the two opposite edges of a triangle in _X_. If _v_ is a fixed vertex in _X_, an _edge-loop_ at _v_ is an edge-path starting and ending at _v_. The EDGE-PATH GROUP _E_(_X_, _v_) is defined to be the set of edge-equivalence classes of edge-loops at _v_, with product and inverse defined by concatenation and reversal of edge-loops.

The edge-path group is naturally isomorphic to π₁(|_X_|, _v_), the fundamental group of the geometric realisation |_X_| of _X_.[9] Since it depends only on the 2-skeleton _X_² of _X_ (i.e., the vertices, edges, and triangles of _X_), the groups π₁(|_X_|,_v_) and π₁(|_X_²|, _v_) are isomorphic.

The edge-path group can be described explicitly in terms of generators and relations. If _T_ is a maximal spanning tree in the 1-skeleton of _X_, then _E_(_X_, _v_) is canonically isomorphic to the group with generators (the oriented edge-paths of _X_ not occurring in _T_) and relations (the edge-equivalences corresponding to triangles in _X_). A similar result holds if _T_ is replaced by any simply connected—in particular contractible—subcomplex of _X_. This often gives a practical way of computing fundamental groups and can be used to show that every finitely presented group arises as the fundamental group of a finite simplicial complex. It is also one of the classical methods used for topological surfaces, which are classified by their fundamental groups.

The _universal covering space_ of a finite connected simplicial complex _X_ can also be described directly as a simplicial complex using edge-paths. Its vertices are pairs (_w_,γ) where _w_ is a vertex of _X_ and γ is an edge-equivalence class of paths from _v_ to _w_. The _k_-simplices containing (_w_,γ) correspond naturally to the _k_-simplices containing _w_. Each new vertex _u_ of the _k_-simplex gives an edge _wu_ and hence, by concatenation, a new path γ_(_u_) from _v_ to _u_. The points (_w_,γ) and (_u_, γ_(_u_)) are the vertices of the "transported" simplex in the universal covering space. The edge-path group acts naturally by concatenation, preserving the simplicial structure, and the quotient space is just _X_.

It is well known that this method can also be used to compute the fundamental group of an arbitrary topological space. This was doubtless known to Eduard Čech and Jean Leray and explicitly appeared as a remark in a paper by André Weil;[10] various other authors such as Lorenzo Calabi, Wu Wen-tsün, and Nodar Berikashvili have also published proofs. In the simplest case of a compact space _X_ with a finite open covering in which all non-empty finite intersections of open sets in the covering are contractible, the fundamental group can be identified with the edge-path group of the simplicial complex corresponding to the nerve of the covering.


Realizability

-   Every group can be realized as the fundamental group of a connected CW-complex of dimension 2 (or higher). As noted above, though, only free groups can occur as fundamental groups of 1-dimensional CW-complexes (that is, graphs).
-   Every finitely presented group can be realized as the fundamental group of a compact, connected, smooth manifold of dimension 4 (or higher). But there are severe restrictions on which groups occur as fundamental groups of low-dimensional manifolds. For example, no free abelian group of rank 4 or higher can be realized as the fundamental group of a manifold of dimension 3 or less. It can be proved that every group can be realized as the fundamental group of a compact Hausdorff space if and only if there is no measurable cardinal.[11]


Related concepts

The fundamental group measures the 1-dimensional hole structure of a space. For studying "higher-dimensional holes", the homotopy groups are used. The elements of the _n_-th homotopy group of _X_ are homotopy classes of (basepoint-preserving) maps from S^(_n_) to _X_.

The set of loops at a particular base point can be studied without regarding homotopic loops as equivalent. This larger object is the loop space.

For topological groups, a different group multiplication may be assigned to the set of loops in the space, with pointwise multiplication rather than concatenation. The resulting group is the loop group.

Fundamental groupoid

It is convenient to consider a path in a space X as given by a map f : [0, r] → X where r ≥ 0; then f(0), f(r) are called the initial and final points of the path and r is also called the length of f. If also g : [0, s] → X is a path such that f(r) = g(0) then we can define a path f ∘ g : [0, r + s] → X to be f on [0, r] and t ↦ g(t − r) on [r, r + s]. This composition makes these paths in X into a category. (In texts, this definition may be found in the books by Crowell and Fox, and by R. Brown, listed below.)

There are at least two ways of taking homotopy classes of such paths relative to the end points. Crowell and Fox use a continuous change of the _length_, while in _Topology and Groupoids_ paths f : [0, r] → X, g : [0, s] → X with the same endpoints are _equivalent_ if there exist real numbers u, v ≥ 0 such that r + u = s + v and f_(u), g_(v) : [0, r + u] → X are homotopic relative to their end points, where $f_u (t) = \begin{cases} f(t), & t \in [0,r] \\ f(r), & t \in [r,r+u] \end{cases}$.

This construction yields not a group but a groupoid, the _fundamental groupoid_ of the space.

More generally, one can consider the fundamental groupoid on a set _A_ of base points, chosen according to the geometry of the situation; for example, in the case of the circle, which can be represented as the union of two connected open sets whose intersection has two components, one can choose one base point in each component. The exposition of this theory was given in the 1968, 1988 editions of the book now available as _Topology and groupoids_, which also includes related accounts of covering spaces and orbit spaces.


See also

-   Homotopy group, generalization of fundamental group
-   Groupoid

There are also similar notions of fundamental group for algebraic varieties (the étale fundamental group) and for orbifolds (the orbifold fundamental group).


Notes


References

-   Ronald Brown, _Topology and groupoids_, Booksurge (2006). available from amazon.
-   R.H. Crowell and Ralph Fox, _Introduction to Knot Theory_, Springer, (1963)
-   -   Allen Hatcher, _Algebraic Topology_, Cambridge University Press (2002)
-   Peter Hilton and Shaun Wylie, _Homology Theory_, Cambridge University Press (1967) [warning: these authors use _contrahomology_ for cohomology]
-   Richard Maunder, _Algebraic Topology_, Dover (1996)
-   Deane Montgomery and Leo Zippin, _Topological Transformation Groups_, Interscience Publishers (1955)
-   James Munkres, _Topology_, Prentice Hall (2000)
-   Joseph J. Rotman, _An Introduction to Algebraic Topology_, Springer-Verlag,
-   -   Herbert Seifert and William Threlfall, _A Textbook of Topology_ (translated from German by Wolfgang Heil), Academic Press (1980),
-   Isadore Singer and John A. Thorpe, _Lecture Notes on Elementary Geometry and Topology_, Springer-Verlag (1967)
-   Edwin Spanier, _Algebraic Topology_, Springer-Verlag (1966)
-   -   -


External links

-   Dylan G.L. Allegretti, _Simplicial Sets and van Kampen's Theorem_: A discussion of the fundamental groupoid of a topological space and the fundamental groupoid of a simplicial set
-   Animations to introduce fundamental group by Nicolas Delanoue
-   Sets of base points and fundamental groupoids: mathoverflow discussion
-   Groupoids in Mathematics

Category:Algebraic topology Category:Homotopy theory

[1]  Translated in

[2]  Exercise 13.7

[3] Proof: Given two loops α, β : [0, 1] → G in π₁(G), define the mapping A: [0, 1] × [0, 1] → G by A(s, t) = α(s) ⋅ β(t), multiplied pointwise in G. Consider the homotopy family of paths in the rectangle from (s, t) = (0, 0) to (1, 1) which starts with the horizontal-then-vertical path, moves through various diagonal paths, and ends with the vertical-then-horizontal path. Composing this family with A gives a homotopy α * β ∼ β * α, which shows the fundamental group is abelian. This proof applies to a general H-space, and related ideas lead to Heinz Hopf's computation of the cohomology of a Lie group.

[4]  Proposition 13.8

[5]  Proposition 13.10

[6]  Corollary 13.18

[7]  Example 13.45

[8]  Section 13.3

[9]

[10] André Weil, _On discrete subgroups of Lie groups_, Annals of Mathematics 72 (1960), 369-384.

[11] Adam Przezdziecki, Measurable cardinals and fundamental groups of compact spaces, Fundamenta Mathematicae 192 (2006), 87-92 1