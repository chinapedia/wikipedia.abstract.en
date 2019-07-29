In economics, the GINI COEFFICIENT ( ), sometimes called GINI INDEX, or GINI RATIO, is a measure of statistical dispersion intended to represent the income or wealth distribution of a nation's residents, and is the most commonly used measurement of inequality. It was developed by the Italian statistician and sociologist Corrado Gini and published in his 1912 paper _Variability and Mutability_ ().[1]

The Gini coefficient measures the inequality among values of a frequency distribution (for example, levels of income). A Gini coefficient of zero expresses perfect equality, where all values are the same (for example, where everyone has the same income). A Gini coefficient of 1 (or 100%) expresses maximal inequality among values (e.g., for a large number of people, where only one person has all the income or consumption, and all others have none, the Gini coefficient will be very nearly one).[2][3] However, a value greater than one may occur if some persons represent negative contribution to the total (for example, having negative income or wealth). For larger groups, values close to or above 1 are very unlikely in practice. Given the normalization of both the cumulative population and the cumulative share of income used to calculate the Gini coefficient, the measure is not overly sensitive to the specifics of the income distribution, but rather only on how incomes vary relative to the other members of a population. The exception to this is in the redistribution of income resulting in a minimum income for all people. When the population is sorted, if their income distribution were to approximate a well-known function, then some representative values could be calculated.

The Gini coefficient was proposed by Gini as a measure of inequality of income or wealth.[4] For OECD countries, in the late 20th century, considering the effect of taxes and transfer payments, the income Gini coefficient ranged between 0.24 and 0.49, with Slovenia being the lowest and Chile the highest.[5] African countries had the highest pre-tax Gini coefficients in 2008–2009, with South Africa the world's highest, variously estimated to be 0.63 to 0.7,[6][7] although this figure drops to 0.52 after social assistance is taken into account, and drops again to 0.47 after taxation.[8] The global income Gini coefficient in 2005 has been estimated to be between 0.61 and 0.68 by various sources.[9][10]

There are some issues in interpreting a Gini coefficient. The same value may result from many different distribution curves. The demographic structure should be taken into account. Countries with an aging population, or with a baby boom, experience an increasing pre-tax Gini coefficient even if real income distribution for working adults remains constant. Scholars have devised over a dozen variants of the Gini coefficient.[11][12][13]


Definition

Economics_Gini_coefficient2.svg

The Gini coefficient is a single number aimed at measuring the degree of inequality in a distribution. It is most often used in economics to measure how far a country's wealth or income distribution deviates from a totally equal distribution.

The Gini coefficient is usually defined mathematically based on the Lorenz curve, which plots the proportion of the total income of the population (y axis) that is cumulatively earned by the bottom _x_ of the population (see diagram). The line at 45 degrees thus represents perfect equality of incomes. The Gini coefficient can then be thought of as the ratio of the area that lies between the line of equality and the Lorenz curve (marked _A_ in the diagram) over the total area under the line of equality (marked _A_ and _B_ in the diagram); i.e., _A_/(_A_ + _B_)}}. It is also equal to 2_A_ and to due to the fact that 0.5}} (since the axes scale from 0 to 1).

If all people have non-negative income (or wealth, as the case may be), the Gini coefficient can theoretically range from 0 (complete equality) to 1 (complete inequality); it is sometimes expressed as a percentage ranging between 0 and 100. In practice, both extreme values are not quite reached. If negative values are possible (such as the negative wealth of people with debts), then the Gini coefficient could theoretically be more than 1. Normally the mean (or total) is assumed positive, which rules out a Gini coefficient less than zero.

An alternative approach is to define the Gini coefficient as half of the relative mean absolute difference, which is mathematically equivalent to the Lorenz curve definition.[14] The mean absolute difference is the average absolute difference of all pairs of items of the population, and the relative mean absolute difference is the mean absolute difference divided by the average, x̄, to normalize for scale. If _x__(_i_) is the wealth or income of person _i_, and there are _n_ persons, then the Gini coefficient _G_ is given by:

$$G = \frac{\displaystyle{\sum_{i=1}^n \sum_{j=1}^n \left| x_i - x_j \right|}}{\displaystyle{2 \sum_{i=1}^n \sum_{j=1}^n x_j}} = \frac{\displaystyle{\sum_{i=1}^n \sum_{j=1}^n \left| x_i - x_j \right|}}{\displaystyle{2n\sum_{i=1}^n x_i}} = \frac{\displaystyle{\sum_{i=1}^n \sum_{j=1}^n \left| x_i - x_j \right|}}{\displaystyle{2 n^2 \bar{x}}}$$

When the income (or wealth) distribution is given as a continuous probability distribution function _p_(_x_), the Gini coefficient is again half of the relative mean absolute difference:

$$G = \frac{1}{2\mu}\int_{-\infty}^\infty\int_{-\infty}^\infty p(x)p(y)\,|x-y|\,dx\,dy$$

where $\textstyle\mu=\int_{-\infty}^\infty x p(x) \,dx$ is the mean of the distribution, and the lower limits of integration may be replaced by zero when all incomes are positive.


Calculation

Example: two levels of income

Gini_coefficient_for_distribution_with_only_two_income_or_wealth_levels.svg

The most equal society will be one in which every person receives the same income ( 0}}); the most unequal society will be one in which a single person receives 100% of the total income and the remaining people receive none ( 1 − 1/_N_}}).

While the income distribution of any particular country need not follow simple functions, these functions give a qualitative understanding of the income distribution in a nation given the Gini coefficient.

An informative simplified case just distinguishes two levels of income, low and high. If the high income group is a proportion _u_ of the population and earns a proportion _f_ of all income, then the Gini coefficient is . An actual more graded distribution with these same values _u_ and _f_ will always have a higher Gini coefficient than .

The proverbial case where the richest 20% have 80% of all income (see Pareto principle) would lead to an income Gini coefficient of at least 60%.

An often cited[15] case that 1% of all the world's population owns 50% of all wealth, means a wealth Gini coefficient of at least 49%.

Alternate expressions

In some cases, this equation can be applied to calculate the Gini coefficient without direct reference to the Lorenz curve. For example, (taking _y_ to mean the income or wealth of a person or household):

-   For a population uniform on the values _y__(_i_), _i_ = 1 to _n_, indexed in non-decreasing order (_y__(_i_) ≤ _y__(_i_+1)):

$$G = \frac{1}{n}\left ( n+1 - 2 \left ( \frac{\sum_{i=1}^n (n+1-i)y_i}{\sum_{i=1}^n y_i} \right ) \right ).$$

    This may be simplified to:
    $$G = \frac{2 \sum_{i=1}^n i y_i}{n \sum_{i=1}^n y_i} -\frac{n+1}{n}.$$

    This formula actually applies to any real population, since each person can be assigned his or her own _y__(_i_).[16]

Since the Gini coefficient is half the relative mean absolute difference, it can also be calculated using formulas for the relative mean absolute difference. For a random sample _S_ consisting of values _y__(_i_), _i_ = 1 to _n_, that are indexed in non-decreasing order (_y__(_i_) ≤ _y__(_i_+1)), the statistic:

$$G(S) = \frac{1}{n-1}\left (n+1 - 2 \left ( \frac{\sum_{i=1}^n (n+1-i)y_i}{\sum_{i=1}^n y_i}\right ) \right )$$

is a consistent estimator of the population Gini coefficient, but is not, in general, unbiased. Like _G_, has a simpler form:

$$G(S) = 1 - \frac{2}{n-1}\left ( n - \frac{\sum_{i=1}^n iy_i}{\sum_{i=1}^n y_i}\right ).$$

There does not exist a sample statistic that is in general an unbiased estimator of the population Gini coefficient, like the relative mean absolute difference.

Discrete probability distribution

For a discrete probability distribution with probability mass function _f ( y_(i) )_, _i_ = 1 to _n_, where _f ( y_(i) )_ is the fraction of the population with income or wealth ''y_(i) ''>0, the Gini coefficient is:

$$G = \frac{1}{2\mu}  \sum\limits_{i=1}^n  \sum\limits_{j=1}^n \, f(y_i) f(y_j)|y_i-y_j|$$
where

$$\mu=\sum\limits_{i=1}^n y_i f(y_i).$$

    If the points with nonzero probabilities are indexed in increasing order (_y__(_i_) < _y__(_i_+1)) then:
    $G = 1 - \frac{\sum_{i=1}^n f(y_i)(S_{i-1}+S_i)}{S_n}$

where

$$S_i = \sum_{j=1}^i f(y_j)\,y_j\,$$
and S₀ = 0. These formulae are also applicable in the limit as n → ∞.

Continuous probability distribution

When the population is large, the income distribution may be represented by a continuous probability density function _f_(_x_) where _f_(_x_) _dx_ is the fraction of the population with wealth or income in the interval _dx_ about _x_. If _F_(_x_) is the cumulative distribution function for _f_(_x_), then the Lorenz curve _L_(_F_) may then be represented as a function parametric in _L_(_x_) and _F_(_x_) and the value of _B_ can be found by integration:

_B_ = ∫₀¹_L_(_F_) _d__F_.

The Gini coefficient can also be calculated directly from the cumulative distribution function of the distribution _F_(_y_). Defining μ as the mean of the distribution, and specifying that _F_(_y_) is zero for all negative values, the Gini coefficient is given by:

$$G = 1 - \frac{1}{\mu}\int_0^\infty (1-F(y))^2 \,dy = \frac{1}{\mu}\int_0^\infty F(y)(1-F(y)) \,dy$$
The latter result comes from integration by parts. (Note that this formula can be applied when there are negative values if the integration is taken from minus infinity to plus infinity.)

The Gini coefficient may be expressed in terms of the quantile function _Q_(_F_) (inverse of the cumulative distribution function: _Q_(_F_(_x_)) = _x_)

    $G=\frac{1}{2 \mu}\int_0^1 \int_0^1 |Q(F_1)-Q(F_2)|\,dF_1\,dF_2 .$

For some functional forms, the Gini index can be calculated explicitly. For example, if _y_ follows a lognormal distribution with the standard deviation of logs equal to σ, then $G = \operatorname{erf}\left(\frac{\sigma }{2 }\right)$ where erf  is the error function ( since $G=2 \phi \left(\frac{\sigma }{\sqrt{2}}\right)-1$, where ϕ is the cumulative standard normal distribution).[17] In the table below, some examples are shown. The Dirac delta distribution represents the case where everyone has the same wealth (or income); it implies that there are no variations at all between incomes.

    {| class="wikitable" style="float: left; margin-left: 1em;"

|- ! Income Distribution function !! PDF(x) !! Gini Coefficient |- | Dirac delta function || δ(x − x₀), x₀ > 0 || 0 |- | Uniform distribution ||$\begin{cases}
\frac{1}{b-a} & a\le x\le b \\ 0 & \mathrm{otherwise}
\end{cases}$ || $\frac{b-a}{3(b+a)}$ |- | Exponential distribution ||λe^( − xλ),  x > 0 ||1/2 |- | Log-normal distribution ||$\frac{1}{x\sigma\sqrt{2\pi}} e^{-\frac 12 \left(\frac{\ln\,(x)-\mu}{\sigma}\right)^2}$ ||erf(σ/2) |- | Pareto distribution ||$\begin{cases}
\frac{\alpha k^\alpha}{x^{\alpha+1}} & x\ge k\\0 & x < k
\end{cases}$ ||$\begin{cases}
1 & 0<\alpha < 1\\ \frac{1}{2\alpha -1} & \alpha \ge 1
\end{cases}$ |- | Chi-squared distribution ||$\frac{2^{-k/2} e^{-x/2} x^{k/2 - 1}}{\Gamma(k/2)}$ ||$\frac{2\,\Gamma\left(\frac{1+k}{2}\right)}{k\,\Gamma(k/2)\sqrt{\pi}}$ |- | Gamma distribution ||$\frac{e^{-x/\theta}x^{k-1}\theta^{-k}}{\Gamma(k)}$ ||$\frac{\Gamma\left(\frac{2k+1}{2}\right)}{k\,\Gamma(k)\sqrt{\pi}}$ |- | Weibull distribution ||$\frac {k} {\lambda}\, \left(\frac {x}{\lambda} \right)^{k-1} e^{-(x/\lambda)^k}$ ||1 − 2^( − 1/k) |- | Beta distribution ||$\frac {x^{\alpha-1}(1-x)^{\beta-1}} {B(\alpha,\beta)}$ ||$\left(\frac{2}{\alpha}\right)\frac{B(\alpha+\beta,\alpha+\beta)}{B(\alpha,\alpha)B(\beta,\beta)}$ |}

Other approaches

Sometimes the entire Lorenz curve is not known, and only values at certain intervals are given. In that case, the Gini coefficient can be approximated by using various techniques for interpolating the missing values of the Lorenz curve. If (_X__(_k_), _Y__(_k_)) are the known points on the Lorenz curve, with the _X__(_k_) indexed in increasing order (_X__(_k_\ –\ 1) < _X__(_k_)), so that:

-   _X__(_k_) is the cumulated proportion of the population variable, for _k_ = 0,...,_n_, with _X_₀ = 0, _X__(_n_) = 1.
-   _Y__(_k_) is the cumulated proportion of the income variable, for _k_ = 0,...,_n_, with _Y_₀ = 0, _Y__(_n_) = 1.
-   _Y__(_k_) should be indexed in non-decreasing order (_Y__(_k_) > _Y__(_k_\ –\ 1))

If the Lorenz curve is approximated on each interval as a line between consecutive points, then the area B can be approximated with trapezoids and:

$$G_1 = 1 - \sum_{k=1}^{n} (X_{k} - X_{k-1}) (Y_{k} + Y_{k-1})$$

is the resulting approximation for G. More accurate results can be obtained using other methods to approximate the area B, such as approximating the Lorenz curve with a quadratic function across pairs of intervals, or building an appropriately smooth approximation to the underlying distribution function that matches the known data. If the population mean and boundary values for each interval are also known, these can also often be used to improve the accuracy of the approximation.

The Gini coefficient calculated from a sample is a statistic and its standard error, or confidence intervals for the population Gini coefficient, should be reported. These can be calculated using bootstrap techniques but those proposed have been mathematically complicated and computationally onerous even in an era of fast computers. Ogwang (2000) made the process more efficient by setting up a "trick regression model" in which respective income variables in the sample are ranked with the lowest income being allocated rank 1. The model then expresses the rank (dependent variable) as the sum of a constant _A_ and a normal error term whose variance is inversely proportional to _y__(_k_);

_k_ = _A_+ _N_(0, _s_²/_y__(_k_))

Ogwang showed that _G_ can be expressed as a function of the weighted least squares estimate of the constant _A_ and that this can be used to speed up the calculation of the jackknife estimate for the standard error. Giles (2004) argued that the standard error of the estimate of _A_ can be used to derive that of the estimate of _G_ directly without using a jackknife at all. This method only requires the use of ordinary least squares regression after ordering the sample data. The results compare favorably with the estimates from the jackknife with agreement improving with increasing sample size.

However it has since been argued that this is dependent on the model's assumptions about the error distributions (Ogwang 2004) and the independence of error terms (Reza & Gastwirth 2006) and that these assumptions are often not valid for real data sets. It may therefore be better to stick with jackknife methods such as those proposed by Yitzhaki (1991) and Karagiannis and Kovacevic (2000). The debate continues.

Guillermina Jasso[18] and Angus Deaton independently proposed the following formula for the Gini coefficient:

$$G = \frac{N+1}{N-1}-\frac{2}{N(N-1)\mu}(\sum_{i=1}^n P_iX_i)$$

where μ is mean income of the population, P_(i) is the income rank P of person i, with income X, such that the richest person receives a rank of 1 and the poorest a rank of N. This effectively gives higher weight to poorer people in the income distribution, which allows the Gini to meet the Transfer Principle. Note that the Jasso-Deaton formula rescales the coefficient so that its value is 1 if all the X_(i) are zero except one. Note however Allison's reply on the need to divide by N² instead.[19]

FAO explains another version of the formula.[20]


Generalized inequality indices

The Gini coefficient and other standard inequality indices reduce to a common form. Perfect equality—the absence of inequality—exists when and only when the inequality ratio, $r_j = x_j / \overline{x}$, equals 1 for all j units in some population (for example, there is perfect income equality when everyone's income x_(j) equals the mean income $\overline{x}$, so that r_(j) = 1 for everyone). Measures of inequality, then, are measures of the average deviations of the r_(j) = 1 from 1; the greater the average deviation, the greater the inequality. Based on these observations the inequality indices have this common form:[21]

Inequality = ∑_(_j_)_p__(_j_) _f_(_r__(_j_)),

where _p__(_j_) weights the units by their population share, and _f_(_r__(_j_)) is a function of the deviation of each unit's _r__(_j_) from 1, the point of equality. The insight of this generalised inequality index is that inequality indices differ because they employ different functions of the distance of the inequality ratios (the _r__(_j_)) from 1.''


Gini coefficients of income distributions

Gini coefficients of income are calculated on market income as well as disposable income basis. The Gini coefficient on market income—sometimes referred to as a pre-tax Gini coefficient—is calculated on income before taxes and transfers, and it measures inequality in income without considering the effect of taxes and social spending already in place in a country. The Gini coefficient on disposable income—sometimes referred to as after-tax Gini coefficient—is calculated on income after taxes and transfers, and it measures inequality in income after considering the effect of taxes and social spending already in place in a country.[22][23][24]

The difference in Gini indices between OECD countries, on after-taxes and transfers basis, is significantly narrower.[25] For OECD countries, over 2008–2009 period, Gini coefficient on pre-taxes and transfers basis for total population ranged between 0.34 and 0.53, with South Korea the lowest and Italy the highest. Gini coefficient on after-taxes and transfers basis for total population ranged between 0.25 and 0.48, with Denmark the lowest and Mexico the highest. For United States, the country with the largest population in OECD countries, the pre-tax Gini index was 0.49, and after-tax Gini index was 0.38, in 2008–2009. The OECD averages for total population in OECD countries was 0.46 for pre-tax income Gini index and 0.31 for after-tax income Gini Index.[26][27] Taxes and social spending that were in place in 2008–2009 period in OECD countries significantly lowered effective income inequality, and in general, "European countries—especially Nordic and Continental welfare states—achieve lower levels of income inequality than other countries."[28]

Using the Gini can help quantify differences in welfare and compensation policies and philosophies. However it should be borne in mind that the Gini coefficient can be misleading when used to make political comparisons between large and small countries or those with different immigration policies (see limitations of Gini coefficient section).

The Gini coefficient for the entire world has been estimated by various parties to be between 0.61 and 0.68.[29][30][31] The graph shows the values expressed as a percentage in their historical development for a number of countries. Gini_since_WWII.svg

Regional income Gini indices

According to UNICEF, Latin America and the Caribbean region had the highest net income Gini index in the world at 48.3, on unweighted average basis in 2008. The remaining regional averages were: sub-Saharan Africa (44.2), Asia (40.4), Middle East and North Africa (39.2), Eastern Europe and Central Asia (35.4), and High-income Countries (30.9). Using the same method, the United States is claimed to have a Gini index of 36, while South Africa had the highest income Gini index score of 67.8.[32]

World income Gini index since 1800s

Taking income distribution of all human beings, worldwide income inequality has been constantly increasing since the early 19th century. There was a steady increase in the global income inequality Gini score from 1820 to 2002, with a significant increase between 1980 and 2002. This trend appears to have peaked and begun a reversal with rapid economic growth in emerging economies, particularly in the large populations of BRIC countries.[33]

The table below presents the estimated world income Gini coefficients over the last 200 years, as calculated by Milanovic.[34]

  Year   World Gini coefficients[35][36][37]
  ------ -------------------------------------
  1820   0.43
  1850   0.53
  1870   0.56
  1913   0.61
  1929   0.62
  1950   0.64
  1960   0.64
  1980   0.66
  2002   0.71
  2005   0.68

  : Income Gini coefficient
  World, 1820–2005

More detailed data from similar sources plots a continuous decline since 1988. This is attributed to globalization increasing incomes for billions of poor people, mostly in India and China. Developing countries like Brazil have also improved basic services like health care, education, and sanitation; others like Chile and Mexico have enacted more progressive tax policies.[38]

  Year   World Gini coefficient[39]
  ------ ----------------------------
  1988   .80
  1993   .76
  1998   .74
  2003   .72
  2008   .70
  2013   .65


Gini coefficients of social development

Gini coefficient is widely used in fields as diverse as sociology, economics, health science, ecology, engineering and agriculture.[40] For example, in social sciences and economics, in addition to income Gini coefficients, scholars have published education Gini coefficients and opportunity Gini coefficients.

Gini coefficient of education

Education Gini index estimates the inequality in education for a given population.[41] It is used to discern trends in social development through educational attainment over time. From a study of 85 countries by three Economists of World Bank Vinod Thomas, Yan Wang, Xibo Fan, estimate Mali had the highest education Gini index of 0.92 in 1990 (implying very high inequality in education attainment across the population), while the United States had the lowest education inequality Gini index of 0.14. Between 1960 and 1990, China, India and South Korea had the fastest drop in education inequality Gini Index. They also claim education Gini index for the United States slightly increased over the 1980–1990 period.

Gini coefficient of opportunity

Similar in concept to income Gini coefficient, opportunity Gini coefficient measures inequality of opportunity.[42][43][44] The concept builds on Amartya Sen's suggestion[45] that inequality coefficients of social development should be premised on the process of enlarging people's choices and enhancing their capabilities, rather than on the process of reducing income inequality. Kovacevic in a review of opportunity Gini coefficient explains that the coefficient estimates how well a society enables its citizens to achieve success in life where the success is based on a person's choices, efforts and talents, not his background defined by a set of predetermined circumstances at birth, such as, gender, race, place of birth, parent's income and circumstances beyond the control of that individual.

In 2003, Roemer[46][47] reported Italy and Spain exhibited the largest opportunity inequality Gini index amongst advanced economies.

Gini coefficients and income mobility

In 1978, Anthony Shorrocks introduced a measure based on income Gini coefficients to estimate income mobility.[48] This measure, generalized by Maasoumi and Zandvakili,[49] is now generally referred to as Shorrocks index, sometimes as Shorrocks mobility index or Shorrocks rigidity index. It attempts to estimate whether the income inequality Gini coefficient is permanent or temporary, and to what extent a country or region enables economic mobility to its people so that they can move from one (e.g., bottom 20%) income quantile to another (e.g., middle 20%) over time. In other words, Shorrocks index compares inequality of short-term earnings such as annual income of households, to inequality of long-term earnings such as 5-year or 10-year total income for same households.

Shorrocks index is calculated in number of different ways, a common approach being from the ratio of income Gini coefficients between short-term and long-term for the same region or country.[50]

A 2010 study using social security income data for the United States since 1937 and Gini-based Shorrocks indices concludes that income mobility in the United States has had a complicated history, primarily due to mass influx of women into the American labor force after World War II. Income inequality and income mobility trends have been different for men and women workers between 1937 and the 2000s. When men and women are considered together, the Gini coefficient-based Shorrocks index trends imply long-term income inequality has been substantially reduced among all workers, in recent decades for the United States.[51] Other scholars, using just 1990s data or other short periods have come to different conclusions.[52] For example, Sastre and Ayala, conclude from their study of income Gini coefficient data between 1993 and 1998 for six developed economies, that France had the least income mobility, Italy the highest, and the United States and Germany intermediate levels of income mobility over those 5 years.[53]


Features of Gini coefficient

The Gini coefficient has features that make it useful as a measure of dispersion in a population, and inequalities in particular.[54] It is a ratio analysis method making it easier to interpret. It also avoids references to a statistical average or position unrepresentative of most of the population, such as per capita income or gross domestic product. For a given time interval, Gini coefficient can therefore be used to compare diverse countries and different regions or groups within a country; for example states, counties, urban versus rural areas, gender and ethnic groups. Gini coefficients can be used to compare income distribution over time, thus it is possible to see if inequality is increasing or decreasing independent of absolute incomes.

Other useful features of the Gini coefficient include:[55][56]

-   _Anonymity_: it does not matter who the high and low earners are.
-   _Scale independence_: the Gini coefficient does not consider the size of the economy, the way it is measured, or whether it is a rich or poor country on average.
-   _Population independence_: it does not matter how large the population of the country is.
-   _Transfer principle_: if income (less than the difference), is transferred from a rich person to a poor person the resulting distribution is more equal.


Countries by Gini Index

2014_Gini_Index_World_Map,_income_inequality_distribution_by_country_per_World_Bank.svg A Gini index value above 50 is considered high; countries including Brazil, Colombia, South Africa, Botswana, and Honduras can be found in this category. A Gini index value of 30 or above is considered medium; countries including Vietnam, Mexico, Poland, The United States, Argentina, Russia and Uruguay can be found in this category. A Gini index value lower than 30 is considered low; countries including Austria, Germany, Denmark, Slovenia, Sweden and Ukraine can be found in this category.[57]


Limitations of Gini coefficient

+----------------+------------+------------+
| Household      | Country A  | Country B  |
| Group          | Annual     | Annual     |
|                | Income ($) | Income ($) |
+================+============+============+
| 1              | 20,000     | 9,000      |
+----------------+------------+------------+
| 2              | 30,000     | 40,000     |
+----------------+------------+------------+
| 3              | 40,000     | 48,000     |
+----------------+------------+------------+
| 4              | 50,000     | 48,000     |
+----------------+------------+------------+
| 5              | 60,000     | 55,000     |
+----------------+------------+------------+
| Total Income   | $200,000   | $200,000   |
+----------------+------------+------------+
| Country's Gini | 0.2        | 0.2        |
+----------------+------------+------------+

: Table A. Different income distributions
with the same Gini Index[58]

Different income distributions with the same Gini coefficient

The Gini coefficient is a relative measure. Its proper use and interpretation is controversial.[59] It is possible for the Gini coefficient of a developing country to rise (due to increasing inequality of income) while the number of people in absolute poverty decreases.[60] This is because the Gini coefficient measures relative, not absolute, wealth. Changing income inequality, measured by Gini coefficients, can be due to structural changes in a society such as growing population (baby booms, aging populations, increased divorce rates, extended family households splitting into nuclear families, emigration, immigration) and income mobility.[61] Gini coefficients are simple, and this simplicity can lead to oversights and can confuse the comparison of different populations; for example, while both Bangladesh (per capita income of $1,693) and the Netherlands (per capita income of $42,183) had an income Gini coefficient of 0.31 in 2010,[62] the quality of life, economic opportunity and absolute income in these countries are very different, i.e. countries may have identical Gini coefficients, but differ greatly in wealth. Basic necessities may be available to all in a developed economy, while in an undeveloped economy with the same Gini coefficient, basic necessities may be unavailable to most or unequally available, due to lower absolute wealth.

Extreme wealth inequality, yet low income Gini coefficient

A Gini index does not contain information about absolute national or personal incomes. Populations can have very low income Gini indices, yet simultaneously very high wealth Gini index. By measuring inequality in income, the Gini ignores the differential efficiency of use of household income. By ignoring wealth (except as it contributes to income) the Gini can create the appearance of inequality when the people compared are at different stages in their life. Wealthy countries such as Sweden can show a low Gini coefficient for disposable income of 0.31 thereby appearing equal, yet have very high Gini coefficient for wealth of 0.79 to 0.86 thereby suggesting an extremely unequal wealth distribution in its society.[63][64] These factors are not assessed in income-based Gini.

+----------------+------------+-----------+------------+
| Household      | Country A  | Household | Country A  |
| number         | Annual     | combined  | combined   |
|                | Income ($) | number    | Annual     |
|                |            |           | Income ($) |
+================+============+===========+============+
| 1              | 20,000     | 1 & 2     | 50,000     |
+----------------+------------+-----------+------------+
| 2              | 30,000     |           |            |
+----------------+------------+-----------+------------+
| 3              | 40,000     | 3 & 4     | 90,000     |
+----------------+------------+-----------+------------+
| 4              | 50,000     |           |            |
+----------------+------------+-----------+------------+
| 5              | 60,000     | 5 & 6     | 130,000    |
+----------------+------------+-----------+------------+
| 6              | 70,000     |           |            |
+----------------+------------+-----------+------------+
| 7              | 80,000     | 7 & 8     | 170,000    |
+----------------+------------+-----------+------------+
| 8              | 90,000     |           |            |
+----------------+------------+-----------+------------+
| 9              | 120,000    | 9 & 10    | 270,000    |
+----------------+------------+-----------+------------+
| 10             | 150,000    |           |            |
+----------------+------------+-----------+------------+
| Total Income   | $710,000   |           | $710,000   |
+----------------+------------+-----------+------------+
| Country's Gini | 0.303      |           | 0.293      |
+----------------+------------+-----------+------------+

: Table B. Same income distributions
but different Gini Index

Small sample bias – sparsely populated regions more likely to have low Gini coefficient

Gini index has a downward-bias for small populations.[65] Counties or states or countries with small populations and less diverse economies will tend to report small Gini coefficients. For economically diverse large population groups, a much higher coefficient is expected than for each of its regions. Taking world economy as one, and income distribution for all human beings, for example, different scholars estimate global Gini index to range between 0.61 and 0.68.[66][67] As with other inequality coefficients, the Gini coefficient is influenced by the granularity of the measurements. For example, five 20% quantiles (low granularity) will usually yield a lower Gini coefficient than twenty 5% quantiles (high granularity) for the same distribution. Philippe Monfort has shown that using inconsistent or unspecified granularity limits the usefulness of Gini coefficient measurements.[68]

The Gini coefficient measure gives different results when applied to individuals instead of households, for the same economy and same income distributions. If household data is used, the measured value of income Gini depends on how the household is defined. When different populations are not measured with consistent definitions, comparison is not meaningful.

Deininger and Squire (1996) show that income Gini coefficient based on individual income, rather than household income, are different. For example, for the United States, they find that the individual income-based Gini index was 0.35, while for France it was 0.43. According to their individual focused method, in the 108 countries they studied, South Africa had the world's highest Gini coefficient at 0.62, Malaysia had Asia's highest Gini coefficient at 0.5, Brazil the highest at 0.57 in Latin America and Caribbean region, and Turkey the highest at 0.5 in OECD countries.[69]

+----------------------------+-----------------+-----------------+
| Income bracket             | % of Population | % of Population |
| (in 2010 adjusted dollars) | 1979            | 2010            |
+============================+=================+=================+
| Under $15,000              | 14.6%           | 13.7%           |
+----------------------------+-----------------+-----------------+
| $15,000 – $24,999          | 11.9%           | 12.0%           |
+----------------------------+-----------------+-----------------+
| $25,000 – $34,999          | 12.1%           | 10.9%           |
+----------------------------+-----------------+-----------------+
| $35,000 – $49,999          | 15.4%           | 13.9%           |
+----------------------------+-----------------+-----------------+
| $50,000 – $74,999          | 22.1%           | 17.7%           |
+----------------------------+-----------------+-----------------+
| $75,000 – $99,999          | 12.4%           | 11.4%           |
+----------------------------+-----------------+-----------------+
| $100,000 – $149,999        | 8.3%            | 12.1%           |
+----------------------------+-----------------+-----------------+
| $150,000 – $199,999        | 2.0%            | 4.5%            |
+----------------------------+-----------------+-----------------+
| $200,000 and over          | 1.2%            | 3.9%            |
+----------------------------+-----------------+-----------------+
| Total Households           | 80,776,000      | 118,682,000     |
+----------------------------+-----------------+-----------------+
| United States' Gini        | 0.404           | 0.469           |
| on pre-tax basis           |                 |                 |
+----------------------------+-----------------+-----------------+

: Table C. Household money income
distributions and Gini Index, US[70]

Gini coefficient is unable to discern the effects of structural changes in populations[71]

Expanding on the importance of life-span measures, the Gini coefficient as a point-estimate of equality at a certain time, ignores life-span changes in income. Typically, increases in the proportion of young or old members of a society will drive apparent changes in equality, simply because people generally have lower incomes and wealth when they are young than when they are old. Because of this, factors such as age distribution within a population and mobility within income classes can create the appearance of inequality when none exist taking into account demographic effects. Thus a given economy may have a higher Gini coefficient at any one point in time compared to another, while the Gini coefficient calculated over individuals' lifetime income is actually lower than the apparently more equal (at a given point in time) economy's.[72] Essentially, what matters is not just inequality in any particular year, but the composition of the distribution over time.

Kwok claims income Gini coefficient for Hong Kong has been high (0.434 in 2010[73]), in part because of structural changes in its population. Over recent decades, Hong Kong has witnessed increasing numbers of small households, elderly households and elderly living alone. The combined income is now split into more households. Many old people are living separately from their children in Hong Kong. These social changes have caused substantial changes in household income distribution. Income Gini coefficient, claims Kwok, does not discern these structural changes in its society.[74] Household money income distribution for the United States, summarized in Table C of this section, confirms that this issue is not limited to just Hong Kong. According to the US Census Bureau, between 1979 and 2010, the population of United States experienced structural changes in overall households, the income for all income brackets increased in inflation-adjusted terms, household income distributions shifted into higher income brackets over time, while the income Gini coefficient increased.[75][76]

Another limitation of Gini coefficient is that it is not a proper measure of egalitarianism, as it is only measures income dispersion. For example, if two equally egalitarian countries pursue different immigration policies, the country accepting a higher proportion of low-income or impoverished migrants will report a higher Gini coefficient and therefore may appear to exhibit more income inequality.

Inability to value benefits and income from informal economy affects Gini coefficient accuracy

Some countries distribute benefits that are difficult to value. Countries that provide subsidized housing, medical care, education or other such services are difficult to value objectively, as it depends on quality and extent of the benefit. In absence of free markets, valuing these income transfers as household income is subjective. The theoretical model of Gini coefficient is limited to accepting correct or incorrect subjective assumptions.

In subsistence-driven and informal economies, people may have significant income in other forms than money, for example through subsistence farming or bartering. These income tend to accrue to the segment of population that is below-poverty line or very poor, in emerging and transitional economy countries such as those in sub-Saharan Africa, Latin America, Asia and Eastern Europe. Informal economy accounts for over half of global employment and as much as 90 per cent of employment in some of the poorer sub-Saharan countries with high official Gini inequality coefficients. Schneider et al., in their 2010 study of 162 countries,[77] report about 31.2%, or about $20 trillion, of world's GDP is informal. In developing countries, the informal economy predominates for all income brackets except for the richer, urban upper income bracket populations. Even in developed economies, between 8% (United States) to 27% (Italy) of each nation's GDP is informal, and resulting informal income predominates as a livelihood activity for those in the lowest income brackets.[78] The value and distribution of the incomes from informal or underground economy is difficult to quantify, making true income Gini coefficients estimates difficult.[79][80] Different assumptions and quantifications of these incomes will yield different Gini coefficients.[81][82][83]

Gini has some mathematical limitations as well. It is not additive and different sets of people cannot be averaged to obtain the Gini coefficient of all the people in the sets.


Alternatives to Gini coefficient

Given the limitations of Gini coefficient, other statistical methods are used in combination or as an alternative measure of population dispersity. For example, _entropy measures_ are frequently used (e.g. the Atkinson index or the Theil Index and Mean log deviation as special cases of the generalized entropy index). These measures attempt to compare the distribution of resources by intelligent agents in the market with a maximum entropy random distribution, which would occur if these agents acted like non-intelligent particles in a closed system following the laws of statistical physics.


Relation to other statistical measures

The Gini coefficient is sometimes alternatively _defined_ as twice the area between the receiver operating characteristic (ROC) curve and its diagonal, in which case the AUC (Area Under the ROC Curve) measure of performance is given by AUC = (G + 1)/2.[84] The Gini coefficient is also closely related to Mann–Whitney U.

The Gini index is also related to Pietra index—both of which are a measure of statistical heterogeneity and are derived from Lorenz curve and the diagonal line.[85][86]

In certain fields such as ecology, inverse Simpson's index 1/λ is used to quantify diversity, and this should not be confused with the Simpson index λ. These indicators are related to Gini. The inverse Simpson index increases with diversity, unlike Simpson index and Gini coefficient which decrease with diversity. The Simpson index is in the range [0, 1], where 0 means maximum and 1 means minimum diversity (or heterogeneity). Since diversity indices typically increase with increasing heterogeneity, Simpson index is often transformed into inverse Simpson, or using the complement 1 − λ, known as Gini-Simpson Index.[87]


Other uses

Although the Gini coefficient is most popular in economics, it can in theory be applied in any field of science that studies a distribution. For example, in ecology the Gini coefficient has been used as a measure of biodiversity, where the cumulative proportion of species is plotted against cumulative proportion of individuals.[88] In health, it has been used as a measure of the inequality of health related quality of life in a population.[89] In education, it has been used as a measure of the inequality of universities.[90] In chemistry it has been used to express the selectivity of protein kinase inhibitors against a panel of kinases.[91] In engineering, it has been used to evaluate the fairness achieved by Internet routers in scheduling packet transmissions from different flows of traffic.[92]

The Gini coefficient is sometimes used for the measurement of the discriminatory power of rating systems in credit risk management.[93]

A 2005 study accessed US census data to measure home computer ownership, and used the Gini coefficient to measure inequalities amongst whites and African Americans. Results indicated that although decreasing overall, home computer ownership inequality is substantially smaller among white households.[94]

A 2016 peer-reviewed study titled Employing the Gini coefficient to measure participation inequality in treatment-focused Digital Health Social Networks[95] illustrated that the Gini coefficient was helpful and accurate in measuring shifts in inequality, however as a standalone metric it failed to incorporate overall network size.

The discriminatory power refers to a credit risk model's ability to differentiate between defaulting and non-defaulting clients. The formula G₁, in calculation section above, may be used for the final model and also at individual model factor level, to quantify the discriminatory power of individual factors. It is related to accuracy ratio in population assessment models.


See also


References


Further reading

-   -   -   -   -   -   -   -   -   -   -   Reprinted in

-   -   -   -   -   -   -   -   -   The Chinese version of this paper appears in

-


External links

-   Deutsche Bundesbank: Do banks diversify loan portfolios?, 2005 (on using e.g. the Gini coefficient for risk evaluation of loan portfolios)
-   Forbes Article, In praise of inequality
-   Measuring Software Project Risk With The Gini Coefficient, an application of the Gini coefficient to software
-   The World Bank: Measuring Inequality
-   Travis Hale, University of Texas Inequality Project:The Theoretical Basics of Popular Inequality Measures, online computation of examples: [http://www.poorcity.richcity.org/calculator/?quantiles=7,*18000|10,*22000|280,*25000|15,*35000|15,*40000|50,*60000|10,*75000|6,*80000|4,*120000|2,*200000|1,1000000 1A], [http://www.poorcity.richcity.org/calculator/?quantiles=12,*15000|25,*20000|1000,*30000|35,*35000|100,*45000|80,*50000|10,*60000|25,*80000|8,*175000|4,*250000|1,5000000 1B]
-   Article from The Guardian analysing inequality in the UK 1974–2006
-   World Income Inequality Database
-   Income Distribution and Poverty in OECD Countries
-   U.S. Income Distribution: Just How Unequal?

Category:Demographic economics Category:Income inequality metrics Category:Welfare economics

[1] Gini, C. (1909). "Concentration and dependency ratios" (in Italian). English translation in _Rivista di Politica Economica_, 87 (1997), 769–789.

[2]

[3] Note: Gini coefficient becomes 1, only in a large population where one person has all the income. In the special case of just two people, where one has no income and the other has all the income, the Gini coefficient is 0.5. For 5 people set, where 4 have no income and the fifth has all the income, the Gini coefficient is 0.8. See: FAO, United Nations – Inequality Analysis, The Gini Index Module (PDF format), fao.org.

[4] Gini, C. (1936). "On the Measure of Concentration with Special Reference to Income and Statistics", Colorado College Publication, General Series No. 208, 73–79.

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

[17] Crow, E. L., & Shimizu, K. (Eds.). (1988). Lognormal distributions: Theory and applications (Vol. 88). New York: M. Dekker, page 11.

[18]

[19]

[20]

[21] . See also

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

[33]

[34]

[35]

[36]

[37]

[38]

[39] . Figure O.10 Global Inequality, 1988–2013

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76] Congressional Budget Office: Trends in the Distribution of Household Income Between 1979 and 2007. October 2011. see pp. i–x, with definitions on ii–iii

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]