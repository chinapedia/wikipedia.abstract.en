In mathematics, the EULER–MACLAURIN FORMULA is a formula for the difference between an integral and a closely related sum. It can be used to approximate integrals by finite sums, or conversely to evaluate finite sums and infinite series using integrals and the machinery of calculus. For example, many asymptotic expansions are derived from the formula, and Faulhaber's formula for the sum of powers is an immediate consequence.

The formula was discovered independently by Leonhard Euler and Colin Maclaurin around 1735. Euler needed it to compute slowly converging infinite series while Maclaurin used it to calculate integrals. It was later generalized to Darboux's formula.


The formula

If m and n are natural numbers and f(x) is a complex or real valued continuous function for real numbers x in the interval [m, n], then the integral

_I_ = ∫_(_m_)^(_n_)_f_(_x_) _d__x_

can be approximated by the sum (or vice versa)

_S_ = _f_(_m_ + 1) + ⋯ + _f_(_n_ − 1) + _f_(_n_)

(see rectangle method). The Euler–Maclaurin formula provides expressions for the difference between the sum and the integral in terms of the higher derivatives f^((k))(x) evaluated at the end points of the interval, that is to say when x = m and x = n.

Explicitly, for p a positive integer and a function f(x) that is p times continuously differentiable in the interval [m, n], we have

$$S - I = \sum_{k=1}^p {\frac{B_k}{k!} (f^{(k - 1)}(n) - f^{(k - 1)}(m))} + R_p,$$

where B_(k) is the kth Bernoulli number (with B₁ = 1/2) and R_(p) is an error term which depends on n, m, p, and f and is usually small for suitable values of p.

The formula is often written with the subscript taking only even values, since the odd Bernoulli numbers are zero except for B₁. In this case we have[1][2]

$$\sum_{i=m}^n f(i) =
    \int^n_m f(x)\,dx + \frac{f(n) + f(m)}{2} +
    \sum_{k=1}^{\lfloor p/2\rfloor} \frac{B_{2k}}{(2k)!} (f^{(2k - 1)}(n) - f^{(2k - 1)}(m)) + R_p,$$

or alternatively

$$\sum_{i=m+1}^n f(i) =
    \int^n_m f(x)\,dx + \frac{f(n) - f(m)}{2} +
    \sum_{k=1}^{\lfloor p/2\rfloor} \frac{B_{2k}}{(2k)!} (f^{(2k - 1)}(n) - f^{(2k - 1)}(m)) + R_p.$$

The remainder term

The remainder term arises because the integral is usually not exactly equal to the sum. The formula may be derived by applying repeated integration by parts to successive intervals [r, r + 1] for r = m, m + 1, …, n − 1. The boundary terms in these integrations lead to the main terms of the formula, and the leftover integrals form the remainder term.

The remainder term has an exact expression in terms of the periodized Bernoulli functions P_(k)(x). The Bernoulli polynomials may be defined recursively by B₀(x) = 1 and, for k ≥ 1,

$$\begin{align}
  B_k'(x) &= kB_{k - 1}(x), \\
  \int_0^1 B_k(x)\,dx &= 0.
\end{align}$$
The periodized Bernoulli functions are defined as

_P__(_k_)(_x_) = _B__(_k_)(_x_ − ⌊_x_⌋),
where ⌊x⌋ denotes the largest integer less than or equal to x (so that x − ⌊x⌋ always lies in the interval [0, 1)).

With this notation, the remainder term R_(p) equals

$$R_p = (-1)^{p+1}\int_m^n f^{(p)}(x) \frac{P_p(x)}{p!}\,dx.$$

When k > 0, it can be shown that

$$|B_k(x)| \le \frac{2 \cdot k!}{(2\pi)^k}\zeta(k),$$

where ζ denotes the Riemann zeta function; one approach to prove this inequality is to obtain the Fourier series for the polynomials B_(k)(x). The bound is achieved for even k when x is zero. The term ζ(k) may be omitted for odd k but the proof in this case is more complex (see Lehmer).[3] Using this inequality, the size of the remainder term can be estimated as

$$|R_p| \leq \frac{2 \zeta(p)}{(2\pi)^p}\int_m^n |f^{(p)}(x)|\,dx.$$

Low-order cases

The Bernoulli numbers from B₁ to B₇ are $\tfrac{1}{2}, \tfrac{1}{6}, 0, -\tfrac{1}{30}, 0, \tfrac{1}{42}, 0.$ Therefore the low-order cases of the Euler-Maclaurin formula are:

$$\begin{align}
\sum_{i=m}^n f(i) - \int_m^n f(x)\,dx &= \frac{f(m)+f(n)}{2} + \int_m^n f'(x)P_1(x)\,dx \\
&=\frac{f(m)+f(n)}{2} + \frac{1}{6}\frac{f'(n) - f'(m)}{2!} - \int_m^n f''(x)P_2(x)\,dx \\
&=\frac{f(m)+f(n)}{2} + \frac{1}{6}\frac{f'(n) - f'(m)}{2!} + \int_m^n f'''(x)P_3(x)\,dx \\
&=\frac{f(m)+f(n)}{2} + \frac{1}{6}\frac{f'(n) - f'(m)}{2!} - \frac{1}{30}\frac{f'''(n) - f'''(m)}{4!}-\int_m^n f^{(4)}(x) P_4(x)\, dx \\
&=\frac{f(m)+f(n)}{2} + \frac{1}{6}\frac{f'(n) - f'(m)}{2!} - \frac{1}{30}\frac{f'''(n) - f'''(m)}{4!} + \int_m^n f^{(5)}(x)P_5(x)\,dx \\
&=\frac{f(m)+f(n)}{2} + \frac{1}{6}\frac{f'(n) - f'(m)}{2!} - \frac{1}{30}\frac{f'''(n) - f'''(m)}{4!} + \frac{1}{42}\frac{f^{(5)}(n) - f^{(5)}(m)}{6!} - \int_m^n f^{(6)}(x)P_6(x)\,dx \\
&=\frac{f(m)+f(n)}{2} + \frac{1}{6}\frac{f'(n) - f'(m)}{2!} - \frac{1}{30}\frac{f'''(n) - f'''(m)}{4!} + \frac{1}{42}\frac{f^{(5)}(n) - f^{(5)}(m)}{6!} + \int_m^n f^{(7)}(x)P_7(x)\,dx.
\end{align}$$


Applications

The Basel problem

The Basel problem is to determine the sum

$$1 + \frac14 + \frac19 + \frac1{16} + \frac1{25} + \cdots = \sum_{n=1}^\infty \frac{1}{n^2}.$$

Euler computed this sum to 20 decimal places with only a few terms of the Euler–Maclaurin formula in 1735. This probably convinced him that the sum equals π²/6, which he proved in the same year.[4] (Parseval's identity for the Fourier series of f(x) = x gives the same result.)

Sums involving a polynomial

If f is a polynomial and p is big enough, then the remainder term vanishes. For instance, if f(x) = x³, we can choose p = 2 to obtain, after simplification,

$$\sum_{i=0}^n i^3 = \left(\frac{n(n + 1)}{2}\right)^2.$$

Approximation of integrals

The formula provides a means of approximating a finite integral. Let a < b be the endpoints of the interval of integration. Fix N, the number of points to use in the approximation, and denote the corresponding step size by h = (b − a)/(N − 1). Set x_(i) = a + (i − 1)h, so that x₁ = a and x_(N) = b. Then:[5]

$$\begin{align}
I & = \int_a^b f(x)\,dx \\
&\sim h\left(\frac{f(x_1)}{2} + f(x_2) + \cdots + f(x_{N-1}) + \frac{f(x_N)}{2}\right) + \frac{h^2}{12}[f'(x_1) - f'(x_N)] - \frac{h^4}{720}[f'''(x_1) - f'''(x_N)] + \cdots.
\end{align}$$

This may be viewed as an extension of the trapezoid rule by the inclusion of correction terms. Note that this asymptotic expansion is usually not convergent; there is some p, depending upon f and h, such that the terms past order p increase rapidly. Thus, the remainder term generally demands close attention.[6]

The Euler–Maclaurin formula is also used for detailed error analysis in numerical quadrature. It explains the superior performance of the trapezoidal rule on smooth periodic functions and is used in certain extrapolation methods. Clenshaw–Curtis quadrature is essentially a change of variables to cast an arbitrary integral in terms of integrals of periodic functions where the Euler–Maclaurin approach is very accurate (in that particular case the Euler–Maclaurin formula takes the form of a discrete cosine transform). This technique is known as a periodizing transformation.

Asymptotic expansion of sums

In the context of computing asymptotic expansions of sums and series, usually the most useful form of the Euler–Maclaurin formula is

$$\sum_{n=a}^b f(n) \sim \int_a^b f(x)\,dx + \frac{f(b) + f(a)}{2} + \sum_{k=1}^\infty \,\frac{B_{2k}}{(2k)!} \left(f^{(2k - 1)}(b) - f^{(2k - 1)}(a)\right),$$

where a and b are integers.[7] Often the expansion remains valid even after taking the limits a →  − ∞ or b →  + ∞ or both. In many cases the integral on the right-hand side can be evaluated in closed form in terms of elementary functions even though the sum on the left-hand side cannot. Then all the terms in the asymptotic series can be expressed in terms of elementary functions. For example,

$$\sum_{k=0}^\infty \frac{1}{(z + k)^2} \sim \underbrace{\int_0^\infty\frac{1}{(z + k)^2}\,dk}_{= 1/z} + \frac{1}{2z^2} + \sum_{t = 1}^\infty \frac{B_{2t}}{z^{2t + 1}}.$$

Here the left-hand side is equal to ψ⁽¹⁾(z), namely the first-order polygamma function defined by ψ⁽¹⁾(z) = (d/dz)²(log Γ(z)); the gamma function Γ(z) is equal to (z − 1)! if z is a positive integer. This results in an asymptotic expansion for ψ⁽¹⁾(z). That expansion, in turn, serves as the starting point for one of the derivations of precise error estimates for Stirling's approximation of the factorial function.

Examples

If is an integer greater than 1 we have:

$$\sum_{k=1}^n \frac{1}{k^s} \approx \frac 1{s-1}+\frac 12-\frac 1{(s-1)n^{s-1}}+\frac 1{2n^s}+\sum_{i=1}\frac{B_{2i}}{(2i)!}\left[\frac{(s+2i-2)!}{(s-1)!}-\frac{(s+2i-2)!}{(s-1)!n^{s+2i-1}}\right].$$

Collecting the constants into a value of the Riemann zeta function, we can write an asymptotic expansion:

$$\sum_{k=1}^n \frac{1}{k^s} \sim\zeta(s)-\frac 1{(s-1)n^{s-1}}+\frac 1{2n^s}-\sum_{i=1}\frac{B_{2i}}{(2i)!}\frac{(s+2i-2)!}{(s-1)!n^{s+2i-1}}.$$

For equal to 2 this simplifies to

$$\sum_{k=1}^n \frac{1}{k^2} \sim\zeta(2)-\frac 1n+\frac 1{2n^2}-\sum_{i=1}\frac{B_{2i}}{n^{2i+1}},$$
or

$$\sum_{k=1}^n \frac{1}{k^2} \sim \frac{\pi^2}{6} -\frac{1}{n} +\frac{1}{2n^2} -\frac{1}{6n^3}+\frac{1}{30n^5}-\frac{1}{42n^7} + \cdots.$$

When 1}}, the corresponding technique gives an asymptotic expansion for the harmonic numbers:

$$\sum_{k=1}^n \frac{1}{k} \sim \gamma + \log n + \frac{1}{2n} - \sum_{k=1}^\infty \frac{B_{2k}}{2kn^{2k}},$$
where γ ≈ 0.5772156649015328606065 is the Euler–Mascheroni constant.


Proofs

Derivation by mathematical induction

We outline the argument given in Apostol.[8]

The Bernoulli polynomials and the periodic Bernoulli functions for 0, 1, 2, ...}} were introduced above.

The first several Bernoulli polynomials are

$$\begin{align}
  B_1(x) &= x - \frac{1}{2}, \\
  B_2(x) &= x^2 - x + \frac{1}{6}, \\
  B_3(x) &= x^3 - \frac{3}{2}x^2 + \frac{1}{2}x, \\
  B_4(x) &= x^4 - 2x^3 + x^2 - \frac{1}{30}, \\
         & \vdots
\end{align}$$

The values are the Bernoulli numbers . Notice that for we have

_B__(_n_) = _B__(_n_)(0) = _B__(_n_)(1),

and for  1}},

_B_₁ = _B_₁(0) =  − _B_₁(1).

The functions agree with the Bernoulli polynomials on the interval and are periodic with period 1. Furthermore, except when 1}}, they are also continuous. Thus,

_P__(_n_)(0) = _P__(_n_)(1) = _B__(_n_) (_n_ ≠ 1)

Let be an integer, and consider the integral

∫_(_k_)^(_k_ + 1)_f_(_x_) _d__x_ = ∫_(_k_)^(_k_ + 1)_u_ _d__v_,

where

$$\begin{align}
   u &= f(x), \\
  du &= f'(x)\,dx, \\
  dv &= P_0(x)\,dx && (\text{since }P_0(x) = 1), \\
   v &= P_1(x).
\end{align}$$

Integrating by parts, we get

$$\begin{align}
 \int_k^{k + 1} f(x)\,dx &= \bigl[uv\bigr]_k^{k + 1} - \int_k^{k + 1} v\,du \\
                         &= \bigl[f(x)P_1(x)\bigr]_k^{k + 1} - \int_k^{k+1} f'(x)P_1(x)\,dx \\
                         &= B_1(1)f(k+1)-B_1(0)f(k) - \int_k^{k+1} f'(x)P_1(x)\,dx.
\end{align}$$

Using B₁(0) =  − 1/2, B₁(1) = 1/2, and summing the above from 0}} to _n_ − 1}}, we get

$$\begin{align}
\int_0^n f(x)\, dx &= \int_0^1 f(x)\,dx + \dotsb + \int_{n-1}^n f(x)\,dx  \\
&= \frac{f(0)}{2}+ f(1) + \dotsb + f(n-1) + \frac{f(n)}{2} - \int_0^n f'(x) P_1(x)\,dx.
\end{align}$$

Adding (_f_(_n_) − _f_(0))/2 to both sides and rearranging, we have

$$\sum_{k=1}^n f(k) = \int_0^n f(x)\,dx + \frac{f(n) - f(0)}{2} + \int_0^n f'(x) P_1(x)\,dx.$$

This is the 1}} case of the summation formula. To continue the induction, we apply integration by parts to the error term:

∫_(_k_)^(_k_ + 1)_f_′(_x_)_P_₁(_x_) _d__x_ = ∫_(_k_)^(_k_ + 1)_u_ _d__v_,

where

$$\begin{align}
   u &= f'(x), \\
  du &= f''(x)\,dx, \\
  dv &= P_1(x)\,dx, \\
   v &= \frac{1}{2}P_2(x).
\end{align}$$

The result of integrating by parts is

$$\begin{align}
  \bigl[uv\bigr]_k^{k + 1} - \int_k^{k + 1} v\,du &= \left[\frac{f'(x)P_2(x)}{2} \right]_k^{k+1} - \frac{1}{2}\int_k^{k+1} f''(x)P_2(x)\,dx \\
                  &= \frac{B_2}{2}(f'(k + 1) - f'(k)) - \frac{1}{2}\int_k^{k + 1} f''(x)P_2(x)\,dx.
\end{align}$$

Summing from 0}} to _n_ − 1}} and substituting this for the lower order error term results in the 2}} case of the formula,

$$\sum_{k=1}^n f(k) = \int_0^n f(x)\,dx + \frac{f(n) - f(0)}{2} + \frac{B_2}{2}(f'(n) - f'(0)) - \frac{1}{2}\int_0^n f''(x)P_2(x)\,dx.$$

This process can be iterated. In this way we get a proof of the Euler–Maclaurin summation formula which can be formalized by mathematical induction, in which the induction step relies on integration by parts and on identities for periodic Bernoulli functions.


See also

-   Cesàro summation
-   Euler summation
-   Gauss–Kronrod quadrature formula
-   Darboux's formula
-   Euler–Boole summation


Notes


References

-   , pp. 16, 806, 886

-   -   Gourdon, Xavier; Sebah, Pascal _Introduction on Bernoulli's numbers_, (2002)
-

Category:Approximation theory Category:Asymptotic analysis Category:Hilbert space Category:Numerical integration (quadrature) Category:Articles containing proofs Category:Theorems in analysis Category:Summability methods Category:Leonhard Euler

[1]

[2]

[3]

[4] Pengelley, David J. "Dances between continuous and discrete: Euler's summation formula", in: Robert Bradley and Ed Sandifer (Eds), _Proceedings, Euler 2K+2 Conference (Rumford, Maine, 2002)_, Euler Society, 2003.

[5]

[6]

[7] , 23.1.30

[8]