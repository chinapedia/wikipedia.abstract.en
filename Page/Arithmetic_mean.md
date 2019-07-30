In mathematics and statistics, the ARITHMETIC MEAN (, stress on third syllable of "arithmetic"), or simply the mean or AVERAGE when the context is clear, is the sum of a collection of numbers divided by the count of numbers in the collection.[1] The collection is often a set of results of an experiment or an observational study, or frequently a set of results from a survey. The term "arithmetic mean" is preferred in some contexts in mathematics and statistics because it helps distinguish it from other means, such as the geometric mean and the harmonic mean.

In addition to mathematics and statistics, the arithmetic mean is used frequently in many diverse fields such as economics, anthropology, and history, and it is used in almost every academic field to some extent. For example, per capita income is the arithmetic average income of a nation's population.

While the arithmetic mean is often used to report central tendencies, it is not a robust statistic, meaning that it is greatly influenced by outliers (values that are very much larger or smaller than most of the values). Notably, for skewed distributions, such as the distribution of income for which a few people's incomes are substantially greater than most people's, the arithmetic mean may not coincide with one's notion of "middle", and robust statistics, such as the median, may be a better description of central tendency.


Definition

The ARITHMETIC MEAN (or MEAN or AVERAGE), x̄ (read x _bar_), is the mean of the n values x₁, x₂, …, x_(n).[2]

The arithmetic mean is the most commonly used and readily understood measure of central tendency in a data set. In statistics, the term average refers to any of the measures of central tendency. The arithmetic mean of a set of observed data is defined as being equal to the sum of the numerical values of each and every observation divided by the total number of observations. Symbolically, if we have a data set consisting of the values a₁, a₂, …, a_(n), then the arithmetic mean A is defined by the formula:

$$A=\frac{1}{n}\sum_{i=1}^n a_i=\frac{a_1+a_2+\cdots+a_n}{n}$$

(See summation for an explanation of the summation operator).

For example, consider the monthly salary of 10 employees of a firm: 2500, 2700, 2400, 2300, 2550, 2650, 2750, 2450, 2600, 2400. The arithmetic mean is

    $\frac{ 2500+ 2700+ 2400+ 2300+ 2550+ 2650+ 2750+ 2450+ 2600+ 2400}{10}=2530.$

If the data set is a statistical population (i.e., consists of every possible observation and not just a subset of them), then the mean of that population is called the POPULATION MEAN. If the data set is a statistical sample (a subset of the population), we call the statistic resulting from this calculation a SAMPLE MEAN.


Motivating properties

The arithmetic mean has several properties that make it useful, especially as a measure of central tendency. These include:

-   If numbers $x_1,\dotsc,x_n$ have mean x̄, then $(x_1-\bar{x}) + \dotsb + (x_n-\bar{x}) = 0$. Since x_(i) − x̄ is the distance from a given number to the mean, one way to interpret this property is as saying that the numbers to the left of the mean are balanced by the numbers to the right of the mean. The mean is the only single number for which the residuals (deviations from the estimate) sum to zero.
-   If it is required to use a single number as a "typical" value for a set of known numbers $x_1,\dotsc,x_n$, then the arithmetic mean of the numbers does this best, in the sense of minimizing the sum of squared deviations from the typical value: the sum of (x_(i) − x̄)². (It follows that the sample mean is also the best single predictor in the sense of having the lowest root mean squared error.)[3] If the arithmetic mean of a population of numbers is desired, then the estimate of it that is unbiased is the arithmetic mean of a sample drawn from the population.


Contrast with median

The arithmetic mean may be contrasted with the median. The median is defined such that no more than half the values are larger than, and no more than half are smaller than, the median. If elements in the data increase arithmetically, when placed in some order, then the median and arithmetic average are equal. For example, consider the data sample 1, 2, 3, 4. The average is 2.5, as is the median. However, when we consider a sample that cannot be arranged so as to increase arithmetically, such as 1, 2, 4, 8, 16, the median and arithmetic average can differ significantly. In this case, the arithmetic average is 6.2 and the median is 4. In general, the average value can vary significantly from most values in the sample, and can be larger or smaller than most of them.

There are applications of this phenomenon in many fields. For example, since the 1980s, the median income in the United States has increased more slowly than the arithmetic average of income.[4]


Generalizations

Weighted average

A weighted average, or weighted mean, is an average in which some data points count more heavily than others, in that they are given more weight in the calculation. For example, the arithmetic mean of 3 and 5 is $\frac{(3+5)}{2} = 4$, or equivalently $\left( \frac{1}{2} \cdot 3\right) + \left( \frac{1}{2} \cdot 5\right) = 4$. In contrast, a _weighted_ mean in which the first number receives, for example, twice as much weight as the second (perhaps because it is assumed to appear twice as often in the general population from which these numbers were sampled) would be calculated as $\left( \frac{2}{3} \cdot 3\right) + \left(\frac{1}{3} \cdot 5\right) = \frac{11}{3}$. Here the weights, which necessarily sum to the value one, are (2/3) and (1/3), the former being twice the latter. Note that the arithmetic mean (sometimes called the "unweighted average" or "equally weighted average") can be interpreted as a special case of a weighted average in which all the weights are equal to each other (equal to $\frac{1}{2}$ in the above example, and equal to $\frac{1}{n}$ in a situation with n numbers being averaged).

Continuous probability distributions

s with equal mean but different skewness, resulting in different medians and modes.]]

If a numerical property, and any sample of data from it, could take on any value from a continuous range, instead of, for example, just integers, then the probability of a number falling into some range of possible values can be described by integrating a continuous probability distribution across this range, even when the naive probability for a sample number taking one certain value from infinitely many is zero. The analog of a weighted average in this context, in which there are an infinite number of possibilities for the precise value of the variable in each range, is called the _mean of the probability distribution_. A most widely encountered probability distribution is called the normal distribution; it has the property that all measures of its central tendency, including not just the mean but also the aforementioned median and the mode (the three M's[5]), are equal to each other. This equality does not hold for other probability distributions, as illustrated for the lognormal distribution here.


Angles

Particular care must be taken when using cyclic data, such as phases or angles. Naïvely taking the arithmetic mean of 1° and 359° yields a result of 180°. This is incorrect for two reasons:

-   Firstly, angle measurements are only defined up to an additive constant of 360° (or 2π, if measuring in radians). Thus one could as easily call these 1° and −1°, or 361° and 719°, each of which gives a different average.
-   Secondly, in this situation, 0° (equivalently, 360°) is geometrically a better _average_ value: there is lower dispersion about it (the points are both 1° from it, and 179° from 180°, the putative average).

In general application, such an oversight will lead to the average value artificially moving towards the middle of the numerical range. A solution to this problem is to use the optimization formulation (viz., define the mean as the central point: the point about which one has the lowest dispersion), and redefine the difference as a modular distance (i.e., the distance on the circle: so the modular distance between 1° and 359° is 2°, not 358°).


Symbols and encoding

The arithmetic mean is often denoted by a bar, for example as in x̄ (read x _bar_).[6]

Some software (text processors, web browsers) may not display the x̄ symbol properly. For example, the x̄ symbol in HTML is actually a combination of two codes - the base letter x plus a code for the line above (&#772: or ¯).[7]

In some texts, such as pdfs, the x̄ symbol may be replaced by a cent (¢) symbol (Unicode &#162) when copied to text processor such as Microsoft Word.


See also

-   Average
-   Fréchet mean
-   Generalized mean
-   Geometric mean
-   Harmonic mean
-   Mode
-   Sample mean and covariance
-   Standard error of the mean
-   Summary statistics


References


Further reading

-


External links

-   Calculations and comparisons between arithmetic mean and geometric mean of two numbers
-   -   Calculate the arithmetic mean of a series of numbers on fxSolver

Category:Means

[1]

[2]

[3]

[4]

[5]

[6]

[7]