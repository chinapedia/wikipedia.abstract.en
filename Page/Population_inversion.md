In science, specifically statistical mechanics, a POPULATION INVERSION occurs while a system (such as a group of atoms or molecules) exists in a state in which more members of the system are in higher, excited states than in lower, unexcited energy states. It is called an "inversion" because in many familiar and commonly encountered physical systems, this is not possible. This concept is of fundamental importance in laser science because the production of a population inversion is a necessary step in the workings of a standard laser.


Boltzmann distributions and thermal equilibrium

To understand the concept of a population inversion, it is necessary to understand some thermodynamics and the way that light interacts with matter. To do so, it is useful to consider a very simple assembly of atoms forming a laser medium.

Assume there are a group of _N_ atoms, each of which is capable of being in one of two energy states: either

1.  The _ground state_, with energy _E_₁; or
2.  The _excited state_, with energy _E_₂, with _E_₂ > _E_₁.

The number of these atoms which are in the ground state is given by _N_₁, and the number in the excited state _N_₂. Since there are _N_ atoms in total,

_N_₁ + _N_₂ = _N_
The energy difference between the two states, given by

_Δ__E_₁₂ = _E_₂ − _E_₁,
determines the characteristic frequency ν₁₂ of light which will interact with the atoms; This is given by the relation

_E_₂ − _E_₁ = _Δ__E_₁₂ = _h__ν_₁₂,
_h_ being Planck's constant.

If the group of atoms is in thermal equilibrium, it can be shown from Maxwell–Boltzmann statistics that the ratio of the number of atoms in each state is given by the ratio of two Boltzmann distributions, the Boltzmann factor:

$$\frac{N_2}{N_1} = \exp{\frac{-(E_2-E_1)}{kT}},$$
where _T_ is the thermodynamic temperature of the group of atoms, and _k_ is Boltzmann's constant.

We may calculate the ratio of the populations of the two states at room temperature (_T_ ≈ 300 K) for an energy difference Δ_E_ that corresponds to light of a frequency corresponding to visible light (ν ≈ 5×10¹⁴ Hz). In this case Δ_E_ = _E_₂ - _E_₁ ≈ 2.07 eV, and _kT_ ≈ 0.026 eV. Since _E_₂ - _E_₁ ≫ _kT_, it follows that the argument of the exponential in the equation above is a large negative number, and as such _N_₂/_N_₁ is vanishingly small; i.e., there are almost no atoms in the excited state. When in thermal equilibrium, then, it is seen that the lower energy state is more populated than the higher energy state, and this is the normal state of the system. As _T_ increases, the number of electrons in the high-energy state (_N_₂) increases, but _N_₂ never exceeds _N_₁ for a system at thermal equilibrium; rather, at infinite temperature, the populations _N_₂ and _N_₁ become equal. In other words, a population inversion (_N_₂/_N_₁ > 1) can never exist for a system at thermal equilibrium. To achieve population inversion therefore requires pushing the system into a non-equilibrated state.


The interaction of light with matter

There are three types of possible interactions between a system of atoms and light that are of interest:

Absorption

If light (photons) of frequency ν₁₂ passes through the group of atoms, there is a possibility of the light being absorbed by electrons which are in the ground state, which will cause them to be excited to the higher energy state. The rate of absorption is proportional to the radiation intensity of the light, and also to the number of atoms currently in the ground state, _N_₁.

Spontaneous emission

If atoms are in the excited state, spontaneous decay events to the ground state will occur at a rate proportional to _N_₂, the number of atoms in the excited state. The energy difference between the two states Δ_E_₂₁ is emitted from the atom as a photon of frequency ν₂₁ as given by the frequency-energy relation above.

The photons are emitted stochastically, and there is no fixed phase relationship between photons emitted from a group of excited atoms; in other words, spontaneous emission is incoherent. In the absence of other processes, the number of atoms in the excited state at time _t_, is given by

$$N_2(t) = N_2(0) \exp{\frac{-t}{\tau_{21}}},$$
where _N_₂(0) is the number of excited atoms at time _t_ = 0, and τ₂₁ is the _mean lifetime_ of the transition between the two states.

Stimulated emission

If an atom is already in the excited state, it may be agitated by the passage of a photon that has a frequency ν₂₁ corresponding to the energy gap Δ_E_ of the excited state to ground state transition. In this case, the excited atom relaxes to the ground state, and it produces a second photon of frequency ν₂₁. The original photon is not absorbed by the atom, and so the result is two photons of the same frequency. This process is known as _stimulated emission_.

Specifically, an excited atom will act like a small electric dipole which will oscillate with the external field provided. One of the consequences of this oscillation is that it encourages electrons to decay to the lowest energy state. When this happens due to the presence of the electromagnetic field from a photon, a photon is released in the same phase and direction as the "stimulating" photon, and is called stimulated emission.

Stimulated_Emission.svg

The rate at which stimulated emission occurs is proportional to the number of atoms _N_₂ in the excited state, and the radiation density of the light. The base probability of a photon causing stimulated emission in a single excited atom was shown by Albert Einstein to be exactly equal to the probability of a photon being absorbed by an atom in the ground state. Therefore, when the numbers of atoms in the ground and excited states are equal, the rate of stimulated emission is equal to the rate of absorption for a given radiation density.

The critical detail of stimulated emission is that the induced photon has the same frequency and phase as the incident photon. In other words, the two photons are coherent. It is this property that allows optical amplification, and the production of a laser system. During the operation of a laser, all three light-matter interactions described above are taking place. Initially, atoms are energized from the ground state to the excited state by a process called _pumping_, described below. Some of these atoms decay via spontaneous emission, releasing incoherent light as photons of frequency, ν. These photons are fed back into the laser medium, usually by an optical resonator. Some of these photons are absorbed by the atoms in the ground state, and the photons are lost to the laser process. However, some photons cause stimulated emission in excited-state atoms, releasing another coherent photon. In effect, this results in _optical amplification_.

If the number of photons being amplified per unit time is greater than the number of photons being absorbed, then the net result is a continuously increasing number of photons being produced; the laser medium is said to have a gain of greater than unity.

Recall from the descriptions of absorption and stimulated emission above that the rates of these two processes are proportional to the number of atoms in the ground and excited states, _N_₁ and _N_₂, respectively. If the ground state has a higher population than the excited state (_N_₁ > _N_₂), then the absorption process dominates, and there is a net attenuation of photons. If the populations of the two states are the same (_N_₁ = _N_₂), the rate of absorption of light exactly balances the rate of emission; the medium is then said to be _optically transparent_.

If the higher energy state has a greater population than the lower energy state (_N_₁ < _N_₂), then the emission process dominates, and light in the system undergoes a net increase in intensity. It is thus clear that to produce a faster rate of stimulated emissions than absorptions, it is required that the ratio of the populations of the two states is such that _N_₂/_N_₁ > 1; In other words, a population inversion is required for laser operation.


Selection rules

Many transitions involving electromagnetic radiation are strictly forbidden under quantum mechanics. The allowed transitions are described by so-called selection rules, which describe the conditions under which a radiative transition is allowed. For instance, transitions are only allowed if Δ_S_ = 0, _S_ being the total spin angular momentum of the system. In real materials other effects, such as interactions with the crystal lattice, intervene to circumvent the formal rules by providing alternate mechanisms. In these systems the forbidden transitions can occur, but usually at slower rates than allowed transitions. A classic example is phosphorescence where a material has a ground state with _S_ = 0, an excited state with _S_ = 0, and an intermediate state with _S_ = 1. The transition from the intermediate state to the ground state by emission of light is slow because of the selection rules. Thus emission may continue after the external illumination is removed. In contrast fluorescence in materials is characterized by emission which ceases when the external illumination is removed.

Transitions which do not involve the absorption or emission of radiation are not affected by selection rules. Radiationless transition between levels, such as between the excited _S_ = 0 and _S_ = 1 states, may proceed quickly enough to siphon off a portion of the _S_ = 0 population before it spontaneously returns to the ground state.

The existence of intermediate states in materials is essential to the technique of optical pumping of lasers (see below).


Creating a population inversion

As described above, a population inversion is required for laser operation, but cannot be achieved in our theoretical group of atoms with two energy-levels when they are in thermal equilibrium. In fact, any method by which the atoms are directly and continuously excited from the ground state to the excited state (such as optical absorption) will eventually reach equilibrium with the de-exciting processes of spontaneous and stimulated emission. At best, an equal population of the two states, _N_₁ = _N_₂ = _N_/2, can be achieved, resulting in optical transparency but no net optical gain.

Three-level lasers

Population-inversion-3level.png To achieve non-equilibrium conditions, an indirect method of populating the excited state must be used. To understand how this is done, we may use a slightly more realistic model, that of a _three-level laser_. Again consider a group of _N_ atoms, this time with each atom able to exist in any of three energy states, levels 1, 2 and 3, with energies _E_₁, _E_₂, and _E_₃, and populations _N_₁, _N_₂, and _N_₃, respectively.

We assume that _E_₁ < _E_₂ < _E_₃; that is, the energy of level 2 lies between that of the ground state and level 3.

Initially, the system of atoms is at thermal equilibrium, and the majority of the atoms will be in the ground state, i.e., _N_₁ ≈ _N_, _N_₂ ≈ _N_₃ ≈ 0. If we now subject the atoms to light of a frequency $\scriptstyle\nu_{13} \,=\, \frac{1}{h}\left(E_3 - E_1\right)$, the process of optical absorption will excite electrons from the ground state to level 3. This process is called _pumping_, and does not necessarily always directly involve light absorption; other methods of exciting the laser medium, such as electrical discharge or chemical reactions, may be used. The level 3 is sometimes referred to as the _pump level_ or _pump band_, and the energy transition _E_₁ → _E_₃ as the _pump transition_, which is shown as the arrow marked P in the diagram on the right.

If we continuously pump electrons, we will excite an appreciable number of them into level 3, such that _N_₃ > 0. To have a medium suitable for laser operation, it is necessary that these excited atoms quickly decay to level 2. The energy released in this transition may be emitted as a photon (spontaneous emission), however in practice the 3→2 transition (labeled R in the diagram) is usually _radiationless_, with the energy being transferred to vibrational motion (heat) of the host material surrounding the atoms, without the generation of a photon.

An electron in level 2 may decay by spontaneous emission to the ground state, releasing a photon of frequency _ν_₁₂ (given by _E_₂ – _E_₁ = _hν_₁₂), which is shown as the transition L, called the _laser transition_ in the diagram. If the lifetime of this transition, τ₂₁ is much longer than the lifetime of the radiationless 3 → 2 transition τ₃₂ (if τ₂₁ ≫ τ₃₂, known as a _favourable lifetime ratio_), the population of the _E_₃ will be essentially zero (_N_₃ ≈ 0) and a population of excited state atoms will accumulate in level 2 (_N_₂ > 0). If over half the _N_ atoms can be accumulated in this state, this will exceed the population of the ground state _N_₁. A population inversion (_N_₂ > _N_₁ ) has thus been achieved between level 1 and 2, and optical amplification at the frequency ν₂₁ can be obtained.

Because at least half the population of atoms must be excited from the ground state to obtain a population inversion, the laser medium must be very strongly pumped. This makes three-level lasers rather inefficient, despite being the first type of laser to be discovered (based on a ruby laser medium, by Theodore Maiman in 1960). A three-level system could also have a radiative transition between level 3 and 2, and a non-radiative transition between 2 and 1. In this case, the pumping requirements are weaker. In practice, most lasers are _four-level lasers_, described below.

Four-level laser

Population-inversion-4level.png Here, there are four energy levels, energies _E_₁, _E_₂, _E_₃, _E_₄, and populations _N_₁, _N_₂, _N_₃, _N_₄, respectively. The energies of each level are such that _E_₁ < _E_₂ < _E_₃ < _E_₄.

In this system, the pumping transition P excites the atoms in the ground state (level 1) into the pump band (level 4). From level 4, the atoms again decay by a fast, non-radiative transition RA into the level 3. Since the lifetime of the laser transition L is long compared to that of RA (τ₃₂ ≫ τ₄₃), a population accumulates in level 3 (the _upper laser level_), which may relax by spontaneous or stimulated emission into level 2 (the _lower laser level_). This level likewise has a fast, non-radiative decay RB into the ground state.

As before, the presence of a fast, radiationless decay transition results in the population of the pump band being quickly depleted (_N_₄ ≈ 0). In a four-level system, any atom in the lower laser level _E_₂ is also quickly de-excited, leading to a negligible population in that state (_N_₂ ≈ 0). This is important, since any appreciable population accumulating in level 3, the upper laser level, will form a population inversion with respect to level 2. That is, as long as _N_₃ > 0, then _N_₃ > _N_₂, and a population inversion is achieved. Thus optical amplification, and laser operation, can take place at a frequency of ν₃₂ (_E_₃-_E_₂ = _h_ν₃₂).

Since only a few atoms must be excited into the upper laser level to form a population inversion, a four-level laser is much more efficient than a three-level one, and most practical lasers are of this type. In reality, many more than four energy levels may be involved in the laser process, with complex excitation and relaxation processes involved between these levels. In particular, the pump band may consist of several distinct energy levels, or a continuum of levels, which allow optical pumping of the medium over a wide range of wavelengths.

Note that in both three- and four-level lasers, the energy of the pumping transition is greater than that of the laser transition. This means that, if the laser is optically pumped, the frequency of the pumping light must be greater than that of the resulting laser light. In other words, the pump wavelength is shorter than the laser wavelength. It is possible in some media to use multiple photon absorptions between multiple lower-energy transitions to reach the pump level; such lasers are called _up-conversion_ lasers.

While in many lasers the laser process involves the transition of atoms between different electronic energy states, as described in the model above, this is not the only mechanism that can result in laser action. For example, there are many common lasers (e.g., dye lasers, carbon dioxide lasers) where the laser medium consists of complete molecules, and energy states correspond to vibrational and rotational modes of oscillation of the molecules. This is the case with water masers, that occur in nature.

In some media it is possible, by imposing an additional optical or microwave field, to use quantum coherence effects to reduce the likelihood of an excited-state to ground-state transition. This technique, known as lasing without inversion, allows optical amplification to take place without producing a population inversion between the two states.


Other methods of creating a population inversion

Stimulated emission was first observed in the microwave region of the electromagnetic spectrum, giving rise to the acronym MASER for Microwave Amplification by Stimulated Emission of Radiation. In the microwave region, the Boltzmann distribution of molecules among energy states is such that, at room temperature all states are populated almost equally.

To create a population inversion under these conditions, it is necessary to selectively remove some atoms or molecules from the system based on differences in properties. For instance, in a hydrogen maser, the well-known 21cm wave transition in atomic hydrogen, where the lone electron flips its spin state from parallel to the nuclear spin to antiparallel, can be used to create a population inversion because the parallel state has a magnetic moment and the antiparallel state does not. A strong inhomogeneous magnetic field will separate out atoms in the higher energy state from a beam of mixed state atoms. The separated population represents a population inversion which can exhibit stimulated emissions.


See also

-   Laser construction
-   Negative temperature
-   Quantum electronics


References

-   Svelto, Orazio (1998). _Principles of Lasers_, 4th ed. (trans. David Hanna), Springer.

Category:Laser science Category:Statistical mechanics