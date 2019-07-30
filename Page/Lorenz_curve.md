upright=1.2 In economics, the LORENZ CURVE is a graphical representation of the distribution of income or of wealth. It was developed by Max O. Lorenz in 1905 for representing inequality of the wealth distribution.

The curve is a graph showing the proportion of overall income or wealth assumed by the bottom _x_% of the people, although this is not rigorously true for a finite population (see below). It is often used to represent income distribution, where it shows for the bottom _x_% of households, what percentage (_y_%) of the total income they have. The percentage of households is plotted on the _x_-axis, the percentage of income on the _y_-axis. It can also be used to show distribution of assets. In such use, many economists consider it to be a measure of social inequality.

The concept is useful in describing inequality among the size of individuals in ecology[1] and in studies of biodiversity, where the cumulative proportion of species is plotted against the cumulative proportion of individuals.[2] It is also useful in business modeling: e.g., in consumer finance, to measure the actual percentage _y_% of delinquencies attributable to the _x_% of people with worst risk scores.


Explanation

Points on the Lorenz curve represent statements such as, "the bottom 20% of all households have 10% of the total income."

A perfectly equal income distribution would be one in which every person has the same income. In this case, the bottom _N_% of society would always have _N_% of the income. This can be depicted by the straight line _y_ = _x_; called the "line of perfect equality."

By contrast, a perfectly unequal distribution would be one in which one person has all the income and everyone else has none. In that case, the curve would be at _y_ = 0% for all _x_ < 100%, and _y_ = 100% when _x_ = 100%. This curve is called the "line of perfect inequality."

The Gini coefficient is the ratio of the area between the line of perfect equality and the observed Lorenz curve to the area between the line of perfect equality and the line of perfect inequality. The higher the coefficient, the more unequal the distribution is. In the diagram on the right, this is given by the ratio _A_/(_A+B_), where _A_ and _B_ are the areas of regions as marked in the diagram.


Definition and calculation

The Lorenz curve can usually be represented by a function _L_(_F_), where _F_, the cumulative portion of the population, is represented by the horizontal axis, and _L_, the cumulative portion of the total wealth or income, is represented by the vertical axis.

For a population of size _n_, with a sequence of values _y__(_i_), _i_ = 1 to _n_, that are indexed in non-decreasing order ( _y__(_i_) ≤ _y__(_i_+1)), the Lorenz curve is the continuous piecewise linear function connecting the points ( _F__(_i_), _L__(_i_) ), _i_ = 0 to _n_, where _F_₀ = 0, _L_₀ = 0, and for _i_ = 1 to _n_:

_F__(_i_) = _i_/_n_ 

_S__(_i_) = _Σ__(_j_ = 1)^(_i_) _y__(_j_) 

_L__(_i_) = _S__(_i_)/_S__(_n_) 

For a discrete probability function _f_(_y_), let _y__(_i_), _i_ = 1 to _n_, be the points with non-zero probabilities indexed in increasing order ( _y__(_i_) < _y__(_i_+1)). The Lorenz curve is the continuous piecewise linear function connecting the points ( _F__(_i_), _L__(_i_) ), _i_ = 0 to _n_, where _F_₀ = 0, _L_₀ = 0, and for _i_ = 1 to _n_:

_F__(_i_) = _Σ__(_j_ = 1)^(_i_) _f_(_y__(_j_)) 

_S__(_i_) = _Σ__(_j_ = 1)^(_i_) _f_(_y__(_j_)) _y__(_j_) 

_L__(_i_) = _S__(_i_)/_S__(_n_) 

For a probability density function _f_(_x_) with the cumulative distribution function _F_(_x_), the Lorenz curve _L_ is given by:

$$L(F(x))=\frac{\int_{-\infty}^{x} t\,f(t)\,dt}{\int_{-\infty}^\infty t\,f(t)\,dt} =\frac{\int_{-\infty}^{x} t\,f(t)\,dt}{\mu}$$

where μ denotes the average. The Lorenz curve _L(F)_ may then be plotted as a function parametric in x: _L(x)_ vs. _F(x)_. In other contexts, the quantity computed here is known as the length biased (or size biased) distribution; it also has an important role in renewal theory.

Alternatively, for a cumulative distribution function _F_(_x_) with inverse _x_(_F_), the Lorenz curve _L_(_F_) is directly given by:

$$L(F)=\frac{\int_0^F x(F_1)\,dF_1}{\int_0^1 x(F_1)\,dF_1}$$

The inverse _x_(_F_) may not exist because the cumulative distribution function has intervals of constant values. However, the previous formula can still apply by generalizing the definition of _x_(_F_):

    _x_(_F_₁) = inf {_y_ : _F_(_y_) ≥ _F_₁}

For an example of a Lorenz curve, see Pareto distribution.


Properties

A Lorenz curve always starts at (0,0) and ends at (1,1).

The Lorenz curve is not defined if the mean of the probability distribution is zero or infinite.

The Lorenz curve for a probability distribution is a continuous function. However, Lorenz curves representing discontinuous functions can be constructed as the limit of Lorenz curves of probability distributions, the line of perfect inequality being an example.

The information in a Lorenz curve may be summarized by the Gini coefficient and the Lorenz asymmetry coefficient.[3]

The Lorenz curve cannot rise above the line of perfect equality.

If the variable being measured cannot take negative values, the Lorenz curve:

-   cannot sink below the line of perfect inequality,
-   is increasing.

Note however that a Lorenz curve for net worth would start out by going negative due to the fact that some people have a negative net worth because of debt.

The Lorenz curve is invariant under positive scaling. If _X_ is a random variable, for any positive number _c_ the random variable _c_ X has the same Lorenz curve as _X_.

The Lorenz curve is flipped twice, once about F = 0.5 and once about _L_ = 0.5, by negation. If _X'' IS A RANDOM VARIABLE WITH LORENZ CURVE _L__(X)(_F_), THEN −_X'' has the Lorenz curve:

    _L__(−\ X) = 1 − _L__(X)(1 − _F_)

The Lorenz curve is changed by translations so that the equality gap _F_ − _L_(_F_) changes in proportion to the ratio of the original and translated means. If _X_ is a random variable with a Lorenz curve _L__(X)(_F_) and mean _μ__(X), then for any constant _c_ ≠ −_μ__(X), _X_ + _c_ has a Lorenz curve defined by:

$$F - L_{X+c}(F) = \frac{\mu_X}{\mu_X + c} ( F - L_X(F))\,$$

For a cumulative distribution function _F_(_x_) with mean _μ_ and (generalized) inverse _x_(_F_), then for any _F_ with 0 < _F_ < 1 :

-   If the Lorenz curve is differentiable:

$$\frac{d L(F)}{d F} = \frac{x(F)}{\mu}$$

-   If the Lorenz curve is twice differentiable, then the probability density function _f_(_x_) exists at that point and:

$$\frac{d^2 L(F)}{d F^2} = \frac{1}{\mu\,f(x(F))}\,$$

-   If _L_(_F_) is continuously differentiable, then the tangent of _L_(_F_) is parallel to the line of perfect equality at the point _F_(_μ_). This is also the point at which the equality gap _F_ − _L_(_F_), the vertical distance between the Lorenz curve and the line of perfect equality, is greatest. The size of the gap is equal to half of the relative mean absolute deviation:

$$F(\mu) - L(F(\mu)) = \frac{\text{mean absolute deviation}}{2\,\mu}$$


See also

-   Distribution (economics)
-   Distribution of wealth
-   Welfare economics
-   Income inequality metrics
-   Gini coefficient
-   Hoover index (a.k.a. Robin Hood index)
-   ROC analysis
-   Social welfare (political science)
-   Economic inequality
-   Zipf's law
-   Pareto distribution
-   Mean deviation


References


Further reading

-   -   -   -


External links

-   WIID: World Income Inequality Database, a source of information on inequality, collected by WIDER (World Institute for Development Economics Research, part of United Nations University)
-   glcurve: Stata module to plot Lorenz curve (type "findit glcurve" or "ssc install glcurve" in Stata prompt to install)
-   Free add-on to STATA to compute inequality and poverty measures
-   Free Online Software (Calculator) computes the Gini Coefficient, plots the Lorenz curve, and computes many other measures of concentration for any dataset
-   Free Calculator: Online and downloadable scripts (Python and Lua) for Atkinson, Gini, and Hoover inequalities
-   Users of the R data analysis software can install the "ineq" package which allows for computation of a variety of inequality indices including Gini, Atkinson, Theil.
-   A MATLAB Inequality Package, including code for computing Gini, Atkinson, Theil indexes and for plotting the Lorenz Curve. Many examples are available.
-   A complete handout about the Lorenz curve including various applications, including an Excel spreadsheet graphing Lorenz curves and calculating Gini coefficients as well as coefficients of variation.
-   LORENZ 3.0 is a Mathematica notebook which draw sample Lorenz curves and calculates Gini coefficients and Lorenz asymmetry coefficients from data in an Excel sheet.

Category:Economics curves Category:Welfare economics Category:Statistical charts and diagrams Category:Income inequality metrics

[1]

[2]

[3]