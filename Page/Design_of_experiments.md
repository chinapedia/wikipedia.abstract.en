Response_surface_metodology.jpg (left), response surface with second-degree polynomial (right)]]

The DESIGN OF EXPERIMENTS (DOE, DOX, or EXPERIMENTAL DESIGN) is the design of any task that aims to describe or explain the variation of information under conditions that are hypothesized to reflect the variation. The term is generally associated with experiments in which the design introduces conditions that directly affect the variation, but may also refer to the design of quasi-experiments, in which natural conditions that influence the variation are selected for observation.

In its simplest form, an experiment aims at predicting the outcome by introducing a change of the preconditions, which is represented by one or more independent variables, also referred to as "input variables" or "predictor variables." The change in one or more independent variables is generally hypothesized to result in a change in one or more dependent variables, also referred to as "output variables" or "response variables." The experimental design may also identify control variables that must be held constant to prevent external factors from affecting the results. Experimental design involves not only the selection of suitable independent, dependent, and control variables, but planning the delivery of the experiment under statistically optimal conditions given the constraints of available resources. There are multiple approaches for determining the set of design points (unique combinations of the settings of the independent variables) to be used in the experiment.

Main concerns in experimental design include the establishment of validity, reliability, and replicability. For example, these concerns can be partially addressed by carefully choosing the independent variable, reducing the risk of measurement error, and ensuring that the documentation of the method is sufficiently detailed. Related concerns include achieving appropriate levels of statistical power and sensitivity.

Correctly designed experiments advance knowledge in the natural and social sciences and engineering. Other applications include marketing and policy making. The study of the design of experiments is an important topic in metascience.


History

Systematic clinical trials

In 1747, while serving as surgeon on HMS _Salisbury_, James Lind carried out a systematic clinical trial to compare remedies for scurvy.[1] This systematic clinical trial constitutes a type of DOE.

Lind selected 12 men from the ship, all suffering from scurvy. Lind limited his subjects to men who "were as similar as I could have them," that is, he provided strict entry requirements to reduce extraneous variation. He divided them into six pairs, giving each pair different supplements to their basic diet for two weeks. The treatments were all remedies that had been proposed:

-   A quart of cider every day.
-   Twenty five gutts (drops) of vitriol (sulphuric acid) three times a day upon an empty stomach.
-   One half-pint of seawater every day.
-   A mixture of garlic, mustard, and horseradish in a lump the size of a nutmeg.
-   Two spoonfuls of vinegar three times a day.
-   Two oranges and one lemon every day.

The citrus treatment stopped after six days when they ran out of fruit, but by that time one sailor was fit for duty while the other had almost recovered. Apart from that, only group one (cider) showed some effect of its treatment. The remainder of the crew presumably served as a control, but Lind did not report results from any control (untreated) group.

Statistical experiments, following Charles S. Peirce

A theory of statistical inference was developed by Charles S. Peirce in "Illustrations of the Logic of Science" (1877–1878) and "A Theory of Probable Inference" (1883), two publications that emphasized the importance of randomization-based inference in statistics.

Randomized experiments

Charles S. Peirce randomly assigned volunteers to a blinded, repeated-measures design to evaluate their ability to discriminate weights.[2][3][4][5] Peirce's experiment inspired other researchers in psychology and education, which developed a research tradition of randomized experiments in laboratories and specialized textbooks in the 1800s.[6][7][8][9]

Optimal designs for regression models

Charles S. Peirce also contributed the first English-language publication on an optimal design for regression models in 1876.[10] A pioneering optimal design for polynomial regression was suggested by Gergonne in 1815. In 1918, Kirstine Smith published optimal designs for polynomials of degree six (and less).

Sequences of experiments

The use of a sequence of experiments, where the design of each may depend on the results of previous experiments, including the possible decision to stop experimenting, is within the scope of Sequential analysis, a field that was pioneered[11] by Abraham Wald in the context of sequential tests of statistical hypotheses.[12] Herman Chernoff wrote an overview of optimal sequential designs,[13] while adaptive designs have been surveyed by S. Zacks.[14] One specific type of sequential design is the "two-armed bandit", generalized to the multi-armed bandit, on which early work was done by Herbert Robbins in 1952.[15]


Fisher's principles

A methodology for designing experiments was proposed by Ronald Fisher, in his innovative books: _The Arrangement of Field Experiments_ (1926) and _The Design of Experiments_ (1935). Much of his pioneering work dealt with agricultural applications of statistical methods. As a mundane example, he described how to test the lady tasting tea hypothesis, that a certain lady could distinguish by flavour alone whether the milk or the tea was first placed in the cup. These methods have been broadly adapted in the physical and social sciences, are still used in agricultural engineering and differ from the design and analysis of computer experiments.

Comparison
    In some fields of study it is not possible to have independent measurements to a traceable metrology standard. Comparisons between treatments are much more valuable and are usually preferable, and often compared against a scientific control or traditional treatment that acts as baseline.

Randomization
    Random assignment is the process of assigning individuals at random to groups or to different groups in an experiment, so that each individual of the population has the same chance of becoming a participant in the study. The random assignment of individuals to groups (or conditions within a group) distinguishes a rigorous, "true" experiment from an observational study or "quasi-experiment".[16] There is an extensive body of mathematical theory that explores the consequences of making the allocation of units to treatments by means of some random mechanism (such as tables of random numbers, or the use of randomization devices such as playing cards or dice). Assigning units to treatments at random tends to mitigate confounding, which makes effects due to factors other than the treatment to appear to result from the treatment.

    The risks associated with random allocation (such as having a serious imbalance in a key characteristic between a treatment group and a control group) are calculable and hence can be managed down to an acceptable level by using enough experimental units. However, if the population is divided into several subpopulations that somehow differ, and the research requires each subpopulation to be equal in size, stratified sampling can be used. In that way, the units in each subpopulation are randomized, but not the whole sample. The results of an experiment can be generalized reliably from the experimental units to a larger statistical population of units only if the experimental units are a random sample from the larger population; the probable error of such an extrapolation depends on the sample size, among other things.

Statistical replication
    Measurements are usually subject to variation and measurement uncertainty; thus they are repeated and full experiments are replicated to help identify the sources of variation, to better estimate the true effects of treatments, to further strengthen the experiment's reliability and validity, and to add to the existing knowledge of the topic.[17] However, certain conditions must be met before the replication of the experiment is commenced: the original research question has been published in a peer-reviewed journal or widely cited, the researcher is independent of the original experiment, the researcher must first try to replicate the original findings using the original data, and the write-up should state that the study conducted is a replication study that tried to follow the original study as strictly as possible.[18]

Blocking
    Blocking is the non-random arrangement of experimental units into groups (blocks/lots) consisting of units that are similar to one another. Blocking reduces known but irrelevant sources of variation between units and thus allows greater precision in the estimation of the source of variation under study.

Orthogonality

Factorial_Design.svg

    Orthogonality concerns the forms of comparison (contrasts) that can be legitimately and efficiently carried out. Contrasts can be represented by vectors and sets of orthogonal contrasts are uncorrelated and independently distributed if the data are normal. Because of this independence, each orthogonal treatment provides different information to the others. If there are _T_ treatments and _T_ – 1 orthogonal contrasts, all the information that can be captured from the experiment is obtainable from the set of contrasts.

Factorial experiments
    Use of factorial experiments instead of the one-factor-at-a-time method. These are efficient at evaluating the effects and possible interactions of several factors (independent variables). Analysis of experiment design is built on the foundation of the analysis of variance, a collection of models that partition the observed variance into components, according to what factors the experiment must estimate or test.


Example

Balance_à_tabac_1850.JPG This example is attributed to Harold Hotelling.[19] It conveys some of the flavor of those aspects of the subject that involve combinatorial designs.

Weights of eight objects are measured using a pan balance and set of standard weights. Each weighing measures the weight difference between objects in the left pan vs. any objects in the right pan by adding calibrated weights to the lighter pan until the balance is in equilibrium. Each measurement has a random error. The average error is zero; the standard deviations of the probability distribution of the errors is the same number σ on different weighings; errors on different weighings are independent. Denote the true weights by

_θ_₁, …, _θ_₈. 

We consider two different experiments:

1.  Weigh each object in one pan, with the other pan empty. Let _X__(_i_) be the measured weight of the object, for _i_ = 1, ..., 8.
2.  Do the eight weighings according to the following schedule and let _Y__(_i_) be the measured difference for _i_ = 1, ..., 8:





\begin{array}{lcc} & \text{left pan} & \text{right pan} \\ \hline \text{1st weighing:} & 1\ 2\ 3\ 4\ 5\ 6\ 7\ 8 & \text{(empty)} \\ \text{2nd:} & 1\ 2\ 3\ 8\ & 4\ 5\ 6\ 7 \\ \text{3rd:} & 1\ 4\ 5\ 8\ & 2\ 3\ 6\ 7 \\ \text{4th:} & 1\ 6\ 7\ 8\ & 2\ 3\ 4\ 5 \\ \text{5th:} & 2\ 4\ 6\ 8\ & 1\ 3\ 5\ 7 \\ \text{6th:} & 2\ 5\ 7\ 8\ & 1\ 3\ 4\ 6 \\ \text{7th:} & 3\ 4\ 7\ 8\ & 1\ 2\ 5\ 6 \\ \text{8th:} & 3\ 5\ 6\ 8\ & 1\ 2\ 4\ 7 \end{array}

    Then the estimated value of the weight _θ_₁ is



        $\widehat{\theta}_1 = \frac{Y_1 + Y_2 + Y_3 + Y_4 - Y_5 - Y_6 - Y_7 - Y_8}{8}.$

    Similar estimates can be found for the weights of the other items. For example





\begin{align} \widehat{\theta}_2 & = \frac{Y_1 + Y_2 - Y_3 - Y_4 + Y_5 + Y_6 - Y_7 - Y_8} 8. \\[5pt] \widehat{\theta}_3 & = \frac{Y_1 + Y_2 - Y_3 - Y_4 - Y_5 - Y_6 + Y_7 + Y_8} 8. \\[5pt] \widehat{\theta}_4 & = \frac{Y_1 - Y_2 + Y_3 - Y_4 + Y_5 - Y_6 + Y_7 - Y_8} 8. \\[5pt] \widehat{\theta}_5 & = \frac{Y_1 - Y_2 + Y_3 - Y_4 - Y_5 + Y_6 - Y_7 + Y_8} 8. \\[5pt] \widehat{\theta}_6 & = \frac{Y_1 - Y_2 - Y_3 + Y_4 + Y_5 - Y_6 - Y_7 + Y_8} 8. \\[5pt] \widehat{\theta}_7 & = \frac{Y_1 - Y_2 - Y_3 + Y_4 - Y_5 + Y_6 + Y_7 - Y_8} 8. \\[5pt] \widehat{\theta}_8 & = \frac{Y_1 + Y_2 + Y_3 + Y_4 + Y_5 + Y_6 + Y_7 + Y_8} 8. \end{align}

The question of design of experiments is: which experiment is better?

The variance of the estimate _X_₁ of θ₁ is σ² if we use the first experiment. But if we use the second experiment, the variance of the estimate given above is σ²/8. Thus the second experiment gives us 8 times as much precision for the estimate of a single item, and estimates all items simultaneously, with the same precision. What the second experiment achieves with eight would require 64 weighings if the items are weighed separately. However, note that the estimates for the items obtained in the second experiment have errors that correlate with each other.

Many problems of the design of experiments involve combinatorial designs, as in this example and others.[20]


Avoiding false positives

False positive conclusions, often resulting from the pressure to publish or the author's own confirmation bias, are an inherent hazard in many fields. A good way to prevent biases potentially leading to false positives in the data collection phase is to use a double-blind design. When a double-blind design is used, participants are randomly assigned to experimental groups but the researcher is unaware of what participants belong to which group. Therefore, the researcher can not affect the participants' response to the intervention. Experimental designs with undisclosed degrees of freedom are a problem.[21] This can lead to conscious or unconscious "p-hacking": trying multiple things until you get the desired result. It typically involves the manipulation - perhaps unconsciously - of the process of statistical analysis and the degrees of freedom until they return a figure below the p<.05 level of statistical significance.[22][23] So the design of the experiment should include a clear statement proposing the analyses to be undertaken. P-hacking can be prevented by preregistering researches, in which researchers have to send their data analysis plan to the journal they wish to publish their paper in before they even start their data collection, so no data manipulation is possible (https://osf.io). Another way to prevent this is taking the double-blind design to the data-analysis phase, where the data are sent to a data-analyst unrelated to the research who scrambles up the data so there is no way to know which participants belong to before they are potentially taken away as outliers.

Clear and complete documentation of the experimental methodology is also important in order to support replication of results.[24]


Discussion topics when setting up an experimental design

An experimental design or randomized clinical trial requires careful consideration of several factors before actually doing the experiment.[25] An experimental design is the laying out of a detailed experimental plan in advance of doing the experiment. Some of the following topics have already been discussed in the principles of experimental design section:

1.  How many factors does the design have, and are the levels of these factors fixed or random?
2.  Are control conditions needed, and what should they be?
3.  Manipulation checks; did the manipulation really work?
4.  What are the background variables?
5.  What is the sample size. How many units must be collected for the experiment to be generalisable and have enough power?
6.  What is the relevance of interactions between factors?
7.  What is the influence of delayed effects of substantive factors on outcomes?
8.  How do response shifts affect self-report measures?
9.  How feasible is repeated administration of the same measurement instruments to the same units at different occasions, with a post-test and follow-up tests?
10. What about using a proxy pretest?
11. Are there lurking variables?
12. Should the client/patient, researcher or even the analyst of the data be blind to conditions?
13. What is the feasibility of subsequent application of different conditions to the same units?
14. How many of each control and noise factors should be taken into account?

The independent variable of a study often has many levels or different groups. In a true experiment, researchers can have an experimental group, which is where their intervention testing the hypothesis is implemented, and a control group, which has all the same element as the experimental group, without the interventional element. Thus, when everything else except for one intervention is held constant, researchers can certify with some certainty that this one element is what caused the observed change. In some instances, having a control group is not ethical. This is sometimes solved using two different experimental groups. In some cases, independent variables cannot be manipulated, for example when testing the difference between two groups who have a different disease, or testing the difference between genders (obviously variables that would be hard or unethical to assign participants to). In these cases, a quasi-experimental design may be used.


Causal attributions

In the pure experimental design, the independent (predictor) variable is manipulated by the researcher - that is - every participant of the research is chosen randomly from the population, and each participant chosen is assigned randomly to conditions of the independent variable. Only when this is done is it possible to certify with high probability that the reason for the differences in the outcome variables are caused by the different conditions. Therefore, researchers should choose the experimental design over other design types whenever possible. However, the nature of the independent variable does not always allow for manipulation. In those cases, researchers must be aware of not certifying about causal attribution when their design doesn't allow for it. For example, in observational designs, participants are not assigned randomly to conditions, and so if there are differences found in outcome variables between conditions, it is likely that there is something other than the differences between the conditions that causes the differences in outcomes, that is - a third variable. The same goes for studies with correlational design. (Adér & Mellenbergh, 2008).


Statistical control

It is best that a process be in reasonable statistical control prior to conducting designed experiments. When this is not possible, proper blocking, replication, and randomization allow for the careful conduct of designed experiments.[26] To control for nuisance variables, researchers institute CONTROL CHECKS as additional measures. Investigators should ensure that uncontrolled influences (e.g., source credibility perception) do not skew the findings of the study. A manipulation check is one example of a control check. Manipulation checks allow investigators to isolate the chief variables to strengthen support that these variables are operating as planned.

One of the most important requirements of experimental research designs is the necessity of eliminating the effects of spurious, intervening, and antecedent variables. In the most basic model, cause (X) leads to effect (Y). But there could be a third variable (Z) that influences (Y), and X might not be the true cause at all. Z is said to be a spurious variable and must be controlled for. The same is true for intervening variables (a variable in between the supposed cause (X) and the effect (Y)), and anteceding variables (a variable prior to the supposed cause (X) that is the true cause). When a third variable is involved and has not been controlled for, the relation is said to be a zero order relationship. In most practical applications of experimental research designs there are several causes (X1, X2, X3). In most designs, only one of these causes is manipulated at a time.


Experimental designs after Fisher

Some efficient designs for estimating several main effects were found independently and in near succession by Raj Chandra Bose and K. Kishen in 1940 at the Indian Statistical Institute, but remained little known until the Plackett–Burman designs were published in _Biometrika_ in 1946. About the same time, C. R. Rao introduced the concepts of orthogonal arrays as experimental designs. This concept played a central role in the development of Taguchi methods by Genichi Taguchi, which took place during his visit to Indian Statistical Institute in early 1950s. His methods were successfully applied and adopted by Japanese and Indian industries and subsequently were also embraced by US industry albeit with some reservations.

In 1950, Gertrude Mary Cox and William Gemmell Cochran published the book _Experimental Designs,_ which became the major reference work on the design of experiments for statisticians for years afterwards.

Developments of the theory of linear models have encompassed and surpassed the cases that concerned early writers. Today, the theory rests on advanced topics in linear algebra, algebra and combinatorics.

As with other branches of statistics, experimental design is pursued using both frequentist and Bayesian approaches: In evaluating statistical procedures like experimental designs, frequentist statistics studies the sampling distribution while Bayesian statistics updates a probability distribution on the parameter space.

Some important contributors to the field of experimental designs are C. S. Peirce, R. A. Fisher, F. Yates, C. R. Rao, R. C. Bose, J. N. Srivastava, Shrikhande S. S., D. Raghavarao, W. G. Cochran, O. Kempthorne, W. T. Federer, V. V. Fedorov, A. S. Hedayat, J. A. Nelder, R. A. Bailey, J. Kiefer, W. J. Studden, A. Pázman, F. Pukelsheim, D. R. Cox, H. P. Wynn, A. C. Atkinson, G. E. P. Box and G. Taguchi. The textbooks of D. Montgomery, R. Myers, and G. Box/W. Hunter/J.S. Hunter have reached generations of students and practitioners. [27] [28] [29] [30] [31]

Some discussion of experimental design in the context of system identification (model building for static or dynamic models) is given in [32] and [33].


Human participant constraints

Laws and ethical considerations preclude some carefully designed experiments with human subjects. Legal constraints are dependent on jurisdiction. Constraints may involve institutional review boards, informed consent and confidentiality affecting both clinical (medical) trials and behavioral and social science experiments.[34] In the field of toxicology, for example, experimentation is performed on laboratory _animals_ with the goal of defining safe exposure limits for _humans_.[35] Balancing the constraints are views from the medical field.[36] Regarding the randomization of patients, "... if no one knows which therapy is better, there is no ethical imperative to use one therapy or another." (p 380) Regarding experimental design, "...it is clearly not ethical to place subjects at risk to collect data in a poorly designed study when this situation can be easily avoided...". (p 393)


See also

-   Adversarial collaboration
-   Bayesian experimental design
-   Block design
-   Box–Behnken design
-   Central composite design
-   Clinical trial
-   Clinical study design
-   Computer experiment
-   Control variable
-   Controlling for a variable
-   Experimetrics (econometrics-related experiments)
-   Factor analysis
-   Fractional factorial design
-   Glossary of experimental design
-   Grey box model
-   Industrial engineering
-   Instrument effect
-   Law of large numbers
-   Manipulation checks
-   Multifactor design of experiments software
-   One-factor-at-a-time method
-   Optimal design
-   Plackett-Burman design
-   Probabilistic design
-   Protocol (natural sciences)
-   Quasi-experimental design
-   Randomized block design
-   Randomized controlled trial
-   Research design
-   Robust parameter design
-   Sample size determination
-   Supersaturated design
-   Survey sampling
-   System identification
-   Taguchi methods


References

Sources

-   Peirce, C. S. (1877–1878), "Illustrations of the Logic of Science" (series), _Popular Science Monthly_, vols. 12-13. Relevant individual papers:
    -   (1878 March), "The Doctrine of Chances", _Popular Science Monthly_, v. 12, March issue, pp. 604–615. _Internet Archive_ Eprint.
    -   (1878 April), "The Probability of Induction", _Popular Science Monthly_, v. 12, pp. 705–718. _Internet Archive_ Eprint.
    -   (1878 June), "The Order of Nature", _Popular Science Monthly_, v. 13, pp. 203–217._Internet Archive_ Eprint.
    -   (1878 August), "Deduction, Induction, and Hypothesis", _Popular Science Monthly_, v. 13, pp. 470–482. _Internet Archive_ Eprint.
    -   Peirce, C. S. (1883), "A Theory of Probable Inference", _Studies in Logic_, pp. 126-181, Little, Brown, and Company. (Reprinted 1983, John Benjamins Publishing Company, )


External links

-   A chapter from a "NIST/SEMATECH Handbook on Engineering Statistics" at NIST
-   Box–Behnken designs from a "NIST/SEMATECH Handbook on Engineering Statistics" at NIST
-   Detailed mathematical developments of most common DoE in the Opera Magistris v3.6 online reference Chapter 15, section 7.4, .

{{-}}

Design_of_experiments Category:Statistical theory Category:Industrial engineering Category:Systems engineering Category:Statistical process control Category:Quantitative research Category:Experiments Category:Metascience

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] , actually published 1879, NOAA PDF Eprint.
Reprinted in _Collected Papers_ 7, paragraphs 139–157, also in _Writings_ 4, pp. 72–78, and in

[11] Johnson, N.L. (1961). "Sequential analysis: a survey." _Journal of the Royal Statistical Society_, Series A. Vol. 124 (3), 372–411. (pages 375–376)

[12] Wald, A. (1945) "Sequential Tests of Statistical Hypotheses", Annals of Mathematical Statistics, 16 (2), 117–186.

[13]

[14] Zacks, S. (1996) "Adaptive Designs for Parametric Models". In: Ghosh, S. and Rao, C. R., (Eds) (1996). "Design and Analysis of Experiments," _Handbook of Statistics_, Volume 13. North-Holland. . (pages 151–180)

[15]

[16] Creswell, J.W. (2008), _Educational research: Planning, conducting, and evaluating quantitative and qualitative research (3rd edition)_, Upper Saddle River, NJ: Prentice Hall. 2008, p. 300.

[17]

[18]

[19] Herman Chernoff, _Sequential Analysis and Optimal Design_, SIAM Monograph, 1972.

[20]

[21]

[22]

[23]

[24]

[25] Ader, Mellenberg & Hand (2008) "Advising on Research Methods: A consultant's companion"

[26] Bisgaard, S (2008) "Must a Process be in Statistical Control before Conducting Designed Experiments?", _Quality Engineering_, ASQ, 20 (2), pp 143 - 176

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]