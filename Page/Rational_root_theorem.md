In algebra, the RATIONAL ROOT THEOREM (or RATIONAL ROOT TEST, RATIONAL ZERO THEOREM, RATIONAL ZERO TEST or _P_/_Q_ THEOREM) states a constraint on rational solutions of a polynomial equation

_a__(_n_)_x_^(_n_) + _a__(_n_ − 1)_x_^(_n_ − 1) + ⋯ + _a_₀ = 0

with integer coefficients a_(i) ∈ ℤ and a₀, a_(n) ≠ 0. Solutions of the equation are also called roots or zeroes of the polynomial on the left side.

The theorem states that each rational solution _x_ = _p_/_q,_ written in lowest terms so that _p_ and _q_ are relatively prime, satisfies:

-   _p_ is an integer factor of the constant term _a_₀, and

-   _q_ is an integer factor of the leading coefficient _a_(n)_.

The rational root theorem is a special case (for a single linear factor) of Gauss's lemma on the factorization of polynomials. The INTEGRAL ROOT THEOREM is the special case of the rational root theorem when the leading coefficient is _a_(n)_ = 1.


Application

The theorem is used to find all rational roots of a polynomial, if any. It gives a finite number of possible fractions which can be checked to see if they are roots. If a rational root _x_ = _r_ is found, a linear polynomial (_x_-_r)_ can be factored out of the polynomial using polynomial long division, resulting in a polynomial of lower degree whose roots are also roots of the original polynomial.

Cubic equation

The general cubic equation

_a__x_³ + _b__x_² + _c__x_ + _d_ = 0

with integer coefficients has three solutions in the complex plane. If the rational root test finds no rational solutions, then the only way to express the solutions algebraically uses cube roots. But if the test finds a rational solution _r_, then factoring out (_x_ – _r_) leaves a quadratic polynomial whose two roots, found with the quadratic formula, are the remaining two roots of the cubic, avoiding cube roots.


Proofs

First proof

Let

_P_(_x_) = _a__(_n_)_x_^(_n_) + _a__(_n_ − 1)_x_^(_n_ − 1) + ⋯ + _a_₁_x_ + _a_₀,  _a_₀, …_a__(_n_) ∈ Z.

Suppose _P_(_p_/_q_) = 0 for some coprime _p_, _q_ ∈ Z:

$$P \left(\tfrac{p}{q} \right) = a_n\left(\tfrac{p}{q}\right)^n + a_{n-1}\left(\tfrac{p}{q}\right)^{n-1} + \cdots + a_1 \left(\tfrac{p}{q}\right) + a_0 = 0.$$

If we multiply both sides by _q^(n)_, shift the constant term to the right side, and factor out _p_ on the left side, we get

_p_(_a__(_n_)_p_^(_n_ − 1)+_a__(_n_ − 1)_q__p_^(_n_ − 2)+⋯+_a_₁_q_^(_n_ − 1)) =  − _a_₀_q_^(_n_).

We see that _p_ divides _a_₀_q^(n)_. But _p_ is coprime to _q_ and therefore to _q^(n)_, so by Euclid's lemma _p_ must divide the remaining factor _a_₀ of the product.

If we instead shift the leading term to the right side and factor out _q_ on the left side, we get

_q_(_a__(_n_ − 1)_p_^(_n_ − 1)+_a__(_n_ − 2)_q__p_^(_n_ − 2)+⋯+_a_₀_q_^(_n_ − 1)) =  − _a__(_n_)_p_^(_n_).

Reasoning as before, we conclude that _q_ divides _a_(n)_.[1]

Proof using Gauss' lemma

Should there be a nontrivial factor dividing all the coefficients of the polynomial, then one can divide by the greatest common divisor of the coefficients so as to obtain a primitive polynomial in the sense of Gauss's lemma; this does not alter the set of rational roots and only strengthens the divisibility conditions. That lemma says that if the polynomial factors in , then it also factors in as a product of primitive polynomials. Now any rational root corresponds to a factor of degree 1 in of the polynomial, and its primitive representative is then , assuming that _p_ and _q_ are coprime. But any multiple in of has leading term divisible by _q_ and constant term divisible by _p_, which proves the statement. This argument shows that more generally, any irreducible factor of _P_ can be supposed to have integer coefficients, and leading and constant coefficients dividing the corresponding coefficients of _P_.


Examples

First

In the polynomial

2_x_³ + _x_ − 1,

any rational root fully reduced would have to have a numerator that divides evenly into 1 and a denominator that divides evenly into 2. Hence the only possible rational roots are ±1/2 and ±1; since neither of these equates the polynomial to zero, it has no rational roots.

Second

In the polynomial

_x_³ − 7_x_ + 6

the only possible rational roots would have a numerator that divides 6 and a denominator that divides 1, limiting the possibilities to ±1, ±2, ±3, and ±6. Of these, 1, 2, and –3 equate the polynomial to zero, and hence are its rational roots. (In fact these are its only roots since a cubic has only three roots; in general, a polynomial could have some rational and some irrational roots.)

Third

Every rational root of the polynomial

3_x_³ − 5_x_² + 5_x_ − 2
must be among the numbers symbolically indicated by:

    $\pm\tfrac{1,2}{1,3} \ =\  \pm \{1, 2, \tfrac{1}{3}, \tfrac{2}{3}\} .$

These 8 root candidates _x_ = _r_ can be tested by evaluating _P_(_r_), for example using Horner's method. It turns out there is exactly one with _P_(_r_) = 0.

This process may be made more efficient: if _P_(_r_) ≠ 0, it can be used to shorten the list of remaining candidates.[2] For example, _x_ = 1 does not work, as _P_(1) = 1. Substituting _x_ = 1 + _t_ yields a polynomial in _t_ with constant term _P_(1) = 1, while the coefficient of _t_³ remains the same as the coefficient of _x_³. Applying the rational root theorem thus yields the possible roots $t=\pm\tfrac{1}{1,3}$, so that

$$x = 1+t = 2, 0, \tfrac{4}{3}, \tfrac{2}{3}.$$

True roots must occur on both lists, so list of rational root candidates has shrunk to just _x_ = 2 and _x_ = 2/3.

If _k_ ≥ 1 rational roots are found, Horner's method will also yield a polynomial of degree _n_ − _k_ whose roots, together with the rational roots, are exactly the roots of the original polynomial. If none of the candidates is a solution, there can be no rational solution.


See also

-   Integrally closed domain
-   Descartes' rule of signs
-   Gauss–Lucas theorem
-   Properties of polynomial roots
-   Content (algebra)
-   Eisenstein's criterion


Notes


References

-   Charles D. Miller, Margaret L. Lial, David I. Schneider: _Fundamentals of College Algebra_. Scott & Foresman/Little & Brown Higher Education, 3rd edition 1990, , pp. 216–221
-   Phillip S. Jones, Jack D. Bedient: _The historical roots of elementary mathematics_. Dover Courier Publications 1998, , pp. 116–117 ()
-   Ron Larson: _Calculus: An Applied Approach_. Cengage Learning 2007, , pp. 23–24 ()


External links

-   -   _RationalRootTheorem_ at PlanetMath
-   Another proof that n^(th) roots of integers are irrational, except for perfect nth powers by Scott E. Brodie
-   _The Rational Roots Test_ at purplemath.com

Category:Polynomials Category:Theorems in algebra Category:Root-finding algorithms

[1]

[2]