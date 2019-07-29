An (N, M, D, K, ϵ) -EXTRACTOR is a bipartite graph with N nodes on the left and M nodes on the right such that each node on the left has D neighbors (on the right), which has the added property that for any subset A of the left vertices of size at least K, the distribution on right vertices obtained by choosing a random node in A and then following a random edge to get a node x on the right side is ϵ-close to the uniform distribution in terms of total variation distance.

A disperser is a related graph.

An equivalent way to view an extractor is as a bivariate function

_E_ : [_N_] × [_D_] → [_M_]

in the natural way. With this view it turns out that the extractor property is equivalent to: for any source of randomness X that gives n bits with min-entropy log K, the distribution E(X, U_(D)) is ϵ-close to U_(M), where U_(T) denotes the uniform distribution on [T].

Extractors are interesting when they can be constructed with small K, D, ϵ relative to N and M is as close to KD (the total randomness in the input sources) as possible.

Extractor functions were originally researched as a way to _extract_ randomness from weakly random sources. _See_ randomness extractor.

Using the probabilistic method it is easy to show that extractor graphs with really good parameters exist. The challenge is to find explicit or polynomial time computable examples of such graphs with good parameters. Algorithms that compute extractor (and disperser) graphs have found many applications in computer science.


References

-   Ronen Shaltiel, Recent developments in extractors - a survey

Category:Graph families Category:Pseudorandomness Category:Theoretical computer science