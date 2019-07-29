In statistics, a CENTRAL TENDENCY (or MEASURE OF CENTRAL TENDENCY) is a central or typical value for a probability distribution.[1] It may also be called a CENTER or LOCATION of the distribution. Colloquially, measures of central tendency are often called _averages._ The term _central tendency_ dates from the late 1920s.[2]

The most common measures of central tendency are the arithmetic mean, the median and the mode. A central tendency can be calculated for either a finite set of values or for a theoretical distribution, such as the normal distribution. Occasionally authors use central tendency to denote "the tendency of quantitative data to cluster around some central value."[3][4]

The central tendency of a distribution is typically contrasted with its _dispersion_ or _variability_; dispersion and central tendency are the often characterized properties of distributions. Analysis may judge whether data has a strong or a weak central tendency based on its dispersion.


Measures

The following may be applied to one-dimensional data. Depending on the circumstances, it may be appropriate to transform the data before calculating a central tendency. Examples are squaring the values or taking logarithms. Whether a transformation is appropriate and what it should be, depend heavily on the data being analyzed.

Arithmetic mean or simply, mean: the sum of all measurements divided by the number of observations in the data set.
Median: the middle value that separates the higher half from the lower half of the data set. The median and the mode are the only measures of central tendency that can be used for ordinal data, in which values are ranked relative to each other but are not measured absolutely.
Mode: the most frequent value in the data set. This is the only central tendency measure that can be used with nominal data, which have purely qualitative category assignments.
Geometric mean: the _n_th root of the product of the data values, where there are _n_ of these. This measure is valid only for data that are measured absolutely on a strictly positive scale.
Harmonic mean: the reciprocal of the arithmetic mean of the reciprocals of the data values. This measure too is valid only for data that are measured absolutely on a strictly positive scale.
Weighted arithmetic mean: an arithmetic mean that incorporates weighting to certain data elements.
Truncated mean or trimmed mean: the arithmetic mean of data values after a certain number or proportion of the highest and lowest data values have been discarded.

:; Interquartile mean: a truncated mean based on data within the interquartile range.

Midrange: the arithmetic mean of the maximum and minimum values of a data set.
Midhinge: the arithmetic mean of the first and third quartiles.
Trimean: the weighted arithmetic mean of the median and two quartiles.
Winsorized mean: an arithmetic mean in which extreme values are replaced by values closer to the median.

Any of the above may be applied to each dimension of multi-dimensional data, but the results may not be invariant to rotations of the multi-dimensional space. In addition, there are the

Geometric median: which minimizes the sum of distances to the data points. This is the same as the median when applied to one-dimensional data, but it is not the same as taking the median of each dimension independently. It is not invariant to different rescaling of the different dimensions.
Quadratic mean (often known as the root mean square): useful in engineering, but not often used in statistics. This is because it is not a good indicator of the center of the distribution when the distribution includes negative values.
Simplicial depth: the probability that a randomly chosen simplex with vertices from the given distribution will contain the given center
Tukey median: a point with the property that every halfspace containing it also contains many sample points


Solutions to variational problems

Several measures of central tendency can be characterized as solving a variational problem, in the sense of the calculus of variations, namely minimizing variation from the center. That is, given a measure of statistical dispersion, one asks for a measure of central tendency that minimizes variation: such that variation from the center is minimal among all choices of center. In a quip, "dispersion precedes location". This center may or may not be unique. In the sense of _L_^(_p_) spaces, the correspondence is:

  _L_^(_p_)   dispersion                   central tendency
  ----------- ---------------------------- ------------------
  _L_⁰        variation ratio              mode
  _L_¹        average absolute deviation   median
  _L_¹        average absolute deviation   geometric median
  _L_²        standard deviation           mean
  _L_^(∞)     maximum deviation            midrange

The associated functions are called _p_-norms: respectively 0-"norm", 1-norm, 2-norm, and ∞-norm. The function corresponding to the _L_⁰ space is not a norm, and is thus often referred to in quotes: 0-"norm".

In equations, for a given (finite) data set _X_, thought of as a vector X = (x₁, …, x_(n)), the dispersion about a point _c_ is the "distance" from X to the constant vector C = (c, …, c) in the _p_-norm (normalized by the number of points _n_):

$$f_p(c) = \left\| \mathbf{x} - \mathbf{c} \right\|_p := \bigg( \frac{1}{n} \sum_{i=1}^n \left| x_i - c\right| ^p \bigg) ^{1/p}.$$

Note that for p = 0 and p = ∞ these functions are defined by taking limits, respectively as p → 0 and p → ∞. For p = 0 the limiting values are 0⁰ = 0 and a⁰ = 1 for a ≠ 0, so the difference becomes simply equality, so the 0-norm counts the number of _unequal_ points. For p = ∞ the largest number dominates, and thus the ∞-norm is the maximum difference.

Uniqueness

The mean (_L_² center) and midrange (_L_^(∞) center) are unique (when they exist), while the median (_L_¹ center) and mode (_L_⁰ center) are not in general unique. This can be understood in terms of convexity of the associated functions (coercive functions).

The 2-norm and ∞-norm are strictly convex, and thus (by convex optimization) the minimizer is unique (if it exists), and exists for bounded distributions. Thus standard deviation about the mean is lower than standard deviation about any other point, and the maximum deviation about the midrange is lower than the maximum deviation about any other point.

The 1-norm is not _strictly_ convex, whereas strict convexity is needed to ensure uniqueness of the minimizer. Correspondingly, the median (in this sense of minimizing) is not in general unique, and in fact any point between the two central points of a discrete distribution minimizes average absolute deviation.

The 0-"norm" is not convex (hence not a norm). Correspondingly, the mode is not unique – for example, in a uniform distribution _any_ point is the mode.

Information geometry

The notion of a "center" as minimizing variation can be generalized in information geometry as a distribution that minimizes divergence (a generalized distance) from a data set. The most common case is maximum likelihood estimation, where the maximum likelihood estimate (MLE) maximizes likelihood (minimizes expected surprisal), which can be interpreted geometrically by using entropy to measure variation: the MLE minimizes cross entropy (equivalently, relative entropy, Kullback–Leibler divergence).

A simple example of this is for the center of nominal data: instead of using the mode (the only single-valued "center"), one often uses the empirical measure (the frequency distribution divided by the sample size) as a "center". For example, given binary data, say heads or tails, if a data set consists of 2 heads and 1 tails, then the mode is "heads", but the empirical measure is 2/3 heads, 1/3 tails, which minimizes the cross-entropy (total surprisal) from the data set. This perspective is also used in regression analysis, where least squares finds the solution that minimizes the distances from it, and analogously in logistic regression, a maximum likelihood estimate minimizes the surprisal (information distance).


Relationships between the mean, median and mode

For unimodal distributions the following bounds are known and are sharp:[5]

    $\frac{| \theta - \mu |}{ \sigma } \le \sqrt{ 3 } ,$

    $\frac{| \nu - \mu |}{ \sigma } \le \sqrt{ 0.6 } ,$

    $\frac{| \theta - \nu |}{ \sigma } \le \sqrt{ 3 } ,$

where _μ_ is the mean, _ν_ is the median, _θ_ is the mode, and _σ_ is the standard deviation.

For every distribution,[6][7]

    $\frac{| \nu - \mu |}{ \sigma } \le 1.$


See also

-   Expected value
-   Location parameter


References

de:Lagemaß

Category:Summary statistics Category:Probability theory

[1] Weisberg H.F (1992) _Central Tendency and Variability_, Sage University Paper Series on Quantitative Applications in the Social Sciences, p.2

[2]

[3] Upton, G.; Cook, I. (2008) _Oxford Dictionary of Statistics_, OUP (entry for "central tendency")

[4] Dodge, Y. (2003) _The Oxford Dictionary of Statistical Terms_, OUP for International Statistical Institute. (entry for "central tendency")

[5] Johnson NL, Rogers CA (1951) "The moment problem for unimodal distributions". _Annals of Mathematical Statistics_, 22 (3) 433–439

[6] Hotelling H, Solomons LM (1932) The limits of a measure of skewness. Annals Math Stat 3, 141–114

[7] Garver (1932) Concerning the limits of a mesuare of skewness. Ann Math Stats 3(4) 141–142