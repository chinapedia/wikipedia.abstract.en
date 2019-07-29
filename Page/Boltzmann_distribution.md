upright=1.75

In statistical mechanics and mathematics, a BOLTZMANN DISTRIBUTION (also called GIBBS DISTRIBUTION[1]) is a probability distribution or probability measure that gives the probability that a system will be in a certain state as a function of that state's energy and the temperature of the system. The distribution is expressed in the form:

$$p_i \propto e^{-\frac{\varepsilon_i}{kT}}$$

where is the probability of the system being in state , is the energy of that state, and a constant of the distribution is the product of Boltzmann's constant and thermodynamic temperature . The symbol ∝ denotes proportionality (see for the proportionality constant).

The term system here has a very wide meaning; it can range from a single atom to a macroscopic system such as a natural gas storage tank. Because of this the Boltzmann distribution can be used to solve a very wide variety of problems. The distribution shows that states with lower energy will always have a higher probability of being occupied .

The _ratio_ of probabilities of two states is known as the BOLTZMANN FACTOR and characteristically only depends on the states' energy difference:

$$\frac{p_i}{p_j} = e^{\frac{\varepsilon_j - \varepsilon_i}{kT}}$$

The Boltzmann distribution is named after Ludwig Boltzmann who first formulated it in 1868 during his studies of the statistical mechanics of gases in thermal equilibrium. Boltzmann's statistical work is borne out in his paper “On the Relationship between the Second Fundamental Theorem of the Mechanical Theory of Heat and Probability Calculations Regarding the Conditions for Thermal Equilibrium"[2] The distribution was later investigated extensively, in its modern generic form, by Josiah Willard Gibbs in 1902.[3]

The Boltzmann distribution should not be confused with the Maxwell–Boltzmann distribution. The former gives the probability that a system will be in a certain state as a function of that state's energy;[4] in contrast, the latter is used to describe particle speeds in idealized gases.


The distribution

The Boltzmann distribution is a probability distribution that gives the probability of a certain state as a function of that state's energy and temperature of the system to which the distribution is applied.[5] It is given as

$$p_i=\frac{1}{Q}} {e^{- {\varepsilon}_i / k T}=\frac{e^{- {\varepsilon}_i / k T}}{\sum_{j=1}^{M}{e^{- {\varepsilon}_j / k T}}}$$

where _p_(i)_ is the probability of state _i_, _ε_(i)_ the energy of state _i_, _k_ the Boltzmann constant, _T_ the temperature of the system and _M_ is the number of all states accessible to the system of interest.[6][7] Implied parentheses around the denominator _kT_ are omitted for brevity. The normalization denominator _Q_ (denoted by some authors by _Z_) is the canonical partition function

$$Q={\sum_{i=1}^{M}{e^{- {\varepsilon}_i / k T}}}$$

It results from the constraint that the probabilities of all accessible states must add up to 1.

The Boltzmann distribution is the distribution that maximizes the entropy

$$H(p_1,p_2,\cdots,p_M) = -\sum_{i=1}^{M} p_i\log_2 p_i$$

subject to the constraint that ∑p_(i)ε_(i) equals a particular mean energy value (which can be proven using Lagrange multipliers).

The partition function can be calculated if we know the energies of the states accessible to the system of interest. For atoms the partition function values can be found in the NIST Atomic Spectra Database.[8]

The distribution shows that states with lower energy will always have a higher probability of being occupied than the states with higher energy. It can also give us the quantitative relationship between the probabilities of the two states being occupied. The ratio of probabilities for states _i_ and _j_ is given as

$${\frac{p_i}{p_j}}=e^{({\varepsilon}_j-{\varepsilon}_i) / k T}$$

where _p_(i)_ is the probability of state _i_, _p_(j)_ the probability of state _j_, and _ε_(i)_ and _ε_(j)_ are the energies of states _i_ and _j_, respectively.

The Boltzmann distribution is often used to describe the distribution of particles, such as atoms or molecules, over energy states accessible to them. If we have a system consisting of many particles, the probability of a particle being in state _i_ is practically the probability that, if we pick a random particle from that system and check what state it is in, we will find it is in state _i_. This probability is equal to the number of particles in state _i_ divided by the total number of particles in the system, that is the fraction of particles that occupy state _i_.

$$p_i={\frac{N_i}{N}}$$

where _N_(i)_ is the number of particles in state _i_ and _N_ is the total number of particles in the system. We may use the Boltzmann distribution to find this probability that is, as we have seen, equal to the fraction of particles that are in state i. So the equation that gives the fraction of particles in state _i_ as a function of the energy of that state is [9]

$${\frac{N_i}{N}}={\frac{e^{- {\varepsilon}_i / k T}}{\sum_{j=1}^{M}{e^{- {\varepsilon}_j / k T}}}}$$

This equation is of great importance to spectroscopy. In spectroscopy we observe a spectral line of atoms or molecules that we are interested in going from one state to another.[10][11] In order for this to be possible, there must be some particles in the first state to undergo the transition. We may find that this condition is fulfilled by finding the fraction of particles in the first state. If it is negligible, the transition is very likely not to be observed at the temperature for which the calculation was done. In general, a larger fraction of molecules in the first state means a higher number of transitions to the second state.[12] This gives a stronger spectral line. However, there are other factors that influence the intensity of a spectral line, such as whether it is caused by an allowed or a forbidden transition.

The Boltzmann distribution is related to the softmax function commonly used in machine learning.


In statistical mechanics

The Boltzmann distribution appears in statistical mechanics when considering isolated (or nearly-isolated) systems of fixed composition that are in thermal equilibrium (equilibrium with respect to energy exchange). The most general case is the probability distribution for the canonical ensemble, but also some special cases (derivable from the canonical ensemble) also show the Boltzmann distribution in different aspects:

Canonical ensemble (general case)
    The canonical ensemble gives the probabilities of the various possible states of a closed system of fixed volume, in thermal equilibrium with a heat bath. The canonical ensemble is a probability distribution with the Boltzmann form.

Statistical frequencies of subsystems' states (in a non-interacting collection)
    When the system of interest is a collection of many non-interacting copies of a smaller subsystem, it is sometimes useful to find the statistical frequency of a given subsystem state, among the collection. The canonical ensemble has the property of separability when applied to such a collection: as long as the non-interacting subsystems have fixed composition, then each subsystem's state is independent of the others and is also characterized by a canonical ensemble. As a result, the expected statistical frequency distribution of subsystem states has the Boltzmann form.

Maxwell–Boltzmann statistics of classical gases (systems of non-interacting particles)
    In particle systems, many particles share the same space and regularly change places with each other; the single-particle state space they occupy is a shared space. Maxwell–Boltzmann statistics give the expected number of particles found in a given single-particle state, in a classical gas of non-interacting particles at equilibrium. This expected number distribution has the Boltzmann form.

Although these cases have strong similarities, it is helpful to distinguish them as they generalize in different ways when the crucial assumptions are changed:

-   When a system is in thermodynamic equilibrium with respect to both energy exchange _and particle exchange_, the requirement of fixed composition is relaxed and a grand canonical ensemble is obtained rather than canonical ensemble. On the other hand, if both composition and energy are fixed, then a microcanonical ensemble applies instead.
-   If the subsystems within a collection _do_ interact with each other, then the expected frequencies of subsystem states no longer follow a Boltzmann distribution, and even may not have an analytical solution.[13] The canonical ensemble can however still be applied to the _collective_ states of the entire system considered as a whole, provided the entire system is isolated and in thermal equilibrium.
-   With _quantum_ gases of non-interacting particles in equilibrium, the number of particles found in a given single-particle state does not follow Maxwell–Boltzmann statistics, and there is no simple closed form expression for quantum gases in the canonical ensemble. In the grand canonical ensemble the state-filling statistics of quantum gases are described by Fermi–Dirac statistics or Bose–Einstein statistics, depending on whether the particles are fermions or bosons respectively.


In mathematics

In more general mathematical settings, the Boltzmann distribution is also known as the Gibbs measure. In statistics and machine learning it is called a log-linear model. In deep learning, the Boltzmann distribution is used in the sampling distribution of stochastic neural networks such as the Boltzmann machine , Restricted Boltzmann machine and deep Boltzmann machine.


In economics

The Boltzmann distribution can be introduced to allocate permits in emissions trading.[14][15] The new allocation method using the Boltzmann distribution can describe the most probable, natural, and unbiased distribution of emissions permits among multiple countries. Simple and versatile, this new method holds potential for many economic and environmental applications.

The Boltzmann distribution has the same form as the multinomial logit model. As a discrete choice model, this is very well known in economics since Daniel McFadden made the connection to random utility maximization.


See also

-   Bose–Einstein statistics
-   Fermi–Dirac statistics
-   Negative temperature
-   Softmax function


References

-   -

Category:Statistical mechanics

[1]  Translated by J.B. Sykes and M.J. Kearsley. See section 28

[2] http://crystal.med.upenn.edu/sharp-lab-pdfs/2015SharpMatschinsky_Boltz1877_Entropy17.pdf

[3]

[4] Atkins, P. W. (2010) Quanta, W. H. Freeman and Company, New York

[5] McQuarrie, A. (2000) Statistical Mechanics, University Science Books, California

[6]

[7]

[8] NIST Atomic Spectra Database Levels Form at nist.gov

[9]

[10]

[11] Atkins, P. W.; de Paula J. (2009) Physical Chemistry, 9th edition, Oxford University Press, Oxford, UK

[12] Skoog, D. A.; Holler, F. J.; Crouch, S. R. (2006) Principles of Instrumental Analysis, Brooks/Cole, Boston, MA

[13] A classic example of this is magnetic ordering. Systems of non-interacting spins show paramagnetic behaviour that can be understood with a single-particle canonical ensemble (resulting in the Brillouin function). Systems of _interacting_ spins can show much more complex behaviour such as ferromagnetism or antiferromagnetism.

[14] Park, J.-W., Kim, C. U. and Isard, W. (2012) Permit allocation in emissions trading using the Boltzmann distribution. Physica A 391: 4883–4890

[15] The Thorny Problem Of Fair Allocation. _Technology Review_ blog. August 17, 2011. Cites and summarizes Park, Kim and Isard (2012).