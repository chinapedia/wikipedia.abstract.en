]] ]]

In probability theory and statistics, the CUMULATIVE DISTRIBUTION FUNCTION (CDF) of a real-valued random variable X, or just DISTRIBUTION FUNCTION of X, evaluated at x, is the probability that X will take a value less than or equal to x.

In the case of a continuous distribution, it gives the area under the probability density function from minus infinity to x, and is a logistic distribution. Cumulative distribution functions are also used to specify the distribution of multivariate random variables.


Definition

The cumulative distribution function of a real-valued random variable X is the function given by[1]

where the right-hand side represents the probability that the random variable X takes on a value less than or equal to x. The probability that X lies in the semi-closed interval (a, b], where a < b, is therefore[2]

In the definition above, the "less than or equal to" sign, "≤", is a convention, not a universally used one (e.g. Hungarian literature uses "<"), but is important for discrete distributions. The proper use of tables of the binomial and Poisson distributions depends upon this convention. Moreover, important formulas like Paul Lévy's inversion formula for the characteristic function also rely on the "less than or equal" formulation.

If treating several random variables X, Y, … etc. the corresponding letters are used as subscripts while, if treating only one, the subscript is usually omitted. It is conventional to use a capital F for a cumulative distribution function, in contrast to the lower-case f used for probability density functions and probability mass functions. This applies when discussing general distributions: some specific distributions have their own conventional notation, for example the normal distribution.

The CDF of a continuous random variable X can be expressed as the integral of its probability density function f_(X) as follows:[3]

_F__(_X_)(_x_) = ∫_( − ∞)^(_x_)_f__(_X_)(_t_) _d__t_.

In the case of a random variable X which has distribution having a discrete component at a value b,

P (_X_ = _b_) = _F__(_X_)(_b_) − lim_(_x_ → _b_^(−))_F__(_X_)(_x_).

If F_(X) is continuous at b, this equals zero and there is no discrete component at b.


Properties

Every cumulative distribution function F_(X) is non-decreasing[4] and right-continuous[5], which makes it a càdlàg function. Furthermore,

lim_(_x_ →  − ∞)_F__(_X_)(_x_) = 0, lim_(_x_ →  + ∞)_F__(_X_)(_x_) = 1.

Every function with these four properties is a CDF, i.e., for every such function, a random variable can be defined such that the function is the cumulative distribution function of that random variable.

If X is a purely discrete random variable, then it attains values x₁, x₂, … with probability p_(i) = P (x_(i)), and the CDF of X will be discontinuous at the points x_(i):

_F__(_X_)(_x_) = P (_X_ ≤ _x_) = ∑_(_x__(_i_) ≤ _x_)P (_X_ = _x__(_i_)) = ∑_(_x__(_i_) ≤ _x_)_p_(_x__(_i_)).

If the CDF F_(X) of a real valued random variable X is continuous, then X is a continuous random variable; if furthermore F_(X) is absolutely continuous, then there exists a Lebesgue-integrable function f_(X)(x) such that

_F__(_X_)(_b_) − _F__(_X_)(_a_) = P (_a_ < _X_ ≤ _b_) = ∫_(_a_)^(_b_)_f__(_X_)(_x_) _d__x_

for all real numbers a and b. The function f_(X) is equal to the derivative of F_(X) almost everywhere, and it is called the probability density function of the distribution of X.


Examples

As an example, suppose X is uniformly distributed on the unit interval [0, 1]. Then the CDF of X is given by

$$F_X(x) = \begin{cases}
0 &:\ x < 0\\
x &:\ 0 \le x \le 1\\
1 &:\ x > 1
\end{cases}$$

Suppose instead that X takes only the discrete values 0 and 1, with equal probability. Then the CDF of X is given by

$$F_X(x) = \begin{cases}
0 &:\ x < 0\\
1/2 &:\ 0 \le x < 1\\
1 &:\ x \ge 1
\end{cases}$$


Derived functions

Complementary cumulative distribution function (tail distribution)

Sometimes, it is useful to study the opposite question and ask how often the random variable is _above_ a particular level. This is called the COMPLEMENTARY CUMULATIVE DISTRIBUTION FUNCTION (CCDF) or simply the TAIL DISTRIBUTION or EXCEEDANCE, and is defined as

_F̄__(_X_)(_x_) = P (_X_ > _x_) = 1 − _F__(_X_)(_x_).

This has applications in statistical hypothesis testing, for example, because the one-sided p-value is the probability of observing a test statistic _at least_ as extreme as the one observed. Thus, provided that the test statistic, _T_, has a continuous distribution, the one-sided p-value is simply given by the ccdf: for an observed value t of the test statistic

_p_ = P (_T_ ≥ _t_) = P (_T_ > _t_) = 1 − _F__(_T_)(_t_).

In survival analysis, F̄_(X)(x) is called the SURVIVAL FUNCTION and denoted S(x), while the term _reliability function_ is common in engineering.

Properties

-   For a non-negative continuous random variable having an expectation, Markov's inequality states that[6]



        $\bar F_X(x) \leq \frac{\operatorname{E}(X)}{x} .$

-   As $x \to \infty, \bar F_X(x) \to 0 \$, and in fact F̄_(X)(x) = o(1/x) provided that E (X) is finite.

    Proof: Assuming X has a density function f_(X), for any c > 0
    :

\operatorname{E}(X) = \int_0^\infty x f_X(x) \, dx \geq \int_0^c x f_X(x) \, dx + c\int_c^\infty f_X(x) \, dx

    Then, on recognizing F̄_(X)(c) = ∫_(c)^(∞)f_(X)(x) dx and rearranging terms,
    :

0 \leq c\bar F_X(c) \leq \operatorname{E}(X) - \int_0^c x f_X(x) \, dx \to 0 \text{ as } c \to \infty

    as claimed.

Folded cumulative distribution

function with an expected value of 0 and a standard deviation of 1.]] While the plot of a cumulative distribution often has an S-like shape, an alternative illustration is the FOLDED CUMULATIVE DISTRIBUTION or MOUNTAIN PLOT, which folds the top half of the graph over,[7][8] thus using two scales, one for the upslope and another for the downslope. This form of illustration emphasises the median and dispersion (specifically, the mean absolute deviation from the median[9]) of the distribution or of the empirical results.

Inverse distribution function (quantile function)

If the CDF _F_ is strictly increasing and continuous then F^( − 1)(p), p ∈ [0, 1], is the unique real number x such that F(x) = p. In such a case, this defines the INVERSE DISTRIBUTION FUNCTION or quantile function.

Some distributions do not have a unique inverse (for example in the case where f_(X)(x) = 0 for all a < x < b, causing F_(X) to be constant). This problem can be solved by defining, for p ∈ [0, 1], the GENERALIZED INVERSE DISTRIBUTION FUNCTION:

_F_^( − 1)(_p_) = inf {_x_ ∈ ℝ : _F_(_x_) ≥ _p_}.

-   Example 1: The median is F^( − 1)(0.5).
-   Example 2: Put τ = F^( − 1)(0.95). Then we call τ the 95th percentile.

Some useful properties of the inverse cdf (which are also preserved in the definition of the generalized inverse distribution function) are:

1.  F^( − 1) is nondecreasing
2.  F^( − 1)(F(x)) ≤ x
3.  F(F^( − 1)(p)) ≥ p
4.  F^( − 1)(p) ≤ x if and only if p ≤ F(x)
5.  If Y has a U[0, 1] distribution then F^( − 1)(Y) is distributed as F. This is used in random number generation using the inverse transform sampling-method.
6.  If {X_(α)} is a collection of independent F-distributed random variables defined on the same sample space, then there exist random variables Y_(α) such that Y_(α) is distributed as U[0, 1] and F^( − 1)(Y_(α)) = X_(α) with probability 1 for all α.

The inverse of the cdf can be used to translate results obtained for the uniform distribution to other distributions.


Multivariate case

Definition for two random variables

When dealing simultaneously with more than one random variable the JOINT CUMULATIVE DISTRIBUTION FUNCTION can also be defined. For example, for a pair of random variables X, Y, the joint CDF F_(XY) is given by[10]

where the right-hand side represents the probability that the random variable X takes on a value less than or equal to x AND that Y takes on a value less than or equal to y.

Definition for more than two random variables

For N random variables X₁, …, X_(N), the joint CDF F_(X₁, …, X_(N)) is given by

Interpreting the N random variables as a random vector X = (X₁, …, X_(N))^(T) yields a shorter notation:

_F__(X)(X) = P (_X_₁ ≤ _x_₁, …, _X__(_N_) ≤ _x__(_n_))

Properties

Every multivariate CDF is:

1.  Monotonically non-decreasing for each of its variables,
2.  Right-continuous in each of its variables,
3.  0 ≤ F_(X₁…X_(n))(x₁, …, x_(n)) ≤ 1,
4.  lim_(x₁, …, x_(n) →  + ∞)F_(X₁…X_(n))(x₁, …, x_(n)) = 1 and lim_(x_(i) →  − ∞)F_(X₁…X_(n))(x₁, …, x_(n)) = 0, for all i.


Complex case

Complex random variable

The generalization of the cumulative distribution function from real to complex random variables is not obvious because expressions of the form P(Z ≤ 1 + 2i) make no sense. However expressions of the form P(ℜ(Z) ≤ 1, ℑ(Z) ≤ 3) make sense. Therefore, we define the cumulative distribution of a complex random variables via the joint distribution of their real and imaginary parts:

_F__(_Z_)(_z_) = _F__(ℜ(_Z_), ℑ(_Z_))(ℜ(_z_), ℑ(_z_)) = _P_(ℜ(_Z_) ≤ ℜ(_z_), ℑ(_Z_) ≤ ℑ(_z_))
.

Complex random vector

Generalization of yields

_F__(Z)(Z) = _F__(ℜ(_Z_₁), ℑ(_Z_₁), …, ℜ(_Z__(_n_)), ℑ(_Z__(_n_)))(ℜ(_z_₁), ℑ(_z_₁), …, ℜ(_z__(_n_)), ℑ(_z__(_n_))) = P (ℜ(_Z_₁) ≤ ℜ(_z_₁), ℑ(_Z_₁) ≤ ℑ(_z_₁), …, ℜ(_Z__(_n_)) ≤ ℜ(_z__(_n_)), ℑ(_Z__(_n_)) ≤ ℑ(_z__(_n_)))
as definition for the CDS of a complex random vector Z = (Z₁, …, Z_(N))^(T).


Use in statistical analysis

The concept of the cumulative distribution function makes an explicit appearance in statistical analysis in two (similar) ways. Cumulative frequency analysis is the analysis of the frequency of occurrence of values of a phenomenon less than a reference value. The empirical distribution function is a formal direct estimate of the cumulative distribution function for which simple statistical properties can be derived and which can form the basis of various statistical hypothesis tests. Such tests can assess whether there is evidence against a sample of data having arisen from a given distribution, or evidence against two samples of data having arisen from the same (unknown) population distribution.

Kolmogorov–Smirnov and Kuiper's tests

The Kolmogorov–Smirnov test is based on cumulative distribution functions and can be used to test to see whether two empirical distributions are different or whether an empirical distribution is different from an ideal distribution. The closely related Kuiper's test is useful if the domain of the distribution is cyclic as in day of the week. For instance Kuiper's test might be used to see if the number of tornadoes varies during the year or if sales of a product vary by day of the week or day of the month.


See also

-   Descriptive statistics
-   Distribution fitting
-   Ogive (statistics)


References


External links

-

Category:Functions related to probability distributions Category:Cryptobranchidae Category:Cuando River

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] <

[10]