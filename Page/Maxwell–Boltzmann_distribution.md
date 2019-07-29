{a^3} | cdf = $\operatorname{erf}\left(\frac{x}{\sqrt{2} a}\right) -\sqrt{\frac{2}{\pi}} \frac{x e^{-x^2/\left(2a^2\right)}}{a}$ where erf is the error function | mean = $\mu=2a \sqrt{\frac{2}{\pi}}$ | median = | mode = $\sqrt{2} a$ | variance = $\sigma^2=\frac{a^2(3 \pi - 8)}{\pi}$ | skewness = $\gamma_1=\frac{2 \sqrt{2} (16 -5 \pi)}{(3 \pi - 8)^{3/2}}$ | kurtosis = $\gamma_2=4\frac{\left(-96+40\pi-3\pi^2\right)}{(3 \pi - 8)^2}$ | entropy = $\ln\left(a\sqrt{2\pi}\right)+\gamma-\frac{1}{2}$ | mgf = | char = }}}} In physics (in particular in statistical mechanics), the MAXWELL–BOLTZMANN DISTRIBUTION is a particular probability distribution named after James Clerk Maxwell and Ludwig Boltzmann.

It was first defined and used for describing particle speeds in idealized gases, where the particles move freely inside a stationary container without interacting with one another, except for very brief collisions in which they exchange energy and momentum with each other or with their thermal environment. The term "particle" in this context refers to gaseous particles only (atoms or molecules), and the system of particles is assumed to have reached thermodynamic equilibrium.[1] The energies of such particles follow what is known as Maxwell-Boltzmann statistics, and the statistical distribution of speeds is derived by equating particle energies with kinetic energy.

Mathematically, the Maxwell–Boltzmann distribution is the chi distribution with three degrees of freedom (the components of the velocity vector in Euclidean space), with a scale parameter measuring speeds in units proportional to the square root of T/m (the ratio of temperature and particle mass).[2]

The Maxwell–Boltzmann distribution is a result of the kinetic theory of gases, which provides a simplified explanation of many fundamental gaseous properties, including pressure and diffusion.[3] The Maxwell–Boltzmann distribution applies fundamentally to particle velocities in three dimensions, but turns out to depend only on the speed (the magnitude of the velocity) of the particles. A particle speed probability distribution indicates which speeds are more likely: a particle will have a speed selected randomly from the distribution, and is more likely to be within one range of speeds than another. The kinetic theory of gases applies to the classical ideal gas, which is an idealization of real gases. In real gases, there are various effects (e.g., van der Waals interactions, vortical flow, relativistic speed limits, and quantum exchange interactions) that can make their speed distribution different from the Maxwell–Boltzmann form. However, rarefied gases at ordinary temperatures behave very nearly like an ideal gas and the Maxwell speed distribution is an excellent approximation for such gases. Ideal plasmas, which are ionized gases of sufficiently low density, frequently also have particle distributions that are partially or entirely Maxwellian.[4]

The distribution was first derived by Maxwell in 1860 on heuristic grounds.See:

-   Maxwell, J.C. (1860 A): _Illustrations of the dynamical theory of gases. Part I. On the motions and collisions of perfectly elastic spheres. The London, Edinburgh, and Dublin Philosophical Magazine and Journal of Science_, 4th Series, vol.19, pp.19-32. 1
-   Maxwell, J.C. (1860 B): _Illustrations of the dynamical theory of gases. Part II. On the process of diffusion of two or more kinds of moving particles among one another. The London, Edinburgh, and Dublin Philosophical Magazine and Journal of Science_, 4th Ser., vol.20, pp.21-37. 2 Boltzmann later, in the 1870s, carried out significant investigations into the physical origins of this distribution.

The distribution can be derived on the ground that it maximizes the entropy of the system. A list of derivations are:

1.  Maximum entropy probability distribution in the phase space, with the constraint of Conservation of average energy ⟨H⟩ = E;
2.  Canonical ensemble.


Distribution function

Assuming the system of interest contains a large number of particles, the fraction of the particles within an infinitesimal element of three-dimensional velocity space, d³v, centered on a velocity vector of magnitude v, is f(v)d³v, in which

$$f(v) ~\mathrm{d}^3v = \left(\frac{m}{2 \pi kT}\right)^{3/2}\,  e^{- \frac{m|v|^2}{2kT}} ~\mathrm{d}^3v,$$

where m is the particle mass and kT is the product of Boltzmann's constant and thermodynamic temperature.

MaxwellBoltzmann-en.svges at a temperature of 298.15 K (25 °C). The _y_-axis is in s/m so that the area under any section of the curve (which represents the probability of the speed being in that range) is dimensionless.]] One can write the element of velocity space as d³v = dv_(x)dv_(y)dv_(z), for velocities in a standard Cartesian coordinate system, or as d³v = v²dvdΩ in a standard spherical coordinate system, where dΩ is an element of solid angle. Here f(v) is given as a probability distribution function, properly normalized so that ∫f(v)d³v over all velocities equals one. In plasma physics, the probability distribution is often multiplied by the particle density, so that the integral of the resulting distribution function equals the density.

Undergraduate students are likely to work with the Maxwellian distribution function for particles moving in only one direction. If this direction is x, then one has

$$f(v_x) ~\mathrm{d}v_x = \left(\frac{m}{2 \pi kT}\right)^{1/2}\,  e^{- \frac{mv_x^2}{2kT}} ~\mathrm{d}v_x,$$
which can be obtained by integrating the three-dimensional form given above over v_(y) and v_(z).

Recognizing the symmetry of f(v), one can integrate over solid angle and write a probability distribution of speeds as the function[5]

$$f(v) ~\mathrm{d}v= \left(\frac{m}{2 \pi kT}\right)^{3/2}\, 4\pi v^2 e^{- \frac{mv^2}{2kT}} ~\mathrm{d}v,$$

This probability density function gives the probability, per unit speed, of finding the particle with a speed near v. This equation is simply the Maxwell–Boltzmann distribution (given in the infobox) with distribution parameter $a=\sqrt{kT/m}$. The Maxwell–Boltzmann distribution is equivalent to the chi distribution with three degrees of freedom and scale parameter $a=\sqrt{kT/m}$.

The simplest ordinary differential equation satisfied by the distribution is:

_k__T__v__f_′(_v_) + _f_(_v_)(_m__v_² − 2_k__T_) = 0,

$$f(1)=\sqrt{\frac{2}{\pi }} e^{-\frac{m}{2 k T}} \left(\frac{m}{k T}\right)^{3/2}$$

or in unitless presentation:

_a_²_x__f_′(_x_) + (_x_²−2_a_²)_f_(_x_) = 0,

$$f(1)=\frac{\sqrt{\frac{2}{\pi }} e^{-\frac{1}{2 a^2}}}{a^3}.$$
With the Darwin–Fowler method of mean values the Maxwell–Boltzmann distribution is obtained as an exact result.


Relaxation to the 2D Maxwell-Boltzmann distribution

Simulation_of_gas_for_relaxation_demonstration.gif For particles confined to move in a plane, the speed distribution is given by

$P(s < |\vec{v}| < s + ds) = \frac{ms}{kT}\exp\bigg(-\frac{ms^2}{2kT}\bigg) ds$

This distribution is used for describing systems in equilibrium. However, most systems do start out in their equilibrium state. The evolution of a system towards its equilibrium state is governed by the Boltzmann equation. The equation predicts that for short range interactions, the equilibrium velocity distribution will follow a Maxwell–Boltzmann distribution. To the right is a molecular dynamics (MD) simulation in which 900 hard sphere particles are constrained to move in a rectangle. They interact via perfectly elastic collisions. The system is initialized out of equilibrium, but we see that the velocity distribution (in blue) quickly converges to the 2D Maxwell–Boltzmann distribution (in orange).


Typical speeds

The mean speed ⟨v⟩, most probable speed (mode) , and root-mean-square speed $\sqrt{\langle v^2 \rangle}$ can be obtained from properties of the Maxwell distribution.

This works well for nearly ideal, monatomic gases like helium, but also for molecular gases like diatomic oxygen. This is because despite the larger heat capacity (larger internal energy at the same temperature) due to their larger number of degrees of freedom, their translational kinetic energy (and thus their speed) is unchanged.[6]

\left(\frac{mv^2}{2kT}-1\right) = 0

with the solution:

$$\frac{mv_p^2}{2kT} = 1$$

$$v_p = \sqrt { \frac{2kT}{m} } = \sqrt { \frac{2RT}{M} }$$
(the second solution v = 0 representing the "least probable speed").

is the gas constant and is molar mass of the substance, and thus may be calculated as a product of particle mass, , and Avogadro constant, :

_M_ = _m__N__(_a_)

For diatomic nitrogen (N₂, the primary component of air)[7] at room temperature (), this gives

$$v_p \approx  \sqrt{\frac{2\cdot{}8.31\ \text{J}\cdot{}\text{mol}^{-1}\text{K}^{-1}\ 300\ \text{K}}{0.028\ \text{kg}\cdot{}\text{mol}^{-1}}} \approx  422\ \text{m/s}.$$
|2= The mean speed is the expected value of the speed distribution, setting $b=\frac{1}{2a^2}=\frac{m}{2kT}$:

⟨_v_⟩ = ∫₀^(∞)_v_ _f_(_v_) _d__v_

$$=  4 \pi \left (\frac{b}{ \pi  } \right )^\frac{3}{2} \int_{0}^{\infty} v^3\ e^{-bv^{2}}dv\,\!$$

$$= 4 \pi \left (\frac{b}{  \pi } \right )^\frac{3}{2}  \frac{1}{2b^2} = \sqrt{\frac{4}{\pi b}} \,\!$$

$$= \sqrt { \frac{8kT}{\pi m}}= \sqrt { \frac{8RT}{\pi M}} = \frac{2}{\sqrt{\pi}} v_p$$

|3= The mean square speed ⟨v²⟩ is the second-order raw moment of the speed distribution. The "root mean square speed" v_(rms) is the square root of the mean square speed, corresponding to the speed of a particle with median kinetic energy, setting $b=\frac{1}{2a^2}=\frac{m}{2kT}$:

$$v_\mathrm{rms} = \sqrt{\langle v^2 \rangle} = \left(\int_0^{\infty} v^2 \, f(v) \, dv  \right)^{1/2}$$

$$= \left( 4 \pi \left (\frac{b}{  \pi } \right )^\frac{3}{2} \int_{0}^{\infty}  v^4\ e^{-bv^2}dv\right)^{1/2}\,\!$$

$$= \left(4 \pi \left (\frac{b}{\pi}\right )^\frac{3}{2} \frac{3}{8}  \sqrt{\frac{\pi}{b^5}} \right)^{1/2} = \left( \frac{3}{2b} \right)^{1/2}\,\!$$

$$= \sqrt { \frac{3kT}{m}}= \sqrt { \frac{3RT}{M} } = \sqrt{ \frac{3}{2} } v_p$$
}}

In summary, the typical speeds are related as follows:

_v__(_p_) ≈ 88.6% ⟨_v_⟩ < ⟨_v_⟩ < 108.5% ⟨_v_⟩ ≈ _v__(_r__m__s_).

The root mean square speed is directly related to the speed of sound in the gas, by

$$c = \sqrt{\frac{\gamma}{3}}\ v_\mathrm{rms}  = \sqrt{\frac{f+2}{3f}}\ v_\mathrm{rms} = \sqrt{\frac{f+2}{2f}}\ v_p ,$$
where $\gamma = 1 + \frac{2}{f}$ is the adiabatic index, is the number of degrees of freedom of the individual gas molecule. For the example above, diatomic nitrogen (approximating air) at , f = 5[8] and

$$c = \sqrt{\frac{7}{15}}v_\mathrm{rms} \approx 68\%\ v_\mathrm{rms} \approx 84\%\ v_p  \approx 353\ \mathrm{m/s},$$
the true value for air can be approximated by using the average molar weight of air (), yielding at (corrections for variable humidity are of the order of 0.1% to 0.6%).

The average relative velocity

$$v_{\rm rel} \equiv \langle |\vec{v}_1-\vec{v}_2| \rangle = \int\!d^3v_1d^3v_2|\vec{v}_1-\vec{v}_2|f(\vec{v}_1)f(\vec{v}_2) = \frac{4}{\sqrt{\pi}}\frac{kT}{m} = 2\langle v \rangle$$

where the three-dimensional velocity distribution is

$$f(\vec{v}) \equiv \frac{1}{(2\pi kT/)^{3/2}}e^{-\frac12 m\vec{v}^2/kT}.$$

The integral can easily be done by changing to coordinates u⃗ = v⃗₁ − v⃗₂ and $\vec{U} = \frac{\vec{v}_1+\vec{v}_2}{2}.$


Derivation and related distributions

Maxwell–Boltzmann statistics

The original derivation in 1860 by James Clerk Maxwell was an argument based on molecular collisions of the Kinetic theory of gases as well as certain symmetries in the speed distribution function; Maxwell also gave an early argument that these molecular collisions entail a tendency towards equilibrium.[9][10] After Maxwell, Ludwig Boltzmann in 1872[11] also derived the distribution on mechanical grounds and argued that gases should over time tend toward this distribution, due to collisions (see H-theorem). He later (1877)[12] derived the distribution again under the framework of statistical thermodynamics. The derivations in this section are along the lines of Boltzmann's 1877 derivation, starting with result known as Maxwell–Boltzmann statistics (from statistical thermodynamics). Maxwell–Boltzmann statistics gives the average number of particles found in a given single-particle microstate. Under certain assumptions, the logarithm of the fraction of particles in a given microstate is proportional to the ratio of the energy of that state to the temperature of the system:

$$-\log \left(\frac{N_i}{N}\right) \propto \frac{E_i}{T}.$$
The assumptions of this equation are that the particles do not interact, and that they are classical; this means that each particle's state can be considered independently from the other particles' states. Additionally, the particles are assumed to be in thermal equilibrium.[13][14]

This relation can be written as an equation by introducing a normalizing factor:

where:

-   is the expected number of particles in the single-particle microstate ,

-   is the total number of particles in the system,

-   is the energy of microstate ,

-   the sum over index takes into account all microstates,
-   is the equilibrium temperature of the system,

-   is the Boltzmann constant.

The denominator in Equation () is simply a normalizing factor so that the ratios N_(i) : N add up to unity — in other words it is a kind of partition function (for the single-particle system, not the usual partition function of the entire system).

Because velocity and speed are related to energy, Equation () can be used to derive relationships between temperature and the speeds of gas particles. All that is needed is to discover the density of microstates in energy, which is determined by dividing up momentum space into equal sized regions.

Distribution for the momentum vector

The potential energy is taken to be zero, so that all energy is in the form of kinetic energy. The relationship between kinetic energy and momentum for massive non-relativistic particles is

where _p_² is the square of the momentum vector P = [_p__(_x_), _p__(_y_), _p__(_z_)]. We may therefore rewrite Equation () as:

where _Z_ is the partition function, corresponding to the denominator in Equation (). Here _m_ is the molecular mass of the gas, _T_ is the thermodynamic temperature and _k_ is the Boltzmann constant. This distribution of N_(i) : N is proportional to the probability density function _f__(P) for finding a molecule with these values of momentum components, so:

The normalizing constant can be determined by recognizing that the probability of a molecule having _some_ momentum must be 1. Integrating the exponential in () over all _p__(_x_), _p__(_y_), and _p__(_z_) yields a factor of

$$\iiint_{-\infty}^{+\infty} \exp \left[ -\frac{p_x^2 + p_y^2 + p_z^2}{2mkT}\right] dp_x\ dp_y\ dp_z  = {(\sqrt{\pi} \sqrt{2mkT})^3}$$

So that the normalized distribution function is:

The distribution is seen to be the product of three independent normally distributed variables p_(x), p_(y), and p_(z), with variance mkT. Additionally, it can be seen that the magnitude of momentum will be distributed as a Maxwell–Boltzmann distribution, with $a=\sqrt{mkT}$. The Maxwell–Boltzmann distribution for the momentum (or equally for the velocities) can be obtained more fundamentally using the H-theorem at equilibrium within the Kinetic theory of gases framework.

Distribution for the energy

The energy distribution is found imposing where $d^3 \textbf p$ is the infinitesimal phase-space volume of momenta corresponding to the energy interval dE. Making use of the spherical symmetry of the energy-momentum dispersion relation $E=| \textbf p|^2/2m$, this can be expressed in terms of dE as Using then () in (), and expressing everything in terms of the energy E, we get

$$f_E(E) dE = \frac{1}{(2\pi m k T)^{3/2}} e^{-E/kT} 4 \pi m \sqrt{2mE} dE = 2 \sqrt{\frac{E}{\pi}} \left( \frac{1}{kT} \right)^{3/2} \exp\left(\frac{-E}{kT} \right) dE$$
and finally

\left( \frac{1}{kT} \right)^{3/2} \exp\left(\frac{-E}{kT} \right) |cellpadding |border |border colour = #50C878 |background colour = #ECFCF4|ref=9}}

Since the energy is proportional to the sum of the squares of the three normally distributed momentum components, this distribution is a gamma distribution; in particular, it is a chi-squared distribution with three degrees of freedom.

By the equipartition theorem, this energy is evenly distributed among all three degrees of freedom, so that the energy per degree of freedom is distributed as a chi-squared distribution with one degree of freedom:[15]

$$f_\epsilon(\epsilon)\,d\epsilon= \sqrt{\frac{1 }{\pi \epsilon kT}}~\exp\left[\frac{-\epsilon}{kT}\right]\,d\epsilon$$

where ϵ is the energy per degree of freedom. At equilibrium, this distribution will hold true for any number of degrees of freedom. For example, if the particles are rigid mass dipoles of fixed dipole moment, they will have three translational degrees of freedom and two additional rotational degrees of freedom. The energy in each degree of freedom will be described according to the above chi-squared distribution with one degree of freedom, and the total energy will be distributed according to a chi-squared distribution with five degrees of freedom. This has implications in the theory of the specific heat of a gas.

The Maxwell–Boltzmann distribution can also be obtained by considering the gas to be a type of quantum gas for which the approximation _ε >> k T_ may be made.

Distribution for the velocity vector

Recognizing that the velocity probability density _f__(V) is proportional to the momentum probability density function by

$$f_\mathbf{v} d^3v = f_\mathbf{p} \left(\frac{dp}{dv}\right)^3 d^3v$$

and using P = mV we get

which is the Maxwell–Boltzmann velocity distribution. The probability of finding a particle with velocity in the infinitesimal element [_dv__(_x_), _dv__(_y_), _dv__(_z_)] about velocity V = [_v__(_x_), _v__(_y_), _v__(_z_)] is

_f__(V)(_v__(_x_),_v__(_y_),_v__(_z_)) _d__v__(_x_) _d__v__(_y_) _d__v__(_z_).

Like the momentum, this distribution is seen to be the product of three independent normally distributed variables v_(x), v_(y), and v_(z), but with variance $\frac{kT}{m}$. It can also be seen that the Maxwell–Boltzmann velocity distribution for the vector velocity [_v__(_x_), _v__(_y_), _v__(_z_)] is the product of the distributions for each of the three directions:

_f__(V)(_v__(_x_),_v__(_y_),_v__(_z_)) = _f__(_v_)(_v__(_x_))_f__(_v_)(_v__(_y_))_f__(_v_)(_v__(_z_))

where the distribution for a single direction is

$$f_v (v_i) =
\sqrt{\frac{m}{2 \pi kT}}
\exp \left[
\frac{-mv_i^2}{2kT}
\right].$$

Each component of the velocity vector has a normal distribution with mean μ_(v_(x)) = μ_(v_(y)) = μ_(v_(z)) = 0 and standard deviation $\sigma_{v_x} = \sigma_{v_y} = \sigma_{v_z} = \sqrt{\frac{kT}{m}}$, so the vector has a 3-dimensional normal distribution, a particular kind of multivariate normal distribution, with mean μ_(V) = 0 and standard deviation $\sigma_{\mathbf{v}} = \sqrt{\frac{3kT}{m}}$.

Distribution for the speed

The Maxwell–Boltzmann distribution for the speed follows immediately from the distribution of the velocity vector, above. Note that the speed is

$$v = \sqrt{v_x^2 + v_y^2 + v_z^2}$$

and the volume element in spherical coordinates

_d__v__(_x_) _d__v__(_y_) _d__v__(_z_) = _v_²sin _θ_ _d__v_ _d__θ_ _d__ϕ_ = _v_²_d__v_ _d__Ω_
where ϕ and θ are the spherical coordinate angles of the velocity vector. Integration of the probability density function of the velocity over the solid angles dΩ yields an additional factor of 4π. The speed distribution with substitution of the speed for the sum of the squares of the vector components:


In n-dimensional space

In n-dimensional space, Maxwell-Boltzman distribution becomes:

$f(v) ~\mathrm{d}^nv = \left(\frac{m}{2 \pi kT}\right)^{n/2}\,  e^{- \frac{m|v|^2}{2kT}} ~\mathrm{d}^nv$

Speed distribution becomes:

$f(v) ~\mathrm{d}v = const. \times  e^{- \frac{mv^2}{2kT}} \times v^{n-1} ~\mathrm{d}v$

The following integral result is useful:

$\begin{align}
\int_{0}^{+\infty} v^a e^{-\frac{mv^2}{2kT}} dv
&= \left[\frac{2kT}{m}\right]^{(a+1)/2} \int_{0}^{+\infty} e^{-x}x^{\frac{a}{2}}dx^{\frac{1}{2}}\\
&= \left[\frac{2kT}{m}\right]^{(a+1)/2} \int_{0}^{+\infty} e^{-x}x^{\frac{a}{2}}\frac{x^{-\frac{1}{2}}}{2}dx\\
&= \left[\frac{2kT}{m}\right]^{(a+1)/2} \frac{\Gamma (\frac{a+1}{2})}{2}
\end{align}$

where Γ(z)is the Gamma function. This result can be used to calculate the moments of speed distribution function:

$\begin{align}
\langle v \rangle
&= \frac{\int_{0}^{+\infty} v \cdot v^{n-1} e^{-\frac{mv^2}{2kT}} dv}
{\int_{0}^{+\infty} v^{n-1} e^{-\frac{mv^2}{2kT}} dv} \\
&= \left[\frac{2kT}{m}\right]^{1/2} \frac{\Gamma (\frac{n+1}{2})}{\Gamma (\frac{n}{2})}
\end{align}$

which is the mean speed itself $v_{\text{avg}} = \langle v \rangle = \left[\frac{2kT}{m}\right]^{1/2} \frac{\Gamma (\frac{n+1}{2})}{\Gamma (\frac{n}{2})}$.

$\begin{align}
\langle v^2 \rangle
&= \frac{\int_{0}^{+\infty} v^2 \cdot v^{n-1} e^{-\frac{mv^2}{2kT}} dv}
{\int_{0}^{+\infty} v^{n-1} e^{-\frac{mv^2}{2kT}} dv} \\
&= \left[\frac{2kT}{m}\right] \frac{\Gamma (\frac{n+2}{2})}{\Gamma (\frac{n}{2})} \\
&= \left[\frac{2kT}{m}\right] \frac{n}{2} = \frac{nkT}{m}
\end{align}$

which gives root-mean-square speed $v_{\text{rms}} = \sqrt{\langle v^2 \rangle} = \left[\frac{nkT}{m}\right]^{1/2}$.

The derivative of speed distribution function:

$\frac{df(v)}{dv} = const. \times \ e^{-\frac{mv^2}{2kT}} \left(-\frac{mv}{kT} v^{n-1}+(n-1)v^{n-2}\right) = 0$

This yields the most probable speed (mode) $v_{\text{p}} = \left[\frac{(n-1)kT}{m}\right]^{1/2}$.


See also

-   Quantum Boltzmann equation
-   Maxwell–Boltzmann statistics
-   Maxwell–Jüttner distribution
-   Boltzmann distribution
-   Boltzmann factor
-   Rayleigh distribution
-   Kinetic theory of gases


References


Further reading

-   Physics for Scientists and Engineers – with Modern Physics (6th Edition), P. A. Tipler, G. Mosca, Freeman, 2008,
-   Thermodynamics, From Concepts to Applications (2nd Edition), A. Shavit, C. Gutfinger, CRC Press (Taylor and Francis Group, USA), 2009,
-   Chemical Thermodynamics, D.J.G. Ives, University Chemistry, Macdonald Technical and Scientific, 1971,
-   Elements of Statistical Thermodynamics (2nd Edition), L.K. Nash, Principles of Chemistry, Addison-Wesley, 1974,
-   Ward, CA & Fang, G 1999, 'Expression for predicting liquid evaporation flux: Statistical rate theory approach', Physical Review E, vol. 59, no. 1, pp. 429–40.
-   Rahimi, P & Ward, CA 2005, 'Kinetics of Evaporation: Statistical Rate Theory Approach', International Journal of Thermodynamics, vol. 8, no. 9, pp. 1–14.


External links

-   "The Maxwell Speed Distribution" from The Wolfram Demonstrations Project at Mathworld

Category:Continuous distributions Category:Gases Category:James Clerk Maxwell Category:Normal distribution Category:Particle distributions

[1] _Statistical Physics_ (2nd Edition), F. Mandl, Manchester Physics, John Wiley & Sons, 2008,

[2] University Physics – With Modern Physics (12th Edition), H.D. Young, R.A. Freedman (Original edition), Addison-Wesley (Pearson International), 1st Edition: 1949, 12th Edition: 2008,

[3] Encyclopaedia of Physics (2nd Edition), R.G. Lerner, G.L. Trigg, VHC publishers, 1991, (Verlagsgesellschaft), (VHC Inc.)

[4] N.A. Krall and A.W. Trivelpiece, Principles of Plasma Physics, San Francisco Press, Inc., 1986, among many other texts on basic plasma physics

[5] H.J.W. Müller-Kirsten (2013), _Basics of Statistical Physics_, 2nd ed., World Scientific, , Chapter 2.

[6]

[7] The calculation is unaffected by the Nitrogen being diatomic. Despite the larger heat capacity (larger internal energy at the same temperature) of diatomic gases relative to monatomic gases, due to their larger number of degrees of freedom, ${{3RT}\over{M_m}}$ is still the mean translational kinetic energy. Nitrogen being diatomic only affects the value of the molar mass {{=}} . See e.g. K. Prakashan, _Engineering Physics_ (2001), 2.278.

[8] Nitrogen at room temperature is considered a "rigid" diatomic gas, with two rotational degrees of freedom additional to the three translational ones, and the vibrational degree of freedom not accessible.

[9]

[10]

[11] Boltzmann, L., "Weitere studien über das Wärmegleichgewicht unter Gasmolekülen." _Sitzungsberichte der Kaiserlichen Akademie der Wissenschaften in Wien, mathematisch-naturwissenschaftliche Classe_, 66, 1872, pp. 275–370.

[12] Boltzmann, L., "Über die Beziehung zwischen dem zweiten Hauptsatz der mechanischen Wärmetheorie und der Wahrscheinlichkeitsrechnung respektive den Sätzen über das Wärmegleichgewicht." _Sitzungsberichte der Kaiserlichen Akademie der Wissenschaften in Wien, Mathematisch-Naturwissenschaftliche Classe_. Abt. II, 76, 1877, pp. 373–435. Reprinted in _Wissenschaftliche Abhandlungen_, Vol. II, pp. 164–223, Leipzig: Barth, 1909.

[13]

[14] McGraw Hill Encyclopaedia of Physics (2nd Edition), C.B. Parker, 1994,

[15] , Appendix N, page 434