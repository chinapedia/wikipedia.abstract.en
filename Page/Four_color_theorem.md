Four_Colour_Map_Example.svgMap_of_United_States_vivid_colors_shown.png In mathematics, the FOUR COLOR THEOREM, or the FOUR COLOR MAP THEOREM, states that, given any separation of a plane into contiguous regions, producing a figure called a _map_, no more than four colors are required to color the regions of the map so that no two adjacent regions have the same color. _Adjacent_ means that two regions share a common boundary curve segment, not merely a corner where three or more regions meet.[1] It was the first major theorem to be proved using a computer. Initially, this proof was not accepted by all mathematicians because the computer-assisted proof was infeasible for a human to check by hand. Since then the proof has gained wide acceptance, although some doubters remain.

The four color theorem was proved in 1976 by Kenneth Appel and Wolfgang Haken after many false proofs and counterexamples (unlike the five color theorem, a theorem that states that five colors are enough to color a map, which was proved in the 1800s). To dispel any remaining doubts about the Appel–Haken proof, a simpler proof using the same ideas and still relying on computers was published in 1997 by Robertson, Sanders, Seymour, and Thomas. Additionally, in 2005, the theorem was proved by Georges Gonthier with general-purpose theorem-proving software.


Precise formulation of the theorem

In graph-theoretic terms, the theorem states that for loopless planar G, the chromatic number of its dual graph is χ(G^(*)) ≤ 4.

The intuitive statement of the four color theorem, i.e. "given any separation of a plane into contiguous regions, the regions can be colored using at most four colors so that no two adjacent regions have the same color", needs to be interpreted appropriately to be correct.

First, regions are adjacent if they share a boundary segment; two regions that share only isolated boundary points are not considered adjacent. Second, bizarre regions, such as those with finite area but infinitely long perimeter, are not allowed; maps with such regions can require more than four colors. (To be safe, we can restrict to regions whose boundaries consist of finitely many straight line segments. It is allowed that a region entirely surround one or more other regions.) Note that the notion of "contiguous region" (technically: connected open subset of the plane) is not the same as that of a "country" on regular maps, since countries need not be contiguous (e.g., the Cabinda Province as part of Angola, Nakhchivan as part of Azerbaijan, Kaliningrad as part of Russia, and Alaska as part of the United States are not contiguous). If we required the entire territory of a country to receive the same color, then four colors are not always sufficient. For instance, consider a simplified map:

4CT_Inadequacy_Example.svg

In this map, the two regions labeled _A_ belong to the same country. If we wanted those regions to receive the same color, then five colors would be required, since the two _A_ regions together are adjacent to four other regions, each of which is adjacent to all the others. A similar construction also applies if a single color is used for all bodies of water, as is usual on real maps. For maps in which more than one country may have multiple disconnected regions, six or more colors might be required.

Four_Colour_Planar_Graph.svg A simpler statement of the theorem uses graph theory. The set of regions of a map can be represented more abstractly as an undirected graph that has a vertex for each region and an edge for every pair of regions that share a boundary segment. This graph is planar: it can be drawn in the plane without crossings by placing each vertex at an arbitrarily chosen location within the region to which it corresponds, and by drawing the edges as curves without crossings that lead from one region's vertex, across a shared boundary segment, to an adjacent region's vertex. Conversely any planar graph can be formed from a map in this way. In graph-theoretic terminology, the four-color theorem states that the vertices of every planar graph can be colored with at most four colors so that no two adjacent vertices receive the same color, or for short:

    Every planar graph is four-colorable.[2]


History

Early proof attempts

DeMorganFourColour.png, 23 Oct. 1852]] As far as is known,[3] the conjecture was first proposed on October 23, 1852[4] when Francis Guthrie, while trying to color the map of counties of England, noticed that only four different colors were needed. At the time, Guthrie's brother, Frederick, was a student of Augustus De Morgan (the former advisor of Francis) at University College London. Francis inquired with Frederick regarding it, who then took it to De Morgan (Francis Guthrie graduated later in 1852, and later became a professor of mathematics in South Africa). According to De Morgan:

  "A student of mine [Guthrie] asked me to day to give him a reason for a fact which I did not know was a fact—and do not yet. He says that if a figure be any how divided and the compartments differently colored so that figures with any portion of common boundary _line_ are differently colored—four colors may be wanted but not more—the following is his case in which four colors _are_ wanted. Query cannot a necessity for five or more be invented…"

"F.G.", perhaps one of the two Guthries, published the question in _The Athenaeum_ in 1854,[5] and De Morgan posed the question again in the same magazine in 1860.[6] Another early published reference by in turn credits the conjecture to De Morgan.

There were several early failed attempts at proving the theorem. De Morgan believed that it followed from a simple fact about four regions, though he didn't believe that fact could be derived from more elementary facts.

  This arises in the following way. We never need four colors in a neighborhood unless there be four counties, each of which has boundary lines in common with each of the other three. Such a thing cannot happen with four areas unless one or more of them be inclosed by the rest; and the color used for the inclosed county is thus set free to go on with. Now this principle, that four areas cannot each have common boundary with all the other three without inclosure, is not, we fully believe, capable of demonstration upon anything more evident and more elementary; it must stand as a postulate.[7]

One alleged proof was given by Alfred Kempe in 1879, which was widely acclaimed;[8] another was given by Peter Guthrie Tait in 1880. It was not until 1890 that Kempe's proof was shown incorrect by Percy Heawood, and in 1891, Tait's proof was shown incorrect by Julius Petersen—each false proof stood unchallenged for 11 years.

In 1890, in addition to exposing the flaw in Kempe's proof, Heawood proved the five color theorem and generalized the four color conjecture to surfaces of arbitrary genus.

Tait, in 1880, showed that the four color theorem is equivalent to the statement that a certain type of graph (called a snark in modern terminology) must be non-planar.

In 1943, Hugo Hadwiger formulated the Hadwiger conjecture, a far-reaching generalization of the four-color problem that still remains unsolved.

Proof by computer

During the 1960s and 1970s German mathematician Heinrich Heesch developed methods of using computers to search for a proof. Notably he was the first to use discharging for proving the theorem, which turned out to be important in the unavoidability portion of the subsequent Appel–Haken proof. He also expanded on the concept of reducibility and, along with Ken Durre, developed a computer test for it. Unfortunately, at this critical juncture, he was unable to procure the necessary supercomputer time to continue his work.

Others took up his methods and his computer-assisted approach. While other teams of mathematicians were racing to complete proofs, Kenneth Appel and Wolfgang Haken at the University of Illinois announced, on June 21, 1976,[9] that they had proved the theorem. They were assisted in some algorithmic work by John A. Koch.

If the four-color conjecture were false, there would be at least one map with the smallest possible number of regions that requires five colors. The proof showed that such a minimal counterexample cannot exist, through the use of two technical concepts:[10]

1.  An _unavoidable set_ is a set of configurations such that every map that satisfies some necessary conditions for being a minimal non-4-colorable triangulation (such as having minimum degree 5) must have at least one configuration from this set.
2.  A _reducible configuration_ is an arrangement of countries that cannot occur in a minimal counterexample. If a map contains a reducible configuration, then the map can be reduced to a smaller map. This smaller map has the condition that if it can be colored with four colors, then the original map can also. This implies that if the original map cannot be colored with four colors the smaller map can't either and so the original map is not minimal.

Using mathematical rules and procedures based on properties of reducible configurations, Appel and Haken found an unavoidable set of reducible configurations, thus proving that a minimal counterexample to the four-color conjecture could not exist. Their proof reduced the infinitude of possible maps to 1,936 reducible configurations (later reduced to 1,476) which had to be checked one by one by computer and took over a thousand hours. This reducibility part of the work was independently double checked with different programs and computers. However, the unavoidability part of the proof was verified in over 400 pages of microfiche, which had to be checked by hand with the assistance of Haken's daughter Dorothea Blostein .

Appel and Haken's announcement was widely reported by the news media around the world, and the math department at the University of Illinois used a postmark stating "Four colors suffice." At the same time the unusual nature of the proof—it was the first major theorem to be proved with extensive computer assistance—and the complexity of the human-verifiable portion aroused considerable controversy .

In the early 1980s, rumors spread of a flaw in the Appel–Haken proof. Ulrich Schmidt at RWTH Aachen had examined Appel and Haken's proof for his master's thesis that was published in 1981 . He had checked about 40% of the unavoidability portion and found a significant error in the discharging procedure . In 1986, Appel and Haken were asked by the editor of _Mathematical Intelligencer_ to write an article addressing the rumors of flaws in their proof. They responded that the rumors were due to a "misinterpretation of [Schmidt's] results" and obliged with a detailed article . Their magnum opus, _Every Planar Map is Four-Colorable_, a book claiming a complete and detailed proof (with a microfiche supplement of over 400 pages), appeared in 1989; it explained and corrected the error discovered by Schmidt as well as several further errors found by others .

Simplification and verification

Since the proving of the theorem, efficient algorithms have been found for 4-coloring maps requiring only O(_n_²) time, where _n_ is the number of vertices. In 1996, Neil Robertson, Daniel P. Sanders, Paul Seymour, and Robin Thomas created a quadratic-time algorithm, improving on a quartic-time algorithm based on Appel and Haken’s proof.[11] This new proof is similar to Appel and Haken's but more efficient because it reduces the complexity of the problem and requires checking only 633 reducible configurations. Both the unavoidability and reducibility parts of this new proof must be executed by computer and are impractical to check by hand. In 2001, the same authors announced an alternative proof, by proving the snark theorem.[12]

In 2005, Benjamin Werner and Georges Gonthier formalized a proof of the theorem inside the Coq proof assistant. This removed the need to trust the various computer programs used to verify particular cases; it is only necessary to trust the Coq kernel.


Summary of proof ideas

The following discussion is a summary based on the introduction to _Every Planar Map is Four Colorable_ . Although flawed, Kempe's original purported proof of the four color theorem provided some of the basic tools later used to prove it. The explanation here is reworded in terms of the modern graph theory formulation above.

Kempe's argument goes as follows. First, if planar regions separated by the graph are not _triangulated_, i.e. do not have exactly three edges in their boundaries, we can add edges without introducing new vertices in order to make every region triangular, including the unbounded outer region. If this triangulated graph is colorable using four colors or fewer, so is the original graph since the same coloring is valid if edges are removed. So it suffices to prove the four color theorem for triangulated graphs to prove it for all planar graphs, and without loss of generality we assume the graph is triangulated.

Suppose _v_, _e_, and _f_ are the number of vertices, edges, and regions (faces). Since each region is triangular and each edge is shared by two regions, we have that 2_e_ = 3_f_. This together with Euler's formula, _v_ − _e_ + _f_ = 2, can be used to show that 6_v_ − 2_e_ = 12. Now, the _degree_ of a vertex is the number of edges abutting it. If _v__(_n_) is the number of vertices of degree _n_ and _D_ is the maximum degree of any vertex,

$$6v - 2e = 6\sum_{i=1}^D v_i - \sum_{i=1}^D iv_i = \sum_{i=1}^D (6 - i)v_i = 12.$$
But since 12 > 0 and 6 − _i_ ≤ 0 for all _i_ ≥ 6, this demonstrates that there is at least one vertex of degree 5 or less.

If there is a graph requiring 5 colors, then there is a _minimal_ such graph, where removing any vertex makes it four-colorable. Call this graph _G_. Then _G_ cannot have a vertex of degree 3 or less, because if _d_(_v_) ≤ 3, we can remove _v_ from _G_, four-color the smaller graph, then add back _v_ and extend the four-coloring to it by choosing a color different from its neighbors.

Kempe_Chain.png Kempe also showed correctly that _G_ can have no vertex of degree 4. As before we remove the vertex _v_ and four-color the remaining vertices. If all four neighbors of _v_ are different colors, say red, green, blue, and yellow in clockwise order, we look for an alternating path of vertices colored red and blue joining the red and blue neighbors. Such a path is called a Kempe chain. There may be a Kempe chain joining the red and blue neighbors, and there may be a Kempe chain joining the green and yellow neighbors, but not both, since these two paths would necessarily intersect, and the vertex where they intersect cannot be colored. Suppose it is the red and blue neighbors that are not chained together. Explore all vertices attached to the red neighbor by red-blue alternating paths, and then reverse the colors red and blue on all these vertices. The result is still a valid four-coloring, and _v_ can now be added back and colored red.

This leaves only the case where _G_ has a vertex of degree 5; but Kempe's argument was flawed for this case. Heawood noticed Kempe's mistake and also observed that if one was satisfied with proving only five colors are needed, one could run through the above argument (changing only that the minimal counterexample requires 6 colors) and use Kempe chains in the degree 5 situation to prove the five color theorem.

In any case, to deal with this degree 5 vertex case requires a more complicated notion than removing a vertex. Rather the form of the argument is generalized to considering _configurations_, which are connected subgraphs of _G_ with the degree of each vertex (in G) specified. For example, the case described in degree 4 vertex situation is the configuration consisting of a single vertex labelled as having degree 4 in _G_. As above, it suffices to demonstrate that if the configuration is removed and the remaining graph four-colored, then the coloring can be modified in such a way that when the configuration is re-added, the four-coloring can be extended to it as well. A configuration for which this is possible is called a _reducible configuration_. If at least one of a set of configurations must occur somewhere in G, that set is called _unavoidable_. The argument above began by giving an unavoidable set of five configurations (a single vertex with degree 1, a single vertex with degree 2, ..., a single vertex with degree 5) and then proceeded to show that the first 4 are reducible; to exhibit an unavoidable set of configurations where every configuration in the set is reducible would prove the theorem.

Because _G_ is triangular, the degree of each vertex in a configuration is known, and all edges internal to the configuration are known, the number of vertices in _G_ adjacent to a given configuration is fixed, and they are joined in a cycle. These vertices form the _ring_ of the configuration; a configuration with _k_ vertices in its ring is a _k_-ring configuration, and the configuration together with its ring is called the _ringed configuration_. As in the simple cases above, one may enumerate all distinct four-colorings of the ring; any coloring that can be extended without modification to a coloring of the configuration is called _initially good_. For example, the single-vertex configuration above with 3 or less neighbors were initially good. In general, the surrounding graph must be systematically recolored to turn the ring's coloring into a good one, as was done in the case above where there were 4 neighbors; for a general configuration with a larger ring, this requires more complex techniques. Because of the large number of distinct four-colorings of the ring, this is the primary step requiring computer assistance.

Finally, it remains to identify an unavoidable set of configurations amenable to reduction by this procedure. The primary method used to discover such a set is the method of discharging. The intuitive idea underlying discharging is to consider the planar graph as an electrical network. Initially positive and negative "electrical charge" is distributed amongst the vertices so that the total is positive.

Recall the formula above:

$$\sum_{i=1}^D (6 - i)v_i = 12.$$

Each vertex is assigned an initial charge of 6-deg(_v_). Then one "flows" the charge by systematically redistributing the charge from a vertex to its neighboring vertices according to a set of rules, the _discharging procedure_. Since charge is preserved, some vertices still have positive charge. The rules restrict the possibilities for configurations of positively charged vertices, so enumerating all such possible configurations gives an unavoidable set.

As long as some member of the unavoidable set is not reducible, the discharging procedure is modified to eliminate it (while introducing other configurations). Appel and Haken's final discharging procedure was extremely complex and, together with a description of the resulting unavoidable configuration set, filled a 400-page volume, but the configurations it generated could be checked mechanically to be reducible. Verifying the volume describing the unavoidable configuration set itself was done by peer review over a period of several years.

A technical detail not discussed here but required to complete the proof is _immersion reducibility_.


False disproofs

The four color theorem has been notorious for attracting a large number of false proofs and disproofs in its long history. At first, _The New York Times_ refused as a matter of policy to report on the Appel–Haken proof, fearing that the proof would be shown false like the ones before it . Some alleged proofs, like Kempe's and Tait's mentioned above, stood under public scrutiny for over a decade before they were refuted. But many more, authored by amateurs, were never published at all.

Generally, the simplest, though invalid, counterexamples attempt to create one region which touches all other regions. This forces the remaining regions to be colored with only three colors. Because the four color theorem is true, this is always possible; however, because the person drawing the map is focused on the one large region, they fail to notice that the remaining regions can in fact be colored with three colors.

This trick can be generalized: there are many maps where if the colors of some regions are selected beforehand, it becomes impossible to color the remaining regions without exceeding four colors. A casual verifier of the counterexample may not think to change the colors of these regions, so that the counterexample will appear as though it is valid.

Perhaps one effect underlying this common misconception is the fact that the color restriction is not transitive: a region only has to be colored differently from regions it touches directly, not regions touching regions that it touches. If this were the restriction, planar graphs would require arbitrarily large numbers of colors.

Other false disproofs violate the assumptions of the theorem in unexpected ways, such as using a region that consists of multiple disconnected parts, or disallowing regions of the same color from touching at a point.


Three-coloring

While every planar map can be colored with four colors, it is NP-complete in complexity to decide whether an arbitrary planar map can be colored with just three colors.[13]


Generalizations

Torus_with_seven_colours.svg with seven mutually touching regions; therefore seven colors are necessary]] Projection_color_torus.png The four-color theorem applies not only to finite planar graphs, but also to infinite graphs that can be drawn without crossings in the plane, and even more generally to infinite graphs (possibly with an uncountable number of vertices) for which every finite subgraph is planar. To prove this, one can combine a proof of the theorem for finite planar graphs with the De Bruijn–Erdős theorem stating that, if every finite subgraph of an infinite graph is _k_-colorable, then the whole graph is also _k_-colorable . This can also be seen as an immediate consequence of Kurt Gödel's compactness theorem for first-order logic, simply by expressing the colorability of an infinite graph with a set of logical formulae.

One can also consider the coloring problem on surfaces other than the plane (Weisstein). The problem on the sphere or cylinder is equivalent to that on the plane. For closed (orientable or non-orientable) surfaces with positive genus, the maximum number _p_ of colors needed depends on the surface's Euler characteristic χ according to the formula

$$p=\left\lfloor\frac{7 + \sqrt{49 - 24 \chi}}{2}\right\rfloor,$$
where the outermost brackets denote the floor function.

Alternatively, for an orientable surface the formula can be given in terms of the genus of a surface, _g_:

$$p=\left\lfloor\frac{7 + \sqrt{1 + 48g }}{2}\right\rfloor$$
(Weisstein).

Szilassi_polyhedron_3D_model.svg

This formula, the Heawood conjecture, was conjectured by P. J. Heawood in 1890 and proved by Gerhard Ringel and J. W. T. Youngs in 1968. The only exception to the formula is the Klein bottle, which has Euler characteristic 0 (hence the formula gives p = 7) and requires only 6 colors, as shown by P. Franklin in 1934 (Weisstein).

For example, the torus has Euler characteristic χ = 0 (and genus _g_ = 1) and thus _p_ = 7, so no more than 7 colors are required to color any map on a torus. This upper bound of 7 is sharp: certain toroidal polyhedra such as the Szilassi polyhedron require seven colors.

Tietze-Moebius.svg subdivision of a Möbius strip into six mutually adjacent regions, requiring six colors. The vertices and edges of the subdivision form an embedding of Tietze's graph onto the strip.]] A Möbius strip requires six colors as do 1-planar graphs (graphs drawn with at most one simple crossing per edge) . If both the vertices and the faces of a planar graph are colored, in such a way that no two adjacent vertices, faces, or vertex-face pair have the same color, then again at most six colors are needed .

There is no obvious extension of the coloring result to three-dimensional solid regions. By using a set of _n_ flexible rods, one can arrange that every rod touches every other rod. The set would then require _n_ colors, or _n_+1 if you consider the empty space that also touches every rod. The number _n_ can be taken to be any integer, as large as desired. Such examples were known to Fredrick Guthrie in 1880 . Even for axis-parallel cuboids (considered to be adjacent when two cuboids share a two-dimensional boundary area) an unbounded number of colors may be necessary (; ).


Relation to other areas of mathematics

Dror Bar-Natan gave a statement concerning Lie algebras and Vassiliev invariants which is equivalent to the four color theorem.


Use outside of mathematics

Despite the motivation from coloring political maps of countries, the theorem is not of particular interest to cartographers. According to an article by the math historian Kenneth May, "Maps utilizing only four colors are rare, and those that do usually require only three. Books on cartography and the history of mapmaking do not mention the four-color property" . The theorem also does not guarantee the usual cartographic requirement that non-contiguous regions of the same country (such as the exclave Kaliningrad and the rest of Russia) be colored identically.


See also

-   Apollonian network
-   Graph coloring
-   Grötzsch's theorem: triangle-free planar graphs are 3-colorable.
-   Hadwiger–Nelson problem: how many colors are needed to color the plane so that no two points at unit distance apart have the same color?


Notes


References

-   -   -   -   -   -   -   -   .

-   -   -   .

-   -   -   -   -   -   -   -   -   .

-   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   -   -   -   List of generalizations of the four color theorem on MathOverflow

Category:Graph coloring Category:Planar graphs Category:Theorems in graph theory Category:Computer-assisted proofs

[1] From : "Definitions: A planar map is a set of pairwise disjoint subsets of the plane, called regions. A simple map is one whose regions are connected open sets. Two regions of a map are adjacent if their respective closures have a common point that is not a corner of the map. A point is a corner of a map if and only if it belongs to the closures of at least three regions. Theorem: The regions of any simple planar map can be colored with only four colors, in such a way that any two adjacent regions have different colors."

[2] ; ).

[3] There is some mathematical folk-lore that Möbius originated the four-color conjecture, but this notion seems to be erroneous. See &

[4] Donald MacKenzie, _Mechanizing Proof: Computing, Risk, and Trust_ (MIT Press, 2004) p103

[5] ;

[6]

[7]

[8] W. W. Rouse Ball (1960) _The Four Color Theorem_, in Mathematical Recreations and Essays, Macmillan, New York, pp 222–232.

[9] Gary Chartrand and Linda Lesniak, _Graphs & Digraphs_ (CRC Press, 2005) p.221

[10] ; ;

[11] ; ).

[12] ; ).

[13]