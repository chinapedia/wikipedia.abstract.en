A POLYGENIC SCORE, also called a POLYGENIC RISK SCORE, GENETIC RISK SCORE, or GENOME-WIDE SCORE, is a number based on variation in multiple genetic loci and their associated weights (see regression analysis).[1][2] It serves as the best prediction for the trait that can be made when taking into account variation in multiple genetic variants.

Polygenic scores are widely employed in animal, plant, and behavioral genetics for predicting and understanding genetic architectures. In a genome-wide association study (GWAS), polygenic scores having substantially higher predictive performance than the genome-wide statistically-significant hits indicates that the trait in question is affected by a larger number of variants than just the hits and larger sample sizes will yield more hits; a conjunction of low variance explained and high heritability as measured by GCTA, twin studies or other methods, indicates that a trait may be massively polygenic and affected by thousands of variants. Once a polygenic score has been created, which explains at least a few percent of a phenotype's variance and can therefore be assumed to effectively incorporate a significant fraction of the genetic variants affecting that phenotype, it can be used in several different ways: as a lower bound to test whether heritability estimates may be biased; as a measure of genetic overlap of traits (genetic correlation), which might indicate e.g. shared genetic bases for groups of mental disorders; as a means to assess group differences in a trait such as height, or to examine changes in a trait over time due to natural selection indicative of a soft selective sweep (as e.g. for intelligence where the changes in frequency would be too small to detect on each individual hit but not on the overall polygenic score); in Mendelian randomization (assuming no pleiotropy with relevant traits); to detect & control for the presence of genetic confounds in outcomes (e.g. the correlation of schizophrenia with poverty); or to investigate gene–environment interactions.

Polygenic scores are widely used in animal breeding and plant breeding (usually termed _genomic prediction_ or _genomic selection_) due to their efficacy in improving livestock breeding and crops.[3] Their use in human studies is increasing.[4][5]


History

One of the first precursors to the modern polygenic score was proposed under the term _marker-based selection_ (MAS) in 1990.[6] According to MAS, breeders are able to increase the efficiency of artificial selection by estimating the regression coefficients of genetic markers that are correlated with differences in the trait of interest and assigning individual animals a "score" from this information. A major development of these fundamentals was proposed in 2001 by researchers who discovered that the use of a Bayesian prior could help to mitigate the problem of the number of markers being greater than the sample of animals.[7]

These methods were first applied to humans in the late 2000s, starting with a proposal in 2007 that these scores could be used in human genetics to identify individuals at high risk for disease.[8] This was successfully applied in empirical research for the first time in 2009 by researchers who organized a genome-wide association study (GWAS) of schizophrenia to construct scores of risk propensity. This study was also the first to use the term _polygenic score_ for a prediction drawn from a linear combination of single-nucleotide polymorphism (SNP) genotypes, which was able to explain 3% of the variance in schizophrenia.[9]

Years of education was the first human cognitive phenotype to be successfully studied in a GWAS. The most recent study of this phenotype was the largest GWAS yet conducted as of 2018, with polygenic scores constructed from 1.1 million participants able to predict upwards of 10% of the variance in various cognitive traits.[10]


Methods of construction

A polygenic score (PGS) is constructed from the "weights" derived from a genome-wide association study (GWAS). In a GWAS, a set of genetic markers (usually SNPs) is genotyped on a training sample, and effect sizes are estimated for each marker's association with the trait of interest. These weights are then used to assign individualized polygenic scores in an independent replication sample.[11] The estimated score, Ŝ, generally follows the form

$$\hat{S} = \sum_{j=1}^{m} X_{j} \hat{\beta}_{j}$$
, where the Ŝ of an individual is equal to the weighted sum of the individual's marker genotypes, X_(j), at m SNPs.[12] Weights are estimated using some form of regression analysis. Because the number of genomic variants is usually larger than the sample size, one cannot use OLS multiple regression (_p_ > _n_ problem[13][14]). Researchers have proposed various methodologies that deal with this problem as well as how to generate the weights of the SNPs, β̂_(j), and how to determine which m SNPs should be included.

Naïve methods

The simplest so-called "naïve" method of construction sets weights equal to the coefficient estimates from a regression of the trait on each genetic variant. The included SNPs may be selected using an algorithm that attempts to ensure that each marker is approximately independent. Failing to account for non-random association of genetic variants will typically reduce the score's predictive accuracy. This is important because genetic variants are often correlated with other nearby variants, such that the weight of a causal variant will be attenuated if it is more strongly correlated with its neighbors than a null variant. This is called linkage disequilibrium, a common phenomenon that arises from the shared evolutionary history of neighboring genetic variants. Further restriction can be achieved by multiple-testing different sets of SNPs selected at various thresholds, such as all SNPs which are genome-wide statistically-significant hits or all SNPs _p_ < 0.05 or all SNPs with _p_ < 0.50, and the one with greatest performance used for further analysis; especially for highly polygenic traits, the best polygenic score will tend to use most or all SNPs.[15]

Bayesian methods

Bayesian approaches, originally pioneered in concept in 2001,[16] attempt to explicitly model preexisting genetic architecture, thereby accounting for the distribution of effect sizes with a prior that should improve the accuracy of a polygenic score. One of the most popular modern Bayesian methods uses "linkage disequilibrium prediction" (_LDpred_ for short) to set the weight for each SNP equal to the average of its posterior distribution after linkage disequilibrium has been accounted for. LDpred tends to outperform simpler methods of pruning and thresholding, especially at large sample sizes; for example, its estimations have improved the predicted variance of a polygenic score for schizophrenia in a large data set from 20.1% to 25.3%.[17]

Penalized regression

Penalized regression methods, such as LASSO and ridge regression, can also be used to improve the accuracy of polygenic scores. Penalized regression can be interpreted as placing informative prior probabilities on how many genetic variants are expected to affect a trait, and the distribution of their effect sizes. In other words, these methods in effect "penalize" the large coefficients in a regression model and shrink them conservatively. Ridge regression accomplishes this by shrinking the prediction with a term that penalizes the sum of the squared coefficients.[18] LASSO accomplishes something similar by penalizing the sum of absolute coefficients.[19] Bayesian counterparts exist for LASSO and ridge regression, and other priors have been suggested and used. They can perform better in some circumstances.[20] A multi-dataset, multi-method study[21] found that of 15 different methods compared across four datasets, minimum redundancy maximum relevance was the best performing method. Furthermore, variable selection methods tended to outperform other methods. Variable selection methods do not use all the available genomic variants present in a dataset, but attempt to select an optimal subset of variants to use. This leads to less overfitting but more bias (see bias-variance tradeoff).


Predictive validity

The benefit of polygenic score is that they can be used to predict the future. This has large practical benefits for animal breeding because it increases the selection precision and allows for shorter generations, both of which speed up evolution.[22][23] For humans, it can be used to predict future disease susceptibility and for embryo selection.[24][25]

Some accuracy values are given below for comparison purposes. These are given in terms of correlations and have been converted from explained variance if given in that format in the source.

In humans

-   In 2016, _r_ ≈ 0.30 for educational attainment variation at age 16.[26] This polygenic score was based off a GWAS using data from 293,000 persons.[27]
-   In 2016, _r_ ≈ 0.31 for case/control status for first-episode psychosis.[28]

In non-human animals

-   In 2016, _r_ ≈ 0.30 for variation in milk fat%.[29]
-   In 2014, _r_ ≈ 0.18 to 0.46 for various measures of meat yield, carcass value etc.[30]

In plants

-   In 2015, _r_ ≈ 0.55 for total root length in Maize (Zea mays L.).[31]
-   In 2014, _r_ ≈ 0.03 to 0.99 across four traits in barley.[32]


References


Further reading

-

Category:Animal breeding Category:Plant breeding Category:Regression analysis Category:Genetics studies Category:Statistical genetics

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

[27]

[28]

[29]

[30]

[31]

[32]