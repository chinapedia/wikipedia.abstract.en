In probability and statistics, a RANDOM VARIABLE, RANDOM QUANTITY, ALEATORY VARIABLE, or STOCHASTIC VARIABLE is described informally as a variable whose values depend on outcomes of a random phenomenon.[1] The formal mathematical treatment of random variables is a topic in probability theory. In that context, a random variable is understood as a measurable function defined on a probability space whose outcomes are typically real numbers.[2] A random variable's possible values might represent the possible outcomes of a yet-to-be-performed experiment, or the possible outcomes of a past experiment whose already-existing value is uncertain (for example, because of imprecise measurements or quantum uncertainty). They may also conceptually represent either the results of an "objectively" random process (such as rolling a die) or the "subjective" randomness that results from incomplete knowledge of a quantity. The meaning of the probabilities assigned to the potential values of a random variable is not part of probability theory itself but is instead related to philosophical arguments over the interpretation of probability. The mathematics works the same regardless of the particular interpretation in use.

As a function, a random variable is required to be measurable, which allows for probabilities to be assigned to sets of its potential values. It is common that the outcomes depend on some physical variables that are not predictable. For example, when tossing a fair coin, the final outcome of heads or tails depends on the uncertain physical conditions. Which outcome will be observed is not certain. The coin could get caught in a crack in the floor, but such a possibility is excluded from consideration.

The domain of a random variable is a sample space, which is interpreted as the set of possible outcomes of a random phenomenon. For example, in the case of a coin toss, only two possible outcomes are considered, namely heads or tails.

A random variable has a probability distribution, which specifies the probability of its values. Random variables can be discrete, that is, taking any of a specified finite or countable list of values, endowed with a probability mass function characteristic of the random variable's probability distribution; or continuous, taking any numerical value in an interval or collection of intervals, via a probability density function that is characteristic of the random variable's probability distribution; or a mixture of both types.

Two random variables with the same probability distribution can still differ in terms of their associations with, or independence from, other random variables. The realizations of a random variable, that is, the results of randomly choosing values according to the variable's probability distribution function, are called random variates.


Definition

A RANDOM VARIABLE is a measurable function X: Ω → E from a set of possible outcomes Ω to a measurable space E. The technical axiomatic definition requires Ω to be a sample space of a probability triple (see the measure-theoretic definition).

The probability that X takes on a value in a measurable set S ⊆ E is written as

    P (X ∈ S) = P ({ω ∈ Ω ∣ X(ω) ∈ S}),

where P  is the probability measure on (Ω, ℱ).

Standard case

In many cases, X is real-valued, i.e. E = ℝ. In some contexts, the term random element (see extensions) is used to denote a random variable not of this form.

When the image (or range) of X is countable, the random variable is called a DISCRETE RANDOM VARIABLE[3] and its distribution can be described by a probability mass function that assigns a probability to each value in the image of X. If the image is uncountably infinite then X is called a CONTINUOUS RANDOM VARIABLE. In the special case that it is absolutely continuous, its distribution can be described by a probability density function, which assigns probabilities to intervals; in particular, each individual point must necessarily have probability zero for an absolutely continuous random variable. Not all continuous random variables are absolutely continuous,[4] for example a mixture distribution. Such random variables cannot be described by a probability density or a probability mass function.

Any random variable can be described by its cumulative distribution function, which describes the probability that the random variable will be less than or equal to a certain value.

Extensions

The term "random variable" in statistics is traditionally limited to the real-valued case (E = ℝ). In this case, the structure of the real numbers makes it possible to define quantities such as the expected value and variance of a random variable, its cumulative distribution function, and the moments of its distribution.

However, the definition above is valid for any measurable space E of values. Thus one can consider random elements of other sets E, such as random boolean values, categorical values, complex numbers, vectors, matrices, sequences, trees, sets, shapes, manifolds, and functions. One may then specifically refer to a _random variable of type E_, or an _E-valued random variable_.

This more general concept of a random element is particularly useful in disciplines such as graph theory, machine learning, natural language processing, and other fields in discrete mathematics and computer science, where one is often interested in modeling the random variation of non-numerical data structures. In some cases, it is nonetheless convenient to represent each element of E using one or more real numbers. In this case, a random element may optionally be represented as a vector of real-valued random variables (all defined on the same underlying probability space Ω, which allows the different random variables to covary). For example:

-   A random word may be represented as a random integer that serves as an index into the vocabulary of possible words. Alternatively, it can be represented as a random indicator vector whose length equals the size of the vocabulary, where the only values of positive probability are (1 0 0 0 ⋯), (0 1 0 0 ⋯), (0 0 1 0 ⋯) and the position of the 1 indicates the word.
-   A random sentence of given length N may be represented as a vector of N random words.
-   A random graph on N given vertices may be represented as a N × N matrix of random variables, whose values specify the adjacency matrix of the random graph.
-   A random function F may be represented as a collection of random variables F(x), giving the function's values at the various points x in the function's domain. The F(x) are ordinary real-valued random variables provided that the function is real-valued. For example, a stochastic process is a random function of time, a random vector is a random function of some index set such as 1, 2, …, n, and random field is a random function on any set (typically time, space, or a discrete set).


Distribution functions

If a random variable X: Ω → ℝ defined on the probability space (Ω, ℱ, P ) is given, we can ask questions like "How likely is it that the value of X is equal to 2?". This is the same as the probability of the event {ω : X(ω) = 2} ​ which is often written as P(X = 2) ​ or p_(X)(2) for short.

Recording all these probabilities of output ranges of a real-valued random variable X yields the probability distribution of X. The probability distribution "forgets" about the particular probability space used to define X and only records the probabilities of various values of X. Such a probability distribution can always be captured by its cumulative distribution function

_F__(_X_)(_x_) = P (_X_ ≤ _x_)

and sometimes also using a probability density function, p_(X). In measure-theoretic terms, we use the random variable X to "push-forward" the measure P on Ω to a measure p_(X) on ℝ. The underlying probability space Ω is a technical device used to guarantee the existence of random variables, sometimes to construct them, and to define notions such as correlation and dependence or independence based on a joint distribution of two or more random variables on the same probability space. In practice, one often disposes of the space Ω altogether and just puts a measure on ℝ that assigns measure 1 to the whole real line, i.e., one works with probability distributions instead of random variables. See the article on quantile functions for fuller development.


Examples

Discrete random variable

In an experiment a person may be chosen at random, and one random variable may be the person's height. Mathematically, the random variable is interpreted as a function which maps the person to the person's height. Associated with the random variable is a probability distribution that allows the computation of the probability that the height is in any subset of possible values, such as the probability that the height is between 180 and 190 cm, or the probability that the height is either less than 150 or more than 200 cm.

Another random variable may be the person's number of children; this is a discrete random variable with non-negative integer values. It allows the computation of probabilities for individual integer values – the probability mass function (PMF) – or for sets of values, including infinite sets. For example, the event of interest may be "an even number of children". For both finite and infinite event sets, their probabilities can be found by adding up the PMFs of the elements; that is, the probability of an even number of children is the infinite sum PMF (0) + PMF (2) + PMF (4) + ⋯.

In examples such as these, the sample space is often suppressed, since it is mathematically hard to describe, and the possible values of the random variables are then treated as a sample space. But when two random variables are measured on the same sample space of outcomes, such as the height and number of children being computed on the same random persons, it is easier to track their relationship if it is acknowledged that both height and number of children come from the same random person, for example so that questions of whether such random variables are correlated or not can be posed.

If {a_(n)}, {b_(n)} are countable sets of real numbers, b_(n) > 0 and ∑_(n)b_(n) = 1, then F = ∑_(n)b_(n)δ_(a_(n)) is a discrete distribution function. Here δ_(t)(x) = 0 for x < t, δ_(t)(x) = 1 for x ≥ t. Taking for instance an enumeration of all rational numbers as {a_(n)}, one gets a discrete distribution function that is not a step function or piecewise constant.[5]

Coin toss

The possible outcomes for one coin toss can be described by the sample space Ω = {heads, tails}. We can introduce a real-valued random variable Y that models a $1 payoff for a successful bet on heads as follows:

$$Y(\omega) =
\begin{cases}
1, & \text{if } \omega = \text{heads}, \\[6pt]
0, & \text{if } \omega = \text{tails}.
\end{cases}$$

If the coin is a fair coin, _Y_ has a probability mass function f_(Y) given by:

$$f_Y(y) =
\begin{cases}
\tfrac 12,& \text{if }y=1,\\[6pt]
\tfrac 12,& \text{if }y=0,
\end{cases}$$

Dice roll

plotted as the height of picture columns here.]]

A random variable can also be used to describe the process of rolling dice and the possible outcomes. The most obvious representation for the two-dice case is to take the set of pairs of numbers _n_₁ and _n_₂ from {1, 2, 3, 4, 5, 6} (representing the numbers on the two dice) as the sample space. The total number rolled (the sum of the numbers in each pair) is then a random variable _X_ given by the function that maps the pair to the sum:

_X_((_n_₁, _n_₂)) = _n_₁ + _n_₂

and (if the dice are fair) has a probability mass function _ƒ__(_X_) given by:

$$f_X(S) =  \frac{\min(S-1, 13-S)}{36}, \text{ for } S \in \{2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12\}$$

Continuous random variable

Formally, a continuous random variable is a random variable whose cumulative distribution function is continuous everywhere.[6] There are no "gaps", which would correspond to numbers which have a finite probability of occurring. Instead, continuous random variables almost never take an exact prescribed value _c_ (formally, ∀c ∈ ℝ: Pr (X = c) = 0) but there is a positive probability that its value will lie in particular intervals which can be arbitrarily small. Continuous random variables usually admit probability density functions (PDF), which characterize their CDF and probability measures; such distributions are also called absolutely continuous; but some continuous distributions are singular, or mixes of an absolutely continuous part and a singular part.

An example of a continuous random variable would be one based on a spinner that can choose a horizontal direction. Then the values taken by the random variable are directions. We could represent these directions by North, West, East, South, Southeast, etc. However, it is commonly more convenient to map the sample space to a random variable which takes values which are real numbers. This can be done, for example, by mapping a direction to a bearing in degrees clockwise from North. The random variable then takes values which are real numbers from the interval [0, 360), with all parts of the range being "equally likely". In this case, _X_ = the angle spun. Any real number has probability zero of being selected, but a positive probability can be assigned to any _range_ of values. For example, the probability of choosing a number in [0, 180] is . Instead of speaking of a probability mass function, we say that the probability _density_ of _X_ is 1/360. The probability of a subset of [0, 360) can be calculated by multiplying the measure of the set by 1/360. In general, the probability of a set for a given continuous random variable can be calculated by integrating the density over the given set.

Given any interval I = [a, b] = {x ∈ ℝ : a ≤ x ≤ b}[7], a random variable X_(I) ∼ U (I) = U [a, b] called a "continuous uniform random variable" (CURV) is defined to take any value in the interval with equal likelihood.[8] The probability of X_(I) falling in any subinterval $[c, d] \sube [a, b]$[9] is proportional to the length of the subinterval, specifically

$c \ge a\ \wedge \ d \le b \implies
 \Pr\left(X_I \in [c, d]\right)
 = \Pr\left(c \le X_I \le d \right)
 = \frac{d - c}{b - a}$

where the denominator comes from the unitarity axiom of probability. The probability density function of a CURV X ∼ U [a, b] is given by the indicator function of its interval of support normalized by the interval's length: $f_X(x) = \begin{cases}
 \displaystyle{1 \over b-a}, & a \le x \le b \\
  0, & \text{otherwise}.
\end{cases}$Of particular interest is the uniform distribution on the unit interval [0, 1]. Samples of any desired probability distribution D  can be generated by calculating the quantile function of D  on a randomly-generated number distributed uniformly on the unit interval. This exploits properties of cumulative distribution functions, which are a unifying framework for all random variables.

Mixed type

A MIXED RANDOM VARIABLE is a random variable whose cumulative distribution function is neither piecewise-constant (a discrete random variable) nor everywhere-continuous.[10] It can be realized as the sum of a discrete random variable and a continuous random variable; in which case the will be the weighted average of the CDFs of the component variables.[11]

An example of a random variable of mixed type would be based on an experiment where a coin is flipped and the spinner is spun only if the result of the coin toss is heads. If the result is tails, _X_ = −1; otherwise _X_ = the value of the spinner as in the preceding example. There is a probability of that this random variable will have the value −1. Other ranges of values would have half the probabilities of the last example.

Most generally, every probability distribution on the real line is a mixture of discrete part, singular part, and an absolutely continuous part; see . The discrete part is concentrated on a countable set, but this set may be dense (like the set of all rational numbers).


Measure-theoretic definition

The most formal, axiomatic definition of a random variable involves measure theory. Continuous random variables are defined in terms of sets of numbers, along with functions that map such sets to probabilities. Because of various difficulties (e.g. the Banach–Tarski paradox) that arise if such sets are insufficiently constrained, it is necessary to introduce what is termed a sigma-algebra to constrain the possible sets over which probabilities can be defined. Normally, a particular such sigma-algebra is used, the Borel σ-algebra, which allows for probabilities to be defined over any sets that can be derived either directly from continuous intervals of numbers or by a finite or countably infinite number of unions and/or intersections of such intervals.[12]

The measure-theoretic definition is as follows.

Let (Ω, ℱ, P) be a probability space and (E, ℰ) a measurable space. Then an (E, ℰ)-VALUED RANDOM VARIABLE is a measurable function X: Ω → E, which means that, for every subset B ∈ ℰ, its preimage X^( − 1)(B) ∈ ℱ where X^( − 1)(B) = {ω : X(ω) ∈ B}.[13] This definition enables us to measure any subset B ∈ ℰ in the target space by looking at its preimage, which by assumption is measurable.

In more intuitive terms, a member of Ω is a possible outcome, a member of ℱ is a measurable subset of possible outcomes, the function P gives the probability of each such measurable subset, E represents the set of values that the random variable can take (such as the set of real numbers), and a member of ℰ is a "well-behaved" (measurable) subset of E (those for which the probability may be determined). The random variable is then a function from any outcome to a quantity, such that the outcomes leading to any useful subset of quantities for the random variable have a well-defined probability.

When E is a topological space, then the most common choice for the σ-algebra ℰ is the Borel σ-algebra ℬ(E), which is the σ-algebra generated by the collection of all open sets in E. In such case the (E, ℰ)-valued random variable is called the E-VALUED RANDOM VARIABLE. Moreover, when space E is the real line ℝ, then such a real-valued random variable is called simply the RANDOM VARIABLE.

Real-valued random variables

In this case the observation space is the set of real numbers. Recall, (Ω, ℱ, P) is the probability space. For real observation space, the function X: Ω → ℝ is a real-valued random variable if

{_ω_ : _X_(_ω_) ≤ _r_} ∈ ℱ  ∀_r_ ∈ ℝ.

This definition is a special case of the above because the set $\{(-\infty, r]: r \in \R\}$ generates the Borel σ-algebra on the set of real numbers, and it suffices to check measurability on any generating set. Here we can prove measurability on this generating set by using the fact that {ω : X(ω) ≤ r} = X^( − 1)(( − ∞, r]).


Moments

The probability distribution of a random variable is often characterised by a small number of parameters, which also have a practical interpretation. For example, it is often enough to know what its "average value" is. This is captured by the mathematical concept of expected value of a random variable, denoted E [X], and also called the FIRST MOMENT. In general, E [f(X)] is not equal to f(E [X]). Once the "average value" is known, one could then ask how far from this average value the values of X typically are, a question that is answered by the variance and standard deviation of a random variable. E [X] can be viewed intuitively as an average obtained from an infinite population, the members of which are particular evaluations of X.

Mathematically, this is known as the (generalised) problem of moments: for a given class of random variables X, find a collection {f_(i)} of functions such that the expectation values E [f_(i)(X)] fully characterise the distribution of the random variable X.

Moments can only be defined for real-valued functions of random variables (or complex-valued, etc.). If the random variable is itself real-valued, then moments of the variable itself can be taken, which are equivalent to moments of the identity function f(X) = X of the random variable. However, even for non-real-valued random variables, moments can be taken of real-valued functions of those variables. For example, for a categorical random variable _X_ that can take on the nominal values "red", "blue" or "green", the real-valued function [X = green] can be constructed; this uses the Iverson bracket, and has the value 1 if X has the value "green", 0 otherwise. Then, the expected value and other moments of this function can be determined.


Functions of random variables

A new random variable _Y_ can be defined by applying a real Borel measurable function g: ℝ → ℝ to the outcomes of a real-valued random variable X. That is, Y = g(X). The cumulative distribution function of Y is then

_F__(_Y_)(_y_) = P (_g_(_X_) ≤ _y_).

If function g is invertible (i.e., h = g^( − 1) exists, where h is g's inverse function) and is either increasing or decreasing, then the previous relation can be extended to obtain

$$F_Y(y) = \operatorname{P}(g(X) \le y) =
\begin{cases}
\operatorname{P}(X \le h(y)) = F_X(h(y)),
 & \text{if } h = g^{-1} \text{ increasing} ,\\
\\
\operatorname{P}(X \ge h(y)) = 1 - F_X(h(y)),
 & \text{if } h = g^{-1} \text{ decreasing} .
\end{cases}$$

With the same hypotheses of invertibility of g, assuming also differentiability, the relation between the probability density functions can be found by differentiating both sides of the above expression with respect to y, in order to obtain[14]

$$f_Y(y) = f_X\bigl(h(y)\bigr) \left| \frac{d h(y)}{d y} \right|.$$

If there is no invertibility of g but each y admits at most a countable number of roots (i.e., a finite, or countably infinite, number of x_(i) such that y = g(x_(i))) then the previous relation between the probability density functions can be generalized with

$$f_Y(y) = \sum_{i} f_X(g_{i}^{-1}(y)) \left| \frac{d g_{i}^{-1}(y)}{d y} \right|$$

where x_(i) = g_(i)^( − 1)(y), according to the inverse function theorem. The formulas for densities do not demand g to be increasing.

In the measure-theoretic, axiomatic approach to probability, if a random variable X on Ω and a Borel measurable function g: ℝ → ℝ, then Y = g(X) is also a random variable on Ω, since the composition of measurable functions is also measurable. (However, this is not necessarily true if g is Lebesgue measurable.) The same procedure that allowed one to go from a probability space (Ω, P) to (ℝ, dF_(X)) can be used to obtain the distribution of Y.

Example 1

Let X be a real-valued, continuous random variable and let Y = X².

_F__(_Y_)(_y_) = P (_X_² ≤ _y_).

If y < 0, then P(X² ≤ y) = 0, so

$$F_Y(y) = 0\qquad\hbox{if}\quad y < 0.$$

If y ≥ 0, then

$$\operatorname{P}(X^2 \le y) = \operatorname{P}(|X| \le \sqrt{y})
 = \operatorname{P}(-\sqrt{y} \le  X \le \sqrt{y}),$$

so

$$F_Y(y) = F_X(\sqrt{y}) - F_X(-\sqrt{y})\qquad\hbox{if}\quad y \ge 0.$$

Example 2

Suppose X is a random variable with a cumulative distribution

$$F_{X}(x) = P(X \leq x) = \frac{1}{(1 + e^{-x})^{\theta}}$$

where θ > 0 is a fixed parameter. Consider the random variable Y = log(1 + e^( − X)). Then,

_F__(_Y_)(_y_) = _P_(_Y_ ≤ _y_) = _P_(_l__o__g_(1 + _e_^( − _X_)) ≤ _y_) = _P_(_X_ ≥  − _l__o__g_(_e_^(_y_) − 1)). 

The last expression can be calculated in terms of the cumulative distribution of X, so

$$\begin{align}
F_Y(y) & = 1 - F_X(-\log(e^y - 1)) \\[5pt]
& = 1 - \frac{1}{(1 + e^{\log(e^y - 1)})^\theta} \\[5pt]
& = 1 - \frac{1}{(1 + e^y - 1)^\theta} \\[5pt]
& = 1 - e^{-y \theta}.
\end{align}$$

which is the cumulative distribution function (CDF) of an exponential distribution.

Example 3

Suppose X is a random variable with a standard normal distribution, whose density is

$$f_X(x) = \frac{1}{\sqrt{2\pi}}e^{-x^2/2}.$$

Consider the random variable Y = X². We can find the density using the above formula for a change of variables:

$$f_Y(y) = \sum_{i} f_X(g_{i}^{-1}(y)) \left| \frac{d g_{i}^{-1}(y)}{d y} \right|.$$

In this case the change is not monotonic, because every value of Y has two corresponding values of X (one positive and negative). However, because of symmetry, both halves will transform identically, i.e.,

$$f_Y(y) = 2f_X(g^{-1}(y)) \left| \frac{d g^{-1}(y)}{d y} \right|.$$

The inverse transformation is

$$x = g^{-1}(y) = \sqrt{y}$$
and its derivative is

$$\frac{d g^{-1}(y)}{d y} = \frac{1}{2\sqrt{y}} .$$

Then,

$$f_Y(y) = 2\frac{1}{\sqrt{2\pi}}e^{-y/2} \frac{1}{2\sqrt{y}} = \frac{1}{\sqrt{2\pi y}}e^{-y/2}.$$

This is a chi-squared distribution with one degree of freedom.

Example 4

Suppose X is a random variable with a normal distribution, whose density is

$$f_X(x) = \frac{1}{\sqrt{2\pi\sigma^2}}e^{-(x-\mu)^2/(2\sigma^2)}.$$

Consider the random variable Y = X². We can find the density using the above formula for a change of variables:

$$f_Y(y) = \sum_{i} f_X(g_{i}^{-1}(y)) \left| \frac{d g_{i}^{-1}(y)}{d y} \right|.$$

In this case the change is not monotonic, because every value of Y has two corresponding values of X (one positive and negative). Differently from the previous example, in this case however, there is no symmetry and we have to compute the two distinct terms:

$$f_Y(y) = f_X(g_1^{-1}(y))\left|\frac{d g_1^{-1}(y)}{d y} \right| +f_X(g_2^{-1}(y))\left| \frac{d g_2^{-1}(y)}{d y} \right|.$$

The inverse transformation is

$$x = g_{1,2}^{-1}(y) = \pm \sqrt{y}$$
and its derivative is

$$\frac{d g_{1,2}^{-1}(y)}{d y} = \pm \frac{1}{2\sqrt{y}} .$$

Then,

$$f_Y(y) = \frac{1}{\sqrt{2\pi\sigma^2}} \frac{1}{2\sqrt{y}} (e^{-(\sqrt{y}-\mu)^2/(2\sigma^2)}+e^{-(-\sqrt{y}-\mu)^2/(2\sigma^2)})  .$$

This is a noncentral chi-squared distribution with one degree of freedom.


Equivalence of random variables

There are several different senses in which random variables can be considered to be equivalent. Two random variables can be equal, equal almost surely, or equal in distribution.

In increasing order of strength, the precise definition of these notions of equivalence is given below.

Equality in distribution

If the sample space is a subset of the real line, random variables _X_ and _Y_ are _equal in distribution_ (denoted $X \stackrel{d}{=} Y$) if they have the same distribution functions:

$$\operatorname{P}(X \le x) = \operatorname{P}(Y \le x)\quad\hbox{for all}\quad x.$$

To be equal in distribution, random variables need not be defined on the same probability space. Two random variables having equal moment generating functions have the same distribution. This provides, for example, a useful method of checking equality of certain functions of independent, identically distributed (IID) random variables. However, the moment generating function exists only for distributions that have a defined Laplace transform.

Almost sure equality

Two random variables _X_ and _Y_ are _equal almost surely_ (denoted $X \; \stackrel{\text{a.s.}}{=} \; Y$) if, and only if, the probability that they are different is zero:

P (_X_ ≠ _Y_) = 0.

For all practical purposes in probability theory, this notion of equivalence is as strong as actual equality. It is associated to the following distance:

_d__(∞)(_X_, _Y_) = ess sup_(_ω_)|_X_(_ω_) − _Y_(_ω_)|,

where "ess sup" represents the essential supremum in the sense of measure theory.

Equality

Finally, the two random variables _X_ and _Y_ are _equal_ if they are equal as functions on their measurable space:

$$X(\omega)=Y(\omega)\qquad\hbox{for all }\omega.$$

This notion is typically the least useful in probability theory because in practice and in theory, the underlying measure space of the experiment is rarely explicitly characterized or even characterizable.


Convergence

A significant theme in mathematical statistics consists of obtaining convergence results for certain sequences of random variables; for instance the law of large numbers and the central limit theorem.

There are various senses in which a sequence X_(n) of random variables can converge to a random variable X. These are explained in the article on convergence of random variables.


Notes


See also

-   Aleatoricism
-   Algebra of random variables
-   Event (probability theory)
-   Multivariate random variable
-   Observable variable
-   Probability distribution
-   Random element
-   Random function
-   Random measure
-   Random number generator produces a random value
-   Random vector
-   Randomness
-   Stochastic process
-   Relationships among probability distributions


References

Literature

-   -   -   -


External links

-   -   -

Category:Statistical randomness

[1]

[2]

[3]

[4]

[5]

[6]

[7] The interval can be closed (of the form I = [a,b]), open (I = (a,b)) or clopen (of the form I = (a,b] or I = [a,b)). The singleton sets {a} and {b} have measure zero and so are equivalent from the perspective of the Lebesgue measure μ and measures absolutely continuous with respect to it.

[8] Formally, given any subsets $S, T \sube I$ of equal Lebesgue measure, the probabilities that X is contained in S and T are equal: Pr (X∈S) = Pr (X∈T).

[9]

[10]

[11]

[12]

[13]

[14]