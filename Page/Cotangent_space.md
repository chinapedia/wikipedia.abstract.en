In differential geometry, one can attach to every point _x_ of a smooth (or differentiable) manifold a vector space called the COTANGENT SPACE at _x_. Typically, the cotangent space is defined as the dual space of the tangent space at _x_, although there are more direct definitions (see below). The elements of the cotangent space are called COTANGENT VECTORS or TANGENT COVECTORS.


Properties

All cotangent spaces at points on a connected manifold have the same dimension, equal to the dimension of the manifold. All the cotangent spaces of a manifold can be "glued together" (i.e. unioned and endowed with a topology) to form a new differentiable manifold of twice the dimension, the cotangent bundle of the manifold.

The tangent space and the cotangent space at a point are both real vector spaces of the same dimension and therefore isomorphic to each other via many possible isomorphisms. The introduction of a Riemannian metric or a symplectic form gives rise to a natural isomorphism between the tangent space and the cotangent space at a point, associating to any tangent covector a canonical tangent vector.


Formal definitions

Definition as linear functionals

Let _M_ be a smooth manifold and let _x_ be a point in _M_. Let _T__(_x_)_M_ be the tangent space at _x_. Then the cotangent space at _x_ is defined as the dual space of _T__(_x_)_M_:

    _T__(_x_)^(*)_M_ = (_T__(_x_)_M_)^(*)

Concretely, elements of the cotangent space are linear functionals on _T__(_x_)_M_. That is, every element α ∈ _T__(_x_)^(*)_M_ is a linear map

    α : _T__(_x_)_M_ → F

where F is the underlying field of the vector space being considered, for example, the field of real numbers. The elements of _T__(_x_)^(*)_M_ are called cotangent vectors.

Alternative definition

In some cases, one might like to have a direct definition of the cotangent space without reference to the tangent space. Such a definition can be formulated in terms of equivalence classes of smooth functions on _M_. Informally, we will say that two smooth functions _f_ and _g_ are equivalent at a point _x_ if they have the same first-order behavior near _x_, analogous to their linear Taylor polynomials; two functions _f_ and _g_ have the same first order behaviour near _x_ if and only if the derivative of the function _f_-_g_ vanishes at _x_. The cotangent space will then consist of all the possible first-order behaviors of a function near _x_.

Let _M_ be a smooth manifold and let _x_ be a point in _M_. Let _I__(_x_) be the ideal of all functions in C^(∞)(_M_) vanishing at _x_, and let _I__(_x_)² be the set of functions of the form ∑_(i)f_(i)g_(i) , where _f__(_i_), _g__(_i_) ∈ _I__(_x_). Then _I__(_x_) and _I__(_x_)² are real vector spaces and the cotangent space is defined as the quotient space _T__(_x_)^(*)_M_ = _I__(_x_) / _I__(_x_)².

This formulation is analogous to the construction of the cotangent space to define the Zariski tangent space in algebraic geometry. The construction also generalizes to locally ringed spaces.


The differential of a function

Let _M_ be a smooth manifold and let _f_ ∈ C^(∞)(_M_) be a smooth function. The differential of _f_ at a point _x_ is the map

    d_f__(_x_)(_X__(_x_)) = _X__(_x_)(_f_)

where _X__(_x_) is a tangent vector at _x_, thought of as a derivation. That is X(f) = ℒ_(X)f is the Lie derivative of _f_ in the direction _X_, and one has d_f_(_X_)=_X_(_f_). Equivalently, we can think of tangent vectors as tangents to curves, and write

    d_f__(_x_)(γ′(0)) = (_f_ o γ)′(0)

In either case, d_f__(_x_) is a linear map on _T__(_x_)_M_ and hence it is a tangent covector at _x_.

We can then define the differential map d : C^(∞)(_M_) → _T__(_x_)^(*)_M_ at a point _x_ as the map which sends _f_ to d_f__(_x_). Properties of the differential map include:

1.  d is a linear map: d(_af_ + _bg_) = _a_ d_f_ + _b_ d_g_ for constants _a_ and _b_,
2.  d(_fg_)_(_x_) = _f_(_x_)d_g__(_x_) + _g_(_x_)d_f__(_x_),

The differential map provides the link between the two alternate definitions of the cotangent space given above. Given a function _f_ ∈ _I__(_x_) (a smooth function vanishing at _x_) we can form the linear functional d_f__(_x_) as above. Since the map d restricts to 0 on _I__(_x_)² (the reader should verify this), d descends to a map from _I__(_x_) / _I__(_x_)² to the dual of the tangent space, (_T__(_x_)_M_)^(*). One can show that this map is an isomorphism, establishing the equivalence of the two definitions.


The pullback of a smooth map

Just as every differentiable map _f_ : _M_ → _N_ between manifolds induces a linear map (called the _pushforward_ or _derivative_) between the tangent spaces

_f__(*): _T__(_x_)_M_ → _T__(_f_(_x_))_N_
every such map induces a linear map (called the _pullback_) between the cotangent spaces, only this time in the reverse direction:

_f_^(*): _T__(_f_(_x_))^(*)_N_ → _T__(_x_)^(*)_M_
The pullback is naturally defined as the dual (or transpose) of the pushforward. Unraveling the definition, this means the following:

(_f_^(*)_θ_)(_X__(_x_)) = _θ_(_f__(*)_X__(_x_))
where θ ∈ _T__(_f_(_x_))^(*)_N_ and _X__(_x_) ∈ _T__(_x_)_M_. Note carefully where everything lives.

If we define tangent covectors in terms of equivalence classes of smooth maps vanishing at a point then the definition of the pullback is even more straightforward. Let _g_ be a smooth function on _N_ vanishing at _f_(_x_). Then the pullback of the covector determined by _g_ (denoted d_g_) is given by

_f_^(*)_d__g_ = _d_(_g_ ∘ _f_).
That is, it is the equivalence class of functions on _M_ vanishing at _x_ determined by _g_ o _f_.


Exterior powers

The _k_-th exterior power of the cotangent space, denoted Λ^(_k_)(_T__(_x_)^(*)_M_), is another important object in differential geometry. Vectors in the _k_th exterior power, or more precisely sections of the _k_-th exterior power of the cotangent bundle, are called differential _k_-forms. They can be thought of as alternating, multilinear maps on _k_ tangent vectors. For this reason, tangent covectors are frequently called _one-forms_.


References

-   -   -   -

Category:Differential topology Category:Tensors