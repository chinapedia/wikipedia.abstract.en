MULTIVARIATE STATISTICS is a subdivision of statistics encompassing the simultaneous observation and analysis of more than one outcome variable. The application of multivariate statistics is multivariate analysis.

Multivariate statistics concerns understanding the different aims and background of each of the different forms of multivariate analysis, and how they relate to each other. The practical application of multivariate statistics to a particular problem may involve several types of univariate and multivariate analyses in order to understand the relationships between variables and their relevance to the problem being studied.

In addition, multivariate statistics is concerned with multivariate probability distributions, in terms of both

:*how these can be used to represent the distributions of observed data;

:*how they can be used as part of statistical inference, particularly where several different quantities are of interest to the same analysis.

Certain types of problems involving multivariate data, for example simple linear regression and multiple regression, are _not_ usually considered to be special cases of multivariate statistics because the analysis is dealt with by considering the (univariate) conditional distribution of a single outcome variable given the other variables.


Types of analysis

There are many different models, each with its own type of analysis:

1.  Multivariate analysis of variance (MANOVA) extends the analysis of variance to cover cases where there is more than one dependent variable to be analyzed simultaneously; see also Multivariate analysis of covariance (MANCOVA).
2.  Multivariate regression attempts to determine a formula that can describe how elements in a vector of variables respond simultaneously to changes in others. For linear relations, regression analyses here are based on forms of the general linear model. Some suggest that multivariate regression is distinct from multivariable regression, however, that is debated and not consistently true across scientific fields.[1]
3.  Principal components analysis (PCA) creates a new set of orthogonal variables that contain the same information as the original set. It rotates the axes of variation to give a new set of orthogonal axes, ordered so that they summarize decreasing proportions of the variation.
4.  Factor analysis is similar to PCA but allows the user to extract a specified number of synthetic variables, fewer than the original set, leaving the remaining unexplained variation as error. The extracted variables are known as latent variables or factors; each one may be supposed to account for covariation in a group of observed variables.
5.  Canonical correlation analysis finds linear relationships among two sets of variables; it is the generalised (i.e. canonical) version of bivariate[2] correlation.
6.  Redundancy analysis (RDA) is similar to canonical correlation analysis but allows the user to derive a specified number of synthetic variables from one set of (independent) variables that explain as much variance as possible in another (independent) set. It is a multivariate analogue of regression.
7.  Correspondence analysis (CA), or reciprocal averaging, finds (like PCA) a set of synthetic variables that summarise the original set. The underlying model assumes chi-squared dissimilarities among records (cases).
8.  Canonical (or "constrained") correspondence analysis (CCA) for summarising the joint variation in two sets of variables (like redundancy analysis); combination of correspondence analysis and multivariate regression analysis. The underlying model assumes chi-squared dissimilarities among records (cases).
9.  Multidimensional scaling comprises various algorithms to determine a set of synthetic variables that best represent the pairwise distances between records. The original method is principal coordinates analysis (PCoA; based on PCA).
10. Discriminant analysis, or canonical variate analysis, attempts to establish whether a set of variables can be used to distinguish between two or more groups of cases.
11. Linear discriminant analysis (LDA) computes a linear predictor from two sets of normally distributed data to allow for classification of new observations.
12. Clustering systems assign objects into groups (called clusters) so that objects (cases) from the same cluster are more similar to each other than objects from different clusters.
13. Recursive partitioning creates a decision tree that attempts to correctly classify members of the population based on a dichotomous dependent variable.
14. Artificial neural networks extend regression and clustering methods to non-linear multivariate models.
15. Statistical graphics such as tours, parallel coordinate plots, scatterplot matrices can be used to explore multivariate data.
16. Simultaneous equations models involve more than one regression equation, with different dependent variables, estimated together.
17. Vector autoregression involves simultaneous regressions of various time series variables on their own and each other's lagged values.
18. Principal response curves analysis (PRC) is a method based on RDA that allows the user to focus on treatment effects over time by correcting for changes in control treatments over time.[3]


Important probability distributions

There is a set of probability distributions used in multivariate analyses that play a similar role to the corresponding set of distributions that are used in univariate analysis when the normal distribution is appropriate to a dataset. These multivariate distributions are:

:*Multivariate normal distribution

:*Wishart distribution

:*Multivariate Student-t distribution. The Inverse-Wishart distribution is important in Bayesian inference, for example in Bayesian multivariate linear regression. Additionally, Hotelling's T-squared distribution is a multivariate distribution, generalising Student's t-distribution, that is used in multivariate hypothesis testing.


History

Anderson's 1958 textbook,'' An Introduction to Multivariate Analysis'',[4] educated a generation of theorists and applied statisticians; Anderson's book emphasizes hypothesis testing via likelihood ratio tests and the properties of power functions: admissibility, unbiasedness and monotonicity.[5][6]


Software and tools

There are an enormous number of software packages and other tools for multivariate analysis, including:

-   JMP (statistical software)
-   MiniTab
-   Calc
-   PSPP
-   R[7]
-   SAS (software)
-   SciPy for Python
-   SPSS
-   Stata
-   STATISTICA
-   The Unscrambler
-   WarpPLS
-   SmartPLS
-   MATLAB
-   Eviews


See also

-   Estimation of covariance matrices
-   Important publications in multivariate analysis
-   Multivariate testing
-   Structured data analysis (statistics)
-   Structural equation modeling
-   RV coefficient


References


Further reading

-   -   -   A. Sen, M. Srivastava, _Regression Analysis — Theory, Methods, and Applications_, Springer-Verlag, Berlin, 2011 (4th printing).
-   -   Malakooti, B. (2013). Operations and Production Systems with Multiple Objectives. John Wiley & Sons.


External links

-   Statnotes: Topics in Multivariate Analysis, by G. David Garson
-   Mike Palmer: The Ordination Web Page
-   InsightsNow: Makers of ReportsNow, ProfilesNow, and KnowledgeNow

Multivariate_statistics

[1]

[2] Unsophisticated analysts of bivariate Gaussian problems may find useful a crude but accurate method of accurately gauging probability by simply taking the sum _S_ of the _N_ residuals' squares, subtracting the sum _Sm_ at minimum, dividing this difference by _Sm_, multiplying the result by (_N_ - 2) and taking the inverse anti-ln of half that product.

[3] ter Braak, Cajo J.F. & Šmilauer, Petr (2012). _Canoco reference manual and user´s guide: software for ordination (version 5.0)_, p292. Microcomputer Power, Ithaca, NY.

[4] T.W. Anderson (1958) '' An Introduction to Multivariate Analysis'', New York: Wiley ; 2e (1984) ; 3e (2003)

[5] (Pages 560–561)

[6]

[7] CRAN has details on the packages available for multivariate data analysis