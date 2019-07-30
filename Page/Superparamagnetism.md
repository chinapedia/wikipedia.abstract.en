SUPERPARAMAGNETISM is a form of magnetism which appears in small ferromagnetic or ferrimagnetic nanoparticles. In sufficiently small nanoparticles, magnetization can randomly flip direction under the influence of temperature. The typical time between two flips is called the Néel relaxation time. In the absence of an external magnetic field, when the time used to measure the magnetization of the nanoparticles is much longer than the Néel relaxation time, their magnetization appears to be in average zero; they are said to be in the superparamagnetic state. In this state, an external magnetic field is able to magnetize the nanoparticles, similarly to a paramagnet. However, their magnetic susceptibility is much larger than that of paramagnets.


The Néel relaxation in the absence of magnetic field

Normally, any ferromagnetic or ferrimagnetic material undergoes a transition to a paramagnetic state above its Curie temperature. Superparamagnetism is different from this standard transition since it occurs below the Curie temperature of the material.

Superparamagnetism occurs in nanoparticles which are single-domain, i.e. composed of a single magnetic domain. This is possible when their diameter is below 3–50 nm, depending on the materials. In this condition, it is considered that the magnetization of the nanoparticles is a single giant magnetic moment, sum of all the individual magnetic moments carried by the atoms of the nanoparticle. Those in the field of superparamagnetism call this "macro-spin approximation".

Because of the nanoparticle’s magnetic anisotropy, the magnetic moment has usually only two stable orientations antiparallel to each other, separated by an energy barrier. The stable orientations define the nanoparticle’s so called “easy axis”. At finite temperature, there is a finite probability for the magnetization to flip and reverse its direction. The mean time between two flips is called the Néel relaxation time τ_(N) and is given by the following Néel–Arrhenius equation:[1]

$$\tau_N = \tau_0 \exp \left(\frac{K V}{k_B T}\right)$$
,

where:

-   τ_(N) is thus the average length of time that it takes for the nanoparticle’s magnetization to randomly flip as a result of thermal fluctuations.
-   τ₀ is a length of time, characteristic of the material, called the _attempt time_ or _attempt period_ (its reciprocal is called the _attempt frequency_); its typical value is between 10^(−9) and 10^(−10) second.
-   _K_ is the nanoparticle’s magnetic anisotropy energy density and _V_ its volume. _KV_ is therefore the energy barrier associated with the magnetization moving from its initial easy axis direction, through a “hard plane”, to the other easy axis direction.
-   k_(B) is the Boltzmann constant.
-   _T_ is the temperature.

This length of time can be anywhere from a few nanoseconds to years or much longer. In particular, it can be seen that the Néel relaxation time is an exponential function of the grain volume, which explains why the flipping probability becomes rapidly negligible for bulk materials or large nanoparticles.

Blocking temperature

Let us imagine that the magnetization of a single superparamagnetic nanoparticle is measured and let us define τ_(m) as the measurement time. If τ_(m) ≫ τ_(N), the nanoparticle magnetization will flip several times during the measurement, then the measured magnetization will average to zero. If τ_(m) ≪ τ_(N), the magnetization will not flip during the measurement, so the measured magnetization will be what the instantaneous magnetization was at the beginning of the measurement. In the former case, the nanoparticle will appear to be in the superparamagnetic state whereas in the latter case it will appear to be “blocked” in its initial state.

The state of the nanoparticle (superparamagnetic or blocked) depends on the measurement time. A transition between superparamagnetism and blocked state occurs when τ_(m) = τ_(N). In several experiments, the measurement time is kept constant but the temperature is varied, so the transition between superparamagnetism and blocked state is seen as a function of the temperature. The temperature for which τ_(m) = τ_(N) is called the _blocking temperature_:

$$T_B = \frac{K V}{k_B \ln \left(\frac{\tau_m}{\tau_0}\right)}$$

For typical laboratory measurements, the value of the logarithm in the previous equation is in the order of 20–25.


Effect of a magnetic field

When an external magnetic field _H_ is applied to an assembly of superparamagnetic nanoparticles, their magnetic moments tend to align along the applied field, leading to a net magnetization. The magnetization curve of the assembly, i.e. the magnetization as a function of the applied field, is a reversible S-shaped increasing function. This function is quite complicated but for some simple cases:

1.  If all the particles are identical (same energy barrier and same magnetic moment), their easy axes are all oriented parallel to the applied field and the temperature is low enough (_T_(B) < T ≲ KV/(10 k_(B))_), then the magnetization of the assembly is
    $M(H) \approx n \mu \tanh\left(\frac{\mu_0 H \mu}{k_B T}\right)$.
2.  If all the particles are identical and the temperature is high enough (_T ≳ KV/k_(B)_), then, irrespective of the orientations of the easy axes:
    $M(H) \approx n \mu L\left(\frac{\mu_0 H \mu}{k_B T}\right)$

In the above equations:

-   _n_ is the density of nanoparticles in the sample
-   μ₀ is the magnetic permeability of vacuum
-   μ is the magnetic moment of a nanoparticle
-   L(x) = 1/tanh (x) − 1/x is the Langevin function

The initial slope of the M(H) function is the magnetic susceptibility of the sample χ:

$$\chi = \frac{n \mu_0 \mu^2}{k_BT}$$
in the first case

$$\chi = \frac{n \mu_0 \mu^2}{3k_BT}$$
in the second case.

The latter susceptibility is also valid for all temperatures T > T_(B) if the easy axes of the nanoparticles are randomly oriented.

It can be seen from these equations that large nanoparticles have a larger _µ_ and so a larger susceptibility. This explains why superparamagnetic nanoparticles have a much larger susceptibility than standard paramagnets: they behave exactly as a paramagnet with a huge magnetic moment.

Time dependence of the magnetization

There is no time-dependence of the magnetization when the nanoparticles are either completely blocked (T ≪ T_(B)) or completely superparamagnetic (T ≫ T_(B)). There is, however, a narrow window around T_(B) where the measurement time and the relaxation time have comparable magnitude. In this case, a frequency-dependence of the susceptibility can be observed. For a randomly oriented sample, the complex susceptibility[2] is:

$$\chi(\omega) = \frac{\chi_{sp} + i \omega \tau \chi_b}{1 + i \omega \tau}$$

where

-   $\tfrac{\omega}{2\pi}$ is the frequency of the applied field
-   $\chi_{sp} = \tfrac{n \mu_0 \mu^2}{3k_BT}$ is the susceptibility in the superparamagnetic state
-   $\chi_b = \tfrac{n \mu_0 \mu^2}{3KV}$ is the susceptibility in the blocked state
-   $\tau = \tfrac{\tau_N}{2}$ is the relaxation time of the assembly

From this frequency-dependent susceptibility, the time-dependence of the magnetization for low-fields can be derived:

$$\tau \frac{\mathrm{d}M}{\mathrm{d}t} + M = \tau \chi_b \frac{\mathrm{d}H}{\mathrm{d}t} + \chi_{sp} H$$


Measurements

A superparamagnetic system can be measured with AC susceptibility measurements, where an applied magnetic field varies in time, and the magnetic response of the system is measured. A superparamagnetic system will show a characteristic frequency dependence: When the frequency is much higher than 1/τ_(N), there will be a different magnetic response than when the frequency is much lower than 1/τ_(N), since in the latter case, but not the former, the ferromagnetic clusters will have time to respond to the field by flipping their magnetization.[3] The precise dependence can be calculated from the Néel–Arrhenius equation, assuming that the neighboring clusters behave independently of one another (if clusters interact, their behavior becomes more complicated). It is also possible to perform magneto-optical AC susceptibility measurements with magneto-optically active superparamagnetic materials such as iron oxide nanoparticles in the visible wavelength range.[4]


Effect on hard drives

Superparamagnetism sets a limit on the storage density of hard disk drives due to the minimum size of particles that can be used. This limit is known as the SUPERPARAMAGNETIC LIMIT.

-   Older hard disk technology uses longitudinal recording. It has an estimated limit of 100 to 200 Gbit/in²[5]
-   Current hard disk technology uses perpendicular recording. drives with densities of 667Gb/in² are available commercially. Perpendicular recording is predicted to allow information densities of up to around 1 Tbit/in² (1024 Gbit/in²).[6]
-   Future hard disk technologies currently in development include: heat-assisted magnetic recording (HAMR), which use materials that are stable at much smaller sizes. They require heating before the magnetic orientation of a bit can be changed; and bit-patterned recording (BPR).[7] In addition, magnetic recording technologies based on topological distortions of the magnetization, known as skyrmions, have been proposed.[8]


Applications

General applications

-   Ferrofluid: tunable viscosity

Biomedical applications

-   Imaging: Contrast agents in magnetic resonance imaging (MRI)
-   Magnetic separation: cell-, DNA-, protein- separation, RNA fishing
-   Treatments: targeted drug delivery, magnetic hyperthermia, magnetofection


See also

-   Iron oxide nanoparticles
-   Single-molecule magnet


References

Notes

Sources

-   An English translation is available in

-


External links

-   Superparamagnetism of Co-Ferrite Nanoparticles
-   Powerpoint presentation on Superparamagnetism in pdf

Category:Magnetic ordering Category:Statistical mechanics

[1]  (in French; an English translation is available in ).

[2]

[3]

[4]

[5]

[6]

[7]

[8]