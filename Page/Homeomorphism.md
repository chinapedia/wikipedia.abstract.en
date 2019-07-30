and a donut (torus) illustrating that they are homeomorphic. But there need not be a continuous deformation for two spaces to be homeomorphic — only a continuous mapping with a continuous inverse function.]] In the mathematical field of topology, a HOMEOMORPHISM, TOPOLOGICAL ISOMORPHISM, or BICONTINUOUS FUNCTION is a continuous function between topological spaces that has a continuous inverse function. Homeomorphisms are the isomorphisms in the category of topological spaces—that is, they are the mappings that preserve all the topological properties of a given space. Two spaces with a homeomorphism between them are called HOMEOMORPHIC, and from a topological viewpoint they are the same. The word _homeomorphism_ comes from the Greek words _ὅμοιος_ (_homoios_) = similar or same and _μορφή_ (_morphē_) = shape, form, introduced to mathematics by Henri Poincaré in 1895.[1][2]

Very roughly speaking, a topological space is a geometric object, and the homeomorphism is a continuous stretching and bending of the object into a new shape. Thus, a square and a circle are homeomorphic to each other, but a sphere and a torus are not. However, this description can be misleading. Some continuous deformations are not homeomorphisms, such as the deformation of a line into a point. Some homeomorphisms are not continuous deformations, such as the homeomorphism between a trefoil knot and a circle.

An often-repeated mathematical joke is that topologists can't tell the difference between a coffee cup and a donut,[3] since a sufficiently pliable donut could be reshaped to the form of a coffee cup by creating a dimple and progressively enlarging it, while preserving the donut hole in a cup's handle.


Definition

A function f : X → Y between two topological spaces is a HOMEOMORPHISM if it has the following properties:

-   f is a bijection (one-to-one and onto),
-   f is continuous,
-   the inverse function f^( − 1) is continuous (f is an open mapping).

A homeomorphism is sometimes called a BICONTINUOUS function. If such a function exists, X and Y are HOMEOMORPHIC. A SELF-HOMEOMORPHISM is a homeomorphism from a topological space onto itself. "Being homeomorphic" is an equivalence relation on topological spaces. Its equivalence classes are called HOMEOMORPHISM CLASSES.


Examples

is homeomorphic to a torus, but not isotopic in R³. Continuous mappings are not always realizable as deformations.]]

-   The open interval (a, b) is homeomorphic to the real numbers R for any a < b. (In this case, a bicontinuous forward mapping is given by $f(x) = \frac{1}{a-x} + \frac{1}{b-x}$ while other such mappings are given by scaled and translated versions of the or functions).
-   The unit 2-disc D² and the unit square in R² are homeomorphic; since the unit disc can be deformed into the unit square. An example of a bicontinuous mapping from the square to the disc is, in polar coordinates, (ρ, θ) ↦ (ρmax(|cosθ|,|sinθ|),θ).
-   The graph of a differentiable function is homeomorphic to the domain of the function.
-   A differentiable parametrization of a curve is a homeomorphism between the domain of the parametrization and the curve.
-   A chart of a manifold is an homeomorphism between an open subset of the manifold and an open subset of a Euclidean space.
-   The stereographic projection is a homeomorphism between the unit sphere in R³ with a single point removed and the set of all points in R² (a 2-dimensional plane).
-   If G is a topological group, its inversion map x ↦ x^( − 1) is a homeomorphism. Also, for any x ∈ G, the left translation y ↦ xy, the right translation y ↦ yx, and the inner automorphism y ↦ xyx^( − 1) are homeomorphisms.

Non-examples

-   R^(_m_) and R^(_n_) are not homeomorphic for
-   The Euclidean real line is not homeomorphic to the unit circle as a subspace of R^(_2_), since the unit circle is compact as a subspace of Euclidean R^(_2_) but the real line is not compact.
-   The one-dimensional intervals [0, 1]and (0, 1)are not homeomorphic because no continuous bijection could be made.[4]


Notes

The third requirement, that f^( − 1) be continuous, is essential. Consider for instance the function f : [0, 2π) → S¹ (the unit circle in ℝ²) defined byf(ϕ) = (cos ϕ, sin ϕ). This function is bijective and continuous, but not a homeomorphism (S¹ is compact but [0, 2π) is not). The function f^( − 1) is not continuous at the point (1, 0), because although f^( − 1) maps (1, 0) to 0, any neighbourhood of this point also includes points that the function maps close to 2π, but the points it maps to numbers in between lie outside the neighbourhood.[5]

Homeomorphisms are the isomorphisms in the category of topological spaces. As such, the composition of two homeomorphisms is again a homeomorphism, and the set of all self-homeomorphisms X → X forms a group, called the HOMEOMORPHISM GROUP of _X_, often denoted Homeo(X). This group can be given a topology, such as the compact-open topology, which under certain assumptions makes it a topological group.[6]

For some purposes, the homeomorphism group happens to be too big, but by means of the isotopy relation, one can reduce this group to the mapping class group.

Similarly, as usual in category theory, given two spaces that are homeomorphic, the space of homeomorphisms between them, Homeo(X, Y), is a torsor for the homeomorphism groups Homeo(X) and Homeo(Y), and, given a specific homeomorphism between X and Y, all three sets are identified.


Properties

-   Two homeomorphic spaces share the same topological properties. For example, if one of them is compact, then the other is as well; if one of them is connected, then the other is as well; if one of them is Hausdorff, then the other is as well; their homotopy and homology groups will coincide. Note however that this does not extend to properties defined via a metric; there are metric spaces that are homeomorphic even though one of them is complete and the other is not.
-   A homeomorphism is simultaneously an open mapping and a closed mapping; that is, it maps open sets to open sets and closed sets to closed sets.
-   Every self-homeomorphism in S¹ can be extended to a self-homeomorphism of the whole disk D² (Alexander's trick).


Informal discussion

The intuitive criterion of stretching, bending, cutting and gluing back together takes a certain amount of practice to apply correctly—it may not be obvious from the description above that deforming a line segment to a point is impermissible, for instance. It is thus important to realize that it is the formal definition given above that counts. In this case, for example, the line segment possesses infinitely many points, and therefore cannot be put into a bijection with a set containing only a finite number of points, including a single point.

This characterization of a homeomorphism often leads to a confusion with the concept of homotopy, which is actually _defined_ as a continuous deformation, but from one _function_ to another, rather than one space to another. In the case of a homeomorphism, envisioning a continuous deformation is a mental tool for keeping track of which points on space _X_ correspond to which points on _Y_—one just follows them as _X_ deforms. In the case of homotopy, the continuous deformation from one map to the other is of the essence, and it is also less restrictive, since none of the maps involved need to be one-to-one or onto. Homotopy does lead to a relation on spaces: homotopy equivalence.

There is a name for the kind of deformation involved in visualizing a homeomorphism. It is (except when cutting and regluing are required) an isotopy between the identity map on _X_ and the homeomorphism from _X_ to _Y_.


See also

-   Local homeomorphism
-   Diffeomorphism
-   Uniform isomorphism is an isomorphism between uniform spaces
-   Isometric isomorphism is an isomorphism between metric spaces
-   Homeomorphism group
-   Dehn twist
-   Homeomorphism (graph theory) (closely related to graph subdivision)
-   Homotopy#Isotopy
-   Mapping class group
-   Poincaré conjecture
-   Universal homeomorphism


References


External links

-   -

Homeomorphisms Category:Functions and mappings

[1]

[2]

[3]

[4]

[5] Väisälä, Jussi: _Topologia I_, Limes RY 1999, p. 63. .

[6]