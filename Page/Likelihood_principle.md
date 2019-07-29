In statistics, the LIKELIHOOD PRINCIPLE is the proposition that, given a statistical model, all the evidence in a sample relevant to model parameters is contained in the likelihood function.

A likelihood function arises from a probability density function considered as a function of its distributional parameterization argument. For example, consider a model which gives the probability density function _ƒ__(_X_)(_x_ | _θ_) of observable random variable _X_ as a function of a parameter _θ_. Then for a specific value _x_ of _X_, the function ℒ(_θ_ | _x_) = _ƒ__(_X_)(_x_ | _θ_) is a likelihood function of _θ_: it gives a measure of how "likely" any particular value of _θ_ is, if we know that _X_ has the value _x_. The density function may be a density with respect to counting measure, i.e. a probability mass function.

Two likelihood functions are _equivalent_ if one is a scalar multiple of the other. The LIKELIHOOD PRINCIPLE is this: all information from the data that is relevant to inferences about the value of the model parameters is in the equivalence class to which the likelihood function belongs. The STRONG LIKELIHOOD PRINCIPLE applies this same criterion to cases such as sequential experiments where the sample of data that is available results from applying a stopping rule to the observations earlier in the experiment.[1]


Example

Suppose

-   _X_ is the number of successes in twelve independent Bernoulli trials with probability _θ_ of success on each trial, and
-   _Y_ is the number of independent Bernoulli trials needed to get three successes, again with probability _θ_ (= 1/2 for a coin-toss) of success on each trial.

Then the observation that _X_ = 3 induces the likelihood function

$$\mathcal L(\theta  \mid X=3) = \binom{12} 3 \theta^3(1-\theta)^9 = 220\theta^3(1-\theta)^9,$$

while the observation that _Y_ = 12 induces the likelihood function

$$\mathcal L(\theta \mid Y=12) = \binom{11} 2 \theta^3(1-\theta)^9 = 55\theta^3(1-\theta)^9.$$

The likelihood principle says that, as the data are the same in both cases, the inferences drawn about the value of θ should also be the same. In addition, all the inferential content in the data about the value of θ is contained in the two likelihoods, and is the same if they are proportional to one another. This is the case in the above example, reflecting the fact that the difference between observing _X_ = 3 and observing _Y_ = 12 lies not in the actual data, but merely in the design of the experiment. Specifically, in one case, one has decided in advance to try twelve times; in the other, to keep trying until three successes are observed. The inference about θ should be the same, and this is reflected in the fact that the two likelihoods are proportional to each other.

This is not always the case, however. The use of frequentist methods involving p-values leads to different inferences for the two cases above,[2] showing that the outcome of frequentist methods depends on the experimental procedure, and thus violates the likelihood principle.


The law of likelihood

A related concept is the LAW OF LIKELIHOOD, the notion that the extent to which the evidence supports one parameter value or hypothesis against another is equal to the ratio of their likelihoods, their likelihood ratio. That is,

$$\Lambda = {\mathcal L(a\mid X=x) \over \mathcal L(b\mid X=x)} = {P(X=x\mid a) \over P(X=x\mid b)}$$
is the degree to which the observation x supports parameter value or hypothesis _a_ against _b_. If this ratio is 1, the evidence is indifferent; if greater than 1, the evidence supports the value _a_ against _b_; or if less, then vice versa.

In Bayesian statistics, this ratio is known as the Bayes factor, and Bayes' rule can be seen as the application of the law of likelihood to inference.

In frequentist inference, the likelihood ratio is used in the likelihood-ratio test, but other non-likelihood tests are used as well. The Neyman–Pearson lemma states the likelihood-ratio test is the most powerful test for comparing two simple hypotheses at a given significance level, which gives a frequentist justification for the law of likelihood.

Combining the likelihood principle with the law of likelihood yields the consequence that the parameter value which maximizes the likelihood function is the value which is most strongly supported by the evidence. This is the basis for the widely used method of maximum likelihood.


History

The likelihood principle was first identified by that name in print in 1962 (Barnard et al., Birnbaum, and Savage et al.), but arguments for the same principle, unnamed, and the use of the principle in applications goes back to the works of R.A. Fisher in the 1920s. The law of likelihood was identified by that name by I. Hacking (1965). More recently the likelihood principle as a general principle of inference has been championed by A. W. F. Edwards. The likelihood principle has been applied to the philosophy of science by R. Royall.[3]

Birnbaum proved that the likelihood principle follows from two more primitive and seemingly reasonable principles, the _conditionality principle_ and the _sufficiency principle_. The conditionality principle says that if an experiment is chosen by a random process independent of the states of nature θ, then only the experiment actually performed is relevant to inferences about θ. The sufficiency principle says that if T(X) is a sufficient statistic for θ, and if in two experiments with data x₁ and x₂ we have T(x₁) = T(x₂), then the evidence about θ given by the two experiments is the same.


Arguments for and against

Some widely used methods of conventional statistics, for example many significance tests, are not consistent with the likelihood principle.

Let us briefly consider some of the arguments for and against the likelihood principle.

The original Birnbaum argument

Birnbaum's proof of the likelihood principle has been disputed by philosophers of science, including Deborah Mayo[4][5] and statisticians including Michael Evans.[6] On the other hand, a new proof of the likelihood principle has been provided by Greg Gandenberger.[7]

Experimental design arguments on the likelihood principle

Unrealized events play a role in some common statistical methods. For example, the result of a significance test depends on the _p_-value, the probability of a result as extreme or more extreme than the observation, and that probability may depend on the design of the experiment. To the extent that the likelihood principle is accepted, such methods are therefore denied.

Some classical significance tests are not based on the likelihood. A commonly cited example is the optional stopping problem. Suppose I tell you that I tossed a coin 12 times and in the process observed 3 heads. You might make some inference about the probability of heads and whether the coin was fair. Suppose now I tell that I tossed the coin _until_ I observed 3 heads, and I tossed it 12 times. Will you now make some different inference?

The likelihood function is the same in both cases: it is proportional to

_p_³(1 − _p_)⁹.

According to the likelihood principle, the inference should be the same in either case.

Suppose a number of scientists are assessing the probability of a certain outcome (which we shall call 'success') in experimental trials. Conventional wisdom suggests that if there is no bias towards success or failure then the success probability would be one half. Adam, a scientist, conducted 12 trials and obtains 3 successes and 9 failures. Then he left the lab.

Bill, a colleague in the same lab, continued Adam's work and published Adam's results, along with a significance test. He tested the null hypothesis that _p_, the success probability, is equal to a half, versus _p_ < 0.5. The probability of the observed result that out of 12 trials 3 or something fewer (i.e. more extreme) were successes, if _H_₀ is true, is

$$\left({12 \choose 9}+{12 \choose 10}+{12 \choose 11}+{12 \choose 12}\right)\left({1 \over 2}\right)^{12}$$

which is 299/4096 = 7.3%. Thus the null hypothesis is not rejected at the 5% significance level.

Charlotte, another scientist, reads Bill's paper and writes a letter, saying that it is possible that Adam kept trying until he obtained 3 successes, in which case the probability of needing to conduct 12 or more experiments is given by

    $1-\left({10 \choose 2}\left({1 \over 2}\right)^{11}+{9 \choose 2}\left({1 \over 2} \right)^{10}+\cdots +{2 \choose 2}\left({1 \over 2}\right)^3 \right)$

which is 134/4096 = 3.27%. Now the result _is_ statistically significant at the 5% level. Note that there is no contradiction among these two results; both computations are correct.

To these scientists, whether a result is significant or not depends on the design of the experiment, not on the likelihood (in the sense of the likelihood function) of the parameter value being 1/2.

Results of this kind are considered by some as arguments against the likelihood principle. For others it exemplifies the value of the likelihood principle and is an argument against significance tests.

Similar themes appear when comparing Fisher's exact test with Pearson's chi-squared test.

The voltmeter story

An argument in favor of the likelihood principle is given by Edwards in his book _Likelihood_. He cites the following story from J.W. Pratt, slightly condensed here. Note that the likelihood function depends only on what actually happened, and not on what _could_ have happened.

    An engineer draws a random sample of electron tubes and measures their voltage. The measurements range from 75 to 99 Volts. A statistician computes the sample mean and a confidence interval for the true mean. Later the statistician discovers that the voltmeter reads only as far as 100, so the population appears to be 'censored'. This necessitates a new analysis, if the statistician is orthodox. However, the engineer says he has another meter reading to 1000 Volts, which he would have used if any voltage had been over 100. This is a relief to the statistician, because it means the population was effectively uncensored after all. But later, the engineer informs the statistician that this second meter was not working at the time of the measuring. The statistician ascertains that the engineer would not have held up the measurements until the meter was fixed, and informs him that new measurements are required. The engineer is astounded. "_Next you'll be asking about my oscilloscope!_"

This story can be translated to Adam's stopping rule above, as follows. Adam stopped immediately after 3 successes, because his boss Bill had instructed him to do so. After the publication of the statistical analysis by Bill, Adam realizes that he has missed a second instruction from Bill to conduct 12 trials instead, and that Bill's paper is based on this second instruction. Adam is very glad that he got his 3 successes after exactly 12 trials, and explains to his friend Charlotte that by coincidence he executed the second instruction. Later, he is astonished to hear about Charlotte's letter explaining that _now_ the result is significant.


See also

-   Conditionality principle
-   Likelihoodist statistics


Notes


References

-   -   -   _(With discussion.)_

-   -   -   -   -   -   -   .

-   -


External links

-   Anthony W.F. Edwards. "Likelihood".
-   Jeff Miller. Earliest Known Uses of Some of the Words of Mathematics (L)
-   John Aldrich. Likelihood and Probability in R. A. Fisher’s Statistical Methods for Research Workers

ru:Принцип максимального правдоподобия

Category:Estimation theory Principle Category:Statistical principles

[1] Dodge, Y. (2003) The Oxford Dictionary of Statistical Terms. OUP.

[2]

[3] Royall, Richard (1997) Statistical Evidence: A likelihood paradigm. Chapman and Hall, Boca Raton.

[4] Mayo, D. (2010) "An Error in the Argument from Conditionality and Sufficiency to the Likelihood Principle" in _Error and Inference: Recent Exchanges on Experimental Reasoning, Reliability and the Objectivity and Rationality of Science_ (D Mayo and A. Spanos eds.), Cambridge: Cambridge University Press: 305-314.

[5] Mayo, Deborah (2014), "On the Birnbaum Argument for the Strong Likelihood Principle", _Statistical Science_, 29: 227-266 (with Discussion).

[6] Evans, Michael (2013) What does the proof of Birnbaum's theorem prove?

[7] Gandenberger, Greg (2014), "A new proof of the likelihood principle", _British Journal for the Philosophy of Science_, 66: 475-503; .