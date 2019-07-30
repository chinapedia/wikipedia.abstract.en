In physics (specifically in electromagnetism) the LORENTZ FORCE (or ELECTROMAGNETIC FORCE) is the combination of electric and magnetic force on a point charge due to electromagnetic fields. A particle of charge _q_ moving with a velocity _v_ in an electric field E and a magnetic field B experiences a force of

    F = qE + qV × B

(in SI units[1][2]). Variations on this basic formula describe the magnetic force on a current-carrying wire (sometimes called Laplace force), the electromotive force in a wire loop moving through a magnetic field (an aspect of Faraday's law of induction), and the force on a charged particle which might be traveling near the speed of light (relativistic form of the Lorentz force).

Historians suggest that the law is implicit in a paper by James Clerk Maxwell, published in 1865.[3] Hendrik Lorentz arrived in a complete derivation in 1895,[4] identifying the contribution of the electric force a few years after Oliver Heaviside correctly identified the contribution of the magnetic force.[5]


Equation

Charged particle

(of charge _q_) in motion (instantaneous velocity V). The E field and B field vary in space and time.]]

The force F acting on a particle of electric charge _q_ with instantaneous velocity V, due to an external electric field E and magnetic field B, is given by (in SI units[6]):[7]

where × is the vector cross product (all boldface quantities are vectors). In terms of cartesian components, we have:

F_(x) = q(E_(x) + v_(y)B_(z) − v_(z)B_(y)),

F_(y) = q(E_(y) + v_(z)B_(x) − v_(x)B_(z)),

F_(z) = q(E_(z) + v_(x)B_(y) − v_(y)B_(x)).

In general, the electric and magnetic fields are functions of the position and time. Therefore, explicitly, the Lorentz force can be written as:

F(R, Ṙ, _t_, _q_) = _q_[E(R, _t_) + Ṙ × B(R, _t_)]

in which R is the position vector of the charged particle, _t_ is time, and the overdot is a time derivative.

A positively charged particle will be accelerated in the _same_ linear orientation as the E field, but will curve perpendicularly to both the instantaneous velocity vector V and the B field according to the right-hand rule (in detail, if the fingers of the right hand are extended to point in the direction of V and are then curled to point in the direction of B, then the extended thumb will point in the direction of F).

The term _q_E is called the ELECTRIC FORCE, while the term _q_(V × B) is called the MAGNETIC FORCE.[8] According to some definitions, the term "Lorentz force" refers specifically to the formula for the magnetic force,[9] with the _total_ electromagnetic force (including the electric force) given some other (nonstandard) name. This article will _not_ follow this nomenclature: In what follows, the term "Lorentz force" will refer to the expression for the total force.

The magnetic force component of the Lorentz force manifests itself as the force that acts on a current-carrying wire in a magnetic field. In that context, it is also called the Laplace force.

The Lorentz force is a force exerted by the electromagnetic field on the charged particle, that is, it is the rate at which linear momentum is transferred from the electromagnetic field to the particle. Associated with it is the power which is the rate at which energy is transferred from the electromagnetic field to the particle. That power is

V ⋅ F = _q_ V ⋅ E
. Notice that the magnetic field does not contribute to the power because the magnetic force is always perpendicular to the velocity of the particle.

Continuous charge distribution

(charge density ρ) in motion. The 3-current density J corresponds to the motion of the charge element _dq_ in volume element _dV_ and varies throughout the continuum.]]

For a continuous charge distribution in motion, the Lorentz force equation becomes:

_d_F = _d__q_(E+V×B) ​

where _d_F is the force on a small piece of the charge distribution with charge _dq_. If both sides of this equation are divided by the volume of this small piece of the charge distribution _dV_, the result is:

F = _ρ_(E+V×B) ​

where F is the _force density_ (force per unit volume) and _ρ_ is the charge density (charge per unit volume). Next, the current density corresponding to the motion of the charge continuum is

J = _ρ_V ​

so the continuous analogue to the equation is[10]

The total force is the volume integral over the charge distribution:

F = ∭​(_ρ_E + J × B) _d__V_. ​

By eliminating ρ and J, using Maxwell's equations, and manipulating using the theorems of vector calculus, this form of the equation can be used to derive the Maxwell stress tensor Σ, in turn this can be combined with the Poynting vector S to obtain the electromagnetic stress–energy tensor T used in general relativity.[11]

In terms of Σ and S, another way to write the Lorentz force (per unit volume) is[12]

$$\mathbf{f} = \nabla\cdot\boldsymbol{\sigma} - \dfrac{1}{c^2} \dfrac{\partial \mathbf{S}}{\partial t}  \,\!$$

where _c_ is the speed of light and ∇· denotes the divergence of a tensor field. Rather than the amount of charge and its velocity in electric and magnetic fields, this equation relates the energy flux (flow of _energy_ per unit time per unit distance) in the fields to the force exerted on a charge distribution. See Covariant formulation of classical electromagnetism for more details.

The density of power associated with the Lorentz force in a material medium is

J ⋅ E
.

If we separate the total charge and total current into their free and bound parts, we get that the density of the Lorentz force is

$$\mathbf{f} = (\rho_f - \nabla \cdot \mathbf P) \mathbf{E} + (\mathbf{J}_f + \nabla\times\mathbf{M} + \frac{\partial\mathbf{P}}{\partial t}) \times \mathbf{B}$$
.

where: ρ_(f) is the density of free charge; _P_ is the polarization density; _J__(f) is the density of free current; and _M_ is the magnetization density. In this way, the Lorentz force can explain the torque applied to a permanent magnet by the magnetic field. The density of the associated power is

$$\left(\mathbf{J}_f + \nabla\times\mathbf{M} + \frac{\partial\mathbf{P}}{\partial t}\right) \cdot \mathbf{E}$$
.

Equation in cgs units

The above-mentioned formulae use SI units which are the most common among experimentalists, technicians, and engineers. In cgs-Gaussian units, which are somewhat more common among theoretical physicists as well as condensed matter experimentalists, one has instead

    $\mathbf{F} = q_\mathrm{cgs} \left(\mathbf{E}_\mathrm{cgs} + \frac{\mathbf{v}}{c} \times \mathbf{B}_\mathrm{cgs}\right).$

where _c_ is the speed of light. Although this equation looks slightly different, it is completely equivalent, since one has the following relations:[13]

$$q_\mathrm{cgs}=\frac{q_\mathrm{SI}}{\sqrt{4\pi \epsilon_0}},\quad \mathbf E_\mathrm{cgs} =\sqrt{4\pi\epsilon_0}\,\mathbf E_\mathrm{SI},\quad \mathbf B_\mathrm{cgs} ={\sqrt{4\pi /\mu_0}}\,{\mathbf B_\mathrm{SI}},\quad c=\frac{1}{\sqrt{ \epsilon_0\mu_0}}.$$

where ε₀ is the vacuum permittivity and μ₀ the vacuum permeability. In practice, the subscripts "cgs" and "SI" are always omitted, and the unit system has to be assessed from context.


History

Early attempts to quantitatively describe the electromagnetic force were made in the mid-18th century. It was proposed that the force on magnetic poles, by Johann Tobias Mayer and others in 1760,[14] and electrically charged objects, by Henry Cavendish in 1762,[15] obeyed an inverse-square law. However, in both cases the experimental proof was neither complete nor conclusive. It was not until 1784 when Charles-Augustin de Coulomb, using a torsion balance, was able to definitively show through experiment that this was true.[16] Soon after the discovery in 1820 by H. C. Ørsted that a magnetic needle is acted on by a voltaic current, André-Marie Ampère that same year was able to devise through experimentation the formula for the angular dependence of the force between two current elements.[17][18] In all these descriptions, the force was always given in terms of the properties of the objects involved and the distances between them rather than in terms of electric and magnetic fields.[19]

The modern concept of electric and magnetic fields first arose in the theories of Michael Faraday, particularly his idea of lines of force, later to be given full mathematical description by Lord Kelvin and James Clerk Maxwell.[20] From a modern perspective it is possible to identify in Maxwell's 1865 formulation of his field equations a form of the Lorentz force equation in relation to electric currents,[21] however, in the time of Maxwell it was not evident how his equations related to the forces on moving charged objects. J. J. Thomson was the first to attempt to derive from Maxwell's field equations the electromagnetic forces on a moving charged object in terms of the object's properties and external fields. Interested in determining the electromagnetic behavior of the charged particles in cathode rays, Thomson published a paper in 1881 wherein he gave the force on the particles due to an external magnetic field as[22]

$$\mathbf{F} = \frac{q}{2}\mathbf{v} \times \mathbf{B}.$$
Thomson derived the correct basic form of the formula, but, because of some miscalculations and an incomplete description of the displacement current, included an incorrect scale-factor of a half in front of the formula. Oliver Heaviside invented the modern vector notation and applied it to Maxwell's field equations; he also (in 1885 and 1889) had fixed the mistakes of Thomson's derivation and arrived at the correct form of the magnetic force on a moving charged object.[23][24][25] Finally, in 1895,[26][27] Hendrik Lorentz derived the modern form of the formula for the electromagnetic force which includes the contributions to the total force from both the electric and the magnetic fields. Lorentz began by abandoning the Maxwellian descriptions of the ether and conduction. Instead, Lorentz made a distinction between matter and the luminiferous aether and sought to apply the Maxwell equations at a microscopic scale. Using Heaviside's version of the Maxwell equations for a stationary ether and applying Lagrangian mechanics (see below), Lorentz arrived at the correct and complete form of the force law that now bears his name.[28][29]


Trajectories of particles due to the Lorentz force

In many cases of practical interest, the motion in a magnetic field of an electrically charged particle (such as an electron or ion in a plasma) can be treated as the superposition of a relatively fast circular motion around a point called the GUIDING CENTER and a relatively slow DRIFT of this point. The drift speeds may differ for various species depending on their charge states, masses, or temperatures, possibly resulting in electric currents or chemical separation.


Significance of the Lorentz force

While the modern Maxwell's equations describe how electrically charged particles and currents or moving charged particles give rise to electric and magnetic fields, the Lorentz force law completes that picture by describing the force acting on a moving point charge _q_ in the presence of electromagnetic fields.[30][31] The Lorentz force law describes the effect of E and B upon a point charge, but such electromagnetic forces are not the entire picture. Charged particles are possibly coupled to other forces, notably gravity and nuclear forces. Thus, Maxwell's equations do not stand separate from other physical laws, but are coupled to them via the charge and current densities. The response of a point charge to the Lorentz law is one aspect; the generation of E and B by currents and charges is another.

In real materials the Lorentz force is inadequate to describe the collective behavior of charged particles, both in principle and as a matter of computation. The charged particles in a material medium not only respond to the E and B fields but also generate these fields. Complex transport equations must be solved to determine the time and spatial response of charges, for example, the Boltzmann equation or the Fokker–Planck equation or the Navier–Stokes equations. For example, see magnetohydrodynamics, fluid dynamics, electrohydrodynamics, superconductivity, stellar evolution. An entire physical apparatus for dealing with these matters has developed. See for example, Green–Kubo relations and Green's function (many-body theory).


Lorentz force law as the definition of E and B

In many textbook treatments of classical electromagnetism, the Lorentz force Law is used as the _definition_ of the electric and magnetic fields E and B.[32][33][34] To be specific, the Lorentz force is understood to be the following empirical statement:

    ''The electromagnetic force F on a test charge at a given point and time is a certain function of its charge _q_ and velocity V, which can be parameterized by exactly two vectors E and B, in the functional form'':

F = _q_(E + V × B)

This is valid, even for particles approaching the speed of light (that is, magnitude of V = |V| ≈ _c_).[35] So the two vector fields E and B are thereby defined throughout space and time, and these are called the "electric field" and "magnetic field". The fields are defined everywhere in space and time with respect to what force a test charge would receive regardless of whether a charge is present to experience the force.

As a definition of E and B, the Lorentz force is only a definition in principle because a real particle (as opposed to the hypothetical "test charge" of infinitesimally-small mass and charge) would generate its own finite E and B fields, which would alter the electromagnetic force that it experiences. In addition, if the charge experiences acceleration, as if forced into a curved trajectory by some external agency, it emits radiation that causes braking of its motion. See for example Bremsstrahlung and synchrotron light. These effects occur through both a direct effect (called the radiation reaction force) and indirectly (by affecting the motion of nearby charges and currents). Moreover, net force must include gravity, electroweak, and any other forces aside from electromagnetic force.


Force on a current-carrying wire

When a wire carrying an electric current is placed in a magnetic field, each of the moving charges, which comprise the current, experiences the Lorentz force, and together they can create a macroscopic force on the wire (sometimes called the LAPLACE FORCE). By combining the Lorentz force law above with the definition of electric current, the following equation results, in the case of a straight, stationary wire:[36]

F = _I_ℓ × B

where ℓ is a vector whose magnitude is the length of wire, and whose direction is along the wire, aligned with the direction of conventional current charge flow _I_.

If the wire is not straight but curved, the force on it can be computed by applying this formula to each infinitesimal segment of wire _d_ℓ, then adding up all these forces by integration. Formally, the net force on a stationary, rigid wire carrying a steady current _I_ is

F = _I_∫_d_ℓ × B

This is the net force. In addition, there will usually be torque, plus other effects if the wire is not perfectly rigid.

One application of this is Ampère's force law, which describes how two current-carrying wires can attract or repel each other, since each experiences a Lorentz force from the other's magnetic field. For more information, see the article: Ampère's force law.


EMF

The magnetic force () component of the Lorentz force is responsible for _motional_ electromotive force (or _motional EMF_), the phenomenon underlying many electrical generators. When a conductor is moved through a magnetic field, the magnetic field exerts opposite forces on electrons and nuclei in the wire, and this creates the EMF. The term "motional EMF" is applied to this phenomenon, since the EMF is due to the _motion_ of the wire.

In other electrical generators, the magnets move, while the conductors do not. In this case, the EMF is due to the electric force (_q_E) term in the Lorentz Force equation. The electric field in question is created by the changing magnetic field, resulting in an _induced_ EMF, as described by the Maxwell–Faraday equation (one of the four modern Maxwell's equations).[37]

Both of these EMFs, despite their apparently distinct origins, are described by the same equation, namely, the EMF is the rate of change of magnetic flux through the wire. (This is Faraday's law of induction, see below.) Einstein's special theory of relativity was partially motivated by the desire to better understand this link between the two effects.[38] In fact, the electric and magnetic fields are different facets of the same electromagnetic field, and in moving from one inertial frame to another, the solenoidal vector field portion of the _E_-field can change in whole or in part to a _B_-field or _vice versa_.[39]


Lorentz force and Faraday's law of induction

Given a loop of wire in a magnetic field, Faraday's law of induction states the induced electromotive force (EMF) in the wire is:

$$\mathcal{E} = -\frac{\mathrm{d}\Phi_B}{\mathrm{d}t}$$

where

_Φ__(_B_) = ∬_(_Σ_(_t_))_d_A ⋅ B(R, _t_)

is the magnetic flux through the loop, B is the magnetic field, Σ(_t_) is a surface bounded by the closed contour ∂Σ(_t_), at all at time _t_, dA is an infinitesimal vector area element of Σ(_t_) (magnitude is the area of an infinitesimal patch of surface, direction is orthogonal to that surface patch).

The _sign_ of the EMF is determined by Lenz's law. Note that this is valid for not only a _stationary_ wirebut also for a _moving_ wire.

From Faraday's law of induction (that is valid for a moving wire, for instance in a motor) and the Maxwell Equations, the Lorentz Force can be deduced. The reverse is also true, the Lorentz force and the Maxwell Equations can be used to derive the Faraday Law.

Let Σ(_t_) be the moving wire, moving together without rotation and with constant velocity V and Σ(_t_) be the internal surface of the wire. The EMF around the closed path ∂Σ(_t_) is given by:[40]

ℰ = ∮_(∂_Σ_(_t_))_d_ℓ ⋅ F/_q_

where

E = F/_q_

is the electric field and dℓ is an infinitesimal vector element of the contour ∂Σ(_t_).

NB: Both dℓ and dA have a sign ambiguity; to get the correct sign, the right-hand rule is used, as explained in the article Kelvin–Stokes theorem.

The above result can be compared with the version of Faraday's law of induction that appears in the modern Maxwell's equations, called here the _Maxwell–Faraday equation_:

$$\nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t} \ .$$

The Maxwell–Faraday equation also can be written in an _integral form_ using the Kelvin–Stokes theorem.[41]

So we have, the Maxwell Faraday equation:

$$\oint_{\partial \Sigma(t)}\mathrm{d} \boldsymbol{\ell} \cdot \mathbf{E}(\mathbf{r},\ t) = - \  \iint_{\Sigma(t)}  \mathrm{d} \mathbf {A} \cdot {{\mathrm{d} \,\mathbf {B}(\mathbf{r},\ t)} \over \mathrm{d}t }$$

and the Faraday Law,

$$\oint_{\partial \Sigma(t)}\mathrm{d} \boldsymbol{\ell} \cdot \mathbf{F}/q(\mathbf{r},\ t) = - \frac{\mathrm{d}}{\mathrm{d}t}  \iint_{\Sigma(t)}  \mathrm{d} \mathbf {A} \cdot \mathbf{B}(\mathbf{r},\ t).$$

The two are equivalent if the wire is not moving. Using the Leibniz integral rule and that _div_ B = 0, results in,

$$\oint_{\partial \Sigma(t)} \mathrm{d} \boldsymbol{\ell} \cdot \mathbf{F}/q(\mathbf{r}, t) =
- \iint_{\Sigma(t)}  \mathrm{d} \mathbf{A} \cdot \frac{\partial}{\partial t} \mathbf{B}(\mathbf{r}, t) +
\oint_{\partial \Sigma(t)} \!\!\!\!\mathbf{v} \times \mathbf{B} \,\mathrm{d} \boldsymbol{\ell}$$

and using the Maxwell Faraday equation,

∮_(∂_Σ_(_t_))_d_ℓ ⋅ F/_q_(R, _t_) = ∮_(∂_Σ_(_t_))_d_ℓ ⋅ E(R, _t_) + ∮_(∂_Σ_(_t_))​​​​V × B(R, _t_) _d_ℓ

since this is valid for any wire position it implies that,

F = _q_ E(R, _t_) + _q_ V × B(R, _t_).

Faraday's law of induction holds whether the loop of wire is rigid and stationary, or in motion or in process of deformation, and it holds whether the magnetic field is constant in time or changing. However, there are cases where Faraday's law is either inadequate or difficult to use, and application of the underlying Lorentz force law is necessary. See inapplicability of Faraday's law.

If the magnetic field is fixed in time and the conducting loop moves through the field, the magnetic flux Φ_(_B_) linking the loop can change in several ways. For example, if the B-field varies with position, and the loop moves to a location with different B-field, Φ_(_B_) will change. Alternatively, if the loop changes orientation with respect to the B-field, the differential element will change because of the different angle between B and dA, also changing Φ_(_B_). As a third example, if a portion of the circuit is swept through a uniform, time-independent B-field, and another portion of the circuit is held stationary, the flux linking the entire closed circuit can change due to the shift in relative position of the circuit's component parts with time (surface ∂Σ(_t_) time-dependent). In all three cases, Faraday's law of induction then predicts the EMF generated by the change in Φ_(_B_).

Note that the Maxwell Faraday's equation implies that the Electric Field E is non conservative when the Magnetic Field B varies in time, and is not expressible as the gradient of a scalar field, and not subject to the gradient theorem since its rotational is not zero.[42][43]


Lorentz force in terms of potentials

The E and B fields can be replaced by the magnetic vector potential A and (scalar) electrostatic potential _ϕ_ by

$$\mathbf{E} = - \nabla \phi - \frac { \partial \mathbf{A} } { \partial t }$$

B = ∇ × A

where ∇ is the gradient, ∇⋅ is the divergence, ∇× is the curl.

The force becomes

$$\mathbf{F} = q\left[-\nabla \phi- \frac{\partial \mathbf{A}}{\partial t}+\mathbf{v}\times(\nabla\times\mathbf{A})\right]$$

and using an identity for the triple product simplifies to

{\partial t}+ \nabla (\mathbf{v}\cdot\mathbf{A})-(\mathbf{v}\cdot\nabla)\mathbf{A} \right] |cellpadding= 6 |border |border colour = #0073CF |background colour=#F5FFFA}}

(V has no dependence on position, so there's no need to use Feynman's subscript notation). Using the chain rule, the total derivative of A is:

$$\frac{\mathrm{d}\mathbf{A}}{\mathrm{d}t} = \frac{\partial\mathbf{A}}{\partial t}+(\mathbf{v}\cdot\nabla)\mathbf{A}$$

so the above expression can be rewritten as:

$$\mathbf{F} = q\left[-\nabla (\phi-\mathbf{v}\cdot\mathbf{A})- \frac{\mathrm{d}\mathbf{A}}{\mathrm{d}t}\right]$$
.

With V = Ẋ, we can put the equation into the convenient Euler–Lagrange form

(\phi-\dot{\mathbf{x}}\cdot\mathbf{A})+ \frac{\mathrm{d}}{\mathrm{d}t}\nabla_{\dot{\mathbf{x}}}(\phi-\dot{\mathbf{x}}\cdot\mathbf{A})\right] |cellpadding= 6 |border |border colour = #0073CF |background colour=#F5FFFA}}

where

$\nabla_{\mathbf{x}} = \hat{x} \dfrac{\partial}{\partial x} + \hat{y} \dfrac{\partial}{\partial y} + \hat{z} \dfrac{\partial}{\partial z}$

and

$\nabla_{\dot{\mathbf{x}}} = \hat{x} \dfrac{\partial}{\partial \dot{x}} + \hat{y} \dfrac{\partial}{\partial \dot{y}} + \hat{z} \dfrac{\partial}{\partial \dot{z}}$.


Lorentz force and analytical mechanics

The Lagrangian for a charged particle of mass _m_ and charge _q_ in an electromagnetic field equivalently describes the dynamics of the particle in terms of its _energy_, rather than the force exerted on it. The classical expression is given by:[44]

$$L=\frac{m}{2}\mathbf{\dot{r}}\cdot\mathbf{\dot{r}}+q\mathbf{A}\cdot\mathbf{\dot{r}}-q\phi$$

where A and _ϕ_ are the potential fields as above. Using Lagrange's equations, the equation for the Lorentz force can be obtained.

    {| class="toccolours collapsible collapsed" width="80%" style="text-align:left"

!Derivation of Lorentz force from classical Lagrangian (SI units) |- |For an A field, a particle moving with velocity V = Ṙ has potential momentum qA(R, t), so its potential energy is qA(R, t) ⋅ Ṙ. For a _ϕ_ field, the particle's potential energy is qϕ(R, t).

The total potential energy is then:

_V_ = _q__ϕ_ − _q_A ⋅ Ṙ

and the kinetic energy is:

$$T=\frac{m}{2}\mathbf{\dot{r}}\cdot\mathbf{\dot{r}}$$

hence the Lagrangian:

$$L=T-V=\frac{m}{2}\mathbf{\dot{r}}\cdot\mathbf{\dot{r}}+q\mathbf{A}\cdot\mathbf{\dot{r}}-q\phi$$

$$L=\frac{m}{2}(\dot{x}^2+\dot{y}^2+\dot{z}^2) + q(\dot{x}A_x+\dot{y}A_y+\dot{z}A_z) - q\phi$$

Lagrange's equations are

$$\frac{\mathrm{d}}{\mathrm{d}t}\frac{\partial L}{\partial \dot{x}}=\frac{\partial L}{\partial x}$$

(same for _y_ and _z_). So calculating the partial derivatives:

$$\begin{align}\frac{\mathrm{d}}{\mathrm{d}t}\frac{\partial L}{\partial \dot{x}} & =m\ddot{x}+q\frac{\mathrm{d} A_x}{\mathrm{d}t} \\
& = m\ddot{x}+ \frac{q}{\mathrm{d}t}\left(\frac{\partial A_x}{\partial t}dt+\frac{\partial A_x}{\partial x}dx+\frac{\partial A_x}{\partial y}dy+\frac{\partial A_x}{\partial z}dz\right) \\
& = m\ddot{x}+ q\left(\frac{\partial A_x}{\partial t}+\frac{\partial A_x}{\partial x}\dot{x}+\frac{\partial A_x}{\partial y}\dot{y}+\frac{\partial A_x}{\partial z}\dot{z}\right)\\
\end{align}$$

$$\frac{\partial L}{\partial x}= -q\frac{\partial \phi}{\partial x}+ q\left(\frac{\partial A_x}{\partial x}\dot{x}+\frac{\partial A_y}{\partial x}\dot{y}+\frac{\partial A_z}{\partial x}\dot{z}\right)$$

equating and simplifying:

$$m\ddot{x}+ q\left(\frac{\partial A_x}{\partial t}+\frac{\partial A_x}{\partial x}\dot{x}+\frac{\partial A_x}{\partial y}\dot{y}+\frac{\partial A_x}{\partial z}\dot{z}\right)= -q\frac{\partial \phi}{\partial x}+ q\left(\frac{\partial A_x}{\partial x}\dot{x}+\frac{\partial A_y}{\partial x}\dot{y}+\frac{\partial A_z}{\partial x}\dot{z}\right)$$

$$\begin{align} F_x & = -q\left(\frac{\partial \phi}{\partial x}+\frac{\partial A_x}{\partial t}\right) + q\left[\dot{y}\left(\frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}\right)+\dot{z}\left(\frac{\partial A_z}{\partial x}-\frac{\partial A_x}{\partial z}\right)\right] \\
& = qE_x + q[\dot{y}(\nabla\times\mathbf{A})_z-\dot{z}(\nabla\times\mathbf{A})_y] \\
& = qE_x + q[\mathbf{\dot{r}}\times(\nabla\times\mathbf{A})]_x \\
& = qE_x + q(\mathbf{\dot{r}}\times\mathbf{B})_x
\end{align}$$

and similarly for the _y_ and _z_ directions. Hence the force equation is:

F = _q_(E + Ṙ × B)
|}

The potential energy depends on the velocity of the particle, so the force is velocity dependent, so it is not conservative.

The relativistic Lagrangian is

$$L = -mc^2\sqrt{1-\left(\frac{\dot{\mathbf{r}}}{c}\right)^2} + q \mathbf{A}(\mathbf{r})\cdot\dot{\mathbf{r}} - q \phi(\mathbf{r}) \,\!$$

The action is the relativistic arclength of the path of the particle in space time, minus the potential energy contribution, plus an extra contribution which quantum mechanically is an extra phase a charged particle gets when it is moving along a vector potential.

    {| class="toccolours collapsible collapsed" width="80%" style="text-align:left"

!Derivation of Lorentz force from relativistic Lagrangian (SI units) |- | The equations of motion derived by extremizing the action (see matrix calculus for the notation):

$$\frac{\mathrm{d}\mathbf{P}}{\mathrm{d}t} =\frac{\partial L}{\partial \mathbf{r}} = q {\partial \mathbf{A} \over \partial \mathbf{r}}\cdot \dot{\mathbf{r}} - q {\partial \phi \over \partial \mathbf{r} }\,\!$$

$$\mathbf{P} -q\mathbf{A} = \frac{m\dot{\mathbf{r}}}{\sqrt{1-\left(\frac{\dot{\mathbf{r}}}{c}\right)^2}}\,$$

are the same as Hamilton's equations of motion:

$$\frac{\mathrm{d}\mathbf{r}}{\mathrm{d}t} = \frac{\partial}{\partial \mathbf{p}}\left ( \sqrt{(\mathbf{P}-q\mathbf{A})^2 +(mc^2)^2} + q\phi \right ) \,\!$$

$$\frac{\mathrm{d}\mathbf{p}}{\mathrm{d}t} = -{\partial \over \partial \mathbf{r}}\left ( \sqrt{(\mathbf{P}-q\mathbf{A})^2 + (mc^2)^2} + q\phi \right ) \,\!$$

both are equivalent to the noncanonical form:

$$\frac{\mathrm{d}}{\mathrm{d}t}\left ( {m\dot{\mathbf{r}} \over \sqrt{1-\left(\frac{\dot{\mathbf{r}}}{c}\right)^2}} \right ) = q\left ( \mathbf{E} + \dot\mathbf{r} \times \mathbf{B} \right ) . \,\!$$

This formula is the Lorentz force, representing the rate at which the EM field adds relativistic momentum to the particle. |}


Relativistic form of the Lorentz force

Covariant form of the Lorentz force

Field tensor

Using the metric signature , the Lorentz force for a charge _q_ can be written in[45] covariant form:

where _p^(α)_ is the four-momentum, defined as

_p_^(_α_) = (_p_₀,_p_₁,_p_₂,_p_₃) = (_γ__m__c_,_p__(_x_),_p__(_y_),_p__(_z_)) ,

_τ_ the proper time of the particle, _F^(αβ)_ the contravariant electromagnetic tensor

$$F^{\alpha \beta} = \begin{pmatrix}
0 & -E_x/c & -E_y/c & -E_z/c \\
E_x/c & 0 & -B_z & B_y \\
E_y/c & B_z & 0 & -B_x \\
E_z/c & -B_y & B_x & 0
\end{pmatrix}$$

and _U_ is the covariant 4-velocity of the particle, defined as:

_U__(_β_) = (_U_₀,_U_₁,_U_₂,_U_₃) = _γ_(_c_,−_v__(_x_),−_v__(_y_),−_v__(_z_)) ,

in which

$$\gamma(v)=\frac{1}{\sqrt{1- \frac{v^2}{c^2}}}=\frac{1}{\sqrt{1- \frac{v_x^2 + v_y^2+ v_z^2}{c^2}}}$$

is the Lorentz factor.

The fields are transformed to a frame moving with constant relative velocity by:

_F_′^(_μ__ν_) = _Λ_^(_μ_)_(_α_)_Λ_^(_ν_)_(_β_)_F_^(_α__β_) ,

where Λ_^(μ)_(α)_ is the Lorentz transformation tensor.

Translation to vector notation

The component (_x_-component) of the force is

$$\frac{\mathrm{d} p^1}{\mathrm{d} \tau} = q U_\beta F^{1 \beta} = q\left(U_0 F^{10} + U_1 F^{11} + U_2 F^{12} + U_3 F^{13} \right) .$$

Substituting the components of the covariant electromagnetic tensor _F_ yields

$$\frac{\mathrm{d} p^1}{\mathrm{d} \tau} = q \left[U_0 \left(\frac{E_x}{c} \right) + U_2 (-B_z) + U_3 (B_y) \right] .$$

Using the components of covariant four-velocity yields

$$\begin{align}
 \frac{\mathrm{d} p^1}{\mathrm{d} \tau} & = q \gamma \left[c \left(\frac{E_x}{c} \right) + (-v_y) (-B_z) + (-v_z) (B_y) \right] \\
 &= q \gamma \left(E_x + v_y B_z - v_z B_y \right) \\
 & = q \gamma \left[ E_x + \left( \mathbf{v} \times \mathbf{B} \right)_x \right] \, .
\end{align}$$

The calculation for , 3 (force components in the _y_ and _z_ directions) yields similar results, so collecting the 3 equations into one:

$$\frac{\mathrm{d} \mathbf{p} }{\mathrm{d} \tau} = q \gamma\left( \mathbf{E} + \mathbf{v} \times \mathbf{B} \right) \, ,$$

and since differentials in coordinate time _dt_ and proper time _dτ_ are related by the Lorentz factor,

_d__t_ = _γ_(_v_)_d__τ_ ,

so we arrive at

$$\frac{\mathrm{d} \mathbf{p} }{\mathrm{d} t} = q \left( \mathbf{E} + \mathbf{v} \times \mathbf{B} \right)\, .$$

This is precisely the Lorentz force law, however, it is important to note that P is the relativistic expression,

P = _γ_(_v_)_m_₀V .

Lorentz force in spacetime algebra (STA)

The electric and magnetic fields are dependent on the velocity of an observer, so the relativistic form of the Lorentz force law can best be exhibited starting from a coordinate-independent expression for the electromagnetic and magnetic fields ℱ, and an arbitrary time-direction, γ₀. This can be settled through Space-Time Algebra (or the geometric algebra of space-time), a type of Clifford's Algebra defined on a pseudo-Euclidean space,[46] as

    E = (ℱ ⋅ γ₀)γ₀

and

    iB = (ℱ ∧ γ₀)γ₀

ℱ is a space-time bivector (an oriented plane segment, just like a vector is an oriented line segment), which has six degrees of freedom corresponding to boosts (rotations in space-time planes) and rotations (rotations in space-space planes). The dot product with the vector γ₀ pulls a vector (in the space algebra) from the translational part, while the wedge-product creates a trivector (in the space algebra) who is dual to a vector which is the usual magnetic field vector. The relativistic velocity is given by the (time-like) changes in a time-position vector v = ẋ, where

    v² = 1,

(which shows our choice for the metric) and the velocity is

    V = cv ∧ γ₀/(v ⋅ γ₀).

The proper (invariant is an inadequate term because no transformation has been defined) form of the Lorentz force law is simply

Note that the order is important because between a bivector and a vector the dot product is anti-symmetric. Upon a space time split like one can obtain the velocity, and fields as above yielding the usual expression.

Lorentz force in general relativity

In the general theory of relativity the equation of motion for a particle with mass m and charge e, moving in a space with metric tensor g_(ab) and electromagnetic field F_(ab), is given as

$$m\frac{du_c}{ds}-m\frac{1}{2}g_{ab,c}u^au^b=eF_{cb}u^b \;,$$
where u^(a) = dx^(a)/ds (dx^(a) is taken along the trajectory), g_(ab, c) = ∂g_(ab)/∂x^(c), and ds² = g_(ab)dx^(a)dx^(b).

The equation can also be written as

$$m\frac{du_c}{ds}-m\Gamma_{abc}u^au^b=eF_{cb}u^b \;,$$
where Γ_(abc) is the Christoffel symbol (of the torsion-free metric connection in general relativity), or as

$$m\frac{Du_c}{ds}=eF_{cb}u^b \;,$$
where D is the covariant differential in general relativity (metric, torsion-free).


Applications

The Lorentz force occurs in many devices, including:

-   Cyclotrons and other circular path particle accelerators
-   Mass spectrometers
-   Velocity Filters
-   Magnetrons
-   Lorentz force velocimetry

In its manifestation as the Laplace force on an electric current in a conductor, this force occurs in many devices including:

-   Electric motors
-   Railguns
-   Linear motors
-   Loudspeakers
-   Magnetoplasmadynamic thrusters
-   Electrical generators
-   Homopolar generators
-   Linear alternators


See also

-   Hall effect
-   Electromagnetism
-   Gravitomagnetism
-   Ampère's force law
-   Hendrik Lorentz
-   Maxwell's equations
-   Formulation of Maxwell's equations in special relativity
-   Moving magnet and conductor problem
-   Abraham–Lorentz force
-   Larmor formula
-   Cyclotron radiation
-   Magnetic potential
-   Magnetoresistance
-   Scalar potential
-   Helmholtz decomposition
-   Guiding center
-   Field line
-   Coulomb's law
-   Electromagnetic buoyancy


Footnotes


References

The numbered references refer in part to the list immediately below.

-   : volume 2.

-   -

-   -


External links

-   Lorentz force (demonstration)
-   Faraday's law: Tankersley and Mosca
-   Notes from Physics and Astronomy HyperPhysics at Georgia State University; see also home page
-   Interactive Java applet on the magnetic deflection of a particle beam in a homogeneous magnetic field by Wolfgang Bauer
-   The Lorentz force formula on a wall directly opposite Lorentz's home in downtown Leiden

Category:Concepts in physics Category:Electromagnetism Category:Maxwell's equations Category:Hendrik Lorentz

[1] In SI units, is measured in teslas (symbol: T). In Gaussian-cgs units, is measured in gauss (symbol: G). See e.g. )

[2] The -field is measured in amperes per metre (A/m) in SI units, and in oersteds (Oe) in cgs units.

[3]

[4]

[5]

[6]

[7]

[8] See Griffiths, page 204.

[9] For example, see the website of the Lorentz Institute or Griffiths.

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22] Paul J. Nahin, _Oliver Heaviside_, JHU Press, 2002.

[23]

[24]

[25]

[26] Per F. Dahl, _Flash of the Cathode Rays: A History of J J Thomson's Electron_, CRC Press, 1997, p. 10.

[27] Lorentz, Hendrik Antoon, _Versuch einer Theorie der electrischen und optischen Erscheinungen in bewegten Körpern_, 1895.

[28]

[29]

[30] See Jackson, page 2. The book lists the four modern Maxwell's equations, and then states, "Also essential for consideration of charged particle motion is the Lorentz force equation, F = _q_ (E+ V × B), which gives the force acting on a point charge _q_ in the presence of electromagnetic fields."

[31] See Griffiths, page 326, which states that Maxwell's equations, "together with the [Lorentz] force law...summarize the entire theoretical content of classical electrodynamics".

[32] See, for example, Jackson, pp. 777–8.

[33] . These authors use the Lorentz force in tensor form as definer of the electromagnetic tensor _F_, in turn the fields E and B.

[34]

[35]

[36]

[37] See Griffiths, pages 301–3.

[38]

[39]

[40]

[41]

[42]

[43]

[44] Classical Mechanics (2nd Edition), T.W.B. Kibble, European Physics Series, McGraw Hill (UK), 1973, .

[45] Jackson, J.D. Chapter 11

[46]