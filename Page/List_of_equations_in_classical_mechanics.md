Classical mechanics is the branch of physics used to describe the motion of macroscopic objects.[1] It is the most familiar of the theories of physics. The concepts it covers, such as mass, acceleration, and force, are commonly used and known.[2] The subject is based upon a three-dimensional Euclidean space with fixed axes, called a frame of reference. The point of concurrency of the three axes is known as the origin of the particular space.[3]

Classical mechanics utilises many equations—as well as other mathematical concepts—which relate various physical quantities to one another. These include differential equations, manifolds, Lie groups, and ergodic theory.[4] This page gives a summary of the most important of these.

This article lists equations from Newtonian mechanics, see analytical mechanics for the more general formulation of classical mechanics (which includes Lagrangian and Hamiltonian mechanics).


Classical mechanics

Mass and inertia

+------------------------------------------+----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+---------------+
| Quantity (common name/s)                 | (Common) symbol/s                                                                            | Defining equation                                                                                                                                       | SI units                   | Dimension     |
+==========================================+==============================================================================================+=========================================================================================================================================================+============================+===============+
| Linear, surface, volumetric mass density | _λ_ or _μ_ (especially in acoustics, see below) for Linear, _σ_ for surface, _ρ_ for volume. | m = ∫λdℓ m = ∬σdS                                                                                                                                       | kg m^(−_n_), _n_ = 1, 2, 3 | [M][L]^(−_n_) |
|                                          |                                                                                              |                                                                                                                                                         |                            |               |
|                                          |                                                                                              | m = ∭ρdV                                                                                                                                                |                            |               |
+------------------------------------------+----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+---------------+
| Moment of mass [5]                       | M (No common symbol)                                                                         | Point mass:                                                                                                                                             | kg m                       | [M][L]        |
|                                          |                                                                                              | M = Rm                                                                                                                                                  |                            |               |
|                                          |                                                                                              |                                                                                                                                                         |                            |               |
|                                          |                                                                                              | Discrete masses about an axis x_(i):                                                                                                                    |                            |               |
|                                          |                                                                                              | $\mathbf{m} = \sum_{i=1}^N \mathbf{r}_\mathrm{i} m_i$                                                                                                   |                            |               |
|                                          |                                                                                              |                                                                                                                                                         |                            |               |
|                                          |                                                                                              | Continuum of mass about an axis x_(i):                                                                                                                  |                            |               |
|                                          |                                                                                              | M = ∫ρ(R)x_(i)dR                                                                                                                                        |                            |               |
+------------------------------------------+----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+---------------+
| Center of mass                           | R_(com) (Symbols vary)                                                                       | _i_^(th) moment of mass M_(i) = R_(i)m_(i)                                                                                                              | m                          | [L]           |
|                                          |                                                                                              |                                                                                                                                                         |                            |               |
|                                          |                                                                                              | Discrete masses:                                                                                                                                        |                            |               |
|                                          |                                                                                              | $\mathbf{r}_\mathrm{com} = \frac{1}{M}\sum_i \mathbf{r}_\mathrm{i} m_i = \frac{1}{M}\sum_i \mathbf{m}_\mathrm{i}$                                       |                            |               |
|                                          |                                                                                              |                                                                                                                                                         |                            |               |
|                                          |                                                                                              | Mass continuum:                                                                                                                                         |                            |               |
|                                          |                                                                                              | $\mathbf{r}_\mathrm{com} = \frac{1}{M}\int \mathrm{d}\mathbf{m} = \frac{1}{M}\int \mathbf{r} \mathrm{d}m = \frac{1}{M}\int \mathbf{r} \rho \mathrm{d}V$ |                            |               |
+------------------------------------------+----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+---------------+
| 2-Body reduced mass                      | _m_₁₂, _μ_ Pair of masses = _m_₁ and _m_₂                                                    | μ = (m₁m₂)/(m₁+m₂)                                                                                                                                      | kg                         | [M]           |
+------------------------------------------+----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+---------------+
| Moment of inertia (MOI)                  | _I_                                                                                          | Discrete Masses:                                                                                                                                        | kg m²                      | [M][L]²       |
|                                          |                                                                                              | I = ∑_(i)M_(i) ⋅ R_(i) = ∑_(i)|R_(i)|²m                                                                                                                 |                            |               |
|                                          |                                                                                              |                                                                                                                                                         |                            |               |
|                                          |                                                                                              | Mass continuum:                                                                                                                                         |                            |               |
|                                          |                                                                                              | I = ∫|R|²dm = ∫R ⋅ dM = ∫|R|²ρdV                                                                                                                        |                            |               |
+------------------------------------------+----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+---------------+

Derived kinematic quantities

  Quantity (common name/s)   (Common) symbol/s   Defining equation        SI units     Dimension
  -------------------------- ------------------- ------------------------ ------------ -------------
  Velocity                   V                   V = dR/dt                m s^(−1)     [L][T]^(−1)
  Acceleration               A                   A = dV/dt = d²R/dt²      m s^(−2)     [L][T]^(−2)
  Jerk                       J                   J = dA/dt = d³R/dt³      m s^(−3)     [L][T]^(−3)
  Jounce                     S                   S = dJ/dt = d⁴R/dt⁴      m s^(−4)     [L][T]^(−4)
  Angular velocity           Ω                   Ω = N̂(dθ/dt)             rad s^(−1)   [T]^(−1)
  Angular Acceleration       Α                   Α = dΩ/dt = N̂(d²θ/dt²)   rad s^(−2)   [T]^(−2)
  Angular jerk               Ζ                   Ζ = dΑ/dt = N̂(d³θ/dt³)   rad s^(−3)   [T]^(−3)

Derived dynamic quantities

I and angular velocity Ω (L is not always parallel to Ω)[6]
BOTTOM: momentum P and its radial position R from the axis.
The total angular momentum (spin + orbital) is J.]]

+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+
| Quantity (common name/s)                            | (Common) symbol/s     | Defining equation                                                                                       | SI units           | Dimension       |
+=====================================================+=======================+=========================================================================================================+====================+=================+
| Momentum                                            | P                     | P = mV                                                                                                  | kg m s^(−1)        | [M][L][T]^(−1)  |
+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+
| Force                                               | F                     | F = dP/dt                                                                                               | N = kg m s^(−2)    | [M][L][T]^(−2)  |
+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+
| Impulse                                             | J, ΔP, I              | J = ΔP = ∫_(t₁)^(t₂)Fdt                                                                                 | kg m s^(−1)        | [M][L][T]^(−1)  |
+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+
| Angular momentum about a position point R₀,         | L, J, S               | L = (R−R₀) × P                                                                                          | kg m² s^(−1)       | [M][L]²[T]^(−1) |
|                                                     |                       |                                                                                                         |                    |                 |
|                                                     |                       | Most of the time we can set R₀ = 0 if particles are orbiting about axes intersecting at a common point. |                    |                 |
+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+
| Moment of a force about a position point R₀, Torque | Τ, M                  | Τ = (R−R₀) × F = dL/dt                                                                                  | N m = kg m² s^(−2) | [M][L]²[T]^(−2) |
+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+
| Angular impulse                                     | ΔL (no common symbol) | ΔL = ∫_(t₁)^(t₂)Τdt                                                                                     | kg m² s^(−1)       | [M][L]²[T]^(−1) |
+-----------------------------------------------------+-----------------------+---------------------------------------------------------------------------------------------------------+--------------------+-----------------+

General energy definitions

  Quantity (common name/s)                       (Common) symbol/s     Defining equation      SI units                 Dimension
  ---------------------------------------------- --------------------- ---------------------- ------------------------ -----------------
  Mechanical work due to a Resultant Force       _W_                   W = ∫_(C)F ⋅ dR        J = N m = kg m² s^(−2)   [M][L]²[T]^(−2)
  Work done ON mechanical system, Work done BY   _W__(ON), _W__(BY)    ΔW_(ON) =  − ΔW_(BY)   J = N m = kg m² s^(−2)   [M][L]²[T]^(−2)
  Potential energy                               _φ, Φ, U, V, E_(p)_   ΔW =  − ΔV             J = N m = kg m² s^(−2)   [M][L]²[T]^(−2)
  Mechanical power                               _P_                   P = dE/dt              W = J s^(−1)             [M][L]²[T]^(−3)

Every conservative force has a potential energy. By following two principles one can consistently assign a non-relative value to _U_:

-   Wherever the force is zero, its potential energy is defined to be zero as well.
-   Whenever the force does work, potential energy is lost.

Generalized mechanics

+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+
| Quantity (common name/s)              | (Common) symbol/s                | Defining equation                                                                                     | SI units           | Dimension          |
+=======================================+==================================+=======================================================================================================+====================+====================+
| Generalized coordinates               | _q, Q_                           |                                                                                                       | varies with choice | varies with choice |
+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+
| Generalized velocities                | q̇, Q̇                             | q̇ ≡ dq/dt                                                                                             | varies with choice | varies with choice |
+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+
| Generalized momenta                   | _p, P_                           | p = ∂L/∂q̇                                                                                             | varies with choice | varies with choice |
+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+
| Lagrangian                            | _L_                              | L(Q, Q̇, t) = T(Q̇) − V(Q, Q̇, t)                                                                        | J                  | [M][L]²[T]^(−2)    |
|                                       |                                  |                                                                                                       |                    |                    |
|                                       |                                  | where Q = Q(t) and P = P(_t_) are vectors of the generalized coords and momenta, as functions of time |                    |                    |
+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+
| Hamiltonian                           | _H_                              | H(P, Q, t) = P ⋅ Q̇ − L(Q, Q̇, t)                                                                       | J                  | [M][L]²[T]^(−2)    |
+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+
| Action, Hamilton's principal function | _S_, $\scriptstyle{\mathcal{S}}$ | 𝒮 = ∫_(t₁)^(t₂)L(Q, Q̇, t)dt                                                                           | J s                | [M][L]²[T]^(−1)    |
+---------------------------------------+----------------------------------+-------------------------------------------------------------------------------------------------------+--------------------+--------------------+


Kinematics

In the following rotational definitions, the angle can be any angle about the specified axis of rotation. It is customary to use _θ_, but this does not have to be the polar angle used in polar coordinate systems. The unit axial vector

N̂ = Ê_(_r_) × Ê_(_θ_)

defines the axis of rotation, $\scriptstyle \mathbf{\hat{e}}_r$ = unit vector in direction of R, $\scriptstyle \mathbf{\hat{e}}_\theta$ = unit vector tangential to the angle.

+--------------+---------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | Translation                                                                                       | Rotation                                                                                                                                                                             |
+==============+===================================================================================================+======================================================================================================================================================================================+
| Velocity     | Average:                                                                                          | Angular velocity                                                                                                                                                                     |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | $$\mathbf{v}_{\mathrm{average}} = {\Delta \mathbf{r} \over \Delta t}$$                            | $$\boldsymbol{\omega} = \mathbf{\hat{n}}\frac{{\rm d} \theta}{{\rm d} t}$$                                                                                                           |
|              | Instantaneous:                                                                                    |                                                                                                                                                                                      |
|              |                                                                                                   | Rotating rigid body:                                                                                                                                                                 |
|              | $$\mathbf{v} = {d\mathbf{r} \over dt}$$                                                           |                                                                                                                                                                                      |
|              |                                                                                                   | V = Ω × R                                                                                                                                                                            |
+--------------+---------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Acceleration | Average:                                                                                          | Angular acceleration                                                                                                                                                                 |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | $$\mathbf{a}_{\mathrm{average}} = \frac{\Delta\mathbf{v}}{\Delta t}$$                             | $$\boldsymbol{\alpha} = \frac{{\rm d} \boldsymbol{\omega}}{{\rm d} t} = \mathbf{\hat{n}}\frac{{\rm d}^2 \theta}{{\rm d} t^2}$$                                                       |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | Instantaneous:                                                                                    | Rotating rigid body:                                                                                                                                                                 |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | $$\mathbf{a} = \frac{d\mathbf{v}}{dt} = \frac{d^2\mathbf{r}}{dt^2}$$                              | A = Α × R + Ω × V                                                                                                                                                                    |
+--------------+---------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Jerk         | Average:                                                                                          | Angular jerk                                                                                                                                                                         |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | $$\mathbf{j}_{\mathrm{average}} = \frac{\Delta\mathbf{a}}{\Delta t}$$                             | $$\boldsymbol{\zeta} = \frac{{\rm d} \boldsymbol{\alpha}}{{\rm d} t} = \mathbf{\hat{n}}\frac{{\rm d}^2 \omega}{{\rm d} t^2} = \mathbf{\hat{n}}\frac{{\rm d}^3 \theta}{{\rm d} t^3}$$ |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | Instantaneous:                                                                                    | Rotating rigid body:                                                                                                                                                                 |
|              |                                                                                                   |                                                                                                                                                                                      |
|              | $$\mathbf{j} = \frac{d\mathbf{a}}{dt} = \frac{d^2\mathbf{v}}{dt^2} = \frac{d^3\mathbf{r}}{dt^3}$$ | J = Ζ × R + Α × A                                                                                                                                                                    |
+--------------+---------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Dynamics

+----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
|                            | Translation                                                                                                                                                                                                                  | Rotation                                                                                                                                                 |
+============================+==============================================================================================================================================================================================================================+==========================================================================================================================================================+
| Momentum                   | Momentum is the "amount of translation"                                                                                                                                                                                      | Angular momentum                                                                                                                                         |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            |     P = mV                                                                                                                                                                                                                   | Angular momentum is the "amount of rotation":                                                                                                            |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            | For a rotating rigid body:                                                                                                                                                                                                   | L = R × P = I ⋅ Ω                                                                                                                                        |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            | P = Ω × M                                                                                                                                                                                                                    | and the cross-product is a pseudovector i.e. if R and P are reversed in direction (negative), L is not.                                                  |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            |                                                                                                                                                                                                                              | In general I is an order-2 tensor, see above for its components. The dot · indicates tensor contraction.                                                 |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Force and Newton's 2nd law | Resultant force acts on a system at the center of mass, equal to the rate of change of momentum:                                                                                                                             | Torque                                                                                                                                                   |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            | $$\begin{align} \mathbf{F} & = \frac{d\mathbf{p}}{dt} = \frac{d(m\mathbf{v})}{dt} \\                                                                                                                                         | Torque Τ is also called moment of a force, because it is the rotational analogue to force:[8]                                                            |
|                            | & = m\mathbf{a} + \mathbf{v}\frac{{\rm d}m}{{\rm d}t} \\                                                                                                                                                                     |                                                                                                                                                          |
|                            | \end{align}$$                                                                                                                                                                                                                | $$\boldsymbol{\tau} = \frac{{\rm d}\mathbf{L}}{{\rm d}t} = \mathbf{r}\times\mathbf{F} = \frac{{\rm d}(\mathbf{I} \cdot \boldsymbol{\omega})}{{\rm d}t}$$ |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            | For a number of particles, the equation of motion for one particle _i_ is:[7]                                                                                                                                                | For rigid bodies, Newton's 2nd law for rotation takes the same form as for translation:                                                                  |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            | $$\frac{\mathrm{d}\mathbf{p}_i}{\mathrm{d}t} = \mathbf{F}_{E} + \sum_{i \neq j} \mathbf{F}_{ij}$$                                                                                                                            | $$\begin{align}                                                                                                                                          |
|                            |                                                                                                                                                                                                                              | \boldsymbol{\tau} & = \frac{{\rm d}\mathbf{L}}{{\rm d}t} = \frac{{\rm d}(\mathbf{I}\cdot\boldsymbol{\omega})}{{\rm d}t} \\                               |
|                            | where P_(_i_) = momentum of particle _i_, F_(_ij_) = force _ON_ particle _i_ _BY_ particle _j_, and F_(_E_) = resultant external force (due to any agent not part of system). Particle _i_ does not exert a force on itself. | & = \frac{{\rm d}\mathbf{I}}{{\rm d}t}\cdot\boldsymbol{\omega} + \mathbf{I}\cdot\boldsymbol{\alpha} \\                                                   |
|                            |                                                                                                                                                                                                                              | \end{align}$$                                                                                                                                            |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            |                                                                                                                                                                                                                              | Likewise, for a number of particles, the equation of motion for one particle _i_ is:[9]                                                                  |
|                            |                                                                                                                                                                                                                              |                                                                                                                                                          |
|                            |                                                                                                                                                                                                                              | $$\frac{\mathrm{d}\mathbf{L}_i}{\mathrm{d}t} = \boldsymbol{\tau}_E + \sum_{i \neq j} \boldsymbol{\tau}_{ij}$$                                            |
|                            |                                                                                                                                                                                                                              | |- valign="top"|-valign="top"                                                                                                                            |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

Precession

The precession angular speed of a spinning top is given by:

$$\boldsymbol{\Omega} = \frac{wr}{I\boldsymbol{\omega}}$$

where _w_ is the weight of the spinning flywheel.


Energy

The mechanical work done by an external agent on a system is equal to the change in kinetic energy of the system:

General work-energy theorem (translation and rotation)

The work done _W_ by an external agent which exerts a force F (at R) and torque Τ on an object along a curved path _C_ is:

_W_ = _Δ__T_ = ∫_(_C_)(F⋅_d_R+Τ⋅N_d__θ_)

where θ is the angle of rotation about an axis defined by a unit vector N.

Kinetic energy

$$\Delta E_k = W = \frac{1}{2} m(v^2 - {v_0}^2)$$

Elastic potential energy

For a stretched spring fixed at one end obeying Hooke's law:

$$\Delta E_p =  \frac{1}{2} k(r_2-r_1)^2$$

where _r_₂ and _r_₁ are collinear coordinates of the free end of the spring, in the direction of the extension/compression, and k is the spring constant.


Euler's equations for rigid body dynamics

Euler also worked out analogous laws of motion to those of Newton, see Euler's laws of motion. These extend the scope of Newton's laws to rigid bodies, but are essentially the same as above. A new equation Euler formulated is:[10]

I ⋅ Α + Ω × (I⋅Ω) = Τ

where I is the moment of inertia tensor.


General planar motion

The previous equations for planar motion can be used here: corollaries of momentum, angular momentum etc. can immediately follow by applying the above definitions. For any object moving in any path in a plane,

R = R(_t_) = _r_Ê_(_r_)

the following general results apply to the particle.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Kinematics                                                                                                                                                                                    | Dynamics                                                                                                                                               |
+===============================================================================================================================================================================================+========================================================================================================================================================+
| Position R = R(r,θ,t) = rÊ_(r)                                                                                                                                                                |                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Velocity                                                                                                                                                                                      | Momentum                                                                                                                                               |
|                                                                                                                                                                                               |                                                                                                                                                        |
| $$\mathbf{v} = \mathbf{\hat{e}}_r \frac{\mathrm{d} r}{\mathrm{d}t} + r \omega \mathbf{\hat{e}}_\theta$$                                                                                       | $$\mathbf{p} = m \left(\mathbf{\hat{e}}_r \frac{\mathrm{d} r}{\mathrm{d}t} + r \omega \mathbf{\hat{e}}_\theta \right)$$                                |
|                                                                                                                                                                                               |                                                                                                                                                        |
|                                                                                                                                                                                               | Angular momenta $\mathbf{L} = m \mathbf{r}\times \left(\mathbf{\hat{e}}_r \frac{\mathrm{d} r}{\mathrm{d}t} + r \omega \mathbf{\hat{e}}_\theta \right)$ |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Acceleration                                                                                                                                                                                  | The centripetal force is                                                                                                                               |
|                                                                                                                                                                                               |                                                                                                                                                        |
| $$\mathbf{a} =\left ( \frac{\mathrm{d}^2 r}{\mathrm{d}t^2} - r\omega^2\right )\mathbf{\hat{e}}_r + \left ( r \alpha + 2 \omega \frac{\mathrm{d}r}{{\rm d}t} \right )\mathbf{\hat{e}}_\theta$$ | F_(⊥) =  − _m__ω_²_R_Ê_(_r_) =  − _ω_²M                                                                                                                |
|                                                                                                                                                                                               |                                                                                                                                                        |
|                                                                                                                                                                                               | where again M is the mass moment, and the coriolis force is                                                                                            |
|                                                                                                                                                                                               |                                                                                                                                                        |
|                                                                                                                                                                                               | $$\mathbf{F}_c = 2\omega m \frac{{\rm d}r}{{\rm d}t} \mathbf{\hat{e}}_\theta = 2\omega m v \mathbf{\hat{e}}_\theta$$                                   |
|                                                                                                                                                                                               |                                                                                                                                                        |
|                                                                                                                                                                                               | The Coriolis acceleration and force can also be written:                                                                                               |
|                                                                                                                                                                                               |                                                                                                                                                        |
|                                                                                                                                                                                               | F_(_c_) = _m_A_(_c_) =  − 2_m_Ω × V                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Central force motion

For a massive body moving in a central potential due to another object, which depends only on the radial separation between the centers of masses of the two objects, the equation of motion is:

    $\frac{d^2}{d\theta^2}\left(\frac{1}{\mathbf{r}}\right) + \frac{1}{\mathbf{r}} = -\frac{\mu\mathbf{r}^2}{\mathbf{l}^2}\mathbf{F}(\mathbf{r})$


Equations of motion (constant acceleration)

These equations can be used only when acceleration is constant. If acceleration is not constant then the general calculus equations above must be used, found by integrating the definitions of position, velocity and acceleration (see above).

  Linear motion                       Angular motion
  ----------------------------------- -------------------------------------------------
  v = v₀ + at                         ω₁ = ω₀ + αt
  $s = \frac {1} {2}(v_0+v) t$        $\theta = \frac{1}{2}(\omega _0 + \omega _1)t$
  $s = v_0 t + \frac {1} {2} a t^2$   $\theta = \omega _0 t + \frac{1}{2} \alpha t^2$
  v² = v₀² + 2as                      ω₁² = ω₀² + 2αθ
  $s = v t - \frac{1}{2} a t^2$       $\theta = \omega _1 t - \frac{1}{2} \alpha t^2$


Galilean frame transforms

For classical (Galileo-Newtonian) mechanics, the transformation law from one inertial or accelerating (including rotation) frame (reference frame traveling at constant velocity - including zero) to another is the Galilean transform.

Unprimed quantities refer to position, velocity and acceleration in one frame F; primed quantities refer to position, velocity and acceleration in another frame F' moving at translational velocity V or angular velocity Ω relative to F. Conversely F moves at velocity (—V or —Ω) relative to F'. The situation is similar for relative accelerations.

+--------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------+
| Motion of entities                                                                                                 | Inertial frames           | Accelerating frames         |
+====================================================================================================================+===========================+=============================+
| TRANSLATION                                                                                                        | Relative position         | Relative accelerations      |
|                                                                                                                    | R′ = R + Vt               | A′ = A + A                  |
| V = Constant relative velocity between two inertial frames F and F'.                                               | Relative velocity         | Apparent/fictitious forces  |
| A = (Variable) relative acceleration between two accelerating frames F and F'.                                     | V′ = V + V                | F′ = F − F_(app)            |
|                                                                                                                    | Equivalent accelerations  |                             |
|                                                                                                                    | A′ = A                    |                             |
+--------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------+
| ROTATION                                                                                                           | Relative angular position | Relative accelerations      |
|                                                                                                                    | θ′ = θ + Ωt               | Α′ = Α + Λ                  |
| Ω = Constant relative angular velocity between two frames F and F'.                                                | Relative velocity         | Apparent/fictitious torques |
| Λ = (Variable) relative angular acceleration between two accelerating frames F and F'.                             | Ω′ = Ω + Ω                | Τ′ = Τ − Τ_(app)            |
|                                                                                                                    | Equivalent accelerations  |                             |
|                                                                                                                    | Α′ = Α                    |                             |
+--------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------+
| Transformation of any vector T to a rotating frame                                                                 |                           |                             |
| $\frac{{\rm d}\mathbf{T}'}{{\rm d}t} = \frac{{\rm d}\mathbf{T}}{{\rm d}t} - \boldsymbol{\Omega} \times \mathbf{T}$ |                           |                             |
+--------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------+


Mechanical oscillators

SHM, DHM, SHO, and DHO refer to simple harmonic motion, damped harmonic motion, simple harmonic oscillator and damped harmonic oscillator respectively.

+--------------------+-----------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| Physical situation | Nomenclature                      | Translational equations                                                                     | Angular equations                                                                                          |
+====================+===================================+=============================================================================================+============================================================================================================+
| SHM                | -   _x_ = Transverse displacement | $\frac{\mathrm{d}^2 x}{\mathrm{d}t^2} = - \omega^2 x$                                       | $\frac{\mathrm{d}^2 \theta}{\mathrm{d}t^2} = - \omega^2 \theta$                                            |
|                    | -   _θ_ = Angular displacement    |                                                                                             |                                                                                                            |
|                    | -   _A_ = Transverse amplitude    | Solution:                                                                                   | Solution:                                                                                                  |
|                    | -   Θ = Angular amplitude         | x = Asin (ωt+ϕ)                                                                             | θ = Θsin (ωt+ϕ)                                                                                            |
+--------------------+-----------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| Unforced DHM       | -   _b_ = damping constant        | $\frac{\mathrm{d}^2 x}{\mathrm{d}t^2} + b \frac{\mathrm{d}x}{\mathrm{d}t} + \omega^2 x = 0$ | $\frac{\mathrm{d}^2 \theta}{\mathrm{d}t^2} + b \frac{\mathrm{d}\theta}{\mathrm{d}t} + \omega^2 \theta = 0$ |
|                    | -   _κ_ = torsion constant        |                                                                                             |                                                                                                            |
|                    |                                   | Solution (see below for _ω_'):                                                              | Solution:                                                                                                  |
|                    |                                   | x = Ae^( − bt/2m)cos (ω′)                                                                   | θ = Θe^( − κt/2m)cos (ω)                                                                                   |
|                    |                                   |                                                                                             |                                                                                                            |
|                    |                                   | Resonant frequency:                                                                         | Resonant frequency:                                                                                        |
|                    |                                   | $\omega_\mathrm{res} = \sqrt{\omega^2 - \left ( \frac{b}{4m} \right )^2 }$                  | $\omega_\mathrm{res} = \sqrt{\omega^2 - \left ( \frac{\kappa}{4m} \right )^2 }$                            |
|                    |                                   |                                                                                             |                                                                                                            |
|                    |                                   | Damping rate:                                                                               | Damping rate:                                                                                              |
|                    |                                   | γ = b/m                                                                                     | γ = κ/m                                                                                                    |
|                    |                                   |                                                                                             |                                                                                                            |
|                    |                                   | Expected lifetime of excitation:                                                            | Expected lifetime of excitation:                                                                           |
|                    |                                   | τ = 1/γ                                                                                     | τ = 1/γ                                                                                                    |
+--------------------+-----------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

: Equations of motion

+-------------------------------+----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Physical situation            | Nomenclature                                       | Equations                                                                                                                                                           |
+===============================+====================================================+=====================================================================================================================================================================+
| Linear undamped unforced SHO  | -   _k_ = spring constant                          | $\omega = \sqrt{\frac{k}{m}}$                                                                                                                                       |
|                               | -   _m_ = mass of oscillating bob                  |                                                                                                                                                                     |
+-------------------------------+----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Linear unforced DHO           | -   _k_ = spring constant                          | $\omega' = \sqrt{\frac{k}{m}-\left ( \frac{b}{2m} \right )^2 }$                                                                                                     |
|                               | -   _b_ = Damping coefficient                      |                                                                                                                                                                     |
+-------------------------------+----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Low amplitude angular SHO     | -   _I_ = Moment of inertia about oscillating axis | $\omega = \sqrt{\frac{\kappa}{I}}$                                                                                                                                  |
|                               | -   _κ_ = torsion constant                         |                                                                                                                                                                     |
+-------------------------------+----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Low amplitude simple pendulum | -   _L_ = Length of pendulum                       | Approximate value                                                                                                                                                   |
|                               | -   _g_ = Gravitational acceleration               | $\omega = \sqrt{\frac{g}{L}}$                                                                                                                                       |
|                               | -   Θ = Angular amplitude                          |                                                                                                                                                                     |
|                               |                                                    | Exact value can be shown to be:                                                                                                                                     |
|                               |                                                    | $\omega = \sqrt{\frac{g}{L}} \left [ 1 + \sum_{k=1}^\infty \frac{\prod_{n=1}^k \left ( 2n-1 \right )}{\prod_{n=1}^m \left ( 2n \right )} \sin^{2n} \Theta \right ]$ |
+-------------------------------+----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: Angular frequencies

+--------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Physical situation | Nomenclature               | Equations                                                                                                                                                       |
+====================+============================+=================================================================================================================================================================+
| SHM energy         | -   _T_ = kinetic energy   | Potential energy                                                                                                                                                |
|                    | -   _U_ = potential energy | $U = \frac{m}{2} \left ( x \right )^2 = \frac{m \left( \omega A \right )^2}{2} \cos^2(\omega t + \phi)$ Maximum value at x = A:                                 |
|                    | -   _E_ = total energy     | $U_\mathrm{max} \frac{m}{2} \left ( \omega A \right )^2$                                                                                                        |
|                    |                            |                                                                                                                                                                 |
|                    |                            | Kinetic energy                                                                                                                                                  |
|                    |                            | $T = \frac{\omega^2 m}{2} \left ( \frac{\mathrm{d} x}{\mathrm{d} t} \right )^2 = \frac{m \left ( \omega A \right )^2}{2}\sin^2\left ( \omega t + \phi \right )$ |
|                    |                            |                                                                                                                                                                 |
|                    |                            | Total energy                                                                                                                                                    |
|                    |                            | E = T + U                                                                                                                                                       |
+--------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DHM energy         |                            | $E = \frac{m \left ( \omega A \right )^2}{2}e^{-bt/m}$                                                                                                          |
+--------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

: Energy in mechanical oscillations


See also

-   List of physics formulae
-   Defining equation (physics)
-   Defining equation (physical chemistry)
-   Constitutive equation
-   Mechanics
-   Optics
-   Electromagnetism
-   Thermodynamics
-   Acoustics
-   Isaac Newton
-   List of equations in wave theory
-   List of relativistic equations
-   List of equations in fluid mechanics
-   List of equations in gravitation
-   List of electromagnetism equations
-   List of photonics equations
-   List of equations in quantum mechanics
-   List of equations in nuclear and particle physics


Notes


References

-   -   -

Category:Classical mechanics Equations in classical mechanics Category:Equations of physics

[1]

[2]

[3]

[4]

[5] [http://www.ltcconline.net/greenl/courses/202/multipleIntegration/MassMoments.htm, _Section: Moments and center of mass_]

[6]

[7] "Relativity, J.R. Forshaw 2009"

[8] "Mechanics, D. Kleppner 2010"

[9] "Relativity, J.R. Forshaw 2009"

[10] "Relativity, J.R. Forshaw 2009"