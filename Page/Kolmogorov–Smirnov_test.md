KS_Example.png, blue line is an ECDF, and the black arrow is the K–S statistic.]]

In statistics, the KOLMOGOROV–SMIRNOV TEST (K–S TEST or KS TEST) is a nonparametric test of the equality of continuous (or discontinuous, see Section 2.2), one-dimensional probability distributions that can be used to compare a sample with a reference probability distribution (one-sample K–S test), or to compare two samples (two-sample K–S test). It is named after Andrey Kolmogorov and Nikolai Smirnov.

The Kolmogorov–Smirnov statistic quantifies a distance between the empirical distribution function of the sample and the cumulative distribution function of the reference distribution, or between the empirical distribution functions of two samples. The null distribution of this statistic is calculated under the null hypothesis that the sample is drawn from the reference distribution (in the one-sample case) or that the samples are drawn from the same distribution (in the two-sample case). In the one-sample case, the distribution considered under the null hypothesis may be continuous (see Section 2), purely discrete or mixed (see Section 2.2). In the two-sample case (see Section 3), the distribution considered under the null hypothesis is a continuous distribution but is otherwise unrestricted.

The two-sample K–S test is one of the most useful and general nonparametric methods for comparing two samples, as it is sensitive to differences in both location and shape of the empirical cumulative distribution functions of the two samples.

The Kolmogorov–Smirnov test can be modified to serve as a goodness of fit test. In the special case of testing for normality of the distribution, samples are standardized and compared with a standard normal distribution. This is equivalent to setting the mean and variance of the reference distribution equal to the sample estimates, and it is known that using these to define the specific reference distribution changes the null distribution of the test statistic: see below. Various studies have found that, even in this corrected form, the test is less powerful for testing normality than the Shapiro–Wilk test or Anderson–Darling test.[1] However, these other tests have their own disadvantages. For instance the Shapiro–Wilk test is known not to work well in samples with many identical values.


Kolmogorov–Smirnov statistic

The empirical distribution function _F__(_n_) for _n_ iid ordered observations _X_(i)_ is defined as

$$F_n(x)={1 \over n}\sum_{i=1}^n I_{[-\infty,x]}(X_i)$$

where I_([ − ∞, x])(X_(i)) is the indicator function, equal to 1 if X_(i) ≤ x and equal to 0 otherwise.

The Kolmogorov–Smirnov statistic for a given cumulative distribution function _F_(_x_) is

_D__(_n_) = sup_(_x_)|_F__(_n_)(_x_) − _F_(_x_)|

where sup_(_x_) is the supremum of the set of distances. By the Glivenko–Cantelli theorem, if the sample comes from distribution _F_(_x_), then _D__(_n_) converges to 0 almost surely in the limit when n goes to infinity. Kolmogorov strengthened this result, by effectively providing the rate of this convergence (see below). Donsker's theorem provides yet a stronger result.

In practice, the statistic requires a relatively large number of data points (in comparison to other goodness of fit criteria such as the Anderson–Darling test statistic) to properly reject the null hypothesis.


Kolmogorov distribution

The Kolmogorov distribution is the distribution of the random variable

_K_ = sup_(_t_ ∈ [0, 1])|_B_(_t_)|

where _B_(_t_) is the Brownian bridge. The cumulative distribution function of _K_ is given by[2]

$$\operatorname{Pr}(K\leq x)=1-2\sum_{k=1}^\infty (-1)^{k-1} e^{-2k^2 x^2}=\frac{\sqrt{2\pi}}{x}\sum_{k=1}^\infty e^{-(2k-1)^2\pi^2/(8x^2)},$$

which can also be expressed by the Jacobi theta function ϑ₀₁(z = 0; τ = 2ix²/π). Both the form of the Kolmogorov–Smirnov test statistic and its asymptotic distribution under the null hypothesis were published by Andrey Kolmogorov,[3] while a table of the distribution was published by Nikolai Smirnov.[4] Recurrence relations for the distribution of the test statistic in finite samples are available.[5]

Under null hypothesis that the sample comes from the hypothesized distribution _F_(_x_),

$$\sqrt{n}D_n\xrightarrow{n\to\infty}\sup_t |B(F(t))|$$

in distribution, where _B_(_t_) is the Brownian bridge.

If _F_ is continuous then under the null hypothesis $\sqrt{n}D_n$ converges to the Kolmogorov distribution, which does not depend on _F_. This result may also be known as the Kolmogorov theorem. The accuracy of this limit as an approximation to the exact cdf of K when n is finite is not very impressive: even when n = 1000, the corresponding maximum error is about 0.9%; this error increases to 2.6% when n = 100 and to a totally unacceptable 7% when n = 10. However, a very simple expedient of replacing x by

$$x+\frac{1}{6\sqrt{n}}+ \frac{x-1}{4n}$$

in the argument of the Jacobi theta function reduces these errors to 0.003%, 0.027%, and 0.27% respectively; such accuracy would be usually considered more than adequate for all practical applications.[6]

The _goodness-of-fit_ test or the Kolmogorov–Smirnov test can be constructed by using the critical values of the Kolmogorov distribution. This test is asymptotically valid when n → ∞. It rejects the null hypothesis at level α if

$$\sqrt{n}D_n>K_\alpha,\,$$

where _K__(_α_) is found from

Pr (_K_ ≤ _K__(_α_)) = 1 − _α_. 

The asymptotic power of this test is 1.

Fast and accurate algorithms to compute the cdf Pr (D_(n) ≤ x) or its complement for arbitrary n and x, are available from:

-   [7] and [8] for continuous null distributions with code in C and Java to be found in [9].

-   [10] for purely discrete, mixed or continuous null distribution implemented in the KSgeneral package [11] of the R project for statistical computing, which for a given sample also computes the KS test statistic and its p-value. Alternative C++ implementation is available from [12].

Test with estimated parameters

If either the form or the parameters of _F_(_x_) are determined from the data _X__(_i_) the critical values determined in this way are invalid. In such cases, Monte Carlo or other methods may be required, but tables have been prepared for some cases. Details for the required modifications to the test statistic and for the critical values for the normal distribution and the exponential distribution have been published,[13] and later publications also include the Gumbel distribution.[14] The Lilliefors test represents a special case of this for the normal distribution. The logarithm transformation may help to overcome cases where the Kolmogorov test data does not seem to fit the assumption that it came from the normal distribution.

Using estimated parameters, the questions arises which estimation method should be used. Usually this would be the maximum likelihood method, but e.g. for the normal distribution MLE has a large bias error on sigma! Using a moment fit or KS minimization instead has a large impact on the critical values, and also some impact on test power. If we need to decide for Student-T data with df = 2 via KS test whether the data could be normal or not, then a ML estimate based on H₀ (data is normal, so using the standard deviation for scale) would give much larger KS distance, than a fit with minimum KS. In this case we should reject H₀, which is often the case with MLE, because the sample standard deviation might be very large for T-2 data, but with KS minimization we may get still a too low KS to reject H₀. In the Student-T case, a modified KS test with KS estimate instead of MLE, makes the KS test indeed slightly worse. However, in other cases, such a modified KS test leads to slightly better test power.

Discrete and mixed null distribution

Under the assumption that F(x) is non-decreasing and right-continuous, with countable (possibly infinite) number of jumps, the KS test statistic can be expressed as:

_D__(_n_) = sup_(_x_)|_F__(_n_)(_x_) − _F_(_x_)| = sup_(0 ≤ _t_ ≤ 1)|_F__(_n_)(_F_^( − 1)(_t_)) − _F_(_F_^( − 1)(_t_))|.

From the right-continuity of F(x), it follows that F(F^( − 1)(t)) ≥ t and F^( − 1)(F(x)) ≤ x and hence, the distribution of D_(n) depends on the null distribution F(x), i.e., is no longer distribution-free as in the continuous case. Therefore, a fast and accurate method has been developed to compute the exact and asymptotic distribution of D_(n) when F(x) is purely discrete or mixed [15], implemented in C++ and in the KSgeneral package [16] of the R project for statistical computing. The functions disc_ks_test(), mixed_ks_test() and cont_ks_test() compute also the KS test statistic and p-values for purely discrete, mixed or continuous null distributions and arbitrary sample sizes. The KS test and its p-values for discrete null distributions and small sample sizes are also computed in [17] as part of the dgof package of the R project for statistical computing. Major statistical packages among which SAS PROC NPAR1WAY [18], Stata ksmirnov [19] implement the KS test under the assumption that F(x) is continuous, which is more conservative if the null distribution is actually not continuous (see [20] [21] [22]).


Two-sample Kolmogorov–Smirnov test

KS2_Example.png

The Kolmogorov–Smirnov test may also be used to test whether two underlying one-dimensional probability distributions differ. In this case, the Kolmogorov–Smirnov statistic is

_D__(_n_, _m_) = sup_(_x_)|_F__(1, _n_)(_x_) − _F__(2, _m_)(_x_)|,

where F_(1, n) and F_(2, m) are the empirical distribution functions of the first and the second sample respectively, and sup  is the supremum function.

For large samples, the null hypothesis is rejected at level α if

$$D_{n,m}>c(\alpha)\sqrt{\frac{n + m}{n m}}.$$

Where n and m are the sizes of first and second sample respectively. The value of c(α) is given in the table below for the most common levels of α

  ------ ------- ------- ------- ------- ------- -------
  α      0.10    0.05    0.025   0.01    0.005   0.001
  c(α)   1.073   1.224   1.358   1.517   1.628   1.858
  ------ ------- ------- ------- ------- ------- -------

and in general[23] by

$$c\left(\alpha\right)=\sqrt{-\frac{1}{2}\ln\alpha}.$$

Note that the two-sample test checks whether the two data samples come from the same distribution. This does not specify what that common distribution is (e.g. whether it's normal or not normal). Again, tables of critical values have been published. A shortcoming of the Kolmogorov–Smirnov test is that it is not very powerful because it is devised to be sensitive against all possible types of differences between two distribution functions. [24] and [25] showed evidence that the Cucconi test, originally proposed for simultaneously comparing location and scale, is much more powerful than the Kolmogorov–Smirnov test when comparing two distribution functions.


Setting confidence limits for the shape of a distribution function

While the Kolmogorov–Smirnov test is usually used to test whether a given _F_(_x_) is the underlying probability distribution of _F__(_n_)(_x_), the procedure may be inverted to give confidence limits on _F_(_x_) itself. If one chooses a critical value of the test statistic _D__(_α_) such that P(_D__(_n_) > _D__(_α_)) = _α_, then a band of width ±_D__(_α_) around _F__(_n_)(_x_) will entirely contain _F_(_x_) with probability 1 − _α_.


The Kolmogorov–Smirnov statistic in more than one dimension

A distribution-free multivariate Kolmogorov–Smirnov goodness of fit test has been proposed by Justel, Peña and Zamar (1997).[26] The test uses a statistic which is built using Rosenblatt's transformation, and an algorithm is developed to compute it in the bivariate case. An approximate test that can be easily computed in any dimension is also presented.

The Kolmogorov–Smirnov test statistic needs to be modified if a similar test is to be applied to multivariate data. This is not straightforward because the maximum difference between two joint cumulative distribution functions is not generally the same as the maximum difference of any of the complementary distribution functions. Thus the maximum difference will differ depending on which of Pr (x < X ∧ y < Y) or Pr (X < x ∧ Y > y) or any of the other two possible arrangements is used. One might require that the result of the test used should not depend on which choice is made.

One approach to generalizing the Kolmogorov–Smirnov statistic to higher dimensions which meets the above concern is to compare the cdfs of the two samples with all possible orderings, and take the largest of the set of resulting K–S statistics. In _d_ dimensions, there are 2^(_d_)−1 such orderings. One such variation is due to Peacock[27] and another to Fasano and Franceschini[28] (see Lopes et al. for a comparison and computational details).[29] Critical values for the test statistic can be obtained by simulations, but depend on the dependence structure in the joint distribution.

In one dimension, the Kolmogorov–Smirnov statistic is identical to the so-called star discrepancy D, so another native KS extension to higher dimensions would be simply to use D also for higher dimensions. Unfortunately, the star discrepancy is hard to calculate in high dimensions.


Implementations

Kolmogorov - Smirnov Test (one or two sampled test verifies the equility of distributions) is well documented in many packages of statistical softwares and programms. The list of packages in some programms:

-   MATLAB has kstest in its Statistics Toolbox.
-   R's statistics base-package implements the test as ks.test {stats} in its "stats" package.
-   SAS implements the test in its PROC NPAR1WAY procedure.
-   Python (programming language) has an implementation of this test provided by SciPy[30] by Statistical functions (scipy.stats)
-   SYSTAT (SPSS Inc., Chicago, IL)
-   Java (programming language) has an implementation of this test provided by Apache Commons[31]
-   StatsDirect (StatsDirect Ltd, Manchester, UK) implements all common variants.
-   Stata (Stata Corporation, College Station, TX) implements the test in ksmirnov (Kolmogorov–Smirnov equality-of-distributions test) command. [32]
-   PSPP implements the test in its KOLMOGOROV-SMIRNOV (or using K-S shortcut function.
-   Excel runs the test as KSCRIT and KSPROB [33]


See also

-   Kuiper's test
-   Shapiro–Wilk test
-   Anderson–Darling test


References


Further reading

-   -   -   -   -


External links

-   -   Short introduction
-   KS test explanation
-   JavaScript implementation of one- and two-sided tests
-   Online calculator with the KS test
-   Open-source C++ code to compute the Kolmogorov distribution and perform the KS test
-   Paper on Evaluating Kolmogorov’s Distribution; contains C implementation. This is the method used in Matlab.
-   Paper on Computing the Two-Sided Kolmogorov–Smirnov Distribution; computing the cdf of the KS statistic in C or Java.
-   Paper powerlaw: A Python Package for Analysis of Heavy-Tailed Distributions; Jeff Alstott, Ed Bullmore, Dietmar Plenz. Among others, it also performs the Kolmogorov–Smirnov test. Source code and installers of powerlaw package are available at PyPi.

Category:Statistical tests Category:Statistical distance Category:Nonparametric statistics Category:Normality tests

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

[20]

[21]

[22]

[23] Eq. (15) in Section 3.3.1 of Knuth, D.E., The Art of Computer Programming, Volume 2 (Seminumerical Algorithms), 3rd Edition, Addison Wesley, Reading Mass, 1998.

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32] {{ cite web |url=https://www.stata.com/manuals13/rksmirnov.pdf%7Ctitle=ksmirnov — Kolmogorov –Smirnov equality-of-distributions test |access-date= 18 June 2019}}

[33]