STATISTICAL MECHANICS is one of the pillars of modern physics. It is necessary for the fundamental study of any physical system that has a large number of degrees of freedom. The approach is based on statistical methods, probability theory and the microscopic physical laws.[1][2][3]

It can be used to explain the thermodynamic behaviour of large systems. This branch of statistical mechanics, which treats and extends classical thermodynamics, is known as STATISTICAL THERMODYNAMICS or EQUILIBRIUM STATISTICAL MECHANICS.

Statistical mechanics shows how the concepts from macroscopic observations (such as temperature and pressure) are related to the description of microscopic state that fluctuates around an average state. It connects thermodynamic quantities (such as heat capacity) to microscopic behavior, whereas, in classical thermodynamics, the only available option would be to measure and tabulate such quantities for various materials.[4]

Statistical mechanics can also be used to study systems that are out of equilibrium. An important subbranch known as NON-EQUILIBRIUM STATISTICAL MECHANICS deals with the issue of microscopically modelling the speed of irreversible processes that are driven by imbalances. Examples of such processes include chemical reactions or flows of particles and heat. The fluctuation–dissipation theorem is the basic knowledge obtained from applying non-equilibrium statistical mechanics to study the simplest non-equilibrium situation of a steady state current flow in a system of many particles.


Principles: mechanics and ensembles

In physics, there are two types of mechanics usually examined: classical mechanics and quantum mechanics. For both types of mechanics, the standard mathematical approach is to consider two concepts:

1.  The complete state of the mechanical system at a given time, mathematically encoded as a phase point (classical mechanics) or a pure quantum state vector (quantum mechanics).
2.  An equation of motion which carries the state forward in time: Hamilton's equations (classical mechanics) or the time-dependent Schrödinger equation (quantum mechanics)

Using these two concepts, the state at any other time, past or future, can in principle be calculated. There is however a disconnection between these laws and everyday life experiences, as we do not find it necessary (nor even theoretically possible) to know exactly at a microscopic level the simultaneous positions and velocities of each molecule while carrying out processes at the human scale (for example, when performing a chemical reaction). Statistical mechanics fills this disconnection between the laws of mechanics and the practical experience of incomplete knowledge, by adding some uncertainty about which state the system is in.

Whereas ordinary mechanics only considers the behaviour of a single state, statistical mechanics introduces the statistical ensemble, which is a large collection of virtual, independent copies of the system in various states. The statistical ensemble is a probability distribution over all possible states of the system. In classical statistical mechanics, the ensemble is a probability distribution over phase points (as opposed to a single phase point in ordinary mechanics), usually represented as a distribution in a phase space with canonical coordinates. In quantum statistical mechanics, the ensemble is a probability distribution over pure states, and can be compactly summarized as a density matrix.

As is usual for probabilities, the ensemble can be interpreted in different ways:[5]

-   an ensemble can be taken to represent the various possible states that a _single system_ could be in (epistemic probability, a form of knowledge), or
-   the members of the ensemble can be understood as the states of the systems in experiments repeated on independent systems which have been prepared in a similar but imperfectly controlled manner (empirical probability), in the limit of an infinite number of trials.

These two meanings are equivalent for many purposes, and will be used interchangeably in this article.

However the probability is interpreted, each state in the ensemble evolves over time according to the equation of motion. Thus, the ensemble itself (the probability distribution over states) also evolves, as the virtual systems in the ensemble continually leave one state and enter another. The ensemble evolution is given by the Liouville equation (classical mechanics) or the von Neumann equation (quantum mechanics). These equations are simply derived by the application of the mechanical equation of motion separately to each virtual system contained in the ensemble, with the probability of the virtual system being conserved over time as it evolves from state to state.

One special class of ensemble is those ensembles that do not evolve over time. These ensembles are known as _equilibrium ensembles_ and their condition is known as _statistical equilibrium_. Statistical equilibrium occurs if, for each state in the ensemble, the ensemble also contains all of its future and past states with probabilities equal to the probability of being in that state. The study of equilibrium ensembles of isolated systems is the focus of statistical thermodynamics. Non-equilibrium statistical mechanics addresses the more general case of ensembles that change over time, and/or ensembles of non-isolated systems.


Statistical thermodynamics

The primary goal of statistical thermodynamics (also known as equilibrium statistical mechanics) is to derive the classical thermodynamics of materials in terms of the properties of their constituent particles and the interactions between them. In other words, statistical thermodynamics provides a connection between the macroscopic properties of materials in thermodynamic equilibrium, and the microscopic behaviours and motions occurring inside the material.

Whereas statistical mechanics proper involves dynamics, here the attention is focussed on _statistical equilibrium_ (steady state). Statistical equilibrium does not mean that the particles have stopped moving (mechanical equilibrium), rather, only that the ensemble is not evolving.

Fundamental postulate

A sufficient (but not necessary) condition for statistical equilibrium with an isolated system is that the probability distribution is a function only of conserved properties (total energy, total particle numbers, etc.).[6] There are many different equilibrium ensembles that can be considered, and only some of them correspond to thermodynamics.[7] Additional postulates are necessary to motivate why the ensemble for a given system should have one form or another.

A common approach found in many textbooks is to take the _equal a priori probability postulate_.[8] This postulate states that

    ''For an isolated system with an exactly known energy and exactly known composition, the system can be found with _equal probability_ in any microstate consistent with that knowledge.''

The equal a priori probability postulate therefore provides a motivation for the microcanonical ensemble described below. There are various arguments in favour of the equal a priori probability postulate:

-   Ergodic hypothesis: An ergodic system is one that evolves over time to explore "all accessible" states: all those with the same energy and composition. In an ergodic system, the microcanonical ensemble is the only possible equilibrium ensemble with fixed energy. This approach has limited applicability, since most systems are not ergodic.
-   Principle of indifference: In the absence of any further information, we can only assign equal probabilities to each compatible situation.
-   Maximum information entropy: A more elaborate version of the principle of indifference states that the correct ensemble is the ensemble that is compatible with the known information and that has the largest Gibbs entropy (information entropy).[9]

Other fundamental postulates for statistical mechanics have also been proposed.[10]

Three thermodynamic ensembles

There are three equilibrium ensembles with a simple form that can be defined for any isolated system bounded inside a finite volume.[11] These are the most often discussed ensembles in statistical thermodynamics. In the macroscopic limit (defined below) they all correspond to classical thermodynamics.

Microcanonical ensemble
    describes a system with a precisely given energy and fixed composition (precise number of particles). The microcanonical ensemble contains with equal probability each possible state that is consistent with that energy and composition.

Canonical ensemble
    describes a system of fixed composition that is in thermal equilibrium with a heat bath of a precise temperature. The canonical ensemble contains states of varying energy but identical composition; the different states in the ensemble are accorded different probabilities depending on their total energy.

Grand canonical ensemble
    describes a system with non-fixed composition (uncertain particle numbers) that is in thermal and chemical equilibrium with a thermodynamic reservoir. The reservoir has a precise temperature, and precise chemical potentials for various types of particle. The grand canonical ensemble contains states of varying energy and varying numbers of particles; the different states in the ensemble are accorded different probabilities depending on their total energy and total particle numbers.

For systems containing many particles (the thermodynamic limit), all three of the ensembles listed above tend to give identical behaviour. It is then simply a matter of mathematical convenience which ensemble is used.[12] The Gibbs theorem about equivalence of ensembles[13] was developed into the theory of concentration of measure phenomenon,[14] which has applications in many areas of science, from functional analysis to methods of artificial intelligence and big data technology.[15]

Important cases where the thermodynamic ensembles _do not_ give identical results include:

-   Microscopic systems.
-   Large systems at a phase transition.
-   Large systems with long-range interactions.

In these cases the correct thermodynamic ensemble must be chosen as there are observable differences between these ensembles not just in the size of fluctuations, but also in average quantities such as the distribution of particles. The correct ensemble is that which corresponds to the way the system has been prepared and characterized—in other words, the ensemble that reflects the knowledge about that system.[16]

    {| class="wikitable sortable mw-collapsible mw-collapsed"

|+ |- ! rowspan="2"| ! colspan="3"| Thermodynamic ensembles[17] |- ! Microcanonical ! Canonical ! Grand canonical |- ! Fixed variables |

|

|

|- ! Microscopic features |

-   Number of microstates

-   W

|

-   Canonical partition function

-   Z = ∑_(k)e^( − E_(k)/k_(B)T)

|

-   Grand partition function

-   𝒵 = ∑_(k)e^( − (E_(k) − μN_(k))/k_(B)T)

|- ! Macroscopic function |

-   Boltzmann entropy

-   S = k_(B)log W

|

-   Helmholtz free energy

-   F =  − k_(B)Tlog Z

|

-   Grand potential

-   Ω =  − k_(B)Tlog 𝒵

|- |}

Calculation methods

Once the characteristic state function for an ensemble has been calculated for a given system, that system is 'solved' (macroscopic observables can be extracted from the characteristic state function). Calculating the characteristic state function of a thermodynamic ensemble is not necessarily a simple task, however, since it involves considering every possible state of the system. While some hypothetical systems have been exactly solved, the most general (and realistic) case is too complex for an exact solution. Various approaches exist to approximate the true ensemble and allow calculation of average quantities.

Exact

There are some cases which allow exact solutions.

-   For very small microscopic systems, the ensembles can be directly computed by simply enumerating over all possible states of the system (using exact diagonalization in quantum mechanics, or integral over all phase space in classical mechanics).
-   Some large systems consist of many separable microscopic systems, and each of the subsystems can be analysed independently. Notably, idealized gases of non-interacting particles have this property, allowing exact derivations of Maxwell–Boltzmann statistics, Fermi–Dirac statistics, and Bose–Einstein statistics.[18]
-   A few large systems with interaction have been solved. By the use of subtle mathematical techniques, exact solutions have been found for a few toy models.[19] Some examples include the Bethe ansatz, square-lattice Ising model in zero field, hard hexagon model.

Monte Carlo

One approximate approach that is particularly well suited to computers is the Monte Carlo method, which examines just a few of the possible states of the system, with the states chosen randomly (with a fair weight). As long as these states form a representative sample of the whole set of states of the system, the approximate characteristic function is obtained. As more and more random samples are included, the errors are reduced to an arbitrarily low level.

-   The Metropolis–Hastings algorithm is a classic Monte Carlo method which was initially used to sample the canonical ensemble.
-   Path integral Monte Carlo, also used to sample the canonical ensemble.

Other

-   For rarefied non-ideal gases, approaches such as the cluster expansion use perturbation theory to include the effect of weak interactions, leading to a virial expansion.[20]
-   For dense fluids, another approximate approach is based on reduced distribution functions, in particular the radial distribution function.[21]
-   Molecular dynamics computer simulations can be used to calculate microcanonical ensemble averages, in ergodic systems. With the inclusion of a connection to a stochastic heat bath, they can also model canonical and grand canonical conditions.
-   Mixed methods involving non-equilibrium statistical mechanical results (see below) may be useful.


Non-equilibrium statistical mechanics

There are many physical phenomena of interest that involve quasi-thermodynamic processes out of equilibrium, for example:

-   heat transport by the internal motions in a material, driven by a temperature imbalance,
-   electric currents carried by the motion of charges in a conductor, driven by a voltage imbalance,
-   spontaneous chemical reactions driven by a decrease in free energy,
-   friction, dissipation, quantum decoherence,
-   systems being pumped by external forces (optical pumping, etc.),
-   and irreversible processes in general.

All of these processes occur over time with characteristic rates, and these rates are of importance for engineering. The field of non-equilibrium statistical mechanics is concerned with understanding these non-equilibrium processes at the microscopic level. (Statistical thermodynamics can only be used to calculate the final result, after the external imbalances have been removed and the ensemble has settled back down to equilibrium.)

In principle, non-equilibrium statistical mechanics could be mathematically exact: ensembles for an isolated system evolve over time according to deterministic equations such as Liouville's equation or its quantum equivalent, the von Neumann equation. These equations are the result of applying the mechanical equations of motion independently to each state in the ensemble. Unfortunately, these ensemble evolution equations inherit much of the complexity of the underlying mechanical motion, and so exact solutions are very difficult to obtain. Moreover, the ensemble evolution equations are fully reversible and do not destroy information (the ensemble's Gibbs entropy is preserved). In order to make headway in modelling irreversible processes, it is necessary to consider additional factors besides probability and reversible mechanics.

Non-equilibrium mechanics is therefore an active area of theoretical research as the range of validity of these additional assumptions continues to be explored. A few approaches are described in the following subsections.

Stochastic methods

One approach to non-equilibrium statistical mechanics is to incorporate stochastic (random) behaviour into the system. Stochastic behaviour destroys information contained in the ensemble. While this is technically inaccurate (aside from hypothetical situations involving black holes, a system cannot in itself cause loss of information), the randomness is added to reflect that information of interest becomes converted over time into subtle correlations within the system, or to correlations between the system and environment. These correlations appear as chaotic or pseudorandom influences on the variables of interest. By replacing these correlations with randomness proper, the calculations can be made much easier.

Near-equilibrium methods

Another important class of non-equilibrium statistical mechanical models deals with systems that are only very slightly perturbed from equilibrium. With very small perturbations, the response can be analysed in linear response theory. A remarkable result, as formalized by the fluctuation-dissipation theorem, is that the response of a system when near equilibrium is precisely related to the fluctuations that occur when the system is in total equilibrium. Essentially, a system that is slightly away from equilibrium—whether put there by external forces or by fluctuations—relaxes towards equilibrium in the same way, since the system cannot tell the difference or "know" how it came to be away from equilibrium.[22]

This provides an indirect avenue for obtaining numbers such as ohmic conductivity and thermal conductivity by extracting results from equilibrium statistical mechanics. Since equilibrium statistical mechanics is mathematically well defined and (in some cases) more amenable for calculations, the fluctuation-dissipation connection can be a convenient shortcut for calculations in near-equilibrium statistical mechanics.

A few of the theoretical tools used to make this connection include:

-   Fluctuation–dissipation theorem
-   Onsager reciprocal relations
-   Green–Kubo relations
-   Landauer–Büttiker formalism
-   Mori–Zwanzig formalism

Hybrid methods

An advanced approach uses a combination of stochastic methods and linear response theory. As an example, one approach to compute quantum coherence effects (weak localization, conductance fluctuations) in the conductance of an electronic system is the use of the Green-Kubo relations, with the inclusion of stochastic dephasing by interactions between various electrons by use of the Keldysh method.[23][24]


Applications outside thermodynamics

The ensemble formalism also can be used to analyze general mechanical systems with uncertainty in knowledge about the state of a system. Ensembles are also used in:

-   propagation of uncertainty over time,[25]
-   regression analysis of gravitational orbits,
-   ensemble forecasting of weather,
-   dynamics of neural networks,
-   bounded-rational potential games in game theory and economics.


History

In 1738, Swiss physicist and mathematician Daniel Bernoulli published _Hydrodynamica_ which laid the basis for the kinetic theory of gases. In this work, Bernoulli posited the argument, still used to this day, that gases consist of great numbers of molecules moving in all directions, that their impact on a surface causes the gas pressure that we feel, and that what we experience as heat is simply the kinetic energy of their motion.[26]

In 1859, after reading a paper on the diffusion of molecules by Rudolf Clausius, Scottish physicist James Clerk Maxwell formulated the Maxwell distribution of molecular velocities, which gave the proportion of molecules having a certain velocity in a specific range.See:

-   Maxwell, J.C. (1860) "Illustrations of the dynamical theory of gases. Part I. On the motions and collisions of perfectly elastic spheres," _Philosophical Magazine_, 4th series, 19 : 19–32.
-   Maxwell, J.C. (1860) "Illustrations of the dynamical theory of gases. Part II. On the process of diffusion of two or more kinds of moving particles among one another," _Philosophical Magazine_, 4th series, 20 : 21–37. This was the first-ever statistical law in physics.[27] Maxwell also gave the first mechanical argument that molecular collisions entail an equalization of temperatures and hence a tendency towards equilibrium.[28] Five years later, in 1864, Ludwig Boltzmann, a young student in Vienna, came across Maxwell's paper and spent much of his life developing the subject further.

Statistical mechanics proper was initiated in the 1870s with the work of Boltzmann, much of which was collectively published in his 1896 _Lectures on Gas Theory_.[29] Boltzmann's original papers on the statistical interpretation of thermodynamics, the H-theorem, transport theory, thermal equilibrium, the equation of state of gases, and similar subjects, occupy about 2,000 pages in the proceedings of the Vienna Academy and other societies. Boltzmann introduced the concept of an equilibrium statistical ensemble and also investigated for the first time non-equilibrium statistical mechanics, with his _H_-theorem.

The term "statistical mechanics" was coined by the American mathematical physicist J. Willard Gibbs in 1884.[30] "Probabilistic mechanics" might today seem a more appropriate term, but "statistical mechanics" is firmly entrenched.[31] Shortly before his death, Gibbs published in 1902 _Elementary Principles in Statistical Mechanics_, a book which formalized statistical mechanics as a fully general approach to address all mechanical systems—macroscopic or microscopic, gaseous or non-gaseous.[32] Gibbs' methods were initially derived in the framework classical mechanics, however they were of such generality that they were found to adapt easily to the later quantum mechanics, and still form the foundation of statistical mechanics to this day.[33]


See also

-   Thermodynamics: non-equilibrium, chemical
-   Mechanics: classical, quantum
-   Probability, statistical ensemble
-   Numerical methods: Monte Carlo method, molecular dynamics
-   Statistical physics
-   Quantum statistical mechanics
-   List of notable textbooks in statistical mechanics
-   List of important publications in statistical mechanics


Notes


References


External links

-   Philosophy of Statistical Mechanics article by Lawrence Sklar for the Stanford Encyclopedia of Philosophy.
-   Sklogwiki - Thermodynamics, statistical mechanics, and the computer simulation of materials. SklogWiki is particularly orientated towards liquids and soft condensed matter.
-   Statistical Thermodynamics - Historical Timeline
-   Thermodynamics and Statistical Mechanics by Richard Fitzpatrick
-   Lecture Notes in Statistical Mechanics and Mesoscopics by Doron Cohen
-   taught by Leonard Susskind.

-   Vu-Quoc, L., Configuration integral (statistical mechanics), 2008. this wiki site is down; see this article in the web archive on 2012 April 28.

{{-}}

Category:Concepts in physics Category:Physics Statistical_mechanics Category:Thermodynamics

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

[14] .

[15]

[16]

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

[29]  (section 1.2)

[30] J. W. Gibbs, "On the Fundamental Formula of Statistical Mechanics, with Applications to Astronomy and Thermodynamics." Proceedings of the American Association for the Advancement of Science, 33, 57-58 (1884). Reproduced in _The Scientific Papers of J. Willard Gibbs, Vol II_ (1906), pp. 16.

[31]

[32]

[33]