In statistics, the term LINEAR MODEL is used in different ways according to the context. The most common occurrence is in connection with regression models and the term is often taken as synonymous with linear regression model. However, the term is also used in time series analysis with a different meaning. In each case, the designation "linear" is used to identify a subclass of models for which substantial reduction in the complexity of the related statistical theory is possible.


Linear regression models

For the regression case, the statistical model is as follows. Given a (random) sample (Y_(i), X_(i1), …, X_(ip)), i = 1, …, n the relation between the observations _Y_(i)_ and the independent variables _X_(ij)_ is formulated as

_Y__(_i_) = _β_₀ + _β_₁_ϕ_₁(_X__(_i_1)) + ⋯ + _β__(_p_)_ϕ__(_p_)(_X__(_i__p_)) + _ε__(_i_)  _i_ = 1, …, _n_

where ϕ₁, …, ϕ_(p) may be nonlinear functions. In the above, the quantities _ε_(i)_ are random variables representing errors in the relationship. The "linear" part of the designation relates to the appearance of the regression coefficients, _β_(j)_ in a linear way in the above relationship. Alternatively, one may say that the predicted values corresponding to the above model, namely

_Ŷ__(_i_) = _β_₀ + _β_₁_ϕ_₁(_X__(_i_1)) + ⋯ + _β__(_p_)_ϕ__(_p_)(_X__(_i__p_))  (_i_ = 1, …, _n_),
are linear functions of the _β_(j)_.

Given that estimation is undertaken on the basis of a least squares analysis, estimates of the unknown parameters _β_(j)_ are determined by minimising a sum of squares function

$$S = \sum_{i = 1}^n \left(Y_i - \beta_0 - \beta_1 \phi_1(X_{i1}) - \cdots - \beta_p \phi_p(X_{ip})\right)^2 .$$
From this, it can readily be seen that the "linear" aspect of the model means the following:

:*the function to be minimised is a quadratic function of the _β_(j)_ for which minimisation is a relatively simple problem;

:*the derivatives of the function are linear functions of the _β_(j)_ making it easy to find the minimising values;

:*the minimising values _β_(j)_ are linear functions of the observations _Y_(i)_;

:*the minimising values _β_(j)_ are linear functions of the random errors _ε_(i)_ which makes it relatively easy to determine the statistical properties of the estimated values of _β_(j)_.


Time series models

An example of a linear time series model is an autoregressive moving average model. Here the model for values {_X_(t)_} in a time series can be written in the form

$$X_t = c + \varepsilon_t +  \sum_{i=1}^p \phi_i X_{t-i} + \sum_{i=1}^q \theta_i \varepsilon_{t-i}.\,$$

where again the quantities _ε_(t)_ are random variables representing innovations which are new random effects that appear at a certain time but also affect values of _X_ at later times. In this instance the use of the term "linear model" refers to the structure of the above relationship in representing _X_(t)_ as a linear function of past values of the same time series and of current and past values of the innovations.[1] This particular aspect of the structure means that it is relatively simple to derive relations for the mean and covariance properties of the time series. Note that here the "linear" part of the term "linear model" is not referring to the coefficients _φ_(i)_ and _θ_(i)_, as it would be in the case of a regression model, which looks structurally similar.


Other uses in statistics

There are some other instances where "nonlinear model" is used to contrast with a linearly structured model, although the term "linear model" is not usually applied. One example of this is nonlinear dimensionality reduction.


See also

-   General linear model
-   Generalized linear model
-   Linear predictor function
-   Linear system
-   Statistical model


References

ar:نموذج الانحدار الخطي fr:Modèle linéaire

Category:Regression models

[1] Priestley, M.B. (1988) _Non-linear and Non-stationary time series analysis_, Academic Press.