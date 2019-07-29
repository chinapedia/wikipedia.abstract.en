In combinatorics, an EXPANDER GRAPH is a sparse graph that has strong connectivity properties, quantified using vertex, edge or spectral expansion as described below. Expander constructions have spawned research in pure and applied mathematics, with several applications to complexity theory, design of robust computer networks, and the theory of error-correcting codes.[1]


Definitions

Intuitively, an expander is a finite, undirected multigraph in which every subset of the vertices that is not "too large" has a "large" boundary. Different formalisations of these notions give rise to different notions of expanders: _edge expanders_, _vertex expanders_, and _spectral expanders_, as defined below.

A disconnected graph is not an expander, since the boundary of a connected component is empty. Every connected graph is an expander; however, different connected graphs have different expansion parameters. The complete graph has the best expansion property, but it has largest possible degree. Informally, a graph is a good expander if it has low degree and high expansion parameters.

Edge expansion

The _edge expansion_ (also _isoperimetric number_ or Cheeger constant) _h_(_G_) of a graph _G_ on _n_ vertices is defined as

    $h(G) = \min_{0 < |S| \le \frac{n}{2} } \frac{|\partial S|}{|S|},$

where ∂S := {(u, v) ∈ E(G) : u ∈ S, v ∈ V(G) \ S}.

In the equation, the minimum is over all nonempty sets _S_ of at most _n_/2 vertices and ∂_S_ is the _edge boundary_ of _S_, i.e., the set of edges with exactly one endpoint in _S_.[2]

Vertex expansion

The _vertex isoperimetric number_ h_(out)(G) (also _vertex expansion_ or _magnification_) of a graph _G_ is defined as

    $h_{\text{out}}(G) = \min_{0 < |S|\le \frac{n}{2}} \frac{|\partial_{\text{out}}(S)|}{|S|},$

where ∂_(out)(S) is the _outer boundary_ of _S_, i.e., the set of vertices in V(G) \ S with at least one neighbor in _S_.[3] In a variant of this definition (called _unique neighbor expansion_) ∂_(out)(S) is replaced by the set of vertices in _V_ with _exactly_ one neighbor in _S_.[4]

The _vertex isoperimetric number_ h_(in)(G) of a graph _G_ is defined as

    $h_{\text{in}}(G) = \min_{0 < |S|\le \frac{n}{2}} \frac{|\partial_{\text{in}}(S)|}{|S|},$

where ∂_(in)(S) is the _inner boundary_ of _S_, i.e., the set of vertices in _S_ with at least one neighbor in V(G) \ S.[5]

Spectral expansion

When _G_ is _d_-regular, a linear algebraic definition of expansion is possible based on the eigenvalues of the adjacency matrix _A_ = _A_(_G_) of _G_, where A_(ij) is the number of edges between vertices _i_ and _j_.[6] Because _A_ is symmetric, the spectral theorem implies that _A_ has _n_ real-valued eigenvalues λ₁ ≥ λ₂ ≥ ⋯ ≥ λ_(n). It is known that all these eigenvalues are in [−_d_, _d_].

Because _G_ is regular, the uniform distribution $u\in\R^n$ with u_(i) = 1/n for all _i_ = 1, ..., _n_ is the stationary distribution of _G_. That is, we have _Au_ = _du_, and _u_ is an eigenvector of _A_ with eigenvalue λ₁ = _d_, where _d_ is the degree of the vertices of _G_. The _spectral gap_ of _G_ is defined to be _d_ − λ₂, and it measures the spectral expansion of the graph _G_.[7]

It is known that λ_(_n_) = −_d_ if and only if _G_ is bipartite. In many contexts, for example in the expander mixing lemma, a bound on λ₂ is not enough, but indeed it is necessary to bound the absolute value of _all_ the eigenvalues away from _d_:

_λ_ = max {|_λ_₂|,|_λ__(_n_)|}.
Since this is the largest eigenvalue corresponding to an eigenvector orthogonal to _u_, it can be equivalently defined using the Rayleigh quotient:

$$\lambda=\max_{v \perp u , v \neq 0} \frac{\|Av\|_2}{\|v\|_2},$$
where

$$\|v\|_2=\left(\sum_{i=1}^n v_i^2\right)^{1/2}$$
is the 2-norm of the vector $v\in\R^n$.

The normalized versions of these definitions are also widely used and more convenient in stating some results. Here one considers the matrix $\tfrac{1}{d} A$, which is the Markov transition matrix of the graph _G_. Its eigenvalues are between −1 and 1. For not necessarily regular graphs, the spectrum of a graph can be defined similarly using the eigenvalues of the Laplacian matrix. For directed graphs, one considers the singular values of the adjacency matrix _A_, which are equal to the roots of the eigenvalues of the symmetric matrix _A^(T)A_.


Relationships between different expansion properties

The expansion parameters defined above are related to each other. In particular, for any _d_-regular graph _G_,

_h__(out)(_G_) ≤ _h_(_G_) ≤ _d_ ⋅ _h__(out)(_G_).

Consequently, for constant degree graphs, vertex and edge expansion are qualitatively the same.

Cheeger inequalities

When _G_ is _d_-regular, there is a relationship between the isoperimetric constant _h_(_G_) and the gap _d_ − λ₂ in the spectrum of the adjacency operator of _G_. By standard spectral graph theory, the trivial eigenvalue of the adjacency operator of a _d_-regular graph is λ₁=_d_ and the first non-trivial eigenvalue is λ₂. If _G_ is connected, then λ₂ < _d_. An inequality due to Dodziuk and independently Alon and Milman states that[8]

    $\tfrac{1}{2}(d - \lambda_2) \le h(G) \le \sqrt{2d(d - \lambda_2)}.$

This inequality is closely related to the Cheeger bound for Markov chains and can be seen as a discrete version of Cheeger's inequality in Riemannian geometry.

Similar connections between vertex isoperimetric numbers and the spectral gap have also been studied:[9]

    $h_{\text{out}}(G)\le \left(\sqrt{4 (d-\lambda_2)} + 1\right)^2 -1$
    $h_{\text{in}}(G) \le \sqrt{8(d-\lambda_2)}.$

Asymptotically speaking, the quantities $\frac{h^2}{d}$, h_(out), and h_(in)² are all bounded above by the spectral gap O(d − λ₂).


Constructions

There are three general strategies for constructing families of expander graphs.[10] The first strategy is algebraic and group-theoretic, the second strategy is analytic and uses additive combinatorics, and the third strategy is combinatorial and uses the zig-zag and related graph products. Noga Alon showed that certain graphs constructed from finite geometries are the sparsest examples of highly expanding graphs.[11]

Margulis–Gabber–Galil

Algebraic constructions based on Cayley graphs are known for various variants of expander graphs. The following construction is due to Margulis and has been analysed by Gabber and Galil.[12] For every natural number _n_, one considers the graph _G_(n)_ with the vertex set ℤ_(n) × ℤ_(n), where ℤ_(n) = ℤ/nℤ: For every vertex (x, y) ∈ ℤ_(n) × ℤ_(n), its eight adjacent vertices are

(_x_ ± 2_y_, _y_), (_x_ ± (2_y_ + 1), _y_), (_x_, _y_ ± 2_x_), (_x_, _y_ ± (2_x_ + 1)).

Then the following holds:

  THEOREM. For all _n_, the graph _G_(n)_ has second-largest eigenvalue $\lambda(G)\leq 5 \sqrt{2}$.

Ramanujan graphs

By a theorem of Alon and Boppana, all large enough _d_-regular graphs satisfy $\lambda \ge 2\sqrt{d-1} - o(1)$, where λ is the second largest eigenvalue in absolute value.[13] Ramanujan graphs are _d_-regular graphs for which this bound is tight. That is, they satisfy $\lambda \le 2\sqrt{d-1}$.[14] Hence Ramanujan graphs have an asymptotically smallest possible λ. This makes them excellent spectral expanders.

Lubotzky, Phillips, and Sarnak (1988), Margulis (1988), and Morgenstern (1994) show how Ramanujan graphs can be constructed explicitly.[15] By a theorem of Friedman (2003), random _d_-regular graphs on _n_ vertices are almost Ramanujan, that is, they satisfy

$$\lambda \le 2\sqrt{d-1}+\varepsilon$$

for every ε > 0 with probability 1 − o(1) as _n_ tends to infinity.[16]


Applications and useful properties

The original motivation for expanders is to build economical robust networks (phone or computer): an expander with bounded valence is precisely an asymptotic robust graph with the number of edges growing linearly with size (number of vertices), for all subsets.

Expander graphs have found extensive applications in computer science, in designing algorithms, error correcting codes, extractors, pseudorandom generators, sorting networks () and robust computer networks. They have also been used in proofs of many important results in computational complexity theory, such as SL = L () and the PCP theorem (). In cryptography, expander graphs are used to construct hash functions.

The following are some properties of expander graphs that have proven useful in many areas.

Expander mixing lemma

The expander mixing lemma states that, for any two subsets of the vertices _S_, _T_ ⊆ _V_, the number of edges between _S_ and _T_ is approximately what you would expect in a random _d_-regular graph. The approximation is better the smaller λ = max {|λ₂|,|λ_(n)|} is. In a random _d_-regular graph, as well as in an Erdős–Rényi random graph with edge probability _d_/_n_, we expect $\tfrac{d}{n} \cdot |S| \cdot |T|$ edges between _S_ and _T_.

More formally, let _E_(_S_, _T_) denote the number of edges between _S_ and _T_. If the two sets are not disjoint, edges in their intersection are counted twice, that is,

    E(S, T) = 2|E(G[S ∩ T])| + E(S \ T, T) + E(S, T \ S).

Then the expander mixing lemma says that the following inequality holds:

$$\left|E(S, T) - \frac{d \cdot |S| \cdot |T|}{n}\right| \leq \lambda  \sqrt{|S| \cdot |T|}.$$

Expander walk sampling

The Chernoff bound states that, when sampling many independent samples from a random variables in the range [−1, 1], with high probability the average of our samples is close to the expectation of the random variable. The expander walk sampling lemma, due to and , states that this also holds true when sampling from a walk on an expander graph. This is particularly useful in the theory of derandomization, since sampling according to an expander walk uses many fewer random bits than sampling independently.

Expander property of the braingraphs

Using the magnetic resonance imaging (MRI) data of the NIH-funded large Human Connectome Project, it was shown by Szalkai et al.[17][18] that the graph, describing the anatomical brain connections between up to 1015 cerebral areas, is a significantly better expander in women than in men.


See also

-   Algebraic connectivity
-   Zig-zag product
-   Superstrong approximation
-   Spectral graph theory


Notes


References

Textbooks and surveys

-   -   -   -   -

Research articles

-   -   -   -   .

-   .

-   .

-   -   -   -

Recent Applications

-


External links

-   Brief introduction in Notices of the American Mathematical Society
-   Introductory paper by Michael Nielsen
-   Lecture notes from a course on expanders (by Nati Linial and Avi Wigderson)
-   Lecture notes from a course on expanders (by Prahladh Harsha)
-   Definition and application of spectral gap

Category:Graph families

[1]

[2] Definition 2.1 in

[3]

[4]

[5]

[6] cf. Section 2.3 in

[7] This definition of the spectral gap is from Section 2.3 in

[8] Theorem 2.4 in

[9] See Theorem 1 and p.156, l.1 in . Note that λ₂ there corresponds to 2(_d_ − λ₂) of the current article (see p.153, l.5)

[10] see, e.g.,

[11]

[12] see, e.g., p.9 of

[13] Theorem 2.7 of

[14] Definition 5.11 of

[15] Theorem 5.12 of

[16] Theorem 7.10 of

[17]

[18]