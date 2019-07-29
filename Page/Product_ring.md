In mathematics, it is possible to combine several rings into one large PRODUCT RING. This is done by giving the Cartesian product of a possibly infinite collection of rings coordinatewise addition and multiplication. The resulting ring is called a DIRECT PRODUCT of the original rings.


Examples

An important example is the ring Z/_n_Z of integers modulo _n_. If _n_ is written as a product of prime powers (see fundamental theorem of arithmetic),

_n_ = _p_₁^(_n_₁)_p_₂^(_n_₂)⋯ _p__(_k_)^(_n__(_k_)),

where the _p_(i)_ are distinct primes, then Z/_n_Z is naturally isomorphic to the product ring

Z/_p_₁^(_n_₁)Z × Z/_p_₂^(_n_₂)Z × ⋯ × Z/_p__(_k_)^(_n__(_k_))Z.
This follows from the Chinese remainder theorem.


Properties

If is a product of rings, then for every _i_ in _I_ we have a surjective ring homomorphism which projects the product on the _i_th coordinate. The product _R_, together with the projections _p_(i)_, has the following universal property:

    if _S_ is any ring and is a ring homomorphism for every _i_ in _I_, then there exists _precisely one_ ring homomorphism such that for every _i_ in _I_.

This shows that the product of rings is an instance of products in the sense of category theory.

When _I_ is finite, the underlying additive group of coincides with the direct sum of the additive groups of the _R__(_i_). In this case, some authors call _R_ the "direct sum of the rings _R__(_i_)" and write , but this is incorrect from the point of view of category theory, since it is usually not a coproduct in the category of rings: for example, when two or more of the _R__(_i_) are nonzero, the inclusion map fails to map 1 to 1 and hence is not a ring homomorphism.

(A finite coproduct in the category of commutative (associative) algebras over a commutative ring is a tensor product of algebras. A coproduct in the category of algebras is a free product of algebras.)

Direct products are commutative and associative (up to isomorphism), meaning that it doesn't matter in which order one forms the direct product.

If _A_(i)_ is an ideal of _R_(i)_ for each _i_ in _I_, then is an ideal of _R_. If _I_ is finite, then the converse is true, i.e., every ideal of _R_ is of this form. However, if _I_ is infinite and the rings _R_(i)_ are non-zero, then the converse is false: the set of elements with all but finitely many nonzero coordinates forms an ideal which is not a direct product of ideals of the _R_(i)_. The ideal _A_ is a prime ideal in _R_ if all but one of the _A_(i)_ are equal to _R_(i)_ and the remaining _A_(i)_ is a prime ideal in _R_(i)_. However, the converse is not true when _I_ is infinite. For example, the direct sum of the _R_(i)_ form an ideal not contained in any such _A_, but the axiom of choice gives that it is contained in some maximal ideal which is a fortiori prime.

An element _x_ in _R_ is a unit if and only if all of its components are units, i.e., if and only if is a unit in _R_(i)_ for every _i_ in _I_. The group of units of _R_ is the product of the groups of units of _R_(i)_.

A product of two or more non-zero rings always has nonzero zero divisors: if _x_ is an element of the product whose coordinates are all zero except , and _y_ is an element of the product with all coordinates zero except where , then in the product ring.


See also

-   Direct product


Notes


References

-   -

Category:Ring theory Category:Binary operations