A MATHEMATICAL MODEL is a description of a system using mathematical concepts and language. The process of developing a mathematical model is termed MATHEMATICAL MODELING. Mathematical models are used in the natural sciences (such as physics, biology, earth science, chemistry) and engineering disciplines (such as computer science, electrical engineering), as well as in the social sciences (such as economics, psychology, sociology, political science).

A model may help to explain a system and to study the effects of different components, and to make predictions about behaviour.


Elements of a mathematical model

Mathematical models can take many forms, including dynamical systems, statistical models, differential equations, or game theoretic models. These and other types of models can overlap, with a given model involving a variety of abstract structures. In general, mathematical models may include logical models. In many cases, the quality of a scientific field depends on how well the mathematical models developed on the theoretical side agree with results of repeatable experiments. Lack of agreement between theoretical mathematical models and experimental measurements often leads to important advances as better theories are developed.

In the physical sciences, a traditional mathematical model contains most of the following elements:

1.  Governing equations
2.  Supplementary sub-models
    1.  Defining equations
    2.  Constitutive equations
3.  Assumptions and constraints
    1.  Initial and boundary conditions
    2.  Classical constraints and kinematic equations


Classifications

Mathematical models are usually composed of relationships and _variables_. Relationships can be described by _operators_, such as algebraic operators, functions, differential operators, etc. Variables are abstractions of system parameters of interest, that can be quantified. Several classification criteria can be used for mathematical models according to their structure:

-   LINEAR VS. NONLINEAR: If all the operators in a mathematical model exhibit linearity, the resulting mathematical model is defined as linear. A model is considered to be nonlinear otherwise. The definition of linearity and nonlinearity is dependent on context, and linear models may have nonlinear expressions in them. For example, in a statistical linear model, it is assumed that a relationship is linear in the parameters, but it may be nonlinear in the predictor variables. Similarly, a differential equation is said to be linear if it can be written with linear differential operators, but it can still have nonlinear expressions in it. In a mathematical programming model, if the objective functions and constraints are represented entirely by linear equations, then the model is regarded as a linear model. If one or more of the objective functions or constraints are represented with a nonlinear equation, then the model is known as a nonlinear model.
    Nonlinearity, even in fairly simple systems, is often associated with phenomena such as chaos and irreversibility. Although there are exceptions, nonlinear systems and models tend to be more difficult to study than linear ones. A common approach to nonlinear problems is linearization, but this can be problematic if one is trying to study aspects such as irreversibility, which are strongly tied to nonlinearity.
-   STATIC VS. DYNAMIC: A _dynamic_ model accounts for time-dependent changes in the state of the system, while a _static_ (or steady-state) model calculates the system in equilibrium, and thus is time-invariant. Dynamic models typically are represented by differential equations or difference equations.
-   EXPLICIT VS. IMPLICIT: If all of the input parameters of the overall model are known, and the output parameters can be calculated by a finite series of computations, the model is said to be _explicit_. But sometimes it is the _output_ parameters which are known, and the corresponding inputs must be solved for by an iterative procedure, such as Newton's method (if the model is linear) or Broyden's method (if non-linear). In such a case the model is said to be _implicit_. For example, a jet engine's physical properties such as turbine and nozzle throat areas can be explicitly calculated given a design thermodynamic cycle (air and fuel flow rates, pressures, and temperatures) at a specific flight condition and power setting, but the engine's operating cycles at other flight conditions and power settings cannot be explicitly calculated from the constant physical properties.
-   DISCRETE VS. CONTINUOUS: A discrete model treats objects as discrete, such as the particles in a molecular model or the states in a statistical model; while a continuous model represents the objects in a continuous manner, such as the velocity field of fluid in pipe flows, temperatures and stresses in a solid, and electric field that applies continuously over the entire model due to a point charge.
-   DETERMINISTIC VS. PROBABILISTIC (STOCHASTIC): A deterministic model is one in which every set of variable states is uniquely determined by parameters in the model and by sets of previous states of these variables; therefore, a deterministic model always performs the same way for a given set of initial conditions. Conversely, in a stochastic model—usually called a "statistical model"—randomness is present, and variable states are not described by unique values, but rather by probability distributions.
-   DEDUCTIVE, INDUCTIVE, OR FLOATING: A deductive model is a logical structure based on a theory. An inductive model arises from empirical findings and generalization from them. The floating model rests on neither theory nor observation, but is merely the invocation of expected structure. Application of mathematics in social sciences outside of economics has been criticized for unfounded models.[1] Application of catastrophe theory in science has been characterized as a floating model.[2]


Significance in the natural sciences

Mathematical models are of great importance in the natural sciences, particularly in physics. Physical theories are almost invariably expressed using mathematical models.

Throughout history, more and more accurate mathematical models have been developed. Newton's laws accurately describe many everyday phenomena, but at certain limits theory of relativity and quantum mechanics must be used. Though even these theories can't model or explain all phenomena themselves or together, such as black holes. . It is possible to obtain the less accurate models in appropriate limits, for example relativistic mechanics reduces to Newtonian mechanics at speeds much less than the speed of light. Quantum mechanics reduces to classical physics when the quantum numbers are high. For example, the de Broglie wavelength of a tennis ball is insignificantly small, so classical physics is a good approximation to use in this case.

It is common to use idealized models in physics to simplify things. Massless ropes, point particles, ideal gases and the particle in a box are among the many simplified models used in physics. The laws of physics are represented with simple equations such as Newton's laws, Maxwell's equations and the Schrödinger equation. These laws are a basis for making mathematical models of real situations. Many real situations are very complex and thus modeled approximate on a computer, a model that is computationally feasible to compute is made from the basic laws or from approximate models made from the basic laws. For example, molecules can be modeled by molecular orbital models that are approximate solutions to the Schrödinger equation. In engineering, physics models are often made by mathematical methods such as finite element analysis.

Different mathematical models use different geometries that are not necessarily accurate descriptions of the geometry of the universe. Euclidean geometry is much used in classical physics, while special relativity and general relativity are examples of theories that use geometries which are not Euclidean.


Some applications

Since prehistorical times simple models such as maps and diagrams have been used.

Often when engineers analyze a system to be controlled or optimized, they use a mathematical model. In analysis, engineers can build a descriptive model of the system as a hypothesis of how the system could work, or try to estimate how an unforeseeable event could affect the system. Similarly, in control of a system, engineers can try out different control approaches in simulations.

A mathematical model usually describes a system by a set of variables and a set of equations that establish relationships between the variables. Variables may be of many types; real or integer numbers, boolean values or strings, for example. The variables represent some properties of the system, for example, measured system outputs often in the form of signals, timing data, counters, and event occurrence (yes/no). The actual model is the set of functions that describe the relations between the different variables.


Building blocks

In business and engineering, mathematical models may be used to maximize a certain output. The system under consideration will require certain inputs. The system relating inputs to outputs depends on other variables too: decision variables, state variables, exogenous variables, and random variables.

Decision variables are sometimes known as independent variables. Exogenous variables are sometimes known as parameters or constants. The variables are not independent of each other as the state variables are dependent on the decision, input, random, and exogenous variables. Furthermore, the output variables are dependent on the state of the system (represented by the state variables).

Objectives and constraints of the system and its users can be represented as functions of the output variables or state variables. The objective functions will depend on the perspective of the model's user. Depending on the context, an objective function is also known as an _index of performance_, as it is some measure of interest to the user. Although there is no limit to the number of objective functions and constraints a model can have, using or optimizing the model becomes more involved (computationally) as the number increases.

For example, economists often apply linear algebra when using input-output models. Complicated mathematical models that have many variables may be consolidated by use of vectors where one symbol represents several variables.


A priori information

centered in the box.]]

Mathematical modeling problems are often classified into black box or white box models, according to how much a priori information on the system is available. A black-box model is a system of which there is no a priori information available. A white-box model (also called glass box or clear box) is a system where all necessary information is available. Practically all systems are somewhere between the black-box and white-box models, so this concept is useful only as an intuitive guide for deciding which approach to take.

Usually it is preferable to use as much a priori information as possible to make the model more accurate. Therefore, the white-box models are usually considered easier, because if you have used the information correctly, then the model will behave correctly. Often the a priori information comes in forms of knowing the type of functions relating different variables. For example, if we make a model of how a medicine works in a human system, we know that usually the amount of medicine in the blood is an exponentially decaying function. But we are still left with several unknown parameters; how rapidly does the medicine amount decay, and what is the initial amount of medicine in blood? This example is therefore not a completely white-box model. These parameters have to be estimated through some means before one can use the model.

In black-box models one tries to estimate both the functional form of relations between variables and the numerical parameters in those functions. Using a priori information we could end up, for example, with a set of functions that probably could describe the system adequately. If there is no a priori information we would try to use functions as general as possible to cover all different models. An often used approach for black-box models are neural networks which usually do not make assumptions about incoming data. Alternatively the NARMAX (Nonlinear AutoRegressive Moving Average model with eXogenous inputs) algorithms which were developed as part of nonlinear system identification [3] can be used to select the model terms, determine the model structure, and estimate the unknown parameters in the presence of correlated and nonlinear noise. The advantage of NARMAX models compared to neural networks is that NARMAX produces models that can be written down and related to the underlying process, whereas neural networks produce an approximation that is opaque.

Subjective information

Sometimes it is useful to incorporate subjective information into a mathematical model. This can be done based on intuition, experience, or expert opinion, or based on convenience of mathematical form. Bayesian statistics provides a theoretical framework for incorporating such subjectivity into a rigorous analysis: we specify a prior probability distribution (which can be subjective), and then update this distribution based on empirical data.

An example of when such approach would be necessary is a situation in which an experimenter bends a coin slightly and tosses it once, recording whether it comes up heads, and is then given the task of predicting the probability that the next flip comes up heads. After bending the coin, the true probability that the coin will come up heads is unknown; so the experimenter would need to make a decision (perhaps by looking at the shape of the coin) about what prior distribution to use. Incorporation of such subjective information might be important to get an accurate estimate of the probability.


Complexity

In general, model complexity involves a trade-off between simplicity and accuracy of the model. Occam's razor is a principle particularly relevant to modeling, its essential idea being that among models with roughly equal predictive power, the simplest one is the most desirable. While added complexity usually improves the realism of a model, it can make the model difficult to understand and analyze, and can also pose computational problems, including numerical instability. Thomas Kuhn argues that as science progresses, explanations tend to become more complex before a paradigm shift offers radical simplification.[4]

For example, when modeling the flight of an aircraft, we could embed each mechanical part of the aircraft into our model and would thus acquire an almost white-box model of the system. However, the computational cost of adding such a huge amount of detail would effectively inhibit the usage of such a model. Additionally, the uncertainty would increase due to an overly complex system, because each separate part induces some amount of variance into the model. It is therefore usually appropriate to make some approximations to reduce the model to a sensible size. Engineers often can accept some approximations in order to get a more robust and simple model. For example, Newton's classical mechanics is an approximated model of the real world. Still, Newton's model is quite sufficient for most ordinary-life situations, that is, as long as particle speeds are well below the speed of light, and we study macro-particles only.


Training and tuning

Any model which is not pure white-box contains some parameters that can be used to fit the model to the system it is intended to describe. If the modeling is done by an artificial neural network or other machine learning, the optimization of parameters is called _training_, while the optimization of model hyperparameters is called _tuning_ and often uses cross-validation[5]. In more conventional modeling through explicitly given mathematical functions, parameters are often determined by _curve fitting_.


Model evaluation

A crucial part of the modeling process is the evaluation of whether or not a given mathematical model describes a system accurately. This question can be difficult to answer as it involves several different types of evaluation.

Fit to empirical data

Usually the easiest part of model evaluation is checking whether a model fits experimental measurements or other empirical data. In models with parameters, a common approach to test this fit is to split the data into two disjoint subsets: training data and verification data. The training data are used to estimate the model parameters. An accurate model will closely match the verification data even though these data were not used to set the model's parameters. This practice is referred to as cross-validation in statistics.

Defining a metric to measure distances between observed and predicted data is a useful tool of assessing model fit. In statistics, decision theory, and some economic models, a loss function plays a similar role.

While it is rather straightforward to test the appropriateness of parameters, it can be more difficult to test the validity of the general mathematical form of a model. In general, more mathematical tools have been developed to test the fit of statistical models than models involving differential equations. Tools from non-parametric statistics can sometimes be used to evaluate how well the data fit a known distribution or to come up with a general model that makes only minimal assumptions about the model's mathematical form.

Scope of the model

Assessing the scope of a model, that is, determining what situations the model is applicable to, can be less straightforward. If the model was constructed based on a set of data, one must determine for which systems or situations the known data is a "typical" set of data.

The question of whether the model describes well the properties of the system between data points is called interpolation, and the same question for events or data points outside the observed data is called extrapolation.

As an example of the typical limitations of the scope of a model, in evaluating Newtonian classical mechanics, we can note that Newton made his measurements without advanced equipment, so he could not measure properties of particles travelling at speeds close to the speed of light. Likewise, he did not measure the movements of molecules and other small particles, but macro particles only. It is then not surprising that his model does not extrapolate well into these domains, even though his model is quite sufficient for ordinary life physics.

Philosophical considerations

Many types of modeling implicitly involve claims about causality. This is usually (but not always) true of models involving differential equations. As the purpose of modeling is to increase our understanding of the world, the validity of a model rests not only on its fit to empirical observations, but also on its ability to extrapolate to situations or data beyond those originally described in the model. One can think of this as the differentiation between qualitative and quantitative predictions. One can also argue that a model is worthless unless it provides some insight which goes beyond what is already known from direct investigation of the phenomenon being studied.

An example of such criticism is the argument that the mathematical models of optimal foraging theory do not offer insight that goes beyond the common-sense conclusions of evolution and other basic principles of ecology.[6]


Examples

-   One of the popular examples in computer science is the mathematical models of various machines, an example is the deterministic finite automaton (DFA) which is defined as an abstract mathematical concept, but due to the deterministic nature of a DFA, it is implementable in hardware and software for solving various specific problems. For example, the following is a DFA M with a binary alphabet, which requires that the input contains an even number of 0s.

for _M_]] _M_ = (_Q_, Σ, δ, _q_₀, _F_) where

-   _Q_ = {_S_₁, _S_₂},
-   Σ = {0, 1},
-   _q₀_ = _S_₁,
-   _F_ = {_S_₁}, and
-   δ is defined by the following state transition table:

    {| border="1" cell padding="1" cell spacing="0"

| ||

0

||

1

|- |_S_₁ || _S_₂ || _S_₁ |- |_S_₂ || _S_₁ || _S_₂ |}

The state _S_₁ represents that there has been an even number of 0s in the input so far, while _S_₂ signifies an odd number. A 1 in the input does not change the state of the automaton. When the input ends, the state will show whether the input contained an even number of 0s or not. If the input did contain an even number of 0s, _M_ will finish in state _S_₁, an accepting state, so the input string will be accepted.

The language recognized by _M_ is the regular language given by the regular expression 1*( 0 (1*) 0 (1*) )*, where "*" is the Kleene star, e.g., 1* denotes any non-negative number (possibly zero) of symbols "1".

-   Many everyday activities carried out without a thought are uses of mathematical models. A geographical map projection of a region of the earth onto a small, plane surface is a model[7] which can be used for many purposes such as planning travel.
-   Another simple activity is predicting the position of a vehicle from its initial position, direction and speed of travel, using the equation that distance traveled is the product of time and speed. This is known as dead reckoning when used more formally. Mathematical modeling in this way does not necessarily require formal mathematics; animals have been shown to use dead reckoning.[8][9]
-   _Population Growth_. A simple (though approximate) model of population growth is the Malthusian growth model. A slightly more realistic and largely used population growth model is the logistic function, and its extensions.
-   _Model of a particle in a potential-field_. In this model we consider a particle as being a point of mass which describes a trajectory in space which is modeled by a function giving its coordinates in space as a function of time. The potential field is given by a function V​ : ℝ³​ → ℝ and the trajectory, that is a function R​ : ℝ → ℝ³, is the solution of the differential equation:

$$-\frac{\mathrm{d}^2\mathbf{r}(t)}{\mathrm{d}t^2}m=\frac{\partial V[\mathbf{r}(t)]}{\partial x}\mathbf{\hat{x}}+\frac{\partial V[\mathbf{r}(t)]}{\partial y}\mathbf{\hat{y}}+\frac{\partial V[\mathbf{r}(t)]}{\partial z}\mathbf{\hat{z}},$$

that can be written also as:

$$m\frac{\mathrm{d}^2\mathbf{r}(t)}{\mathrm{d}t^2}=-\nabla V[\mathbf{r}(t)].$$

    Note this model assumes the particle is a point mass, which is certainly known to be false in many cases in which we use this model; for example, as a model of planetary motion.

-   _Model of rational behavior for a consumer_. In this model we assume a consumer faces a choice of _n_ commodities labeled 1,2,...,_n_ each with a market price _p_₁, _p_₂,..., _p__(_n_). The consumer is assumed to have an ordinal utility function _U_ (ordinal in the sense that only the sign of the differences between two utilities, and not the level of each utility, is meaningful), depending on the amounts of commodities _x_₁, _x_₂,..., _x__(_n_) consumed. The model further assumes that the consumer has a budget _M_ which is used to purchase a vector _x_₁, _x_₂,..., _x__(_n_) in such a way as to maximize _U_(_x_₁, _x_₂,..., _x__(_n_)). The problem of rational behavior in this model then becomes an optimization problem, that is:



        max U(x₁, x₂, …, x_(n))
        subject to:
        $\sum_{i=1}^n p_i x_i \leq M.$
        x_(i) ≥ 0   ∀i ∈ {1, 2, …, n}

    This model has been used in a wide variety of economic contexts, such as in general equilibrium theory to show existence and Pareto efficiency of economic equilibria.

-   _Neighbour-sensing model_ explains the mushroom formation from the initially chaotic fungal network.
-   _Computer science_: models in Computer Networks, data models, surface model,...
-   _Mechanics_: movement of rocket model,...


See also

-   Agent-based model
-   All models are wrong
-   Cliodynamics
-   Computer simulation
-   Conceptual model
-   Decision engineering
-   Grey box model
-   Mathematical biology
-   Mathematical diagram
-   Mathematical economics
-   Mathematical finance
-   Mathematical psychology
-   Mathematical sociology
-   Microscale and macroscale models
-   Model inversion
-   Scientific model
-   Statistical model
-   System identification
-   TK Solver - Rule-based modeling


References


Further reading

Books

-   "Modeling and Simulation", G. Dubois, Taylor & Francis, CRC Press, 2018.
-   Aris, Rutherford [ 1978 ] ( 1994 ). _Mathematical Modelling Techniques_, New York: Dover.
-   Bender, E.A. [ 1978 ] ( 2000 ). _An Introduction to Mathematical Modeling_, New York: Dover.
-   Gershenfeld, N. (1998) _The Nature of Mathematical Modeling_, Cambridge University Press .
-   Lin, C.C. & Segel, L.A. ( 1988 ). _Mathematics Applied to Deterministic Problems in the Natural Sciences_, Philadelphia: SIAM.

Specific applications

-   Korotayev A., Malkov A., Khaltourina D. (2006). _Introduction to Social Macrodynamics: Compact Macromodels of the World System Growth_. Moscow: Editorial URSS .
-   Papadimitriou, Fivos. (2010). Mathematical Modelling of Spatial-Ecological Complex Systems: an Evaluation. Geography, Environment, Sustainability 1(3), 67-80.
-   -   _An Introduction to Infectious Disease Modelling_ by Emilia Vynnycky and Richard G White.


External links

General reference

-   Patrone, F. Introduction to modeling via differential equations, with critical remarks.
-   Plus teacher and student package: Mathematical Modelling. Brings together all articles on mathematical modeling from _Plus Magazine_, the online mathematics magazine produced by the Millennium Mathematics Project at the University of Cambridge.

Philosophical

-   Frigg, R. and S. Hartmann, Models in Science, in: The Stanford Encyclopedia of Philosophy, (Spring 2006 Edition)
-   Griffiths, E. C. (2010) What is a model?

Category:Applied mathematics Category:Collective intelligence Category:Conceptual models Category:Knowledge representation Mathematical_modeling Category:Mathematical terminology Category:Mathematical and quantitative methods (economics)

[1]

[2]

[3] Billings S.A. (2013), _Nonlinear System Identification: NARMAX Methods in the Time, Frequency, and Spatio-Temporal Domains_, Wiley.

[4]

[5]

[6]

[7] landinfo.com, definition of map projection

[8]

[9]