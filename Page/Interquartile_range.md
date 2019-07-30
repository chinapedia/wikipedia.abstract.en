(with an interquartile range) and a probability density function (pdf) of a Normal Population]]

In descriptive statistics, the INTERQUARTILE RANGE (IQR), also called the MIDSPREAD or MIDDLE 50%, or technically H-SPREAD, is a measure of statistical dispersion, being equal to the difference between 75th and 25th percentiles, or between upper and lower quartiles,[1][2] IQR = _Q_₃ −  _Q_₁. In other words, the IQR is the first quartile subtracted from the third quartile; these quartiles can be clearly seen on a box plot on the data. It is a trimmed estimator, defined as the 25% trimmed range, and is a commonly used robust measure of scale.

The IQR is a measure of variability, based on dividing a data set into quartiles. Quartiles divide a rank-ordered data set into four equal parts. The values that separate parts are called the first, second, and third quartiles; and they are denoted by Q1, Q2, and Q3, respectively.


Use

Unlike total range, the interquartile range has a breakdown point of 25%,[3] and is thus often preferred to the total range.

The IQR is used to build box plots, simple graphical representations of a probability distribution.

The IQR is used in businesses as a marker for their income rates.

For a symmetric distribution (where the median equals the midhinge, the average of the first and third quartiles), half the IQR equals the median absolute deviation (MAD).

The median is the corresponding measure of central tendency.

The IQR can be used to identify outliers (see below).

The quartile deviation or semi-interquartile range is defined as half the IQR.[4][5]


Algorithm

Quartiles are calculated recursively, by using median.[6]

If the number of entries is an even number _2n_, then the _first quartile Q₁_ is defined as

    _first quartile Q₁_ = median of the _n_ smallest entries

and the _third quartile Q₃_ = median of the _n_ largest entries[7]

If the number of entries is an odd number _2n+1_, then the _first quartile Q₁_ is defined as

    _first quartile Q₁_ = median of the _n_ smallest entries

and the _third quartile Q₃_ = median of the _n_ largest entries[8]

The _second quartile Q₂_ is the same as the ordinary median.[9]


Examples

Data set in a table

The following table has 13 rows, and follows the rules for the odd number of entries.

+------------------------------------------+------+-------------------------+-----------------------------------------+
| i                                        | x[i] | Median                  | Quartile                                |
+==========================================+======+=========================+=========================================+
| 1                                        | 7    | Q₂=87                   | Q₁=31                                   |
|                                          |      | (median of whole table) | (median of upper half, from row 1 to 6) |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 2                                        | 7    |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 3                                        | 31   |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 4                                        | 31   |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 5                                        | 47   |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 6                                        | 75   |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 7                                        | 87   |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 8                                        | 115  |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| Q₃=119                                   |      |                         |                                         |
| (median of lower half, from row 8 to 13) |      |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 9                                        | 116  |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 10                                       | 119  |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 11                                       | 119  |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 12                                       | 155  |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+
| 13                                       | 177  |                         |                                         |
+------------------------------------------+------+-------------------------+-----------------------------------------+

For the data in this table the interquartile range is IQR = Q₃ − Q₁ = 119 - 31 = 88.

Data set in a plain-text box plot


                                 +−−−−−+−+
                   * |−−−−−−−−−−−|     | |−−−−−−−−−−−|
                                 +−−−−−+−+

     +−−−+−−−+−−−+−−−+−−−+−−−+−−−+−−−+−−−+−−−+−−−+−−−+   number line
     0   1   2   3   4   5   6   7   8   9   10  11  12

For the data set in this box plot:

-   lower (first) quartile _Q_₁ = 7
-   median (second quartile) _Q_₂ = 8.5
-   upper (third) quartile _Q_₃ = 9
-   interquartile range, IQR = _Q_₃ - _Q_₁ = 2
-   lower 1.5*IQR whisker = _Q_₁ - 1.5 * IQR = 7 - 3 = 4. (If there is no data point at 4, then the lowest point greater than 4.)
-   upper 1.5*IQR whisker = _Q_₃ + 1.5 * IQR = 9 + 3 = 12. (If there is no data point at 12, then the highest point less than 12.)

This means the 1.5*IQR whiskers can be uneven in lengths.


Distributions

The interquartile range of a continuous distribution can be calculated by integrating the probability density function (which yields the cumulative distribution function—any other means of calculating the CDF will also work). The lower quartile, _Q_₁, is a number such that integral of the PDF from -∞ to _Q_₁ equals 0.25, while the upper quartile, _Q_₃, is such a number that the integral from -∞ to _Q_₃ equals 0.75; in terms of the CDF, the quartiles can be defined as follows:

_Q_₁ = CDF^( − 1)(0.25),

_Q_₃ = CDF^( − 1)(0.75),

where CDF^(−1) is the quantile function.

The interquartile range and median of some common distributions are shown below

  Distribution   Median   IQR
  -------------- -------- -------------------------------------
  Normal         μ        2 Φ^(−1)(0.75)σ ≈ 1.349σ ≈ (27/20)σ
  Laplace        μ        2_b_ ln(2) ≈ 1.386_b_
  Cauchy         μ        2γ

Interquartile range test for normality of distribution

The IQR, mean, and standard deviation of a population _P_ can be used in a simple test of whether or not _P_ is normally distributed, or Gaussian. If _P_ is normally distributed, then the standard score of the first quartile, _z_₁, is −0.67, and the standard score of the third quartile, _z_₃, is +0.67. Given _mean_ = _X_ and _standard deviation_ = σ for _P_, if _P_ is normally distributed, the first quartile

_Q_₁ = (_σ_ _z_₁) + _X_

and the third quartile

_Q_₃ = (_σ_ _z_₃) + _X_

If the actual values of the first or third quartiles differ substantially from the calculated values, _P_ is not normally distributed. However, a normal distribution can be trivially perturbed to maintain its Q1 and Q2 std. scores at 0.67 and −0.67 and not be normally distributed (so the above test would produce a false positive). A better test of normality, such as Q-Q plot would be indicated here.


Outliers

with four mild outliers and one extreme outlier. In this chart, outliers are defined as mild above Q3 + 1.5 IQR and extreme above Q3 + 3 IQR.]] The interquartile range is often used to find outliers in data. Outliers here are defined as observations that fall below Q1 − 1.5 IQR or above Q3 + 1.5 IQR. In a boxplot, the highest and lowest occurring value within this limit are indicated by _whiskers_ of the box (frequently with an additional bar at the end of the whisker) and any outliers as individual points.


See also

-   Interdecile range
-   Midhinge
-   Robust measures of scale


References


External links

-

Category:Scale statistics Category:Wikipedia articles with ASCII art

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]