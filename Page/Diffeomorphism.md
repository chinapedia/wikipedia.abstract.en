In mathematics, a DIFFEOMORPHISM is an isomorphism of smooth manifolds. It is an invertible function that maps one differentiable manifold to another such that both the function and its inverse are smooth.


Definition

Given two manifolds _M_ and _N_, a differentiable map _f_ : _M_ → _N_ is called a DIFFEOMORPHISM if it is a bijection and its inverse _f_^(−1) : _N_ → _M_ is differentiable as well. If these functions are _r_ times continuously differentiable, _f_ is called a _C^(R)_-DIFFEOMORPHISM.

Two manifolds _M_ and _N_ are DIFFEOMORPHIC (symbol usually being ≃) if there is a diffeomorphism _f_ from _M_ to _N_. They are _C^(R)_ DIFFEOMORPHIC if there is an _r_ times continuously differentiable bijective map between them whose inverse is also _r_ times continuously differentiable.


Diffeomorphisms of subsets of manifolds

Given a subset _X_ of a manifold _M_ and a subset _Y_ of a manifold _N_, a function _f_ : _X_ → _Y_ is said to be smooth if for all _p_ in _X_ there is a neighborhood _U_ ⊂ _M_ of _p_ and a smooth function _g_ : _U_ → _N_ such that the restrictions agree g_(|U ∩ X) = f_(|U ∩ X) (note that _g_ is an extension of _f_). _f_ is said to be a diffeomorphism if it is bijective, smooth and its inverse is smooth.


Local description

Model example

If _U_, _V_ are connected open subsets of R^(_n_) such that _V_ is simply connected, a differentiable map _f_ : _U_ → _V_ is a DIFFEOMORPHISM if it is proper and if the differential _Df_(x)_ : R^(_n_) → R^(_n_) is bijective at each point _x_ in _U_.

  First remark

  It is essential for _V_ to be simply connected for the function _f_ to be globally invertible (under the sole condition that its derivative be a bijective map at each point). For example, consider the "realification" of the complex square function

      \begin{cases}

  f : \mathbf{R}^2 \setminus \{(0,0)\} \to \mathbf{R}^2 \setminus \{(0,0)\} \\ (x,y)\mapsto(x^2-y^2,2xy) \end{cases} Then _f_ is surjective and it satisfies

      det Df_(x) = 4(x² + y²) ≠ 0

  Thus, though _Df_(x)_ is bijective at each point, _f_ is not invertible because it fails to be injective (e.g. _f_(1,0) = (1,0) = _f_(−1,0).

  Second remark

  Since the differential at a point (for a differentiable function)

      Df_(x) : T_(x)U → T_(f(x))V

  is a linear map, it has a well-defined inverse if and only if _Df_(x)_ is a bijection. The matrix representation of _Df_(x)_ is the _n_ × _n_ matrix of first-order partial derivatives whose entry in the _i_-th row and _j_-th column is ∂f_(i)/∂x_(j). This so-called Jacobian matrix is often used for explicit computations.

  Third remark

  Diffeomorphisms are necessarily between manifolds of the same dimension. Imagine _f_ going from dimension _n_ to dimension _k_. If _n_ < _k_ then _Df_(x)_ could never be surjective; and if _n_ > _k_ then _Df_(x)_ could never be injective. In both cases, therefore, _Df_(x)_ fails to be a bijection.

  Fourth remark

  If _Df_(x)_ is a bijection at _x_ then _f_ is said to be a local diffeomorphism (since, by continuity, _Df_(y)_ will also be bijective for all _y_ sufficiently close to _x_).

  Fifth remark

  Given a smooth map from dimension _n_ to dimension _k_, if _Df_ (or, locally, _Df_(x)_) is surjective, _f_ is said to be a submersion (or, locally, a "local submersion"); and if _Df_ (or, locally, _Df_(x)_) is injective, _f_ is said to be an immersion (or, locally, a "local immersion").

  Sixth remark

  A differentiable bijection is _not_ necessarily a diffeomorphism. _f_(_x_) = _x_³, for example, is not a diffeomorphism from R to itself because its derivative vanishes at 0 (and hence its inverse is not differentiable at 0). This is an example of a homeomorphism that is not a diffeomorphism.

  Seventh remark

  When _f_ is a map between _differentiable_ manifolds, a diffeomorphic _f_ is a stronger condition than a homeomorphic _f_. For a diffeomorphism, _f_ and its inverse need to be differentiable; for a homeomorphism, _f_ and its inverse need only be continuous. Every diffeomorphism is a homeomorphism, but not every homeomorphism is a diffeomorphism.

_f_ : _M_ → _N_ is called a DIFFEOMORPHISM if, in coordinate charts, it satisfies the definition above. More precisely: Pick any cover of _M_ by compatible coordinate charts and do the same for _N_. Let φ and ψ be charts on, respectively, _M_ and _N_, with _U_ and _V_ as, respectively, the images of φ and ψ. The map ψ_f_φ^(−1) : _U_ → _V_ is then a diffeomorphism as in the definition above, whenever _f_(φ^(−1)(U)) ⊂ ψ^(−1)(V).


Examples

Since any manifold can be locally parametrised, we can consider some explicit maps from R² into R².

-   Let



        f(x, y) = (x²+y³,x²−y³).

    We can calculate the Jacobian matrix:

        $J_f = \begin{pmatrix} 2x & 3y^2 \\ 2x & -3y^2 \end{pmatrix} .$

    The Jacobian matrix has zero determinant if, and only if _xy_ = 0. We see that _f_ could only be a diffeomorphism away from the _x_-axis and the _y_-axis. However, _f_ is not bijective since _f(x,y)=f(-x,y)_, and thus it cannot be a diffeomorphism.

-   Let



        g(x, y) = (a₀+a_(1, 0)x+a_(0, 1)y+⋯, b₀+b_(1, 0)x+b_(0, 1)y+⋯)

    where the a_(i, j) and b_(i, j) are arbitrary real numbers, and the omitted terms are of degree at least two in _x_ and _y_. We can calculate the Jacobian matrix at 0:

        $J_g(0,0) = \begin{pmatrix} a_{1,0} & a_{0,1} \\ b_{1,0} & b_{0,1} \end{pmatrix}.$

    We see that _g_ is a local diffeomorphism at 0 if, and only if,

        a_(1, 0)b_(0, 1) − a_(0, 1)b_(1, 0) ≠ 0,

    i.e. the linear terms in the components of _g_ are linearly independent as polynomials.

-   Let



        h(x, y) = (sin(x²+y²),cos(x²+y²)).

    We can calculate the Jacobian matrix:

        $J_h = \begin{pmatrix} 2x\cos(x^2 + y^2) & 2y\cos(x^2 + y^2) \\ -2x\sin(x^2+y^2) & -2y\sin(x^2 + y^2) \end{pmatrix} .$

    The Jacobian matrix has zero determinant everywhere! In fact we see that the image of _h_ is the unit circle.

Surface deformations

In mechanics, a stress-induced transformation is called a deformation and may be described by a diffeomorphism. A diffeomorphism _f_ : _U_ → _V_ between two surfaces _U_ and _V_ has a Jacobian matrix _Df_ that is an invertible matrix. In fact, it is required that for _p_ in _U_, there is a neighborhood of _p_ in which the Jacobian _Df_ stays non-singular. Since the Jacobian is a 2 × 2 real matrix, Df can be read as one of three types of complex number: ordinary complex, split complex number, or dual number. Suppose that in a chart of the surface, f(x, y) = (u, v).

The total differential of _u_ is

$$du = \frac{\partial u}{\partial x} dx +  \frac{\partial u}{\partial y} dy ,$$
, and similarly for _v_. Then the image (du, dv) = (dx, dy)Df is a linear transformation, fixing the origin, and expressible as the action of a complex number of a particular type. When (_dx, dy_ ) is also interpreted as that type of complex number, the action is of complex multiplication in the appropriate complex number plane. As such, there is a type of angle (Euclidean, hyperbolic, or slope) that is preserved in such a multiplication. Due to _Df_ being invertible, the type of complex number is uniform over the surface. Consequently, a surface deformation or diffeomorphism of surfaces has the CONFORMAL PROPERTY of preserving (the appropriate type of) angles.


Diffeomorphism group

Let _M_ be a differentiable manifold that is second-countable and Hausdorff. The DIFFEOMORPHISM GROUP of _M_ is the group of all _C^(r)_ diffeomorphisms of _M_ to itself, denoted by Diff^(_r_)(_M_) or, when _r_ is understood, Diff(_M_). This is a "large" group, in the sense that – provided _M_ is not zero-dimensional – it is not locally compact.

Topology

The diffeomorphism group has two natural topologies: _weak_ and _strong_ . When the manifold is compact, these two topologies agree. The weak topology is always metrizable. When the manifold is not compact, the strong topology captures the behavior of functions "at infinity" and is not metrizable. It is, however, still Baire.

Fixing a Riemannian metric on _M_, the weak topology is the topology induced by the family of metrics

    d_(K)(f, g) = sup_(x ∈ K)d(f(x), g(x)) + ∑_(1 ≤ p ≤ r)sup_(x ∈ K)∥D^(p)f(x)−D^(p)g(x)∥

as _K_ varies over compact subsets of _M_. Indeed, since _M_ is σ-compact, there is a sequence of compact subsets _K__(_n_) whose union is _M_. Then:

    $d(f,g) = \sum\nolimits_n 2^{-n}\frac{d_{K_n}(f,g)}{1+d_{K_n}(f,g)}.$

The diffeomorphism group equipped with its weak topology is locally homeomorphic to the space of _C^(r)_ vector fields . Over a compact subset of _M_, this follows by fixing a Riemannian metric on _M_ and using the exponential map for that metric. If _r_ is finite and the manifold is compact, the space of vector fields is a Banach space. Moreover, the transition maps from one chart of this atlas to another are smooth, making the diffeomorphism group into a Banach manifold with smooth right translations; left translations and inversion are only continuous. If _r_ = ∞, the space of vector fields is a Fréchet space. Moreover, the transition maps are smooth, making the diffeomorphism group into a Fréchet manifold and even into a regular Fréchet Lie group. If the manifold is σ-compact and not compact the full diffeomorphism group is not locally contractible for any of the two topologies. One has to restrict the group by controlling the deviation from the identity near infinity to obtain a diffeomorphism group which is a manifold; see .

Lie algebra

The Lie algebra of the diffeomorphism group of _M_ consists of all vector fields on _M_ equipped with the Lie bracket of vector fields. Somewhat formally, this is seen by making a small change to the coordinate x at each point in space:

    x^(μ) ↦ x^(μ) + εh^(μ)(x)

so the infinitesimal generators are the vector fields

    $L_{h} = h^{\mu}(x)\frac{\partial}{\partial x^\mu}.$

Examples

-   When _M_ = _G_ is a Lie group, there is a natural inclusion of _G_ in its own diffeomorphism group via left-translation. Let Diff(_G_) denote the diffeomorphism group of _G_, then there is a splitting Diff(_G_) ≃ _G_ × Diff(_G_, _e_), where Diff(_G_, _e_) is the subgroup of Diff(_G_) that fixes the identity element of the group.
-   The diffeomorphism group of Euclidean space R^(_n_) consists of two components, consisting of the orientation preserving and orientation reversing diffeomorphisms. In fact, the general linear group is a deformation retract of subgroup Diff(R^(_n_), 0) of diffeomorphisms fixing the origin under the map _f_(_x_)  _f_(_tx_)/_t_, _t_ ∈& (0,1]. In particular, the general linear group is also a deformation retract of the full diffeomorphism group.
-   For a finite set of points, the diffeomorphism group is simply the symmetric group. Similarly, if _M_ is any manifold there is a group extension 0 → Diff₀(_M_) → Diff(_M_) → Σ(π₀(_M_)). Here Diff₀(_M_)is the subgroup of Diff(_M_) that preserves all the components of _M_, and Σ(π₀(_M_)) is the permutation group of the set π₀(_M_) (the components of _M_). Moreover, the image of the map Diff(_M_) → Σ(π₀(_M_)) is the bijections of π₀(_M_) that preserve diffeomorphism classes.

Transitivity

For a connected manifold _M_, the diffeomorphism group acts transitively on _M_. More generally, the diffeomorphism group acts transitively on the configuration space _C_(k)M_. If _M_ is at least two-dimensional, the diffeomorphism group acts transitively on the configuration space _F_(k)M_ and the action on _M_ is multiply transitive .

Extensions of diffeomorphisms

In 1926, Tibor Radó asked whether the harmonic extension of any homeomorphism or diffeomorphism of the unit circle to the unit disc yields a diffeomorphism on the open disc. An elegant proof was provided shortly afterwards by Hellmuth Kneser. In 1945, Gustave Choquet, apparently unaware of this result, produced a completely different proof.

The (orientation-preserving) diffeomorphism group of the circle is pathwise connected. This can be seen by noting that any such diffeomorphism can be lifted to a diffeomorphism _f_ of the reals satisfying [_f_(_x_+1) = _f_(_x_) + 1]; this space is convex and hence path-connected. A smooth, eventually constant path to the identity gives a second more elementary way of extending a diffeomorphism from the circle to the open unit disc (a special case of the Alexander trick). Moreover, the diffeomorphism group of the circle has the homotopy-type of the orthogonal group O(2).

The corresponding extension problem for diffeomorphisms of higher-dimensional spheres S^(_n_−1) was much studied in the 1950s and 1960s, with notable contributions from René Thom, John Milnor and Stephen Smale. An obstruction to such extensions is given by the finite abelian group Γ_(_n_), the "group of twisted spheres", defined as the quotient of the abelian component group of the diffeomorphism group by the subgroup of classes extending to diffeomorphisms of the ball _B_^(_n_).

Connectedness

For manifolds, the diffeomorphism group is usually not connected. Its component group is called the mapping class group. In dimension 2 (i.e. surfaces), the mapping class group is a finitely presented group generated by Dehn twists (Dehn, Lickorish, Hatcher). Max Dehn and Jakob Nielsen showed that it can be identified with the outer automorphism group of the fundamental group of the surface.

William Thurston refined this analysis by classifying elements of the mapping class group into three types: those equivalent to a periodic diffeomorphism; those equivalent to a diffeomorphism leaving a simple closed curve invariant; and those equivalent to pseudo-Anosov diffeomorphisms. In the case of the torus S¹ × S¹ = R²/Z², the mapping class group is simply the modular group SL(2, Z) and the classification becomes classical in terms of elliptic, parabolic and hyperbolic matrices. Thurston accomplished his classification by observing that the mapping class group acted naturally on a compactification of Teichmüller space; as this enlarged space was homeomorphic to a closed ball, the Brouwer fixed-point theorem became applicable. Smale conjectured that if _M_ is an oriented smooth closed manifold, the identity component of the group of orientation-preserving diffeomorphisms is simple. This had first been proved for a product of circles by Michel Herman; it was proved in full generality by Thurston.

Homotopy types

-   The diffeomorphism group of S² has the homotopy-type of the subgroup O(3). This was proven by Steve Smale.[1]
-   The diffeomorphism group of the torus has the homotopy-type of its linear automorphisms: S¹ × S¹ × GL(2, Z).
-   The diffeomorphism groups of orientable surfaces of genus _g_ > 1 have the homotopy-type of their mapping class groups (i.e. the components are contractible).
-   The homotopy-type of the diffeomorphism groups of 3-manifolds are fairly well understood via the work of Ivanov, Hatcher, Gabai and Rubinstein, although there are a few outstanding open cases (primarily 3-manifolds with finite fundamental groups).
-   The homotopy-type of diffeomorphism groups of _n_-manifolds for _n_ > 3 are poorly understood. For example, it is an open problem whether or not Diff(S⁴) has more than two components. Via Milnor, Kahn and Antonelli, however, it is known that provided _n_ > 6, Diff(S^(_n_)) does not have the homotopy-type of a finite CW-complex.


Homeomorphism and diffeomorphism

Unlike non-diffeomorphic homeomorphisms, it is relatively difficult to find a pair of homeomorphic manifolds that are not diffeomorphic. In dimensions 1, 2, 3, any pair of homeomorphic smooth manifolds are diffeomorphic. In dimension 4 or greater, examples of homeomorphic but not diffeomorphic pairs have been found. The first such example was constructed by John Milnor in dimension 7. He constructed a smooth 7-dimensional manifold (called now Milnor's sphere) that is homeomorphic to the standard 7-sphere but not diffeomorphic to it. There are, in fact, 28 oriented diffeomorphism classes of manifolds homeomorphic to the 7-sphere (each of them is the total space of a fiber bundle over the 4-sphere with the 3-sphere as the fiber).

More unusual phenomena occur for 4-manifolds. In the early 1980s, a combination of results due to Simon Donaldson and Michael Freedman led to the discovery of exotic R⁴s: there are uncountably many pairwise non-diffeomorphic open subsets of R⁴ each of which is homeomorphic to R⁴, and also there are uncountably many pairwise non-diffeomorphic differentiable manifolds homeomorphic to R⁴ that do not embed smoothly in R⁴.


See also

-   Étale morphism
-   Large diffeomorphism
-   Local diffeomorphism
-   Superdiffeomorphism


Notes


References

-   Chaudhuri, Shyamoli, Hakuru Kawai and S.-H Henry Tye. "Path-integral formulation of closed strings", _Phys. Rev. D_, 36: 1148 (1987).
-   -   -   -   -   -   -   (arXiv:1211.5704)

-   -   -

Diffeomorphisms Category:Mathematical physics

[1]