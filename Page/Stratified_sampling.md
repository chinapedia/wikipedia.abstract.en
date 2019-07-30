In statistics, STRATIFIED SAMPLING is a method of sampling from a population which can be partitioned into subpopulations.

In statistical surveys, when subpopulations within an overall population vary, it could be advantageous to sample each subpopulation (stratum) independently. STRATIFICATION is the process of dividing members of the population into homogeneous subgroups before sampling. The strata should define a partition of the population. That is, it should be COLLECTIVELY EXHAUSTIVE and MUTUALLY EXCLUSIVE: every element in the population must be assigned to one and only one stratum. Then simple random sampling or systematic sampling is applied within each stratum. The objective is to improve the precision of the sample by reducing sampling error. It can produce a weighted mean that has less variability than the arithmetic mean of a simple random sample of the population.

In computational statistics, stratified sampling is a method of variance reduction when Monte Carlo methods are used to estimate population statistics from a known population.[1]

Assume that we need to estimate average number of votes for each candidate in an election. Assume that country has 3 towns: Town A has 1 million factory workers, Town B has 2 million office workers and Town C has 3 million retirees. We can choose to get a random sample of size 60 over the entire population but there is some chance that the random sample turns out to be not well balanced across these towns and hence is biased causing a significant error in estimation. Instead if we choose to take a random sample of 10, 20 and 30 from Town A, B and C respectively then we can produce a smaller error in estimation for the same total size of sample.This method is generally used when population is not a homogeneous group.


Stratified sampling strategies

1.  _Proportionate allocation_ uses a sampling fraction in each of the strata that is proportional to that of the total population. For instance, if the population consists of _X_ total individuals, _m_ of which are male and _f_ female (and where _m_ + _f_ = _X_), then the relative size of the two samples (_x1_ = _m/X_ males, _x2_ = _f/X_ females) should reflect this proportion.
2.  _Optimum allocation_ (or _disproportionate allocation_) - The sampling fraction of each stratum is proportionate to both the proportion (as above) and the standard deviation of the distribution of the variable. Larger samples are taken in the strata with the greatest variability to generate the least possible overall sampling variance.

A real-world example of using stratified sampling would be for a political survey. If the respondents needed to reflect the diversity of the population, the researcher would specifically seek to include participants of various minority groups such as race or religion, based on their proportionality to the total population as mentioned above. A stratified survey could thus claim to be more representative of the population than a survey of simple random sampling or systematic sampling.


Advantages

The reasons to use stratified sampling rather than simple random sampling include[2]

1.  If measurements within strata have lower standard deviation, stratification gives smaller error in estimation.
2.  For many applications, measurements become more manageable and/or cheaper when the population is grouped into strata.
3.  It is often desirable to have estimates of population parameters for groups within the population.

If the population density varies greatly within a region, stratified sampling will ensure that estimates can be made with equal accuracy in different parts of the region, and that comparisons of sub-regions can be made with equal statistical power. For example, in Ontario a survey taken throughout the province might use a larger sampling fraction in the less populated north, since the disparity in population between north and south is so great that a sampling fraction based on the provincial sample as a whole might result in the collection of only a handful of data from the north.


Disadvantages

Stratified sampling is not useful when the population cannot be exhaustively partitioned into disjoint subgroups. It would be a misapplication of the technique to make subgroups' sample sizes proportional to the amount of data available from the subgroups, rather than scaling sample sizes to subgroup sizes (or to their variances, if known to vary significantly -- e.g. by means of an F Test). Data representing each subgroup are taken to be of equal importance if suspected variation among them warrants stratified sampling. If subgroup variances differ significantly and the data needs to be stratified by variance, it is not possible to simultaneously make each subgroup sample size proportional to subgroup size within the total population. For an efficient way to partition sampling resources among groups that vary in their means, variance and costs, see "optimum allocation". The problem of stratified sampling in the case of unknown class priors (ratio of subpopulations in the entire population) can have deleterious effect on the performance of any analysis on the dataset, e.g. classification.[3] In that regard, minimax sampling ratio can be used to make the dataset robust with respect to uncertainty in the underlying data generating process.[4]

Combining sub-strata to ensure adequate numbers can lead to Simpson's paradox, where trends that actually exist in different groups of data disappear or even reverse when the groups are combined.


Mean and standard error

The mean and variance of stratified random sampling are given by:[5]

$$\bar{x} = \frac{1}{N} \sum_{h=1}^L N_h \bar{x_h}$$

$$s_\bar{x}^2 = \sum_{h=1}^L \left(\frac{N_h}{N}\right)^2 \left(\frac{N_h - n_h}{N_h}\right)\frac{s_h^2}{n_h}$$

where,

_L_=
number of strata

_N_=
the sum of all stratum sizes

_N__(_h_)=
size of stratum h

$$\bar{x_h} =$$
sample mean of stratum h

_n__(_h_)=
number of observations in stratum h

_s__(_h_)=
sample standard deviation of stratum h

Note that the term (N_(h) − n_(h)) / (N_(h)), which equals (1 − n_(h) / N_(h)), is a finite population correction and N_(h) must be expressed in "sample units". Foregoing the finite population correction gives:

$$s_\bar{x}^2 = \sum_{h=1}^L \left(\frac{N_h}{N}\right)^2 \frac{s_h^2}{n_h}$$

where the w_(h) = N_(h)/N is the population weight of stratum h.


Sample size allocation

For proportional allocation strategy, the size of the sample in each stratum is taken in proportion to the size of the stratum. Suppose that in a company there are the following staff:[6]

-   male, full-time: 90
-   male, part-time: 18
-   female, full-time: 9
-   female, part-time: 63
-   total: 180

and we are asked to take a sample of 40 staff, stratified according to the above categories.

The first step is to calculate the percentage of each group of the total.

-   % male, full-time = 90 ÷ 180 = 50%
-   % male, part-time = 18 ÷ 180 = 10%
-   % female, full-time = 9 ÷ 180 = 5%
-   % female, part-time = 63 ÷ 180 = 35%

This tells us that of our sample of 40,

-   50% (20 individuals) should be male, full-time.
-   10% (4 individuals) should be male, part-time.
-   5% (2 individuals) should be female, full-time.
-   35% (14 individuals) should be female, part-time.

Another easy way without having to calculate the percentage is to multiply each group size by the sample size and divide by the total population size (size of entire staff):

-   male, full-time = 90 × (40 ÷ 180) = 20
-   male, part-time = 18 × (40 ÷ 180) = 4
-   female, full-time = 9 × (40 ÷ 180) = 2
-   female, part-time = 63 × (40 ÷ 180) = 14


See also

-   Opinion poll
-   Statistical benchmarking
-   Stratified sample size
-   Stratification (clinical trials)


References


Further reading

-

Category:Sampling (statistics) Category:Sampling techniques Category:Variance reduction

[1]

[2]  STAT 506|url = https://onlinecourses.science.psu.edu/stat506/node/27%7Cwebsite = onlinecourses.science.psu.edu|accessdate = 2015-07-23}}

[3]

[4]

[5]

[6]