Radar scattering cross section}}

When two particles interact, their mutual CROSS SECTION is the area transverse to their relative motion within which they must meet in order to scatter from each other. If the particles are hard inelastic spheres that interact only upon contact, their scattering cross section is related to their geometric size. If the particles interact through some action-at-a-distance force, such as electromagnetism or gravity, their scattering cross section is generally larger than their geometric size. When a cross section is specified as a function of some final-state variable, such as particle angle or energy, it is called a DIFFERENTIAL CROSS SECTION. When a cross section is integrated over all scattering angles (and possibly other variables), it is called a TOTAL CROSS SECTION. Cross sections are typically denoted (sigma) and measured in units of area.

Scattering cross sections may be defined in nuclear, atomic, and particle physics for collisions of accelerated beams of one type of particle with targets (either stationary or moving) of a second type of particle. The probability for any given reaction to occur is in proportion to its cross section. Thus, specifying the cross section for a given reaction is a proxy for stating the probability that a given scattering process will occur.

The measured reaction rate of a given process depends strongly on experimental variables such as the density of the target material, the intensity of the beam, the detection efficiency of the apparatus, or the angle setting of the detection apparatus. However, these quantities can be factored away, allowing measurement of the underlying two-particle collisional cross section.

Differential and total scattering cross sections are among the most important measurable quantities in nuclear, atomic, and particle physics.


Collision among gas particles

CrossSectionFig1.svg

In a gas of finite-sized particles there are collisions among particles that depend on their cross-sectional size. The average distance that a particle travels between collisions depends on the density of gas particles. These quantities are related by

$$\sigma = \frac{1}{n \lambda},$$

where

    is the cross section of a two-particle collision (SI units: m²),

    is the mean free path between collisions (SI units: m),

    is the number density of the target particles (SI units: m^(−3)).

If the particles in the gas can be treated as hard spheres of radius that interact by direct contact, as illustrated in Figure 1, then the effective cross section for the collision of a pair is

_σ_ = _π_(2_r_)²

If the particles in the gas interact by a force with a larger range than their physical size, then the cross section is a larger effective area that may depend on a variety of variables such as the energy of the particles.

Cross sections can be computed for atomic collisions but also are used in the subatomic realm. For example, in nuclear physics a "gas" of low-energy neutrons collides with nuclei in a reactor or other nuclear device, with a cross section that is energy-dependent and hence also with well-defined mean free path between collisions.


Attenuation of a beam of particles

If a beam of particles enters a thin layer of material of thickness , the flux of the beam will decrease by according to

$$\frac{\mathrm d \Phi}{\mathrm d z} = -n \sigma \Phi,$$

where is the total cross section of _all_ events, including scattering, absorption, or transformation to another species. The number density of scattering centers is designated by . Solving this equation exhibits the exponential attenuation of the beam intensity:

_Φ_ = _Φ_₀_e_^( − _n__σ__z_),

where is the initial flux, and is the total thickness of the material. For light, this is called the Beer–Lambert law.


Differential cross section

Consider a classical measurement where a single particle is scattered off a single stationary target particle. Conventionally, a spherical coordinate system is used, with the target placed at the origin and the axis of this coordinate system aligned with the incident beam. The angle is the SCATTERING ANGLE, measured between the incident beam and the scattered beam, and the is the azimuthal angle.

    Differential_cross_section.svg

The impact parameter is the perpendicular offset of the trajectory of the incoming particle, and the outgoing particle emerges at an angle . For a given interaction (Coulombic, magnetic, gravitational, contact, etc.), the impact parameter and the scattering angle have a definite one-to-one functional dependence on each other. Generally the impact parameter can neither be controlled nor measured from event to event and is assumed to take all possible values when averaging over many scattering events. The differential size of the cross section is the area element in the plane of the impact parameter, i.e. _b_ d_φ_ d_b_}}. The differential angular range of the scattered particle at angle is the solid angle element sin _θ_ d_θ_ d_φ_}}. The differential cross section is the quotient of these quantities, .

It is a function of the scattering angle (and therefore also the impact parameter), plus other observables such as the momentum of the incoming particle. The differential cross section is always taken to be positive, even though larger impact parameters generally produce less deflection. In cylindrically symmetric situations (about the beam axis), the azimuthal angle is not changed by the scattering process, and the differential cross section can be written as

$$\frac{\mathrm{d} \sigma}{\mathrm{d}(\cos \theta)} = \frac{1}{2\pi} \int_0^{2\pi} \frac{\mathrm{d} \sigma}{\mathrm{d} \Omega} \,\mathrm{d}\varphi$$
.

In situations where the scattering process is not azimuthally symmetric, such as when the beam or target particles possess magnetic moments oriented perpendicular to the beam axis, the differential cross section must also be expressed as a function of the azimuthal angle.

For scattering of particles of incident flux off a stationary target consisting of many particles, the differential cross section at an angle is related to the flux of scattered particle detection in particles per unit time by

$$\frac{\mathrm d \sigma}{\mathrm d \Omega}(\theta,\varphi) = \frac{1}{n t \Delta\Omega} \frac{F_\text{out}(\theta,\varphi)}{F_\text{inc}}.$$

Here is the finite angular size of the detector (SI unit: sr), is the number density of the target particles (SI units: m^(−3)), and is the thickness of the stationary target (SI units: m). This formula assumes that the target is thin enough that each beam particle will interact with at most one target particle.

The total cross section may be recovered by integrating the differential cross section over the full solid angle ( steradians):

$$\sigma = \oint_{4\pi} \frac{\mathrm d \sigma}{\mathrm d \Omega} \, \mathrm d \Omega = \int_0^{2\pi} \int_0^\pi \frac{\mathrm d \sigma}{\mathrm d \Omega} \sin \theta \, \mathrm d \theta \, \mathrm d \varphi.$$

It is common to omit the “differential” qualifier when the type of cross section can be inferred from context. In this case, may be referred to as the _integral cross section_ or _total cross section_. The latter term may be confusing in contexts where multiple events are involved, since “total” can also refer to the sum of cross sections over all events.

The differential cross section is extremely useful quantity in many fields of physics, as measuring it can reveal a great amount of information about the internal structure of the target particles. For example, the differential cross section of Rutherford scattering provided strong evidence for the existence of the atomic nucleus.

Instead of the solid angle, the momentum transfer may be used as the independent variable of differential cross sections.

Differential cross sections in inelastic scattering contain resonance peaks that indicate the creation of metastable states and contain information about their energy and lifetime.


Quantum scattering

In the time-independent formalism of quantum scattering, the initial wave function (before scattering) is taken to be a plane wave with definite momentum :

$$\phi_-(\mathbf r) \;\stackrel{r \to \infty}{\longrightarrow}\; e^{i k z},$$

where and are the _relative_ coordinates between the projectile and the target. The arrow indicates that this only describes the _asymptotic behavior_ of the wave function when the projectile and target are too far apart for the interaction to have any effect.

After the scattering takes place, it is expected that the wave function takes on the following asymptotic form:

$$\phi_+(\mathbf r) \;\stackrel{r \to \infty}{\longrightarrow}\; f(\theta,\phi) \frac{e^{i k r}}{r},$$

where is some function of the angular coordinates known as the scattering amplitude. This general form is valid for any short-ranged, energy-conserving interaction. It is not true for long-ranged interactions, so there are additional complications when dealing with electromagnetic interactions.

The full wave function of the system behaves asymptotically as the sum

$$\phi(\mathbf r) \;\stackrel{r \to \infty}{\longrightarrow}\; \phi_-(\mathbf r) + \phi_+(\mathbf r).$$

The differential cross section is related to the scattering amplitude:

$$\frac{\mathrm d \sigma}{\mathrm d \Omega}(\theta, \phi) = \bigl|f(\theta, \phi)\bigr|^2.$$

This has the simple interpretation as the probability density for finding the scattered projectile at a given angle.

A cross section is therefore a measure of the effective surface area seen by the impinging particles, and as such is expressed in units of area. The cross section of two particles (i.e. observed when the two particles are colliding with each other) is a measure of the interaction event between the two particles. The cross section is proportional to the probability that an interaction will occur; for example in a simple scattering experiment the number of particles scattered per unit of time (current of scattered particles ) depends only on the number of incident particles per unit of time (current of incident particles ), the characteristics of target (for example the number of particles per unit of surface ), and the type of interaction. For we have

$$\begin{align}
I_\text{r} &= I_\text{i}N\sigma, \\
\sigma &= \frac{I_\text{r}}{I_\text{i}} \frac{1}{N} \\
&= \text{probability of interaction} \times \frac{1}{N}.
\end{align}$$

Relation to the S-matrix

If the reduced masses and momenta of the colliding system are , and , before and after the collision respectively, the differential cross section is given by

$$\frac{\mathrm d\sigma}{\mathrm d\Omega} = \left(2\pi\right)^4 m_i m_f \frac{p_f}{p_i} \bigl|T_{fi}\bigr|^2,$$

where the on-shell matrix is defined by

_S__(_f__i_) = _δ__(_f__i_) − 2_π__i__δ_(_E__(_f_)−_E__(_i_))_δ_(P_(_i_)−P_(_f_))_T__(_f__i_)

in terms of the S-matrix. Here is the Dirac delta function. The computation of the S-matrix is the main goal of the scattering theory.


Units

Although the SI unit of total cross sections is m², smaller units are usually used in practice.

In nuclear and particle physics, the conventional unit is the barn b, where 1 b = 10^(−28) m² = 100 fm².[1] Smaller prefixed units such as mb and μb are also widely used. Correspondingly, the differential cross section can be measured in units such as mb/sr.

When the scattered radiation is visible light, it is conventional to measure the path length in centimetres. To avoid the need for conversion factors, the scattering cross section is expressed in cm², and the number concentration in cm^(−3). The measurement of the scattering of visible light is known as nephelometry, and is effective for particles of 2–50 µm in diameter: as such, it is widely used in meteorology and in the measurement of atmospheric pollution.

The scattering of X-rays can also be described in terms of scattering cross sections, in which case the square ångström is a convenient unit: 1 Å² = 10^(−20) m² = = 10⁸ b. The sum of the scattering, photoelectric, and pair-production cross-sections (in barns) is charted as the "atomic attenuation coefficient" (narrow-beam), in barns.[2]


Scattering of light

For light, as in other settings, the scattering cross section is generally different from the geometrical cross section of a particle, and it depends upon the wavelength of light and the permittivity, shape, and size of the particle. The total amount of scattering in a sparse medium is proportional to the product of the scattering cross section and the number of particles present.

In terms of area, the _total cross section_ () is the sum of the cross sections due to absorption, scattering, and luminescence. The sum of the absorption and scattering cross sections is sometimes referred to as the extinction cross section.

_σ_ = _σ__(a) + _σ__(s) + _σ__(l).
The total cross section is related to the absorbance of the light intensity through the Beer–Lambert law, which says that absorbance is proportional to particle concentration:

_A__(_λ_) = _C__l__σ_,
where is the absorbance at a given wavelength , is the particle concentration as a number density, and is the path length. The absorbance of the radiation is the logarithm (decadic or, more usually, natural) of the reciprocal of the transmittance :[3]

_A__(_λ_) =  − log 𝒯.


Scattering of light on extended bodies

In the context of scattering light on extended bodies, the scattering cross section, , describes the likelihood of light being scattered by a macroscopic particle. In general, the scattering cross section is different from the geometrical cross section of a particle, as it depends upon the wavelength of light and the permittivity in addition to the shape and size of the particle. The total amount of scattering in a sparse medium is determined by the product of the scattering cross section and the number of particles present. In terms of area, the _total cross section_ () is the sum of the cross sections due to absorption, scattering, and luminescence:

_σ_ = _σ__(a) + _σ__(s) + _σ__(l).

The total cross section is related to the absorbance of the light intensity through the Beer–Lambert law, which says that absorbance is proportional to concentration: _Clσ_}}, where is the absorbance at a given wavelength , is the concentration as a number density, and is the path length. The extinction or absorbance of the radiation is the logarithm (decadic or, more usually, natural) of the reciprocal of the transmittance :[4]

_A__(_λ_) =  − log 𝒯.

Relation to physical size

There is no simple relationship between the scattering cross section and the physical size of the particles, as the scattering cross section depends on the wavelength of radiation used. This can be seen when driving in foggy weather: the droplets of water (which form the fog) scatter red light less than they scatter the shorter wavelengths present in white light, and the red rear fog light can be distinguished more clearly than the white headlights of an approaching vehicle. That is to say that the scattering cross section of the water droplets is smaller for red light than for light of shorter wavelengths, even though the physical size of the particles is the same.

Meteorological range

The scattering cross section is related to the meteorological range :

$$L_\text{V} = \frac{3.9}{C \sigma_\text{scat}}.$$

The quantity is sometimes denoted , the scattering coefficient per unit length.[5]


Examples

Example 1: elastic collision of two hard spheres

The elastic collision of two hard spheres is an instructive example that demonstrates the sense of calling this quantity a cross section. and are respectively the radii of the scattering center and scattered sphere. The total cross section is

_σ__(tot) = _π_(_r_+_R_)².

So in this case the total scattering cross section is equal to the area of the circle (with radius ) within which the center of mass of the incoming sphere has to arrive for it to be deflected, and outside which it passes by the stationary scattering center.

Example 2: scattering light from a 2D circular mirror

Another example illustrates the details of the calculation of a simple light scattering model obtained by a reduction of the dimension. For simplicity, we will consider the scattering of a beam of light on a plane treated as a uniform density of parallel rays and within the framework of geometrical optics from a circle with radius with a perfectly reflecting boundary. Its three-dimensional equivalent is therefore the more difficult problem of a laser or flashlight light scattering from the mirror sphere, for example, from the mechanical bearing ball.[6] The unit of cross section in one dimension is the unit of length, for example 1 m. Let be the angle between the light ray and the radius joining the reflection point of the light ray with the center point of the circle mirror. Then the increase of the length element perpendicular to the light beam is expressed by this angle as

_d__x_ = _r_cos _α_ _d__α_,
the reflection angle of this ray with respect to the incoming ray is then , and the scattering angle is

_θ_ = _π_ − 2_α_.
The energy or the number of photons reflected from the light beam with the intensity or density of photons on the length is

$$I \,\mathrm d \sigma = I \,\mathrm dx(x) = I r \cos \alpha \,\mathrm d \alpha = I \frac{r}{2} \sin \left(\frac{\theta}{2}\right) \,\mathrm d \theta = I \frac{\mathrm d \sigma}{\mathrm d \theta} \,\mathrm d \theta.$$
The differential cross section is therefore ( d_θ_}})

$$\frac{\mathrm d \sigma}{\mathrm d \theta} = \frac{r}{2} \sin \left(\frac{\theta}{2}\right).$$
As it is seen from the behaviour of the sine function, this quantity has the maximum for the backward scattering ( π}}; the light is reflected perpendicularly and returns), and the zero minimum for the scattering from the edge of the circle directly forward ( 0}}). It confirms the intuitive expectations that the mirror circle acts like a diverging lens, and a thin beam is more diluted the closer it is from the edge defined with respect to the incoming direction. The total cross section can be obtained by summing (integrating) the differential section of the entire range of angles:

$$\sigma = \int_0^{2 \pi} \frac{\mathrm d \sigma}{\mathrm d \theta} \,\mathrm d \theta = \int_0^{2 \pi} \frac{r}{2} \sin \left(\frac{\theta}{2}\right) \,\mathrm d \theta = \left. -r \cos \left(\frac{\theta}{2}\right) \right|_0^{2 \pi} = 2 r,$$
so it is equal as much as the circular mirror is totally screening the two-dimensional space for the beam of light. In three dimensions for the mirror ball with the radius it is therefore equal π_r_²}}.

Example 3: scattering light from a 3D spherical mirror

We can now use the result from the Example 2 to calculate the differential cross section for the light scattering from the perfectly reflecting sphere in three dimensions. Let us denote now the radius of the sphere as . Let us parametrize the plane perpendicular to the incoming light beam by the cylindrical coordinates and . In any plane of the incoming and the reflected ray we can write now from the previous example:

$$\begin{align}
r &= a \sin \alpha,\\
\mathrm dr &= a \cos \alpha \,\mathrm d \alpha,
\end{align}$$
while the impact area element is

$$\mathrm d \sigma = \mathrm d r(r) \times r \,\mathrm d \varphi = \frac{a^2}{2} \sin \left(\frac{\theta}{2}\right) \cos \left(\frac{\theta}{2}\right) \,\mathrm d \theta \,\mathrm d \varphi.$$
Using the relation for the solid angle in the spherical coordinates:

_d__Ω_ = sin _θ_ _d__θ_ _d__φ_
and the trigonometric identity

$$\sin \theta = 2 \sin \left(\frac{\theta}{2}\right) \cos \left(\frac{\theta}{2}\right),$$
we obtain

$$\frac{\mathrm d \sigma}{\mathrm d \Omega} = \frac{a^2}{4},$$
while the total cross section as we expected is

$$\sigma = \oint_{4 \pi} \frac{\mathrm d \sigma}{\mathrm d \Omega} \,\mathrm d \Omega = \pi a^2.$$
As one can see, it also agrees with the result from the Example 1 if the photon is assumed to be a rigid sphere of zero radius.


See also

-   Cross section (geometry)
-   Flow velocity
-   Luminosity (scattering theory)
-   Linear attenuation coefficient
-   Mass attenuation coefficient
-   Neutron cross section
-   Nuclear cross section
-   Partial wave analysis
-   Particle detector
-   Radar cross-section
-   Rutherford scattering
-   Scattering amplitude


References

NOTES SOURCES

-   J. D. Bjorken, S. D. Drell, _Relativistic Quantum Mechanics_, 1964
-   P. Roman, _Introduction to Quantum Theory_, 1969
-   W. Greiner, J. Reinhardt, _Quantum Electrodynamics_, 1994
-   R. G. Newton. _Scattering Theory of Waves and Particles_. McGraw Hill, 1966.
-


External links

-   Nuclear Cross Section
-   Scattering Cross Section
-   IAEA - Nuclear Data Services
-   BNL - National Nuclear Data Center
-   Particle Data Group - The Review of Particle Physics
-   IUPAC Goldbook - Definition: Reaction Cross Section
-   IUPAC Goldbook - Definition: Collision Cross Section
-   ShimPlotWell cross section plotter for nuclear data

Category:Atomic physics Category:Concepts in physics Category:Dimensional analysis Category:Experimental particle physics Category:Measurement Category:Nuclear physics Category:Particle physics Category:Scattering theory Category:Scattering, absorption and radiative transfer (optics) Category:Scattering

[1]

[2] Nondestructive Testing Handbook Volume 4 Radiographic Testing, ASNT, 2002, chapter 22.

[3]

[4]

[5]

[6]