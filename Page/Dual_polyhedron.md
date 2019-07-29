Polyhedron_pair_6-8.png is an octahedron. Vertices of one correspond to faces of the other, and edges correspond to each other.]]

In geometry, any polyhedron is associated with a second DUAL figure, where the vertices of one correspond to the faces of the other and the edges between pairs of vertices of one correspond to the edges between pairs of faces of the other.[1] Such dual figures remain combinatorial or abstract polyhedra, but not all are also geometric polyhedra.[2] Starting with any given polyhedron, the dual of its dual is the original polyhedron.

Duality preserves the symmetries of a polyhedron. Therefore, for many classes of polyhedra defined by their symmetries, the duals also belong to a symmetric class. Thus, the regular polyhedrathe (convex) Platonic solids and (star) Kepler–Poinsot polyhedraform dual pairs, where the regular tetrahedron is self-dual. The dual of an isogonal polyhedron, having equivalent vertices, is one which is isohedral, having equivalent faces. The dual of an isotoxal polyhedron (having equivalent edges) is also isotoxal.

Duality is closely related to _reciprocity_ or _polarity_, a geometric transformation that, when applied to a convex polyhedron, realizes the dual polyhedron as another convex polyhedron.


Kinds of duality

Ioanniskepplerih00kepl_0271_crop.jpg can be constructed by connecting the face centers. In general this creates only a topological dual.
Images from Kepler's Harmonices Mundi (1619)]]

There are many kinds of duality. The kinds most relevant to elementary polyhedra are polar reciprocity and topological or abstract duality.

Polar reciprocation

The dual of polyhedron _P_ is often defined in terms of polar reciprocation about a sphere. Here, each vertex (pole) is associated with a face plane (polar plane or just polar) so that the ray from the center to the vertex is perpendicular to the plane, and the product of the distances from the center to each is equal to the square of the radius.[3]

When the sphere has radius _r_ and is centered at the origin, i.e. defined by equation x² + y² + z² = r², and _P_ is a convex polyhedron then its polar dual is defined as

_P_^(∘) = {_y_ ∈ ℝ³ ∣ _y_ ⋅ _x_ ≤ _r_² for all _x_ ∈ _P_}
where _y_·_x_ denotes the standard dot product of _y_ and _x_. Typically when no sphere is specified in the construction of the dual, then the unit sphere is used, meaning _r_ = 1 in the above definition.[4]

For each face of _P_ described by the linear equation

_x_₀_x_ + _y_₀_y_ + _z_₀_z_ = _r_²,
the dual polyhedron _P_° will have a vertex (_x_₀,_y_₀,_z_₀). Similarly, each vertex of _P_ corresponds to a face of _P_°, and each edge of _P_ corresponds to an edge of _P_°. The correspondence between the vertices, edges and faces of _P_ and _P_° reverses inclusion. For example if an edge of _P_ contains a vertex, the corresponding edge of _P_° will be contained in the corresponding face.

For the more symmetrical polyhedra having an obvious centroid, it is common to make the polyhedron and sphere concentric, as in the Dorman Luke construction described below. However, it is possible to reciprocate a polyhedron about any sphere, and the resulting form of the dual will depend on the size and position of the sphere; as the sphere is varied, so too is the dual form. The choice of center for the sphere is sufficient to define the dual up to similarity. If multiple symmetry axes are present, they will necessarily intersect at a single point, and this is usually taken to be the centroid. Failing that, a circumscribed sphere, inscribed sphere, or midsphere (one with all edges as tangents) is commonly used.

If a polyhedron in Euclidean space has an element passing through the center of the sphere, the corresponding element of its dual will go to infinity. Since Euclidean space never reaches infinity, the projective equivalent, called extended Euclidean space, may be formed by adding the required 'plane at infinity'. Some theorists prefer to stick to Euclidean space and say that there is no dual. Meanwhile, found a way to represent these infinite duals, in a manner suitable for making models (of some finite portion!).

The concept of _duality_ here is closely related to the duality in projective geometry, where lines and edges are interchanged. Projective polarity works well enough for convex polyhedra. But for non-convex figures such as star polyhedra, when we seek to rigorously define this form of polyhedral duality in terms of projective polarity, various problems appear.[5] Because of the definitional issues for geometric duality of non-convex polyhedra, argues that any proper definition of a non-convex polyhedron should include a notion of a dual polyhedron.

Canonical duals

Dual_compound_6-8_max.png of the cuboctahedron (light) and rhombic dodecahedron (dark). Pairs of edges meet on their common intersphere.]]

Any convex polyhedron can be distorted into a canonical form, in which a unit midsphere (or intersphere) exists tangent to every edge, and such that the average position of the points of tangency is the center of the sphere. This form is unique up to congruences.

If we reciprocate such a canonical polyhedron about its midsphere, the dual polyhedron will share the same edge-tangency points and so must also be canonical. It is the canonical dual, and the two together form a canonical dual pair.[6]

Topological duality

Even when a pair of polyhedra cannot be obtained by reciprocation from each other, they may be called duals of each other as long as the vertices of one correspond to the faces of the other, and the edges of one correspond to the edges of the other, in an incidence-preserving way. Such pairs of polyhedra are still topologically or abstractly dual.

The vertices and edges of a convex polyhedron form a graph (the 1-skeleton of the polyhedron), embedded on a topological sphere, the surface of the polyhedron. The same graph can be projected to form a Schlegel diagram on a flat plane. The graph formed by the edges and vertices of the dual polyhedron is its dual graph. More generally, for any polyhedron whose faces form a closed surface, the vertices and edges of the polyhedron form a graph embedded on this surface, and the vertices and edges of the (abstract) dual polyhedron form the dual graph.

An abstract polyhedron is a certain kind of partially ordered set (poset) of elements, such that adjacencies, or connections, between elements of the set correspond to adjacencies between elements (faces, edges, etc.) of a polyhedron. Every such poset has a dual poset, formed by reversing all of the order relations. If the poset is visualized as a Hasse diagram, the dual poset may be visualized simply by turning the Hasse diagram upside down. Every geometric polyhedron corresponds to an abstract polyhedron in this way, and has an abstract dual polyhedron. However, for some types of non-convex geometric polyhedron, the dual polyhedron may not be realized geometrically.


Dorman Luke construction

For a uniform polyhedron, the face of the dual polyhedron may be found from the original polyhedron's vertex figure using the DORMAN LUKE construction.[7]

As an example, the illustration below shows the vertex figure (red) of the cuboctahedron being used to derive a face (blue) of the rhombic dodecahedron.

Image:DormanLuke.svg

Before beginning the construction, the vertex figure _ABCD_ is obtained by cutting each connected edge at (in this case) its midpoint.

Dorman Luke's construction then proceeds:

:#Draw the vertex figure _ABCD_

:#Draw the circumcircle (tangent to every corner _A_, _B_, _C_ and _D_).

:#Draw lines tangent to the circumcircle at each corner _A_, _B_, _C_, _D_.

:#Mark the points _E_, _F_, _G_, _H_, where each tangent line meets the adjacent tangent.

:#The polygon _EFGH_ is a face of the dual polyhedron.

In this example the size of the vertex figure was chosen so that its circumcircle lies on the intersphere of the cuboctahedron, which also becomes the intersphere of the dual rhombic dodecahedron.

Dorman Luke's construction can only be used where a polyhedron has such an intersphere and the vertex figure is cyclic. For instance, it can be applied to the uniform polyhedra.


Self-dual polyhedra

Topologically, a self-dual polyhedron is one whose dual has exactly the same connectivity between vertices, edges and faces. Abstractly, they have the same Hasse diagram.

A geometrically SELF-DUAL POLYHEDRON is not only topologically self-dual, but its polar reciprocal about a certain point, typically its centroid, is a similar figure. For example, the dual of a regular tetrahedron is another regular tetrahedron, reflected through the origin.

Every polygon is topologically self-dual (it has the same number of vertices as edges, and these are switched by duality), but will not in general be geometrically self-dual (up to rigid motion, for instance). Every polygon has a regular form which is geometrically self-dual about its intersphere: all angles are congruent, as are all edges, so under duality these congruences swap.

Similarly, every topologically self-dual convex polyhedron can be realized by an equivalent geometrically self-dual polyhedron, its canonical polyhedron, reciprocal about the center of the midsphere.

There are infinitely many geometrically self-dual polyhedra. The simplest infinite family are the canonical pyramids of _n_ sides. Another infinite family, elongated pyramids, consists of polyhedra that can be roughly described as a pyramid sitting on top of a prism (with the same number of sides). Adding a frustum (pyramid with the top cut off) below the prism generates another infinite family, and so on.

There are many other convex, self-dual polyhedra. For example, there are 6 different ones with 7 vertices, and 16 with 8 vertices.[8]

A self-dual non-convex icosahedron with hexagonal faces was identified by Brückner in 1900.[9][10][11] Other non-convex self-dual polyhedra have been found, under certain definitions of non-convex polyhedra and their duals.

+-----------------+--------------------+------------------------+-----------------------+
| Tetrahedron.jpg | Square_pyramid.png | Pentagonal_pyramid.png | Hexagonal_pyramid.png |
| 3               | 4                  | 5                      | 6                     |
+-----------------+--------------------+------------------------+-----------------------+

: Family of pyramids

+----------------------------------+------------------------------+----------------------------------+
| Elongated_triangular_pyramid.png | Elongated_square_pyramid.png | Elongated_pentagonal_pyramid.png |
| 3                                | 4                            | 5                                |
+----------------------------------+------------------------------+----------------------------------+

: Family of elongated pyramids

+---------------------------------------+-------------------------------------+-----------------------------------------+----------------------------------------+-----------------------------------------+
| Diminished_trigonal_trapezohedron.png | Diminished_square_trapezohedron.png | Diminished_pentagonal_trapezohedron.png | Diminished_hexagonal_trapezohedron.png | Diminished_heptagonal_trapezohedron.png |
| 3                                     | 4                                   | 5                                       | 6                                      | 7                                       |
+---------------------------------------+-------------------------------------+-----------------------------------------+----------------------------------------+-----------------------------------------+

: Family of diminished trapezohedra

Self-dual compound polyhedra

Trivially, the compound of any polyhedron and its dual is a self-dual figure.

If a polyhedron is self-dual, then the compound of the polyhedron with its dual will comprise congruent polyhedra. The regular compound of two tetrahedra, known as the Stella octangula, is the only regular compound with this property.


Dual polytopes and tessellations

Duality can be generalized to _n_-dimensional space and DUAL POLYTOPES; in two dimension these are called dual polygons.

The vertices of one polytope correspond to the (_n_ − 1)-dimensional elements, or facets, of the other, and the _j_ points that define a (_j_ − 1)-dimensional element will correspond to _j_ hyperplanes that intersect to give a (_n_ − _j_)-dimensional element. The dual of an _n_-dimensional tessellation or honeycomb can be defined similarly.

In general, the facets of a polytope's dual will be the topological duals of the polytope's vertex figures. For the polar reciprocals of the regular and uniform polytopes, the dual facets will be polar reciprocals of the original's vertex figure. For example, in four dimensions, the vertex figure of the 600-cell is the icosahedron; the dual of the 600-cell is the 120-cell, whose facets are dodecahedra, which are the dual of the icosahedron.

Self-dual polytopes and tessellations

Kah_4_4.png, {4,4}, is self-dual, as shown by these red and blue tilings]] Infinite-order_apeirogonal_tiling_and_dual.png, {∞,∞} in red, and its dual position in blue]] The primary class of self-dual polytopes are regular polytopes with palindromic Schläfli symbols. All regular polygons, {a} are self-dual, polyhedra of the form {a,a}, 4-polytopes of the form {a,b,a}, 5-polytopes of the form {a,b,b,a}, etc.

The self-dual regular polytopes are:

-   All regular polygons, {a}.
-   Regular tetrahedron: {3,3}
-   In general, all regular _n_-simplexes, {3,3,...,3}
-   The regular 24-cell in 4 dimensions, {3,4,3}.
-   The great 120-cell {5,5/2,5} and the grand stellated 120-cell {5/2,5,5/2}

The self-dual (infinite) regular Euclidean honeycombs are:

-   Apeirogon: {∞}
-   Square tiling: {4,4}
-   Cubic honeycomb: {4,3,4}
-   In general, all regular _n_-dimensional Euclidean hypercubic honeycombs: {4,3,...,3,4}.

The self-dual (infinite) regular hyperbolic honeycombs are:

-   Compact hyperbolic tilings: {5,5}, {6,6}, ... {p,p}.
-   Paracompact hyperbolic tiling: {∞,∞}
-   Compact hyperbolic honeycombs: {3,5,3}, {5,3,5}, and {5,3,3,5}
-   Paracompact hyperbolic honeycombs: {3,6,3}, {6,3,6}, {4,4,4}, and {3,3,4,3,3}


See also

-   Conway polyhedron notation
-   Dual polygon
-   Self-dual graph
-   Self-dual polygon


References

Notes

Bibliography

-   .

-   .

-   .

-   .

-   .

-   .

-   .


External links

-   -   -

Category:Polyhedra Polyhedron Self-dual_polyhedra Category:Polytopes

[1] , "Basic notions about stellation and duality", p. 1.

[2]

[3] , 3.2 Duality, pp. 78–79; , Pages 3-5. (Note, Wenninger's discussion includes nonconvex polyhedra.)

[4] , Page 143.

[5] See for example , and . also discusses some issues on the way to deriving his infinite duals.

[6] , Theorem 3.1, p. 449.

[7] , p.  117; , p. 30.

[8] 3D Java models at Symmetries of Canonical Self-Dual Polyhedra, based on paper by Gunnar Brinkmann, Brendan D. McKay, _Fast generation of planar graphs_ PDF 1

[9] Anthony M. Cutler and Egon Schulte; "Regular Polyhedra of Index Two", I; _Beiträge zur Algebra und Geometrie_ / _Contributions to Algebra and Geometry_ April 2011, Volume 52, Issue 1, pp 133–161.

[10] N. J. Bridge; "Faceting the Dodecahedron", _Acta Crystallographica_, Vol. A 30, Part 4 July 1974, Fig. 3c and accompanying text.

[11] Brückner, M.; _Velecke und Vielflache: Theorie und Geschichte_, Teubner, Leipzig, 1900.