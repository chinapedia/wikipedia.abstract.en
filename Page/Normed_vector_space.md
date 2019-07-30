In mathematics, a NORMED VECTOR SPACE is a vector space over the real or complex numbers, on which a NORM is defined. A norm is the formalization and the generalization to real vector spaces of the intuitive notion of distance in the real world. A norm is a real-valued function defined on the vector space that has the following properties:

1.  The zero vector, 0, has zero length; every other vector has a positive length.

        ∥x∥ ≥ 0, and ∥x∥ = 0 if and only if x = 0

2.  Multiplying a vector by a positive number changes its length without changing its direction. Moreover,
    : ∥αx∥ = |α|∥x∥ for any scalar α.
3.  The triangle inequality holds. That is, taking norms as distances, the distance from point A through B to C is never shorter than going directly from A to C, or the shortest distance between any two points is a straight line.

        ∥x + y∥ ≤ ∥x∥ + ∥y∥ for any vectors x and y. (triangle inequality)

The generalization of these three properties to more abstract vector spaces leads to the notion of NORM. A vector space on which a norm is defined is then called a NORMED SPACE or NORMED VECTOR SPACE.[1] Normed vector spaces are central to the study of linear algebra and functional analysis.


Definition

A NORMED VECTOR SPACE is a pair (V, ∥ ⋅ ∥) where V is a vector space and ∥ ⋅ ∥ a norm on V.

A SEMINORMED VECTOR SPACE is a pair (V, p) where V is a vector space and p a seminorm on V.

We often omit p or ∥ ⋅ ∥ and just write V for a space if it is clear from the context what (semi) norm we are using.

In a more general sense, a vector norm can be taken to be any real-valued function that satisfies the three properties above.

A useful variation of the triangle inequality is

∥_x_ − _y_∥ ≥ |∥_x_∥ − ∥_y_∥|
for any vectors x and y.

This also shows that a vector norm is a continuous function.

Note that property 2 depends on a choice of norm |α| on the field of scalars. When the scalar field is ℝ (or more generally a subset of ℂ), this is usually taken to be the ordinary absolute value, but other choices are possible. For example, for a vector space over ℚ one could take |α| to be the _p_-adic norm, which gives rise to a different class of normed vector spaces.


Topological structure

If (_V_, ‖·‖) is a normed vector space, the norm ‖·‖ induces a metric (a notion of _distance_) and therefore a topology on _V_. This metric is defined in the natural way: the distance between two vectors U and V is given by ‖U−V‖. This topology is precisely the weakest topology which makes ‖·‖ continuous and which is compatible with the linear structure of _V_ in the following sense:

1.  The vector addition + : _V_ × _V_ → _V_ is jointly continuous with respect to this topology. This follows directly from the triangle inequality.
2.  The scalar multiplication · : K × _V_ → _V_, where K is the underlying scalar field of _V_, is jointly continuous. This follows from the triangle inequality and homogeneity of the norm.

Similarly, for any semi-normed vector space we can define the distance between two vectors U and V as ‖U−V‖. This turns the seminormed space into a pseudometric space (notice this is weaker than a metric) and allows the definition of notions such as continuity and convergence. To put it more abstractly every semi-normed vector space is a topological vector space and thus carries a topological structure which is induced by the semi-norm.

Of special interest are complete normed spaces called Banach spaces. Every normed vector space _V_ sits as a dense subspace inside a Banach space; this Banach space is essentially uniquely defined by _V_ and is called the _completion_ of _V_.

All norms on a finite-dimensional vector space are equivalent from a topological viewpoint as they induce the same topology (although the resulting metric spaces need not be the same).[2] And since any Euclidean space is complete, we can thus conclude that all finite-dimensional normed vector spaces are Banach spaces. A normed vector space _V_ is locally compact if and only if the unit ball _B_ = {_x_ : ‖_x_‖ ≤ 1} is compact, which is the case if and only if _V_ is finite-dimensional; this is a consequence of Riesz's lemma. (In fact, a more general result is true: a topological vector space is locally compact if and only if it is finite-dimensional. The point here is that we don't assume the topology comes from a norm.)

The topology of a seminormed vector space has many nice properties. Given a neighbourhood system 𝒩(0) around 0 we can construct all other neighbourhood systems as

𝒩(_x_) = _x_ + 𝒩(0) := {_x_ + _N_ ∣ _N_ ∈ 𝒩(0)}
with

_x_ + _N_ := {_x_ + _n_ ∣ _n_ ∈ _N_}
.

Moreover there exists a neighbourhood basis for 0 consisting of absorbing and convex sets. As this property is very useful in functional analysis, generalizations of normed vector spaces with this property are studied under the name locally convex spaces.


Linear maps and dual spaces

The most important maps between two normed vector spaces are the continuous linear maps. Together with these maps, normed vector spaces form a category.

The norm is a continuous function on its vector space. All linear maps between finite dimensional vector spaces are also continuous.

An _isometry_ between two normed vector spaces is a linear map _f_ which preserves the norm (meaning ‖_f_(V)‖ = ‖V‖ for all vectors V). Isometries are always continuous and injective. A surjective isometry between the normed vector spaces _V_ and _W_ is called an _isometric isomorphism_, and _V_ and _W_ are called _isometrically isomorphic_. Isometrically isomorphic normed vector spaces are identical for all practical purposes.

When speaking of normed vector spaces, we augment the notion of dual space to take the norm into account. The dual _V_ ' of a normed vector space _V_ is the space of all _continuous_ linear maps from _V_ to the base field (the complexes or the reals) — such linear maps are called "functionals". The norm of a functional φ is defined as the supremum of |φ(V)| where V ranges over all unit vectors (i.e. vectors of norm 1) in _V_. This turns _V_ ' into a normed vector space. An important theorem about continuous linear functionals on normed vector spaces is the Hahn–Banach theorem.


Normed spaces as quotient spaces of seminormed spaces

The definition of many normed spaces (in particular, Banach spaces) involves a seminorm defined on a vector space and then the normed space is defined as the quotient space by the subspace of elements of seminorm zero. For instance, with the L^(_p_) spaces, the function defined by

∥_f_∥_(_p_) = (∫|_f_(_x_)|^(_p_) _d__x_)^(1/_p_)
is a seminorm on the vector space of all functions on which the Lebesgue integral on the right hand side is defined and finite. However, the seminorm is equal to zero for any function supported on a set of Lebesgue measure zero. These functions form a subspace which we "quotient out", making them equivalent to the zero function.


Finite product spaces

Given _n_ seminormed spaces _X__(_i_) with seminorms _q__(_i_) we can define the product space as

$$X := \prod_{i=1}^{n} X_i$$
with vector addition defined as

(_x_₁, …, _x__(_n_)) + (_y_₁, …, _y__(_n_)) := (_x_₁ + _y_₁, …, _x__(_n_) + _y__(_n_))
and scalar multiplication defined as

_α_(_x_₁, …, _x__(_n_)) := (_α__x_₁, …, _α__x__(_n_))
.

We define a new function _q_

_q_ : _X_ ↦ ℝ
for example as

$$q:(x_1,\ldots,x_n) \to \sum_{i=1}^n q_i(x_i)$$
. which is a seminorm on _X_. The function _q_ is a norm if and only if all _q__(_i_) are norms.

More generally, for each real _p_≥1 we have the seminorm:

$$q:(x_1,\ldots,x_n) \to \left( \sum_{i=1}^n q_i(x_i)^p \right)^\frac{1}{p}.$$

For each p this defines the same topological space.

A straightforward argument involving elementary linear algebra shows that the only finite-dimensional seminormed spaces are those arising as the product space of a normed space and a space with trivial seminorm. Consequently, many of the more interesting examples and applications of seminormed spaces occur for infinite-dimensional vector spaces.


See also

-   Locally convex space, generalizations of seminormed vector spaces
-   Banach space, normed vector spaces which are complete with respect to the metric induced by the norm
-   Inner product space, normed vector spaces where the norm is given by an inner product
-   Finsler manifold, where the length of each tangent vector is determined by a norm
-   Space (mathematics)


References

-

Normed_spaces

[1]

[2] , Theorem 1.3.6