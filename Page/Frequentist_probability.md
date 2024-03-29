FREQUENTIST PROBABILITY or FREQUENTISM is an interpretation of probability; it defines an event's probability as the limit of its relative frequency in a large number of trials. This interpretation supports the statistical needs of experimental scientists and pollsters; probabilities can be found (in principle) by a repeatable objective process (and are thus ideally devoid of opinion). It does not support all needs; gamblers typically require estimates of the odds without experiments.

The development of the frequentist account was motivated by the problems and paradoxes of the previously dominant viewpoint, the classical interpretation. In the classical interpretation, probability was defined in terms of the principle of indifference, based on the natural symmetry of a problem, so, _e.g._ the probabilities of dice games arise from the natural symmetric 6-sidedness of the cube. This classical interpretation stumbled at any statistical problem that has no natural symmetry for reasoning.


Definition

In the frequentist interpretation, probabilities are discussed only when dealing with well-defined random experiments (or random samples).[1] The set of all possible outcomes of a random experiment is called the sample space of the experiment. An event is defined as a particular subset of the sample space to be considered. For any given event, only one of two possibilities may hold: it occurs or it does not. The relative frequency of occurrence of an event, observed in a number of repetitions of the experiment, is a measure of the PROBABILITY of that event. This is the core conception of probability in the frequentist interpretation.

Thus, if n_(t) is the total number of trials and n_(x) is the number of trials where the event x occurred, the probability P(x) of the event occurring will be approximated by the relative frequency as follows:

$$P(x) \approx \frac{n_x}{n_t}.$$

Clearly, as the number of trials is increased, one might expect the relative frequency to become a better approximation of a "true frequency".

A claim of the frequentist approach is that in the "long run," as the number of trials approaches infinity, the relative frequency will converge _exactly_ to the true probability:[2]

$$P(x) = \lim_{n_t\rightarrow \infty}\frac{n_x}{n_t}.$$


Scope

The frequentist interpretation is a philosophical approach to the definition and use of probabilities; it is one of several such approaches. It does not claim to capture all connotations of the concept 'probable' in colloquial speech of natural languages.

As an interpretation, it is not in conflict with the mathematical axiomatization of probability theory; rather, it provides guidance for how to apply mathematical probability theory to real-world situations. It offers distinct guidance in the construction and design of practical experiments, especially when contrasted with the Bayesian interpretation. As to whether this guidance is useful, or is apt to mis-interpretation, has been a source of controversy. Particularly when the frequency interpretation of probability is mistakenly assumed to be the only possible basis for frequentist inference. So, for example, a list of mis-interpretations of the meaning of p-values accompanies the article on p-values; controversies are detailed in the article on statistical hypothesis testing. The Jeffreys–Lindley paradox shows how different interpretations, applied to the same data set, can lead to different conclusions about the 'statistical significance' of a result.

As William Feller noted:[3]

Feller's comment was criticism of Laplace, who published a solution to the sunrise problem using an alternative probability interpretation. Despite Laplace's explicit and immediate disclaimer in the source, based on expertise in astronomy as well as probability, two centuries of criticism have followed.


History

The frequentist view may have been foreshadowed by Aristotle, in _Rhetoric_,[4] when he wrote:

Poisson clearly distinguished between objective and subjective probabilities in 1837.[5] Soon thereafter a flurry of nearly simultaneous publications by Mill, Ellis ("On the Foundations of the Theory of Probabilities"[6] and "Remarks on the Fundamental Principles of the Theory of Probabilities"[7]), Cournot (_Exposition de la théorie des chances et des probabilités_)[8] and Fries introduced the frequentist view. Venn provided a thorough exposition (_The Logic of Chance: An Essay on the Foundations and Province of the Theory of Probability_ (published editions in 1866, 1876, 1888))[9] two decades later. These were further supported by the publications of Boole and Bertrand. By the end of the 19th century the frequentist interpretation was well established and perhaps dominant in the sciences.[10] The following generation established the tools of classical inferential statistics (significance testing, hypothesis testing and confidence intervals) all based on frequentist probability.

Alternatively,[11] Jacob Bernoulli (AKA James or Jacques) understood the concept of frequentist probability and published a critical proof (the weak law of large numbers) posthumously in _1713_. He is also credited with some appreciation for subjective probability (prior to and without Bayes theorem).[12][13] Gauss and Laplace used frequentist (and other) probability in derivations of the least squares method a century later, a generation before Poisson.[14] Laplace considered the probabilities of testimonies, tables of mortality, judgments of tribunals, etc. which are unlikely candidates for classical probability. In this view, Poisson's contribution was his sharp criticism of the alternative "inverse" (subjective, Bayesian) probability interpretation. Any criticism by Gauss and Laplace was muted and implicit. (Their later derivations did not use inverse probability.)

Major contributors to "classical" statistics in the early 20th century included Fisher, Neyman and Pearson. Fisher contributed to most of statistics and made significance testing the core of experimental science; Neyman formulated confidence intervals and contributed heavily to sampling theory; Neyman and Pearson paired in the creation of hypothesis testing. All valued objectivity, so the best interpretation of probability available to them was frequentist. All were suspicious of "inverse probability" (the available alternative) with prior probabilities chosen by the using the principle of indifference. Fisher said, "...the theory of inverse probability is founded upon an error, [referring to Bayes theorem] and must be wholly rejected." (from his Statistical Methods for Research Workers). While Neyman was a pure frequentist,[15] Fisher's views of probability were unique; Both had nuanced view of probability. von Mises offered a combination of mathematical and philosophical support for frequentism in the era.[16][17]


Etymology

According to the _Oxford English Dictionary_, the term 'frequentist' was first used by M. G. Kendall in 1949, to contrast with Bayesians, whom he called "non-frequentists".[18][19] He observed

    3....we may broadly distinguish two main attitudes. One takes probability as 'a degree of rational belief', or some similar idea...the second defines probability in terms of frequencies of occurrence of events, or by relative proportions in 'populations' or 'collectives'; (p. 101)
    ...
    12. It might be thought that the differences between the frequentists and the non-frequentists (if I may call them such) are largely due to the differences of the domains which they purport to cover. (p. 104)
    ...
    _I assert that this is not so_ ... The essential distinction between the frequentists and the non-frequentists is, I think, that the former, in an effort to avoid anything savouring of matters of opinion, seek to define probability in terms of the objective properties of a population, real or hypothetical, whereas the latter do not. [emphasis in original]

"The Frequency Theory of Probability" was used a generation earlier as a chapter title in Keynes (1921).[20]

The historical sequence: probability concepts were introduced and much of probability mathematics derived (prior to the 20th century), classical statistical inference methods were developed, the mathematical foundations of probability were solidified and current terminology was introduced (all in the 20th century). The primary historical sources in probability and statistics did not use the current terminology of classical, subjective (Bayesian) and frequentist probability.


Alternative views

Probability theory is a branch of mathematics. While its roots reach centuries into the past, it reached maturity with the axioms of Andrey Kolmogorov in 1933. The theory focuses on the valid operations on probability values rather than on the initial assignment of values; the mathematics is largely independent of any interpretation of probability.

Applications and interpretations of probability are considered by philosophy, the sciences and statistics. All are interested in the extraction of knowledge from observations—inductive reasoning. There are a variety of competing interpretations;[21] All have problems. Major interpretations include classical probability, subjective probability and frequency interpretations.

-   Classical probability assigns probabilities based on physical idealized symmetry (dice, coins, cards). The classical definition is at risk of circularity; Probabilities are defined by assuming equality of probabilities.[22] In the absence of symmetry the utility of the definition is limited.
-   Subjective (Bayesian) probability (a family of competing interpretations) considers degrees of belief. All practical "subjective" probability interpretations are so constrained to rationality as to avoid most subjectivity. Real subjectivity is repellent to the sciences which strive for results independent of the observer and analyst. The historical roots of this concept extended to such non-numeric applications as legal evidence.
-   Frequency interpretations are empirical—they are defined by a ratio from an infinite series of trials. This is a very natural interpretation for scientific experiments. Mathematicians are dubious of the convergence properties of the non-mathematical series.[23]

The frequentist interpretation does resolve difficulties with the classical interpretation, such as any problem where the natural symmetry of outcomes is not known. It does not address other issues, such as the dutch book. Propensity probability is an alternative physicalist approach.[24]


Notes


References

-   P W Bridgman, _The Logic of Modern Physics_, 1927
-   Alonzo Church, _The Concept of a Random Sequence_, 1940
-   Harald Cramér, _Mathematical Methods of Statistics_, 1946
-   William Feller, _An Introduction to Probability Theory and its Applications_, 1957
-   P Martin-Löf, _On the Concept of a Random Sequence_, 1966
-   Richard von Mises, _Probability, Statistics, and Truth_, 1939 (German original 1928)
-   Jerzy Neyman, _First Course in Probability and Statistics_, 1950
-   Hans Reichenbach, _The Theory of Probability_, 1949 (German original 1935)
-   Bertrand Russell, _Human Knowledge_, 1948
-   PS

Category:Probability interpretations

[1]  Neyman's derivation of confidence intervals embraced the measure theoretic axioms of probability published by Kolmogorov a few years previously and referenced the subjective (Bayesian) probability definitions of Jeffreys published earlier in the decade. Neyman defined frequentist probability (under the name classical) and stated the need for randomness in the repeated samples or trials. He accepted in principle the possibility of multiple competing theories of probability while expressing several specific reservations about the existing alternative probability interpretation.

[2] von Mises, Richard (1939) _Probability, Statistics, and Truth_ (in German) (English translation, 1981: Dover Publications; 2 Revised edition. ) (p.14)

[3] William Feller (1957), _An Introduction to Probability Theory and Its Applications, Vol. 1_, page 4

[4] Keynes, John Maynard; _A Treatise on Probability_ (1921), Chapter VIII “The Frequency Theory of Probability”.

[5]

[6] Ellis, Robert Leslie (1843) “On the Foundations of the Theory of Probabilities”, _Transactions of the Cambridge Philosophical Society_ vol 8

[7] Ellis, Robert Leslie (1854) “Remarks on the Fundamental Principles of the Theory of Probabilities”, _Transactions of the Cambridge Philosophical Society_ vol 9

[8] Cournot, Antoine Augustin (1843) _Exposition de la théorie des chances et des probabilités_. L. Hachette, Paris. archive.org

[9]

[10]

[11]

[12]

[13]  Bernoulli provided a classical example of drawing a large number of black and white pebbles from an urn (with replacement). The sample ratio allowed Bernoulli to infer the ratio in the urn, with tighter bounds as the number of samples increased. Historians can interpret the example as classical, frequentist or subjective probability. David says, "James has definitely started here the controversy on inverse probability..." Bernoulli wrote generations before Bayes, LaPlace and Gauss. The controversy continues.

[14]

[15]

[16]

[17] _The Frequency theory_ Chapter 5; discussed in Donald Gilles, _Philosophical theories of probability_ (2000), Psychology Press. , p. 88.

[18] Earliest Known Uses of Some of the Words of Probability & Statistics

[19]

[20]

[21]

[22]

[23]

[24]