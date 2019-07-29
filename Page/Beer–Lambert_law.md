Beer–Lambert_law_in_solution.JPG. The beam radiant power becomes weaker as it passes through solution]] The BEER–LAMBERT LAW, also known as BEER'S LAW, the LAMBERT–BEER LAW, or the BEER–LAMBERT–BOUGUER LAW relates the attenuation of light to the properties of the material through which the light is travelling. The law is commonly applied to chemical analysis measurements and used in understanding attenuation in physical optics, for photons, neutrons, or rarefied gases. In mathematical physics, this law arises as a solution of the BGK equation.


History

The law was discovered by Pierre Bouguer before 1729.[1] It is often attributed to Johann Heinrich Lambert, who cited Bouguer's _Essai d'optique sur la gradation de la lumière_ (Claude Jombert, Paris, 1729)—and even quoted from it—in his _Photometria_ in 1760.[2] Lambert's law stated that absorbance of a material sample is directly proportional to its thickness (path length). Much later, August Beer discovered another attenuation relation in 1852. Beer's law stated that absorbance is proportional to the concentrations of the attenuating species in the material sample.[3] The modern derivation of the Beer–Lambert law combines the two laws and correlates the absorbance to both the concentrations of the attenuating species and the thickness of the material sample.[4]


Beer–Lambert law

By definition, the transmittance of material sample is related to its optical depth τ and to its absorbance _A_ as

$$T = \frac{\Phi_\mathrm{e}^\mathrm{t}}{\Phi_\mathrm{e}^\mathrm{i}} = e^{-\tau} = 10^{-A},$$
where

-   Φ_(e)^(t) is the radiant flux _transmitted_ by that material sample;
-   Φ_(e)^(i)is the radiant flux received by that material sample.

The BEER–LAMBERT LAW states that, for N attenuating species in the material sample,

$$T = e^{-\sum_{i = 1}^N \sigma_i \int_0^\ell n_i(z)\mathrm{d}z} = 10^{-\sum_{i = 1}^N \varepsilon_i \int_0^\ell c_i(z)\mathrm{d}z},$$
or equivalently that

$$\tau = \sum_{i = 1}^N \tau_i = \sum_{i = 1}^N \sigma_i \int_0^\ell n_i(z)\,\mathrm{d}z,$$

$$A = \sum_{i = 1}^N A_i = \sum_{i = 1}^N \varepsilon_i \int_0^\ell c_i(z)\,\mathrm{d}z,$$
where

-   σ_(i) is the attenuation cross section of the attenuating species i in the material sample;
-   n_(i) is the number density of the attenuating species _i_ in the material sample;
-   ε_(i)is the molar attenuation coefficient or absorptivity of the attenuating species _i_ in the material sample;
-   c_(i) is the amount concentration of the attenuating species _i_ in the material sample;
-   ℓ is the path length of the beam of light through the material sample.

Attenuation cross section and molar attenuation coefficient are related by

$$\varepsilon_i = \frac{\mathrm{N_A}}{\ln{10}}\,\sigma_i,$$
and number density and amount concentration by

$$c_i = \frac{n_i}{\mathrm{N_A}},$$

where N_(A) is the Avogadro constant.

In case of _uniform_ attenuation, these relations become[5]

$$T = e^{-\ell\sum_{i = 1}^N \sigma_i n_i} = 10^{-\ell\sum_{i = 1}^N \varepsilon_i c_i},$$
or equivalently

$$\tau = \ell\sum_{i = 1}^N \sigma_i n_i,$$

$$A = \ell\sum_{i = 1}^N \varepsilon_i c_i.$$

Cases of _non-uniform_ attenuation occur in atmospheric science applications and radiation shielding theory for instance.

The law tends to break down at very high concentrations, especially if the material is highly scattering. If the radiation is especially intense, nonlinear optical processes can also cause variances. The main reason, however, is that the concentration dependence is in general non-linear and Beer's law is valid only under certain conditions as shown by derivation below. For strong oscillators and at high concentrations the deviations are stronger. If the molecules are closer to each other interactions can set in. These interactions can be roughly divided into physical and chemical interactions. Physical interaction do not alter the polarizability of the molecules as long as the interaction is not so strong that light and molecular quantum state intermix (strong coupling) , but cause the attenuation cross sections to be non-additive via electromagnetic coupling. Chemical interactions in contrast change the polarizability and thus absorption.

Expression with attenuation coefficient

The Beer–Lambert law can be expressed in terms of attenuation coefficient, but in this case is better called Lambert's law since amount concentration, from Beer's law, is hidden inside the attenuation coefficient. The (Napierian) attenuation coefficient μ and the decadic attenuation coefficient μ₁₀ = μ/ln 10 of a material sample are related to its number densities and amount concentrations as

$$\mu(z) = \sum_{i = 1}^N \mu_i(z) = \sum_{i = 1}^N \sigma_i n_i(z),$$

$$\mu_{10}(z) = \sum_{i = 1}^N \mu_{10,i}(z) = \sum_{i = 1}^N \varepsilon_i c_i(z)$$
respectively, by definition of attenuation cross section and molar attenuation coefficient. Then the Beer–Lambert law becomes

_T_ = _e_^( − ∫₀^(ℓ)_μ_(_z_)_d__z_) = 10^( − ∫₀^(ℓ)_μ_₁₀(_z_)_d__z_),
and

_τ_ = ∫₀^(ℓ)_μ_(_z_) _d__z_,

_A_ = ∫₀^(ℓ)_μ_₁₀(_z_) _d__z_.

In case of _uniform_ attenuation, these relations become

_T_ = _e_^( − _μ_ℓ) = 10^( − _μ_₁₀ℓ),
or equivalently

_τ_ = _μ_ℓ,

_A_ = _μ_₁₀ℓ.


Derivation

Assume that a beam of light enters a material sample. Define _z_ as an axis parallel to the direction of the beam. Divide the material sample into thin slices, perpendicular to the beam of light, with thickness d_z_ sufficiently small that one particle in a slice cannot obscure another particle in the same slice when viewed along the _z_ direction. The radiant flux of the light that emerges from a slice is reduced, compared to that of the light that entered, by , where _μ_ is the (Napierian) attenuation coefficient, which yields the following first-order linear ODE:

$$\frac{\mathrm{d}\Phi_\mathrm{e}(z)}{\mathrm{d}z} = -\mu(z)\Phi_\mathrm{e}(z).$$
The attenuation is caused by the photons that did not make it to the other side of the slice because of scattering or absorption. The solution to this differential equation is obtained by multiplying the integrating factor

_e_^(∫₀^(_z_)_μ_(_z_′)_d__z_′)
throughout to obtain

$$\frac{\mathrm{d}\Phi_\mathrm{e}(z)}{\mathrm{d}z}\,e^{\int_0^z \mu(z')\mathrm{d}z'} + \mu(z)\Phi_\mathrm{e}(z)\,e^{\int_0^z \mu(z')\mathrm{d}z'} = 0,$$
which simplifies due to the product rule (applied backwards) to

$$\frac{\mathrm{d}}{\mathrm{d}z}\bigl(\Phi_\mathrm{e}(z)\,e^{\int_0^z \mu(z')\mathrm{d}z'}\bigr) = 0.$$
Integrating both sides and solving for Φ_(e) for a material of real thickness _ℓ_, with the incident radiant flux upon the slice and the transmitted radiant flux gives

_Φ__(_e_)^(_t_) = _Φ__(_e_)^(_i_) _e_^( − ∫₀^(ℓ)_μ_(_z_)_d__z_),
and finally

$$T = \frac{\Phi_\mathrm{e}^\mathrm{t}}{\Phi_\mathrm{e}^\mathrm{i}} = e^{-\int_0^\ell \mu(z)\mathrm{d}z}.$$
Since the decadic attenuation coefficient _μ_₁₀ is related to the (Napierian) attenuation coefficient by , one also have

_T_ = _e_^( − ∫₀^(ℓ)ln 10 _μ_₁₀(_z_)_d__z_) = (_e_^( − ∫₀^(ℓ)_μ_₁₀(_z_)_d__z_))^(ln 10) = 10^( − ∫₀^(ℓ)_μ_₁₀(_z_)_d__z_).

To describe the attenuation coefficient in a way independent of the number densities _n__(_i_) of the _N_ attenuating species of the material sample, one introduces the attenuation cross section . _σ__(_i_) has the dimension of an area; it expresses the likelihood of interaction between the particles of the beam and the particles of the specie _i_ in the material sample:

$$T = e^{-\sum_{i = 1}^N \sigma_i \int_0^\ell n_i(z)\mathrm{d}z}.$$

One can also use the molar attenuation coefficients , where N_(A) is the Avogadro constant, to describe the attenuation coefficient in a way independent of the amount concentrations of the attenuating species of the material sample:

$$\begin{align}
T = e^{-\sum_{i = 1}^N \frac{\ln{10}}{\mathrm{N_A}}\varepsilon_i \int_0^\ell n_i(z)\mathrm{d}z} = \\
 \Bigl(e^{-\sum_{i = 1}^N \varepsilon_i \int_0^\ell \frac{n_i(z)}{\mathrm{N_A}}\mathrm{d}z}\Bigr)^{\ln{10}} = 10^{-\sum_{i = 1}^N \varepsilon_i \int_0^\ell c_i(z)\mathrm{d}z}.\end{align}$$

The above assumption that the attenuation cross sections are additive is generally incorrect since electromagnetic coupling occurs if the distances between the absorbing entities is small. [6]

The derivation of the concentration dependence of the absorbance is based on electromagnetic theory.[7] Accordingly, the macroscopic polarization of a medium P derives from the microscopic dipole moments p in the absence of interaction according to

$$P = N\ p\$$

where p is the dipole moment and N the number of absorbing entities per unit volume. On the other hand, macroscopic polarization is given by:

_P_ = (_ε__(_r_) − 1) ⋅ _ε_₀ ⋅ _E_

Here ε_(r)represents the relative dielectric function, ε₀ the vacuum permittivity and E the electric field. After equating and solving for the relative dielectric function the result is:

$$\varepsilon_{r}=1+ \frac{P}{\varepsilon_{0} \cdot E}$$

If we take into account that the polarizability α is defined by p = α ⋅ E and that for the number of absorbers per unit volume $N = N_A\cdot c\$holds, it follows that:

$$\varepsilon_{r}=1+ c\frac{N_A \cdot \alpha}{\varepsilon_{0} }$$

According to Maxwell's wave equation the following relation between the complex dielectric function and the complex index of refraction function holds ε_(r) = n̂²for isotropic and homogeneous media. Therefore:

$$\hat{n} = \sqrt{1+ c\frac{N_A \cdot \alpha}{\varepsilon_{0}}}$$

The imaginary part of the complex index of refraction is the index of absorption k. Employing the imaginary part of the polarizability α″and the approximation $\surd (1+ x)\approx1+x/2$ it follows that:

$$k= c\frac{N_A \cdot \alpha''}{2\varepsilon_{0} }$$

Taking into account the relation between k and A, A = 4π(log₁₀e)k ⋅ c ⋅ d/λ it eventually follows that

$$A=\frac{2\pi(\log_{10}e)N_A \alpha''}{\lambda \cdot \varepsilon_0}\cdot c \cdot d$$

As a consequence, the linear relation between concentration and absorbance is generally an approximation, and holds in particular only for small polarisabilities and weak absorptions, i.e. oscillator strengths. If we do not introduce the approximation $\surd (1+ x)\approx1+x/2$, and employ instead the following relation between the imaginary part of the relative dielectric function and index of refraction and absorption ε_(r)″ = 2nk it becomes obvious that the molar attenuation coefficient depends on the index of refraction (which is itself concentration dependent):

$$A=\frac{2\pi(\log_{10}e)N_A \alpha''}{n \cdot \lambda \cdot \varepsilon_0}\cdot c \cdot d$$


Validity

Under certain conditions Beer–Lambert law fails to maintain a linear relationship between attenuation and concentration of analyte.[8] These deviations are classified into three categories:

1.  Real—fundamental deviations due to the limitations of the law itself.
2.  Chemical—deviations observed due to specific chemical species of the sample which is being analyzed.
3.  Instrument—deviations which occur due to how the attenuation measurements are made.

There are at least six conditions that need to be fulfilled in order for Beer–Lambert law to be valid. These are:

1.  The attenuators must act independently of each other. Electromagnetic coupling must be excluded.[9]
2.  The attenuating medium must be homogeneous in the interaction volume.
3.  The attenuating medium must not scatter the radiation—no turbidity—unless this is accounted for as in DOAS.
4.  The incident radiation must consist of parallel rays, each traversing the same length in the absorbing medium.
5.  The incident radiation should preferably be monochromatic, or have at least a width that is narrower than that of the attenuating transition. Otherwise a spectrometer as detector for the power is needed instead of a photodiode which has not a selective wavelength dependence.
6.  The incident flux must not influence the atoms or molecules; it should only act as a non-invasive probe of the species under study. In particular, this implies that the light should not cause optical saturation or optical pumping, since such effects will deplete the lower level and possibly give rise to stimulated emission.
7.  The wave properties of light must be negligible. In particular interference enhancement or decrease must not occur. [10][11]

If any of these conditions are not fulfilled, there will be deviations from Beer–Lambert law.

The Beer–Lambert law is not compatible with Maxwell's equations.[12] Being strict, the law does not describe the transmittance through a medium, but the propagation within that medium. It can be made compatible with Maxwell's equations if the transmittance of a sample with solute is ratioed against the transmittance of the pure solvent which explains why it works so well in spectrophotometry. As this is not possible for pure media, the uncritical employment of the Beer–Lambert law can easily generate errors of the order of 100% or more.[13] In such cases it is necessary to apply the Transfer-matrix method.

Recently it has also been demonstrated that Beer's law is a limiting law, since the absorbance is only approximately linearly depending on concentration. The reason is that the attenuation coefficient also depends on concentration and density, even in the absence of any interactions. These changes are, however, usually negligible except for high concentrations and large oscillator strength.[14]


Chemical analysis by spectrophotometry

Beer–Lambert law can be applied to the analysis of a mixture by spectrophotometry, without the need for extensive pre-processing of the sample. An example is the determination of bilirubin in blood plasma samples. The spectrum of pure bilirubin is known, so the molar attenuation coefficient _ε_ is known. Measurements of decadic attenuation coefficient _μ_₁₀ are made at one wavelength _λ_ that is nearly unique for bilirubin and at a second wavelength in order to correct for possible interferences. The amount concentration _c_ is then given by

$$c = \frac{\mu_{10}(\lambda)}{\varepsilon(\lambda)}.$$

For a more complicated example, consider a mixture in solution containing two species at amount concentrations _c_₁ and _c_₂. The decadic attenuation coefficient at any wavelength _λ_ is, given by

_μ_₁₀(_λ_) = _ε_₁(_λ_)_c_₁ + _ε_₂(_λ_)_c_₂.

Therefore, measurements at two wavelengths yields two equations in two unknowns and will suffice to determine the amount concentrations _c_₁ and _c_₂ as long as the molar attenuation coefficient of the two components, _ε_₁ and _ε_₂ are known at both wavelengths. This two system equation can be solved using Cramer's rule. In practice it is better to use linear least squares to determine the two amount concentrations from measurements made at more than two wavelengths. Mixtures containing more than two components can be analyzed in the same way, using a minimum of _N_ wavelengths for a mixture containing _N_ components.

The law is used widely in infra-red spectroscopy and near-infrared spectroscopy for analysis of polymer degradation and oxidation (also in biological tissue) as well as to measure the concentration of various compounds in different food samples. The carbonyl group attenuation at about 6 micrometres can be detected quite easily, and degree of oxidation of the polymer calculated.


Beer–Lambert law in the atmosphere

This law is also applied to describe the attenuation of solar or stellar radiation as it travels through the atmosphere. In this case, there is scattering of radiation as well as absorption. The optical depth for a slant path is , where _τ_ refers to a vertical path, _m_ is called the relative airmass, and for a plane-parallel atmosphere it is determined as where _θ_ is the zenith angle corresponding to the given path. The Beer–Lambert law for the atmosphere is usually written

_T_ = _e_^( − _m_(_τ__(_a_) + _τ__(_g_) + _τ__(_R__S_) + _τ__(_N__O_₂) + _τ__(_w_) + _τ__(_O_₃) + _τ__(_r_) + …)),
where each _τ__(_x_) is the optical depth whose subscript identifies the source of the absorption or scattering it describes:

-   a refers to aerosols (that absorb and scatter);
-   g are uniformly mixed gases (mainly carbon dioxide (CO₂) and molecular oxygen (O₂) which only absorb);
-   NO₂ is nitrogen dioxide, mainly due to urban pollution (absorption only);
-   RS are effects due to Raman scattering in the atmosphere;
-   w is water vapour absorption;
-   O₃ is ozone (absorption only);
-   r is Rayleigh scattering from molecular oxygen (O₂) and nitrogen (N₂) (responsible for the blue color of the sky);
-   the selection of the attenuators which have to be considered depends on the wavelength range and can include various other compounds. This can include tetraoxygen, HONO, formaldehyde, glyoxal, a series of halogen radicals and others.

_m_ is the _optical mass_ or _airmass factor_, a term approximately equal (for small and moderate values of _θ_) to 1/cos _θ_, where _θ_ is the observed object's zenith angle (the angle measured from the direction perpendicular to the Earth's surface at the observation site). This equation can be used to retrieve _τ__(a), the aerosol optical thickness, which is necessary for the correction of satellite images and also important in accounting for the role of aerosols in climate.


See also

-   Applied spectroscopy
-   Atomic absorption spectroscopy
-   Absorption spectroscopy
-   Cavity ring-down spectroscopy
-   Infra-red spectroscopy
-   Job plot
-   Laser absorption spectrometry
-   Logarithm
-   Polymer degradation
-   Scientific laws named after people
-   Quantification of nucleic acids
-   Tunable diode laser absorption spectroscopy


References


External links

-   Beer–Lambert Law Calculator

-   Beer–Lambert Law Simpler Explanation

Category:Scattering, absorption and radiative transfer (optics) Category:Spectroscopy Category:Electromagnetic radiation Category:Visibility

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Mehta A.Limitations and Deviations of Beer–Lambert Law

[9]

[10]

[11]

[12]

[13]

[14]