Delaunay_circumcircles_vectorial.svg In mathematics and computational geometry, a DELAUNAY TRIANGULATION (also known as a DELONE TRIANGULATION) for a given set P of discrete points in a plane is a triangulation DT(P) such that no point in P is inside the circumcircle of any triangle in DT(P). Delaunay triangulations maximize the minimum angle of all the angles of the triangles in the triangulation; they tend to avoid sliver triangles. The triangulation is named after Boris Delaunay for his work on this topic from 1934.[1]

For a set of points on the same line there is no Delaunay triangulation (the notion of triangulation is degenerate for this case). For four or more points on the same circle (e.g., the vertices of a rectangle) the Delaunay triangulation is not unique: each of the two possible triangulations that split the quadrangle into two triangles satisfies the "Delaunay condition", i.e., the requirement that the circumcircles of all triangles have empty interiors.

By considering circumscribed spheres, the notion of Delaunay triangulation extends to three and higher dimensions. Generalizations are possible to metrics other than Euclidean distance. However, in these cases a Delaunay triangulation is not guaranteed to exist or be unique.


Relationship with the Voronoi diagram

The Delaunay triangulation of a discrete point set P in general position corresponds to the dual graph of the Voronoi diagram for P. The circumcenters of Delaunay triangles are the vertices of the Voronoi diagram. In the 2D case, the Voronoi vertices are connected via edges, that can be derived from adjacency-relationships of the Delaunay triangles: If two triangles share an edge in the Delaunay triangulation, their circumcenters are to be connected with an edge in the Voronoi tesselation.

Special cases where this relationship does not hold, or is ambiguous, include cases like:

-   Three or more collinear points, where the circumcircles are of infinite radii.
-   Four or more points on a perfect circle, where the triangulation is ambiguous and all circumcenters are trivially identical.


_d_-dimensional Delaunay

For a set P of points in the (_d_-dimensional) Euclidean space, a DELAUNAY TRIANGULATION is a triangulation DT(P) such that no point in P is inside the circum-hypersphere of any _d_-simplex in DT(P). It is known[2] that there exists a unique Delaunay triangulation for P if P is a set of points in _general position_; that is, the affine hull of P is _d_-dimensional and no set of _d_ + 2 points in P lie on the boundary of a ball whose interior does not intersect P.

The problem of finding the Delaunay triangulation of a set of points in _d_-dimensional Euclidean space can be converted to the problem of finding the convex hull of a set of points in (_d_ + 1)-dimensional space, by giving each point _p_ an extra coordinate equal to |_p_|², taking the bottom side of the convex hull, and mapping back to _d_-dimensional space by deleting the last coordinate. As the convex hull is unique, so is the triangulation, assuming all facets of the convex hull are simplices. Nonsimplicial facets only occur when _d_ + 2 of the original points lie on the same _d_-hypersphere, i.e., the points are not in general position. [3]


Properties

_Example_steps_in_Delauney_triangularization.png Delaunay_triangulation_does_not_minimize_edge_length.gif

Let _n_ be the number of points and _d_ the number of dimensions.

-   The union of all simplices in the triangulation is the convex hull of the points.
-   The Delaunay triangulation contains _O_(_n_^(⌈_d_ / 2⌉)) simplices.[4]
-   In the plane (_d_ = 2), if there are _b_ vertices on the convex hull, then any triangulation of the points has at most 2_n_ − 2 − _b_ triangles, plus one exterior face (see Euler characteristic).
-   If points are distributed according to a Poisson process in the plane with constant intensity, then each vertex has on average six surrounding triangles. More generally for the same process in _d_ dimensions the average number of neighbors is a constant depending only on _d_.[5]
-   In the plane, the Delaunay triangulation maximizes the minimum angle. Compared to any other triangulation of the points, the smallest angle in the Delaunay triangulation is at least as large as the smallest angle in any other. However, the Delaunay triangulation does not necessarily minimize the maximum angle.[6] The Delaunay triangulation also does not necessarily minimize the length of the edges.
-   A circle circumscribing any Delaunay triangle does not contain any other input points in its interior.
-   If a circle passing through two of the input points doesn't contain any other of them in its interior, then the segment connecting the two points is an edge of a Delaunay triangulation of the given points.
-   Each triangle of the Delaunay triangulation of a set of points in _d_-dimensional spaces corresponds to a facet of convex hull of the projection of the points onto a (_d_ + 1)-dimensional paraboloid, and vice versa.
-   The closest neighbor _b_ to any point _p_ is on an edge _bp_ in the Delaunay triangulation since the nearest neighbor graph is a subgraph of the Delaunay triangulation.
-   The Delaunay triangulation is a geometric spanner: In the plane (_d_ = 2), the shortest path between two vertices, along Delaunay edges, is known to be no longer than $\frac{4\pi}{3\sqrt{3}} \approx 2.418$ times the Euclidean distance between them.[7]


Visual Delaunay definition: Flipping

From the above properties an important feature arises: Looking at two triangles ABD and BCD with the common edge BD (see figures), if the sum of the angles α and γ is less than or equal to 180°, the triangles meet the Delaunay condition.

This is an important property because it allows the use of a _flipping_ technique. If two triangles do not meet the Delaunay condition, switching the common edge BD for the common edge AC produces two triangles that do meet the Delaunay condition:

 File:Delaunay_geometry.png|This triangulation does not meet the Delaunay condition (the sum of α and γ is bigger than 180°).
 File:Point inside circle - Delaunay condition broken.svg |This pair of triangles does not meet the Delaunay condition (the circumcircle contains more than three points).
 File:Edge Flip - Delaunay condition ok.svg|_Flipping_ the common edge produces a valid Delaunay triangulation for the four points.

This operation is called a _flip_, and can be generalised to three and higher dimensions.[8]


Algorithms

Point_inside_circle_-_Delaunay_condition_broken_-_Labelled.svg Many algorithms for computing Delaunay triangulations rely on fast operations for detecting when a point is within a triangle's circumcircle and an efficient data structure for storing triangles and edges. In two dimensions, one way to detect if point _D_ lies in the circumcircle of _A_, _B_, _C_ is to evaluate the determinant:[9]



\begin{align} & \begin{vmatrix} A_x & A_y & A_x^2 + A_y^2 & 1\\ B_x & B_y & B_x^2 + B_y^2 & 1\\ C_x & C_y & C_x^2 + C_y^2 & 1\\ D_x & D_y & D_x^2 + D_y^2 & 1 \end{vmatrix}



\BEGIN{VMATRIX} A_X - D_X & A_Y - D_Y & (A_X^2 - D_X^2) + (A_Y^2 - D_Y^2) \\ B_X - D_X & B_Y - D_Y & (B_X^2 - D_X^2) + (B_Y^2 - D_Y^2) \\ C_X - D_X & C_Y - D_Y & (C_X^2 - D_X^2) + (C_Y^2 - D_Y^2) \END{VMATRIX} \\[8PT]


{} & \begin{vmatrix} A_x - D_x & A_y - D_y & (A_x - D_x)^2 + (A_y - D_y)^2 \\ B_x - D_x & B_y - D_y & (B_x - D_x)^2 + (B_y - D_y)^2 \\ C_x - D_x & C_y - D_y & (C_x - D_x)^2 + (C_y - D_y)^2 \end{vmatrix} > 0 \end{align}

When _A_, _B_ and _C_ are sorted in a counterclockwise order, this determinant is positive if and only if _D_ lies inside the circumcircle.

Flip algorithms

As mentioned above, if a triangle is non-Delaunay, we can flip one of its edges. This leads to a straightforward algorithm: construct any triangulation of the points, and then flip edges until no triangle is non-Delaunay. Unfortunately, this can take Ω(_n_²) edge flips.[10] While this algorithm can be generalised to three and higher dimensions, its convergence is not guaranteed in these cases, as it is conditioned to the connectedness of the underlying flip graph: this graph is connected for two dimensional sets of points, but may be disconnected in higher dimensions.[11]

Incremental

The most straightforward way of efficiently computing the Delaunay triangulation is to repeatedly add one vertex at a time, retriangulating the affected parts of the graph. When a vertex _v_ is added, we split in three the triangle that contains _v_, then we apply the flip algorithm. Done naïvely, this will take O(_n_) time: we search through all the triangles to find the one that contains _v_, then we potentially flip away every triangle. Then the overall runtime is O(_n_²).

If we insert vertices in random order, it turns out (by a somewhat intricate proof) that each insertion will flip, on average, only O(1) triangles – although sometimes it will flip many more.[12] This still leaves the point location time to improve. We can store the history of the splits and flips performed: each triangle stores a pointer to the two or three triangles that replaced it. To find the triangle that contains _v_, we start at a root triangle, and follow the pointer that points to a triangle that contains _v_, until we find a triangle that has not yet been replaced. On average, this will also take O(log _n_) time. Over all vertices, then, this takes O(_n_ log _n_) time.[13] While the technique extends to higher dimension (as proved by Edelsbrunner and Shah[14]), the runtime can be exponential in the dimension even if the final Delaunay triangulation is small.

The Bowyer–Watson algorithm provides another approach for incremental construction. It gives an alternative to edge flipping for computing the Delaunay triangles containing a newly inserted vertex.

Unfortunately the flipping-based algorithms are generally hard to be parallelized, since adding some certain point (e.g. the center point of a wagon wheel) can lead to up to O(_n_) consecutive flips. Blelloch et al.[15] proposed another version of incremental algorithm based on rip-and-tent, which is practical and highly parallelized with polylogarithmic span.

Divide and conquer

A divide and conquer algorithm for triangulations in two dimensions was developed by Lee and Schachter and improved by Guibas and Stolfi[16] and later by Dwyer. In this algorithm, one recursively draws a line to split the vertices into two sets. The Delaunay triangulation is computed for each set, and then the two sets are merged along the splitting line. Using some clever tricks, the merge operation can be done in time O(_n_), so the total running time is O(_n_ log _n_).[17]

For certain types of point sets, such as a uniform random distribution, by intelligently picking the splitting lines the expected time can be reduced to O(_n_ log log _n_) while still maintaining worst-case performance.

A divide and conquer paradigm to performing a triangulation in _d_ dimensions is presented in "DeWall: A fast divide and conquer Delaunay triangulation algorithm in E^(_d_)" by P. Cignoni, C. Montani, R. Scopigno.[18]

The divide and conquer algorithm has been shown to be the fastest DT generation technique.[19][20]

Sweephull

Sweephull[21] is a hybrid technique for 2D Delaunay triangulation that uses a radially propagating sweep-hull, and a flipping algorithm. The sweep-hull is created sequentially by iterating a radially-sorted set of 2D points, and connecting triangles to the visible part of the convex hull, which gives a non-overlapping triangulation. One can build a convex hull in this manner so long as the order of points guarantees no point would fall within the triangle. But, radially sorting should minimize flipping by being highly Delaunay to start. This is then paired with a final iterative triangle flipping step.


Applications

The Euclidean minimum spanning tree of a set of points is a subset of the Delaunay triangulation of the same points, and this can be exploited to compute it efficiently.

For modelling terrain or other objects given a set of sample points, the Delaunay triangulation gives a nice set of triangles to use as polygons in the model. In particular, the Delaunay triangulation avoids narrow triangles (as they have large circumcircles compared to their area). See triangulated irregular network.

Delaunay triangulations can be used to determine the density or intensity of points samplings by means of the Delaunay tessellation field estimator (DTFE).

Delaunay_Triangulation_(100_Points).svg Delaunay triangulations are often used to build meshes for space-discretised solvers such as the finite element method and the finite volume method of physics simulation, because of the angle guarantee and because fast triangulation algorithms have been developed. Typically, the domain to be meshed is specified as a coarse simplicial complex; for the mesh to be numerically stable, it must be refined, for instance by using Ruppert's algorithm.

The increasing popularity of finite element method and boundary element method techniques increases the incentive to improve automatic meshing algorithms. However, all of these algorithms can create distorted and even unusable grid elements. Fortunately, several techniques exist which can take an existing mesh and improve its quality. For example, smoothing (also referred to as mesh refinement) is one such method, which repositions nodal locations so as to minimize element distortion. The stretched grid method allows the generation of pseudo-regular meshes that meet the Delaunay criteria easily and quickly in a one-step solution.

Constrained Delaunay triangulation has found applications in path planning in automated driving [22]


See also

-   Beta skeleton
-   Centroidal Voronoi tessellation
-   Ruppert's algorithm – Delaunay refinement
-   Delone set – also known as a Delaunay set
-   Disordered hyperuniformity
-   Gabriel graph
-   Giant's Causeway
-   Gradient pattern analysis
-   Farthest-first traversal – incremental Voronoi insertion
-   Linde–Buzo–Gray algorithm
-   Lloyd's algorithm – Voronoi iteration
-   Meyer set
-   Pisot–Vijayaraghavan number
-   Pitteway triangulation
-   Plesiohedron
-   Hamming bound – sphere-packing bound
-   Salem number
-   Steiner point (triangle)
-   Urquhart graph
-   Convex hull algorithms
-   Quasicrystal
-   Quasitriangulation


References


External links

-   Delaunay triangulation in CGAL, the Computational Geometry Algorithms Library:
    -   Mariette Yvinec. 2D Triangulation. Retrieved April 2010.
    -   Pion, Sylvain; Teillaud, Monique. 3D Triangulations. Retrieved April 2010.
    -   Hornus, Samuel; Devillers, Olivier; Jamin, Clément. dD Triangulations.
    -   Hert, Susan; Seel, Michael. dD Convex Hulls and Delaunay Triangulations. Retrieved April 2010.
-   "Delaunay triangulation". Wolfram MathWorld. Retrieved April 2010.

Category:Triangulation (geometry) Category:Geometric algorithms

[1]

[2]

[3]

[4]

[5] . As cited by .

[6] .

[7] .

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15] Blelloch, Guy; Gu, Yan; Shun, Julian; and Sun, Yihan. Parallelism in Randomized Incremental Algorithms . SPAA 2016. doi:10.1145/2935764.2935766.

[16]

[17]

[18]

[19] A Comparison of Sequential Delaunay Triangulation Algorithms

[20]

[21]

[22]