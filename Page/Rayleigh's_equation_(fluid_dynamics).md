OS_schematic.svg In fluid dynamics, RAYLEIGH'S EQUATION or RAYLEIGH STABILITY EQUATION is a linear ordinary differential equation to study the hydrodynamic stability of a parallel, incompressible and inviscid shear flow. The equation is:[1]

(_U_ − _c_)(_φ_″ − _k_²_φ_) − _U_″_φ_ = 0,

with U(z) the flow velocity of the steady base flow whose stability is to be studied and z is the cross-stream direction (i.e. perpendicular to the flow direction). Further φ(z) is the complex valued amplitude of the infinitesimal streamfunction perturbations applied to the base flow, k is the wavenumber of the perturbations and c is the phase speed with which the perturbations propagate in the flow direction. The prime denotes differentiation with respect to z.


Background

The equation is named after Lord Rayleigh, who introduced it in 1880.[2] The Orr–Sommerfeld equation – introduced later, for the study of stability of parallel viscous flow – reduces to Rayleigh's equation when the viscosity is zero.[3]

Rayleigh's equation, together with appropriate boundary conditions, most often poses an eigenvalue problem. For given (real-valued) wavenumber k and mean flow velocity U(z), the eigenvalues are the phase speeds c, and the eigenfunctions are the associated streamfunction amplitudes φ(z). In general, the eigenvalues form a continuous spectrum. In certain cases additional there may be a discrete spectrum of pairs on complex conjugate values of c. Since the wavenumber k occurs only as a square k² in Rayleigh's equation, a solution (i.e. φ(z) and c) for wavenumber  + k is also a solution for the wavenumber  − k.[4]

Rayleigh's equation only concerns two-dimensional perturbations to the flow. From Squire's theorem it follows that the two-dimensional perturbations are less stable than three-dimensional perturbations.

Kelvins_cat_eye_pattern_streamlines.svg If a real-valued phase speed c is in between the minimum and maximum of U(z), the problem has so-called CRITICAL LAYERS near z = z_(crit) where U(z_(crit)) = c. At the critical layers Rayleigh's equation becomes singular. These were first being studied by Lord Kelvin, also in 1880.[5] His solution gives rise to a so-called _cat's eye pattern_ of streamlines near the critical layer, when observed in a frame of reference moving with the phase speed c.[6]


Derivation

Consider a parallel shear flow U(z) in the x direction, which varies only in the cross-flow direction z.[7] The stability of the flow is studied by adding small perturbations to the flow velocity u(x, z, t) and w(x, z, t) in the x and z directions, respectively. The flow is described using the incompressible Euler equations, which become after linearization – using velocity components U(z) + u(x, z, t) and w(x, z, t):

$$\begin{align}
  &\partial_t u + U \, \partial_x u + w\, U' = -\frac 1 \rho \partial_x p,
  \\
  &\partial_t w + U \, \partial_x w = -\frac 1 \rho \partial_z p
  \qquad \text{and}
  \\
  &\partial_x u + \partial_z w = 0,
\end{align}$$

with ∂_(t) the partial derivative operator with respect to time, and similarly ∂_(x) and ∂_(z) with respect to x and z. The pressure fluctuations p(x, z, t) ensure that the continuity equation ∂_(x)u + ∂_(z)w = 0 is fulfilled. The fluid density is denoted as ρ and is a constant in the present analysis. The prime U′ denotes differentiation of U(z) with respect to its argument z.

The flow oscillations u and w are described using a streamfunction ψ(x, z, t), ensuring that the continuity equation is satisfied:

_u_ =  + ∂_(_z_)_ψ_  and  _w_ =  − ∂_(_x_)_ψ_.

Taking the z- and x-derivatives of the x- and z-momentum equation, and thereafter subtracting the two equations, the pressure p can be eliminated:

∂_(_t_)(∂_(_x_)²_ψ_+∂_(_z_)²_ψ_) + _U_ ∂_(_x_)(∂_(_x_)²_ψ_+∂_(_z_)²_ψ_) − _U_″ ∂_(_x_)_ψ_ = 0,

which is essentially the vorticity transport equation, ∂_(x)²ψ + ∂_(z)²ψ being (minus) the vorticity.

Next, sinusoidal fluctuations are considered:

_ψ_(_x_, _z_, _t_) = ℜ{_φ_(_z_) exp(_i__k_(_x_−_c__t_))},

with φ(z) the complex-valued amplitude of the streamfunction oscillations, while i is the imaginary unit (i² =  − 1) and ℜ{⋅} denotes the real part of the expression between the brackets. Using this in the vorticity transport equation, Rayleigh's equation is obtained.

The boundary conditions for flat impermeable walls follow from the fact that the streamfunction is a constant at them. So at impermeable walls the streamfunction oscillations are zero, i.e. φ = 0. For unbounded flows the common boundary conditions are that lim_(z →  ± ∞)φ(z) = 0.


Notes


References

-   -   -   -   -   -

Category:Fluid dynamics Category:Equations of fluid dynamics

[1]

[2]

[3]

[4]

[5]

[6]

[7]