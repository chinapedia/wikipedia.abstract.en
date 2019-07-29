Gamma_plot.svg

In mathematics, the GAMMA FUNCTION (represented by Γ, the capital letter gamma from the Greek alphabet) is one commonly used extension of the factorial function to complex numbers. The gamma function is defined for all complex numbers except the non-positive integers, and for any positive integer n,

_Γ_(_n_) = (_n_ − 1)! .

Derived by Daniel Bernoulli, for complex numbers with a positive real part the gamma function is defined via a convergent improper integral:

_Γ_(_z_) = ∫₀^(∞)_x_^(_z_ − 1)_e_^( − _x_) _d__x_,   ℜ(_z_) > 0 .

The gamma function then is defined as the analytic continuation of this integral function to a meromorphic function that is holomorphic in the whole complex plane except the non-positive integers, where the function has simple poles.

The gamma function has no zeroes, so the reciprocal gamma function 1/Γ is a holomorphic function. In fact, the gamma function corresponds to the Mellin transform of the negative exponential function:

_Γ_(_z_) = {ℳ_e_^( − _x_)}(_z_).

Other extensions of the factorial function do exist, but the gamma function is the most popular and useful. It is a component in various probability-distribution functions, and as such it is applicable in the fields of probability and statistics, as well as combinatorics.


Motivation

Factorial_Interpolation.svg

The gamma function can be seen as a solution to the following interpolation problem:

    "Find a smooth curve that connects the points (x, y) given by y = (x − 1)! at the positive integer values for x."

A plot of the first few factorials makes clear that such a curve can be drawn, but it would be preferable to have a formula that precisely describes the curve, in which the number of operations does not depend on the size of x. The simple formula for the factorial, x! = 1 × 2 × ⋯ × x, cannot be used directly for fractional values of x since it is only valid when is a natural number (or positive integer). There are, relatively speaking, no such simple solutions for factorials; no finite combination of sums, products, powers, exponential functions, or logarithms will suffice to express x!; but it is possible to find a general formula for factorials using tools such as integrals and limits from calculus. A good solution to this is the gamma function.[1]

There are infinitely many continuous extensions of the factorial to non-integers: infinitely many curves can be drawn through any set of isolated points. The gamma function is the most useful solution in practice, being analytic (except at the non-positive integers), and it can be characterizedcharacterized{{''}}?|date=September 2018}} in several ways. However, it is not the only analytic function which extends the factorial, as adding to it any analytic function which is zero on the positive integers, such as , will give another function with that property.[2]

Gamma_plus_sin_pi_z.png

A more restrictive property than satisfying the above interpolation is to satisfy the recurrence relation defining a translated version of the factorial function,

_f_(1) = 1,

_f_(_x_ + 1) = _x__f_(_x_),

for equal to any positive real number. But this would allow for multiplication by any periodic analytic function which evaluates to one on the positive integers, such as . There's a final way to solve all this ambiguity: Bohr–Mollerup theorem states that when the condition that be logarithmically convex (or "super-convex"[3]) is added, it uniquely determines for positive, real inputs. From there, the gamma function can be extended to all real and complex values (except the negative integers and zero) by using the unique analytic continuation of .[4]


Definition

Main definition

The notation Γ(z) is due to Legendre.[5] If the real part of the complex number  is positive (ℜ(z) > 0), then the integral

_Γ_(_z_) = ∫₀^(∞)_x_^(_z_ − 1)_e_^( − _x_) _d__x_

converges absolutely, and is known as the EULER INTEGRAL OF THE SECOND KIND. (Euler's integral of the first kind is the beta function).[6] Using integration by parts, one sees that:

$$\begin{align}
   \Gamma(z+1) & = \int_0^\infty x^{z} e^{-x} \, dx \\[4pt]
   & = \Big[-x^z e^{-x}\Big]_0^\infty + \int_0^\infty z x^{z-1} e^{-x}\, dx \\[4pt]
   & = \lim_{x\to \infty}(-x^z e^{-x}) - (0 e^{-0}) + z\int_0^\infty x^{z-1} e^{-x}\, dx.
 \end{align}$$
Recognizing that  − x^(z)e^( − x) → 0 as x → ∞,

$$\begin{align}
   \Gamma(z+1) & = z\int_0^\infty x^{z-1} e^{-x}\, dx \\[6pt]
   & = z\Gamma(z).
 \end{align}$$

We can calculate Γ(1):

$$\begin{align}
   \Gamma(1) & = \int_0^\infty x^{1-1} e^{-x}\,dx \\[6pt]
   & = \Big[-e^{-x}\Big]_0^\infty \\[6pt]
   & = \lim_{x\to \infty}(-e^{-x}) - (-e^{-0}) \\[6pt]
   & = 0 - (-1) \\[6pt]
   & = 1.
 \end{align}$$

Given that Γ(1) = 1 and Γ(n + 1) = nΓ(n),

_Γ_(_n_) = 1 ⋅ 2 ⋅ 3⋯(_n_ − 1) = (_n_ − 1)!
for all positive integers . This can be seen as an example of proof by induction.

The identity $\Gamma(z) = \frac {\Gamma(z + 1)} {z}$ can be used (or, yielding the same result, analytic continuation can be used) to uniquely extend the integral formulation for Γ(z) to a meromorphic function defined for all complex numbers , except integers less than or equal to zero.[7] It is this extended version that is commonly referred to as the gamma function.[8]

Alternative definitions

Euler's definition as an infinite product

When seeking to approximate z! for a complex number z, it is effective to first compute n! for some large integer n. Use that to approximate a value for (n + z)!, and then use the recursion relation m! = m(m − 1)! backwards n times, to unwind it to an approximation for z!. Furthermore, this approximation is exact in the limit as n goes to infinity.

Specifically, for a fixed integer m, it is the case that

$$\lim_{n \to \infty} \frac{n! \; (n+1)^m}{(n+m)!} = 1\,.$$

If m is not an integer then it is not possible to say whether this equation is true because we have not yet (in this section) defined the factorial function for non-integers. However, we do get a unique extension of the factorial function to the non-integers by insisting that this equation continue to hold when the arbitrary integer m is replaced by an arbitrary complex number z.

$$\lim_{n \to \infty} \frac{n! \; (n+1)^z}{(n+z)!} = 1\,.$$
Multiplying both sides by z! gives

$$\begin{align}
   z! &= \lim_{n \to \infty} n!\frac{z!}{(n+z)!} (n+1)^z \\[8pt]
      &= \lim_{n \to \infty} (1 \cdots n)\frac{1}{(1+z) \cdots (n+z)} \left[\left(1+\frac11\right)\left(1+\frac12\right)\cdots \left(1+\frac1n\right)\right]^z \\[8pt]
      &= \prod_{n=1}^\infty \left[ \frac{1}{1+\frac{z}{n}} \left(1 + \frac{1}{n}\right)^z \right].
\end{align}$$
This infinite product converges for all complex numbers z except the negative integers, which fail because trying to use the recursion relation m! = m(m − 1)! backwards through the value m = 0 involves a division by zero.

Similarly for the gamma function, the definition as an infinite product due to Euler is valid for all complex numbers z except the non-positive integers:

$$\Gamma(z) = \frac{1}{z} \prod_{n=1}^{\infty} \frac{\left(1 + \frac{1}{n}\right)^z}{1+\frac{z}{n}} \,.$$
By this construction, the gamma function is the unique function that simultaneously satisfies Γ(1) = 1, Γ(z + 1) = zΓ(z) for all complex numbers z except the non-positive integers, and $\lim_{n \to \infty} \frac{\Gamma(n+z)}{\Gamma(n)\;n^z} = 1$ for all complex numbers z.[9]

Weierstrass's definition

The definition for the gamma function due to Weierstrass is also valid for all complex numbers  except the non-positive integers:

$$\Gamma(z) = \frac{e^{-\gamma z}} z \prod_{n=1}^\infty \left(1 + \frac z n \right)^{-1} e^{z/n},$$
where γ ≈ 0.577216 is the Euler–Mascheroni constant.[10]

In terms of generalized Laguerre polynomials

A representation of the incomplete gamma function in terms of generalized Laguerre polynomials is

$$\Gamma(z,x)=x^z e^{-x} \sum_{n=0}^\infty \frac{L_n ^{(z)}(x)}{n+1},$$
which converges for ℜ(z) >  − 1 and x > 0.[11]

A somewhat unusual representation of the gamma function in terms of Laguerre polynomials is given by

$$\Gamma(z)=t^z \sum_{n=0}^{\infty} \frac{L_n^{(z)}(t)}{z+n},$$
which converges for $\Re(z) > \frac{1}{2}$.  


Properties

General

Other important functional equations for the gamma function are Euler's reflection formula

$$\Gamma(1-z) \Gamma(z) = {\pi \over \sin (\pi z)}, \qquad z \not\in \mathbb Z$$

which implies

$$\Gamma(\varepsilon - n) = (-1)^{n-1} \; \frac{\Gamma(-\varepsilon) \Gamma(1+\varepsilon)}{\Gamma(n+1-\varepsilon)},$$

and the Legendre duplication formula

$$\Gamma(z) \Gamma\left(z + \tfrac12\right) = 2^{1-2z} \; \sqrt{\pi} \; \Gamma(2z).$$

Since $e^{-t}=\lim_{n\to \infty} \left(1-\frac{t}{n}\right)^n,$

the gamma function can be represented as

    $\Gamma (z)=\lim_{n\to \infty}\int_0^n t^{z-1}\left(1-\frac{t}{n}\right)^n \, dt.$

Integrating by parts n − 1 times yields

    $\Gamma (z)=\lim_{n\to \infty} \frac{n}{nz} \cdot \frac{n-1}{n(z+1)} \cdot \frac{n-2}{n(z+2)} \cdots \frac{1}{n(z+n-1)} \int_0^n t^{z+n-1} \, dt,$

which is equal to

    $\Gamma (z)=\lim_{n\to \infty}\frac{n!}{n^n}\prod_{k=0}^n (z+k)^{-1} n^{z+n}.$

This can be rewritten as

    $\Gamma (z)=\lim_{n\to \infty} \frac{n^{z}}{z}\prod_{k=1}^n \frac{k}{z+k}=\lim_{n\to \infty} \frac{n^z}{z} \prod_{k=1}^n \frac{1}{1+\frac{z}{k}}.$

Then, using the functional equation of the gamma function, we get

    $-z\Gamma (-z)\Gamma (z)=\Gamma (1-z)\Gamma (z)=\lim_{n\to \infty}\frac{1}{z}\prod_{k=1}^n \frac{1}{1-\frac{z^2}{k^2}}.$

It can be proved that

    $\sin (\pi z)=\pi z\prod_{k=1}^\infty \left(1-\frac{z^2}{k^2}\right).$

Then

    $\frac{\pi}{\sin (\pi z)}=\lim_{n\to \infty} \frac{1}{z} \prod_{k=1}^n \frac{1}{1-\frac{z^2}{k^2}}.$

Euler's reflection formula follows:

    $\Gamma (1-z)\Gamma (z)=\frac{\pi}{\sin (\pi z)},\qquad z \not \in \mathbb Z.$

The beta function can be represented as

    $\Beta (z_1,z_2)=\frac{\Gamma (z_1)\Gamma (z_2)}{\Gamma (z_1+z_2)}=\int_0^1 t^{z_1-1}(1-t)^{z_2-1} \, dt.$

Setting z₁ = z₂ = z yields

    $\frac{\Gamma^2(z)}{\Gamma (2z)}=\int_0^1 t^{z-1}(1-t)^{z-1} \, dt.$

After the substitution $t=\frac{1+x}{2}$ we get

    $\frac{\Gamma^2(z)}{\Gamma (2z)}=\frac{1}{2^{2z-1}}\int_{-1}^1 \left(1-x^{2}\right)^{z-1} \, dx.$

The function (1 − x²)^(z − 1) is even, hence

    2^(2z − 1)Γ²(z) = 2Γ(2z)∫₀¹(1 − x²)^(z − 1) dx.

Now assume

    $\Beta \left(\frac{1}{2},z\right)=\int_0^1 t^{\frac{1}{2}-1}(1-t)^{z-1} \, dt, \quad t=s^2.$

Then

    $\Beta \left(\frac{1}{2},z\right)=2\int_0^1 (1-s^2)^{z-1} \, ds = 2\int_0^1 (1-x^2)^{z-1} \, dx.$

This implies

    $2^{2z-1}\Gamma^2(z)=\Gamma (2z)\Beta \left(\frac{1}{2},z\right).$

Since

    $\Beta \left(\frac{1}{2},z\right)=\frac{\Gamma \left(\frac{1}{2}\right)\Gamma (z)}{\Gamma \left(z+\frac{1}{2}\right)}, \quad \Gamma \left(\frac{1}{2}\right)=\sqrt{\pi},$

the Legendre duplication formula follows:

    $\Gamma (z)\Gamma \left(z+\frac{1}{2}\right)=2^{1-2z}\sqrt{\pi} \; \Gamma (2z).$

The duplication formula is a special case of the multiplication theorem (See[12], Eq. 5.5.6)

$$\prod_{k=0}^{m-1}\Gamma\left(z + \frac{k}{m}\right) = (2 \pi)^{\frac{m-1}{2}} \; m^{\frac12 - mz} \; \Gamma(mz).$$

A simple but useful property, which can be seen from the limit definition, is:

$$\overline{\Gamma(z)} = \Gamma(\overline{z}) \; \Rightarrow \; \Gamma(z)\Gamma(\overline{z}) \in \mathbb{R} .$$

In particular, with _a_ + _bi_}}, this product is

$$\begin{align}
|\Gamma(a+bi)|^2 & = |\Gamma(a)|^2 \prod_{k=0}^\infty \frac{1}{1+\frac{b^2}{(a+k)^2}} \\[4pt]
|\Gamma(bi)|^2 & = \frac{\pi}{b\sinh (\pi b)} \\[6pt]
|\Gamma\left(\tfrac{1}{2}+bi\right)|^2 & = \frac{\pi}{\cosh (\pi b)}.
\end{align}$$

Perhaps the best-known value of the gamma function at a non-integer argument is

$$\Gamma\left(\tfrac12\right)=\sqrt{\pi},$$

which can be found by setting $z = \frac{1}{2}$ in the reflection or duplication formulas, by using the relation to the beta function given below with $x = y = \frac{1}{2}$, or simply by making the substitution $u = \sqrt{x}$ in the integral definition of the gamma function, resulting in a Gaussian integral. In general, for non-negative integer values of n we have:

$$\begin{align}
\Gamma\left(\tfrac12+n\right) &= {(2n)! \over 4^n n!} \sqrt{\pi} = \frac{(2n-1)!!}{2^n} \sqrt{\pi} = {n-\frac12 \choose n} n! \sqrt{\pi} \\[8pt]
\Gamma\left(\tfrac12-n\right) &= {(-4)^n n! \over (2n)!} \sqrt{\pi} = \frac{(-2)^n}{(2n-1)!!} \sqrt{\pi} = \frac{\sqrt{\pi}}{{-\frac12 \choose n} n!}
\end{align}$$

where n!! denotes the double factorial of _n_ and, when n = 0, n!! = 1. See Particular values of the gamma function for calculated values.

It might be tempting to generalize the result that $\Gamma \left( \frac{1}{2} \right) = \sqrt\pi$ by looking for a formula for other individual values Γ(r) where r is rational. However, these numbers are not known to be expressible by themselves in terms of elementary functions. It has been proved that Γ(n + r) is a transcendental number and algebraically independent of π for any integer n and each of the fractions $r = \frac{1}{6}, \frac{1}{4}, \frac{1}{3}, \frac{2}{3}, \frac{3}{4}, \frac{5}{6}$.[13] In general, when computing values of the gamma function, we must settle for numerical approximations.

Another useful limit for asymptotic approximations is:

$$\lim_{n\to\infty} \frac{\Gamma(n+\alpha)}{\Gamma(n)n^\alpha} = 1, \qquad \alpha \in \mathbb{C}.$$

The derivatives of the gamma function are described in terms of the polygamma function. For example:

_Γ_′(_z_) = _Γ_(_z_)_ψ_₀(_z_).

For a positive integer  the derivative of the gamma function can be calculated as follows (here γ is the Euler–Mascheroni constant):

$$\Gamma'(m+1) = m! \left( - \gamma + \sum_{k=1}^m\frac{1}{k} \right)\,.$$

For ℜ(x) > 0 the nth derivative of the gamma function is: DerivGamma.png

$$\frac{d^n}{dx^n}\Gamma(x) = \int_0^\infty t^{x-1} e^{-t} (\ln t)^n \, dt.$$

(This can be derived by differentiating the integral form of the gamma function with respect to x, and using the technique of differentiation under the integral sign.)

Using the identity

$$\Gamma^{(n)}(1)=(-1)^n n!\sum\limits_{\pi\,\vdash \, n}\,\prod_{i=1}^r\frac{\zeta^*(a_i)}{k_i!\cdot a_i} \qquad \zeta^*(x):=\begin{cases}\zeta(x)&x\ne1\\ \gamma&x=1\end{cases}$$

where ζ(z) is the Riemann zeta function, with partitions

$$\pi=(\underbrace{a_1,\dots,a_1}_{k_1},\dots,\underbrace{a_r,\dots,a_r}_{k_r}),$$

we have in particular

$$\Gamma(z) = \frac1z - \gamma + \tfrac12\left(\gamma^2 + \frac {\pi^2}6\right)z - \tfrac16\left(\gamma^3 + \frac {\gamma\pi^2}2 + 2 \zeta(3)\right)z^2 + O(z^3).$$

If a, b ∈ ℕ and a ≥ 2 and b ≥ 1 then:

    $\Gamma(a + bi) \Gamma(a - bi) = b (b^2+1) \cdot \pi \operatorname{csch}(b\pi) \prod_{n=2}^{a-1} (b^2+n^2).$

Inequalities

When restricted to the positive real numbers, the gamma function is a strictly logarithmically convex function. This property may be stated in any of the following three equivalent ways:

-   For any two positive real numbers x₁ and x₂, and for any t ∈ [0, 1],

_Γ_(_t__x_₁ + (1 − _t_)_x_₂) ≤ _Γ_(_x_₁)^(_t_)_Γ_(_x_₂)^(1 − _t_).
Moreover, the inequality is strict for t ∈ (0, 1).

-   For any two positive real numbers and with ,

$$\left(\frac{\Gamma(y)}{\Gamma(x)}\right)^{\frac{1}{y - x}} > \exp\left(\frac{\Gamma'(x)}{\Gamma(x)}\right).$$

-   For any positive real number x,

_Γ_″(_x_)_Γ_(_x_) > _Γ_′(_x_).
The last of these statements is, essentially by definition, the same as the statement that ψ⁽¹⁾(x) > 0, where ψ⁽¹⁾ is the polygamma function of order 1. To prove the logarithmic convexity of the gamma function, it therefore suffices to observe that ψ⁽¹⁾ has a series representation which, for positive real , consists of only positive terms.

Logarithmic convexity and Jensen's inequality together imply, for any positive real numbers x₁, …, x_(n) and a₁, …, a_(n),

$$\Gamma\left(\frac{a_1x_1 + \cdots + a_nx_n}{a_1 + \cdots + a_n}\right) \le \bigl(\Gamma(x_1)^{a_1} \cdots \Gamma(x_n)^{a_n}\bigr)^{\frac{1}{a_1 + \cdots + a_n}}.$$

There are also bounds on ratios of gamma functions. The best-known is Gautschi's inequality, which says that for any positive real number and any ,

$$x^{1 - s} < \frac{\Gamma(x + 1)}{\Gamma(x + s)} < (x + 1)^{1 - s}.$$

Stirling's formula

Gamma1.png

Gamma_abs_3D.png The behavior of Γ(z) for an increasing positive variable is simple. It grows quickly, faster than an exponential function in fact. Asymptotically as z → ∞, the magnitude of the gamma function is given by Stirling's formula

$$\Gamma(z+1)\sim\sqrt{2\pi z}\left(\frac{z}{e}\right)^z,$$
where the symbol ∼ implies asymptotic convergence. In other words, the ratio of the two sides converges to 1 as z →  + ∞. [14]

Residues

The behavior for non-positive z is more intricate. Euler's integral does not converge for z ≤ 0, but the function it defines in the positive complex half-plane has a unique analytic continuation to the negative half-plane. One way to find that analytic continuation is to use Euler's integral for positive arguments and extend the domain to negative numbers by repeated application of the recurrence formula,[15]

$$\Gamma(z)=\frac{\Gamma(z+n+1)}{z(z+1)\cdots(z+n)},$$
choosing n such that z + n is positive. The product in the denominator is zero when z equals any of the integers 0,  − 1,  − 2, ⋯. Thus, the gamma function must be undefined at those points to avoid division by zero; it is a meromorphic function with simple poles at the non-positive integers.[16]

For a function f of a complex variable z, at a simple pole c, the residue of f is given by:

Res (_f_, _c_) = lim_(_z_ → _c_)(_z_ − _c_)_f_(_z_).

For the simple pole z =  − n, we rewrite recurrence formula as:

$$(z+n) \Gamma(z)=\frac{\Gamma(z+n+1)}{z(z+1)\cdots(z+n-1)}.$$
The numerator at z =  − n, is

_Γ_(_z_ + _n_ + 1) = _Γ_(1) = 1
and the denominator

_z_(_z_ + 1)⋯(_z_ + _n_ − 1) = ( − 1)^(_n_)_n_!.
So the residues of the gamma function at those points are:

$$\operatorname{Res}(\Gamma,-n)=\frac{(-1)^n}{n!}.$$
[17]

The gamma function is non-zero everywhere along the real line, although it comes arbitrarily close to zero as . There is in fact no complex number z for which Γ(z) = 0, and hence the reciprocal gamma function $\frac {1}{\Gamma (z)}$ is an entire function, with zeros at z = 0,  − 1,  − 2, ⋯.[18]

Minima

The gamma function has a local minimum at z_(min) ≈ 1.46163 where it attains the value Γ(z_(min)) ≈ 0.885603. The gamma function must alternate sign between the poles because the product in the forward recurrence contains an odd number of negative factors if the number of poles between z and z + n is odd, and an even number if the number of poles is even.[19]

Integral representations

There are many formulas, besides the Euler integral of the second kind, that express the gamma function as an integral. For instance, when the real part of is positive,[20]

$$\Gamma(z) = \int_0^1 \left(\log \frac{1}{t}\right)^{z-1}\,dt.$$

Binet's first integral formula for the gamma function states that, when the real part of is positive, then:[21]

$$\log \Gamma(z) = \left(z - \frac{1}{2}\right)\log z - z + \frac{1}{2}\log(2\pi) + \int_0^\infty \left(\frac{1}{2} - \frac{1}{t} + \frac{1}{e^t - 1}\right)\frac{e^{-tz}}{t}\,dt.$$
The integral on the right-hand side may be interpreted as a Laplace transform. That is,

$$\log\left(\Gamma(z)\left(\frac{e}{z}\right)^z\sqrt{2\pi z}\right) = \mathcal{L}\left(\frac{1}{2t} - \frac{1}{t^2} + \frac{1}{t(e^t - 1)}\right)(z).$$

Binet's second integral formula states that, again when the real part of is positive, then:[22]

$$\log \Gamma(z) = \left(z - \frac{1}{2}\right)\log z - z + \frac{1}{2}\log(2\pi) + 2\int_0^\infty \frac{\arctan(t/z)}{e^{2\pi t} - 1}\,dt.$$

Let be a Hankel contour, meaning a path that begins and ends at the point on the Riemann sphere, whose unit tangent vector converges to at the start of the path and to at the end, which has winding number 1 around , and which does not cross . Fix a branch of log ( − t) by taking a branch cut along and by taking log ( − t) to be real when is on the negative real axis. Assume is not an integer. Then Hankel's formula for the gamma function is:[23]

$$\Gamma(z) = -\frac{1}{2i\sin \pi z}\int_C (-t)^{z-1}e^{-t}\,dt,$$
where ( − t)^(z − 1) is interpreted as exp ((z − 1)log ( − t)). The reflection formula leads to the closely related expression

$$\frac{1}{\Gamma(z)} = \frac{i}{2\pi}\int_C (-t)^{-z}e^{-t}\,dt,$$
again valid whenever is not an integer.

Fourier series expansion

The logarithm of the gamma function has the following Fourier series expansion for 0 < z < 1:

$$\ln\Gamma(z) = \left(\frac{1}{2} - z\right)(\gamma + \ln 2) + (1 - z)\ln\pi - \frac{1}{2}\ln\sin(\pi z) + \frac{1}{\pi}\sum_{n=1}^\infty \frac{\ln n}{n}\sin (2\pi n z),$$

which was for a long time attributed to Ernst Kummer, who derived it in 1847.[24][25] However, Iaroslav Blagouchine discovered that Carl Johan Malmsten first derived this series in 1842.[26][27]

Raabe's formula

In 1840 Joseph Ludwig Raabe proved that

$$\int_a^{a+1}\ln\Gamma(z)\, dz = \tfrac12\ln2\pi + a\ln a - a,\quad a>0.$$
In particular, if a = 0 then

$$\int_0^1\ln\Gamma(z)\, dz = \tfrac12\ln2\pi.$$

The latter can be derived taking the logarithm in the above multiplication formula, which gives an expression for the Riemann sum of the integrand. Taking the limit for m → ∞ gives the formula.

Pi function

An alternative notation which was originally introduced by Gauss and which was sometimes used is the Π-function, which in terms of the gamma function is

_Π_(_z_) = _Γ_(_z_ + 1) = _z__Γ_(_z_) = ∫₀^(∞)_e_^( − _t_)_t_^(_z_) _d__t_,

so that Π(n) = n! for every non-negative integer n.

Using the pi function the reflection formula takes on the form

$$\Pi(z) \Pi(-z) = \frac{\pi z}{\sin( \pi z)} = \frac{1}{\operatorname{sinc}(z)}$$

where is the normalized sinc function, while the multiplication theorem takes on the form

$$\Pi\left(\frac{z}{m}\right) \, \Pi\left(\frac{z-1}{m}\right) \cdots \Pi\left(\frac{z-m+1}{m}\right) = (2 \pi)^{\frac{m-1}{2}} m^{-z-\frac12} \Pi(z).$$

We also sometimes find

$$\pi(z) = \frac{1}{\Pi(z)},$$

which is an entire function, defined for every complex number, just like the reciprocal gamma function. That π(z) is entire entails it has no poles, so Π(z), like Γ(z), has no zeros.

The [[volume_of_an_n-ball|volume of an }{\Pi\left(\frac{n}{2} \right)} \prod_{k=1}^n r_k.

Relation to other functions

-   In the first integral above, which defines the gamma function, the limits of integration are fixed. The upper and lower incomplete gamma functions are the functions obtained by allowing the lower or upper (respectively) limit of integration to vary.
-   The gamma function is related to the beta function by the formula



        $\Beta(x,y) = \int_0^1 t^{x-1}(1-t)^{y-1}\,dt = \frac{\Gamma(x)\,\Gamma(y)}{\Gamma(x+y)}.$

-   The logarithmic derivative of the gamma function is called the digamma function; higher derivatives are the polygamma functions.
-   The analog of the gamma function over a finite field or a finite ring is the Gaussian sums, a type of exponential sum.
-   The reciprocal gamma function is an entire function and has been studied as a specific topic.
-   The gamma function also shows up in an important relation with the Riemann zeta function, ζ(z).

$$\pi^{-\frac{z}{2}} \; \Gamma\left(\frac{z}{2}\right) \zeta(z) = \pi^{-\frac{1-z}{2}} \; \Gamma\left(\frac{1-z}{2}\right) \; \zeta(1-z).$$

    It also appears in the following formula:
    $$\zeta(z) \Gamma(z) = \int_0^\infty \frac{u^{z}}{e^u - 1} \, \frac{du}{u},$$

    which is valid only for ℜ(z) > 1.
    The logarithm of the gamma function satisfies the following formula due to Lerch:
    log _Γ_(_x_) = _ζ__(_H_)′(0, _x_) − _ζ_′(0),

    where ζ_(H) is the Hurwitz zeta function, ζ is the Riemann zeta function and the prime () denotes differentiation in the first variable.

-   The gamma function is related to the stretched exponential function. For instance, the moments of that function are



        $\langle\tau^n\rangle \equiv \int_0^\infty dt\, t^{n-1}\, e^{ - \left( \frac{t}{\tau} \right)^\beta} = \frac{\tau^n}{\beta}\Gamma \left({n \over \beta }\right).$

Particular values

Some particular values of the gamma function are:

$$\begin{array}{rcccl}
\Gamma\left(-\tfrac{3}{2}\right) &=& \tfrac{4}{3} \sqrt{\pi} &\approx& 2.363\,271\,801\,207 \\
\Gamma\left(-\tfrac{1}{2}\right) &=& -2\sqrt{\pi} &\approx& -3.544\,907\,701\,811 \\
\Gamma\left(\tfrac{1}{2}\right) &=& \sqrt{\pi} &\approx& 1.772\,453\,850\,906 \\
\Gamma(1) &=& 0! &=& 1 \\
\Gamma\left(\tfrac{3}{2}\right) &=& \tfrac{1}{2}\sqrt{\pi} &\approx& 0.886\,226\,925\,453 \\
\Gamma(2) &=& 1! &=& 1 \\
\Gamma\left(\tfrac{5}{2}\right) &=& \tfrac{3}{4}\sqrt{\pi} &\approx& 1.329\,340\,388\,179 \\
\Gamma(3) &=& 2! &=& 2 \\
\Gamma\left(\tfrac{7}{2}\right) &=& \tfrac{15}{8}\sqrt{\pi} &\approx& 3.323\,350\,970\,448 \\
\Gamma(4) &=& 3! &=& 6
\end{array}$$
The complex-valued gamma function is undefined for non-positive integers, but in these cases the value can be defined in the Riemann sphere as . The reciprocal gamma function is well defined and analytic at these values (and in the entire complex plane):

$$\frac{1}{\Gamma(-3)} = \frac{1}{\Gamma(-2)} = \frac{1}{\Gamma(-1)} = \frac{1}{\Gamma(0)} = 0.$$


The log-gamma function

LogGamma_Analytic_Function.png

Because the gamma and factorial functions grow so rapidly for moderately large arguments, many computing environments include a function that returns the natural logarithm of the gamma function (often given the name lgamma or lngamma in programming environments or gammaln in spreadsheets); this grows much more slowly, and for combinatorial calculations allows adding and subtracting logs instead of multiplying and dividing very large values. It is often defined as[28]

$$\ln \Gamma ( z ) = - \gamma z - \ln z + \sum _ { k = 1 } ^ { \infty } \left[ \frac { z } { k } - \ln \left( 1 + \frac { z } { k } \right) \right].$$

The digamma function, which is the derivative of this function, is also commonly seen. In the context of technical and physical applications, e.g. with wave propagation, the functional equation

ln _Γ_(_z_) = ln _Γ_(_z_ + 1) − ln _z_

is often used since it allows one to determine function values in one strip of width 1 in from the neighbouring strip. In particular, starting with a good approximation for a  with large real part one may go step by step down to the desired . Following an indication of Carl Friedrich Gauss, Rocktaeschel (1922) proposed for ln (Γ(z)) an approximation for large :

$$\ln \Gamma(z) \approx (z - \tfrac{1}{2}) \ln z - z + \tfrac{1}{2}\ln(2\pi).$$

This can be used to accurately approximate for with a smaller via (P.E.Böhmer, 1939)

$$\ln\Gamma(z-m) = \ln\Gamma(z) - \sum_{k=1}^{m} \ln(z-k).$$

A more accurate approximation can be obtained by using more terms from the asymptotic expansions of and , which are based on Stirling's approximation.

$$\Gamma(z)\sim z^{z - \frac12} e^{-z} \sqrt{2\pi} \left( 1 + \frac{1}{12z} + \frac{1}{288z^2} - \frac{139}{51\,840 z^3} - \frac{571}{2\,488\,320 z^4}
        \right)$$

    as at constant .

In a more "natural" presentation:

$$\ln \Gamma(z) \sim z \ln (z) - z - \tfrac12 \ln \left (\frac{z}{2\pi} \right ) + \frac{1}{12z} - \frac{1}{360z^3} +\frac{1}{1260 z^5}$$

    as at constant .

The coefficients of the terms with of in the last expansion are simply

$$\frac{B_k}{k(k-1)}$$
where the are the Bernoulli numbers.

Properties

The Bohr–Mollerup theorem states that among all functions extending the factorial functions to the positive real numbers, only the gamma function is log-convex, that is, its natural logarithm is convex on the positive real axis.

In a certain sense, the function is the more natural form; it makes some intrinsic attributes of the function clearer. A striking example is the Taylor series of around 1:

$$\ln \Gamma(1+z)= -\gamma z +\sum_{k=2}^\infty \frac{\zeta(k)}{k} \, (-z)^k \qquad \forall\; |z| < 1$$

with denoting the Riemann zeta function at .

So, using the following property:

$$\zeta(s) \Gamma(s) = \int_0^\infty \frac{t^s}{e^t-1} \, \frac{dt}{t}$$
we can find an integral representation for the function:

$$\ln \Gamma(1+z)= -\gamma z + \int_0^\infty \frac{e^{-zt}-1+zt}{t(e^t -1)} \, dt$$

or, setting 1}} and calculating :

$$\ln \Gamma(1+z)= \int_0^\infty \frac{e^{-zt}-ze^{-t}-1+z}{t(e^t -1)} \, dt.$$

There also exist special formulas for the logarithm of the gamma function for rational . For instance, if k and n are integers with k < n and k ≠ n/2, then



\begin{align} \ln\Gamma \biggl(\!\frac{k}{n}\!\biggr) = {} & \frac{(n-2k)\ln2\pi}{2n} + \frac{1}{2}\left\{\ln\pi-\ln\sin\frac{\pi k}{n} \right\} + \frac{1}{\pi}\!\sum_{r=1}^{n-1}\frac{\gamma+\ln r}{r}\cdot\sin\frac{2\pi r k}{n} \\ & {} - \frac{1}{2\pi}\sin\frac{2\pi k}{n}\cdot\!\int_0^\infty \!\!\frac{\,e^{-nx}\!\cdot\ln x\,}{\,\cosh x -\cos\dfrac{2\pi k}{n}\,}\,dx \end{align}

see.[29] This formula is sometimes used for numerical computation, since the integrand decreases very quickly.

Integration over log-gamma

The integral

∫₀^(_z_)ln _Γ_(_x_) _d__x_

can be expressed in terms of the [[Barnes_G-function|Barnes .

The fact that the integration is performed along the entire positive real line might signify that the gamma function describes the cumulation of a time-dependent process that continues indefinitely, or the value might be the total of a distribution in an infinite space.

It is of course frequently useful to take limits of integration other than 0 and to describe the cumulation of a finite process, in which case the ordinary gamma function is no longer a solution; the solution is then called an incomplete gamma function. (The ordinary gamma function, obtained by integrating across the entire positive real line, is sometimes called the _complete gamma function_ for contrast.)

An important category of exponentially decaying functions is that of Gaussian functions

$$ae^{-\frac{(x-b)^2}{c^2}}$$
and integrals thereof, such as the error function. There are many interrelations between these functions and the gamma function; notably, the factor $\sqrt{\pi}$ obtained by evaluating $\Gamma \left( \frac{1}{2} \right)$ is the "same" as that found in the normalizing factor of the error function and the normal distribution.

The integrals we have discussed so far involve transcendental functions, but the gamma function also arises from integrals of purely algebraic functions. In particular, the arc lengths of ellipses and of the lemniscate, which are curves defined by algebraic equations, are given by elliptic integrals that in special cases can be evaluated in terms of the gamma function. The gamma function can also be used to calculate "volume" and "area" of -dimensional hyperspheres.

Calculating products

The gamma function's ability to generalize factorial products immediately leads to applications in many areas of mathematics; in combinatorics, and by extension in areas such as probability theory and the calculation of power series. Many expressions involving products of successive integers can be written as some combination of factorials, the most important example perhaps being that of the binomial coefficient

    $\binom n k = \frac{n!}{k!(n-k)!}.$

The example of binomial coefficients motivates why the properties of the gamma function when extended to negative numbers are natural. A binomial coefficient gives the number of ways to choose elements from a set of elements; if , there are of course no ways. If , is the factorial of a negative integer and hence infinite if we use the gamma function definition of factorials—dividing by infinity gives the expected value of 0.

We can replace the factorial by a gamma function to extend any such formula to the complex numbers. Generally, this works for any product wherein each factor is a rational function of the index variable, by factoring the rational function into linear expressions. If and are monic polynomials of degree and with respective roots and , we have

$$\prod_{i=a}^b \frac{P(i)}{Q(i)} = \left( \prod_{j=1}^m \frac{\Gamma(b-p_j+1)}{\Gamma(a-p_j)} \right) \left( \prod_{k=1}^n \frac{\Gamma(a-q_k)}{\Gamma(b-q_k+1)} \right).$$

If we have a way to calculate the gamma function numerically, it is a breeze to calculate numerical values of such products. The number of gamma functions in the right-hand side depends only on the degree of the polynomials, so it does not matter whether equals 5 or 10⁵. By taking the appropriate limits, the equation can also be made to hold even when the left-hand product contains zeros or poles.

By taking limits, certain rational products with infinitely many factors can be evaluated in terms of the gamma function as well. Due to the Weierstrass factorization theorem, analytic functions can be written as infinite products, and these can sometimes be represented as finite products or quotients of the gamma function. We have already seen one striking example: the reflection formula essentially represents the sine function as the product of two gamma functions. Starting from this formula, the exponential function as well as all the trigonometric and hyperbolic functions can be expressed in terms of the gamma function.

More functions yet, including the hypergeometric function and special cases thereof, can be represented by means of complex contour integrals of products and quotients of the gamma function, called Mellin–Barnes integrals.

Analytic number theory

An elegant and deep application of the gamma function is in the study of the Riemann zeta function. A fundamental property of the Riemann zeta function is its functional equation:

$$\Gamma\left(\frac{s}{2}\right)\zeta(s)\pi^{-\frac{s}{2}} = \Gamma\left(\frac{1-s}{2}\right)\zeta(1-s)\pi^{-\frac{1-s}{2}}.$$

Among other things, this provides an explicit form for the analytic continuation of the zeta function to a meromorphic function in the complex plane and leads to an immediate proof that the zeta function has infinitely many so-called "trivial" zeros on the real line. Borwein _et al_. call this formula "one of the most beautiful findings in mathematics".[30] Another champion for that title might be

$$\zeta(s) \; \Gamma(s) = \int_0^\infty \frac{t^s}{e^t-1} \, \frac{dt}{t}.$$

Both formulas were derived by Bernhard Riemann in his seminal 1859 paper "_Über die Anzahl der Primzahlen unter einer gegebenen Größe_" ("On the Number of Prime Numbers less than a Given Quantity"), one of the milestones in the development of analytic number theory—the branch of mathematics that studies prime numbers using the tools of mathematical analysis. Factorial numbers, considered as discrete objects, are an important concept in classical number theory because they contain many prime factors, but Riemann found a use for their continuous extension that arguably turned out to be even more important.


History

The gamma function has caught the interest of some of the most prominent mathematicians of all time. Its history, notably documented by Philip J. Davis in an article that won him the 1963 Chauvenet Prize, reflects many of the major developments within mathematics since the 18th century. In the words of Davis, "each generation has found something of interest to say about the gamma function. Perhaps the next generation will also."[31]

18th century: Euler and Stirling

DanielBernoulliLettreAGoldbach-1729-10-06.jpg's letter to Christian Goldbach, October 6, 1729]]

The problem of extending the factorial to non-integer arguments was apparently first considered by Daniel Bernoulli and Christian Goldbach in the 1720s, and was solved at the end of the same decade by Leonhard Euler. Euler gave two different definitions: the first was not his integral but an infinite product,

$$n! = \prod_{k=1}^\infty \frac{\left(1+\frac{1}{k}\right)^n}{1+\frac{n}{k}}\,,$$

of which he informed Goldbach in a letter dated October 13, 1729. He wrote to Goldbach again on January 8, 1730, to announce his discovery of the integral representation

_n_! = ∫₀¹( − ln _s_)^(_n_) _d__s_ ,

which is valid for . By the change of variables −ln _s_}}, this becomes the familiar Euler integral. Euler published his results in the paper "De progressionibus transcendentibus seu quarum termini generales algebraice dari nequeunt" ("On transcendental progressions, that is, those whose general terms cannot be given algebraically"), submitted to the St. Petersburg Academy on November 28, 1729.[32] Euler further discovered some of the gamma function's important functional properties, including the reflection formula.

James Stirling, a contemporary of Euler, also attempted to find a continuous expression for the factorial and came up with what is now known as Stirling's formula. Although Stirling's formula gives a good estimate of , also for non-integers, it does not provide the exact value. Extensions of his formula that correct the error were given by Stirling himself and by Jacques Philippe Marie Binet.

19th century: Gauss, Weierstrass and Legendre

Euler_factorial_paper.png

Carl Friedrich Gauss rewrote Euler's product as

$$\Gamma(z) = \lim_{m\to\infty}\frac{m^z m!}{z(z+1)(z+2)\cdots(z+m)}$$

and used this formula to discover new properties of the gamma function. Although Euler was a pioneer in the theory of complex variables, he does not appear to have considered the factorial of a complex number, as instead Gauss first did.[33] Gauss also proved the multiplication theorem of the gamma function and investigated the connection between the gamma function and elliptic integrals.

Karl Weierstrass further established the role of the gamma function in complex analysis, starting from yet another product representation,

$$\Gamma(z) = \frac{e^{-\gamma z}}{z} \prod_{k=1}^\infty \left(1 + \frac{z}{k}\right)^{-1} e^\frac{z}{k},$$

where is the Euler–Mascheroni constant. Weierstrass originally wrote his product as one for , in which case it is taken over the function's zeros rather than its poles. Inspired by this result, he proved what is known as the Weierstrass factorization theorem—that any entire function can be written as a product over its zeros in the complex plane; a generalization of the fundamental theorem of algebra.

The name gamma function and the symbol were introduced by Adrien-Marie Legendre around 1811; Legendre also rewrote Euler's integral definition in its modern form. Although the symbol is an upper-case Greek gamma, there is no accepted standard for whether the function name should be written "gamma function" or "Gamma function" (some authors simply write "-function"). The alternative "pi function" notation _z_!}} due to Gauss is sometimes encountered in older literature, but Legendre's notation is dominant in modern works.

It is justified to ask why we distinguish between the "ordinary factorial" and the gamma function by using distinct symbols, and particularly why the gamma function should be normalized to _n_!}} instead of simply using " _n_!}}". Consider that the notation for exponents, , has been generalized from integers to complex numbers without any change. Legendre's motivation for the normalization does not appear to be known, and has been criticized as cumbersome by some (the 20th-century mathematician Cornelius Lanczos, for example, called it "void of any rationality" and would instead use ).[34] Legendre's normalization does simplify a few formulae, but complicates most others. From a modern point of view, the Legendre normalization of the Gamma function is the integral of the additive character against the multiplicative character with respect to the Haar measure $\tfrac{dx}{x}$ on the Lie group . Thus this normalization makes it clearer that the gamma function is a continuous analogue of a Gauss sum.

19th–20th centuries: characterizing the gamma function

It is somewhat problematic that a large number of definitions have been given for the gamma function. Although they describe the same function, it is not entirely straightforward to prove the equivalence. Stirling never proved that his extended formula corresponds exactly to Euler's gamma function; a proof was first given by Charles Hermite in 1900.[35] Instead of finding a specialized proof for each formula, it would be desirable to have a general method of identifying the gamma function.

One way to prove would be to find a differential equation that characterizes the gamma function. Most special functions in applied mathematics arise as solutions to differential equations, whose solutions are unique. However, the gamma function does not appear to satisfy any simple differential equation. Otto Hölder proved in 1887 that the gamma function at least does not satisfy any _algebraic_ differential equation by showing that a solution to such an equation could not satisfy the gamma function's recurrence formula, making it a transcendentally transcendental function. This result is known as Hölder's theorem.

A definite and generally applicable characterization of the gamma function was not given until 1922. Harald Bohr and Johannes Mollerup then proved what is known as the _Bohr–Mollerup theorem_: that the gamma function is the unique solution to the factorial recurrence relation that is positive and _logarithmically convex_ for positive and whose value at 1 is 1 (a function is logarithmically convex if its logarithm is convex).

The Bohr–Mollerup theorem is useful because it is relatively easy to prove logarithmic convexity for any of the different formulas used to define the gamma function. Taking things further, instead of defining the gamma function by any particular formula, we can choose the conditions of the Bohr–Mollerup theorem as the definition, and then pick any formula we like that satisfies the conditions as a starting point for studying the gamma function. This approach was used by the Bourbaki group.

Borwein & Corless[36] review three centuries of work on the gamma function.

Reference tables and software

Although the gamma function can be calculated virtually as easily as any mathematically simpler function with a modern computer—even with a programmable pocket calculator—this was of course not always the case. Until the mid-20th century, mathematicians relied on hand-made tables; in the case of the gamma function, notably a table computed by Gauss in 1813 and one computed by Legendre in 1825.

Jahnke_gamma_function.png and .]]

Tables of complex values of the gamma function, as well as hand-drawn graphs, were given in _Tables of Higher Functions_ by Jahnke and , first published in Germany in 1909. According to Michael Berry, "the publication in J&E of a three-dimensional graph showing the poles of the gamma function in the complex plane acquired an almost iconic status."[37]

There was in fact little practical need for anything but real values of the gamma function until the 1930s, when applications for the complex gamma function were discovered in theoretical physics. As electronic computers became available for the production of tables in the 1950s, several extensive tables for the complex gamma function were published to meet the demand, including a table accurate to 12 decimal places from the U.S. National Bureau of Standards.[38]

_Abramowitz and Stegun_ became the standard reference for this and many other special functions after its publication in 1964.

Double-precision floating-point implementations of the gamma function and its logarithm are now available in most scientific computing software and special functions libraries, for example TK Solver, Matlab, GNU Octave, and the GNU Scientific Library. The gamma function was also added to the C standard library (math.h). Arbitrary-precision implementations are available in most computer algebra systems, such as Mathematica and Maple. PARI/GP, MPFR and MPFUN contain free arbitrary-precision implementations. A little-known feature of the calculator app included with the Android operating system is that it will accept fractional values as input to the factorial function and return the equivalent gamma function value. The same is true for Windows Calculator (in scientific mode).


See also

-   Ascending factorial
-   Cahen–Mellin integral
-   Elliptic gamma function
-   Gauss's constant
-   Hadamard's gamma function
-   Multiple gamma function
-   Multivariate gamma function
-   {{math
-   Pochhammer {{math
-   {{math
-   Ramanujan's master theorem
-   Spouge's approximation


Notes

-


Further reading

-   -   -   -   -   -   -   -   -   -   -


External links

-   NIST Digital Library of Mathematical Functions:Gamma function
-   Pascal Sebah and Xavier Gourdon. _Introduction to the Gamma Function_. In PostScript and HTML formats.
-   C++ reference for std::tgamma
-   Examples of problems involving the gamma function can be found at Exampleproblems.com.
-   -   Wolfram gamma function evaluator (arbitrary precision)
-   -   Volume of n-Spheres and the Gamma Function at MathPages

Category:Gamma and related functions Category:Special hypergeometric functions Category:Meromorphic functions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20] Whittaker and Watson, 12.2 example 1.

[21] Whittaker and Watson, 12.31.

[22] Whittaker and Watson, 12.32.

[23] Whittaker and Watson, 12.22.

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32] Euler's paper was published in _Commentarii academiae scientiarum Petropolitanae_ 5, 1738, 36–57. See E19 -- De progressionibus transcendentibus seu quarum termini generales algebraice dari nequeunt, from The Euler Archive, which includes a scanned copy of the original article.

[33]

[34]

[35]

[36]

[37]

[38]