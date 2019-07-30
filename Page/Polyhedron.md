+---------------------------------------+---------------------------------------------------+
| Regular tetrahedron Platonic solid    | Small stellated dodecahedron Kepler-Poinsot solid |
+---------------------------------------+---------------------------------------------------+
| Icosidodecahedron Archimedean solid   | Great cubicuboctahedron Uniform star-polyhedron   |
+---------------------------------------+---------------------------------------------------+
| Rhombic triacontahedron Catalan solid | A toroidal polyhedron                             |
+---------------------------------------+---------------------------------------------------+

: style="font-size:120%" | Examples of polyhedra

In geometry, a POLYHEDRON (plural POLYHEDRA or POLYHEDRONS) is a solid in three dimensions with flat polygonal faces, straight edges and sharp corners or vertices. The word polyhedron comes from the Classical Greek πολύεδρον, as _poly-_ (stem of πολύς, "many") + _-hedron_ (form of ἕδρα, "base" or "seat").

A convex polyhedron is the convex hull of finitely many points, not all on the same plane. Cubes and pyramids are examples of convex polyhedra.

A polyhedron is a 3-dimensional example of the more general polytope in any number of dimensions.


Definition

) drawn by Leonardo da Vinci to illustrate a book by Luca Pacioli]] Convex polyhedra are well-defined, with several equivalent standard definitions. However, the formal mathematical definition of polyhedra that are not required to be convex has been problematic. Many definitions of "polyhedron" have been given within particular contexts,[1] some more rigorous than others, and there is not universal agreement over which of these to choose. Some of these definitions exclude shapes that have often been counted as polyhedra (such as the self-crossing polyhedra) or include shapes that are often not considered as valid polyhedra (such as solids whose boundaries are not manifolds). As Branko Grünbaum observed, Nevertheless, there is general agreement that a polyhedron is a solid or surface that can be described by its vertices (corner points), edges (line segments connecting certain pairs of vertices), faces (two-dimensional polygons), and sometimes by its three-dimensional interior volume. One can distinguish among these different definitions according to whether they describe the polyhedron as a solid, whether they describe it as a surface, or whether they describe it more abstractly based on its incidence geometry.

-   A common and somewhat naive definition of a polyhedron is that it is a solid whose boundary can be covered by finitely many planes[2][3] or that it is a solid formed as the union of finitely many convex polyhedra.[4] Natural refinements of this definition require the solid to be bounded, to have a connected interior, and possibly also to have a connected boundary. The faces of such a polyhedron can be defined as the connected components of the parts of the boundary within each of the planes that cover it, and the edges and vertices as the line segments and points where the faces meet. However, the polyhedra defined in this way do not include the self-crossing star polyhedra, their faces may not form simple polygons, and some edges may belong to more than two faces.[5]
-   Definitions based on the idea of a bounding surface rather than a solid are also common.[6] For instance, defines a polyhedron as a union of convex polygons (its faces), arranged in space so that the intersection of any two polygons is a shared vertex or edge or the empty set and so that their union is a manifold.[7] If a planar part of such a surface is not itself a convex polygon, O'Rourke requires it to be subdivided into smaller convex polygons, with flat dihedral angles between them. Somewhat more generally, Grünbaum defines an _acoptic polyhedron_ to be a collection of simple polygons that form an embedded manifold, with each vertex incident to at least three edges and each two faces intersecting only in shared vertices and edges of each.[8] Cromwell gives a similar definition but without the restriction of three edges per vertex. Again, this type of definition does not encompass the self-crossing polyhedra.[9] Similar notions form the basis of topological definitions of polyhedra, as subdivisions of a topological manifold into topological disks (the faces) whose pairwise intersections are required to be points (vertices), topological arcs (edges), or the empty set. However, there exist topological polyhedra (even with all faces triangles) that cannot be realized as acoptic polyhedra.[10]
-   One modern approach is based on the theory of abstract polyhedra. These can be defined as partially ordered sets whose elements are the vertices, edges, and faces of a polyhedron. A vertex or edge element is less than an edge or face element (in this partial order) when the vertex or edge is part of the edge or face. Additionally, one may include a special bottom element of this partial order (representing the empty set) and a top element representing the whole polyhedron. If the sections of the partial order between elements three levels apart (that is, between each face and the bottom element, and between the top element and each vertex) have the same structure as the abstract representation of a polygon, then these partially ordered sets carry exactly the same information as a topological polyhedron. However, these requirements are often relaxed, to instead require only that sections between elements two levels apart have the same structure as the abstract representation of a line segment.[11] (This means that each edge contains two vertices and belongs to two faces, and that each vertex on a face belongs to two edges of that face.) Geometric polyhedra, defined in other ways, can be described abstractly in this way, but it is also possible to use abstract polyhedra as the basis of a definition of geometric polyhedra. A _realization_ of an abstract polyhedron is generally taken to be a mapping from the vertices of the abstract polyhedron to geometric points, such that the points of each face are coplanar. A geometric polyhedron can then be defined as a realization of an abstract polyhedron.[12] Realizations that forgo the requirement of planarity, that impose additional requirements of symmetry, or that map the vertices to higher dimensional spaces have also been considered.[13] Unlike the solid-based and surface-based definitions, this works perfectly well for star polyhedra. However, without additional restrictions, this definition allows degenerate or unfaithful polyhedra (for instance, by mapping all vertices to a single point) and the question of how to constrain realizations to avoid these degeneracies has not been settled.

In all of these definitions, a polyhedron is typically understood as a three-dimensional example of the more general polytope in any number of dimensions. For example, a polygon has a two-dimensional body and no faces, while a 4-polytope has a four-dimensional body and an additional set of three-dimensional "cells". However, some of the literature on higher-dimensional geometry uses the term "polyhedron" to mean something else: not a three-dimensional polytope, but a shape that is different from a polytope in some way. For instance, some sources define a convex polyhedron to be the intersection of finitely many half-spaces, and a polytope to be a bounded polyhedron.[14][15] The remainder of this article considers only three-dimensional polyhedra.


Characteristics

Number of faces

Polyhedra may be classified and are often named according to the number of faces. The naming system is based on Classical Greek, for example tetrahedron (4), pentahedron (5), hexahedron (6), triacontahedron (30), and so on.

For a complete list of the Greek numeral prefixes see Numeral prefixes>Table of number prefixes in English>Greek>Quantitative

Topological characteristics

The topological class of a polyhedron is defined by its Euler characteristic and orientability.

From this perspective, any polyhedral surface may be classed as certain kind of topological manifold. For example, the surface of a convex or indeed any simply connected polyhedron is a topological sphere.

Euler characteristic

The Euler characteristic χ relates the number of vertices _V_, edges _E_, and faces _F_ of a polyhedron:

$$\chi=V-E+F.\$$

This is equal to the topological Euler characteristic of its surface. For a convex polyhedron, or more generally any simply connected polyhedron with surface a topological sphere, χ = 2.[16] For more complicated shapes, the Euler characteristic relates to the number of toroidal holes, handles or cross-caps in the surface and will be less than 2.[17]

Orientability

with quadrilateral faces]] Some polyhedra have two distinct sides to their surface. For example, the inside and outside of a convex polyhedron paper model can each be given a different colour (although the inside colour will be hidden from view). These polyhedra are orientable. The same is true for non-convex polyhedra without self-crossings. Some non-convex self-crossing polyhedra can be coloured in the same way but have regions turned "inside out" so that both colours appear on the outside in different places; these are still considered to be orientable.

But for some other self-crossing polyhedra with simple-polygon faces, such as the tetrahemihexahedron, it is not possible to colour the two sides of each face with two different colours so that adjacent faces have consistent colours. In this case the polyhedron is said to be one-sided or non-orientable. For polyhedra with self-crossing faces, it may not be clear what it means for adjacent faces to be consistently coloured, but for these polyhedra it is still possible to determine whether it is orientable or non-orientable by considering a topological cell complex with the same incidences between its vertices, edges, and faces.

All polyhedra with odd-numbered Euler characteristic χ are non-orientable. A given figure with even χ < 2 may or may not be orientable. For example, the one-holed toroid and the Klein bottle both have χ = 0, with the first being orientable and the other not.

Duality

For every convex polyhedron, there exists a dual polyhedron having

-   faces in place of the original's vertices and vice versa, and
-   the same number of edges.

The dual of a convex polyhedron can be obtained by the process of polar reciprocation.[18] Dual polyhedra exist in pairs, and the dual of a dual is just the original polyhedron again. Some polyhedra are self-dual, meaning that the dual of the polyhedron is congruent to the original polyhedron.[19]

Abstract polyhedra also have duals, which satisfy in addition that they have the same Euler characteristic and orientability as the initial polyhedron. However, this form of duality does not describe the shape of a dual polyhedron, but only its combinatorial structure. For some definitions of non-convex geometric polyhedra, there exist polyhedra whose abstract duals cannot be realized as geometric polyhedra under the same definition.

Vertex figures

For every vertex one can define a vertex figure, which describes the local structure of the polyhedron around the vertex. Precise definitions vary, but a vertex figure can be thought of as the polygon exposed where a slice through the polyhedron cuts off a corner.[20] If the vertex figure is a regular polygon, then the vertex itself is said to be regular.

Volume

Polyhedral solids have an associated quantity called volume that measures how much space they occupy. Simple families of solids may have simple formulas for their volumes; for example, the volumes of pyramids, prisms, and parallelepipeds can easily be expressed in terms of their edge lengths or other coordinates. (See Volume § Volume formulas for a list that includes many of these formulas.)

Volumes of more complicated polyhedra may not have simple formulas. Volumes of such polyhedra may be computed by subdividing the polyhedron into smaller pieces (for example, by triangulation). For example, the volume of a regular polyhedron can be computed by dividing it into congruent pyramids, with each pyramid having a face of the polyhedron as its base and the centre of the polyhedron as its apex.

In general, it can be derived from the divergence theorem that the volume of a polyhedral solid is given by $\frac{1}{3} \left| \sum_F (Q_F \cdot N_F) \operatorname{area}(F) \right|,$ where the sum is over faces of the polyhedron, is an arbitrary point on face , is the unit vector perpendicular to pointing outside the solid, and the multiplication dot is the dot product.[21] Since it may be difficult to enumerate the faces, volume computation may be challenging, and hence there exist specialized algorithms to determine the volume (many of these generalize to convex polytopes in higher dimensions).[22]

Dehn invariant

In two dimensions, the Bolyai–Gerwien theorem asserts that any polygon may be transformed into any other polygon of the same area by cutting it up into finitely many polygonal pieces and rearranging them. The analogous question for polyhedra was the subject of Hilbert's third problem. Max Dehn solved this problem by showing that, unlike in the 2-D case, there exist polyhedra of the same volume that cannot be cut into smaller polyhedra and reassembled into each other. To prove this Dehn discovered another value associated with a polyhedron, the Dehn invariant, such that two polyhedra can only be dissected into each other when they have the same volume and the same Dehn invariant. It was later proven by Sydler that this is the only obstacle to dissection: every two Euclidean polyhedra with the same volumes and Dehn invariants can be cut up and reassembled into each other.[23] The Dehn invariant is not a number, but a vector in an infinite-dimensional vector space.[24]

Another of Hilbert's problems, Hilbert's 18th problem, concerns (among other things) polyhedra that tile space. Every such polyhedron must have Dehn invariant zero.[25] The Dehn invariant has also conjecturally been connected to flexible polyhedra by the strong bellows conjecture, which asserts that the Dehn invariant of any flexible polyhedron must remain invariant as it flexes.[26]


Convex polyhedra

in Mexico City]] A three-dimensional solid is a convex set if it contains every line segment connecting two of its points. A convex polyhedron is a polyhedron that, as a solid, forms a convex set. A convex polyhedron can also be defined as a bounded intersection of finitely many half-spaces, or as the convex hull of finitely many points.

Important classes of convex polyhedra include the highly symmetrical Platonic solids, the Archimedean solids and their duals the Catalan solids, and the regular-faced Johnson solids.


Symmetries

)]] Many of the most studied polyhedra are highly symmetrical, that is, their appearance is unchanged by some reflection or rotation of space. Each such symmetry may change the location of a given vertex, face, or edge, but the set of all vertices (likewise faces, edges) is unchanged. The collection of symmetries of a polyhedron is called its symmetry group.

All the elements that can be superimposed on each other by symmetries are said to form a symmetry orbit. For example, all the faces of a cube lie in one orbit, while all the edges lie in another. If all the elements of a given dimension, say all the faces, lie in the same orbit, the figure is said to be transitive on that orbit. For example, a cube is face-transitive, while a truncated cube has two symmetry orbits of faces.

The same abstract structure may support more or less symmetric geometric polyhedra. But where a polyhedral name is given, such as icosidodecahedron, the most symmetrical geometry is almost always implied, unless otherwise stated.

There are several types of highly symmetric polyhedron, classified by which kind of element – faces, edges, or vertices – belong to a single symmetry orbit:

-   Regular: vertex-transitive, edge-transitive and face-transitive. (This implies that every face is the same regular polygon; it also implies that every vertex is regular.)
-   Quasi-regular: vertex-transitive and edge-transitive (and hence has regular faces) but not face-transitive. A quasi-regular dual is face-transitive and edge-transitive (and hence every vertex is regular) but not vertex-transitive.
-   Semi-regular: vertex-transitive but not edge-transitive, and every face is a regular polygon. (This is one of several definitions of the term, depending on author. Some definitions overlap with the quasi-regular class.) These polyhedra include the semiregular prisms and antiprisms. A semi-regular dual is face-transitive but not vertex-transitive, and every vertex is regular.
-   Uniform: vertex-transitive and every face is a regular polygon, i.e., it is regular, quasi-regular or semi-regular. A uniform dual is face-transitive and has regular vertices, but is not necessarily vertex-transitive.
-   Isogonal: vertex-transitive.
-   Isotoxal: edge-transitive.
-   Isohedral: face-transitive.
-   Noble: face-transitive and vertex-transitive (but not necessarily edge-transitive). The regular polyhedra are also noble; they are the only noble uniform polyhedra. The duals of noble polyhedra are themselves noble.

Some classes of polyhedra have only a single main axis of symmetry. These include the pyramids, bipyramids, trapezohedra, cupolae, as well as the semiregular prisms and antiprisms.

Regular polyhedra

Regular polyhedra are the most highly symmetrical. Altogether there are nine regular polyhedra: five convex and four star polyhedra.

The five convex examples have been known since antiquity and are called the Platonic solids. These are the triangular pyramid or tetrahedron, cube, octahedron, dodecahedron and icosahedron:

  -- -- -- -- --

  -- -- -- -- --

There are also four regular star polyhedra, known as the Kepler–Poinsot polyhedra after their discoverers.

The dual of a regular polyhedron is also regular.

Uniform polyhedra and their duals

Uniform polyhedra are vertex-transitive and every face is a regular polygon. They may be subdivided into the regular, quasi-regular, or semi-regular, and may be convex or starry.

The duals of the uniform polyhedra have irregular faces but are face-transitive, and every vertex figure is a regular polygon. A uniform polyhedron has the same symmetry orbits as its dual, with the faces and vertices simply swapped over. The duals of the convex Archimedean polyhedra are sometimes called the Catalan solids.

The uniform polyhedra and their duals are traditionally classified according to their degree of symmetry, and whether they are convex or not.

                 Convex uniform       Convex uniform dual        Star uniform              Star uniform dual
  -------------- -------------------- -------------------------- ------------------------- -------------------
  Regular        Platonic solids      Kepler–Poinsot polyhedra
  Quasiregular   Archimedean solids   Catalan solids             Uniform star polyhedron
  Semiregular
  Prisms         Bipyramids           Star prisms                Star bipyramids
  Antiprisms     Trapezohedra         Star antiprisms            Star trapezohedra

Isohedra

An ISOHEDRON is a polyhedron with symmetries acting transitively on its faces. Their topology can be represented by a face configuration. All 5 Platonic solids and 13 Catalan solids are isohedra, as well as the infinite families of trapezohedra and bipyramids. Some isohedra allow geometric variations including concave and self-intersecting forms.

Symmetry groups

divides the sphere into 120 triangular domains.]] Many of the symmetries or point groups in three dimensions are named after polyhedra having the associated symmetry. These include:

-   T – CHIRAL TETRAHEDRAL SYMMETRY; the rotation group for a regular tetrahedron; order 12.
-   T_(D) – FULL TETRAHEDRAL SYMMETRY; the symmetry group for a regular tetrahedron; order 24.
-   T_(H) – PYRITOHEDRAL SYMMETRY; the symmetry of a pyritohedron; order 24.
-   O – CHIRAL OCTAHEDRAL SYMMETRY;the rotation group of the cube and octahedron; order 24.
-   O_(H) – FULL OCTAHEDRAL SYMMETRY; the symmetry group of the cube and octahedron; order 48.
-   I – CHIRAL ICOSAHEDRAL SYMMETRY; the rotation group of the icosahedron and the dodecahedron; order 60.
-   I_(H) – FULL ICOSAHEDRAL SYMMETRY; the symmetry group of the icosahedron and the dodecahedron; order 120.
-   C_(NV) – _n_-fold pyramidal symmetry
-   D_(NH) – _n_-fold prismatic symmetry
-   D_(NV) – _n_-fold antiprismatic symmetry.

Those with chiral symmetry do not have reflection symmetry and hence have two enantiomorphous forms which are reflections of each other. Examples include the snub cuboctahedron and snub icosidodecahedron.


Other important families of polyhedra

Polyhedra with regular faces

Besides the regular and uniform polyhedra, there are some other classes which have regular faces but lower overall symmetry.

Equal regular faces

Convex polyhedra where every face is the same kind of regular polygon may be found among three families:

-   Triangles: These polyhedra are called deltahedra. There are eight convex deltahedra: three of the Platonic solids and five non-uniform examples.
-   Squares: The cube is the only convex example. Other examples (the polycubes) can be obtained by joining cubes together, although care must be taken if coplanar faces are to be avoided.
-   Pentagons: The regular dodecahedron is the only convex example.

Polyhedra with congruent regular faces of six or more sides are all non-convex.

The total number of convex polyhedra with equal regular faces is thus ten: the five Platonic solids and the five non-uniform deltahedra.[27] There are infinitely many non-convex examples. Infinite sponge-like examples called infinite skew polyhedra exist in some of these families.

Johnson solids

Norman Johnson sought which convex non-uniform polyhedra had regular faces, although not necessarily all alike. In 1966, he published a list of 92 such solids, gave them names and numbers, and conjectured that there were no others. Victor Zalgaller proved in 1969 that the list of these JOHNSON SOLIDS was complete.

Pyramids

Pyramids include some of the most time-honoured and famous of all polyhedra, such as the four-sided Egyptian pyramids.

Stellations and facettings

Stellation of a polyhedron is the process of extending the faces (within their planes) so that they meet to form a new polyhedron.

It is the exact reciprocal to the process of facetting, which is the process of removing parts of a polyhedron without creating any new vertices.

The figures below show some stellations of the regular octahedron, dodecahedron, and icosahedron.

  -- -- -- -- -- -- --

  -- -- -- -- -- -- --

Zonohedra

A zonohedron is a convex polyhedron in which every face is a polygon that is symmetric under rotations through 180°. Zonohedra can also be characterized as the Minkowski sums of line segments, and include several important space-filling polyhedra.[28]

Toroidal polyhedra

A toroidal polyhedron is a polyhedron whose Euler characteristic is less than or equal to 0, or equivalently whose genus is 1 or greater. Topologically, the surfaces of such polyhedra are torus surfaces having one or more holes through the middle.

Space-filling polyhedra

A space-filling polyhedron packs with copies of itself to fill space. Such a close-packing or space-filling is often called a tessellation of space or a honeycomb. Space-filling polyhedra must have a Dehn invariant equal to zero. Some honeycombs involve more than one kind of polyhedron.

Lattice polyhedra

A convex polyhedron in which all vertices have integer coordinates is called a lattice polyhedron or integral polyhedron. The Ehrhart polynomial of a lattice polyhedron counts how many points with integer coordinates lie within a scaled copy of the polyhedron, as a function of the scale factor. The study of these polynomials lies at the intersection of combinatorics and commutative algebra.[29]

Flexible polyhedra

It is possible for some polyhedra to change their overall shape, while keeping the shapes of their faces the same, by varying the angles of their edges. A polyhedron that can do this is called a flexible polyhedron. By Cauchy's rigidity theorem, flexible polyhedra must be non-convex. The volume of a flexible polyhedron must remain constant as it flexes; this result is known as the bellows theorem.[30]

Compounds

A polyhedral compound is made of two or more polyhedra sharing a common centre. Symmetrical compounds often share the same vertices as other well-known polyhedra and may often also be formed by stellation. Some are listed in the list of Wenninger polyhedron models.

Orthogonal polyhedra

An orthogonal polyhedron is one all of whose faces meet at right angles, and all of whose edges are parallel to axes of a Cartesian coordinate system. Aside from the rectangular boxes, orthogonal polyhedra are nonconvex. They are the 3D analogs of 2D orthogonal polygons, also known as rectilinear polygons. Orthogonal polyhedra are used in computational geometry, where their constrained structure has enabled advances on problems unsolved for arbitrary polyhedra, for example, unfolding the surface of a polyhedron to a polygonal net.[31]


Generalisations of polyhedra

The name 'polyhedron' has come to be used for a variety of objects having similar structural properties to traditional polyhedra.

Apeirohedra

A classical polyhedral surface has a finite number of faces, joined in pairs along edges. The apeirohedra form a related class of objects with infinitely many faces. Examples of apeirohedra include:

-   tilings or tessellations of the plane, and
-   sponge-like structures called infinite skew polyhedra.

Complex polyhedra

There are objects called complex polyhedra, for which the underlying space is a complex Hilbert space rather than real Euclidean space. Precise definitions exist only for the regular complex polyhedra, whose symmetry groups are complex reflection groups. The complex polyhedra are mathematically more closely related to configurations than to real polyhedra.[32]

Curved polyhedra

Some fields of study allow polyhedra to have curved faces and edges. Curved faces can allow digonal faces to exist with a positive area.

Spherical polyhedra

When the surface of a sphere is divided by finitely many great arcs (equivalently, by planes passing through the center of the sphere), the result is called a spherical polyhedron. Many convex polytopes having some degree of symmetry (for example, all the Platonic solids) can be projected onto the surface of a concentric sphere to produce a spherical polyhedron. However, the reverse process is not always possible; some spherical polyhedra (such as the hosohedra) have no flat-faced analogue.[33]

Curved spacefilling polyhedra

If faces are allowed to be concave as well as convex, adjacent faces may be made to meet together with no gap. Some of these curved polyhedra can pack together to fill space. Two important types are:

-   Bubbles in froths and foams, such as Weaire-Phelan bubbles.[34]
-   Forms used in architecture.[35]

Skeletons and polyhedra as graphs

By forgetting the face structure, any polyhedron gives rise to a graph, called its skeleton, with corresponding vertices and edges. Such figures have a long history: Leonardo da Vinci devised frame models of the regular solids, which he drew for Pacioli's book _Divina Proportione_, and similar wire-frame polyhedra appear in M.C. Escher's print _Stars_.[36] One highlight of this approach is Steinitz's theorem, which gives a purely graph-theoretic characterization of the skeletons of convex polyhedra: it states that the skeleton of every convex polyhedron is a 3-connected planar graph, and every 3-connected planar graph is the skeleton of some convex polyhedron.

An early idea of abstract polyhedra was developed in Branko Grünbaum's study of "hollow-faced polyhedra." Grünbaum defined faces to be cyclically ordered sets of vertices, and allowed them to be skew as well as planar.[37]

The graph perspective allows one to apply graph terminology and properties to polyhedra. For example, the tetrahedron and Császár polyhedron are the only known polyhedra whose skeletons are complete graphs (K₄), and various symmetry restrictions on polyhedra give rise to skeletons that are symmetric graphs.


Alternative usages

From the latter half of the twentieth century, various mathematical constructs have been found to have properties also present in traditional polyhedra. Rather than confining the term "polyhedron" to describe a three-dimensional polytope, it has been adopted to describe various related but distinct kinds of structure.

Higher-dimensional polyhedra

A polyhedron has been defined as a set of points in real affine (or Euclidean) space of any dimension _n_ that has flat sides. It may alternatively be defined as the intersection of finitely many half-spaces. Unlike a conventional polyhedron, it may be bounded or unbounded. In this meaning, a polytope is a bounded polyhedron.[38][39]

Analytically, such a convex polyhedron is expressed as the solution set for a system of linear inequalities. Defining polyhedra in this way provides a geometric perspective for problems in linear programming. Many traditional polyhedral forms are polyhedra in this sense. Other examples include:

-   A quadrant in the plane. For instance, the region of the cartesian plane consisting of all points above the horizontal axis and to the right of the vertical axis: . Its sides are the two positive axes, and it is otherwise unbounded.
-   An octant in Euclidean 3-space, .
-   A prism of infinite extent. For instance a doubly infinite square prism in 3-space, consisting of a square in the _xy_-plane swept along the _z_-axis: .
-   Each cell in a Voronoi tessellation is a convex polyhedron. In the Voronoi tessellation of a set _S_, the cell _A_ corresponding to a point is bounded (hence a traditional polyhedron) when _c_ lies in the interior of the convex hull of _S_, and otherwise (when _c_ lies on the boundary of the convex hull of _S_) _A_ is unbounded.

Topological polyhedra

A topological polytope is a topological space given along with a specific decomposition into shapes that are topologically equivalent to convex polytopes and that are attached to each other in a regular way.

Such a figure is called _simplicial_ if each of its regions is a simplex, i.e. in an _n_-dimensional space each region has _n_+1 vertices. The dual of a simplicial polytope is called _simple_. Similarly, a widely studied class of polytopes (polyhedra) is that of cubical polyhedra, when the basic building block is an _n_-dimensional cube.

Abstract polyhedra

An abstract polytope is a partially ordered set (poset) of elements whose partial ordering obeys certain rules of incidence (connectivity) and ranking. The elements of the set correspond to the vertices, edges, faces and so on of the polytope: vertices have rank 0, edges rank 1, etc. with the partially ordered ranking corresponding to the dimensionality of the geometric elements. The empty set, required by set theory, has a rank of −1 and is sometimes said to correspond to the null polytope. An abstract polyhedron is an abstract polytope having the following ranking:

-   rank 3: The maximal element, sometimes identified with the body.
-   rank 2: The polygonal faces.
-   rank 1: The edges.
-   rank 0: the vertices.
-   rank −1: The empty set, sometimes identified with the _null polytope_ or _nullitope_[40].

Any geometric polyhedron is then said to be a "realization" in real space of the abstract poset as described above.


History

Ancient

Prehistory

Polyhedra appeared in early architectural forms such as cubes and cuboids, with the earliest four-sided pyramids of ancient Egypt also dating from the Stone Age.

The Etruscans preceded the Greeks in their awareness of at least some of the regular polyhedra, as evidenced by the discovery of an Etruscan dodecahedron made of soapstone on Monte Loffa. Its faces were marked with different designs, suggesting to some scholars that it may have been used as a gaming die.[41]

Greek civilisation

The earliest known _written_ records of these shapes come from Classical Greek authors, who also gave the first known mathematical description of them. The earlier Greeks were interested primarily in the convex regular polyhedra, which came to be known as the Platonic solids. Pythagoras knew at least three of them, and Theaetetus (circa 417 B. C.) described all five. Eventually, Euclid described their construction in his _Elements_. Later, Archimedes expanded his study to the convex uniform polyhedra which now bear his name. His original work is lost and his solids come down to us through Pappus.

China

Cubical gaming dice in China have been dated back as early as 600 B.C.

By 236 AD, Liu Hui was describing the dissection of the cube into its characteristic tetrahedron (orthoscheme) and related solids, using assemblages of these solids as the basis for calculating volumes of earth to be moved during engineering excavations.

Islamic civilisation

After the end of the Classical era, scholars in the Islamic civilisation continued to take the Greek knowledge forward (see Mathematics in medieval Islam).

The 9th century scholar Thabit ibn Qurra gave formulae for calculating the volumes of polyhedra such as truncated pyramids.

Then in the 10th century Abu'l Wafa described the convex regular and quasiregular spherical polyhedra.

Renaissance

As with other areas of Greek thought maintained and enhanced by Islamic scholars, Western interest in polyhedra revived during the Italian Renaissance. Artists constructed skeletal polyhedra, depicting them from life as a part of their investigations into perspective. Several appear in marquetry panels of the period. Piero della Francesca gave the first written description of direct geometrical construction of such perspective views of polyhedra. Leonardo da Vinci made skeletal models of several polyhedra and drew illustrations of them for a book by Pacioli. A painting by an anonymous artist of Pacioli and a pupil depicts a glass rhombicuboctahedron half-filled with water.

As the Renaissance spread beyond Italy, later artists such as Wenzel Jamnitzer, Dürer and others also depicted polyhedra of various kinds, many of them novel, in imaginative etchings.

Star polyhedra

For almost 2,000 years, the concept of a polyhedron as a convex solid had remained as developed by the ancient Greek mathematicians.

During the Renaissance star forms were discovered. A marble tarsia in the floor of St. Mark's Basilica, Venice, depicts a stellated dodecahedron. Artists such as Wenzel Jamnitzer delighted in depicting novel star-like forms of increasing complexity.

Johannes Kepler (1571–1630) used star polygons, typically pentagrams, to build star polyhedra. Some of these figures may have been discovered before Kepler's time, but he was the first to recognize that they could be considered "regular" if one removed the restriction that regular polytopes must be convex. Later, Louis Poinsot realised that star vertex figures (circuits around each corner) can also be used, and discovered the remaining two regular star polyhedra. Cauchy proved Poinsot's list complete, and Cayley gave them their accepted English names: (Kepler's) the small stellated dodecahedron and great stellated dodecahedron, and (Poinsot's) the great icosahedron and great dodecahedron. Collectively they are called the Kepler-Poinsot polyhedra.

The Kepler-Poinsot polyhedra may be constructed from the Platonic solids by a process called stellation. Most stellations are not regular. The study of stellations of the Platonic solids was given a big push by H.S.M. Coxeter and others in 1938, with the now famous paper _The 59 icosahedra_.[42]

The reciprocal process to stellation is called facetting (or faceting). Every stellation of one polytope is dual, or reciprocal, to some facetting of the dual polytope. The regular star polyhedra can also be obtained by facetting the Platonic solids. listed the simpler facettings of the dodecahedron, and reciprocated them to discover a stellation of the icosahedron that was missing from the set of "59".[43] More have been discovered since, and the story is not yet ended.

Euler's formula and topology

Two other modern mathematical developments had a profound effect on polyhedron theory.

In 1750 Leonhard Euler for the first time considered the edges of a polyhedron, allowing him to discover his polyhedron formula relating the number of vertices, edges and faces. This signalled the birth of topology, sometimes referred to as "rubber sheet geometry", and Henri Poincaré developed its core ideas around the end of the nineteenth century. This allowed many longstanding issues over what was or was not a polyhedron to be resolved.

Max Brückner summarised work on polyhedra to date, including many findings of his own, in his book "Vielecke und Vielflache: Theorie und Geschichte" (Polygons and polyhedra: Theory and History). Published in German in 1900, it remained little known.

Meanwhile, the discovery of higher dimensions led to the idea of a polyhedron as a three-dimensional example of the more general polytope.

Twentieth-century revival

By the early years of the twentieth century, mathematicians had moved on and geometry was little studied. Coxeter's analysis in _The Fifty-Nine Icosahedra_ introduced modern ideas from graph theory and combinatorics into the study of polyhedra, signalling a rebirth of interest in geometry.

Coxeter himself went on to enumerate the star uniform polyhedra for the first time, to treat tilings of the plane as polyhedra, to discover the regular skew polyhedra and to develop the theory of complex polyhedra first discovered by Shephard in 1952, as well as making fundamental contributions to many other areas of geometry.

In the second part of the twentieth century, Grünbaum published important works in two areas. One was in convex polytopes, where he noted a tendency among mathematicians to define a "polyhedron" in different and sometimes incompatible ways to suit the needs of the moment. The other was a series of papers broadening the accepted definition of a polyhedron, for example discovering many new regular polyhedra. At the close of the 20th century these latter ideas merged with other work on incidence complexes to create the modern idea of an abstract polyhedron (as an abstract 3-polytope), notably presented by McMullen and Schulte.


In nature

For natural occurrences of regular polyhedra, _see Regular polyhedron: Regular polyhedra in nature._

Irregular polyhedra appear in nature as crystals.


See also

-   Defect
-   Deltohedron
-   Extension of a polyhedron
-   Goldberg polyhedron
-   History of the regular polytopes.
-   List of books about polyhedra
-   List of small polyhedra by vertex count
-   Near-miss Johnson solid
-   Net (polyhedron)
-   Polyhedron models
-   Schlegel diagram
-   Spidron
-   Stella (software)


References

NOTES

SOURCES

-   .

-   .

-   .

-   .


External links

General theory

-   -   Polyhedra Pages
-   Uniform Solution for Uniform Polyhedra by Dr. Zvi Har'El
-   Symmetry, Crystals and Polyhedra

Lists and databases of polyhedra

-   Virtual Reality Polyhedra – The Encyclopedia of Polyhedra
-   Electronic Geometry Models – Contains a peer reviewed selection of polyhedra with unusual properties.
-   Polyhedron Models – Virtual polyhedra
-   Paper Models of Uniform (and other) Polyhedra

Free software

-   A Plethora of Polyhedra – An interactive and free collection of polyhedra in Java. Features includes nets, planar sections, duals, truncations and stellations of more than 300 polyhedra.
-   Hyperspace Star Polytope Slicer – Explorer java applet, includes a variety of 3d viewer options.
-   openSCAD – Free cross-platform software for programmers. Polyhedra are just one of the things you can model. The openSCAD User Manual is also available.
-   OpenVolumeMesh – An open source cross-platform C++ library for handling polyhedral meshes. Developed by the Aachen Computer Graphics Group, RWTH Aachen University.
-   Polyhedronisme – Web-based tool for generating polyhedra models using Conway Polyhedron Notation. Models can be exported as 2D PNG images, or as 3D OBJ or VRML2 files. The 3D files can be opened in CAD software, or uploaded for 3D printing at services such as Shapeways.

Resources for making physical models

-   Paper Models of Polyhedra Free nets of polyhedra
-   Simple instructions for building over 30 paper polyhedra
-   Polyhedra plaited with paper strips – Polyhedra models constructed without use of glue.
-   Adopt a Polyhedron - Interactive display, nets and 3D printer data for all combinatorial types of polyhedra with up to nine vertices.

Polyhedra

[1] .

[2] .

[3] .

[4]

[5] .

[6] Cromwell (1997), pp. 206–209.

[7] .

[8] .

[9] , p. 209.

[10] .

[11] .

[12] , pp. 468–469.

[13]

[14] .

[15] .

[16] , p. 157.

[17] , p. 180.

[18] .

[19] . See in particular the bottom of page 260.

[20]

[21]

[22]

[23]

[24]

[25] .

[26] .

[27] , p. 86.

[28] .

[29]

[30] .

[31] .

[32] .

[33] .

[34] . See in particular p. 403: "foams consist of polyhedral gas bubbles ... each face on a polyhedron is a minimal surface with uniform mean curvature ... no face can be a flat polygon with straight edges".

[35] .

[36]  Coxeter's analysis of _Stars_ is on pp. 61–62.

[37] .

[38]

[39]

[40] N.W. Johnson: _Geometries and Transformations_, (2018) Chapter 11: _Finite Symmetry Groups_, 11.1 _Polytopes and Honeycombs_, p.224

[41]

[42] .

[43] .