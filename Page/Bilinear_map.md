In mathematics, a BILINEAR MAP is a function combining elements of two vector spaces to yield an element of a third vector space, and is linear in each of its arguments. Matrix multiplication is an example.


Definition

Vector spaces

Let V, W and X be three vector spaces over the same base field 𝔽. A bilinear map is a function

_B_ : _V_ × _W_ → _X_
such that ∀w ∈ W, the map B_(w)

_v_ ↦ _B_(_v_, _w_)
is a linear map from V to X, and ∀v ∈ V, the map B_(v)

_w_ ↦ _B_(_v_, _w_)
is a linear map from _W_ to _X_.

In other words, when we hold the first entry of the bilinear map fixed while letting the second entry vary, the result is a linear operator, and similarly for when we hold the second entry fixed.

If and we have for all _v_, _w_ in _V_, then we say that _B_ is _symmetric_.

The case where _X_ is the base field _F_, and we have a BILINEAR FORM, is particularly useful (see for example scalar product, inner product and quadratic form).

Modules

The definition works without any changes if instead of vector spaces over a field _F_, we use modules over a commutative ring _R_. It generalizes to _n_-ary functions, where the proper term is _multilinear_.

For non-commutative rings _R_ and _S_, a left _R_-module _M_ and a right _S_-module _N_, a bilinear map is a map with _T_ an -bimodule, and for which any _n_ in _N_, is an _R_-module homomorphism, and for any _m_ in _M_, is an _S_-module homomorphism. This satisfies

    _B_(_r_ ⋅ _m_, _n_) = _r_ ⋅ _B_(_m_, _n_)
    _B_(_m_, _n_ ⋅ _s_) = _B_(_m_, _n_) ⋅ _s_

for all _m_ in _M_, _n_ in _N_, _r_ in _R_ and _s_ in _S_, as well as _B_ being additive in each argument.


Properties

A first immediate consequence of the definition is that whenever or . This may be seen by writing the zero vector 0_(_X_) as (and similarly for 0_(_W_)) and moving the scalar 0 "outside", in front of _B_, by linearity.

The set of all bilinear maps is a linear subspace of the space (viz. vector space, module) of all maps from into _X_.

FourfacesofBilinaearmaps.PNG of this are taken to the other three possibilities using duality and the musical isomorphism]]

If _V_, _W_, _X_ are finite-dimensional, then so is . For , i.e. bilinear forms, the dimension of this space is (while the space of _linear_ forms is of dimension ). To see this, choose a basis for _V_ and _W_; then each bilinear map can be uniquely represented by the matrix , and vice versa. Now, if _X_ is a space of higher dimension, we obviously have .


Examples

-   Matrix multiplication is a bilinear map .
-   If a vector space _V_ over the real numbers R carries an inner product, then the inner product is a bilinear map .
-   In general, for a vector space _V_ over a field _F_, a bilinear form on _V_ is the same as a bilinear map .
-   If _V_ is a vector space with dual space _V_^(∗), then the application operator, is a bilinear map from to the base field.
-   Let _V_ and _W_ be vector spaces over the same base field _F_. If _f_ is a member of _V_^(∗) and _g_ a member of _W_^(∗), then defines a bilinear map .
-   The cross product in R³ is a bilinear map .
-   Let be a bilinear map, and be a linear map, then is a bilinear map on .


See also

-   Tensor product
-   Sesquilinear form
-   Bilinear filtering
-   Multilinear map
-   Multilinear subspace learning


External links

-

Category:Bilinear operators Category:Multilinear algebra