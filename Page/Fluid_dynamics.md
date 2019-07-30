teardrop shape, assuming a viscous medium passing from left to right, the diagram shows the pressure distribution as the thickness of the black line and shows the velocity in the boundary layer as the violet triangles. The green vortex generators prompt the transition to turbulent flow and prevent back-flow also called flow separation from the high-pressure region in the back. The surface in front is as smooth as possible or even employs shark-like skin, as any turbulence here increases the energy of the airflow. The truncation on the right, known as a Kammback, also prevents backflow from the high-pressure region in the back across the spoilers to the convergent part.]]

In physics and engineering, FLUID DYNAMICS is a subdiscipline of fluid mechanics that describes the flow of fluids—liquids and gases. It has several subdisciplines, including aerodynamics (the study of air and other gases in motion) and HYDRODYNAMICS (the study of liquids in motion). Fluid dynamics has a wide range of applications, including calculating forces and moments on aircraft, determining the mass flow rate of petroleum through pipelines, predicting weather patterns, understanding nebulae in interstellar space and modelling fission weapon detonation,

Fluid dynamics offers a systematic structure—which underlies these practical disciplines—that embraces empirical and semi-empirical laws derived from flow measurement and used to solve practical problems. The solution to a fluid dynamics problem typically involves the calculation of various properties of the fluid, such as flow velocity, pressure, density, and temperature, as functions of space and time.

Before the twentieth century, _hydrodynamics_ was synonymous with fluid dynamics. This is still reflected in names of some fluid dynamics topics, like magnetohydrodynamics and hydrodynamic stability, both of which can also be applied to gases.[1]


Equations

The foundational axioms of fluid dynamics are the conservation laws, specifically, conservation of mass, conservation of linear momentum, and conservation of energy (also known as First Law of Thermodynamics). These are based on classical mechanics and are modified in quantum mechanics and general relativity. They are expressed using the Reynolds transport theorem.

In addition to the above, fluids are assumed to obey the . Fluids are composed of molecules that collide with one another and solid objects. However, the continuum assumption assumes that fluids are continuous, rather than discrete. Consequently, it is assumed that properties such as density, pressure, temperature, and flow velocity are well-defined at infinitesimally small points in space and vary continuously from one point to another. The fact that the fluid is made up of discrete molecules is ignored.

For fluids that are sufficiently dense to be a continuum, do not contain ionized species, and have flow velocities small in relation to the speed of light, the momentum equations for Newtonian fluids are the Navier–Stokes equations—which is a non-linear set of differential equations that describes the flow of a fluid whose stress depends linearly on flow velocity gradients and pressure. The unsimplified equations do not have a general closed-form solution, so they are primarily of use in Computational Fluid Dynamics. The equations can be simplified in a number of ways, all of which make them easier to solve. Some of the simplifications allow some simple fluid dynamics problems to be solved in closed form.

In addition to the mass, momentum, and energy conservation equations, a thermodynamic equation of state that gives the pressure as a function of other thermodynamic variables is required to completely describe the problem. An example of this would be the perfect gas equation of state:

$$p= \frac{\rho R_u T}{M}$$

where _p_ is pressure, ρ is density, _T_ the absolute temperature, while _R_(u)_ is the gas constant and _M_ is molar mass for a particular gas.

Conservation laws

Three conservation laws are used to solve fluid dynamics problems, and may be written in integral or differential form. The conservation laws may be applied to a region of the flow called a _control volume_. A control volume is a discrete volume in space through which fluid is assumed to flow. The integral formulations of the conservation laws are used to describe the change of mass, momentum, or energy within the control volume. Differential formulations of the conservation laws apply Stokes' theorem to yield an expression which may be interpreted as the integral form of the law applied to an infinitesimally small volume (at a point) within the flow.

-   Mass continuity (conservation of mass): The rate of change of fluid mass inside a control volume must be equal to the net rate of fluid flow into the volume. Physically, this statement requires that mass is neither created nor destroyed in the control volume,[2] and can be translated into the integral form of the continuity equation:

$${\partial \over \partial t} \iiint_V \rho \, dV = - \, {}$$

    Above, ρ is the fluid density, U is the flow velocity vector, and _t_ is time. The left-hand side of the above expression is the rate of increase of mass within the volume and contains a triple integral over the control volume, whereas the right-hand side contains an integration over the surface of the control volume of mass convected into the system. Mass flow into the system is accounted as positive, and since the normal vector to the surface is opposite the sense of flow into the system the term is negated. The differential form of the continuity equation is, by the divergence theorem:

$$\ {\partial \rho \over \partial t} + \nabla \cdot (\rho \mathbf{u}) = 0$$

-   Conservation of momentum: Newton's second law of motion applied to a control volume, is a statement that any change in momentum of the fluid within that control volume will be due to the net flow of momentum into the volume and the action of external forces acting on the fluid within the volume.

$$\frac{\partial}{\partial t} \iiint_{\scriptstyle V} \rho\mathbf{u} \, dV = -\, {}$$
(ρU ⋅ dS)U −  $\displaystyle{}+ \iiint_{\scriptstyle V} \rho \mathbf{f}_\text{body} \, dV + \mathbf{F}_\text{surf}$

    In the above integral formulation of this equation, the term on the left is the net change of momentum within the volume. The first term on the right is the net rate at which momentum is convected into the volume. The second term on the right is the force due to pressure on the volume's surfaces. The first two terms on the right are negated since momentum entering the system is accounted as positive, and the normal is opposite the direction of the velocity U and pressure forces. The third term on the right is the net acceleration of the mass within the volume due to any body forces (here represented by _f__(body)). Surface forces, such as viscous forces, are represented by F_(surf), the net force due to shear forces acting on the volume surface. The momentum balance can also be written for a _moving_ control volume.

    The following is the differential form of the momentum conservation equation. Here, the volume is reduced to an infinitesimally small point, and both surface and body forces are accounted for in one total force, _F_. For example, _F_ may be expanded into an expression for the frictional and gravitational forces acting at a point in a flow.
    $$\ {D \mathbf{u} \over D t} = \mathbf{F} - {\nabla p \over \rho}$$

    In aerodynamics, air is assumed to be a Newtonian fluid, which posits a linear relationship between the shear stress (due to internal friction forces) and the rate of strain of the fluid. The equation above is a vector equation in a three-dimensional flow, but it can be expressed as three scalar equations in three coordinate directions. The conservation of momentum equations for the compressible, viscous flow case are called the Navier–Stokes equations.[3]

-   Conservation of energy: Although energy can be converted from one form to another, the total energy in a closed system remains constant.

$$\ \rho {Dh \over Dt} = {D p \over D t} + \nabla \cdot \left( k \nabla T\right) + \Phi$$

    Above, _h_ is enthalpy, _k_ is the thermal conductivity of the fluid, _T_ is temperature, and Φ is the viscous dissipation function. The viscous dissipation function governs the rate at which mechanical energy of the flow is converted to heat. The second law of thermodynamics requires that the dissipation term is always positive: viscosity cannot create energy within the control volume.[4] The expression on the left side is a material derivative.

Compressible vs incompressible flow

All fluids are compressible to some extent; that is, changes in pressure or temperature cause changes in density. However, in many situations the changes in pressure and temperature are sufficiently small that the changes in density are negligible. In this case the flow can be modelled as an incompressible flow. Otherwise the more general compressible flow equations must be used.

Mathematically, incompressibility is expressed by saying that the density ρ of a fluid parcel does not change as it moves in the flow field, i.e.,

    $\frac{\mathrm{D} \rho}{\mathrm{D}t} = 0 \, ,$

where _D_/_Dt_ is the material derivative, which is the sum of local and convective derivatives. This additional constraint simplifies the governing equations, especially in the case when the fluid has a uniform density.

For flow of gases, to determine whether to use compressible or incompressible fluid dynamics, the Mach number of the flow is evaluated. As a rough guide, compressible effects can be ignored at Mach numbers below approximately 0.3. For liquids, whether the incompressible assumption is valid depends on the fluid properties (specifically the critical pressure and temperature of the fluid) and the flow conditions (how close to the critical pressure the actual flow pressure becomes). Acoustic problems always require allowing compressibility, since sound waves are compression waves involving changes in pressure and density of the medium through which they propagate.

Newtonian vs non-Newtonian fluids

]]

All fluids are viscous, meaning that they exert some resistance to deformation: neighbouring parcels of fluid moving at different velocities exert viscous forces on each other. The velocity gradient is referred to as a strain rate; it has dimensions T^( − 1). Isaac Newton showed that for many familiar fluids such as water and air, the stress due to these viscous forces is linearly related to the strain rate. Such fluids are called Newtonian fluids. The coefficient of proportionality is called the fluid's viscosity; for Newtonian fluids, it is a fluid property that is independent of the strain rate.

Non-Newtonian fluids have a more complicated, non-linear stress-strain behaviour. The sub-discipline of rheology describes the stress-strain behaviours of such fluids, which include emulsions and slurries, some viscoelastic materials such as blood and some polymers, and _sticky liquids_ such as latex, honey and lubricants.

Inviscid vs viscous vs Stokes flow

The dynamic of fluid parcels is described with the help of Newton's second law. An accelerating parcel of fluid is subject to inertial effects.

The Reynolds number is a dimensionless quantity which characterises the magnitude of inertial effects compared to the magnitude of viscous effects. A low Reynolds number (_Re_<<1) indicates that viscous forces are very strong compared to inertial forces. In such cases, inertial forces are sometimes neglected; this flow regime is called Stokes or creeping flow.

In contrast, high Reynolds numbers (_Re_>>1) indicate that the inertial effects have more effect on the velocity field than the viscous (friction) effects. In high Reynolds number flows, the flow is often modeled as an inviscid flow, an approximation in which viscosity is completely neglected. Eliminating viscosity allows the Navier–Stokes equations to be simplified into the Euler equations. The integration of the Euler equations along a streamline in an inviscid flow yields Bernoulli's equation. When, in addition to being inviscid, the flow is irrotational everywhere, Bernoulli's equation can completely describe the flow everywhere. Such flows are called potential flows, because the velocity field may be expressed as the gradient of a potential energy expression.

This idea can work fairly well when the Reynolds number is high. However, problems such as those involving solid boundaries may require that the viscosity be included. Viscosity cannot be neglected near solid boundaries because the no-slip condition generates a thin region of large strain rate, the boundary layer, in which viscosity effects dominate and which thus generates vorticity. Therefore, to calculate net forces on bodies (such as wings), viscous flow equations must be used: inviscid flow theory fails to predict drag forces, a limitation known as the d'Alembert's paradox.

A commonly used model, especially in computational fluid dynamics, is to use two flow models: the Euler equations away from the body, and boundary layer equations in a region close to the body. The two solutions can then be matched with each other, using the method of matched asymptotic expansions.

 Steady vs unsteady flow

[5] ]] A flow that is not a function of time is called STEADY FLOW. Steady-state flow refers to the condition where the fluid properties at a point in the system do not change over time. Time dependent flow is known as unsteady (also called transient[6]). Whether a particular flow is steady or unsteady, can depend on the chosen frame of reference. For instance, laminar flow over a sphere is steady in the frame of reference that is stationary with respect to the sphere. In a frame of reference that is stationary with respect to a background flow, the flow is unsteady.

Turbulent flows are unsteady by definition. A turbulent flow can, however, be statistically stationary. According to Pope:[7] This roughly means that all statistical properties are constant in time. Often, the mean field is the object of interest, and this is constant too in a statistically stationary flow.

Steady flows are often more tractable than otherwise similar unsteady flows. The governing equations of a steady problem have one dimension fewer (time) than the governing equations of the same problem without taking advantage of the steadiness of the flow field.

Laminar vs turbulent flow

Turbulence is flow characterized by recirculation, eddies, and apparent randomness. Flow in which turbulence is not exhibited is called laminar. The presence of eddies or recirculation alone does not necessarily indicate turbulent flow—these phenomena may be present in laminar flow as well. Mathematically, turbulent flow is often represented via a Reynolds decomposition, in which the flow is broken down into the sum of an average component and a perturbation component.

It is believed that turbulent flows can be described well through the use of the Navier–Stokes equations. Direct numerical simulation (DNS), based on the Navier–Stokes equations, makes it possible to simulate turbulent flows at moderate Reynolds numbers. Restrictions depend on the power of the computer used and the efficiency of the solution algorithm. The results of DNS have been found to agree well with experimental data for some flows.[8]

Most flows of interest have Reynolds numbers much too high for DNS to be a viable option,[9] given the state of computational power for the next few decades. Any flight vehicle large enough to carry a human (L > 3 m), moving faster than 20 m/s (72 km/h) is well beyond the limit of DNS simulation (Re = 4 million). Transport aircraft wings (such as on an Airbus A300 or Boeing 747) have Reynolds numbers of 40 million (based on the wing chord dimension). Solving these real-life flow problems requires turbulence models for the foreseeable future. Reynolds-averaged Navier–Stokes equations (RANS) combined with turbulence modelling provides a model of the effects of the turbulent flow. Such a modelling mainly provides the additional momentum transfer by the Reynolds stresses, although the turbulence also enhances the heat and mass transfer. Another promising methodology is large eddy simulation (LES), especially in the guise of detached eddy simulation (DES)—which is a combination of RANS turbulence modelling and large eddy simulation.

Subsonic vs transonic, supersonic and hypersonic flows

While many flows (e.g. flow of water through a pipe) occur at low Mach numbers, many flows of practical interest in aerodynamics or in turbomachines occur at high fractions of M=1 (transonic flows) or in excess of it (supersonic or even hypersonic flows). New phenomena occur at these regimes such as instabilities in transonic flow, shock waves for supersonic flow, or non-equilibrium chemical behaviour due to ionization in hypersonic flows. In practice, each of those flow regimes is treated separately.

Reactive vs non-reactive flows

Reactive flows are flows that are chemically reactive, which finds its applications in many areas such as combustion(IC engine), propulsion devices (Rockets, jet engines etc.), detonations, fire and safety hazards, astrophysics etc. In addition to conservation of mass, momentum and energy, conservation of individual species (for example, mass fraction of methane in methane combustion) need to be derived, where the production/depletion rate of any species are obtained by simultaneously solving the equations of chemical kinetics.

Magnetohydrodynamics

Magnetohydrodynamics is the multi-disciplinary study of the flow of electrically conducting fluids in electromagnetic fields. Examples of such fluids include plasmas, liquid metals, and salt water. The fluid flow equations are solved simultaneously with Maxwell's equations of electromagnetism.

Relativistic fluid dynamics

Relativistic fluid dynamics studies the macroscopic and microscopic fluid motion at large velocities comparable to the velocity of light.[10] This branch of fluid dynamics accounts the relativistic effects both from the special theory of relativity and the general theory of relativity. The governing equations are derived in Riemannian geometry for Minkowski spacetime.

Other approximations

There are a large number of other possible approximations to fluid dynamic problems. Some of the more commonly used are listed below.

-   The _Boussinesq approximation_ neglects variations in density except to calculate buoyancy forces. It is often used in free convection problems where density changes are small.
-   _Lubrication theory_ and _Hele–Shaw flow_ exploits the large aspect ratio of the domain to show that certain terms in the equations are small and so can be neglected.
-   _Slender-body theory_ is a methodology used in Stokes flow problems to estimate the force on, or flow field around, a long slender object in a viscous fluid.
-   The _shallow-water equations_ can be used to describe a layer of relatively inviscid fluid with a free surface, in which surface gradients are small.
-   _Darcy's law_ is used for flow in porous media, and works with variables averaged over several pore-widths.
-   In rotating systems, the _quasi-geostrophic equations_ assume an almost perfect balance between pressure gradients and the Coriolis force. It is useful in the study of atmospheric dynamics.


Terminology

The concept of pressure is central to the study of both fluid statics and fluid dynamics. A pressure can be identified for every point in a body of fluid, regardless of whether the fluid is in motion or not. Pressure can be measured using an aneroid, Bourdon tube, mercury column, or various other methods.

Some of the terminology that is necessary in the study of fluid dynamics is not found in other similar areas of study. In particular, some of the terminology used in fluid dynamics is not used in fluid statics.

Terminology in incompressible fluid dynamics

The concepts of total pressure and dynamic pressure arise from Bernoulli's equation and are significant in the study of all fluid flows. (These two pressures are not pressures in the usual sense—they cannot be measured using an aneroid, Bourdon tube or mercury column.) To avoid potential ambiguity when referring to pressure in fluid dynamics, many authors use the term static pressure to distinguish it from total pressure and dynamic pressure. Static pressure is identical to pressure and can be identified for every point in a fluid flow field.

A point in a fluid flow where the flow has come to rest (i.e. speed is equal to zero adjacent to some solid body immersed in the fluid flow) is of special significance. It is of such importance that it is given a special name—a stagnation point. The static pressure at the stagnation point is of special significance and is given its own name—stagnation pressure. In incompressible flows, the stagnation pressure at a stagnation point is equal to the total pressure throughout the flow field.

Terminology in compressible fluid dynamics

In a compressible fluid, it is convenient to define the total conditions (also called stagnation conditions) for all thermodynamic state properties (e.g. total temperature, total enthalpy, total speed of sound). These total flow conditions are a function of the fluid velocity and have different values in frames of reference with different motion.

To avoid potential ambiguity when referring to the properties of the fluid associated with the state of the fluid rather than its motion, the prefix "static" is commonly used (e.g. static temperature, static enthalpy). Where there is no prefix, the fluid property is the static condition (i.e. "density" and "static density" mean the same thing). The static conditions are independent of the frame of reference.

Because the total flow conditions are defined by isentropically bringing the fluid to rest, there is no need to distinguish between total entropy and static entropy as they are always equal by definition. As such, entropy is most commonly referred to as simply "entropy".


See also

Fields of study

-   Acoustic theory
-   Aerodynamics
-   Aeroelasticity
-   Aeronautics
-   Computational fluid dynamics
-   Flow measurement
-   Geophysical fluid dynamics
-   Hemodynamics
-   Hydraulics
-   Hydrology
-   Hydrostatics
-   Electrohydrodynamics
-   Magnetohydrodynamics
-   Metafluid dynamics
-   Quantum hydrodynamics

Mathematical equations and concepts

-   Airy wave theory
-   Benjamin–Bona–Mahony equation
-   Boussinesq approximation (water waves)
-   Different types of boundary conditions in fluid dynamics
-   Helmholtz's theorems
-   Kirchhoff equations
-   Knudsen equation
-   Manning equation
-   Mild-slope equation
-   Morison equation
-   Navier–Stokes equations
-   Oseen flow
-   Poiseuille's law
-   Pressure head
-   Relativistic Euler equations
-   Stokes stream function
-   Stream function
-   Streamlines, streaklines and pathlines
-   Torricelli's Law

Types of fluid flow

-   Aerodynamic force
-   Cavitation
-   Compressible flow
-   Couette flow
-   Free molecular flow
-   Incompressible flow
-   Inviscid flow
-   Isothermal flow
-   Open channel flow
-   Pipe flow
-   Secondary flow
-   Stream thrust averaging
-   Superfluidity
-   Transient flow
-   Two-phase flow

Fluid properties

-   List of hydrodynamic instabilities
-   Newtonian fluid
-   Non-Newtonian fluid
-   Surface tension
-   Vapour pressure

Fluid phenomena

-   Balanced flow
-   Boundary layer
-   Coanda effect
-   Convection cell
-   Convergence/Bifurcation
-   Darwin drift
-   Drag (force)
-   Hydrodynamic stability
-   Kaye effect
-   Lift (force)
-   Magnus effect
-   Ocean current
-   Ocean surface waves
-   Rossby wave
-   Shock wave
-   Soliton
-   Stokes drift
-   Thread breakup
-   Turbulent jet breakup
-   Upstream contamination
-   Venturi effect
-   Vortex
-   Water hammer
-   Wave drag
-   Wind

Applications

-   Acoustics
-   Aerodynamics
-   Cryosphere science
-   Fluid power
-   Geodynamics
-   Hydraulic machinery
-   Meteorology
-   Naval architecture
-   Oceanography
-   Plasma physics
-   Pneumatics
-   3D computer graphics

Fluid dynamics journals

-   _Annual Review of Fluid Mechanics_
-   _Journal of Fluid Mechanics_
-   _Physics of Fluids_
-   _Experiments in Fluids_
-   _European Journal of Mechanics B: Fluids_
-   _Theoretical and Computational Fluid Dynamics_
-   _Computers and Fluids_
-   _International Journal for Numerical Methods in Fluids_
-   _Flow, Turbulence and Combustion_

Miscellaneous

-   Important publications in fluid dynamics
-   Isosurface
-   Keulegan–Carpenter number
-   Rotating tank
-   Sound barrier
-   Beta plane
-   Immersed boundary method
-   Bridge scour
-   Finite volume method for unsteady flow

See also

-   Aileron
-   Airplane
-   Angle of attack
-   Banked turn
-   Bernoulli's principle
-   Bilgeboard
-   Boomerang
-   Centerboard
-   Chord (aircraft)
-   Circulation control wing
-   Currentology
-   Diving plane
-   Downforce
-   Drag coefficient
-   Fin
-   Flipper (anatomy)
-   Flow separation
-   Foil (fluid mechanics)
-   Fluid coupling
-   Gas kinetics
-   Hydrofoil
-   Keel (hydrodynamic)
-   Küssner effect
-   Kutta condition
-   Kutta–Joukowski theorem
-   Lift coefficient
-   Lift-induced drag
-   Lift-to-drag ratio
-   Lifting-line theory
-   NACA airfoil
-   Newton's third law
-   Propeller
-   Pump
-   Rudder
-   Sail (aerodynamics)
-   Skeg
-   Spoiler (automotive)
-   Stall (flight)
-   Surfboard fin
-   Surface science
-   Torque converter
-   Trim tab
-   Wing
-   Wingtip vortices


References


Further reading

-   -   -   -   -   Originally published in 1879, the 6th extended edition appeared first in 1932.

-   -   Originally published in 1938.

-   -   -   -   Encyclopedia: Fluid dynamics Scholarpedia


External links

-   National Committee for Fluid Mechanics Films (NCFMF), containing films on several subjects in fluid dynamics (in RealMedia format)
-   List of Fluid Dynamics books

ja:流体力学

Fluid_dynamics Fluid_mechanics Category:Piping Category:Aerodynamics Category:Continuum mechanics

[1]

[2]

[3]

[4]

[5] Shengtai Li, Hui Li "Parallel AMR Code for Compressible MHD or HD Equations" (Los Alamos National Laboratory) 1

[6]

[7] See Pope (2000), p. 75.

[8] See, for example, Schlatter et al, Phys. Fluids 21, 051702 (2009);

[9] See Pope (2000), p. 344.

[10]