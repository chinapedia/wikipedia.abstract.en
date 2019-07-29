The CAUCHY DISTRIBUTION, named after Augustin Cauchy, is a continuous probability distribution. It is also known, especially among physicists, as the LORENTZ DISTRIBUTION (after Hendrik Lorentz), CAUCHY–LORENTZ DISTRIBUTION, LORENTZ(IAN) FUNCTION, or BREIT–WIGNER DISTRIBUTION. The Cauchy distribution f(x; x₀, γ) is the distribution of the -intercept of a ray issuing from (x₀, γ) with a uniformly distributed angle. It is also the distribution of the ratio of two independent normally distributed random variables if the denominator distribution has mean zero.

The Cauchy distribution is often used in statistics as the canonical example of a "pathological" distribution since both its expected value and its variance are undefined. (But see the section _Explanation of undefined moments_ below.) The Cauchy distribution does not have finite moments of order greater than or equal to one; only fractional absolute moments exist.[1] The Cauchy distribution has no moment generating function.

In mathematics, it is closely related to the Poisson kernel, which is the fundamental solution for the Laplace equation in the upper half-plane. In spectroscopy, it is the description of the shape of spectral lines which are subject to homogeneous broadening in which all atoms interact in the same way with the frequency range contained in the line shape. Many mechanisms cause homogeneous broadening, most notably collision broadening.[2]

It is one of the few distributions that is stable and has a probability density function that can be expressed analytically, the others being the normal distribution and the Lévy distribution.


History

Functions with the form of the density function of the Cauchy distribution were studied by mathematicians in the 17th century, but in a different context and under the title of the witch of Agnesi. Despite its name, the first explicit analysis of the properties of the Cauchy distribution was published by the French mathematician Poisson in 1824, with Cauchy only becoming associated with it during an academic controversy in 1853.[3] As such, the name of the distribution is a case of Stigler's Law of Eponymy. Poisson noted that if the mean of observations following such a distribution were taken, the mean error did not converge to any finite number. As such, Laplace's use of the Central Limit Theorem with such a distribution was inappropriate, as it assumed a finite mean and variance. Despite this, Poisson did not regard the issue as important, in contrast to Bienaymé, who was to engage Cauchy in a long dispute over the matter.


Characterisation

Probability density function

The Cauchy distribution has the probability density function (PDF)[4][5]

$$f(x; x_0,\gamma) = \frac{1}{\pi\gamma \left[1 + \left(\frac{x - x_0}{\gamma}\right)^2\right]} = { 1 \over \pi \gamma } \left[ { \gamma^2 \over (x - x_0)^2 + \gamma^2  } \right],$$

where x₀ is the location parameter, specifying the location of the peak of the distribution, and γ is the scale parameter which specifies the half-width at half-maximum (HWHM), alternatively 2γ is full width at half maximum (FWHM). γ is also equal to half the interquartile range and is sometimes called the probable error. Augustin-Louis Cauchy exploited such a density function in 1827 with an infinitesimal scale parameter, defining what would now be called a Dirac delta function.

The maximum value or amplitude of the Cauchy PDF is $\frac{1}{\pi \gamma}$, located at x = x₀.

It is sometimes convenient to express the PDF in terms of the complex parameter ψ = x₀ + iγ

$$f(x;\psi)=\frac{1}{\pi}\,\textrm{Im}\left(\frac{1}{x-\psi}\right)=\frac{1}{\pi}\,\textrm{Re}\left(\frac{-i}{x-\psi}\right)$$

The special case when x₀ = 0 and γ = 1 is called the STANDARD CAUCHY DISTRIBUTION with the probability density function[6][7]

$$f(x; 0,1) = \frac{1}{\pi (1 + x^2)}. \!$$

In physics, a three-parameter Lorentzian function is often used:

$$f(x; x_0,\gamma,I) = \frac{I}{\left[1 + \left(\frac{x-x_0}{\gamma}\right)^2\right]} = I \left[ { \gamma^2 \over (x - x_0)^2 + \gamma^2  } \right],$$
where I is the height of the peak. The three-parameter Lorentzian function indicated is not, in general, a probability density function, since it does not integrate to 1, except in the special case where $I = \frac{1}{\pi\gamma}.\!$

Cumulative distribution function

The cumulative distribution function of the Cauchy distribution is:

$$F(x; x_0,\gamma)=\frac{1}{\pi} \arctan\left(\frac{x-x_0}{\gamma}\right)+\frac{1}{2}$$

and the quantile function (inverse cdf) of the Cauchy distribution is

$$Q(p; x_0,\gamma) = x_0 + \gamma\,\tan\left[\pi\left(p-\tfrac{1}{2}\right)\right].$$
It follows that the first and third quartiles are (x₀ − γ, x₀ + γ), and hence the interquartile range is 2γ.

For the standard distribution, the cumulative distribution function simplifies to arctangent function arctan (x):

$$F(x; 0,1)=\frac{1}{\pi} \arctan\left(x\right)+\frac{1}{2}$$

Entropy

The entropy of the Cauchy distribution is given by:



\begin{align} H(\gamma) & =-\int_{-\infty}^\infty f(x;x_0,\gamma) \log(f(x;x_0,\gamma)) \, dx \\[6pt] & =\log(4\pi\gamma) \end{align}

The derivative of the quantile function, the quantile density function, for the Cauchy distribution is:

$$Q'(p; \gamma) = \gamma\,\pi\,{\sec}^2\left[\pi\left(p-\tfrac 1 2 \right)\right].\!$$

The differential entropy of a distribution can be defined in terms of its quantile density,[8] specifically:

_H_(_γ_) = ∫₀¹log  (_Q_′(_p_; _γ_)) _d__p_ = log (4_π__γ_)

The Cauchy distribution is the maximum entropy probability distribution for a random variate X for which

E [log (1 + (_X_ − _x_₀)²/_γ_²)] = log 4

or, alternatively, for a random variate X for which

E [log (1 + (_X_ − _x_₀)²)] = 2log (1 + _γ_).

In its standard form, it is the maximum entropy probability distribution for a random variate X for which[9]

E ​[ln(1+_X_²)] = ln 4.


Properties

The Cauchy distribution is an example of a distribution which has no mean, variance or higher moments defined. Its mode and median are well defined and are both equal to x₀.

When U and V are two independent normally distributed random variables with expected value 0 and variance 1, then the ratio U/V has the standard Cauchy distribution.

If Σ is a p × p positive-semidefinite covariance matrix with strictly positive diagonal entries, then for independent and identically distributed X, Y ∼ N(0, Σ) and any random p-vector w independent of X and Y such that w₁ + ⋯ + w_(p) = 1 and w_(i) ≥ 0, i = 1, …, p, (defining a categorical distribution) it holds that

$$\sum_{j=1}^p w_j\frac{X_j}{Y_j}\sim\mathrm{Cauchy}(0,1).$$
[10]

If X₁, …, X_(n) are independent and identically distributed random variables, each with a standard Cauchy distribution, then the sample mean (X₁ + ⋯ + X_(n))/n has the same standard Cauchy distribution. To see that this is true, compute the characteristic function of the sample mean:

$$\varphi_{\overline{X}}(t) = \mathrm{E}\left[e^{i\overline{X}t}\right]$$

where $\overline{X}$ is the sample mean. This example serves to show that the hypothesis of finite variance in the central limit theorem cannot be dropped. It is also an example of a more generalized version of the central limit theorem that is characteristic of all stable distributions, of which the Cauchy distribution is a special case.

The Cauchy distribution is an infinitely divisible probability distribution. It is also a strictly stable distribution.[11]

The standard Cauchy distribution coincides with the Student's _t_-distribution with one degree of freedom.

Like all stable distributions, the location-scale family to which the Cauchy distribution belongs is closed under linear transformations with real coefficients. In addition, the Cauchy distribution is closed under linear fractional transformations with real coefficients.[12] In this connection, see also McCullagh's parametrization of the Cauchy distributions.

Characteristic function

Let X denote a Cauchy distributed random variable. The characteristic function of the Cauchy distribution is given by

_φ__(_X_)(_t_; _x_₀, _γ_) = E [_e_^(_i__X__t_)] = ∫_( − ∞)^(∞)_f_(_x_; _x_₀, _γ_)_e_^(_i__x__t_) _d__x_ = _e_^(_i__x_₀_t_ − _γ_|_t_|).

which is just the Fourier transform of the probability density. The original probability density may be expressed in terms of the characteristic function, essentially by using the inverse Fourier transform:

$$f(x; x_0,\gamma) = \frac{1}{2\pi}\int_{-\infty}^\infty \varphi_X(t;x_0,\gamma)e^{-ixt} \, dt \!$$

The _n_th moment of a distribution is the _n_th derivative of the characteristic function evaluated at t = 0. Observe that the characteristic function is not differentiable at the origin: this corresponds to the fact that the Cauchy distribution does not have well-defined moments higher than the zeroth moment.


Explanation of undefined moments

Mean

If a probability distribution has a density function f(x), then the mean, if it exists, is given by

∫_( − ∞)^(∞)_x__f_(_x_) _d__x_.    (1)​

We may evaluate this two-sided improper integral by computing the sum of two one-sided improper integrals. That is,

∫_(_a_)^(∞)_x__f_(_x_) _d__x_ + ∫_( − ∞)^(_a_)_x__f_(_x_) _d__x_.    (2)​
for an arbitrary real number a.

For the integral to exist (even as an infinite value), at least one of the terms in this sum should be finite, or both should be infinite and have the same sign. But in the case of the Cauchy distribution, both the terms in this sum (2) are infinite and have opposite sign. Hence (1) is undefined, and thus so is the mean.[13]

Note that the Cauchy principal value of the mean of the Cauchy distribution is

lim_(_a_ → ∞)∫_( − _a_)^(_a_)_x__f_(_x_) _d__x_,​

which is zero. On the other hand, the related integral

lim_(_a_ → ∞)∫_( − 2_a_)^(_a_)_x__f_(_x_) _d__x_,​

is _not_ zero, as can be seen easily by computing the integral. This again shows that the mean (1) can not exist.

Various results in probability theory about expected values, such as the strong law of large numbers, fail to hold for the Cauchy distribution.[14]

Higher moments

The Cauchy distribution does not have finite moments of any order. Some of the higher raw moments do exist and have a value of infinity, for example the raw second moment:



\begin{align} \operatorname{E}[X^2] & \propto \int_{-\infty}^\infty \frac{x^2}{1+x^2}\,dx = \int_{-\infty}^\infty 1 - \frac{1}{1+x^2}\,dx \\[8pt] & = \int_{-\infty}^\infty dx - \int_{-\infty}^\infty \frac{1}{1+x^2}\,dx = \int_{-\infty}^\infty dx-\pi = \infty. \end{align}

By re-arranging the formula, one can see that the second moment is essentially the infinite integral of a constant (here 1). Higher even-powered raw moments will also evaluate to infinity. Odd-powered raw moments, however, are undefined, which is distinctly different from existing with the value of infinity. The odd-powered raw moments are undefined because their values are essentially equivalent to ∞ − ∞ since the two halves of the integral both diverge and have opposite signs. The first raw moment is the mean, which, being odd, does not exist. (See also the discussion above about this.) This in turn means that all of the central moments and standardized moments are undefined, since they are all based on the mean. The variance—which is the second central moment—is likewise non-existent (despite the fact that the raw second moment exists with the value infinity).

The results for higher moments follow from Hölder's inequality, which implies that higher moments (or halves of moments) diverge if lower ones do.

Moments of truncated distributions

Consider the truncated distribution defined by restricting the standard Cauchy distribution to the interval . Such a truncated distribution has all moments (and the central limit theorem applies for i.i.d. observations from it); yet for almost all practical purposes it behaves like a Cauchy distribution.[15]


Estimation of parameters

Because the parameters of the Cauchy distribution do not correspond to a mean and variance, attempting to estimate the parameters of the Cauchy distribution by using a sample mean and a sample variance will not succeed.[16] For example, if an i.i.d. sample of size _n_ is taken from a Cauchy distribution, one may calculate the sample mean as:

$$\bar{x}=\frac 1 n \sum_{i=1}^n x_i$$

Although the sample values x_(i) will be concentrated about the central value x₀, the sample mean will become increasingly variable as more observations are taken, because of the increased probability of encountering sample points with a large absolute value. In fact, the distribution of the sample mean will be equal to the distribution of the observations themselves; i.e., the sample mean of a large sample is no better (or worse) an estimator of x₀ than any single observation from the sample. Similarly, calculating the sample variance will result in values that grow larger as more observations are taken.

Therefore, more robust means of estimating the central value x₀ and the scaling parameter γ are needed. One simple method is to take the median value of the sample as an estimator of x₀ and half the sample interquartile range as an estimator of γ. Other, more precise and robust methods have been developed [17][18] For example, the truncated mean of the middle 24% of the sample order statistics produces an estimate for x₀ that is more efficient than using either the sample median or the full sample mean.[19][20] However, because of the fat tails of the Cauchy distribution, the efficiency of the estimator decreases if more than 24% of the sample is used.[21][22]

Maximum likelihood can also be used to estimate the parameters x₀ and γ. However, this tends to be complicated by the fact that this requires finding the roots of a high degree polynomial, and there can be multiple roots that represent local maxima.[23] Also, while the maximum likelihood estimator is asymptotically efficient, it is relatively inefficient for small samples.[24][25] The log-likelihood function for the Cauchy distribution for sample size n is:

$$\hat\ell(\!x_0,\gamma\mid x_1,\dotsc,x_n) = - n \log (\gamma \pi) - \sum_{i=1}^n \log \left(1 + \left(\frac{x_i - x_0}{\gamma}\right)^2\right)$$

Maximizing the log likelihood function with respect to x₀ and γ produces the following system of equations:

$$\sum_{i=1}^n \frac{x_i - x_0}{\gamma^2 + [x_i - \!x_0]^2} = 0$$

$$\sum_{i=1}^n \frac{\gamma^2}{\gamma^2 + [x_i - x_0]^2} - \frac{n}{2} = 0$$

Note that

$$\sum_{i=1}^n \frac{\gamma^2}{\gamma^2 + [x_i - x_0]^2}$$

is a monotone function in γ and that the solution γ must satisfy

min |_x__(_i_) − _x_₀| ≤ _γ_ ≤ max |_x__(_i_) − _x_₀|.

Solving just for x₀ requires solving a polynomial of degree 2n − 1,[26] and solving just for γ requires solving a polynomial of degree n (first for γ², then x₀). Therefore, whether solving for one parameter or for both parameters simultaneously, a numerical solution on a computer is typically required. The benefit of maximum likelihood estimation is asymptotic efficiency; estimating x₀ using the sample median is only about 81% as asymptotically efficient as estimating x₀ by maximum likelihood.[27][28] The truncated sample mean using the middle 24% order statistics is about 88% as asymptotically efficient an estimator of x₀ as the maximum likelihood estimate.[29] When Newton's method is used to find the solution for the maximum likelihood estimate, the middle 24% order statistics can be used as an initial solution for x₀.


Multivariate Cauchy distribution

A random vector X = (X₁, …, X_(k))′ is said to have the multivariate Cauchy distribution if every linear combination of its components Y = a₁X₁ + ⋯ + a_(k)X_(k) has a Cauchy distribution. That is, for any constant vector a ∈ ℝ^(k), the random variable Y = a′X should have a univariate Cauchy distribution.[30] The characteristic function of a multivariate Cauchy distribution is given by:

_φ__(_X_)(_t_) = _e_^(_i__x_₀(_t_) − _γ_(_t_)),​

where x₀(t) and γ(t) are real functions with x₀(t) a homogeneous function of degree one and γ(t) a positive homogeneous function of degree one.[31] More formally:[32]

_x_₀(_a__t_) = _a__x_₀(_t_),

_γ_(_a__t_) = |_a_|_γ_(_t_),

for all t.

An example of a bivariate Cauchy distribution can be given by:[33]

$$f(x, y; x_0,y_0,\gamma)= { 1 \over 2 \pi } \left[ { \gamma \over ((x - x_0)^2 + (y - y_0)^2 +\gamma^2)^{1.5}  } \right] .$$
Note that in this example, even though there is no analogue to a covariance matrix, x and y are not statistically independent.[34]

We also can write this formula for complex variable. Then the probability density function of complex cauchy is :

$f(z; z_0,\gamma)= { 1 \over 2 \pi } \left[ { \gamma \over (|z-z_0|^2 +\gamma^2)^{1.5}  } \right] .$

Analogous to the univariate density, the multidimensional Cauchy density also relates to the multivariate Student distribution. They are equivalent when the degrees of freedom parameter is equal to one. The density of a k dimension Student distribution with one degree of freedom becomes:

$$f({\mathbf x}; {\mathbf\mu},{\mathbf\Sigma}, k)= \frac{\Gamma\left(\frac{1+k}{2}\right)}{\Gamma(\frac{1}{2})\pi^{\frac{k}{2}}\left|{\mathbf\Sigma}\right|^{\frac{1}{2}}\left[1+({\mathbf x}-{\mathbf\mu})^T{\mathbf\Sigma}^{-1}({\mathbf x}-{\mathbf\mu})\right]^{\frac{1+k}{2}}} .$$

Properties and details for this density can be obtained by taking it as a particular case of the multivariate Student density.


Transformation properties

-   If X ∼ Cauchy (x₀, γ)  then kX + ℓ ∼ Cauchy(x₀k + ℓ, γ|k|)[35]
-   If X ∼ Cauchy (x₀, γ₀)  and Y ∼ Cauchy (x₁, γ₁)  are independent, then X + Y ∼ Cauchy (x₀ + x₁, γ₀ + γ₁)  and X − Y ∼ Cauchy (x₀ − x₁, γ₀ + γ₁) 
-   If X ∼ Cauchy (0, γ)  then $\tfrac{1}{X} \sim \operatorname{Cauchy}(0,\tfrac{1}{\gamma})\,$
-   McCullagh's parametrization of the Cauchy distributions:[36] Expressing a Cauchy distribution in terms of one complex parameter ψ = x₀ + iγ, define X ∼ Cauchy (ψ) to mean X ∼ Cauchy (x₀, |γ|). If X ∼ Cauchy (ψ) then:



        $\frac{aX+b}{cX+d} \sim \operatorname{Cauchy}\left(\frac{a\psi+b}{c\psi+d}\right)$

where a, b, c and d are real numbers.

-   Using the same convention as above, if X ∼ Cauchy (ψ) then:[37]



        $\frac{X-i}{X+i} \sim \operatorname{CCauchy}\left(\frac{\psi-i}{\psi+i}\right)$

    where CCauchy  is the circular Cauchy distribution.


Lévy measure

The Cauchy distribution is the stable distribution of index 1. The Lévy–Khintchine representation of such a stable distribution of parameter γ is given, for X ∼ Stable (γ, 0, 0)  by:

    E (e^(ixX)) = exp (∫_(ℝ)(e^(ixy)−1)Π_(γ)(dy))

where

$$\Pi_\gamma(dy) = \left( c_{1, \gamma}  \frac{1}{y^{1 + \gamma}} 1_{ \left\{y > 0\right\} } + c_{2,\gamma}  \frac{1}{|y|^{1 + \gamma}} 1_{\left\{ y < 0 \right\}} \right) \, dy$$

and c_(1, γ), c_(2, γ) can be expressed explicitly.[38] In the case γ = 1 of the Cauchy distribution, one has c_(1, γ) = c_(2, γ).

This last representation is a consequence of the formula

    $|x| = \int_{\mathbb{R}} (1 - e^{ixy}) \, \frac{dy}{y^2}$


Related distributions

-   Cauchy (0, 1) ∼ t(df = 1)  Student's _t_ distribution
-   Cauchy (μ, σ) ∼ t_((df = 1))(μ, σ)  non-standardized Student's _t_ distribution
-   If X, Y ∼ N(0, 1) X, Y independent, then $\tfrac X Y\sim \textrm{Cauchy}(0,1)\,$
-   If X ∼ U(0, 1)  then $\tan \left( \pi \left(X-\tfrac{1}{2}\right) \right) \sim \textrm{Cauchy}(0,1)\,$
-   If X ∼ Log-Cauchy (0, 1) then ln (X) ∼ Cauchy(0, 1)
-   The Cauchy distribution is a limiting case of a Pearson distribution of type 4
-   The Cauchy distribution is a special case of a Pearson distribution of type 7.[39]
-   The Cauchy distribution is a stable distribution: if X ∼ Stable(1, 0, γ, μ), then X ∼ Cauchy (μ, γ).
-   The Cauchy distribution is a singular limit of a hyperbolic distribution
-   The wrapped Cauchy distribution, taking values on a circle, is derived from the Cauchy distribution by wrapping it around the circle.


Relativistic Breit–Wigner distribution

In nuclear and particle physics, the energy profile of a resonance is described by the relativistic Breit–Wigner distribution, while the Cauchy distribution is the (non-relativistic) Breit–Wigner distribution.


Occurrence and applications

-   Applications of the Cauchy distribution or its transformation can be found in fields working with exponential growth. A 1958 paper by White White, J.S. (1958) The Limiting Distribution of the Serial Correlation Coefficient in the Explosive Case. The Annals of Mathematical Statistics, 29, 1188-1197.

https://doi.org/10.1214/aoms/1177706450 derived the test statistic for estimators of β̂ for the equation x_(t + 1) = βx_(t) + ε_(t + 1), β > 1 and where the maximum likelihood estimator is found using ordinary least squares showed the sampling distribution of the statistic is the Cauchy distribution. Cauchy_distribution.png, see also distribution fitting [40]]]

-   Outside of finance, the Cauchy distribution is often the distribution of observations for objects that are spinning. The classic reference for this is called the Gull's lighthouse problem[41] and as in the above section as the Breit–Wigner distribution in particle physics.

-   In hydrology the Cauchy distribution is applied to extreme events such as annual maximum one-day rainfalls and river discharges. The blue picture illustrates an example of fitting the Cauchy distribution to ranked monthly maximum one-day rainfalls showing also the 90% confidence belt based on the binomial distribution. The rainfall data are represented by plotting positions as part of the cumulative frequency analysis.
-   The expression for imaginary part of complex electrical permittivity according to Lorentz model is a Cauchy distribution.


See also

-   Lévy flight and Lévy process
-   Cauchy process
-   Stable process
-   Slash distribution


References


External links

-   -   Earliest Uses: The entry on Cauchy distribution has some historical information.
-   -   GNU Scientific Library – Reference Manual
-   Ratios of Normal Variables by George Marsaglia

Category:Continuous distributions Category:Probability distributions with non-finite variance Category:Power laws Category:Stable distributions Category:Location-scale family probability distributions

[1] , Chapter 16.

[2]

[3] Cauchy and the Witch of Agnesi in _Statistics on the Table_, S M Stigler Harvard 1999 Chapter 18

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

[15] .

[16] Illustration of instability of sample means

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

[36] McCullagh, P., "Conditional inference and Cauchy models", _Biometrika_, volume 79 (1992), pages 247–259. PDF from McCullagh's homepage.

[37]

[38]

[39]

[40] CumFreq, free software for cumulative frequency analysis and probability distribution fitting 1

[41] Gull, S.F. (1988) Bayesian Inductive Inference and Maximum Entropy. Kluwer Academic Publishers, Berlin. https://doi.org/10.1007/978-94-009-3049-0_4