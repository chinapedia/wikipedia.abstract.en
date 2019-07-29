In number theory, an ARITHMETIC, ARITHMETICAL, or NUMBER-THEORETIC FUNCTION[1][2] is for most authors[3][4][5] any function _f_(_n_) whose domain is the positive integers and whose range is a subset of the complex numbers. Hardy & Wright include in their definition the requirement that an arithmetical function "expresses some arithmetical property of _n_".[6]

An example of an arithmetic function is the divisor function whose value at a positive integer _n_ is equal to the number of divisors of _n_.

There is a larger class of number-theoretic functions that do not fit the above definition, e.g. the prime-counting functions. This article provides links to functions of both classes.

Many of the functions mentioned in this article have expansions as series involving these sums; see the article Ramanujan's sum for examples.


Multiplicative and additive functions

An arithmetic function _a_ is

-   COMPLETELY ADDITIVE if _a_(_mn_) = _a_(_m_) + _a_(_n_) for all natural numbers _m_ and _n_;
-   COMPLETELY MULTIPLICATIVE if _a_(_mn_) = _a_(_m_)_a_(_n_) for all natural numbers _m_ and _n_;

Two whole numbers _m_ and _n_ are called coprime if their greatest common divisor is 1; i.e., if there is no prime number that divides both of them.

Then an arithmetic function _a_ is

-   ADDITIVE if _a_(_mn_) = _a_(_m_) + _a_(_n_) for all coprime natural numbers _m_ and _n_;
-   MULTIPLICATIVE if _a_(_mn_) = _a_(_m_)_a_(_n_) for all coprime natural numbers _m_ and _n_.


Notation

∑_(p)f(p)   and   ∏_(p)f(p)   mean that the sum or product is over all prime numbers:

∑_(_p_)_f_(_p_) = _f_(2) + _f_(3) + _f_(5) + ⋯

∏_(_p_)_f_(_p_) = _f_(2)_f_(3)_f_(5)⋯.

Similarly,   ∑_(p^(k))f(p^(k))   and   ∏_(p^(k))f(p^(k))   mean that the sum or product is over all prime powers with strictly positive exponent (so 1 is not included):

∑_(_p_^(_k_))_f_(_p_^(_k_)) = ∑_(_p_)∑_(_k_ > 0)_f_(_p_^(_k_)) = _f_(2) + _f_(3) + _f_(4) + _f_(5) + _f_(7) + _f_(8) + _f_(9) + ⋯

∑_(d ∣ n)f(d)   and   ∏_(d ∣ n)f(d)   mean that the sum or product is over all positive divisors of _n_, including 1 and _n_. E.g., if _n_ = 12,

$$\prod_{d\mid 12} f(d) = f(1)f(2) f(3)  f(4)  f(6)  f(12).\$$

The notations can be combined:   ∑_(p ∣ n)f(p)   and   ∏_(p ∣ n)f(p)   mean that the sum or product is over all prime divisors of _n_. E.g., if _n_ = 18,

$$\sum_{p\mid 18} f(p) = f(2) + f(3),\$$

and similarly   ∑_(p^(k) ∣ n)f(p^(k))   and   ∏_(p^(k) ∣ n)f(p^(k))   mean that the sum or product is over all prime powers dividing _n_. E.g., if _n_ = 24,

$$\prod_{p^k\mid 24} f(p^k) = f(2) f(3)  f(4) f(8).\$$


Ω(_n_), _ω_(_n_), _ν__(_p_)(_n_) – prime power decomposition

The fundamental theorem of arithmetic states that any positive integer _n_ can be represented uniquely as a product of powers of primes:   n = p₁^(a₁)⋯p_(k)^(a_(k))   where _p_₁ < _p_₂ < ... < _p__(_k_) are primes and the _a_(j)_ are positive integers. (1 is given by the empty product.)

It is often convenient to write this as an infinite product over all the primes, where all but a finite number have a zero exponent. Define the _p_-adic valuation Ν_(_P_)(_N_) to be the exponent of the highest power of the prime _p_ that divides _n_. That is, if _p_ is one of the _p__(_i_) then _ν__(_p_)(_n_) = _a__(_i_), otherwise it is zero. Then

    n = ∏_(p)p^(ν_(p)(n)).

In terms of the above the prime omega functions ω and Ω are defined by

    _ω_(_n_) = _k_,
    Ω(_n_) = _a_₁ + _a_₂ + ... + _a__(_k_).

To avoid repetition, whenever possible formulas for the functions listed in this article are given in terms of _n_ and the corresponding _p__(_i_), _a__(_i_), ω, and Ω.


Multiplicative functions

σ_(_k_)(_n_), τ(_n_), _d_(_n_) – divisor sums

Σ_(_K_)(_N_) is the sum of the _k_th powers of the positive divisors of _n_, including 1 and _n_, where _k_ is a complex number.

Σ₁(_N_), the sum of the (positive) divisors of _n_, is usually denoted by Σ(_N_).

Since a positive number to the zero power is one, Σ₀(_N_) is therefore the number of (positive) divisors of _n_; it is usually denoted by _D_(_N_) or Τ(_N_) (for the German _Teiler_ = divisors).

$$\sigma_k(n) = \prod_{i=1}^{\omega(n)} \frac{p_i^{(a_i+1)k}-1}{p_i^k-1}
= \prod_{i=1}^{\omega(n)} \left(1 + p_i^k + p_i^{2k} + \cdots + p_i^{a_i k}\right).$$

Setting _k_ = 0 in the second product gives

_τ_(_n_) = _d_(_n_) = (1 + _a_₁)(1 + _a_₂)⋯(1 + _a__(_ω_(_n_))).

φ(_n_) – Euler totient function

Φ(_N_), the Euler totient function, is the number of positive integers not greater than _n_ that are coprime to _n_.

$$\varphi(n) = n \prod_{p\mid n} \left(1-\frac{1}{p}\right)
=n \left(\frac{p_1 - 1}{p_1}\right)\left(\frac{p_2 - 1}{p_2}\right) \cdots \left(\frac{p_{\omega(n)} - 1}{p_{\omega(n)}}\right)
.$$

J_(_k_)(_n_) – Jordan totient function

J_(_K_)(_N_), the Jordan totient function, is the number of _k_-tuples of positive integers all less than or equal to _n_ that form a coprime (_k_ + 1)-tuple together with _n_. It is a generalization of Euler's totient, J₁(_n_)}}.

$$J_k(n) = n^k \prod_{p\mid n} \left(1-\frac{1}{p^k}\right)
=n^k \left(\frac{p^k_1 - 1}{p^k_1}\right)\left(\frac{p^k_2 - 1}{p^k_2}\right) \cdots \left(\frac{p^k_{\omega(n)} - 1}{p^k_{\omega(n)}}\right)
.$$

μ(_n_) – Möbius function

Μ(_N_), the Möbius function, is important because of the Möbius inversion formula. See Dirichlet convolution, below.

$$\mu(n)=\begin{cases} (-1)^{\omega(n)}=(-1)^{\Omega(n)} &\text{if }\; \omega(n) = \Omega(n)\\
0&\text{if }\;\omega(n) \ne \Omega(n).\end{cases}$$

This implies that μ(1) = 1. (Because Ω(1) = ω(1) = 0.)

τ(_n_) – Ramanujan tau function

Τ(_N_), the Ramanujan tau function, is defined by its generating function identity:

∑_(_n_ ≥ 1)_τ_(_n_)_q_^(_n_) = _q_∏_(_n_ ≥ 1)(1 − _q_^(_n_))²⁴.

Although it is hard to say exactly what "arithmetical property of _n_" it "expresses",[7] (_τ_(_n_) is (2π)^(−12) times the _n_th Fourier coefficient in the q-expansion of the modular discriminant function)[8] it is included among the arithmetical functions because it is multiplicative and it occurs in identities involving certain σ_(_k_)(_n_) and _r__(_k_)(_n_) functions (because these are also coefficients in the expansion of modular forms).

_c__(_q_)(_n_) – Ramanujan's sum

_C__(_Q_)(_N_), Ramanujan's sum, is the sum of the _n_th powers of the primitive _q_th roots of unity:

$$c_q(n)=
\sum_{\stackrel{1\le a\le q}{ \gcd(a,q)=1}}
e^{2 \pi i \tfrac{a}{q} n}
.$$

Even though it is defined as a sum of complex numbers (irrational for most values of _q_), it is an integer. For a fixed value of _n_ it is multiplicative in _q_:

    IF _Q_ AND _R_ ARE COPRIME, then c_q(n)c_r(n)=c_{qr}(n).

Dedekind psi function

See Dedekind psi function.


Completely multiplicative functions

λ(_n_) – Liouville function

_Λ_(_N_), the Liouville function, is defined by

_λ_(_n_) = ( − 1)^(_Ω_(_n_)).

_χ_(_n_) – characters

All DIRICHLET CHARACTERS _Χ_(_N_) are completely multiplicative. Two characters have special notations:

The PRINCIPAL CHARACTER (MOD _N_) is denoted by _χ_₀(_a_) (or _χ_₁(_a_)). It is defined as

$$\chi_0(a) = \begin{cases} 1 & \text{if } \gcd(a,n) = 1, \\ 0 & \text{if } \gcd(a,n) \ne 1.
\end{cases}$$

The QUADRATIC CHARACTER (MOD _N_) is denoted by the Jacobi symbol for odd _n_ (it is not defined for even _n_.):

$$\Bigg(\frac{a}{n}\Bigg) = \left(\frac{a}{p_1}\right)^{a_1}\left(\frac{a}{p_2}\right)^{a_2}\cdots \left(\frac{a}{p_{\omega(n)}}\right)^{a_{\omega(n)}}.$$

In this formula $(\tfrac{a}{p})$ is the Legendre symbol, defined for all integers _a_ and all odd primes _p_ by

$$\left(\frac{a}{p}\right) = \begin{cases}
\;\;\,0 & \text{if } a \equiv 0 \pmod p,
\\+1 & \text{if }a \not\equiv 0\pmod p \text{ and for some integer }x, \;a\equiv x^2\pmod p
\\-1 & \text{if there is no such } x. \end{cases}$$

Following the normal convention for the empty product, $\left(\frac{a}{1}\right) = 1.$


Additive functions

_ω_(_n_) – distinct prime divisors

Ω(_N_), defined above as the number of distinct primes dividing _n_, is additive (see Prime omega function).


Completely additive functions

Ω(_n_) – prime divisors

Ω(_N_), defined above as the number of prime factors of _n_ counted with multiplicities, is completely additive (see Prime omega function).

_ν__(_p_)(_n_) – _p_-adic valuation of an integer _n_

For a fixed prime _p_, _Ν__(_P_)(_N_), defined above as the exponent of the largest power of _p_ dividing _n_, is completely additive.


Neither multiplicative nor additive

(_x_), Π(_x_), _θ_(_x_), _ψ_(_x_) – prime count functions

These important functions (which are not arithmetic functions) are defined for non-negative real arguments, and are used in the various statements and proofs of the prime number theorem. They are summation functions (see the main section just below) of arithmetic functions which are neither multiplicative nor additive.

(_X_), the prime counting function, is the number of primes not exceeding _x_. It is the summation function of the characteristic function of the prime numbers.

_π_(_x_) = ∑_(_p_ ≤ _x_)1

A related function counts prime powers with weight 1 for primes, 1/2 for their squares, 1/3 for cubes, … It is the summation function of the arithmetic function which takes the value 1/_k_ on integers which are the k-th power of some prime number, and the value 0 on other integers.

$$\Pi(x) = \sum_{p^k\le x}\frac{1}{k}.$$

_Θ_(_X_) and _Ψ_(_X_), the Chebyshev functions, are defined as sums of the natural logarithms of the primes not exceeding _x_.

_ϑ_(_x_) = ∑_(_p_ ≤ _x_)log _p_,

_ψ_(_x_) = ∑_(_p_^(_k_) ≤ _x_)log _p_.

The Chebyshev function _ψ_(_x_) is the summation function of the von Mangoldt function just below.

Λ(_n_) – von Mangoldt function

Λ(_N_), the von Mangoldt function, is 0 unless the argument _n_ is a prime power , in which case it is the natural log of the prime _p_:

$$\Lambda(n) = \begin{cases}\log p &\text{if } n = 2,3,4,5,7,8,9,11,13,16,\ldots=p^k \text{ is a prime power}\\
0&\text{if } n=1,6,10,12,14,15,18,20,21,\dots \;\;\;\;\text{ is not a prime power}.
\end{cases}$$

_p_(_n_) – partition function

_P_(_N_), the partition function, is the number of ways of representing _n_ as a sum of positive integers, where two representations with the same summands in a different order are not counted as being different:

_p_(_n_) = |{(_a_₁,_a_₂,…_a__(_k_)):0<_a_₁≤_a_₂≤⋯≤_a__(_k_) ∧ _n_=_a_₁+_a_₂+⋯+_a__(_k_)}|.

λ(_n_) – Carmichael function

_Λ_(_N_), the Carmichael function, is the smallest positive number such that $a^{\lambda(n)}\equiv 1 \pmod{n}$   for all _a_ coprime to _n_. Equivalently, it is the least common multiple of the orders of the elements of the multiplicative group of integers modulo _n_.

For powers of odd primes and for 2 and 4, _λ_(_n_) is equal to the Euler totient function of _n_; for powers of 2 greater than 4 it is equal to one half of the Euler totient function of _n_:

$$\lambda(n) =
\begin{cases}
\;\;\phi(n) &\text{if }n = 2,3,4,5,7,9,11,13,17,19,23,25,27,\dots\\
\tfrac12\phi(n)&\text{if }n=8,16,32,64,\dots
\end{cases}$$

and for general _n_ it is the least common multiple of λ of each of the prime power factors of _n_:

_λ_(_p_₁^(_a_₁)_p_₂^(_a_₂)…_p__(_ω_(_n_))^(_a__(_ω_(_n_)))) = lcm [_λ_(_p_₁^(_a_₁)), _λ_(_p_₂^(_a_₂)), …, _λ_(_p__(_ω_(_n_))^(_a__(_ω_(_n_))))].

_h_(_n_) – Class number

_H_(_N_), the class number function, is the order of the ideal class group of an algebraic extension of the rationals with discriminant _n_. The notation is ambiguous, as there are in general many extensions with the same discriminant. See quadratic field and cyclotomic field for classical examples.

_r__(_k_)(_n_) – Sum of _k_ squares

_R__(_K_)(_N_) is the number of ways _n_ can be represented as the sum of _k_ squares, where representations that differ only in the order of the summands or in the signs of the square roots are counted as different.

_r__(_k_)(_n_) = |{(_a_₁, _a_₂, …, _a__(_k_)) : _n_ = _a_₁² + _a_₂² + ⋯ + _a__(_k_)²}|


Summation functions

Given an arithmetic function _a_(_n_), its SUMMATION FUNCTION _A_(_x_) is defined by

_A_(_x_) := ∑_(_n_ ≤ _x_)_a_(_n_).
_A_ can be regarded as a function of a real variable. Given a positive integer _m_, _A_ is constant along open intervals _m_ < _x_ < _m_ + 1, and has a jump discontinuity at each integer for which _a_(_m_) ≠ 0.

Since such functions are often represented by series and integrals, to achieve pointwise convergence it is usual to define the value at the discontinuities as the average of the values to the left and right:

$$A_0(m) := \frac12\left(\sum_{n < m} a(n) +\sum_{n \le m} a(n)\right) = A(m) - \frac12 a(m) .$$

Individual values of arithmetic functions may fluctuate wildly – as in most of the above examples. Summation functions "smooth out" these fluctuations. In some cases it may be possible to find asymptotic behaviour for the summation function for large _x_.

A classical example of this phenomenon[9] is given by the divisor summatory function, the summation function of _d_(_n_), the number of divisors of _n_:

liminf_(_n_ → ∞)_d_(_n_) = 2

$$\limsup_{n\to\infty}\frac{\log d(n) \log\log n}{\log n} = \log 2$$

$$\lim_{n\to\infty}\frac{d(1) + d(2)+ \cdots +d(n)}{\log(1) + \log(2)+ \cdots +\log(n)} = 1.$$

An AVERAGE ORDER OF AN ARITHMETIC FUNCTION is some simpler or better-understood function which has the same summation function asymptotically, and hence takes the same values "on average". We say that _g_ is an _average order_ of _f_ if

∑_(_n_ ≤ _x_)_f_(_n_) ∼ ∑_(_n_ ≤ _x_)_g_(_n_)

as _x_ tends to infinity. The example above shows that _d_(_n_) has the average order log(_n_).[10]


Dirichlet convolution

Given an arithmetic function _a_(_n_), let _F__(_a_)(_s_), for complex _s_, be the function defined by the corresponding Dirichlet series (where it converges):[11]

$$F_a(s) := \sum_{n=1}^\infty \frac{a(n)}{n^s} .$$
_F__(_a_)(_s_) is called a generating function of _a_(_n_). The simplest such series, corresponding to the constant function _a_(_n_) = 1 for all _n_, is _ς_(_s_) the Riemann zeta function.

The generating function of the Möbius function is the inverse of the zeta function:

$$\zeta(s)\,\sum_{n=1}^\infty\frac{\mu(n)}{n^s}=1, \;\;\mathfrak{R} \,s >0.$$

Consider two arithmetic functions _a_ and _b_ and their respective generating functions _F__(_a_)(_s_) and _F__(_b_)(_s_). The product _F__(_a_)(_s_)_F__(_b_)(_s_) can be computed as follows:

$$F_a(s)F_b(s) = \left( \sum_{m=1}^{\infty}\frac{a(m)}{m^s} \right)\left( \sum_{n=1}^{\infty}\frac{b(n)}{n^s} \right) .$$

It is a straightforward exercise to show that if _c_(_n_) is defined by

$$c(n) := \sum_{ij = n} a(i)b(j) = \sum_{i\mid n}a(i)b\left(\frac{n}{i}\right) ,$$

then

_F__(_c_)(_s_) = _F__(_a_)(_s_)_F__(_b_)(_s_).

This function _c_ is called the Dirichlet convolution of _a_ and _b_, and is denoted by a * b.

A particularly important case is convolution with the constant function _a_(_n_) = 1 for all _n_, corresponding to multiplying the generating function by the zeta function:

_g_(_n_) = ∑_(_d_ ∣ _n_)_f_(_d_).

Multiplying by the inverse of the zeta function gives the Möbius inversion formula:

$$f(n) = \sum_{d\mid n}\mu\left(\frac{n}{d}\right)g(d).$$

If _f_ is multiplicative, then so is _g_. If _f_ is completely multiplicative, then _g_ is multiplicative, but may or may not be completely multiplicative.


Relations among the functions

There are a great many formulas connecting arithmetical functions with each other and with the functions of analysis, especially powers, roots, and the exponential and log functions. The page divisor sum identities contains many more generalized and related examples of identities involving arithmetic functions.

Here are a few examples:

Dirichlet convolutions

$$\sum_{\delta\mid n}\mu(\delta)=
\sum_{\delta\mid n}\lambda\left(\frac{n}{\delta}\right)|\mu(\delta)|=
\begin{cases}
1 & \text{if } n=1\\
0 & \text{if } n\ne1
\end{cases}$$
    where _λ_ is the Liouville function.[12]

∑_(_δ_ ∣ _n_)_φ_(_δ_) = _n_.
     [13]

$$\varphi(n)
=\sum_{\delta\mid n}\mu\left(\frac{n}{\delta}\right)\delta
=n\sum_{\delta\mid n}\frac{\mu(\delta)}{\delta}.$$
      Möbius inversion

∑_(_d_ ∣ _n_)_J__(_k_)(_d_) = _n_^(_k_).
     [14]

$$J_k(n)
=\sum_{\delta\mid n}\mu\left(\frac{n}{\delta}\right)\delta^k
=n^k\sum_{\delta\mid n}\frac{\mu(\delta)}{\delta^k}.$$
      Möbius inversion

$$\sum_{\delta\mid n}\delta^sJ_r(\delta)J_s\left(\frac{n}{\delta}\right) = J_{r+s}(n)$$
     [15]

$$\sum_{\delta\mid n}\varphi(\delta)d\left(\frac{n}{\delta}\right)=
\sigma(n).$$
     [16][17]

∑_(_δ_ ∣ _n_)|_μ_(_δ_)| = 2^(_ω_(_n_)).
     [18]

$$|\mu(n)|=\sum_{\delta\mid n}\mu\left(\frac{n}{\delta}\right)2^{\omega(\delta)}.$$
      Möbius inversion

∑_(_δ_ ∣ _n_)2^(_ω_(_δ_)) = _d_(_n_²).
     

$$2^{\omega(n)}=\sum_{\delta\mid n}\mu\left(\frac{n}{\delta}\right)d(\delta^2).$$
      Möbius inversion

∑_(_δ_ ∣ _n_)_d_(_δ_²) = _d_²(_n_).
     

$$d(n^2)=\sum_{\delta\mid n}\mu\left(\frac{n}{\delta}\right)d^2(\delta).$$
      Möbius inversion

$$\sum_{\delta\mid n}d\left(\frac{n}{\delta}\right)2^{\omega(\delta)}=
d^2(n).$$
     

$$\sum_{\delta\mid n}\lambda(\delta)=\begin{cases}
&1\text{ if } n \text{ is a square }\\
&0\text{ if } n \text{ is not  square.}
\end{cases}$$
    where λ is the Liouville function.

∑_(_δ_ ∣ _n_)_Λ_(_δ_) = log _n_.
     [19]

$$\Lambda(n)=\sum_{\delta\mid n}\mu\left(\frac{n}{\delta}\right)\log(\delta).$$
      Möbius inversion

Sums of squares

If _k_ ≥ 4,   _r__(_k_)(_n_) > 0.
    (Lagrange's four-square theorem).

_r_₂(_n_) = 4∑_(_d_ ∣ _n_)_χ_(_d_),
    where χ is the non-principal character (mod 4) defined as[20]

$$\chi(n) =
\begin{cases}
+1&\text{if }n\equiv 1 \pmod 4, \\
-1&\text{if }n\equiv 3 \pmod 4\\
\;\;\;0&\text{if }n\text{ is even}.\\
\end{cases}$$

There is a formula for r₃ in the section on class numbers below.

$$r_4(n) =
8 \sum_{\stackrel{d\mid n}{ 4\, \nmid \,d}}d =
8 (2+(-1)^n)\sum_{\stackrel{d\mid n}{ 2\, \nmid \,d}}d =
\begin{cases}
8\sigma(n)&\text{if } n \text{ is odd }\\
24\sigma\left(\frac{n}{2^\nu}\right)&\text{if } n \text{ is even }
\end{cases},$$
    where _Ν_ = _Ν_₂(_N_).    [21][22][23]

$$r_6(n) = 16 \sum_{d\mid n} \chi\left(\frac{n}{d}\right)d^2 - 4\sum_{d\mid n} \chi(d)d^2.$$
   [24]

Define the function Σ_(_K_)^(*)(_N_) as[25]

$$\sigma_k^*(n) = (-1)^{n}\sum_{d\mid n}(-1)^d d^k=
\begin{cases}
\sum_{d\mid n} d^k=\sigma_k(n)&\text{if } n \text{ is odd }\\
\sum_{\stackrel{d\mid n}{ 2\, \mid \,d}}d^k -\sum_{\stackrel{d\mid n}{ 2\, \nmid \,d}}d^k&\text{if } n \text{ is even}.
\end{cases}$$

That is, if _n_ is odd, Σ_(_K_)^(*)(_N_) is the sum of the _k_th powers of the divisors of _n_, i.e. Σ_(_K_)(_N_), and if _n_ is even it is the sum of the _k_th powers of the even divisors of _n_ minus the sum of the _k_th powers of the odd divisors of _n_.

_r_₈(_n_) = 16_σ_₃^(*)(_n_).
   [26][27]

Adopt the convention that Ramanujan's _Τ_(_X_) = 0 IF _X_ IS NOT AN INTEGER.

$$r_{24}(n) = \frac{16}{691}\sigma_{11}^*(n) + \frac{128}{691}\left\{
(-1)^{n-1}259\tau(n)-512\tau\left(\frac{n}{2}\right)\right\}$$
   [28]

Divisor sum convolutions

Here "convolution" does not mean "Dirichlet convolution" but instead refers to the formula for the coefficients of the product of two power series:

$$\left(\sum_{n=0}^\infty a_n x^n\right)\left(\sum_{n=0}^\infty b_n x^n\right)
= \sum_{i=0}^\infty \sum_{j=0}^\infty  a_i b_j x^{i+j}
= \sum_{n=0}^\infty \left(\sum_{i=0}^n a_i b_{n-i}\right) x^n
= \sum_{n=0}^\infty c_n x^n
.$$

The sequence $c_n = \sum_{i=0}^n a_i b_{n-i}$ is called the convolution or the Cauchy product of the sequences _a__(_n_) and _b__(_n_).
See Eisenstein series for a discussion of the series and functional identities involved in these formulas.[29]

$$\sigma_3(n) = \frac{1}{5}\left\{6n\sigma_1(n)-\sigma_1(n) + 12\sum_{0<k<n}\sigma_1(k)\sigma_1(n-k)\right\}.$$
   [30]

$$\sigma_5(n) = \frac{1}{21}\left\{10(3n-1)\sigma_3(n)+\sigma_1(n) + 240\sum_{0<k<n}\sigma_1(k)\sigma_3(n-k)\right\}.$$
   [31]

$$\begin{align}
\sigma_7(n)
&=\frac{1}{20}\left\{21(2n-1)\sigma_5(n)-\sigma_1(n) + 504\sum_{0<k<n}\sigma_1(k)\sigma_5(n-k)\right\}\\
&=\sigma_3(n) + 120\sum_{0<k<n}\sigma_3(k)\sigma_3(n-k).
\end{align}$$
   [32][33]

$$\begin{align}
\sigma_9(n)
&= \frac{1}{11}\left\{10(3n-2)\sigma_7(n)+\sigma_1(n) + 480\sum_{0<k<n}\sigma_1(k)\sigma_7(n-k)\right\}\\
&= \frac{1}{11}\left\{21\sigma_5(n)-10\sigma_3(n) + 5040\sum_{0<k<n}\sigma_3(k)\sigma_5(n-k)\right\}.
\end{align}$$
   [34][35]

$$\tau(n) = \frac{65}{756}\sigma_{11}(n) + \frac{691}{756}\sigma_{5}(n) - \frac{691}{3}\sum_{0<k<n}\sigma_5(k)\sigma_5(n-k),$$
    where _τ_(_n_) is Ramanujan's function.    [36][37]

Since _σ__(_k_)(_n_) (for natural number _k_) and _τ_(_n_) are integers, the above formulas can be used to prove congruences[38] for the functions. See Ramanujan tau function for some examples.

Extend the domain of the partition function by setting _P_(0) = 1.

$$p(n)=\frac{1}{n}\sum_{1\le k\le n}\sigma(k)p(n-k).$$
   [39]   This recurrence can be used to compute _p_(_n_).

Class number related

Peter Gustav Lejeune Dirichlet discovered formulas that relate the class number _h_ of quadratic number fields to the Jacobi symbol.[40]

An integer _D_ is called a FUNDAMENTAL DISCRIMINANT if it is the discriminant of a quadratic number field. This is equivalent to _D_ ≠ 1 and either a) _D_ is squarefree and _D_ ≡ 1 (mod 4) or b) _D_ ≡ 0 (mod 4), _D_/4 is squarefree, and _D_/4 ≡ 2 or 3 (mod 4).[41]

Extend the Jacobi symbol to accept even numbers in the "denominator" by defining the Kronecker symbol:

$$\left(\frac{a}{2}\right) = \begin{cases}
\;\;\,0&\text{ if } a \text{ is even}
\\(-1)^{\frac{a^2-1}{8}}&\text{ if }a \text{ is odd. }
\end{cases}$$

Then if _D_ < −4 is a fundamental discriminant[42][43]

$$\begin{align}
h(D) & = \frac{1}{D} \sum_{r=1}^{|D|}r\left(\frac{D}{r}\right)\\
     & = \frac{1}{2-\left(\tfrac{D}{2}\right)} \sum_{r=1}^{|D|/2}\left(\frac{D}{r}\right).
\end{align}$$

There is also a formula relating _r_₃ and _h_. Again, let _D_ be a fundamental discriminant, _D_ < −4. Then[44]

$$r_3(|D|) = 12\left(1-\left(\frac{D}{2}\right)\right)h(D).$$

Prime-count related

Let $H_n = 1 + \frac12 + \frac13 + \cdots +\frac{1}{n}$   be the _n_th harmonic number.   Then

_σ_(_n_) ≤ _H__(_n_) + _e_^(_H__(_n_))log _H__(_n_)
  is true for every natural number _n_ if and only if the Riemann hypothesis is true.    [45]

The Riemann hypothesis is also equivalent to the statement that, for all _n_ > 5040,

_σ_(_n_) < _e_^(_γ_)_n_log log _n_
    (where γ is the Euler–Mascheroni constant).     This is Robin's theorem.

∑_(_p_)_ν__(_p_)(_n_) = _Ω_(_n_).

_ψ_(_x_) = ∑_(_n_ ≤ _x_)_Λ_(_n_).
   [46]

$$\Pi(x)= \sum_{n\le x}\frac{\Lambda(n)}{\log n}.$$
   [47]

_e_^(_θ_(_x_)) = ∏_(_p_ ≤ _x_)_p_.
   [48]

_e_^(_ψ_(_x_)) = lcm [1, 2, …, ⌊_x_⌋].
   [49]

Menon's identity

In 1965 P Kesava Menon proved[50]

$$\sum_{\stackrel{1\le k\le n}{ \gcd(k,n)=1}} \gcd(k-1,n)
=\varphi(n)d(n).$$

This has been generalized by a number of mathematicians. For example,

B. Sury[51]

$$\sum_{\stackrel{1\le k_1, k_2, \dots, k_s\le n}{ \gcd(k_1,n)=1}} \gcd(k_1-1,k_2,\dots,k_s,n)
=\varphi(n)\sigma_{s-1}(n).$$

N. Rao[52]

$$\sum_{\stackrel{1\le k_1, k_2, \dots, k_s\le n}{ \gcd(k_1,k_2,\dots,k_s,n)=1}} \gcd(k_1-a_1,k_2-a_2,\dots,k_s-a_s,n)^s
=J_s(n)d(n),$$
where _a_₁, _a_₂, ..., _a__(_s_) are integers, gcd(_a_₁, _a_₂, ..., _a__(_s_), _n_) = 1.

László Fejes Tóth[53]

$$\sum_{\stackrel{1\le k\le m}{ \gcd(k,m)=1}} \gcd(k^2-1,m_1)\gcd(k^2-1,m_2)
=\varphi(n)\sum_{\stackrel{d_1\mid m_1} {d_2\mid m_2}} \varphi(\gcd(d_1, d_2))2^{\omega(\operatorname{lcm}(d_1, d_2))},$$
where _m_₁ and _m_₂ are odd, _m_ = lcm(_m_₁, _m_₂).

In fact, if _f_ is any arithmetical function[54][55]

$$\sum_{\stackrel{1\le k\le n}{ \gcd(k,n)=1}} f(\gcd(k-1,n))
=\varphi(n)\sum_{d\mid n}\frac{(\mu*f)(d)}{\varphi(d)},$$
where * stands for Dirichlet convolution.

Miscellaneous

Let _m_ and _n_ be distinct, odd, and positive. Then the Jacobi symbol satisfies the law of quadratic reciprocity:

$$\left(\frac{m}{n}\right) \left(\frac{n}{m}\right) = (-1)^{(m-1)(n-1)/4}.$$
   

Let _λ_(_n_) be Liouville's function. Then

|_λ_(_n_)|_μ_(_n_) = _λ_(_n_)|_μ_(_n_)| = _μ_(_n_),
    and

_λ_(_n_)_μ_(_n_) = |_μ_(_n_)| = _μ_²(_n_).
   

Let _λ_(_n_) be Carmichael's function. Then

_λ_(_n_) ∣ _ϕ_(_n_).
    Further,

$$\lambda(n)= \phi(n) \text{ if and only if }n=\begin{cases}1,2, 4;\\
3,5,7,9,11, \ldots \text{ i.e. } p^k \text{ where }p\text{ is an odd prime};\\
6,10,14,18,\ldots \text{ i.e. } 2p^k\text{ where }p\text{ is an odd prime}.
\end{cases}$$
See Multiplicative group of integers modulo n and Primitive root modulo n.  

2^(_ω_(_n_)) ≤ _d_(_n_) ≤ 2^(_Ω_(_n_)).
   [56][57]

$$\frac{6}{\pi^2}<\frac{\phi(n)\sigma(n)}{n^2} < 1.$$
   [58]

$$\begin{align}
c_q(n)
&=\frac{\mu\left(\frac{q}{\gcd(q, n)}\right)}{\phi\left(\frac{q}{\gcd(q, n)}\right)}\phi(q)\\
&=\sum_{\delta\mid \gcd(q,n)}\mu\left(\frac{q}{\delta}\right)\delta.
\end{align}$$
   [59]     Note that  $\phi(q) = \sum_{\delta\mid q}\mu\left(\frac{q}{\delta}\right)\delta.$    [60]

_c__(_q_)(1) = _μ_(_q_).

_c__(_q_)(_q_) = _ϕ_(_q_).

∑_(_δ_ ∣ _n_)_d_³(_δ_) = (∑_(_δ_ ∣ _n_)_d_(_δ_))².
   [61]   Compare this with 1³ + 2³ + 3³ + ... + _N_³ = (1 + 2 + 3 + ... + _N_)²

$$d(uv) = \sum_{\delta\mid \gcd(u,v)}\mu(\delta)d\left(\frac{u}{\delta}\right)d\left(\frac{v}{\delta}\right).$$
   [62]

$$\sigma_k(u)\sigma_k(v) = \sum_{\delta\mid \gcd(u,v)}\delta^k\sigma_k\left(\frac{uv}{\delta^2}\right).$$
   [63]

$$\tau(u)\tau(v) = \sum_{\delta\mid \gcd(u,v)}\delta^{11}\tau\left(\frac{uv}{\delta^2}\right),$$
    where _τ_(_n_) is Ramanujan's function.    [64]


First 100 values of some arithmetic functions

  n     factorization   φ(n)   ω(n)   Ω(n)   λ(n)   μ(n)   Λ(n)   π(n)   σ₀(n)   σ₁(n)   σ₂(n)   r₂(n)   r₃(n)   r₄(n)
  ----- --------------- ------ ------ ------ ------ ------ ------ ------ ------- ------- ------- ------- ------- -------
  1     1               1      0      0      1      1      0.00   0      1       1       1       4       6       8
  2     2               1      1      1      -1     -1     0.69   1      2       3       5       4       12      24
  3     3               2      1      1      -1     -1     1.10   2      2       4       10      0       8       32
  4     2²              2      1      2      1      0      0.69   2      3       7       21      4       6       24
  5     5               4      1      1      -1     -1     1.61   3      2       6       26      8       24      48
  6     2‧3             2      2      2      1      1      0.00   3      4       12      50      0       24      96
  7     7               6      1      1      -1     -1     1.95   4      2       8       50      0       0       64
  8     2³              4      1      3      -1     0      0.69   4      4       15      85      4       12      24
  9     3²              6      1      2      1      0      1.10   4      3       13      91      4       30      104
  10    2‧5             4      2      2      1      1      0.00   4      4       18      130     8       24      144
  11    11              10     1      1      -1     -1     2.40   5      2       12      122     0       24      96
  12    2²‧3            4      2      3      -1     0      0.00   5      6       28      210     0       8       96
  13    13              12     1      1      -1     -1     2.56   6      2       14      170     8       24      112
  14    2‧7             6      2      2      1      1      0.00   6      4       24      250     0       48      192
  15    3‧5             8      2      2      1      1      0.00   6      4       24      260     0       0       192
  16    2⁴              8      1      4      1      0      0.69   6      5       31      341     4       6       24
  17    17              16     1      1      -1     -1     2.83   7      2       18      290     8       48      144
  18    2‧3²            6      2      3      -1     0      0.00   7      6       39      455     4       36      312
  19    19              18     1      1      -1     -1     2.94   8      2       20      362     0       24      160
  20    2²‧5            8      2      3      -1     0      0.00   8      6       42      546     8       24      144
  21    3‧7             12     2      2      1      1      0.00   8      4       32      500     0       48      256
  22    2‧11            10     2      2      1      1      0.00   8      4       36      610     0       24      288
  23    23              22     1      1      -1     -1     3.14   9      2       24      530     0       0       192
  24    2³‧3            8      2      4      1      0      0.00   9      8       60      850     0       24      96
  25    5²              20     1      2      1      0      1.61   9      3       31      651     12      30      248
  26    2‧13            12     2      2      1      1      0.00   9      4       42      850     8       72      336
  27    3³              18     1      3      -1     0      1.10   9      4       40      820     0       32      320
  28    2²‧7            12     2      3      -1     0      0.00   9      6       56      1050    0       0       192
  29    29              28     1      1      -1     -1     3.37   10     2       30      842     8       72      240
  30    2‧3‧5           8      3      3      -1     -1     0.00   10     8       72      1300    0       48      576
  31    31              30     1      1      -1     -1     3.43   11     2       32      962     0       0       256
  32    2⁵              16     1      5      -1     0      0.69   11     6       63      1365    4       12      24
  33    3‧11            20     2      2      1      1      0.00   11     4       48      1220    0       48      384
  34    2‧17            16     2      2      1      1      0.00   11     4       54      1450    8       48      432
  35    5‧7             24     2      2      1      1      0.00   11     4       48      1300    0       48      384
  36    2²‧3²           12     2      4      1      0      0.00   11     9       91      1911    4       30      312
  37    37              36     1      1      -1     -1     3.61   12     2       38      1370    8       24      304
  38    2‧19            18     2      2      1      1      0.00   12     4       60      1810    0       72      480
  39    3‧13            24     2      2      1      1      0.00   12     4       56      1700    0       0       448
  40    2³‧5            16     2      4      1      0      0.00   12     8       90      2210    8       24      144
  41    41              40     1      1      -1     -1     3.71   13     2       42      1682    8       96      336
  42    2‧3‧7           12     3      3      -1     -1     0.00   13     8       96      2500    0       48      768
  43    43              42     1      1      -1     -1     3.76   14     2       44      1850    0       24      352
  44    2²‧11           20     2      3      -1     0      0.00   14     6       84      2562    0       24      288
  45    3²‧5            24     2      3      -1     0      0.00   14     6       78      2366    8       72      624
  46    2‧23            22     2      2      1      1      0.00   14     4       72      2650    0       48      576
  47    47              46     1      1      -1     -1     3.85   15     2       48      2210    0       0       384
  48    2⁴‧3            16     2      5      -1     0      0.00   15     10      124     3410    0       8       96
  49    7²              42     1      2      1      0      1.95   15     3       57      2451    4       54      456
  50    2‧5²            20     2      3      -1     0      0.00   15     6       93      3255    12      84      744
  51    3‧17            32     2      2      1      1      0.00   15     4       72      2900    0       48      576
  52    2²‧13           24     2      3      -1     0      0.00   15     6       98      3570    8       24      336
  53    53              52     1      1      -1     -1     3.97   16     2       54      2810    8       72      432
  54    2‧3³            18     2      4      1      0      0.00   16     8       120     4100    0       96      960
  55    5‧11            40     2      2      1      1      0.00   16     4       72      3172    0       0       576
  56    2³‧7            24     2      4      1      0      0.00   16     8       120     4250    0       48      192
  57    3‧19            36     2      2      1      1      0.00   16     4       80      3620    0       48      640
  58    2‧29            28     2      2      1      1      0.00   16     4       90      4210    8       24      720
  59    59              58     1      1      -1     -1     4.08   17     2       60      3482    0       72      480
  60    2²‧3‧5          16     3      4      1      0      0.00   17     12      168     5460    0       0       576
  61    61              60     1      1      -1     -1     4.11   18     2       62      3722    8       72      496
  62    2‧31            30     2      2      1      1      0.00   18     4       96      4810    0       96      768
  63    3²‧7            36     2      3      -1     0      0.00   18     6       104     4550    0       0       832
  64    2⁶              32     1      6      1      0      0.69   18     7       127     5461    4       6       24
  65    5‧13            48     2      2      1      1      0.00   18     4       84      4420    16      96      672
  66    2‧3‧11          20     3      3      -1     -1     0.00   18     8       144     6100    0       96      1152
  67    67              66     1      1      -1     -1     4.20   19     2       68      4490    0       24      544
  68    2²‧17           32     2      3      -1     0      0.00   19     6       126     6090    8       48      432
  69    3‧23            44     2      2      1      1      0.00   19     4       96      5300    0       96      768
  70    2‧5‧7           24     3      3      -1     -1     0.00   19     8       144     6500    0       48      1152
  71    71              70     1      1      -1     -1     4.26   20     2       72      5042    0       0       576
  72    2³‧3²           24     2      5      -1     0      0.00   20     12      195     7735    4       36      312
  73    73              72     1      1      -1     -1     4.29   21     2       74      5330    8       48      592
  74    2‧37            36     2      2      1      1      0.00   21     4       114     6850    8       120     912
  75    3‧5²            40     2      3      -1     0      0.00   21     6       124     6510    0       56      992
  76    2²‧19           36     2      3      -1     0      0.00   21     6       140     7602    0       24      480
  77    7‧11            60     2      2      1      1      0.00   21     4       96      6100    0       96      768
  78    2‧3‧13          24     3      3      -1     -1     0.00   21     8       168     8500    0       48      1344
  79    79              78     1      1      -1     -1     4.37   22     2       80      6242    0       0       640
  80    2⁴‧5            32     2      5      -1     0      0.00   22     10      186     8866    8       24      144
  81    3⁴              54     1      4      1      0      1.10   22     5       121     7381    4       102     968
  82    2‧41            40     2      2      1      1      0.00   22     4       126     8410    8       48      1008
  83    83              82     1      1      -1     -1     4.42   23     2       84      6890    0       72      672
  84    2²‧3‧7          24     3      4      1      0      0.00   23     12      224     10500   0       48      768
  85    5‧17            64     2      2      1      1      0.00   23     4       108     7540    16      48      864
  86    2‧43            42     2      2      1      1      0.00   23     4       132     9250    0       120     1056
  87    3‧29            56     2      2      1      1      0.00   23     4       120     8420    0       0       960
  88    2³‧11           40     2      4      1      0      0.00   23     8       180     10370   0       24      288
  89    89              88     1      1      -1     -1     4.49   24     2       90      7922    8       144     720
  90    2‧3²‧5          24     3      4      1      0      0.00   24     12      234     11830   8       120     1872
  91    7‧13            72     2      2      1      1      0.00   24     4       112     8500    0       48      896
  92    2²‧23           44     2      3      -1     0      0.00   24     6       168     11130   0       0       576
  93    3‧31            60     2      2      1      1      0.00   24     4       128     9620    0       48      1024
  94    2‧47            46     2      2      1      1      0.00   24     4       144     11050   0       96      1152
  95    5‧19            72     2      2      1      1      0.00   24     4       120     9412    0       0       960
  96    2⁵‧3            32     2      6      1      0      0.00   24     12      252     13650   0       24      96
  97    97              96     1      1      -1     -1     4.57   25     2       98      9410    8       48      784
  98    2‧7²            42     2      3      -1     0      0.00   25     6       171     12255   4       108     1368
  99    3²‧11           60     2      3      -1     0      0.00   25     6       156     11102   0       72      1248
  100   2²‧5²           40     2      4      1      0      0.00   25     9       217     13671   12      30      744


Notes


References

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


Further reading

-


External links

-   -   Matthew Holden, Michael Orrison, Michael Varble Yet another Generalization of Euler's Totient Function
-   Huard, Ou, Spearman, and Williams. Elementary Evaluation of Certain Convolution Sums Involving Divisor Functions Elementary (i.e. not relying on the theory of modular forms) proofs of divisor sum convolutions, formulas for the number of ways of representing a number as a sum of triangular numbers, and related results.
-   Dineva, Rosica, The Euler Totient, the Möbius, and the Divisor Functions
-   László Tóth, Menon's Identity and arithmetical sums representing functions of several variables

*

[1]

[2]

[3] Niven & Zuckerman, 4.2.

[4] Nagell, I.9.

[5] Bateman & Diamond, 2.1.

[6] Hardy & Wright, intro. to Ch. XVI

[7] Hardy, _Ramanujan_, § 10.2

[8] Apostol, _Modular Functions ..._, § 1.15, Ch. 4, and ch. 6

[9] Hardy & Wright, §§ 18.1–18.2

[10]

[11] Hardy & Wright, § 17.6, show how the theory of generating functions can be constructed in a purely formal manner with no attention paid to convergence.

[12] Hardy & Wright, Thm. 263

[13] Hardy & Wright, Thm. 63

[14] see references at Jordan's totient function

[15] Holden et al in external links The formula is Gegenbauer's

[16] Hardy & Wright, Thm. 288–290

[17] Dineva in external links, prop. 4

[18] Hardy & Wright, Thm. 264

[19] Hardy & Wright, Thm. 296

[20] Hardy & Wright, Thm. 278

[21] Hardy & Wright, Thm. 386

[22] Hardy, _Ramanujan_, eqs 9.1.2, 9.1.3

[23] Koblitz, Ex. III.5.2

[24] Hardy & Wright, § 20.13

[25] Hardy, _Ramanujan_, § 9.7

[26]

[27] Hardy, _Ramanujan_, § 9.13

[28] Hardy, _Ramanujan_, § 9.17

[29] The paper by Huard, Ou, Spearman, and Williams in the external links also has proofs.

[30] Ramanujan, _On Certain Arithmetical Functions_, Table IV; _Papers_, p. 146

[31] Koblitz, ex. III.2.8

[32]

[33] Koblitz, ex. III.2.3

[34]

[35] Koblitz, ex. III.2.2

[36] Koblitz, ex. III.2.4

[37] Apostol, _Modular Functions ..._, Ex. 6.10

[38] Apostol, _Modular Functions..._, Ch. 6 Ex. 10

[39] G.H. Hardy, S. Ramannujan, _Asymptotic Formulæ in Combinatory Analysis_, § 1.3; in Ramannujan, _Papers_ p. 279

[40] Landau, p. 168, credits Gauss as well as Dirichlet

[41] Cohen, Def. 5.1.2

[42] Cohen, Corr. 5.3.13

[43] see Edwards, § 9.5 exercises for more complicated formulas.

[44] Cohen, Prop 5.3.10

[45] See Divisor function.

[46] Hardy & Wright, eq. 22.1.2

[47] See prime counting functions.

[48] Hardy & Wright, eq. 22.1.1

[49] Hardy & Wright, eq. 22.1.3

[50] László Tóth, _Menon's Identity and Arithmetical Sums ..._, eq. 1

[51] Tóth, eq. 5

[52] Tóth, eq. 3

[53] Tóth, eq. 35

[54] Tóth, eq. 2

[55] Tóth states that Menon proved this for multiplicative _f_ in 1965 and V. Sita Ramaiah for general _f_.

[56] Hardy _Ramanujan_, eq. 3.10.3

[57] Hardy & Wright, § 22.13

[58] Hardy & Wright, Thm. 329

[59] Hardy & Wright, Thms. 271, 272

[60] Hardy & Wright, eq. 16.3.1

[61] Ramanujan, _Some Formulæ in the Analytic Theory of Numbers_, eq. (C); _Papers_ p. 133. A footnote says that Hardy told Ramanujan it also appears in an 1857 paper by Liouville.

[62] Ramanujan, _Some Formulæ in the Analytic Theory of Numbers_, eq. (F); _Papers_ p. 134

[63] Apostol, _Modular Functions ..._, ch. 6 eq. 4

[64] Apostol, _Modular Functions ..._, ch. 6 eq. 3