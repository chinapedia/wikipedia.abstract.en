SPONTANEOUS EMISSION is the process in which a quantum mechanical system (such as an atom, molecule or subatomic particle) transitions from an excited energy state to a lower energy state (e.g., its ground state) and emits a quantised amount of energy in the form of a photon. Spontaneous emission is ultimately responsible for most of the light we see all around us; it is so ubiquitous that there are many names given to what is essentially the same process. If atoms (or molecules) are excited by some means other than heating, the spontaneous emission is called luminescence. For example, fireflies are luminescent. And there are different forms of luminescence depending on how excited atoms are produced (electroluminescence, chemiluminescence etc.). If the excitation is affected by the absorption of radiation the spontaneous emission is called fluorescence. Sometimes molecules have a metastable level and continue to fluoresce long after the exciting radiation is turned off; this is called phosphorescence. Figurines that glow in the dark are phosphorescent. Lasers start via spontaneous emission, then during continuous operation work by stimulated emission.

Spontaneous emission cannot be explained by classical electromagnetic theory and is fundamentally a quantum process. The first person to derive the rate of spontaneous emission accurately from first principles was Dirac in his quantum theory of radiation,[1] the precursor to the theory which he later coined quantum electrodynamics.[2] Contemporary physicists, when asked to give a physical explanation for spontaneous emission, generally invoke the zero-point energy of the electromagnetic field.[3][4] In 1963 the Jaynes-Cummings model[5] was developed describing the system of a two-level atom interacting with a quantized field mode (i.e. the vacuum) within an optical cavity. It gave the nonintuitive prediction that the rate of spontaneous emission could be controlled depending on the boundary conditions of the surrounding vacuum field. These experiments gave rise to cavity quantum electrodynamics (CQED), the study of effects of mirrors and cavities on radiative corrections.


Introduction

If a light source ('the atom') is in an excited state with energy E₂, it may spontaneously decay to a lower lying level (e.g., the ground state) with energy E₁, releasing the difference in energy between the two states as a photon. The photon will have angular frequency ω and an energy ℏω:

_E_₂ − _E_₁ = ℏ_ω_,

where ℏ is the reduced Planck constant. Note: ℏω = hν, where h is the Planck constant and ν is the linear frequency. The phase of the photon in spontaneous emission is random as is the direction in which the photon propagates. This is not true for stimulated emission. An energy level diagram illustrating the process of spontaneous emission is shown below:

Image:Spontaneousemission.png

If the number of light sources in the excited state at time t is given by N(t), the rate at which N decays is:

$$\frac{\partial N(t)}{\partial t} = -A_{21} N(t),$$

where A₂₁ is the rate of spontaneous emission. In the rate-equation A₂₁ is a proportionality constant for this particular transition in this particular light source. The constant is referred to as the _Einstein A coefficient_, and has units s^( − 1).[6] The above equation can be solved to give:

_N_(_t_) = _N_(0)_e_^( − _A_₂₁_t_) = _N_(0)_e_^( − _Γ__(rad)_t_),

where N(0) is the initial number of light sources in the excited state, t is the time and Γ_(rad) is the radiative decay rate of the transition. The number of excited states N thus decays exponentially with time, similar to radioactive decay. After one lifetime, the number of excited states decays to 36.8% of its original value ($\frac{1}{e}$-time). The radiative decay rate Γ_(rad) is inversely proportional to the lifetime τ₂₁:

$$A_{21}=\Gamma_{21}=\frac{1}{\tau_{21}}.$$


Theory

Spontaneous transitions were not explainable within the framework of the Schrödinger equation, in which the electronic energy levels were quantized, but the electromagnetic field was not. Given that the eigenstates of an atom are properly diagonalized, the overlap of the wavefunctions between the excited state and the ground state of the atom is zero. Thus, in the absence of a quantized electromagnetic field, the excited state atom cannot decay to the ground state. In order to explain spontaneous transitions, quantum mechanics must be extended to a quantum field theory, wherein the electromagnetic field is quantized at every point in space. The quantum field theory of electrons and electromagnetic fields is known as quantum electrodynamics.

In quantum electrodynamics (or QED), the electromagnetic field has a ground state, the QED vacuum, which can mix with the excited stationary states of the atom.[7] As a result of this interaction, the "stationary state" of the atom is no longer a true eigenstate of the combined system of the atom plus electromagnetic field. In particular, the electron transition from the excited state to the electronic ground state mixes with the transition of the electromagnetic field from the ground state to an excited state, a field state with one photon in it. Spontaneous emission in free space depends upon vacuum fluctuations to get started.[8][9]

Although there is only one electronic transition from the excited state to ground state, there are many ways in which the electromagnetic field may go from the ground state to a one-photon state. That is, the electromagnetic field has infinitely more degrees of freedom, corresponding to the different directions in which the photon can be emitted. Equivalently, one might say that the phase space offered by the electromagnetic field is infinitely larger than that offered by the atom. This infinite degree of freedom for the emission of the photon results in the apparent irreversible decay, i.e., spontaneous emission.

In the presence of electromagnetic vacuum modes, the combined atom-vacuum system is explained by the superposition of the wavefunctions of the excited state atom with no photon and the ground state atom with a single emitted photon:

|_ψ_(_t_)⟩ = _a_(_t_)_e_^( − _i__ω_₀_t_)|_e_; 0⟩ + ∑_(_k_, _s_)_b__(_k__s_)(_t_)_e_^( − _i__ω__(_k_)_t_)|_g_; 1_(_k__s_)⟩

where |e; 0⟩ and a(t) are the atomic excited state-electromagnetic vacuum wavefunction and its probability amplitude, |g; 1_(ks)⟩ and b_(ks)(t) are the ground state atom with a single photon (of mode ks) wavefunction and its probability amplitude, ω₀ is the atomic transition frequency, and ω_(k) = c|k| is the frequency of the photon. The sum is over k and s, which are the wavenumber and polarization of the emitted photon, respectively. As mentioned above, the emitted photon has a chance to be emitted with different wavenumbers and polarizations, and the resulting wavefunction is a superposition of these possibilities. To calculate the probability of the atom at the ground state (|b(t)|²), one needs to solve the time evolution of the wavefunction with an appropriate Hamiltonian.[10] To solve for the transition amplitude, one needs to average over (integrate over) all the vacuum modes, since one must consider the probabilities that the emitted photon occupies various parts of phase space equally. The "spontaneously" emitted photon has infinite different modes to propagate into, thus the probability of the atom re-absorbing the photon and returning to the original state is negligible, making the atomic decay practically irreversible. Such irreversible time evolution of the atom-vacuum system is responsible for the apparent spontaneous decay of an excited atom. If one were to keep track of all the vacuum modes, the combined atom-vacuum system would undergo unitary time evolution, making the decay process reversible. Cavity quantum electrodynamics is one such system where the vacuum modes are modified resulting in the reversible decay process, see also Quantum revival. The theory of the spontaneous emission under the QED framework was first calculated by Weisskopf and Wigner.

In spectroscopy one can frequently find that atoms or molecules in the excited states dissipate their energy in the absence of any external source of photons. This is not spontaneous emission, but is actually nonradiative relaxation of the atoms or molecules caused by the fluctuation of the surrounding molecules present inside the bulk.


Rate of spontaneous emission

The rate of spontaneous emission (i.e., the radiative rate) can be described by Fermi's golden rule.[11] The rate of emission depends on two factors: an 'atomic part', which describes the internal structure of the light source and a 'field part', which describes the density of electromagnetic modes of the environment. The atomic part describes the strength of a transition between two states in terms of transition moments. In a homogeneous medium, such as free space, the rate of spontaneous emission in the dipole approximation is given by:

$$\Gamma_{\text{rad}}(\omega)= \frac{\omega^3n|\mu_{12}|^2}    {3\pi\varepsilon_{0}\hbar c^3}
= \frac{4 \alpha \omega^3n^3| \langle 1|\mathbf{r}|2\rangle |^2}    {3 c^2}$$

$$\frac{|\mu_{12}|^2}    {\pi\varepsilon_{0}\hbar c}
= 4 \alpha | \langle 1|\mathbf{r}|2\rangle |^2$$

where ω is the emission frequency, n is the index of refraction, μ₁₂ is the transition dipole moment, ε₀ is the vacuum permittivity, ℏ is the reduced Planck constant, c is the vacuum speed of light, and α is the fine structure constant. (This approximation breaks down in the case of inner shell electrons in high-Z atoms.) The above equation clearly shows that the rate of spontaneous emission in free space increases proportionally to ω³.

In contrast with atoms, which have a discrete emission spectrum, quantum dots can be tuned continuously by changing their size. This property has been used to check the ω³-frequency dependence of the spontaneous emission rate as described by Fermi's golden rule.[12]


Radiative and nonradiative decay: the quantum efficiency

In the rate-equation above, it is assumed that decay of the number of excited states N only occurs under emission of light. In this case one speaks of full radiative decay and this means that the quantum efficiency is 100%. Besides radiative decay, which occurs under the emission of light, there is a second decay mechanism; nonradiative decay. To determine the total decay rate Γ_(tot), radiative and nonradiative rates should be summed:

_Γ__(tot) = _Γ__(rad) + _Γ__(nrad)

where Γ_(tot) is the total decay rate, Γ_(rad) is the radiative decay rate and Γ_(nrad) the nonradiative decay rate. The quantum efficiency (QE) is defined as the fraction of emission processes in which emission of light is involved:

$$QE=\frac{\Gamma_{\text{rad}}}{\Gamma_{\text{nrad}} + \Gamma_{\text{rad}}}.$$

In nonradiative relaxation, the energy is released as phonons, more commonly known as heat. Nonradiative relaxation occurs when the energy difference between the levels is very small, and these typically occur on a much faster time scale than radiative transitions. For many materials (for instance, semiconductors), electrons move quickly from a high energy level to a meta-stable level via small nonradiative transitions and then make the final move down to the bottom level via an optical or radiative transition. This final transition is the transition over the bandgap in semiconductors. Large nonradiative transitions do not occur frequently because the crystal structure generally cannot support large vibrations without destroying bonds (which generally doesn't happen for relaxation). Meta-stable states form a very important feature that is exploited in the construction of lasers. Specifically, since electrons decay slowly from them, they can be deliberately piled up in this state without too much loss and then stimulated emission can be used to boost an optical signal.


See also

-   Absorption (optics)
-   Stimulated emission
-   Emission spectrum
-   Spectral line
-   Atomic spectral line
-   Laser science
-   Purcell effect
-   Photonic crystal
-   Vacuum Rabi oscillation
-   Jaynes-Cummings model


References


External links

-   Detail calculation of the Spontaneous Emission: Weisskopf-Wigner Theory
-   Britney's Guide to Semiconductor Physics

Category:Concepts in physics Category:Laser science Category:Electromagnetic radiation Category:Charge carriers

[1]

[2]

[3]

[4]

[5]

[6] R. Loudon, The Quantum Theory of Light, 3rd ed. (Oxford University Press Inc., New York, 2001).

[7]

[8]

[9]

[10]

[11] B. Henderson and G. Imbusch, Optical Spectroscopy of Inorganic Solids (Clarendon Press, Oxford, UK, 1989).

[12] A. F. van Driel, G. Allan, C. Delerue, P. Lodahl,W. L. Vos and D. Vanmaekelbergh, Frequency-dependent spontaneous emission rate from CdSe and CdTe nanocrystals: Influence of dark states, Physical Review Letters, 95, 236804 (2005).http://cops.tnw.utwente.nl/pdf/05/PHYSICAL%20REVIEW%20LETTERS%2095%20236804%20(2005).pdf