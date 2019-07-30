In mathematics, a SERIES is, roughly speaking, a description of the operation of adding infinitely many quantities, one after the other, to a given starting quantity.[1] The study of series is a major part of calculus and its generalization, mathematical analysis. Series are used in most areas of mathematics, even for studying finite structures (such as in combinatorics), through generating functions. In addition to their ubiquity in mathematics, infinite series are also widely used in other quantitative disciplines such as physics, computer science, statistics and finance.

For a long time, the idea that such a potentially infinite summation could produce a finite result was considered paradoxical. This paradox was resolved using the concept of a limit during the 19th century. Zeno's paradox of Achilles and the tortoise illustrates this counterintuitive property of infinite sums: Achilles runs after a tortoise, but when he reaches the position of the tortoise at the beginning of the race, the tortoise has reached a second position; when he reaches this second position, the tortoise is at a third position, and so on. Zeno concluded that Achilles could _never_ reach the tortoise, and thus that movement does not exist. Zeno divided the race into infinitely many sub-races, each requiring a finite amount of time, so that the total time for Achilles to catch the tortoise is given by a series. The resolution of the paradox is that, although the series has an infinite number of terms, it has a finite sum, which gives the time necessary for Achilles to catch up with the tortoise.

In modern terminology, any (ordered) infinite sequence (a₁, a₂, a₃, …) of terms (that is, numbers, functions, or anything that can be added) defines a series, which is the operation of adding the a_(i) one after the other. To emphasize that there are an infinite number of terms, a series may be called an INFINITE SERIES. Such a series is represented (or denoted) by an expression like

    a₁ + a₂ + a₃ + ⋯,

or, using the summation sign,

$$\sum_{i=1}^\infty a_i.$$

The infinite sequence of additions implied by a series cannot be effectively carried on (at least in a finite amount of time). However, if the set to which the terms and their finite sums belong has a notion of limit, it is sometimes possible to assign a value to a series, called the _sum_ of the series. This value is the limit as tends to infinity (if the limit exists) of the finite sums of the first terms of the series, which are called the _th partial sums_ of the series. That is,

$$\sum_{i=1}^\infty a_i  = \lim_{n\to\infty} \sum_{i=1}^n a_i.$$
When this limit exists, one says that the series is _convergent_ or _summable_, or that the sequence (a₁, a₂, a₃, …) is SUMMABLE. In this case, the limit is called the _sum of the series_. Otherwise, the series is said to be _divergent_.

Generally, the terms of a series come from a ring, often the field ℝ of the real numbers or the field ℂ of the complex numbers. In this case, the set of all series is itself a ring (and even an associative algebra), in which the addition consists of adding the series term by term, and the multiplication is the Cauchy product.


Basic properties

An infinite series or simply a series is an infinite sum, represented by an infinite expression of the form[2]

_a_₀ + _a_₁ + _a_₂ + ⋯,
where (a_(n)) is any ordered sequence of terms, such as numbers, functions, or anything else that can be added (an abelian group). This is an expression that is obtained from the list of terms a₀, a₁, … by laying them side by side, and conjoining them with the symbol "+". A series may also be represented by using summation notation, such as

$$\sum_{n=0}^{\infty}a_n$$
.

If an abelian group _A_ of terms has a concept of limit (for example, if it is a metric space), then some series, the convergent series, can be interpreted as having a value in _A_, called the _sum of the series_. This includes the common cases from calculus in which the group is the field of real numbers or the field of complex numbers. Given a series $s=\sum_{n=0}^\infty a_n,$ its _k_th PARTIAL SUM is

$$s_k = \sum_{n=0}^{k}a_n = a_0 + a_1 + \cdots + a_k.$$
By definition, the series $\sum_{n=0}^{\infty} a_n$ _converges_ to the limit (or simply _sums_ to ), if the sequence of its partial sums has a limit .[3] In this case, one usually writes

$$L = \sum_{n=0}^{\infty}a_n.$$
A series is said to be _convergent_ if it converges to some limit or _divergent_ when it does not. The value of this limit, if it exists, is then the value of the series.

Convergent series

with partial sums from 1 to 6 terms. The dashed line represents the limit.]] A series is said to converge or to _be convergent_ when the sequence of partial sums has a finite limit. If the limit of is infinite or does not exist, the series is said to diverge.[4] When the limit of partial sums exists, it is called the value (or sum) of the series

    $\sum_{n=0}^\infty a_n = \lim_{k\to\infty} s_k = \lim_{k\to\infty} \sum_{n=0}^k a_n.$

An easy way that an infinite series can converge is if all the _a__(_n_) are zero for _n_ sufficiently large. Such a series can be identified with a finite sum, so it is only infinite in a trivial sense.

Working out the properties of the series that converge even if infinitely many terms are non-zero is the essence of the study of series. Consider the example

$$1 + \frac{1}{2}+ \frac{1}{4}+ \frac{1}{8}+\cdots+ \frac{1}{2^n}+\cdots.$$

It is possible to "visualize" its convergence on the real number line: we can imagine a line of length 2, with successive segments marked off of lengths 1, ½, ¼, etc. There is always room to mark the next segment, because the amount of line remaining is always the same as the last segment marked: when we have marked off ½, we still have a piece of length ½ unmarked, so we can certainly mark the next ¼. This argument does not prove that the sum is _equal_ to 2 (although it is), but it does prove that it is _at most_ 2. In other words, the series has an upper bound. Given that the series converges, proving that it is equal to 2 requires only elementary algebra. If the series is denoted , it can be seen that

$$S/2 = \frac{1+ \frac{1}{2}+ \frac{1}{4}+ \frac{1}{8}+\cdots}{2} = \frac{1}{2}+ \frac{1}{4}+ \frac{1}{8}+ \frac{1}{16} +\cdots.$$

Therefore,

_S_ − _S_/2 = 1 ⇒ _S_ = 2.

The idiom can be extended to other, equivalent notions of series. For instance, a recurring decimal, as in

_x_ = 0.111…
,

encodes the series

$$\sum_{n=1}^\infty \frac{1}{10^n}.$$

Since these series always converge to real numbers (because of what is called the completeness property of the real numbers), to talk about the series in this way is the same as to talk about the numbers for which they stand. In particular, the decimal expansion 0.111... can be identified with ¹/₉. This leads to an argument that , which only relies on the fact that the limit laws for series preserve the arithmetic operations; this argument is presented in the article 0.999....


Examples of numerical series

-   A _geometric series_ is one where each successive term is produced by multiplying the previous term by a constant number (called the common ratio in this context). Example:

$$1 + {1 \over 2} + {1 \over 4} + {1 \over 8} + {1 \over 16} + \cdots=\sum_{n=0}^\infty{1 \over 2^n}.$$

    In general, the geometric series
    $$\sum_{n=0}^\infty z^n$$

    converges if and only if |z| < 1.

-   An _arithmetico-geometric series_ is a generalization of the geometric series, which has coefficients of the common ratio equal to the terms in an arithmetic sequence. Example:

$$3 + {5 \over 2} + {7 \over 4} + {9 \over 8} + {11 \over 16} + \cdots=\sum_{n=0}^\infty{(3+2n) \over 2^n}.$$

-   The _harmonic series_ is the series

$$1 + {1 \over 2} + {1 \over 3} + {1 \over 4} + {1 \over 5} + \cdots = \sum_{n=1}^\infty {1 \over n}.$$

    The harmonic series is divergent.

-   An _alternating series_ is a series where terms alternate signs. Examples:

$$1 - {1 \over 2} + {1 \over 3} - {1 \over 4} + {1 \over 5} - \cdots =\sum_{n=1}^\infty {\left(-1\right)^{n-1} \over n}=\ln(2) \quad$$
(alternating harmonic series)

and

$$-1+\frac{1}{3} - \frac{1}{5} + \frac{1}{7} - \frac{1}{9} + \cdots =\sum_{n=1}^\infty \frac{\left(-1\right)^n}{2n-1} = -\frac{\pi}{4}$$

-   The _p_-series

$$\sum_{n=1}^\infty\frac{1}{n^p}$$

    converges if _p_ > 1 and diverges for _p_ ≤ 1, which can be shown with the integral criterion described below in convergence tests. As a function of _p_, the sum of this series is Riemann's zeta function.

-   A telescoping series

$$\sum_{n=1}^\infty (b_n-b_{n+1})$$

    converges if the sequence _b__(_n_) converges to a limit _L_ as _n_ goes to infinity. The value of the series is then _b_₁ − _L_.

-   There are some elementary series whose convergence is not yet known/proven. For example, it is unknown whether the Flint Hills series

$$\sum_{n=1}^\infty \frac{\csc^{2} n}{n^{3}}$$

    converges or not. The convergence depends on how well π can be approximated with rational numbers (which is unknown as of yet). More specifically, the values of _n_ with large numerical contributions to the sum are the numerators of the continued fraction convergents of π, a sequence beginning with 1, 3, 22, 333, 355, 103993, ... . These are integers that are close to nπ for some integer _n_, so that sin nπ is close to 0 and its reciprocal is large. Alekseyev (2011) proved that if the series converges, then the irrationality measure of π is smaller than 2.5, which is much smaller than the current known bound of 7.6063....[5][6]

π

$$\sum_{i=1}^{\infty} \frac{1}{i^2} = \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \cdots = \frac{\pi^2}{6}$$

$$\sum_{i=1}^\infty \frac{(-1)^{i+1}(4)}{2i-1} = \frac{4}{1} - \frac{4}{3} + \frac{4}{5} - \frac{4}{7} + \frac{4}{9} - \frac{4}{11} + \frac{4}{13} - \cdots = \pi$$

Natural logarithm of 2

$$\sum_{i=1}^\infty \frac{(-1)^{i+1}}{i} = \ln 2$$

$$\sum_{i=0}^\infty \frac{1}{(2i+1)(2i+2)} = \ln 2$$

$$\sum_{i=0}^\infty \frac{(-1)^i}{(i+1)(i+2)} = 2\ln(2) -1$$

$$\sum_{i=1}^\infty \frac{1}{i(4i^2-1)} = 2\ln(2) -1$$

$$\sum_{i=1}^\infty \frac{1}{2^{i}i} = \ln 2$$

$$\sum_{i=1}^\infty \left(\frac{1}{3^i}+\frac{1}{4^i}\right)\frac{1}{i} = \ln 2$$

$$\sum_{i=1}^\infty \frac{1}{2i(2i-1)} = \ln 2$$

Natural logarithm base _e_

$$\sum_{i = 0}^\infty \frac{(-1)^i}{i!} =  1-\frac{1}{1!}+\frac{1}{2!}-\frac{1}{3!}+\cdots = \frac{1}{e}$$

$$\sum_{i = 0}^\infty \frac{1}{i!} = \frac{1}{0!} + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \frac{1}{4!} + \cdots = e$$


Calculus and partial summation as an operation on sequences

Partial summation takes as input a sequence, { _a__(_n_) }, and gives as output another sequence, { _S__(_N_) }. It is thus a unary operation on sequences. Further, this function is linear, and thus is a linear operator on the vector space of sequences, denoted Σ. The inverse operator is the finite difference operator, Δ. These behave as discrete analogs of integration and differentiation, only for series (functions of a natural number) instead of functions of a real variable. For example, the sequence {1, 1, 1, ...} has series {1, 2, 3, 4, ...} as its partial summation, which is analogous to the fact that ∫₀^(x)1 dt = x.

In computer science it is known as prefix sum.


Properties of series

Series are classified not only by whether they converge or diverge, but also by the properties of the terms a_(n) (absolute or conditional convergence); type of convergence of the series (pointwise, uniform); the class of the term a_(n) (whether it is a real number, arithmetic progression, trigonometric function); etc.

Non-negative terms

When _a_(n)_ is a non-negative real number for every _n_, the sequence _S_(N)_ of partial sums is non-decreasing. It follows that a series ∑_a_(n)_ with non-negative terms converges if and only if the sequence _S_(N)_ of partial sums is bounded.

For example, the series

$$\sum_{n = 1}^\infty \frac{1}{n^2}$$

is convergent, because the inequality

$$\frac1 {n^2} \le \frac{1}{n-1} - \frac{1}{n}, \quad n \ge 2,$$

and a telescopic sum argument implies that the partial sums are bounded by 2. The exact value of the original series is the Basel problem.

Absolute convergence

A series

$$\sum_{n=0}^\infty a_n$$
is said to CONVERGE ABSOLUTELY if the series of absolute values

$$\sum_{n=0}^\infty \left|a_n\right|$$
converges. This is sufficient to guarantee not only that the original series converges to a limit, but also that any reordering of it converges to the same limit.

Conditional convergence

A series of real or complex numbers is said to be CONDITIONALLY CONVERGENT (or SEMI-CONVERGENT) if it is convergent but not absolutely convergent. A famous example is the alternating series

$$\sum\limits_{n=1}^\infty {(-1)^{n+1}  \over n} = 1 - {1 \over 2} + {1 \over 3} - {1 \over 4} + {1 \over 5} - \cdots$$

which is convergent (and its sum is equal to ln 2), but the series formed by taking the absolute value of each term is the divergent harmonic series. The Riemann series theorem says that any conditionally convergent series can be reordered to make a divergent series, and moreover, if the _a__(_n_) are real and _S_ is any real number, that one can find a reordering so that the reordered series converges with sum equal to _S_.

Abel's test is an important tool for handling semi-convergent series. If a series has the form

∑_a__(_n_) = ∑_λ__(_n_)_b__(_n_)

where the partial sums _B__(_N_) = are bounded, _λ__(_n_) has bounded variation, and exists:

$$\sup_N \Bigl| \sum_{n=0}^N b_n \Bigr| < \infty, \ \ \sum |\lambda_{n+1} - \lambda_n| < \infty\ \text{and} \ \lambda_n B_n \ \text{converges,}$$

then the series is convergent. This applies to the pointwise convergence of many trigonometric series, as in

$$\sum_{n=2}^\infty \frac{\sin(n x)}{\ln n}$$

with 0 < _x_ < 2π. Abel's method consists in writing _b__(_n_+1) = _B__(_n_+1) − _B__(_n_), and in performing a transformation similar to integration by parts (called summation by parts), that relates the given series to the absolutely convergent series

∑(_λ__(_n_) − _λ__(_n_ + 1)) _B__(_n_).


Convergence tests

There exist many tests that can be used to determine whether particular series converge or diverge.

-   _n-th term test_: If lim_(_n_→∞) _a__(_n_) ≠ 0, then the series diverges; if lim_(_n_→∞) _a__(_n_) = 0, then the test is inconclusive.
-   Comparison test 1 (see Direct comparison test): If ∑_b_(n)_  is an absolutely convergent series such that |_a_(n)_ | ≤ _C_ |_b_(n)_ | for some number _C_  and for sufficiently large _n_ , then ∑_a_(n)_  converges absolutely as well. If ∑|_b_(n)_ | diverges, and |_a_(n)_ | ≥ |_b_(n)_ | for all sufficiently large _n_ , then ∑_a_(n)_  also fails to converge absolutely (though it could still be conditionally convergent, for example, if the _a_(n)_  alternate in sign).
-   Comparison test 2 (see Limit comparison test): If ∑_b_(n)_  is an absolutely convergent series such that |_a_(n+1)_ /_a_(n)_ | ≤ |_b_(n+1)_ /_b_(n)_ | for sufficiently large _n_ , then ∑_a_(n)_  converges absolutely as well. If ∑|_b_(n)_ | diverges, and |_a_(n+1)_ /_a_(n)_ | ≥ |_b_(n+1)_ /_b_(n)_ | for all sufficiently large _n_ , then ∑_a_(n)_  also fails to converge absolutely (though it could still be conditionally convergent, for example, if the _a_(n)_  alternate in sign).
-   Ratio test: If there exists a constant _C_ < 1 such that |_a__(_n_+1)/_a__(_n_)|<_C_ for all sufficiently large _n_, then ∑_a__(_n_) converges absolutely. When the ratio is less than 1, but not less than a constant less than 1, convergence is possible but this test does not establish it.
-   Root test: If there exists a constant _C_ < 1 such that |_a__(_n_)|^(1/_n_) ≤ _C_ for all sufficiently large _n_, then ∑_a__(_n_) converges absolutely.
-   Integral test: if _ƒ_(_x_) is a positive monotone decreasing function defined on the interval [1, ∞) with _ƒ_(_n_) = _a__(_n_) for all _n_, then ∑_a__(_n_) converges if and only if the integral  ∫₁^(∞) _ƒ_(_x_) d_x_ is finite.
-   Cauchy's condensation test: If _a__(_n_) is non-negative and non-increasing, then the two series  ∑_a__(_n_)  and  ∑2^(_k_)_a__((2^(_k_))) are of the same nature: both convergent, or both divergent.
-   Alternating series test: A series of the form ∑(−1)^(_n_) _a__(_n_) (with _a__(_n_) > 0) is called _alternating_. Such a series converges if the sequence _a__(_n_) is monotone decreasing and converges to 0. The converse is in general not true.
-   For some specific types of series there are more specialized convergence tests, for instance for Fourier series there is the Dini test.


Series of functions

A series of real- or complex-valued functions

$$\sum_{n=0}^\infty f_n(x)$$

CONVERGES POINTWISE on a set _E_, if the series converges for each _x_ in _E_ as an ordinary series of real or complex numbers. Equivalently, the partial sums

$$s_N(x) = \sum_{n=0}^N f_n(x)$$
converge to _ƒ_(_x_) as _N_ → ∞ for each _x_ ∈ _E_.

A stronger notion of convergence of a series of functions is called UNIFORM CONVERGENCE. The series converges uniformly if it converges pointwise to the function _ƒ_(_x_), and the error in approximating the limit by the _N_th partial sum,

|_s__(_N_)(_x_) − _f_(_x_)|
can be made minimal _independently_ of _x_ by choosing a sufficiently large _N_.

Uniform convergence is desirable for a series because many properties of the terms of the series are then retained by the limit. For example, if a series of continuous functions converges uniformly, then the limit function is also continuous. Similarly, if the _ƒ__(_n_) are integrable on a closed and bounded interval _I_ and converge uniformly, then the series is also integrable on _I_ and can be integrated term-by-term. Tests for uniform convergence include the Weierstrass' M-test, Abel's uniform convergence test, Dini's test, and the Cauchy criterion.

More sophisticated types of convergence of a series of functions can also be defined. In measure theory, for instance, a series of functions converges almost everywhere if it converges pointwise except on a certain set of measure zero. Other modes of convergence depend on a different metric space structure on the space of functions under consideration. For instance, a series of functions CONVERGES IN MEAN on a set _E_ to a limit function _ƒ_ provided

∫_(_E_)|_s__(_N_)(_x_)−_f_(_x_)|² _d__x_ → 0
as _N_ → ∞.

Power series



A POWER SERIES is a series of the form

$$\sum_{n=0}^\infty a_n(x-c)^n.$$

The Taylor series at a point _c_ of a function is a power series that, in many cases, converges to the function in a neighborhood of _c_. For example, the series

$$\sum_{n=0}^{\infty} \frac{x^n}{n!}$$
is the Taylor series of e^(x) at the origin and converges to it for every _x_.

Unless it converges only at _x_=_c_, such a series converges on a certain open disc of convergence centered at the point _c_ in the complex plane, and may also converge at some of the points of the boundary of the disc. The radius of this disc is known as the radius of convergence, and can in principle be determined from the asymptotics of the coefficients _a__(_n_). The convergence is uniform on closed and bounded (that is, compact) subsets of the interior of the disc of convergence: to wit, it is uniformly convergent on compact sets.

Historically, mathematicians such as Leonhard Euler operated liberally with infinite series, even if they were not convergent. When calculus was put on a sound and correct foundation in the nineteenth century, rigorous proofs of the convergence of series were always required.

Formal power series

While many uses of power series refer to their sums, it is also possible to treat power series as _formal sums_, meaning that no addition operations are actually performed, and the symbol "+" is an abstract symbol of conjunction which is not necessarily interpreted as corresponding to addition. In this setting, the sequence of coefficients itself is of interest, rather than the convergence of the series. Formal power series are used in combinatorics to describe and study sequences that are otherwise difficult to handle, for example, using the method of generating functions. The Hilbert–Poincaré series is a formal power series used to study graded algebras.

Even if the limit of the power series is not considered, if the terms support appropriate structure then it is possible to define operations such as addition, multiplication, derivative, antiderivative for power series "formally", treating the symbol "+" as if it corresponded to addition. In the most common setting, the terms come from a commutative ring, so that the formal power series can be added term-by-term and multiplied via the Cauchy product. In this case the algebra of formal power series is the total algebra of the monoid of natural numbers over the underlying term ring.[7] If the underlying term ring is a differential algebra, then the algebra of formal power series is also a differential algebra, with differentiation performed term-by-term.

Laurent series

Laurent series generalize power series by admitting terms into the series with negative as well as positive exponents. A Laurent series is thus any series of the form

$$\sum_{n=-\infty}^\infty a_n x^n.$$
If such a series converges, then in general it does so in an annulus rather than a disc, and possibly some boundary points. The series converges uniformly on compact subsets of the interior of the annulus of convergence.

Dirichlet series



A Dirichlet series is one of the form

$$\sum_{n=1}^\infty {a_n \over n^s},$$

where _s_ is a complex number. For example, if all _a__(_n_) are equal to 1, then the Dirichlet series is the Riemann zeta function

$$\zeta(s) = \sum_{n=1}^\infty \frac{1}{n^s}.$$

Like the zeta function, Dirichlet series in general play an important role in analytic number theory. Generally a Dirichlet series converges if the real part of _s_ is greater than a number called the abscissa of convergence. In many cases, a Dirichlet series can be extended to an analytic function outside the domain of convergence by analytic continuation. For example, the Dirichlet series for the zeta function converges absolutely when Re _s_ > 1, but the zeta function can be extended to a holomorphic function defined on C \ {1}  with a simple pole at 1.

This series can be directly generalized to general Dirichlet series.

Trigonometric series

A series of functions in which the terms are trigonometric functions is called a TRIGONOMETRIC SERIES:

$$\tfrac12 A_0 + \sum_{n=1}^\infty \left(A_n\cos nx + B_n \sin nx\right).$$
The most important example of a trigonometric series is the Fourier series of a function.


History of the theory of infinite series

Development of infinite series

Greek mathematician Archimedes produced the first known summation of an infinite series with a method that is still used in the area of calculus today. He used the method of exhaustion to calculate the area under the arc of a parabola with the summation of an infinite series, and gave a remarkably accurate approximation of π.[8][9]

Mathematicians from Kerala, India studied infinite series around 1350 CE.[10]

In the 17th century, James Gregory worked in the new decimal system on infinite series and published several Maclaurin series. In 1715, a general method for constructing the Taylor series for all functions for which they exist was provided by Brook Taylor. Leonhard Euler in the 18th century, developed the theory of hypergeometric series and q-series.

Convergence criteria

The investigation of the validity of infinite series is considered to begin with Gauss in the 19th century. Euler had already considered the hypergeometric series

$$1 + \frac{\alpha\beta}{1\cdot\gamma}x + \frac{\alpha(\alpha+1)\beta(\beta+1)}{1 \cdot 2 \cdot \gamma(\gamma+1)}x^2 + \cdots$$
on which Gauss published a memoir in 1812. It established simpler criteria of convergence, and the questions of remainders and the range of convergence.

Cauchy (1821) insisted on strict tests of convergence; he showed that if two series are convergent their product is not necessarily so, and with him begins the discovery of effective criteria. The terms _convergence_ and _divergence_ had been introduced long before by Gregory (1668). Leonhard Euler and Gauss had given various criteria, and Colin Maclaurin had anticipated some of Cauchy's discoveries. Cauchy advanced the theory of power series by his expansion of a complex function in such a form.

Abel (1826) in his memoir on the binomial series

$$1 + \frac{m}{1!}x + \frac{m(m-1)}{2!}x^2 + \cdots$$

corrected certain of Cauchy's conclusions, and gave a completely scientific summation of the series for complex values of m and x. He showed the necessity of considering the subject of continuity in questions of convergence.

Cauchy's methods led to special rather than general criteria, and the same may be said of Raabe (1832), who made the first elaborate investigation of the subject, of De Morgan (from 1842), whose logarithmic test DuBois-Reymond (1873) and Pringsheim (1889) have shown to fail within a certain region; of Bertrand (1842), Bonnet (1843), Malmsten (1846, 1847, the latter without integration); Stokes (1847), Paucker (1852), Chebyshev (1852), and Arndt (1853).

General criteria began with Kummer (1835), and have been studied by Eisenstein (1847), Weierstrass in his various contributions to the theory of functions, Dini (1867), DuBois-Reymond (1873), and many others. Pringsheim's memoirs (1889) present the most complete general theory.

Uniform convergence

The theory of uniform convergence was treated by Cauchy (1821), his limitations being pointed out by Abel, but the first to attack it successfully were Seidel and Stokes (1847–48). Cauchy took up the problem again (1853), acknowledging Abel's criticism, and reaching the same conclusions which Stokes had already found. Thomae used the doctrine (1866), but there was great delay in recognizing the importance of distinguishing between uniform and non-uniform convergence, in spite of the demands of the theory of functions.

Semi-convergence

A series is said to be semi-convergent (or conditionally convergent) if it is convergent but not absolutely convergent.

Semi-convergent series were studied by Poisson (1823), who also gave a general form for the remainder of the Maclaurin formula. The most important solution of the problem is due, however, to Jacobi (1834), who attacked the question of the remainder from a different standpoint and reached a different formula. This expression was also worked out, and another one given, by Malmsten (1847). Schlömilch (_Zeitschrift_, Vol.I, p. 192, 1856) also improved Jacobi's remainder, and showed the relation between the remainder and Bernoulli's function

_F_(_x_) = 1^(_n_) + 2^(_n_) + ⋯ + (_x_ − 1)^(_n_).

Genocchi (1852) has further contributed to the theory.

Among the early writers was Wronski, whose "loi suprême" (1815) was hardly recognized until Cayley (1873) brought it into prominence.

Fourier series

Fourier series were being investigated as the result of physical considerations at the same time that Gauss, Abel, and Cauchy were working out the theory of infinite series. Series for the expansion of sines and cosines, of multiple arcs in powers of the sine and cosine of the arc had been treated by Jacob Bernoulli (1702) and his brother Johann Bernoulli (1701) and still earlier by Vieta. Euler and Lagrange simplified the subject, as did Poinsot, Schröter, Glaisher, and Kummer.

Fourier (1807) set for himself a different problem, to expand a given function of _x_ in terms of the sines or cosines of multiples of _x_, a problem which he embodied in his _Théorie analytique de la chaleur_ (1822). Euler had already given the formulas for determining the coefficients in the series; Fourier was the first to assert and attempt to prove the general theorem. Poisson (1820–23) also attacked the problem from a different standpoint. Fourier did not, however, settle the question of convergence of his series, a matter left for Cauchy (1826) to attempt and for Dirichlet (1829) to handle in a thoroughly scientific manner (see convergence of Fourier series). Dirichlet's treatment (_Crelle_, 1829), of trigonometric series was the subject of criticism and improvement by Riemann (1854), Heine, Lipschitz, Schläfli, and du Bois-Reymond. Among other prominent contributors to the theory of trigonometric and Fourier series were Dini, Hermite, Halphen, Krause, Byerly and Appell.


Generalizations

Asymptotic series

Asymptotic series, otherwise asymptotic expansions, are infinite series whose partial sums become good approximations in the limit of some point of the domain. In general they do not converge. But they are useful as sequences of approximations, each of which provides a value close to the desired answer for a finite number of terms. The difference is that an asymptotic series cannot be made to produce an answer as exact as desired, the way that convergent series can. In fact, after a certain number of terms, a typical asymptotic series reaches its best approximation; if more terms are included, most such series will produce worse answers.

Divergent series

Under many circumstances, it is desirable to assign a limit to a series which fails to converge in the usual sense. A summability method is such an assignment of a limit to a subset of the set of divergent series which properly extends the classical notion of convergence. Summability methods include Cesàro summation, (_C_,_k_) summation, Abel summation, and Borel summation, in increasing order of generality (and hence applicable to increasingly divergent series).

A variety of general results concerning possible summability methods are known. The Silverman–Toeplitz theorem characterizes _matrix summability methods_, which are methods for summing a divergent series by applying an infinite matrix to the vector of coefficients. The most general method for summing a divergent series is non-constructive, and concerns Banach limits.

Series in Banach spaces

The notion of series can be easily extended to the case of a Banach space. If _x__(_n_) is a sequence of elements of a Banach space _X_, then the series Σ_x__(_n_) converges to _x_ ∈ _X_ if the sequence of partial sums of the series tends to _x_; to wit,

$$\biggl\|x - \sum_{n=0}^N x_n\biggr\|\to 0$$
as _N_ → ∞.

More generally, convergence of series can be defined in any abelian Hausdorff topological group. Specifically, in this case, Σ_x__(_n_) converges to _x_ if the sequence of partial sums converges to _x_.

Summations over arbitrary index sets

Definitions may be given for sums over an arbitrary index set .[11] There are two main differences with the usual notion of series: first, there is no specific order given on the set ; second, this set may be uncountable. The notion of convergence needs to be strengthened, because the concept of conditional convergence depends on the ordering of the index set.

If a : I ↦ G is a function from an index set to a set , then the "series" associated to a is the formal sum of the elements a(x) ∈ G over the index elements x ∈ I denoted by the

∑_(_x_ ∈ _I_)_a_(_x_).

When the index set is the natural numbers I = ℕ, the function a : ℕ ↦ G is a sequence denoted by a(n) = a_(n). A series indexed on the natural numbers is an ordered formal sum and so we rewrite ∑_(n ∈ ℕ) as $\sum_{n=0}^{\infty}$ in order to emphasize the ordering induced by the natural numbers. Thus, we obtain the common notation for a series indexed by the natural numbers

$$\sum_{n=0}^{\infty} a_n = a_0 + a_1 + a_2 + \cdots.$$

Families of non-negative numbers

When summing a family {_a__(_i_)}, _i_ ∈ _I_, of non-negative numbers, one may define

$$\sum_{i\in I}a_i = \sup \Bigl\{ \sum_{i\in A}a_i\,\big| A \text{ finite, } A \subset I\Bigr\} \in [0, +\infty].$$

When the supremum is finite, the set of _i_ ∈ _I_ such that _a_(i)_ > 0 is countable. Indeed, for every _n_ ≥ 1, the set A_(n) = {i ∈ I : a_(i) > 1/n} is finite, because

$$\frac 1 n \, \textrm{card}(A_n) \le \sum_{i\in A_n} a_i  \le \sum_{i\in I}a_i < \infty.$$

If _I_  is countably infinite and enumerated as _I_ = {_i_₀, _i_₁,...} then the above defined sum satisfies

$$\sum_{i \in I} a_i = \sum_{k=0}^{+\infty} a_{i_k},$$

provided the value ∞ is allowed for the sum of the series.

Any sum over non-negative reals can be understood as the integral of a non-negative function with respect to the counting measure, which accounts for the many similarities between the two constructions.

Abelian topological groups

Let _a_ : _I_ → _X_, where _I_  is any set and _X_  is an abelian Hausdorff topological group. Let _F_  be the collection of all finite subsets of _I_. Note that _F_  is a directed set ordered under inclusion with union as join. Define the sum _S_  of the family _a_ as the limit

$$S = \sum_{i\in I}a_i = \lim \Bigl\{\sum_{i\in A}a_i\,\big| A\in F\Bigr\}$$

if it exists and say that the family _a_ is unconditionally summable. Saying that the sum _S_  is the limit of finite partial sums means that for every neighborhood _V_  of 0 in _X_, there is a finite subset _A_₀ of _I_  such that

_S_ − ∑_(_i_ ∈ _A_)_a__(_i_) ∈ _V_, _A_ ⊃ _A_₀.

Because _F_  is not totally ordered, this is not a limit of a sequence of partial sums, but rather of a net.[12][13]

For every _W_, neighborhood of 0 in _X_, there is a smaller neighborhood _V_  such that _V_ − _V_ ⊂ _W_. It follows that the finite partial sums of an unconditionally summable family _a_(i)_, _i_ ∈ _I_, form a _Cauchy net_, that is, for every _W_, neighborhood of 0 in _X_, there is a finite subset _A_₀ of _I_  such that

∑_(_i_ ∈ _A_₁)_a__(_i_) − ∑_(_i_ ∈ _A_₂)_a__(_i_) ∈ _W_, _A_₁, _A_₂ ⊃ _A_₀.

When _X_  is complete, a family _a_ is unconditionally summable in _X_  if and only if the finite sums satisfy the latter Cauchy net condition. When _X_  is complete and _a_(i)_, _i_ ∈ _I_, is unconditionally summable in _X_, then for every subset _J_ ⊂ _I_, the corresponding subfamily _a_(j)_, _j_ ∈ _J_, is also unconditionally summable in _X_.

When the sum of a family of non-negative numbers, in the extended sense defined before, is finite, then it coincides with the sum in the topological group _X_ = R.

If a family _a_ in _X_  is unconditionally summable, then for every _W_, neighborhood of 0 in _X_, there is a finite subset _A_₀ of _I_  such that _a__(_i_) ∈ _W_  for every _i_ not in _A_₀. If _X_  is first-countable, it follows that the set of _i_ ∈ _I_  such that _a_(i)_ ≠ 0 is countable. This need not be true in a general abelian topological group (see examples below).

Unconditionally convergent series

Suppose that _I_ = N. If a family _a__(_n_), _n_ ∈ N, is unconditionally summable in an abelian Hausdorff topological group _X_, then the series in the usual sense converges and has the same sum,

$$\sum_{n=0}^\infty a_n = \sum_{n \in \mathbf{N}} a_n.$$

By nature, the definition of unconditional summability is insensitive to the order of the summation. When ∑_a__(_n_) is unconditionally summable, then the series remains convergent after any permutation _σ_ of the set N of indices, with the same sum,

$$\sum_{n=0}^\infty a_{\sigma(n)} = \sum_{n=0}^\infty a_n.$$

Conversely, if every permutation of a series ∑_a__(_n_) converges, then the series is unconditionally convergent. When _X_  is complete, then unconditional convergence is also equivalent to the fact that all subseries are convergent; if _X_  is a Banach space, this is equivalent to say that for every sequence of signs _ε__(_n_) = ±1 , the series

$$\sum_{n=0}^\infty \varepsilon_n a_n$$

converges in _X_. If _X_  is a Banach space, then one may define the notion of absolute convergence. A series ∑_a__(_n_) of vectors in _X_  converges absolutely if

∑_(_n_ ∈ N)∥_a__(_n_)∥ <  + ∞.

If a series of vectors in a Banach space converges absolutely then it converges unconditionally, but the converse only holds in finite-dimensional Banach spaces (theorem of ).

Well-ordered sums

Conditionally convergent series can be considered if _I_ is a well-ordered set, for example, an ordinal number _α_₀. One may define by transfinite recursion:

∑_(_β_ < _α_ + 1)_a__(_β_) = _a__(_α_) + ∑_(_β_ < _α_)_a__(_β_)

and for a limit ordinal _α_,

∑_(_β_ < _α_)_a__(_β_) = lim_(_γ_ → _α_)∑_(_β_ < _γ_)_a__(_β_)

if this limit exists. If all limits exist up to _α_₀, then the series converges.

Examples


See also

-   Continued fraction
-   Convergence tests
-   Convergent series
-   Divergent series
-   Infinite compositions of analytic functions
-   Infinite expression
-   Infinite product
-   Iterated binary operation
-   List of mathematical series
-   Prefix sum
-   Sequence transformation
-   Series expansion
-   Taylor series


Notes


References

-   Bromwich, T. J. _An Introduction to the Theory of Infinite Series_ MacMillan & Co. 1908, revised 1926, reprinted 1939, 1942, 1949, 1955, 1959, 1965.
-   -


External links

-   -   Infinite Series Tutorial
-

Category:Calculus Mathematical_series

[1]

[2]

[3]

[4]

[5] Max A. Alekseyev, On convergence of the Flint Hills series, arXiv:1104.5100, 2011.

[6]

[7] : §III.2.11.

[8]

[9]

[10]

[11]

[12]

[13]