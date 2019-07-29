In complex analysis, an ENTIRE FUNCTION, also called an INTEGRAL FUNCTION, is a complex-valued function that is holomorphic at all finite points over the whole complex plane. Typical examples of entire functions are polynomials and the exponential function, and any finite sums, products and compositions of these, such as the trigonometric functions sine and cosine and their hyperbolic counterparts sinh and cosh, as well as derivatives and integrals of entire functions such as the error function. If an entire function _f_(_z_) has a root at _w_, then _f_(_z_)/(_z−w_), taking the limit value at _w_, is an entire function. On the other hand, neither the natural logarithm nor the square root is an entire function, nor can they be continued analytically to an entire function.

A TRANSCENDENTAL ENTIRE FUNCTION is an entire function that is not a polynomial.


Properties

Every entire function _f_(_z_) can be represented as a power series

$$f(z)=\sum_{n=0}^\infty a_nz^n$$

that converges everywhere in the complex plane, hence uniformly on compact sets. The radius of convergence is infinite, which implies that

$$\lim_{n\to\infty} |a_n|^{\frac{1}{n}}=0$$

or

$$\lim_{n\to\infty} \frac{\ln|a_n|}n=-\infty.$$

Any power series satisfying this criterion will represent an entire function.

If (and only if) the coefficients of the power series are all real then the function evidently takes real values for real arguments, and the value of the function at the complex conjugate of _z_ will be the complex conjugate of the value at _z_. Such functions are sometimes called self-conjugate (the conjugate function, F^(*)(z), being given by F̄(z̄)).[1]

If the real part of an entire function is known in a neighborhood of a point then both the real and imaginary parts are known for the whole complex plane, up to an imaginary constant. For instance, if the real part is known in a neighborhood of zero, then we can find the coefficients for _n_ > 0 from the following derivatives with respect to a real variable _r_:

$$\begin{align}
\operatorname{Re}a_n &=\frac 1{n!}\frac{d^n}{dr^n}\operatorname{Re}f(r) && \text{at }r=0 \\
\operatorname{Im}a_n &=\frac 1{n!}\frac{d^n}{dr^n}\operatorname{Re}f\left (re^{-\frac{i\pi}{2n}} \right ) && \text{at }r=0
\end{align}$$

(Likewise, if the imaginary part is known in a neighborhood then the function is determined up to a real constant.) In fact, if the real part is known just on an arc of a circle, then the function is determined up to an imaginary constant. (For instance, if it the real part is known on part of the unit circle, then it is known on the whole unit circle by analytic extension, and then the coefficients of the infinite series are determined from the coefficients of the Fourier series for the real part on the unit circle.) Note however that an entire function is _NOT_ determined by its real part on all curves. In particular, if the real part is given on any curve in the complex plane where the real part of some other entire function is zero, then any multiple of that function can be added to the function we are trying to determine. For example, if the curve where the real part is known is the real line, then we can add _i_ times any self-conjugate function. If the curve forms a loop, then it is determined by the real part of the function on the loop since the only functions whose real part is zero on the curve are those that are everywhere equal to some imaginary number.

The Weierstrass factorization theorem asserts that any entire function can be represented by a product involving its zeroes (or "roots").

The entire functions on the complex plane form an integral domain (in fact a Prüfer domain). They also form a commutative unital associative algebra over the complex numbers.

Liouville's theorem states that any bounded entire function must be constant. Liouville's theorem may be used to elegantly prove the fundamental theorem of algebra.

As a consequence of Liouville's theorem, any function that is entire on the whole Riemann sphere (complex plane _and_ the point at infinity) is constant. Thus any non-constant entire function must have a singularity at the complex point at infinity, either a pole for a polynomial or an essential singularity for a transcendental entire function. Specifically, by the Casorati–Weierstrass theorem, for any transcendental entire function _f_ and any complex _w_ there is a sequence $(z_m)_{m\in\N}$ such that

lim_(_m_ → ∞)|_z__(_m_)| = ∞,  and  lim_(_m_ → ∞)_f_(_z__(_m_)) = _w_.

Picard's little theorem is a much stronger result: any non-constant entire function takes on every complex number as value, possibly with a single exception. When an exception exists, it is called a lacunary value of the function. The possibility of a lacunary value is illustrated by the exponential function, which never takes on the value 0. One can take a suitable branch of the logarithm of an entire function that never hits 0, so that this will also be an entire function (according to the Weierstrass factorization theorem). The logarithm hits every complex number except possibly one number, which implies that the first function will hit any value other than 0 an infinite number of times. Similarly, a non-constant, entire function that does not hit a particular value will hit every other value an infinite number of times.

Liouville's theorem is a special case of the following statement:

    THEOREM: Assume _M, R_ are positive constants and _n_ is a non-negative integer. An entire function _f_ satisfying the inequality |f(z)| ≤ M|z|^(n) for all _z_ with |z| ≥ R, is necessarily a polynomial, of degree at most _n_.[2] Similarly, an entire function _f_ satisfying the inequality M|z|^(n) ≤ |f(z)| for all _z_ with |z| ≥ R, is necessarily a polynomial, of degree at least _n_.


Growth

Entire functions may grow as fast as any increasing function: for any increasing function _g_: [0,∞) → [0,∞) there exists an entire function _f_ such that _f_(_x_) > _g_(|_x_|) for all real _x_. Such a function _f_ may be easily found of the form:

$$f(z)=c+\sum_{k=1}^{\infty}\left(\frac{z}{k}\right)^{n_k}$$

for a constant _c_ and a strictly increasing sequence of positive integers _n_(k)_. Any such sequence defines an entire function _f_(_z_), and if the powers are chosen appropriately we may satisfy the inequality _f_(_x_) > _g_(|_x_|) for all real _x_. (For instance, it certainly holds if one chooses _c_ := _g_(2) and, for any integer k ≥ 1 one chooses an even exponent n_(k) such that $\left(\frac{k+1}{k}\right)^{n_k}\ge g(k+2)$).


 Order and type

The ORDER (at infinity) of an entire function f(z) is defined using the limit superior as:

$$\rho=\limsup_{r\to\infty}\frac{\ln \left (\ln\| f \|_{\infty, B_r} \right ) }{\ln r},$$

where _B_(r)_ is the disk of radius _r_ and ∥f∥_(∞, B_(r)) denotes the supremum norm of f(z) on _B_(r)_. The order is a non-negative real number or infinity (except when f(z) = 0 for all _z_). In other words, the order of f(z) is the infimum of all _m_ such that:

_f_(_z_) = _O_(exp(|_z_|^(_m_))), as _z_ → ∞.

The example of f(z) = exp (2z²) shows that this does not mean _f_(_z_) = O(exp(|_z_|^(_m_))) if f(z) is of order _m_.

If 0 < ρ < ∞, one can also define the _TYPE_:

$$\sigma=\limsup_{r\to\infty}\frac{\ln  \| f\|_{\infty,B_r}} {r^\rho}.$$

If the order is 1 and the type is _σ_, the function is said to be "of exponential type _σ_". If it is of order less than 1 it is said to be of exponential type 0.

If

$$f(z)=\sum_{n=0}^\infty a_n z^n,$$

then the order and type can be found by the formulas

$$\begin{align}
\rho &=\limsup_{n\to\infty}\frac{n\ln n}{-\ln|a_n|} \\[6pt]
(e\rho\sigma)^{\frac{1}{\rho}} &= \limsup_{n\to\infty} n^{\frac{1}{\rho}} |a_n|^{\frac{1}{n}}
\end{align}$$

Let f^((n)) denote the _n_^(th) derivative of _f_, then we may restate these formulas in terms of the derivatives at any arbitrary point _z_₀:

$$\begin{align}
\rho &=\limsup_{n\to\infty}\frac{n\ln n}{n\ln n-\ln|f^{(n)}(z_0)|}=\left(1-\limsup_{n\to\infty}\frac{\ln|f^{(n)}(z_0)|}{n\ln n}\right)^{-1} \\[6pt]
(\rho\sigma)^{\frac{1}{\rho}} &=e^{1-\frac{1}{\rho}} \limsup_{n\to\infty}\frac{|f^{(n)}(z_0)|^{\frac{1}{n}}}{n^{1-\frac{1}{\rho}}}
\end{align}$$

The type may be infinite, as in the case of the reciprocal gamma function, or zero (see example below under #Order 1).

Examples

Here are some examples of functions of various orders:

Order ρ

For arbitrary positive numbers _ρ_ and _σ_ one can construct an example of an entire function of order _ρ_ and type _σ_ using:

$$f(z)=\sum_{n=1}^\infty \left (\frac{e\rho\sigma}{n} \right )^{\frac{n}{\rho}} z^n$$

Order 0

-   Non-zero polynomials
-   $\sum_{n=0}^\infty 2^{-n^2} z^n$

Order 1/4

$$f(\sqrt[4]z)$$
where

_f_(_u_) = cos (_u_) + cosh (_u_)

Order 1/3

$$f(\sqrt[3]z)$$
where

$$f(u)=e^u+e^{\omega u}+e^{\omega^2 u}=e^u+2e^{-\frac{u}{2}}\cos \left (\frac{\sqrt 3u}{2} \right ), \quad \text{with } \omega \text{ a complex cube root of 1}.$$

Order 1/2

$$\cos \left (a\sqrt z \right )$$
with _a_ ≠ 0 (for which the type is given by _σ_ = |_a_|)

Order 1

-   exp(_az_) with _a_ ≠ 0 (_σ_ = |_a_|)
-   sin(_z_)
-   cosh(_z_)
-   the Bessel function _J_₀(_z_)
-   the reciprocal gamma function 1/Γ(_z_) (_σ_ is infinite)
-   $\sum_{n=2}^\infty \frac{z^n}{(n\ln n)^n}. \quad (\sigma=0)$

Order 3/2

-   Airy function Ai(_z_)

Order 2

-   exp(−_az_²) with _a_ ≠ 0 (_σ_ = |_a_|)

Order infinity

-   exp(exp(_z_))


 Genus of an entire function

Entire functions of finite order have Hadamard's canonical representation:

$$f(z)=z^me^{P(z)}\prod_{n=1}^\infty\left(1-\frac{z}{z_n}\right)\exp\left(\frac{z}{z_n}+\cdots+\frac{1}{p}\left(\frac{z}{z_n}\right)^p\right),$$

where z_(k) are those roots of f that are not zero (z_(k) ≠ 0), P a polynomial (whose degree we shall call q), and p is the smallest non-negative integer such that the series

$$\sum_{n=1}^\infty\frac{1}{|z_n|^{p+1}}$$

converges. The non-negative integer g = max {p, q} is called the genus of the entire function f.

If the order ρ is not an integer, then g = [ρ] is the integer part of ρ. If the order is a positive integer, then there are two possibilities: g = ρ − 1 or g = ρ.

For example, sin , cos  and exp  are entire functions of genus _1_.


Other examples

According to J. E. Littlewood, the Weierstrass sigma function is a 'typical' entire function. This statement can be made precise in the theory of random entire functions: the asymptotic behavior of almost all entire functions is similar to that of the sigma function. Other examples include the Fresnel integrals, the Jacobi theta function, and the reciprocal Gamma function. The exponential function and the error function are special cases of the Mittag-Leffler function. According to the fundamental theorem of Paley and Wiener, Fourier transforms of functions (or distributions) with bounded support are entire functions of order _1_ and finite type.

Other examples are solutions of linear differential equations with polynomial coefficients. If the coefficient at the highest derivative is constant, then all solutions of such equations are entire functions. For example, the exponential function, sine, cosine, Airy functions and Parabolic cylinder functions arise in this way. The class of entire functions is closed with respect to compositions. This makes it possible to study dynamics of entire functions.

An entire function of the square root of a complex number is entire if the original function is even, for example $\cos(\sqrt{z})$.

If a sequence of polynomials all of whose roots are real converges in a neighborhood of the origin to a limit which is not identically equal to zero, then this limit is an entire function. Such entire functions form the Laguerre–Pólya class, which can also be characterized in terms of the Hadamard product, namely, _f_ belongs to this class if and only if in the Hadamard representation all _z_(n)_ are real, _p_ ≤ 1, and _P_(_z_) = _a_ + _bz_ + _cz_², where _b_ and _c_ are real, and _c_ ≤ 0. For example, the sequence of polynomials

$$\left (1-\frac{(z-d)^2}{n} \right )^n$$

converges, as _n_ increases, to exp(−(_z_−_d_)²). The polynomials

$$\frac{1}{2}\left ( \left (1+\frac{iz}{n} \right )^n+ \left (1-\frac{iz}{n} \right )^n \right )$$

have all real roots, and converge to cos(_z_). The polynomials

$$\prod_{m=1}^n \left(1-\frac{z^2}{\left ( \left (m-\frac{1}{2} \right )\pi \right )^2}\right)$$

also converge to cos(_z_), showing the buildup of the Hadamard product for cosine.


See also

-   Jensen's formula
-   Carlson's theorem
-   Exponential type
-   Paley–Wiener theorem
-   Wiman-Valiron theory


Notes


References

-   -   -

Category:Analytic functions Category:Special functions

[1] For example,

[2] The converse is also true as for any polynomial $p(z) = \sum_{k=0}^na_k z^k$ of degree _n_ the inequality $|p(z)| \le \left(\sum_{k=0}^n|a_k|\right) |z|^n$ holds for any |_z_| ≥ 1.