In mathematics, the BORSUK–ULAM THEOREM states that every continuous function from an _n_-sphere into Euclidean _n_-space maps some pair of antipodal points to the same point. Here, two points on a sphere are called antipodal if they are in exactly opposite directions from the sphere's center.

Formally: if $f: S^n \to \R^n$ is continuous then there exists an x ∈ S^(n) such that: f( − x) = f(x).

The case n = 1 can be illustrated by saying that there always exist a pair of opposite points on the Earth's equator with the same temperature. The same is true for any circle. This assumes the temperature varies continuously.

The case n = 2 is often illustrated by saying that at any moment, there is always a pair of antipodal points on the Earth's surface with equal temperatures and equal barometric pressures.

The Borsuk–Ulam theorem has several equivalent statements in terms of odd functions. Recall that S^(n) is the _n_-sphere and B^(n) is the _n_-ball:

-   If $g : S^n \to \R^n$ is a continuous odd function, then there exists an x ∈ S^(n) such that: g(x) = 0.
-   If $g : B^n \to \R^n$ is a continuous function which is odd on S^(n − 1) (the boundary of B^(n)), then there exists an x ∈ B^(n) such that: g(x) = 0.


History

According to , the first historical mention of the statement of the Borsuk–Ulam theorem appears in . The first proof was given by , where the formulation of the problem was attributed to Stanislaw Ulam. Since then, many alternative proofs have been found by various authors, as collected by .


Equivalent statements

The following statements are equivalent to the Borsuk–Ulam theorem.[1]

With odd functions

A function g is called _odd_ (aka _antipodal_ or _antipode-preserving_) if for every x: g( − x) =  − g(x).

The Borsuk–Ulam theorem is equivalent to the following statement: A continuous odd function from an _n_-sphere into Euclidean _n_-space has a zero. PROOF:

-   If the theorem is correct, then it is specifically correct for odd functions, and for an odd function, g( − x) = g(x) iff g(x) = 0. Hence every odd continuous function has a zero.
-   For every continuous function f, the following function is continuous and odd: g(x) = f(x) − f( − x). If every odd continuous function has a zero, then g has a zero, and therefore, f(x) = f( − x). Hence the theorem is correct.

With retractions

Define a _retraction_ as a function h : S^(n) → S^(n − 1). The Borsuk–Ulam theorem is equivalent to the following claim: there is no continuous odd retraction.

Proof: If the theorem is correct, then every continuous odd function from S^(n) must include 0 in its range. However, 0 ∉ S^(n − 1) so there cannot be a continuous odd function whose range is S^(n − 1).

Conversely, if it is incorrect, then there is a continuous odd function g : S^(n) → R^(n) with no zeroes. Then we can construct another odd function h : S^(n) → S^(n − 1) by:

$$h(x)=\frac{g(x)}{|g(x)|}$$

since g has no zeroes, h is well-defined and continuous. Thus we have a continuous odd retraction.


Proofs

1-dimensional case

The 1-dimensional case can easily be proved using the intermediate value theorem (IVT).

Let g be an odd real-valued continuous function on a circle. Pick an arbitrary x. If g(x) = 0 then we are done. Otherwise, without loss of generality, g(x) > 0. But g( − x) < 0. Hence, by the IVT, there is a point y between x and  − x at which g(y) = 0.

General case - algebraic topology proof

Assume that h : S^(n) → S^(n − 1) is an odd continuous function with n > 2 (the case n = 1 is treated above, the case n = 2 can be handled using basic covering theory). By passing to orbits under the antipodal action, we then get an induced function h′ : ℝℙ^(n) → ℝℙ^(n − 1), which induces an isomorphism on fundamental groups. By the Hurewicz theorem, the induced map on cohomology with 𝔽₂ coefficients,

𝔽₂[_a_]/_a_^(_n_ + 1) = _H_^(*)(ℝℙ^(_n_); 𝔽₂) ← _H_^(*)(ℝℙ^(_n_ − 1); 𝔽₂) = 𝔽₂[_b_]/_b_^(_n_),

sends b to a. But then we get that b^(n) = 0 is sent to a^(n) ≠ 0, a contradiction.[2]

One can also show the stronger statement that any odd map S^(n − 1) → S^(n − 1) has odd degree and then deduce the theorem from this result.

General case - combinatorial proof

The Borsuk–Ulam theorem can be proved from Tucker's lemma.[3][4][5]

Let $g : S^n \to \R^n$ be a continuous odd function. Because _g_ is continuous on a compact domain, it is uniformly continuous. Therefore, for every ϵ > 0, there is a δ > 0 such that, for every two points of S_(n) which are within δ of each other, their images under _g_ are within ϵ of each other.

Define a triangulation of S_(n) with edges of length at most δ. Label each vertex v of the triangulation with a label l(v) ∈  ± 1,  ± 2, …,  ± n in the following way:

-   The absolute value of the label is the _index_ of the coordinate with the highest absolute value of _g_: |l(v)| = arg max_(k)(g(v)_(k)).
-   The sign of the label is the sign of _g_, so that: $l(v) = \sgn (g(v)) |l(v)|$.

Because _g_ is odd, the labeling is also odd: l( − v) =  − l(v). Hence, by Tucker's lemma, there are two adjacent vertices u, v with opposite labels. Assume w.l.o.g. that the labels are l(u) = 1, l(v) =  − 1. By the definition of _l_, this means that in both g(u) and g(v), coordinate #1 is the largest coordinate: in g(u) this coordinate is positive while in g(v) it is negative. By the construction of the triangulation, the distance between g(u) and g(v) is at most ϵ, so in particular |g(u)₁ − g(v)₁| = |g(u)₁| + |g(v)₁| ≤ ϵ (since g(u)₁ and g(v)₁ have opposite signs) and so |g(u)₁|,|g(v)₁| ≤ ϵ. But since the largest coordinate of g(u) and g(v) is coordinate #1, this means that |g(u)_(k)|,|g(v)_(k)| ≤ ϵ for each 1 ≤ k ≤ n. So |g(u)|,|g(v)| ≤ c_(n)ϵ, where c_(n) is some constant depending on n and the norm | ⋅ | which you have chosen.

The above is true for every ϵ; hence there must be a point _u_ in which |g(u)| = 0.


Corollaries

-   No subset of $\R^n$ is homeomorphic to S^(n)
-   The ham sandwich theorem: For any compact sets _A_₁, ..., _A_(n)_ in $\R^n$ we can always find a hyperplane dividing each of them into two subsets of equal measure.


Equivalent results

Above we showed how to prove the Borsuk–Ulam theorem from Tucker's lemma. The converse is also true: it is possible to prove Tucker's lemma from the Borsuk–Ulam theorem. Therefore, these two theorems are equivalent.


Generalizations

-   In the original theorem, the domain of the function _f_ is the unit _n_-sphere (the boundary of the unit _n_-ball). In general, it is true also when the domain of _f_ is the boundary of any open bounded symmetric subset of $\R^n$ containing the origin (Here, symmetric means that if _x_ is in the subset then -_x_ is also in the subset).[6]

-   Consider the function _A_ which maps a point to its antipodal point: A(x) =  − x. Note that A(A(x))) = x. The original theorem claims that there is a point _x_ in which f(A(x)) = f(x). In general, this is true also for every function _A_ for which A(A(x))) = x.[7] However, in general this is not true for other functions _A_.[8]


See also

-   Topological combinatorics
-   Necklace splitting problem
-   Kakutani's theorem (geometry)
-   Imre Bárány


Notes


References

-   -   -   -   -


External links

-

Category:Algebraic topology Category:Combinatorics Category:Continuous mappings Category:Theorems in topology

[1]

[2] Joseph J. Rotman, _An Introduction to Algebraic Topology_ (1988) Springer-Verlag _(See Chapter 12 for a full exposition.)_

[3]

[4]

[5]

[6]

[7]

[8]