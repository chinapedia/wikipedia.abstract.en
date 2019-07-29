Lasers.JPG STIMULATED EMISSION is the process by which an incoming photon of a specific frequency can interact with an excited atomic electron (or other excited molecular state), causing it to drop to a lower energy level. The liberated energy transfers to the electromagnetic field, creating a new photon with a phase, frequency, polarization, and direction of travel that are all identical to the photons of the incident wave. This is in contrast to spontaneous emission, which occurs at random intervals without regard to the ambient electromagnetic field.

The process is identical in form to atomic absorption in which the energy of an absorbed photon causes an identical but opposite atomic transition: from the lower level to a higher energy level. In normal media at thermal equilibrium, absorption exceeds stimulated emission because there are more electrons in the lower energy states than in the higher energy states. However, when a population inversion is present, the rate of stimulated emission exceeds that of absorption, and a net optical amplification can be achieved. Such a gain medium, along with an optical resonator, is at the heart of a laser or maser. Lacking a feedback mechanism, laser amplifiers and superluminescent sources also function on the basis of stimulated emission.


Overview

Electrons and their interactions with electromagnetic fields are important in our understanding of chemistry and physics. In the classical view, the energy of an electron orbiting an atomic nucleus is larger for orbits further from the nucleus of an atom. However, quantum mechanical effects force electrons to take on discrete positions in orbitals. Thus, electrons are found in specific energy levels of an atom, two of which are shown below:

Stimulated_Emission.svg

When an electron absorbs energy either from light (photons) or heat (phonons), it receives that incident quantum of energy. But transitions are only allowed between discrete energy levels such as the two shown above. This leads to emission lines and absorption lines.

When an electron is excited from a lower to a higher energy level, it unlikely for it to stay that way forever. An electron in an excited state may decay to a lower energy state which is not occupied, according to a particular time constant characterizing that transition. When such an electron decays without external influence, emitting a photon, that is called "spontaneous emission". The phase and direction associated with the photon that is emitted is random. A material with many atoms in such an excited state may thus result in radiation which has a narrow spectrum (centered around one wavelength of light), but the individual photons would have no common phase relationship and would also emanate in random directions. This is the mechanism of fluorescence and thermal emission.

An external electromagnetic field at a frequency associated with a transition can affect the quantum mechanical state of the atom without being absorbed. As the electron in the atom makes a transition between two stationary states (neither of which shows a dipole field), it enters a transition state which does have a dipole field, and which acts like a small electric dipole, and this dipole oscillates at a characteristic frequency. In response to the external electric field at this frequency, the probability of the electron entering this transition state is greatly increased. Thus, the rate of transitions between two stationary states is increased beyond that of spontaneous emission. A transition from the higher to a lower energy state produces an additional photon with the same phase and direction as the incident photon; this is the process of STIMULATED EMISSION.

History

Stimulated emission was a theoretical discovery by Einstein[1][2] within the framework of the old quantum theory, wherein the emission is described in terms of photons that are the quanta of the EM field. Stimulated emission can also occur in classical models, without reference to photons or quantum-mechanics.[3] (See also Laser#history.)


Mathematical model

Stimulated emission can be modelled mathematically by considering an atom that may be in one of two electronic energy states, a lower level state (possibly the ground state) (1) and an _excited state_ (2), with energies _E_₁ and _E_₂ respectively.

If the atom is in the excited state, it may decay into the lower state by the process of spontaneous emission, releasing the difference in energies between the two states as a photon. The photon will have frequency _ν_₀ and energy _hν_₀, given by:

_E_₂ − _E_₁ = _h_ _ν_₀

where _h_ is Planck's constant.

Alternatively, if the excited-state atom is perturbed by an electric field of frequency _ν_₀, it may emit an additional photon of the same frequency and in phase, thus augmenting the external field, leaving the atom in the lower energy state. This process is known as STIMULATED EMISSION.

In a group of such atoms, if the number of atoms in the excited state is given by _N_₂, the rate at which stimulated emission occurs is given by

$$\frac{\partial N_2}{\partial t} =
-\frac{\partial N_1}{\partial t} =
 - B_{21} \, \rho (\nu) \, N_2$$

where the proportionality constant _B_₂₁ is known as the _Einstein B coefficient_ for that particular transition, and _ρ_(_ν_) is the radiation density of the incident field at frequency _ν_. The rate of emission is thus proportional to the number of atoms in the excited state _N_₂, and to the density of incident photons.

At the same time, there will be a process of atomic absorption which _removes_ energy from the field while raising electrons from the lower state to the upper state. Its rate is given by an essentially identical equation,

$$\frac{\partial N_2}{\partial t} =
-\frac{\partial N_1}{\partial t} =
  B_{12} \, \rho (\nu) \, N_1$$
.

The rate of absorption is thus proportional to the number of atoms in the lower state, _N_₁. Einstein showed that the coefficient for this transition must be identical to that for stimulated emission:

_B_₁₂ = _B_₂₁
.

Thus absorption and stimulated emission are reverse processes proceeding at somewhat different rates. Another way of viewing this is to look at the _net_ stimulated emission or absorption viewing it as a single process. The net rate of transitions from _E_₂ to _E_₁ due to this combined process can be found by adding their respective rates, given above:

$$\frac{\partial N_1^\text{net}}{\partial t} =
- \frac{\partial N_2^\text{net}}{\partial t} =
  B_{21} \, \rho(\nu) \, (N_2-N_1)  =
  B_{21} \, \rho(\nu) \, \Delta N$$
.

Thus a net power is released into the electric field equal to the photon energy _hν_ times this net transition rate. In order for this to be a positive number, indicating net stimulated emission, there must be more atoms in the excited state than in the lower level: ΔN > 0. Otherwise there is net absorption and the power of the wave is reduced during passage through the medium. The special condition N₂ > N₁ is known as a population inversion, a rather unusual condition that must be effected in the gain medium of a laser.

The notable characteristic of stimulated emission compared to everyday light sources (which depend on spontaneous emission) is that the emitted photons have the same frequency, phase, polarization, and direction of propagation as the incident photons. The photons involved are thus mutually coherent. When a population inversion (ΔN > 0) is present, therefore, optical amplification of incident radiation will take place.

Although energy generated by stimulated emission is always at the exact frequency of the field which has stimulated it, the above rate equation refers only to excitation at the particular optical frequency ν₀ corresponding to the energy of the transition. At frequencies offset from ν₀ the strength of stimulated (or spontaneous) emission will be decreased according to the so-called line shape. Considering only homogeneous broadening affecting an atomic or molecular resonance, the spectral line shape function is described as a Lorentzian distribution

$$g'(\nu) = {1 \over \pi } { (\Gamma / 2) \over (\nu - \nu_0)^2 + (\Gamma /2 )^2 }$$

where Γ  is the full width at half maximum or FWHM bandwidth.

The peak value of the Lorentzian line shape occurs at the line center, ν = ν₀. A line shape function can be normalized so that its value at ν₀ is unity; in the case of a Lorentzian we obtain

$$g(\nu) = { g'(\nu) \over g'(\nu_0) } = { (\Gamma / 2)^2 \over (\nu - \nu_0)^2 + (\Gamma /2 )^2 }$$
.

Thus stimulated emission at frequencies away from ν₀ is reduced by this factor. In practice there may also be broadening of the line shape due to inhomogeneous broadening, most notably due to the Doppler effect resulting from the distribution of velocities in a gas at a certain temperature. This has a Gaussian shape and reduces the peak strength of the line shape function. In a practical problem the full line shape function can be computed through a convolution of the individual line shape functions involved. Therefore, optical amplification will add power to an incident optical field at frequency ν at a rate given by

_P_ = _h__ν_ _g_(_ν_) _B_₂₁ _ρ_(_ν_) _Δ__N_
.


Stimulated emission cross section

The stimulated emission cross section is

$$\sigma_{21}(\nu) = A_{21} \frac{\lambda^2}{8\pi n^2} g(\nu)$$

where

    _A_₂₁ is the Einstein _A_ coefficient,
    _λ_ is the wavelength in vacuum,
    _n_ is the refractive index of the medium (dimensionless), and
    _g_(_ν_) is the spectral line shape function.


Optical amplification

Stimulated emission can provide a physical mechanism for optical amplification. If an external source of energy stimulates more than 50% of the atoms in the ground state to transition into the excited state, then what is called a population inversion is created. When light of the appropriate frequency passes through the inverted medium, the photons are either absorbed by the atoms that remain in the ground state or the photons stimulate the excited atoms to emit additional photons of the same frequency, phase, and direction. Since more atoms are in the excited state than in the ground state then an amplification of the input intensity results.

The population inversion, in units of atoms per cubic meter, is

$$\Delta N_{21} =  N_2 - {g_2 \over g_1} N_1$$

where _g_₁ and _g_₂ are the degeneracies of energy levels 1 and 2, respectively.

Small signal gain equation

The intensity (in watts per square meter) of the stimulated emission is governed by the following differential equation:

$${ dI \over dz} = \sigma_{21}(\nu) \cdot \Delta N_{21} \cdot I(z)$$

as long as the intensity _I_(_z_) is small enough so that it does not have a significant effect on the magnitude of the population inversion. Grouping the first two factors together, this equation simplifies as

$${ dI \over dz} = \gamma_0(\nu) \cdot I(z)$$

where

_γ_₀(_ν_) = _σ_₂₁(_ν_) ⋅ _Δ__N_₂₁

is the _small-signal gain coefficient_ (in units of radians per meter). We can solve the differential equation using separation of variables:

$${ dI \over I(z)} = \gamma_0(\nu) \cdot dz$$

Integrating, we find:

$$\ln \left( {I(z) \over I_{in}} \right) =  \gamma_0(\nu) \cdot z$$

or

_I_(_z_) = _I__(_i__n_)_e_^(_γ_₀(_ν_)_z_)

where

_I__(_i__n_) = _I_(_z_ = 0) 
is the optical intensity of the input signal (in watts per square meter).

Saturation intensity

The saturation intensity _I__(S) is defined as the input intensity at which the gain of the optical amplifier drops to exactly half of the small-signal gain. We can compute the saturation intensity as

$$I_S = {h \nu \over \sigma(\nu) \cdot \tau_S }$$

where

    _h_ is Planck's constant, and
    τ_(S) is the saturation time constant, which depends on the spontaneous emission lifetimes of the various transitions between the energy levels related to the amplification.

    ν is the frequency in Hz

General gain equation

The general form of the gain equation, which applies regardless of the input intensity, derives from the general differential equation for the intensity _I_ as a function of position _z_ in the gain medium:

$${ dI \over dz} = { \gamma_0(\nu)  \over 1 + \bar{g}(\nu) { I(z) \over I_S } }  \cdot I(z)$$

where I_(S) is saturation intensity. To solve, we first rearrange the equation in order to separate the variables, intensity _I_ and position _z_:

$${ dI \over I(z)} \left[ 1 + \bar{g}(\nu) { I(z) \over I_S } \right]  =  \gamma_0(\nu)\cdot dz$$

Integrating both sides, we obtain

$$\ln \left( { I(z) \over I_{in} } \right) + \bar{g}(\nu) { I(z) - I_{in} \over I_S} = \gamma_0(\nu) \cdot z$$

or

$$\ln \left( { I(z) \over I_{in} } \right) + \bar{g}(\nu)  {  I_{in} \over  I_S  }  \left( { I(z) \over I_{in}  } - 1 \right)  = \gamma_0(\nu) \cdot z$$

The gain _G_ of the amplifier is defined as the optical intensity _I_ at position _z_ divided by the input intensity:

$$G = G(z) = { I(z) \over I_{in}  }$$

Substituting this definition into the prior equation, we find the GENERAL GAIN EQUATION:

$$\ln \left( G \right) + \bar{g}(\nu)  {  I_{in} \over  I_S  }  \left( G - 1 \right)  = \gamma_0(\nu) \cdot z$$

Small signal approximation

In the special case where the input signal is small compared to the saturation intensity, in other words,

_I__(_i__n_) ≪ _I__(_S_) 

then the general gain equation gives the small signal gain as

ln (_G_) = ln (_G_₀) = _γ_₀(_ν_) ⋅ _z_

or

_G_ = _G_₀ = _e_^(_γ_₀(_ν_)_z_)

which is identical to the small signal gain equation (see above).

Large signal asymptotic behavior

For large input signals, where

_I__(_i__n_) ≫ _I__(_S_) 

the gain approaches unity

_G_ → 1

and the general gain equation approaches a linear asymptote:

$$I(z) = I_{in} + { \gamma_0(\nu) \cdot z \over \bar{g}(\nu) } I_S$$


See also

-   Absorption
-   Active laser medium
-   Laser (includes a history section)
-   Laser science
-   Rabi cycle
-   Spontaneous emission
-   STED microscopy


References

-   -   .

.3 Laser Fundamentals, William T. Silfvast

Category:Electromagnetic radiation Category:Concepts in physics Category:Laser science

[1]

[2]

[3]