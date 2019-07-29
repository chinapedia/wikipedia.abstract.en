A STATISTICAL MODEL is a mathematical model that embodies a set of statistical assumptions concerning the generation of sample data (and similar data from a larger population). A statistical model represents, often in considerably idealized form, the data-generating process.[1]

A statistical model is usually specified as a mathematical relationship between one or more random variables and other non-random variables. As such, a statistical model is "a formal representation of a theory" (Herman Adèr quoting Kenneth Bollen).[2]

All statistical hypothesis tests and all statistical estimators are derived via statistical models. More generally, statistical models are part of the foundation of statistical inference.


Introduction

Informally, a statistical model can be thought of as a statistical assumption (or set of statistical assumptions) with a certain property: that the assumption allows us to calculate the probability of any event. As an example, consider a pair of ordinary six-sided dice. We will study two different statistical assumptions about the dice.

The first statistical assumption is this: for each of the dice, the probability of each face (1, 2, 3, 4, 5, and 6) coming up is . From that assumption, we can calculate the probability of both dice coming up 5:  }}  More generally, we can calculate the probability of any event: e.g. (1 and 2) or (3 and 3) or (5 and 6).

The alternative statistical assumption is this: for each of the dice, the probability of the face 5 coming up is (because the dice are weighted). From that assumption, we can calculate the probability of both dice coming up 5:  }}  We cannot, however, calculate the probability of any other nontrivial event.

The first statistical assumption constitutes a statistical model: because with the assumption alone, we can calculate the probability of any event. The alternative statistical assumption does _not_ constitute a statistical model: because with the assumption alone, we cannot calculate the probability of every event.

In the example above, with the first assumption, calculating the probability of an event is easy. With some other examples, though, the calculation can be difficult, or even impractical (e.g. it might require millions of years of computation). For an assumption to constitute a statistical model, such difficulty is acceptable: doing the calculation does not need to be practicable, just theoretically possible.


Formal definition

In mathematical terms, a statistical model is usually thought of as a pair (S, 𝒫), where S is the set of possible observations, i.e. the sample space, and 𝒫 is a set of probability distributions on S.[3]

The intuition behind this definition is as follows. It is assumed that there is a "true" probability distribution induced by the process that generates the observed data. We choose 𝒫 to represent a set (of distributions) which contains a distribution that adequately approximates the true distribution.

Note that we do not require that 𝒫 contains the true distribution, and in practice that is rarely the case. Indeed, as Burnham & Anderson state, "A model is a simplification or approximation of reality and hence will not reflect all of reality"[4]—whence the saying "all models are wrong".

The set 𝒫 is almost always parameterized: 𝒫 = {P_(θ) : θ ∈ Θ}. The set Θ defines the parameters of the model. A parameterization is generally required to have distinct parameter values give rise to distinct distributions, i.e. P_(θ₁) = P_(θ₂) ⇒ θ₁ = θ₂ must hold (in other words, it must be injective). A parameterization that meets the requirement is said to be _identifiable_.[5]


An example

Suppose that we have a population of school children, with the ages of the children distributed uniformly, in the population. The height of a child will be stochastically related to the age: e.g. when we know that a child is of age 7, this influences the chance of the child being 1.5 meters tall. We could formalize that relationship in a linear regression model, like this: height_(_i_) = _b_₀ + _b_₁age_(_i_) + ε_(_i_), where _b_₀ is the intercept, _b_₁ is a parameter that age is multiplied by to obtain a prediction of height, ε_(_i_) is the error term, and _i_ identifies the child. This implies that height is predicted by age, with some error.

An admissible model must be consistent with all the data points. Thus, a straight line (height_(_i_) = _b_₀ + _b_₁age_(_i_)) cannot be the equation for a model of the data—unless it exactly fits all the data points, i.e. all the data points lie perfectly on the line. The error term, ε_(_i_), must be included in the equation, so that the model is consistent with all the data points.

To do statistical inference, we would first need to assume some probability distributions for the ε_(_i_). For instance, we might assume that the ε_(_i_) distributions are i.i.d. Gaussian, with zero mean. In this instance, the model would have 3 parameters: _b_₀, _b_₁, and the variance of the Gaussian distribution.

We can formally specify the model in the form (S, 𝒫) as follows. The sample space, S, of our model comprises the set of all possible pairs (age, height). Each possible value of θ = (_b_₀, _b_₁, _σ_²) determines a distribution on S; denote that distribution by P_(θ). If Θ is the set of all possible values of θ, then 𝒫 = {P_(θ) : θ ∈ Θ}. (The parameterization is identifiable, and this is easy to check.)

In this example, the model is determined by (1) specifying S and (2) making some assumptions relevant to 𝒫. There are two assumptions: that height can be approximated by a linear function of age; that errors in the approximation are distributed as i.i.d. Gaussian. The assumptions are sufficient to specify 𝒫—as they are required to do.


General remarks

A statistical model is a special class of mathematical model. What distinguishes a statistical model from other mathematical models is that a statistical model is non-deterministic. Thus, in a statistical model specified via mathematical equations, some of the variables do not have specific values, but instead have probability distributions; i.e. some of the variables are stochastic. In the above example with children's heights, ε is a stochastic variable; without that stochastic variable, the model would be deterministic.

Statistical models are often used even when the data-generating process being modeled is deterministic. For instance, coin tossing is, in principle, a deterministic process; yet it is commonly modeled as stochastic (via a Bernoulli process).

Choosing an appropriate statistical model to represent a given data-generating process is sometimes extremely difficult, and may require knowledge of both the process and relevant statistical analyses. Relatedly, the statistician Sir David Cox has said, "How [the] translation from subject-matter problem to statistical model is done is often the most critical part of an analysis".[6]

There are three purposes for a statistical model, according to Konishi & Kitagawa.[7]

-   Predictions
-   Extraction of information
-   Description of stochastic structures

Those three purposes are essentially the same as the three purposes indicated by Friendly & Meyer: prediction, estimation, description.[8] The three purposes correspond with the three kinds of logical reasoning: deductive reasoning, inductive reasoning, abductive reasoning.


Dimension of a model

Suppose that we have a statistical model (S, 𝒫) with 𝒫 = {P_(θ) : θ ∈ Θ}. The model is said to be _parametric_ if Θ has a finite dimension. In notation, we write that Θ ⊆ ℝ^(k) where is a positive integer (ℝ denotes the real numbers; other sets can be used, in principle). Here, is called the DIMENSION of the model.

As an example, if we assume that data arise from a univariate Gaussian distribution, then we are assuming that

$$\mathcal{P}=\left\{P_{\mu,\sigma }(x) \equiv \frac{1}{\sqrt{2 \pi} \sigma} \exp\left( -\frac{(x-\mu)^2}{2\sigma^2}\right) : \mu \in \mathbb{R}, \sigma > 0 \right\}$$
. In this example, the dimension, , equals 2.

As another example, suppose that the data consists of points (, ) that we assume are distributed according to a straight line with i.i.d. Gaussian residuals (with zero mean): this leads to the same statistical model as was used in the example with children's heights. The dimension of the statistical model is 3: the intercept of the line, the slope of the line, and the variance of the distribution of the residuals. (Note that in geometry, a straight line has dimension 1.)

Although formally θ ∈ Θ is a single parameter that has dimension , it is sometimes regarded as comprising separate parameters. For example, with the univariate Gaussian distribution, θ is formally a single parameter with dimension 2, but it is sometimes regarded as comprising 2 separate parameters—the mean and the standard deviation.

A statistical model is _nonparametric_ if the parameter set Θ is infinite dimensional. A statistical model is _semiparametric_ if it has both finite-dimensional and infinite-dimensional parameters. Formally, if is the dimension of Θ and is the number of samples, both semiparametric and nonparametric models have k → ∞ as n → ∞. If k/n → 0 as n → ∞, then the model is semiparametric; otherwise, the model is nonparametric.

Parametric models are by far the most commonly used statistical models. Regarding semiparametric and nonparametric models, Sir David Cox has said, "These typically involve fewer assumptions of structure and distributional form but usually contain strong assumptions about independencies".[9]


Nested models

Two statistical models are NESTED if the first model can be transformed into the second model by imposing constraints on the parameters of the first model. As an example, the set of all Gaussian distributions has, nested within it, the set of zero-mean Gaussian distributions: we constrain the mean in the set of all Gaussian distributions to get the zero-mean distributions. As a second example, the quadratic model

    _b_₀ + _b_₁_x_ + _b_₂_x_² + ε,    ε ~ 𝒩(0, _σ_²)}}

has, nested within it, the linear model

    _b_₀ + _b_₁_x_ + ε,    ε ~ 𝒩(0, _σ_²)}}

—we constrain the parameter to equal 0.

In both those examples, the first model has a higher dimension than the second model (for the first example, the zero-mean model has dimension 1). Such is often, but not always, the case. As a different example, the set of positive-mean Gaussian distributions, which has dimension 2, is nested within the set of all Gaussian distributions.


Comparing models

Comparing statistical models is fundamental for much of statistical inference. Indeed, state the following.

Common criteria for comparing models include the following: _R_², Bayes factor, and the likelihood-ratio test together with its generalization relative likelihood.


See also

-   All models are wrong
-   Conceptual model
-   Design of experiments
-   Deterministic model
-   Predictive model
-   Scientific model
-   Statistical inference
-   Statistical model specification
-   Statistical model validation
-   Statistical theory
-   Stochastic process


Notes


References

-   .

-   .

-   .

-   .

-   .

-   .


Further reading

-   Davison, A. C. (2008), _Statistical Models_, Cambridge University Press
-   -   Freedman, D. A. (2009), _Statistical Models_, Cambridge University Press
-   Helland, I. S. (2010), _Steps Towards a Unified Basis for Scientific Models and Methods_, World Scientific
-   Kroese, D. P.; Chan, J. C. C. (2014), _Statistical Modeling and Computation_, Springer
-

{{-}}

Category:Mathematical modeling Category:Scientific modeling Statistical_models Category:Statistical theory

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]