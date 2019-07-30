A QUARTILE is a type of quantile. The first quartile (_Q_₁) is defined as the middle number between the smallest number and the median of the data set. The second quartile (_Q_₂) is the median of the data. The third quartile (_Q_₃) is the middle value between the median and the highest value of the data set.


Definitions

(with quartiles and an interquartile range) and a probability density function (pdf) of a normal N(0,1σ²) population]]

+--------+-------+--------------------------------------------------------+
| Symbol | Names | Definition                                             |
+========+=======+========================================================+
| _Q_₁   |       | splits off the lowest 25% of data from the highest 75% |
+--------+-------+--------------------------------------------------------+
| _Q_₂   |       | cuts data set in half                                  |
+--------+-------+--------------------------------------------------------+
| _Q_₃   |       | splits off the highest 25% of data from the lowest 75% |
+--------+-------+--------------------------------------------------------+


Computing methods

For discrete distributions, there is no universal agreement on selecting the quartile values.[1]

Method 1

1.  Use the median to divide the ordered data set into two halves.
    -   If there is an odd number of data points in the original ordered data set, DO NOT INCLUDE the median (the central value in the ordered list) in either half.
    -   If there is an even number of data points in the original ordered data set, split this data set exactly in half.
2.  The lower quartile value is the median of the lower half of the data. The upper quartile value is the median of the upper half of the data.

This rule is employed by the TI-83 calculator boxplot and "1-Var Stats" functions.

Method 2

1.  Use the median to divide the ordered data set into two halves.
    -   If there are an odd number of data points in the original ordered data set, INCLUDE the median (the central value in the ordered list) in both halves.
    -   If there are an even number of data points in the original ordered data set, split this data set exactly in half.
2.  The lower quartile value is the median of the lower half of the data. The upper quartile value is the median of the upper half of the data.

The values found by this method are also known as "Tukey's hinges";[2] see also midhinge.

Method 3

1.  If there are even numbers of data points, then Method 3 is the same as either method above
2.  If there are (4_n_+1) data points, then the lower quartile is 25% of the _n_th data value plus 75% of the (_n_+1)th data value; the upper quartile is 75% of the (3_n_+1)th data point plus 25% of the (3_n_+2)th data point.
3.  If there are (4_n_+3) data points, then the lower quartile is 75% of the (_n_+1)th data value plus 25% of the (_n_+2)th data value; the upper quartile is 25% of the (3_n_+2)th data point plus 75% of the (3_n_+3)th data point.

Example 1

Ordered Data Set: 6, 7, 15, 36, 39, 40, 41, 42, 43, 47, 49

         Method 1   Method 2   Method 3
  ------ ---------- ---------- ----------
  _Q_₁   15         25.5       20.25
  _Q_₂   40         40         40
  _Q_₃   43         42.5       42.75

Example 2

Ordered Data Set: 7, 15, 36, 39, 40, 41

As there are an even number of data points, all three methods give the same results.

         Method 1   Method 2   Method 3
  ------ ---------- ---------- ----------
  _Q_₁   15         15         15
  _Q_₂   37.5       37.5       37.5
  _Q_₃   40         40         40


Outliers

There are methods by which to check for outliers in the discipline of statistics and statistical analysis. As is the basic idea of descriptive statistics, when encountering an outlier, we have to explain this value by further analysis of the cause or origin of the outlier. In cases of extreme observations, which are not an infrequent occurrence, the typical values must be analyzed. In the case of quartiles, the Interquartile Range (IQR) may be used to characterize the data when there may be extremities that skew the data; the interquartile range is a relatively robust statistic (also sometimes called "resistance") compared to the range and standard deviation. There is also a mathematical method to check for outliers and determining "fences", upper and lower limits from which to check for outliers.

After determining the first and third quartiles and the interquartile range as outlined above, then fences are calculated using the following formula:

Lower fence = _Q_₁ − 1.5(_I__Q__R_) 

Upper fence = _Q_₃ + 1.5(_I__Q__R_), 

where _Q_₁ and _Q_₃ are the first and third quartiles, respectively. The Lower fence is the "lower limit" and the Upper fence is the "upper limit" of data, and any data lying outside these defined bounds can be considered an outlier. Anything below the Lower fence or above the Upper fence can be considered such a case. The fences provide a guideline by which to define an outlier, which may be defined in other ways. The fences define a "range" outside of which an outlier exists; a way to picture this is a boundary of a fence, outside of which are "outsiders" as opposed to outliers.


See also

-   Five-number summary
-   Range
-   Box plot
-   Interquartile range
-   Summary statistics
-   Quantile


References


External links

-   Quartile – from MathWorld Includes references and compares various methods to compute quartiles
-   Quartiles – From MathForum.org
-   Quartiles calculator – simple quartiles calculator
-   Quartiles – An example how to calculate it

Category:Summary statistics

[1]

[2]