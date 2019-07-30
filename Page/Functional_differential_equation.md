A FUNCTIONAL DIFFERENTIAL EQUATION is a differential equation with deviating argument. That is, a functional differential equation is an equation that contains some function and some of its derivatives to different argument values.[1]

Functional differential equations find use in mathematical models that assume a specified behavior or phenomenon depends on the present as well as the past state of a system.[2] In other words, past events explicitly influence future results. For this reason, functional differential equations are used to in many applications rather than ordinary differential equations (ODE), in which future behavior only implicitly depends on the past.


Definition

Unlike ordinary differential equations, which contain a function of one variable and its derivatives evaluated with the same input, functional differential equations contain a function and its derivatives evaluated with different input values.

-   An example of an ordinary differential equation would be f′(x) = 2f(x) + 1
-   In comparison, an functional differential equation would be f′(x) = 2f(x + 3) − [f(x − 1)]²

The simplest type of functional differential equation, called the RETARDED FUNCTIONAL DIFFERENTIAL EQUATION or RETARDED DIFFERENTIAL DIFFERENCE EQUATION, is of the form[3]

_x_′(_t_) = _f_(_t_, _x_(_t_), _x_′(_t_ − _r_))

Examples

    The simplest, fundamental functional differential equation is the linear first-order delay differential equation[4] which is given by

_x_′(_t_) = _α_₁(_t_)_x_(_t_) + _α_₂_x_(_t_ − _τ_) + _f_(_t_), _t_ ≥ 0
where α₁, α₂, τ are constants, f(t) is some continuous function, and x is a scalar. Below is a table with a comparison of several ordinary and functional differential equations.

                                 Ordinary differential equation   Functional differential equation
  ------------------------------ -------------------------------- ----------------------------------
  EXAMPLES                       f′(x) = x² − 3                   f′(x) = 3x − f(x − 4)
  f′(x) = f(x) − 8               x′(t) = 3x(2t) − [x(t − 1)]²
  F(t, x(t), x′(t), x″(t)) = 0   2x(3t + 1) − 5x(4t) = 1
  f′(x) = 4f(x) − 3x


Types of functional differential equations

"Functional differential equation" is the general name for a number of more specific types of differential equations that are used in numerous applications. There are delay differential equations, integro-differential equations, and so on.

Differential difference equation

Differential difference equations are functional differential equations in which the argument values are discrete.[5] The general form for functional differential equations of finitely many discrete deviating arguments is

_x_^((_n_))(_t_) = _f_(_t_, _x_^((_n_₁))(_t_ − _τ_₁(_t_)), _x_^((_n_₂))(_t_ − _τ_₂(_t_)), …, _x_^((_n__(_k_)))(_t_ − _τ__(_k_)(_t_)))
where x(t) ∈ ℝ^(m), n₁, n₂, …, n_(i) ≥ 0, and τ₁(t), τ₂(t), …, τ_(i)(t) ≥ 0

Differential difference equations are also referred to as _retarded_, _neutral_, _advanced_, and _mixed_ functional differential equations. This classification depends on whether the rate of change of the current state of the system depends on past values, future values, or both.[6]

  Classifications of differential difference equations[7]
  ---------------------------------------------------------
  Retarded
  Neutral
  Advanced

Delay differential equation

Functional differential equations of retarded type occur when max {n₁, n₂, …, n_(k) } < n for the equation given above. In other words, this class of functional differential equations depends on the past and present values of the function with delays.

A simple example of an retarded functional differential equation is

_x_′(_t_) =  − _x_(_t_ − _τ_)
whereas a more general form for discrete deviating arguments can be written as

_x_′(_t_) = _f_(_t_, _x_(_t_ − _τ_₁(_t_)), _x_(_t_ − _τ_₂(_t_)), …, _x_(_t_ − _τ__(_k_)(_t_))).

Neutral differential equations

Functional differential equations of neutral type, or neutral differential equations occur when

max {_n_₁, _n_₂, …, _n__(_k_)} < _n_.
Neutral differential equations depend on past and present values of the function, similarly to retarded differential equations, except it also depends on derivatives with delays. In other words, retarded differential equations do not involve the given function's derivative with delays while neutral differential equations do.

Integro-differential equation

Integro-differential equations of Volterra type are functional differential equations with continuous argument values.[8] Integro-differential equations involve both the integrals and derivatives of some function with respect to its argument.

The continuous integro-differential equation for retarded functional differential equations, x′(t) = f(t, x(t − τ₁(t)), x(t − τ₂(t)), …, x(t − τ_(k)(t))), can be written as

_x_′(_t_) = _f_(_t_, ∫_(_t_ − _τ_(_t_))^(_t_)_K_(_t_, _θ_, _x_(_θ_))), _τ_(_t_) ≥ 0


Application

Functional differential equations have been used in models that determine future behavior of a certain phenomenon determined by the present and the past. Future behavior of phenomena, described by the solutions of ODEs, assumes that behavior is independent of the past.[9] However, there can be many situations that depend on past behavior.

FDEs are applicable for models in multiple fields, such as medicine, mechanics, biology, and economics. FDEs have been used in research for heat-transfer, signal processing, evolution of a species, traffic flow and study of epidemics.[10][11]

Population growth with time lag

    A logistic equation for population growth is given by

:*${\mathrm{d} x\over\mathrm{d} t} = \rho\,x(t)\left(1- \frac{x(t)} k \right),$

    where _Ρ_ is the reproduction rate and _K_ is the carrying capacity. x(t) represents the population size at time _T_, and $\rho \Biggl(1- \frac{x(t)}{k} \Biggr)$ is the density-dependent reproduction rate.[12]

    If we were to now apply this to an earlier time t − τ, we get

:*${\mathrm{d} x\over\mathrm{d} t} = \rho\,x(t) \left(1- \frac{x(t-\tau)} k \right)$

Mixing model

    Upon exposure to applications of ordinary differential equations, many come across the mixing model of some chemical solution.

    Suppose there is a container holding liters of salt water. Salt water is flowing in, and out of the container at the same rate r of liters per second. In other words, the rate of water flowing in is equal to the rate of the salt water solution flowing out. Let V be the amount in liters of salt water in the container and x(t) be the uniform concentration in grams per liter of salt water at time t. Then, we have the differential equation[13]
    -   $x'(t)=-\frac r V x(t), \frac r V > 0$

    The problem with this equation is that it makes the assumption that every drop of water that enters the contain is instantaneously mixed into the solution. This can be eliminated by using a FDE instead of an ODE.

    Let x(t) be the average concentration at time t, rather than uniform. Then, let's assume the solution leaving the container at time t is equal to x(t − τ), τ > 0, the average concentration at some earlier time. Then, the equation is a delay-differential equation of the form[14]
    -   $x'(t)=- \frac{r}{V} x(t-\tau)$

Volterra's predator-prey model

    The Lotka–Volterra predator-prey model was originally developed to observe the population of sharks and fish in the Adriatic Sea; however, this model has been used in many other fields for different uses, such as describing chemical reactions. Modelling predatory-prey population has always been widely researched, and as a result, there have been many different forms of the original equation.

    One example, as shown by Xu, Wu (2013),[15] of the Lotka–Volterra model with time-delay is given below:
    -   p'(t)=p(t)\Biggl[r_1(t)-a_{11}(t)p\biggl(t-\tau_{11}(t)\biggr)-a_{12}(t)P_1\biggl(t-\tau_{12}(t)\biggr)-a_{13}(t)P_2\biggl(t-\tau_{13}(t)\biggr)\Biggr]

:* P₁′(t) = P₁(t)[ − r₂(t) + a₂₁(t)p(t − τ₂₁(t)) − a₂₂(t)P₁(t − τ₂₂(t)) − a₂₃(t)P₂(t − τ₂₃(t))]

:* P₂′(t) = P₂(t)[ − r₂(t) + a₃₁(t)p(t − τ₃₁(t)) − a₃₂(t)P₁(t − τ₃₂(t)) − a₃₃(t)P₂(t − τ₃₃(t))]

    where p(t) denotes the prey population density at time t, P₁(t) and P₂(t) denote the density of the predator population at time t, r_(i), a_(ij) ∈ C(ℝ, [0, ∞)) and τ_(ij) ∈ C(ℝ, ℝ)

    Note that this model uses linear partial differential equations.

Other models using FDEs

Examples of other models that have used FDEs, namely RFDEs, are given below:

-   Controlled motion of a rigid body[16]
-   Periodic motions[17]
-   Flip-flop circuit as a NDE[18]
-   Model of HIV epidemic
-   Math models of sugar quantity in blood[19]
-   Evolution equations of single species[20]
-   Spread of an infection between two species[21]


See also

-   Volterra integral equation
-   Lotka–Volterra equations
-   Bifurcation theory
-   Lyapunov function
-   Volterra series


References


Further reading

-   Herdman, Terry L.; Rankin III, Samuel M.; Stech, Harlan W. (1981). _Integral and Functional Differential Equations: Lecture notes._ 67. United States: Marcel Dekker Inc, Pure and Applied Mathematics
-   Ford, Neville J.; Lumb, Patricia M. (2009). "Mixed-type functional differential equations: A numerical approach". _Journal of Computational and Applied Mathematics._ 229 (2): 471–479
-   Lemon, Greg; Kinf, John R. (2012). :A functional differential equation model for biological cell sorting due to differential adhesion". _Mathematical Models and Methods in Applied Sciences._ 12(1): 93–126
-   Da Silva, Carmen, Escalante, René (2011). "Segmented Tau approximation for forward-backward functional differential equation". _Computers and Mathematics with Applications._ 62 (12): 4582–4591
-   Pravica, D. W.; Randriampiry, N,; Spurr, M. J. (2009). "Applications of an advanced differential equation in the study of wavelets". _Applied and Computational Harmonic Analysis._ 27 (1): 2(10)
-   Breda, Dimitri; Maset, Stefano; Vermiglio Rossana (2015). _Stability of Linear Delay Differential Equations: A Numerical Approach with MATLAB._ Springer.

Category:Differential equations

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]