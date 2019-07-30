in groups of gravity waves on the surface of deep water. The red square moves with the phase velocity, and the green circles propagate with the group velocity. In this deep-water case, _the phase velocity is twice the group velocity_. The red square overtakes two green circles when moving from the left to the right of the figure. New waves seem to emerge at the back of a wave group, grow in amplitude until they are at the center of the group, and vanish at the wave group front. For surface gravity waves, the water particle velocities are much smaller than the phase velocity, in most cases.]]

The GROUP VELOCITY of a wave is the velocity with which the overall envelope shape of the wave's amplitudes—known as the _modulation_ or _envelope_ of the wave—propagates through space.

For example, if a stone is thrown into the middle of a very still pond, a circular pattern of waves with a quiescent center appears in the water, also known as a capillary wave. The expanding ring of waves is the WAVE GROUP, within which one can discern individual wavelets of differing wavelengths traveling at different speeds. The shorter waves travel faster than the group as a whole, but their amplitudes diminish as they approach the leading edge of the group. The longer waves travel more slowly, and their amplitudes diminish as they emerge from the trailing boundary of the group.


Definition and interpretation

Definition

.}}]] The group velocity is defined by the equation:[1][2][3][4]

$$v_g \ \equiv\  \frac{\partial \omega}{\partial k}\,$$

where is the wave's angular frequency (usually expressed in radians per second), and is the angular wavenumber (usually expressed in radians per meter). The phase velocity is: _ω_/_k_}}.

The function , which gives as a function of , is known as the dispersion relation.

-   If is directly proportional to , then the group velocity is exactly equal to the phase velocity. A wave of any shape will travel undistorted at this velocity.
-   If _ω_ is a linear function of _k_, but not directly proportional _ak_ + _b_)}}, then the group velocity and phase velocity are different. The envelope of a wave packet (see figure on right) will travel at the group velocity, while the individual peaks and troughs within the envelope will move at the phase velocity.
-   If is not a linear function of , the envelope of a wave packet will become distorted as it travels. Since a wave packet contains a range of different frequencies (and hence different values of ), the group velocity will be different for different values of . Therefore, the envelope does not move at a single velocity, but its wavenumber components () move at different velocities, distorting the envelope. If the wavepacket has a narrow range of frequencies, and is approximately linear over that narrow range, the pulse distortion will be small, in relation to the small nonlinearity. See further discussion below. For example, for deep water gravity waves, $\omega = \sqrt{gk}$, and hence _v_(p)_/2}}. This underlies the KELVIN WAKE PATTERN for the bow wave of all ships and swimming objects. Regardless of how fast they are moving, as long as their velocity is constant, on each side the wake forms an angle of 19.47° = arcsin(1/3) with the line of travel.[5]

Derivation

One derivation of the formula for group velocity is as follows.[6][7]

Consider a wave packet as a function of position and time .

Let be its Fourier transform at time }},

_α_(_x_, 0) = ∫_( − ∞)^(∞)_d__k_ _A_(_k_)_e_^(_i__k__x_).

By the superposition principle, the wavepacket at any time is

_α_(_x_, _t_) = ∫_( − ∞)^(∞)_d__k_ _A_(_k_)_e_^(_i_(_k__x_ − _ω__t_)),
where is implicitly a function of .

Assume that the wave packet is almost monochromatic, so that is sharply peaked around a central wavenumber .

Then, linearization gives

_ω_(_k_) ≈ _ω_₀ + (_k_−_k_₀)_ω_′₀
where

_ω_₀ = _ω_(_k_₀)
and $\omega'_0 = \left.\frac{\partial \omega(k)}{\partial k}\right|_{k=k_0}$ (see next section for discussion of this step). Then, after some algebra,

_α_(_x_, _t_) = _e_^(_i_(_k_₀_x_−_ω_₀_t_))∫_( − ∞)^(∞)_d__k_ _A_(_k_)_e_^(_i_(_k_ − _k_₀)(_x_−_ω_′₀_t_)).

There are two factors in this expression. The first factor, e^(i(k₀x−ω₀t)), describes a perfect monochromatic wave with wavevector , with peaks and troughs moving at the phase velocity ω₀/k₀ within the envelope of the wavepacket.

The other factor,

∫_( − ∞)^(∞)_d__k_ _A_(_k_)_e_^(_i_(_k_ − _k_₀)(_x_−_ω_′₀_t_))
, gives the envelope of the wavepacket. This envelope function depends on position and time _only_ through the combination (x − ω′₀t).

Therefore, the envelope of the wavepacket travels at velocity

$$\omega'_0 = \left.\frac{d\omega}{dk}\right|_{k=k_0}~,$$
which explains the group velocity formula.

Higher-order terms in dispersion

s on deep water (with ½_v_(p)_}}). This shows the superposition of three wave components—with respectively 22, 25 and 29 wavelengths fitting in a periodic horizontal domain of 2 km length. The wave amplitudes of the components are respectively 1, 2 and 1 meter.]] Part of the previous derivation is the Taylor series approximation that:

_ω_(_k_) ≈ _ω_₀ + (_k_ − _k_₀)_ω_′₀(_k_₀)

If the wavepacket has a relatively large frequency spread, or if the dispersion has sharp variations (such as due to a resonance), or if the packet travels over very long distances, this assumption is not valid, and higher-order terms in the Taylor expansion become important.

As a result, the envelope of the wave packet not only moves, but also _distorts,_ in a manner that can be described by the material's group velocity dispersion. Loosely speaking, different frequency-components of the wavepacket travel at different speeds, with the faster components moving towards the front of the wavepacket and the slower moving towards the back. Eventually, the wave packet gets stretched out. This is an important effect in the propagation of signals through optical fibers and in the design of high-power, short-pulse lasers.

History

The idea of a group velocity distinct from a wave's phase velocity was first proposed by W.R. Hamilton in 1839, and the first full treatment was by Rayleigh in his "Theory of Sound" in 1877.[8]

Other expressions

For light, the refractive index , vacuum wavelength , and wavelength in the medium , are related by

$$\lambda_0 = \frac{2\pi c}{\omega}, \;\; \lambda = \frac{2\pi}{k} = \frac{2\pi v_p}{\omega}, \;\; n = \frac{c}{v_p} = \frac{\lambda_0}{\lambda},$$
with  _ω_/_k_}} the phase velocity.

The group velocity, therefore, can be calculated by any of the following formulas,

$$\begin{align}
  v_g &= \frac{c}{n + \omega \frac{\partial n}{\partial \omega}}
       = \frac{c}{n - \lambda_0 \frac{\partial n}{\partial \lambda_0}}\\
      &= v_p \left(1 + \frac{\lambda}{n} \frac{\partial n}{\partial \lambda}\right)
       = v_p - \lambda \frac{\partial v_p}{\partial \lambda} = v_p + k \frac{\partial v_p}{\partial k}.
\end{align}$$


In three dimensions

For waves traveling through three dimensions, such as light waves, sound waves, and matter waves, the formulas for phase and group velocity are generalized in a straightforward way:[9]

    One dimension: $v_p = \omega/k, \quad v_g = \frac{\partial \omega}{\partial k}, \,$
    Three dimensions: $\mathbf{v}_p = \hat{\mathbf{k}} \frac{\omega}{|\mathbf{k}|}, \quad \mathbf{v}_g = \vec{\nabla}_{\mathbf{k}} \, \omega \,$

where

$$\vec{\nabla}_{\mathbf{k}} \, \omega$$
means the gradient of the angular frequency as a function of the wave vector K, and $\hat{\mathbf{k}}$ is the unit vector in direction K.

If the waves are propagating through an anisotropic (i.e., not rotationally symmetric) medium, for example a crystal, then the phase velocity vector and group velocity vector may point in different directions.


In lossy or gainful media

The group velocity is often thought of as the velocity at which energy or information is conveyed along a wave. In most cases this is accurate, and the group velocity can be thought of as the signal velocity of the waveform. However, if the wave is travelling through an absorptive or gainful medium, this does not always hold. In these cases the group velocity may not be a well-defined quantity, or may not be a meaningful quantity.

In his text “Wave Propagation in Periodic Structures”,[10] Brillouin argued that in a dissipative medium the group velocity ceases to have a clear physical meaning. An example concerning the transmission of electromagnetic waves through an atomic gas is given by Loudon.[11] Another example is mechanical waves in the solar photosphere: The waves are damped (by radiative heat flow from the peaks to the troughs), and related to that, the energy velocity is often substantially lower than the waves' group velocity.[12]

Despite this ambiguity, a common way to extend the concept of group velocity to complex media is to consider spatially damped plane wave solutions inside the medium, which are characterized by a _complex-valued_ wavevector. Then, the imaginary part of the wavevector is arbitrarily discarded and the usual formula for group velocity is applied to the real part of wavevector, i.e.,

$$v_g = \left(\frac{\partial (\operatorname{Re} k)}{\partial \omega}\right)^{-1} .$$

Or, equivalently, in terms of the real part of complex refractive index, = , one has[13]

$$\frac{c}{v_g} = n + \omega \frac{\partial n}{\partial \omega} .$$

It can be shown that this generalization of group velocity continues to be related to the apparent speed of the peak of a wavepacket.[14] The above definition is not universal, however: alternatively one may consider the time damping of standing waves (real , complex ), or, allow group velocity to be a complex-valued quantity.[15][16] Different considerations yield distinct velocities, yet all definitions agree for the case of a lossless, gainless medium.

The above generalization of group velocity for complex media can behave strangely, and the example of anomalous dispersion serves as a good illustration. At the edges of a region of anomalous dispersion, v_(g) becomes infinite (surpassing even the speed of light in vacuum), and v_(g) may easily become negative (its sign opposes Re) inside the band of anomalous dispersion.[17][18][19]

Superluminal group velocities

Since the 1980s, various experiments have verified that it is possible for the group velocity (as defined above) of laser light pulses sent through lossy materials, or gainful materials, to significantly exceed the speed of light in vacuum . The peaks of wavepackets were also seen to move faster than .

In all these cases, however, there is no possibility that signals could be carried faster than the speed of light in vacuum, since the high value of does not help to speed up the true motion of the sharp wavefront that would occur at the start of any real signal. Essentially the seemingly superluminal transmission is an artifact of the narrow band approximation used above to define group velocity and happens because of resonance phenomena in the intervening medium. In a wide band analysis it is seen that the apparently paradoxical speed of propagation of the signal envelope is actually the result of local interference of a wider band of frequencies over many cycles, all of which propagate perfectly causally and at phase velocity. The result is akin to the fact that shadows can travel faster than light, even if the light causing them always propagates at light speed; since the phenomenon being measured is only loosely connected with causality, it does not necessarily respect the rules of causal propagation, even if it under normal circumstances does so and leads to a common intuition.[20][21][22][23][24]


See also

-   Wave propagation
-   Dispersion (water waves)
-   Dispersion (optics)
-   Wave propagation speed
-   Group delay
-   Group velocity dispersion
-   Group delay dispersion

-   Phase delay
-   Phase velocity
-   Signal velocity
-   Slow light
-   Front velocity
-   Matter wave#Group velocity
-   Soliton


References

Notes

Further reading

-   Crawford jr., Frank S. (1968). _Waves (Berkeley Physics Course, Vol. 3)_, McGraw-Hill, Free online version
-   -   -   -   -   -   -


External links

-   Greg Egan has an excellent Java applet on his web site that illustrates the apparent difference in group velocity from phase velocity.
-   Maarten Ambaum has a webpage with movie demonstrating the importance of group velocity to downstream development of weather systems.
-   Phase vs. Group Velocity – Various Phase- and Group-velocity relations (animation)

Category:Radio frequency propagation Category:Optics Category:Wave mechanics Category:Physical quantities Category:Mathematical physics

[1]

[2]

[3]

[4]

[5] G.B. Whitham (1974). _Linear and Nonlinear Waves_ (John Wiley & Sons Inc., 1974) pp 409–410 Online scan

[6]

[7]

[8]

[9] Atmospheric and oceanic fluid dynamics: fundamentals and large-scale circulation, by Geoffrey K. Vallis, p239

[10]

[11]

[12]

[13]

[14]

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