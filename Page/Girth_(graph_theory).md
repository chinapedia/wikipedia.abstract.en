In graph theory, the GIRTH of a graph is the length of a shortest cycle contained in the graph.[1] If the graph does not contain any cycles (i.e. it's an acyclic graph), its girth is defined to be infinity.[2] For example, a 4-cycle (square) has girth 4. A grid has girth 4 as well, and a triangular mesh has girth 3. A graph with girth four or more is triangle-free.


Cages

A cubic graph (all vertices have degree three) of girth that is as small as possible is known as a -cage (or as a (3,)-cage). The Petersen graph is the unique 5-cage (it is the smallest cubic graph of girth 5), the Heawood graph is the unique 6-cage, the McGee graph is the unique 7-cage and the Tutte eight cage is the unique 8-cage.[3] There may exist multiple cages for a given girth. For instance there are three nonisomorphic 10-cages, each with 70 vertices: the Balaban 10-cage, the Harries graph and the Harries–Wong graph.

Image:Petersen1 tiny.svg|The Petersen graph has a girth of 5 Image:Heawood_Graph.svg|The Heawood graph has a girth of 6 Image:McGee graph.svg|The McGee graph has a girth of 7 Image:Tutte eight cage.svg|The Tutte–Coxeter graph (_Tutte eight cage_) has a girth of 8


Girth and graph coloring

For any positive integers and , there exists a graph with girth at least and chromatic number at least ; for instance, the Grötzsch graph is triangle-free and has chromatic number 4, and repeating the Mycielskian construction used to form the Grötzsch graph produces triangle-free graphs of arbitrarily large chromatic number. Paul Erdős was the first to prove the general result, using the probabilistic method.[4] More precisely, he showed that a random graph on vertices, formed by choosing independently whether to include each edge with probability has, with probability tending to 1 as goes to infinity, at most cycles of length or less, but has no independent set of size Therefore, removing one vertex from each short cycle leaves a smaller graph with girth greater than in which each color class of a coloring must be small and which therefore requires at least colors in any coloring.

Explicit, though large, graphs with high girth and chromatic number can be constructed as certain Cayley graphs of linear groups over finite fields.[5] These remarkable _Ramanujan graphs_ also have large expansion coefficient.


Related concepts

The ODD GIRTH and EVEN GIRTH of a graph are the lengths of a shortest odd cycle and shortest even cycle respectively.

The CIRCUMFERENCE of a graph is the length of the _longest_ cycle, rather than the shortest.

Thought of as the least length of a non-trivial cycle, the girth admits natural generalisations as the 1-systole or higher systoles in systolic geometry.

Girth is the dual concept to edge connectivity, in the sense that the girth of a planar graph is the edge connectivity of its dual graph, and vice versa. These concepts are unified in matroid theory by the girth of a matroid, the size of the smallest dependent set in the matroid. For a graphic matroid, the matroid girth equals the girth of the underlying graph, while for a co-graphic matroid it equals the edge connectivity.[6]


References

Category:Graph invariants

[1] R. Diestel, _Graph Theory_, p.8. 3rd Edition, Springer-Verlag, 2005

[2]

[3] . Electronic supplement to the book _Distance-Regular Graphs_ (Brouwer, Cohen, and Neumaier 1989, Springer-Verlag).

[4] .

[5] Guiliana Davidoff, Peter Sarnak, Alain Valette, _Elementary number theory, group theory, and Ramanujan graphs_, Cambridge University Press, 2003.

[6] .