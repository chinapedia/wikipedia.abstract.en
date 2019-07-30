In mathematics, the HARMONIC MEAN (sometimes called the SUBCONTRARY MEAN) is one of several kinds of average, and in particular one of the Pythagorean means. Typically, it is appropriate for situations when the average of rates is desired.

The harmonic mean can be expressed as the reciprocal of the arithmetic mean of the reciprocals of the given set of observations. As a simple example, the harmonic mean of 1, 4, and 4 is

    $\left(\frac{1^{-1} + 4^{-1} + 4^{-1}}{3}\right)^{-1} = \frac{3}{\frac{1}{1} + \frac{1}{4} + \frac{1}{4}} = \frac{3}{1.5} = 2\,.$


Definition

The harmonic mean _H_ of the positive real numbers x₁, x₂, …, x_(n) is defined to be

$$H = \frac{n}{\frac1{x_1} + \frac1{x_2} + \cdots + \frac1{x_n}} = \frac{n}{\sum\limits_{i=1}^n \frac1{x_i}} = \left(\frac{\sum\limits_{i=1}^n x_i^{-1}}{n}\right)^{-1}.$$

The third formula in the above equation expresses the harmonic mean as the reciprocal of the arithmetic mean of the reciprocals.

From the following formula:

$$H = \frac{n\cdot \prod\limits_{j=1}^n x_j}{ \sum\limits_{i=1}^n \left\{\frac{1}{x_i}{\prod\limits_{j=1}^n x_j}\right\}}.$$

it is more apparent that the harmonic mean is related to the arithmetic and geometric means. It is the reciprocal dual of the arithmetic mean for positive inputs:

1/_H_(1/_x_₁…1/_x__(_n_)) = _A_(_x_₁…_x__(_n_))

The harmonic mean is a Schur-concave function, and dominated by the minimum of its arguments, in the sense that for any positive set of arguments, min (x₁…x_(n)) ≤ H(x₁…x_(n)) ≤ nmin (x₁…x_(n)). Thus, the harmonic mean cannot be made arbitrarily large by changing some values to bigger ones (while having at least one value unchanged).


Relationship with other means

The harmonic mean is one of the three Pythagorean means. For all _positive_ data sets _containing at least one pair of nonequal values_, the harmonic mean is always the least of the three means,[1] while the arithmetic mean is always the greatest of the three and the geometric mean is always in between. (If all values in a nonempty dataset are equal, the three means are always equal to one another; e.g., the harmonic, geometric, and arithmetic means of {2, 2, 2} are all 2.)

It is the special case _M__(−1) of the power mean:

$$H\left(x_1, x_2, \ldots, x_n\right) = M_{-1}\left(x_1, x_2, \ldots, x_n\right) = \frac{n}{x_1^{-1} + x_2^{-1} + \cdots + x_n^{-1}}$$

Since the harmonic mean of a list of numbers tends strongly toward the least elements of the list, it tends (compared to the arithmetic mean) to mitigate the impact of large outliers and aggravate the impact of small ones.

The arithmetic mean is often mistakenly used in places calling for the harmonic mean.[2] In the speed example below for instance, the arithmetic mean of 50 is incorrect, and too big.

The harmonic mean is related to the other Pythagorean means, as seen in the equation below. This can be seen by interpreting the denominator to be the arithmetic mean of the product of numbers _n_ times but each time omitting the _j_-th term. That is, for the first term, we multiply all _n_ numbers except the first; for the second, we multiply all _n_ numbers except the second; and so on. The numerator, excluding the _n_, which goes with the arithmetic mean, is the geometric mean to the power _n_. Thus the _n_-th harmonic mean is related to the _n_-th geometric and arithmetic means. The general formula is

$$H\left(x_1, \ldots, x_n\right) =
  \frac{\left(G\left(x_1, \ldots, x_n\right)\right)^n}
       {A\left(x_2 x_3 \cdots x_n, x_1 x_3 \cdots x_n, \ldots, x_1 x_2 \cdots x_{n-1}\right)} =
  \frac{\left(G\left(x_1, \ldots, x_n\right)\right)^n}
       {A\left(
         \frac{1}{x_1} {\prod\limits_{i=1}^n x_i},
         \frac{1}{x_2} {\prod\limits_{i=1}^n x_i},
         \ldots,
         \frac{1}{x_n} {\prod\limits_{i=1}^n x_i}
       \right)}.$$

If a set of non-identical numbers is subjected to a mean-preserving spread — that is, two or more elements of the set are "spread apart" from each other while leaving the arithmetic mean unchanged — then the harmonic mean always decreases.[3]


Harmonic mean of two or three numbers

Two numbers

of two numbers, _a_ and _b_. The harmonic mean is denoted by _H_ in purple. _Q_ denotes a fourth mean, the quadratic mean. Since a hypotenuse is always longer than a leg of a right triangle, the diagram shows that _Q_ > _A_ > _G_ > _H_.]]

For the special case of just two numbers, x₁ and x₂, the harmonic mean can be written

$$H = \frac{2x_1 x_2}{x_1 + x_2}.$$

In this special case, the harmonic mean is related to the arithmetic mean $A = \frac{x_1 + x_2}{2}$ and the geometric mean $G = \sqrt{x_1 x_2},$ by

$$H = \frac{G^2}{A} = G \cdot \left(\frac{G}{A}\right).$$

Since $\tfrac{G}{A} \le 1$ by the inequality of arithmetic and geometric means, this shows for the _n_ = 2 case that _H_ ≤ _G_ (a property that in fact holds for all _n_). It also follows that $G = \sqrt{AH}$, meaning the two numbers' geometric mean equals the geometric mean of their arithmetic and harmonic means.

Three numbers

For the special case of three numbers, x₁, x₂ and x₃, the harmonic mean can be written

$$H = \frac{3 x_1 x_2 x_3}{x_1 x_2 + x_1 x_3 + x_2 x_3}.$$

Three positive numbers _H_, _G_, and _A_ are respectively the harmonic, geometric, and arithmetic means of three positive numbers if and only if[4] the following inequality holds

$$\frac{A^3}{G^3} + \frac{G^3}{H^3} + 1 \le \frac3{4} \left(1 + \frac{A}{H}\right)^2.$$


Weighted harmonic mean

If a set of weights w₁, ..., w_(n) is associated to the dataset x₁, ..., x_(n), the WEIGHTED HARMONIC MEAN is defined by

$$H = \frac{\sum\limits_{i=1}^n w_i}{\sum\limits_{i=1}^n \frac{w_i}{x_i}}
    = \left( \frac{\sum\limits_{i=1}^n w_i x_i^{-1}}{\sum\limits_{i=1}^n w_i} \right)^{-1}.$$

The unweighted harmonic mean can be regarded as the special case where all of the weights are equal.


Examples

In physics

Average speed

In many situations involving rates and ratios, the harmonic mean provides the truest average. For instance, if a vehicle travels a certain distance _d_ outbound at a speed _x_ (e.g. 60 km/h) and returns the same distance at a speed _y_ (e.g. 20 km/h), then its average speed is the harmonic mean of _x_ and _y_ (30 km/h) – not the arithmetic mean (40 km/h). The total travel time is the same as if it had traveled the whole distance at that average speed. This can be proven as follows:[5]

Average speed for the entire journey

    =
    =
    =
    =
    = (harmonic mean of _x_ and _y_)

However, if the vehicle travels for a certain amount of _time_ at a speed _x_ and then the same amount of time at a speed _y_, then its average speed is the arithmetic mean of _x_ and _y_, which in the above example is 40 km/h. The same principle applies to more than two segments: given a series of sub-trips at different speeds, if each sub-trip covers the same _distance_, then the average speed is the _harmonic_ mean of all the sub-trip speeds; and if each sub-trip takes the same amount of _time_, then the average speed is the _arithmetic_ mean of all the sub-trip speeds. (If neither is the case, then a weighted harmonic mean or weighted arithmetic mean is needed. For the arithmetic mean, the speed of each portion of the trip is weighted by the duration of that portion, while for the harmonic mean, the corresponding weight is the distance. In both cases, the resulting formula reduces to dividing the total distance by the total time.)

However one may avoid the use of the harmonic mean for the case of "weighting by distance". Pose the problem as finding "slowness" of the trip where "slowness" (in hours per kilometre) is the inverse of speed. When trip slowness is found, invert it so as to find the "true" average trip speed. For each trip segment i, the slowness s_(i) = 1/speed_(i). Then take the weighted arithmetic mean of the s_(i)'s weighted by their respective distances (optionally with the weights normalized so they sum to 1 by dividing them by trip length). This gives the true average slowness (in time per kilometre). It turns out that this procedure, which can be done with no knowledge of the harmonic mean, amounts to the same mathematical operations as one would use in solving this problem by using the harmonic mean. Thus it illustrates why the harmonic mean works in this case.

Density

Similarly, if one wishes to estimate the density of an alloy given the densities of its constituent elements and their mass fractions (or, equivalently, percentages by mass), then the predicted density of the alloy (exclusive of typically minor volume changes due to atom packing effects) is the weighted harmonic mean of the individual densities, weighted by mass, rather than the weighted arithmetic mean as one might at first expect. To use the weighted arithmetic mean, the densities would have to be weighted by volume. Applying dimensional analysis to the problem while labelling the mass units by element and making sure that only like element-masses cancel, makes this clear.

Electricity

If one connects two electrical resistors in parallel, one having resistance _x_ (e.g., 60 Ω) and one having resistance _y_ (e.g., 40 Ω), then the effect is the same as if one had used two resistors with the same resistance, both equal to the harmonic mean of _x_ and _y_ (48 Ω): the equivalent resistance, in either case, is 24 Ω (one-half of the harmonic mean). This same principle applies to capacitors in series or to inductors in parallel.

However, if one connects the resistors in series, then the average resistance is the arithmetic mean of _x_ and _y_ (with total resistance equal to the sum of x and y). As with the previous example, the same principle applies when more than two resistors are connected, provided that all are in parallel or all are in series.

The "conductivity effective mass" of a semiconductor is also defined as the harmonic mean of the effective masses along the three crystallographic directions.[6]

In finance

The weighted harmonic mean is the preferable method for averaging multiples, such as the price–earnings ratio (P/E), in which price is in the numerator. If these ratios are averaged using a weighted arithmetic mean (a common error), high data points are given greater weights than low data points. The weighted harmonic mean, on the other hand, gives equal weight to each data point.[7] The simple weighted arithmetic mean when applied to non-price normalized ratios such as the P/E is biased upwards and cannot be numerically justified, since it is based on equalized earnings; just as vehicles speeds cannot be averaged for a roundtrip journey.[8]

For example, consider two firms, one with a market capitalization of $150 billion and earnings of $5 billion (P/E of 30) and one with a market capitalization of $1 billion and earnings of $1 million (P/E of 1000). Consider an index made of the two stocks, with 30% invested in the first and 70% invested in the second. We want to calculate the P/E ratio of this index.

Using the weighted arithmetic mean (incorrect):

    P/E = 0.3 × 30 + 0.7 × 1000 = 709

Using the weighted harmonic mean (correct):

    $P/E = \frac{0.3 + 0.7}{0.3/30 + 0.7/1000} \approx 93.46$

Thus, the correct P/E of 93.46 of this index can only be found using the weighted harmonic mean, while the weighted arithmetic mean will significantly overestimate it.

In geometry

In any triangle, the radius of the incircle is one-third of the harmonic mean of the altitudes.

For any point P on the minor arc BC of the circumcircle of an equilateral triangle ABC, with distances _q_ and _t_ from B and C respectively, and with the intersection of PA and BC being at a distance _y_ from point P, we have that _y_ is half the harmonic mean of _q_ and _t_.[9]

In a right triangle with legs _a_ and _b_ and altitude _h_ from the hypotenuse to the right angle, is half the harmonic mean of and .[10][11]

Let _t_ and _s_ (_t_ > _s_) be the sides of the two inscribed squares in a right triangle with hypotenuse _c_. Then equals half the harmonic mean of and .

Let a trapezoid have vertices A, B, C, and D in sequence and have parallel sides AB and CD. Let E be the intersection of the diagonals, and let F be on side DA and G be on side BC such that FEG is parallel to AB and CD. Then FG is the harmonic mean of AB and DC. (This is provable using similar triangles.)

One application of this trapezoid result is in the crossed ladders problem, where two ladders lie oppositely across an alley, each with feet at the base of one sidewall, with one leaning against a wall at height _A_ and the other leaning against the opposite wall at height _B_, as shown. The ladders cross at a height of _h_ above the alley floor. Then _h_ is half the harmonic mean of _A_ and _B_. This result still holds if the walls are slanted but still parallel and the "heights" _A_, _B_, and _h_ are measured as distances from the floor along lines parallel to the walls. This can be proved easily using the area formula of a trapezoid and area addition formula.

In an ellipse, the semi-latus rectum (the distance from a focus to the ellipse along a line parallel to the minor axis) is the harmonic mean of the maximum and minimum distances of the ellipse from a focus.

In other sciences

In computer science, specifically information retrieval and machine learning, the harmonic mean of the precision (true positives per predicted positive) and the recall (true positives per real positive) is often used as an aggregated performance score for the evaluation of algorithms and systems: the F-score (or F-measure). This is used in information retrieval because only the positive class is of relevance, while number of negatives, in general, is large and unknown.[12] It is thus a trade-off as to whether the correct positive predictions should be measured in relation to the number of predicted positives or the number of real positives, so it is measured versus a putative number of positives that is an arithmetic mean of the two possible denominators.

A consequence arises from basic algebra in problems where people or systems work together. As an example, if a gas-powered pump can drain a pool in 4 hours and a battery-powered pump can drain the same pool in 6 hours, then it will take both pumps , which is equal to 2.4 hours, to drain the pool together. This is one-half of the harmonic mean of 6 and 4: 4.8}}. That is the appropriate average for the two types of pump is the harmonic mean, and with one pair of pumps (two pumps), it takes half this harmonic mean time, while with two pairs of pumps (four pumps) it would take a quarter of this harmonic mean time.

In hydrology, the harmonic mean is similarly used to average hydraulic conductivity values for a flow that is perpendicular to layers (e.g., geologic or soil) - flow parallel to layers uses the arithmetic mean. This apparent difference in averaging is explained by the fact that hydrology uses conductivity, which is the inverse of resistivity.

In sabermetrics, a player's Power–speed number is the harmonic mean of their home run and stolen base totals.

In population genetics, the harmonic mean is used when calculating the effects of fluctuations in generation size on the effective breeding population. This is to take into account the fact that a very small generation is effectively like a bottleneck and means that a very small number of individuals are contributing disproportionately to the gene pool, which can result in higher levels of inbreeding.

When considering fuel economy in automobiles two measures are commonly used – miles per gallon (mpg), and litres per 100 km. As the dimensions of these quantities are the inverse of each other (one is distance per volume, the other volume per distance) when taking the mean value of the fuel economy of a range of cars one measure will produce the harmonic mean of the other – i.e., converting the mean value of fuel economy expressed in litres per 100 km to miles per gallon will produce the harmonic mean of the fuel economy expressed in miles-per-gallon.

In chemistry and nuclear physics the average mass per particle of a mixture consisting of different species (e.g., molecules or isotopes) is given by the harmonic mean of the individual species' masses weighted by their respective mass fraction.


Beta distribution

The harmonic mean of a beta distribution with shape parameters _α_ and _β_ is:

$$H = \frac{\alpha - 1}{\alpha + \beta - 1} \text{ conditional on } \alpha > 1 \, \, \& \, \, \beta > 0$$

The harmonic mean with _α_ < 1 is undefined because its defining expression is not bounded in [0, 1].

Letting _α_ = _β_

    $H = \frac{\alpha - 1}{2 \alpha - 1}$

showing that for _α_ = _β_ the harmonic mean ranges from 0 for _α_ = _β_ = 1, to 1/2 for _α_ = _β_ → ∞.

The following are the limits with one parameter finite (non-zero) and the other parameter approaching these limits:

$$\begin{align}
  \lim_{\alpha \to 0} H &= \text{ undefined } \\
  \lim_{\alpha \to 1} H &= \lim_{\beta \to \infty}  H = 0 \\
  \lim_{\beta \to 0}  H &= \lim_{\alpha \to \infty} H = 1
\end{align}$$

With the geometric mean the harmonic mean may be useful in maximum likelihood estimation in the four parameter case.

A second harmonic mean (_H__(1\ −\ X)) also exists for this distribution

$$H_{1-X} =  \frac{\beta - 1}{\alpha + \beta - 1} \text{ conditional on } \beta > 1 \, \, \& \, \, \alpha > 0$$

This harmonic mean with _β_ < 1 is undefined because its defining expression is not bounded in [ 0, 1 ].

Letting _α_ = _β_ in the above expression

$$H_{1-X} = \frac{\beta - 1}{2 \beta - 1}$$

showing that for _α_ = _β_ the harmonic mean ranges from 0, for _α_ = _β_ = 1, to 1/2, for _α_ = _β_ → ∞.

The following are the limits with one parameter finite (non zero) and the other approaching these limits:

    \begin{align}

 \lim_{\beta \to 0}  H_{1-X} &= \text{ undefined } \\
 \lim_{\beta \to 1}  H_{1-X} &= \lim_{\alpha \to \infty} H_{1-X} = 0 \\
 \lim_{\alpha \to 0} H_{1-X} &= \lim_{\beta \to \infty}  H_{1-X} = 1

\end{align}

Although both harmonic means are asymmetric, when _α_ = _β_ the two means are equal.


Lognormal distribution

The harmonic mean ( _H_ ) of a lognormal distribution is[13]

    $H = \exp \left( \mu - \frac{1}{2} \sigma^2 \right),$

where _μ_ is the arithmetic mean and _σ_² is the variance of the distribution.

The harmonic and arithmetic means are related by

    $\frac{\mu}{H} = 1 + C_v \, ,$

where _C__(v) is the coefficient of variation.

The geometric (_G_), arithmetic and harmonic means are related by[14]

    Hμ = G².


Pareto distribution

The harmonic mean of type 1 Pareto distribution is[15]

    $H = k \left( 1 + \frac{1}{\alpha} \right)$

where _k_ is the scale parameter and _α_ is the shape parameter.


Statistics

For a random sample, the harmonic mean is calculated as above. Both the mean and the variance may be infinite (if it includes at least one term of the form 1/0).

Sample distributions of mean and variance

The mean of the sample _m_ is asymptotically distributed normally with variance _s_².

$$s^2 = \frac{m \left[\operatorname{E}\left(\frac{1}{x} - 1\right)\right]}{m^2 n}$$

The variance of the mean itself is[16]

    $\operatorname{Var}\left(\frac{1}{x}\right) = \frac{m \left[\operatorname{E}\left(\frac{1}{x} - 1\right)\right]}{n m^2}$

where _m_ is the arithmetic mean of the reciprocals, _x_ are the variates, _n_ is the population size and _E_ is the expectation operator.

Delta method

Assuming that the variance is not infinite and that the central limit theorem applies to the sample then using the delta method, the variance is

    $\operatorname{Var}(H) = \frac{1}{n}\frac{s^2}{m^4}$

where _H_ is the harmonic mean, _m_ is the arithmetic mean of the reciprocals

    $m = \frac{1}{n} \sum{ \frac{1}{x} }.$

_s_² is the variance of the reciprocals of the data

    $s^2 = \operatorname{Var}\left( \frac{1}{x} \right)$

and _n_ is the number of data points in the sample.

Jackknife method

A jackknife method of estimating the variance is possible if the mean is known.[17] This method is the usual 'delete 1' rather than the 'delete m' version.

This method first requires the computation of the mean of the sample (_m_)

    $m = \frac{n}{ \sum{ \frac{1}{x} } }$

where _x_ are the sample values.

A series of value _w_(i)_ is then computed where

    $w_i = \frac{n - 1}{ \sum_{j \neq i} \frac{1}{x} }.$

The mean (_h_) of the _w__(i) is then taken:

    $h = \frac{1}{n} \sum{w_i}$

The variance of the mean is

    $\frac{n - 1}{n} \sum{(m - h)}^2.$

Significance testing and confidence intervals for the mean can then be estimated with the t test.

Size biased sampling

Assume a random variate has a distribution _f_( _x_ ). Assume also that the likelihood of a variate being chosen is proportional to its value. This is known as length based or size biased sampling.

Let _μ_ be the mean of the population. Then the probability density function _f_*( _x_ ) of the size biased population is

    $f^*(x) = \frac{x f(x)}{\mu}$

The expectation of this length biased distribution E^(*)( _x_ ) is[18]

    $\operatorname{E}^*(x) = \mu \left[ 1 + \frac{\sigma^2}{\mu^2} \right]$

where _σ_² is the variance.

The expectation of the harmonic mean is the same as the non-length biased version E( _x_ )

    $\operatorname{E}^* \left( \frac{1}{x} \right) = \operatorname{E}\left( \frac{1}{x} \right)$

The problem of length biased sampling arises in a number of areas including textile manufacture[19] pedigree analysis[20] and survival analysis[21]

Akman _et al_ have developed a test for the detection of length based bias in samples.[22]

Shifted variables

If _X_ is a positive random variable and _q_ > 0 then for all _ε_ > 0[23]

    $\operatorname{Var} \left[\frac{1}{(X + \epsilon)^q}\right] < \operatorname{Var} \left(\frac{1}{X^q}\right) .$

Moments

Assuming that _X_ and E(_X_) are > 0 then[24]

    $\operatorname{E}\left[ \frac{1}{X} \right] \ge \frac{1}{ \operatorname{E}(X) }$

This follows from Jensen's inequality.

Gurland has shown that[25] for a distribution that takes only positive values, for any _n_ > 0

    $\operatorname{E} \left(X^{-1}\right) \ge \frac{\operatorname{E} \left(X^{n-1}\right)}{\operatorname{E}\left(X^n\right)} .$

Under some conditions[26]

    E (a + X)^( − n) ∼ E (a+X^( − n))

where ~ means approximately.

Sampling properties

Assuming that the variates (_x_) are drawn from a lognormal distribution there are several possible estimators for _H_:

    \begin{align}

 H_1 &= \frac{n}{ \sum\left(\frac{1}{x}\right) } \\
 H_2 &= \frac{\left( \exp\left[ \frac{1}{n} \sum \log_e(x) \right] \right)^2}{ \frac{1}{n} \sum(x) } \\
 H_3 &= \exp \left(m - \frac{1}{2} s^2 \right)

\end{align}

where

    $m = \frac{1}{n} \sum \log_e (x)$
    $s^2 = \frac{1}{n} \sum \left(\log_e (x) - m\right)^2$

Of these _H_₃ is probably the best estimator for samples of 25 or more.[27]

Bias and variance estimators

A first order approximation to the bias and variance of _H_₁ are[28]

    \begin{align}

 \operatorname{bias}\left[ H_1 \right] &= \frac{H C_v}{n} \\
  \operatorname{Var}\left[ H_1 \right] &= \frac{H^2 C_v}{n}

\end{align}

where _C__(v) is the coefficient of variation.

Similarly a first order approximation to the bias and variance of _H_₃ are[29]

    \begin{align}

 \frac{H \log_e \left(1 + C_v\right)}{2n} \left[ 1 + \frac{1 + C_v^2}{2} \right] \\
 \frac{H \log_e \left(1 + C_v\right)}{n} \left[ 1 + \frac{1 + C_v^2}{4} \right]

\end{align}

It has been found in numerical experiments that _H_₃ is generally a superior estimator of the harmonic mean than _H_₁.[30] _H_₂ produces estimates that are largely similar to _H_₁.


Notes

The Environmental Protection Agency recommend the use of the harmonic mean in setting maximum toxin levels in water.[31]

In geophysical reservoir engineering studies, the harmonic mean is widely used.[32]


See also

-   Contraharmonic mean
-   Generalized mean
-   Harmonic number
-   Rate (mathematics)
-   Weighted mean
-   Parallel (operator)
-   Geometric mean
-   Weighted geometric mean
-   HM-GM-AM-QM inequalities


References


External links

-   -   Averages, Arithmetic and Harmonic Means at cut-the-knot

Category:Means

[1] Da-Feng Xia, Sen-Lin Xu, and Feng Qi, "A proof of the arithmetic mean-geometric mean-harmonic mean inequalities", RGMIA Research Report Collection, vol. 2, no. 1, 1999, http://ajmaa.org/RGMIA/papers/v2n1/v2n1-10.pdf

[2] *_Statistical Analysis_, Ya-lun Chou, Holt International, 1969,

[3] Mitchell, Douglas W., "More on spreads and non-arithmetic means," _The Mathematical Gazette_ 88, March 2004, 142–144.

[4] _Inequalities proposed in “Crux Mathematicorum”_, .

[5]

[6]

[7]

[8]

[9]

[10] Voles, Roger, "Integer solutions of a^( − 2) + b^( − 2) = d^( − 2)," _Mathematical Gazette_ 83, July 1999, 269–271.

[11] Richinick, Jennifer, "The upside-down Pythagorean Theorem," _Mathematical Gazette_ 92, July 2008, 313–;317.

[12]

[13] Aitchison J, Brown JAC (1969). The lognormal distribution with special reference to its uses in economics. Cambridge University Press, New York

[14] Rossman LA (1990) Design stream flows based on harmonic means. J Hydr Eng ASCE 116(7) 946–950

[15] Johnson NL, Kotz S, Balakrishnan N (1994) Continuous univariate distributions Vol 1. Wiley Series in Probability and Statistics.

[16] Zelen M (1972) Length-biased sampling and biomedical problems. In: Biometric Society Meeting, Dallas, Texas

[17] Lam FC (1985) Estimate of variance for harmonic mean half lives. J Pharm Sci 74(2) 229-231

[18]

[19] Cox DR (1969) Some sampling problems in technology. In: New developments in survey sampling. U.L. Johnson, H Smith eds. New York: Wiley Interscience

[20] Davidov O, Zelen M (2001) Referent sampling, family history and relative risk: the role of length‐biased sampling. Biostat 2(2): 173-181 doi: 10.1093/biostatistics/2.2.173

[21] Zelen M, Feinleib M (1969) On the theory of screening for chronic diseases. Biometrika 56: 601-614

[22] Akman O, Gamage J, Jannot J, Juliano S, Thurman A, Whitman D (2007) A simple test for detection of length-biased sampling. J Biostats 1 (2) 189-195

[23] Chuen-Teck See, Chen J (2008) Convex functions of random variables. J Inequal Pure Appl Math 9 (3) Art 80

[24]

[25] Gurland J (1967) An inequality satisfied by the expectation of the reciprocal of a random variable. The American Statistician. 21 (2) 24

[26] Sung SH (2010) On inverse moments for a class of nonnegative random variables. J Inequal Applic doi:10.1155/2010/823767

[27] Stedinger JR (1980) Fitting lognormal distributions to hydrologic data. Water Resour Res 16(3) 481–490

[28] Limbrunner JF, Vogel RM, Brown LC (2000) Estimation of harmonic mean of a lognormal variable. J Hydrol Eng 5(1) 59-66

[29]

[30]

[31] EPA (1991) Technical support document for water quality-based toxics control. EPA/505/2-90-001. Office of Water

[32] Muskat M (1937) The flow of homogeneous fluids through porous media. McGraw-Hill, New York