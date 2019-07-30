The FECAL EGG COUNT REDUCTION TEST was suggested in the World Association for the Advancement of Veterinary Parasitology guideline for estimating the reduction in fecal egg counts and its corresponding confidence interval. [1] The results of this test can be used to determine the anthelmintic resistance status of the animals.

Generally an analytical sensitivity of 50 is used, 15 is also possible if a greater sensitivity is desired. In order to reduce the counting variability, using groups of at least 10-15 animals was suggested, depending on the animal species of interest. In addition, the mean pre-treatment fecal egg counts should be at least 150 eggs per gram, otherwise the test can give unreliable results.


Mathematical formulation

Suppose a group of n_(T) animals received anthelmintic treatment and a group of n_(C) animals serves as control. The percentage reduction in fecal egg counts can be calculated as

$\text{Percentage reduction } = 100\times \left(1-\frac{\bar{x}_T}{\bar{x}_C}\right)$

where x̄_(T) and x̄_(C) denote the mean counts of the treatment and the control group. Assuming independence, the estimated asymptotic variance of the log ratio is given by

$\widehat{\text{Var}}\left(\log{\frac{\bar{X}_T}{\bar{X}_C}}\right)=\frac{s^2_T}{n_T \bar{x}^2_T}+\frac{s^2_C}{n_C \bar{x}^2_C}.$

where X̄_(T) and X̄_(C) denote the means of random samples, s_(T)² and s_(C)² denote the sample variance of the treatment and the control group counts. The variance can be used to construct an approximate 95% CI of the log ratio using the 97.5% and the 2.5% quantile of a Student's t-distribution with n_(T) + n_(C) − 2 degrees of freedom. The CI for the log-ratio can be then transformed back to obtain the 95% CI for the estimated reduction.


Results interpretation

The World Association for the Advancement of Veterinary Parasitology guideline [2] states that for sheep and goats, the resistance is present if

(i) the percentage reduction in fecal egg counts is less than 95% and,

(ii) the corresponding lower 95% confidence limit is less than 90%.

If only one of these two criterion is met, then an anthelmintic resistance is suspected. Different thresholds have been suggested for other livestock.


Criticism and current alternatives

Firstly, the conventional counting techniques such as the McMaster method introduce additional variability in the counts which is not accounted for in the fecal egg count reduction test. [3] As a result, the estimated percentage reduction are less reliable especially for low counts. Secondly, the distribution of egg counts is typically aggregated within the host population. There were several attempts to propose more elaborate statistical models in the past years. [4][5] An emerging class of statistical model, namely Bayesian hierarchical models, has been proposed to overcome these problems. [6][7][8][9][10] Easy-to-use software [11][12] and website interface [13] based on those sophisticated but reliable statistical models are available to aid veterinary researchers.


Reference

Category:Veterinary parasitology

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