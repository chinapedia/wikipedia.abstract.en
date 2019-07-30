PROBABILITY THEORY is the branch of mathematics concerned with probability. Although there are several different probability interpretations, probability theory treats the concept in a rigorous mathematical manner by expressing it through a set of axioms. Typically these axioms formalise probability in terms of a probability space, which assigns a measure taking values between 0 and 1, termed the probability measure, to a set of outcomes called the sample space. Any specified subset of these outcomes is called an event.

Central subjects in probability theory include discrete and continuous random variables, probability distributions, and stochastic processes, which provide mathematical abstractions of non-deterministic or uncertain processes or measured quantities that may either be single occurrences or evolve over time in a random fashion.

Although it is not possible to perfectly predict random events, much can be said about their behavior. Two major results in probability theory describing such behaviour are the law of large numbers and the central limit theorem.

As a mathematical foundation for statistics, probability theory is essential to many human activities that involve quantitative analysis of data.[1] Methods of probability theory also apply to descriptions of complex systems given only partial knowledge of their state, as in statistical mechanics. A great discovery of twentieth-century physics was the probabilistic nature of physical phenomena at atomic scales, described in quantum mechanics.[2]


History of probability

The mathematical theory of probability has its roots in attempts to analyze games of chance by Gerolamo Cardano in the sixteenth century, and by Pierre de Fermat and Blaise Pascal in the seventeenth century (for example the "problem of points"). Christiaan Huygens published a book on the subject in 1657[3] and in the 19th century, Pierre Laplace completed what is today considered the classic interpretation.[4]

Initially, probability theory mainly considered events, and its methods were mainly combinatorial. Eventually, analytical considerations compelled the incorporation of variables into the theory.

This culminated in modern probability theory, on foundations laid by Andrey Nikolaevich Kolmogorov. Kolmogorov combined the notion of sample space, introduced by Richard von Mises, and measure theory and presented his axiom system for probability theory in 1933. This became the mostly undisputed axiomatic basis for modern probability theory; but, alternatives exist, such as the adoption of finite rather than countable additivity by Bruno de Finetti.[5]


Treatment

Most introductions to probability theory treat discrete probability distributions and continuous probability distributions separately. The measure theory-based treatment of probability covers the discrete, continuous, a mix of the two, and more.

Motivation

Consider an experiment that can produce a number of outcomes. The set of all outcomes is called the _sample space_ of the experiment. The _power set_ of the sample space (or equivalently, the event space) is formed by considering all different collections of possible results. For example, rolling an honest die produces one of six possible results. One collection of possible results corresponds to getting an odd number. Thus, the subset {1,3,5} is an element of the power set of the sample space of die rolls. These collections are called _events_. In this case, {1,3,5} is the event that the die falls on some odd number. If the results that actually occur fall in a given event, that event is said to have occurred.

Probability is a way of assigning every "event" a value between zero and one, with the requirement that the event made up of all possible results (in our example, the event {1,2,3,4,5,6}) be assigned a value of one. To qualify as a probability distribution, the assignment of values must satisfy the requirement that if you look at a collection of mutually exclusive events (events that contain no common results, e.g., the events {1,6}, {3}, and {2,4} are all mutually exclusive), the probability that any of these events occurs is given by the sum of the probabilities of the events.[6]

The probability that any one of the events {1,6}, {3}, or {2,4} will occur is 5/6. This is the same as saying that the probability of event {1,2,3,4,6} is 5/6. This event encompasses the possibility of any number except five being rolled. The mutually exclusive event {5} has a probability of 1/6, and the event {1,2,3,4,5,6} has a probability of 1, that is, absolute certainty.

When doing calculations using the outcomes of an experiment, it is necessary that all those elementary events have a number assigned to them. This is done using a random variable. A random variable is a function that assigns to each elementary event in the sample space a real number. This function is usually denoted by a capital letter.[7] In the case of a die, the assignment of a number to a certain elementary events can be done using the identity function. This does not always work. For example, when flipping a coin the two possible outcomes are "heads" and "tails". In this example, the random variable _X_ could assign to the outcome "heads" the number "0" (X(heads) = 0) and to the outcome "tails" the number "1" (X(tails) = 1).

Discrete probability distributions

, a discrete probability distribution.]]

deals with events that occur in countable sample spaces.

Examples: Throwing dice, experiments with decks of cards, random walk, and tossing coins

: Initially the probability of an event to occur was defined as the number of cases favorable for the event, over the number of total outcomes possible in an equiprobable sample space: see Classical definition of probability.

For example, if the event is "occurrence of an even number when a die is rolled", the probability is given by $\tfrac{3}{6}=\tfrac{1}{2}$, since 3 faces out of the 6 have even numbers and each face has the same probability of appearing.

: The modern definition starts with a finite or countable set called the sample space, which relates to the set of all _possible outcomes_ in classical sense, denoted by Ω. It is then assumed that for each element x ∈ Ω , an intrinsic "probability" value f(x)  is attached, which satisfies the following properties:

1.  f(x) ∈ [0, 1] for all x ∈ Ω ;
2.  ∑_(x ∈ Ω)f(x) = 1 .

That is, the probability function _f_(_x_) lies between zero and one for every value of _x_ in the sample space _Ω_, and the sum of _f_(_x_) over all values _x_ in the sample space _Ω_ is equal to 1. An is defined as any subset E  of the sample space Ω . The of the event E  is defined as

_P_(_E_) = ∑_(_x_ ∈ _E_)_f_(_x_) .

So, the probability of the entire sample space is 1, and the probability of the null event is 0.

The function f(x)  mapping a point in the sample space to the "probability" value is called a abbreviated as . The modern definition does not try to answer how probability mass functions are obtained; instead, it builds a theory that assumes their existence.

Continuous probability distributions

, a continuous probability distribution.]]

deals with events that occur in a continuous sample space.

: The classical definition breaks down when confronted with the continuous case. See Bertrand's paradox.

: If the outcome space of a random variable _X_ is the set of real numbers (ℝ) or a subset thereof, then a function called the (or ) F  exists, defined by F(x) = P(X ≤ x) . That is, _F_(_x_) returns the probability that _X_ will be less than or equal to _x_.

The cdf necessarily satisfies the following properties.

1.  F  is a monotonically non-decreasing, right-continuous function;
2.  lim_(x →  − ∞)F(x) = 0 ;
3.  lim_(x → ∞)F(x) = 1 .

If F  is absolutely continuous, i.e., its derivative exists and integrating the derivative gives us the cdf back again, then the random variable _X_ is said to have a or or simply $f(x)=\frac{dF(x)}{dx}\,.$

For a set E ⊆ ℝ, the probability of the random variable _X_ being in E  is

_P_(_X_ ∈ _E_) = ∫_(_x_ ∈ _E_)_d__F_(_x_) .

In case the probability density function exists, this can be written as

_P_(_X_ ∈ _E_) = ∫_(_x_ ∈ _E_)_f_(_x_) _d__x_ .

Whereas the _pdf_ exists only for continuous random variables, the _cdf_ exists for all random variables (including discrete random variables) that take values in ℝ .

These concepts can be generalized for multidimensional cases on ℝ^(n) and other continuous sample spaces.

Measure-theoretic probability theory

The _raison d'être_ of the measure-theoretic treatment of probability is that it unifies the discrete and the continuous cases, and makes the difference a question of which measure is used. Furthermore, it covers distributions that are neither discrete nor continuous nor mixtures of the two.

An example of such distributions could be a mix of discrete and continuous distributions—for example, a random variable that is 0 with probability 1/2, and takes a random value from a normal distribution with probability 1/2. It can still be studied to some extent by considering it to have a pdf of (δ[x] + φ(x))/2, where δ[x] is the Dirac delta function.

Other distributions may not even be a mix, for example, the Cantor distribution has no positive probability for any single point, neither does it have a density. The modern approach to probability theory solves these problems using measure theory to define the probability space:

Given any set Ω  (also called ) and a σ-algebra ℱ  on it, a measure P  defined on ℱ  is called a if P(Ω) = 1. 

If ℱ  is the Borel σ-algebra on the set of real numbers, then there is a unique probability measure on ℱ  for any cdf, and vice versa. The measure corresponding to a cdf is said to be by the cdf. This measure coincides with the pmf for discrete variables and pdf for continuous variables, making the measure-theoretic approach free of fallacies.

The _probability_ of a set E  in the σ-algebra ℱ  is defined as

_P_(_E_) = ∫_(_ω_ ∈ _E_)_μ__(_F_)(_d__ω_) 
where the integration is with respect to the measure μ_(F)  induced by F .

Along with providing better understanding and unification of discrete and continuous probabilities, measure-theoretic treatment also allows us to work on probabilities outside ℝ^(n), as in the theory of stochastic processes. For example, to study Brownian motion, probability is defined on a space of functions.

When it's convenient to work with a dominating measure, the Radon-Nikodym theorem is used to define a density as the Radon-Nikodym derivative of the probability distribution of interest with respect to this dominating measure. Discrete densities are usually defined as this derivative with respect to a counting measure over the set of all possible outcomes. Densities for absolutely continuous distributions are usually defined as this derivative with respect to the Lebesgue measure. If a theorem can be proved in this general setting, it holds for both discrete and continuous distributions as well as others; separate proofs are not required for discrete and continuous distributions.


Classical probability distributions

Certain random variables occur very often in probability theory because they well describe many natural or physical processes. Their distributions, therefore, have gained _special importance_ in probability theory. Some fundamental _discrete distributions_ are the discrete uniform, Bernoulli, binomial, negative binomial, Poisson and geometric distributions. Important _continuous distributions_ include the continuous uniform, normal, exponential, gamma and beta distributions.


Convergence of random variables

In probability theory, there are several notions of convergence for random variables. They are listed below in the order of strength, i.e., any subsequent notion of convergence in the list implies convergence according to all of the preceding notions.

Weak convergence: A sequence of random variables X₁, X₂, …,  converges  to the random variable X  if their respective cumulative _distribution functions_ F₁, F₂, …  converge to the cumulative distribution function F  of X , wherever F  is continuous. Weak convergence is also called .

    Most common shorthand notation: $\displaystyle X_n \, \xrightarrow{\mathcal D} \, X$

Convergence in probability: The sequence of random variables X₁, X₂, …  is said to converge towards the random variable X   if lim_(n → ∞)P(|X_(n)−X|≥ε) = 0 for every ε > 0.

    Most common shorthand notation: $\displaystyle X_n \, \xrightarrow{P} \, X$

Strong convergence: The sequence of random variables X₁, X₂, …  is said to converge towards the random variable X   if P(lim_(n → ∞)X_(n) = X) = 1. Strong convergence is also known as .

    Most common shorthand notation: $\displaystyle X_n \, \xrightarrow{\mathrm{a.s.}} \, X$

As the names indicate, weak convergence is weaker than strong convergence. In fact, strong convergence implies convergence in probability, and convergence in probability implies weak convergence. The reverse statements are not always true.

Law of large numbers

Common intuition suggests that if a fair coin is tossed many times, then _roughly_ half of the time it will turn up _heads_, and the other half it will turn up _tails_. Furthermore, the more often the coin is tossed, the more likely it should be that the ratio of the number of _heads_ to the number of _tails_ will approach unity. Modern probability theory provides a formal version of this intuitive idea, known as the . This law is remarkable because it is not assumed in the foundations of probability theory, but instead emerges from these foundations as a theorem. Since it links theoretically derived probabilities to their actual frequency of occurrence in the real world, the law of large numbers is considered as a pillar in the history of statistical theory and has had widespread influence.[8]

The (LLN) states that the sample average

$$\overline{X}_n=\frac1n{\sum_{k=1}^n X_k}$$
of a sequence of independent and identically distributed random variables X_(k) converges towards their common expectation μ, provided that the expectation of |X_(k)| is finite.

It is in the different forms of convergence of random variables that separates the _weak_ and the _strong_ law of large numbers

    Weak law: $\displaystyle \overline{X}_n \, \xrightarrow{P} \, \mu$ for n → ∞

    Strong law: $\displaystyle \overline{X}_n \, \xrightarrow{\mathrm{a.\,s.}} \, \mu$ for n → ∞.

It follows from the LLN that if an event of probability _p_ is observed repeatedly during independent experiments, the ratio of the observed frequency of that event to the total number of repetitions converges towards _p_.

For example, if Y₁, Y₂, ...  are independent Bernoulli random variables taking values 1 with probability _p_ and 0 with probability 1-_p_, then E(Y_(i)) = p for all _i_, so that Ȳ_(n) converges to _p_ almost surely.

Central limit theorem

"The central limit theorem (CLT) is one of the great results of mathematics." (Chapter 18 in[9]) It explains the ubiquitous occurrence of the normal distribution in nature.

The theorem states that the average of many independent and identically distributed random variables with finite variance tends towards a normal distribution _irrespective_ of the distribution followed by the original random variables. Formally, let X₁, X₂, …  be independent random variables with mean μ and variance σ² > 0.  Then the sequence of random variables

$$Z_n=\frac{\sum_{i=1}^n (X_i - \mu)}{\sigma\sqrt{n}}\,$$
converges in distribution to a standard normal random variable.

For some classes of random variables the classic central limit theorem works rather fast (see Berry–Esseen theorem), for example the distributions with finite first, second, and third moment from the exponential family; on the other hand, for some random variables of the heavy tail and fat tail variety, it works very slowly or may not work at all: in such cases one may use the Generalized Central Limit Theorem (GCLT).


See also


Notes


References

-



        The first major treatise blending calculus with probability theory, originally in French: _Théorie Analytique des Probabilités_.

-



        An English translation by Nathan Morrison appeared under the title _Foundations of the Theory of Probability_ (Chelsea, New York) in 1950, with a second edition in 1956.

-   -   Olav Kallenberg; _Foundations of Modern Probability,_ 2nd ed. Springer Series in Statistics. (2002). 650 pp.
-



        A lively introduction to probability theory for the beginner.

-   Olav Kallenberg; _Probabilistic Symmetries and Invariance Principles_. Springer -Verlag, New York (2005). 510 pp.
-

id:Peluang (matematika)

Probability_theory

[1] Inferring From Data

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] David Williams, "Probability with martingales", Cambridge 1991/2008