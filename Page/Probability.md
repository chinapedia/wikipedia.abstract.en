Probably}}

PROBABILITY is a measure quantifying the likelihood that events will occur.[1] See glossary of probability and statistics. Probability quantifies as a number between 0 and 1, where, loosely speaking, 0 indicates impossibility and 1 indicates certainty.[2][3] The higher the probability of an event, the more likely it is that the event will occur. A simple example is the tossing of a fair (unbiased) coin. Since the coin is fair, the two outcomes ("heads" and "tails") are both equally probable; the probability of "heads" equals the probability of "tails"; and since no other outcomes are possible, the probability of either "heads" or "tails" is 1/2 (which could also be written as 0.5 or 50%).

These concepts have been given an axiomatic mathematical formalization in probability theory, which is used widely in such areas of study as mathematics, statistics, finance, gambling, science (in particular physics), artificial intelligence/machine learning, computer science, game theory, and philosophy to, for example, draw inferences about the expected frequency of events. Probability theory is also used to describe the underlying mechanics and regularities of complex systems.[4]


Interpretations

When dealing with experiments that are random and well-defined in a purely theoretical setting (like tossing a fair coin), probabilities can be numerically described by the number of desired outcomes divided by the total number of all outcomes. For example, tossing a fair coin twice will yield "head-head", "head-tail", "tail-head", and "tail-tail" outcomes. The probability of getting an outcome of "head-head" is 1 out of 4 outcomes, or, in numerical terms, 1/4, 0.25 or 25%. However, when it comes to practical application, there are two major competing categories of probability interpretations, whose adherents possess different views about the fundamental nature of probability:

1.  Objectivists assign numbers to describe some objective or physical state of affairs. The most popular version of objective probability is frequentist probability, which claims that the probability of a random event denotes the _relative frequency of occurrence_ of an experiment's outcome, when repeating the experiment. This interpretation considers probability to be the relative frequency "in the long run" of outcomes.[5] A modification of this is propensity probability, which interprets probability as the tendency of some experiment to yield a certain outcome, even if it is performed only once.
2.  Subjectivists assign numbers per subjective probability, i.e., as a degree of belief.[6] The degree of belief has been interpreted as, "the price at which you would buy or sell a bet that pays 1 unit of utility if E, 0 if not E."[7] The most popular version of subjective probability is Bayesian probability, which includes expert knowledge as well as experimental data to produce probabilities. The expert knowledge is represented by some (subjective) prior probability distribution. These data are incorporated in a likelihood function. The product of the prior and the likelihood, normalized, results in a posterior probability distribution that incorporates all the information known to date.[8] By Aumann's agreement theorem, Bayesian agents whose prior beliefs are similar will end up with similar posterior beliefs. However, sufficiently different priors can lead to different conclusions regardless of how much information the agents share.[9]


Etymology

The word _probability_ derives from the Latin _probabilitas_, which can also mean "probity", a measure of the authority of a witness in a legal case in Europe, and often correlated with the witness's nobility. In a sense, this differs much from the modern meaning of _probability_, which, in contrast, is a measure of the weight of empirical evidence, and is arrived at from inductive reasoning and statistical inference.[10]


History

The scientific study of probability is a modern development of mathematics. Gambling shows that there has been an interest in quantifying the ideas of probability for millennia, but exact mathematical descriptions arose much later. There are reasons for the slow development of the mathematics of probability. Whereas games of chance provided the impetus for the mathematical study of probability, are still obscured by the superstitions of gamblers.[11] Christiaan_Huygens-painting.jpeg According to Richard Jeffrey, "Before the middle of the seventeenth century, the term 'probable' (Latin _probabilis_) meant _approvable_, and was applied in that sense, unequivocally, to opinion and to action. A probable action or opinion was one such as sensible people would undertake or hold, in the circumstances."[12] However, in legal contexts especially, 'probable' could also apply to propositions for which there was good evidence.[13]

Forms of probability and statistics were developed by Arab mathematicians studying cryptology between the 8th and 13th centuries. Al-Khalil (717–786) wrote the _Book of Cryptographic Messages_ which contains the first use of permutations and combinations to list all possible Arabic words with and without vowels. Al-Kindi (801–873) made the earliest known use of statistical inference in his work on cryptanalysis and frequency analysis. An important contribution of Ibn Adlan (1187–1268) was on sample size for use of frequency analysis.[14]

Cardano.jpg The sixteenth century Italian polymath Gerolamo Cardano demonstrated the efficacy of defining odds as the ratio of favourable to unfavourable outcomes (which implies that the probability of an event is given by the ratio of favourable outcomes to the total number of possible outcomes[15]). Aside from the elementary work by Cardano, the doctrine of probabilities dates to the correspondence of Pierre de Fermat and Blaise Pascal (1654). Christiaan Huygens (1657) gave the earliest known scientific treatment of the subject.[16] Jakob Bernoulli's _Ars Conjectandi_ (posthumous, 1713) and Abraham de Moivre's _Doctrine of Chances_ (1718) treated the subject as a branch of mathematics.[17] See Ian Hacking's _The Emergence of Probability_[18] and James Franklin's _The Science of Conjecture_[19] for histories of the early development of the very concept of mathematical probability.

The theory of errors may be traced back to Roger Cotes's _Opera Miscellanea_ (posthumous, 1722), but a memoir prepared by Thomas Simpson in 1755 (printed 1756) first applied the theory to the discussion of errors of observation.[20] The reprint (1757) of this memoir lays down the axioms that positive and negative errors are equally probable, and that certain assignable limits define the range of all errors. Simpson also discusses continuous errors and describes a probability curve.

The first two laws of error that were proposed both originated with Pierre-Simon Laplace. The first law was published in 1774 and stated that the frequency of an error could be expressed as an exponential function of the numerical magnitude of the error, disregarding sign. The second law of error was proposed in 1778 by Laplace and stated that the frequency of the error is an exponential function of the square of the error.[21] The second law of error is called the normal distribution or the Gauss law. "It is difficult historically to attribute that law to Gauss, who in spite of his well-known precocity had probably not made this discovery before he was two years old."[22]

Daniel Bernoulli (1778) introduced the principle of the maximum product of the probabilities of a system of concurrent errors. Bendixen_-_Carl_Friedrich_Gauß,_1828.jpg Adrien-Marie Legendre (1805) developed the method of least squares, and introduced it in his _Nouvelles méthodes pour la détermination des orbites des comètes_ (_New Methods for Determining the Orbits of Comets_).[23] In ignorance of Legendre's contribution, an Irish-American writer, Robert Adrain, editor of "The Analyst" (1808), first deduced the law of facility of error,

_ϕ_(_x_) = _c__e_^( − _h_²_x_²),
where h is a constant depending on precision of observation, and c is a scale factor ensuring that the area under the curve equals 1. He gave two proofs, the second being essentially the same as John Herschel's (1850). Gauss gave the first proof that seems to have been known in Europe (the third after Adrain's) in 1809. Further proofs were given by Laplace (1810, 1812), Gauss (1823), James Ivory (1825, 1826), Hagen (1837), Friedrich Bessel (1838), W.F. Donkin (1844, 1856), and Morgan Crofton (1870). Other contributors were Ellis (1844), De Morgan (1864), Glaisher (1872), and Giovanni Schiaparelli (1875). Peters's (1856) formula for _r_, the probable error of a single observation, is well known.

In the nineteenth century authors on the general theory included Laplace, Sylvestre Lacroix (1816), Littrow (1833), Adolphe Quetelet (1853), Richard Dedekind (1860), Helmert (1872), Hermann Laurent (1873), Liagre, Didion, and Karl Pearson. Augustus De Morgan and George Boole improved the exposition of the theory.

Andrey Markov introduced[24] the notion of Markov chains (1906), which played an important role in stochastic processes theory and its applications. The modern theory of probability based on the measure theory was developed by Andrey Kolmogorov (1931).[25]

On the geometric side (see integral geometry) contributors to _The Educational Times_ were influential (Miller, Crofton, McColl, Wolstenholme, Watson, and Artemas Martin).


Theory

Like other theories, the theory of probability is a representation of its concepts in formal terms—that is, in terms that can be considered separately from their meaning. These formal terms are manipulated by the rules of mathematics and logic, and any results are interpreted or translated back into the problem domain.

There have been at least two successful attempts to formalize probability, namely the Kolmogorov formulation and the Cox formulation. In Kolmogorov's formulation (see probability space), sets are interpreted as events and probability itself as a measure on a class of sets. In Cox's theorem, probability is taken as a primitive (that is, not further analyzed) and the emphasis is on constructing a consistent assignment of probability values to propositions. In both cases, the laws of probability are the same, except for technical details.

There are other methods for quantifying uncertainty, such as the Dempster–Shafer theory or possibility theory, but those are essentially different and not compatible with the laws of probability as usually understood.


Applications

Probability theory is applied in everyday life in risk assessment and modeling. The insurance industry and markets use actuarial science to determine pricing and make trading decisions. Governments apply probabilistic methods in environmental regulation, entitlement analysis (Reliability theory of aging and longevity), and financial regulation.

A good example of the use of probability theory in equity trading is the effect of the perceived probability of any widespread Middle East conflict on oil prices, which have ripple effects in the economy as a whole. An assessment by a commodity trader that a war is more likely can send that commodity's prices up or down, and signals other traders of that opinion. Accordingly, the probabilities are neither assessed independently nor necessarily very rationally. The theory of behavioral finance emerged to describe the effect of such groupthink on pricing, on policy, and on peace and conflict.[26]

In addition to financial assessment, probability can be used to analyze trends in biology (e.g. disease spread) as well as ecology (e.g. biological Punnett squares). As with finance, risk assessment can be used as a statistical tool to calculate the likelihood of undesirable events occurring and can assist with implementing protocols to avoid encountering such circumstances. Probability is used to design games of chance so that casinos can make a guaranteed profit, yet provide payouts to players that are frequent enough to encourage continued play.[27]

The discovery of rigorous methods to assess and combine probability assessments has changed society.[28]

Another significant application of probability theory in everyday life is reliability. Many consumer products, such as automobiles and consumer electronics, use reliability theory in product design to reduce the probability of failure. Failure probability may influence a manufacturer's decisions on a product's warranty.[29]

The cache language model and other statistical language models that are used in natural language processing are also examples of applications of probability theory.


Mathematical treatment

Consider an experiment that can produce a number of results. The collection of all possible results is called the sample space of the experiment. The power set of the sample space is formed by considering all different collections of possible results. For example, rolling a dice can produce six possible results. One collection of possible results gives an odd number on the dice. Thus, the subset {1,3,5} is an element of the power set of the sample space of dice rolls. These collections are called "events". In this case, {1,3,5} is the event that the dice falls on some odd number. If the results that actually occur fall in a given event, the event is said to have occurred.

A probability is a way of assigning every event a value between zero and one, with the requirement that the event made up of all possible results (in our example, the event {1,2,3,4,5,6}) is assigned a value of one. To qualify as a probability, the assignment of values must satisfy the requirement that if you look at a collection of mutually exclusive events (events with no common results, e.g., the events {1,6}, {3}, and {2,4} are all mutually exclusive), the probability that at least one of the events will occur is given by the sum of the probabilities of all the individual events.[30]

The probability of an event _A_ is written as P(A), p(A), or Pr(A).[31] This mathematical definition of probability can extend to infinite sample spaces, and even uncountable sample spaces, using the concept of a measure.

The _opposite_ or _complement_ of an event _A_ is the event [not _A_] (that is, the event of _A_ not occurring), often denoted as $\overline{A}, A^\complement, \neg A$, or  ∼ A; its probability is given by .[32] As an example, the chance of not rolling a six on a six-sided die is $= 1 - \tfrac{1}{6} = \tfrac{5}{6}$. See Complementary event for a more complete treatment.

If two events _A_ and _B_ occur on a single performance of an experiment, this is called the intersection or joint probability of _A_ and _B_, denoted as P(A ∩ B).

Independent events

If two events, _A_ and _B_ are independent then the joint probability is

_P_(_A_ and _B_) = _P_(_A_ ∩ _B_) = _P_(_A_)_P_(_B_), 
for example, if two coins are flipped the chance of both being heads is $\tfrac{1}{2}\times\tfrac{1}{2} = \tfrac{1}{4}$.[33]

Mutually exclusive events

If either event _A_ or event _B_ but never both occurs on a single performance of an experiment, then they are called mutually exclusive events.

If two events are mutually exclusive then the probability of BOTH occurring is denoted as P(A ∩ B).

_P_(_A_ and _B_) = _P_(_A_ ∩ _B_) = 0
If two events are mutually exclusive then the probability of EITHER occurring is denoted as P(A ∪ B).

_P_(_A_ or _B_) = _P_(_A_ ∪ _B_) = _P_(_A_) + _P_(_B_) − _P_(_A_ ∩ _B_) = _P_(_A_) + _P_(_B_) − 0 = _P_(_A_) + _P_(_B_)
For example, the chance of rolling a 1 or 2 on a six-sided is $P(1\mbox{ or }2) = P(1) + P(2) = \tfrac{1}{6} + \tfrac{1}{6} = \tfrac{1}{3}.$

Not mutually exclusive events

If the events are not mutually exclusive then

$$P\left(A \hbox{ or } B\right) = P(A \cup B) = P\left(A\right)+P\left(B\right)-P\left(A \mbox{ and } B\right).$$
For example, when drawing a single card at random from a regular deck of cards, the chance of getting a heart or a face card (J,Q,K) (or one that is both) is $\tfrac{13}{52} + \tfrac{12}{52} - \tfrac{3}{52} = \tfrac{11}{26}$, because of the 52 cards of a deck 13 are hearts, 12 are face cards, and 3 are both: here the possibilities included in the "3 that are both" are included in each of the "13 hearts" and the "12 face cards" but should only be counted once.

Conditional probability

_Conditional probability_ is the probability of some event _A_, given the occurrence of some other event _B_. Conditional probability is written P(A ∣ B), and is read "the probability of _A_, given _B_". It is defined by[34]

$$P(A \mid B) = \frac{P(A \cap B)}{P(B)}.\,$$
If P(B) = 0 then P(A ∣ B) is formally undefined by this expression. However, it is possible to define a conditional probability for some zero-probability events using a σ-algebra of such events (such as those arising from a continuous random variable).

For example, in a bag of 2 red balls and 2 blue balls (4 balls in total), the probability of taking a red ball is 1/2; however, when taking a second ball, the probability of it being either a red ball or a blue ball depends on the ball previously taken, such as, if a red ball was taken, the probability of picking a red ball again would be 1/3 since only 1 red and 2 blue balls would have been remaining.

Inverse probability

In probability theory and applications, BAYES' RULE relates the odds of event A₁ to event A₂, before (prior to) and after (posterior to) conditioning on another event B. The odds on A₁ to event A₂ is simply the ratio of the probabilities of the two events. When arbitrarily many events A are of interest, not just two, the rule can be rephrased as POSTERIOR IS PROPORTIONAL TO PRIOR TIMES LIKELIHOOD, P(A|B) ∝ P(A)P(B|A) where the proportionality symbol means that the left hand side is proportional to (i.e., equals a constant times) the right hand side as A varies, for fixed or given B (Lee, 2012; Bertsch McGrayne, 2012). In this form it goes back to Laplace (1774) and to Cournot (1843); see Fienberg (2005). See Inverse probability and Bayes' rule.

Summary of probabilities

  Event       Probability
  ----------- ----------------------------------------------------------------------------
  A           P(A) ∈ [0, 1] 
  not A       P(A^(∁)) = 1 − P(A) 
  A or B      $\begin{align}
              P(A\cup B) & = P(A)+P(B)-P(A\cap B) \\
              P(A\cup B) & = P(A)+P(B) \qquad\mbox{if A and B are mutually exclusive} \\
              \end{align}$
  A and B     $\begin{align}
              P(A\cap B) & = P(A|B)P(B) = P(B|A)P(A)\\
              P(A\cap B) &  = P(A)P(B) \qquad\mbox{if A and B are independent}\\
              \end{align}$
  A given B   $P(A \mid B) = \frac{P(A \cap B)}{P(B)} = \frac{P(B|A)P(A)}{P(B)} \,$

  : Summary of probabilities


Relation to randomness and probability in quantum mechanics

In a deterministic universe, based on Newtonian concepts, there would be no probability if all conditions were known (Laplace's demon), (but there are situations in which sensitivity to initial conditions exceeds our ability to measure them, i.e. know them). In the case of a roulette wheel, if the force of the hand and the period of that force are known, the number on which the ball will stop would be a certainty (though as a practical matter, this would likely be true only of a roulette wheel that had not been exactly levelled – as Thomas A. Bass' Newtonian Casino revealed). This also assumes knowledge of inertia and friction of the wheel, weight, smoothness and roundness of the ball, variations in hand speed during the turning and so forth. A probabilistic description can thus be more useful than Newtonian mechanics for analyzing the pattern of outcomes of repeated rolls of a roulette wheel. Physicists face the same situation in kinetic theory of gases, where the system, while deterministic _in principle_, is so complex (with the number of molecules typically the order of magnitude of the Avogadro constant ) that only a statistical description of its properties is feasible.

Probability theory is required to describe quantum phenomena.[35] A revolutionary discovery of early 20th century physics was the random character of all physical processes that occur at sub-atomic scales and are governed by the laws of quantum mechanics. The objective wave function evolves deterministically but, according to the Copenhagen interpretation, it deals with probabilities of observing, the outcome being explained by a wave function collapse when an observation is made. However, the loss of determinism for the sake of instrumentalism did not meet with universal approval. Albert Einstein famously remarked in a letter to Max Born: "I am convinced that God does not play dice".[36] Like Einstein, Erwin Schrödinger, who discovered the wave function, believed quantum mechanics is a statistical approximation of an underlying deterministic reality.[37] In some modern interpretations of the statistical mechanics of measurement, quantum decoherence is invoked to account for the appearance of subjectively probabilistic experimental outcomes.


See also

-   Chance (disambiguation)
-   Class membership probabilities
-   Contingency
-   Equiprobability
-   Heuristics in judgment and decision-making
-   Probability theory
-   Randomness
-   Statistics
-   Estimators
-   Estimation Theory
-   Probability density function

In Law

-   Balance of probabilities


Notes


References


Bibliography

-   Kallenberg, O. (2005) _Probabilistic Symmetries and Invariance Principles_. Springer-Verlag, New York. 510 pp. 
-   Kallenberg, O. (2002) _Foundations of Modern Probability,_ 2nd ed. Springer Series in Statistics. 650 pp. 
-   Olofsson, Peter (2005) _Probability, Statistics, and Stochastic Processes_, Wiley-Interscience. 504 pp .


External links

-   Virtual Laboratories in Probability and Statistics (Univ. of Ala.-Huntsville)
-   -   Probability and Statistics EBook
-   Edwin Thompson Jaynes. _Probability Theory: The Logic of Science_. Preprint: Washington University, (1996). — HTML index with links to PostScript files and PDF (first three chapters)
-   People from the History of Probability and Statistics (Univ. of Southampton)
-   Probability and Statistics on the Earliest Uses Pages (Univ. of Southampton)
-   Earliest Uses of Symbols in Probability and Statistics on Earliest Uses of Various Mathematical Symbols
-   A tutorial on probability and Bayes' theorem devised for first-year Oxford University students
-   1 pdf file of An Anthology of Chance Operations (1963) at UbuWeb
-   Introduction to Probability – eBook, by Charles Grinstead, Laurie Snell Source _(GNU Free Documentation License)_
-   Bruno de Finetti, _Probabilità e induzione_, Bologna, CLUEB, 1993. (digital version)

-   Richard P. Feynman's Lecture on probability.

Probability Category:Dimensionless numbers

[1] "Probability". _Webster's Revised Unabridged Dictionary_. G & C Merriam, 1913.

[2] "Kendall's Advanced Theory of Statistics, Volume 1: Distribution Theory", Alan Stuart and Keith Ord, 6th Ed, (2009), .

[3] William Feller, "An Introduction to Probability Theory and Its Applications", (Vol 1), 3rd Ed, (1968), Wiley, .

[4] Probability Theory The Britannica website

[5]

[6]

[7]

[8]

[9]

[10] Hacking, I. (2006) _The Emergence of Probability: A Philosophical Study of Early Ideas about Probability, Induction and Statistical Inference_, Cambridge University Press,

[11] Freund, John. (1973) _Introduction to Probability_. Dickenson (p. 1)

[12] Jeffrey, R.C., _Probability and the Art of Judgment,_ Cambridge University Press. (1992). pp. 54–55 .

[13] Franklin, J. (2001) _The Science of Conjecture: Evidence and Probability Before Pascal,_ Johns Hopkins University Press. (pp. 22, 113, 127)

[14]

[15] _Some laws and problems in classical probability and how Cardano anticipated them_ Gorrochum, P. _Chance_ magazine 2012

[16]

[17]

[18]

[19]

[20]

[21] Wilson EB (1923) "First and second laws of error". Journal of the American Statistical Association, 18, 143

[22]

[23]

[24]

[25]

[26] Singh, Laurie (2010) "Whither Efficient Markets? Efficient Market Theory and Behavioral Finance". The Finance Professionals' Post, 2010.

[27]

[28]

[29] Gorman, Michael (2011) "Management Insights". _Management Science_

[30]

[31] Olofsson (2005) p. 8.

[32] Olofsson (2005), p. 9

[33] Olofsson (2005) p. 35.

[34] Olofsson (2005) p. 29.

[35]

[36] _Jedenfalls bin ich überzeugt, daß der Alte nicht würfelt._ Letter to Max Born, 4 December 1926, in: Einstein/Born Briefwechsel 1916–1955.

[37]