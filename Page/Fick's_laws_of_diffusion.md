DiffusionMicroMacro.gif from a microscopic and macroscopic point of view. Initially, there are solute molecules on the left side of a barrier (purple line) and none on the right. The barrier is removed, and the solute diffuses to fill the whole container. TOP: A single molecule moves around randomly. MIDDLE: With more molecules, there is a clear trend where the solute fills the container more and more uniformly. BOTTOM: With an enormous number of solute molecules, randomness becomes undetectable: The solute appears to move smoothly and systematically from high-concentration areas to low-concentration areas. This smooth flow is described by Fick's laws.]] FICK'S LAWS OF DIFFUSION describe diffusion and were derived by Adolf Fick in 1855. They can be used to solve for the diffusion coefficient, . Fick's first law can be used to derive his second law which in turn is identical to the diffusion equation.


History

In 1855, physiologist Adolf Fick first reported

-   -   his now well-known laws governing the transport of mass through diffusive means. Fick's work was inspired by the earlier experiments of Thomas Graham, which fell short of proposing the fundamental laws for which Fick would become famous. The Fick's law is analogous to the relationships discovered at the same epoch by other eminent scientists: Darcy's law (hydraulic flow), Ohm's law (charge transport), and Fourier's Law (heat transport).

Fick's experiments (modeled on Graham's) dealt with measuring the concentrations and fluxes of salt, diffusing between two reservoirs through tubes of water. It is notable that Fick's work primarily concerned diffusion in fluids, because at the time, diffusion in solids was not considered generally possible.[1] Today, Fick's Laws form the core of our understanding of diffusion in solids, liquids, and gases (in the absence of bulk fluid motion in the latter two cases). When a diffusion process does _not_ follow Fick's laws (which happens in cases of diffusion through porous media and diffusion of swelling penetrants, among others),[2][3] it is referred to as _non-Fickian_.


Fick's first law

FICK'S FIRST LAW relates the diffusive flux to the concentration under the assumption of steady state. It postulates that the flux goes from regions of high concentration to regions of low concentration, with a magnitude that is proportional to the concentration gradient (spatial derivative), or in simplistic terms the concept that a solute will move from a region of high concentration to a region of low concentration across a concentration gradient. In one (spatial) dimension, the law can be written in various forms, where the most common form (see [4][5]) is in a molar basis:

$$J = -D \frac{d \varphi}{d x}$$
where

-   is the DIFFUSION FLUX, of which the dimension is amount of substance per unit area per unit time, so it is expressed in such units as mol m^(−2) s^(−1). measures the amount of substance that will flow through a unit area during a unit time interval.

-   is the DIFFUSION COEFFICIENT or DIFFUSIVITY. Its dimension is area per unit time, so typical units for expressing it would be m²/s.

-   (for ideal mixtures) is the concentration, of which the dimension is amount of substance per unit volume. It might be expressed in units of mol/m³.

-   is position, the dimension of which is length. It might thus be expressed in the unit m.

is proportional to the squared velocity of the diffusing particles, which depends on the temperature, viscosity of the fluid and the size of the particles according to the Stokes–Einstein relation. In dilute aqueous solutions the diffusion coefficients of most ions are similar and have values that at room temperature are in the range of . For biological molecules the diffusion coefficients normally range from 10^(−11) to 10^(−10) m²/s.

In two or more dimensions we must use , the del or gradient operator, which generalises the first derivative, obtaining

J =  − _D_∇_φ_

where denotes the diffusion flux vector.

The driving force for the one-dimensional diffusion is the quantity , which for ideal mixtures is the concentration gradient.

Alternative formulations of the first law

Another form for the first law is to write it with the primary variable as mass fraction (, given for example in kg/kg), for when the total concentration of the mixture is approximately constant, then the equation changes to:

_J__(_i_) =  − _ρ__D_∇_y__(_i_)

where

-   the index denotes the th species.
-   is still the same DIFFUSION FLUX as in the common form, namely as amount of substance per unit area per unit time.

-   is the TOTAL CONCENTRATION of the mixture, as in fluid density, for example in kg/m³.

-   is the aforementioned mass fraction, which is dimensionless.

Note that the ρ is outside the gradient operator. This is because:

$$y_i = \frac{\rho_{si}}{\rho}$$

where is the concentration of the substance for the th species.

Beyond this, in chemical systems other than ideal solutions or mixtures, the driving force for diffusion of each species is the gradient of chemical potential of this species. Then Fick's first law (one-dimensional case) can be written as:

$$J_i = - \frac{D c_i}{RT} \frac{\partial \mu_i}{\partial x}$$

where

-   the index denotes the th species.
-   is the concentration (mol/m³).

-   is the universal gas constant (J/K/mol).

-   is the absolute temperature (K).

-   is the chemical potential (J/mol).


Fick's second law

FICK'S SECOND LAW predicts how diffusion causes the concentration to change with respect to time. It is a partial differential equation which in one dimension reads:

$$\frac{\partial \varphi}{\partial t} = D\,\frac{\partial^2 \varphi}{\partial x^2}$$

where

-   is the concentration in dimensions of [(amount of substance) length^(−3)], example mol/m³; φ(_x_,_t_)}} is a function that depends on location and time

-   is time, example s

-   is the diffusion coefficient in dimensions of [length² time^(−1)], example m²/s

-   is the position [length], example m

In two or more dimensions we must use the Laplacian ∇²}}, which generalises the second derivative, obtaining the equation

$$\frac{\partial \varphi}{\partial t} = D\Delta \varphi$$


Derivation of Fick's laws

Fick's second law

Fick's second law can be derived from Fick's first law and the mass conservation in absence of any chemical reactions:

$$\frac{\partial \varphi}{\partial t} + \frac{\partial}{\partial x}J = 0\Rightarrow\frac{\partial \varphi}{\partial t} -\frac{\partial}{\partial x}\left(D\frac{\partial}{\partial x}\varphi\right)\,=0$$

Assuming the diffusion coefficient to be a constant, one can exchange the orders of the differentiation and multiply by the constant:

$$\frac{\partial}{\partial x}\left(D\frac{\partial}{\partial x} \varphi\right) = D\frac{\partial}{\partial x} \frac{\partial}{\partial x} \varphi = D\frac{\partial^2\varphi}{\partial x^2}$$

and, thus, receive the form of the Fick's equations as was stated above.

For the case of diffusion in two or more dimensions Fick's second law becomes

$$\frac{\partial \varphi}{\partial t} = D\nabla^2\varphi,$$

which is analogous to the heat equation.

If the diffusion coefficient is not a constant, but depends upon the coordinate or concentration, Fick's second law yields

$$\frac{\partial \varphi}{\partial t} =  \nabla \cdot (D\nabla\varphi).$$

An important example is the case where is at a steady state, i.e. the concentration does not change by time, so that the left part of the above equation is identically zero. In one dimension with constant , the solution for the concentration will be a linear change of concentrations along . In two or more dimensions we obtain

∇²_φ_ = 0

which is Laplace's equation, the solutions to which are referred to by mathematicians as harmonic functions.


Derivation

Fick's second law is a special case of the convection–diffusion equation in which there is no advective flux and no net volumetric source. It can be derived from the continuity equation:

$$\frac{\partial \varphi}{\partial t} + \nabla\cdot\mathbf{j} = R,$$
where is the total flux and is a net volumetric source for . The only source of flux in this situation is assumed to be DIFFUSIVE FLUX:

J_(diffusion) =  − _D_∇_φ_

Plugging the definition of diffusive flux to the continuity equation and assuming there is no source ( 0}}), we arrive at Fick's second law:

$$\frac{\partial \varphi}{\partial t} = D\frac{\partial^2 \varphi}{\partial x^2}$$

If flux were the result of both DIFFUSIVE FLUX and advective flux, the convection–diffusion equation is the result.

Example solution in one dimension: diffusion length

A simple case of diffusion with time in one dimension (taken as the -axis) from a boundary located at position 0}}, where the concentration is maintained at a value is

$$n \left(x,t \right)=n_0 \mathrm{erfc} \left( \frac{x}{2\sqrt{Dt}}\right)$$
.

where is the complementary error function. This is the case when corrosive gases diffuse through the oxidative layer towards the metal surface (if we assume that concentration of gases in the environment is constant and the diffusion space – that is, the corrosion product layer – is _semi-infinite_, starting at 0 at the surface and spreading infinitely deep in the material). If, in its turn, the diffusion space is _infinite_ (lasting both through the layer with 0}}, and that with _n_₀}}, ), then the solution is amended only with coefficient in front of (as the diffusion now occurs in both directions). This case is valid when some solution with concentration is put in contact with a layer of pure solvent. (Bokstein, 2005) The length is called the _diffusion length_ and provides a measure of how far the concentration has propagated in the -direction by diffusion in time (Bird, 1976).

As a quick approximation of the error function, the first 2 terms of the Taylor series can be used:

$$n \left(x,t \right)=n_0 \left[ 1 - 2 \left(\frac{x}{2\sqrt{Dt\pi}}\right) \right]$$

If is time-dependent, the diffusion length becomes

$$2\sqrt{\int_0^{t}D\tau \,d\tau}.$$
. This idea is useful for estimating a diffusion length over a heating and cooling cycle, where varies with temperature.

Generalizations

-   In _non-homogeneous media_, the diffusion coefficient varies in space, _D_(_x_)}}. This dependence does not affect Fick's first law but the second law changes:

$$\frac{\partial \varphi(x,t)}{\partial t}=\nabla\cdot \bigl(D(x) \nabla \varphi(x,t)\bigr)=D(x) \Delta \varphi(x,t)+\sum_{i=1}^3 \frac{\partial D(x)}{\partial x_i} \frac{\partial \varphi(x,t)}{\partial x_i}$$

-   In _anisotropic media_, the diffusion coefficient depends on the direction. It is a symmetric tensor _D_(ij)_}}. Fick's first law changes to

_J_ =  − _D_∇_φ_
,

    it is the product of a tensor and a vector:
    $$J_i=-\sum_{j=1}^3 D_{ij} \frac{\partial \varphi}{\partial x_j}.$$

    For the diffusion equation this formula gives
    $$\frac{\partial \varphi(x,t)}{\partial t}=\nabla\cdot \bigl(D \nabla \varphi(x,t)\bigr)=\sum_{i=1}^3\sum_{j=1}^3D_{ij} \frac{\partial^2 \varphi(x,t)}{\partial x_i \partial x_j}.$$

    The symmetric matrix of diffusion coefficients should be positive definite. It is needed to make the right hand side operator elliptic.

-   For _inhomogeneous anisotropic media_ these two forms of the diffusion equation should be combined in

$$\frac{\partial \varphi(x,t)}{\partial t}=\nabla\cdot \bigl(D(x) \nabla \varphi(x,t)\bigr)=\sum_{i,j=1}^3\left(D_{ij}(x) \frac{\partial^2 \varphi(x,t)}{\partial x_i \partial x_j}+ \frac{\partial D_{ij}(x)}{\partial x_i }  \frac{\partial \varphi(x,t)}{\partial x_j}\right).$$

-   The approach based on Einstein's mobility and Teorell formula gives the following generalization of Fick's equation for the _multicomponent diffusion_ of the perfect components:

$$\frac{\partial \varphi_i}{\partial t}  =\sum_j \nabla\cdot\left(D_{ij} \frac{\varphi_i}{\varphi_j} \nabla \, \varphi_j\right) .$$

    where are concentrations of the components and is the matrix of coefficients. Here, indices and are related to the various components and not to the space coordinates.

The Chapman–Enskog formulae for diffusion in gases include exactly the same terms. These physical models of diffusion are different from the test models ∑_(_j_) _D_(ij)_ Δ_φ_(j)_}} which are valid for very small deviations from the uniform equilibrium. Earlier, such terms were introduced in the Maxwell–Stefan diffusion equation.

For anisotropic multicomponent diffusion coefficients one needs a rank-four tensor, for example , where refer to the components and 1, 2, 3}} correspond to the space coordinates.


Applications

Equations based on Fick's law have been commonly used to model transport processes in foods, neurons, biopolymers, pharmaceuticals, porous soils, population dynamics, nuclear materials, plasma physics, and semiconductor doping processes. Theory of all voltammetric methods is based on solutions of Fick's equation. Much experimental research in polymer science and food science has shown that a more general approach is required to describe transport of components in materials undergoing glass transition. In the vicinity of glass transition the flow behavior becomes "non-Fickian". It can be shown that the Fick's law can be obtained from the Maxwell–Stefan diffusion equations[6] of multi-component mass transfer. The Fick's law is limiting case of the Maxwell–Stefan equations, when the mixture is extremely dilute and every chemical species is interacting only with the bulk mixture and not with other species. To account for the presence of multiple species in a non-dilute mixture, several variations of the Maxwell–Stefan equations are used. See also non-diagonal coupled transport processes (Onsager relationship).

Fick's flow in liquids

When two miscible liquids are brought into contact, and diffusion takes place, the macroscopic (or average) concentration evolves following Fick's law. On a mesoscopic scale, that is, between the macroscopic scale described by Fick's law and molecular scale, where molecular random walks take place, fluctuations cannot be neglected. Such situations can be successfully modeled with Landau-Lifshitz fluctuating hydrodynamics. In this theoretical framework, diffusion is due to fluctuations whose dimensions range from the molecular scale to the macroscopic scale.[7]

In particular, fluctuating hydrodynamic equations include a Fick's flow term, with a given diffusion coefficient, along with hydrodynamics equations and stochastic terms describing fluctuations. When calculating the fluctuations with a perturbative approach, the zero order approximation is Fick's law. The first order gives the fluctuations, and it comes out that fluctuations contribute to diffusion. This represents somehow a tautology, since the phenomena described by a lower order approximation is the result of a higher approximation: this problem is solved only by renormalizing the fluctuating hydrodynamics equations.

Sorption rate and collision frequency of diluted solute

The adsorption or absorption rate of a diluted solute to a surface or interface in a (gas or liquid) solution can be calculated using Fick's laws of diffusion, whose solution is typically a Gaussian function. Considering one dimension that is perpendicular to the surface, the probability of any given solute molecule in the solution hit the surface is the error function of its diffusive broadening over the time of interest. Thus integrate these error functions and integrate it with all solute molecules in the bulk gives the adsorption rate of the solute in unit s^( − 1) to an area of interest:[8]

Diffusive_sorption_probability.png

$$r=\int_{z=0}^\infty A C{\int_{x=z}^\infty \frac {1} {\sqrt{4\pi D t}}e^{-\frac{x^2}{4Dt}}dx}dz=\frac {1}{2} AC\sqrt{\pi Dt}$$

where (all SI units)

-   x is the distance of the probability function from the original location of a solute molecule (time t location references to its location at time 0, Δt = t − 0) (unit m).
-   z is the original distance of the molecule from the surface (unit m).
-   A is the surface area of the surface of interest (unit m²).
-   C is the number concentration of the molecule in the bulk solution (unit m^( − 3)).
-   D is the diffusion constant of the solute molecule (unit m²s^( − 1)).
-   t is the time of interest (unit s).

Note, _D_ is dependent on _t_, and the probability function is slightly non-Gaussian. In the short time limit, in the order of the diffusion time _a_²/_D_, where _a_ is the particle radius, the diffusion is described by the Langevin equation. At a longer time, the Langevin equation merges into the Stokes-Einstein equation. The latter is appropriate for the condition of the diluted solution, where long-range diffusion is considered. According to the fluctuation-dissipation theorem based on the Langevin equation in the long-time limit and when the particle is significantly denser than the surrounding fluid, the time-dependent diffusion constant is:[9]

$$D(t) = \mu \, k_{\rm B} T(1-e^{-t/(m\mu)})$$

where (all SI units)

-   _k__(B) is Boltzmann's constant;
-   _T_ is the absolute temperature.
-   _μ_ is the mobility of the particle in the fluid or gas, which can be calculated using the Einstein relation (kinetic theory).
-   _m_ is the mass of the particle.
-   _t_ is time.

For a single molecule such as organic molecules or biomolecules (e.g proteins) in water, the exponential term is negligible due to the small product of _mμ_ in the picosecond region.

When the area of interest is the size of a molecule (specifically, a _long cylindrical molecule_ such as DNA), the adsorption rate equation represents the collision frequency of two molecules in a diluted solution, with one molecule a specific side and the other no steric dependence, i.e., a molecule (random orientation) hit one side of the other. The diffusion constant need to be updated to the relative diffusion constant between two diffusing molecules. This estimation is especially useful in studying the interaction between a small molecule and a larger molecule such as a protein. The effective diffusion constant is dominated by the smaller one whose diffusion constant can be used instead.

The above hitting rate equation is also useful to predict the kinetics of molecular self-assembly on a surface. Molecules are randomly oriented in the bulk solution. Assuming 1/6 of the molecules has the right orientation to the surface binding sites, i.e. 1/2 of the z-direction in x, y, z three dimensions, thus the concentration of interest is just 1/6 of the bulk concentration. Put this value into the equation one should be able to calculate the theoretical adsorption kinetic curve using the Langmuir adsorption model. In a more rigid picture, 1/6 can be replaced by the steric factor of the binding geometry.

Biological perspective

The first law gives rise to the following formula:[10]

flux =  − _P_(_c_₂−_c_₁)

in which,

-   is the permeability, an experimentally determined membrane "conductance" for a given gas at a given temperature.

-   is the difference in concentration of the gas across the membrane for the direction of flow (from to ).

Fick's first law is also important in radiation transfer equations. However, in this context it becomes inaccurate when the diffusion constant is low and the radiation becomes limited by the speed of light rather than by the resistance of the material the radiation is flowing through. In this situation, one can use a flux limiter.

The exchange rate of a gas across a fluid membrane can be determined by using this law together with Graham's law.

Under the condition of a diluted solution when diffusion takes control, the membrane permeability mentioned in the above section can be theoretically calculated for the solute using the equation mentioned in the last section (use with particular care because the equation is derived for dense solutes, while biological molecules are not denser than water):

$$P= \frac {1}{2}A_p\eta_{tm} \sqrt{\pi Dt}$$

where

-   A_(P) is the total area of the pores on the membrane (unit m²).
-   η_(tm) transmembrane efficiency (unitless), which can be calculated from the stochastic theory of chromatography.
-   _D_ is the diffusion constant of the solute unit m²s^(−1).
-   _t_ is time unit s.
-   _c_₂, _c_₁ concentration should use unit mol m^(−3), so flux unit becomes mol s^(−1).

Semiconductor fabrication applications

Integrated circuit fabrication technologies, model processes like CVD, thermal oxidation, wet oxidation, doping, etc. use diffusion equations obtained from Fick's law.

In certain cases, the solutions are obtained for boundary conditions such as constant source concentration diffusion, limited source concentration, or moving boundary diffusion (where junction depth keeps moving into the substrate).


See also

-   Diffusion
-   Osmosis
-   Mass flux
-   Maxwell–Stefan diffusion
-   Churchill–Bernstein equation
-   Nernst–Planck equation
-   Gas exchange
-   False diffusion
-   Advection


Notes


References

-   -   -   -   -   -   – reprinted in


External links

-   Fick's equations, Boltzmann's transformation, etc. (with figures and animations)
-   Fick's Second Law on OpenStax

de:Diffusion#Erstes Fick’sches Gesetz

Category:Diffusion Category:Statistical mechanics Category:Physical chemistry Category:Mathematics in medicine

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