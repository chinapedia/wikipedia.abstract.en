In ring theory or abstract algebra, a RING HOMOMORPHISM is a function between two rings which respects the structure.

More explicitly, if _R_ and _S_ are rings, then a ring homomorphism is a function such that f is[1][2][3][4][5][6]

:;addition preserving
_f_(_a_ + _b_) = _f_(_a_) + _f_(_b_)
for all _a_ and _b_ in _R_

:;multiplication preserving
_f_(_a__b_) = _f_(_a_)_f_(_b_)
for all _a_ and _b_ in _R_

:;unity (multiplicative identity) preserving
_f_(1_(_R_)) = 1_(_S_)
.

(Additive inverses and the additive identity are part of the structure too, but it is not necessary to require explicitly that they too are respected, because these conditions are consequences of the three conditions above. On the other hand, neglecting to include the condition _f_(1_(_R_)) = 1_(_S_) would cause several of the properties below to fail.)

If _R_ and _S_ are rngs (also known as _pseudo-rings_, or _non-unital rings_), then the natural notion[7] is that of a RNG HOMOMORPHISM, defined as above except without the third condition _f_(1_(_R_)) = 1_(_S_). It is possible to have a rng homomorphism between (unital) rings that is not a ring homomorphism.

The composition of two ring homomorphisms is a ring homomorphism. It follows that the class of all rings forms a category with ring homomorphisms as the morphisms (cf. the category of rings). In particular, one obtains the notions of ring endomorphism, ring isomorphism, and ring automorphism.


Properties

Let be a ring homomorphism. Then, directly from these definitions, one can deduce:

-   _f_(0_(_R_)) = 0_(_S_).
-   _f_(−_a_) = −_f_(_a_) for all _a_ in _R_.
-   For any unit element _a_ in _R_, _f_(_a_) is a unit element such that . In particular, _f_ induces a group homomorphism from the (multiplicative) group of units of _R_ to the (multiplicative) group of units of _S_ (or of im(_f_)).
-   The image of _f_, denoted im(_f_), is a subring of _S_.
-   The KERNEL of _f_, defined as , is an ideal in _R_. Every ideal in a ring _R_ arises from some ring homomorphism in this way.
-   The homomorphism _f_ is injective if and only if .
-   If _f_ is bijective, then its inverse _f_^(−1) is also a ring homomorphism. In this case, _f_ is called an ISOMORPHISM, and the rings _R_ and _S_ are called ISOMORPHIC. From the standpoint of ring theory, isomorphic rings cannot be distinguished.
-   If there exists a ring homomorphism then the characteristic of _S_ divides the characteristic of _R_. This can sometimes be used to show that between certain rings _R_ and _S_, no ring homomorphisms can exist.
-   If _R_(p)_ is the smallest subring contained in _R_ and _S_(p)_ is the smallest subring contained in _S_, then every ring homomorphism induces a ring homomorphism .
-   If _R_ is a field (or more generally a skew-field) and _S_ is not the zero ring, then _f_ is injective.
-   If both _R_ and _S_ are fields, then im(_f_) is a subfield of _S_, so _S_ can be viewed as a field extension of _R_.
-   If _R_ and _S_ are commutative and _P_ is a prime ideal of _S_ then _f_^(−1)(_P_) is a prime ideal of _R_.
-   If _R_ and _S_ are commutative and _S_ is an integral domain, then ker(_f_) is a prime ideal of _R_.
-   If _R_ and _S_ are commutative, _S_ is a field, and _f_ is surjective, then ker(_f_) is a maximal ideal of _R_.
-   If _f_ is surjective, _P_ is prime (maximal) ideal in _R_ and , then _f_(_P_) is prime (maximal) ideal in _S_.

Moreover,

-   The composition of ring homomorphisms is a ring homomorphism.
-   The identity map is a ring homomorphism (but not the zero map).
-   Therefore, the class of all rings together with ring homomorphisms forms a category, the category of rings.
-   For every ring _R_, there is a unique ring homomorphism . This says that the ring of integers is an initial object in the category of rings.
-   For every ring _R_, there is a unique ring homomorphism , where 0 denotes the zero ring (the ring whose only element is zero). This says that the zero ring is a terminal object in the category of rings.


Examples

-   The function , defined by is a surjective ring homomorphism with kernel _n_Z (see modular arithmetic).
-   The function defined by is a rng homomorphism (and rng endomorphism), with kernel 3Z₆ and image 2Z₆ (which is isomorphic to Z₃).
-   There is no ring homomorphism for .
-   The complex conjugation is a ring homomorphism (in fact, an example of a ring automorphism.)
-   If _R_ and _S_ are rings, the zero function from _R_ to _S_ is a ring homomorphism if and only if _S_ is the zero ring. (Otherwise it fails to map 1_(_R_) to 1_(_S_).) On the other hand, the zero function is always a rng homomorphism.
-   If R[_X_] denotes the ring of all polynomials in the variable _X_ with coefficients in the real numbers R, and C denotes the complex numbers, then the function defined by (substitute the imaginary unit _i_ for the variable _X_ in the polynomial _p_) is a surjective ring homomorphism. The kernel of _f_ consists of all polynomials in R[_X_] which are divisible by .
-   If is a ring homomorphism between the rings _R_ and _S_, then _f_ induces a ring homomorphism between the matrix rings .
-   A unital algebra homomorphism between unital associative algebras over a commutative ring _R_ is a ring homomorphism that is also _R_-linear.


The category of rings

Endomorphisms, isomorphisms, and automorphisms

-   A RING ENDOMORPHISM is a ring homomorphism from a ring to itself.
-   A RING ISOMORPHISM is a ring homomorphism having a 2-sided inverse that is also a ring homomorphism. One can prove that a ring homomorphism is an isomorphism if and only if it is bijective as a function on the underlying sets. If there exists a ring isomorphism between two rings _R_ and _S_, then _R_ and _S_ are called ISOMORPHIC. Isomorphic rings differ only by a relabeling of elements. Example: Up to isomorphism, there are four rings of order 4. (This means that there are four pairwise non-isomorphic rings of order 4 such that every other ring of order 4 is isomorphic to one of them.) On the other hand, up to isomorphism, there are eleven rngs of order 4.
-   A RING AUTOMORPHISM is a ring isomorphism from a ring to itself.

Monomorphisms and epimorphisms

Injective ring homomorphisms are identical to monomorphisms in the category of rings: If is a monomorphism that is not injective, then it sends some _r_₁ and _r_₂ to the same element of _S_. Consider the two maps _g_₁ and _g_₂ from Z[_x_] to _R_ that map _x_ to _r_₁ and _r_₂, respectively; and are identical, but since _f_ is a monomorphism this is impossible.

However, surjective ring homomorphisms are vastly different from epimorphisms in the category of rings. For example, the inclusion is a ring epimorphism, but not a surjection. However, they are exactly the same as the strong epimorphisms.


Notes


References

-   Michael Artin, _Algebra_, Prentice-Hall, 1991.
-   Michael F. Atiyah and Ian G. Macdonald, _Introduction to commutative algebra_, Addison-Wesley, 1969.
-   Nicolas Bourbaki, _Algebra I, Chapters 1-3_, 1998.
-   David Eisenbud, _Commutative algebra with a view toward algebraic geometry_, Springer, 1995.
-   Michiel Hazewinkel, Nadiya Gubareni, Vladimir V. Kirichenko. _Algebras, rings and modules_. Volume 1. 2004. Springer, 2004.
-   Nathan Jacobson, _Basic algebra I_, 2nd edition, 1985.
-   Serge Lang, _Algebra_ 3rd ed., Springer, 2002.


See also

-   Change of rings
-   Ring extension

Category:Ring theory Category:Morphisms

[1] Artin, p. 353

[2] Atiyah and Macdonald, p. 2

[3] Bourbaki, p. 102

[4] Eisenbud, p. 12

[5] Jacobson, p. 103

[6] Lang, p. 88

[7] Hazewinkel et al. (2004), p. 3. Warning: They use the word _ring_ to mean rng .