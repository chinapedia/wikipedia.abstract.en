PSYCHOLOGICAL STATISTICS is application of formulas, theorems, numbers and laws to psychology. Statistical Methods for psychology include development and application statistical theory and methods for modeling psychological data. These methods include psychometrics, Factor analysis, Experimental Designs, Multivariate Behavioral Research. The article also discusses journals in the same field Wilcox, R. (2012).[1]


Psychometrics

Psychometrics deals with measurement of psychological attributes. It involved developing and applying statistical models for mental measurements (Lord and Novik, ; etc.) The measurement theories are divided into two major areas: (1) Classical test theory; (2) Item Response Theory (Nunnally, J. & Bernstein, I. (1994)[2]).

Classical Test Theory

The classical test theory or true score theory or reliability theory in statistics is a set of statistical procedures useful for development of psychological tests and scales. It is based on fundamental equation X = T + E where, X is total score, T is a true score and E is error of measurement. For each participant, it assumes that there exist a true score and it need to be obtained score (X) has to be as close to it as possible (Lord, F. M. , and Novick, M. R. ( 1 968),[3] Raykov, T. & Marcoulides, G.A. (2010) [4] ). The closeness of X has with T is expressed in terms of ratability of the obtained score. The reliability in terms of classical test procedure is correlation between true score and obtained score. The typical test construction procedures has following steps:

(1) Determine the construct (2) Outline the behavioral domain of the construct (3) Write 3 to 5 times more items than desired test length (4) Get item content analyzed by experts and cull items (5) Obtain data on initial version of the test (6) Item analysis (Statistical Procedure) (7) Factor analysis (Statistical Procedure) (8) After the second cull, make final version (9) Use it for research

Reliability

The reliability is computed in specific ways. (A) Inter-Rater reliability: Inter-Rater reliability is estimate of agreement between independent raters. This is most useful for subjective responses. Cohen’s Kappa, Krippendorff’s Alpha, Intra-Class correlation coefficients, Correlation coefficients, Kendal’s concordance coefficient, etc. are useful statistical tools. (B) Test-Retest Reliability: Test-Retest Procedure is estimation of temporal consistency of the test. A test is administered twice to the same sample with a time interval. Correlation between two sets of scores is used as an estimate of reliability. Testing conditions are assumed to be identical. (C) Internal Consistency Reliability: Internal consistency reliability estimates consistency of items with each other. Split-half reliability (Spearman- Brown Prophecy) and Cronbach Alpha are popular estimates of this reliability . (Cronbach LJ (1951)[5]). (D) Parallel Form Reliability: It is an estimate of consistency between two different instruments of measurement. The inter-correlation between two parallel forms of a test or scale is used as an estimate of parallel form reliability.

Validity

Validity of a scale or test is ability of the instrument to measure what it purports to measure (Nunnally, J. & Bernstein, I. (1994)[6]). Construct validity, Content Validity, Criterion Validity are types of validity. Construct validity is estimated by convergent and discriminant validity and factor analysis. Convergent and discriminant validity are ascertained by correlation between similar of different constructs. Content Validity: Subject matter experts evaluate content validity. Criterion Validity is correlation between the test and a criterion variable (or variables) of the construct. Regression analysis, Multiple regression analysis, Logistic regression is used as an estimate of criterion validity. Software applications: The R software has ‘psych’ package that is useful for classical test theory analysis.[7]

Modern test Theory

The modern test theory is based on latent trait model. Every item estimates the ability of the test taker. The ability parameter is called as theta (θ). The difficulty parameter is called b. the two important assumptions are local independence and unidimensionality. The Item Response Theory has three models. They are one parameter logistic model, two parameter logistic model and three parameter logistic model. In addition, Polychromous IRT Model are also useful (Hambleton & Swaminathan, 1985).[8]

The R Software has ‘ltm’, packages useful for IRT analysis.


Factor Analysis

Factor analysis is at the core of psychological statistics. It has two schools: (1) Exploratory Factor analysis (2) Confirmatory Factor analysis

Exploratory Factor Analysis (EFA)

The exploratory factor analysis begins without a theory or with a very tentative theory. It is a dimension reduction technique. It is useful in psychometrics, multivariate analysis of data and data analytics. Typically a k-dimensional correlation matrix or covariance matrix of variables is reduced to k X r factor pattern matrix where r < k. Principal Component analysis and common factor analysis are two ways of extracting data. Principal axis factoring, ML factor analysis, alpha factor analysis and image factor analysis is most useful ways of EFA. It employees various factor rotation methods which can be classified into orthogonal (resulting in uncorrelated factors) and oblique (resulting correlated factors).

The ‘psych’ package in R is useful for EFA.

Confirmatory Factor Analysis (CFA)

Confirmatory Factor Analysis (CFA) is factor analytic technique that begins with theory and test the theory by carrying out factor analysis. The CFA is also called as latent structure analysis, which considers factor as latent variables causing actual observable variables. The basic equation of the CFA is

X = Λξ + δ

where, X is observed variables, Λ are structural coefficients, ξ are latent variables (factors) and δ are errors. The parameters are estimated using ML methods however; other methods of estimation are also available. The chi-square test is very sensitive and hence various fit measures are used (Bollen,1989,[9] Loehlin, 1992[10]). R package ‘sem’, ‘lavaan’ are useful for the same.


Experimental Design

Experimental Methods are very popular in psychology. It has more than 100 years tradition. Experimental psychology has a status of sub-discipline in psychology . The statistical methods are applied for designing and analyzing experimental data. They involve, t-test, ANOVA, ANCOVA, MANOVA, MANCOVA, binomial test, chi-square etc. are used for the analysis of the experimental data.


Multivariate Behavioral Research

Multivariate behavioral research is becoming very popular in psychology. These methods include Multiple Regression and Prediction; Moderated and Mediated Regression Analysis; Logistics Regression; Canonical Correlations; Cluster analysis; Multi-level modeling; Survival-Failure analysis; Structural Equations Modeling; hierarchical linear modelling etc. are very useful for psychological statistics (Hayes, 2013;[11] Agresti, 1990;[12] Loehlin, 1992;[13] Menard, 2001;[14] Tabachnick, & Fidell, 2007[15]).


Journals for statistical application for psychology

There are many specialized journals that publish advances in statistical analysis for psychology. Psychometrika is at the forefront. Educational and Psychological Measurement, Assessment, American Journal of Evaluation, Applied Psychological Measurement, Behavior Research Methods, British Journal of Mathematical and Statistical Psychology, Journal of Educational and Behavioral Statistics, Journal of Mathematical Psychology, Multivariate Behavioral Research, Psychological Assessment, Structural Equation Modeling are other useful journals.


Software Packages for Psychological Research

Various software packages are available for statistical methods for psychological research. They can be classified as commercial software (e.g., JMP and SPSS) and Open-Source (e.g., R). Among the free-wares, the R software is most popular one. There are many online references for R and specialised books on R for Psychologist are also being written (e.g., Belhekar, 2016 [16]). The "psych" package of R is very useful for psychologists. Among others, "lavaan", "sem", "ltm", "ggplot2" are some of the popular packages. PSPP and KNIME are other free packages. Among the commercial packages include JMP, SPSS and SAS. JMP and SPSS are commonly reported in books.


See also

-   Quantitative psychology


References

-   Agresti, A. (1990). Categorical data analysis. Wiley: NJ.
-   Bollen, KA. (1989). Structural Equations with Latent Variables. New York: John Wiley & Sons.
-   Belhekar, V. M. (2016). Statistics for Psychology Using R, New Delhi: SAGE.
-   -   Cohen, B.H. (2007) _Explaining Psychological Statistics, 3rd Edition_, Wiley.
-   Cronbach LJ (1951). Coefficient alpha and the internal structure of tests. Psychometrika 16, 297–334. doi:10.1007/bf02310555
-   Hambleton, R. K., & Swaminathan H. (1985). Item Response theory: Principles and Applications. Boston: Kluwer.
-   Harman, H. H. (1976). Modern Factor Analysis(3rd ed.). Chicago: University of Chicago Press.
-   Hayes, A. F. (2013). Introduction to mediation, moderation, and conditional process analysis. The Guilford Press: NY.
-   Howell, D. (2009) _Statistical Methods for Psychology, International Edition_, Wadsworth.
-   Kline, T. J. B. (2005)Psychological Testing: A Practical Approach to Design and Evaluation. Sage Publications: Thousand Oaks.
-   Loehlin, J. E. (1992). Latent Variable Models: An Introduction to Factor, Path, and Structural Analysis (2nd ed.). Hillsdale, NJ: Lawrence Erlbaum.
-   Lord, F. M. , and Novick, M. R. ( 1 968). Statistical theories of mental test scores. Reading, Mass. : Addison-Wesley, 1968.
-   Menard, S. (2001). Applied logistic regression analysis. (2nd ed.). Thousand Oaks. CA: Sage Publications.
-   Nunnally, J. & Bernstein, I. (1994). Psychometric Theory. McGraw-Hill.
-   Raykov, T. & Marcoulides, G.A. (2010) Introduction to Psychometric Theory. New York: Routledge.
-   Tabachnick, B. G., & Fidell, L. S. (2007). Using Multivariate Statistics, 6th ed. Boston: Pearson.
-   Wilcox, R. (2012). Modern Statistics for the Social and Behavioral Sciences: A Practical Introduction. FL: CRC Press.

Specific


External links

-   CRAN Webpage for R
-   Page for R functions for psychological statistics
-   Charles McCreery's tutorials on chi-square, probability and Bayes’ theorem for Oxford University psychology students
-   Matthew Rockloff's tutorials on t-tests, correlation and ANOVA
-   YouTube videos on statistics for psychology by Vivek Belhekar

Category:Psychometrics Category:Psychology experiments Category:Psychology lists Category:Applied statistics

[1] Wilcox, R. (2012). Modern Statistics for the Social and Behavioral Sciences: A Practical Introduction. FL: CRC Press.

[2] Nunnally, J. & Bernstein, I. (1994). Psychometric Theory. McGraw-Hill.

[3] Lord, F. M. , and Novick, M. R. ( 1 968). Statistical theories of mental test scores. Reading, Mass. : Addison-Wesley, 1968.

[4] Raykov, T. & Marcoulides, G.A. (2010) Introduction to Psychometric Theory. New York: Routledge.

[5] Cronbach LJ (1951). Coefficient alpha and the internal structure of tests. Psychometrika 16, 297–334. doi:10.1007/bf02310555

[6]

[7] Kline, T. J. B. (2005)Psychological Testing: A Practical Approach to Design and Evaluation. Sage Publications: Thousand Oaks.

[8] Hambleton, R. K., & Swaminathan H. (1985). Item Response theory: Principles and Applications. Boston: Kluwer.

[9] Bollen, KA. (1989). Structural Equations with Latent Variables. New York: John Wiley & Sons.

[10] Loehlin, J. E. (1992). Latent Variable Models: An Introduction to Factor, Path, and Structural Analysis (2nd ed.). Hillsdale, NJ: Lawrence Erlbaum.

[11] Hayes, A. F. (2013). Introduction to mediation, moderation, and conditional process analysis. The Guilford Press: NY.

[12] Agresti, A. (1990). Categorical data analysis. Wiley: NJ.

[13]

[14] Menard, S. (2001). Applied logistic regression analysis. (2nd ed.). Thousand Oaks. CA: Sage Publications.

[15] Tabachnick, B. G., & Fidell, L. S. (2007). Using Multivariate Statistics, 5th ed. Boston: Allyn and Bacon.

[16] Belhekar, V. M. (2016). Statistics for Psychology Using R, New Delhi: SAGE.