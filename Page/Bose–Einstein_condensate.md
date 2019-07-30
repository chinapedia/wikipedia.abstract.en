A BOSE–EINSTEIN CONDENSATE (BEC) is a state of matter of a dilute gas of low densities called bosons cooled to temperatures very close to absolute zero (-273.15 °C). Under such conditions, a large fraction of bosons occupy the lowest quantum state, at which point microscopic quantum phenomena, particularly wavefunction interference, become apparent macroscopically. A BEC is formed by cooling a gas of extremely low density, about one-hundred-thousandth(1/100000) the density of normal air, to ultra-low temperatures.

This state was first predicted, generally, in 1924–1925 by Albert Einstein following a paper written by Satyendra Nath Bose. Although Bose came up with the pioneering paper on the new statistics, it was Einstein, not Bose, who actually predicted the new state of matter.[1]


History

atoms, confirming the discovery of a new phase of matter, the Bose–Einstein condensate. before the appearance of a Bose–Einstein condensate. after the appearance of the condensate. further evaporation, leaving a sample of nearly pure condensate.]]

Satyendra Nath Bose first sent a paper to Einstein on the quantum statistics of light quanta (now called photons), in which he derived Planck's quantum radiation law without any reference to classical physics. Einstein was impressed, translated the paper himself from English to German and submitted it for Bose to the _Zeitschrift für Physik_, which published it in 1924.[2] (The Einstein manuscript, once believed to be lost, was found in a library at Leiden University in 2005.[3]). Einstein then extended Bose's ideas to matter in two other papers.[4][5] The result of their efforts is the concept of a Bose gas, governed by Bose–Einstein statistics, which describes the statistical distribution of identical particles with integer spin, now called bosons. Bosons, which include the photon as well as atoms such as helium-4 (), are allowed to share a quantum state. Einstein proposed that cooling bosonic atoms to a very low temperature would cause them to fall (or "condense") into the lowest accessible quantum state, resulting in a new form of matter.

In 1938 Fritz London proposed BEC as a mechanism for superfluidity in and superconductivity.[6][7]

On June 5, 1995 the first gaseous condensate was produced by Eric Cornell and Carl Wieman at the University of Colorado at Boulder NIST–JILA lab, in a gas of rubidium atoms cooled to 170 nanokelvins (nK).[8] Shortly thereafter, Wolfgang Ketterle at MIT demonstrated important BEC properties. For their achievements Cornell, Wieman, and Ketterle received the 2001 Nobel Prize in Physics.[9]

Many isotopes were soon condensed, then molecules, quasi-particles, and photons in 2010.[10]


Critical temperature

This transition to BEC occurs below a critical temperature, which for a uniform three-dimensional gas consisting of non-interacting particles with no apparent internal degrees of freedom is given by:

$$T_{\rm c}=\left(\frac{n}{\zeta(3/2)}\right)^{2/3}\frac{2\pi\hbar^2}{m k_{\rm B}} \approx 3.3125 \ \frac{\hbar^2 n^{2/3}}{m k_{\rm B}}$$

where:

    {|cellspacing="0" cellpadding="0"

|- |$\,T_{\rm c}$ |  is  | the critical temperature, |- |  n |  is  | the particle density, |- |  m |  is  | the mass per boson, |- | ℏ |  is  | the reduced Planck constant, |- |$\,k_{\rm B}$ |  is  | the Boltzmann constant, and |- |  ζ |  is  | the Riemann zeta function;  ζ(3/2) ≈ 2.6124. [11] |} Interactions shift the value and the corrections can be calculated by mean-field theory. This formula is derived from finding the gas degeneracy in the Bose gas using Bose–Einstein statistics.


Models

Bose Einstein's non-interacting gas

Consider a collection of _N_ non-interacting particles, which can each be in one of two quantum states, $\scriptstyle|0\rangle$ and $\scriptstyle|1\rangle$. If the two states are equal in energy, each different configuration is equally likely.

If we can tell which particle is which, there are 2^(N) different configurations, since each particle can be in $\scriptstyle|0\rangle$ or $\scriptstyle|1\rangle$ independently. In almost all of the configurations, about half the particles are in $\scriptstyle|0\rangle$ and the other half in $\scriptstyle|1\rangle$. The balance is a statistical effect: the number of configurations is largest when the particles are divided equally.

If the particles are indistinguishable, however, there are only _N_+1 different configurations. If there are _K_ particles in state $\scriptstyle|1\rangle$, there are particles in state $\scriptstyle|0\rangle$. Whether any particular particle is in state $\scriptstyle|0\rangle$ or in state $\scriptstyle|1\rangle$ cannot be determined, so each value of _K_ determines a unique quantum state for the whole system.

Suppose now that the energy of state $\scriptstyle|1\rangle$ is slightly greater than the energy of state $\scriptstyle|0\rangle$ by an amount _E_. At temperature _T_, a particle will have a lesser probability to be in state $\scriptstyle|1\rangle$ by e^( − E/kT). In the distinguishable case, the particle distribution will be biased slightly towards state $\scriptstyle|0\rangle$. But in the indistinguishable case, since there is no statistical pressure toward equal numbers, the most-likely outcome is that most of the particles will collapse into state $\scriptstyle|0\rangle$.

In the distinguishable case, for large _N_, the fraction in state $\scriptstyle|0\rangle$ can be computed. It is the same as flipping a coin with probability proportional to _p_ = exp(−_E_/_T_) to land tails.

In the indistinguishable case, each value of _K_ is a single state, which has its own separate Boltzmann probability. So the probability distribution is exponential:

 _P_(_K_) = _C__e_^( − _K__E_/_T_) = _C__p_^(_K_).

For large _N_, the normalization constant _C_ is . The expected total number of particles not in the lowest energy state, in the limit that $\scriptstyle N\rightarrow \infty$, is equal to $\scriptstyle \sum_{n>0} C n p^n=p/(1-p)$. It does not grow when _N_ is large; it just approaches a constant. This will be a negligible fraction of the total number of particles. So a collection of enough Bose particles in thermal equilibrium will mostly be in the ground state, with only a few in any excited state, no matter how small the energy difference.

Consider now a gas of particles, which can be in different momentum states labeled $\scriptstyle|k\rangle$. If the number of particles is less than the number of thermally accessible states, for high temperatures and low densities, the particles will all be in different states. In this limit, the gas is classical. As the density increases or the temperature decreases, the number of accessible states per particle becomes smaller, and at some point, more particles will be forced into a single state than the maximum allowed for that state by statistical weighting. From this point on, any extra particle added will go into the ground state.

To calculate the transition temperature at any density, integrate, over all momentum states, the expression for maximum number of excited particles, :

$$\,
 N = V \int {d^3k \over (2\pi)^3} {p(k)\over 1-p(k)} = V \int {d^3k \over (2\pi)^3} {1 \over e^{k^2\over 2mT}-1}$$

$$\,
p(k)= e^{-k^2\over 2mT}.$$

When the integral is evaluated with factors of k_(B) and ℏ restored by dimensional analysis, it gives the critical temperature formula of the preceding section. Therefore, this integral defines the critical temperature and particle number corresponding to the conditions of negligible chemical potential μ. In Bose–Einstein statistics distribution, μ is actually still nonzero for BECs; however, μ is less than the ground state energy. Except when specifically talking about the ground state, μ can be approximated for most energy or momentum states as μ ≈ 0.

Bogoliubov theory for weakly interacting gas

Nikolay Bogoliubov considered perturbations on the limit of dilute gas,[12] finding a finite pressure at zero temperature and positive chemical potential. This leads to corrections for the ground state. The Bogoliubov state has pressure (_T_ = 0): P = gn²/2.

The original interacting system can be converted to a system of non-interacting particles with a dispersion law.

Gross–Pitaevskii equation

In some simplest cases, the state of condensed particles can be described with a nonlinear Schrödinger equation, also known as Gross–Pitaevskii or Ginzburg–Landau equation. The validity of this approach is actually limited to the case of ultracold temperatures, which fits well for the most alkali atoms experiments.

This approach originates from the assumption that the state of the BEC can be described by the unique wavefunction of the condensate ψ(r⃗). For a system of this nature, |ψ(r⃗)|² is interpreted as the particle density, so the total number of atoms is N = ∫dr⃗|ψ(r⃗)|²

Provided essentially all atoms are in the condensate (that is, have condensed to the ground state), and treating the bosons using mean field theory, the energy (E) associated with the state ψ(r⃗) is:

$$E=\int
d\vec{r}\left[\frac{\hbar^2}{2m}|\nabla\psi(\vec{r})|^2+V(\vec{r})|\psi(\vec{r})|^2+\frac{1}{2}U_0|\psi(\vec{r})|^4\right]$$

Minimizing this energy with respect to infinitesimal variations in ψ(r⃗), and holding the number of atoms constant, yields the Gross–Pitaevski equation (GPE) (also a non-linear Schrödinger equation):

$$i\hbar\frac{\partial \psi(\vec{r})}{\partial t} = \left(-\frac{\hbar^2\nabla^2}{2m}+V(\vec{r})+U_0|\psi(\vec{r})|^2\right)\psi(\vec{r})$$

where:

    {|cellspacing="0" cellpadding="0"

|- |  m |  is the mass of the bosons, |- |  V(r⃗) |  is the external potential, |- |  U₀ |  is representative of the inter-particle interactions. |}

In the case of zero external potential, the dispersion law of interacting Bose–Einstein-condensed particles is given by so-called Bogoliubov spectrum (for  T = 0):

$${\omega _p} = \sqrt {\frac{{{p^2}}}{{2m}}\left( {\frac{{{p^2}}}{{2m}} + 2{U_0}{n_0}} \right)}$$

The Gross-Pitaevskii equation (GPE) provides a relatively good description of the behavior of atomic BEC's. However, GPE does not take into account the temperature dependence of dynamical variables, and is therefore valid only for  T = 0. It is not applicable, for example, for the condensates of excitons, magnons and photons, where the critical temperature is comparable to room temperature.


Numerical Solution

The Gross-Pitaevskii equation is a partial differential equation in space and time variables. Usually it does not have analytic solution and different numerical methods, such as split-step Crank-Nicolson [13] and Fourier spectral [14] methods, are used for its solution. There are different Fortran and C programs for its solution for contact interaction [15][16] and long-range dipolar interaction [17] which can be freely used.

Weaknesses of Gross–Pitaevskii model

The Gross–Pitaevskii model of BEC is a physical approximation valid for certain classes of BECs. By construction, the GPE uses the following simplifications: it assumes that interactions between condensate particles are of the contact two-body type and also neglects anomalous contributions to self-energy.[18] These assumptions are suitable mostly for the dilute three-dimensional condensates. If one relaxes any of these assumptions, the equation for the condensate wavefunction acquires the terms containing higher-order powers of the wavefunction. Moreover, for some physical systems the amount of such terms turns out to be infinite, therefore, the equation becomes essentially non-polynomial. The examples where this could happen are the Bose–Fermi composite condensates,[19][20][21][22] effectively lower-dimensional condensates,[23] and dense condensates and superfluid clusters and droplets.[24]

Other

However, it is clear that in a general case the behaviour of Bose–Einstein condensate can be described by coupled evolution equations for condensate density, superfluid velocity and distribution function of elementary excitations. This problem was in 1977 by Peletminskii et al. in microscopical approach. The Peletminskii equations are valid for any finite temperatures below the critical point. Years after, in 1985, Kirkpatrick and Dorfman obtained similar equations using another microscopical approach. The Peletminskii equations also reproduce Khalatnikov hydrodynamical equations for superfluid as a limiting case.

Superfluidity of BEC and Landau criterion

The phenomena of superfluidity of a Bose gas and superconductivity of a strongly-correlated Fermi gas (a gas of Cooper pairs) are tightly connected to Bose–Einstein condensation. Under corresponding conditions, below the temperature of phase transition, these phenomena were observed in helium-4 and different classes of superconductors. In this sense, the superconductivity is often called the superfluidity of Fermi gas. In the simplest form, the origin of superfluidity can be seen from the weakly interacting bosons model.


Experimental observation

Superfluid He-4

In 1938, Pyotr Kapitsa, John Allen and Don Misener discovered that helium-4 became a new kind of fluid, now known as a superfluid, at temperatures less than 2.17 K (the lambda point). Superfluid helium has many unusual properties, including zero viscosity (the ability to flow without dissipating energy) and the existence of quantized vortices. It was quickly believed that the superfluidity was due to partial Bose–Einstein condensation of the liquid. In fact, many properties of superfluid helium also appear in gaseous condensates created by Cornell, Wieman and Ketterle (see below). Superfluid helium-4 is a liquid rather than a gas, which means that the interactions between the atoms are relatively strong; the original theory of Bose–Einstein condensation must be heavily modified in order to describe it. Bose–Einstein condensation remains, however, fundamental to the superfluid properties of helium-4. Note that helium-3, a fermion, also enters a superfluid phase (at a much lower temperature) which can be explained by the formation of bosonic Cooper pairs of two atoms (see also fermionic condensate).

Gaseous

The first "pure" Bose–Einstein condensate was created by Eric Cornell, Carl Wieman, and co-workers at JILA on 5 June 1995. They cooled a dilute vapor of approximately two thousand rubidium-87 atoms to below 170 nK using a combination of laser cooling (a technique that won its inventors Steven Chu, Claude Cohen-Tannoudji, and William D. Phillips the 1997 Nobel Prize in Physics) and magnetic evaporative cooling. About four months later, an independent effort led by Wolfgang Ketterle at MIT condensed sodium-23. Ketterle's condensate had a hundred times more atoms, allowing important results such as the observation of quantum mechanical interference between two different condensates. Cornell, Wieman and Ketterle won the 2001 Nobel Prize in Physics for their achievements.[25]

A group led by Randall Hulet at Rice University announced a condensate of lithium atoms only one month following the JILA work.[26] Lithium has attractive interactions, causing the condensate to be unstable and collapse for all but a few atoms. Hulet's team subsequently showed the condensate could be stabilized by confinement quantum pressure for up to about 1000 atoms. Various isotopes have since been condensed.

Velocity-distribution data graph

In the image accompanying this article, the velocity-distribution data indicates the formation of a Bose–Einstein condensate out of a gas of rubidium atoms. The false colors indicate the number of atoms at each velocity, with red being the fewest and white being the most. The areas appearing white and light blue are at the lowest velocities. The peak is not infinitely narrow because of the Heisenberg uncertainty principle: spatially confined atoms have a minimum width velocity distribution. This width is given by the curvature of the magnetic potential in the given direction. More tightly confined directions have bigger widths in the ballistic velocity distribution. This anisotropy of the peak on the right is a purely quantum-mechanical effect and does not exist in the thermal distribution on the left. This graph served as the cover design for the 1999 textbook _Thermal Physics_ by Ralph Baierlein.[27]

Quasiparticles

Bose–Einstein condensation also applies to quasiparticles in solids. Magnons, Excitons, and Polaritons have integer spin which means they are bosons that can form condensates.[28]

Magnons, electron spin waves, can be controlled by a magnetic field. Densities from the limit of a dilute gas to a strongly interacting Bose liquid are possible. Magnetic ordering is the analog of superfluidity. In 1999 condensation was demonstrated in antiferromagnetic ,[29] at temperatures as great as 14 K. The high transition temperature (relative to atomic gases) is due to the magnons' small mass (near that of an electron) and greater achievable density. In 2006, condensation in a ferromagnetic yttrium-iron-garnet thin film was seen even at room temperature,[30][31] with optical pumping.

Excitons, electron-hole pairs, were predicted to condense at low temperature and high density by Boer et al., in 1961. Bilayer system experiments first demonstrated condensation in 2003, by Hall voltage disappearance. Fast optical exciton creation was used to form condensates in sub-kelvin in 2005 on.

Polariton condensation was firstly detected for exciton-polaritons in a quantum well microcavity kept at 5 K.[32]


Peculiar properties

Vortices

As in many other systems, vortices can exist in BECs. These can be created, for example, by 'stirring' the condensate with lasers, or rotating the confining trap. The vortex created will be a quantum vortex. These phenomena are allowed for by the non-linear |ψ(r⃗)|² term in the GPE. As the vortices must have quantized angular momentum the wavefunction may have the form ψ(r⃗) = ϕ(ρ, z)e^(iℓθ) where ρ, z and θ are as in the cylindrical coordinate system, and ℓ is the angular number. This is particularly likely for an axially symmetric (for instance, harmonic) confining potential, which is commonly used. The notion is easily generalized. To determine ϕ(ρ, z), the energy of ψ(r⃗) must be minimized, according to the constraint ψ(r⃗) = ϕ(ρ, z)e^(iℓθ). This is usually done computationally, however in a uniform medium the analytic form:

$$\phi=\frac{nx}{\sqrt{2+x^2}}$$
, where:

  ------------------------------- ------ -----------------------------------
   n²                              is    density far from the vortex,
  $\,x = \frac{\rho}{\ell\xi},$
   ξ                               is    healing length of the condensate.
  ------------------------------- ------ -----------------------------------

demonstrates the correct behavior, and is a good approximation.

A singly charged vortex (ℓ = 1) is in the ground state, with its energy ϵ_(v) given by

$$\epsilon_v=\pi n
\frac{\hbar^2}{m}\ln\left(1.464\frac{b}{\xi}\right)$$

where  b is the farthest distance from the vortices considered.(To obtain an energy which is well defined it is necessary to include this boundary b.)

For multiply charged vortices (ℓ > 1) the energy is approximated by

$$\epsilon_v\approx \ell^2\pi n
\frac{\hbar^2}{m}\ln\left(\frac{b}{\xi}\right)$$

which is greater than that of ℓ singly charged vortices, indicating that these multiply charged vortices are unstable to decay. Research has, however, indicated they are metastable states, so may have relatively long lifetimes.

Closely related to the creation of vortices in BECs is the generation of so-called dark solitons in one-dimensional BECs. These topological objects feature a phase gradient across their nodal plane, which stabilizes their shape even in propagation and interaction. Although solitons carry no charge and are thus prone to decay, relatively long-lived dark solitons have been produced and studied extensively.[33]

Attractive interactions

Experiments led by Randall Hulet at Rice University from 1995 through 2000 showed that lithium condensates with attractive interactions could stably exist up to a critical atom number. Quench cooling the gas, they observed the condensate to grow, then subsequently collapse as the attraction overwhelmed the zero-point energy of the confining potential, in a burst reminiscent of a supernova, with an explosion preceded by an implosion.

Further work on attractive condensates was performed in 2000 by the JILA team, of Cornell, Wieman and coworkers. Their instrumentation now had better control so they used naturally _attracting_ atoms of rubidium-85 (having negative atom–atom scattering length). Through Feshbach resonance involving a sweep of the magnetic field causing spin flip collisions, they lowered the characteristic, discrete energies at which rubidium bonds, making their Rb-85 atoms repulsive and creating a stable condensate. The reversible flip from attraction to repulsion stems from quantum interference among wave-like condensate atoms.

When the JILA team raised the magnetic field strength further, the condensate suddenly reverted to attraction, imploded and shrank beyond detection, then exploded, expelling about two-thirds of its 10,000 atoms. About half of the atoms in the condensate seemed to have disappeared from the experiment altogether, not seen in the cold remnant or expanding gas cloud.[34] Carl Wieman explained that under current atomic theory this characteristic of Bose–Einstein condensate could not be explained because the energy state of an atom near absolute zero should not be enough to cause an implosion; however, subsequent mean field theories have been proposed to explain it. Most likely they formed molecules of two rubidium atoms;[35] energy gained by this bond imparts velocity sufficient to leave the trap without being detected.

The process of creation of molecular Bose condensate during the sweep of the magnetic field throughout the Feshbach resonance, as well as the reverse process, are described by the exactly solvable model that can explain many experimental observations.[36]


Current research

Compared to more commonly encountered states of matter, Bose–Einstein condensates are extremely fragile.[37] The slightest interaction with the external environment can be enough to warm them past the condensation threshold, eliminating their interesting properties and forming a normal gas.

Nevertheless, they have proven useful in exploring a wide range of questions in fundamental physics, and the years since the initial discoveries by the JILA and MIT groups have seen an increase in experimental and theoretical activity. Examples include experiments that have demonstrated interference between condensates due to wave–particle duality,[38] the study of superfluidity and quantized vortices, the creation of bright matter wave solitons from Bose condensates confined to one dimension, and the slowing of light pulses to very low speeds using electromagnetically induced transparency.[39] Vortices in Bose–Einstein condensates are also currently the subject of analogue gravity research, studying the possibility of modeling black holes and their related phenomena in such environments in the laboratory. Experimenters have also realized "optical lattices", where the interference pattern from overlapping lasers provides a periodic potential. These have been used to explore the transition between a superfluid and a Mott insulator,[40] and may be useful in studying Bose–Einstein condensation in fewer than three dimensions, for example the Tonks–Girardeau gas. Further, the sensitivity of the pinning transition of strongly interacting bosons confined in a shallow one-dimensional optical lattice originally observed by Haller[41] has been explored via a tweaking of the primary optical lattice by a secondary weaker one.[42] Thus for a resulting weak bichromatic optical lattice, it has been found that the pinning transition is robust against the introduction of the weaker secondary optical lattice. Studies of vortices in nonuniform Bose–Einstein condensates [43] as well as excitatons of these systems by the application of moving repulsive or attractive obstacles, have also been undertaken.[44][45] Within this context, the conditions for order and chaos in the dynamics of a trapped Bose–Einstein condensate have been explored by the application of moving blue and red-detuned laser beams via the time-dependent Gross-Pitaevskii equation.[46]

Bose–Einstein condensates composed of a wide range of isotopes have been produced.[47]

Cooling fermions to extremely low temperatures has created degenerate gases, subject to the Pauli exclusion principle. To exhibit Bose–Einstein condensation, the fermions must "pair up" to form bosonic compound particles (e.g. molecules or Cooper pairs). The first molecular condensates were created in November 2003 by the groups of Rudolf Grimm at the University of Innsbruck, Deborah S. Jin at the University of Colorado at Boulder and Wolfgang Ketterle at MIT. Jin quickly went on to create the first fermionic condensate composed of Cooper pairs.[48]

In 1999, Danish physicist Lene Hau led a team from Harvard University which slowed a beam of light to about 17 meters per second using a superfluid.[49] Hau and her associates have since made a group of condensate atoms recoil from a light pulse such that they recorded the light's phase and amplitude, recovered by a second nearby condensate, in what they term "slow-light-mediated atomic matter-wave amplification" using Bose–Einstein condensates: details are discussed in _Nature_.[50]

Another current research interest is the creation of Bose–Einstein condensates in microgravity in order to use its properties for high precision atom interferometry. The first demonstration of a BEC in weightlessness was achieved in 2008 at a drop tower in Bremen, Germany by a consortium of researchers led by Ernst M. Rasel from Leibniz University of Hanover.[51] The same team demonstrated in 2017 the first creation of a Bose–Einstein condensate in space[52] and it is also the subject of two upcoming experiments on the International Space Station.[53][54]

Researchers in the new field of atomtronics use the properties of Bose–Einstein condensates when manipulating groups of identical cold atoms using lasers.[55]

In 1970, BECs were proposed by Emmanuel David Tannenbaum for anti-stealth technology.[56]

Dark matter

P. Sikivie and Q. Yang showed that cold dark matter axions form a Bose–Einstein condensate by thermalisation because of gravitational self-interactions.[57] Axions have not yet been confirmed to exist. However the important search for them has been greatly enhanced with the completion of upgrades to the Axion Dark Matter Experiment(ADMX) at the University of Washington in early 2018.

Isotopes

The effect has mainly been observed on alkaline atoms which have nuclear properties particularly suitable for working with traps. As of 2012, using ultra-low temperatures of 10^( − 7)K or below, Bose–Einstein condensates had been obtained for a multitude of isotopes, mainly of alkali metal, alkaline earth metal, and lanthanide atoms (, , , , , , , , , , , , , , and ). Research was finally successful in hydrogen with the aid of the newly developed method of 'evaporative cooling'.[58] In contrast, the superfluid state of below is not a good example, because the interaction between the atoms is too strong. Only 8% of atoms are in the ground state near absolute zero, rather than the 100% of a true condensate.[59]

The bosonic behavior of some of these alkaline gases appears odd at first sight, because their nuclei have half-integer total spin. It arises from a subtle interplay of electronic and nuclear spins: at ultra-low temperatures and corresponding excitation energies, the half-integer total spin of the electronic shell and half-integer total spin of the nucleus are coupled by a very weak hyperfine interaction. The total spin of the atom, arising from this coupling, is an integer lower value. The chemistry of systems at room temperature is determined by the electronic properties, which is essentially fermionic, since room temperature thermal excitations have typical energies much higher than the hyperfine values.


See also

-   Atom laser
-   Atomic coherence
-   Bose–Einstein correlations
-   Bose–Einstein condensation: a network theory approach
-   Bose–Einstein condensation of quasiparticles
-   Bose–Einstein statistics
-   Cold Atom Laboratory
-   Electromagnetically induced transparency
-   Fermionic condensate
-   Gas in a box
-   Gross–Pitaevskii equation
-   Macroscopic quantum phenomena
-   Macroscopic quantum self-trapping
-   Slow light
-   Superconductivity
-   Superfluid film
-   Superfluid helium-4
-   Supersolid
-   Tachyon condensation
-   Timeline of low-temperature technology
-   Super-heavy atom
-   Ultracold atom
-   Wiener sausage


References


Further reading

-   -   ,

-   -   -   -   -   -   .

-   -   .

-   -   -   -   -   .

-   -   -   -   -   C. J. Pethick and H. Smith, _Bose–Einstein Condensation in Dilute Gases_, Cambridge University Press, Cambridge, 2001.
-   Lev P. Pitaevskii and S. Stringari, _Bose–Einstein Condensation_, Clarendon Press, Oxford, 2003.
-   -   Monique Combescot and Shiue-Yuan Shiau, "Excitons and Cooper Pairs: Two Composite Bosons in Many-Body Physics", Oxford University Press ().


External links

-   Bose–Einstein Condensation 2009 Conference Bose–Einstein Condensation 2009 – Frontiers in Quantum Gases
-   BEC Homepage General introduction to Bose–Einstein condensation
-   Nobel Prize in Physics 2001 – for the achievement of Bose–Einstein condensation in dilute gases of alkali atoms, and for early fundamental studies of the properties of the condensates
-   Physics Today: Cornell, Ketterle, and Wieman Share Nobel Prize for Bose–Einstein Condensates
-   Bose–Einstein condensates at JILA
-   Atomcool at Rice University
-   Alkali Quantum Gases at MIT
-   Atom Optics at UQ
-   Einstein's manuscript on the Bose–Einstein condensate discovered at Leiden University
-   Bose–Einstein condensate on arxiv.org
-   Bosons – The Birds That Flock and Sing Together
-   Easy BEC machine – information on constructing a Bose–Einstein condensate machine.
-   Verging on absolute zero – Cosmos Online
-   Lecture by W Ketterle at MIT in 2001
-   Bose–Einstein Condensation at NIST – NIST resource on BEC

Category:Albert Einstein Category:Condensed matter physics Category:Exotic matter Category:Phases of matter Category:Articles containing video clips Category:Bose–Einstein condensates

[1] A.Douglas Stone, Chapter 24, _The Indian Comet_, in the book _Einstein and the Quantum_, Princeton University Press, Princeton, New Jersey, 2013.

[2]

[3]

[4]

[5]

[6]

[7] London, F. _Superfluids_ Vol.I and II, (reprinted New York: Dover 1964)

[8] _Bose-Einstein Condensate: A New Form of Matter_, NIST, 9 October 2001

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18] Beliaev, S. T. Zh. Eksp. Teor. Fiz. 34, 417–432 (1958) [Soviet Phys. JETP 7, 289 (1958)]; ibid. 34, 433–446 [Soviet Phys. JETP 7, 299 (1958)].

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28] Monique Combescot and Shiue-Yuan Shiau, "Excitons and Cooper Pairs: Two Composite Bosons in Many-Body Physics", Oxford University Press ()

[29]

[30]

[31] _Magnon Bose Einstein Condensation_ made simple. Website of the "Westfählische Wilhelms Universität Münster" Prof.Demokritov. Retrieved 25 June 2012.

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]  Planetary News|website=www.lpi.usra.edu|language=en-US|access-date=2017-05-23}}

[55]

[56]

[57] P. Sikivie, Q. Yang; Phys. Rev. Lett.,103:111103; 2009

[58]

[59]