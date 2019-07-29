BAYESIAN PROBABILITY is an interpretation of the concept of probability, in which, instead of frequency or propensity of some phenomenon, probability is interpreted as reasonable expectation[1] representing a state of knowledge[2] or as quantification of a personal belief.[3]

The Bayesian interpretation of probability can be seen as an extension of propositional logic that enables reasoning with hypotheses[4]. That is to say, propositions whose truth or falsity is uncertain. In the Bayesian view, a probability is assigned to a hypothesis, whereas under frequentist inference, a hypothesis is typically tested without being assigned a probability.

Bayesian probability belongs to the category of evidential probabilities; to evaluate the probability of a hypothesis, the Bayesian probabilist specifies a prior probability. This, in turn, is then updated to a posterior probability in the light of new, relevant data (evidence).[5] The Bayesian interpretation provides a standard set of procedures and formulae to perform this calculation.

The term _Bayesian_ derives from the 18th century mathematician and theologian Thomas Bayes, who provided the first mathematical treatment of a non-trivial problem of statistical data analysis using what is now known as Bayesian inference.[6] Mathematician Pierre-Simon Laplace pioneered and popularised what is now called Bayesian probability.[7]


Bayesian methodology

Bayesian methods are characterized by concepts and procedures as follows:

-   The use of random variables, or more generally unknown quantities,[8] to model all sources of uncertainty in statistical models including uncertainty resulting from lack of information (see also aleatoric and epistemic uncertainty).
-   The need to determine the prior probability distribution taking into account the available (prior) information.
-   The sequential use of Bayes' formula: when more data become available, calculate the posterior distribution using Bayes' formula; subsequently, the posterior distribution becomes the next prior.
-   While for the frequentist, a hypothesis is a proposition (which must be either true or false) so that the frequentist probability of a hypothesis is either 0 or 1, in Bayesian statistics, the probability that can be assigned to a hypothesis can also be in a range from 0 to 1 if the truth value is uncertain.


Objective and subjective Bayesian probabilities

Broadly speaking, there are two interpretations on Bayesian probability. For _objectivists_, interpreting probability as extension of logic, _probability_ quantifies the reasonable expectation everyone (even a "robot") sharing the same knowledge should share in accordance with the rules of Bayesian statistics, which can be justified by Cox's theorem.[9][10] For _subjectivists_, _probability_ corresponds to a personal belief.[11] Rationality and coherence allow for substantial variation within the constraints they pose; the constraints are justified by the Dutch book argument or by the decision theory and de Finetti's theorem.[12] The objective and subjective variants of Bayesian probability differ mainly in their interpretation and construction of the prior probability.


History

The term _Bayesian_ refers to Thomas Bayes (1702–1761), who proved a special case of what is now called Bayes' theorem in a paper titled "An Essay towards solving a Problem in the Doctrine of Chances".[13] In that special case, the prior and posterior distributions were Beta distributions and the data came from Bernoulli trials. It was Pierre-Simon Laplace (1749–1827) who introduced a general version of the theorem and used it to approach problems in celestial mechanics, medical statistics, reliability, and jurisprudence.[14] Early Bayesian inference, which used uniform priors following Laplace's principle of insufficient reason, was called "inverse probability" (because it infers backwards from observations to parameters, or from effects to causes).[15] After the 1920s, "inverse probability" was largely supplanted by a collection of methods that came to be called frequentist statistics.[16]

In the 20th century, the ideas of Laplace developed in two directions, giving rise to _objective_ and _subjective_ currents in Bayesian practice. Harold Jeffreys' _Theory of Probability_ (first published in 1939) played an important role in the revival of the Bayesian view of probability, followed by works by Abraham Wald (1950) and Leonard J. Savage (1954). The adjective _Bayesian_ itself dates to the 1950s; the derived _Bayesianism_, _neo-Bayesianism_ is of 1960s coinage.[17][18][19] In the objectivist stream, the statistical analysis depends on only the model assumed and the data analysed.[20] No subjective decisions need to be involved. In contrast, "subjectivist" statisticians deny the possibility of fully objective analysis for the general case.

In the 1980s, there was a dramatic growth in research and applications of Bayesian methods, mostly attributed to the discovery of Markov chain Monte Carlo methods and the consequent removal of many of the computational problems, and to an increasing interest in nonstandard, complex applications.[21] While frequentist statistics remains strong (as seen by the fact that most undergraduate teaching is still based on it [22]), Bayesian methods are widely accepted and used, e.g., in the field of machine learning.[23]


Justification of Bayesian probabilities

The use of Bayesian probabilities as the basis of Bayesian inference has been supported by several arguments, such as Cox axioms, the Dutch book argument, arguments based on decision theory and de Finetti's theorem.

Axiomatic approach

Richard T. Cox showed that[24] Bayesian updating follows from several axioms, including two functional equations and a hypothesis of differentiability. The assumption of differentiability or even continuity is controversial; Halpern found a counterexample based on his observation that the Boolean algebra of statements may be finite.[25] Other axiomatizations have been suggested by various authors with the purpose of making the theory more rigorous.[26]

Dutch book approach

The Dutch book argument was proposed by de Finetti; it is based on betting. A Dutch book is made when a clever gambler places a set of bets that guarantee a profit, no matter what the outcome of the bets. If a bookmaker follows the rules of the Bayesian calculus in the construction of his odds, a Dutch book cannot be made.

However, Ian Hacking noted that traditional Dutch book arguments did not specify Bayesian updating: they left open the possibility that non-Bayesian updating rules could avoid Dutch books. For example, Hacking writes[27][28] "And neither the Dutch book argument, nor any other in the personalist arsenal of proofs of the probability axioms, entails the dynamic assumption. Not one entails Bayesianism. So the personalist requires the dynamic assumption to be Bayesian. It is true that in consistency a personalist could abandon the Bayesian model of learning from experience. Salt could lose its savour."

In fact, there are non-Bayesian updating rules that also avoid Dutch books (as discussed in the literature on "probability kinematics"[29] following the publication of Richard C. Jeffreys' rule, which is itself regarded as Bayesian[30]). The additional hypotheses sufficient to (uniquely) specify Bayesian updating are substantial[31] and not universally seen as satisfactory.[32]

Decision theory approach

A decision-theoretic justification of the use of Bayesian inference (and hence of Bayesian probabilities) was given by Abraham Wald, who proved that every admissible statistical procedure is either a Bayesian procedure or a limit of Bayesian procedures.[33] Conversely, every Bayesian procedure is admissible.[34]


Personal probabilities and objective methods for constructing priors

Following the work on expected utility theory of Ramsey and von Neumann, decision-theorists have accounted for rational behavior using a probability distribution for the agent. Johann Pfanzagl completed the _Theory of Games and Economic Behavior_ by providing an axiomatization of subjective probability and utility, a task left uncompleted by von Neumann and Oskar Morgenstern: their original theory supposed that all the agents had the same probability distribution, as a convenience.[35] Pfanzagl's axiomatization was endorsed by Oskar Morgenstern: "Von Neumann and I have anticipated ... [the question whether probabilities] might, perhaps more typically, be subjective and have stated specifically that in the latter case axioms could be found from which could derive the desired numerical utility together with a number for the probabilities (cf. p. 19 of The Theory of Games and Economic Behavior). We did not carry this out; it was demonstrated by Pfanzagl ... with all the necessary rigor".[36]

Ramsey and Savage noted that the individual agent's probability distribution could be objectively studied in experiments. Procedures for testing hypotheses about probabilities (using finite samples) are due to Ramsey (1931) and de Finetti (1931, 1937, 1964, 1970). Both Bruno de Finetti[37][38] and Frank P. Ramsey[39][40] acknowledge their debts to pragmatic philosophy, particularly (for Ramsey) to Charles S. Peirce.[41][42]

The "Ramsey test" for evaluating probability distributions is implementable in theory, and has kept experimental psychologists occupied for a half century.[43] This work demonstrates that Bayesian-probability propositions can be falsified, and so meet an empirical criterion of Charles S. Peirce, whose work inspired Ramsey. (This falsifiability-criterion was popularized by Karl Popper.[44][45])

Modern work on the experimental evaluation of personal probabilities uses the randomization, blinding, and Boolean-decision procedures of the Peirce-Jastrow experiment.[46] Since individuals act according to different probability judgments, these agents' probabilities are "personal" (but amenable to objective study).

Personal probabilities are problematic for science and for some applications where decision-makers lack the knowledge or time to specify an informed probability-distribution (on which they are prepared to act). To meet the needs of science and of human limitations, Bayesian statisticians have developed "objective" methods for specifying prior probabilities.

Indeed, some Bayesians have argued the prior state of knowledge defines _the_ (unique) prior probability-distribution for "regular" statistical problems; cf. well-posed problems. Finding the right method for constructing such "objective" priors (for appropriate classes of regular problems) has been the quest of statistical theorists from Laplace to John Maynard Keynes, Harold Jeffreys, and Edwin Thompson Jaynes. These theorists and their successors have suggested several methods for constructing "objective" priors (Unfortunately, it is not clear how to assess the relative "objectivity" of the priors proposed under these methods):

-   Maximum entropy
-   Transformation group analysis
-   Reference analysis

Each of these methods contributes useful priors for "regular" one-parameter problems, and each prior can handle some challenging statistical models (with "irregularity" or several parameters). Each of these methods has been useful in Bayesian practice. Indeed, methods for constructing "objective" (alternatively, "default" or "ignorance") priors have been developed by avowed subjective (or "personal") Bayesians like James Berger (Duke University) and José-Miguel Bernardo (Universitat de València), simply because such priors are needed for Bayesian practice, particularly in science.[47] The quest for "the universal method for constructing priors" continues to attract statistical theorists.[48]

Thus, the Bayesian statistician needs either to use informed priors (using relevant expertise or previous data) or to choose among the competing methods for constructing "objective" priors.


See also

-   Bertrand paradox—a paradox in classical probability
-   De Finetti's game—a procedure for evaluating someone's subjective probability
-   QBism—an interpretation of quantum mechanics based on subjective Bayesian probability
-   Reference class problem
-   Uncertainty
-   _An Essay towards solving a Problem in the Doctrine of Chances_
-   Monty Hall problem


References


Bibliography

-

-

-

-

-

-

-   (translation of de Finetti, 1931)

-   (translation of de Finetti, 1937, above)

-   , , two volumes.

-   .

-
    Partly reprinted in

-

-

-

-

-

-   (

-

-

-

-

-

-

-

-

-

-

Probability Category:Justification Category:Probability interpretations Category:Philosophy of mathematics Category:Philosophy of science

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

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27] Hacking (1967), Section 3, page 316

[28] Hacking (1988, page 124)

[29]

[30]

[31]

[32]

[33]

[34]

[35] Pfanzagl (1967, 1968)

[36] Morgenstern (1976, page 65)

[37]

[38]

[39]

[40]

[41]

[42]

[43] Davidson et al. (1957)

[44]

[45]  (translation of 1935 original, in German).

[46] Peirce & Jastrow (1885)

[47]

[48]