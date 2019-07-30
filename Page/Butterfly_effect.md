for values ρ=28, σ = 10, β = 8/3. The butterfly effect or sensitive dependence on initial conditions is the property of a dynamical system that, starting from any of various arbitrarily close alternative initial conditions on the attractor, the iterated points will become arbitrarily spread out from each other.]]

In chaos theory, the BUTTERFLY EFFECT is the sensitive dependence on initial conditions in which a small change in one state of a deterministic nonlinear system can result in large differences in a later state.[1]

The term, closely associated with the work of Edward Lorenz, is derived from the metaphorical example of the details of a tornado (the exact time of formation, the exact path taken) being influenced by minor perturbations such as the flapping of the wings of a distant butterfly several weeks earlier. Lorenz discovered the effect when he observed that runs of his weather model with initial condition data that was rounded in a seemingly inconsequential manner would fail to reproduce the results of runs with the unrounded initial condition data. A very small change in initial conditions had created a significantly different outcome.[2]

The idea that small causes may have large effects in general and in weather specifically was earlier recognized by French mathematician and engineer Henri Poincaré and American mathematician and philosopher Norbert Wiener. Edward Lorenz's work placed the concept of _instability_ of the Earth's atmosphere onto a quantitative base and linked the concept of instability to the properties of large classes of dynamic systems which are undergoing nonlinear dynamics and deterministic chaos.[3]

The butterfly effect can also be demonstrated by very simple systems.


History

In _The Vocation of Man_ (1800), Johann Gottlieb Fichte says "you could not remove a single grain of sand from its place without thereby ... changing something throughout all parts of the immeasurable whole".

Chaos theory and the sensitive dependence on initial conditions were described in the literature in a particular case of the three-body problem by Henri Poincaré in 1890.[4] He later proposed that such phenomena could be common, for example, in meteorology.[5]

In 1898, Jacques Hadamard noted general divergence of trajectories in spaces of negative curvature. Pierre Duhem discussed the possible general significance of this in 1908.[6]

The idea that one butterfly could eventually have a far-reaching ripple effect on subsequent historic events made its earliest known appearance in "A Sound of Thunder", a 1952 short story by Ray Bradbury about time travel.[7]

In 1961, Lorenz was running a numerical computer model to redo a weather prediction from the middle of the previous run as a shortcut. He entered the initial condition 0.506 from the printout instead of entering the full precision 0.506127 value. The result was a completely different weather scenario.[8]

Lorenz wrote:

In 1963, Lorenz published a theoretical study of this effect in a highly cited, seminal paper called _Deterministic Nonperiodic Flow_[9][10] (the calculations were performed on a Royal McBee LGP-30 computer).[11][12] Elsewhere he stated: Following suggestions from colleagues, in later speeches and papers Lorenz used the more poetic butterfly. According to Lorenz, when he failed to provide a title for a talk he was to present at the 139th meeting of the American Association for the Advancement of Science in 1972, Philip Merilees concocted _Does the flap of a butterfly’s wings in Brazil set off a tornado in Texas?_ as a title.[13] Although a butterfly flapping its wings has remained constant in the expression of this concept, the location of the butterfly, the consequences, and the location of the consequences have varied widely.[14]

The phrase refers to the idea that a butterfly's wings might create tiny changes in the atmosphere that may ultimately alter the path of a tornado or delay, accelerate or even prevent the occurrence of a tornado in another location. The butterfly does not power or directly create the tornado, but the term is intended to imply that the flap of the butterfly's wings can _cause_ the tornado: in the sense that the flap of the wings is a part of the initial conditions; one set of conditions leads to a tornado while the other set of conditions doesn't. The flapping wing represents a small change in the initial condition of the system, which cascades to large-scale alterations of events (compare: domino effect). Had the butterfly not flapped its wings, the trajectory of the system might have been vastly different—but it's also equally possible that the set of conditions without the butterfly flapping its wings is the set that leads to a tornado.

The butterfly effect presents an obvious challenge to prediction, since initial conditions for a system such as the weather can never be known to complete accuracy. This problem motivated the development of ensemble forecasting, in which a number of forecasts are made from perturbed initial conditions.[15]

Some scientists have since argued that the weather system is not as sensitive to initial conditions as previously believed.[16] David Orrell argues that the major contributor to weather forecast error is model error, with sensitivity to initial conditions playing a relatively small role.[17][18] Stephen Wolfram also notes that the Lorenz equations are highly simplified and do not contain terms that represent viscous effects; he believes that these terms would tend to damp out small perturbations.[19]

While the "butterfly effect" is often explained as being synonymous with sensitive dependence on initial conditions of the kind described by Lorenz in his 1963 paper (and previously observed by Poincaré), the butterfly metaphor was originally applied[20] to work he published in 1969[21] which took the idea a step further. Lorenz proposed a mathematical model for how tiny motions in the atmosphere scale up to affect larger systems. He found that the systems in that model could only be predicted up to a specific point in the future, and beyond that, reducing the error in the initial conditions would not increase the predictability (as long as the error is not zero). This demonstrated that a deterministic system could be "observationally indistinguishable" from a non-deterministic one in terms of predictability. Recent re-examinations of this paper suggest that it offered a significant challenge to the idea that our universe is deterministic, comparable to the challenges offered by quantum physics.[22][23]


Illustration

    {|class="wikitable" width=100%

|- ! colspan=3|The butterfly effect in the Lorenz attractor |- | colspan="2" style="text-align:center;"| time 0 ≤ _t_ ≤ 30 (larger) | style="text-align:center;"| _z_ coordinate (larger) |- | colspan="2" style="text-align:center;"| | style="text-align:center;"| |- |colspan=3| These figures show two segments of the three-dimensional evolution of two trajectories (one in blue, and the other in yellow) for the same period of time in the Lorenz attractor starting at two initial points that differ by only 10^(−5) in the x-coordinate. Initially, the two trajectories seem coincident, as indicated by the small difference between the _z_ coordinate of the blue and yellow trajectories, but for _t_ > 23 the difference is as large as the value of the trajectory. The final position of the cones indicates that the two trajectories are no longer coincident at _t_ = 30. |- | style="text-align:center;" colspan="3"| An animation of the Lorenz attractor shows the continuous evolution. |}


Theory and mathematical definition

Recurrence, the approximate return of a system towards its initial conditions, together with sensitive dependence on initial conditions, are the two main ingredients for chaotic motion. They have the practical consequence of making complex systems, such as the weather, difficult to predict past a certain time range (approximately a week in the case of weather) since it is impossible to measure the starting atmospheric conditions completely accurately.

A dynamical system displays sensitive dependence on initial conditions if points arbitrarily close together separate over time at an exponential rate.[24] The definition is not topological, but essentially metrical.

If _M_ is the state space for the map f^(t), then f^(t) displays sensitive dependence to initial conditions if for any x in _M_ and any δ > 0, there are y in _M_, with distance _d_(. , .) such that 0 < d(x, y) < δ and such that

_d_(_f_^(_τ_)(_x_), _f_^(_τ_)(_y_)) > _e_^(_a__τ_) _d_(_x_, _y_)

for some positive parameter _a_. The definition does not require that all points from a neighborhood separate from the base point _x_, but it requires one positive Lyapunov exponent.

The simplest mathematical framework exhibiting sensitive dependence on initial conditions is provided by a particular parametrization of the logistic map:

_x__(_n_ + 1) = 4_x__(_n_)(1 − _x__(_n_)), 0 ≤ _x_₀ ≤ 1,

which, unlike most chaotic maps, has a closed-form solution:

_x__(_n_) = sin²(2^(_n_)_θ__π_)

where the initial condition parameter θ is given by $\theta = \tfrac{1}{\pi}\sin^{-1}(x_0^{1/2})$. For rational θ, after a finite number of iterations x_(n) maps into a periodic sequence. But almost all θ are irrational, and, for irrational θ, x_(n) never repeats itself – it is non-periodic. This solution equation clearly demonstrates the two key features of chaos – stretching and folding: the factor 2^(_n_) shows the exponential growth of stretching, which results in sensitive dependence on initial conditions (the butterfly effect), while the squared sine function keeps x_(n) folded within the range [0, 1].


In physical systems

In weather

The butterfly effect is most familiar in terms of weather; it can easily be demonstrated in standard weather prediction models, for example. The climate scientists James Annan and William Connolley explain that chaos is important in the development of weather prediction methods; models are sensitive to initial conditions. They add the caveat: "Of course the existence of an unknown butterfly flapping its wings has no direct bearing on weather forecasts. since it will take far too long for such a small perturbation to grow to a significant size, and we have many more immediate uncertainties to worry about. So the direct impact of this phenomenon on weather prediction is often somewhat wrong."[25]

In quantum mechanics

The potential for sensitive dependence on initial conditions (the butterfly effect) has been studied in a number of cases in semiclassical and quantum physics including atoms in strong fields and the anisotropic Kepler problem.[26][27] Some authors have argued that extreme (exponential) dependence on initial conditions is not expected in pure quantum treatments;[28][29] however, the sensitive dependence on initial conditions demonstrated in classical motion is included in the semiclassical treatments developed by Martin Gutzwiller[30] and Delos and co-workers.[31]

Other authors suggest that the butterfly effect can be observed in quantum systems. Karkuszewski et al. consider the time evolution of quantum systems which have slightly different Hamiltonians. They investigate the level of sensitivity of quantum systems to small changes in their given Hamiltonians.[32] Poulin et al. presented a quantum algorithm to measure fidelity decay, which "measures the rate at which identical initial states diverge when subjected to slightly different dynamics". They consider fidelity decay to be "the closest quantum analog to the (purely classical) butterfly effect".[33] Whereas the classical butterfly effect considers the effect of a small change in the position and/or velocity of an object in a given Hamiltonian system, the quantum butterfly effect considers the effect of a small change in the Hamiltonian system with a given initial position and velocity.[34][35] This quantum butterfly effect has been demonstrated experimentally.[36] Quantum and semiclassical treatments of system sensitivity to initial conditions are known as quantum chaos.[37][38]


In popular culture

The journalist Peter Dizikes, writing in _The Boston Globe_ in 2008, notes that popular culture likes the idea of the butterfly effect, but gets it wrong. Whereas Lorenz suggested correctly with his butterfly metaphor that predictability "is inherently limited", popular culture supposes that each event can be explained by finding the small reasons that caused it. Dizikes explains: "It speaks to our larger expectation that the world should be comprehensible – that everything happens for a reason, and that we can pinpoint all those reasons, however small they may be. But nature itself defies this expectation."[39]

The video game _Until Dawn_ (2015) is based on a concept of the butterfly effect.


See also

-   Actuality and potentiality
-   Avalanche effect
-   Behavioral cusp
-   Butterfly effect in popular culture
-   Cascading failure
-   Causality
-   Chain reaction
-   Clapotis
-   Determinism
-   Domino effect
-   Dynamical systems
-   Fractal
-   Great Stirrup Controversy
-   Innovation butterfly
-   Kessler syndrome
-   Law of unintended consequences
-   Norton's dome
-   Point of divergence
-   Positive feedback
-   Representativeness heuristic
-   Ripple effect
-   Snowball effect
-   Traffic congestion
-   Tropical cyclogenesis


References


Further reading

-   James Gleick, _Chaos: Making a New Science_, New York: Viking, 1987. 368 pp.
-   -


External links

-   Weather and Chaos: The Work of Edward N. Lorenz. A short documentary that explains the "butterfly effect" in context of Lorenz's work.
-   The Chaos Hypertextbook. An introductory primer on chaos and fractals
-   The meaning of the butterfly: Why pop culture loves the 'butterfly effect,' and gets it totally wrong, Peter Dizikes, _The Boston Globe_, June 8, 2008
-   New England Complex Systems Institute - Concepts: Butterfly Effect
-   The Chaos Hypertextbook. An introductory primer on chaos and fractals
-   ChaosBook.org. Advanced graduate textbook on chaos (no fractals)
-

Category:Causality Category:Chaos theory Category:Determinism Category:Metaphors referring to insects Category:Physical phenomena Category:Stability theory

[1]

[2]

[3]

[4] Some Historical Notes: History of Chaos Theory

[5]

[6]

[7]

[8]

[9]

[10] Google Scholar citation record

[11]

[12]

[13] Lorenz: "Predictability", AAAS 139th meeting, 1972 Retrieved May 22, 2015

[14]

[15]

[16]

[17]

[18]

[19]

[20] Lorenz: "Predictability", AAAS 139th meeting, 1972 Retrieved May 22, 2015

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]