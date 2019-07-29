    _Outside number theory, the term MULTIPLICATIVE FUNCTION is usually used for completely multiplicative functions. This article discusses number theoretic multiplicative functions._

In number theory, a MULTIPLICATIVE FUNCTION is an arithmetic function _f_(_n_) of a positive integer _n_ with the property that _f_(1) = 1 and whenever _a_ and _b_ are coprime, then

_f_(_a__b_) = _f_(_a_)_f_(_b_).

An arithmetic function _f_(_n_) is said to be COMPLETELY MULTIPLICATIVE (or TOTALLY MULTIPLICATIVE) if _f_(1) = 1 and _f_(_ab_) = _f_(_a_)_f_(_b_) holds _for all_ positive integers _a_ and _b_, even when they are not coprime.


Examples

Some multiplicative functions are defined to make formulas easier to write:

-   1(_n_): the constant function, defined by 1(_n_) = 1 (completely multiplicative)
-   Id(_n_): identity function, defined by Id(_n_) = _n_ (completely multiplicative)
-   Id_(_k_)(_n_): the power functions, defined by Id_(_k_)(_n_) = _n_^(_k_) for any complex number _k_ (completely multiplicative). As special cases we have
    -   Id₀(_n_) = 1(_n_) and
    -   Id₁(_n_) = Id(_n_).
-   _ε_(_n_): the function defined by _ε_(_n_) = 1 if _n_ = 1 and 0 otherwise, sometimes called _multiplication unit for Dirichlet convolution_ or simply the _unit function_ (completely multiplicative). Sometimes written as _u_(_n_), but not to be confused with _μ_(_n_) .
-   1_(_C_)(_n_), the indicator function of the set _C_ ⊂ Z, for certain sets _C_. The indicator function 1_(_C_)(_n_) is multiplicative precisely when the set _C_ has the following property for any coprime numbers _a_ and _b_: the product _ab_ is in _C_ if and only if the numbers _a_ and _b_ are both themselves in _C_. This is the case if _C_ is the set of squares, cubes, or _k_-th powers, or if _C_ is the set of square-free numbers.

Other examples of multiplicative functions include many functions of importance in number theory, such as:

-   gcd(_n_,_k_): the greatest common divisor of _n_ and _k_, as a function of _n_, where _k_ is a fixed integer.
-   φ(_n_): Euler's totient function φ, counting the positive integers coprime to (but not bigger than) _n_
-   _μ_(_n_): the Möbius function, the parity (−1 for odd, +1 for even) of the number of prime factors of square-free numbers; 0 if _n_ is not square-free
-   _σ__(_k_)(_n_): the divisor function, which is the sum of the _k_-th powers of all the positive divisors of _n_ (where _k_ may be any complex number). Special cases we have
    -   _σ_₀(_n_) = _d_(_n_) the number of positive divisors of _n_,
    -   _σ_₁(_n_) = _σ_(_n_), the sum of all the positive divisors of _n_.
-   _a_(_n_): the number of non-isomorphic abelian groups of order _n_.
-   _λ_(_n_): the Liouville function, _λ_(_n_) = (−1)^(Ω(_n_)) where Ω(_n_) is the total number of primes (counted with multiplicity) dividing _n_. (completely multiplicative).
-   _γ_(_n_), defined by _γ_(_n_) = (−1)^(_ω_(n)), where the additive function _ω_(_n_) is the number of distinct primes dividing _n_.
-   _τ_(_n_): the Ramanujan tau function.
-   All Dirichlet characters are completely multiplicative functions. For example
    -   (_n_/_p_), the Legendre symbol, considered as a function of _n_ where _p_ is a fixed prime number.

An example of a non-multiplicative function is the arithmetic function _r__(_2_)(_n_) - the number of representations of _n_ as a sum of squares of two integers, positive, negative, or zero, where in counting the number of ways, reversal of order is allowed. For example:

    1 = 1² + 0² = (−1)² + 0² = 0² + 1² = 0² + (−1)²

and therefore _r_₂(1) = 4 ≠ 1. This shows that the function is not multiplicative. However, _r_₂(_n_)/4 is multiplicative.

In the On-Line Encyclopedia of Integer Sequences, sequences of values of a multiplicative function have the keyword "mult".

See arithmetic function for some other examples of non-multiplicative functions.


Properties

A multiplicative function is completely determined by its values at the powers of prime numbers, a consequence of the fundamental theorem of arithmetic. Thus, if _n_ is a product of powers of distinct primes, say _n_ = _p_^(_a_) _q_^(_b_) ..., then _f_(_n_) = _f_(_p_^(_a_)) _f_(_q_^(_b_)) ...

This property of multiplicative functions significantly reduces the need for computation, as in the following examples for _n_ = 144 = 2⁴ · 3²:

    d(144) = _σ_₀(144) = _σ_₀(2⁴)_σ_₀(3²) = (1⁰ + 2⁰ + 4⁰ + 8⁰ + 16⁰)(1⁰ + 3⁰ + 9⁰) = 5 · 3 = 15,
    _σ_(144) = _σ_₁(144) = _σ_₁(2⁴)_σ_₁(3²) = (1¹ + 2¹ + 4¹ + 8¹ + 16¹)(1¹ + 3¹ + 9¹) = 31 · 13 = 403,
    _σ_^(*)(144) = _σ_^(*)(2⁴)_σ_^(*)(3²) = (1¹ + 16¹)(1¹ + 9¹) = 17 · 10 = 170.

Similarly, we have:

_φ_
(144)=φ(2⁴)φ(3²) = 8 · 6 = 48

In general, if _f_(_n_) is a multiplicative function and _a_, _b_ are any two positive integers, then

    _f_(_a_) · _f_(_b_) = _f_(gcd(_a_,_b_)) · _f_(lcm(_a_,_b_)).

Every completely multiplicative function is a homomorphism of monoids and is completely determined by its restriction to the prime numbers.


Convolution

If _f_ and _g_ are two multiplicative functions, one defines a new multiplicative function _f_ * _g_, the _Dirichlet convolution_ of _f_ and _g_, by

$$(f \, * \, g)(n) = \sum_{d|n} f(d) \, g \left( \frac{n}{d} \right)$$
where the sum extends over all positive divisors _d_ of _n_. With this operation, the set of all multiplicative functions turns into an abelian group; the identity element is _ε_. Convolution is commutative, associative, and distributive over addition.

Relations among the multiplicative functions discussed above include:

-   _μ_ * 1 = _ε_ (the Möbius inversion formula)
-   (_μ_ Id_(_k_)) * Id_(_k_) = _ε_ (generalized Möbius inversion)
-   φ * 1 = Id
-   _d_ = 1 * 1
-   _σ_ = Id * 1 = φ * _d_
-   _σ__(_k_) = Id_(_k_) * 1
-   Id = φ * 1 = _σ_ * _μ_
-   Id_(_k_) = _σ__(_k_) * _μ_

The Dirichlet convolution can be defined for general arithmetic functions, and yields a ring structure, the Dirichlet ring.

The Dirichlet convolution of two multiplicative functions is again multiplicative. A proof of this fact is given by the following expansion for relatively prime a, b ∈ ℤ⁺:

$$(f \ast g)(ab) = \sum_{d|ab} f(d) g\left(\frac{ab}{d}\right) = \sum_{d_1|a} \sum_{d_2|b} f(d_1d_2) g\left(\frac{ab}{d_1d_2}\right) =
 \sum_{d_1|a} f(d_1) g\left(\frac{a}{d_1}\right) \times \sum_{d_2|b} f(d_2) g\left(\frac{b}{d_2}\right) = (f \ast g)(a) \cdot (f \ast g)(b).$$

Dirichlet series for some multiplicative functions

-   $\sum_{n\ge 1} \frac{\mu(n)}{n^s} = \frac{1}{\zeta(s)}$
-   $\sum_{n\ge 1} \frac{\varphi(n)}{n^s} = \frac{\zeta(s-1)}{\zeta(s)}$
-   $\sum_{n\ge 1} \frac{d(n)^2}{n^s} = \frac{\zeta(s)^4}{\zeta(2s)}$
-   $\sum_{n\ge 1} \frac{2^{\omega(n)}}{n^s} = \frac{\zeta(s)^2}{\zeta(2s)}$

More examples are shown in the article on Dirichlet series.


Multiplicative function over

Let _A_ = , the polynomial ring over the finite field with _q_ elements. _A_ is a principal ideal domain and therefore _A_ is a unique factorization domain.

A complex-valued function λ on _A_ is called MULTIPLICATIVE if λ(fg) = λ(f)λ(g) whenever _f_ and _g_ are relatively prime.

Zeta function and Dirichlet series in

Let _h_ be a polynomial arithmetic function (i.e. a function on set of monic polynomials over _A_). Its corresponding Dirichlet series is defined to be

_D__(_h_)(_s_) = ∑_(_f_ monic)_h_(_f_)|_f_|^( − _s_),

where for g ∈ A, set |g| = q^(deg (g)) if g ≠ 0, and |g| = 0 otherwise.

The polynomial zeta function is then

_ζ__(_A_)(_s_) = ∑_(_f_ monic)|_f_|^( − _s_).

Similar to the situation in , every Dirichlet series of a multiplicative function _h_ has a product representation (Euler product):

$$D_{h}(s)=\prod_P \left(\sum_{n\mathop =0}^{\infty}h(P^{n})|P|^{-sn}\right),$$

where the product runs over all monic irreducible polynomials _P_. For example, the product representation of the zeta function is as for the integers:

_ζ__(_A_)(_s_) = ∏_(_P_)(1 − |_P_|^( − _s_))^( − 1).

Unlike the classical zeta function, ζ_(A)(s) is a simple rational function:

_ζ__(_A_)(_s_) = ∑_(_f_)|_f_|^( − _s_) = ∑_(_n_)∑_(deg (_f_) = _n_)_q_^( − _s__n_) = ∑_(_n_)(_q_^(_n_ − _s__n_)) = (1 − _q_^(1 − _s_))^( − 1).

In a similar way, If _f_ and _g_ are two polynomial arithmetic functions, one defines _f_ * _g_, the _Dirichlet convolution_ of _f_ and _g_, by

$$\begin{align}
(f*g)(m)
&= \sum_{d \mid m} f(d)g\left(\frac{m}{d}\right) \\
&= \sum_{ab = m}f(a)g(b),
\end{align}$$

where the sum is over all monic divisors _d_ of _m_, or equivalently over all pairs (_a_, _b_) of monic polynomials whose product is _m_. The identity D_(h)D_(g) = D_(h * g) still holds.


See also

-   Euler product
-   Bell series
-   Lambert series


References

-   See chapter 2 of


External links

-   Planet Math

*