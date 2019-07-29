In statistics, the RANGE of a set of data is the difference between the largest and smallest values. [1] Difference here is specific, the RANGE of a set of data is the result of subtracting the SMALLEST VALUE from LARGEST VALUE.

However, in descriptive statistics, this concept of range has a more complex meaning. The range is the size of the smallest interval (statistics) which contains all the data and provides an indication of statistical dispersion. It is measured in the same units as the data. Since it only depends on two of the observations, it is most useful in representing the dispersion of small data sets.[2]


For continuous IID random variables

For _n_ independent and identically distributed continuous random variables _X_₁, _X_₂, ..., _X__(_n_) with cumulative distribution function G(_x_) and probability density function g(_x_). Let T denote the range of a sample of size _n_ from a population with distribution function _G_(_x_).

Distribution

The range has cumulative distribution function[3][4]

_F_(_t_) = _n_∫_( − ∞)^(∞)_g_(_x_)[_G_(_x_ + _t_) − _G_(_x_)]^(_n_ − 1)d_x_.
Gumbel notes that the "beauty of this formula is completely marred by the facts that, in general, we cannot express _G_(_x_ + _t_) by _G_(_x_), and that the numerical integration is lengthy and tiresome."[5]

If the distribution of each _X__(_i_) is limited to the right (or left) then the asymptotic distribution of the range is equal to the asymptotic distribution of the largest (smallest) value. For more general distributions the asymptotic distribution can be expressed as a Bessel function.[6]

Moments

The mean range is given by[7]

_n_∫₀¹_x_(_G_)[_G_^(_n_ − 1) − (1 − _G_)^(_n_ − 1)] d_G_
where _x_(_G_) is the inverse function. In the case where each of the _X__(_i_) has a standard normal distribution, the mean range is given by[8]

∫_( − ∞)^(∞)(1 − (1 − _Φ_(_x_))^(_n_) − _Φ_(_x_)^(_n_)) d_x_.


For continuous non-IID random variables

For _n_ nonidentically distributed independent continuous random variables _X_₁, _X_₂, ..., _X__(_n_) with cumulative distribution functions _G_₁(_x_), _G_₂(_x_), ..., _G__(_n_)(_x_) and probability density functions _g_₁(_x_), _g_₂(_x_), ..., _g__(_n_)(_x_), the range has cumulative distribution function [9]

$$F(t) = \sum_{i=1}^n \int_{-\infty}^\infty g_i(x) \prod_{j=1, j \neq i}^n [G_j(x+t)-G_j(x)] \, \text{d}x.$$


For discrete IID random variables

For _n_ independent and identically distributed discrete random variables _X_₁, _X_₂, ..., _X__(_n_) with cumulative distribution function _G_(_x_) and probability mass function _g_(_x_) the range of the _X__(_i_) is the range of a sample of size _n_ from a population with distribution function _G_(_x_). We can assume without loss of generality that the support of each _X__(_i_) is {1,2,3,...,_N_} where _N_ is a positive integer or infinity.[10][11]

Distribution

The range has probability mass function[12][13][14]

$$f(t)=\begin{cases}
\sum_{x=1}^N[g(x)]^n & t=0 \\[6pt]
\sum_{x=1}^{N-t}\left(\begin{alignat}{2} &[G(x+t)-G(x-1)]^n\\
{}-{}&[G(x+t)-G(x)]^n\\
{}-{}&[G(x+t-1)-G(x-1)]^n\\
{}+{}&[G(x+t-1)-G(x)]^n \\
\end{alignat} \right)& t=1,2,3\ldots,N-1.
\end{cases}$$

Example

If we suppose that _g_(_x_) = 1/_N_, the discrete uniform distribution for all _x_, then we find[15][16]

$$f(t)=\begin{cases}
\frac{1}{N^{n-1}} & t=0 \\[4pt]
\sum_{x=1}^{N-t}\left([\frac{t+1}{N}]^n -2[\frac{t}{N}]^n +[\frac{t-1}{N}]^n
\right) & t=1,2,3\ldots ,N-1.
\end{cases}$$


Derivation

The probability of having a specific range value, _t_, can be determined by adding the probabilities of having two samples differing by _t_, and every other sample having a value between the two extremes. The probability of one sample having a value of _x_ is n * g(x). The probability of another having a value _t_ greater than _x_ is:

(_n_−1)_g_(_x_+_t_)
. The probability of all other values lying between these two extremes is:

(∫_(_x_)^(_x_ + _t_)_g_(_x_)d_x_)^(_n_ − 2) = (_G_(_x_+_t_)−_G_(_x_))^(_n_ − 2)
. Combining the three together yields:

_f_(_t_) = _n_(_n_−1)∫_( − ∞)^(∞)_g_(_x_)_g_(_x_+_t_)[_G_(_x_+_t_)−_G_(_x_)]^(_n_ − 2)d_x_


Related quantities

The range is a simple function of the sample maximum and minimum and these are specific examples of order statistics. In particular, the range is a linear function of order statistics, which brings it into the scope of L-estimation.


See also

-   Interquartile range
-   Studentized range


References

Category:Statistical deviation and dispersion Category:Scale statistics Category:Summary statistics

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