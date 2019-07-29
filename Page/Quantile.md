Iqr_with_quantile.png, with quartiles shown. The area below the red curve is the same in the intervals (−∞,_Q_₁), (_Q_₁,_Q_₂), (_Q_₂,_Q_₃), and (_Q_₃,+∞).]] In statistics and probability QUANTILES are cut points dividing the range of a probability distribution into continuous intervals with equal probabilities, or dividing the observations in a sample in the same way. There is one fewer quantile than the number of groups created. Thus quartiles are the three cut points that will divide a dataset into four equal-sized groups. Common quantiles have special names: for instance quartile, decile (creating 10 groups: see below for more). The groups created are termed halves, thirds, quarters, etc., though sometimes the terms for the quantile are used for the groups created, rather than for the cut points.

-QUANTILES are values that partition a finite set of values into subsets of (nearly) equal sizes. There are of the -quantiles, one for each integer satisfying . In some cases the value of a quantile may not be uniquely determined, as can be the case for the median (2-quantile) of a uniform probability distribution on a set of even size. Quantiles can also be applied to continuous distributions, providing a way to generalize rank statistics to continuous variables. When the cumulative distribution function of a random variable is known, the -quantiles are the application of the quantile function (the inverse function of the cumulative distribution function) to the values }.


Specialized quantiles

Some -quantiles have special names:

-   The only 2-quantile is called the median
-   The 3-quantiles are called tertiles or terciles → T
-   The 4-quantiles are called quartiles → Q; the difference between upper and lower quartiles is also called the interquartile range, MIDSPREAD or MIDDLE FIFTY → IQR = _Q_₃ −  _Q_₁
-   The 5-quantiles are called quintiles → QU
-   The 6-quantiles are called sextiles → S
-   The 7-quantiles are called septiles
-   The 8-quantiles are called octiles
-   The 10-quantiles are called deciles → D
-   The 12-quantiles are called duo-deciles or dodeciles
-   The 16-quantiles are called hexadeciles → H
-   The 20-quantiles are called ventiles, vigintiles, or demi-deciles → V
-   The 100-quantiles are called percentiles → P
-   The 1000-quantiles have been called permilles or milliles, but these are rare and largely obsolete[1]


Quantiles of a population

As in the computation of, for example, standard deviation, the estimation of a quantile depends upon whether one is operating with a statistical population or with a sample drawn from it. For a population, of discrete values or for a continuous population density, the -th -quantile is the data value where the cumulative distribution function crosses . That is, is a -th -quantile for a variable if

    or, equivalently,

and

    or, equivalently, .

For a finite population of equally probable values indexed from lowest to highest, the -th -quantile of this population can equivalently be computed via the value of _N_ _k_/_q_}}. If is not an integer, then round up to the next integer to get the appropriate index; the corresponding data value is the -th -quantile. On the other hand, if is an integer then any number from the data value at that index to the data value of the next can be taken as the quantile, and it is conventional (though arbitrary) to take the average of those two values (see Estimating the quantiles).

If, instead of using integers and , the “-quantile” is based on a real number with then replaces in the above formulas. Some software programs (including Microsoft Excel) regard the minimum and maximum as the 0th and 100th percentile, respectively; however, such terminology is an extension beyond traditional statistics definitions.

Examples

The following two examples use the Nearest Rank definition of quantile with rounding. For an explanation of this definition, see percentiles.

Even-sized population

Consider an ordered population of 10 data values {3, 6, 7, 8, 8, 10, 13, 15, 16, 20}. What are the 4-quantiles (the "quartiles") of this dataset?

  Quartile          Calculation                                                                                                                                                                                                                                                                                                                                 Result
  ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --------
  Zeroth quartile   Although not universally accepted, one can also speak of the zeroth quartile. This is the minimum value of the set, so the zeroth quartile in this example would be 3.                                                                                                                                                                      3
  First quartile    The rank of the first quartile is 10×(1/4) = 2.5, which rounds up to 3, meaning that 3 is the rank in the population (from least to greatest values) at which approximately 1/4 of the values are less than the value of the first quartile. The third value in the population is 7.                                                        7
  Second quartile   The rank of the second quartile (same as the median) is 10×(2/4) = 5, which is an integer, while the number of values (10) is an even number, so the average of both the fifth and sixth values is taken—that is (8+10)/2 = 9, though any value from 8 through to 10 could be taken to be the median.                                       9
  Third quartile    The rank of the third quartile is 10×(3/4) = 7.5, which rounds up to 8. The eighth value in the population is 15.                                                                                                                                                                                                                           15
  Fourth quartile   Although not universally accepted, one can also speak of the fourth quartile. This is the maximum value of the set, so the fourth quartile in this example would be 20. Under the Nearest Rank definition of quantile, the rank of the fourth quartile is the rank of the biggest number, so the rank of the fourth quartile would be 10.   20

So the first, second and third 4-quantiles (the "quartiles") of the dataset {3, 6, 7, 8, 8, 10, 13, 15, 16, 20} are {7, 9, 15}. If also required, the zeroth quartile is 3 and the fourth quartile is 20.

Odd-sized population

Consider an ordered population of 11 data values {3, 6, 7, 8, 8, 9, 10, 13, 15, 16, 20}. What are the 4-quantiles (the "quartiles") of this dataset?

  Quartile          Calculation                                                                                                                                                                                                                                                                                                                                 Result
  ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --------
  Zeroth quartile   Although not universally accepted, one can also speak of the zeroth quartile. This is the minimum value of the set, so the zeroth quartile in this example would be 3.                                                                                                                                                                      3
  First quartile    The first quartile is determined by 11×(1/4) = 2.75, which rounds up to 3, meaning that 3 is the rank in the population (from least to greatest values) at which approximately 1/4 of the values are less than the value of the first quartile. The third value in the population is 7.                                                     7
  Second quartile   The second quartile value (same as the median) is determined by 11×(2/4) = 5.5, which rounds up to 6. Therefore, 6 is the rank in the population (from least to greatest values) at which approximately 2/4 of the values are less than the value of the second quartile (or median). The sixth value in the population is 9.               9
  Third quartile    The third quartile value for the original example above is determined by 11×(3/4) = 8.25, which rounds up to 9. The ninth value in the population is 15.                                                                                                                                                                                    15
  Fourth quartile   Although not universally accepted, one can also speak of the fourth quartile. This is the maximum value of the set, so the fourth quartile in this example would be 20. Under the Nearest Rank definition of quantile, the rank of the fourth quartile is the rank of the biggest number, so the rank of the fourth quartile would be 11.   20

So the first, second and third 4-quantiles (the "quartiles") of the dataset {3, 6, 7, 8, 8, 9, 10, 13, 15, 16, 20} are {7, 9, 15}. If also required, the zeroth quartile is 3 and the fourth quartile is 20.


Estimating quantiles from a sample

When one has a sample drawn from an unknown population, the cumulative distribution function and quantile function of the underlying population are not known and the task becomes that of estimating the quantiles. There are several methods.[2] Mathematica,[3] Matlab,[4] R[5] and GNU Octave[6] programming languages include nine sample quantile methods. SAS includes five sample quantile methods, SciPy[7] and Maple[8] both include eight, EViews[9] includes the six piecewise linear functions, Stata[10] includes two, and Microsoft Excel includes two. Mathematica supports an arbitrary parameter for methods that allows for other, non-standard, methods.

In effect, the methods compute , the estimate for the -th -quantile, where _k_/_q_}}, from a sample of size by computing a real valued index . When is an integer, the -th smallest of the values, , is the quantile estimate. Otherwise a rounding or interpolation scheme is used to compute the quantile estimate from , , and . (For notation, see floor and ceiling functions).

The estimate types and interpolation schemes used include:

+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                  |  |  | Notes                                                                                                                                                                                                                                                                                                     |
+=======================================================+==+==+===========================================================================================================================================================================================================================================================================================================+
| R-1, SAS-3, Maple-1                                   |  |  | Inverse of empirical distribution function.                                                                                                                                                                                                                                                               |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-2, SAS-5, Maple-2, Stata                            |  |  | The same as R-1, but with averaging at discontinuities.                                                                                                                                                                                                                                                   |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-3, SAS-2                                            |  |  | The observation numbered closest to . Here, indicates rounding to the nearest integer, choosing the even integer in the case of a tie.                                                                                                                                                                    |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-4, SAS-1, SciPy-(0,1), Maple-3                      |  |  | Linear interpolation of the empirical distribution function.                                                                                                                                                                                                                                              |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-5, SciPy-(.5,.5), Maple-4                           |  |  | Piecewise linear function where the knots are the values midway through the steps of the empirical distribution function.                                                                                                                                                                                 |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-6, Excel, SAS-4, SciPy-(0,0), Maple-5, Stata-altdef |  |  | Linear interpolation of the expectations for the order statistics for the uniform distribution on [0,1]. That is, it is the linear interpolation between points , where is the probability that the last of () randomly drawn values will not exceed the -th smallest of the first randomly drawn values. |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-7, Excel, SciPy-(1,1), Maple-6, NumPy, Julia        |  |  | Linear interpolation of the modes for the order statistics for the uniform distribution on [0,1].                                                                                                                                                                                                         |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-8, SciPy-(1/3,1/3), Maple-7                         |  |  | Linear interpolation of the approximate medians for order statistics.                                                                                                                                                                                                                                     |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| R-9, SciPy-(3/8,3/8), Maple-8                         |  |  | The resulting quantile estimates are approximately unbiased for the expected order statistics if is normally distributed.                                                                                                                                                                                 |
+-------------------------------------------------------+--+--+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Notes:

-   R-1 through R-3 are piecewise constant, with discontinuities.
-   R-4 and following are piecewise linear, without discontinuities, but differ in how is computed.
-   R-3 and R-4 are not symmetric in that they do not give (_N_ + 1) / 2}} when 1/2}}.
-   Excel PERCENTILE.EXC is equivalent to R-6
-   Excel PERCENTILE and PERCENTILE.INC are equivalent to R-7
-   Packages differ in how they estimate quantiles beyond the lowest and highest values in the sample. Choices include returning an error value, computing linear extrapolation, or assuming a constant value.

The standard error of a quantile estimate can in general be estimated via the bootstrap. The Maritz–Jarrett method can also be used.[11]


Discussion

Standardized test results are commonly misinterpreted as a student scoring "in the 80th percentile," for example, as if the 80th percentile is an interval to score "in," which it is not; one can score "at" some percentile, or between two percentiles, but not "in" some percentile. Perhaps by this example it is meant that the student scores between the 80th and 81st percentiles, or "in" the group of students whose score placed them at the 80th percentile.

If a distribution is symmetric, then the median is the mean (so long as the latter exists). But, in general, the median and the mean can differ. For instance, with a random variable that has an exponential distribution, any particular sample of this random variable will have roughly a 63% chance of being less than the mean. This is because the exponential distribution has a long tail for positive values but is zero for negative numbers.

Quantiles are useful measures because they are less susceptible than means to long-tailed distributions and outliers. Empirically, if the data being analyzed are not actually distributed according to an assumed distribution, or if there are other potential sources for outliers that are far removed from the mean, then quantiles may be more useful descriptive statistics than means and other moment-related statistics.

Closely related is the subject of least absolute deviations, a method of regression that is more robust to outliers than is least squares, in which the sum of the absolute value of the observed errors is used in place of the squared error. The connection is that the mean is the single estimate of a distribution that minimizes expected squared error while the median minimizes expected absolute error. Least absolute deviations shares the ability to be relatively insensitive to large deviations in outlying observations, although even better methods of robust regression are available.

The quantiles of a random variable are preserved under increasing transformations, in the sense that, for example, if is the median of a random variable , then is the median of , unless an arbitrary choice has been made from a range of values to specify a particular quantile. (See quantile estimation, above, for examples of such interpolation.) Quantiles can also be used in cases where only ordinal data are available.


See also

-   Flashsort – sort by first bucketing by quantile
-   Interquartile range
-   Descriptive statistics
-   Quartile
-   Q–Q plot
-   Quantile function
-   Quantile normalization
-   Quantile regression
-   Quantization
-   Summary statistics
-   Tolerance interval ("confidence intervals for the _p_th quantile"[12])


References


Further reading

-


External links

-

Category:Summary statistics

[1] Helen Mary Walker, Joseph Lev, _Elementary Statistical Methods_, 1969, [p. 60 https://books.google.com/books?id=ogYnAQAAIAAJ&dq=permille]

[2]

[3] Mathematica Documentation See 'Details' section

[4] MATLAB implementation of the various estimation methods

[5]

[6]

[7] http://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.mstats.mquantiles.html

[8] http://www.maplesoft.com/support/help/maple/view.aspx?path=Statistics%2FQuantile

[9]

[10] Stata documentation for the pctile and xtile commands See 'Methods and formulas' section.

[11]

[12]