In mathematics, there are many LOGARITHMIC IDENTITIES.


Trivial identities

  ---------------- --------- ----------------------------------------
  log_(b)(1) = 0   because   b⁰ = 1, given that _b doesn't equal 0_
  log_(b)(b) = 1   because   b¹ = b
  ---------------- --------- ----------------------------------------


Cancelling exponentials

Logarithms and exponentials with the same base cancel each other. This is true because logarithms and exponentials are inverse operations (just like multiplication and division or addition and subtraction).

_b_^(log_(_b_)(_x_)) = _x_ because antilog_(_b_)(log_(_b_)(_x_)) = _x_

log_(_b_)(_b_^(_x_)) = _x_ because log_(_b_)(antilog_(_b_)(_x_)) = _x_

Both of the above are derived from the following two equations that define a logarithm:-

_b_^(_c_) = _x_, log_(_b_)(_x_) = _c_

Substituting in the left equation gives , and substituting in the right gives . Finally, replace by .


Using simpler operations

Logarithms can be used to make calculations easier. For example, two numbers can be multiplied just by using a logarithm table and adding. The first three operations below assume , and/or so that and . Derivations also use the log definitions and .

  ------------------------------------------------------ --------- --------------------------------------------------------------------------------------------
  log_(b)(xy) = log_(b)(x) + log_(b)(y)                  because   b^(c) ⋅ b^(d) = b^(c + d)
  $\log_b(\tfrac{x}{y})=\log_b(x)-\log_b(y)$             because   $\tfrac{b^c}{b^d}=b^{c-d}$
  log_(b)(x^(d)) = dlog_(b)(x)                           because   (b^(c))^(d) = b^(cd)
  $\log_b\left(\sqrt[y]{x}\right)=\frac{\log_b(x)}{y}$   because   $\sqrt[y]{x}=x^{1/y}$
  x^(log_(b)(y)) = y^(log_(b)(x))                        because   x^(log_(b)(y)) = b^(log_(b)(x)log_(b)(y)) = (b^(log_(b)(y)))^(log_(b)(x)) = y^(log_(b)(x))
  clog_(b)(x) + dlog_(b)(y) = log_(b)(x^(c)y^(d))        because   log_(b)(x^(c)y^(d)) = log_(b)(x^(c)) + log_(b)(y^(d))
  ------------------------------------------------------ --------- --------------------------------------------------------------------------------------------

Where b, x, and y are positive real numbers and b ≠ 1. Both c and d are real numbers.

The laws result from canceling exponentials and appropriate law of indices. Starting with the first law:

xy = b^(log_(b)(x))b^(log_(b)(y)) = b^(log_(b)(x) + log_(b)(y)) ⇒ log_(b)(xy) = log_(b)(b^(log_(b)(x) + log_(b)(y))) = log_(b)(x) + log_(b)(y)

The law for powers exploits another of the laws of indices:

x^(y) = (b^(log_(b)(x)))^(y) = b^(ylog_(b)(x)) ⇒ log_(b)(x^(y)) = ylog_(b)(x)

The law relating to quotients then follows:

$\log_b \bigg(\frac{x}{y}\bigg) = \log_b(x y^{-1}) = \log_b(x) + \log_b(y^{-1}) = \log_b(x) - \log_b(y)$

$\log_b \bigg(\frac{1}{y}\bigg) = \log_b(y^{-1}) = - \log_b(y)$

Similarly, the root law is derived by rewriting the root as a reciprocal power:

$\log_b(\sqrt[y]x) = \log_b(x^{\frac{1}{y}}) = \frac{1}{y}\log_b(x)$


Changing the base

$$\log_b a=\frac{\log_d(a)}{\log_d(b)}$$

This identity is useful to evaluate logarithms on calculators. For instance, most calculators have buttons for ln and for , but not all calculators have buttons for the logarithm of an arbitrary base.

    Consider the equation b^(c) = a

    Take logarithm base d of both sides: log_(d)b^(c) = log_(d)a

    Simplify and solve for c: clog_(d)b = log_(d)a

$$c=\frac{\log_d a}{\log_d b}$$

    Since c = log_(b)a, then $\log_b a=\frac{\log_d a}{\log_d b}$

This formula has several consequences:

$$\log_b a = \frac {1} {\log_a b}$$

$$\log_{b^n} a =  {{\log_b a} \over n}$$

_b_^(log_(_a_)_d_) = _d_^(log_(_a_)_b_)

$$- \log_b a = \log_b \left({1 \over a}\right) = \log_{1 \over b} a$$

log_(_b_₁)_a_₁ ⋯ log_(_b__(_n_))_a__(_n_) = log_(_b__(_π_(1)))_a_₁ ⋯ log_(_b__(_π_(_n_)))_a__(_n_),

where $\scriptstyle\pi$ is any permutation of the subscripts 1, ..., _n_. For example

log_(_b_)_w_ ⋅ log_(_a_)_x_ ⋅ log_(_d_)_c_ ⋅ log_(_d_)_z_ = log_(_d_)_w_ ⋅ log_(_b_)_x_ ⋅ log_(_a_)_c_ ⋅ log_(_d_)_z_.

Summation/subtraction

The following summation/subtraction rule is especially useful in probability theory when one is dealing with a sum of log-probabilities:

$$\log_b (a+c) = \log_b a + \log_b \left(1+\frac{c}{a}\right)$$

$$\log_b (a-c) = \log_b a + \log_b \left(1-\frac{c}{a}\right)$$

Note that in practice a and c have to be switched on the right hand side of the equations if c > a. Also note that the subtraction identity is not defined if a = c since the logarithm of zero is not defined. Many programming languages have a specific log1p(x) function that calculates log_(e)(1 + x) without underflow when x is small.

More generally:

$$\log _b \sum\limits_{i=0}^N a_i = \log_b a_0 + \log_b \left( 1+\sum\limits_{i=1}^N \frac{a_i}{a_0} \right) = \log _b a_0 + \log_b \left( 1+\sum\limits_{i=1}^N b^{\left( \log_b a_i - \log _b a_0 \right)} \right)$$

where a₀ > a₁ > … > a_(N) are sorted in descending order.

Exponents

A useful identity involving exponents:

$$x^{\frac{\log(\log(x))}{\log(x)}} = \log(x)$$

or more universally:

$$x^{\frac{\log(a)}{\log(x)}} = a$$

Other/Resulting Identities

$$\frac{1}{\frac{1}{\log_x(a)}+\frac{1}{\log_y(a)}} = \log_{xy}(a)$$


Inequalities

Based on [1] , [2] and [3]

$$\frac{x}{1+x} \leq \ln(1+x)
\leq \frac{x(6+x)}{6+4x}
\leq x \mbox{ for all } -1 < x$$

$$\begin{align}
\frac{2x}{2+x}&\leq3-\sqrt{\frac{27}{3+2x}}\leq\frac{x}{\sqrt{1+x+x^2/12}}
\\&\leq    \ln(1+x)\leq \frac{x}{\sqrt{1+x}}\leq \frac{x}{2}\frac{2+x}{1+x}
\\&\mbox{ for } 0 \le x \mbox{, reverse for } -1 < x \le 0
\end{align}$$

All are accurate around x = 0, but not for large numbers.


Calculus identities

Limits

lim_(_x_ → 0⁺)log_(_a_)(_x_) =  − ∞ if _a_ > 1

lim_(_x_ → 0⁺)log_(_a_)(_x_) = ∞ if 0 < _a_ < 1

lim_(_x_ → ∞)log_(_a_)(_x_) = ∞ if _a_ > 1

lim_(_x_ → ∞)log_(_a_)(_x_) =  − ∞ if 0 < _a_ < 1

lim_(_x_ → 0⁺)_x_^(_b_)log_(_a_)(_x_) = 0 if _b_ > 0

$$\lim_{x\to\infty}\frac{\log_a(x)}{x^b}=0\quad \mbox{if } b > 0$$

The last limit is often summarized as "logarithms grow more slowly than any power or root of _x_".

Derivatives of logarithmic functions

$${d \over dx} \ln x = {1 \over x },$$

$${d \over dx} \log_b x = {1 \over x \ln b},$$
Where x > 0, b > 0, and b ≠ 1.

Integral definition

$$\ln x = \int_1^x \frac {1}{t} dt$$

Integrals of logarithmic functions

    ∫log_(a)x dx = x(log_(a)x − log_(a)e) + C

To remember higher integrals, it's convenient to define:

_x_^([_n_]) = _x_^(_n_)(log (_x_) − _H__(_n_))
Where H_(n) is the nth Harmonic number.

_x_^([0]) = log _x_

_x_^([1]) = _x_log (_x_) − _x_

$$x^{\left [ 2 \right ]} = x^2 \log(x) - \begin{matrix} \frac{3}{2} \end{matrix} \, x^2$$

$$x^{\left [ 3 \right ]} = x^3 \log(x) - \begin{matrix} \frac{11}{6} \end{matrix} \, x^3$$

Then,

$$\frac {d}{dx} \, x^{\left [ n \right ]} = n \, x^{\left [ n-1 \right ]}$$

$$\int x^{\left [ n \right ]}\,dx = \frac {x^{\left [ n+1 \right ]}} {n+1} + C$$


Approximating large numbers

The identities of logarithms can be used to approximate large numbers. Note that , where _a_, _b_, and _c_ are arbitrary constants. Suppose that one wants to approximate the 44th Mersenne prime, . To get the base-10 logarithm, we would multiply 32,582,657 by , getting . We can then get .

Similarly, factorials can be approximated by summing the logarithms of the terms.


Complex logarithm identities

The complex logarithm is the complex number analogue of the logarithm function. No single valued function on the complex plane can satisfy the normal rules for logarithms. However a multivalued function can be defined which satisfies most of the identities. It is usual to consider this as a function defined on a Riemann surface. A single valued version called the principal value of the logarithm can be defined which is discontinuous on the negative x axis and equals the multivalued version on a single branch cut.

Definitions

The convention will be used here that a capital first letter is used for the principal value of functions and the lower case version refers to the multivalued function. The single valued version of definitions and identities is always given first followed by a separate section for the multiple valued versions.

    is the standard natural logarithm of the real number _r_.

    is the principal value of the complex logarithm function and has imaginary part in the range .

    is the principal value of the arg function, its value is restricted to . It can be computed using .

Log (_z_) = ln (|_z_|) + _i_Arg (_z_)

_e_^(Log (_z_)) = _z_

The multiple valued version of is a set but it is easier to write it without braces and using it in formulas follows obvious rules.

    is the set of complex numbers _v_ which satisfy

    is the set of possible values of the arg function applied to _z_.

When _k_ is any integer:

log (_z_) = ln (|_z_|) + _i_arg (_z_)

log (_z_) = Log (_z_) + 2_π__i__k_

_e_^(log (_z_)) = _z_

Constants

Principal value forms:

Ln (1) = 0

Ln (_e_) = 1

Multiple value forms, for any _k_ an integer:

log (1) = 0 + 2_π__i__k_

log (_e_) = 1 + 2_π__i__k_

Summation

Principal value forms:

$$\operatorname{Log}(z_1) + \operatorname{Log}(z_2) = \operatorname{Log}(z_1 z_2) \pmod {2 \pi i}$$

$$\operatorname{Log}(z_1) - \operatorname{Log}(z_2) = \operatorname{Log}(z_1 / z_2) \pmod {2 \pi i}$$

Multiple value forms:

log (_z_₁) + log (_z_₂) = log (_z_₁_z_₂)

log (_z_₁) − log (_z_₂) = log (_z_₁/_z_₂)

Powers

A complex power of a complex number can have many possible values.

Principal value form:

_z_₁^(_z_₂) = _e_^(_z_₂Log (_z_₁))

$$\operatorname{Log}{\left({z_1}^{z_2}\right)} = z_2 \operatorname{Log}(z_1) \pmod {2 \pi i}$$

Multiple value forms:

_z_₁^(_z_₂) = _e_^(_z_₂log (_z_₁))

Where , are any integers:

log (_z_₁^(_z_₂)) = _z_₂log (_z_₁) + 2_π__i__k_₂

log (_z_₁^(_z_₂)) = _z_₂Log (_z_₁) + _z_₂2_π__i__k_₁ + 2_π__i__k_₂


See also

-   List of trigonometric identities
-   Exponential function


References


External links

-   -   Logarithm in Mathwords

Category:Logarithms Category:Mathematical identities Category:Articles containing proofs

[1] http://ajmaa.org/RGMIA/papers/v7n2/pade.pdf

[2] http://www.lkozma.net/inequalities_cheat_sheet/ineq.pdf

[3] http://downloads.hindawi.com/archive/2013/412958.pdf