is a 2-dimensional polytope. Some polygons of different kinds: open (excluding its boundary), bounding circuit only (ignoring its interior), closed (both), and self-intersecting with varying densities of different regions.]] In elementary geometry, a POLYTOPE is a geometric object with "flat" sides. It is a generalization in any number of dimensions of the three-dimensional polyhedron. Polytopes may exist in any general number of dimensions _n_ as an _n_-dimensional polytope or _N_-POLYTOPE. Flat sides mean that the sides of a (_k_+1)-polytope consist of _k_-polytopes that may have (_k_-1)-polytopes in common. For example, a two-dimensional polygon is a 2-polytope and a three-dimensional polyhedron is a 3-polytope.

Some theories further generalize the idea to include such objects as unbounded apeirotopes and tessellations, decompositions or tilings of curved manifolds including spherical polyhedra, and set-theoretic abstract polytopes.

Polytopes in more than three dimensions were first discovered by Ludwig Schläfli. The German term _polytop_ was coined by the mathematician Reinhold Hoppe, and was introduced to English mathematicians as polytope by Alicia Boole Stott.


Approaches to definition

The term _polytope_ is nowadays a broad term that covers a wide class of objects, and different definitions are attested in mathematical literature. Many of these definitions are not equivalent, resulting in different sets of objects being called _polytopes_. They represent different approaches to generalizing the convex polytopes to include other objects with similar properties.

The original approach broadly followed by Ludwig Schläfli, Thorold Gosset and others begins with the extension by analogy into four or more dimensions, of the idea of a polygon and polyhedron respectively in two and three dimensions.[1]

Attempts to generalise the Euler characteristic of polyhedra to higher-dimensional polytopes led to the development of topology and the treatment of a decomposition or CW-complex as analogous to a polytope.[2] In this approach, a polytope may be regarded as a tessellation or decomposition of some given manifold. An example of this approach defines a polytope as a set of points that admits a simplicial decomposition. In this definition, a polytope is the union of finitely many simplices, with the additional property that, for any two simplices that have a nonempty intersection, their intersection is a vertex, edge, or higher dimensional face of the two.[3] However this definition does not allow star polytopes with interior structures, and so is restricted to certain areas of mathematics.

The discovery of star polyhedra and other unusual constructions led to the idea of a polyhedron as a bounding surface, ignoring its interior.[4] In this light convex polytopes in _p_-space are equivalent to tilings of the (_p_−1)-sphere, while others may be tilings of other elliptic, flat or toroidal (_p_−1)-surfaces – see elliptic tiling and toroidal polyhedron. A polyhedron is understood as a surface whose faces are polygons, a 4-polytope as a hypersurface whose facets (cells) are polyhedra, and so forth.

The idea of constructing a higher polytope from those of lower dimension is also sometimes extended downwards in dimension, with an (edge) seen as a 1-polytope bounded by a point pair, and a point or vertex as a 0-polytope. This approach is used for example in the theory of abstract polytopes.

In certain fields of mathematics, the terms "polytope" and "polyhedron" are used in a different sense: a _polyhedron_ is the generic object in any dimension (referred to as _polytope_ in this Wikipedia article) and _polytope_ means a bounded polyhedron.[5] This terminology is typically confined to polytopes and polyhedra that are convex. With this terminology, a convex polyhedron is the intersection of a finite number of halfspaces and is defined by its sides while a convex polytope is the convex hull of a finite number of points and is defined by its vertices.

Polytopes in lower numbers of dimensions have standard names:

+-------------+----------------+
| Dimension   | Description[6] |
| of polytope |                |
+=============+================+
| −1          | Nullitope      |
+-------------+----------------+
| 0           | Monon          |
+-------------+----------------+
| 1           | Dion           |
+-------------+----------------+
| 2           | Polygon        |
+-------------+----------------+
| 3           | Polyhedron     |
+-------------+----------------+
| 4           | Polychoron     |
+-------------+----------------+


Elements

A polytope comprises elements of different dimensionality such as vertices, edges, faces, cells and so on. Terminology for these is not fully consistent across different authors. For example, some authors use _face_ to refer to an (_n_ − 1)-dimensional element while others use _face_ to denote a 2-face specifically. Authors may use _j_-face or _j_-facet to indicate an element of _j_ dimensions. Some use _edge_ to refer to a ridge, while H. S. M. Coxeter uses _cell_ to denote an (_n_ − 1)-dimensional element.[7]

The terms adopted in this article are given in the table below:

+------------+-----------------------------------------------------------+
| Dimension  | Term                                                      |
| of element | (in an _n_-polytope)                                      |
+============+===========================================================+
| −1         | Nullity (necessary in abstract theory)[8]                 |
+------------+-----------------------------------------------------------+
| 0          | Vertex                                                    |
+------------+-----------------------------------------------------------+
| 1          | Edge                                                      |
+------------+-----------------------------------------------------------+
| 2          | Face                                                      |
+------------+-----------------------------------------------------------+
| 3          | Cell                                                      |
+------------+-----------------------------------------------------------+
| ⋮          |  ⋮                                                        |
+------------+-----------------------------------------------------------+
| _j_        | _j_-face – element of rank _j_ = −1, 0, 1, 2, 3, ..., _n_ |
+------------+-----------------------------------------------------------+
| ⋮          |  ⋮                                                        |
+------------+-----------------------------------------------------------+
| _n_ − 3    | Peak – (_n_ − 3)-face                                     |
+------------+-----------------------------------------------------------+
| _n_ − 2    | Ridge or subfacet – (_n_ − 2)-face                        |
+------------+-----------------------------------------------------------+
| _n_ − 1    | Facet – (_n_ − 1)-face                                    |
+------------+-----------------------------------------------------------+
| _n_        | The polytope itself                                       |
+------------+-----------------------------------------------------------+

An _n_-dimensional polytope is bounded by a number of (_n_ − 1)-dimensional _facets_. These facets are themselves polytopes, whose facets are (_n_ − 2)-dimensional _ridges_ of the original polytope. Every ridge arises as the intersection of two facets (but the intersection of two facets need not be a ridge). Ridges are once again polytopes whose facets give rise to (_n_ − 3)-dimensional boundaries of the original polytope, and so on. These bounding sub-polytopes may be referred to as faces, or specifically _j_-dimensional faces or _j_-faces. A 0-dimensional face is called a _vertex_, and consists of a single point. A 1-dimensional face is called an _edge_, and consists of a line segment. A 2-dimensional face consists of a polygon, and a 3-dimensional face, sometimes called a _cell_, consists of a polyhedron.


Important classes of polytope

Convex polytopes

A polytope may be _convex_. The convex polytopes are the simplest kind of polytopes, and form the basis for several different generalizations of the concept of polytopes. A convex polytope is sometimes defined as the intersection of a set of half-spaces. This definition allows a polytope to be neither bounded nor finite. Polytopes are defined in this way, e.g., in linear programming. A polytope is _bounded_ if there is a ball of finite radius that contains it. A polytope is said to be _pointed_ if it contains at least one vertex. Every bounded nonempty polytope is pointed. An example of a non-pointed polytope is the set {(x, y) ∈ ℝ² ∣ x ≥ 0}. A polytope is _finite_ if it is defined in terms of a finite number of objects, e.g., as an intersection of a finite number of half-planes.

A certain class of convex polytopes are _reflexive_ polytopes. An integral d-polytope 𝒫 is reflexive if for some integral matrix A, 𝒫 = {X ∈ ℝ^(d) : AX ≤ 1}, where 1 denotes a vector of all ones, and the inequality is component-wise. It follows from this definition that 𝒫 is reflexive if and only if (t + 1)𝒫^(∘) ∩ ℤ^(d) = t𝒫 ∩ ℤ^(d) for all t ∈ ℤ_( ≥ 0). In other words, a (t + 1)-dilate of 𝒫 differs, in terms of integer lattice points, from a t-dilate of 𝒫 only by lattice points gained on the boundary. Equivalently, 𝒫 is reflexive if and only if its dual polytope 𝒫^(*) is an integral polytope.[9]

Regular polytopes

A REGULAR POLYTOPE is the most highly symmetrical kind, with the various groups of elements being transitive on the symmetries of the polytope, such that the polytope is said to be transitive on its flags. Thus, the dual of a regular polytope is also regular.

There are three main classes of regular polytope which occur in any number _n_ of dimensions:

-   Simplices, including the equilateral triangle and the regular tetrahedron.
-   Hypercubes or measure polytopes, including the square and the cube.
-   Orthoplexes or cross polytopes, including the square and regular octahedron.

Dimensions two, three and four include regular figures which have fivefold symmetries and some of which are non-convex stars, and in two dimensions there are infinitely many regular polygons of _n_-fold symmetry, both convex and (for _n_ ≥ 5) star. But in higher dimensions there are no other regular polytopes.[10]

In three dimensions the convex Platonic solids include the fivefold-symmetric dodecahedron and icosahedron, and there are also four star Kepler-Poinsot polyhedra with fivefold symmetry, bringing the total to nine regular polyhedra.

In four dimensions the regular 4-polytopes include one additional convex solid with fourfold symmetry and two with fivefold symmetry. There are ten star Schläfli-Hess 4-polytopes, all with fivefold symmetry, giving in all sixteen regular 4-polytopes.

Star polytopes

A non-convex polytope may be self-intersecting; this class of polytopes include the star polytopes. Some regular polytopes are stars.[11]


Generalisations of a polytope

Infinite polytopes

Not all manifolds are finite. Where a polytope is understood as a tiling or decomposition of a manifold, this idea may be extended to infinite manifolds. plane tilings, space-filling (honeycombs) and hyperbolic tilings are in this sense polytopes, and are sometimes called apeirotopes because they have infinitely many cells.

Among these, there are regular forms including the regular skew polyhedra and the infinite series of tilings represented by the regular apeirogon, square tiling, cubic honeycomb, and so on.

Abstract polytopes

The theory of abstract polytopes attempts to detach polytopes from the space containing them, considering their purely combinatorial properties. This allows the definition of the term to be extended to include objects for which it is difficult to define an intuitive underlying space, such as the 11-cell.

An abstract polytope is a partially ordered set of elements or members, which obeys certain rules. It is a purely algebraic structure, and the theory was developed in order to avoid some of the issues which make it difficult to reconcile the various geometric classes within a consistent mathematical framework. A geometric polytope is said to be a realization in some real space of the associated abstract polytope.[12]

Complex polytopes

Structures analogous to polytopes exist in complex Hilbert spaces $\Complex^n$ where _n_ real dimensions are accompanied by _n_ imaginary ones. Regular complex polytopes are more appropriately treated as configurations.[13]


Duality

Every _n_-polytope has a dual structure, obtained by interchanging its vertices for facets, edges for ridges, and so on generally interchanging its (_j_−1)-dimensional elements for (_n_−_j_)-dimensional elements (for _j_ = 1 to _n_−1), while retaining the connectivity or incidence between elements.

For an abstract polytope, this simply reverses the ordering of the set. This reversal is seen in the Schläfli symbols for regular polytopes, where the symbol for the dual polytope is simply the reverse of the original. For example, {4, 3, 3} is dual to {3, 3, 4}.

In the case of a geometric polytope, some geometric rule for dualising is necessary, see for example the rules described for dual polyhedra. Depending on circumstance, the dual figure may or may not be another geometric polytope.[14]

If the dual is reversed, then the original polytope is recovered. Thus, polytopes exist in dual pairs.

Self-dual polytopes

(4-simplex) is self-dual with 5 vertices and 5 tetrahedral cells.]] If a polytope has the same number of vertices as facets, of edges as ridges, and so forth, and the same connectivities, then the dual figure will be similar to the original and the polytope is self-dual.

Some common self-dual polytopes include:

-   Every regular _n_-simplex, in any number of dimensions, with Schlafli symbol {3^(_n_)}. These include the equilateral triangle {3}, regular tetrahedron {3,3}, and 5-cell {3,3,3}.
-   Every hypercubic honeycomb, in any number of dimensions. These include the apeirogon {∞}, square tiling {4,4} and cubic honeycomb {4,3,4}.
-   Numerous compact, paracompact and noncompact hyperbolic tilings, such as the icosahedral honeycomb {3,5,3}, and order-5 pentagonal tiling {5,5}.
-   In 2 dimensions, all regular polygons (regular 2-polytopes)
-   In 3 dimensions, the canonical polygonal pyramids and elongated pyramids, and tetrahedrally diminished dodecahedron.
-   In 4 dimensions, the 24-cell, with Schlafli symbol {3,4,3}. Also the great 120-cell {5,5/2,5} and grand stellated 120-cell {5/2,5,5/2}.


History

Polygons and polyhedra have been known since ancient times.

An early hint of higher dimensions came in 1827 when August Ferdinand Möbius discovered that two mirror-image solids can be superimposed by rotating one of them through a fourth mathematical dimension. By the 1850s, a handful of other mathematicians such as Arthur Cayley and Hermann Grassmann had also considered higher dimensions.

Ludwig Schläfli was the first to consider analogues of polygons and polyhedra in these higher spaces. He described the six convex regular 4-polytopes in 1852 but his work was not published until 1901, six years after his death. By 1854, Bernhard Riemann's _Habilitationsschrift_ had firmly established the geometry of higher dimensions, and thus the concept of _n_-dimensional polytopes was made acceptable. Schläfli's polytopes were rediscovered many times in the following decades, even during his lifetime.

In 1882 Reinhold Hoppe, writing in German, coined the word _polytop_ to refer to this more general concept of polygons and polyhedra. In due course Alicia Boole Stott, daughter of logician George Boole, introduced the anglicised _polytope_ into the English language.[15]

In 1895, Thorold Gosset not only rediscovered Schläfli's regular polytopes but also investigated the ideas of semiregular polytopes and space-filling tessellations in higher dimensions. Polytopes also began to be studied in non-Euclidean spaces such as hyperbolic space.

An important milestone was reached in 1948 with H. S. M. Coxeter's book _Regular Polytopes_, summarizing work to date and adding new findings of his own.

Meanwhile, the French mathematician Henri Poincaré had developed the topological idea of a polytope as the piecewise decomposition (e.g. CW-complex) of a manifold. Branko Grünbaum published his influential work on _Convex Polytopes_ in 1967.

In 1952 Geoffrey Colin Shephard generalised the idea as complex polytopes in complex space, where each real dimension has an imaginary one associated with it. Coxeter developed the theory further.

The conceptual issues raised by complex polytopes, non-convexity, duality and other phenomena led Grünbaum and others to the more general study of abstract combinatorial properties relating vertices, edges, faces and so on. A related idea was that of incidence complexes, which studied the incidence or connection of the various elements with one another. These developments led eventually to the theory of abstract polytopes as partially ordered sets, or posets, of such elements. Peter McMullen and Egon Schulte published their book _Abstract Regular Polytopes_ in 2002.

Enumerating the uniform polytopes, convex and nonconvex, in four or more dimensions remains an outstanding problem.

In modern times, polytopes and related concepts have found many important applications in fields as diverse as computer graphics, optimization, search engines, cosmology, quantum mechanics and numerous other fields. In 2013 the amplituhedron was discovered as a simplifying construct in certain calculations of theoretical physics.


Applications

In the field of optimization, linear programming studies the maxima and minima of linear functions; these maxima and minima occur on the boundary of an _n_-dimensional polytope. In linear programming, polytopes occur in the use of generalized barycentric coordinates and slack variables.

In twistor theory, a branch of theoretical physics, a polytope called the amplituhedron is used in to calculate the scattering amplitudes of subatomic particles when they collide. The construct is purely theoretical with no known physical manifestation, but is said to greatly simplify certain calculations.[16]


See also

-   List of regular polytopes
-   Bounding volume-Discrete oriented polytope
-   Intersection of a polyhedron with a line
-   Extension of a polyhedron
-   Polytope de Montréal
-   Honeycomb (geometry)
-   Opetope


References

NOTES SOURCES

-   .

-   .

-   .


External links

-   -   "Math will rock your world" – application of polytopes to a database of articles used to support custom news feeds via the Internet – (_Business Week Online_)
-   Regular and semi-regular convex polytopes a short historical overview:

Polytopes Category:Real algebraic geometry

[1] Coxeter (1973)

[2] Richeson, S.; _Euler's Gem: The Polyhedron Formula and the Birth of Topology_, Princeton University, 2008.

[3] Grünbaum (2003)

[4] Cromwell, P.; _Polyhedra_, CUP (ppbk 1999) pp 205 ff.

[5] Nemhauser and Wolsey, "Integer and Combinatorial Optimization," 1999, , Definition 2.2.

[6] Johnson, Norman W.; _Geometries and Transformations_, Cambridge University Press, 2018, p.224.

[7] Regular polytopes, p. 127 _The part of the polytope that lies in one of the hyperplanes is called a cell_

[8] Johnson, Norman W.; _Geometries and Transformations_, Cambridge University Press, 2018, p.224.

[9] Beck, Matthias; Robins, Sinai (2007), Computing the Continuous Discretely, Integer-point enumeration in polyhedra, Undergraduate Texts in Mathematics, New York: Springer-Verlag, , MR 2271992

[10]

[11]

[12]

[13] Coxeter, H.S.M.; _Regular Complex Polytopes_, 1974

[14] Wenninger, M.; _Dual Models_, CUP (1983).

[15]

[16]