A HISTOGRAM is an accurate representation of the distribution of numerical data. It is an estimate of the probability distribution of a continuous variable (CORAL ) and was first introduced by Karl Pearson.[1] It differs from a bar graph, in the sense that a bar graph relates two variables, but a histogram relates only one. To construct a histogram, the first step is to "bin" (or "bucket") the range of values—that is, divide the entire range of values into a series of intervals—and then count how many values fall into each interval. The bins are usually specified as consecutive, non-overlapping intervals of a variable. The bins (intervals) must be adjacent, and are often (but are not required to be) of equal size.[2]

If the bins are of equal size, a rectangle is erected over the bin with height proportional to the frequency—the number of cases in each bin. A histogram may also be normalized to display "relative" frequencies. It then shows the proportion of cases that fall into each of several categories, with the sum of the heights equaling 1.

However, bins need not be of equal width; in that case, the erected rectangle is defined to have its _area_ proportional to the frequency of cases in the bin.[3] The vertical axis is then not the frequency but _frequency density_—the number of cases per unit of the variable on the horizontal axis. Examples of variable bin width are displayed on Census bureau data below.

As the adjacent bins leave no gaps, the rectangles of a histogram touch each other to indicate that the original variable is continuous.[4]

Histograms give a rough sense of the density of the underlying distribution of the data, and often for density estimation: estimating the probability density function of the underlying variable. The total area of a histogram used for probability density is always normalized to 1. If the length of the intervals on the _x_-axis are all 1, then a histogram is identical to a relative frequency plot.

A histogram can be thought of as a simplistic kernel density estimation, which uses a kernel to smooth frequencies over the bins. This yields a smoother probability density function, which will in general more accurately reflect distribution of the underlying variable. The density estimate could be plotted as an alternative to the histogram, and is usually drawn as a curve rather than a set of boxes. Histograms are nevertheless preferred in applications, when their statistical properties need to be modeled. The correlated variation of a kernel density estimate is very difficult to describe mathematically, while it is simple for a histogram where each bin varies independently.

An alternative to kernel density estimation is the average shifted histogram,[5] which is fast to compute and gives a smooth curve estimate of the density without using kernels.

The histogram is one of the seven basic tools of quality control.[6]

Histograms are sometimes confused with bar charts. A histogram is used for continuous data, where the bins represent ranges of data, while a bar chart is a plot of categorical variables. Some authors recommend that bar charts have gaps between the rectangles to clarify the distinction.[7]


Etymology

Black_cherry_tree_histogram.svg trees.]] The etymology of the word _histogram_ is uncertain. Sometimes it is said to be derived from the Ancient Greek (_histos_) – "anything set upright" (as the masts of a ship, the bar of a loom, or the vertical bars of a histogram); and (_gramma_) – "drawing, record, writing". It is also said that Karl Pearson, who introduced the term in 1891, derived the name from "historical diagram".[8]


Examples

This is the data for the histogram to the right, using 500 items:

Example_histogram.png

  Bin           Count
  ------------- -------
  0 to 100      10
  100 to 200    15
  200 to 300    21
  300 to 400    45
  400 to 500    35
  500 to 600    14
  2.5 to 3.49   23


The words used to describe the patterns in a histogram are: "symmetric", "skewed left" or "right", "unimodal", "bimodal" or "multimodal".

Symmetric-histogram.png|Symmetric, unimodal Skewed-right.png|Skewed right Skewed-left.png|Skewed left Bimodal-histogram.png|Bimodal Multimodal.png|Multimodal Symmetric2.png|Symmetric

It is a good idea to plot the data using several different bin widths to learn more about it. Here is an example on tips given in a restaurant.

Tips-histogram1.png|Tips using a $1 bin width, skewed right, unimodal Tips-histogram2.png|Tips using a 10c bin width, still skewed right, multimodal with modes at $ and 50c amounts, indicates rounding, also some outliers

The U.S. Census Bureau found that there were 124 million people who work outside of their homes.[9] Using their data on the time occupied by travel to work, the table below shows the absolute number of people who responded with travel times "at least 30 but less than 35 minutes" is higher than the numbers for the categories above and below it. This is likely due to people rounding their reported journey time. The problem of reporting values as somewhat arbitrarily rounded numbers is a common phenomenon when collecting data from people.

Travel_time_histogram_total_n_Stata.png

    {| class="wikitable" style="text-align:center"

|+Data by absolute numbers |- ! Interval !! Width !! Quantity !! Quantity/width |- | 0 || 5 || 4180 || 836 |- | 5 || 5 || 13687 || 2737 |- | 10 || 5 || 18618 || 3723 |- | 15 || 5 || 19634 || 3926 |- | 20 || 5 || 17981 || 3596 |- | 25 || 5 || 7190 || 1438 |- | 30 || 5 || 16369 || 3273 |- | 35 || 5 || 3212 || 642 |- | 40 || 5 || 4122 || 824 |- | 45 || 15 || 9200 || 613 |- | 60 || 30 || 6461 || 215 |- | 90 || 60 || 3435 || 57 |}

This histogram shows the number of cases per unit interval as the height of each block, so that the area of each block is equal to the number of people in the survey who fall into its category. The area under the curve represents the total number of cases (124 million). This type of histogram shows absolute numbers, with Q in thousands.

    {| class="wikitable" style="text-align:center"

|+Data by proportion |- ! Interval !! Width !! Quantity (Q) !! Q/total/width |- | 0 || 5 || 4180 || 0.0067 |- | 5 || 5 || 13687 || 0.0221 |- | 10 || 5 || 18618 || 0.0300 |- | 15 || 5 || 19634 || 0.0316 |- | 20 || 5 || 17981 || 0.0290 |- | 25 || 5 || 7190 || 0.0116 |- | 30 || 5 || 16369 || 0.0264 |- | 35 || 5 || 3212 || 0.0052 |- | 40 || 5 || 4122 || 0.0066 |- | 45 || 15 || 9200 || 0.0049 |- | 60 || 30 || 6461 || 0.0017 |- | 90 || 60 || 3435 || 0.0005 |}

This histogram differs from the first only in the vertical scale. The area of each block is the fraction of the total that each category represents, and the total area of all the bars is equal to 1 (the fraction meaning "all"). The curve displayed is a simple density estimate. This version shows proportions, and is also known as a unit area histogram.

In other words, a histogram represents a frequency distribution by means of rectangles whose widths represent class intervals and whose areas are proportional to the corresponding frequencies: the height of each is the average frequency density for the interval. The intervals are placed together in order to show that the data represented by the histogram, while exclusive, is also contiguous. (E.g., in a histogram it is possible to have two connecting intervals of 10.5–20.5 and 20.5–33.5, but not two connecting intervals of 10.5–20.5 and 22.5–32.5. Empty intervals are represented as empty and not skipped.)[10]


Mathematical definition

Cumulative_vs_normal_histogram.svg In a more general mathematical sense, a histogram is a function _m__(_i_) that counts the number of observations that fall into each of the disjoint categories (known as _bins_), whereas the graph of a histogram is merely one way to represent a histogram. Thus, if we let _n_ be the total number of observations and _k_ be the total number of bins, the histogram _m__(_i_) meets the following conditions:

    $n = \sum_{i=1}^k{m_i}.$

Cumulative histogram

A cumulative histogram is a mapping that counts the cumulative number of observations in all of the bins up to the specified bin. That is, the cumulative histogram _M__(_i_) of a histogram _m__(_j_) is defined as:

    $M_i = \sum_{j=1}^i{m_j}.$

Number of bins and width

There is no "best" number of bins, and different bin sizes can reveal different features of the data. Grouping data is at least as old as Graunt's work in the 17th century, but no systematic guidelines were given[11] until Sturges's work in 1926.[12]

Using wider bins where the density of the underlying data points is low reduces noise due to sampling randomness; using narrower bins where the density is high (so the signal drowns the noise) gives greater precision to the density estimation. Thus varying the bin-width within a histogram can be beneficial. Nonetheless, equal-width bins are widely used.

Some theoreticians have attempted to determine an optimal number of bins, but these methods generally make strong assumptions about the shape of the distribution. Depending on the actual data distribution and the goals of the analysis, different bin widths may be appropriate, so experimentation is usually needed to determine an appropriate width. There are, however, various useful guidelines and rules of thumb.[13]

The number of bins _k_ can be assigned directly or can be calculated from a suggested bin width _h_ as:

$$k = \left \lceil \frac{\max x - \min x}{h} \right \rceil.$$

The braces indicate the ceiling function.

Square-root choice

$$k = \lceil \sqrt{n} \rceil \,$$

which takes the square root of the number of data points in the sample (used by Excel histograms and many others) and rounds to the next integer.[14]

Sturges' formula

Sturges' formula[15] is derived from a binomial distribution and implicitly assumes an approximately normal distribution.

_k_ = ⌈log₂_n_⌉ + 1, 

It implicitly bases the bin sizes on the range of the data and can perform poorly if _n_ < 30, because the number of bins will be small—less than seven—and unlikely to show trends in the data well. It may also perform poorly if the data are not normally distributed.

Rice Rule

_k_ = ⌈2_n_^(1/3)⌉,

The Rice Rule [16] is presented as a simple alternative to Sturges's rule.

Doane's formula

Doane's formula[17] is a modification of Sturges' formula which attempts to improve its performance with non-normal data.

$$k = 1 + \log_2( n ) + \log_2 \left( 1 +  \frac { |g_1| }{\sigma_{g_1}} \right)$$

where g₁ is the estimated 3rd-moment-skewness of the distribution and

$$\sigma_{g_1} = \sqrt { \frac { 6(n-2) }{ (n+1)(n+3) } }$$

Scott's normal reference rule

$$h = \frac{3.5 \hat \sigma}{n^{1/3}},$$

where σ̂ is the sample standard deviation. Scott's normal reference rule[18] is optimal for random samples of normally distributed data, in the sense that it minimizes the integrated mean squared error of the density estimate.[19]

Freedman–Diaconis' choice

The Freedman–Diaconis rule is:[20][21]

$$h = 2 \frac{\operatorname{IQR}(x)}{n^{1/3}},$$

which is based on the interquartile range, denoted by IQR. It replaces 3.5σ of Scott's rule with 2 IQR, which is less sensitive than the standard deviation to outliers in data.

Minimizing cross-validation estimated squared error

This approach of minimizing integrated mean squared error from Scott's rule can be generalized beyond normal distributions, by using leave-one out cross validation:[22][23]

$$\underset{h}{\operatorname{arg\,min}} \hat{J}(h) = \underset{h}{\operatorname{arg\,min}} \left( \frac{2}{(n-1)h} - \frac{n+1}{n^2(n-1)h} \sum_k N_k^2 \right)$$

Here, N_(k) is the number of datapoints in the _k_th bin, and choosing the value of _h_ that minimizes _J_ will minimize integrated mean squared error.

Shimazaki and Shinomoto's choice

The choice is based on minimization of an estimated _L_² risk function[24]

$$\underset{h}{\operatorname{arg\,min}} \frac{ 2 \bar{m} - v } {h^2}$$

where $\textstyle \bar{m}$ and $\textstyle v$ are mean and biased variance of a histogram with bin-width $\textstyle h$, $\textstyle \bar{m}=\frac{1}{k} \sum_{i=1}^{k}  m_i$ and $\textstyle v= \frac{1}{k} \sum_{i=1}^{k} (m_i - \bar{m})^2$.

Variable bin widths

Rather than choosing evenly spaced bins, for some applications it is preferable to vary the bin width. This avoids bins with low counts. A common case is to choose _equiprobable bins_, where the number of samples in each bin is expected to be approximately equal. The bins may be chosen according to some known distribution or may be chosen based on the data so that each bin has  ≈ n/k samples. When plotting the histogram, the _frequency density_ is used for the dependent axis. While all bins have approximately equal area, the heights of the histogram approximate the density distribution.

For equiprobable bins, the following rule for the number of bins is suggested:[25]

_k_ = 2_n_^(2/5)

This choice of bins is motivated by maximizing the power of a Pearson chi-squared test testing whether the bins do contain equal numbers of samples. More specifically, for a given confidence interval α it is recommended to choose between 1/2 and 1 times the following equation:[26]

$$k = 4 \left( \frac{2 n^2}{\Phi^{-1}(\alpha)} \right)^\frac{1}{5}$$

Where Φ^( − 1) is the probit function. Following this rule for α = 0.05 would give between 1.88n^(2/5) and 3.77n^(2/5); the coefficient of 2 is chosen as an easy-to-remember value from this broad optimum.

Remark

A good reason why the number of bins should be proportional to n^(1/3) is the following: suppose that the data are obtained as n independent realizations of a bounded probability distribution with smooth density. Then the histogram remains equally "rugged" as n tends to infinity. If s is the "width" of the distribution (e. g., the standard deviation or the inter-quartile range), then the number of units in a bin (the frequency) is of order nh/s and the _relative_ standard error is of order $\sqrt{s/(n h)}$. Comparing to the next bin, the relative change of the frequency is of order h/s provided that the derivative of the density is non-zero. These two are of the same order if h is of order s/n^(1/3), so that k is of order n^(1/3). This simple cubic root choice can also be applied to bins with non-constant width.

Gumbel_distribtion.png [27]]]


Applications

-   In hydrology the histogram and estimated density function of rainfall and river discharge data, analysed with a probability distribution, are used to gain insight in their behaviour and frequency of occurrence.[28] An example is shown in the blue figure.


See also

-   Data binning
-   Density estimation
    -   Kernel density estimation, a smoother but more complex method of density estimation
-   Entropy estimation
-   Freedman–Diaconis rule
-   Image histogram
-   Pareto chart
-   Seven Basic Tools of Quality
-   V-optimal histograms


References


Further reading

-   Lancaster, H.O. _An Introduction to Medical Statistics._ John Wiley and Sons. 1974.


External links

-   Exploring Histograms, an essay by Aran Lunzer and Amelia McNamara
-   Journey To Work and Place Of Work _(location of census document cited in example)_
-   Smooth histogram for signals and images from a few samples
-   Histograms: Construction, Analysis and Understanding with external links and an application to particle Physics.
-   A Method for Selecting the Bin Size of a Histogram
-   Histograms: Theory and Practice, some great illustrations of some of the Bin Width concepts derived above.
-   Histograms the Right Way
-   Interactive histogram generator
-   Matlab function to plot nice histograms
-   Dynamic Histogram in MS Excel
-   Histogram construction and manipulation using Java applets, and charts on SOCR
-   Toolbox for constructing the best histograms

Category:Statistical charts and diagrams Category:Quality control tools Category:Estimation of densities Category:Nonparametric statistics Category:Statistics articles needing expert attention Category:Frequency distribution

[1]

[2]

[3]

[4] Charles Stangor (2011) "Research Methods For The Behavioral Sciences". Wadsworth, Cengage Learning. .

[5]

[6]

[7]

[8]

[9] US 2000 census.

[10] Dean, S., & Illowsky, B. (2009, February 19). Descriptive Statistics: Histogram. Retrieved from the Connexions Web site: http://cnx.org/content/m16298/1.11/

[11]

[12]

[13] _e.g._ § 5.6 "Density Estimation", W. N. Venables and B. D. Ripley, _Modern Applied Statistics with S_ (2002), Springer, 4th edition. .

[14]

[15]

[16] Online Statistics Education: A Multimedia Course of Study (http://onlinestatbook.com/). Project Leader: David M. Lane, Rice University (chapter 2 "Graphing Distributions", section "Histograms")

[17] Doane DP (1976) Aesthetic frequency classification. American Statistician, 30: 181–183

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27] A calculator for probability distributions and density functions 1

[28] An illustration of histograms and probability density functions 2