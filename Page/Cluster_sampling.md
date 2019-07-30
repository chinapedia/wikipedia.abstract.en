CLUSTER SAMPLING is a sampling plan used when mutually homogeneous yet internally heterogeneous groupings are evident in a statistical population. It is often used in marketing research. In this sampling plan, the total population is divided into these groups (known as clusters) and a simple random sample of the groups is selected. The elements in each cluster are then sampled. If all elements in each sampled cluster are sampled, then this is referred to as a "one-stage" cluster sampling plan. If a simple random subsample of elements is selected within each of these groups, this is referred to as a "two-stage" cluster sampling plan. A common motivation for cluster sampling is to reduce the total number of interviews and costs given the desired accuracy. For a fixed sample size, the expected random error is smaller when most of the variation in the population is present internally within the groups, and not between the groups.


Cluster elements

The population within a cluster should ideally be as heterogeneous as possible, but there should be homogeneity between clusters. Each cluster should be a small-scale representation of the total population. The clusters should be mutually exclusive and collectively exhaustive. A random sampling technique is then used on any relevant clusters to choose which clusters to include in the study. In single-stage cluster sampling, all the elements from each of the selected clusters are sampled. In two-stage cluster sampling, a random sampling technique is applied to the elements from each of the selected clusters.

The main difference between cluster sampling and stratified sampling is that in cluster sampling the cluster is treated as the sampling unit so sampling is done on a population of clusters (at least in the first stage). In stratified sampling, the sampling is done on elements within each strata. In stratified sampling, a random sample is drawn from each of the strata, whereas in cluster sampling only the selected clusters are sampled. A common motivation of cluster sampling is to reduce costs by increasing sampling efficiency. This contrasts with stratified sampling where the motivation is to increase precision.

There is also multistage cluster sampling, where at least two stages are taken in selecting elements from clusters.


When clusters are of different sizes

Without modifying the estimated parameter, cluster sampling is unbiased when the clusters are approximately the same size. In this case, the parameter is computed by combining all the selected clusters. When the clusters are of different sizes, probability proportionate to size sampling is used. In this sampling plan, the probability of selecting a cluster is proportional to its size, so that a large cluster has a greater probability of selection than a small cluster. However, when clusters are selected with probability proportionate to size, the same number of interviews should be carried out in each sampled cluster so that each unit sampled has the same probability of selection.


Applications of cluster sampling

An example of cluster sampling is area sampling or geographical cluster sampling. Each cluster is a geographical area. Because a geographically dispersed population can be expensive to survey, greater economy than simple random sampling can be achieved by grouping several respondents within a local area into a cluster. It is usually necessary to increase the total sample size to achieve equivalent precision in the estimators, but cost savings may make such an increase in sample size feasible.

Cluster sampling is used to estimate high mortalities in cases such as wars, famines and natural disasters.[1]


Advantage

-   Can be cheaper than other sampling plans – e.g. fewer travel expenses, administration costs.
-   Feasibility: This sampling plan takes large populations into account. Since these groups are so large, deploying any other sampling plan would be very costly.
-   Economy: The regular two major concerns of expenditure, i.e., traveling and listing, are greatly reduced in this method. For example: Compiling research information about every household in a city would be very costly, whereas compiling information about various blocks of the city will be more economical. Here, traveling as well as listing efforts will be greatly reduced.
-   Reduced variability: When estimates are being considered by any other method, reduced variability in results are observed. This may not be an ideal situation every time.

Major use: when sampling frame of all elements is not available we can resort only to the cluster sampling.


Disadvantage

-   Higher sampling error, which can be expressed in the so-called "design effect", the ratio between the number of subjects in the cluster study and the number of subjects in an equally reliable, randomly sampled unclustered study.[2]
-   Biased samples: If the group in population that is chosen as a sample has a biased opinion, then the entire population is inferred to have the same opinion. This may not be the actual case.
-   Errors: The other probabilistic methods give fewer errors than this method. For this reason, it is discouraged for beginners.


More on cluster sampling

Two-stage cluster sampling

Two-stage cluster sampling, a simple case of multistage sampling, is obtained by selecting cluster samples in the first stage and then selecting sample of elements from every sampled cluster. Consider a population of _N_ clusters in total. In the first stage, _n_ clusters are selected using ordinary cluster sampling method. In the second stage, simple random sampling is usually used.[3] It is used separately in every cluster and the numbers of elements selected from different clusters are not necessarily equal. The total number of clusters _N_, number of clusters selected _n_, and numbers of elements from selected clusters need to be pre-determined by the survey designer. Two-stage cluster sampling aims at minimizing survey costs and at the same time controlling the uncertainty related to estimates of interest.[4] This method can be used in health and social sciences. For instance, researchers used two-stage cluster sampling to generate a representative sample of the Iraqi population to conduct mortality surveys.[5] Sampling in this method can be quicker and more reliable than other methods, which is why this method is now used frequently.

Inference when the number of clusters is small

Cluster sampling methods can lead to significant bias when working with a small number of clusters. For instance, it can be necessary to cluster at the state or city level, units that may be small and fixed in number. Microeconometrics methods for panel data often use short panels, which is analogous to having few observations per clusters and many clusters. The small cluster problem can be viewed as an incidental parameter problem.[6] While the point estimates can be reasonably precisely estimated, if the number of observations per cluster is sufficiently high, we need the number of clusters G → ∞ for the asymptotics to kick in. If the number of clusters is low the estimated covariance matrix can be downward biased.[7]

Small numbers of clusters is a risk when there is serial correlation or when there is intraclass correlation as in the Moulton context. When having few clusters, we tend to underestimate serial correlation across observations when a random shock occurs, or the intraclass correlation in a Moulton setting.[8] Several studies have highlighted the consequences of serial correlation correlation and highlighted the small-cluster problem.[9][10]

In the framework of the Moulton factor, an intuitive explanation of the small cluster problem can be derived from the formula for the Moulton factor. Assume for simplicity that the number of observation per cluster is fixed at _n_. Below, V_(c)(β) stands for the covariance matrix adjusted for clustering, V(β) stands for the covariance matrix not adjusted for clustering, and ρ stands for the intraclass correlation:

$\frac{V_{c}(\hat\beta)}{V(\hat\beta)}=1+(n-1)\rho$

The ratio on the left-hand side provides an indication of how much the unadjusted scenario overestimates the precision. Therefore, a high number means a strong downward bias of the estimated covariance matrix. A small cluster problem can be interpreted as a large n: when the data is fixed and the number of clusters is low, the number of data within a cluster can be high. It follows that inference when the number of clusters is small will not have correct coverage.[11]

Several solutions for the small cluster problem have been proposed. One can use a bias-corrected cluster-robust variance matrix, make T-distribution adjustments, or use bootstrap methods with asymptotic refinements, such as the percentile-t or wild bootstrap, that can lead to improved finite sample inference.[12] Cameron, Gelbach and Miller (2008) provide microsimulations for different methods and find that the wild bootstrap performs well in the face of a small number of clusters.[13]


See also

-   Multistage sampling
-   Sampling (statistics)
-   Simple random sampling
-   Stratified sampling


References

Category:Sampling techniques Category:Market research

[1] David Brown, Study Claims Iraq's 'Excess' Death Toll Has Reached 655,000, _Washington Post_, Wednesday, October 11, 2006. Retrieved September 14, 2010.

[2] Kerry and Bland (1998). Statistics notes: The intracluster correlation coefficient in cluster randomization. _British Medical Journal_, 316, 1455–1460.

[3]

[4]

[5]

[6] Cameron A. C. and P. K. Trivedi (2005): Microeconometrics: Methods and Applications. Cambridge University Press, New York.

[7] Cameron, C. and D. L. Miller (2015): A Practitioner's Guide to Cluster-Robust Inference. Journal of Human Resources 50(2), pp. 317-372.

[8] Angrist, J.D. and J.-S. Pischke (2009): Mostly Harmless Econometrics. An empiricist's companion. Princeton University Press, New Jersey.

[9] Bertrand, M., E. Duflo and S. Mullainathan (2004): How Much Should We Trust Differences-in-Differences Estimates? Quarterly Journal of Economics 119(1), pp. 249-275.

[10] Kezdi, G. (2004): Robust Standard Error Estimation in Fixed-Effect Panel Models. Hungarian Statistical Review 9, pp. 95-116.

[11]

[12]

[13] Cameron, C., J. Gelbach and D. L. Miller (2008): Bootstrap-Based Improvements for Inference with Clustered Errors. The Review of Economics and Statistics 90, pp. 414-427.