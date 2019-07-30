s, which have only one surface and one edge, are a kind of object studied in topology.]]

In mathematics, TOPOLOGY (from the Greek τόπος, _place_, and λόγος, _study_) is concerned with the properties of a geometric object that are preserved under continuous deformations, such as stretching, twisting, crumpling and bending, but not tearing or gluing.

A topological space is a set endowed with a structure, called a _topology_, which allows defining continuous deformation of subspaces, and, more generally, all kinds of continuity. Euclidean spaces, and, more generally, metric spaces are examples of topological spaces, as any distance or metric defines a topology. The deformations that are considered in topology are homeomorphisms and homotopies. A property that is invariant under such deformations is a topological property. Basic examples of topological properties are: the dimension, which allows distinguishing between a line and a surface; compactness, which allows distinguishing between a line and a circle; connectedness, which allows distinguishing a circle from two non-intersecting circles.

The ideas underlying topology go back to Gottfried Leibniz, who in the 17th century envisioned the _geometria situs_ and _analysis situs_. Leonhard Euler's Seven Bridges of Königsberg problem and polyhedron formula are arguably the field's first theorems. The term _topology_ was introduced by Johann Benedict Listing in the 19th century, although it was not until the first decades of the 20th century that the idea of a topological space was developed. , the simplest non-trivial knot]]


Motivation

The motivating insight behind topology is that some geometric problems depend not on the exact shape of the objects involved, but rather on the way they are put together. For example, the square and the circle have many properties in common: they are both one dimensional objects (from a topological point of view) and both separate the plane into two parts, the part inside and the part outside.

In one of the first papers in topology, Leonhard Euler demonstrated that it was impossible to find a route through the town of Königsberg (now Kaliningrad) that would cross each of its seven bridges exactly once. This result did not depend on the lengths of the bridges or on their distance from one another, but only on connectivity properties: which bridges connect to which islands or riverbanks. This Seven Bridges of Königsberg problem led to the branch of mathematics known as graph theory.

Similarly, the hairy ball theorem of algebraic topology says that "one cannot comb the hair flat on a hairy ball without creating a cowlick." This fact is immediately convincing to most people, even though they might not recognize the more formal statement of the theorem, that there is no nonvanishing continuous tangent vector field on the sphere. As with the _Bridges of Königsberg_, the result does not depend on the shape of the sphere; it applies to any kind of smooth blob, as long as it has no holes.

To deal with these problems that do not rely on the exact shape of the objects, one must be clear about just what properties these problems rely on. From this need arises the notion of homeomorphism. The impossibility of crossing each bridge just once applies to any arrangement of bridges homeomorphic to those in Königsberg, and the hairy ball theorem applies to any space homeomorphic to a sphere.

Intuitively, two spaces are homeomorphic if one can be deformed into the other without cutting or gluing. A traditional joke is that a topologist cannot distinguish a coffee mug from a doughnut, since a sufficiently pliable doughnut could be reshaped to a coffee cup by creating a dimple and progressively enlarging it, while shrinking the hole into a handle.[1]

Homeomorphism can be considered the most basic topological equivalence. Another is homotopy equivalence. This is harder to describe without getting technical, but the essential notion is that two objects are homotopy equivalent if they both result from "squishing" some larger object.

  Homeomorphism   Homotopy equivalence
  --------------- ----------------------


  : Equivalence classes of the English (i.e., Latin) alphabet (sans-serif)

An introductory exercise is to classify the uppercase letters of the English alphabet according to homeomorphism and homotopy equivalence. The result depends on the font used, and on whether the strokes making up the letters have some thickness or are ideal curves with no thickness. The figures here use the sans-serif Myriad font and are assumed to consist of ideal curves without thickness. Homotopy equivalence is a coarser relationship than homeomorphism; a homotopy equivalence class can contain several homeomorphism classes. The simple case of homotopy equivalence described above can be used here to show two letters are homotopy equivalent. For example, O fits inside P and the tail of the P can be squished to the "hole" part.

Homeomorphism classes are:

-   no holes corresponding with C, G, I, J, L, M, N, S, U, V, W, and Z;
-   no holes and three tails corresponding with E, F, T, and Y;
-   no holes and four tails corresponding with X;
-   one hole and no tail corresponding with D and O;
-   one hole and one tail corresponding with P and Q;
-   one hole and two tails corresponding with A and R;
-   two holes and no tail corresponding with B; and
-   a bar with four tails corresponding with H and K; the "bar" on the _K_ is almost too short to see.

Homotopy classes are larger, because the tails can be squished down to a point. They are:

-   one hole,
-   two holes, and
-   no holes.

To classify the letters correctly, we must show that two letters in the same class are equivalent and two letters in different classes are not equivalent. In the case of homeomorphism, this can be done by selecting points and showing their removal disconnects the letters differently. For example, X and Y are not homeomorphic because removing the center point of the X leaves four pieces; whatever point in Y corresponds to this point, its removal can leave at most three pieces. The case of homotopy equivalence is harder and requires a more elaborate argument showing an algebraic invariant, such as the fundamental group, is different on the supposedly differing classes.

Letter topology has practical relevance in stencil typography. For instance, Braggadocio font stencils are made of one connected piece of material.


History

was a problem solved by Euler.]]

Topology, as a well-defined mathematical discipline, originates in the early part of the twentieth century, but some isolated results can be traced back several centuries.[2] Among these are certain questions in geometry investigated by Leonhard Euler. His 1736 paper on the Seven Bridges of Königsberg is regarded as one of the first practical applications of topology.[3] On 14 November 1750, Euler wrote to a friend that he had realised the importance of the _edges_ of a polyhedron. This led to his polyhedron formula, (where , , and respectively indicate the number of vertices, edges, and faces of the polyhedron). Some authorities regard this analysis as the first theorem, signalling the birth of topology.[4][5]

Further contributions were made by Augustin-Louis Cauchy, Ludwig Schläfli, Johann Benedict Listing, Bernhard Riemann and Enrico Betti.[6] Listing introduced the term "Topologie" in _Vorstudien zur Topologie_, written in his native German, in 1847, having used the word for ten years in correspondence before its first appearance in print.[7] The English form "topology" was used in 1883 in Listing's obituary in the journal _Nature_ to distinguish "qualitative geometry from the ordinary geometry in which quantitative relations chiefly are treated".[8] The term "topologist" in the sense of a specialist in topology was used in 1905 in the magazine _Spectator_.

Their work was corrected, consolidated and greatly extended by Henri Poincaré. In 1895, he published his ground-breaking paper on _Analysis Situs_, which introduced the concepts now known as homotopy and homology, which are now considered part of algebraic topology.[9]

+---------------------------+-----------+----------------+---------------+-----------------------------+
| Manifold                  | Euler num | Orientability  | Betti numbers | Torsion coefficient (1-dim) |
+===========================+===========+================+===============+=============================+
| b₀                        | b₁        | b₂             |               |                             |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| Sphere                    | 2         | Orientable     | 1             | 0                           |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| Torus                     | 0         | Orientable     | 1             | 2                           |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| 2-holed torus             | −2        | Orientable     | 1             | 4                           |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| -holed torus (genus )     |           | Orientable     | 1             |                             |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| Projective plane          | 1         | Non-orientable | 1             | 0                           |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| Klein bottle              | 0         | Non-orientable | 1             | 1                           |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| Sphere with cross-caps () |           | Non-orientable | 1             |                             |
+---------------------------+-----------+----------------+---------------+-----------------------------+
| 2-Manifold with holes     |           | Non-orientable | 1             |                             |
| and cross-caps ()         |           |                |               |                             |
+---------------------------+-----------+----------------+---------------+-----------------------------+

: Topological characteristics of closed 2-manifolds[10]

Unifying the work on function spaces of Georg Cantor, Vito Volterra, Cesare Arzelà, Jacques Hadamard, Giulio Ascoli and others, Maurice Fréchet introduced the metric space in 1906.[11] A metric space is now considered a special case of a general topological space, with any given topological space potentially giving rise to many distinct metric spaces. In 1914, Felix Hausdorff coined the term "topological space" and gave the definition for what is now called a Hausdorff space.[12] Currently, a topological space is a slight generalization of Hausdorff spaces, given in 1922 by Kazimierz Kuratowski.[13]

Modern topology depends strongly on the ideas of set theory, developed by Georg Cantor in the later part of the 19th century. In addition to establishing the basic ideas of set theory, Cantor considered point sets in Euclidean space as part of his study of Fourier series. For further developments, see point-set topology and algebraic topology.


Concepts

Topologies on sets

The term _topology_ also refers to a specific mathematical idea central to the area of mathematics called topology. Informally, a topology tells how elements of a set relate spatially to each other. The same set can have different topologies. For instance, the real line, the complex plane, and the Cantor set can be thought of as the same set with different topologies.

Formally, let be a set and let be a family of subsets of . Then is called a topology on if:

1.  Both the empty set and are elements of .
2.  Any union of elements of is an element of .
3.  Any intersection of finitely many elements of is an element of .

If is a topology on , then the pair is called a topological space. The notation may be used to denote a set endowed with the particular topology .

The members of are called _open sets_ in . A subset of is said to be closed if its complement is in (i.e., its complement is open). A subset of may be open, closed, both (a clopen set), or neither. The empty set and itself are always both closed and open. An open subset of which contains a point is called a neighborhood of .

Continuous functions and homeomorphisms

A function or map from one topological space to another is called _continuous_ if the inverse image of any open set is open. If the function maps the real numbers to the real numbers (both spaces with the standard topology), then this definition of continuous is equivalent to the definition of continuous in calculus. If a continuous function is one-to-one and onto, and if the inverse of the function is also continuous, then the function is called a homeomorphism and the domain of the function is said to be homeomorphic to the range. Another way of saying this is that the function has a natural extension to the topology. If two spaces are homeomorphic, they have identical topological properties, and are considered topologically the same. The cube and the sphere are homeomorphic, as are the coffee cup and the doughnut. But the circle is not homeomorphic to the doughnut.

Manifolds

While topological spaces can be extremely varied and exotic, many areas of topology focus on the more familiar class of spaces known as manifolds. A _manifold_ is a topological space that resembles Euclidean space near each point. More precisely, each point of an -dimensional manifold has a neighborhood that is homeomorphic to the Euclidean space of dimension . Lines and circles, but not figure eights, are one-dimensional manifolds. Two-dimensional manifolds are also called surfaces, although not all surfaces are manifolds. Examples include the plane, the sphere, and the torus, which can all be realized without self-intersection in three dimensions, and the Klein bottle and real projective plane, which cannot (that is, all their realizations are surfaces that are not manifolds).


Topics

General topology

General topology is the branch of topology dealing with the basic set-theoretic definitions and constructions used in topology.[14][15] It is the foundation of most other branches of topology, including differential topology, geometric topology, and algebraic topology. Another name for general topology is point-set topology.

The basic object of study is topological spaces, which are sets equipped with a topology, that is, a family of subsets, called _open sets_, which is closed under finite intersections and (finite or infinite) unions. The fundamental concepts of topology, such as _continuity_, _compactness_, and _connectedness_, can be defined in terms of open sets. Intuitively, continuous functions take nearby points to nearby points. Compact sets are those that can be covered by finitely many sets of arbitrarily small size. Connected sets are sets that cannot be divided into two pieces that are far apart. The words _nearby_, _arbitrarily small_, and _far apart_ can all be made precise by using open sets. Several topologies can be defined on a given space. Changing a topology consists of changing the collection of open sets, and this changes which functions are continuous, and which subsets are compact or connected.

Metric spaces are an important class of topological spaces where distances between any two points are defined by a function called a _metric_. In a metric space, an open set is a union of open disks, where an open disk of radius centered at is the set of the points whose distance to is less than . Many common spaces are topological space whose topology can be defined by a metric. This is the case of the real line, the complex plane, real and complex vector spaces and Euclidean spaces. Having a metric simplifies many proofs.

Algebraic topology

Algebraic topology is a branch of mathematics that uses tools from algebra to study topological spaces.[16] The basic goal is to find algebraic invariants that classify topological spaces up to homeomorphism, though usually most classify up to homotopy equivalence.

The most important of these invariants are homotopy groups, homology, and cohomology.

Although algebraic topology primarily uses algebra to study topological problems, using topology to solve algebraic problems is sometimes also possible. Algebraic topology, for example, allows for a convenient proof that any subgroup of a free group is again a free group.

Differential topology

Differential topology is the field dealing with differentiable functions on differentiable manifolds.[17] It is closely related to differential geometry and together they make up the geometric theory of differentiable manifolds.

More specifically, differential topology considers the properties and structures that require only a smooth structure on a manifold to be defined. Smooth manifolds are 'softer' than manifolds with extra geometric structures, which can act as obstructions to certain types of equivalences and deformations that exist in differential topology. For instance, volume and Riemannian curvature are invariants that can distinguish different geometric structures on the same smooth manifold—that is, one can smoothly "flatten out" certain manifolds, but it might require distorting the space and affecting the curvature or volume.

Geometric topology

Geometric topology is a branch of topology that primarily focuses on low-dimensional manifolds (i.e. spaces of dimensions 2, 3, and 4) and their interaction with geometry, but it also includes some higher-dimensional topology.[18][19] Some examples of topics in geometric topology are orientability, handle decompositions, local flatness, crumpling and the planar and higher-dimensional Schönflies theorem.

In high-dimensional topology, characteristic classes are a basic invariant, and surgery theory is a key theory.

Low-dimensional topology is strongly geometric, as reflected in the uniformization theorem in 2 dimensions – every surface admits a constant curvature metric; geometrically, it has one of 3 possible geometries: positive curvature/spherical, zero curvature/flat, and negative curvature/hyperbolic – and the geometrization conjecture (now theorem) in 3 dimensions – every 3-manifold can be cut into pieces, each of which has one of eight possible geometries.

2-dimensional topology can be studied as complex geometry in one variable (Riemann surfaces are complex curves) – by the uniformization theorem every conformal class of metrics is equivalent to a unique complex one, and 4-dimensional topology can be studied from the point of view of complex geometry in two variables (complex surfaces), though not every 4-manifold admits a complex structure.

Generalizations

Occasionally, one needs to use the tools of topology but a "set of points" is not available. In pointless topology one considers instead the lattice of open sets as the basic notion of the theory,[20] while Grothendieck topologies are structures defined on arbitrary categories that allow the definition of sheaves on those categories, and with that the definition of general cohomology theories.[21]


Applications

Biology

Knot theory, a branch of topology, is used in biology to study the effects of certain enzymes on DNA. These enzymes cut, twist, and reconnect the DNA, causing knotting with observable effects such as slower electrophoresis.[22] Topology is also used in evolutionary biology to represent the relationship between phenotype and genotype.[23] Phenotypic forms that appear quite different can be separated by only a few mutations depending on how genetic changes map to phenotypic changes during development. In neuroscience, topological quantities like the Euler characteristic and Betti number have been used to measure the complexity of patterns of activity in neural networks.

Computer science

Topological data analysis uses techniques from algebraic topology to determine the large scale structure of a set (for instance, determining if a cloud of points is spherical or toroidal). The main method used by topological data analysis is:

1.  Replace a set of data points with a family of simplicial complexes, indexed by a proximity parameter.
2.  Analyse these topological complexes via algebraic topology – specifically, via the theory of persistent homology.[24]
3.  Encode the persistent homology of a data set in the form of a parameterized version of a Betti number, which is called a barcode.[25]

Physics

Topology is relevant to physics in areas such as condensed matter physics,[26] quantum field theory and physical cosmology.

The topological dependence of mechanical properties in solids is of interest in disciplines of mechanical engineering and materials science. Electrical and mechanical properties depend on the arrangement and network structures of molecules and elementary units in materials.[27] The compressive strength of crumpled topologies is studied in attempts to understand the high strength to weight of such structures that are mostly empty space.[28] Topology is of further significance in Contact mechanics where the dependence of stiffness and friction on the dimensionality of surface structures is the subject of interest with applications in multi-body physics.

A topological quantum field theory (or topological field theory or TQFT) is a quantum field theory that computes topological invariants.

Although TQFTs were invented by physicists, they are also of mathematical interest, being related to, among other things, knot theory, the theory of four-manifolds in algebraic topology, and to the theory of moduli spaces in algebraic geometry. Donaldson, Jones, Witten, and Kontsevich have all won Fields Medals for work related to topological field theory.

The topological classification of Calabi-Yau manifolds has important implications in string theory, as different manifolds can sustain different kinds of strings.[29]

In cosmology, topology can be used to describe the overall shape of the universe.[30] This area of research is commonly known as spacetime topology.

Robotics

The possible positions of a robot can be described by a manifold called configuration space.[31] In the area of motion planning, one finds paths between two points in configuration space. These paths represent a motion of the robot's joints and other parts into the desired pose.[32]

Games and puzzles

Tanglement puzzles are based on topological aspects of the puzzle's shapes and components.[33][34][35][36]

Fiber art

In order to create a continuous join of pieces in a modular construction, it is necessary to create an unbroken path in an order which surrounds each piece and traverses each edge only once. This process is an application of the Eulerian path.[37]


See also

-   Equivariant topology
-   List of algebraic topology topics
-   List of examples in general topology
-   List of general topology topics
-   List of geometric topology topics
-   List of topology topics
-   Publications in topology
-   Topoisomer
-   Topology glossary
-   Topological geometry
-   Topological order


References

Citations

Bibliography

-   -   -


Further reading

-   Ryszard Engelking, _General Topology_, Heldermann Verlag, Sigma Series in Pure Mathematics, December 1989, .
-   Bourbaki; _Elements of Mathematics: General Topology_, Addison–Wesley (1966).
-   -   -   (Provides a well motivated, geometric account of general topology, and shows the use of groupoids in discussing van Kampen's theorem, covering spaces, and orbit spaces.)

-   Wacław Sierpiński, _General Topology_, Dover Publications, 2000,
-   (Provides a popular introduction to topology and geometry)

-


External links

-   -   Elementary Topology: A First Course Viro, Ivanov, Netsvetaev, Kharlamov.
-   -   The Topological Zoo at The Geometry Center.
-   Topology Atlas
-   Topology Course Lecture Notes Aisling McCluskey and Brian McMaster, Topology Atlas.
-   Topology Glossary
-   Moscow 1935: Topology moving towards America, a historical essay by Hassler Whitney.

Topology Category:Mathematical structures

[1]

[2]

[3]

[4]

[5]

[6] Richeson (2008)

[7] Listing, Johann Benedict, "Vorstudien zur Topologie", Vandenhoeck und Ruprecht, Göttingen, p. 67, 1848

[8] Tait, Peter Guthrie, "Johann Benedict Listing (obituary)", Nature 27, 1 February 1883, pp. 316–317

[9]

[10]

[11]

[12] Hausdorff, Felix, "Grundzüge der Mengenlehre", Leipzig: Veit. In (Hausdorff Werke, II (2002), 91–576)

[13]

[14] Munkres, James R. Topology. Vol. 2. Upper Saddle River: Prentice Hall, 2000.

[15] Adams, Colin Conrad, and Robert David Franzosa. Introduction to topology: pure and applied. Pearson Prentice Hall, 2008.

[16] Allen Hatcher, _Algebraic topology._ (2002) Cambridge University Press, xii+544 pp. .

[17]

[18]

[19] R.B. Sher and R.J. Daverman (2002), _Handbook of Geometric Topology_, North-Holland.

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29] Yau, S. & Nadis, S.; _The Shape of Inner Space_, Basic Books, 2010.

[30] _The Shape of Space: How to Visualize Surfaces and Three-dimensional Manifolds_ 2nd ed (Marcel Dekker, 1985, )

[31] John J. Craig, _Introduction to Robotics: Mechanics and Control_, 3rd Ed. Prentice-Hall, 2004

[32] Michael Farber, _Invitation to Topological Robotics_, European Mathematical Society, 2008

[33] https://math.stackexchange.com How to reason about disentanglement puzzles.

[34] .

[35] http://sma.epfl.ch/Notes.pdf A Topological Puzzle, Inta Bertuccioni, December 2003.

[36] https://www.futilitycloset.com/the-figure-8-puzzle The Figure Eight Puzzle, Science and Math, June 2012.

[37] Eckman, Edie: _Connect the shapes crochet motifs: creative techniques for joining motifs of all shapes._ ©2012 Storey Publishing