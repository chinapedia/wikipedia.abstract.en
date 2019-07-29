EntryWithCollCode173233downbaxis.png, viewed down b axis, used in second harmonic generation.]] NONLINEAR OPTICS (NLO) is the branch of optics that describes the behaviour of light in _nonlinear media_, that is, media in which the polarization density P responds non-linearly to the electric field E of the light. The non-linearity is typically observed only at very high light intensities (values of atomic electric fields, typically 10⁸ V/m) such as those provided by lasers. Above the Schwinger limit, the vacuum itself is expected to become nonlinear. In nonlinear optics, the superposition principle no longer holds.

The first nonlinear optical effect to be predicted was two-photon absorption, by Maria Goeppert Mayer for her PhD in 1931, but it remained an unexplored theoretical curiosity until 1961 and the almost simultaneous observation of two-photon absorption at Bell Labs [1] and the discovery of second-harmonic generation by Peter Franken _et al._ at University of Michigan, both shortly after the construction of the first laser by Theodore Harold Maiman.[2] However, some nonlinear effects were discovered before the development of the laser.[3] The theoretical basis for many nonlinear processes were first described in Bloembergen's monograph "Nonlinear Optics".[4]


Nonlinear optical processes

Nonlinear optics explains nonlinear response of properties such as frequency, polarization, phase or path of incident light.[5] These nonlinear interactions give rise to a host of optical phenomena:

Frequency-mixing processes

-   Second-harmonic generation (SHG), or _frequency doubling_, generation of light with a doubled frequency (half the wavelength), two photons are destroyed, creating a single photon at two times the frequency.
-   Third-harmonic generation (THG), generation of light with a tripled frequency (one-third the wavelength), three photons are destroyed, creating a single photon at three times the frequency.
-   High-harmonic generation (HHG), generation of light with frequencies much greater than the original (typically 100 to 1000 times greater).
-   Sum-frequency generation (SFG), generation of light with a frequency that is the sum of two other frequencies (SHG is a special case of this).
-   Difference-frequency generation (DFG), generation of light with a frequency that is the difference between two other frequencies.
-   Optical parametric amplification (OPA), amplification of a signal input in the presence of a higher-frequency pump wave, at the same time generating an _idler_ wave (can be considered as DFG).
-   Optical parametric oscillation (OPO), generation of a signal and idler wave using a parametric amplifier in a resonator (with no signal input).
-   Optical parametric generation (OPG), like parametric oscillation but without a resonator, using a very high gain instead.
-   Half-harmonic generation, the special case of OPO or OPG when the signal and idler degenerate in one single frequency,
-   Spontaneous parametric down-conversion (SPDC), the amplification of the vacuum fluctuations in the low-gain regime.
-   Optical rectification (OR), generation of quasi-static electric fields.
-   Nonlinear light-matter interaction with free electrons and plasmas.[6][7][8][9]

Other nonlinear processes

-   Optical Kerr effect, intensity-dependent refractive index (a χ⁽³⁾ effect).
    -   Self-focusing, an effect due to the optical Kerr effect (and possibly higher-order nonlinearities) caused by the spatial variation in the intensity creating a spatial variation in the refractive index.
    -   Kerr-lens modelocking (KLM), the use of self-focusing as a mechanism to mode-lock laser.
    -   Self-phase modulation (SPM), an effect due to the optical Kerr effect (and possibly higher-order nonlinearities) caused by the temporal variation in the intensity creating a temporal variation in the refractive index.
    -   Optical solitons, an equilibrium solution for either an optical pulse (temporal soliton) or spatial mode (spatial soliton) that does not change during propagation due to a balance between dispersion and the Kerr effect (e.g. self-phase modulation for temporal and self-focusing for spatial solitons).
-   Cross-phase modulation (XPM), where one wavelength of light can affect the phase of another wavelength of light through the optical Kerr effect.
-   Four-wave mixing (FWM), can also arise from other nonlinearities.
-   Cross-polarized wave generation (XPW), a χ⁽³⁾ effect in which a wave with polarization vector perpendicular to the input one is generated.
-   Modulational instability.[10]
-   Raman amplification[11]
-   Optical phase conjugation.
-   Stimulated Brillouin scattering, interaction of photons with acoustic phonons
-   Multi-photon absorption, simultaneous absorption of two or more photons, transferring the energy to a single electron.
-   Multiple photoionisation, near-simultaneous removal of many bound electrons by one photon.
-   Chaos in optical systems.

Related processes

In these processes, the medium has a linear response to the light, but the properties of the medium are affected by other causes:

-   Pockels effect, the refractive index is affected by a static electric field; used in electro-optic modulators.
-   Acousto-optics, the refractive index is affected by acoustic waves (ultrasound); used in acousto-optic modulators.
-   Raman scattering, interaction of photons with optical phonons.


Parametric processes

Nonlinear effects fall into two qualitatively different categories, parametric and non-parametric effects. A parametric non-linearity is an interaction in which the quantum state of the nonlinear material is not changed by the interaction with the optical field. As a consequence of this, the process is "instantaneous". Energy and momentum are conserved in the optical field, making phase matching important and polarization-dependent.[12] [13]

Theory

Parametric and "instantaneous" (i.e. material must be lossless and dispersionless through the Kramers–Kronig relations) nonlinear optical phenomena, in which the optical fields are not too large, can be described by a Taylor series expansion of the dielectric polarization density (electric dipole moment per unit volume) P(_t_) at time _t_ in terms of the electric field E(_t_):

P(_t_) = _ε_₀(_χ_⁽¹⁾E(_t_) + _χ_⁽²⁾E²(_t_) + _χ_⁽³⁾E³(_t_) + …),
where the coefficients χ^((_n_)) are the _n_-th-order susceptibilities of the medium, and the presence of such a term is generally referred to as an _n_-th-order nonlinearity. Note that the polarization density P(_t_) and electrical field E(_t_) are considered as scalar for simplicity. In general, χ^((_n_)) is an (_n_ + 1)-th-rank tensor representing both the polarization-dependent nature of the parametric interaction and the symmetries (or lack of) of the nonlinear material.

Wave equation in a nonlinear material

Central to the study of electromagnetic waves is the wave equation. Starting with Maxwell's equations in an isotropic space, containing no free charge, it can be shown that

$$\nabla \times \nabla \times \mathbf{E} + \frac{n^2}{c^2}\frac{\partial^2}{\partial t^2}\mathbf{E}
= -\frac{1}{\varepsilon_0 c^2}\frac{\partial^2}{\partial t^2}\mathbf{P}^\text{NL},$$
where P^(NL) is the nonlinear part of the polarization density, and _n_ is the refractive index, which comes from the linear term in P.

Note that one can normally use the vector identity

∇ × (∇×V) = ∇(∇⋅V) − ∇²V
and Gauss's law (assuming no free charges, ρ_(free) = 0),

∇ ⋅ D = 0,
to obtain the more familiar wave equation

$$\nabla^2 \mathbf{E} - \frac{n^2}{c^2}\frac{\partial^2}{\partial t^2}\mathbf{E} = 0.$$
For nonlinear medium, Gauss's law does not imply that the identity

∇ ⋅ E = 0
is true in general, even for an isotropic medium. However, even when this term is not identically 0, it is often negligibly small and thus in practice is usually ignored, giving us the standard nonlinear wave equation:

$$\nabla^2 \mathbf{E} - \frac{n^2}{c^2}\frac{\partial^2}{\partial t^2}\mathbf{E}
= \frac{1}{\varepsilon_0 c^2}\frac{\partial^2}{\partial t^2}\mathbf{P}^\text{NL}.$$

Nonlinearities as a wave-mixing process

The nonlinear wave equation is an inhomogeneous differential equation. The general solution comes from the study of ordinary differential equations and can be obtained by the use of a Green's function. Physically one gets the normal electromagnetic wave solutions to the homogeneous part of the wave equation:

$$\nabla^2 \mathbf{E} - \frac{n^2}{c^2}\frac{\partial^2}{\partial t^2}\mathbf{E} = 0,$$
and the inhomogeneous term

$$\frac{1}{\varepsilon_0 c^2}\frac{\partial^2}{\partial t^2}\mathbf{P}^\text{NL}$$
acts as a driver/source of the electromagnetic waves. One of the consequences of this is a nonlinear interaction that results in energy being mixed or coupled between different frequencies, which is often called a "wave mixing".

In general, an _n_-th order nonlinearity will lead to (_n_ + 1)-wave mixing. As an example, if we consider only a second-order nonlinearity (three-wave mixing), then the polarization P takes the form

P^(NL) = _ε_₀_χ_⁽²⁾E²(_t_).
If we assume that _E_(_t_) is made up of two components at frequencies _ω_₁ and _ω_₂, we can write _E_(_t_) as

E(_t_) = _E_₁cos (_ω_₁_t_) + _E_₂cos (_ω_₂_t_),
and using Euler's formula to convert to exponentials,

$$\mathbf{E}(t) = \frac{1}{2}E_1 e^{-i\omega_1 t} + \frac{1}{2}E_2 e^{-i\omega_2 t} + \text{c.c.},$$
where "c.c." stands for complex conjugate. Plugging this into the expression for P gives

$$\begin{align}
\mathbf{P}^\text{NL} = \varepsilon_0 \chi^{(2)} \mathbf{E}^2(t)
 &= \frac{\varepsilon_0}{4} \chi^{(2)} \Big[{E_1}^2 e^{-i2\omega_1 t} + {E_2}^2 e^{-i2\omega_2 t}\\
 &\qquad + 2E_1 E_2 e^{-i(\omega_1 + \omega_2)t}\\
 &\qquad + 2E_1 {E_2}^* e^{-i(\omega_1 - \omega_2)t}\\
 &\qquad + \left(|E_1|^2+|E_2|^2\right)e^{0} + \text{c.c.}\Big],
\end{align}$$
which has frequency components at 2_ω_₁, 2_ω_₂, _ω_₁ + _ω_₂, _ω_₁ − _ω_₂, and 0. These three-wave mixing processes correspond to the nonlinear effects known as second-harmonic generation, sum-frequency generation, difference-frequency generation and optical rectification respectively.

Note: Parametric generation and amplification is a variation of difference-frequency generation, where the lower frequency of one of the two generating fields is much weaker (parametric amplification) or completely absent (parametric generation). In the latter case, the fundamental quantum-mechanical uncertainty in the electric field initiates the process.

Phase matching

Sellmeier-equation.png shown here, have normal dispersion: the index of refraction decreases monotonically as a function of wavelength (or increases as a function of frequency). This makes phase matching impossible in most frequency-mixing processes. For example, in SHG, there is no simultaneous solution to ω′ = 2ω and K′ = 2K in these materials. Birefringent materials avoid this problem by having two indices of refraction at once.[14]]] The above ignores the position dependence of the electrical fields. In a typical situation, the electrical fields are traveling waves described by

_E__(_j_)(X, _t_) = _E__(_j_, 0)_e_^(_i_(K_(_j_) ⋅ X − _ω__(_j_)_t_)) + c.c.

at position X, with the wave vector ∥K_(j)∥ = N(ω_(j))ω_(j)/c, where c is the velocity of light in vacuum, and N(ω_(j)) is the index of refraction of the medium at angular frequency ω_(j). Thus, the second-order polarization at angular frequency ω₃ = ω₁ + ω₂ is

_P_⁽²⁾(X, _t_) ∝ _E_₁^(_n_₁)_E_₂^(_n_₂)_e_^(_i_[(K₁ + K₂) ⋅ X − _ω_₃_t_]) + c.c.

At each position X within the nonlinear medium, the oscillating second-order polarization radiates at angular frequency ω₃ and a corresponding wave vector ∥K₃∥ = N(ω₃)ω₃/c. Constructive interference, and therefore a high-intensity ω₃ field, will occur only if

$$\vec{\mathbf{k}}_3 = \vec{\mathbf{k}}_1 + \vec{\mathbf{k}}_2.$$

The above equation is known as the _phase-matching condition_. Typically, three-wave mixing is done in a birefringent crystalline material, where the refractive index depends on the polarization and direction of the light that passes through. The polarizations of the fields and the orientation of the crystal are chosen such that the phase-matching condition is fulfilled. This phase-matching technique is called angle tuning. Typically a crystal has three axes, one or two of which have a different refractive index than the other one(s). Uniaxial crystals, for example, have a single preferred axis, called the extraordinary (e) axis, while the other two are ordinary axes (o) (see crystal optics). There are several schemes of choosing the polarizations for this crystal type. If the signal and idler have the same polarization, it is called "type-I phase matching", and if their polarizations are perpendicular, it is called "type-II phase matching". However, other conventions exist that specify further which frequency has what polarization relative to the crystal axis. These types are listed below, with the convention that the signal wavelength is shorter than the idler wavelength.

  Polarizations   Scheme
  --------------- --------
  Pump            Signal
  e               o
  e               o
  e               e
  e               e
  o               o
  o               o
  o               e
  o               e

  : Phase-matching types |+(λ_(p) ≤ λ_(s) ≤ λ_(i))

Most common nonlinear crystals are negative uniaxial, which means that the _e_ axis has a smaller refractive index than the _o_ axes. In those crystals, type-I and -II phase matching are usually the most suitable schemes. In positive uniaxial crystals, types VII and VIII are more suitable. Types II and III are essentially equivalent, except that the names of signal and idler are swapped when the signal has a longer wavelength than the idler. For this reason, they are sometimes called IIA and IIB. The type numbers V–VIII are less common than I and II and variants.

One undesirable effect of angle tuning is that the optical frequencies involved do not propagate collinearly with each other. This is due to the fact that the extraordinary wave propagating through a birefringent crystal possesses a Poynting vector that is not parallel to the propagation vector. This would lead to beam walk-off, which limits the nonlinear optical conversion efficiency. Two other methods of phase matching avoid beam walk-off by forcing all frequencies to propagate at a 90° with respect to the optical axis of the crystal. These methods are called temperature tuning and quasi-phase-matching.

Temperature tuning is used when the pump (laser) frequency polarization is orthogonal to the signal and idler frequency polarization. The birefringence in some crystals, in particular lithium niobate is highly temperature-dependent. The crystal temperature is controlled to achieve phase-matching conditions.

The other method is quasi-phase-matching. In this method the frequencies involved are not constantly locked in phase with each other, instead the crystal axis is flipped at a regular interval Λ, typically 15 micrometres in length. Hence, these crystals are called periodically poled. This results in the polarization response of the crystal to be shifted back in phase with the pump beam by reversing the nonlinear susceptibility. This allows net positive energy flow from the pump into the signal and idler frequencies. In this case, the crystal itself provides the additional wavevector _k_ = 2π/Λ (and hence momentum) to satisfy the phase-matching condition. Quasi-phase-matching can be expanded to chirped gratings to get more bandwidth and to shape an SHG pulse like it is done in a dazzler. SHG of a pump and self-phase modulation (emulated by second-order processes) of the signal and an optical parametric amplifier can be integrated monolithically.


Higher-order frequency mixing

Supersonic_high_harmonics.png The above holds for χ⁽²⁾ processes. It can be extended for processes where χ⁽³⁾ is nonzero, something that is generally true in any medium without any symmetry restrictions; in particular resonantly enhanced sum or difference frequency mixing in gasses is frequently used for extreme or "vacuum" Ultra Violet light generation.[15] In common scenarios, such as mixing in dilute gases, the non-linearity is weak and so the light beams are focused which, unlike the plane wave approximation used above, introduces a pi phase shift on each light beam, complicating the phase matching requirements.[16] Conveniently, difference frequency mixing with χ⁽³⁾ cancels this focal phase shift and often has a nearly self-canceling overall phase matching condition, which relatively simplifies broad wavelength tuning compared to sum frequency generation.

In χ⁽³⁾ all four frequencies are mixing simultaneously, as opposed to sequential mixing via two χ⁽²⁾ processes.

The Kerr effect can be described as a χ⁽³⁾ as well. At high peak powers the Kerr effect can cause filamentation of light in air, in which the light travels without dispersion or divergence in a self-generated waveguide.[17] At even high intensities the Taylor series, which led the domination of the lower orders, does not converge anymore and instead a time based model is used. When a noble gas atom is hit by an intense laser pulse, which has an electric field strength comparable to the Coulomb field of the atom, the outermost electron may be ionized from the atom. Once freed, the electron can be accelerated by the electric field of the light, first moving away from the ion, then back toward it as the field changes direction. The electron may then recombine with the ion, releasing its energy in the form of a photon. The light is emitted at every peak of the laser light field which is intense enough, producing a series of attosecond light flashes. The photon energies generated by this process can extend past the 800th harmonic order up to a few KeV. This is called high-order harmonic generation. The laser must be linearly polarized, so that the electron returns to the vicinity of the parent ion. High-order harmonic generation has been observed in noble gas jets, cells, and gas-filled capillary waveguides.


Example uses

Frequency doubling

One of the most commonly used frequency-mixing processes is FREQUENCY DOUBLING, or second-harmonic generation. With this technique, the 1064 nm output from Nd:YAG lasers or the 800 nm output from Ti:sapphire lasers can be converted to visible light, with wavelengths of 532 nm (green) or 400 nm (violet) respectively.

Practically, frequency doubling is carried out by placing a nonlinear medium in a laser beam. While there are many types of nonlinear media, the most common media are crystals. Commonly used crystals are BBO (β-barium borate), KDP (potassium dihydrogen phosphate), KTP (potassium titanyl phosphate), and lithium niobate. These crystals have the necessary properties of being strongly birefringent (necessary to obtain phase matching, see below), having a specific crystal symmetry, being transparent for both the impinging laser light and the frequency-doubled wavelength, and having high damage thresholds, which makes them resistant against the high-intensity laser light.

Optical phase conjugation

It is possible, using nonlinear optical processes, to exactly reverse the propagation direction and phase variation of a beam of light. The reversed beam is called a _conjugate_ beam, and thus the technique is known as OPTICAL PHASE CONJUGATION[18][19] (also called _time reversal_, _wavefront reversal_ and is significantly different from _retroreflection_).

One can interpret this nonlinear optical interaction as being analogous to a real-time holographic process.[20] In this case, the interacting beams simultaneously interact in a nonlinear optical material to form a dynamic hologram (two of the three input beams), or real-time diffraction pattern, in the material. The third incident beam diffracts at this dynamic hologram, and, in the process, reads out the _phase-conjugate_ wave. In effect, all three incident beams interact (essentially) simultaneously to form several real-time holograms, resulting in a set of diffracted output waves that phase up as the "time-reversed" beam. In the language of nonlinear optics, the interacting beams result in a nonlinear polarization within the material, which coherently radiates to form the phase-conjugate wave.

PhaseConjugationPrinciple.en.svg The most common way of producing optical phase conjugation is to use a four-wave mixing technique, though it is also possible to use processes such as stimulated Brillouin scattering. A device producing the phase-conjugation effect is known as a PHASE-CONJUGATE MIRROR (PCM).

For the four-wave mixing technique, we can describe four beams (_j_ = 1, 2, 3, 4) with electric fields:

$$\Xi_j(\mathbf{x},t) = \frac{1}{2} E_j(\mathbf{x}) e^{i (\omega_j t - \mathbf{k} \cdot \mathbf{x})} + \text{c.c.},$$

where _E_(j)_ are the electric field amplitudes. Ξ₁ and Ξ₂ are known as the two pump waves, with Ξ₃ being the signal wave, and Ξ₄ being the generated conjugate wave.

If the pump waves and the signal wave are superimposed in a medium with a non-zero χ⁽³⁾, this produces a nonlinear polarization field:

_P__(NL) = _ε_₀_χ_⁽³⁾(_Ξ_₁ + _Ξ_₂ + _Ξ_₃)³,

resulting in generation of waves with frequencies given by ω = ±ω₁ ± ω₂ ± ω₃ in addition to third-harmonic generation waves with ω = 3ω₁, 3ω₂, 3ω₃.

As above, the phase-matching condition determines which of these waves is the dominant. By choosing conditions such that ω = ω₁ + ω₂ − ω₃ and K = K₁ + K₂ − K₃, this gives a polarization field:

$$P_\omega = \frac{1}{2} \chi^{(3)} \varepsilon_0 E_1 E_2 E_3^* e^{i(\omega t - \mathbf{k} \cdot \mathbf{x})} + \text{c.c.}$$

This is the generating field for the phase-conjugate beam, Ξ₄. Its direction is given by K₄ = K₁ + K₂ − K₃, and so if the two pump beams are counterpropagating (K₁ = −K₂), then the conjugate and signal beams propagate in opposite directions (K₄ = −K₃). This results in the retroreflecting property of the effect.

Further, it can be shown that for a medium with refractive index _n_ and a beam interaction length _l_, the electric field amplitude of the conjugate beam is approximated by

$$E_4 =  \frac{i \omega l}{2 n c} \chi^{(3)} E_1 E_2 E_3^*,$$

where _c_ is the speed of light. If the pump beams _E_₁ and _E_₂ are plane (counterpropagating) waves, then

_E_₄(X) ∝ _E_₃^(*)(X),

that is, the generated beam amplitude is the complex conjugate of the signal beam amplitude. Since the imaginary part of the amplitude contains the phase of the beam, this results in the reversal of phase property of the effect.

Note that the constant of proportionality between the signal and conjugate beams can be greater than 1. This is effectively a mirror with a reflection coefficient greater than 100%, producing an amplified reflection. The power for this comes from the two pump beams, which are depleted by the process.

The frequency of the conjugate wave can be different from that of the signal wave. If the pump waves are of frequency ω₁ = ω₂ = ω, and the signal wave is higher in frequency such that ω₃ = ω + Δω, then the conjugate wave is of frequency ω₄ = ω − Δω. This is known as _frequency flipping_.

Angular and linear momenta in optical phase conjugation

Optical phase conjugation in the near field performs the reversal of classical rays, or retroreflection.

Classical picture

In _classical Maxwell electrodynamics_ a phase-conjugating mirror performs reversal of the Poynting vector:

S_(out)(R, _t_) =  − S_(in)(R, _t_),

("in" means incident field, "out" means reflected field) where

S(R, _t_) = _ϵ_₀_c_²E(R, _t_) × B(R, _t_),

which is a linear momentum density of electromagnetic field.[21] In the same way a phase-conjugated wave has an opposite angular momentum density vector L(R, t) = R × S(R, t) with respect to incident field:[22]

L_(out)(R, _t_) =  − L_(in)(R, _t_).

The above identities are valid _locally_, i.e. in each space point R in a given moment t for an _ideal phase-conjugating mirror_.

Quantum picture

In _quantum electrodynamics_ the photon with energy ℏω also possesses linear momentum P = ℏK and angular momentum, whose projection on propagation axis is L_(z) =  ± ℏℓ, where ℓ is _topological charge_ of photon, or winding number, Z is propagation axis. The angular momentum projection on propagation axis has _discrete values_  ± ℏℓ.

In _quantum electrodynamics_ the interpretation of phase conjugation is much simpler compared to _classical electrodynamics_. The photon reflected from phase conjugating-mirror (out) has opposite directions of linear and angular momenta with respect to incident photon (in):

P_(out) =  − ℏK =  − P_(in) = ℏK,

_L__(_z_)_(out) =  − ℏℓ =  − _L__(_z_)_(in) = ℏℓ.


Nonlinear optical pattern formation

Optical fields transmitted through nonlinear Kerr media can also display pattern formation owing to the nonlinear medium amplifying spatial and temporal noise. The effect is referred to as optical modulation instability.[23] This has been observed both in photo-refractive,[24] photonic lattices,[25] as well as photo-reactive systems.[26][27][28][29] In the latter case, optical nonlinearity is afforded by reaction-induced increases in refractive index.[30]


Molecular nonlinear optics

The early studies of nonlinear optics and materials focused on the inorganic solids. With the development of nonlinear optics, molecular optical properties were investigated, forming molecular nonlinear optics[31]. The traditional approaches used in the past to enhance nonlinearities include extending chromophore π-systems, adjusting bond length alternation, inducing intramolecular charge transfer, extending conjugation in 2D, and engineering multipolar charge distributions. Recently, many novel directions were proposed for enhanced nonlinearity and light manipulation, including twisted chromophores, combining rich density of states with bond alternation, microscopic cascading of second-order nonlinearity, etc. Due to the distinguished advantages, molecular nonlinear optics have been widely used in the biophotonics field, including bioimaging[32], phototherapy[33],biosensing[34], etc.


Common SHG materials

The_dark_red_Gallium_Selenid_in_its_bulk_form.jpg Ordered by pump wavelength:

-   800 nm: BBO
-   806 nm: lithium iodate (LiIO₃)
-   860 nm: potassium niobate (KNbO₃)
-   980 nm: KNbO₃
-   1064 nm: monopotassium phosphate (KH₂PO₄, KDP), lithium triborate (LBO) and β-barium borate (BBO)
-   1300 nm: gallium selenide (GaSe)
-   1319 nm: KNbO₃, BBO, KDP, potassium titanyl phosphate (KTP), lithium niobate (LiNbO₃), LiIO₃, and ammonium dihydrogen phosphate (ADP)
-   1550 nm: potassium titanyl phosphate (KTP), lithium niobate (LiNbO₃)


See also

-   Born–Infeld model
-   Filament propagation
-   :Category:Nonlinear optical materials


Notes


References

-   -   -


External links

-   Encyclopedia of laser physics and technology, with content on nonlinear optics, by Rüdiger Paschotta
-   An Intuitive Explanation of Phase Conjugation
-   SNLO - Nonlinear Optics Design Software
-   Robert Boyd plenary presentation: Quantum Nonlinear Optics: Nonlinear Optics Meets the Quantum World SPIE Newsroom

*

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

[11] A. P. Kouzov, N. I. Egorova, M. Chrysos, F. Rachet, Non-linear optical channels of the polarizability induction in a pair of interacting molecules, NANOSYSTEMS: PHYSICS, CHEMISTRY, MATHEMATICS, 2012, 3 (2), P. 55.

[12]

[13] See Section _Parametric versus Nonparametric Processes_, _Nonlinear Optics_ by Robert W. Boyd (3rd ed.), pp. 13–15.

[14] Robert W. Boyd, Nonlinear optics, Third edition, Chapter 2.3.

[15]

[16]

[17]

[18] _Scientific American_, December 1985, "Phase Conjugation", by Vladimir Shkunov and Boris Zel'dovich.

[19] _Scientific American_, January 1986, "Applications of Optical Phase Conjugation", by David M. Pepper.

[20] _Scientific American_, October 1990, "The Photorefractive Effect", by David M. Pepper, Jack Feinberg, and Nicolai V. Kukhtarev.

[21] A. Yu. Okulov, "Angular momentum of photons and phase conjugation", J. Phys. B: At. Mol. Opt. Phys. v. 41, 101001 (2008).

[22] A. Yu. Okulov, "Optical and Sound Helical structures in a Mandelstam–Brillouin mirror". JETP Lett., v. 88, n. 8, pp. 561–566 (2008).

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