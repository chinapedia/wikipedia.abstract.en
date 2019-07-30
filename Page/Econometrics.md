ECONOMETRICS is the application of statistical methods to economic data in order to give empirical content to economic relationships.[1] More precisely, it is "the quantitative analysis of actual economic phenomena based on the concurrent development of theory and observation, related by appropriate methods of inference".[2] An introductory economics textbook describes econometrics as allowing economists "to sift through mountains of data to extract simple relationships".[3] The first known use of the term "econometrics" (in cognate form) was by Polish economist Paweł Ciompa in 1910.[4] Jan Tinbergen is considered by many to be one of the founding fathers of econometrics.[5][6][7] Ragnar Frisch is credited with coining the term in the sense in which it is used today.[8]

A basic tool for econometrics is the multiple linear regression model.[9] Econometric theory uses statistical theory and mathematical statistics to evaluate and develop econometric methods.[10][11] Econometricians try to find estimators that have desirable statistical properties including unbiasedness, efficiency, and consistency. _Applied econometrics_ uses theoretical econometrics and real-world data for assessing economic theories, developing econometric models, analysing economic history, and forecasting.


Basic models: linear regression

A basic tool for econometrics is the multiple linear regression model.[12] In modern econometrics, other statistical tools are frequently used, but linear regression is still the most frequently used starting point for an analysis.[13] Estimating a linear regression on two variables can be visualised as fitting a line through data points representing paired values of the independent and dependent variables.

For example, consider Okun's law, which relates GDP growth to the unemployment rate. This relationship is represented in a linear regression where the change in unemployment rate (Δ Unemployment) is a function of an intercept (β₀), a given value of GDP growth multiplied by a slope coefficient β₁ and an error term, ε:

_Δ_ Unemployment = _β_₀ + _β_₁Growth + _ε_.

The unknown parameters β₀ and β₁ can be estimated. Here β₁ is estimated to be −1.77 and β₀ is estimated to be 0.83. This means that if GDP growth increased by one percentage point, the unemployment rate would be predicted to drop by 1.77 points. The model could then be tested for statistical significance as to whether an increase in growth is associated with a decrease in the unemployment, as hypothesized. If the estimate of β₁ were not significantly different from 0, the test would fail to find evidence that changes in the growth rate and unemployment rate were related. The variance in a prediction of the dependent variable (unemployment) as a function of the independent variable (GDP growth) is given in polynomial least squares.


Theory

Econometric theory uses statistical theory and mathematical statistics to evaluate and develop econometric methods.[14][15] Econometricians try to find estimators that have desirable statistical properties including unbiasedness, efficiency, and consistency. An estimator is unbiased if its expected value is the true value of the parameter; it is consistent if it converges to the true value as the sample size gets larger, and it is efficient if the estimator has lower standard error than other unbiased estimators for a given sample size. Ordinary least squares (OLS) is often used for estimation since it provides the BLUE or "best linear unbiased estimator" (where "best" means most efficient, unbiased estimator) given the Gauss-Markov assumptions. When these assumptions are violated or other statistical properties are desired, other estimation techniques such as maximum likelihood estimation, generalized method of moments, or generalized least squares are used. Estimators that incorporate prior beliefs are advocated by those who favour Bayesian statistics over traditional, classical or "frequentist" approaches.


Methods

_Applied econometrics_ uses theoretical econometrics and real-world data for assessing economic theories, developing econometric models, analysing economic history, and forecasting.[16]

Econometrics may use standard statistical models to study economic questions, but most often they are with observational data, rather than in controlled experiments.[17] In this, the design of observational studies in econometrics is similar to the design of studies in other observational disciplines, such as astronomy, epidemiology, sociology and political science. Analysis of data from an observational study is guided by the study protocol, although exploratory data analysis may be useful for generating new hypotheses.[18] Economics often analyses systems of equations and inequalities, such as supply and demand hypothesized to be in equilibrium. Consequently, the field of econometrics has developed methods for identification and estimation of simultaneous-equation models. These methods are analogous to methods used in other areas of science, such as the field of system identification in systems analysis and control theory. Such methods may allow researchers to estimate models and investigate their empirical consequences, without directly manipulating the system.

One of the fundamental statistical methods used by econometricians is regression analysis.[19] Regression methods are important in econometrics because economists typically cannot use controlled experiments. Econometricians often seek illuminating natural experiments in the absence of evidence from controlled experiments. Observational data may be subject to omitted-variable bias and a list of other problems that must be addressed using causal analysis of simultaneous-equation models.[20]

In addition to natural experiments, quasi-experimental methods have been used increasingly commonly by econometricians since the 1980s, in order to credibly identify causal effects.[21]


Example

A simple example of a relationship in econometrics from the field of labour economics is:

ln (wage) = _β_₀ + _β_₁(years of education) + _ε_.

This example assumes that the natural logarithm of a person's wage is a linear function of the number of years of education that person has acquired. The parameter β₁ measures the increase in the natural log of the wage attributable to one more year of education. The term ε is a random variable representing all other factors that may have direct influence on wage. The econometric goal is to estimate the parameters, β₀ and β₁ under specific assumptions about the random variable ε. For example, if ε is uncorrelated with years of education, then the equation can be estimated with ordinary least squares.

If the researcher could randomly assign people to different levels of education, the data set thus generated would allow estimation of the effect of changes in years of education on wages. In reality, those experiments cannot be conducted. Instead, the econometrician observes the years of education of and the wages paid to people who differ along many dimensions. Given this kind of data, the estimated coefficient on Years of Education in the equation above reflects both the effect of education on wages and the effect of other variables on wages, if those other variables were correlated with education. For example, people born in certain places may have higher wages and higher levels of education. Unless the econometrician controls for place of birth in the above equation, the effect of birthplace on wages may be falsely attributed to the effect of education on wages.

The most obvious way to control for birthplace is to include a measure of the effect of birthplace in the equation above. Exclusion of birthplace, together with the assumption that ϵ is uncorrelated with education produces a misspecified model. Another technique is to include in the equation additional set of measured covariates which are not instrumental variables, yet render β₁ identifiable.[22] An overview of econometric methods used to study this problem were provided by Card (1999).[23]


Journals

The main journals that publish work in econometrics are _Econometrica_, the _Journal of Econometrics_, the _Review of Economics and Statistics_, _Econometric Theory_, the _Journal of Applied Econometrics_, _Econometric Reviews_, the _Econometrics Journal_,[24] _Applied Econometrics and International Development_, and the _Journal of Business & Economic Statistics_.


Limitations and criticisms

Like other forms of statistical analysis, badly specified econometric models may show a spurious relationship where two variables are correlated but causally unrelated. In a study of the use of econometrics in major economics journals, McCloskey concluded that some economists report p-values (following the Fisherian tradition of tests of significance of point null-hypotheses) and neglect concerns of type II errors; some economists fail to report estimates of the size of effects (apart from statistical significance) and to discuss their economic importance. She also argues that some economists also fail to use economic reasoning for model selection, especially for deciding which variables to include in a regression.[25][26]

In some cases, economic variables cannot be experimentally manipulated as treatments randomly assigned to subjects.[27] In such cases, economists rely on observational studies, often using data sets with many strongly associated covariates, resulting in enormous numbers of models with similar explanatory ability but different covariates and regression estimates. Regarding the plurality of models compatible with observational data-sets, Edward Leamer urged that "professionals ... properly withhold belief until an inference can be shown to be adequately insensitive to the choice of assumptions".[28]


See also

-   Augmented Dickey–Fuller test
-   Choice modelling
-   Cowles Foundation
-   Econometric software
-   Financial econometrics
-   Financial modelling
-   Granger causality
-   Important publications in econometrics
-   Macroeconomic model
-   Methodological individualism
-   Predetermined variables
-   Single equation methods (econometrics)
-   Spatial econometrics
-   Unit root


Notes


Further reading

-   Econometric Theory book on Wikibooks
-   Giovannini, Enrico _Understanding Economic Statistics_, OECD Publishing, 2008,


External links

-   Journal of Financial Econometrics
-   Econometric Society
-   The Econometrics Journal
-   Econometric Links
-   Teaching Econometrics (Index by the Economics Network (UK))
-   Applied Econometric Association
-   The Society for Financial Econometrics
-   The interview with Clive Granger – Nobel winner in 2003, about econometrics

Econometrics Category:Formal sciences Category:Applied statistics Category:Mathematical and quantitative methods (economics)

[1] M. Hashem Pesaran (1987). "Econometrics," _The New Palgrave: A Dictionary of Economics_, v. 2, p. 8 [pp. 8–22]. Reprinted in J. Eatwell _et al._, eds. (1990). _Econometrics: The New Palgrave_, p. 1 [pp. 1–34]. Abstract (2008 revision by J. Geweke, J. Horowitz, and H. P. Pesaran).

[2] P. A. Samuelson, T. C. Koopmans, and J. R. N. Stone (1954). "Report of the Evaluative Committee for _Econometrica_," _Econometrica_ 22(2), p. 142. [p p. 141-146], as described and cited in Pesaran (1987) above.

[3] Paul A. Samuelson and William D. Nordhaus, 2004. _Economics_. 18th ed., McGraw-Hill, p. 5.

[4]

[5]

[6] Magnus, Jan & Mary S. Morgan (1987) _The ET Interview: Professor J. Tinbergen_ in: 'Econometric Theory 3, 1987, 117–142.

[7] Willlekens, Frans (2008) _International Migration in Europe: Data, Models and Estimates._ New Jersey. John Wiley & Sons: 117.

[8] • H. P. Pesaran (1990), "Econometrics," _Econometrics: The New Palgrave_, p. 2, citing Ragnar Frisch (1936), "A Note on the Term 'Econometrics'," _Econometrica_, 4(1), p. 95.
   • Aris Spanos (2008), "statistics and economics," _The New Palgrave Dictionary of Economics_, 2nd Edition. Abstract.

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Clive Granger (2008). "forecasting," _The New Palgrave Dictionary of Economics_, 2nd Edition. Abstract.

[17]

[18] Herman O. Wold (1969). "Econometrics as Pioneering in Nonexperimental Model Building," _Econometrica_, 37(3), pp. 369-381.

[19] For an overview of a linear implementation of this framework, see linear regression.

[20] Edward E. Leamer (2008). "specification problems in econometrics," _The New Palgrave Dictionary of Economics_. Abstract.

[21]

[22]

[23]

[24]

[25]

[26] Stephen T. Ziliak and Deirdre N. McCloskey (2004). "Size Matters: The Standard Error of Regressions in the _American Economic Review_," _Journal of Socio-economics_, 33(5), pp. 527-46 (press +).

[27]

[28]