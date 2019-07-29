A PARAMETER (from the Ancient Greek παρά, _para_: "beside", "subsidiary"; and μέτρον, _metron_: "measure"), generally, is any characteristic that can help in defining or classifying a particular system (meaning an event, project, object, situation, etc.). That is, a parameter is an element of a system that is useful, or critical, when identifying the system, or when evaluating its performance, status, condition, etc.

_Parameter_ has more specific meanings within various disciplines, including mathematics, computing and computer programming, engineering, statistics, logic and linguistics. Within and across these fields, careful distinction must be maintained of the different usages of the term _parameter_ and of other terms often associated with it, such as argument, property, axiom, variable, function, attribute, etc.[1]


Modelization

When a system is modeled by equations, the values that describe the system are called _parameters_. For example, in mechanics, the masses, the dimensions and shapes (for solid bodies), the densities and the viscosities (for fluids), appear as parameters in the equations modeling movements. There are often several choices for the parameters, and choosing a convenient set of parameters is called _parametrization_.

For example, if one were considering the movement of an object on the surface of a sphere much larger than the object (e.g. the Earth), there are two commonly used parametrizations of its position: angular coordinates (like latitude/longitude), which neatly describe large movements along circles on the sphere, and directional distance from a known point (e.g. "10km NNW of Toronto" or equivalently "8km due North, and then 6km due West, from Toronto" ), which are often simpler for movement confined to a (relatively) small area, like within a particular country or region. Such parametrizations are also relevant to the modelization of geographic areas (i.e. map drawing).


Mathematical functions

Mathematical functions have one or more arguments that are designated in the definition by variables. A function definition can also contain parameters, but unlike variables, parameters are not listed among the arguments that the function takes. When parameters are present, the definition actually defines a whole family of functions, one for every valid set of values of the parameters. For instance, one could define a general quadratic function by declaring

_f_(_x_) = _a__x_² + _b__x_ + _c_
;

Here, the variable _x_ designates the function's argument, but _a_, _b_, and _c_ are parameters that determine which particular quadratic function is being considered. A parameter could be incorporated into the function name to indicate its dependence on the parameter. For instance, one may define the base-_b_ logarithm by the formula

$$\log_b(x)=\frac{\log(x)}{\log(b)}$$
where _b_ is a parameter that indicates which logarithmic function is being used. It is not an argument of the function, and will, for instance, be a constant when considering the derivative $\textstyle\log_b'(x) = (x\ln(b))^{-1}$.

In some informal situations it is a matter of convention (or historical accident) whether some or all of the symbols in a function definition are called parameters. However, changing the status of symbols between parameter and variable changes the function as a mathematical object. For instance, the notation for the falling factorial power

$$n^{\underline k}=n(n-1)(n-2)\cdots(n-k+1)$$
, defines a polynomial function of _n_ (when _k_ is considered a parameter), but is not a polynomial function of _k_ (when _n_ is considered a parameter). Indeed, in the latter case, it is only defined for non-negative integer arguments. More formal presentations of such situations typically start out with a function of several variables (including all those that might sometimes be called "parameters") such as

$$(n,k) \mapsto n^{\underline{k}}$$
as the most fundamental object being considered, then defining functions with fewer variables from the main one by means of currying.

Sometimes it is useful to consider all functions with certain parameters as _parametric family_, i.e. as an indexed family of functions. Examples from probability theory are given further below.

Examples

-   In a section on frequently misused words in his book _The Writer's Art_, James J. Kilpatrick quoted a letter from a correspondent, giving examples to illustrate the correct use of the word _parameter_:

  W.M. Woods ... a mathematician ... writes ... "... a variable is one of the many things a _parameter_ is not." ... The dependent variable, the speed of the car, depends on the independent variable, the position of the gas pedal.

  [Kilpatrick quoting Woods] "Now ... the engineers ... change the lever arms of the linkage ... the speed of the car ... will still depend on the pedal position ...'' but in a ... different manner''. You have changed a parameter"

-   A parametric equaliser is an audio filter that allows the frequency of maximum cut or boost to be set by one control, and the size of the cut or boost by another. These settings, the frequency level of the peak or trough, are two of the parameters of a frequency response curve, and in a two-control equaliser they completely describe the curve. More elaborate parametric equalisers may allow other parameters to be varied, such as skew. These parameters each describe some aspect of the response curve seen as a whole, over all frequencies. A graphic equaliser provides individual level controls for various frequency bands, each of which acts only on that particular frequency band.
-   If asked to imagine the graph of the relationship _y_ = _ax_², one typically visualizes a range of values of _x_, but only one value of _a_. Of course a different value of _a_ can be used, generating a different relation between _x_ and _y_. Thus _a_ is a parameter: it is less variable than the variable _x_ or _y_, but it is not an explicit constant like the exponent 2. More precisely, changing the parameter _a_ gives a different (though related) problem, whereas the variations of the variables _x_ and _y_ (and their interrelation) are part of the problem itself.
-   In calculating income based on wage and hours worked (income equals wage multiplied by hours worked), it is typically assumed that the number of hours worked is easily changed, but the wage is more static. This makes _wage_ a parameter, _hours worked_ an independent variable, and _income_ a dependent variable.

Mathematical models

In the context of a mathematical model, such as a probability distribution, the distinction between variables and parameters was described by Bard as follows:

    We refer to the relations which supposedly describe a certain physical situation, as a _model_. Typically, a model consists of one or more equations. The quantities appearing in the equations we classify into _variables_ and _parameters_. The distinction between these is not always clear cut, and it frequently depends on the context in which the variables appear. Usually a model is designed to explain the relationships that exist among quantities which can be measured independently in an experiment; these are the variables of the model. To formulate these relationships, however, one frequently introduces "constants" which stand for inherent properties of nature (or of the materials and equipment used in a given experiment). These are the parameters.[2]

Analytic geometry

In analytic geometry, curves are often given as the image of some function. The argument of the function is invariably called "the parameter". A circle of radius 1 centered at the origin can be specified in more than one form:

-   _implicit_ form, the curve is all points (x,y) that satisfy the relation

_x_² + _y_² = 1

-   _parametric_ form, the curve is all points (cos(t), sin(t)), when _t_ varies over some set of values, like [0, 2π), or (-∞,∞)

(_x_, _y_) = (cos  _t_, sin  _t_)

    where _t_ is the _parameter_.

Hence these equations, which might be called functions elsewhere are in analytic geometry characterized as parametric equations and the independent variables are considered as parameters.

Mathematical analysis

In mathematical analysis, integrals dependent on a parameter are often considered. These are of the form

_F_(_t_) = ∫_(_x_₀(_t_))^(_x_₁(_t_))_f_(_x_; _t_) _d__x_.
In this formula, _t_ is the argument of the function _F_, and on the right-hand side the _parameter_ on which the integral depends. When evaluating the integral, _t_ is held constant, and so it is considered to be a parameter. If we are interested in the value of _F_ for different values of _t_, we then consider _t_ to be a variable. The quantity _x_ is a _dummy variable_ or _variable of integration_ (confusingly, also sometimes called a _parameter of integration_).

Statistics and econometrics

In statistics and econometrics, the probability framework above still holds, but attention shifts to estimating the parameters of a distribution based on observed data, or testing hypotheses about them. In frequentist estimation parameters are considered "fixed but unknown", whereas in Bayesian estimation they are treated as random variables, and their uncertainty is described as a distribution.

In estimation theory of statistics, "statistic" or estimator refers to samples, whereas "parameter" or estimand refers to populations, where the samples are taken from. A statistic is a numerical characteristic of a sample that can be used as an estimate of the corresponding parameter, the numerical characteristic of the population from which the sample was drawn.

For example, the sample mean (estimator), denoted $\overline X$, can be used as an estimate of the _mean_ parameter (estimand), denoted _μ_, of the population from which the sample was drawn. Similarly, the sample variance (estimator), denoted _S_², can be used to estimate the _variance_ parameter (estimand), denoted _σ_², of the population from which the sample was drawn. (Note that the sample standard deviation (_S_) is not an unbiased estimate of the population standard deviation (_σ_): see Unbiased estimation of standard deviation.)

It is possible to make statistical inferences without assuming a particular parametric family of probability distributions. In that case, one speaks of _non-parametric statistics_ as opposed to the parametric statistics just described. For example, a test based on Spearman's rank correlation coefficient would be called non-parametric since the statistic is computed from the rank-order of the data disregarding their actual values (and thus regardless of the distribution they were sampled from), whereas those based on the Pearson product-moment correlation coefficient are parametric tests since it is computed directly from the data values and thus estimates the parameter known as the population correlation.

Probability theory

Poisson_pmf.svgIn probability theory, one may describe the distribution of a random variable as belonging to a _family_ of probability distributions, distinguished from each other by the values of a finite number of _parameters_. For example, one talks about "a Poisson distribution with mean value λ". The function defining the distribution (the probability mass function) is:

$$f(k;\lambda)=\frac{e^{-\lambda} \lambda^k}{k!}.$$
This example nicely illustrates the distinction between constants, parameters, and variables. _e_ is Euler's number, a fundamental mathematical constant. The parameter λ is the mean number of observations of some phenomenon in question, a property characteristic of the system. _k_ is a variable, in this case the number of occurrences of the phenomenon actually observed from a particular sample. If we want to know the probability of observing _k_₁ occurrences, we plug it into the function to get f(k₁; λ). Without altering the system, we can take multiple samples, which will have a range of values of _k_, but the system is always characterized by the same λ.

For instance, suppose we have a radioactive sample that emits, on average, five particles every ten minutes. We take measurements of how many particles the sample emits over ten-minute periods. The measurements exhibit different values of _k_, and if the sample behaves according to Poisson statistics, then each value of _k_ will come up in a proportion given by the probability mass function above. From measurement to measurement, however, λ remains constant at 5. If we do not alter the system, then the parameter λ is unchanged from measurement to measurement; if, on the other hand, we modulate the system by replacing the sample with a more radioactive one, then the parameter λ would increase.

Another common distribution is the normal distribution, which has as parameters the mean μ and the variance σ².

In these above examples, the distributions of the random variables are completely specified by the type of distribution, i.e. Poisson or normal, and the parameter values, i.e. mean and variance. In such a case, we have a parameterized distribution.

It is possible to use the sequence of moments (mean, mean square, ...) or cumulants (mean, variance, ...) as parameters for a probability distribution: see Statistical parameter.


Computing

In computing, a parameter is defined as "a reference or value that is passed to a function, procedure, subroutine, command, or program".[3] For example, the name of a file, (a parameter), is passed to a computer program, which then performs a specific function; that is, a program may be passed the name of a file on which it will perform the specific function.


Computer programming

In computer programming, two notions of parameter are commonly used, and are referred to as parameters and arguments—or more formally as a FORMAL PARAMETER and an ACTUAL PARAMETER.

For example, in the definition of a function such as

    y = _f_(_x_) = _x_ + 2,

_x_ is the _formal parameter_ (the _parameter_) of the defined function.

When the function is evaluated for a given value, as in

    _f_(3): or, _y_ = _f_(3) = 3 + 2 = 5,

3 is the _actual parameter_ (the _argument_) for evaluation by the defined function; it is a given value (actual value) that is substituted for the _formal parameter_ of the defined function. (In casual usage the terms _parameter_ and _argument_ might inadvertently be interchanged, and thereby used incorrectly.)

These concepts are discussed in a more precise way in functional programming and its foundational disciplines, lambda calculus and combinatory logic. Terminology varies between languages; some computer languages such as C define parameter and argument as given here, while Eiffel uses an alternative convention.


Engineering

In engineering (especially involving data acquisition) the term _parameter_ sometimes loosely refers to an individual measured item. This usage isn't consistent, as sometimes the term _channel_ refers to an individual measured item, with _parameter_ referring to the setup information about that channel.

"Speaking generally, PROPERTIES are those physical quantities which directly describe the physical attributes of the system; PARAMETERS are those combinations of the properties which suffice to determine the response of the system. Properties can have all sorts of dimensions, depending upon the system being considered; parameters are dimensionless, or have the dimension of time or its reciprocal."[4]

The term can also be used in engineering contexts, however, as it is typically used in the physical sciences.


Environmental science

In environmental science and particularly in chemistry and microbiology, a parameter is used to describe a discrete chemical or microbiological entity that can be assigned a value: commonly a concentration, but may also be a logical entity (present or absent), a statistical result such as a 95%ile value or in some cases a subjective value.


Linguistics

Within linguistics, the word "parameter" is almost exclusively used to denote a binary switch in a Universal Grammar within a Principles and Parameters framework.


Logic

In logic, the parameters passed to (or operated on by) an _open predicate_ are called _parameters_ by some authors (e.g., Prawitz, "Natural Deduction"; Paulson, "Designing a theorem prover"). Parameters locally defined within the predicate are called _variables_. This extra distinction pays off when defining substitution (without this distinction special provision must be made to avoid variable capture). Others (maybe most) just call parameters passed to (or operated on by) an open predicate _variables_, and when defining substitution have to distinguish between _free variables_ and _bound variables_.


Music

In music theory, a parameter denotes an element which may be manipulated (composed), separately from the other elements. The term is used particularly for pitch, loudness, duration, and timbre, though theorists or composers have sometimes considered other musical aspects as parameters. The term is particularly used in serial music, where each parameter may follow some specified series. Paul Lansky and George Perle criticized the extension of the word "parameter" to this sense, since it is not closely related to its mathematical sense,[5] but it remains common. The term is also common in music production, as the functions of audio processing units (such as the attack, release, ratio, threshold, and other variables on a compressor) are defined by parameters specific to the type of unit (compressor, equalizer, delay, etc.).


See also

-   Coordinate system
-   Occam's razor (with regards to the trade-off of many or few parameters in data fitting)
-   Statistical parameter


References

Category:Mathematical terminology

[1] "Parameter" in TheFreeDictionary.com.

[2]

[3]

[4]

[5]