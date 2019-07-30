In graph theory, the SHORTNESS EXPONENT is a numerical parameter of a family of graphs that measures how far from Hamiltonian the graphs in the family can be. Intuitively, if e is the shortness exponent of a graph family ℱ, then every n-vertex graph in the family has a cycle of length near n^(e) but some graphs do not have longer cycles. More precisely, for any ordering of the graphs in ℱ into a sequence G₀, G₁, …, with h(G) defined to be the length of the longest cycle in graph G, the shortness exponent is defined as[1]

$$\liminf_{i\to\infty} \frac{\log h(G_i)}{\log |V(G_i)|}.$$
This number is always in the interval from 0 to 1; it is 1 for families of graphs that always contain a Hamiltonian or near-Hamiltonian cycle, and 0 for families of graphs in which the longest cycle length can be smaller than any constant power of the number of vertices.

The shortness exponent of the polyhedral graphs is log₃2 ≈ 0.631. A construction based on kleetopes shows that some polyhedral graphs have longest cycle length O(n^(log₃2)),[2] while it has also been proven that every polyhedral graph contains a cycle of length Ω(n^(log₃2)).[3] The polyhedral graphs are the graphs that are simultaneously planar and 3-vertex-connected; the assumption of 3-vertex-connectivity is necessary for these results, as there exist sets of 2-vertex-connected planar graphs (such as the complete bipartite graphs K_(2, n)) with shortness exponent 0. There are many additional known results on shortness exponents of restricted subclasses of planar and polyhedral graphs.[4]

The 3-vertex-connected cubic graphs (without the restriction that they be planar) also have a shortness exponent that has been proven to lie strictly between 0 and 1.[5][6]


References

Category:Hamiltonian paths and cycles

[1] .

[2] .

[3] .

[4]

[5] .

[6] .