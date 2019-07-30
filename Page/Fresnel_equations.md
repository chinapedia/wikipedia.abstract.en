The FRESNEL EQUATIONS (or FRESNEL COEFFICIENTS) describe the reflection and transmission of light (or electromagnetic radiation in general) when incident on an interface between different optical media. They were deduced by Augustin-Jean Fresnel () who was the first to understand that light is a transverse wave, even though no one realized that the "vibrations" of the wave were electric and magnetic fields. For the first time, polarization could be understood quantitatively, as Fresnel's equations correctly predicted the differing behaviour of waves of the _s_ and _p_ polarizations incident upon a material interface.


Overview

When light strikes the interface between a medium with refractive index _n_₁ and a second medium with refractive index _n_₂, both reflection and refraction of the light may occur. The Fresnel equations describe the ratios of the reflected and transmitted waves' electric fields to the incident wave's electric field (the waves' magnetic fields can also be related using similar coefficients). Since these are complex ratios, they describe not only the relative amplitude, but phase shifts between the waves.

The equations assume the interface between the media is flat and that the media are homogeneous and isotropic.[1] The incident light is assumed to be a plane wave, which is sufficient to solve any problem since any incident light field can be decomposed into plane waves and polarizations.

S and P polarizations

There are two sets of Fresnel coefficients for two different linear polarization components of the incident wave. Since any polarization state can be resolved into a combination of two orthogonal linear polarizations, this is sufficient for any problem. Likewise, unpolarized (or "randomly polarized") light has an equal amount of power in each of two linear polarizations.

The s polarization refers to polarization of a wave's electric field _normal_ to the plane of incidence (the direction in the derivation below); then the magnetic field is _in_ the plane of incidence. P polarization refers to polarization of the electric field _in_ the plane of incidence (the plane in the derivation below); then the magnetic field is _normal_ to the plane of incidence.

Although the reflectivity and transmission are dependent on polarization, at normal incidence (_θ_ = 0) there is no distinction between them so all polarization states are governed by a single set of Fresnel coefficients (and another special case is mentioned below in which that is true).


Power (intensity) reflection and transmission coefficients

In the diagram on the right, an incident plane wave in the direction of the ray IO strikes the interface between two media of refractive indices _n_₁ and _n_₂ at point O. Part of the wave is reflected in the direction OR, and part refracted in the direction OT. The angles that the incident, reflected and refracted rays make to the normal of the interface are given as _θ__(i), _θ__(r) and _θ__(t), respectively.

The relationship between these angles is given by the law of reflection:

_θ__(_i_) = _θ__(_r_),

and Snell's law:

_n_₁sin _θ__(_i_) = _n_₂sin _θ__(_t_).

The behavior of light striking the interface is solved by considering the electric and magnetic fields that constitute an electromagnetic wave, and the laws of electromagnetism, as shown below. The ratio of waves' electric field (or magnetic field) amplitudes are obtained, but in practice one is more often interested in formulae which determine _power_ coefficients, since power (or irradiance) is what can be directly measured at optical frequencies. The power of a wave is generally proportional to the square of the electric (or magnetic) field amplitude.

We call the fraction of the incident power that is reflected from the interface the reflectance (or "reflectivity", or "power reflection coefficient") _R_, and the fraction that is refracted into the second medium is called the transmittance (or "transmissivity", or "power transmission coefficient") _T_. Note that these are what would be measured right _at_ each side of an interface and do not account for attenuation of a wave in an absorbing medium _following_ transmission or reflection.[2]

The reflectance for s-polarized light is

$$R_\mathrm{s} = \left|\frac{Z_2 \cos \theta_\mathrm{i} - Z_1 \cos \theta_\mathrm{t}}{Z_2 \cos \theta_\mathrm{i} + Z_1 \cos \theta_\mathrm{t}}\right|^2,$$

while the reflectance for p-polarized light is

$$R_\mathrm{p} = \left|\frac{Z_2 \cos \theta_\mathrm{t} - Z_1 \cos \theta_\mathrm{i}}{Z_2 \cos \theta_\mathrm{t} + Z_1 \cos \theta_\mathrm{i}}\right|^2,$$

where and are the wave impedances of media 1 and 2, respectively.

We assume that the media are non-magnetic (i.e., _μ_₁ = _μ_₂ = _μ_₀), which is typically a good approximation at optical frequencies (and for transparent media at other frequencies).[3] Then the wave impedances are determined solely by the refractive indices _n_₁ and _n_₂:

$$Z_i = \frac{Z_0}{n_i}\,,$$
where is the impedance of free space and =1,2. Making this substitution, we obtain equations using the refractive indices:

$$R_\mathrm{s} = \left|\frac{n_1 \cos \theta_\mathrm{i} - n_2 \cos \theta_\mathrm{t}}{n_1 \cos \theta_\mathrm{i} + n_2 \cos \theta_\mathrm{t}}\right|^2
               = \left|\frac
                         {n_1 \cos \theta_{\mathrm{i}} - n_2 \sqrt{1 - \left(\frac{n_1}{n_2} \sin \theta_{\mathrm{i}}\right)^2}}
                         {n_1 \cos \theta_{\mathrm{i}} + n_2 \sqrt{1 - \left(\frac{n_1}{n_2} \sin \theta_{\mathrm{i}}\right)^2}}
                 \right|^2\!,$$

$$R_\mathrm{p} = \left|\frac{n_1 \cos \theta_\mathrm{t} - n_2 \cos \theta_\mathrm{i}}{n_1 \cos \theta_\mathrm{t} + n_2 \cos \theta_\mathrm{i}}\right|^2
               = \left|\frac
                         {n_1 \sqrt{1 - \left(\frac{n_1}{n_2} \sin \theta_\mathrm{i}\right)^2} - n_2 \cos \theta_\mathrm{i}}
                         {n_1 \sqrt{1 - \left(\frac{n_1}{n_2} \sin \theta_\mathrm{i}\right)^2} + n_2 \cos \theta_\mathrm{i}}
                 \right|^2\!.$$

The second form of each equation is derived from the first by eliminating _θ__(t) using Snell's law and trigonometric identities.

As a consequence of conservation of energy, one can find the transmitted power (or more correctly, irradiance: power per unit area) simply as the portion of the incident power that isn't reflected:[4]

_T__(_s_) = 1 − _R__(_s_)

and

_T__(_p_) = 1 − _R__(_p_)

Note that all such intensities are measured in terms of a wave's irradiance in the direction normal to the interface; this is also what is measured in typical experiments. That number could be obtained from irradiances _in the direction of an incident or reflected wave_ (given by the magnitude of a wave's Poynting vector) multiplied by cos_θ_ for a wave at an angle _θ_ to the normal direction (or equivalently, taking the dot product of the Poynting vector with the unit vector normal to the interface). This complication can be ignored in the case of the reflection coefficient, since cos_θ__(i) = cos_θ__(r), so that the ratio of reflected to incident irradiance in the wave's direction is the same as in the direction normal to the interface.

Although these relationships describe the basic physics, in many practical applications one is concerned with "natural light" that can be describe as unpolarized. That means that there is an equal amount of power in the _s_ and _p_ polarizations, so that the _effective_ reflectivity of the material is just the average of the two reflectivities:

$$R_\mathrm{eff} = \frac{1}{2}\left(R_\mathrm{s} + R_\mathrm{p}\right).$$

For low-precision applications involving unpolarized light, such as computer graphics, rather than rigorously computing the effective reflection coefficient for each angle, Schlick's approximation is often used.

Special cases

Normal incidence

For the case of normal incidence, θ_(i) = θ_(t) = 0, and there is no distinction between s and p polarization. Thus, the reflectance simplifies to

$$R = \left|\frac{n_1  - n_2 }{n_1 + n_2 }\right|^2$$
.

For common glass (_n_₂ ≈ 1.5) surrounded by air (_n_₁=1), the power reflectance at normal incidence can be seen to be about 4%, or 8% accounting for both sides of a glass pane.

Brewster's angle

At a dielectric interface from to , there is a particular angle of incidence at which goes to zero and a p-polarised incident wave is purely refracted. This angle is known as Brewster's angle, and is around 56° for _n_₁=1 and _n_₂=1.5 (typical glass).

Total internal reflection

When light travelling in a denser medium strikes the surface of a less dense medium (i.e., ), beyond a particular incidence angle known as the _critical angle_, all light is reflected and . This phenomenon, known as total internal reflection, occurs at incidence angles for which Snell's law predicts that the sine of the angle of refraction would exceed unity (whereas in fact sin_θ_ ≤ 1 for all real _θ_). For glass with _n_=1.5 surrounded by air, the critical angle is approximately 41°.


Amplitude reflection and transmission coefficients

The above _practical_ equations relating powers (which could be measured with a photometer for instance) are derived from the actual Fresnel equations which solve the physical problem in terms of electric and magnetic field amplitudes. Those underlying equations supply generally complex-valued ratios of those amplitudes and may take several different forms, depending on formalisms used. The amplitude coefficients are usually represented by lower case _r_ and _t_ (whereas the power coefficients are capitalized).

In the following, the reflection coefficient is the ratio of the reflected wave's complex electric field amplitude to that of the incident wave. The transmission coefficient is the ratio of the transmitted wave's electric field amplitude to that of the incident wave. We require separate formulae for the _s_ and _p_ polarizations. In each case we assume an incident plane wave at an angle of incidence θ_(i) on a plane interface, reflected at an angle θ_(r), and with a transmitted wave at an angle θ_(t), corresponding to the above figure. Note that in the cases of an interface into an absorbing material (where _n_ is complex) or total internal reflection, the angle of transmission might not evaluate to a real number.

We consider the sign of a wave's electric field in relation to a wave's direction. Consequently for _p_ polarization at normal incidence, the positive direction of electric field for an incident wave (to the left) is _opposite_ that of a reflected wave (also to its left); for _s_ polarization both are the same (upward).[5]

Using these conventions,[6][7]

$$\begin{align}
  r_\text{s} &= \frac{  n_1 \cos \theta_\text{i} - n_2 \cos \theta_\text{t}}{n_1 \cos \theta_\text{i} + n_2 \cos \theta_\text{t}}, \\[3pt]
  t_\text{s} &= \frac{2 n_1 \cos \theta_\text{i}}                           {n_1 \cos \theta_\text{i} + n_2 \cos \theta_\text{t}}, \\[3pt]
  r_\text{p} &= \frac{  n_2 \cos \theta_\text{i} - n_1 \cos \theta_\text{t}}{n_2 \cos \theta_\text{i} + n_1 \cos \theta_\text{t}}, \\[3pt]
  t_\text{p} &= \frac{2 n_1 \cos \theta_\text{i}}                           {n_2 \cos \theta_\text{i} + n_1 \cos \theta_\text{t}}.
\end{align}$$

One can see that [8] and _r__(p)+1}}. One can write similar equations applying to the ratio of magnetic fields of the waves, but these are usually not required.

Because the reflected and incident waves propagate in the same medium and make the same angle with the normal to the surface, the power reflection coefficient R is just the squared magnitude of _r_:[9]

_R_ = |_r_|².

On the other hand, calculation of the power transmission coefficient is less straight-forward, since the light travels in different directions in the two media. What's more, the wave impedances in the two media differ; power is only proportional to the square of the amplitude when the media's impedances are the same (as they are for the reflected wave). This results in[10]:

$$T = \frac{n_2 \cos \theta_\text{t}}{n_1 \cos \theta_\text{i}} |t|^2.$$

The factor of is the reciprocal of the ratio of the media's wave impedances (since we assume _μ_=_μ_₀). The factor of is from expressing power _in the direction_ normal to the interface, for both the incident and transmitted waves.

In the case of total internal reflection where the power transmission is zero, nevertheless describes the electric field (including its phase) just beyond the interface. This is an evanescent field which does not propagate as a wave (thus =0) but has nonzero values very close to the interface. The phase shift of the reflected wave on total internal reflection can similarly be obtained from the phase angles of and (whose magnitudes are unity). These phase shifts are different for _s_ and _p_ waves, which is the well-known principle by which total internal reflection is used to effect polarization transformations.

Alternative forms

In the above formula for , if we put n₂ = n₁sin θ_(i)/sin θ_(t) (Snell's law) and multiply the numerator and denominator by , we obtain[11][12]

$$r_\text{s}=-\frac{\sin(\theta_\text{i}-\theta_\text{t})}{\sin(\theta_\text{i}+\theta_\text{t})}.$$

If we do likewise with the formula for , the result is easily shown to be equivalent to[13][14]

$$r_\text{p}=\frac{\tan(\theta_\text{i}-\theta_\text{t})}{\tan(\theta_\text{i}+\theta_\text{t})}.$$

These formulas[15][16][17] are known respectively as _Fresnel's sine law_ and _Fresnel's tangent law_.[18] Although at normal incidence these expressions reduce to 0/0, one can see that they yield the correct results in the limit as .


Multiple surfaces

When light makes multiple reflections between two or more parallel surfaces, the multiple beams of light generally interfere with one another, resulting in net transmission and reflection amplitudes that depend on the light's wavelength. The interference, however, is seen only when the surfaces are at distances comparable to or smaller than the light's coherence length, which for ordinary white light is few micrometers; it can be much larger for light from a laser.

An example of interference between reflections is the iridescent colours seen in a soap bubble or in thin oil films on water. Applications include Fabry–Pérot interferometers, antireflection coatings, and optical filters. A quantitative analysis of these effects is based on the Fresnel equations, but with additional calculations to account for interference.

The transfer-matrix method, or the recursive Rouard method[19] can be used to solve multiple-surface problems.


History

In 1808, Étienne-Louis Malus discovered that when a ray of light was reflected off a non-metallic surface at the appropriate angle, it behaved like _one_ of the two rays emerging from a doubly-refractive calcite crystal.[20] He later coined the term _polarization_ to describe this behavior.  In 1815, the dependence of the polarizing angle on the refractive index was determined experimentally by David Brewster.[21] But the _reason_ for that dependence was such a deep mystery that in late 1817, Thomas Young was moved to write: In 1821, however, Augustin-Jean Fresnel derived results equivalent to his sine and tangent laws (above), by modeling light waves as transverse elastic waves with vibrations perpendicular to what had previously been called the plane of polarization. Fresnel promptly confirmed by experiment that the equations correctly predicted the direction of polarization of the reflected beam when the incident beam was polarized at 45° to the plane of incidence, for light incident from air onto glass or water; in particular, the equations gave the correct polarization at Brewster's angle.[22] The experimental confirmation was reported in a "postscript" to the work in which Fresnel first revealed his theory that light waves, including "unpolarized" waves, were _purely_ transverse.[23]

Details of Fresnel's derivation, including the modern forms of the sine law and tangent law, were given later, in a memoir read to the French Academy of Sciences in January 1823.[24] That derivation combined conservation of energy with continuity of the _tangential_ vibration at the interface, but failed to allow for any condition on the _normal_ component of vibration.[25] The first derivation from _electromagnetic_ principles was given by Hendrik Lorentz in 1875.[26]

In the same memoir of January 1823,[27] Fresnel found that for angles of incidence greater than the critical angle, his formulas for the reflection coefficients ( and ) gave complex values with unit magnitudes. Noting that the magnitude, as usual, represented the ratio of peak amplitudes, he guessed that the argument represented the phase shift, and verified the hypothesis experimentally.[28] The verification involved

-   calculating the angle of incidence that would introduce a total phase difference of 90° between the s and p components, for various numbers of total internal reflections at that angle (generally there were two solutions),
-   subjecting light to that number of total internal reflections at that angle of incidence, with an initial linear polarization at 45° to the plane of incidence, and
-   checking that the final polarization was circular.[29]

Thus he finally had a quantitative theory for what we now call the _Fresnel rhomb_ — a device that he had been using in experiments, in one form or another, since 1817 (see _Fresnel rhomb §History_).

The success of the complex reflection coefficient inspired James MacCullagh and Augustin-Louis Cauchy, beginning in 1836, to analyze reflection from metals by using the Fresnel equations with a complex refractive index.[30]

Four weeks before he presented his completed theory of total internal reflection and the rhomb, Fresnel submitted a memoir[31] in which he introduced the needed terms _linear polarization_, _circular polarization_, and _elliptical polarization_,[32] and in which he explained optical rotation as a species of birefringence: linearly-polarized light can be resolved into two circularly-polarized components rotating in opposite directions, and if these propagate at different speeds, the phase difference between them — hence the orientation of their linearly-polarized resultant — will vary continuously with distance.[33]

Thus Fresnel's interpretation of the complex values of his reflection coefficients marked the confluence of several streams of his research and, arguably, the essential completion of his reconstruction of physical optics on the transverse-wave hypothesis (see _Augustin-Jean Fresnel_).


Theory

Here we systematically derive the above relations from electromagnetic premises.

Material parameters

In order to compute meaningful Fresnel coefficients, we must assume that the medium is (approximately) linear and homogeneous. If the medium is also isotropic, the four field vectors are related by

    _ϵ_E}}

    _μ_H}},

where _ϵ_ and _μ_ are scalars, known respectively as the (electric) _permittivity_ and the (magnetic) _permeability_ of the medium. For a vacuum, these have the values _ϵ_₀ and _μ_₀, respectively. Hence we define the _relative_ permittivity (or dielectric constant) _ϵ_/_ϵ_₀}}, and the _relative_ permeability _μ_/_μ_₀}}.

In optics it is common to assume that the medium is non-magnetic, so that _μ__(rel)=1. For ferromagnetic materials at radio/microwave frequencies, larger values of _μ__(rel) must be taken into account. But, for optically transparent media, and for all other materials at optical frequencies (except possible metamaterials), _μ__(rel) is indeed very close to 1; that is, _μ_≈_μ_₀.

In optics, one usually knows the refractive index _n_ of the medium, which is the ratio of the speed of light in a vacuum () to the speed of light in the medium. In the analysis of partial reflection and transmission, one is also interested in the electromagnetic wave impedance , which is the ratio of the amplitude of to the amplitude of . It is therefore desirable to express _n_ and in terms of _ϵ_ and _μ_, and thence to relate to _n_. The last-mentioned relation, however, will make it convenient to derive the reflection coefficients in terms of the wave _admittance_ , which is the reciprocal of the wave impedance .

In the case of _uniform plane sinusoidal_ waves, the wave impedance or admittance is known as the _intrinsic_ impedance or admittance of the medium. This case is the one for which the Fresnel coefficients are to be derived.

Electromagnetic plane waves

In a uniform plane sinusoidal electromagnetic wave, the electric field has the form where is the (constant) complex amplitude vector,  is the imaginary unit,  is the wave vector (whose magnitude is the angular wavenumber),  is the position vector,  _ω_ is the angular frequency,  is time, and it is understood that the _real part_ of the expression is the physical field.[34]  The value of the expression is unchanged if the position varies in a direction normal to ; hence _is normal to the wavefronts_.

To advance the phase by the angle _ϕ_, we replace by (that is, we replace by ), with the result that the (complex) field is multiplied by . So a phase _advance_ is equivalent to multiplication by a complex constant with a _negative_ argument. This becomes more obvious when the field () is factored as where the last factor contains the time-dependence. That factor also implies that differentiation w.r.t. time corresponds to multiplication by .[35]

If _ℓ_ is the component of in the direction of the field () can be written .  If the argument of is to be constant,  _ℓ_ must increase at the velocity ω/k ,  known as the _phase velocity_ . This in turn is equal to c/n. Solving for gives

As usual, we drop the time-dependent factor which is understood to multiply every complex field quantity. The electric field for a uniform plane sine wave will then be represented by the location-dependent _phasor_ .|}} For fields of that form, Faraday's law and the Maxwell-Ampère law respectively reduce to[36]

$$\begin{align}
  \omega\mathbf{B} &=  \mathbf{k}\times\mathbf{E}\\
  \omega\mathbf{D} &= -\mathbf{k}\times\mathbf{H}\,.
\end{align}$$

Putting ''μ_H}} and _ϵ''E,}} as above, we can eliminate and to obtain equations in only and :

$$\begin{align}
  \omega\mu\mathbf{H} &=  \mathbf{k}\times\mathbf{E}\\
  \omega\epsilon\mathbf{E} &= -\mathbf{k}\times\mathbf{H}\,.
\end{align}$$
If the material parameters _ϵ_ and _μ_ are real (as in a lossless dielectric), these equations show that form a _right-handed orthogonal triad_, so that the same equations apply to the magnitudes of the respective vectors. Taking the magnitude equations and substituting from (), we obtain

$$\begin{align}
  \mu cH &= nE\\
  \epsilon cE &= nH\,,
\end{align}$$
where and are the magnitudes of and . Multiplying the last two equations gives Dividing (or cross-multiplying) the same two equations gives YE'',}} where This is the _intrinsic admittance_.

From () we obtain the phase velocity $c/n=1\big/\!\sqrt{\mu\epsilon\,}$. For a vacuum this reduces to $c=1\big/\!\sqrt{\mu_0\epsilon_0}$. Dividing the second result by the first gives

$$n=\sqrt{\mu_{\text{rel}}\epsilon_{\text{rel}}}\,$$
. For a _non-magnetic_ medium (the usual case), this becomes $n=\sqrt{\epsilon_{\text{rel}}}$.

Taking the reciprocal of (), we find that the intrinsic _impedance_ is $Z=\sqrt{\mu/\epsilon}$.  In a vacuum this takes the value $Z_0=\sqrt{\mu_0/\epsilon_0}\,\approx 377\,\Omega\,,$ known as the impedance of free space. By division, $Z/Z_0=\sqrt{\mu_{\text{rel}}/\epsilon_{\text{rel}}}$. For a _non-magnetic_ medium, this becomes $Z=Z_0\big/\!\sqrt{\epsilon_{\text{rel}}}=Z_0/n.$

The wave vectors

In Cartesian coordinates , let the region have refractive index intrinsic admittance etc., and let the region have refractive index intrinsic admittance etc. Then the plane is the interface, and the axis is normal to the interface (see diagram). Let and (in bold roman type) be the unit vectors in the and directions, respectively. Let the plane of incidence be the plane (the plane of the page), with the angle of incidence measured from towards . Let the angle of refraction, measured in the same sense, be where the subscript stands for _transmitted_ (reserving for _reflected_).

In the absence of Doppler shifts, _ω_ does not change on reflection or refraction. Hence, by (), the magnitude of the wave vector is proportional to the refractive index.

So, for a given _ω_, if we _redefine_ as the magnitude of the wave vector in the _reference_ medium (for which 1}}), then the wave vector has magnitude in the first medium (region in the diagram) and magnitude in the second medium. From the magnitudes and the geometry, we find that the wave vectors are

$$\begin{align}
  \mathbf{k}_\text{i} &= n_1 k(\mathbf{i}\sin\theta_\text{i} + \mathbf{j}\cos\theta_\text{i})\\[.5ex]
  \mathbf{k}_\text{r} &= n_1 k(\mathbf{i}\sin\theta_\text{i} - \mathbf{j}\cos\theta_\text{i})\\[.5ex]
  \mathbf{k}_\text{t} &= n_2 k(\mathbf{i}\sin\theta_\text{t} + \mathbf{j}\cos\theta_\text{t})\\
          &= k(\mathbf{i}\,n_1\sin\theta_\text{i} + \mathbf{j}\,n_2\cos\theta_\text{t})\,,
\end{align}$$
where the last step uses Snell's law. The corresponding dot products in the phasor form () are Hence:

The _s_ components

For the _s_ polarization, the field is parallel to the axis and may therefore be described by its component in the  direction. Let the reflection and transmission coefficients be and respectively. Then, if the incident field is taken to have unit amplitude, the phasor form () of its  component is ,|}} and the reflected and transmitted fields, in the same form, are \\

 E_\text{t} &= t_{s\,} e^{i\mathbf{k}_\text{t}\mathbf{\cdot r}}.

\end{align}|}}

Under the sign convention used in this article, a positive reflection or transmission coefficient is one that preserves the direction of the _transverse_ field, meaning (in this context) the field normal to the plane of incidence. For the _s_ polarization, that means the field. If the incident, reflected, and transmitted fields (in the above equations) are in the  direction ("out of the page"), then the respective fields are in the directions of the red arrows, since form a right-handed orthogonal triad. The fields may therefore be described by their components in the directions of those arrows, denoted by .  Then, since YE'',}} \\

 H_\text{r} &=\, Y_1 r_{s\,} e^{i\mathbf{k}_\text{r}\mathbf{\cdot r}}\\
 H_\text{t} &=\, Y_2 t_{s\,} e^{i\mathbf{k}_\text{t}\mathbf{\cdot r}}.

\end{align}|}}

At the interface, by the usual interface conditions for electromagnetic fields, the tangential components of the and fields must be continuous; that is, When we substitute from equations () to () and then from (), the exponential factors cancel out, so that the interface conditions reduce to the simultaneous equations which are easily solved for and yielding {Y_1\cos\theta_\text{i}+Y_2\cos\theta_\text{t}}|}} and {Y_1\cos\theta_\text{i}+Y_2\cos\theta_\text{t}}\,.|}} At _normal incidence_ θ_(t){{=}}'' 0),}} indicated by an additional subscript 0, these results become and At _grazing incidence_ , we have hence and .

The _p_ components

For the _p_ polarization, the incident, reflected, and transmitted fields are parallel to the red arrows and may therefore be described by their components in the directions of those arrows. Let those components be (redefining the symbols for the new context). Let the reflection and transmission coefficients be and . Then, if the incident field is taken to have unit amplitude, we have \\

 E_\text{r} &= r_{p\,} e^{i\mathbf{k}_\text{r}\mathbf{\cdot r}}\\
 E_\text{t} &= t_{p\,} e^{i\mathbf{k}_\text{t}\mathbf{\cdot r}}.

\end{align}|}} If the fields are in the directions of the red arrows, then, in order for to form a right-handed orthogonal triad, the respective fields must be in the  direction ("into the page") and may therefore be described by their components in that direction. This is consistent with the adopted sign convention, namely that a positive reflection or transmission coefficient is one that preserves the direction of the transverse field the field in the case of the _p_ polarization. The agreement of the _other_ field with the red arrows reveals an alternative definition of the sign convention: that a positive reflection or transmission coefficient is one for which the field vector in the plane of incidence points towards the same medium before and after reflection or transmission.[37]

So, for the incident, reflected, and transmitted fields, let the respective components in the  direction be .  Then, since YE'',}} \\

 H_\text{r} &=\, Y_1 r_{p\,} e^{i\mathbf{k}_\text{r}\mathbf{\cdot r}}\\
 H_\text{t} &=\, Y_2 t_{p\,} e^{i\mathbf{k}_\text{t}\mathbf{\cdot r}}.

\end{align}|}}

At the interface, the tangential components of the and fields must be continuous; that is, When we substitute from equations () and () and then from (), the exponential factors again cancel out, so that the interface conditions reduce to Solving for and we find {Y_2\cos\theta_\text{i}+Y_1\cos\theta_\text{t}}|}} and {Y_2\cos\theta_\text{i}+Y_1\cos\theta_\text{t}}\,.|}} At _normal incidence_ θ_(t){{=}}'' 0),}} indicated by an additional subscript 0, these results become and At _grazing incidence_ , we again have hence and .

Comparing () and () with () and (), we see that at _normal_ incidence, under the adopted sign convention, the transmission coefficients for the two polarizations are equal, whereas the reflection coefficients have equal magnitudes but opposite signs. While this clash of signs is a disadvantage of the convention, the attendant advantage is that the signs agree at _grazing_ incidence.

Power ratios (reflectivity and transmissivity)

The _Poynting vector_ for a wave is a vector whose component in any direction is the _irradiance_ (power per unit area) of that wave on a surface perpendicular to that direction. For a plane sinusoidal wave the Poynting vector is where and are due _only_ to the wave in question, and the asterisk denotes complex conjugation. Inside a lossless dielectric (the usual case), and are in phase, and at right angles to each other and to the wave vector ; so, for s polarization, using the and components of and respectively (or for p polarization, using the and components of and ), the irradiance in the direction of is given simply by which is in a medium of intrinsic impedance 1/_Y_}}. To compute the irradiance in the direction normal to the interface, as we shall require in the definition of the power transmission coefficient, we could use only the component (rather than the full component) of or or, equivalently, simply multiply by the proper geometric factor, obtaining .

From equations () and (), taking squared magnitudes, we find that the _reflectivity_ (ratio of reflected power to incident power) is {Y_1\cos\theta_\text{i}+Y_2\cos\theta_\text{t}}\right|^2|}} for the s polarization, and {Y_2\cos\theta_\text{i}+Y_1\cos\theta_\text{t}}\right|^2|}} for the p polarization. Note that when comparing the powers of two such waves in the same medium and with the same cos_θ_, the impedance and geometric factors mentioned above are identical and cancel out. But in computing the power _transmission_ (below), these factors must be taken into account.

The simplest way to obtain the power transmission coefficient (_transmissivity_, the ratio of transmitted power to incident power _in the direction normal to the interface_, i.e. the direction) is to use 1}} (conservation of energy). In this way we find {\left|Y_1\cos\theta_\text{i}+Y_2\cos\theta_\text{t}\right|^2}|}} for the s polarization, and {\left|Y_2\cos\theta_\text{i}+Y_1\cos\theta_\text{t}\right|^2}|}} for the p polarization.

In the case of an interface between two lossless media (for which ϵ and μ are _real_ and positive), one can obtain these results directly using the squared magnitudes of the amplitude transmission coefficients that we found earlier in equations () and (). But, for given amplitude (as noted above), the component of the Poynting vector in the direction is proportional to the geometric factor and inversely proportional to the wave impedance . Applying these corrections to each wave, we obtain two ratios multiplying the square of the amplitude transmission coefficient: {Y_1\cos\theta_\text{i}+Y_2\cos\theta_\text{t}}\right)^2\frac{\,Y_2\,}{Y_1}\,\frac{\cos\theta_\text{t}}{\cos\theta_\text{i}}



\FRAC{4Y_1 Y_2\COS\THETA_\TEXT{I}\COS\THETA_\TEXT{T}}{\LEFT(Y_1\COS\THETA_\TEXT{I}+Y_2\COS\THETA_\TEXT{T}\RIGHT)^2}|}} FOR THE S POLARIZATION, AND {Y_2\COS\THETA_\TEXT{I}+Y_1\COS\THETA_\TEXT{T}}\RIGHT)^2\FRAC{\,Y_2\,}{Y_1}\,\FRAC{\COS\THETA_\TEXT{T}}{\COS\THETA_\TEXT{I}}


\frac{4Y_1 Y_2\cos\theta_\text{i}\cos\theta_\text{t}}{\left(Y_2\cos\theta_\text{i}+Y_1\cos\theta_\text{t}\right)^2}|}} for the p polarization. The last two equations apply only to lossless dielectrics, and only at incidence angles smaller than the critical angle (beyond which, of course, 0}}).

Equal refractive indices

From equations () and (), we see that two dissimilar media will have the same refractive index, but different admittances, if the ratio of their permeabilities is the inverse of the ratio of their permittivities. In that unusual situation we have _θ__(i)}} (that is, the transmitted ray is undeviated), so that the cosines in equations (), (), (), (), and () to () cancel out, and all the reflection and transmission ratios become independent of the angle of incidence; in other words, the ratios for normal incidence become applicable to all angles of incidence.

Non-magnetic media

Since the Fresnel equations were developed for optics, they are usually given for non-magnetic materials. Dividing () by ()) yields

$$Y=\frac{n}{\,c\mu\,}$$
. For non-magnetic media we can substitute the vacuum permeability _μ_₀ for _μ_, so that

$$Y_1=\frac{n_1}{\,c\mu_0} ~~;~~~ Y_2=\frac{n_2}{\,c\mu_0}\,$$
; that is, the admittances are simply proportional to the corresponding refractive indices. When we make these substitutions in equations () to () and equations () to (), the factor _cμ_₀ cancels out. For the amplitude coefficients we obtain:

{n_1\cos\theta_\text{i}+n_2\cos\theta_\text{t}}|}} {n_1\cos\theta_\text{i}+n_2\cos\theta_\text{t}}\,|}}

{n_2\cos\theta_\text{i}+n_1\cos\theta_\text{t}}|}} {n_2\cos\theta_\text{i}+n_1\cos\theta_\text{t}}\,.|}}

For the case of normal incidence these reduce to:

The power reflection coefficients become: {n_1\cos\theta_\text{i}+n_2\cos\theta_\text{t}}\right|^2|}} {n_2\cos\theta_\text{i}+n_1\cos\theta_\text{t}}\right|^2.|}} The power transmissions can then be found from 1-_R_}}.

Brewster's angle

For equal permeabilities (e.g., non-magnetic media), if and are _complementary_, we can substitute for and for so that the numerator in equation () becomes which is zero (by Snell's law). Hence 0}} and only the s-polarized component is reflected. This is what happens at the Brewster angle. Substituting for in Snell's law, we readily obtain for Brewster's angle.

Equal permittivities?

Although it is not encountered in practice, we can consider the case of two media with a common permittivity, but different refractive indices due to different permeabilities. From equations () and (), we see that if _ϵ_ is fixed instead of _μ_, then becomes _inversely_ proportional to , with the result that the subscripts 1 and 2 in equations () to () are interchanged (due to the additional step of multiplying the numerator and denominator by ). Hence, in () and (), the expressions for and in terms of refractive indices will be interchanged, so that Brewster's angle () will give 0}} instead of 0,}} and any beam reflected at that angle will be p-polarized instead of s-polarized.[38] Similarly, Fresnel's sine law will apply to the p polarization instead of the s polarization, and his tangent law to the s polarization instead of the p polarization.

This switch of polarizations has an analog in the old mechanical theory of light waves (see _§History_, above). One could predict reflection coefficients that agreed with observation by supposing (like Fresnel) that different refractive indices were due to different _densities_ and that the vibrations were _normal_ to what was then called the plane of polarization, or by supposing (like MacCullagh and Neumann) that different refractive indices were due to different _elasticities_ and that the vibrations were _parallel_ to that plane.[39] Thus the condition of equal permittivities and unequal permeabilities, although not realistic, is of some historical interest.


See also

-   Polarization mixing
-   Index-matching material
-   Field and power quantities
-   Fresnel rhomb, Fresnel's apparatus to produce circularly polarised light 1
-   Specular reflection
-   Schlick's approximation
-   Snell's window
-   X-ray reflectivity
-   Plane of incidence
-   Reflections of signals on conducting lines


Notes


References

* M. Born and E. Wolf, 1970, _Principles of Optics_, 4th Ed., Oxford: Pergamon Press.

-   J.Z. Buchwald, 1989, _The Rise of the Wave Theory of Light: Optical Theory and Experiment in the Early Nineteenth Century_, University of Chicago Press, .
-   R.E. Collin, 1966, _Foundations for Microwave Engineering_, Tokyo: McGraw-Hill.
-   O. Darrigol, 2012, _A History of Optics: From Greek Antiquity to the Nineteenth Century_, Oxford, .
-   A. Fresnel, 1866 (ed. H. de Senarmont, E. Verdet, and L. Fresnel), _Oeuvres complètes d'Augustin Fresnel_, Paris: Imprimerie Impériale (3 vols., 1866–70), vol.1 (1866).
-   E. Hecht, 1987, _Optics_, 2nd Ed., Addison Wesley, .
-   E. Hecht, 2002, _Optics_, 4th Ed., Addison Wesley, .
-   F.A. Jenkins and H.E. White, 1976, _Fundamentals of Optics_, 4th Ed., New York: McGraw-Hill, .
-   H. Lloyd, 1834, "Report on the progress and present state of physical optics", _Report of the Fourth Meeting of the British Association for the Advancement of Science_ (held at Edinburgh in 1834), London: J. Murray, 1835, pp.295–413.
-   W. Whewell, 1857, _History of the Inductive Sciences: From the Earliest to the Present Time_, 3rd Ed., London: J.W. Parker & Son, vol.2.
-   E.T. Whittaker, 1910, _A History of the Theories of Aether and Electricity: From the Age of Descartes to the Close of the Nineteenth Century_, London: Longmans, Green, & Co.


Further reading

-   -   -   -   -   _Encyclopaedia of Physics (2nd Edition)_, R.G. Lerner, G.L. Trigg, VHC publishers, 1991, ISBN (Verlagsgesellschaft) 3-527-26954-1, ISBN (VHC Inc.) 0-89573-752-3
-   _McGraw Hill Encyclopaedia of Physics (2nd Edition)_, C.B. Parker, 1994,


External links

-   Fresnel Equations – Wolfram.
-   Fresnel equations calculator
-   FreeSnell – Free software computes the optical properties of multilayer materials.
-   Thinfilm – Web interface for calculating optical properties of thin films and multilayer materials (reflection & transmission coefficients, ellipsometric parameters Psi & Delta).
-   Simple web interface for calculating single-interface reflection and refraction angles and strengths.
-   Reflection and transmittance for two dielectrics – Mathematica interactive webpage that shows the relations between index of refraction and reflection.
-   A self-contained first-principles derivation of the transmission and reflection probabilities from a multilayer with complex indices of refraction.

Category:Light Category:Geometrical optics Category:Physical optics Category:Polarization (waves) Category:Equations of physics Category:History of physics

[1] Born & Wolf, 1970, p.38.

[2] Hecht, 1987, p.100.

[3]

[4] Hecht, 1987, p.102.

[5] Some authors use the opposite sign convention for , so that is positive when the incoming and reflected magnetic fields are anti-parallel, and negative when they are parallel. This latter convention has the convenient advantage that the s and p sign conventions are the same at normal incidence. However, either convention, when used consistently, gives the right answers.

[6] Lecture notes by Bo Sernelius, main site, see especially Lecture 12.

[7] Born & Wolf, 1970, p.40, eqs.(20),(21).

[8] Hecht, 2002, p.116, eqs.(4.49),(4.50).

[9] Hecht, 2002, p.120, eq.(4.56).

[10] Hecht, 2002, p.120, eq.(4.57).

[11] Fresnel, 1866, p.773.

[12] Hecht, 2002, p.115, eq.(4.42).

[13] Fresnel, 1866, p.757.

[14] Hecht, 2002, p.115, eq.(4.43).

[15] E. Verdet, in Fresnel, 1866, p.789n.

[16] Born & Wolf, 1970, p.40, eqs.(21a).

[17] Jenkins & White, 1976, p.524, eqs.(25a).

[18] Whittaker, 1910, p.134; Darrigol, 2012, p.213.

[19]  chapt. 4.

[20] Darrigol, 2012, pp.191–2.

[21] D. Brewster, "On the laws which regulate the polarisation of light by reflexion from transparent bodies", _Philosophical Transactions of the Royal Society_, vol.105, pp.125–59, read 16 March 1815.

[22] Buchwald, 1989, pp.390–91; Fresnel, 1866, pp.646–8.

[23] A. Fresnel, "Note sur le calcul des teintes que la polarisation développe dans les lames cristallisées" ("Note on the calculation of hues that polarization develops in crystalline laminae"), _Annales de Chimie et de Physique_, vol.17, pp.102–12 (May 1821), 167–96 (June 1821), 312–16 ("Postscript", July 1821); reprinted in Fresnel, 1866, pp.609–48.

[24] A. Fresnel, "Mémoire sur la loi des modifications que la réflexion imprime à la lumière polarisée" ("Memoir on the law of the modifications that reflection impresses on polarized light"), read 7 January 1823; reprinted in Fresnel, 1866, pp.767–99 (full text, published 1831), pp.753–62 (extract, published 1823). See especially pp.773 (sine law), 757 (tangent law), 760–61 and 792–6 (angles of total internal reflection for given phase differences).

[25] Buchwald, 1989, pp.391–3; Whittaker, 1910, pp.133–5.

[26] Buchwald, 1989, p.392.

[27]

[28] Lloyd, 1834, pp.369–70; Buchwald, 1989, pp.393–4,453; Fresnel, 1866, pp.781–96.

[29] Fresnel, 1866, pp.760–61,792–6; Whewell, 1857, p.359.

[30] Whittaker, 1910, pp.177–9.

[31] A. Fresnel, "Mémoire sur la double réfraction que les rayons lumineux éprouvent en traversant les aiguilles de cristal de roche suivant les directions parallèles à l'axe" ("Memoir on the double refraction that light rays undergo in traversing the needles of rock crystal in directions parallel to the axis"), signed & submitted 9 December 1822; reprinted in Fresnel, 1866, pp.731–51 (full text, published 1825), pp.719–29 (extract, published 1823). On the publication dates, see also Buchwald, 1989, p.462, ref.1822b.

[32] Buchwald, 1989, pp.230–31; Fresnel, 1866, p.744.

[33] Buchwald, 1989, p.442; Fresnel, 1866, pp.737–9,749.  Cf. Whewell, 1857, pp.356–8; Jenkins & White, 1976, pp.589–90.

[34] The above form () is typically used by physicists. Electrical engineers typically prefer the form that is, they not only use instead of for the imaginary unit, but also change the sign of the exponent, with the result that the whole expression is replaced by its complex conjugate, leaving the real part unchanged . The electrical engineers' form and the formulas derived therefrom may be converted to the physicists' convention by substituting for .

[35] In the electrical engineering convention, the time-dependent factor is so that a phase advance corresponds to multiplication by a complex constant with a _positive_ argument, and differentiation w.r.t. time corresponds to multiplication by . This article, however, uses the physics convention, whose time-dependent factor is . Although the imaginary unit does not appear explicitly in the results given here, the time-dependent factor affects the interpretation of any results that turn out to be complex.

[36] Compare M.V. Berry and M.R. Jeffrey, "Conical diffraction: Hamilton's diabolical point at the heart of crystal optics", in E. Wolf (ed.), _Progress in Optics_, vol.50, Amsterdam: Elsevier, 2007, pp.13–50, at p.18, eq.(2.2).

[37] This agrees with Born & Wolf, 1970, p.38, Fig.1.10.

[38] More general Brewster angles, for which the angles of incidence and refraction are not necessarily complementary, are discussed in C.L. Giles and W.J. Wild, "Brewster angles for magnetic media", _International Journal of Infrared and Millimeter Waves_, vol.6, no.3 (March 1985), pp.187–97.

[39] Whittaker, 1910, pp.133,148–9; Darrigol, 2012, pp.212,229–31.