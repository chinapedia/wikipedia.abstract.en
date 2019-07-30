In mathematical finance, MULTIPLE FACTOR MODELS are asset pricing models that can be used to estimate the discount rate for the valuation of financial assets. They are generally extensions of the single-factor capital asset pricing model (CAPM).


Model of Rosenberg and Marathe

The multifactor equity risk model was first developed by Barr Rosenberg and Vinay Marathe.[1] Initially they proposed a linear model of beta

                            r(i,t)-r(0,t)=b(i,t)[m(t)-r(0,t)+g(i,t)
                                     b(i,t)=sum_j X(i,j,t) f(j,t) + e(i,t)

where r(i,t) is the return to equity asset I in the period [t,t+1], r(0,t) is the risk free return, m(t) is the market index return, e(i,t) is a market residual return and b(i,t) is a parameter fit by a time series regression over history prior to time t. Then X(i,j,t) are risk exposure values calculated from fundamental and technical data, f(j,t) are factor returns determined by a cross-sectional regression for each time period and g(i,t) are the regression residuals. This model was reformulated by Rosenberg et al. into a direct model of asset return,

                              r(i,t)=sum_j X(i,j,t) f(i,j) + e(i,t)

Here the factor returns f(j,t) and specific returns e(i,t) are fit by a weighted regression over each time period t for a representative asset universe. For instance the model might be fit over the 3000 highest capitalization US common stocks. The primary application of the model is to estimate the asset by asset covariance matrix C of asset returns by the equation

                                       C=XFX^t+D

where F is the covariance matrix of asset returns, and D is a block diagonal matrix of specific returns. The matrix C is then used for Markowitz portfolio construction which involves maximizing the quadratic utility function

                                     u(h)=a^t h- k h^tCh

subject to linear constraints on the vector of asset holdings h. Here a is a vector of expected returns and k is a scalar parameter termed the risk aversion.


Modifications by Torre

Nicolo G. Torre made a number of improvements to this framework which importantly sharpened the risk control achievable by these means.[2] In Rosenberg's model the risk indices X consisted of industry weights and risk indices. Each asset would be given an exposure to one or more industries, e. g. based on breakdowns of the firms balance sheet or earning statement into industry segments. These industry exposures would sum to 1 for each asset. Thus the model had no explicit market factor but rather the market return was projected on to the industry returns. Torre modified this scheme by introducing an explicit market factor (with unit exposure for each asset.) To keep the model identified by imposed the condition that the industry factor returns sum to zero in each time period. Thus the model is estimated as

                                   f(i,t)=m(t)+sum_j X(i,j,t)f(j,t) + e(i,t)

subject to

                                    sum_k f(k,t)=0 for all t

where the sum is over industry factors. Here m(t) is the market return. Explicitly identifying the market factor then permitted Torre to estimate the variance of this factor using a leveraged GARCH(1,1) model due to Robert Engle and Tim Bollerslev

                                    s^2(t)=w+a s^2(t-1)+ b1 fp(m(t-1))^2 + b2 fm(m(t-1))^2

Here

                       fp(x)=x for x>0
                                 0 for x<=0

                       fm(x)=0  for x>=0
                                  x  for x<0

and w, a, b1 and b2 are parameters fit from long time series estimations using maximum likelihood methods. This model provides a rapid update of market variance which is incorporated into the update of F, resulting in a more dynamic model of risk. In particular it accounts for the convergence of asset returns and consequent loss of diversification that occurs in portfolios during periods of market turbulence.

In the risk model industry factors carry about half the explanatory power after the market effect is accounted for. However, Rosenberg had left unsolved how the industry groupings should be defined – choosing to rely simply on a conventional set of industries. Defining industry sets is a problem in taxonomy. The basic difficulty is that the industry is defined by the members assigned to it, but which industry an individual equity should be assigned to is often unclear. Difficulties can be reduced by introducing a large number of narrowly defined industries, but this approach is in tension with the demands of risk estimation. For robust risk estimates we favor a moderate number of industries with each industry representing a few percentage points of market capitalization and not exclusively dominated by the largest company in the industry. Torre resolved this problem by introducing several hundred narrowly defined mini-industries and then applying guided clustering techniques to combine the mini-industries into industry groupings suitable for risk estimation.

In the initial Rosenberg approach factor and specific returns are assumed to be normally distributed. However experience turns up a number of outlying observations that are both too large and too frequent to be fit by a normal distribution Although introduction of a GARCH market factor partly reduces this difficulty, it does not eliminate it. Torre showed that return distributions can be modeled as a mixture of a normal distribution and a jump distribution. In the case of a single factor the mixing model is easily stated. Each time period t there is a binary mixing variable b(t). If b(t)=0 then the factor return in that period is drawn from the normal distribution and if b(t)=1 it drawn from the jump distribution. Torre found that simultaneous jumps occur in factors. Accordingly, in the multivariate case it is necessary to introduce a multivariate shock vector w(i,t) where w(i,t)=0 if the multivariate mixing variable b(i,t)=0 and w(i,t) is drawn from the ith jump distribution if b(i,t)=1. A transmission matrix T then maps w from the shock space into the factor space. Torre found that the market, factor and specific returns could all be described by a mixture of normal returns and power law distributed shocks occurring at a low frequency. This modeling refinement substantially improves the performance of the model with regard to extreme events. As such it makes possible construction of portfolios which behave in more expected manners during periods of market turbulence.


Extensions to other market types

Although originally developed for the US equity market, the multifactor risk model was rapidly extended to other equity markets and to other types of securities such as bonds and equity options. The problem of how to construct a multi-asset class risk model then arises. A first approach was made by Beckers, Rudd and Stefek for the global equity market. They estimated a model involving currency, country, global industries and global risk indices. This model worked well for portfolios constructed by the top down process of first selecting countries and then selecting assets within countries. It was less successful on portfolios constructed by a bottom up process in which portfolios within countries were first selected by country specialists and then a global overlay was applied. In addition the global model applied to a single country portfolio would often be at odds with the local market model. Torre resolved these difficulties by introducing a two-stage factor analysis. The first stage consists of fitting a series of local factor models of the familiar form resulting in a set of factor returns f(i,j,t) where f(i,j,t) is the return to factor i in the jth local model at t. The factor returns are then fit to a second stage model of the form

                                 f(i,j,t)=sum_k Y(i,j,k) g(k,t) + h(i,j,t)

Here Y gives the exposure of local factor (i,j) to the k^th global factor whose return is g(k,t) and h(i,j,t) is the local specific factor return. The covariance matrix of factor returns is estimated as

                                       F=YGY^t+H

where G is the covariance matrix of global factors and H is the block diagonal covariances of local specific factor returns. This modeling approach permits gluing any number of local models together to provide a comprehensive multi-asset class analysis. This is particularly relevant for global equity portfolios and for enterprise wide risk management.

The multifactor risk model with the refinements discussed above is the dominant method for controlling risk in professionally managed portfolios. It is estimated that more than half of world capital is managed using such models.


Academic models

Many academics have attempted to construct factor models with a fairly small number of parameters. These include:

-   Fama–French three-factor model
-   Carhart four-factor model
-   Arbitrage pricing theory

However, there is as yet no general agreement on how many factors there are.[3] There are numerous commercial models available, including those from MSCI and the Goldman Sachs asset management factor model.[4]


References

Category:Financial risk modeling Category:Financial markets Category:Financial models

[1] Rosenberg, Barr, and Vinay Marathe. The prediction of investment risk: Systematic and residual risk. 1975.

[2] Rickard, John T., and Nicolo G. Torre. "Theory of optimal transaction implementation." Signals, Systems & Computers, 1998. Conference Record of the Thirty-Second Asilomar Conference on. Vol. 1. IEEE, 1998.

[3] Harvey, Campbell R., Yan Liu, and Heqing Zhu. "... And the cross-section of expected returns." Review of Financial Studies (2015): hhv059.

[4] https://www.msci.com/portfolio-management