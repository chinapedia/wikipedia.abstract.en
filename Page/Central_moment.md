In probability theory and statistics, a CENTRAL MOMENT is a moment of a probability distribution of a random variable about the random variable's mean; that is, it is the expected value of a specified integer power of the deviation of the random variable from the mean. The various moments form one set of values by which the properties of a probability distribution can be usefully characterized. Central moments are used in preference to ordinary moments, computed in terms of deviations from the mean instead of from zero, because the higher-order central moments relate only to the spread and shape of the distribution, rather than also to its location.

Sets of central moments can be defined for both univariate and multivariate distributions.


Univariate moments

The _n_th moment about the mean (or _n_th CENTRAL MOMENT) of a real-valued random variable _X_ is the quantity _μ__(_n_) := E[(_X_ − E[_X_])^(_n_)], where E is the expectation operator. For a continuous univariate probability distribution with probability density function _f_(_x_), the _n_th moment about the mean _μ_ is

_μ__(_n_) = E [(_X_−E[_X_])^(_n_)] = ∫_( − ∞)^( + ∞)(_x_ − _μ_)^(_n_)_f_(_x_) _d__x_.
[1]

For random variables that have no mean, such as the Cauchy distribution, central moments are not defined.

The first few central moments have intuitive interpretations:

-   The "zeroth" central moment _μ_₀ is 1.
-   The first central moment _μ_₁ is 0 (not to be confused with the first raw moments or the expected value _μ_).
-   The second central moment _μ_₂ is called the variance, and is usually denoted _σ_², where σ represents the standard deviation.
-   The third and fourth central moments are used to define the standardized moments which are used to define skewness and kurtosis, respectively.

Properties

The _n_th central moment is translation-invariant, i.e. for any random variable _X_ and any constant _c_, we have

_μ__(_n_)(_X_ + _c_) = _μ__(_n_)(_X_). 

For all _n_, the _n_th central moment is homogeneous of degree _n_:

_μ__(_n_)(_c__X_) = _c_^(_n_)_μ__(_n_)(_X_). 

_Only_ for _n_ such that n equals 1, 2, or 3 do we have an additivity property for random variables _X_ and _Y_ that are independent:

_μ__(_n_)(_X_ + _Y_) = _μ__(_n_)(_X_) + _μ__(_n_)(_Y_) 
provided _n_ ∈ }.

A related functional that shares the translation-invariance and homogeneity properties with the _n_th central moment, but continues to have this additivity property even when _n_ ≥ 4 is the _n_th cumulant κ_(_n_)(_X_). For _n_ = 1, the _n_th cumulant is just the expected value; for _n_ = either 2 or 3, the _n_th cumulant is just the _n_th central moment; for _n_ ≥ 4, the _n_th cumulant is an _n_th-degree monic polynomial in the first _n_ moments (about zero), and is also a (simpler) _n_th-degree polynomial in the first _n_ central moments.

Relation to moments about the origin

Sometimes it is convenient to convert moments about the origin to moments about the mean. The general equation for converting the _n_th-order moment about the origin to the moment about the mean is

$$\mu_n = \operatorname{E}\left[\left(X - \operatorname{E}[X]\right)^n\right] = \sum_{j=0}^n {n \choose j} (-1) ^{n-j} \mu'_j \mu^{n-j},$$

where _μ_ is the mean of the distribution, and the moment about the origin is given by

$$\mu'_m = \int_{-\infty}^{+\infty} x^m f(x)\,dx = \operatorname{E}[X^m] = \sum_{j=0}^m {m \choose j}  \mu_j \mu^{m-j}.$$

For the cases _n_ = 2, 3, 4 — which are of most interest because of the relations to variance, skewness, and kurtosis, respectively — this formula becomes (noting that μ = μ′₁ and μ′₀ = 1):,

_μ_₂ = _μ_′₂ − _μ_² 
which is commonly referred to as Var (X) = E [X²] − (E[X])²

_μ_₃ = _μ_′₃ − 3_μ__μ_′₂ + 2_μ_³ 

_μ_₄ = _μ_′₄ − 4_μ__μ_′₃ + 6_μ_²_μ_′₂ − 3_μ_⁴. 

... and so on,[2] following Pascal's triangle, i.e.

_μ_₅ = _μ_′₅ − 5_μ__μ_′₄ + 10_μ_²_μ_′₃ − 10_μ_³_μ_′₂ + 4_μ_⁵. 

because 5μ⁴μ′₁ − μ⁵μ′₀ = 5μ⁴μ − μ⁵ = 5μ⁵ − μ⁵ = 4μ⁵

The following sum is a stochastic variable having a _COMPOUND DISTRIBUTION_

$$W = \sum_{i=1}^M Y_i,$$

where the Y_(i) are mutually independent random variables sharing the same common distribution and M a random integer variable independent of the Y_(k) with its own distribution. The moments of W are obtained as [3]

$$\operatorname{E}[W^n]= \sum_{i=0}^n\operatorname{E}\left[{M \choose i}\right]\sum_{j=0}^i {i \choose j}(-1)^{i-j}\operatorname{E} \left[ \left(\sum_{k=1}^j Y_k\right)^n \right],$$

where $\operatorname{E} \left[ \left(\sum_{k=1}^j Y_k\right)^n\right]$ is defined as zero for j = 0.

Symmetric distributions

In a symmetric distribution (one that is unaffected by being reflected about its mean), all odd central moments equal zero, because in the formula for the _n_th moment, each term involving a value of _X_ less than the mean by a certain amount exactly cancels out the term involving a value of _X_ greater than the mean by the same amount.


Multivariate moments

For a continuous bivariate probability distribution with probability density function _f_(_x_,_y_) the (_j_,_k_) moment about the mean _μ_ = (_μ__(_X_), _μ__(_Y_)) is

_μ__(_j_, _k_) = E [(_X_−E[_X_])^(_j_)(_Y_−E[_Y_])^(_k_)] = ∫_( − ∞)^( + ∞)∫_( − ∞)^( + ∞)(_x_ − _μ__(_X_))^(_j_)(_y_ − _μ__(_Y_))^(_k_)_f_(_x_, _y_) _d__x_ _d__y_.


See also

-   Standardized moment
-   Image moment
-


References

fr:Moment (mathématiques)#Moment centré

Category:Statistical deviation and dispersion Category:Moment (mathematics)

[1]

[2] http://mathworld.wolfram.com/CentralMoment.html

[3]