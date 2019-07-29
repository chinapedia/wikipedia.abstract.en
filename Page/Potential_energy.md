In physics, POTENTIAL ENERGY is the energy held by an object because of its position relative to other objects, stresses within itself, its electric charge, or other factors.[1][2]

Common types of potential energy include the gravitational potential energy of an object that depends on its mass and its distance from the center of mass of another object, the elastic potential energy of an extended spring, and the electric potential energy of an electric charge in an electric field. The unit for energy in the International System of Units (SI) is the joule, which has the symbol J.

The term _potential energy_ was introduced by the 19th-century Scottish engineer and physicist William Rankine,[3][4] although it has links to Greek philosopher Aristotle's concept of potentiality. Potential energy is associated with forces that act on a body in a way that the total work done by these forces on the body depends only on the initial and final positions of the body in space. These forces, that are called _conservative forces_, can be represented at every point in space by vectors expressed as gradients of a certain scalar function called _potential_.

Since the work of potential forces acting on a body that moves from a start to an end position is determined only by these two positions, and does not depend on the trajectory of the body, there is a function known as _potential_ that can be evaluated at the two positions to determine this work.


Overview

There are various types of potential energy, each associated with a particular type of force. For example, the work of an elastic force is called elastic potential energy; work of the gravitational force is called gravitational potential energy; work of the Coulomb force is called electric potential energy; work of the strong nuclear force or weak nuclear force acting on the baryon charge is called nuclear potential energy; work of intermolecular forces is called intermolecular potential energy. Chemical potential energy, such as the energy stored in fossil fuels, is the work of the Coulomb force during rearrangement of mutual positions of electrons and nuclei in atoms and molecules. Thermal energy usually has two components: the kinetic energy of random motions of particles and the potential energy of their mutual positions.

Forces derivable from a potential are also called conservative forces. The work done by a conservative force is

 _W_ =  − _Δ__U_
where ΔU is the change in the potential energy associated with the force. The negative sign provides the convention that work done against a force field increases potential energy, while work done by the force field decreases potential energy. Common notations for potential energy are _PE_, _U_, _V_, and _E_(p)_.

Potential energy is the energy by virtue of an object's position relative to other objects.[5] Potential energy is often associated with restoring forces such as a spring or the force of gravity. The action of stretching a spring or lifting a mass is performed by an external force that works against the force field of the potential. This work is stored in the force field, which is said to be stored as potential energy. If the external force is removed the force field acts on the body to perform the work as it moves the body back to the initial position, reducing the stretch of the spring or causing a body to fall.

Consider a ball whose mass is m and whose height is h. The acceleration g of free fall is approximately constant, so the weight force of the ball mg is constant. Force × displacement gives the work done, which is equal to the gravitational potential energy, thus

_U__(_g_) = _m__g__h_

The more formal definition is that potential energy is the energy difference between the energy of an object in a given position and its energy at a reference position.


Work and potential energy

Potential energy is closely linked with forces. If the work done by a force on a body that moves from _A_ to _B_ does not depend on the path between these points (if the work is done by a conservative force), then the work of this force measured from _A_ assigns a scalar value to every other point in space and defines a scalar potential field. In this case, the force can be defined as the negative of the vector gradient of the potential field.

If the work for an applied force is independent of the path, then the work done by the force is evaluated at the start and end of the trajectory of the point of application. This means that there is a function _U_(X), called a "potential," that can be evaluated at the two points X_(A) and X_(B) to obtain the work over any trajectory between these two points. It is tradition to define this function with a negative sign so that positive work is a reduction in the potential, that is

_W_ = ∫_(_C_)F ⋅ _d_X = _U_(X_(_A_)) − _U_(X_(_B_))
where _C_ is the trajectory taken from A to B. Because the work done is independent of the path taken, then this expression is true for any trajectory, _C_, from A to B.

The function _U_(X) is called the potential energy associated with the applied force. Examples of forces that have potential energies are gravity and spring forces.

Derivable from a potential

In this section the relationship between work and potential energy is presented in more detail. The line integral that defines work along curve _C_ takes a special form if the force F is related to a scalar field φ(X) so that

$$\mathbf{F}={\nabla \varphi} = \left ( \frac{\partial \varphi}{\partial x}, \frac{\partial \varphi}{\partial y}, \frac{\partial \varphi}{\partial z} \right ).$$
In this case, work along the curve is given by

_W_ = ∫_(_C_)F ⋅ _d_X = ∫_(_C_)∇_φ_ ⋅ _d_X,
which can be evaluated using the gradient theorem to obtain

_W_ = _φ_(X_(_B_)) − _φ_(X_(_A_)).
This shows that when forces are derivable from a scalar field, the work of those forces along a curve _C_ is computed by evaluating the scalar field at the start point _A_ and the end point _B_ of the curve. This means the work integral does not depend on the path between _A_ and _B_ and is said to be independent of the path.

Potential energy _U_=-φ(X) is traditionally defined as the negative of this scalar field so that work by the force field decreases potential energy, that is

_W_ = _U_(X_(_A_)) − _U_(X_(_B_)).

In this case, the application of the del operator to the work function yields,

$${\nabla W} =  -{\nabla U} = -\left ( \frac{\partial U}{\partial x}, \frac{\partial U}{\partial y}, \frac{\partial U}{\partial z} \right ) = \mathbf{F},$$
and the force F is said to be "derivable from a potential."[6] This also necessarily implies that F must be a conservative vector field. The potential _U_ defines a force F at every point X in space, so the set of forces is called a force field.

Computing potential energy

Given a force field F(X), evaluation of the work integral using the gradient theorem can be used to find the scalar function associated with potential energy. This is done by introducing a parameterized curve γ(t)=R(t) from γ(a)=A to γ(b)=B, and computing,

$$\begin{align}
\int_{\gamma} \nabla\varphi(\mathbf{r})  \cdot  d\mathbf{r} &=\int_a^b \nabla\varphi(\mathbf{r}(t))  \cdot  \mathbf{r}'(t)dt, \\
&=\int_a^b \frac{d}{dt}\varphi(\mathbf{r}(t))dt =\varphi(\mathbf{r}(b))-\varphi(\mathbf{r}(a))=\varphi\left(\mathbf{x}_B\right)-\varphi\left(\mathbf{x}_A\right).
\end{align}$$

For the force field F, let V= dR/dt, then the gradient theorem yields,

$$\begin{align}
\int_{\gamma} \mathbf{F} \cdot  d\mathbf{r} &=\int_a^b \mathbf{F}  \cdot  \mathbf{v}dt, \\
&=-\int_a^b \frac{d}{dt}U(\mathbf{r}(t))dt =U\left(\mathbf{x}_A\right)- U\left(\mathbf{x}_B\right).
\end{align}$$

The power applied to a body by a force field is obtained from the gradient of the work, or potential, in the direction of the velocity V of the point of application, that is

_P_(_t_) =  − ∇_U_ ⋅ V = F ⋅ V.

Examples of work that can be computed from potential functions are gravity and spring forces.[7]


Potential energy for near Earth gravity

Trebuchet.jpg uses the gravitational potential energy of the counterweight to throw projectiles over two hundred meters]]

For small height changes, gravitational potential energy can be computed using

_U__(_g_) = _m__g__h_,

where m is the mass in kg, g is the local gravitational field (9.8 metres per second squared on earth) and h is the height above a reference level in metres.

In classical physics, gravity exerts a constant downward force _F_=(0, 0, _F_(z)_) on the center of mass of a body moving near the surface of the Earth. The work of gravity on a body moving along a trajectory _R_(t) = (_x_(t), _y_(t), _z_(t)), such as the track of a roller coaster is calculated using its velocity, _V_=(_v__(x), _v__(y), _v__(z)), to obtain

_W_ = ∫_(_t_₁)^(_t_₂)F ⋅ V_d__t_ = ∫_(_t_₁)^(_t_₂)_F__(_z_)_v__(_z_)_d__t_ = _F__(_z_)_Δ__z_.
where the integral of the vertical component of velocity is the vertical distance. Notice that the work of gravity depends only on the vertical movement of the curve _R_(t).


Potential energy for a linear spring

Springs_009.jpg are used for storing elastic potential energy]] Longbowmen.jpg is one of humankind's oldest applications of elastic potential energy]]

A horizontal spring exerts a force F = (−_kx_, 0, 0) that is proportional to its deformation in the axial or _x_ direction. The work of this spring on a body moving along the space curve S(_t_) = (_x_(_t_), _y_(_t_), _z_(_t_)), is calculated using its velocity, V = (_v__(x), _v__(y), _v__(z)), to obtain

$$W=\int_0^t\mathbf{F}\cdot\mathbf{v}\mathrm\,{d}t =-\int_0^t kx v_x \mathrm\,{d}t = -\frac{1}{2}kx^2.$$
For convenience, consider contact with the spring occurs at _t_ = 0, then the integral of the product of the distance _x_ and the _x_-velocity, _xv_(x)_, is _x_²/2.

The function

$$U(x) = \frac{1}{2}kx^2,$$
is called the potential energy of a linear spring.

Elastic potential energy is the potential energy of an elastic object (for example a bow or a catapult) that is deformed under tension or compression (or stressed in formal terminology). It arises as a consequence of a force that tries to restore the object to its original shape, which is most often the electromagnetic force between the atoms and molecules that constitute the object. If the stretch is released, the energy is transformed into kinetic energy.


Potential energy for gravitational forces between two bodies

The gravitational potential function, also known as gravitational potential energy, is:

$$U=-\frac{GMm}{r},$$

The negative sign follows the convention that work is gained from a loss of potential energy.

Derivation

The gravitational force between two bodies of mass _M_ and _m_ separated by a distance _r_ is given by Newton's law

$$\mathbf{F}=-\frac{GMm}{r^2}\mathbf{\hat{r}},$$

where R̂ is a vector of length 1 pointing from _M_ to _m_ and _G_ is the gravitational constant.

Let the mass _m_ move at the velocity V then the work of gravity on this mass as it moves from position R(t₁) to R(t₂) is given by

$$W=-\int^{\mathbf{r}(t_2)}_{\mathbf{r}(t_1)}\frac{GMm}{r^3}\mathbf{r}\cdot d\mathbf{r}=-\int^{t_2}_{t_1}\frac{GMm}{r^3}\mathbf{r}\cdot\mathbf{v}\mathrm{d}t.$$
Notice that the position and velocity of the mass _m_ are given by

R = _r_E_(_r_),  V = _ṙ_E_(_r_) + _r__θ̇_E_(_t_),

where E_(_r_) and E_(_t_) are the radial and tangential unit vectors directed relative to the vector from _M_ to _m_. Use this to simplify the formula for work of gravity to,

$$W=-\int^{t_2}_{t_1}\frac{GmM}{r^3}(r\mathbf{e}_r)\cdot(\dot{r}\mathbf{e}_r + r\dot{\theta}\mathbf{e}_t)\mathrm{d}t = -\int^{t_2}_{t_1}\frac{GmM}{r^3}r\dot{r}\mathrm{d}t = \frac{GMm}{r(t_2)}-\frac{GMm}{r(t_1)}.$$

This calculation uses the fact that

$$\frac{\mathrm{d}}{\mathrm{d}t}r^{-1}=-r^{-2}\dot{r}=-\frac{\dot{r}}{r^2}.$$


Potential energy for electrostatic forces between two bodies

The electrostatic force exerted by a charge _Q_ on another charge _q_ separated by a distance _r_ is given by Coulomb's Law

$$\mathbf{F}=\frac{1}{4\pi\varepsilon_0}\frac{Qq}{r^2}\mathbf{\hat{r}},$$

where R̂ is a vector of length 1 pointing from _Q_ to _q_ and _ε_₀ is the vacuum permittivity. This may also be written using Coulomb constant .

The work _W_ required to move _q_ from _A_ to any point _B_ in the electrostatic force field is given by the potential function

$$U({r})=\frac{1}{4\pi\varepsilon_0}\frac{Qq}{r}.$$


Reference level

The potential energy is a function of the state a system is in, and is defined relative to that for a particular state. This reference state is not always a real state; it may also be a limit, such as with the distances between all bodies tending to infinity, provided that the energy involved in tending to that limit is finite, such as in the case of inverse-square law forces. Any arbitrary reference state could be used; therefore it can be chosen based on convenience.

Typically the potential energy of a system depends on the _relative_ positions of its components only, so the reference state can also be expressed in terms of relative positions.


Gravitational potential energy

Gravitational energy is the potential energy associated with gravitational force, as work is required to elevate objects against Earth's gravity. The potential energy due to elevated positions is called gravitational potential energy, and is evidenced by water in an elevated reservoir or kept behind a dam. If an object falls from one point to another point inside a gravitational field, the force of gravity will do positive work on the object, and the gravitational potential energy will decrease by the same amount.

Solar_sys.jpg]]

Consider a book placed on top of a table. As the book is raised from the floor to the table, some external force works against the gravitational force. If the book falls back to the floor, the "falling" energy the book receives is provided by the gravitational force. Thus, if the book falls off the table, this potential energy goes to accelerate the mass of the book and is converted into kinetic energy. When the book hits the floor this kinetic energy is converted into heat, deformation, and sound by the impact.

The factors that affect an object's gravitational potential energy are its height relative to some reference point, its mass, and the strength of the gravitational field it is in. Thus, a book lying on a table has less gravitational potential energy than the same book on top of a taller cupboard and less gravitational potential energy than a heavier book lying on the same table. An object at a certain height above the Moon's surface has less gravitational potential energy than at the same height above the Earth's surface because the Moon's gravity is weaker. Note that "height" in the common sense of the term cannot be used for gravitational potential energy calculations when gravity is not assumed to be a constant. The following sections provide more detail.

Local approximation

The strength of a gravitational field varies with location. However, when the change of distance is small in relation to the distances from the center of the source of the gravitational field, this variation in field strength is negligible and we can assume that the force of gravity on a particular object is constant. Near the surface of the Earth, for example, we assume that the acceleration due to gravity is a constant ("standard gravity"). In this case, a simple expression for gravitational potential energy can be derived using the _W_ = _Fd_ equation for work, and the equation

_W__(_F_) =  − _Δ__U__(_F_).​

The amount of gravitational potential energy held by an elevated object is equal to the work done against gravity in lifting it. The work done equals the force required to move it upward multiplied with the vertical distance it is moved (remember _W = Fd_). The upward force required while moving at a constant velocity is equal to the weight, _mg_, of an object, so the work done in lifting it through a height _h_ is the product _mgh_. Thus, when accounting only for mass, gravity, and altitude, the equation is:[8]

_U_ = _m__g__h_​
where _U_ is the potential energy of the object relative to its being on the Earth's surface, _m_ is the mass of the object, _g_ is the acceleration due to gravity, and _h_ is the altitude of the object.[9] If _m_ is expressed in kilograms, _g_ in m/s² and _h_ in metres then _U_ will be calculated in joules.

Hence, the potential difference is

$$\,\Delta U = mg \Delta h.\$$

General formula

However, over large variations in distance, the approximation that _g_ is constant is no longer valid, and we have to use calculus and the general mathematical definition of work to determine gravitational potential energy. For the computation of the potential energy, we can integrate the gravitational force, whose magnitude is given by Newton's law of gravitation, with respect to the distance _r_ between the two bodies. Using that definition, the gravitational potential energy of a system of masses _m_₁ and _M_₂ at a distance _r_ using gravitational constant _G_ is

$$U = -G \frac{m_1 M_2}{r}\ + K$$
,

where _K_ is an arbitrary constant dependent on the choice of datum from which potential is measured. Choosing the convention that _K_=0 (i.e. in relation to a point at infinity) makes calculations simpler, albeit at the cost of making _U_ negative; for why this is physically reasonable, see below.

Given this formula for _U_, the total potential energy of a system of _n_ bodies is found by summing, for all $\frac{n ( n - 1 )}{2}$ pairs of two bodies, the potential energy of the system of those two bodies.

Gravitational_potential_summation_2.pngConsidering the system of bodies as the combined set of small particles the bodies consist of, and applying the previous on the particle level we get the negative gravitational binding energy. This potential energy is more strongly negative than the total potential energy of the system of bodies as such since it also includes the negative gravitational binding energy of each body. The potential energy of the system of bodies as such is the negative of the energy needed to separate the bodies from each other to infinity, while the gravitational binding energy is the energy needed to separate all particles from each other to infinity.

$$U = - m \left(G \frac{ M_1}{r_1}+ G \frac{ M_2}{r_2}\right)$$
therefore,

$$U = - m  \sum G \frac{ M}{r}$$
,

Negative gravitational energy

As with all potential energies, only differences in gravitational potential energy matter for most physical purposes, and the choice of zero point is arbitrary. Given that there is no reasonable criterion for preferring one particular finite _r_ over another, there seem to be only two reasonable choices for the distance at which _U_ becomes zero: r = 0 and r = ∞. The choice of U = 0 at infinity may seem peculiar, and the consequence that gravitational energy is always negative may seem counterintuitive, but this choice allows gravitational potential energy values to be finite, albeit negative.

The singularity at r = 0 in the formula for gravitational potential energy means that the only other apparently reasonable alternative choice of convention, with U = 0 for r = 0, would result in potential energy being positive, but infinitely large for all nonzero values of _r_, and would make calculations involving sums or differences of potential energies beyond what is possible with the real number system. Since physicists abhor infinities in their calculations, and _r_ is always non-zero in practice, the choice of U = 0 at infinity is by far the more preferable choice, even if the idea of negative energy in a gravity well appears to be peculiar at first.

The negative value for gravitational energy also has deeper implications that make it seem more reasonable in cosmological calculations where the total energy of the universe can meaningfully be considered; see inflation theory for more on this.

Uses

Gravitational potential energy has a number of practical uses, notably the generation of pumped-storage hydroelectricity. For example, in Dinorwig, Wales, there are two lakes, one at a higher elevation than the other. At times when surplus electricity is not required (and so is comparatively cheap), water is pumped up to the higher lake, thus converting the electrical energy (running the pump) to gravitational potential energy. At times of peak demand for electricity, the water flows back down through electrical generator turbines, converting the potential energy into kinetic energy and then back into electricity. The process is not completely efficient and some of the original energy from the surplus electricity is in fact lost to friction.[10][11][12][13][14]

Gravitational potential energy is also used to power clocks in which falling weights operate the mechanism. It's also used by counterweights for lifting up an elevator, crane, or sash window. Roller coasters are an entertaining way to utilize potential energy – chains are used to move a car up an incline (building up gravitational potential energy), to then have that energy converted into kinetic energy as it falls.

Another practical use is utilizing gravitational potential energy to descend (perhaps coast) downhill in transportation such as the descent of an automobile, truck, railroad train, bicycle, airplane, or fluid in a pipeline. In some cases the kinetic energy obtained from the potential energy of descent may be used to start ascending the next grade such as what happens when a road is undulating and has frequent dips. The commercialization of stored energy (in the form of rail cars raised to higher elevations) that is then converted to electrical energy when needed by an electrical grid, is being undertaken in the United States in a system called Advanced Rail Energy Storage (ARES).[15][16][17]

    _Further information: Gravitational potential energy storage_


Chemical potential energy

Chemical potential energy is a form of potential energy related to the structural arrangement of atoms or molecules. This arrangement may be the result of chemical bonds within a molecule or otherwise. Chemical energy of a chemical substance can be transformed to other forms of energy by a chemical reaction. As an example, when a fuel is burned the chemical energy is converted to heat, same is the case with digestion of food metabolized in a biological organism. Green plants transform solar energy to chemical energy through the process known as photosynthesis, and electrical energy can be converted to chemical energy through electrochemical reactions.

The similar term chemical potential is used to indicate the potential of a substance to undergo a change of configuration, be it in the form of a chemical reaction, spatial transport, particle exchange with a reservoir, etc.


Electric potential energy

An object can have potential energy by virtue of its electric charge and several forces related to their presence. There are two main types of this kind of potential energy: electrostatic potential energy, electrodynamic potential energy (also sometimes called magnetic potential energy).

Plasma-lamp_2.jpg formed inside a gas filled sphere]]

Electrostatic potential energy

Electrostatic potential energy between two bodies in space is obtained from the force exerted by a charge _Q_ on another charge _q_ which is given by

$$\mathbf{F}_{e}=-\frac{1}{4\pi\varepsilon_0}\frac{Qq}{r^2}\mathbf{\hat{r}},$$

where R̂ is a vector of length 1 pointing from _Q_ to _q_ and _ε_₀ is the vacuum permittivity. This may also be written using Coulomb's constant .

If the electric charge of an object can be assumed to be at rest, then it has potential energy due to its position relative to other charged objects. The electrostatic potential energy is the energy of an electrically charged particle (at rest) in an electric field. It is defined as the work that must be done to move it from an infinite distance away to its present location, adjusted for non-electrical forces on the object. This energy will generally be non-zero if there is another electrically charged object nearby.

The work _W_ required to move _q_ from _A_ to any point _B_ in the electrostatic force field is given by

_Δ__U__(_A__B_)(R) =  − ∫_(_A_)^(_B_)F_(E) ⋅ _d_R
typically given in _J_ for Joules. A related quantity called _electric potential_ (commonly denoted with a _V_ for voltage) is equal to the electric potential energy per unit charge.

Magnetic potential energy

The energy of a magnetic moment Μ in an externally produced magnetic B-field has potential energy[18]

    U =  − Μ ⋅ B.

The magnetization in a field is

$$U = -\frac{1}{2}\int \mathbf{M}\cdot\mathbf{B} \mathrm{d}V,$$

where the integral can be over all space or, equivalently, where is nonzero.[19] Magnetic potential energy is the form of energy related not only to the distance between magnetic materials, but also to the orientation, or alignment, of those materials within the field. For example, the needle of a compass has the lowest magnetic potential energy when it is aligned with the north and south poles of the Earth's magnetic field. If the needle is moved by an outside force, torque is exerted on the magnetic dipole of the needle by the Earth's magnetic field, causing it to move back into alignment. The magnetic potential energy of the needle is highest when its field is in the same direction as the Earth's magnetic field. Two magnets will have potential energy in relation to each other and the distance between them, but this also depends on their orientation. If the opposite poles are held apart, the potential energy will be higher the further they are apart and lower the closer they are. Conversely, like poles will have the highest potential energy when forced together, and the lowest when they spring apart.[20][21]


Nuclear potential energy

Nuclear potential energy is the potential energy of the particles inside an atomic nucleus. The nuclear particles are bound together by the strong nuclear force. Weak nuclear forces provide the potential energy for certain kinds of radioactive decay, such as beta decay.

Nuclear particles like protons and neutrons are not destroyed in fission and fusion processes, but collections of them can have less mass than if they were individually free, in which case this mass difference can be liberated as heat and radiation in nuclear reactions (the heat and radiation have the missing mass, but it often escapes from the system, where it is not measured). The energy from the Sun is an example of this form of energy conversion. In the Sun, the process of hydrogen fusion converts about 4 million tonnes of solar matter per second into electromagnetic energy, which is radiated into space.


Forces and potential energy

Potential energy is closely linked with forces. If the work done by a force on a body that moves from _A_ to _B_ does not depend on the path between these points, then the work of this force measured from _A_ assigns a scalar value to every other point in space and defines a scalar potential field. In this case, the force can be defined as the negative of the vector gradient of the potential field.

For example, gravity is a conservative force. The associated potential is the gravitational potential, often denoted by ϕ or V, corresponding to the energy per unit mass as a function of position. The gravitational potential energy of two particles of mass _M_ and _m_ separated by a distance _r_ is

$$U = -\frac{G M m}{r},$$
The gravitational potential (specific energy) of the two bodies is

$$\phi = -\left( \frac{GM}{r} + \frac{Gm}{r} \right)= -\frac{G(M+m)}{r} = -\frac{GMm}{\mu r} = \frac{U}{\mu}.$$
where μ is the reduced mass.

The work done against gravity by moving an infinitesimal mass from point A with U = a to point B with U = b is (b − a) and the work done going back the other way is (a − b) so that the total work done in moving from A to B and returning to A is

    U_(A → B → A) = (b − a) + (a − b) = 0. 

If the potential is redefined at A to be a + c and the potential at B to be b + c, where c is a constant (i.e. c can be any number, positive or negative, but it must be the same at A as it is at B) then the work done going from A to B is

    U_(A → B) = (b + c) − (a + c) = b − a 

as before.

In practical terms, this means that one can set the zero of U and ϕ anywhere one likes. One may set it to be zero at the surface of the Earth, or may find it more convenient to set zero at infinity (as in the expressions given earlier in this section).

A conservative force can be expressed in the language of differential geometry as a closed form. As Euclidean space is contractible, its de Rham cohomology vanishes, so every closed form is also an exact form, and can be expressed as the gradient of a scalar field. This gives a mathematical justification of the fact that all conservative forces are gradients of a potential field.


Notes


References

-   -


External links

-   What is potential energy?

Category:Forms of energy Category:Gravity Potentials

[1]

[2]

[3] William John Macquorn Rankine (1853) "On the general law of the transformation of energy," _Proceedings of the Philosophical Society of Glasgow_, vol. 3, no. 5, pages 276–280; reprinted in: (1) _Philosophical Magazine_, series 4, vol. 5, no. 30, pages 106–117 (February 1853); and (2) W. J. Millar, ed., _Miscellaneous Scientific Papers: by W. J. Macquorn Rankine_, ... (London, England: Charles Griffin and Co., 1881), part II, pages 203–208.

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11] Jacob, Thierry.Pumped storage in Switzerland – an outlook beyond 2000 _Stucky_. Accessed: 13 February 2012.

[12] Levine, Jonah G. Pumped Hydroelectric Energy Storage and Spatial Diversity of Wind Resources as Methods of Improving Utilization of Renewable Energy Sources page 6, _University of Colorado_, December 2007. Accessed: 12 February 2012.

[13] Yang, Chi-Jen. Pumped Hydroelectric Storage _Duke University_. Accessed: 12 February 2012.

[14] Energy Storage _Hawaiian Electric Company_. Accessed: 13 February 2012.

[15] Packing Some Power: Energy Technology: Better ways of storing energy are needed if electricity systems are to become cleaner and more efficient, _The Economist_, 3 March 2012

[16] Downing, Louise. Ski Lifts Help Open $25 Billion Market for Storing Power, Bloomberg News online, 6 September 2012

[17] Kernan, Aedan. Storing Energy on Rail Tracks , Leonardo-Energy.org website, 30 October 2013

[18]

[19]

[20]

[21]