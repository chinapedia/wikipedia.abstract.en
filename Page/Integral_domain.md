In mathematics, and specifically in abstract algebra, an INTEGRAL DOMAIN is a nonzero commutative ring in which the product of any two nonzero elements is nonzero.[1][2] Integral domains are generalizations of the ring of integers and provide a natural setting for studying divisibility. In an integral domain, every nonzero element _a_ has the cancellation property, that is, if , an equality _ac_}} implies _c_}}.

"Integral domain" is defined almost universally as above, but there is some variation. This article follows the convention that rings have a multiplicative identity, generally denoted 1, but some authors do not follow this, by not requiring integral domains to have a multiplicative identity.[3][4] Noncommutative integral domains are sometimes admitted.[5] This article, however, follows the much more usual convention of reserving the term "integral domain" for the commutative case and using "domain" for the general case including noncommutative rings.

Some sources, notably Lang, use the term ENTIRE RING for integral domain.[6]

Some specific kinds of integral domains are given with the following chain of class inclusions:


Definition

An _integral domain_ is basically defined as a nonzero commutative ring in which the product of any two nonzero elements is nonzero. This definition may be reformulated in a number of equivalent definitions :

-   An integral domain is a nonzero commutative ring with no nonzero zero divisors.
-   An integral domain is a commutative ring in which the zero ideal {0} is a prime ideal.
-   An integral domain is a nonzero commutative ring for which every non-zero element is cancellable under multiplication.
-   An integral domain is a ring for which the set of nonzero elements is a commutative monoid under multiplication (because a monoid must be closed under multiplication).
-   An integral domain is a nonzero commutative ring in which for every nonzero element _r_, the function that maps each element _x_ of the ring to the product _xr_ is injective. Elements _r_ with this property are called _regular_, so it is equivalent to require that every nonzero element of the ring be regular.

A fundamental property of integral domains is that every subring of a field is an integral domain, and that, conversely, given any integral domain, one may construct a field that contains it as a subring, the field of fractions. This characterization may be viewed as a further equivalent definition:

-   An integral domain is a ring that is (isomorphic to) a subring of a field.


Examples

-   The archetypical example is the ring $\Z$ of all integers.
-   Every field is an integral domain. For example, the field $\R$ of all real numbers is an integral domain. Conversely, every Artinian integral domain is a field. In particular, all finite integral domains are finite fields (more generally, by Wedderburn's little theorem, finite domains are finite fields). The ring of integers $\Z$ provides an example of a non-Artinian infinite integral domain that is not a field, possessing infinite descending sequences of ideals such as:

$$\Z \supset 2\Z \supset \cdots \supset 2^n\Z \supset 2^{n+1}\Z \supset \cdots$$

-   Rings of polynomials are integral domains if the coefficients come from an integral domain. For instance, the ring $\Z[x]$ of all polynomials in one variable with integer coefficients is an integral domain; so is the ring $\Complex[x_1,\ldots,x_n]$ of all polynomials in _n_-variables with complex coefficients.

-   The previous example can be further exploited by taking quotients from prime ideals. For example, the ring $\Complex[x,y]/(y^2 - x(x-1)(x-2))$corresponding to a plane elliptic curve is an integral domain. Integrality can be checked by showing y² − x(x − 1)(x − 2)is an irreducible polynomial.

-   The ring $\Z[x]/(x^2 - n) \cong \Z[\sqrt{n}]$ is an integral domain for any non-square integer n. If n > 0, then this ring is always a subring of $\R$, otherwise, it is a subring of $\Complex.$

-   The ring of p-adic integers $\Z_p$ is an integral domain.

-   If U is a connected open subset of the complex plane $\Complex$, then the ring ℋ(U) consisting of all holomorphic functions is an integral domain. The same is true for rings of analytic functions on connected open subsets of analytic manifolds.

-   A regular local ring is an integral domain. In fact, a regular local ring is a UFD.[7][8]


Non-examples

The following rings are _not_ integral domains.

-   The zero ring (the ring in which 0 = 1).

-   The quotient ring $\Z/m\Z$ when _m_ is a composite number. Indeed, choose a proper factorization m = xy (meaning that x and y are not equal to 1 or m). Then $x \not\equiv 0 \bmod{m}$ and $y \not\equiv 0 \bmod{m}$, but xy ≡ 0mod m.

-   A product of two nonzero commutative rings. In such a product R × S, one has (1, 0) ⋅ (0, 1) = (0, 0).

-   When n is a square, the ring $\Z[x]/(x^2 - n)$ is not an integral domain. Write n = m², and note that there is a factorization x² − n = (x − m)(x + m) in $\Z[x]$. By the Chinese remainder theorem, there is an isomorphism $\Z[x]/(x^2 - n) \cong \Z[x]/(x - m) \times \Z[x]/(x + m) \cong \Z \times \Z.$

-   The ring of _n_ × _n_ matrices over any nonzero ring when _n_ ≥ 2. If M and N are matrices such that the image of N is contained in the kernel of M, then MN = 0. For example, this happens for $M = N = (\begin{smallmatrix} 0 & 1 \\ 0 & 0 \end{smallmatrix})$.

-   The quotient ring k[x₁, …, x_(n)]/(fg) for any field k and any non-constant polynomials f, g ∈ k[x₁, …, x_(n)]. The images of and in this quotient ring are nonzero elements whose product is 0. This argument shows, equivalently, that (fg) is not a prime ideal. The geometric interpretation of this is that the zeros of form an affine algebraic set that is not irreducible (that is, not an algebraic variety) in general. The only case where this algebraic set may be irreducible is when is a power of an irreducible polynomial, which defines the same algebraic set.

-   The ring of continuous functions on the unit interval. Consider the functions

$$f(x) = \begin{cases} 1-2x & x \in \left [0, \tfrac{1}{2} \right ] \\ 0 & x \in \left [\tfrac{1}{2}, 1 \right ] \end{cases} \qquad g(x) = \begin{cases} 0 & x \in \left [0, \tfrac{1}{2} \right ] \\ 2x-1 & x \in \left [\tfrac{1}{2}, 1 \right ] \end{cases}$$

    Neither f nor g is everywhere zero, but fg is.

-   The tensor product $\Complex \otimes_{\R} \Complex$. This ring has two non-trivial idempotents, $e_1 = \tfrac{1}{2}(1 \otimes 1) - \tfrac{1}{2}(i \otimes i)$ and $e_2 = \tfrac{1}{2}(1 \otimes 1) + \tfrac{1}{2}(i \otimes i)$. They are orthogonal, meaning that e₁e₂ = 0, and hence $\Complex \otimes_{\R} \Complex$ is not a domain. In fact, there is an isomorphism $\Complex \times \Complex \to \Complex \otimes_{\R} \Complex$ defined by (z, w) ↦ z ⋅ e₁ + w ⋅ e₂. Its inverse is defined by $z \otimes w \mapsto (zw, z\overline{w})$. This example shows that a fiber product of irreducible affine schemes need not be irreducible.


Divisibility, prime elements, and irreducible elements

In this section, _R_ is an integral domain.

Given elements _a_ and _b_ of _R_, one says that _a_ _divides_ _b_, or that _a_ is a _divisor_ of _b_, or that _b_ is a _multiple_ of _a_, if there exists an element _x_ in _R_ such that _ax_ = _b_.

The _units_ of _R_ are the elements that divide 1; these are precisely the invertible elements in _R_. Units divide all other elements.

If _a_ divides _b_ and _b_ divides _a_, then _a_ and _b_ are ASSOCIATED ELEMENTS or ASSOCIATES.[9] Equivalently, _a_ and _b_ are associates if _a_ = _ub_ for some unit _u_.

An _irreducible element_ is a nonzero non-unit that cannot be written as a product of two non-units.

A nonzero non-unit _p_ is a _prime element_ if, whenever _p_ divides a product _ab_, then _p_ divides _a_ or _p_ divides _b_. Equivalently, an element _p_ is prime if and only if the principal ideal (_p_) is a nonzero prime ideal.

Both notions of irreducible elements and prime elements generalize the ordinary definition of prime numbers in the ring $\Z,$ if one considers as prime the negative primes.

Every prime element is irreducible. The converse is not true in general: for example, in the quadratic integer ring $\Z\left[\sqrt{-5}\right]$ the element 3 is irreducible (if it factored nontrivially, the factors would each have to have norm 3, but there are no norm 3 elements since a² + 5b² = 3 has no integer solutions), but not prime (since 3 divides $\left(2 + \sqrt{-5}\right)\left(2 - \sqrt{-5}\right)$ without dividing either factor). In a unique factorization domain (or more generally, a GCD domain), an irreducible element is a prime element.

While unique factorization does not hold in $\Z\left[\sqrt{-5}\right]$, there is unique factorization of ideals. See Lasker–Noether theorem.


Properties

-   A commutative ring _R_ is an integral domain if and only if the ideal (0) of _R_ is a prime ideal.
-   If _R_ is a commutative ring and _P_ is an ideal in _R_, then the quotient ring _R/P_ is an integral domain if and only if _P_ is a prime ideal.
-   Let _R_ be an integral domain. Then the polynomial rings over _R_ (in any number of indeterminates) are integral domains. This is in particular the case if _R_ is a field.
-   The cancellation property holds in any integral domain: for any _a_, _b_, and _c_ in an integral domain, if _a_ ≠ _0_ and _ab_ = _ac_ then _b_ = _c_. Another way to state this is that the function _x_ _ax_ is injective for any nonzero _a_ in the domain.
-   The cancellation property holds for ideals in any integral domain: if _xI_ = _xJ_, then either _x_ is zero or _I_ = _J_.
-   An integral domain is equal to the intersection of its localizations at maximal ideals.
-   An inductive limit of integral domains is an integral domain.
-   If A, B are integral domains over an algebraically closed field _k_, then A⊗_(k)B is an integral domain. This is a consequence of Hilbert's nullstellensatz,[10] and, in algebraic geometry, it implies the statement that the coordinate ring of the product of two affine algebraic varieties over an algebraically closed field is again an integral domain.


Field of fractions

The field of fractions _K_ of an integral domain _R_ is the set of fractions _a_/_b_ with _a_ and _b_ in _R_ and _b_ ≠ 0 modulo an appropriate equivalence relation, equipped with the usual addition and multiplication operations. It is "the smallest field containing _R_ " in the sense that there is an injective ring homomorphism such that any injective ring homomorphism from _R_ to a field factors through _K_. The field of fractions of the ring of integers $\Z$ is the field of rational numbers $\Q.$ The field of fractions of a field is isomorphic to the field itself.


Algebraic geometry

Integral domains are characterized by the condition that they are reduced (that is _x_² = 0 implies _x_ = 0) and irreducible (that is there is only one minimal prime ideal). The former condition ensures that the nilradical of the ring is zero, so that the intersection of all the ring's minimal primes is zero. The latter condition is that the ring have only one minimal prime. It follows that the unique minimal prime ideal of a reduced and irreducible ring is the zero ideal, so such rings are integral domains. The converse is clear: an integral domain has no nonzero nilpotent elements, and the zero ideal is the unique minimal prime ideal.

This translates, in algebraic geometry, into the fact that the coordinate ring of an affine algebraic set is an integral domain if and only if the algebraic set is an algebraic variety.

More generally, a commutative ring is an integral domain if and only if its spectrum is an integral affine scheme.


Characteristic and homomorphisms

The characteristic of an integral domain is either 0 or a prime number.

If _R_ is an integral domain of prime characteristic _p_, then the Frobenius endomorphism _f_(_x_) = _x_^(_p_) is injective.


See also

-   Dedekind–Hasse norm – the extra structure needed for an integral domain to be principal
-   Zero-product property


Notes


References

-   -   -   -   -   -   -   -   -   -   -   B.L. van der Waerden, Algebra, Springer-Verlag, Berlin Heidelberg, 1966.


External links

-   https://math.stackexchange.com/questions/45945/where-does-the-term-integral-domain-come-from

Category:Commutative algebra Category:Ring theory

[1] Bourbaki, p. 116.

[2] Dummit and Foote, p. 228.

[3] B.L. van der Waerden, Algebra Erster Teil, p. 36, Springer-Verlag, Berlin, Heidelberg 1966.

[4] I.N. Herstein, Topics in Algebra, p. 88-90, Blaisdell Publishing Company, London 1964.

[5] J.C. McConnel and J.C. Robson "Noncommutative Noetherian Rings" (Graduate Studies in Mathematics Vol. 30, AMS)

[6] Pages 91–92 of

[7]

[8]

[9]

[10] Proof: First assume _A_ is finitely generated as a _k_-algebra and pick a k-basis g_(i) of B. Suppose ∑f_(i) ⊗ g_(i)∑h_(j) ⊗ g_(j) = 0 (only finitely many f_(i), h_(j) are nonzero). For each maximal ideal 𝔪 of A, consider the ring homomorphism A⊗_(k)B → A/𝔪⊗_(k)B = k⊗_(k)B ≃ B. Then the image is $\sum \overline{f_i} g_i \sum \overline{h_i} g_i = 0$ and thus either $\sum \overline{f_i} g_i = 0$ or $\sum \overline{h_i} g_i = 0$ and, by linear independence, $\overline{f_i} = 0$ for all i or $\overline{h_i} = 0$ for all i. Since 𝔪 is arbitrary, we have (∑f_(i)A)(∑h_(i)A) ⊂ Jac (A)= the intersection of all maximal ideals  = (0) where the last equality is by the Nullstellensatz. Since (0) is a prime ideal, this implies either ∑f_(i)A or ∑h_(i)A is the zero ideal; i.e., either f_(i) are all zero or h_(i) are all zero. Finally, A is an inductive limit of finitely generated _k_-algebras that are integral domains and thus, using the previous property, $A \otimes_k B = \varinjlim A_i \otimes_k B$ is an integral domain. ▫