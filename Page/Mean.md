There are several kinds of MEANS in various branches of mathematics (especially statistics).

For a data set, the arithmetic mean, also called the mathematical expectation or average, is the central value of a discrete set of numbers: specifically, the sum of the values divided by the number of values. The arithmetic mean of a set of numbers _x_₁, _x_₂, ..., _x_(n)_ is typically denoted by x̄, pronounced "_x_ bar". If the data set were based on a series of observations obtained by sampling from a statistical population, the arithmetic mean is the SAMPLE MEAN (denoted x̄) to distinguish it from the mean of the underlying distribution, the POPULATION MEAN (denoted μ or μ_(x)).[1] Pronounced "mew" /'mjuː/.

In probability and statistics, the population MEAN, or expected value, are a measure of the central tendency either of a probability distribution or of the random variable characterized by that distribution.[2] In the case of a discrete probability distribution of a random variable _X_, the mean is equal to the sum over every possible value weighted by the probability of that value; that is, it is computed by taking the product of each possible value _x_ of _X_ and its probability _p_(_x_), and then adding all these products together, giving μ = ∑xp(x).[3] An analogous formula applies to the case of a continuous probability distribution. Not every probability distribution has a defined mean; see the Cauchy distribution for an example. Moreover, for some distributions the mean is infinite.

For a finite population, the POPULATION MEAN of a property is equal to the arithmetic mean of the given property while considering every member of the population. For example, the population mean height is equal to the sum of the heights of every individual divided by the total number of individuals. The sample mean may differ from the population mean, especially for small samples. The law of large numbers dictates that the larger the size of the sample, the more likely it is that the sample mean will be close to the population mean.[4]

Outside probability and statistics, a wide range of other notions of "mean" are often used in geometry and analysis; examples are given below.


Types of mean

Pythagorean means

Arithmetic mean (AM)

The _arithmetic mean_ (or simply _mean_) of a sample x₁, x₂, …, x_(n), usually denoted by x̄, is the sum of the sampled values divided by the number of items in the sample

$$\bar{x} = \frac{1}{n}\left (\sum_{i=1}^n{x_i}\right ) = \frac{x_1+x_2+\cdots +x_n}{n}$$

For example, the arithmetic mean of five values: 4, 36, 45, 50, 75 is:

$$\frac{4+36+45+50+75}{5} = \frac{210}{5} = 42.$$

Geometric mean (GM)

The geometric mean is an average that is useful for sets of positive numbers that are interpreted according to their product and not their sum (as is the case with the arithmetic mean); e.g., rates of growth.

$$\bar{x} = \left( \prod_{i=1}^n{x_i} \right )^\frac{1}{n} = \left(x_1 x_2 \cdots x_n \right)^\frac{1}{n}$$

For example, the geometric mean of five values: 4, 36, 45, 50, 75 is:

$$(4 \times 36 \times 45 \times 50 \times 75)^\frac{1}{5} = \sqrt[5]{24\;300\;000} = 30.$$

Harmonic mean (HM)

The harmonic mean is an average which is useful for sets of numbers which are defined in relation to some unit, for example speed (distance per unit of time).

$$\bar{x} = n \left ( \sum_{i=1}^n \frac{1}{x_i} \right ) ^{-1}$$

For example, the harmonic mean of the five values: 4, 36, 45, 50, 75 is

$$\frac{5}{\tfrac{1}{4}+\tfrac{1}{36}+\tfrac{1}{45} + \tfrac{1}{50} + \tfrac{1}{75}} = \frac{5}{\;\tfrac{1}{3}\;} = 15.$$

Relationship between AM, GM, and HM

AM, GM, and HM satisfy these inequalities:

_A__M_ ≥ _G__M_ ≥ _H__M_ 

Equality holds if and only if all the elements of the given sample are equal.

Statistical location

Comparison_mean_median_mode.svg and mode of two skewed (log-normal) distributions.]] visualisation_mode_median_mean.svg In descriptive statistics, the mean may be confused with the median, mode or mid-range, as any of these may be called an "average" (more formally, a measure of central tendency). The mean of a set of observations is the arithmetic average of the values; however, for skewed distributions, the mean is not necessarily the same as the middle value (median), or the most likely value (mode). For example, mean income is typically skewed upwards by a small number of people with very large incomes, so that the majority have an income lower than the mean. By contrast, the median income is the level at which half the population is below and half is above. The mode income is the most likely income and favors the larger number of people with lower incomes. While the median and mode are often more intuitive measures for such skewed data, many skewed distributions are in fact best described by their mean, including the exponential and Poisson distributions.

Mean of a probability distribution

The mean of a probability distribution is the long-run arithmetic average value of a random variable having that distribution. In this context, it is also known as the expected value. For a discrete probability distribution, the mean is given by $\textstyle \sum xP(x)$, where the sum is taken over all possible values of the random variable and P(x) is the probability mass function. For a continuous distribution,the mean is $\textstyle \int_{-\infty}^{\infty} xf(x)\,dx$, where f(x) is the probability density function. In all cases, including those in which the distribution is neither discrete nor continuous, the mean is the Lebesgue integral of the random variable with respect to its probability measure. The mean need not exist or be finite; for some probability distributions the mean is infinite ( or ), while others have no mean.

Generalized means

Power mean

The generalized mean, also known as the power mean or Hölder mean, is an abstraction of the quadratic, arithmetic, geometric and harmonic means. It is defined for a set of _n_ positive numbers _x__(i) by

    $\bar{x}(m) = \left( \frac{1}{n} \sum_{i=1}^n x_i^m \right)^\frac{1}{m}$

By choosing different values for the parameter _m_, the following types of means are obtained:

    {|

|- | m → ∞ || maximum of x_(i) |- | m = 2 || quadratic mean |- | m = 1 || arithmetic mean |- | m → 0 || geometric mean |- | m =  − 1 || harmonic mean |- | m →  − ∞ || minimum of x_(i) |}

ƒ-mean

This can be generalized further as the generalized ƒ-mean

    $\bar{x} = f^{-1}\left({\frac{1}{n} \sum_{i=1}^n{f\left(x_i\right)}}\right)$

and again a suitable choice of an invertible ƒ will give

    {|

|- | f(x) = x || arithmetic mean, |- | $f(x) = \frac{1}{x}$ || harmonic mean, |- | f(x) = x^(m) || power mean, |- | f(x) = ln (x) || geometric mean. |}

Weighted arithmetic mean

The weighted arithmetic mean (or weighted average) is used if one wants to combine average values from samples of the same population with different sample sizes:

$$\bar{x} = \frac{\sum_{i=1}^n {w_i x_i}}{\sum_{i=1}^n w_i}.$$

The weights w_(i) represent the sizes of the different samples. In other applications, they represent a measure for the reliability of the influence upon the mean by the respective values.

Truncated mean

Sometimes a set of numbers might contain outliers, i.e., data values which are much lower or much higher than the others. Often, outliers are erroneous data caused by artifacts. In this case, one can use a truncated mean. It involves discarding given parts of the data at the top or the bottom end, typically an equal amount at each end and then taking the arithmetic mean of the remaining data. The number of values removed is indicated as a percentage of the total number of values.

Interquartile mean

The interquartile mean is a specific example of a truncated mean. It is simply the arithmetic mean after removing the lowest and the highest quarter of values.

    $\bar{x} = \frac{2}{n} \;\sum_{i = \frac{n}{4} + 1}^{\frac{3}{4}n}\!\! x_i$

assuming the values have been ordered, so is simply a specific example of a weighted mean for a specific set of weights.

Mean of a function

In some circumstances mathematicians may calculate a mean of an infinite (even an uncountable) set of values. This can happen when calculating the mean value y_(ave) of a function f(x). Intuitively this can be thought of as calculating the area under a section of a curve and then dividing by the length of that section. This can be done crudely by counting squares on graph paper or more precisely by integration. The integration formula is written as:

    $y_\text{ave}(a, b) = \frac{1}{b - a} \int\limits_a^b\! f(x)\,dx$

Care must be taken to make sure that the integral converges. But the mean may be finite even if the function itself tends to infinity at some points.

Mean of angles and cyclical quantities

Angles, times of day, and other cyclical quantities require modular arithmetic to add and otherwise combine numbers. In all these situations, there will not be a unique mean. For example, the times an hour before and after midnight are equidistant to both midnight and noon. It is also possible that no mean exists. Consider a color wheel -- there is no mean to the set of all colors. In these situations, you must decide which mean is most useful. You can do this by adjusting the values before averaging, or by using a specialized approach for the mean of circular quantities.

Fréchet mean

The Fréchet mean gives a manner for determining the "center" of a mass distribution on a surface or, more generally, Riemannian manifold. Unlike many other means, the Fréchet mean is defined on a space whose elements cannot necessarily be added together or multiplied by scalars. It is sometimes also known as the KARCHER MEAN (named after Hermann Karcher).

Other means

-   Arithmetic-geometric mean
-   Arithmetic-harmonic mean
-   Cesàro mean
-   Chisini mean
-   Contraharmonic mean
-   Elementary symmetric mean
-   Geometric-harmonic mean
-   Grand mean
-   Heinz mean
-   Heronian mean
-   Identric mean
-   Lehmer mean
-   Logarithmic mean
-   Moving average
-   Neuman–Sándor mean
-   Root mean square (quadratic mean)
-   Rényi's entropy (a generalized f-mean)
-   Spherical mean
-   Stolarsky mean
-   Weighted geometric mean
-   Weighted harmonic mean


Distribution of the sample mean

The arithmetic mean of a population, or population mean, is often denoted _μ_. The sample mean x̄ (the arithmetic mean of a sample of values drawn from the population) makes a good estimator of the population mean, as its expected value is equal to the population mean (that is, it is an unbiased estimator). The sample mean is a random variable, not a constant, since its calculated value will randomly differ depending on which members of the population are sampled, and consequently it will have its own distribution. For a random sample of _n_ independent observations, the expected value of the sample mean is

    E x̄ = μ

and the variance of the sample mean is

    $\operatorname{var}(\bar{x}) = \frac{\sigma^2} n.$

If the population is normally distributed, then the sample mean is normally distributed:

    $\bar{x} \thicksim N\left\{\mu, \frac{\sigma^2}{n}\right\}.$

If the population is not normally distributed, the sample mean is nonetheless approximately normally distributed if _n_ is large and _σ_²/_n_ < +∞. This follows from the central limit theorem.

The mean of a list is all of the numbers added together and divided by the amount of numbers


See also

-   Average
-   Central tendency
    -   Median
    -   Mode
-   Descriptive statistics
-   Kurtosis
-   Law of averages
-   Mean value theorem
-   Median
-   Mode (statistics)
-   Summary statistics
-   Taylor's law


References

Means Category:Moment (mathematics)

[1] Underhill, L.G.; Bradfield d. (1998) _Introstat_, Juta and Company Ltd. p. 181

[2]

[3] Elementary Statistics by Robert R. Johnson and Patricia J. Kuby, p. 279

[4] Schaum's Outline of Theory and Problems of Probability by Seymour Lipschutz and Marc Lipson, p. 141