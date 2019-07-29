Lorenz_attractor_yb.svg for values 28}}, 10}}, 8/3}}]] Double-compound-pendulum.gif animation showing chaotic behavior. Starting the pendulum from a slightly different initial condition would result in a completely different trajectory. The double-rod pendulum is one of the simplest dynamical systems with chaotic solutions.]]

CHAOS THEORY is a branch of mathematics focusing on the behavior of dynamical systems that are highly sensitive to initial conditions. "Chaos" is an interdisciplinary theory stating that within the apparent randomness of chaotic complex systems, there are underlying patterns, constant feedback loops, repetition, self-similarity, fractals, self-organization, and reliance on programming at the initial point known as _sensitive dependence on initial conditions_. The butterfly effect describes how a small change in one state of a deterministic nonlinear system can result in large differences in a later state, e.g. a butterfly flapping its wings in Brazil can cause a hurricane in Texas.[1]

Small differences in initial conditions, such as those due to rounding errors in numerical computation, yield widely diverging outcomes for such dynamical systems, rendering long-term prediction of their behavior impossible in general.[2][3] This happens even though these systems are deterministic, meaning that their future behavior is fully determined by their initial conditions, with no random elements involved.[4] In other words, the deterministic nature of these systems does not make them predictable.[5][6] This behavior is known as DETERMINISTIC CHAOS, or simply CHAOS. The theory was summarized by Edward Lorenz as:[7]

Chaotic behavior exists in many natural systems, such as weather and climate.[8][9] It also occurs spontaneously in some systems with artificial components, such as road traffic.[10] This behavior can be studied through analysis of a chaotic mathematical model, or through analytical techniques such as recurrence plots and Poincaré maps. Chaos theory has applications in several disciplines, including meteorology, anthropology,[11] sociology, physics,[12] environmental science, computer science, engineering, economics, biology, ecology, and philosophy. The theory formed the basis for such fields of study as complex dynamical systems, edge of chaos theory, and self-assembly processes.


Introduction

Chaos theory concerns deterministic systems whose behavior can in principle be predicted. Chaotic systems are predictable for a while and then 'appear' to become random.[13] The amount of time that the behavior of a chaotic system can be effectively predicted depends on three things: How much uncertainty can be tolerated in the forecast, how accurately its current state can be measured, and a time scale depending on the dynamics of the system, called the Lyapunov time. Some examples of Lyapunov times are: chaotic electrical circuits, about 1 millisecond; weather systems, a few days (unproven); the inner solar system, 4 to 5 million years.[14] In chaotic systems, the uncertainty in a forecast increases exponentially with elapsed time. Hence, mathematically, doubling the forecast time more than squares the proportional uncertainty in the forecast. This means, in practice, a meaningful prediction cannot be made over an interval of more than two or three times the Lyapunov time. When meaningful predictions cannot be made, the system appears random.[15]


Chaotic dynamics

Chaos_Sensitive_Dependence.svg 1 displays sensitivity to initial x positions. Here, two series of _x_ and _y_ values diverge markedly over time from a tiny initial difference.]] In common usage, "chaos" means "a state of disorder".[16] However, in chaos theory, the term is defined more precisely. Although no universally accepted mathematical definition of chaos exists, a commonly used definition originally formulated by Robert L. Devaney says that, to classify a dynamical system as chaotic, it must have these properties:[17]

1.  it must be sensitive to initial conditions,
2.  it must be topologically transitive,
3.  it must have dense periodic orbits.

In some cases, the last two properties in the above have been shown to actually imply sensitivity to initial conditions.[18][19] In these cases, while it is often the most practically significant property, "sensitivity to initial conditions" need not be stated in the definition.

If attention is restricted to intervals, the second property implies the other two.[20] An alternative, and in general weaker, definition of chaos uses only the first two properties in the above list.[21]

Chaos as a spontaneous breakdown of topological supersymmetry

In continuous time dynamical systems, chaos is the phenomenon of the spontaneous breakdown of topological supersymmetry, which is an intrinsic property of evolution operators of all stochastic and deterministic (partial) differential equations.[22][23] This picture of dynamical chaos works not only for deterministic models but also for models with external noise, which is an important generalization from the physical point of view, because in reality, all dynamical systems experience influence from their stochastic environments. Within this picture, the long-range dynamical behavior associated with chaotic dynamics, e.g., the butterfly effect, is a consequence of the Goldstone's theorem in the application to the spontaneous topological supersymmetry breaking.

Sensitivity to initial conditions

SensInitCond.gif SENSITIVITY TO INITIAL CONDITIONS means that each point in a chaotic system is arbitrarily closely approximated by other points with significantly different future paths, or trajectories. Thus, an arbitrarily small change, or perturbation, of the current trajectory may lead to significantly different future behavior.

Sensitivity to initial conditions is popularly known as the "butterfly effect", so-called because of the title of a paper given by Edward Lorenz in 1972 to the American Association for the Advancement of Science in Washington, D.C., entitled _Predictability: Does the Flap of a Butterfly's Wings in Brazil set off a Tornado in Texas?_. The flapping wing represents a small change in the initial condition of the system, which causes a chain of events that prevents the predictability of large-scale phenomena. Had the butterfly not flapped its wings, the trajectory of the overall system would have been vastly different.

A consequence of sensitivity to initial conditions is that if we start with a limited amount of information about the system (as is usually the case in practice), then beyond a certain time the system is no longer predictable. This is most prevalent in the case of weather, which is generally predictable only about a week ahead.[24] Of course, this does not mean that we cannot say anything about events far in the future; some restrictions on the system are present. With weather, we know that the temperature will not naturally reach 100 °C or fall to −130 °C on earth (during the current geologic era), but we can't say exactly what day will have the hottest temperature of the year.

In more mathematical terms, the Lyapunov exponent measures the sensitivity to initial conditions. Given two starting trajectories in the phase space that are infinitesimally close, with initial separation δZ₀, the two trajectories end up diverging at a rate given by

|_δ_Z(_t_)| ≈ _e_^(_λ__t_)|_δ_Z₀|,

where t is the time and λ is the Lyapunov exponent. The rate of separation depends on the orientation of the initial separation vector, so a whole spectrum of Lyapunov exponents exist. The number of Lyapunov exponents is equal to the number of dimensions of the phase space, though it is common to just refer to the largest one. For example, the maximal Lyapunov exponent (MLE) is most often used because it determines the overall predictability of the system. A positive MLE is usually taken as an indication that the system is chaotic.

Also, other properties relate to sensitivity of initial conditions, such as measure-theoretical mixing (as discussed in ergodic theory) and properties of a K-system.[25]

Topological mixing

LogisticTopMixing1-6.gif Chaos_Topological_Mixing.png 1 also displays topological mixing. Here, the blue region is transformed by the dynamics first to the purple region, then to the pink and red regions, and eventually to a cloud of vertical lines scattered across the space.]]

TOPOLOGICAL MIXING (or TOPOLOGICAL TRANSITIVITY) means that the system evolves over time so that any given region or open set of its phase space eventually overlaps with any other given region. This mathematical concept of "mixing" corresponds to the standard intuition, and the mixing of colored dyes or fluids is an example of a chaotic system.

Topological mixing is often omitted from popular accounts of chaos, which equate chaos with only sensitivity to initial conditions. However, sensitive dependence on initial conditions alone does not give chaos. For example, consider the simple dynamical system produced by repeatedly doubling an initial value. This system has sensitive dependence on initial conditions everywhere, since any pair of nearby points eventually becomes widely separated. However, this example has no topological mixing, and therefore has no chaos. Indeed, it has extremely simple behavior: all points except 0 tend to positive or negative infinity.

Density of periodic orbits

For a chaotic system to have dense periodic orbits means that every point in the space is approached arbitrarily closely by periodic orbits.[26] The one-dimensional logistic map defined by _x_ → 4 _x_ (1 – _x_) is one of the simplest systems with density of periodic orbits. For example, $\tfrac{5-\sqrt{5}}{8}$ → $\tfrac{5+\sqrt{5}}{8}$ → $\tfrac{5-\sqrt{5}}{8}$ (or approximately 0.3454915 → 0.9045085 → 0.3454915) is an (unstable) orbit of period 2, and similar orbits exist for periods 4, 8, 16, etc. (indeed, for all the periods specified by Sharkovskii's theorem).[27]

Sharkovskii's theorem is the basis of the Li and Yorke[28] (1975) proof that any continuous one-dimensional system that exhibits a regular cycle of period three will also display regular cycles of every other length, as well as completely chaotic orbits.

Strange attractors

TwoLorenzOrbits.jpg displays chaotic behavior. These two plots demonstrate sensitive dependence on initial conditions within the region of phase space occupied by the attractor.]] Some dynamical systems, like the one-dimensional logistic map defined by _x_ → 4 _x_ (1 – _x_), are chaotic everywhere, but in many cases chaotic behavior is found only in a subset of phase space. The cases of most interest arise when the chaotic behavior takes place on an attractor, since then a large set of initial conditions leads to orbits that converge to this chaotic region.[29]

An easy way to visualize a chaotic attractor is to start with a point in the basin of attraction of the attractor, and then simply plot its subsequent orbit. Because of the topological transitivity condition, this is likely to produce a picture of the entire final attractor, and indeed both orbits shown in the figure on the right give a picture of the general shape of the Lorenz attractor. This attractor results from a simple three-dimensional model of the Lorenz weather system. The Lorenz attractor is perhaps one of the best-known chaotic system diagrams, probably because it is not only one of the first, but it is also one of the most complex, and as such gives rise to a very interesting pattern that, with a little imagination, looks like the wings of a butterfly.

Unlike fixed-point attractors and limit cycles, the attractors that arise from chaotic systems, known as strange attractors, have great detail and complexity. Strange attractors occur in both continuous dynamical systems (such as the Lorenz system) and in some discrete systems (such as the Hénon map). Other discrete dynamical systems have a repelling structure called a Julia set, which forms at the boundary between basins of attraction of fixed points. Julia sets can be thought of as strange repellers. Both strange attractors and Julia sets typically have a fractal structure, and the fractal dimension can be calculated for them.

Minimum complexity of a chaotic system

Logistic_Map_Bifurcation_Diagram,_Matplotlib.svg of the logistic map _x_ → _r_ _x_ (1 – _x_). Each vertical slice shows the attractor for a specific value of _r_. The diagram displays period-doubling as _r_ increases, eventually producing chaos.]]

Discrete chaotic systems, such as the logistic map, can exhibit strange attractors whatever their dimensionality. Universality of one-dimensional maps with parabolic maxima and Feigenbaum constants δ = 4.664201...,α = 2.502907... [30] is well visible with map proposed as a toy model for discrete laser dynamics: x → Gx(1 − tanh(x)), where x stands for electric field amplitude, G[31] is laser gain as bifurcation parameter. The gradual increase of G at interval [0, ∞) changes dynamics from regular to chaotic one [32] with qualitatively the same bifurcation diagram as those for logistic map.

In contrast, for continuous dynamical systems, the Poincaré–Bendixson theorem shows that a strange attractor can only arise in three or more dimensions. Finite-dimensional linear systems are never chaotic; for a dynamical system to display chaotic behavior, it must be either nonlinear or infinite-dimensional.

The Poincaré–Bendixson theorem states that a two-dimensional differential equation has very regular behavior. The Lorenz attractor discussed below is generated by a system of three differential equations such as:

    \begin{align}

\frac{\mathrm{d}x}{\mathrm{d}t} &= \sigma y - \sigma x, \\ \frac{\mathrm{d}y}{\mathrm{d}t} &= \rho x - x z - y, \\ \frac{\mathrm{d}z}{\mathrm{d}t} &= x y - \beta z. \end{align} where x, y, and z make up the system state, t is time, and σ, ρ, β are the system parameters. Five of the terms on the right hand side are linear, while two are quadratic; a total of seven terms. Another well-known chaotic attractor is generated by the Rössler equations, which have only one nonlinear term out of seven. Sprott[33] found a three-dimensional system with just five terms, that had only one nonlinear term, which exhibits chaos for certain parameter values. Zhang and Heidel[34][35] showed that, at least for dissipative and conservative quadratic systems, three-dimensional quadratic systems with only three or four terms on the right-hand side cannot exhibit chaotic behavior. The reason is, simply put, that solutions to such systems are asymptotic to a two-dimensional surface and therefore solutions are well behaved.

While the Poincaré–Bendixson theorem shows that a continuous dynamical system on the Euclidean plane cannot be chaotic, two-dimensional continuous systems with non-Euclidean geometry can exhibit chaotic behavior.[36] Perhaps surprisingly, chaos may occur also in linear systems, provided they are infinite dimensional.[37] A theory of linear chaos is being developed in a branch of mathematical analysis known as functional analysis.

Infinite dimensional maps

The straightforward generalization of coupled discrete maps [38] is based upon convolution integral which mediates interaction between spatially distributed maps: ψ_(n + 1)(r⃗, t) = ∫K(r⃗ − r⃗^(,), t)f[ψ_(n)(r⃗^(,), t)]dr⃗^(,),

where kernel K(r⃗ − r⃗^(,), t) is propagator derived as Green function of a relevant physical system,[39] f[ψ_(n)(r⃗, t)] might be logistic map alike ψ → Gψ[1 − tanh (ψ)] or complex map. For examples of complex maps the Julia set f[ψ] = ψ² or Ikeda map ψ_(n + 1) = A + Bψ_(n)e^(i(|ψ_(n)|² + C)) may serve. When wave propagation problems at distance L = ct with wavelength λ = 2π/k are considered the kernel K may have a form of Green function for Schrödinger equation:[40]

$K(\vec r - \vec r^{,},L)  = \frac {ik\exp[ikL]}{2\pi L}\exp[\frac {ik|\vec r-\vec r^{,}|^2}{2 L} ]$.

Jerk systems

In physics, jerk is the third derivative of position, with respect to time. As such, differential equations of the form



        $J\left(\overset{...}{x},\ddot{x},\dot {x},x\right)=0$

are sometimes called _Jerk equations_. It has been shown that a jerk equation, which is equivalent to a system of three first order, ordinary, non-linear differential equations, is in a certain sense the minimal setting for solutions showing chaotic behaviour. This motivates mathematical interest in jerk systems. Systems involving a fourth or higher derivative are called accordingly hyperjerk systems.[41]

A jerk system's behavior is described by a jerk equation, and for certain jerk equations, simple electronic circuits can model solutions. These circuits are known as jerk circuits.

One of the most interesting properties of jerk circuits is the possibility of chaotic behavior. In fact, certain well-known chaotic systems, such as the Lorenz attractor and the Rössler map, are conventionally described as a system of three first-order differential equations that can combine into a single (although rather complicated) jerk equation. Nonlinear jerk systems are in a sense minimally complex systems to show chaotic behaviour; there is no chaotic system involving only two first-order, ordinary differential equations (the system resulting in an equation of second order only).

An example of a jerk equation with nonlinearity in the magnitude of x is:

$$\frac{\mathrm{d}^3 x}{\mathrm{d} t^3}+A\frac{\mathrm{d}^2 x}{\mathrm{d} t^2}+\frac{\mathrm{d} x}{\mathrm{d} t}-|x|+1=0.$$

Here, _A_ is an adjustable parameter. This equation has a chaotic solution for _A_=3/5 and can be implemented with the following jerk circuit; the required nonlinearity is brought about by the two diodes:

JerkCircuit01.png

In the above circuit, all resistors are of equal value, except R_(A) = R/A = 5R/3, and all capacitors are of equal size. The dominant frequency is 1/2πRC. The output of op amp 0 will correspond to the x variable, the output of 1 corresponds to the first derivative of x and the output of 2 corresponds to the second derivative.


Spontaneous order

Under the right conditions, chaos spontaneously evolves into a lockstep pattern. In the Kuramoto model, four conditions suffice to produce synchronization in a chaotic system. Examples include the coupled oscillation of Christiaan Huygens' pendulums, fireflies, neurons, the London Millennium Bridge resonance, and large arrays of Josephson junctions.[42]


History

Barnsley_fern_plotted_with_VisSim.PNG created using the chaos game. Natural forms (ferns, clouds, mountains, etc.) may be recreated through an iterated function system (IFS).]]

An early proponent of chaos theory was Henri Poincaré. In the 1880s, while studying the three-body problem, he found that there can be orbits that are nonperiodic, and yet not forever increasing nor approaching a fixed point.[43][44][45] In 1898, Jacques Hadamard published an influential study of the chaotic motion of a free particle gliding frictionlessly on a surface of constant negative curvature, called "Hadamard's billiards".[46] Hadamard was able to show that all trajectories are unstable, in that all particle trajectories diverge exponentially from one another, with a positive Lyapunov exponent.

Chaos theory began in the field of ergodic theory. Later studies, also on the topic of nonlinear differential equations, were carried out by George David Birkhoff,[47] Andrey Nikolaevich Kolmogorov,[48][49][50] Mary Lucy Cartwright and John Edensor Littlewood,[51] and Stephen Smale.[52] Except for Smale, these studies were all directly inspired by physics: the three-body problem in the case of Birkhoff, turbulence and astronomical problems in the case of Kolmogorov, and radio engineering in the case of Cartwright and Littlewood. Although chaotic planetary motion had not been observed, experimentalists had encountered turbulence in fluid motion and nonperiodic oscillation in radio circuits without the benefit of a theory to explain what they were seeing.

Despite initial insights in the first half of the twentieth century, chaos theory became formalized as such only after mid-century, when it first became evident to some scientists that linear theory, the prevailing system theory at that time, simply could not explain the observed behavior of certain experiments like that of the logistic map. What had been attributed to measure imprecision and simple "noise" was considered by chaos theorists as a full component of the studied systems.

The main catalyst for the development of chaos theory was the electronic computer. Much of the mathematics of chaos theory involves the repeated iteration of simple mathematical formulas, which would be impractical to do by hand. Electronic computers made these repeated calculations practical, while figures and images made it possible to visualize these systems. As a graduate student in Chihiro Hayashi's laboratory at Kyoto University, Yoshisuke Ueda was experimenting with analog computers and noticed, on November 27, 1961, what he called "randomly transitional phenomena". Yet his advisor did not agree with his conclusions at the time, and did not allow him to report his findings until 1970.[53][54]

Airplane_vortex_edit.jpg in the tip vortex from an airplane wing. Studies of the critical point beyond which a system creates turbulence were important for chaos theory, analyzed for example by the Soviet physicist Lev Landau, who developed the Landau-Hopf theory of turbulence. David Ruelle and Floris Takens later predicted, against Landau, that fluid turbulence could develop through a strange attractor, a main concept of chaos theory.]]

Edward Lorenz was an early pioneer of the theory. His interest in chaos came about accidentally through his work on weather prediction in 1961.[55] Lorenz was using a simple digital computer, a Royal McBee LGP-30, to run his weather simulation. He wanted to see a sequence of data again, and to save time he started the simulation in the middle of its course. He did this by entering a printout of the data that corresponded to conditions in the middle of the original simulation. To his surprise, the weather the machine began to predict was completely different from the previous calculation. Lorenz tracked this down to the computer printout. The computer worked with 6-digit precision, but the printout rounded variables off to a 3-digit number, so a value like 0.506127 printed as 0.506. This difference is tiny, and the consensus at the time would have been that it should have no practical effect. However, Lorenz discovered that small changes in initial conditions produced large changes in long-term outcome.[56] Lorenz's discovery, which gave its name to Lorenz attractors, showed that even detailed atmospheric modelling cannot, in general, make precise long-term weather predictions.

In 1963, Benoit Mandelbrot found recurring patterns at every scale in data on cotton prices.[57] Beforehand he had studied information theory and concluded noise was patterned like a Cantor set: on any scale the proportion of noise-containing periods to error-free periods was a constant – thus errors were inevitable and must be planned for by incorporating redundancy.[58] Mandelbrot described both the "Noah effect" (in which sudden discontinuous changes can occur) and the "Joseph effect" (in which persistence of a value can occur for a while, yet suddenly change afterwards).[59][60] This challenged the idea that changes in price were normally distributed. In 1967, he published "How long is the coast of Britain? Statistical self-similarity and fractional dimension", showing that a coastline's length varies with the scale of the measuring instrument, resembles itself at all scales, and is infinite in length for an infinitesimally small measuring device.[61] Arguing that a ball of twine appears as a point when viewed from far away (0-dimensional), a ball when viewed from fairly near (3-dimensional), or a curved strand (1-dimensional), he argued that the dimensions of an object are relative to the observer and may be fractional. An object whose irregularity is constant over different scales ("self-similarity") is a fractal (examples include the Menger sponge, the Sierpiński gasket, and the Koch curve or _snowflake_, which is infinitely long yet encloses a finite space and has a fractal dimension of circa 1.2619). In 1982, Mandelbrot published _The Fractal Geometry of Nature_, which became a classic of chaos theory.[62] Biological systems such as the branching of the circulatory and bronchial systems proved to fit a fractal model.[63]

In December 1977, the New York Academy of Sciences organized the first symposium on chaos, attended by David Ruelle, Robert May, James A. Yorke (coiner of the term "chaos" as used in mathematics), Robert Shaw, and the meteorologist Edward Lorenz. The following year, independently Pierre Coullet and Charles Tresser with the article "Iterations d'endomorphismes et groupe de renormalisation" and Mitchell Feigenbaum with the article "Quantitative Universality for a Class of Nonlinear Transformations" described logistic maps.[64][65] They notably discovered the universality in chaos, permitting the application of chaos theory to many different phenomena.

In 1979, Albert J. Libchaber, during a symposium organized in Aspen by Pierre Hohenberg, presented his experimental observation of the bifurcation cascade that leads to chaos and turbulence in Rayleigh–Bénard convection systems. He was awarded the Wolf Prize in Physics in 1986 along with Mitchell J. Feigenbaum for their inspiring achievements.[66]

In 1986, the New York Academy of Sciences co-organized with the National Institute of Mental Health and the Office of Naval Research the first important conference on chaos in biology and medicine. There, Bernardo Huberman presented a mathematical model of the eye tracking disorder among schizophrenics.[67] This led to a renewal of physiology in the 1980s through the application of chaos theory, for example, in the study of pathological cardiac cycles.

In 1987, Per Bak, Chao Tang and Kurt Wiesenfeld published a paper in _Physical Review Letters_[68] describing for the first time self-organized criticality (SOC), considered one of the mechanisms by which complexity arises in nature.

Alongside largely lab-based approaches such as the Bak–Tang–Wiesenfeld sandpile, many other investigations have focused on large-scale natural or social systems that are known (or suspected) to display scale-invariant behavior. Although these approaches were not always welcomed (at least initially) by specialists in the subjects examined, SOC has nevertheless become established as a strong candidate for explaining a number of natural phenomena, including earthquakes, (which, long before SOC was discovered, were known as a source of scale-invariant behavior such as the Gutenberg–Richter law describing the statistical distribution of earthquake sizes, and the Omori law[69] describing the frequency of aftershocks), solar flares, fluctuations in economic systems such as financial markets (references to SOC are common in econophysics), landscape formation, forest fires, landslides, epidemics, and biological evolution (where SOC has been invoked, for example, as the dynamical mechanism behind the theory of "punctuated equilibria" put forward by Niles Eldredge and Stephen Jay Gould). Given the implications of a scale-free distribution of event sizes, some researchers have suggested that another phenomenon that should be considered an example of SOC is the occurrence of wars. These investigations of SOC have included both attempts at modelling (either developing new models or adapting existing ones to the specifics of a given natural system), and extensive data analysis to determine the existence and/or characteristics of natural scaling laws.

In the same year, James Gleick published _Chaos: Making a New Science_, which became a best-seller and introduced the general principles of chaos theory as well as its history to the broad public, though his history under-emphasized important Soviet contributions.[70] Initially the domain of a few, isolated individuals, chaos theory progressively emerged as a transdisciplinary and institutional discipline, mainly under the name of nonlinear systems analysis. Alluding to Thomas Kuhn's concept of a paradigm shift exposed in _The Structure of Scientific Revolutions_ (1962), many "chaologists" (as some described themselves) claimed that this new theory was an example of such a shift, a thesis upheld by Gleick.

The availability of cheaper, more powerful computers broadens the applicability of chaos theory. Currently, chaos theory remains an active area of research,[71] involving many different disciplines (mathematics, topology, physics,[72] social systems, population modeling, biology, meteorology, astrophysics, information theory, computational neuroscience, etc.).


Applications

Textile_cone.JPG shell, similar in appearance to Rule 30, a cellular automaton with chaotic behaviour.[73]]]

Although chaos theory was born from observing weather patterns, it has become applicable to a variety of other situations. Some areas benefiting from chaos theory today are geology, mathematics, microbiology, biology, computer science, economics,[74][75][76] engineering,[77][78] finance,[79][80] algorithmic trading,[81][82][83] meteorology, philosophy, anthropology,[84] physics,[85][86][87] politics, population dynamics,[88] psychology,[89] and robotics. A few categories are listed below with examples, but this is by no means a comprehensive list as new applications are appearing.

Cryptography

Chaos theory has been used for many years in cryptography. In the past few decades, chaos and nonlinear dynamics have been used in the design of hundreds of cryptographic primitives. These algorithms include image encryption algorithms, hash functions, secure pseudo-random number generators, stream ciphers, watermarking and steganography.[90] The majority of these algorithms are based on uni-modal chaotic maps and a big portion of these algorithms use the control parameters and the initial condition of the chaotic maps as their keys.[91] From a wider perspective, without loss of generality, the similarities between the chaotic maps and the cryptographic systems is the main motivation for the design of chaos based cryptographic algorithms.[92] One type of encryption, secret key or symmetric key, relies on diffusion and confusion, which is modeled well by chaos theory.[93] Another type of computing, DNA computing, when paired with chaos theory, offers a way to encrypt images and other information.[94] Many of the DNA-Chaos cryptographic algorithms are proven to be either not secure, or the technique applied is suggested to be not efficient.[95][96][97]

Robotics

Robotics is another area that has recently benefited from chaos theory. Instead of robots acting in a trial-and-error type of refinement to interact with their environment, chaos theory has been used to build a predictive model.[98] Chaotic dynamics have been exhibited by passive walking biped robots.[99]

Biology

For over a hundred years, biologists have been keeping track of populations of different species with population models. Most models are continuous, but recently scientists have been able to implement chaotic models in certain populations.[100] For example, a study on models of Canadian lynx showed there was chaotic behavior in the population growth.[101] Chaos can also be found in ecological systems, such as hydrology. While a chaotic model for hydrology has its shortcomings, there is still much to learn from looking at the data through the lens of chaos theory.[102] Another biological application is found in cardiotocography. Fetal surveillance is a delicate balance of obtaining accurate information while being as noninvasive as possible. Better models of warning signs of fetal hypoxia can be obtained through chaotic modeling.[103]

Other areas

In chemistry, predicting gas solubility is essential to manufacturing polymers, but models using particle swarm optimization (PSO) tend to converge to the wrong points. An improved version of PSO has been created by introducing chaos, which keeps the simulations from getting stuck.[104] In celestial mechanics, especially when observing asteroids, applying chaos theory leads to better predictions about when these objects will approach Earth and other planets.[105] Four of the five moons of Pluto rotate chaotically. In quantum physics and electrical engineering, the study of large arrays of Josephson junctions benefitted greatly from chaos theory.[106] Closer to home, coal mines have always been dangerous places where frequent natural gas leaks cause many deaths. Until recently, there was no reliable way to predict when they would occur. But these gas leaks have chaotic tendencies that, when properly modeled, can be predicted fairly accurately.[107]

Chaos theory can be applied outside of the natural sciences, but historically nearly all such studies have suffered from lack of reproducibility; poor external validity; and/or inattention to cross-validation, resulting in poor predictive accuracy (if out-of-sample prediction has even been attempted). Glass [108] and Mandell and Selz [109] have found that no EEG study has as yet indicated the presence of strange attractors or other signs of chaotic behavior.

Researchers have continued to apply chaos theory to psychology. For example, in modeling group behavior in which heterogeneous members may behave as if sharing to different degrees what in Wilfred Bion's theory is a basic assumption, researchers have found that the group dynamic is the result of the individual dynamics of the members: each individual reproduces the group dynamics in a different scale, and the chaotic behavior of the group is reflected in each member.[110]

Redington and Reidbord (1992) attempted to demonstrate that the human heart could display chaotic traits. They monitored the changes in between-heartbeat intervals for a single psychotherapy patient as she moved through periods of varying emotional intensity during a therapy session. Results were admittedly inconclusive. Not only were there ambiguities in the various plots the authors produced to purportedly show evidence of chaotic dynamics (spectral analysis, phase trajectory, and autocorrelation plots), but when they attempted to compute a Lyapunov exponent as more definitive confirmation of chaotic behavior, the authors found they could not reliably do so.[111]

In their 1995 paper, Metcalf and Allen [112] maintained that they uncovered in animal behavior a pattern of period doubling leading to chaos. The authors examined a well-known response called schedule-induced polydipsia, by which an animal deprived of food for certain lengths of time will drink unusual amounts of water when the food is at last presented. The control parameter (r) operating here was the length of the interval between feedings, once resumed. The authors were careful to test a large number of animals and to include many replications, and they designed their experiment so as to rule out the likelihood that changes in response patterns were caused by different starting places for r.

Time series and first delay plots provide the best support for the claims made, showing a fairly clear march from periodicity to irregularity as the feeding times were increased. The various phase trajectory plots and spectral analyses, on the other hand, do not match up well enough with the other graphs or with the overall theory to lead inexorably to a chaotic diagnosis. For example, the phase trajectories do not show a definite progression towards greater and greater complexity (and away from periodicity); the process seems quite muddied. Also, where Metcalf and Allen saw periods of two and six in their spectral plots, there is room for alternative interpretations. All of this ambiguity necessitate some serpentine, post-hoc explanation to show that results fit a chaotic model.

By adapting a model of career counseling to include a chaotic interpretation of the relationship between employees and the job market, Aniundson and Bright found that better suggestions can be made to people struggling with career decisions.[113] Modern organizations are increasingly seen as open complex adaptive systems with fundamental natural nonlinear structures, subject to internal and external forces that may contribute chaos. For instance, team building and group development is increasingly being researched as an inherently unpredictable system, as the uncertainty of different individuals meeting for the first time makes the trajectory of the team unknowable.[114]

Some say the chaos metaphor—used in verbal theories—grounded on mathematical models and psychological aspects of human behavior provides helpful insights to describing the complexity of small work groups, that go beyond the metaphor itself.[115]

BML_N=200_P=32.png

It is possible that economic models can also be improved through an application of chaos theory, but predicting the health of an economic system and what factors influence it most is an extremely complex task.[116] Economic and financial systems are fundamentally different from those in the classical natural sciences since the former are inherently stochastic in nature, as they result from the interactions of people, and thus pure deterministic models are unlikely to provide accurate representations of the data. The empirical literature that tests for chaos in economics and finance presents very mixed results, in part due to confusion between specific tests for chaos and more general tests for non-linear relationships.[117]

Traffic forecasting may benefit from applications of chaos theory. Better predictions of when traffic will occur would allow measures to be taken to disperse it before it would have occurred. Combining chaos theory principles with a few other methods has led to a more accurate short-term prediction model (see the plot of the BML traffic model at right).[118]

Chaos theory has been applied to environmental water cycle data (aka hydrological data), such as rainfall and streamflow.[119] These studies have yielded controversial results, because the methods for detecting a chaotic signature are often relatively subjective. Early studies tended to "succeed" in finding chaos, whereas subsequent studies and meta-analyses called those studies into question and provided explanations for why these datasets are not likely to have low-dimension chaotic dynamics.[120]


See also

Examples of chaotic systems

-   Advected contours
-   Arnold's cat map
-   Bouncing ball dynamics
-   Chua's circuit
-   Cliodynamics
-   Coupled map lattice
-   Double pendulum
-   Duffing equation
-   Dynamical billiards
-   Economic bubble
-   Gaspard-Rice system
-   Hénon map
-   Horseshoe map
-   List of chaotic maps
-   Logistic map
-   Rössler attractor
-   Standard map
-   Swinging Atwood's machine
-   Tilt A Whirl

Other related topics

-   Amplitude death
-   Anosov diffeomorphism
-   Bifurcation theory
-   Butterfly effect
-   Catastrophe theory
-   Causality
-   Chaos theory in organizational development
-   Chaos machine
-   Chaotic mixing
-   Chaotic scattering
-   Complexity
-   Control of chaos
-   Determinism
-   Edge of chaos
-   Emergence
-   Fractal
    -   Julia set
    -   Mandelbrot set
-   Kolmogorov–Arnold–Moser theorem
-   Ill-conditioning
-   Ill-posedness
-   Nonlinear system
-   Patterns in nature
-   Predictability
-   Quantum chaos
-   Santa Fe Institute
-   Synchronization of chaos
-   Unintended consequence

People

-   Ralph Abraham
-   Michael Berry
-   Leon O. Chua
-   Ivar Ekeland
-   Doyne Farmer
-   Mitchell Feigenbaum
-   Martin Gutzwiller
-   Brosl Hasslacher
-   Michel Hénon
-   Andrey Nikolaevich Kolmogorov
-   Edward Lorenz
-   Aleksandr Lyapunov
-   Benoit Mandelbrot
-   Norman Packard
-   Henri Poincaré
-   Otto Rössler
-   David Ruelle
-   Oleksandr Mikolaiovich Sharkovsky
-   Robert Shaw
-   Floris Takens
-   James A. Yorke
-   George M. Zaslavsky


References


Scientific literature

Articles

-   -   -   -   Online version (Note: the volume and page citation cited for the online text differ from that cited here. The citation here is from a photocopy, which is consistent with other citations found online that don't provide article views. The online content is identical to the hardcopy text. Citation variations are related to country of publication).

-   -   -   -   -   -

Textbooks

-   -   -   -   and

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -

Semitechnical and popular works

-   Christophe Letellier, _Chaos in Nature_, World Scientific Publishing Company, 2012, .
-   -   -   -   John Briggs and David Peat, _Turbulent Mirror: : An Illustrated Guide to Chaos Theory and the Science of Wholeness_, Harper Perennial 1990, 224 pp.
-   John Briggs and David Peat, _Seven Life Lessons of Chaos: Spiritual Wisdom from the Science of Change_, Harper Perennial 2000, 224 pp.
-   -   Predrag Cvitanović, _Universality in Chaos_, Adam Hilger 1989, 648 pp.
-   Leon Glass and Michael C. Mackey, _From Clocks to Chaos: The Rhythms of Life,_ Princeton University Press 1988, 272 pp.
-   James Gleick, _Chaos: Making a New Science_, New York: Penguin, 1988. 368 pp.
-   -   L Douglas Kiel, Euel W Elliott (ed.), _Chaos Theory in the Social Sciences: Foundations and Applications_, University of Michigan Press, 1997, 360 pp.
-   Arvind Kumar, ''Chaos, Fractals and Self-Organisation; New Perspectives on Complexity in Nature '', National Book Trust, 2003.
-   Hans Lauwerier, _Fractals_, Princeton University Press, 1991.
-   Edward Lorenz, _The Essence of Chaos_, University of Washington Press, 1996.
-   Alan Marshall (2002) The Unity of Nature: Wholeness and Disintegration in Ecology and Science, Imperial College Press: London
-   David Peak and Michael Frame, _Chaos Under Control: The Art and Science of Complexity_, Freeman, 1994.
-   Heinz-Otto Peitgen and Dietmar Saupe (Eds.), _The Science of Fractal Images_, Springer 1988, 312 pp.
-   Clifford A. Pickover, ''Computers, Pattern, Chaos, and Beauty: Graphics from an Unseen World '', St Martins Pr 1991.
-   Clifford A. Pickover, _Chaos in Wonderland: Visual Adventures in a Fractal World_, St Martins Pr 1994.
-   Ilya Prigogine and Isabelle Stengers, _Order Out of Chaos_, Bantam 1984.
-   Heinz-Otto Peitgen and P. H. Richter, _The Beauty of Fractals : Images of Complex Dynamical Systems_, Springer 1986, 211 pp.
-   David Ruelle, _Chance and Chaos_, Princeton University Press 1993.
-   Ivars Peterson, _Newton's Clock: Chaos in the Solar System_, Freeman, 1993.
-   -   David Ruelle, _Chaotic Evolution and Strange Attractors_, Cambridge University Press, 1989.
-   Manfred Schroeder, _Fractals, Chaos, and Power Laws_, Freeman, 1991.
-   Peter Smith, _Explaining Chaos_, Cambridge University Press, 1998.
-   Ian Stewart, ''Does God Play Dice?: The Mathematics of Chaos '', Blackwell Publishers, 1990.
-   Steven Strogatz, _Sync: The emerging science of spontaneous order_, Hyperion, 2003.
-   Yoshisuke Ueda, _The Road To Chaos_, Aerial Pr, 1993.
-   M. Mitchell Waldrop, _Complexity : The Emerging Science at the Edge of Order and Chaos_, Simon & Schuster, 1992.
-   Antonio Sawaya, _Financial Time Series Analysis : Chaos and Neurodynamics Approach_, Lambert, 2012.


External links

-   -   Nonlinear Dynamics Research Group with Animations in Flash
-   The Chaos group at the University of Maryland
-   The Chaos Hypertextbook. An introductory primer on chaos and fractals
-   ChaosBook.org An advanced graduate textbook on chaos (no fractals)
-   Society for Chaos Theory in Psychology & Life Sciences
-   Nonlinear Dynamics Research Group at CSDC, Florence Italy
-   Interactive live chaotic pendulum experiment, allows users to interact and sample data from a real working damped driven chaotic pendulum
-   Nonlinear dynamics: how science comprehends chaos, talk presented by Sunny Auyang, 1998.
-   Nonlinear Dynamics. Models of bifurcation and chaos by Elmer G. Wiens
-   Gleick's _Chaos_ (excerpt)
-   Systems Analysis, Modelling and Prediction Group at the University of Oxford
-   A page about the Mackey-Glass equation
-   High Anxieties — The Mathematics of Chaos (2008) BBC documentary directed by David Malone
-   The chaos theory of evolution – article published in Newscientist featuring similarities of evolution and non-linear systems including fractal nature of life and chaos.
-   Jos Leys, Étienne Ghys et Aurélien Alvarez, _Chaos, A Mathematical Adventure_. Nine films about dynamical systems, the butterfly effect and chaos theory, intended for a wide audience.
-   "Chaos Theory", BBC Radio 4 discussion with Susan Greenfield, David Papineau & Neil Johnson (_In Our Time_, May 16, 2002)

Chaos_theory Category:Complex systems theory Category:Computational fields of study

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

[15] _Sync: The Emerging Science of Spontaneous Order_, Steven Strogatz, Hyperion, New York, 2003, pages 189–190.

[16] Definition of at Wiktionary;

[17]

[18]

[19]

[20]

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

[40]

[41] K. E. Chlouverakis and J. C. Sprott, Chaos Solitons & Fractals 28, 739–746 (2005), Chaotic Hyperjerk Systems, http://sprott.physics.wisc.edu/pubs/paper297.htm

[42] Steven Strogatz, _Sync: The Emerging Science of Spontaneous Order_, Hyperion, 2003.

[43]

[44]

[45]

[46]

[47] George D. Birkhoff, _Dynamical Systems,_ vol. 9 of the American Mathematical Society Colloquium Publications (Providence, Rhode Island: American Mathematical Society, 1927)

[48]  Reprinted in:

[49]  Reprinted in:

[50]  See also Kolmogorov–Arnold–Moser theorem

[51]  See also: Van der Pol oscillator

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60] See also:

[61]

[62]

[63]

[64]

[65] Coullet, Pierre, and Charles Tresser. "Iterations d'endomorphismes et groupe de renormalisation." Le Journal de Physique Colloques 39.C5 (1978): C5-25

[66]

[67]

[68]  However, the conclusions of this article have been subject to dispute. . See especially:

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78] Applying Chaos Theory to Embedded Applications

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106] Steven Strogatz, ''Sync: The Emerging Science of Spontaneous Order, Hyperion, 2003

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]