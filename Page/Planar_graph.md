+---------------------+
| Example graphs      |
+=====================+
| Planar              |
+---------------------+
| Butterfly_graph.svg |
| Butterfly graph     |
+---------------------+
| CGK4PLN.svg         |
| Complete graph      |
| _K_₄                |
+---------------------+

In graph theory, a PLANAR GRAPH is a graph that can be embedded in the plane, i.e., it can be drawn on the plane in such a way that its edges intersect only at their endpoints. In other words, it can be drawn in such a way that no edges cross each other.[1] Such a drawing is called a PLANE GRAPH or PLANAR EMBEDDING OF THE GRAPH. A plane graph can be defined as a planar graph with a mapping from every node to a point on a plane, and from every edge to a plane curve on that plane, such that the extreme points of each curve are the points mapped from its end nodes, and all curves are disjoint except on their extreme points.

Every graph that can be drawn on a plane can be drawn on the sphere as well, and vice versa, by means of stereographic projection.

Plane graphs can be encoded by combinatorial maps.

The equivalence class of topologically equivalent drawings on the sphere is called a PLANAR MAP. Although a plane graph has an EXTERNAL or UNBOUNDED face, none of the faces of a planar map have a particular status.

Planar graphs generalize to graphs drawable on a surface of a given genus. In this terminology, planar graphs have graph genus 0, since the plane (and the sphere) are surfaces of genus 0. See "graph embedding" for other related topics.


Kuratowski's and Wagner's theorems

The Polish mathematician Kazimierz Kuratowski provided a characterization of planar graphs in terms of forbidden graphs, now known as Kuratowski's theorem:

    A finite graph is planar if and only if it does not contain a subgraph that is a subdivision of the complete graph _K_₅ or the complete bipartite graph _K__(3,3) (utility graph).

A subdivision of a graph results from inserting vertices into edges (for example, changing an edge •——• to •—•—•) zero or more times. Nonplanar_no_subgraph_K_3_3.svg

Instead of considering subdivisions, Wagner's theorem deals with minors:

    A finite graph is planar if and only if it does not have _K_₅ or _K__(3,3) as a minor.

A minor of a graph results from taking a subgraph and repeatedly contracting an edge into a vertex, with each neighbor of the original end-vertices becoming a neighbor of the new vertex.

Kuratowski.gif contains a minor isomorphic to the K_(3,3) graph, and is therefore non-planar]]

Klaus Wagner asked more generally whether any minor-closed class of graphs is determined by a finite set of "forbidden minors". This is now the Robertson–Seymour theorem, proved in a long series of papers. In the language of this theorem, _K_₅ and _K__(3,3) are the forbidden minors for the class of finite planar graphs.


Other planarity criteria

In practice, it is difficult to use Kuratowski's criterion to quickly decide whether a given graph is planar. However, there exist fast algorithms for this problem: for a graph with _n_ vertices, it is possible to determine in time O(_n_) (linear time) whether the graph may be planar or not (see planarity testing).

For a simple, connected, planar graph with _v_ vertices and _e_ edges and _f_ faces, the following simple conditions hold for _v_ ≥ 3:

-   Theorem 1. _e_ ≤ 3_v_ − 6;
-   Theorem 2. If there are no cycles of length 3, then _e_ ≤ 2_v_ − 4.
-   Theorem 3. _f_ ≤ 2_v_ − 4.

In this sense, planar graphs are sparse graphs, in that they have only O(_v_) edges, asymptotically smaller than the maximum O(_v_²). The graph _K__(3,3), for example, has 6 vertices, 9 edges, and no cycles of length 3. Therefore, by Theorem 2, it cannot be planar. Note that these theorems provide necessary conditions for planarity that are not sufficient conditions, and therefore can only be used to prove a graph is not planar, not that it is planar. If both theorem 1 and 2 fail, other methods may be used.

-   Whitney's planarity criterion gives a characterization based on the existence of an algebraic dual;
-   Mac Lane's planarity criterion gives an algebraic characterization of finite planar graphs, via their cycle spaces;
-   The Fraysseix–Rosenstiehl planarity criterion gives a characterization based on the existence of a bipartition of the cotree edges of a depth-first search tree. It is central to the LEFT-RIGHT PLANARITY TESTING ALGORITHM;
-   Schnyder's theorem gives a characterization of planarity in terms of partial order dimension;
-   Colin de Verdière's planarity criterion gives a characterization based on the maximum multiplicity of the second eigenvalue of certain Schrödinger operators defined by the graph.
-   The Hanani–Tutte theorem states that a graph is planar if and only if it has a drawing in which each independent pair of edges crosses an even number of times; it can be used to characterize the planar graphs via a system of equations modulo 2.

Euler's formula

EULER'S FORMULA states that if a finite, connected, planar graph is drawn in the plane without any edge intersections, and _v_ is the number of vertices, _e_ is the number of edges and _f_ is the number of faces (regions bounded by edges, including the outer, infinitely large region), then

_v_ − _e_ + _f_ = 2.

As an illustration, in the butterfly graph given above, _v_ = 5, _e_ = 6 and _f_ = 3. In general, if the property holds for all planar graphs of _f_ faces, any change to the graph that creates an additional face while keeping the graph planar would keep _v_ − _e_ + _f_ an invariant. Since the property holds for all graphs with _f_ = 2, by mathematical induction it holds for all cases. Euler's formula can also be proved as follows: if the graph isn't a tree, then remove an edge which completes a cycle. This lowers both _e_ and _f_ by one, leaving _v_ − _e_ + _f_ constant. Repeat until the remaining graph is a tree; trees have _v_ =  _e_ + 1 and _f_ = 1, yielding _v_ − _e_ + _f_ = 2, i. e., the Euler characteristic is 2.

In a finite, connected, _simple_, planar graph, any face (except possibly the outer one) is bounded by at least three edges and every edge touches at most two faces; using Euler's formula, one can then show that these graphs are _sparse_ in the sense that if _v_ ≥ 3:

_e_ ≤ 3_v_ − 6.

Dodecahedron_schlegel_diagram.png of a regular dodecahedron, forming a planar graph from a convex polyhedron.]] Euler's formula is also valid for convex polyhedra. This is no coincidence: every convex polyhedron can be turned into a connected, simple, planar graph by using the Schlegel diagram of the polyhedron, a perspective projection of the polyhedron onto a plane with the center of perspective chosen near the center of one of the polyhedron's faces. Not every planar graph corresponds to a convex polyhedron in this way: the trees do not, for example. Steinitz's theorem says that the polyhedral graphs formed from convex polyhedra are precisely the finite 3-connected simple planar graphs. More generally, Euler's formula applies to any polyhedron whose faces are simple polygons that form a surface topologically equivalent to a sphere, regardless of its convexity.

Average degree

Connected planar graphs with more than one edge obey the inequality 2e ≥ 3f, because each face has at least three face-edge incidences and each edge contributes exactly two incidences. It follows via algebraic transformations of this inequality with Euler's formula v − e + f = 2 that for finite planar graphs the average degree is strictly less than 6. Graphs with higher average degree cannot be planar.

Coin graphs

Circle_packing_theorem_K5_minus_edge_example.svg We say that two circles drawn in a plane _kiss_ (or _osculate_) whenever they intersect in exactly one point. A "coin graph" is a graph formed by a set of circles, no two of which have overlapping interiors, by making a vertex for each circle and an edge for each pair of circles that kiss. The circle packing theorem, first proved by Paul Koebe in 1936, states that a graph is planar if and only if it is a coin graph.

This result provides an easy proof of Fáry's theorem, that every planar graph can be embedded in the plane in such a way that its edges are straight line segments that do not cross each other. If one places each vertex of the graph at the center of the corresponding circle in a coin graph representation, then the line segments between centers of kissing circles do not cross any of the other edges.

Planar graph density

The density D of a planar graph, or network, is defined as a ratio of the number of edges E to the number of possible edges in a network with N nodes, given by a planar graph (E_(max) = 3N − 6), giving $D = \frac{E-N+1}{2N-5}$. A completely sparse planar graph has D = 0, alternatively a completely dense planar graph has D = 1


Related families of graphs

Maximal planar graphs

Goldner-Harary_graph.svg is maximal planar. All its faces are bounded by three edges.]] A simple graph is called MAXIMAL PLANAR if it is planar but adding any edge (on the given vertex set) would destroy that property. All faces (including the outer one) are then bounded by three edges, explaining the alternative term PLANE TRIANGULATION. The alternative names "triangular graph"[2] or "triangulated graph"[3] have also been used, but are ambiguous, as they more commonly refer to the line graph of a complete graph and to the chordal graphs respectively. Every maximal planar is 3-vertex-connected.

If a maximal planar graph has _v_ vertices with _v_ > 2, then it has precisely 3_v_ − 6 edges and 2_v_ − 4 faces.

Apollonian networks are the maximal planar graphs formed by repeatedly splitting triangular faces into triples of smaller triangles. Equivalently, they are the planar 3-trees.

Strangulated graphs are the graphs in which every peripheral cycle is a triangle. In a maximal planar graph (or more generally a polyhedral graph) the peripheral cycles are the faces, so maximal planar graphs are strangulated. The strangulated graphs include also the chordal graphs, and are exactly the graphs that can be formed by clique-sums (without deleting edges) of complete graphs and maximal planar graphs.[4]

Outerplanar graphs

Outerplanar graphs are graphs with an embedding in the plane such that all vertices belong to the unbounded face of the embedding. Every outerplanar graph is planar, but the converse is not true: _K_₄ is planar but not outerplanar. A theorem similar to Kuratowski's states that a finite graph is outerplanar if and only if it does not contain a subdivision of _K_₄ or of _K__(2,3). The above is a direct corollary of the fact that a graph _G_ is outerplanar if the graph formed from _G_ by adding a new vertex, with edges connecting it to all the other vertices, is a planar graph.[5]

A 1-outerplanar embedding of a graph is the same as an outerplanar embedding. For _k_ > 1 a planar embedding is _k_-outerplanar if removing the vertices on the outer face results in a (_k_ − 1)-outerplanar embedding. A graph is _k_-outerplanar if it has a _k_-outerplanar embedding.

Halin graphs

A Halin graph is a graph formed from an undirected plane tree (with no degree-two nodes) by connecting its leaves into a cycle, in the order given by the plane embedding of the tree. Equivalently, it is a polyhedral graph in which one face is adjacent to all the others. Every Halin graph is planar. Like outerplanar graphs, Halin graphs have low treewidth, making many algorithmic problems on them more easily solved than in unrestricted planar graphs.[6]

Other related families

An apex graph is a graph that may be made planar by the removal of one vertex, and a _k_-apex graph is a graph that may be made planar by the removal of at most _k_ vertices.

A 1-planar graph is a graph that may be drawn in the plane with at most one simple crossing per edge, and a _k_-planar graph is a graph that may be drawn with at most _k_ simple crossings per edge.

A map graph is a graph formed from a set of finitely many simply-connected interior-disjoint regions in the plane by connecting two regions when they share at least one boundary point. When at most three regions meet at a point, the result is a planar graph, but when four or more regions meet at a point, the result can be nonplanar.

A toroidal graph is a graph that can be embedded without crossings on the torus. More generally, the genus of a graph is the minimum genus of a two-dimensional surface into which the graph may be embedded; planar graphs have genus zero and nonplanar toroidal graphs have genus one.

Any graph may be embedded into three-dimensional space without crossings. However, a three-dimensional analogue of the planar graphs is provided by the linklessly embeddable graphs, graphs that can be embedded into three-dimensional space in such a way that no two cycles are topologically linked with each other. In analogy to Kuratowski's and Wagner's characterizations of the planar graphs as being the graphs that do not contain _K_₅ or _K__(3,3) as a minor, the linklessly embeddable graphs may be characterized as the graphs that do not contain as a minor any of the seven graphs in the Petersen family. In analogy to the characterizations of the outerplanar and planar graphs as being the graphs with Colin de Verdière graph invariant at most two or three, the linklessly embeddable graphs are the graphs that have Colin de Verdière invariant at most four.

An upward planar graph is a directed acyclic graph that can be drawn in the plane with its edges as non-crossing curves that are consistently oriented in an upward direction. Not every planar directed acyclic graph is upward planar, and it is NP-complete to test whether a given graph is upward planar.


Enumeration of planar graphs

The asymptotic for the number of (labeled) planar graphs on n vertices is g ⋅ n^( − 7/2) ⋅ γ^(n) ⋅ n!, where γ ≈ 27.22687 and g ≈ 0.43 × 10^( − 5).[7]

Almost all planar graphs have an exponential number of automorphisms.[8]

The number of unlabeled (non-isomorphic) planar graphs on n vertices is between 27.2^(n) and 30.06^(n).[9]


Other facts and definitions

The Four Color Theorem states that every planar graph is 4-colorable (i.e. 4-partite).

Fáry's theorem states that every simple planar graph admits an embedding in the plane such that all edges are straight line segments which don't intersect. A universal point set is a set of points such that every planar graph with _n_ vertices has such an embedding with all vertices in the point set; there exist universal point sets of quadratic size, formed by taking a rectangular subset of the integer lattice. Every simple outerplanar graph admits an embedding in the plane such that all vertices lie on a fixed circle and all edges are straight line segments that lie inside the disk and don't intersect, so _n_-vertex regular polygons are universal for outerplanar graphs.

dual_graphs.svg]] Given an embedding _G_ of a (not necessarily simple) connected graph in the plane without edge intersections, we construct the DUAL GRAPH _G_* as follows: we choose one vertex in each face of _G_ (including the outer face) and for each edge _e_ in _G_ we introduce a new edge in _G_* connecting the two vertices in _G_* corresponding to the two faces in _G_ that meet at _e_. Furthermore, this edge is drawn so that it crosses _e_ exactly once and that no other edge of _G_ or _G_* is intersected. Then _G_* is again the embedding of a (not necessarily simple) planar graph; it has as many edges as _G_, as many vertices as _G_ has faces and as many faces as _G_ has vertices. The term "dual" is justified by the fact that _G_** = _G_; here the equality is the equivalence of embeddings on the sphere. If _G_ is the planar graph corresponding to a convex polyhedron, then _G_* is the planar graph corresponding to the dual polyhedron.

Duals are useful because many properties of the dual graph are related in simple ways to properties of the original graph, enabling results to be proven about graphs by examining their dual graphs.

While the dual constructed for a particular embedding is unique (up to isomorphism), graphs may have different (i.e. non-isomorphic) duals, obtained from different (i.e. non-homeomorphic) embeddings.

A _Euclidean graph_ is a graph in which the vertices represent points in the plane, and the edges are assigned lengths equal to the Euclidean distance between those points; see Geometric graph theory.

A plane graph is said to be _convex_ if all of its faces (including the outer face) are convex polygons. A planar graph may be drawn convexly if and only if it is a subdivision of a 3-vertex-connected planar graph.

Scheinerman's conjecture (now a theorem) states that every planar graph can be represented as an intersection graph of line segments in the plane.

The planar separator theorem states that every _n_-vertex planar graph can be partitioned into two subgraphs of size at most 2_n_/3 by the removal of O() vertices. As a consequence, planar graphs also have treewidth and branch-width O().

For two planar graphs with _v_ vertices, it is possible to determine in time O(_v_) whether they are isomorphic or not (see also graph isomorphism problem).[10]

The meshedness coefficient of a planar graph normalizes its number of bounded faces (the same as the circuit rank of the graph, by Mac Lane's planarity criterion) by dividing it by 2_n_ − 5, the maximum possible number of bounded faces in a planar graph with _n_ vertices. Thus, it ranges from 0 for trees to 1 for maximal planar graphs.[11]


See also

-   Combinatorial map a combinatorial object that can encode plane graphs
-   Planarization, a planar graph formed from a drawing with crossings by replacing each crossing point by a new vertex
-   Thickness (graph theory), the smallest number of planar graphs into which the edges of a given graph may be partitioned
-   Planarity, a puzzle computer game in which the objective is to embed a planar graph onto a plane
-   Sprouts (game), a pencil-and-paper game where a planar graph subject to certain constraints is constructed as part of the game play
-   Three utilities problem, a popular puzzle


Notes


References

-   .

-   .

-   .

-   .

-   . Special Issue on Graph Drawing.

-   D.A. Bader and S. Sreshta, A New Parallel Algorithm for Planarity Testing, UNM-ECE Technical Report 03-002, October 1, 2003.
-   .


External links

-   Edge Addition Planarity Algorithm Source Code, version 1.0 — Free C source code for reference implementation of Boyer–Myrvold planarity algorithm, which provides both a combinatorial planar embedder and Kuratowski subgraph isolator. An open source project with free licensing provides the Edge Addition Planarity Algorithms, current version.
-   Public Implementation of a Graph Algorithm Library and Editor — GPL graph algorithm library including planarity testing, planarity embedder and Kuratowski subgraph exhibition in linear time.
-   Boost Graph Library tools for planar graphs, including linear time planarity testing, embedding, Kuratowski subgraph isolation, and straight-line drawing.
-   3 Utilities Puzzle and Planar Graphs
-   NetLogo Planarity model — NetLogo version of John Tantalo's game

Planar_graphs Category:Graph families Category:Intersection classes of graphs

[1]

[2] .

[3] .

[4] .

[5] .

[6] .

[7]

[8]

[9]

[10] I. S. Filotti, Jack N. Mayer. A polynomial-time algorithm for determining the isomorphism of graphs of fixed genus. Proceedings of the 12th Annual ACM Symposium on Theory of Computing, p.236–243. 1980.

[11] .