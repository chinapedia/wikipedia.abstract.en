In abstract algebra, a MONOID RING is a ring constructed from a ring and a monoid, just as a group ring is constructed from a ring and a group.


Definition

Let _R_ be a ring and let _G_ be a monoid. The MONOID RING or MONOID ALGEBRA of _G_ over _R_, denoted _R_[_G_] or _RG_, is the set of formal sums ∑_(g ∈ G)r_(g)g, where r_(g) ∈ R for each g ∈ G and _r__(_g_) = 0 for all but finitely many _g_, equipped with coefficient-wise addition, and the multiplication in which the elements of _R_ commute with the elements of _G_. More formally, _R_[_G_] is the set of functions such that } is finite, equipped with addition of functions, and with multiplication defined by

(_ϕ__ψ_)(_g_) = ∑_(_k_ℓ = _g_)_ϕ_(_k_)_ψ_(ℓ)
. If _G_ is a group, then _R_[_G_] is also called the group ring of _G_ over _R_.


Universal property

Given _R_ and _G_, there is a ring homomorphism sending each _r_ to _r_1 (where 1 is the identity element of _G_), and a monoid homomorphism (where the latter is viewed as a monoid under multiplication) sending each _g_ to 1_g_ (where 1 is the multiplicative identity of _R_). We have that α(_r_) commutes with β(_g_) for all _r_ in _R_ and _g_ in _G_.

The universal property of the monoid ring states that given a ring _S_, a ring homomorphism , and a monoid homomorphism to the multiplicative monoid of _S_, such that α'(_r_) commutes with β'(_g_) for all _r_ in _R_ and _g_ in _G_, there is a unique ring homomorphism such that composing α and β with γ produces α' and β '.


Augmentation

The AUGMENTATION is the ring homomorphism defined by

    η(∑_(g ∈ G)r_(g)g) = ∑_(g ∈ G)r_(g).

The kernel of _η_ is called the AUGMENTATION IDEAL. It is a free _R_-module with basis consisting of 1–_g_ for all _g_ in _G_ not equal to 1.


Examples

Given a ring _R_ and the (additive) monoid of natural numbers N (or {_x_^(_n_)} viewed multiplicatively), we obtain the ring _R_[{_x_^(_n_)}] =: _R_[_x_] of polynomials over _R_. The monoid N^(_n_) (with the addition) gives the polynomial ring with n variables: _R_[N^(_n_)] =: _R_[X₁, ..., X_(_n_)].


Generalization

If _G_ is a semigroup, the same construction yields a SEMIGROUP RING _R_[_G_].


See also

-   Free algebra
-   Puiseux series


References

-


Further reading

-   R.Gilmer. _Commutative semigroup rings_. University of Chicago Press, Chicago–London, 1984

Category:Ring theory