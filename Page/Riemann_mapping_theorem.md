In complex analysis, the RIEMANN MAPPING THEOREM states that if _U_ is a non-empty simply connected open subset of the complex number plane C which is not all of C, then there exists a biholomorphic mapping _f_ (i.e. a bijective holomorphic mapping whose inverse is also holomorphic) from _U_ onto the open unit disk

_D_ = {_z_ ∈ C : |_z_| < 1}.

This mapping is known as a RIEMANN MAPPING.[1]

Intuitively, the condition that _U_ be simply connected means that _U_ does not contain any “holes”. The fact that _f_ is biholomorphic implies that it is a conformal map and therefore angle-preserving. Intuitively, such a map preserves the shape of any sufficiently small figure, while possibly rotating and scaling (but not reflecting) it.

Henri Poincaré proved that the map _f_ is essentially unique: if _z_₀ is an element of _U_ and φ is an arbitrary angle, then there exists precisely one _f_ as above such that _f_(_z_₀) = 0 and such that the argument of the derivative of _f_ at the point _z_₀ is equal to φ. This is an easy consequence of the Schwarz lemma.

As a corollary of the theorem, any two simply connected open subsets of the Riemann sphere which both lack at least two points of the sphere can be conformally mapped into each other.


History

The theorem was stated (under the assumption that the boundary of _U_ is piecewise smooth) by Bernhard Riemann in 1851 in his PhD thesis. Lars Ahlfors wrote once, concerning the original formulation of the theorem, that it was “ultimately formulated in terms which would defy any attempt of proof, even with modern methods”. Riemann's flawed proof depended on the Dirichlet principle (which was named by Riemann himself), which was considered sound at the time. However, Karl Weierstrass found that this principle was not universally valid. Later, David Hilbert was able to prove that, to a large extent, the Dirichlet principle is valid under the hypothesis that Riemann was working with. However, in order to be valid, the Dirichlet principle needs certain hypotheses concerning the boundary of _U_ which are not valid for simply connected domains in general. Simply connected domains with arbitrary boundaries were first treated by .

The first proof of the theorem is due to Constantin Carathéodory, who published it in 1912. His proof used Riemann surfaces and it was simplified by Paul Koebe two years later in a way which did not require them.

Another proof, due to Lipót Fejér and to Frigyes Riesz, was published in 1922 and it was rather shorter than the previous ones. In this proof, like in Riemann's proof, the desired mapping was obtained as the solution of an extremal problem. The Fejér–Riesz proof was further simplified by Alexander Ostrowski and by Carathéodory.


Importance

The following points detail the uniqueness and power of the Riemann mapping theorem:

-   Even relatively simple Riemann mappings (for example a map from the interior of a circle to the interior of a square) have no explicit formula using only elementary functions.
-   Simply connected open sets in the plane can be highly complicated, for instance the boundary can be a nowhere-differentiable fractal curve of infinite length, even if the set itself is bounded. The fact that such a set can be mapped in an _angle-preserving_ manner to the nice and regular unit disc seems counter-intuitive.
-   The analog of the Riemann mapping theorem for more complicated domains is not true. The next simplest case is of doubly connected domains (domains with a single hole). Any doubly connected domain except for the punctured disk and the punctured plane is conformally equivalent to some annulus {_z_ : _r_ < |_z_| < 1} with 0 < _r_ < 1, however there are no conformal maps between annuli except inversion and multiplication by constants so the annulus {_z_ : 1 < |_z_| < 2} is not conformally equivalent to the annulus {_z_ : 1 < |_z_| < 4} (as can be proven using extremal length).
-   The analogue of the Riemann mapping theorem in three or more real dimensions is not true. The family of conformal maps in three dimensions is very poor, and essentially contains only Möbius transformations.
-   Even if arbitrary homeomorphisms in higher dimensions are permitted, contractible manifolds can be found that are not homeomorphic to the ball (e.g., the Whitehead continuum).
-   The Riemann mapping theorem is the easiest way to prove that any two simply connected domains in the plane are homeomorphic. Even though the class of continuous functions is vastly larger than that of conformal maps, it is not easy to construct a one-to-one function onto the disk knowing only that the domain is simply connected.


A proof sketch

Given _U_ and a point _z_₀ in _U_, we want to construct a function _f_ which maps _U_ to the unit disk and _z_₀ to 0. For this sketch, we will assume that _U_ is bounded and its boundary is smooth, much like Riemann did. Write

_f_(_z_) = (_z_ − _z_₀)_e_^(_g_(_z_))

where _g_ = _u_ + _iv_ is some (to be determined) holomorphic function with real part _u_ and imaginary part _v_. It is then clear that _z_₀ is the only zero of _f_. We require |_f_(_z_)| = 1 for _z_ ∈ ∂_U_, so we need

_u_(_z_) =  − log |_z_ − _z_₀|

on the boundary. Since _u_ is the real part of a holomorphic function, we know that _u_ is necessarily a harmonic function; i.e., it satisfies Laplace's equation.

The question then becomes: does a real-valued harmonic function _u_ exist that is defined on all of _U_ and has the given boundary condition? The positive answer is provided by the Dirichlet principle. Once the existence of _u_ has been established, the Cauchy–Riemann equations for the holomorphic function _g_ allow us to find _v_ (this argument depends on the assumption that _U_ be simply connected). Once _u_ and _v_ have been constructed, one has to check that the resulting function _f_ does indeed have all the required properties.


Uniformization theorem

The Riemann mapping theorem can be generalized to the context of Riemann surfaces: If _U_ is a non-empty simply-connected open subset of a Riemann surface, then _U_ is biholomorphic to one of the following: the Riemann sphere, C or _D_. This is known as the uniformization theorem.


Smooth Riemann mapping theorem

In the case of a simply connected bounded domain with smooth boundary, the Riemann mapping function and all its derivatives extend by continuity to the closure of the domain. This can be proved using regularity properties of solutions of the Dirichlet boundary value problem, which follow either from the theory of Sobolev spaces for planar domains or from classical potential theory. Other methods for proving the smooth Riemann mapping theorem include the theory of kernel functions[2] or the Beltrami equation.


Algorithms

Computational conformal mapping is prominently featured in problems of applied analysis and mathematical physics, as well as in engineering disciplines, such as image processing.

In the early 1980s an elementary algorithm for computing conformal maps was discovered. Given points z₀, …, z_(n) in the plane, the algorithm computes an explicit conformal map of the unit disk onto a region bounded by a Jordan curve γ with z₀, …, z_(n) ∈ γ. This algorithm converges for Jordan regions[3] in the sense of uniformly close boundaries. There are corresponding uniform estimates on the closed region and the closed disc for the mapping functions and their inverses. Improved estimates are obtained if the data points lie on a C¹ curve or a K-quasicircle. The algorithm was discovered as an approximate method for conformal welding; however, it can also be viewed as a discretization of the Loewner differential equation.[4]

The following is known about numerically approximating the conformal mapping between two planar domains.[5]

Positive results:

-   There is an algorithm A that computes the uniformizing map in the following sense. Let Ω be a bounded simply-connected domain, and w₀ ∈ Ω. ∂Ω is provided to A by an oracle representing it in a pixelated sense (i.e., if the screen is divided to 2^(n) × 2^(n) pixels, the oracle can say whether each pixel belongs to the boundary or not). Then A computes the absolute values of the uniformizing map ϕ : (Ω, w₀) → (D, 0) with precision 2^( − n) in space bounded by C ⋅ n² and time 2^(O(n)), where C depends only on the diameter of Ω and d(w₀, ∂Ω). Furthermore, the algorithm computes the value of φ(w) with precision 2^( − n) as long as |ϕ(w)| < 1 − 2^( − n). Moreover, A queries ∂Ω with precision of at most 2^( − O(n)). In particular, if ∂Ω is polynomial space computable in space n^(a) for some constant a ≥ 1 and time T(n) < 2^(O(n^(a))), then A can be used to compute the uniformizing map in space C ⋅ n^(max (a, 2)) and time 2^(O(n^(a))).

-   There is an algorithm A′ that computes the uniformizing map in the following sense. Let Ω be a bounded simply-connected domain, and w₀ ∈ Ω. Suppose that for some n = 2^(k), ∂Ω is given to A′ with precision $\tfrac{1}{n}$ by O(n²) pixels. Then A′ computes the absolute values of the uniformizing map ϕ : (Ω, w₀) → (D, 0) within an error of O(1/n) in randomized space bounded by O(k) and time polynomial in n = 2^(k) (that is, by a BPL(_n_)-machine). Furthermore, the algorithm computes the value of ϕ(w) with precision $\tfrac{1}{n}$ as long as $|\phi(w)|< 1 -\tfrac{1}{n}.$

Negative results:

-   Suppose there is an algorithm A that given a simply-connected domain Ω with a linear-time computable boundary and an inner radius > 1/2 and a number n computes the first 20n digits of the conformal radius r(Ω, 0), then we can use one call to A to solve any instance of a #SAT(_n_) with a linear time overhead. In other words, #P is poly-time reducible to computing the conformal radius of a set.

-   Consider the problem of computing the conformal radius of a simply-connected domain Ω, where the boundary of Ω is given with precision 1/n by an explicit collection of O(n²) pixels. Denote the problem of computing the conformal radius with precision 1/n^(c) by CONF(n, n^(c)). Then, MAJ_(n) is AC0 reducible to CONF(n, n^(c)) for any $0 < c < \tfrac{1}{2}.$


See also

-   Carathéodory's theorem
-   Measurable Riemann mapping theorem
-   Schwarz–Christoffel mapping – a conformal transformation of the upper half-plane onto the interior of a simple polygon.
-   Conformal radius


Notes


References

-   -   John B. Conway (1978) _Functions of one complex variable_, Springer-Verlag,
-   John B. Conway (1995) _Functions of one complex variable II_, Springer-Verlag,
-   -   -   Steven G. Krantz (2006) _Geometric Function Theory_, chapter 4: Riemann Mapping Theorem and its Generalizations, pp 83–108, Birkhäuser .
-   -   Reinhold Remmert (1998) _Classical topics in complex function theory_, Springer-Verlag,
-   Bernhard Riemann (1851) _Grundlagen für eine allgemeine Theorie der Functionen einer veränderlichen complexen Grösse_, Göttingen.
-


External links

-

Category:Theorems in complex analysis Category:Bernhard Riemann

[1] The existence of f is equivalent to the existence of a Green’s function.

[2]

[3] A Jordan region is the interior of a Jordan curve.

[4]

[5]