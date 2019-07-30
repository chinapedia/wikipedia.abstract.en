Distribution}}

In probability theory and statistics, a PROBABILITY DISTRIBUTION is a mathematical function that provides the probabilities of occurrence of different possible outcomes in an experiment. In more technical terms, the probability distribution is a description of a random phenomenon in terms of the probabilities of events. For instance, if the random variable is used to denote the outcome of a coin toss ("the experiment"), then the probability distribution of would take the value 0.5 for heads}}, and 0.5 for tails}} (assuming the coin is fair). Examples of random phenomena can include the results of an experiment or survey.

A probability distribution is specified in terms of an underlying sample space, which is the set of all possible outcomes of the random phenomenon being observed. The sample space may be the set of real numbers or a set of vectors, or it may be a list of non-numerical values; for example, the sample space of a coin flip would be .

Probability distributions are generally divided into two classes. A DISCRETE PROBABILITY DISTRIBUTION (applicable to the scenarios where the set of possible outcomes is discrete, such as a coin toss or a roll of dice) can be encoded by a discrete list of the probabilities of the outcomes, known as a probability mass function. On the other hand, a CONTINUOUS PROBABILITY DISTRIBUTION (applicable to the scenarios where the set of possible outcomes can take on values in a continuous range (e.g. real numbers), such as the temperature on a given day) is typically described by probability density functions (with the probability of any individual outcome actually being 0). The normal distribution is a commonly encountered continuous probability distribution. More complex experiments, such as those involving stochastic processes defined in continuous time, may demand the use of more general probability measures.

A probability distribution whose sample space is one-dimensional (for example real numbers, list of labels, ordered labels or binary) is called univariate, while a distribution whose sample space is a vector space of dimension 2 or more is called multivariate. A univariate distribution gives the probabilities of a single random variable taking on various alternative values; a multivariate distribution (a joint probability distribution) gives the probabilities of a random vector – a list of two or more random variables – taking on various combinations of values. Important and commonly encountered univariate probability distributions include the binomial distribution, the hypergeometric distribution, and the normal distribution. The multivariate normal distribution is a commonly encountered multivariate distribution.


Introduction

(pmf) _p_(_S_) specifies the probability distribution for the sum _S_ of counts from two dice. For example, the figure shows that _p_(11) = 2/36 = 1/18. The pmf allows the computation of probabilities of events such as _P_(_S_ > 9) = 1/12 + 1/18 + 1/36 = 1/6, and all other probabilities in the distribution.]]

To define probability distributions for the simplest cases, it is necessary to distinguish between DISCRETE and CONTINUOUS random variables. In the discrete case, it is sufficient to specify a probability mass function p assigning a probability to each possible outcome: for example, when throwing a fair dice, each of the six values 1 to 6 has the probability 1/6. The probability of an event is then defined to be the sum of the probabilities of the outcomes that satisfy the event; for example, the probability of the event "the dice rolls an even value" is

_p_(2) + _p_(4) + _p_(6) = 1/6 + 1/6 + 1/6 = 1/2.

In contrast, when a random variable takes values from a continuum then typically, any individual outcome has probability zero and only events that include infinitely many outcomes, such as intervals, can have positive probability. For example, the probability that a given object weighs _exactly_ 500 g is zero, because the probability of measuring exactly 500 g tends to zero as the accuracy of our measuring instruments increases. Nevertheless, in quality control one might demand that the probability of a "500 g" package containing between 490 g and 510 g should be no less than 98%, and this demand is less sensitive to the accuracy of measurement instruments.

Continuous probability distributions can be described in several ways. The probability density function describes the infinitesimal probability of any given value, and the probability that the outcome lies in a given interval can be computed by integrating the probability density function over that interval. On the other hand, the cumulative distribution function describes the probability that the random variable is no larger than a given value; the probability that the outcome lies in a given interval can be computed by taking the difference between the values of the cumulative distribution function at the endpoints of the interval. The cumulative distribution function is the antiderivative of the probability density function provided that the latter function exists.

(pdf) of the normal distribution, also called Gaussian or "bell curve", the most important continuous random distribution. As notated on the figure, the probabilities of intervals of values correspond to the area under the curve.]]


Terminology

As probability theory is used in quite diverse applications, terminology is not uniform and sometimes confusing. The following terms are used for non-cumulative probability distribution functions:

-   FREQUENCY DISTRIBUTION: A frequency distribution is a table that displays the frequency of various outcomes IN A SAMPLE.
-   RELATIVE FREQUENCY DISTRIBUTION: A frequency distribution where each value has been divided (normalized) by a number of outcomes in a sample i.e. sample size.
-   PROBABILITY DISTRIBUTION: Sometimes used as an alias for _Relative frequency distribution_ but most books use it as a limit to which _Relative frequency distribution_ tends when sample size tends to population size. It's a general term to indicate the way the total probability of 1 is distributed over ALL various possible outcomes (i.e. over entire population). It may for instance refer to a table that displays the probabilities of various outcomes in a finite population or to the probability density of an uncountably infinite population.
-   CUMULATIVE DISTRIBUTION FUNCTION: is a general functional form to describe a probability distribution.
-   PROBABILITY DISTRIBUTION FUNCTION: somewhat ambiguous term sometimes referring to a functional form of probability distribution table. Could be called a "normalized frequency distribution function", where area under the graph equals to 1.
-   PROBABILITY MASS, Probability mass function, P.M.F., DISCRETE PROBABILITY DISTRIBUTION FUNCTION: for discrete random variables.
-   Categorical distribution: for discrete random variables with a finite set of values.
-   PROBABILITY DENSITY, Probability density function, P.D.F., CONTINUOUS PROBABILITY DISTRIBUTION FUNCTION: most often reserved for continuous random variables.

The following terms are somewhat ambiguous as they can refer to non-cumulative or cumulative distributions, depending on authors' preferences:

-   PROBABILITY DISTRIBUTION FUNCTION: continuous or discrete, non-cumulative or cumulative.
-   PROBABILITY FUNCTION: even more ambiguous, can mean any of the above or other things.

Basic terms

-   Mode: for a discrete random variable, the value with highest probability (the location at which the probability mass function has its peak); for a continuous random variable, a location at which the probability density function has a local peak.
-   Support: the smallest closed set whose complement has probability zero.
-   Head: the range of values where the pmf or pdf is relatively high.
-   Tail: the complement of the head within the support; the large set of values where the pmf or pdf is relatively low.
-   Expected value or MEAN: the weighted average of the possible values, using their probabilities as their weights; or the continuous analog thereof.
-   Median: the value such that the set of values less than the median, and the set greater than the median, each have probabilities no greater than one-half.
-   Variance: the second moment of the pmf or pdf about the mean; an important measure of the dispersion of the distribution.
-   Standard deviation: the square root of the variance, and hence another measure of dispersion.
-   Symmetry: a property of some distributions in which the portion of the distribution to the left of a specific value is a mirror image of the portion to its right.
-   Skewness: a measure of the extent to which a pmf or pdf "leans" to one side of its mean. The third standardized moment of the distribution.
-   Kurtosis: a measure of the "fatness" of the tails of a pmf or pdf. The fourth standardized moment of the distribution.


Cumulative distribution function

Because a probability distribution _P_ on the real line is determined by the probability of a scalar random variable _X_ being in a half-open interval (−∞, _x_], the probability distribution is completely characterized by its cumulative distribution function:

    F(x) = P [X ≤ x]   for all x ∈ ℝ.


Discrete probability distribution

s {1}, {3}, and {7} are respectively 0.2, 0.5, 0.3. A set not containing any of these points has probability zero.]] of a discrete probability distribution, ...]]

A DISCRETE PROBABILITY DISTRIBUTION is a probability distribution characterized by a probability mass function. Thus, the distribution of a random variable _X_ is discrete, and _X_ is called a DISCRETE RANDOM VARIABLE, if

∑_(_u_)P (_X_ = _u_) = 1

as _u_ runs through the set of all possible values of _X_. A discrete random variable can assume only a finite or countably infinite number of values.[1] For the number of potential values to be countably infinite, even though their probabilities sum to 1, the probabilities have to decline to zero fast enough. For example, if $\operatorname{P}(X=n) = \tfrac{1}{2^n}$ for _n_ = 1, 2, ..., the sum of probabilities would be 1/2 + 1/4 + 1/8 + ... = 1.

Well-known discrete probability distributions used in statistical modeling include the Poisson distribution, the Bernoulli distribution, the binomial distribution, the geometric distribution, and the negative binomial distribution. Additionally, the discrete uniform distribution is commonly used in computer programs that make equal-probability random selections between a number of choices.

When a sample (a set of observations) is drawn from a larger population, the sample points have an empirical distribution that is discrete and that provides information about the population distribution.

Measure theoretic formulation

A measurable function X: A → B between a probability space (A, 𝒜, P) and a measurable space (B, ℬ) is called a DISCRETE RANDOM VARIABLE provided that its image is a countable set. In this case measurability of X means that the pre-images of singleton sets are measurable, i.e., X^( − 1)({b}) ∈ 𝒜 for all b ∈ B. The latter requirement induces a probability mass function f_(X): X(A) → ℝ via f_(X)(b) := P(X^( − 1)({b})). Since the pre-images of disjoint sets are disjoint,

∑_(_b_ ∈ _X_(_A_))_f__(_X_)(_b_) = ∑_(_b_ ∈ _X_(_A_))_P_(_X_^( − 1)({_b_})) = _P_(⋃_(_b_ ∈ _X_(_A_))_X_^( − 1)({_b_})) = _P_(_A_) = 1.
This recovers the definition given above.

Cumulative distribution function

Equivalently to the above, a discrete random variable can be defined as a random variable whose cumulative distribution function (cdf) increases only by jump discontinuities—that is, its cdf increases only where it "jumps" to a higher value, and is constant between those jumps. The points where jumps occur are precisely the values which the random variable may take.

Delta-function representation

Consequently, a discrete probability distribution is often represented as a generalized probability density function involving Dirac delta functions, which substantially unifies the treatment of continuous and discrete distributions. This is especially useful when dealing with probability distributions involving both a continuous and a discrete part.

Indicator-function representation

For a discrete random variable _X_, let _u_₀, _u_₁, ... be the values it can take with non-zero probability. Denote

_Ω__(_i_) = _X_^( − 1)(_u__(_i_)) = {_ω_ : _X_(_ω_) = _u__(_i_)}, _i_ = 0, 1, 2, …

These are disjoint sets, and for such sets

_P_(⋃_(_i_)_Ω__(_i_)) = ∑_(_i_)_P_(_Ω__(_i_)) = ∑_(_i_)_P_(_X_ = _u__(_i_)) = 1.

It follows that the probability that _X_ takes any value except for _u_₀, _u_₁, ... is zero, and thus one can write _X_ as

_X_(_ω_) = ∑_(_i_)_u__(_i_)1_(_Ω__(_i_))(_ω_)

except on a set of probability zero, where 1_(A) is the indicator function of _A_. This may serve as an alternative definition of discrete random variables.


Continuous probability distribution

A CONTINUOUS PROBABILITY DISTRIBUTION is a probability distribution that has a cumulative distribution function that is continuous. Most often they are generated by having a probability density function. Mathematicians call distributions with probability density functions ABSOLUTELY CONTINUOUS, since their cumulative distribution function is absolutely continuous with respect to the Lebesgue measure _λ_. If the distribution of _X_ is continuous, then _X_ is called a CONTINUOUS RANDOM VARIABLE. There are many examples of continuous probability distributions: normal, uniform, chi-squared, and others.

Formally, if _X_ is a continuous random variable, then it has a probability density function _ƒ_(_x_), and therefore its probability of falling into a given interval, say is given by the integral



   \operatorname{P}[a\le X\le b] = \int_a^b f(x) \, dx
 

In particular, the probability for _X_ to take any single value _a_ (that is ) is zero, because an integral with coinciding upper and lower limits is always equal to zero.

The definition states that a continuous probability distribution must possess a density, or equivalently, its cumulative distribution function be absolutely continuous. This requirement is stronger than simple continuity of the cumulative distribution function, and there is a special class of distributions, singular distributions, which are neither continuous nor discrete nor a mixture of those. An example is given by the Cantor distribution. Such singular distributions however are never encountered in practice.

Note on terminology: some authors use the term "continuous distribution" to denote the distribution with continuous cumulative distribution function. Thus, their definition includes both the (absolutely) continuous and singular distributions.

By one convention, a probability distribution  μ is called _continuous_ if its cumulative distribution function F(x) = μ( − ∞, x] is continuous and, therefore, the probability measure of singletons μ{x} = 0 for all  x.

Another convention reserves the term _continuous probability distribution_ for absolutely continuous distributions. These distributions can be characterized by a probability density function: a non-negative Lebesgue integrable function  f defined on the real numbers such that

_F_(_x_) = _μ_( − ∞, _x_] = ∫_( − ∞)^(_x_)_f_(_t_) _d__t_.

Discrete distributions and some continuous distributions (like the Cantor distribution) do not admit such a density.


Some properties

-   The probability distribution of the sum of two independent random variables is the CONVOLUTION of each of their distributions.
-   Probability distributions are not a vector space—they are not closed under linear combinations, as these do not preserve non-negativity or total integral 1—but they are closed under convex combination, thus forming a convex subset of the space of functions (or measures).


Kolmogorov definition

In the measure-theoretic formalization of probability theory, a random variable is defined as a measurable function _X_ from a probability space $\scriptstyle (\Omega, \mathcal{F}, \operatorname{P})$ to a measurable space $\scriptstyle (\mathcal{X},\mathcal{A})$. A PROBABILITY DISTRIBUTION OF _X_ is the pushforward measure _X__(*)P  of _X_ , which is a probability measure on $\scriptstyle (\mathcal{X},\mathcal{A})$ satisfying _X__(*)P = P_X_^(−1).[2]


Random number generation

A frequent problem in statistical simulations (the Monte Carlo method) is the generation of pseudo-random numbers that are distributed in a given way. Most algorithms are based on a pseudorandom number generator that produces numbers _X_ that are uniformly distributed in the half-open interval [0,1). These random variates _X_ are then transformed via some algorithm to create a new random variate having the required probability distribution.


Applications

The concept of the probability distribution and the random variables which they describe underlies the mathematical discipline of probability theory, and the science of statistics. There is spread or variability in almost any value that can be measured in a population (e.g. height of people, durability of a metal, sales growth, traffic flow, etc.); almost all measurements are made with some intrinsic error; in physics many processes are described probabilistically, from the kinetic properties of gases to the quantum mechanical description of fundamental particles. For these and many other reasons, simple numbers are often inadequate for describing a quantity, while probability distributions are often more appropriate.

Several more specific example of an application:

-   The cache language models and other statistical language models used in natural language processing to assign probabilities to the occurrence of particular words and word sequences do so by means of probability distributions.
-   Probabilistic load flow in power-flow study explains the uncertainties of input variables as probability distribution and provide the power flow calculation also in term of probability distribution.[3]


Common probability distributions

The following is a list of some of the most common probability distributions, grouped by the type of process that they are related to. For a more complete list, see list of probability distributions, which groups by the nature of the outcome being considered (discrete, continuous, multivariate, etc.)

Note also that all of the univariate distributions below are singly peaked; that is, it is assumed that the values cluster around a single point. In practice, actually observed quantities may cluster around multiple values. Such quantities can be modeled using a mixture distribution.

Related to real-valued quantities that grow linearly (e.g. errors, offsets)

-   Normal distribution (Gaussian distribution), for a single such quantity; the most commonly used continuous distribution

Related to positive real-valued quantities that grow exponentially (e.g. prices, incomes, populations)

-   Log-normal distribution, for a single such quantity whose log is normally distributed
-   Pareto distribution, for a single such quantity whose log is exponentially distributed; the prototypical power law distribution

Related to real-valued quantities that are assumed to be uniformly distributed over a (possibly unknown) region

-   Discrete uniform distribution, for a finite set of values (e.g. the outcome of a fair die)
-   Continuous uniform distribution, for continuously distributed values

Related to Bernoulli trials (yes/no events, with a given probability)

-   Basic distributions:
    -   Bernoulli distribution, for the outcome of a single Bernoulli trial (e.g. success/failure, yes/no)
    -   Binomial distribution, for the number of "positive occurrences" (e.g. successes, yes votes, etc.) given a fixed total number of independent occurrences
    -   Negative binomial distribution, for binomial-type observations but where the quantity of interest is the number of failures before a given number of successes occurs
    -   Geometric distribution, for binomial-type observations but where the quantity of interest is the number of failures before the first success; a special case of the negative binomial distribution
-   Related to sampling schemes over a finite population:
    -   Hypergeometric distribution, for the number of "positive occurrences" (e.g. successes, yes votes, etc.) given a fixed number of total occurrences, using sampling without replacement
    -   Beta-binomial distribution, for the number of "positive occurrences" (e.g. successes, yes votes, etc.) given a fixed number of total occurrences, sampling using a Pólya urn scheme (in some sense, the "opposite" of sampling without replacement)

Related to categorical outcomes (events with _K_ possible outcomes, with a given probability for each outcome)

-   Categorical distribution, for a single categorical outcome (e.g. yes/no/maybe in a survey); a generalization of the Bernoulli distribution
-   Multinomial distribution, for the number of each type of categorical outcome, given a fixed number of total outcomes; a generalization of the binomial distribution
-   Multivariate hypergeometric distribution, similar to the multinomial distribution, but using sampling without replacement; a generalization of the hypergeometric distribution

Related to events in a Poisson process (events that occur independently with a given rate)

-   Poisson distribution, for the number of occurrences of a Poisson-type event in a given period of time
-   Exponential distribution, for the time before the next Poisson-type event occurs
-   Gamma distribution, for the time before the next k Poisson-type events occur

Related to the absolute values of vectors with normally distributed components

-   Rayleigh distribution, for the distribution of vector magnitudes with Gaussian distributed orthogonal components. Rayleigh distributions are found in RF signals with Gaussian real and imaginary components.
-   Rice distribution, a generalization of the Rayleigh distributions for where there is a stationary background signal component. Found in Rician fading of radio signals due to multipath propagation and in MR images with noise corruption on non-zero NMR signals.

Related to normally distributed quantities operated with sum of squares (for hypothesis testing)

-   Chi-squared distribution, the distribution of a sum of squared standard normal variables; useful e.g. for inference regarding the sample variance of normally distributed samples (see chi-squared test)
-   Student's t distribution, the distribution of the ratio of a standard normal variable and the square root of a scaled chi squared variable; useful for inference regarding the mean of normally distributed samples with unknown variance (see Student's t-test)
-   F-distribution, the distribution of the ratio of two scaled chi squared variables; useful e.g. for inferences that involve comparing variances or involving R-squared (the squared correlation coefficient)

Useful as conjugate prior distributions in Bayesian inference

-   Beta distribution, for a single probability (real number between 0 and 1); conjugate to the Bernoulli distribution and binomial distribution
-   Gamma distribution, for a non-negative scaling parameter; conjugate to the rate parameter of a Poisson distribution or exponential distribution, the precision (inverse variance) of a normal distribution, etc.
-   Dirichlet distribution, for a vector of probabilities that must sum to 1; conjugate to the categorical distribution and multinomial distribution; generalization of the beta distribution
-   Wishart distribution, for a symmetric non-negative definite matrix; conjugate to the inverse of the covariance matrix of a multivariate normal distribution; generalization of the gamma distribution


See also

-   List of probability distributions
-   Copula (statistics)
-   Empirical probability
-   Histogram
-   Joint probability distribution
-   Likelihood function
-   List of statistical topics
-   Kirkwood approximation
-   Moment-generating function
-   Quasiprobability distribution
-   Riemann–Stieltjes integral application to probability theory


References

Citations

Sources

-   B. S. Everitt: _The Cambridge Dictionary of Statistics_, Cambridge University Press, Cambridge (3rd edition, 2006).
-   Bishop: _Pattern Recognition and Machine Learning_, Springer, .
-


External links

-   -   Field Guide to Continuous Probability Distributions, Gavin E. Crooks.

it:Variabile casuale#Distribuzione di probabilità

Probability_distributions Category:Mathematical and quantitative methods (economics)

[1]

[2]

[3]