In information theory, the GRAPH ENTROPY is a measure of the information rate achievable by communicating symbols over a channel in which certain pairs of values may be confused.[1] This measure, first introduced by Körner in the 1970s,[2][3] has since also proven itself useful in other settings, including combinatorics.[4]


Definition

Let G = (V, E) be an undirected graph. The graph entropy of G, denoted H(G) is defined as

_H_(_G_) = min_(_X_, _Y_)_I_(_X_; _Y_)

where X is chosen uniformly from V, Y ranges over independent sets of G, the joint distribution of X and Y is such that X ∈ Y with probability one, and I(X; Y) is the mutual information of X and Y.[5]

That is, if we let ℐ denote the independent vertex sets in G, we wish to find the joint distribution X, Y on V × ℐ with the lowest mutual information such that (i) the marginal distribution of the first term is uniform and (ii) in samples from the distribution, the second term contains the first term almost surely. The mutual information of X and Y is then called the entropy of G.


Properties

-   Monotonicity. If G₁ is a subgraph of G₂ on the same vertex set, then H(G₁) ≤ H(G₂).
-   Subadditivity. Given two graphs G₁ = (V, E₁) and G₂ = (V, E₂) on the same set of vertices, the graph union G₁ ∪ G₂ = (V, E₁ ∪ E₂) satisfies H(G₁ ∪ G₂) ≤ H(G₁) + H(G₂).
-   Arithmetic mean of disjoint unions. Let G₁, G₂, ⋯, G_(k) be a sequence of graphs on disjoint sets of vertices, with n₁, n₂, ⋯, n_(k) vertices, respectively. Then $H(G_1 \cup G_2 \cup \cdots G_k) = \tfrac{1}{\sum_{i=1}^{k}n_i}\sum_{i=1}^{k}{n_i H(G_i)}$.

Additionally, simple formulas exist for certain families classes of graphs.

-   Edge-less graphs have entropy 0.
-   Complete graphs on n vertices have entropy log₂n, where log₂ is the binary logarithm.
-   Complete balanced k-partite graphs have entropy lg k where lg is the binary logarithm. In particular, complete balanced bipartite graphs have entropy 1.
-   Complete bipartite graphs with n vertices in one partition and m in the other have entropy $H\left(\frac{n}{m+n}\right)$, where H is the binary entropy function.


Example

Here, we use properties of graph entropy to provide a simple proof that a complete graph G on n vertices cannot be expressed as the union of fewer than lg n bipartite graphs.

_Proof_ By monotonicity, no bipartite graph can have graph entropy greater than that of a complete bipartite graph, which is bounded by 1. Thus, by sub-additivity, the union of k bipartite graphs cannot have entropy greater than k. Now let G = (V, E) be a complete graph on n vertices. By the properties listed above, H(G) = lg n. Therefore, the union of fewer than lg n bipartite graphs cannot have the same entropy as G, so G cannot be expressed as such a union. ◼


General References

-


Notes

Category:Information theory Category:Graph theory

[1]

[2]

[3]

[4]

[5] G. Simonyi, "Perfect graphs and graph entropy. An updated survey," Perfect Graphs, John Wiley and Sons (2001) pp. 293-328, Definition 2”