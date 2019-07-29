In physics, a CONSERVATION LAW states that a particular measurable property of an isolated physical system does not change as the system evolves over time. Exact conservation laws include conservation of energy, conservation of linear momentum, conservation of angular momentum, and conservation of electric charge. There are also many approximate conservation laws, which apply to such quantities as mass, parity, lepton number, baryon number, strangeness, hypercharge, etc. These quantities are conserved in certain classes of physics processes, but not in all.

A local conservation law is usually expressed mathematically as a continuity equation, a partial differential equation which gives a relation between the amount of the quantity and the "transport" of that quantity. It states that the amount of the conserved quantity at a point or within a volume can only change by the amount of the quantity which flows in or out of the volume.

From Noether's theorem, each conservation law is associated with a symmetry in the underlying physics.


Conservation laws as fundamental laws of nature

Conservation laws are fundamental to our understanding of the physical world, in that they describe which processes can or cannot occur in nature. For example, the conservation law of energy states that the total quantity of energy in an isolated system does not change, though it may change form. In general, the total quantity of the property governed by that law remains unchanged during physical processes. With respect to classical physics, conservation laws include conservation of energy, mass (or matter), linear momentum, angular momentum, and electric charge. With respect to particle physics, particles cannot be created or destroyed except in pairs, where one is ordinary and the other is an antiparticle. With respect to symmetries and invariance principles, three special conservation laws have been described, associated with inversion or reversal of space, time, and charge.

Conservation laws are considered to be fundamental laws of nature, with broad application in physics, as well as in other fields such as chemistry, biology, geology, and engineering.

Most conservation laws are exact, or absolute, in the sense that they apply to all possible processes. Some conservation laws are partial, in that they hold for some processes but not for others.

One particularly important result concerning conservation laws is Noether's theorem, which states that there is a one-to-one correspondence between each one of them and a differentiable symmetry of nature. For example, the conservation of energy follows from the time-invariance of physical systems, and the conservation of angular momentum arises from the fact that physical systems behave the same regardless of how they are oriented in space.


Exact laws

A partial listing of physical conservation equations due to symmetry that are said to be EXACT LAWS, or more precisely _have never been proven to be violated:_

  Conservation Law                                                        Respective Noether symmetry invariance   Number of dimensions
  ----------------------------------------------------------------------- ---------------------------------------- -----------------------------
  Conservation of mass-energy                                             Time invariance                          Lorentz invariance symmetry
  Conservation of linear momentum                                         Translation symmetry                     3
  Conservation of angular momentum                                        Rotation invariance                      3
  CPT symmetry (combining Charge conjugation, Parity and Time reversal)   Lorentz invariance                       1 + 1 + 1
  Conservation of electric charge                                         Gauge invariance                         1⊗4
  Conservation of color charge                                            SU(3) Gauge invariance                   3
  Conservation of weak isospin                                            SU(2)_(L) Gauge invariance               1
  Conservation of probability                                             Probability invariance[1]                1 ⊗ 4


Approximate laws

There are also APPROXIMATE conservation laws. These are approximately true in particular situations, such as low speeds, short time scales, or certain interactions.

-   Conservation of rest mass
-   Conservation of baryon number (See chiral anomaly and sphaleron)
-   Conservation of lepton number (In the Standard Model)
-   Conservation of flavor (violated by the weak interaction)
-   Conservation of parity
-   Invariance under charge conjugation
-   Invariance under time reversal
-   CP symmetry, the combination of charge conjugation and parity (equivalent to time reversal if CPT holds)


Global and local conservation laws

The total amount of some conserved quantity in the universe could remain unchanged if an equal amount were to appear at one point _A_ and simultaneously disappear from another separate point _B_. For example, an amount of energy could appear on Earth without changing the total amount in the Universe if the same amount of energy were to disappear from a remote region of the Universe. This weak form of "global" conservation is really not a conservation law because it is not Lorentz invariant, so phenomena like the above do not occur in nature.[2][3] Due to Special Relativity, if the appearance of the energy at _A_ and disappearance of the energy at _B_ are simultaneous in one inertial reference frame, they will not be simultaneous in other inertial reference frames moving with respect to the first. In a moving frame one will occur before the other; either the energy at _A_ will appear _before_ or _after_ the energy at _B_ disappears. In both cases, during the interval energy will not be conserved.

A stronger form of conservation law requires that, for the amount of a conserved quantity at a point to change, there must be a flow, or _flux_ of the quantity into or out of the point. For example, the amount of electric charge in a volume is never found to change without an electric current into or out of the volume that carries the difference in charge. Since it only involves continuous _local_ changes, this stronger type of conservation law is Lorentz invariant; a quantity conserved in one reference frame is conserved in all moving reference frames.[4][5] This is called a _local conservation_ law.[6][7] Local conservation also implies global conservation; that the total amount of the conserved quantity in the Universe remains constant. All of the conservation laws listed above are local conservation laws. A local conservation law is expressed mathematically by a _continuity equation_, which states that the change in the quantity in a volume is equal to the total net "flux" of the quantity through the surface of the volume. The following sections discuss continuity equations in general.


Differential forms

In continuum mechanics, the most general form of an exact conservation law is given by a continuity equation. For example, conservation of electric charge _q_ is

$$\frac{\partial \rho}{\partial t} = - \nabla \cdot \mathbf{j} \,$$

where ∇⋅ is the divergence operator, _ρ_ is the density of _q_ (amount per unit volume), J is the flux of _q_ (amount crossing a unit area in unit time), and _t_ is time.

If we assume that the motion U of the charge is a continuous function of position and time, then

J = _ρ_U

$$\frac{\partial \rho}{\partial t} = - \nabla \cdot (\rho \mathbf{u}) \,.$$

In one space dimension this can be put into the form of a homogeneous first-order quasilinear hyperbolic equation:[8]

_y__(_t_) + _A_(_y_)_y__(_x_) = 0

where the dependent variable _y_ is called the _density_ of a _conserved quantity_, and _A(y)_ is called the _current jacobian_, and the subscript notation for partial derivatives has been employed. The more general inhomogeneous case:

_y__(_t_) + _A_(_y_)_y__(_x_) = _s_

is not a conservation equation but the general kind of balance equation describing a dissipative system. The dependent variable _y_ is called a _nonconserved quantity_, and the inhomogeneous term _s(y,x,t)_ is the-_source_, or dissipation. For example, balance equations of this kind are the momentum and energy Navier-Stokes equations, or the entropy balance for a general isolated system.

In the ONE-DIMENSIONAL SPACE a conservation equation is a first-order quasilinear hyperbolic equation that can be put into the _advection_ form:

_y__(_t_) + _a_(_y_)_y__(_x_) = 0

where the dependent variable _y(x,t)_ is called the density of the _conserved_ (scalar) quantity (c.q.(d.) = conserved quantity (density)), and _a(y)_ is called the CURRENT COEFFICIENT, usually corresponding to the partial derivative in the conserved quantity of a current density (c.d.) of the conserved quantity _j(y)_:[9]

_a_(_y_) = _j__(_y_)(_y_)

In this case since the chain rule applies:

_j__(_x_) = _j__(_y_)(_y_)_y__(_x_) = _a_(_y_)_y__(_x_)

the conservation equation can be put into the current density form:

_y__(_t_) + _j__(_x_)(_y_) = 0

In a SPACE WITH MORE THAN ONE DIMENSION the former definition can be extended to an equation that can be put into the form:

_y__(_t_) + A(_y_) ⋅ ∇_y_ = 0

where the _conserved quantity_ is _y(R,t)_, _⋅_ denotes the scalar product, _∇_ is the nabla operator, here indicating a gradient, and _a(y)_ is a vector of current coefficients, analogously corresponding to the divergence of a vector c.d. associated to the c.q. J(y):

_y__(_t_) + ∇ ⋅ J(_y_) = 0

This is the case for the continuity equation:

_ρ__(_t_) + ∇ ⋅ (_ρ_U) = 0

Here the conserved quantity is the mass, with density _ρ_(R,t) and current density _ρ_U, identical to the momentum density, while U(R,t) is the flow velocity.

In the GENERAL CASE a conservation equation can be also a system of this kind of equations (a vector equation) in the form:[10]

Y_(_t_) + A(Y) ⋅ ∇Y = 0

where Y is called the _conserved_ (VECTOR) quantity, ∇ y is its gradient, 0 is the zero vector, and A(Y) is called the Jacobian of the current density. In fact as in the former scalar case, also in the vector case A(Y) usually corresponding to the Jacobian of a current density matrix J(Y):

A(Y) = J_(Y)(Y)

and the conservation equation can be put into the form:

Y_(_t_) + ∇ ⋅ J(Y) = 0

For example, this the case for Euler equations (fluid dynamics). In the simple incompressible case they are:

$$\begin{align}
\nabla\cdot \mathbf u=0\\[1.2ex]
{\partial \mathbf u \over\partial t}+ \mathbf u \cdot
\nabla \mathbf u + \nabla s =\mathbf{0},
\end{align}$$

where:

-   _U_ is the flow velocity vector, with components in a N-dimensional space _u₁_, _u₂_ ... _u_(N)_,
-   _s_ is the specific pressure (pressure per unit density) giving the source term,

It can be shown that the conserved (vector) quantity and the c.d. matrix for these equations are respectively:

$${\mathbf y}=\begin{pmatrix}1 \\  \mathbf u \end{pmatrix}; \qquad
{\mathbf J}=\begin{pmatrix}\mathbf u\\ \mathbf u \otimes \mathbf u + s \mathbf I\end{pmatrix};\qquad$$

where _⊗_ denotes the outer product.


Integral and weak forms

Conservation equations can be also expressed in integral form: the advantage of the latter is substantially that it requires less smoothness of the solution, which paves the way to weak form, extending the class of admissible solutions to include discontinuous solutions.[11] By integrating in any space-time domain the current density form in 1-D space:

_y__(_t_) + _j__(_x_)(_y_) = 0

and by using Green's theorem, the integral form is:

∫_( − ∞)^(∞)_y_ _d__x_ + ∫₀^(∞)_j_(_y_) _d__t_ = 0

In a similar fashion, for the scalar multidimensional space, the integral form is:

∮[_y_ _d_^(_N_)_r_ + _j_(_y_) _d__t_] = 0

where the line integration is performed along the boundary of the domain, in an anticlock-wise manner.[12]

Moreover, by defining a test function _φ_(R,_t_) continuously differentiable both in time and space with compact support, the weak form can be obtained pivoting on the initial condition. In 1-D space it is:

    ∫₀^(∞)∫_( − ∞)^(∞)ϕ_(t)y + ϕ_(x)j(y) dx dt =  − ∫_( − ∞)^(∞)ϕ(x, 0)y(x, 0) dx

Note that in the weak form all the partial derivatives of the density and current density have been passed on to the test function, which with the former hypothesis is sufficiently smooth to admit these derivatives.[13]


See also

-   Invariant (physics)
-   Conserved quantity
    -   Some kinds of helicity are conserved in dissipationless limit: hydrodynamical helicity, magnetic helicity, cross-helicity.
-   Conservation law of the Stress–energy tensor
-   Riemann invariant
-   Philosophy of physics
-   Totalitarian principle
-   Convection–diffusion equation

Examples and applications

-   Advection
-   Mass conservation, or Continuity equation
-   Charge conservation
-   Euler equations (fluid dynamics)
-   inviscid Burgers equation
-   Kinematic wave
-   Conservation of energy
-   Traffic flow


Notes


References

-   Philipson, Schuster, _Modeling by Nonlinear Differential Equations: Dissipative and Conservative Processes_, World Scientific Publishing Company 2009.
-   Victor J. Stenger, 2000. _Timeless Reality: Symmetry, Simplicity, and Multiple Universes_. Buffalo NY: Prometheus Books. Chpt. 12 is a gentle introduction to symmetry, invariance, and conservation laws.
-   -   E. Godlewski and P.A. Raviart, Hyperbolic systems of conservation laws, Ellipses, 1991.


External links

-   Conservation Laws — Ch. 11-15 in an online textbook

Category:Symmetry Conservation_laws Category:Concepts in physics Category:Physical systems Category:Scientific laws

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] see Toro, p.43

[9]

[10]

[11] see Toro, p.62-63

[12]

[13]