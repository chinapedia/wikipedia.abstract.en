PERMUTATIONAL MULTIVARIATE ANALYSIS OF VARIANCE (PERMANOVA),[1] is a non-parametric multivariate statistical test. PERMANOVA is used to compare groups of objects and test the null hypothesis that the centroids and dispersion of the groups as defined by measure space are equivalent for all groups. A rejection of the null hypothesis means that either the centroid and/or the spread of the objects is different between the groups. Hence the test is based on the prior calculation of the distance between any two objects included to the experiment. PERMANOVA shares some resemblance to ANOVA where they both measure the sum-of-squares within and between group and make use of F test to compare within-group to between-group variance. However, while ANOVA bases the significance of the result on assumption of normality, PERMANOVA draws tests for significance by comparing the actual F test result to that gained from random permutations of the objects between the groups. Moreover, whilst PERMANOVA tests for similarity based on a chosen distance measure, ANOVA tests for similarity of the group averages.


Calculation of the statistic

In the simple case of a single factor with _p_ groups and _n_ objects in each group,the total sum-of-squares is determined as:

    $SS_T=\frac 1  N \sum_{i=1}^{N-1} \sum_{j=i+1}^N d^2_{ij}$

where _N_ is the total number of objects, and d_(ij)² is the squared distance between objects _i_ and _j_.

Similarly, the within groups sum-of-squares is determined:

    $SS_W=\frac 1 n \sum_{i=1}^{N-1} \sum_{j=i+1}^N d^2_{ij}\epsilon_{ij}$

where ϵ_(ij) takes the value of 1 if observation _i_ and observation _j_ are in the same group, otherwise it takes the value of zero. Then, the between groups sum-of-squares (SS_(A)) can be calculated as the difference between the overall and the within groups sum-of-squares:

    SS_(A) = SS_(T) − SS_(W)

Finally, a pseudo F-statistic is calculated:

    $F=\frac{\left(\dfrac{SS_A}{p-1}\right)}{\left( \dfrac{SS_W}{N-p}\right)}$

where _p_ is the number of groups.


Drawing significance

Finally, the PERMANOVA procedure draws significance for the actual F statistic by performing multiple permutations of the data. In each such the items are shuffled between groups. For each such permutation of the data the permutation F statistic is calculated. The p-value is then calculated by:

    $P = \frac{(\text{count } F^p \geq F)+1}{(\text{total count } F^p)+1}$

Where F is the F statistic obtained from the original data and F^(p) is a permutation F statistic.


Implementation and use

PERMANOVA is widely used in the field of ecology and is implemented in several software packages including PERMANOVA[2] software, PRIMER and R (programming language) Vegan and lmPerm[3] packages.


References


External links

Analysis_of_variance Category:Statistical hypothesis testing Category:Ecology

[1]

[2]

[3]