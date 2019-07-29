In mathematics, in general topology, COMPACTIFICATION is the process or result of making a topological space into a compact space.[1] A compact space is a space in which every open cover of the space contains a finite subcover. The methods of compactification are various, but each is a way of controlling points from "going off to infinity" by in some way adding "points at infinity" or preventing such an "escape".


An example

Consider the real line with its ordinary topology. This space is not compact; in a sense, points can go off to infinity to the left or to the right. It is possible to turn the real line into a compact space by adding a single "point at infinity" which we will denote by ∞. The resulting compactification can be thought of as a circle (which is compact as a closed and bounded subset of the Euclidean plane). Every sequence that ran off to infinity in the real line will then converge to ∞ in this compactification.

Intuitively, the process can be pictured as follows: first shrink the real line to the open interval (-π,π) on the _x_-axis; then bend the ends of this interval upwards (in positive _y_-direction) and move them towards each other, until you get a circle with one point (the topmost one) missing. This point is our new point ∞ "at infinity"; adding it in completes the compact circle.

A bit more formally: we represent a point on the unit circle by its angle, in radians, going from -π to π for simplicity. Identify each such point θ on the circle with the corresponding point on the real line tan(θ/2). This function is undefined at the point π, since tan(π/2) is undefined; we will identify this point with our point ∞.

Since tangents and inverse tangents are both continuous, our identification function is a homeomorphism between the real line and the unit circle without ∞. What we have constructed is called the _Alexandroff one-point compactification_ of the real line, discussed in more generality below. It is also possible to compactify the real line by adding _two_ points, +∞ and -∞; this results in the extended real line.


Definition

An embedding of a topological space _X_ as a dense subset of a compact space is called a COMPACTIFICATION of _X_. It is often useful to embed topological spaces in compact spaces, because of the special properties compact spaces have.

Embeddings into compact Hausdorff spaces may be of particular interest. Since every compact Hausdorff space is a Tychonoff space, and every subspace of a Tychonoff space is Tychonoff, we conclude that any space possessing a Hausdorff compactification must be a Tychonoff space. In fact, the converse is also true; being a Tychonoff space is both necessary and sufficient for possessing a Hausdorff compactification.

The fact that large and interesting classes of non-compact spaces do in fact have compactifications of particular sorts makes compactification a common technique in topology.

Alexandroff one-point compactification

For any topological space _X_ the (ALEXANDROFF) ONE-POINT COMPACTIFICATION α_X_ of _X_ is obtained by adding one extra point ∞ (often called a _point at infinity_) and defining the open sets of the new space to be the open sets of _X_ together with the sets of the form _G_ ∪ {∞}, where _G_ is an open subset of _X_ such that _X_ \ _G_ is compact. The one-point compactification of _X_ is Hausdorff if and only if _X_ is Hausdorff and locally compact.[2]

Stone–Čech compactification

Of particular interest are Hausdorff compactifications, i.e., compactifications in which the compact space is Hausdorff. A topological space has a Hausdorff compactification if and only if it is Tychonoff. In this case, there is a unique (up to homeomorphism) "most general" Hausdorff compactification, the Stone–Čech compactification of _X_, denoted by β_X_; formally, this exhibits the category of Compact Hausdorff spaces and continuous maps as a reflective subcategory of the category of Tychonoff spaces and continuous maps.

"Most general" or formally "reflective" means that the space β_X_ is characterized by the universal property that any continuous function from _X_ to a compact Hausdorff space _K_ can be extended to a continuous function from β_X_ to _K_ in a unique way. More explicitly, β_X_ is a compact Hausdorff space containing _X_ such that the induced topology on _X_ by β_X_ is the same as the given topology on _X_, and for any continuous map _f_:_X_ → _K_, where _K_ is a compact Hausdorff space, there is a unique continuous map _g_:β_X_ → _K_ for which _g_ restricted to _X_ is identically _f_.

The Stone–Čech compactification can be constructed explicitly as follows: let _C_ be the set of continuous functions from _X_ to the closed interval [0,1]. Then each point in _X_ can be identified with an evaluation function on _C_. Thus _X_ can be identified with a subset of [0,1]^(_C_), the space of _all_ functions from _C_ to [0,1]. Since the latter is compact by Tychonoff's theorem, the closure of _X_ as a subset of that space will also be compact. This is the Stone–Čech compactification.[3] [4]


Projective space

Real projective space RP^(_n_) is a compactification of Euclidean space R^(_n_). For each possible "direction" in which points in R^(_n_) can "escape", one new point at infinity is added (but each direction is identified with its opposite). The Alexandroff one-point compactification of R we constructed in the example above is in fact homeomorphic to RP¹. Note however that the projective plane RP² is _not_ the one-point compactification of the plane R² since more than one point is added.

Complex projective space CP^(_n_) is also a compactification of C^(_n_); the Alexandroff one-point compactification of the plane C is (homeomorphic to) the complex projective line CP¹, which in turn can be identified with a sphere, the Riemann sphere.

Passing to projective space is a common tool in algebraic geometry because the added points at infinity lead to simpler formulations of many theorems. For example, any two different lines in RP² intersect in precisely one point, a statement that is not true in R². More generally, Bézout's theorem, which is fundamental in intersection theory, holds in projective space but not affine space. This distinct behavior of intersections in affine space and projective space is reflected in algebraic topology in the cohomology rings – the cohomology of affine space is trivial, while the cohomology of projective space is non-trivial and reflects the key features of intersection theory (dimension and degree of a subvariety, with intersection being Poincaré dual to the cup product).

Compactification of moduli spaces generally require allowing certain degeneracies – for example, allowing certain singularities or reducible varieties. This is notably used in the Deligne–Mumford compactification of the moduli space of algebraic curves.


Compactification and discrete subgroups of Lie groups

In the study of discrete subgroups of Lie groups, the quotient space of cosets is often a candidate for more subtle COMPACTIFICATION to preserve structure at a richer level than just topological.

For example, modular curves are compactified by the addition of single points for each cusp, making them Riemann surfaces (and so, since they are compact, algebraic curves). Here the cusps are there for a good reason: the curves parametrize a space of lattices, and those lattices can degenerate ('go off to infinity'), often in a number of ways (taking into account some auxiliary structure of _level_). The cusps stand in for those different 'directions to infinity'.

That is all for lattices in the plane. In _n_-dimensional Euclidean space the same questions can be posed, for example about SO(n)\SL_(_n_)(R)/SL_(_n_)(Z). This is harder to compactify. There are a variety of compactifications, such as the Borel-Serre compactification, the reductive Borel-Serre compactification, and the Satake compactifications, that can be formed.


Other compactification theories

-   The theories of ends of a space and prime ends.
-   Some 'boundary' theories such as the collaring of an open manifold, Martin boundary, Shilov boundary and Furstenberg boundary.
-   The Bohr compactification of a topological group arises from the consideration of almost periodic functions.
-   The projective line over a ring for a topological ring may compactify it.
-   The Baily-Borel compactification of a quotient of a Hermitian symmetric space.
-   The wonderful compactification of a quotient of algebraic groups.
-   The compactifications that are simultaneously convex subsets in a locally convex space are called convex compactifications, their additional linear structure allowing e.g. for developing a differential calculus and more advanced considerations e.g. in relaxation in variational calculus or optimization theory.[5]


References

Compactification

[1]

[2]

[3]

[4]

[5]