In probability theory and statistics, KURTOSIS (from , _kyrtos_ or _kurtos_, meaning "curved, arching") is a measure of the "tailedness" of the probability distribution of a real-valued random variable. In a similar way to the concept of skewness, kurtosis is a descriptor of the shape of a probability distribution and, just as for skewness, there are different ways of quantifying it for a theoretical distribution and corresponding ways of estimating it from a sample from a population. Depending on the particular measure of kurtosis that is used, there are various interpretations of kurtosis, and of how particular measures should be interpreted.

The standard measure of kurtosis, originating with Karl Pearson, is based on a scaled version of the fourth moment of the data or population. This number is related to the tails of the distribution, not its peak;[1] hence, the sometimes-seen characterization as "peakedness" is mistaken. For this measure, higher kurtosis is the result of infrequent extreme deviations (or outliers), as opposed to frequent modestly sized deviations.

The kurtosis of any univariate normal distribution is 3. It is common to compare the kurtosis of a distribution to this value. Distributions with kurtosis less than 3 are said to be _platykurtic_, although this does not imply the distribution is "flat-topped" as sometimes reported. Rather, it means the distribution produces fewer and less extreme outliers than does the normal distribution. An example of a platykurtic distribution is the uniform distribution, which does not produce outliers. Distributions with kurtosis greater than 3 are said to be _leptokurtic_. An example of a leptokurtic distribution is the Laplace distribution, which has tails that asymptotically approach zero more slowly than a Gaussian, and therefore produces more outliers than the normal distribution. It is also common practice to use an adjusted version of Pearson's kurtosis, the excess kurtosis, which is the kurtosis minus 3, to provide the comparison to the normal distribution. Some authors use "kurtosis" by itself to refer to the excess kurtosis. For the reason of clarity and generality, however, this article follows the non-excess convention and explicitly indicates where excess kurtosis is meant.

Alternative measures of kurtosis are: the L-kurtosis, which is a scaled version of the fourth L-moment; measures based on four population or sample quantiles.[2] These are analogous to the alternative measures of skewness that are not based on ordinary moments.[3]


Pearson moments

The kurtosis is the fourth standardized moment, defined as



\operatorname{Kurt}[X] = \operatorname{E}\left[\left(\frac{X - \mu}{\sigma}\right)^4\right] = \frac{\mu_4}{\sigma^4} = \frac{\operatorname{E}[(X-\mu)^4]}{(\operatorname{E}[(X-\mu)^2])^2}, where _μ_₄ is the fourth central moment and σ is the standard deviation. Several letters are used in the literature to denote the kurtosis. A very common choice is _κ_, which is fine as long as it is clear that it does not refer to a cumulant. Other choices include _γ_₂, to be similar to the notation for skewness, although sometimes this is instead reserved for the excess kurtosis.

The kurtosis is bounded below by the squared skewness plus 1:[4]

$$\frac{\mu_4}{\sigma^4} \geq \left(\frac{\mu_3}{\sigma^3}\right)^2 + 1,$$
where _μ_₃ is the third central moment. The lower bound is realized by the Bernoulli distribution. There is no upper limit to the excess kurtosis of a general probability distribution, and it may be infinite.

A reason why some authors favor the excess kurtosis is that cumulants are extensive. Formulas related to the extensive property are more naturally expressed in terms of the excess kurtosis. For example, let _X_₁, ..., _X__(_n_) be independent random variables for which the fourth moment exists, and let _Y_ be the random variable defined by the sum of the _X__(_i_). The excess kurtosis of _Y_ is

$$\operatorname{Kurt}[Y] - 3 =  \frac{1}{( \sum_{j=1}^n \sigma_j^{\,2})^2} \sum_{i=1}^n \sigma_i^{\,4} \cdot \left(\operatorname{Kurt}[X_i] - 3\right),$$
where σ_(i) is the standard deviation of X_(i). In particular if all of the _X__(_i_) have the same variance, then this simplifies to

$$\operatorname{Kurt}[Y] - 3 = {1 \over n^2} \sum_{i=1}^n (\operatorname{Kurt}[X_i] - 3).$$

The reason not to subtract off 3 is that the bare fourth moment better generalizes to multivariate distributions, especially when independence is not assumed. The cokurtosis between pairs of variables is an order four tensor. For a bivariate normal distribution, the cokurtosis tensor has off-diagonal terms that are neither 0 nor 3 in general, so attempting to "correct" for an excess becomes confusing. It is true, however, that the joint cumulants of degree greater than two for any multivariate normal distribution are zero.

For two random variables, _X_ and _Y_, not necessarily independent, the kurtosis of the sum, _X_ + _Y_, is





\begin{align} \operatorname{Kurt}[X+Y] = {1 \over \sigma_{X+Y}^4} \big( & \sigma_X^4\operatorname{Kurt}[X] + 4\sigma_X^3\sigma_Y\operatorname{Cokurt}[X,X,X,Y] \\ & {} + 6\sigma_X^2\sigma_Y^2\operatorname{Cokurt}[X,X,Y,Y] \\[6pt] & {} + 4\sigma_X\sigma_Y^3\operatorname{Cokurt}[X,Y,Y,Y] + \sigma_Y^4\operatorname{Kurt}[Y] \big). \end{align} Note that the binomial coefficients appear in the above equation.

Interpretation

The exact interpretation of the Pearson measure of kurtosis (or excess kurtosis) used to be disputed, but is now settled. As Westfall (2014)[5] notes, "...its only unambiguous interpretation is in terms of tail extremity; i.e., either existing outliers (for the sample kurtosis) or propensity to produce outliers (for the kurtosis of a probability distribution)." The logic is simple: Kurtosis is the average (or expected value) of the standardized data raised to the fourth power. Any standardized values that are less than 1 (i.e., data within one standard deviation of the mean, where the "peak" would be), contribute virtually nothing to kurtosis, since raising a number that is less than 1 to the fourth power makes it closer to zero. The only data values (observed or observable) that contribute to kurtosis in any meaningful way are those outside the region of the peak; i.e., the outliers. Therefore, kurtosis measures outliers only; it measures nothing about the "peak".

Many incorrect interpretations of kurtosis that involve notions of peakedness have been given. One is that kurtosis measures both the "peakedness" of the distribution and the heaviness of its tail.[6] Various other incorrect interpretations have been suggested, such as "lack of shoulders" (where the "shoulder" is defined vaguely as the area between the peak and the tail, or more specifically as the area about one standard deviation from the mean) or "bimodality".[7] Balanda and MacGillivray assert that the standard definition of kurtosis "is a poor measure of the kurtosis, peakedness, or tail weight of a distribution"[8] and instead propose to "define kurtosis vaguely as the location- and scale-free movement of probability mass from the shoulders of a distribution into its center and tails".[9]

Moors' interpretation

In 1986 Moors gave an interpretation of kurtosis.[10] Let

$$Z = \frac{ X - \mu } \sigma,$$

where _X_ is a random variable, _μ_ is the mean and _σ_ is the standard deviation.

Now by definition of the kurtosis κ, and by the well-known identity E[V²] = var [V] + [E[V]]²,

_κ_ = _E_[_Z_⁴] = var [_Z_²] + [_E_[_Z_²]]² = var [_Z_²] + [var [_Z_]]² = var [_Z_²] + 1
.

The kurtosis can now be seen as a measure of the dispersion of _Z_² around its expectation. Alternatively it can be seen to be a measure of the dispersion of _Z_ around +1 and −1. _κ_ attains its minimal value in a symmetric two-point distribution. In terms of the original variable _X_, the kurtosis is a measure of the dispersion of _X_ around the two values _μ_ ± _σ_.

High values of _κ_ arise in two circumstances:

-   where the probability mass is concentrated around the mean and the data-generating process produces occasional values far from the mean,
-   where the probability mass is concentrated in the tails of the distribution.


Excess kurtosis

The _excess kurtosis_ is defined as kurtosis minus 3. There are 3 distinct regimes as described below.

Mesokurtic

Distributions with zero excess kurtosis are called MESOKURTIC, or mesokurtotic. The most prominent example of a mesokurtic distribution is the normal distribution family, regardless of the values of its parameters. A few other well-known distributions can be mesokurtic, depending on parameter values: for example, the binomial distribution is mesokurtic for $p = 1/2 \pm \sqrt{1/12}$.

Leptokurtic

A distribution with positive excess kurtosis is called LEPTOKURTIC, or leptokurtotic. "Lepto-" means "slender".[11] In terms of shape, a leptokurtic distribution has _fatter tails_. Examples of leptokurtic distributions include the Student's t-distribution, Rayleigh distribution, Laplace distribution, exponential distribution, Poisson distribution and the logistic distribution. Such distributions are sometimes termed _super-Gaussian_.[12]

Platykurtic

is the most platykurtic distribution]] A distribution with negative excess kurtosis is called PLATYKURTIC, or platykurtotic. "Platy-" means "broad".[13] In terms of shape, a platykurtic distribution has _thinner tails_. Examples of platykurtic distributions include the continuous and discrete uniform distributions, and the raised cosine distribution. The most platykurtic distribution of all is the Bernoulli distribution with _p_ = 1/2 (for example the number of times one obtains "heads" when flipping a coin once, a coin toss), for which the excess kurtosis is −2. Such distributions are sometimes termed _sub-Gaussian_.[14]


Graphical examples

The Pearson type VII family

for the Pearson type VII distribution with excess kurtosis of infinity (red); 2 (blue); and 0 (black)]]

The effects of kurtosis are illustrated using a parametric family of distributions whose kurtosis can be adjusted while their lower-order moments and cumulants remain constant. Consider the Pearson type VII family, which is a special case of the Pearson type IV family restricted to symmetric densities. The probability density function is given by

$$f(x; a, m) = \frac{\Gamma(m)}{a\,\sqrt{\pi}\,\Gamma(m-1/2)} \left[1+\left(\frac{x}{a}\right)^2 \right]^{-m}, \!$$

where _a_ is a scale parameter and _m_ is a shape parameter.

All densities in this family are symmetric. The _k_th moment exists provided _m_ > (_k_ + 1)/2. For the kurtosis to exist, we require _m_ > 5/2. Then the mean and skewness exist and are both identically zero. Setting _a_² = 2_m_ − 3 makes the variance equal to unity. Then the only free parameter is _m_, which controls the fourth moment (and cumulant) and hence the kurtosis. One can reparameterize with m = 5/2 + 3/γ₂, where γ₂ is the excess kurtosis as defined above. This yields a one-parameter leptokurtic family with zero mean, unit variance, zero skewness, and arbitrary non-negative excess kurtosis. The reparameterized density is

$$g(x; \gamma_2) = f\left(x;\; a = \sqrt{2 + \frac{6}{\gamma_2}},\; m = \frac{5}{2} + \frac{3}{\gamma_2}\right). \!$$

In the limit as γ₂ → ∞ one obtains the density

$$g(x) = 3\left(2 + x^2\right)^{-\frac{5}{2}}, \!$$

which is shown as the red curve in the images on the right.

In the other direction as γ₂ → 0 one obtains the standard normal density as the limiting distribution, shown as the black curve.

In the images on the right, the blue curve represents the density x ↦ g(x; 2) with excess kurtosis of 2. The top image shows that leptokurtic densities in this family have a higher peak than the mesokurtic normal density, although this conclusion is only valid for this select family of distributions. The comparatively fatter tails of the leptokurtic densities are illustrated in the second image, which plots the natural logarithm of the Pearson type VII densities: the black curve is the logarithm of the standard normal density, which is a parabola. One can see that the normal density allocates little probability mass to the regions far from the mean ("has thin tails"), compared with the blue curve of the leptokurtic Pearson type VII density with excess kurtosis of 2. Between the blue curve and the black are other Pearson type VII densities with _γ_₂ = 1, 1/2, 1/4, 1/8, and 1/16. The red curve again shows the upper limit of the Pearson type VII family, with γ₂ = ∞ (which, strictly speaking, means that the fourth moment does not exist). The red curve decreases the slowest as one moves outward from the origin ("has fat tails").


Of well-known distributions

s for selected distributions with mean 0, variance 1 and different excess kurtosis]] s of probability density functions for selected distributions with mean 0, variance 1 and different excess kurtosis]]

Several well-known, unimodal and symmetric distributions from different parametric families are compared here. Each has a mean and skewness of zero. The parameters have been chosen to result in a variance equal to 1 in each case. The images on the right show curves for the following seven densities, on a linear scale and logarithmic scale:

-   D: Laplace distribution, also known as the double exponential distribution, red curve (two straight lines in the log-scale plot), excess kurtosis = 3
-   S: hyperbolic secant distribution, orange curve, excess kurtosis = 2
-   L: logistic distribution, green curve, excess kurtosis = 1.2
-   N: normal distribution, black curve (inverted parabola in the log-scale plot), excess kurtosis = 0
-   C: raised cosine distribution, cyan curve, excess kurtosis = −0.593762...
-   W: Wigner semicircle distribution, blue curve, excess kurtosis = −1
-   U: uniform distribution, magenta curve (shown for clarity as a rectangle in both images), excess kurtosis = −1.2.

Note that in these cases the platykurtic densities have bounded support, whereas the densities with positive or zero excess kurtosis are supported on the whole real line.

There exist platykurtic densities with infinite support,

-   e.g., exponential power distributions with sufficiently large shape parameter _b_

and there exist leptokurtic densities with finite support.

-   e.g., a distribution that is uniform between −3 and −0.3, between −0.3 and 0.3, and between 0.3 and 3, with the same density in the (−3, −0.3) and (0.3, 3) intervals, but with 20 times more density in the (−0.3, 0.3) interval


Sample kurtosis

For a sample of _n_ values the SAMPLE EXCESS KURTOSIS is

$$g_2 = \frac{m_4}{m_2^2} -3 = \frac{\tfrac{1}{n} \sum_{i=1}^n (x_i - \overline{x})^4}{\left(\tfrac{1}{n} \sum_{i=1}^n (x_i - \overline{x})^2\right)^2} - 3$$

where _m_₄ is the fourth sample moment about the mean, _m_₂ is the second sample moment about the mean (that is, the sample variance), _x__(_i_) is the _i_^(th) value, and $\overline{x}$ is the sample mean.

This formula has the simpler representation,

$$g_2 = \frac{1}{n} \sum_{i=1}^n z_i^4  - 3$$

where the z_(i) values are the standardized data values using the standard deviation defined using _n_ rather than _n_ − 1 in the denominator.

For example, suppose the data values are 0, 3, 4, 1, 2, 3, 0, 2, 1, 3, 2, 0, 2, 2, 3, 2, 5, 2, 3, 999.

Then the z_(i) values are −0.239, −0.225, −0.221, −0.234, −0.230, −0.225, −0.239, −0.230, −0.234, −0.225, −0.230, −0.239, −0.230, −0.230, −0.225, −0.230, −0.216, −0.230, −0.225, 4.359

and the z_(i)⁴ values are 0.003, 0.003, 0.002, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.003, 0.002, 0.003, 0.003, 360.976.

The average of these values is 18.05 and the excess kurtosis is thus 18.05 − 3 = 15.05. This example makes it clear that data near the "middle" or "peak" of the distribution do not contribute to the kurtosis statistic, hence kurtosis does not measure "peakedness". It is simply a measure of the outlier, 999 in this example.


Sampling variance under normality

The variance of the sample kurtosis of a sample of size _n_ from the normal distribution is[15]

$$\frac{24n(n-1)^2}{(n-3)(n-2)(n+3)(n+5)}$$

Stated differently, under the assumption that the underlying random variable X is normally distributed, it can be shown that $\sqrt{n} g_2 \xrightarrow{d} N(0, 24)$.[16]


Upper bound

An upper bound for the sample kurtosis of _n_ (_n_ > 2) real numbers is[17]

$$\frac{\mu_4}{\sigma^4} \le \frac 12 \frac {n-3}{n-2}  \left(\frac{\mu_3}{\sigma^3}\right)^2 + \frac {n}2.$$


Estimators of population kurtosis

Given a sub-set of samples from a population, the sample excess kurtosis above is a biased estimator of the population excess kurtosis. An alternative estimator of the population excess kurtosis is defined as follows:



\begin{align} G_2 & = \frac{k_4}{k_2^2} \\[6pt] & = \frac{n^2\,((n+1)\,m_4 - 3\,(n-1)\,m_{2}^2)}{(n-1)\,(n-2)\,(n-3)} \; \frac{(n-1)^2}{n^2\,m_2^2} \\[6pt] & = \frac{n-1}{(n-2)\,(n-3)} \left( (n+1)\,\frac{m_4}{m_{2}^2} - 3\,(n-1) \right) \\[6pt] & = \frac{n-1}{(n-2)\,(n-3)} \left( (n+1)\,g_2 + 6 \right) \\[6pt] & = \frac{(n+1)\,n\,(n-1)}{(n-2)\,(n-3)} \; \frac{\sum_{i=1}^n (x_i - \bar{x})^4}{\left(\sum_{i=1}^n (x_i - \bar{x})^2\right)^2} - 3\,\frac{(n-1)^2}{(n-2)\,(n-3)} \\[6pt] & = \frac{(n+1)\,n}{(n-1)\,(n-2)\,(n-3)} \; \frac{\sum_{i=1}^n (x_i - \bar{x})^4}{k_2^2} - 3\,\frac{(n-1)^2}{(n-2) (n-3)} \end{align}

where _k_₄ is the unique symmetric unbiased estimator of the fourth cumulant, _k_₂ is the unbiased estimate of the second cumulant (identical to the unbiased estimate of the sample variance), _m_₄ is the fourth sample moment about the mean, _m_₂ is the second sample moment about the mean, _x__(_i_) is the _i_^(th) value, and x̄ is the sample mean. Unfortunately, G₂ is itself generally biased. For the normal distribution it is unbiased.[18]


Applications

The sample kurtosis is a useful measure of whether there is a problem with outliers in a data set. Larger kurtosis indicates a more serious outlier problem, and may lead the researcher to choose alternative statistical methods.

D'Agostino's K-squared test is a goodness-of-fit normality test based on a combination of the sample skewness and sample kurtosis, as is the Jarque–Bera test for normality.

For non-normal samples, the variance of the sample variance depends on the kurtosis; for details, please see variance.

Pearson's definition of kurtosis is used as an indicator of intermittency in turbulence.[19]

Kurtosis convergence

Applying band-pass filters to digital images, kurtosis values tend to be uniform, independent of the range of the filter. This behavior, termed _kurtosis convergence_, can be used to detect image splicing in forensic analysis.[20]


Other measures

A different measure of "kurtosis" is provided by using L-moments instead of the ordinary moments.[21][22]


See also

-   Kurtosis risk
-   Maximum entropy probability distribution


References


Further reading

-   Alternative source (Comparison of kurtosis estimators)

-


External links

-   -   Kurtosis calculator
-   Free Online Software (Calculator) computes various types of skewness and kurtosis statistics for any dataset (includes small and large sample tests)..
-   Kurtosis on the Earliest known uses of some of the words of mathematics
-   Celebrating 100 years of Kurtosis a history of the topic, with different measures of kurtosis.

{{-}}

Category:Moment (mathematics) Category:Statistical deviation and dispersion

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Balanda and MacGillivray, p. 114.

[9]

[10]

[11] http://medical-dictionary.thefreedictionary.com/lepto-

[12]

[13] http://www.yourdictionary.com/platy-prefix

[14] The original paper presenting sub-Gaussians See also

[15]

[16] Kendall, M.G.; Stuart, A. (1969) _The Advanced Theory of Statistics, Volume 1: Distribution Theory, 3rd Edition_, Griffin.

[17]

[18]

[19]

[20] 1

[21]

[22]