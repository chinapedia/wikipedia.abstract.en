RUTHERFORD SCATTERING is the elastic scattering of charged particles by the Coulomb interaction. It is a physical phenomenon explained by Ernest Rutherford in 1911[1] that led to the development of the planetary Rutherford model of the atom and eventually the Bohr model. Rutherford scattering was first referred to as COULOMB SCATTERING because it relies only upon the static electric (Coulomb) potential, and the minimum distance between particles is set entirely by this potential. The classical Rutherford scattering process of alpha particles against gold nuclei is an example of "elastic scattering" because neither the alpha particles nor the gold nuclei are internally excited. The Rutherford formula (see below) further neglects the recoil kinetic energy of the massive target nucleus.

The initial discovery was made by Hans Geiger and Ernest Marsden in 1909 when they performed the gold foil experiment in collaboration with Rutherford, in which they fired a beam of alpha particles (helium nuclei) at foils of gold leaf only a few atoms thick. At the time of the experiment, the atom was thought to be analogous to a plum pudding (as proposed by J. J. Thomson), with the negatively-charged electrons (the plums) studded throughout a positive spherical matrix (the pudding). If the plum-pudding model were correct, the positive "pudding", being more spread out than in the correct model of a concentrated nucleus, would not be able to exert such large coulombic forces, and the alpha particles should only be deflected by small angles as they pass through.

AlphaTrackRutherfordScattering3.jpg, a 5.3 MeV alpha particle track from a lead-210 pin source near point 1 undergoes Rutherford scattering near point 2, deflecting by an angle of about 30°. It scatters once again near point 3, and finally comes to rest in the gas. The target nucleus in the chamber gas could have been a nitrogen, oxygen, carbon, or hydrogen nucleus. It received enough kinetic energy in the elastic collision to cause a short visible recoiling track near point 2. (The scale is in centimeters.)]]

However, the intriguing results showed that around 1 in 8000 alpha particles were deflected by very large angles (over 90°), while the rest passed through with little deflection. From this, Rutherford concluded that the majority of the mass was concentrated in a minute, positively-charged region (the nucleus) surrounded by electrons. When a (positive) alpha particle approached sufficiently close to the nucleus, it was repelled strongly enough to rebound at high angles. The small size of the nucleus explained the small number of alpha particles that were repelled in this way. Rutherford showed, using the method outlined below, that the size of the nucleus was less than about (how much less than this size, Rutherford could not tell from this experiment alone; see more below on this problem of lowest possible size). As a visual example, Figure 1 shows the deflection of an alpha particle by a nucleus in the gas of a cloud chamber.

Rutherford scattering is now exploited by the materials science community in an analytical technique called Rutherford backscattering.


Derivation

The differential cross section can be derived from the equations of motion for a particle interacting with a central potential. In general, the equations of motion describing two particles interacting under a central force can be decoupled into the center of mass and the motion of the particles relative to one another. For the case of light alpha particles scattering off heavy nuclei, as in the experiment performed by Rutherford, the reduced mass is essentially the mass of the alpha particle and the nucleus off of which it scatters is essentially stationary in the lab frame.

Substituting into the Binet equation, with the origin of coordinate system (r, θ) on the target (scatterer), yields the equation of trajectory as

    $\frac{d^2 u}{d \theta^2} + u = -\frac{Z_1 Z_2 e^2}{4 \pi \epsilon_0 m v_0^2 b^2}=-\kappa,$

where }}, is the speed at infinity, and is the impact parameter.

The general solution of the above differential equation is

    u = u₀cos (θ−θ₀) − κ,

and the boundary condition is

    u → 0 and rsin θ → b (θ → π).

Solving the equations and its derivative using those boundary conditions, we can obtain

    $\theta_0 = \frac{\pi}{2} + \arctan b \kappa.$

Then the deflection angle is

    $\begin{align} \Theta &= 2 \theta_0 - \pi = 2 \arctan b \kappa \\ &= 2 \arctan \frac{Z_1 Z_2 e^2}{4 \pi \epsilon_0 m v_0^2 b}. \end{align}$

can be solved to give

    $b = \frac{Z_1 Z_2 e^2}{4 \pi \epsilon_0 m v_0^2} \cot \frac{\Theta}{2}.$

To find the scattering cross section from this result consider its definition

    $\frac{d \sigma}{d \Omega}(\Omega) d \Omega = \frac{\hbox{number of particles scattered into solid angle } d \Omega \hbox{ per unit time}}{\hbox{incident intensity}}$

Since the scattering angle is uniquely determined for a given and , the number of particles scattered into an angle between and must be the same as the number of particles with associated impact parameters between and . For an incident intensity , this implies the following equality

    $2\pi I b \left|db\right| = I \frac{d\sigma}{d\Omega} d\Omega$

For a radially symmetric scattering potential, as in the case of the Coulomb potential, 2π sin _Θ_ _dΘ_}}, yielding the expression for the scattering cross section

    $\frac{d\sigma}{d\Omega} = \frac{b}{\sin{\Theta}} \left|\frac{db}{d\Theta}\right|$

Plugging in the previously derived expression for the impact parameter we find the Rutherford differential scattering cross section

    $\frac{d\sigma}{d\Omega} =\left(\frac{ Z_1 Z_2 e^2}{8\pi\epsilon_0 m v_0^2}\right)^2 \csc^4 \frac{\Theta}{2}.$

This same result can be expressed alternatively as

    $\frac{d\sigma}{d\Omega} = \left( \frac{ Z_1 Z_2 \alpha (\hbar c)} {4 E_\mathrm{K} \sin^2 \frac{\Theta}{2} } \right)^2,$

where is the dimensionless fine structure constant, is the non-relativistic kinetic energy of the particle in MeV, and .


Details of calculating maximal nuclear size

For head-on collisions between alpha particles and the nucleus (with zero impact parameter), all the kinetic energy of the alpha particle is turned into potential energy and the particle is at rest. The distance from the center of the alpha particle to the center of the nucleus () at this point is an upper limit for the nuclear radius, if it is evident from the experiment that the scattering process obeys the cross section formula given above.

Applying the inverse-square law between the charges on the alpha particle and nucleus, one can write:

$$\frac{1}{2} mv^2 = \frac{1}{4\pi \epsilon_0} \cdot \frac{q_1 q_2}{r_\text{min}}$$

Rearranging:

$$r_\text{min} = \frac{1}{4\pi \epsilon_0} \cdot \frac{2 q_1 q_2}{mv^2}$$

For an alpha particle:

-   (mass) = =

-   (for helium) = 2 × =

-   (for gold) = 79 × =

-   (initial velocity) = (for this example)

Substituting these in gives the value of about , or 27 fm. (The true radius is about 7.3 fm.) The true radius of the nucleus is not recovered in these experiments because the alphas do not have enough energy to penetrate to more than 27 fm of the nuclear center, as noted, when the actual radius of gold is 7.3 fm. Rutherford realized this, and also realized that actual impact of the alphas on gold causing any force-deviation from that of the coulomb potential would change the _form_ of his scattering curve at high scattering angles (the smallest impact parameters) from a hyperbola to something else. This was not seen, indicating that the surface of the gold nucleus had not been "touched" so that Rutherford also knew the gold nucleus (or the sum of the gold and alpha radii) was smaller than 27 fm.


Extension to situations with relativistic particles and target recoil

The extension of low-energy Rutherford-type scattering to relativistic energies and particles that have intrinsic spin is beyond the scope of this article. For example, electron scattering from the proton is described as Mott scattering,[2] with a cross section that reduces to the Rutherford formula for non-relativistic electrons. If no _internal_ energy excitation of the beam or target particle occurs, the process is called "elastic scattering", since energy and momentum have to be conserved in any case. If the collision causes one or the other of the constituents to become excited, or if new particles are created in the interaction, then the process is said to be "inelastic scattering".


See also

-   Rutherford backscattering spectrometry


References


Textbooks

-


External links

-   E. Rutherford, _The Scattering of α and β Particles by Matter and the Structure of the Atom_, Philosophical Magazine. Series 6, vol. 21. May 1911
-

Category:Scattering Category:Foundational quantum physics Category:Ernest Rutherford

[1]

[2] Hyperphysics link