The MEDIAN is the value separating the higher half from the lower half of a data sample (a population or a probability distribution). For a data set, it may be thought of as the "middle" value. For example, in the data set {1, 3, 3, 6, 7, 8, 9}, the median is 6, the fourth largest, and also the fourth smallest, number in the sample. For a continuous probability distribution, the median is the value such that a number is equally likely to fall above or below it.

The median is a commonly used measure of the properties of a data set in statistics and probability theory. The basic advantage of the median in describing data compared to the mean (often simply described as the "average") is that it is not skewed so much by a small proportion of extremely large or small values, and so it may give a better idea of a "typical" value. For example, in understanding statistics like household income or assets, which vary greatly, the mean may be skewed by a small number of extremely high or low values. Median income, for example, may be a better way to suggest what a "typical" income is.

Because of this, the median is of central importance in robust statistics, as it is the most resistant statistic, having a breakdown point of 50%: so long as no more than half the data are contaminated, the median will not give an arbitrarily large or small result.


Finite set of numbers

The median of a finite list of numbers can be found by arranging all the numbers from smallest to greatest.

If there is an odd number of numbers, the middle one is picked. For example, consider the list of numbers

    1, 3, 3, 6, 7, 8, 9

This list contains seven numbers. The median is the fourth of them, which is 6.

If there is an even number of observations, then there is no single middle value; the median is then usually defined to be the mean of the two middle values.[1][2] For example, in the data set

    1, 2, 3, 4, 5, 6, 8, 9

the median is the mean of the middle two numbers: this is (4 + 5)/2, which is 4.5. (In more technical terms, this interprets the median as the fully trimmed mid-range).

The formula used to find the index of the middle number of a data set of _n_ numerically ordered numbers is (n + 1)/2. This either gives the middle number (for an odd number of values) or the halfway point between the two middle values. For example, with 14 values, the formula will give an index of 7.5, and the median will be taken by averaging the seventh (the floor of this index) and eighth (the ceiling of this index) values. So the median can be represented by the following formula:

    $\mathrm{median}(a) = \frac{a_{\lfloor(\#x+1) \div 2\rfloor} + a_{\lceil(\#x+1) \div 2\rceil}}{2}$

  Type              Description                                                                                                    Example               Result
  ----------------- -------------------------------------------------------------------------------------------------------------- --------------------- --------
  Arithmetic mean   Sum of values of a data set divided by number of values: $\scriptstyle\bar{x} = \frac{1}{n}\sum_{i=1}^n x_i$   (1+2+2+3+4+7+9) / 7   4
  Median            Middle value separating the greater and lesser halves of a data set                                            1, 2, 2, 3, 4, 7, 9   3
  Mode              Most frequent value in a data set                                                                              1, 2, 2, 3, 4, 7, 9   2

  : Comparison of common averages of values { 1, 2, 2, 3, 4, 7, 9 }

One can find the median using the Stem-and-Leaf Plot.

There is no widely accepted standard notation for the median, but some authors represent the median of a variable _x_ either as _x͂_ or as _μ__(1/2)[3] sometimes also _M_.[4][5] In any of these cases, the use of these or other symbols for the median needs to be explicitly defined when they are introduced.

The median is used primarily for skewed distributions, which it summarizes differently from the arithmetic mean. Consider the multiset { 1, 2, 2, 2, 3, 14 }. The median is 2 in this case, (as is the mode), and it might be seen as a better indication of central tendency (less susceptible to the exceptionally large value in data) than the arithmetic mean of 4.

The median is a popular summary statistic used in descriptive statistics, since it is simple to understand and easy to calculate, while also giving a measure that is more robust in the presence of outlier values than is the mean. The widely cited empirical relationship between the relative locations of the mean and the median for skewed distributions is, however, not generally true.[6] There are, however, various relationships for the _absolute_ difference between them; see below.

With an even number of observations (as shown above) no value need be exactly at the value of the median. Nonetheless, the value of the median is uniquely determined with the usual definition. A related concept, in which the outcome is forced to correspond to a member of the sample, is the medoid.

In a population, at most half have values strictly less than the median and at most half have values strictly greater than it. If each group contains less than half the population, then some of the population is exactly equal to the median. For example, if _a_ < _b_ < _c_, then the median of the list {_a_, _b_, _c_} is _b_, and, if _a_ < _b_ < _c_ < _d_, then the median of the list {_a_, _b_, _c_, _d_} is the mean of _b_ and _c_; i.e., it is (_b_ + _c_)/2. Indeed, as it is based on the middle data in a group, it is not necessary to even know the value of extreme results in order to calculate a median. For example, in a psychology test investigating the time needed to solve a problem, if a small number of people failed to solve the problem at all in the given time a median can still be calculated.[7]

The median can be used as a measure of location when a distribution is skewed, when end-values are not known, or when one requires reduced importance to be attached to outliers, e.g., because they may be measurement errors.

A median is only defined on ordered one-dimensional data, and is independent of any distance metric. A geometric median, on the other hand, is defined in any number of dimensions.

The median is one of a number of ways of summarising the typical values associated with members of a statistical population; thus, it is a possible location parameter. The median is the 2nd quartile, 5th decile, and 50th percentile. Since the median is the same as the _second quartile_, its calculation is illustrated in the article on quartiles. A median can be worked out for ranked but not numerical classes (e.g. working out a median grade when students are graded from A to F), although the result might be halfway between grades if there is an even number of cases.

When the median is used as a location parameter in descriptive statistics, there are several choices for a measure of variability: the range, the interquartile range, the mean absolute deviation, and the median absolute deviation.

For practical purposes, different measures of location and dispersion are often compared on the basis of how well the corresponding population values can be estimated from a sample of data. The median, estimated using the sample median, has good properties in this regard. While it is not usually optimal if a given population distribution is assumed, its properties are always reasonably good. For example, a comparison of the efficiency of candidate estimators shows that the sample mean is more statistically efficient than the sample median when data are uncontaminated by data from heavy-tailed distributions or from mixtures of distributions, but less efficient otherwise, and that the efficiency of the sample median is higher than that for a wide range of distributions. More specifically, the median has a 64% efficiency compared to the minimum-variance mean (for large normal samples), which is to say the variance of the median will be ~50% greater than the variance of the mean—see asymptotic efficiency and references therein.


Probability distributions

For any probability distribution on the real line R with cumulative distribution function _F_, regardless of whether it is any kind of continuous probability distribution, in particular an absolutely continuous distribution (which has a probability density function), or a discrete probability distribution, a median is by definition any real number _m_ that satisfies the inequalities

$$\operatorname{P}(X\leq m) \geq \frac{1}{2}\text{ and }\operatorname{P}(X\geq m) \geq \frac{1}{2}\,\!$$

or, equivalently, the inequalities

$$\int_{(-\infty,m]} dF(x) \geq \frac{1}{2}\text{ and }\int_{[m,\infty)} dF(x) \geq \frac{1}{2}\,\!$$

in which a Lebesgue–Stieltjes integral is used. For an absolutely continuous probability distribution with probability density function _ƒ_, the median satisfies

$$\operatorname{P}(X\leq m) = \operatorname{P}(X\geq m)=\int_{-\infty}^m f(x)\, dx=\frac{1}{2}.\,\!$$

Any probability distribution on R has at least one median, but in specific cases there may be more than one median. Specifically, if a probability density is zero on an interval [_a_, _b_], and the cumulative distribution function at _a_ is 1/2, any value between _a_ and _b_ will also be a median.

Medians of particular distributions

The medians of certain types of distributions can be easily calculated from their parameters; furthermore, they exist even for some distributions lacking a well-defined mean, such as the Cauchy distribution:

-   The median of a symmetric unimodal distribution coincides with the mode.
-   The median of a symmetric distribution which possesses a mean _μ_ also takes the value _μ_.
    -   The median of a normal distribution with mean _μ_ and variance _σ_² is μ. In fact, for a normal distribution, mean = median = mode.
    -   The median of a uniform distribution in the interval [_a_, _b_] is (_a_ + _b_) / 2, which is also the mean.
-   The median of a Cauchy distribution with location parameter _x_₀ and scale parameter _y_ is _x_₀, the location parameter.
-   The median of a power law distribution _x_^(−_a_), with exponent _a_ > 1 is 2^(1/(_a_ − 1))_x__(min), where _x__(min) is the minimum value for which the power law holds[8]
-   The median of an exponential distribution with rate parameter _λ_ is the natural logarithm of 2 divided by the rate parameter: _λ_^(−1)ln 2.
-   The median of a Weibull distribution with shape parameter _k_ and scale parameter _λ_ is _λ_(ln 2)^(1/_k_).


Populations

Optimality property

The _mean absolute error_ of a real variable _c_ with respect to the random variable _X_ is

_E_(|_X_−_c_|) 
Provided that the probability distribution of _X_ is such that the above expectation exists, then _m_ is a median of _X_ if and only if _m_ is a minimizer of the mean absolute error with respect to _X_.[9] In particular, _m_ is a sample median if and only if _m_ minimizes the arithmetic mean of the absolute deviations.

More generally, a median is defined as a minimum of

_E_(|_X_ − _c_| − |_X_|),
as discussed below in the section on multivariate medians (specifically, the spatial median).

This optimization-based definition of the median is useful in statistical data-analysis, for example, in _k_-medians clustering .

Unimodal distributions

, median and mode of two log-normal distributions with different skewness.]]

It can be shown for a unimodal distribution that the median X̃ and the mean X̄ lie within (3/5)^(1/2) ≈ 0.7746 standard deviations of each other.[10] In symbols,

    $\frac{\left|\tilde{X} - \bar{X}\right|}{\sigma} \le \left(\frac{3}{5}\right)^\frac{1}{2}$

where |·| is the absolute value.

A similar relation holds between the median and the mode: they lie within 3^(1/2) ≈ 1.732 standard deviations of each other:

    $\frac{|\tilde{X} - \mathrm{mode}|}{\sigma} \le 3^\frac{1}{2}.$

Inequality relating means and medians

If the distribution has finite variance, then the distance between the median and the mean is bounded by one standard deviation.

This bound was proved by Mallows,[11] who used Jensen's inequality twice, as follows. We have

    \begin{align}

 |\mu - m| = |\operatorname{E}(X - m)| & \leq \operatorname{E}(|X - m|) \\
                                       & \leq \operatorname{E}(|X - \mu|) \\
                                       & \leq \sqrt{\operatorname{E}\left((X - \mu)^2\right)} = \sigma.

\end{align}

The first and third inequalities come from Jensen's inequality applied to the absolute-value function and the square function, which are each convex. The second inequality comes from the fact that a median minimizes the absolute deviation function

_a_ ↦ E (|_X_ − _a_|). 

This proof also follows directly from Cantelli's inequality.[12] The result can be generalized to obtain a multivariate version of the inequality,[13] as follows:

    \begin{align}

 \|\mu - m\| = \| \operatorname{E}(X - m)\|
   & \leq  \operatorname{E}\|X - m\|  \\
   & \leq  \operatorname{E}(\| X - \mu\| ) \\
   & \leq \sqrt{ \operatorname{E}\left(\|X - \mu\|^2\right) }
     = \sqrt{ \operatorname{trace}\left(\operatorname{var}(X)\right) }

\end{align}

where _m_ is a spatial median, that is, a minimizer of the function a ↦ E (∥X − a∥).  The spatial median is unique when the data-set's dimension is two or more.[14][15] An alternative proof uses the one-sided Chebyshev inequality; it appears in an inequality on location and scale parameters.


Jensen's inequality for medians

Jensen's inequality states that for any random variable _x_ with a finite expectation _E_(_x_) and for any convex function _f_

    f[E(x)] ≤ E[f(x)]

It has been shown[16] that if _x_ is a real variable with a unique median _m_ and _f_ is a C function then

    f(m) ≤ Median [f(x)]

A C function is a real valued function, defined on the set of real numbers _R_, with the property that for any real _t_

    f^( − 1)( (−∞,t] ) = {x ∈ R ∣ f(x) ≤ t}

is a closed interval, a singleton or an empty set.


Medians for samples

The sample median

  Efficient computation of the sample median

Even though comparison-sorting _n_ items requires operations, selection algorithms can compute the [[order_statistic|,

then

    med3(med3(_A_[1 ... _n_]), med3(_A_[_n_ ... _n_]), med3(_A_[_n_ ... _n_]))}}

The _remedian_ is an estimator for the median that requires linear time but sub-linear memory, operating in a single pass over the sample.[17]

Easy explanation of the sample median

In individual series (if number of observation is very low) first one must arrange all the observations in order. Then count(_n_) is the total number of observation in given data.

If _N_ IS ODD then Median (_M_) = value of ((_n_ + 1)/2)th item term.

If _N_ IS EVEN then Median (_M_) = value of [(_n_/2)th item term + (_n_/2 + 1)th item term]/2

For an odd number of values

As an example, we will calculate the sample median for the following set of observations: 1, 5, 2, 8, 7.

Start by sorting the values: 1, 2, 5, 7, 8.

In this case, the median is 5 since it is the middle observation in the ordered list.

The median is the ((_n_ + 1)/2)th item, where _n_ is the number of values. For example, for the list {1, 2, 5, 7, 8}, we have _n_ = 5, so the median is the ((5 + 1)/2)th item.

    median = (6/2)th item
    median = 3rd item
    median = 5

For an even number of values

As an example, we will calculate the sample median for the following set of observations: 1, 6, 2, 8, 7, 2.

Start by sorting the values: 1, 2, 2, 6, 7, 8.

In this case, the arithmetic mean of the two middlemost terms is (2 + 6)/2 = 4. Therefore, the median is 4 since it is the arithmetic mean of the middle observations in the ordered list.

Sampling distribution

The distributions of both the sample mean and the sample median were determined by Laplace.[18] The distribution of the sample median from a population with a density function f(x) is asymptotically normal with mean m and variance[19]

    $\frac{ 1 }{ 4n f( m )^2 }$

where m is the median of f(x) and n is the sample size.

These results have also been extended.[20] It is now known for the p-th quantile that the distribution of the sample p-th quantile is asymptotically normal around the p-th quantile with variance equal to

    $\frac{p( 1 - p )}{nf(x_p)^2}$

where f(x_(p)) is the value of the distribution density at the p-th quantile.

In the case of a discrete variable, the sampling distribution of the median for small-samples can be investigated as follows. We take the sample size to be an odd number N = 2n + 1. If a given value v is to be the median of the sample then two conditions must be satisfied. The first is that at most n observations can have a value of v − 1 or less. The second is that at most n observations can have a value of v + 1 or more. Let i be the number of observations which have a value of v − 1 or less and let k be the number of observations which have a value of v + 1 or more. Then i and k both have a minimum value of 0 and a maximum of n. If an observation has a value below v, it is not relevant how far below v it is and conversely, if an observation has a value above v, it is not relevant how far above v it is. We can therefore represent the observations as following a trinomial distribution with probabilities F(v − 1), f(v) and 1 − F(v). The probability that the median m will have a value v is then given by

    $\Pr(m = v) = \sum_{i=0}^n \sum_{k=0}^n \frac{N!}{i!(N-i-k)!k!} [F(v-1)]^i [f(v)]^{N-i-k} [1 - F(v)]^k.$

Summing this over all values of v defines a proper distribution and gives a unit sum. In practice, the function f(v) will often not be known but it can be estimated from an observed frequency distribution. An example is given in the following table where the actual distribution is not known but a sample of 3,800 observations allows a sufficiently accurate assessment of f(v).

  v      0       0.5     1       1.5     2       2.5     3       3.5     4       4.5     5
  ------ ------- ------- ------- ------- ------- ------- ------- ------- ------- ------- -------
  f(v)   0.000   0.008   0.010   0.013   0.083   0.108   0.328   0.220   0.202   0.023   0.005
  F(v)   0.000   0.008   0.018   0.031   0.114   0.222   0.550   0.770   0.972   0.995   1.000


Using these data it is possible to investigate the effect of sample size on the standard errors of the mean and median. The observed mean is 3.16, the observed raw median is 3 and the observed interpolated median is 3.174. The following table gives some comparison statistics. The standard error of the median is given both from the above expression for pr(m = v) and from the asymptotic approximation given earlier.

+-----------------------------------------------------+-------+-------+-------+-------+
|                                                     | 3     | 9     | 15    | 21    |
+=====================================================+=======+=======+=======+=======+
| Expected value of median                            | 3.198 | 3.191 | 3.174 | 3.161 |
+-----------------------------------------------------+-------+-------+-------+-------+
| Standard error of median (above formula)            | 0.482 | 0.305 | 0.257 | 0.239 |
+-----------------------------------------------------+-------+-------+-------+-------+
| Standard error of median (asymptotic approximation) | 0.879 | 0.508 | 0.393 | 0.332 |
+-----------------------------------------------------+-------+-------+-------+-------+
| Standard error of mean                              | 0.421 | 0.243 | 0.188 | 0.159 |
+-----------------------------------------------------+-------+-------+-------+-------+

The expected value of the median falls slightly as sample size increases while, as would be expected, the standard errors of both the median and the mean are proportionate to the inverse square root of the sample size. The asymptotic approximation errs on the side of caution by overestimating the standard error.

In the case of a continuous variable, the following argument can be used. If a given value v is to be the median, then one observation must take the value v. The elemental probability of this is f(v) dv. Then, of the remaining 2n observations, exactly n of them must be above v and the remaining n below. The probability of this is the nth term of a binomial distribution with parameters F(v) and 2n. Finally we multiply by 2n + 1 since any of the observations in the sample can be the median observation. Hence the elemental probability of the median at the point v is given by

    $f(v) \frac{(2n)!}{n!n!} [F(v)]^n [1 - F(v)]^n (2n + 1) \, dv.$

Now we introduce the beta function. For integer arguments α and β, this can be expressed as $\Beta(\alpha,\beta) = (\alpha - 1)! (\beta - 1)! / (\alpha + \beta - 1)!$. Also, we note that f(v) = dF(v)/dv. Using these relationships and setting both α and β equal to (n + 1) allows the last expression to be written as

    $\frac{[F(v)]^n[1 - F(v)]^n}{\Beta(n+1,n+1)} \, dF(v)$

Hence the density function of the median is a symmetric beta distribution over the unit interval which supports F(v). Its mean, as we would expect, is 0.5 and its variance is 1/(4(N + 2)). The corresponding variance of the sample median is

    $\frac{ 1 }{ 4 (N + 2) f( m )^2 }.$

However this finding can only be used if the density function f(v) is known or can be assumed. As this will not always be the case, the median variance has to be estimated sometimes from the sample data.

Estimation of variance from sample data

The value of (2f(x))^( − 2)—the asymptotic value of $n^{-\frac{1}{2}} (\nu - m)$ where ν is the population median—has been studied by several authors. The standard "delete one" jackknife method produces inconsistent results.[21] An alternative—the "delete k" method—where k grows with the sample size has been shown to be asymptotically consistent.[22] This method may be computationally expensive for large data sets. A bootstrap estimate is known to be consistent,[23] but converges very slowly (order of $n^{-\frac{1}{4}}$).[24] Other methods have been proposed but their behavior may differ between large and small samples.[25]

Efficiency

The efficiency of the sample median, measured as the ratio of the variance of the mean to the variance of the median, depends on the sample size and on the underlying population distribution. For a sample of size N = 2n + 1 from the normal distribution, the efficiency for large N is

    $\frac{2}{\pi} \frac{N+2}{N}$

The efficiency tends to $\frac{2}{\pi}$ as N tends to infinity.

Other estimators

For univariate distributions that are _symmetric_ about one median, the Hodges–Lehmann estimator is a robust and highly efficient estimator of the population median.[26]

If data are represented by a statistical model specifying a particular family of probability distributions, then estimates of the median can be obtained by fitting that family of probability distributions to the data and calculating the theoretical median of the fitted distribution. Pareto interpolation is an application of this when the population is assumed to have a Pareto distribution.

Coefficient of dispersion

The coefficient of dispersion (CD) is defined as the ratio of the average absolute deviation from the median to the median of the data.[27] It is a statistical measure used by the states of Iowa, New York and South Dakota in estimating dues taxes.[28][29][30] In symbols

    $CD = \frac{ 1 }{ n } \frac{ \sum| m - x | }{ m }$

where _n_ is the sample size, _m_ is the sample median and _x_ is a variate. The sum is taken over the whole sample.

Confidence intervals for a two-sample test in which the sample sizes are large have been derived by Bonett and Seier[31] This test assumes that both samples have the same median but differ in the dispersion around it. The confidence interval (CI) is bounded inferiorly by

    $\exp \left[ \log \left( \frac{t_a} {t_b} \right) - z_\alpha \left( \operatorname{var} \left[ \log \left( \frac{t_a} {t_b} \right) \right] \right)^\frac{1}{2} \right]$

where _t__(j) is the mean absolute deviation of the _j_^(th) sample, var() is the variance and _z_(α)_ is the value from the normal distribution for the chosen value of _α_: for _α_ = 0.05, _z_(α)_ = 1.96. The following formulae are used in the derivation of these confidence intervals

    $\operatorname{var} [ \log ( t_a ) ] = \frac{1}{n} \left[ \frac{ s_a^2 } { t_a^2 } + \left( \frac{x_a - \bar{x}} {t_a} \right)^2 - 1 \right]$

    $\operatorname{var} \left[ \log\left( \frac{t_a}{t_b} \right) \right] = \operatorname{var}[ \log( t_a ) ] + \operatorname{var}[ \log( t_b )] - 2r (\operatorname{var}[ \log(t_a) ] \operatorname{var}[ \log( t_b ) ] )^\frac{1}{2}$

where _r_ is the Pearson correlation coefficient between the squared deviation scores

    d_(ia) = |x_(ia) − x̄_(a)| and d_(ib) = |x_(ib) − x̄_(b)|

_a_ and _b_ here are constants equal to 1 and 2, _x_ is a variate and _s_ is the standard deviation of the sample.


Multivariate median

Previously, this article discussed the univariate median, when the sample or population had one-dimension. When the dimension is two or higher, there are multiple concepts that extend the definition of the univariate median; each such multivariate median agrees with the univariate median when the dimension is exactly one.[32][33][34][35]

Marginal median

The marginal median is defined for vectors defined with respect to a fixed set of coordinates. A marginal median is defined to be the vector whose components are univariate medians. The marginal median is easy to compute, and its properties were studied by Puri and Sen.[36][37]

Centerpoint

An alternative generalization of the median in higher dimensions is the centerpoint.


Other median-related concepts

Interpolated median

When dealing with a discrete variable, it is sometimes useful to regard the observed values as being midpoints of underlying continuous intervals. An example of this is a Likert scale, on which opinions or preferences are expressed on a scale with a set number of possible responses. If the scale consists of the positive integers, an observation of 3 might be regarded as representing the interval from 2.50 to 3.50. It is possible to estimate the median of the underlying variable. If, say, 22% of the observations are of value 2 or below and 55.0% are of 3 or below (so 33% have the value 3), then the median m is 3 since the median is the smallest value of x for which F(x) is greater than a half. But the interpolated median is somewhere between 2.50 and 3.50. First we add half of the interval width w to the median to get the upper bound of the median interval. Then we subtract that proportion of the interval width which equals the proportion of the 33% which lies above the 50% mark. In other words, we split up the interval width pro rata to the numbers of observations. In this case, the 33% is split into 28% below the median and 5% above it so we subtract 5/33 of the interval width from the upper bound of 3.50 to give an interpolated median of 3.35. More formally, if the values f(x) are known, the interpolated median can be calculated from

    $m_\text{int} = m + w\left[\frac{1}{2} - \frac{F( m ) - \frac{1}{2} }{f( m )}\right].$

Alternatively, if in an observed sample there are k scores above the median category, j scores in it and i scores below it then the interpolated median is given by

    $m_\text{int} = m + \frac{w}{2} \left[\frac{k - i} j\right].$

Pseudo-median

For univariate distributions that are _symmetric_ about one median, the Hodges–Lehmann estimator is a robust and highly efficient estimator of the population median; for non-symmetric distributions, the Hodges–Lehmann estimator is a robust and highly efficient estimator of the population _pseudo-median_, which is the median of a symmetrized distribution and which is close to the population median.[38] The Hodges–Lehmann estimator has been generalized to multivariate distributions.[39]

Variants of regression

The Theil–Sen estimator is a method for robust linear regression based on finding medians of slopes.[40]

Median filter

In the context of image processing of monochrome raster images there is a type of noise, known as the salt and pepper noise, when each pixel independently becomes black (with some small probability) or white (with some small probability), and is unchanged otherwise (with the probability close to 1). An image constructed of median values of neighborhoods (like 3×3 square) can effectively reduce noise in this case.

Cluster analysis

In cluster analysis, the k-medians clustering algorithm provides a way of defining clusters, in which the criterion of maximising the distance between cluster-means that is used in k-means clustering, is replaced by maximising the distance between cluster-medians.

Median–median line

This is a method of robust regression. The idea dates back to Wald in 1940 who suggested dividing a set of bivariate data into two halves depending on the value of the independent parameter x: a left half with values less than the median and a right half with values greater than the median.[41] He suggested taking the means of the dependent y and independent x variables of the left and the right halves and estimating the slope of the line joining these two points. The line could then be adjusted to fit the majority of the points in the data set.

Nair and Shrivastava in 1942 suggested a similar idea but instead advocated dividing the sample into three equal parts before calculating the means of the subsamples.[42] Brown and Mood in 1951 proposed the idea of using the medians of two subsamples rather the means.[43] Tukey combined these ideas and recommended dividing the sample into three equal size subsamples and estimating the line based on the medians of the subsamples.[44]


Median-unbiased estimators

Any _mean_-unbiased estimator minimizes the risk (expected loss) with respect to the squared-error loss function, as observed by Gauss. A _median_-unbiased estimator minimizes the risk with respect to the absolute-deviation loss function, as observed by Laplace. Other loss functions are used in statistical theory, particularly in robust statistics.

The theory of median-unbiased estimators was revived by George W. Brown in 1947:[45]

Further properties of median-unbiased estimators have been reported.[46][47][48][49] Median-unbiased estimators are invariant under one-to-one transformations.

There are methods of construction median-unbiased estimators that are optimal (in a sense analogous to minimum-variance property considered for mean-unbiased estimators). Such constructions exist for probability distributions having monotone likelihood-functions.[50][51] One such procedure is an analogue of the Rao–Blackwell procedure for mean-unbiased estimators: The procedure holds for a smaller class of probability distributions than does the Rao—Blackwell procedure but for a larger class of loss functions.[52]


History

The idea of the median appeared in the 13th century in the Talmud [53][54] (further for possible older mentions)

The idea of the median also appeared later in Edward Wright's book on navigation (_Certaine Errors in Navigation_) in 1599 in a section concerning the determination of location with a compass. Wright felt that this value was the most likely to be the correct value in a series of observations.

In 1757, Roger Joseph Boscovich developed a regression method based on the L1 norm and therefore implicitly on the median.[55]

In 1774, Laplace suggested the median be used as the standard estimator of the value of a posterior pdf. The specific criterion was to minimize the expected magnitude of the error; |α − α^(*)| where α^(*) is the estimate and α is the true value. Laplaces's criterion was generally rejected for 150 years in favor of the least squares method of Gauss and Legendre which minimizes (α − α^(*))² to obtain the mean.[56] The distribution of both the sample mean and the sample median were determined by Laplace in the early 1800s.[57][58]

Antoine Augustin Cournot in 1843 was the first[59] to use the term _median_ (_valeur médiane_) for the value that divides a probability distribution into two equal halves. Gustav Theodor Fechner used the median (_Centralwerth_) in sociological and psychological phenomena.[60] It had earlier been used only in astronomy and related fields. Gustav Fechner popularized the median into the formal analysis of data, although it had been used previously by Laplace.[61]

Francis Galton used the English term _median_ in 1881,[62] having earlier used the terms _middle-most value_ in 1869, and the _medium_ in 1880.[63][64]


See also

-   Medoids which are a generalisation of the median in higher dimensions
-   Central tendency
    -   Mean
    -   Mode
-   Absolute deviation
-   Bias of an estimator
-   Concentration of measure for Lipschitz functions
-   Median (geometry)
-   Median graph
-   Median search
-   Median slope
-   Median voter theory
-   Weighted median


References


External links

-   -   Median as a weighted arithmetic mean of all Sample Observations
-   On-line calculator
-   Calculating the median
-   A problem involving the mean, the median, and the mode.
-   -   Python script for Median computations and income inequality metrics
-   Fast Computation of the Median by Successive Binning
-   'Mean, median, mode and skewness', A tutorial devised for first-year psychology students at Oxford University, based on a worked example.

Category:Means Category:Robust statistics

[1]

[2] Simon, Laura J.; "Descriptive statistics" , _Statistical Education Resource Kit_, Pennsylvania State Department of Statistics

[3]

[4]

[5]

[6]

[7]

[8] Newman, Mark EJ. "Power laws, Pareto distributions and Zipf's law." Contemporary physics 46.5 (2005): 323–351.

[9]

[10]

[11]

[12] K.Van Steen _Notes on probability and statistics_

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

[33] Small, Christopher G. "A survey of multidimensional medians." International Statistical Review/Revue Internationale de Statistique (1990): 263–277.

[34] Niinimaa, A., and H. Oja. "Multivariate median." Encyclopedia of statistical sciences (1999).

[35] Mosler, Karl. Multivariate Dispersion, Central Regions, and Depth: The Lift Zonoid Approach. Vol. 165. Springer Science & Business Media, 2012.

[36]

[37] Puri, Madan L.; Sen, Pranab K.; _Nonparametric Methods in Multivariate Analysis_, John Wiley & Sons, New York, NY, 197l. (Reprinted by Krieger Publishing)

[38]

[39]

[40] .

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50] Pfanzagl, Johann. "On optimal median unbiased estimators in the presence of nuisance parameters." The Annals of Statistics (1979): 187–193.

[51] Brown, L. D.; Cohen, Arthur; Strawderman, W. E. A Complete Class Theorem for Strict Monotone Likelihood Ratio With Applications. Ann. Statist. 4 (1976), no. 4, 712–722. . http://projecteuclid.org/euclid.aos/1176343543.

[52] Page 713: Brown, L. D.; Cohen, Arthur; Strawderman, W. E. A Complete Class Theorem for Strict Monotone Likelihood Ratio With Applications. Ann. Statist. 4 (1976), no. 4, 712–722. . http://projecteuclid.org/euclid.aos/1176343543.

[53] Talmud and Modern Economics

[54] Modern Economic Theory in the Talmud by Yisrael Aumann

[55]

[56]

[57]

[58] Laplace PS de (1818) _Deuxième supplément à la Théorie Analytique des Probabilités_, Paris, Courcier

[59]

[60] Keynes, J.M. (1921) _A Treatise on Probability_. Pt II Ch XVII §5 (p 201) (2006 reprint, Cosimo Classics, : multiple other reprints)

[61]

[62] Galton F (1881) "Report of the Anthropometric Committee" pp 245–260. _Report of the 51st Meeting of the British Association for the Advancement of Science_

[63] _encyclopediaofmath.org_

[64] _personal.psu.edu_