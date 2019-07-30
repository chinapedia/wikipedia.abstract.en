The RIEMANN ZETA FUNCTION or EULER–RIEMANN ZETA FUNCTION, , is a function of a complex variable _s_ that analytically continues the sum of the Dirichlet series

$$\zeta(s) =\sum_{n=1}^\infty\frac{1}{n^s}$$

which converges when the real part of is greater than 1. More general representations of for all are given below. The Riemann zeta function plays a pivotal role in analytic number theory and has applications in physics, probability theory, and applied statistics.

As a function of a real variable, Leonhard Euler first introduced and studied it in the first half of the eighteenth century without using complex analysis, which was not available at the time. Bernhard Riemann's 1859 article "On the Number of Primes Less Than a Given Magnitude" extended the Euler definition to a complex variable, proved its meromorphic continuation and functional equation, and established a relation between its zeros and the distribution of prime numbers.[1]

The values of the Riemann zeta function at even positive integers were computed by Euler. The first of them, , provides a solution to the Basel problem. In 1979 Roger Apéry proved the irrationality of . The values at negative integer points, also found by Euler, are rational numbers and play an important role in the theory of modular forms. Many generalizations of the Riemann zeta function, such as Dirichlet series, [[Dirichlet_L-function|Dirichlet {e ^ x - 1} \, \mathrm{d}x

where

_Γ_(_s_) = ∫₀^(∞)_x_^(_s_ − 1) _e_^( − _x_) _d__x_

is the gamma function.

For the special case where the real part of is greater than 1, always converges, and can be simplified to the following infinite series:

$$\zeta(s) = \sum_{n=1}^\infty n^{-s} = \frac{1}{1^s} + \frac{1}{2^s} + \frac{1}{3^s} + \cdots \quad \sigma = \operatorname{Re}(s) > 1.$$

The Riemann zeta function is defined as the analytic continuation of the function defined for by the sum of the preceding series.

Leonhard Euler considered the above series in 1740 for positive integer values of , and later Chebyshev extended the definition to .[2]

The above series is a prototypical Dirichlet series that converges absolutely to an analytic function for such that and diverges for all other values of . Riemann showed that the function defined by the series on the half-plane of convergence can be continued analytically to all complex values . For 1}} the series is the harmonic series which diverges to , and

    lim_(s → 1)(s − 1)ζ(s) = 1.

Thus the Riemann zeta function is a meromorphic function on the whole complex -plane, which is holomorphic everywhere except for a simple pole at 1}} with residue 1.


Specific values

For any positive even integer :

$$\zeta(2n) = \frac{(-1)^{n+1}B_{2n}(2\pi)^{2n}}{2(2n)!}$$

where is the th Bernoulli number.

For odd positive integers, no such simple expression is known, although these values are thought to be related to the algebraic -theory of the integers; see [[Special_values_of_L-functions|Special values of {n+1}

for (using the NIST convention that −}})

In particular, vanishes at the negative even integers because 0}} for all odd other than 1. These are the so-called "trivial zeros" of the zeta function.

Via analytic continuation, one can show that:

-   $\zeta(-1) = -\tfrac{1}{12}$



        This gives a way to assign a finite result to the divergent series 1 + 2 + 3 + 4 + ⋯, which has been used in certain contexts such as string theory.[3]

-   $\zeta(0) = -\tfrac{1}{2};$



        Similarly to the above, this assigns a finite result to the series 1 + 1 + 1 + 1 + ⋯.

-   $\zeta\bigl(\tfrac12\bigr) \approx -1.46035 45088 09586 81289$   ()



        This is employed in calculating of kinetic boundary layer problems of linear kinetic equations.[4]

-   $\zeta(1) = 1 + \tfrac{1}{2} + \tfrac{1}{3} + \cdots = \infty;$



        If we approach from numbers larger than 1, this is the harmonic series. But its Cauchy principal value
        $$\lim_{\varepsilon \to 0} \frac{\zeta(1+\varepsilon)+\zeta(1-\varepsilon)}{2}$$

        exists which is the Euler–Mascheroni constant 0.5772…}}.

-   $\zeta\bigl(\tfrac32\bigr) \approx 2.61237 53486 85488 34335;$   ()



        This is employed in calculating the critical temperature for a Bose–Einstein condensate in a box with periodic boundary conditions, and for spin wave physics in magnetic systems.

-   $\zeta(2) = 1 + \frac{1}{2^2} + \frac{1}{3^2} + \cdots = \frac{\pi^2}{6} \approx 1.64493 40668 48226 43647;\!$   ()



        The demonstration of this equality is known as the Basel problem. The reciprocal of this sum answers the question: _What is the probability that two numbers selected at random are relatively prime?_[5]

-   $\zeta(3) = 1 + \frac{1}{2^3} + \frac{1}{3^3} + \cdots \approx 1.20205 69031 59594 28540;$   ()



        This number is called Apéry's constant.

-   $\zeta(4) = 1 + \frac{1}{2^4} + \frac{1}{3^4} + \cdots = \frac{\pi^4}{90} \approx 1.08232 32337 11138 19152;$   ()



        This appears when integrating Planck's law to derive the Stefan–Boltzmann law in physics.


Euler product formula

The connection between the zeta function and prime numbers was discovered by Euler, who proved the identity

$$\sum_{n=1}^\infty\frac{1}{n^s} = \prod_{p \text{ prime}} \frac{1}{1-p^{-s}},$$

where, by definition, the left hand side is and the infinite product on the right hand side extends over all prime numbers (such expressions are called Euler products):

$$\prod_{p \text{ prime}} \frac{1}{1-p^{-s}} = \frac{1}{1-2^{-s}}\cdot\frac{1}{1-3^{-s}}\cdot\frac{1}{1-5^{-s}}\cdot\frac{1}{1-7^{-s}}\cdot\frac{1}{1-11^{-s}} \cdots \frac{1}{1-p^{-s}} \cdots$$

Both sides of the Euler product formula converge for . The proof of Euler's identity uses only the formula for the geometric series and the fundamental theorem of arithmetic. Since the harmonic series, obtained when 1}}, diverges, Euler's formula (which becomes ) implies that there are infinitely many primes.[6]

The Euler product formula can be used to calculate the asymptotic probability that randomly selected integers are set-wise coprime. Intuitively, the probability that any single number is divisible by a prime (or any integer) is . Hence the probability that numbers are all divisible by this prime is , and the probability that at least one of them is _not_ is . Now, for distinct primes, these divisibility events are mutually independent because the candidate divisors are coprime (a number is divisible by coprime divisors and if and only if it is divisible by , an event which occurs with probability ). Thus the asymptotic probability that numbers are coprime is given by a product over all primes,

    $\prod_{p \text{ prime}} \left(1-\frac{1}{p^s}\right) = \left( \prod_{p \text{ prime}} \frac{1}{1-p^{-s}} \right)^{-1} = \frac{1}{\zeta(s)}.$

(More work is required to derive this result formally.)[7]


Riemann's functional equation

The zeta function satisfies the functional equation:

$$\zeta(s) = 2^s\pi^{s-1}\ \sin\left(\frac{\pi s}{2}\right)\ \Gamma(1-s)\ \zeta(1-s),$$

where is the gamma function. This is an equality of meromorphic functions valid on the whole complex plane. The equation relates values of the Riemann zeta function at the points and , in particular relating even positive integers with odd negative integers. Owing to the zeros of the sine function, the functional equation implies that has a simple zero at each even negative integer −2_n_}}, known as the TRIVIAL ZEROS of . When is an even positive integer, the product on the right is non-zero because has a simple pole, which cancels the simple zero of the sine factor.

A proof of the functional equation proceeds as follows: We observe that if σ > 0, then

    $\int_0^\infty x^{{1\over2}{s} - 1}e^{-n^2\pi x}\, dx = {\Gamma \left({s\over2}\right)\over{n^s\pi^{s\over2}}}.$

As a result, if σ > 1 then

    $\frac{\Gamma\left(\frac s 2\right)\zeta(s)}{\pi^{s/2}} = \sum_{n=1}^\infty \int\limits_0^\infty x^{{s\over 2}-1} e^{-n^2 \pi x}\, dx = \int_0^\infty x^{{s\over 2}-1} \sum_{n=1}^\infty e^{-n^2 \pi x}\, dx.$
    With the inversion of the limiting processes justified by absolute convergence (hence the stricter requirement on σ)

    For convenience, let

        $\psi(x) := \sum_{n=1}^\infty e^{-n^2 \pi x}$

    Then $\zeta(s) = {\pi^{s\over2}\over\Gamma({s \over 2})} \int\limits_0^\infty x^{{1\over2}{s} - 1}\psi(x)\, dx$

    Given that $\sum_{n=-\infty}^\infty {e^{-n^2 \pi x}} = {1 \over \sqrt x}\sum_{n=-\infty}^\infty {e^{-n^2 \pi \over x}}$

    Then $2 \psi(x)+1 = {1\over \sqrt x} \left\{2\psi \left ( {1 \over x} \right )+1\right\}$

    Hence $\pi^{-{s \over 2}} \Gamma \left ( {s \over 2} \right ) \zeta (s) = \int_0^1 x^{{s\over 2}-1} \psi(x) \, dx + \int_1^\infty x^{{s\over 2}-1} \psi(x) \, dx$

    This is equivalent to $\int\limits_0^1 x^{{s\over 2}-1} \left\{ {1\over \sqrt x} \psi \left ( {1 \over x} \right ) + {1\over 2 \sqrt x} - {1 \over 2} \right\} \, dx + \int\limits_1^\infty x^{{s\over 2}-1} \psi(x) \, dx$

    Or



    \begin{align} & {1 \over {s-1}} - {1\over s} + \int\limits_0^1 x^\sum_{n=1}^\infty \frac{(-1)^{n+1}}{n^s} ,

    where the _η_-series is convergent (albeit non-absolutely) in the larger half-plane (for a more detailed survey on the history of the functional equation, see e.g. Blagouchine[8][9]).

    Riemann also found a symmetric version of the functional equation applying to the xi-function:

    $$\xi(s) = \frac{1}{2}\pi^{-\frac{s}{2}}s(s-1)\Gamma\left(\frac{s}{2}\right)\zeta(s),\!$$

    which satisfies:

    _ξ_(_s_) = _ξ_(1 − _s_).​

    (Riemann's original . The functional equation shows that the Riemann zeta function has zeros at . These are called the TRIVIAL ZEROS. They are trivial in the sense that their existence is relatively easy to prove, for example, from being 0 in the functional equation. The non-trivial zeros have captured far more attention because their distribution not only is far less understood but, more importantly, their study yields impressive results concerning prime numbers and related objects in number theory. It is known that any non-trivial zero lies in the open strip , which is called the CRITICAL STRIP. The Riemann hypothesis, considered one of the greatest unsolved problems in mathematics, asserts that any non-trivial zero has }}. In the theory of the Riemann zeta function, the set }}} is called the CRITICAL LINE. For the Riemann zeta function on the critical line, see [[Z_function| line.[10] A better result[11] that follows from an effective form of Vinogradov's mean-value theorem is that whenever and

$$\sigma\ge 1-\frac{1}{57.54(\log{|t|})^\frac23(\log{\log{|t|}})^\frac13}.$$

The strongest result of this kind one can hope for is the truth of the Riemann hypothesis, which would have many profound consequences in the theory of numbers.

Other results

It is known that there are infinitely many zeros on the critical line. Littlewood showed that if the sequence () contains the imaginary parts of all zeros in the upper half-plane in ascending order, then

lim_(_n_ → ∞)(_γ__(_n_ + 1)−_γ__(_n_)) = 0.

The critical line theorem asserts that a positive proportion of the nontrivial zeros lies on the critical line. (The Riemann hypothesis would imply that this proportion is 1.)

In the critical strip, the zero with smallest non-negative imaginary part is (). The fact that

$$\zeta(s)=\overline{\zeta(\overline{s})}$$
for all complex implies that the zeros of the Riemann zeta function are symmetric about the real axis. Combining this symmetry with the functional equation, furthermore, one sees that the non-trivial zeros are symmetric about the critical line }}.


Various properties

For sums involving the zeta-function at integer and half-integer values, see rational zeta series.

Reciprocal

The reciprocal of the zeta function may be expressed as a Dirichlet series over the Möbius function :

$$\frac{1}{\zeta(s)} = \sum_{n=1}^\infty \frac{\mu(n)}{n^s}$$
for every complex number with real part greater than 1. There are a number of similar relations involving various well-known multiplicative functions; these are given in the article on the Dirichlet series.

The Riemann hypothesis is equivalent to the claim that this expression is valid when the real part of is greater than .

Universality

The critical strip of the Riemann zeta function has the remarkable property of UNIVERSALITY. This zeta-function universality states that there exists some location on the critical strip that approximates any holomorphic function arbitrarily well. Since holomorphic functions are very general, this property is quite remarkable. The first proof of universality was provided by Sergei Mikhailovitch Voronin in 1975.[12] More recent work has included effective versions of Voronin's theorem{{ cite journal |author1=Ramūnas Garunkštis |author2=Antanas Laurinčikas |author3=Kohji Matsumoto

|author4=Jörn Steuding |author5=Rasa Steuding |title=Effective uniform approximation by the Riemann zeta-function
|journal=Publicacions Matemàtiques |volume=54 |issue=1 |date=2010 |pages=209–219
|jstor=43736941 |doi=10.1090/S0025-5718-1975-0384673-1}} and extending it to Dirichlet L-functions.{{ cite journal |author=Bhaskar Bagchi |title=A Joint Universality Theorem for Dirichlet L-Functions
|journal=Mathematische Zeitschrift |issn=0025-5874 |volume=181 |issue=3
|date=1982 |pages=319–334 |doi=10.1007/bf01161980}}[13]

Estimates of the maximum of the modulus of the zeta function

Let the functions and be defined by the equalities

    $F(T;H) = \max_{|t-T|\le H}\left|\zeta\left(\tfrac{1}{2}+it\right)\right|,\qquad G(s_{0};\Delta) = \max_{|s-s_{0}|\le\Delta}|\zeta(s)|.$

Here is a sufficiently large positive number, , _σ_₀ + _iT_}}, , . Estimating the values and from below shows, how large (in modulus) values can take on short intervals of the critical line or in small neighborhoods of points lying in the critical strip .

The case was studied by Kanakanahalli Ramachandra; the case , where is a sufficiently large constant, is trivial.

Anatolii Karatsuba proved,[14][15] in particular, that if the values and exceed certain sufficiently small constants, then the estimates

    F(T; H) ≥ T^( − c₁),  G(s₀; Δ) ≥ T^( − c₂),

hold, where and are certain absolute constants.

The argument of the Riemann zeta function

The function

$$S(t) = \frac{1}{\pi}\arg{\zeta\left(\tfrac12+it\right)}$$
is called the argument of the Riemann zeta function. Here is the increment of an arbitrary continuous branch of along the broken line joining the points , and .

There are some theorems on properties of the function . Among those results[16][17] are the mean value theorems for and its first integral

_S_₁(_t_) = ∫₀^(_t_)_S_(_u_) _d__u_
on intervals of the real line, and also the theorem claiming that every interval for

$$H \ge T^{\frac{27}{82}+\varepsilon}$$
contains at least

    $H\sqrt[3]{\ln T}e^{-c\sqrt{\ln\ln T}}$

points where the function changes sign. Earlier similar results were obtained by Atle Selberg for the case

$$H\ge T^{\frac12+\varepsilon}.$$


Representations

Dirichlet series

An extension of the area of convergence can be obtained by rearranging the original series.[18] The series

$$\zeta(s)=\frac{1}{s-1}\sum_{n=1}^\infty \left(\frac{n}{(n+1)^s}-\frac{n-s}{n^s}\right)$$
converges for , while

$$\zeta(s) =\frac{1}{s-1}\sum_{n=1}^\infty\frac{n(n+1)}{2}\left(\frac{2n+3+s}{(n+1)^{s+2}}-\frac{2n-1-s}{n^{s+2}}\right)$$
converges even for . In this way, the area of convergence can be extended to for any negative integer .

Mellin-type integrals

The Mellin transform of a function is defined as

$$\int_0^\infty f(x)x^s\, \frac{\mathrm{d}x}{x}$$

in the region where the integral is defined. There are various expressions for the zeta-function as Mellin transform-like integrals. If the real part of is greater than one, we have

$$\Gamma(s)\zeta(s) =\int_0^\infty\frac{x^{s-1}}{e^x-1} \,\mathrm{d}x,$$

where denotes the gamma function. By modifying the contour, Riemann showed that

$$2\sin(\pi s)\Gamma(s)\zeta(s) =i\oint_H \frac{(-x)^{s-1}}{e^x-1}\,\mathrm{d}x$$

for all (where denotes the Hankel contour).

Starting with the integral formula $\zeta(n)  {\Gamma(n)} =\int_{0}^{\infty} \frac{x ^ {n-1}}{e ^ x - 1} \mathrm{d}x,$ one can show[19] by substitution and iterated differentation for natural k ≥ 2

$$\int_{0}^{\infty} \frac{x ^ {n}e^x}{(e ^ x - 1)^k} \mathrm{d}x =  \frac{n!}{ (k-1)!}\zeta^n\prod_{j=0}^{k-2}\left(1-\frac j\zeta\right)$$
using the notation of umbral calculus where each power ζ^(r) is to be replaced by ζ(r), so e.g. for k = 2 we have $\int_{0}^{\infty} \frac{x ^ {n}e^x}{(e ^ x - 1)^2} \mathrm{d}x = {n!}\zeta(n) ,$ while for k = 4 this becomes

$$\int_{0}^{\infty} \frac{x ^ {n}e^x}{(e ^ x - 1)^4} \mathrm{d}x =  \frac{n!}{ 6} \bigl( \zeta^{n-2} -3\zeta^{n-1} +2\zeta^n \bigr)=  n!\frac{  \zeta(n-2) -3\zeta(n-1) +2\zeta(n)  }{ 6}.$$

We can also find expressions which relate to prime numbers and the prime number theorem. If is the prime-counting function, then

$$\ln \zeta(s) = s \int_0^\infty \frac{\pi(x)}{x(x^s-1)}\,\mathrm{d}x,$$

for values with .

A similar Mellin transform involves the Riemann prime-counting function , which counts prime powers with a weight of , so that

    $J(x) = \sum \frac{\pi\left(x^\frac{1}{n}\right)}{n}.$

Now we have

ln _ζ_(_s_) = _s_∫₀^(∞)_J_(_x_)_x_^( − _s_ − 1) _d__x_.

These expressions can be used to prove the prime number theorem by means of the inverse Mellin transform. Riemann's prime-counting function is easier to work with, and can be recovered from it by Möbius inversion.

Theta functions

The Riemann zeta function can be given by a Mellin transform[20]

$$2\pi^{-\frac{s}{2}}\Gamma\left(\frac{s}{2}\right)\zeta(s) = \int_0^\infty \bigl(\theta(it)-1\bigr)t^{\frac{s}{2}-1}\,\mathrm{d}t,$$

in terms of Jacobi's theta function

$$\theta(\tau)= \sum_{n=-\infty}^\infty e^{\pi i n^2\tau}.$$

However, this integral only converges if the real part of is greater than 1, but it can be regularized. This gives the following expression for the zeta function, which is well defined for all except 0 and 1:

$$\pi^{-\frac{s}{2}}\Gamma\left(\frac{s}{2}\right)\zeta(s) = \frac{1}{s-1}-\frac{1}{s} +\frac{1}{2} \int_0^1 \left(\theta(it)-t^{-\frac12}\right)t^{\frac{s}{2}-1}\,\mathrm{d}t + \frac{1}{2}\int_1^\infty \bigl(\theta(it)-1\bigr)t^{\frac{s}{2}-1}\,\mathrm{d}t.$$

Laurent series

The Riemann zeta function is meromorphic with a single pole of order one at 1}}. It can therefore be expanded as a Laurent series about 1}}; the series development is then

$$\zeta(s)=\frac{1}{s-1}+\sum_{n=0}^\infty \frac{(-1)^n\gamma_n}{n!}(s-1)^n.$$

The constants here are called the Stieltjes constants and can be defined by the limit

    $\gamma_n = \lim_{m \rightarrow \infty}{\left(\left(\sum_{k = 1}^m \frac{(\ln k)^n}{k}\right) - \frac{(\ln m)^{n+1}}{n+1}\right)}.$

The constant term is the Euler–Mascheroni constant.

Integral

For all , the integral relation (cf. Abel–Plana formula)

    $\zeta(s) = \frac{1}{s-1}+\frac{1}{2}+2\!\int_0^{\infty}\!\!\!\frac{\sin(s\arctan t)}{\left(1+t^2\right)^\frac{s}{2}\left(e^{2\pi t}-1\right)}\,\mathrm{d}t$

holds true, which may be used for a numerical evaluation of the zeta-function.

Rising factorial

Another series development using the rising factorial valid for the entire complex plane is

$$\zeta(s) = \frac{s}{s-1} - \sum_{n=1}^\infty \bigl(\zeta(s+n)-1\bigr)\frac{s(s+1)\cdots(s+n-1)}{(n+1)!}.$$

This can be used recursively to extend the Dirichlet series definition to all complex numbers.

The Riemann zeta function also appears in a form similar to the Mellin transform in an integral over the Gauss–Kuzmin–Wirsing operator acting on ; that context gives rise to a series expansion in terms of the falling factorial.[21]

Hadamard product

On the basis of Weierstrass's factorization theorem, Hadamard gave the infinite product expansion

$$\zeta(s) = \frac{e^{\left(\log(2\pi)-1-\frac{\gamma}{2}\right)s}}{2(s-1)\Gamma\left(1+\frac{s}{2}\right)} \prod_\rho \left(1 - \frac{s}{\rho} \right) e^\frac{s}{\rho},$$

where the product is over the non-trivial zeros of and the letter again denotes the Euler–Mascheroni constant. A simpler infinite product expansion is

$$\zeta(s) = \pi^\frac{s}{2} \frac{\prod_\rho \left(1 - \frac{s}{\rho} \right)}{2(s-1)\Gamma\left(1+\frac{s}{2}\right)}.$$

This form clearly displays the simple pole at 1}}, the trivial zeros at −2, −4, … due to the gamma function term in the denominator, and the non-trivial zeros at _ρ_}}. (To ensure convergence in the latter formula, the product should be taken over "matching pairs" of zeros, i.e. the factors for a pair of zeros of the form and should be combined.)

Globally convergent series

A globally convergent series for the zeta function, valid for all complex numbers except 1 + _n_}} for some integer , was conjectured by Konrad Knopp[22] and proven by Helmut Hasse in 1930[23] (cf. Euler summation):

$$\zeta(s)=\frac{1}{1-2^{1-s}} \sum_{n=0}^\infty \frac {1}{2^{n+1}} \sum_{k=0}^n \binom{n}{k} \frac{(-1)^k}{(k+1)^{s}}.$$

The series only appeared in an appendix to Hasse's paper, and did not become generally known until it was discussed by Jonathan Sondow in 1994.[24]

Hasse also proved the globally converging series

$$\zeta(s)=\frac 1{s-1}\sum_{n=0}^\infty \frac 1{n+1}\sum_{k=0}^n\binom {n}{k}\frac{(-1)^k}{(k+1)^{s-1}}$$
in the same publication,[25] but research by Iaroslav Blagouchine[26][27] has found that this latter series was actually first published by Joseph Ser in 1926.[28] New proofs for both of these results were offered by Demetrios Kanoussis in 2017.[29] Other similar globally convergent series include

$$\begin{align}
\zeta(s) & =\frac{1}{s-1}\sum_{n=0}^\infty H_{n+1}\sum_{k=0}^n (-1)^k \binom{n}{k}(k+2)^{1-s} \\[6pt]
\zeta(s) & =\frac{1}{s-1}\left\{-1 + \sum_{n=0}^\infty H_{n+2}\sum_{k=0}^n (-1)^k \binom{n}{k}(k+2)^{-s}\right\} \\[6pt]
\zeta(s) & =\frac{k!}{(s-k)_k}\sum_{n=0}^\infty \frac{1}{(n+k)!}\left[{n+k \atop n}\right]\sum_{\ell=0}^{n+k-1}\!(-1)^\ell \binom{n+k-1}{\ell} (\ell+1)^{k-s},\quad k=1, 2, 3,\ldots \\[6pt]
\zeta(s) & =\frac{1}{s-1} + \sum_{n=0}^\infty |G_{n+1}| \sum_{k=0}^n(-1)^k \binom{n}{k}(k+1)^{-s} \\[6pt]
\zeta(s) & =\frac{1}{s-1}+1-\sum_{n=0}^\infty C_{n+1}\sum_{k=0}^n (-1)^k \binom{n}{k}(k+2)^{-s} \\[6pt]
\zeta(s) & =\frac{2(s-2)}{s-1}\zeta(s-1) + 2\sum_{n=0}^\infty (-1)^n  G_{n+2}\sum_{k=0}^n (-1)^k \binom{n}{k} (k+1)^{-s} \\[6pt]
\zeta(s) & =-\sum_{l=1}^{k-1} \frac{(k-l+1)_l}{(s-l)_l} \zeta(s-l) + \frac{k}{s-k}+k \sum_{n=0}^\infty (-1)^n G_{n+1}^{(k)}\sum_{k=0}^{n}(-1)^k \binom{n}{k} (k+1)^{-s} \\[6pt]
\zeta(s) & = \frac{(a+1)^{1-s} }{s-1} +  \sum_{n=0}^\infty (-1)^n \psi_{n+1}(a)
\sum_{k=0}^n (-1)^k \binom{n}{k} (k+1)^{-s}  ,\quad \Re(a)>-1 \\[6pt]
\zeta(s) & =1 + \frac{(a+2)^{1-s}}{s-1} +  \sum_{n=0}^\infty (-1)^n \psi_{n+1}(a)
\sum_{k=0}^{n} (-1)^k \binom{n}{k} (k+2)^{-s}  ,\quad \Re(a)>-1 \\[6pt]
\zeta(s) & = \frac{1}{a+\tfrac{1}{2}}\left\{-\frac{\zeta(s-1,1+a)}{s-1} + \zeta(s-1) +
 \sum_{n=0}^\infty (-1)^n \psi_{n+2}(a) \sum_{k=0}^{n} (-1)^k \binom{n}{k} (k+1)^{-s}\right\} ,\quad \Re(a)>-1
\end{align}$$

where are the harmonic numbers, $\left[{\cdot \atop \cdot}\right]$ are the Stirling numbers of the first kind, (s − k)_(k) is the Pochhammer symbol, are the Gregory coefficients, are the Gregory coefficients of higher order, are the Cauchy numbers of the second kind ( 1/2}}, 5/12}}, 3/8}},...), and are the Bernoulli polynomials of the second kind, see Blagouchine's paper.[30]

Peter Borwein has developed an algorithm that applies Chebyshev polynomials to the Dirichlet eta function to produce a very rapidly convergent series suitable for high precision numerical calculations.[31]

Series representation at positive integers via the primorial

    $\zeta(k)=\frac{2^k}{2^k-1}+\sum_{r=2}^\infty\frac{(p_{r-1}\#)^k}{J_k(p_r\#)}\qquad k=2,3,\ldots.$

Here is the primorial sequence and is Jordan's totient function.[32]

Series representation by the incomplete poly-Bernoulli numbers

The function can be represented, for , by the infinite series

$$\zeta(s)=\sum_{n=0}^\infty B_{n,\ge2}^{(s)}\frac{(W_k(-1))^n}{n!},$$
where , is the th branch of the [[Lambert_W_function|Lambert ^{\frac{1}{n}} (x (n + 1) - 1) x^{s - 1} \, d x\\[6pt]

   & = \sum_{n = 1}^\infty \frac{n^{- s} (s - 1) + (n + 1)^{- s - 1} (n^2 + 2 n + 1) + n^{- s - 1} s - n^{1 - s}}{(s + 1) s (n + 1)}\\[6pt]
   & = \frac{\zeta (s)}{s + 1} - \frac{1}{s (s + 1)}
 \end{align}


Numerical algorithms

For v = 1, 2, 3, … , the Riemann zeta function has for fixed σ₀ < v and for all σ ≤ σ₀ the following representation in terms of three absolutely and uniformly converging series,[33]$\begin{align}
\zeta\left(s\right) & =  \sum_{n=1}^{\infty}n^{-s}\sum_{w=0}^{v-1}\frac{\left(\frac{n}{N}\right)^{w}}{w!}e^{-\frac{n}{N}}-\frac{\Gamma\left(1-s+v\right)}{\left(1-s\right)\Gamma\left(v\right)}N^{1-s}+\sum_{\mu=\pm1}E_{\mu}\left(s\right)\\
E_{\mu}\left(s\right) & =  \left(2\pi\right)^{s-1}\Gamma\left(1-s\right)e^{i\mu\frac{\pi}{2}\left(1-s\right)}\sum_{m=1}^{\infty}\left[m^{s-1}-\sum_{w=0}^{v-1}\binom{s-1}{w}\left(m+\frac{i\mu}{2\pi N}\right)^{s-1-w}\left(\frac{-i\mu}{2\pi N}\right)^{w}\right]
\end{align}$where for positive integer s = k one has to take the limit value lim_(s → k)E_(μ)(s). The derivatives of ζ(s) can be calculated by differentiating the above series termwise. From this follows an algorithm which allows to compute, to arbitrary precision, ζ(s) and its derivatives using at most $C\left(\epsilon\right)\left|\tau\right|^{\frac{1}{2}+\epsilon}$ summands for any ϵ > 0, with explicit error bounds. For ζ(s), these are as follows:

For a given argument s with 0 ≤ σ ≤ 2 and 0 < t one can approximate ζ(s) to any accuracy δ ≤ 0.05 by summing the first series to n = ⌈3.151⋅vN⌉, E₁(s) to m = ⌈N⌉ and neglecting E_( − 1)(s), if one chooses v as the next higher integer of the unique solution of $x-\max\left(\frac{1-\sigma}{2},0\right)\ln\left(\frac{1}{2}+x+\tau\right)=\ln\frac{8}{\delta}$ in the unknown x, and from this $N=1.11\left(1+\frac{\frac{1}{2}+\tau}{v}\right)^{\frac{1}{2}}$. For t = 0 one can neglect E₁(s) altogether. Under the mild condition $\tau>\frac{5}{3}\left(\frac{3}{2}+\ln\frac{8}{\delta}\right)$ one needs at most $2+8\sqrt{1+\ln\frac{8}{\delta}+\max\left(\frac{1-\sigma}{2},0\right)\ln\left(2\tau\right)}~\sqrt{\tau}$ summands. Hence this algorithm is essentially as fast as the Riemann-Siegel formula. Similar algorithms are possible for Dirichlet L-functions.[34]


Applications

The zeta function occurs in applied statistics (see Zipf's law and Zipf–Mandelbrot law).

Zeta function regularization is used as one possible means of regularization of divergent series and divergent integrals in quantum field theory. In one notable example, the Riemann zeta-function shows up explicitly in one method of calculating the Casimir effect. The zeta function is also useful for the analysis of dynamical systems.[35]

Infinite series

The zeta function evaluated at equidistant positive integers appears in infinite series representations of a number of constants.[36]

-   $\sum_{n=2}^\infty\bigl(\zeta(n)-1\bigr) = 1$

In fact the even and odd terms give the two sums

-   $\sum_{n=1}^\infty\bigl(\zeta(2n)-1\bigr)=\frac{3}{4}$

and

-   $\sum_{n=1}^\infty\bigl(\zeta(2n+1)-1\bigr)=\frac{1}{4}$

Parametrized versions of the above sums are given by

-   $\sum_{n=1}^\infty(\zeta(2n)-1)\,t^{2n} = \frac{t^2}{t^2-1} + \frac{1}{2} \left(1- \pi t\cot(t\pi)\right)$

and

-   $\sum_{n=1}^\infty(\zeta(2n+1)-1)\,t^{2n} = \frac{t^2}{t^2-1} + \frac{1}{2}\left(\psi^0(t)+\psi^0(-t) \right) - \gamma$

with |t| < 2 and where ψ and γ are the polygamma function and Euler's constant, as well as

-   $\sum_{n=1}^\infty \frac{\zeta(2n)-1}{n}\,t^{2n} = \log\left(\dfrac{1-t^2}{\operatorname{sinc}(\pi\,t)}\right)$

all of which are continuous at t = 1. Other sums include

-   $\sum_{n=2}^\infty\frac{\zeta(n)-1}{n} = 1-\gamma$
-   $\sum_{n=2}^\infty\frac{\zeta(n)-1}{n} \left(\left(\tfrac{3}{2}\right)^{n-1}-1\right) = \frac{1}{3} \ln \pi$
-   $\sum_{n=1}^\infty\bigl(\zeta(4n)-1\bigr) = \frac78-\frac{\pi}{4}\left(\frac{e^{2\pi}+1}{e^{2\pi}-1}\right).$
-   $\sum_{n=2}^\infty\frac{\zeta(n)-1}{n}\operatorname{Im}\bigl((1+i)^n-(1+i^n)\bigr) = \frac{\pi}{4}$

where denotes the imaginary part of a complex number.

There are yet more formulas in the article Harmonic number.


Generalizations

There are a number of related zeta functions that can be considered to be generalizations of the Riemann zeta function. These include the Hurwitz zeta function

$$\zeta(s,q) = \sum_{k=0}^\infty \frac{1}{(k+q)^s}$$
(the convergent series representation was given by Helmut Hasse in 1930,[37] cf. Hurwitz zeta function), which coincides with the Riemann zeta function when 1}} (note that the lower limit of summation in the Hurwitz zeta function is 0, not 1), the [[Dirichlet_L-function|Dirichlet and 1}} (note that the lower limit of summation in the Lerch transcendent is 0, not 1).

The Clausen function that can be chosen as the real or imaginary part of .

The multiple zeta functions are defined by

_ζ_(_s_₁, _s_₂, …, _s__(_n_)) = ∑_(_k_₁ > _k_₂ > ⋯ > _k__(_n_) > 0)_k_₁^( − _s_₁)_k_₂^( − _s_₂)⋯_k__(_n_)^( − _s__(_n_)).

One can analytically continue these functions to the -dimensional complex space. The special values taken by these functions at positive integer arguments are called multiple zeta values by number theorists and have been connected to many different branches in mathematics and physics.


Fractional derivative

In the case of the Riemann zeta function, a difficulty is represented by the fractional differentiation in the complex plane. The Ortigueira generalization of the classical Caputo fractional derivative solves this problem. The α-order fractional derivative of the Riemann zeta function is given by [38]

$$\zeta^{(\alpha)}(s) =\sum_{n=1}^\infty\frac{(-\log n)^\alpha}{n^s} \$$

Given that α is a fractional number such that ⌊α⌋ > 0, the half-plane of convergence is ℜ(s) > 1 + α.


See also

-   1 + 2 + 3 + 4 + ···
-   Arithmetic zeta function
-   Generalized Riemann hypothesis
-   Lehmer pair
-   Particular values of Riemann zeta function
-   Prime zeta function
-   Riemann Xi function
-   Renormalization
-   Riemann–Siegel theta function
-   ZetaGrid


Notes


References

-   -   -   -   -   Has an English translation of Riemann's paper.

-   -   -   (Globally convergent series expression.)

-   -   -   -   -   -   -   -   . In _Gesammelte Werke_, Teubner, Leipzig (1892), Reprinted by Dover, New York (1953).

-   -   -   -


External links

-   -   Riemann Zeta Function, in Wolfram Mathworld — an explanation with a more mathematical approach
-   Tables of selected zeros
-   Prime Numbers Get Hitched A general, non-technical description of the significance of the zeta function in relation to prime numbers.
-   X-Ray of the Zeta Function Visually oriented investigation of where zeta is real or purely imaginary.
-   Formulas and identities for the Riemann Zeta function functions.wolfram.com
-   Riemann Zeta Function and Other Sums of Reciprocal Powers, section 23.2 of Abramowitz and Stegun
-   -   Mellin transform and the functional equation of the Riemann Zeta function—Computational examples of Mellin transform methods involving the Riemann Zeta Function

Category:Zeta and L-functions Category:Analytic number theory Category:Meromorphic functions Category:Articles containing video clips Category:Bernhard Riemann

[1] This paper also contained the Riemann hypothesis, a conjecture about the distribution of complex zeros of the Riemann zeta function that is considered by many mathematicians to be the most important unsolved problem in pure mathematics.

[2]

[3]

[4]

[5]

[6]

[7]

[8] I. V. Blagouchine _The history of the functional equation of the zeta-function._ Seminar on the History of Mathematics, Steklov Institute of Mathematics at St. Petersburg, 1 March 2018. PDF

[9] I. V. Blagouchine _Rediscovery of Malmsten’s integrals, their evaluation by contour integration methods and some related results._ The Ramanujan Journal, vol. 35, no. 1, pp. 21-110, 2014. Addendum: vol. 42, pp. 777–781, 2017. PDF

[10]

[11]

[12]  Reprinted in _Math. USSR Izv._ (1975) 9: 443–445.

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36] Most of the formulas in this section are from § 4 of J. M. Borwein et al. (2000)

[37]

[38]