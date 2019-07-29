Convex_polygon_illustration1.svg Convex_polygon_illustration2.svg

In geometry, a CONVEX SET or a CONVEX REGION is a subset of a Euclidean space, or more generally an affine space over the reals, that intersects every line into a line segment (possibly empty).[1][2] Equivalently, this is a subset that is closed under convex combinations.[3] For example, a solid cube is a convex set, but anything that is hollow or has an indent, for example, a crescent shape, is not convex.

The boundary of a convex set is always a convex curve. The intersection of all the convex sets that contain a given subset of Euclidean space is called the convex hull of . It is the smallest convex set containing .

A convex function is a real-valued function defined on an interval with the property that its epigraph (the set of points on or above the graph of the function) is a convex set. Convex minimization is a subfield of optimization that studies the problem of minimizing convex functions over convex sets. The branch of mathematics devoted to the study of properties of convex sets and convex functions is called convex analysis.

The notion of a convex set can be generalized as described below.


Definitions

Convex_supergraph.svg is convex if and only if its epigraph, the region (in green) above its graph (in blue), is a convex set.]] Let be a vector space or an affine space over the real numbers, or, more generally, over some ordered field. This includes Euclidean spaces, which are affine spaces. A subset of is CONVEX if, for all and in , the line segment connecting and is included in . This means that the affine combination belongs to , for all and in , and in the interval . This implies that convexity (the property of being convex) is invariant under affine transformations. This implies also that a convex set in a real or complex topological vector space is path-connected, thus connected.

A set is _strictly convex_ if every point on the line segment connecting and other than the endpoints is inside the interior of .

A set is _absolutely convex_ if it is convex and balanced.

The convex subsets of (the set of real numbers) are the intervals and the points of . Some examples of convex subsets of the Euclidean plane are solid regular polygons, solid triangles, and intersections of solid triangles. Some examples of convex subsets of a Euclidean 3-dimensional space are the Archimedean solids and the Platonic solids. The Kepler-Poinsot polyhedra are examples of non-convex sets.

Non-convex set

    ''"Concave set" redirects here.

A set that is not convex is called a _non-convex set_. A polygon that is not a convex polygon is sometimes called a concave polygon,[4] and some sources more generally use the term _concave set_ to mean a non-convex set,[5] but most authorities prohibit this usage.[6][7]

The complement of a convex set, such as the epigraph of a concave function, is sometimes called a _reverse convex set_, especially in the context of mathematical optimization.[8]


Properties

Given points in a convex set , and nonnegative numbers such that 1}}, the affine combination

$$\sum_{k=1}^r\lambda_k u_k$$
belongs to . As the definition of a convex set is the case , this property characterizes convex sets.

Such an affine combination is called a convex combination of .

Intersections and unions

The collection of convex subsets of a vector space, an affine space, or a Euclidean space has the following properties:[9][10]

1.  The empty set and the whole space are convex.
2.  The intersection of any collection of convex sets is convex.
3.  The _union_ of a sequence of convex sets is convex, if they form a non-decreasing chain for inclusion. For this property, the restriction to chains is important, as the union of two convex sets _need not_ be convex.

Closed convex sets

Closed convex sets are convex sets that contain all their limit points. They can be characterised as the intersections of _closed half-spaces_ (sets of point in space that lie on and to one side of a hyperplane).

From what has just been said, it is clear that such intersections are convex, and they will also be closed sets. To prove the converse, i.e., every convex set may be represented as such intersection, one needs the supporting hyperplane theorem in the form that for a given closed convex set and point outside it, there is a closed half-space that contains and not . The supporting hyperplane theorem is a special case of the Hahn–Banach theorem of functional analysis.

Convex sets and rectangles

Let _C_ be a convex body in the plane. We can inscribe a rectangle _r_ in _C_ such that a homothetic copy _R_ of _r_ is circumscribed about _C_. The positive homothety ratio is at most 2 and:[11]

$$\tfrac{1}{2} \cdot\text{Area}(R) \leq \text{Area}(C) \leq 2\cdot \text{Area}(r)$$


Convex hulls and Minkowski sums

Convex hulls

Every subset of the vector space is contained within a smallest convex set (called the convex hull of ), namely the intersection of all convex sets containing . The convex-hull operator Conv() has the characteristic properties of a hull operator:

    {| border="0"

|- | _extensive_ | , |- | _non-decreasing_ | implies that , and |- | _idempotent_ | Conv(_S_)}}. |} The convex-hull operation is needed for the set of convex sets to form a lattice, in which the "_join_" operation is the convex hull of the union of two convex sets

    Conv(_S_ ∪ _T_) {{=}} Conv(Conv(_S_) ∪ Conv(_T_))}}.

The intersection of any collection of convex sets is itself convex, so the convex subsets of a (real or complex) vector space form a complete lattice.

Minkowski addition

Minkowski_sum_graph_-_vector_version.svg of sets. The sum of the squares Q₁=[0,1]² and Q₂=[1,2]² is the square Q₁+Q₂=[1,3]².]]

In a real vector-space, the _Minkowski sum_ of two (non-empty) sets, and , is defined to be the set formed by the addition of vectors element-wise from the summand-sets

    {_x_₁ + _x_₂ : _x_₁ ∈ _S_₁, _x_₂ ∈ _S_₂} }}.

More generally, the _Minkowski sum_ of a finite family of (non-empty) sets is the set formed by element-wise addition of vectors

∑_(_n_)_S__(_n_) = {∑_(_n_)_x__(_n_):_x__(_n_)∈_S__(_n_)}.

For Minkowski addition, the _zero set_  containing only the zero vector  has special importance: For every non-empty subset S of a vector space

    _S_}};

in algebraic terminology, is the identity element of Minkowski addition (on the collection of non-empty sets).[12]

Convex hulls of Minkowski sums

Minkowski addition behaves well with respect to the operation of taking convex hulls, as shown by the following proposition:

Let be subsets of a real vector-space, the convex hull of their Minkowski sum is the Minkowski sum of their convex hulls

    Conv(_S_₁) + Conv(_S_₂)}}.

This result holds more generally for each finite collection of non-empty sets:

Conv(∑_(_n_)_S__(_n_)) = ∑_(_n_)Conv(_S__(_n_)).

In mathematical terminology, the operations of Minkowski summation and of forming convex hulls are commuting operations.[13][14]

Minkowski sums of convex sets

The Minkowski sum of two compact convex sets is compact. The sum of a compact convex set and a closed convex set is closed.[15]


Generalizations and extensions for convexity

The notion of convexity in the Euclidean space may be generalized by modifying the definition in some or other aspects. The common name "generalized convexity" is used, because the resulting objects retain certain properties of convex sets.

Star-convex (Star-shaped) sets

Let be a set in a real or complex vector space. is STAR CONVEX (STAR-SHAPED) if there exists an in such that the line segment from to any point in is contained in . Hence a non-empty convex set is always star-convex but a star-convex set is not always convex.

Orthogonal convexity

An example of generalized convexity is ORTHOGONAL CONVEXITY.[16]

A set in the Euclidean space is called ORTHOGONALLY CONVEX or ORTHO-CONVEX, if any segment parallel to any of the coordinate axes connecting two points of lies totally within . It is easy to prove that an intersection of any collection of orthoconvex sets is orthoconvex. Some other properties of convex sets are valid as well.

Non-Euclidean geometry

The definition of a convex set and a convex hull extends naturally to geometries which are not Euclidean by defining a geodesically convex set to be one that contains the geodesics joining any two points in the set.

Order topology

Convexity can be extended for a totally ordered set endowed with the order topology.[17]

Let . The subspace is a convex set if for each pair of points in such that , the interval {_x_ ∈ _X_ {{!}} _a_ ≤ _x_ ≤ _b_} }} is contained in . That is, is convex if and only if for all in , implies .

A convex set is NOT connected in general: a counter-example is given by the space , which is both convex and totally disconnected.

Convexity spaces

The notion of convexity may be generalised to other objects, if certain properties of convexity are selected as axioms.

Given a set , a CONVEXITY over is a collection of subsets of satisfying the following axioms:[18][19][20]

1.  The empty set and are in
2.  The intersection of any collection from is in .
3.  The union of a chain (with respect to the inclusion relation) of elements of is in .

The elements of are called convex sets and the pair is called a CONVEXITY SPACE. For the ordinary convexity, the first two axioms hold, and the third one is trivial.

For an alternative definition of abstract convexity, more suited to discrete geometry, see the _convex geometries_ associated with antimatroids.


See also

-   Brouwer fixed-point theorem
-   Complex convexity
-   Convex body
-   Convex metric space
-   Carathéodory's theorem (convex hull)
-   Choquet theory
-   Helly's theorem
-   Holomorphically convex hull
-   Pseudoconvexity
-   Radon's theorem
-   Shapley–Folkman lemma


References


External links

-   -   Lectures on Convex Sets, notes by Niels Lauritzen, at Aarhus University, March 2010.

Category:Convex geometry Category:Convex analysis

[1]

[2]

[3]

[4] .

[5]

[6]

[7]

[8] .

[9] Soltan, Valeriu, _Introduction to the Axiomatic Theory of Convexity_, Ştiinţa, Chişinău, 1984 (in Russian).

[10]

[11]

[12] The empty set is important in Minkowski addition, because the empty set annihilates every other subset: For every subset of a vector space, its sum with the empty set is empty: ∅}}.

[13] Theorem 3 (pages 562–563):

[14] For the commutativity of Minkowski addition and convexification, see Theorem 1.1.2 (pages 2–3) in Schneider; this reference discusses much of the literature on the convex hulls of Minkowski sumsets in its "Chapter 3 Minkowski addition" (pages 126–196):

[15] Lemma 5.3:

[16] Rawlins G.J.E. and Wood D, "Ortho-convexity and its generalizations", in: _Computational Morphology_, 137-152. Elsevier, 1988.

[17] Munkres, James; _Topology_, Prentice Hall; 2nd edition (December 28, 1999). .

[18]

[19]

[20]