SkewedDistribution.png

In probability theory and statistics, SKEWNESS is a measure of the asymmetry of the probability distribution of a real-valued random variable about its mean. The skewness value can be positive or negative, or undefined.

For a unimodal distribution, negative skew commonly indicates that the _tail_ is on the left side of the distribution, and positive skew indicates that the tail is on the right. In cases where one tail is long but the other tail is fat, skewness does not obey a simple rule. For example, a zero value means that the tails on both sides of the mean balance out overall; this is the case for a symmetric distribution, but can also be true for an asymmetric distribution where one tail is long and thin, and the other is short but fat.


Introduction

Consider the two distributions in the figure just below. Within each graph, the values on the right side of the distribution taper differently from the values on the left side. These tapering sides are called _tails_, and they provide a visual means to determine which of the two kinds of skewness a distribution has:

1.  __: The left tail is longer; the mass of the distribution is concentrated on the right of the figure. The distribution is said to be _left-skewed_, _left-tailed_, or _skewed to the left_, despite the fact that the curve itself appears to be skewed or leaning to the right; _left_ instead refers to the left tail being drawn out and, often, the mean being skewed to the left of a typical center of the data. A left-skewed distribution usually appears as a _right-leaning_ curve.[1]
2.  __: The right tail is longer; the mass of the distribution is concentrated on the left of the figure. The distribution is said to be _right-skewed_, _right-tailed_, or _skewed to the right_, _despite_ the fact that the curve itself appears to be skewed or leaning to the left; _right_ instead refers to the right tail being drawn out and, often, the mean being skewed to the right of a typical center of the data. A right-skewed distribution usually appears as a _left-leaning_ curve.[2]

Image:Negative and positive skew diagrams (English).svg

Skewness in a data series may sometimes be observed not only graphically but by simple inspection of the values. For instance, consider the numeric sequence (49, 50, 51), whose values are evenly distributed around a central value of 50. We can transform this sequence into a negatively skewed distribution by adding a value far below the mean, e.g. (40, 49, 50, 51). Similarly, we can make the sequence positively skewed by adding a value far above the mean, e.g. (49, 50, 51, 60).


Relationship of mean and median

The skewness is not directly related to the relationship between the mean and median: a distribution with negative skew can have its mean greater than or less than the median, and likewise for positive skew.[3]

In the older notion of nonparametric skew, defined as (μ − ν)/σ, where μ is the mean, ν is the median, and σ is the standard deviation, the skewness is defined in terms of this relationship: positive/right nonparametric skew means the mean is greater than (to the right of) the median, while negative/left nonparametric skew means the mean is less than (to the left of) the median. However, the modern definition of skewness and the traditional nonparametric definition do not in general have the same sign: while they agree for some families of distributions, they differ in general, and conflating them is misleading.

If the distribution is symmetric, then the mean is equal to the median, and the distribution has zero skewness.[4] If the distribution is both symmetric and unimodal, then the mean = median = mode. This is the case of a coin toss or the series 1,2,3,4,... Note, however, that the converse is not true in general, i.e. zero skewness does not imply that the mean is equal to the median.

A 2005 journal article points out:[5]

  Many textbooks, teach a rule of thumb stating that the mean is right of the median under right skew, and left of the median under left skew. This rule fails with surprising frequency. It can fail in multimodal distributions, or in distributions where one tail is long but the other is heavy. Most commonly, though, the rule fails in discrete distributions where the areas to the left and right of the median are not equal. Such distributions not only contradict the textbook relationship between mean, median, and skew, they also contradict the textbook interpretation of the median.


Definition

Pearson's moment coefficient of skewness

The skewness of a random variable _X_ is the third standardized moment _γ_₁, defined as:[6][7]

$$\gamma_1 = \operatorname{E}\left[\left(\frac{X-\mu}{\sigma}\right)^3 \right]
             = \frac{\mu_3}{\sigma^3}
             = \frac{\operatorname{E}\left[(X-\mu)^3\right]}{( \operatorname{E}\left[ (X-\mu)^2 \right] )^{3/2}}
             = \frac{\kappa_3}{\kappa_2^{3/2}}$$
where _μ_ is the mean, _σ_ is the standard deviation, E is the expectation operator, _μ_₃ is the third central moment, and _κ__(_t_) are the _t_-th cumulants. It is sometimes referred to as PEARSON'S MOMENT COEFFICIENT OF SKEWNESS,[8] or simply the MOMENT COEFFICIENT OF SKEWNESS,[9] but should not be confused with Pearson's other skewness statistics (see below). The last equality expresses skewness in terms of the ratio of the third cumulant _κ_₃ to the 1.5th power of the second cumulant _κ_₂. This is analogous to the definition of kurtosis as the fourth cumulant normalized by the square of the second cumulant. The skewness is also sometimes denoted Skew[_X_].

If _σ_ is finite, _μ_ is finite too and skewness can be expressed in terms of the non-central moment E[_X_³] by expanding the previous formula,

$$\begin{align}
    \gamma_1
     &= \operatorname{E}\left[\left(\frac{X-\mu}{\sigma}\right)^3 \right] \\
     &= \frac{\operatorname{E}[X^3] - 3\mu\operatorname E[X^2] + 3\mu^2\operatorname E[X] - \mu^3}{\sigma^3}\\
     &= \frac{\operatorname{E}[X^3] - 3\mu(\operatorname E[X^2] -\mu\operatorname E[X]) - \mu^3}{\sigma^3}\\
     &= \frac{\operatorname{E}[X^3] - 3\mu\sigma^2 - \mu^3}{\sigma^3}.
\end{align}$$

Examples

Skewness can be infinite, as when

Pr [_X_>_x_] = _x_^( − 2) for _x_ > 1, Pr [_X_ < 1] = 0
where the third cumulants are infinite, or as when

Pr [_X_ < _x_] = (1 − _x_)^( − 3)/2 for negative _x_ and Pr [_X_ > _x_] = (1 + _x_)^( − 3)/2 for positive _x_.
where the third cumulant is undefined.

Examples of distributions with finite skewness include the following.

-   A normal distribution and any other symmetric distribution with finite third moment has a skewness of 0
-   A half-normal distribution has a skewness just below 1
-   An exponential distribution has a skewness of 2
-   A lognormal distribution can have a skewness of any positive value, depending on its parameters

Properties

Starting from a standard cumulant expansion around a normal distribution, one can show that

    skewness =  + _O_ (skewness²).

If _Y_ is the sum of _n_ independent and identically distributed random variables, all with the distribution of _X_, then the third cumulant of _Y_ is _n_ times that of _X_ and the second cumulant of _Y_ is _n_ times that of _X_, so $\mbox{Skew}[Y] = \mbox{Skew}[X]/\sqrt{n}$. This shows that the skewness of the sum is smaller, as it approaches a Gaussian distribution in accordance with the central limit theorem. Note that the assumption that the variables be independent for the above formula is very important because it is possible even for the sum of two Gaussian variables to have a skewed distribution (see this example).

Sample skewness

For a sample of _n_ values, a natural method of moments estimator of the population skewness is[10]



   b_1 = \frac{m_3}{s^3}
       = \frac{\tfrac{1}{n} \sum_{i=1}^n (x_i-\overline{x})^3}{ \sqrt{\tfrac{1}{n-1} \sum_{i=1}^n (x_i-\overline{x})^2}^{\,3}}
       = \frac{\tfrac{1}{n} \sum_{i=1}^n (x_i-\overline{x})^3}{\left[\tfrac{1}{n-1} \sum_{i=1}^n (x_i-\overline{x})^2\right]^{3/2}}\ ,
 

where $\overline{x}$ is the sample mean, _s_ is the sample standard deviation, and the numerator _m_₃ is the sample third central moment. This formula can be thought of as the average cubed deviation in the sample divided by the cubed sample standard deviation.

Another common definition of the _sample skewness_ is[11][12]

$\begin{align}
G_1 & = \frac{k_3}{k_2^{3/2}} = \frac{n^2}{(n-1)(n-2)}\; \frac{m_3}{s^3} \\
& = \frac{\sqrt{n\left( n-1 \right)}}{n-2}\frac{{{m}_{3}}}{{{m}_{2}}^{\frac{3}{2}}} =  \frac{\sqrt{n\left( n-1 \right)}}{n-2}\left[ \frac{\frac{1}{n}\sum\limits_{i=1}^{n}{{{\left( {{x}_{i}}-\bar{x} \right)}^{3}}}}{{{\left( \frac{1}{n}\sum\limits_{i=1}^{n}{{{\left( {{x}_{i}}-\bar{x} \right)}^{2}}} \right)}^{\frac{3}{2}}}} \right], \\
\end{align}$

where k₃ is the unique symmetric unbiased estimator of the third cumulant and k₂ = s² is the symmetric unbiased estimator of the second cumulant (i.e. the variance).

In general, the ratios b₁ and G₁ are both biased estimators of the population skewness γ₁; their expected values can even have the opposite sign from the true skewness. (For instance, a mixed distribution consisting of very thin Gaussians centred at −99, 0.5, and 2 with weights 0.01, 0.66, and 0.33 has a skewness of about −9.77, but in a sample of 3, G₁ has an expected value of about 0.32, since usually all three samples are in the positive-valued part of the distribution, which is skewed the other way.) Nevertheless, b₁ and G₁ each have obviously the correct expected value of zero for any symmetric distribution with a finite third moment, including a normal distribution.

Under the assumption that the underlying random variable X is normally distributed, it can be shown that $\sqrt{n} b_1 \xrightarrow{d} N(0, 6)$, i.e., its distribution converges to a Normal distribution with mean 0 and variance 6. The variance of the skewness of a random sample of size _n_ from a normal distribution is[13][14]

    $\operatorname{var}(G_1)= \frac{6n ( n - 1 )}{ ( n - 2 )( n + 1 )( n + 3 ) } .$

An approximate alternative is 6/_n_, but this is inaccurate for small samples.

In normal samples, b₁ has the smaller variance of the two estimators, with

    $\operatorname{var}(b_1) < \operatorname{var} \left( \frac{m_3}{m_2^{3/2}} \right) < \operatorname{var}(G_1),$

where _m_₂ in the denominator is the (biased) sample second central moment.[15]

The adjusted Fisher–Pearson standardized moment coefficient G₁ is the version found in Excel and several statistical packages including Minitab, SAS and SPSS.[16]


Applications

Skewness is a descriptive statistic that can be used on conjunction with the histogram and the normal quantile plot to characterize the data or distribution.

Skewness indicates which direction and a relative magnitude of how far a distribution deviates from normal.

With pronounced skewness, standard statistical inference procedures such as a confidence interval for a mean will be not only incorrect, in the sense of having true coverage level unequal to the nominal (e.g., 95%) level, but also with unequal error probabilities on each side.

Skewness can be used to obtain approximate probabilities and quantiles of distributions (such as the value at risk in finance) via the Cornish-Fisher expansion.

Many models assume normal distribution; i.e., data are symmetric about the mean. The normal distribution has a skewness of zero. But in reality, data points may not be perfectly symmetric. So, an understanding of the skewness of the dataset indicates whether deviations from the mean are going to be positive or negative.

D'Agostino's K-squared test is a goodness-of-fit normality test based on sample skewness and sample kurtosis.


Other measures of skewness

Comparison_mean_median_mode.svg, median and mode of two log-normal distributions with different skewnesses.]]

Other measures of skewness have been used, including simpler calculations suggested by Karl Pearson[17] (not to be confused with Pearson's moment coefficient of skewness, see above). These other measures are:

Pearson's first skewness coefficient (mode skewness)

The Pearson mode skewness,[18] or first skewness coefficient, is defined as

    .

Pearson's second skewness coefficient (median skewness)

The Pearson median skewness, or second skewness coefficient,[19][20] is defined as

    .

Which is a simple multiple of the nonparametric skew.

Quartile-based measures

Bowley's measure of skewness (from 1901),[21][22] also called Yule's coefficient (from 1912)[23][24] is defined as:

$$B_1 = \frac{{{Q}_{3}}+{{Q}_{1}}-2{{Q}_{2}}}{{{Q}_{3}}-{{Q}_{1}}}$$
. When writing it as $\frac{\frac{{{Q}_{3}}+{{Q}_{1}}}{2}-{{Q}_{2}}}{\frac{{{Q}_{3}}-{{Q}_{1}}}{2}}$, it is easier to see that the numerator is the average of the upper and lower quartiles (a measure of location) minus the median while the denominator is (Q3-Q1)/2 which (for symmetric distributions) is the MAD measure of dispersion.

Other names for this measure are Galton's measure of skewness,[25] the Yule–Kendall index[26] and the quartile skewness ,

A more general formulation of a skewness function was described by Groeneveld, R. A. and Meeden, G. (1984):[27][28][29]

$$\gamma( u )= \frac{ F^{ -1 }( u ) +F^{ -1 }( 1 - u )-2F^{ -1 }( 1 / 2 ) }{F^{ -1 }( u ) -F^{ -1 }( 1 - u ) }$$
where _F_ is the cumulative distribution function. This leads to a corresponding overall measure of skewness[30] defined as the supremum of this over the range 1/2 ≤ _u_ < 1. Another measure can be obtained by integrating the numerator and denominator of this expression.[31] The function _γ_(_u_) satisfies −1 ≤ _γ_(_u_) ≤ 1 and is well defined without requiring the existence of any moments of the distribution.[32] Quantile-based skewness measures are at first glance easy to interpret, but they often show significantly larger sample variations, than moment-based methods. This means that often samples from a symmetric distribution (like the uniform distribution) have a large quantile-based skewness, just by chance.

Bowley's measure of skewness is γ(_u_) evaluated at _u_ = 3/4. Kelley's measure of skewness uses _u_ = 0.1.[33]

Groeneveld & Meeden’s coefficient

Groeneveld & Meeden have suggested, as an alternative measure of skewness,[34]

    $B_3 = \mathrm{skew}(X) = \frac{( \mu - \nu ) }{ E( | X - \nu | ) },$

where _μ_ is the mean, _ν_ is the median, |...| is the absolute value, and _E_() is the expectation operator. This is closely related in form to Pearson's second skewness coefficient.

L-moments

Use of L-moments in place of moments provides a measure of skewness known as the L-skewness.[35]

Distance skewness

A value of skewness equal to zero does not imply that the probability distribution is symmetric. Thus there is a need for another measure of asymmetry that has this property: such a measure was introduced in 2000.[36] It is called DISTANCE SKEWNESS and denoted by dSkew. If _X_ is a random variable taking values in the _d_-dimensional Euclidean space, _X_ has finite expectation, _X_{{'}} is an independent identically distributed copy of _X_, and ∥ ⋅ ∥ denotes the norm in the Euclidean space, then a simple _measure of asymmetry_ with respect to location parameter θ is



\operatorname{dSkew}(X) := 1 - \frac{\operatorname{E}\|X-X'\|}{\operatorname{E}\|X+X'-2 \theta\|} \text{ if } \Pr(X=\theta)\ne 1 and dSkew(_X_) := 0 for _X_ = θ (with probability 1). Distance skewness is always between 0 and 1, equals 0 if and only if _X_ is diagonally symmetric with respect to θ (_X_ and 2θ−_X_ have the same probability distribution) and equals 1 if and only if X is a constant _c_ (c ≠ θ) with probability one.[37] Thus there is a simple consistent statistical test of diagonal symmetry based on the SAMPLE DISTANCE SKEWNESS:



\operatorname{dSkew}_n(X):= 1 - \frac{\sum_{i,j} \|x_i-x_j\| }{\sum_{i,j} \|x_i+x_j-2\theta \|}.

Medcouple

The medcouple is a scale-invariant robust measure of skewness, with a breakdown point of 25%.[38] It is the median of the values of the kernel function

    $h(x_i, x_j) = \frac{ (x_i - x_m) - (x_m - x_j)}{x_i - x_j}$

taken over all couples (x_(i), x_(j)) such that x_(i) ≥ x_(m) ≥ x_(j), where x_(m) is the median of the sample {x₁, x₂, …, x_(n)}. It can be seen as the median of all possible quantile skewness measures.


See also

-   Bragg peak
-   Coskewness
-   Shape parameters
-   Skew normal distribution
-   Skewness risk


References

Citations

Sources

-   Johnson, NL, Kotz, S, Balakrishnan N (1994) _Continuous Univariate Distributions, Vol 1, 2nd Edition_ Wiley. .
-   -   Premaratne, G., Bera, A. K. (2001). Adjusting the Tests for Skewness and Kurtosis for Distributional Misspecifications. Working Paper Number 01-0116, University of Illinois. Forthcoming in Comm in Statistics, Simulation and Computation. 2016 1-15
-   Premaratne, G., Bera, A. K. (2000). Modeling Asymmetry and Excess Kurtosis in Stock Return Data. Office of Research Working Paper Number 00-0123, University of Illinois.
-   Skewness Measures for the Weibull Distribution


External links

-   -   An Asymmetry Coefficient for Multivariate Distributions by Michel Petitjean
-   On More Robust Estimation of Skewness and Kurtosis Comparison of skew estimators by Kim and White.
-   Closed-skew Distributions — Simulation, Inversion and Parameter Estimation

{{-}}

Category:Moment (mathematics) Category:Statistical deviation and dispersion

[1] Susan Dean, Barbara Illowsky "Descriptive Statistics: Skewness and the Mean, Median, and Mode", Connexions website

[2]

[3]

[4]

[5]

[6]

[7]

[8] Pearson's moment coefficient of skewness, FXSolver.com

[9] "Measures of Shape: Skewness and Kurtosis", 2008–2016 by Stan Brown, Oak Road Systems

[10]

[11]

[12] Doane, David P., and Lori E. Seward. "Measuring skewness: a forgotten statistic." Journal of Statistics Education 19.2 (2011): 1-18. (Page 7)

[13] Duncan Cramer (1997) Fundamental Statistics for Social Research. Routledge. (p 85)

[14] Kendall, M.G.; Stuart, A. (1969) _The Advanced Theory of Statistics, Volume 1: Distribution Theory, 3rd Edition_, Griffin. (Ex 12.9)

[15]

[16] Doane DP, Seward LE (2011) J Stat Educ 19 (2)

[17]

[18]

[19]

[20] Doane, David P., and Lori E. Seward. "Measuring Skewness: A Forgotten Statistic?" Journal of Statistics Education 19.2 (2011): 1-18.

[21] Bowley, A. L. (1901). Elements of Statistics, P.S. King & Son, Laondon. Or in a later edition: BOWLEY, AL. "Elements of Statistics, 4th Edn (New York, Charles Scribner)."(1920).

[22] Kenney JF and Keeping ES (1962) _Mathematics of Statistics, Pt. 1, 3rd ed._, Van Nostrand, (page 102).

[23] Yule, George Udny. An introduction to the theory of statistics. C. Griffin, limited, 1912.

[24] Groeneveld, Richard A. "An influence function approach to describing the skewness of a distribution." The American Statistician 45.2 (1991): 97-102.

[25] Johnson _et al_ (1994) p 3, p 40

[26] Wilks DS (1995) _Statistical Methods in the Atmospheric Sciences_, p 27. Academic Press.

[27]

[28] MacGillivray (1992)

[29] Hinkley DV (1975) "On power transformations to symmetry", ''Biometrika, 62, 101–111

[30] MacGillivray (1992)

[31]

[32]

[33]

[34]

[35]

[36] Szekely, G.J. (2000). "Pre-limit and post-limit theorems for statistics", In: _Statistics for the 21st Century_ (eds. C. R. Rao and G. J. Szekely), Dekker, New York, pp. 411–422.

[37] Szekely, G. J. and Mori, T. F. (2001) "A characteristic measure of asymmetry and its application for testing diagonal symmetry", _Communications in Statistics – Theory and Methods_ 30/8&9, 1633–1639.

[38]