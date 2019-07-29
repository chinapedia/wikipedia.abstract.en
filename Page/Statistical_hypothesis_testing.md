A STATISTICAL HYPOTHESIS, sometimes called CONFIRMATORY DATA ANALYSIS, is a hypothesis that is testable on the basis of observing a process that is modeled via a set of random variables.[1] A STATISTICAL HYPOTHESIS TEST is a method of statistical inference. Commonly, two statistical data sets are compared, or a data set obtained by sampling is compared against a synthetic data set from an idealized model. A hypothesis is proposed for the statistical relationship between the two data sets, and this is compared as an alternative to an idealized null hypothesis that proposes no relationship between two data sets. The comparison is deemed _statistically significant_ if the relationship between the data sets would be an unlikely realization of the null hypothesis according to a threshold probability—the significance level. Hypothesis tests are used when determining what outcomes of a study would lead to a rejection of the null hypothesis for a pre-specified level of significance.

The process of distinguishing between the null hypothesis and the alternative hypothesis is aided by considering two conceptual types of errors. The first type of error occurs when the null hypothesis is wrongly rejected. The second type of error occurs when the null hypothesis is wrongly not rejected. (The two types are known as type 1 and type 2 errors.)

Hypothesis tests based on statistical significance are another way of expressing confidence intervals (more precisely, confidence sets). In other words, every hypothesis test based on significance can be obtained via a confidence interval, and every confidence interval can be obtained via a hypothesis test based on significance.[2]

Significance-based hypothesis testing is the most common framework for statistical hypothesis testing. An alternative framework for statistical hypothesis testing is to specify a set of statistical models, one for each candidate hypothesis, and then use model selection techniques to choose the most appropriate model.[3] The most common selection techniques are based on either Akaike information criterion or Bayes factor.


The testing process

In the statistics literature, statistical hypothesis testing plays a fundamental role.[4] The usual line of reasoning is as follows:

1.  There is an initial research hypothesis of which the truth is unknown.
2.  The first step is to state the relevant NULL and ALTERNATIVE HYPOTHESES. This is important, as mis-stating the hypotheses will muddy the rest of the process.
3.  The second step is to consider the statistical assumptions being made about the sample in doing the test; for example, assumptions about the statistical independence or about the form of the distributions of the observations. This is equally important as invalid assumptions will mean that the results of the test are invalid.
4.  Decide which test is appropriate, and state the relevant TEST STATISTIC T.
5.  Derive the distribution of the test statistic under the null hypothesis from the assumptions. In standard cases this will be a well-known result. For example, the test statistic might follow a Student's t distribution or a normal distribution.
6.  Select a significance level (_α_), a probability threshold below which the null hypothesis will be rejected. Common values are 5% and 1%.
7.  The distribution of the test statistic under the null hypothesis partitions the possible values of T into those for which the null hypothesis is rejected—the so-called _critical region_—and those for which it is not. The probability of the critical region is _α_.
8.  Compute from the observations the observed value t_(obs) of the test statistic T.
9.  Decide to either reject the null hypothesis in favor of the alternative or not reject it. The decision rule is to reject the null hypothesis H₀ if the observed value t_(obs) is in the critical region, and to accept or "fail to reject" the hypothesis otherwise.

An alternative process is commonly used:

1.  Compute from the observations the observed value t_(obs) of the test statistic T.
2.  Calculate the _p_-value. This is the probability, under the null hypothesis, of sampling a test statistic at least as extreme as that which was observed.
3.  Reject the null hypothesis, in favor of the alternative hypothesis, if and only if the _p_-value is less than the significance level (the selected probability) threshold.

The two processes are equivalent.[5] The former process was advantageous in the past when only tables of test statistics at common probability thresholds were available. It allowed a decision to be made without the calculation of a probability. It was adequate for classwork and for operational use, but it was deficient for reporting results.

The latter process relied on extensive tables or on computational support not always available. The explicit calculation of a probability is useful for reporting. The calculations are now trivially performed with appropriate software.

The difference in the two processes applied to the Radioactive suitcase example (below):

-   "The Geiger-counter reading is 10. The limit is 9. Check the suitcase."
-   "The Geiger-counter reading is high; 97% of safe suitcases have lower readings. The limit is 95%. Check the suitcase."

The former report is adequate, the latter gives a more detailed explanation of the data and the reason why the suitcase is being checked.

It is important to note the difference between accepting the null hypothesis and simply failing to reject it. The "fail to reject" terminology highlights the fact that the null hypothesis is assumed to be true from the start of the test; if there is a lack of evidence against it, it simply continues to be assumed true. The phrase "accept the null hypothesis" may suggest it has been proved simply because it has not been disproved, a logical fallacy known as the argument from ignorance. Unless a test with particularly high power is used, the idea of "accepting" the null hypothesis may be dangerous. Nonetheless the terminology is prevalent throughout statistics, where the meaning actually intended is well understood.

The processes described here are perfectly adequate for computation. They seriously neglect the design of experiments considerations.[6][7]

It is particularly critical that appropriate sample sizes be estimated before conducting the experiment.

The phrase "test of significance" was coined by statistician Ronald Fisher.[8]

Interpretation

The _p_-value is the probability that a given result (or a more significant result) would occur under the null hypothesis. For example, say that a fair coin is tested for fairness (the null hypothesis). At a significance level of 0.05, the fair coin would be expected to (incorrectly) reject the null hypothesis in about 1 out of every 20 tests. The _p_-value does not provide the probability that either hypothesis is correct (a common source of confusion).[9]

If the _p_-value is less than the chosen significance threshold (equivalently, if the observed test statistic is in the critical region), then we say the null hypothesis is rejected at the chosen level of significance. Rejection of the null hypothesis is a conclusion. This is like a "guilty" verdict in a criminal trial: the evidence is sufficient to reject innocence, thus proving guilt. We might accept the alternative hypothesis (and the research hypothesis).

If the _p_-value is _not_ less than the chosen significance threshold (equivalently, if the observed test statistic is outside the critical region), then the evidence is insufficient to support a conclusion. (This is similar to a "not guilty" verdict.) The researcher typically gives extra consideration to those cases where the _p_-value is close to the significance level.

Some people find it helpful to think of the hypothesis testing framework as analogous to a mathematical proof by contradiction.[10]

In the Lady tasting tea example (below), Fisher required the Lady to properly categorize all of the cups of tea to justify the conclusion that the result was unlikely to result from chance. His test revealed that if the lady was effectively guessing at random (the null hypothesis), there was a 1.4% chance that the observed results (perfectly ordered tea) would occur.

Whether rejection of the null hypothesis truly justifies acceptance of the research hypothesis depends on the structure of the hypotheses. Rejecting the hypothesis that a large paw print originated from a bear does not immediately prove the existence of Bigfoot. Hypothesis testing emphasizes the rejection, which is based on a probability, rather than the acceptance, which requires extra steps of logic.

"The probability of rejecting the null hypothesis is a function of five factors: whether the test is one- or two tailed, the level of significance, the standard deviation, the amount of deviation from the null hypothesis, and the number of observations."[11] These factors are a source of criticism; factors under the control of the experimenter/analyst give the results an appearance of subjectivity.

Use and importance

Statistics are helpful in analyzing most collections of data. This is equally true of hypothesis testing which can justify conclusions even when no scientific theory exists. In the Lady tasting tea example, it was "obvious" that no difference existed between (milk poured into tea) and (tea poured into milk). The data contradicted the "obvious".

Real world applications of hypothesis testing include:[12]

-   Testing whether more men than women suffer from nightmares
-   Establishing authorship of documents
-   Evaluating the effect of the full moon on behavior
-   Determining the range at which a bat can detect an insect by echo
-   Deciding whether hospital carpeting results in more infections
-   Selecting the best means to stop smoking
-   Checking whether bumper stickers reflect car owner behavior
-   Testing the claims of handwriting analysts

Statistical hypothesis testing plays an important role in the whole of statistics and in statistical inference. For example, Lehmann (1992) in a review of the fundamental paper by Neyman and Pearson (1933) says: "Nevertheless, despite their shortcomings, the new paradigm formulated in the 1933 paper, and the many developments carried out within its framework continue to play a central role in both the theory and practice of statistics and can be expected to do so in the foreseeable future".

Significance testing has been the favored statistical tool in some experimental social sciences (over 90% of articles in the _Journal of Applied Psychology_ during the early 1990s).[13] Other fields have favored the estimation of parameters (e.g. effect size). Significance testing is used as a substitute for the traditional comparison of predicted value and experimental result at the core of the scientific method. When theory is only capable of predicting the sign of a relationship, a directional (one-sided) hypothesis test can be configured so that only a statistically significant result supports theory. This form of theory appraisal is the most heavily criticized application of hypothesis testing.

Cautions

"If the government required statistical procedures to carry warning labels like those on drugs, most inference methods would have long labels indeed."[14] This caution applies to hypothesis tests and alternatives to them.

The successful hypothesis test is associated with a probability and a type-I error rate. The conclusion _might_ be wrong.

The conclusion of the test is only as solid as the sample upon which it is based. The design of the experiment is critical. A number of unexpected effects have been observed including:

-   The clever Hans effect. A horse appeared to be capable of doing simple arithmetic.
-   The Hawthorne effect. Industrial workers were more productive in better illumination, and most productive in worse.
-   The placebo effect. Pills with no medically active ingredients were remarkably effective.

A statistical analysis of misleading data produces misleading conclusions. The issue of data quality can be more subtle. In forecasting for example, there is no agreement on a measure of forecast accuracy. In the absence of a consensus measurement, no decision based on measurements will be without controversy.

The book _How to Lie with Statistics_[15][16] is the most popular book on statistics ever published.[17] It does not much consider hypothesis testing, but its cautions are applicable, including: Many claims are made on the basis of samples too small to convince. If a report does not mention sample size, be doubtful.

Hypothesis testing acts as a filter of statistical conclusions; only those results meeting a probability threshold are publishable. Economics also acts as a publication filter; only those results favorable to the author and funding source may be submitted for publication. The impact of filtering on publication is termed publication bias. A related problem is that of multiple testing (sometimes linked to data mining), in which a variety of tests for a variety of possible effects are applied to a single data set and only those yielding a significant result are reported. These are often dealt with by using multiplicity correction procedures that control the family wise error rate (FWER) or the false discovery rate (FDR).

Those making critical decisions based on the results of a hypothesis test are prudent to look at the details rather than the conclusion alone. In the physical sciences most results are fully accepted only when independently confirmed. The general advice concerning statistics is, "Figures never lie, but liars figure" (anonymous).


Examples

Human sex ratio

The earliest use of statistical hypothesis testing is generally credited to the question of whether male and female births are equally likely (null hypothesis), which was addressed in the 1700s by John Arbuthnot (1710),[18] and later by Pierre-Simon Laplace (1770s).[19]

Arbuthnot examined birth records in London for each of the 82 years from 1629 to 1710, and applied the sign test, a simple non-parametric test.[20][21][22] In every year, the number of males born in London exceeded the number of females. Considering more male or more female births as equally likely, the probability of the observed outcome is 0.5⁸², or about 1 in 4,8360,0000,0000,0000,0000,0000; in modern terms, this is the _p_-value. This is vanishingly small, leading Arbuthnot that this was not due to chance, but to divine providence: "From whence it follows, that it is Art, not Chance, that governs." In modern terms, he rejected the null hypothesis of equally likely male and female births at the _p_ = 1/2⁸² significance level.

Laplace considered the statistics of almost half a million births. The statistics showed an excess of boys compared to girls.[23][24] He concluded by calculation of a _p_-value that the excess was a real, but unexplained, effect.[25]

Lady tasting tea

In a famous example of hypothesis testing, known as the _Lady tasting tea_,[26] Dr. Muriel Bristol, a female colleague of Fisher claimed to be able to tell whether the tea or the milk was added first to a cup. Fisher proposed to give her eight cups, four of each variety, in random order. One could then ask what the probability was for her getting the number she got correct, but just by chance. The null hypothesis was that the Lady had no such ability. The test statistic was a simple count of the number of successes in selecting the 4 cups. The critical region was the single case of 4 successes of 4 possible based on a conventional probability criterion (< 5%). A pattern of 4 successes corresponds to 1 out of 70 possible combinations (p≈ 1.4%). Fisher asserted that no alternative hypothesis was (ever) required. The lady correctly identified every cup,[27] which would be considered a statistically significant result.

Courtroom trial

A statistical test procedure is comparable to a criminal trial; a defendant is considered not guilty as long as his or her guilt is not proven. The prosecutor tries to prove the guilt of the defendant. Only when there is enough evidence for the prosecution is the defendant convicted.

In the start of the procedure, there are two hypotheses H₀: "the defendant is not guilty", and H₁: "the defendant is guilty". The first one, H₀, is called the _null hypothesis_, and is for the time being accepted. The second one, H₁, is called the _alternative hypothesis_. It is the alternative hypothesis that one hopes to support.

The hypothesis of innocence is only rejected when an error is very unlikely, because one doesn't want to convict an innocent defendant. Such an error is called _error of the first kind_ (i.e., the conviction of an innocent person), and the occurrence of this error is controlled to be rare. As a consequence of this asymmetric behaviour, an _error of the second kind_ (acquitting a person who committed the crime), is more common.

+------------------------+------------------+---------------+
|                        | H₀ is true       | H₁ is true    |
|                        | Truly not guilty | Truly guilty  |
+------------------------+------------------+---------------+
| Accept null hypothesis |                  | Type II Error |
| Acquittal              |                  |               |
+------------------------+------------------+---------------+
| Reject null hypothesis | Type I Error     |               |
| Conviction             |                  |               |
+------------------------+------------------+---------------+

A criminal trial can be regarded as either or both of two decision processes: guilty vs not guilty or evidence vs a threshold ("beyond a reasonable doubt"). In one view, the defendant is judged; in the other view the performance of the prosecution (which bears the burden of proof) is judged. A hypothesis test can be regarded as either a judgment of a hypothesis or as a judgment of evidence.

Philosopher's beans

The following example was produced by a philosopher describing scientific methods generations before hypothesis testing was formalized and popularized.[28]

  Few beans of this handful are white.
  Most beans in this bag are white.
  Therefore: Probably, these beans were taken from another bag.
  This is an hypothetical inference.

The beans in the bag are the population. The handful are the sample. The null hypothesis is that the sample originated from the population. The criterion for rejecting the null-hypothesis is the "obvious" difference in appearance (an informal difference in the mean). The interesting result is that consideration of a real population and a real sample produced an imaginary bag. The philosopher was considering logic rather than probability. To be a real statistical hypothesis test, this example requires the formalities of a probability calculation and a comparison of that probability to a standard.

A simple generalization of the example considers a mixed bag of beans and a handful that contain either very few or very many white beans. The generalization considers both extremes. It requires more calculations and more comparisons to arrive at a formal answer, but the core philosophy is unchanged; If the composition of the handful is greatly different from that of the bag, then the sample probably originated from another bag. The original example is termed a one-sided or a one-tailed test while the generalization is termed a two-sided or two-tailed test.

The statement also relies on the inference that the sampling was random. If someone had been picking through the bag to find white beans, then it would explain why the handful had so many white beans, and also explain why the number of white beans in the bag was depleted (although the bag is probably intended to be assumed much larger than one's hand).

Clairvoyant card game

A person (the subject) is tested for clairvoyance. They are shown the reverse of a randomly chosen playing card 25 times and asked which of the four suits it belongs to. The number of hits, or correct answers, is called _X_.

As we try to find evidence of their clairvoyance, for the time being the null hypothesis is that the person is not clairvoyant.[29] The alternative is: the person is (more or less) clairvoyant.

If the null hypothesis is valid, the only thing the test person can do is guess. For every card, the probability (relative frequency) of any single suit appearing is 1/4. If the alternative is valid, the test subject will predict the suit correctly with probability greater than 1/4. We will call the probability of guessing correctly _p_. The hypotheses, then, are:

-   null hypothesis $\text{:} \qquad H_0: p = \tfrac 14$     (just guessing)

and

-   alternative hypothesis $\text{:} H_1: p > \tfrac 14$    (true clairvoyant).

When the test subject correctly predicts all 25 cards, we will consider them clairvoyant, and reject the null hypothesis. Thus also with 24 or 23 hits. With only 5 or 6 hits, on the other hand, there is no cause to consider them so. But what about 12 hits, or 17 hits? What is the critical number, _c_, of hits, at which point we consider the subject to be clairvoyant? How do we determine the critical value _c_? With the choice _c_=25 (i.e. we only accept clairvoyance when all cards are predicted correctly) we're more critical than with _c_=10. In the first case almost no test subjects will be recognized to be clairvoyant, in the second case, a certain number will pass the test. In practice, one decides how critical one will be. That is, one decides how often one accepts an error of the first kind – a false positive, or Type I error. With _c_ = 25 the probability of such an error is:

$$P(\text{reject }H_0 \mid H_0 \text{ is valid}) = P(X = 25\mid p=\tfrac 14)=\left(\tfrac 14\right)^{25}\approx10^{-15},$$

and hence, very small. The probability of a false positive is the probability of randomly guessing correctly all 25 times.

Being less critical, with _c_=10, gives:

$$P(\text{reject }H_0 \mid H_0 \text{ is valid}) = P(X \ge 10 \lor X \le 2\mid p=\tfrac 14) =\sum_{k=0}^{2}P(X=k\mid p=\tfrac 14) + \sum_{k=10}^{25}P(X=k\mid p=\tfrac 14)\approx 0{.}103.$$

Thus, _c_ = 10 yields a much greater probability of false positive.

Before the test is actually performed, the maximum acceptable probability of a Type I error (_α_) is determined. Typically, values in the range of 1% to 5% are selected. (If the maximum acceptable error rate is zero, an infinite number of correct guesses is required.) Depending on this Type 1 error rate, the critical value _c_ is calculated. For example, if we select an error rate of 1%, _c_ is calculated thus:

$$P(\text{reject }H_0 \mid H_0 \text{ is valid}) = P(X \ge c\mid p=\tfrac 14) \le 0{.}01.$$

From all the numbers c, with this property, we choose the smallest, in order to minimize the probability of a Type II error, a false negative. For the above example, we select: c = 13.

Radioactive suitcase

As an example, consider determining whether a suitcase contains some radioactive material. Placed under a Geiger counter, it produces 10 counts per minute. The null hypothesis is that no radioactive material is in the suitcase and that all measured counts are due to ambient radioactivity typical of the surrounding air and harmless objects. We can then calculate how likely it is that we would observe 10 counts per minute if the null hypothesis were true. If the null hypothesis predicts (say) on average 9 counts per minute, then according to the Poisson distribution typical for radioactive decay there is about 41% chance of recording 10 or more counts. Thus we can say that the suitcase is compatible with the null hypothesis (this does not guarantee that there is no radioactive material, just that we don't have enough evidence to suggest there is). On the other hand, if the null hypothesis predicts 3 counts per minute (for which the Poisson distribution predicts only 0.1% chance of recording 10 or more counts) then the suitcase is not compatible with the null hypothesis, and there are likely other factors responsible to produce the measurements.

The test does not directly assert the presence of radioactive material. A _successful_ test asserts that the claim of no radioactive material present is unlikely given the reading (and therefore ...). The double negative (disproving the null hypothesis) of the method is confusing, but using a counter-example to disprove is standard mathematical practice. The attraction of the method is its practicality. We know (from experience) the expected range of counts with only ambient radioactivity present, so we can say that a measurement is _unusually_ large. Statistics just formalizes the intuitive by using numbers instead of adjectives. We probably do not know the characteristics of the radioactive suitcases; We just assume that they produce larger readings.

To slightly formalize intuition: radioactivity is suspected if the Geiger-count with the suitcase is among or exceeds the greatest (5% or 1%) of the Geiger-counts made with ambient radiation alone. This makes no assumptions about the distribution of counts. Many ambient radiation observations are required to obtain good probability estimates for rare events.

The test described here is more fully the null-hypothesis statistical significance test. The null hypothesis represents what we would believe by default, before seeing any evidence. Statistical significance is a possible finding of the test, declared when the observed sample is unlikely to have occurred by chance if the null hypothesis were true. The name of the test describes its formulation and its possible outcome. One characteristic of the test is its crisp decision: to reject or not reject the null hypothesis. A calculated value is compared to a threshold, which is determined from the tolerable risk of error.


Definition of terms

The following definitions are mainly based on the exposition in the book by Lehmann and Romano:[30]

Statistical hypothesis : A statement about the parameters describing a population (not a sample).
Statistic : A value calculated from a sample without any unknown parameters, often to summarize the sample for comparison purposes.
 : Any hypothesis which specifies the population distribution completely.
Composite hypothesis : Any hypothesis which does _not_ specify the population distribution completely.
Null hypothesis (H₀) : A hypothesis associated with a contradiction to a theory one would like to prove.
Positive data : Data that enable the investigator to reject a null hypothesis.
Alternative hypothesis (H₁) : A hypothesis (often composite) associated with a theory one would like to prove.
Statistical test : A procedure whose inputs are samples and whose result is a hypothesis.
Region of acceptance : The set of values of the test statistic for which we fail to reject the null hypothesis.
Region of rejection / Critical region: The set of values of the test statistic for which the null hypothesis is rejected.
Critical value: The threshold value delimiting the regions of acceptance and rejection for the test statistic.
Power of a test (1 − _β_): The test's probability of correctly rejecting the null hypothesis. The complement of the false negative rate, _β_. Power is termed SENSITIVITY in biostatistics. ("This is a sensitive test. Because the result is negative, we can confidently say that the patient does not have the condition.") See sensitivity and specificity and Type I and type II errors for exhaustive definitions.
Size: For simple hypotheses, this is the test's probability of _incorrectly_ rejecting the null hypothesis. The false positive rate. For composite hypotheses this is the supremum of the probability of rejecting the null hypothesis over all cases covered by the null hypothesis. The complement of the false positive rate is termed SPECIFICITY in biostatistics. ("This is a specific test. Because the result is positive, we can confidently say that the patient has the condition.") See sensitivity and specificity and Type I and type II errors for exhaustive definitions.
Significance level of a test (_α_): It is the upper bound imposed on the size of a test. Its value is chosen by the statistician prior to looking at the data or choosing any particular test to be used. It is the maximum exposure to erroneously rejecting H₀ he/she is ready to accept. Testing H₀ at significance level _α_ means testing H₀ with a test whose size does not exceed _α_. In most cases, one uses tests whose size is equal to the significance level.
_p_-value: The probability, assuming the null hypothesis is true, of observing a result at least as extreme as the test statistic. In case of a composite null hypothesis, the worst case probability.
Statistical significance test : A predecessor to the statistical hypothesis test (see the Origins section). An experimental result was said to be statistically significant if a sample was sufficiently inconsistent with the (null) hypothesis. This was variously considered common sense, a pragmatic heuristic for identifying meaningful experimental results, a convention establishing a threshold of statistical evidence or a method for drawing conclusions from data. The statistical hypothesis test added mathematical rigor and philosophical consistency to the concept by making the alternative hypothesis explicit. The term is loosely used to describe the modern version which is now part of statistical hypothesis testing.
Conservative test : A test is conservative if, when constructed for a given nominal significance level, the true probability of _incorrectly_ rejecting the null hypothesis is never greater than the nominal level.
Exact test: A test in which the significance level or critical value can be computed exactly, i.e., without any approximation. In some contexts this term is restricted to tests applied to categorical data and to permutation tests, in which computations are carried out by complete enumeration of all possible outcomes and their probabilities.

A statistical hypothesis test compares a test statistic (_z_ or _t_ for examples) to a threshold. The test statistic (the formula found in the table below) is based on optimality. For a fixed level of Type I error rate, use of these statistics minimizes Type II error rates (equivalent to maximizing power). The following terms describe tests in terms of such optimality:

Most powerful test: For a given _size_ or _significance level_, the test with the greatest power (probability of rejection) for a given value of the parameter(s) being tested, contained in the alternative hypothesis.
Uniformly most powerful test (UMP): A test with the greatest _power_ for all values of the parameter(s) being tested, contained in the alternative hypothesis.


Common test statistics


Variations and sub-classes

Statistical hypothesis testing is a key technique of both frequentist inference and Bayesian inference, although the two types of inference have notable differences. Statistical hypothesis tests define a procedure that controls (fixes) the probability of incorrectly _deciding_ that a default position (null hypothesis) is incorrect. The procedure is based on how likely it would be for a set of observations to occur if the null hypothesis were true. Note that this probability of making an incorrect decision is _not_ the probability that the null hypothesis is true, nor whether any specific alternative hypothesis is true. This contrasts with other possible techniques of decision theory in which the null and alternative hypothesis are treated on a more equal basis.

One naïve Bayesian approach to hypothesis testing is to base decisions on the posterior probability,[31][32] but this fails when comparing point and continuous hypotheses. Other approaches to decision making, such as Bayesian decision theory, attempt to balance the consequences of incorrect decisions across all possibilities, rather than concentrating on a single null hypothesis. A number of other approaches to reaching a decision based on data are available via decision theory and optimal decisions, some of which have desirable properties. Hypothesis testing, though, is a dominant approach to data analysis in many fields of science. Extensions to the theory of hypothesis testing include the study of the power of tests, i.e. the probability of correctly rejecting the null hypothesis given that it is false. Such considerations can be used for the purpose of sample size determination prior to the collection of data.


History

Early use

While hypothesis testing was popularized early in the 20th century, early forms were used in the 1700s. The first use is credited to John Arbuthnot (1710),[33] followed by Pierre-Simon Laplace (1770s), in analyzing the human sex ratio at birth; see .

Modern origins and early controversy

Modern significance testing is largely the product of Karl Pearson (_p_-value, Pearson's chi-squared test), William Sealy Gosset (Student's t-distribution), and Ronald Fisher ("null hypothesis", analysis of variance, "significance test"), while hypothesis testing was developed by Jerzy Neyman and Egon Pearson (son of Karl). Ronald Fisher began his life in statistics as a Bayesian (Zabell 1992), but Fisher soon grew disenchanted with the subjectivity involved (namely use of the principle of indifference when determining prior probabilities), and sought to provide a more "objective" approach to inductive inference.[34]

Fisher was an agricultural statistician who emphasized rigorous experimental design and methods to extract a result from few samples assuming Gaussian distributions. Neyman (who teamed with the younger Pearson) emphasized mathematical rigor and methods to obtain more results from many samples and a wider range of distributions. Modern hypothesis testing is an inconsistent hybrid of the Fisher vs Neyman/Pearson formulation, methods and terminology developed in the early 20th century.

Fisher popularized the "significance test". He required a null-hypothesis (corresponding to a population frequency distribution) and a sample. His (now familiar) calculations determined whether to reject the null-hypothesis or not. Significance testing did not utilize an alternative hypothesis so there was no concept of a Type II error.

The _p_-value was devised as an informal, but objective, index meant to help a researcher determine (based on other knowledge) whether to modify future experiments or strengthen one's faith in the null hypothesis.[35] Hypothesis testing (and Type I/II errors) was devised by Neyman and Pearson as a more objective alternative to Fisher's _p_-value, also meant to determine researcher behaviour, but without requiring any inductive inference by the researcher.[36][37]

Neyman & Pearson considered a different problem (which they called "hypothesis testing"). They initially considered two simple hypotheses (both with frequency distributions). They calculated two probabilities and typically selected the hypothesis associated with the higher probability (the hypothesis more likely to have generated the sample). Their method always selected a hypothesis. It also allowed the calculation of both types of error probabilities.

Fisher and Neyman/Pearson clashed bitterly. Neyman/Pearson considered their formulation to be an improved generalization of significance testing.(The defining paper[38] was abstract. Mathematicians have generalized and refined the theory for decades.[39]) Fisher thought that it was not applicable to scientific research because often, during the course of the experiment, it is discovered that the initial assumptions about the null hypothesis are questionable due to unexpected sources of error. He believed that the use of rigid reject/accept decisions based on models formulated before data is collected was incompatible with this common scenario faced by scientists and attempts to apply this method to scientific research would lead to mass confusion.[40]

The dispute between Fisher and Neyman–Pearson was waged on philosophical grounds, characterized by a philosopher as a dispute over the proper role of models in statistical inference.[41]

Events intervened: Neyman accepted a position in the western hemisphere, breaking his partnership with Pearson and separating disputants (who had occupied the same building) by much of the planetary diameter. World War II provided an intermission in the debate. The dispute between Fisher and Neyman terminated (unresolved after 27 years) with Fisher's death in 1962. Neyman wrote a well-regarded eulogy.[42] Some of Neyman's later publications reported _p_-values and significance levels.[43]

The modern version of hypothesis testing is a hybrid of the two approaches that resulted from confusion by writers of statistical textbooks (as predicted by Fisher) beginning in the 1940s.[44] (But signal detection, for example, still uses the Neyman/Pearson formulation.) Great conceptual differences and many caveats in addition to those mentioned above were ignored. Neyman and Pearson provided the stronger terminology, the more rigorous mathematics and the more consistent philosophy, but the subject taught today in introductory statistics has more similarities with Fisher's method than theirs.[45] This history explains the inconsistent terminology (example: the null hypothesis is never accepted, but there is a region of acceptance).

Sometime around 1940,[46] in an apparent effort to provide researchers with a "non-controversial"[47] way to have their cake and eat it too, the authors of statistical text books began anonymously combining these two strategies by using the _p_-value in place of the test statistic (or data) to test against the Neyman–Pearson "significance level".[48] Thus, researchers were encouraged to infer the strength of their data against some null hypothesis using _p_-values, while also thinking they are retaining the post-data collection objectivity provided by hypothesis testing. It then became customary for the null hypothesis, which was originally some realistic research hypothesis, to be used almost solely as a strawman "nil" hypothesis (one where a treatment has no effect, regardless of the context).[49]

  #   Fisher's null hypothesis testing                                                                                                                                                                                                                                                                           Neyman–Pearson decision theory
  --- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  1   Set up a statistical null hypothesis. The null need not be a nil hypothesis (i.e., zero difference).                                                                                                                                                                                                       Set up two statistical hypotheses, H1 and H2, and decide about α, β, and sample size before the experiment, based on subjective cost-benefit considerations. These define a rejection region for each hypothesis.
  2   Report the exact level of significance (e.g. p = 0.051 or p = 0.049). Do not use a conventional 5% level, and do not talk about accepting or rejecting hypotheses. If the result is "not significant", draw no conclusions and make no decisions, but suspend judgement until further data is available.   If the data falls into the rejection region of H1, accept H2; otherwise accept H1. Note that accepting a hypothesis does not mean that you believe in it, but only that you act as if it were true.
  3   Use this procedure only if little is known about the problem at hand, and only to draw provisional conclusions in the context of an attempt to understand the experimental situation.                                                                                                                      The usefulness of the procedure is limited among others to situations where you have a disjunction of hypotheses (e.g. either μ1 = 8 or μ2 = 10 is true) and where you can make meaningful cost-benefit trade-offs for choosing alpha and beta.

  : A comparison between Fisherian, frequentist (Neyman–Pearson)

Early choices of null hypothesis

Paul Meehl has argued that the epistemological importance of the choice of null hypothesis has gone largely unacknowledged. When the null hypothesis is predicted by theory, a more precise experiment will be a more severe test of the underlying theory. When the null hypothesis defaults to "no difference" or "no effect", a more precise experiment is a less severe test of the theory that motivated performing the experiment.[50] An examination of the origins of the latter practice may therefore be useful:

1778: Pierre Laplace compares the birthrates of boys and girls in multiple European cities. He states: "it is natural to conclude that these possibilities are very nearly in the same ratio". Thus Laplace's null hypothesis that the birthrates of boys and girls should be equal given "conventional wisdom".[51]

1900: Karl Pearson develops the chi squared test to determine "whether a given form of frequency curve will effectively describe the samples drawn from a given population." Thus the null hypothesis is that a population is described by some distribution predicted by theory. He uses as an example the numbers of five and sixes in the Weldon dice throw data.[52]

1904: Karl Pearson develops the concept of "contingency" in order to determine whether outcomes are independent of a given categorical factor. Here the null hypothesis is by default that two things are unrelated (e.g. scar formation and death rates from smallpox).[53] The null hypothesis in this case is no longer predicted by theory or conventional wisdom, but is instead the principle of indifference that led Fisher and others to dismiss the use of "inverse probabilities".[54]


Null hypothesis statistical significance testing

An example of Neyman–Pearson hypothesis testing can be made by a change to the radioactive suitcase example. If the "suitcase" is actually a shielded container for the transportation of radioactive material, then a test might be used to select among three hypotheses: no radioactive source present, one present, two (all) present. The test could be required for safety, with actions required in each case. The Neyman–Pearson lemma of hypothesis testing says that a good criterion for the selection of hypotheses is the ratio of their probabilities (a likelihood ratio). A simple method of solution is to select the hypothesis with the highest probability for the Geiger counts observed. The typical result matches intuition: few counts imply no source, many counts imply two sources and intermediate counts imply one source. Notice also that usually there are problems for proving a negative. Null hypotheses should be at least falsifiable.

Neyman–Pearson theory can accommodate both prior probabilities and the costs of actions resulting from decisions.[55] The former allows each test to consider the results of earlier tests (unlike Fisher's significance tests). The latter allows the consideration of economic issues (for example) as well as probabilities. A likelihood ratio remains a good criterion for selecting among hypotheses.

The two forms of hypothesis testing are based on different problem formulations. The original test is analogous to a true/false question; the Neyman–Pearson test is more like multiple choice. In the view of Tukey[56] the former produces a conclusion on the basis of only strong evidence while the latter produces a decision on the basis of available evidence. While the two tests seem quite different both mathematically and philosophically, later developments lead to the opposite claim. Consider many tiny radioactive sources. The hypotheses become 0,1,2,3... grains of radioactive sand. There is little distinction between none or some radiation (Fisher) and 0 grains of radioactive sand versus all of the alternatives (Neyman–Pearson). The major Neyman–Pearson paper of 1933[57] also considered composite hypotheses (ones whose distribution includes an unknown parameter). An example proved the optimality of the (Student's) _t_-test, "there can be no better test for the hypothesis under consideration" (p 321). Neyman–Pearson theory was proving the optimality of Fisherian methods from its inception.

Fisher's significance testing has proven a popular flexible statistical tool in application with little mathematical growth potential. Neyman–Pearson hypothesis testing is claimed as a pillar of mathematical statistics,[58] creating a new paradigm for the field. It also stimulated new applications in statistical process control, detection theory, decision theory and game theory. Both formulations have been successful, but the successes have been of a different character.

The dispute over formulations is unresolved. Science primarily uses Fisher's (slightly modified) formulation as taught in introductory statistics. Statisticians study Neyman–Pearson theory in graduate school. Mathematicians are proud of uniting the formulations. Philosophers consider them separately. Learned opinions deem the formulations variously competitive (Fisher vs Neyman), incompatible[59] or complementary.[60] The dispute has become more complex since Bayesian inference has achieved respectability.

The terminology is inconsistent. Hypothesis testing can mean any mixture of two formulations that both changed with time. Any discussion of significance testing vs hypothesis testing is doubly vulnerable to confusion.

Fisher thought that hypothesis testing was a useful strategy for performing industrial quality control, however, he strongly disagreed that hypothesis testing could be useful for scientists.[61] Hypothesis testing provides a means of finding test statistics used in significance testing.[62] The concept of power is useful in explaining the consequences of adjusting the significance level and is heavily used in sample size determination. The two methods remain philosophically distinct.[63] They usually (but _not always_) produce the same mathematical answer. The preferred answer is context dependent.[64] While the existing merger of Fisher and Neyman–Pearson theories has been heavily criticized, modifying the merger to achieve Bayesian goals has been considered.[65]


Criticism

Criticism of statistical hypothesis testing fills volumes[66][67][68][69][70][71] citing 300–400 primary references. Much of the criticism can be summarized by the following issues:

-   The interpretation of a _p_-value is dependent upon stopping rule and definition of multiple comparison. The former often changes during the course of a study and the latter is unavoidably ambiguous. (i.e. "p values depend on both the (data) observed and on the other possible (data) that might have been observed but weren't").[72]
-   Confusion resulting (in part) from combining the methods of Fisher and Neyman–Pearson which are conceptually distinct.[73]
-   Emphasis on statistical significance to the exclusion of estimation and confirmation by repeated experiments.[74]
-   Rigidly requiring statistical significance as a criterion for publication, resulting in publication bias.[75] Most of the criticism is indirect. Rather than being wrong, statistical hypothesis testing is misunderstood, overused and misused.
-   When used to detect whether a difference exists between groups, a paradox arises. As improvements are made to experimental design (e.g. increased precision of measurement and sample size), the test becomes more lenient. Unless one accepts the absurd assumption that all sources of noise in the data cancel out completely, the chance of finding statistical significance in either direction approaches 100%.[76]
-   Layers of philosophical concerns. The probability of statistical significance is a function of decisions made by experimenters/analysts.[77] If the decisions are based on convention they are termed arbitrary or mindless[78] while those not so based may be termed subjective. To minimize type II errors, large samples are recommended. In psychology practically all null hypotheses are claimed to be false for sufficiently large samples so "...it is usually nonsensical to perform an experiment with the _sole_ aim of rejecting the null hypothesis.".[79] "Statistically significant findings are often misleading" in psychology.[80] Statistical significance does not imply practical significance and correlation does not imply causation. Casting doubt on the null hypothesis is thus far from directly supporting the research hypothesis.
-   "[I]t does not tell us what we want to know".[81] Lists of dozens of complaints are available.[82][83][84]

Critics and supporters are largely in factual agreement regarding the characteristics of null hypothesis significance testing (NHST): While it can provide critical information, it is _inadequate as the sole tool for statistical analysis_. _Successfully rejecting the null hypothesis may offer no support for the research hypothesis._ The continuing controversy concerns the selection of the best statistical practices for the near-term future given the (often poor) existing practices. Critics would prefer to ban NHST completely, forcing a complete departure from those practices, while supporters suggest a less absolute change.

Controversy over significance testing, and its effects on publication bias in particular, has produced several results. The American Psychological Association has strengthened its statistical reporting requirements after review,[85] medical journal publishers have recognized the obligation to publish some results that are not statistically significant to combat publication bias[86] and a journal (_Journal of Articles in Support of the Null Hypothesis_) has been created to publish such results exclusively.[87] Textbooks have added some cautions[88] and increased coverage of the tools necessary to estimate the size of the sample required to produce significant results. Major organizations have not abandoned use of significance tests although some have discussed doing so.[89]


Alternatives

The numerous criticisms of significance testing do not lead to a single alternative. A unifying position of critics is that statistics should not lead to a conclusion or a decision but to a probability or to an estimated value with an interval estimate rather than to an accept-reject decision regarding a particular hypothesis. It is unlikely that the controversy surrounding significance testing will be resolved in the near future. Its supposed flaws and unpopularity do not eliminate the need for an objective and transparent means of reaching conclusions regarding studies that produce statistical results. Critics have not unified around an alternative. Other forms of reporting confidence or uncertainty could probably grow in popularity. One strong critic of significance testing suggested a list of reporting alternatives:[90] effect sizes for importance, prediction intervals for confidence, replications and extensions for replicability, meta-analyses for generality. None of these suggested alternatives produces a conclusion/decision. Lehmann said that hypothesis testing theory can be presented in terms of conclusions/decisions, probabilities, or confidence intervals. "The distinction between the ... approaches is largely one of reporting and interpretation."[91]

On one "alternative" there is no disagreement: Fisher himself said,[92] "In relation to the test of significance, we may say that a phenomenon is experimentally demonstrable when we know how to conduct an experiment which will rarely fail to give us a statistically significant result." Cohen, an influential critic of significance testing, concurred,[93] "... don't look for a magic alternative to NHST _[null hypothesis significance testing]_ ... It doesn't exist." "... given the problems of statistical induction, we must finally rely, as have the older sciences, on replication." The "alternative" to significance testing is repeated testing. The easiest way to decrease statistical uncertainty is by obtaining more data, whether by increased sample size or by repeated tests. Nickerson claimed to have never seen the publication of a literally replicated experiment in psychology.[94] An indirect approach to replication is meta-analysis.

Bayesian inference is one proposed alternative to significance testing. (Nickerson cited 10 sources suggesting it, including Rozeboom (1960)).[95] For example, Bayesian parameter estimation can provide rich information about the data from which researchers can draw inferences, while using uncertain priors that exert only minimal influence on the results when enough data is available. Psychologist John K. Kruschke has suggested Bayesian estimation as an alternative for the _t_-test.[96] Alternatively two competing models/hypothesis can be compared using Bayes factors.[97] Bayesian methods could be criticized for requiring information that is seldom available in the cases where significance testing is most heavily used. Neither the prior probabilities nor the probability distribution of the test statistic under the alternative hypothesis are often available in the social sciences.[98]

Advocates of a Bayesian approach sometimes claim that the goal of a researcher is most often to objectively assess the probability that a hypothesis is true based on the data they have collected.[99][100] Neither Fisher's significance testing, nor Neyman–Pearson hypothesis testing can provide this information, and do not claim to. The probability a hypothesis is true can only be derived from use of Bayes' Theorem, which was unsatisfactory to both the Fisher and Neyman–Pearson camps due to the explicit use of subjectivity in the form of the prior probability.[101][102] Fisher's strategy is to sidestep this with the _p_-value (an objective _index_ based on the data alone) followed by _inductive inference_, while Neyman–Pearson devised their approach of _inductive behaviour_.


Philosophy

Hypothesis testing and philosophy intersect. Inferential statistics, which includes hypothesis testing, is applied probability. Both probability and its application are intertwined with philosophy. Philosopher David Hume wrote, "All knowledge degenerates into probability." Competing practical definitions of probability reflect philosophical differences. The most common application of hypothesis testing is in the scientific interpretation of experimental data, which is naturally studied by the philosophy of science.

Fisher and Neyman opposed the subjectivity of probability. Their views contributed to the objective definitions. The core of their historical disagreement was philosophical.

Many of the philosophical criticisms of hypothesis testing are discussed by statisticians in other contexts, particularly correlation does not imply causation and the design of experiments. Hypothesis testing is of continuing interest to philosophers.[103][104]


Education

Statistics is increasingly being taught in schools with hypothesis testing being one of the elements taught.[105][106] Many conclusions reported in the popular press (political opinion polls to medical studies) are based on statistics. Some writers have stated that statistical analysis of this kind allows for thinking clearly about problems involving mass data, as well as the effective reporting of trends and inferences from said data, but caution that writers for a broad public should have a solid understanding of the field in order to use the terms and concepts correctly.[107][108][109][110] An introductory college statistics class places much emphasis on hypothesis testing – perhaps half of the course. Such fields as literature and divinity now include findings based on statistical analysis (see the Bible Analyzer). An introductory statistics class teaches hypothesis testing as a cookbook process. Hypothesis testing is also taught at the postgraduate level. Statisticians learn how to create good statistical test procedures (like _z_, Student's _t_, _F_ and chi-squared). Statistical hypothesis testing is considered a mature area within statistics,[111] but a limited amount of development continues.

An academic study states that the cookbook method of teaching introductory statistics leaves no time for history, philosophy or controversy. Hypothesis testing has been taught as received unified method. Surveys showed that graduates of the class were filled with philosophical misconceptions (on all aspects of statistical inference) that persisted among instructors.[112] While the problem was addressed more than a decade ago,[113] and calls for educational reform continue,[114] students still graduate from statistics classes holding fundamental misconceptions about hypothesis testing.[115] Ideas for improving the teaching of hypothesis testing include encouraging students to search for statistical errors in published papers, teaching the history of statistics and emphasizing the controversy in a generally dry subject.[116]


See also

-   Statistics
-   Behrens–Fisher problem
-   Bootstrapping (statistics)
-   Checking if a coin is fair
-   Comparing means test decision tree
-   Complete spatial randomness
-   Counternull
-   Falsifiability
-   Fisher's method for combining independent tests of significance
-   Granger causality
-   Look-elsewhere effect
-   Modifiable areal unit problem
-   Omnibus test
-   Dichotomous thinking
-   Almost sure hypothesis testing


References


Further reading

-   Lehmann E.L. (1992) "Introduction to Neyman and Pearson (1933) On the Problem of the Most Efficient Tests of Statistical Hypotheses". In: _Breakthroughs in Statistics, Volume 1_, (Eds Kotz, S., Johnson, N.L.), Springer-Verlag. (followed by reprinting of the paper)
-


External links

-   -   -   Bayesian critique of classical hypothesis testing
-   Critique of classical hypothesis testing highlighting long-standing qualms of statisticians
-   Dallal GE (2007) The Little Handbook of Statistical Practice (A good tutorial)
-   References for arguments for and against hypothesis testing
-   Statistical Tests Overview: How to choose the correct statistical test

Online calculators

-   MBAStats confidence interval and hypothesis test calculators
-   Some p-value and hypothesis test calculators.

Category:Design of experiments Statistical_hypothesis_testing Category:Psychometrics Category:Logic and statistics Category:Mathematical and quantitative methods (economics)

[1] Stuart A., Ord K., Arnold S. (1999), _Kendall's Advanced Theory of Statistics: Volume 2A—Classical Inference & the Linear Model_ (Arnold) §20.2.

[2]

[3]

[4]

[5]

[6]

[7]

[8] R. A. Fisher (1925)._Statistical Methods for Research Workers_, Edinburgh: Oliver and Boyd, 1925, p.43.

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] "Over the last fifty years, How to Lie with Statistics has sold more copies than any other statistical text." J. M. Steele. ""Darrell Huff and Fifty Years of _How to Lie with Statistics_". _Statistical Science_, 20 (3), 2005, 205–209.

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]  Originally from Fisher's book _Design of Experiments_.

[27]

[28]

[29]

[30]

[31] Schervish, M (1996) _Theory of Statistics_, p. 218. Springer

[32]

[33]

[34] Raymond Hubbard, M. J. Bayarri, _P Values are not Error Probabilities _. A working paper that explains the difference between Fisher's evidential _p_-value and the Neyman–Pearson Type I error rate α.

[35]

[36]

[37]

[38]

[39]

[40] "We are quite in danger of sending highly trained and highly intelligent young men out into the world with tables of erroneous numbers under their arms, and with a dense fog in the place where their brains ought to be. In this century, of course, they will be working on guided missiles and advising the medical profession on the control of disease, and there is no limit to the extent to which they could impede every sort of national effort."

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55] Section 8.2

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]  "Until we go through the accounts of testing hypotheses, separating [Neyman–Pearson] decision elements from [Fisher] conclusion elements, the intimate mixture of disparate elements will be a continual source of confusion." ... "There is a place for both "doing one's best" and "saying only what is certain," but it is important to know, in each instance, both which one is being done, and which one ought to be done."

[74]  "The emphasis given to formal tests of significance throughout [R.A. Fisher's] Statistical Methods ... has caused scientific research workers to pay undue attention to the results of the tests of significance they perform on their data, particularly data derived from experiments, and too little to the estimates of the magnitude of the effects they are investigating." ... "The emphasis on tests of significance and the consideration of the results of each experiment in isolation, have had the unfortunate consequence that scientific workers have often regarded the execution of a test of significance on an experiment as the ultimate objective."

[75]

[76]  Thirty years later, Meehl acknowledged statistical significance theory to be mathematically sound while continuing to question the default choice of null hypothesis, blaming instead the "social scientists' poor understanding of the logical relation between theory and fact" in "The Problem Is Epistemology, Not Statistics: Replace Significance Tests by Confidence Intervals and Quantify Accuracy of Risky Numerical Predictions" (Chapter 14 in Harlow (1997)).

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]  "Hypothesis tests. It is hard to imagine a situation in which a dichotomous accept-reject decision is better than reporting an actual p value or, better still, a confidence interval." (p 599). The committee used the cautionary term "forbearance" in describing its decision against a ban of hypothesis testing in psychology reporting. (p 603)

[86]

[87] _Journal of Articles in Support of the Null Hypothesis_ website: JASNH homepage. Volume 1 number 1 was published in 2002, and all articles are on psychology-related subjects.

[88]

[89]

[90]

[91]

[92]

[93]  This paper lead to the review of statistical practices by the APA. Cohen was a member of the Task Force that did the review.

[94]

[95]

[96]

[97]

[98]

[99]  "...the proper application of statistics to scientific inference is irrevocably committed to extensive consideration of inverse [AKA Bayesian] probabilities..." It was acknowledged, with regret, that a priori probability distributions were available "only as a subjective feel, differing from one person to the next" "in the more immediate future, at least".

[100]  In listing the competing definitions of "objective" Bayesian analysis, "A major goal of statistics (indeed science) is to find a completely coherent objective Bayesian methodology for learning from data." The author expressed the view that this goal "is not attainable".

[101]

[102]

[103]

[104]

[105] Mathematics > High School: Statistics & Probability > Introduction Common Core State Standards Initiative (relates to USA students)

[106] College Board Tests > AP: Subjects > Statistics The College Board (relates to USA students)

[107] 'Statistical methods and statistical terms are necessary in reporting the mass data of social and economic trends, business conditions, "opinion" polls, the census. But without writers who use the words with honesty and readers who know what they mean, the result can only be semantic nonsense.'

[108]  "...the basic ideas in statistics assist us in thinking clearly about the problem, provide some guidance about the conditions that must be satisfied if sound inferences are to be made, and enable us to detect many inferences that have no good logical foundation."

[109]

[110]

[111]

[112]

[113]

[114]  Preprint

[115]

[116]