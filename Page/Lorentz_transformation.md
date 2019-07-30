In physics, the LORENTZ TRANSFORMATIONS are a one-parameter family of linear transformations from a coordinate frame in spacetime to another frame that moves at a constant velocity (the parameter) relative to the former. The transformations are named after the Dutch physicist Hendrik Lorentz. The respective inverse transformation is then parametrized by the negative of this velocity.

The most common form of the transformation, parametrized by the real constant v, representing a velocity confined to the -direction, is expressed as[1]

$$\begin{align}
  t' &= \gamma \left( t - \frac{vx}{c^2} \right)  \\
  x' &= \gamma \left( x - v t \right)\\
  y' &= y \\
  z' &= z
\end{align}$$
where and are the coordinates of an event in two frames, where the primed frame is seen from the unprimed frame as moving with speed along the -axis, is the speed of light, and $\gamma = \textstyle\left ( \sqrt{1 - \frac{v^2}{c^2}}\right )^{-1}$ is the Lorentz factor. When speed _v_ is significantly lower than _c_, the factor is negligible, but as _v_ approaches _c_, there is a significant effect. The value of _v_ cannot exceed _c_, in current understanding.

Expressing the speed as $\beta = \frac{v}{c},$ an equivalent form of the transformation is[2]

$$\begin{align}
  ct' &= \gamma \left( c t - \beta x \right)  \\
  x' &= \gamma \left( x  - \beta ct \right)  \\
  y' &= y \\
  z' &= z.
\end{align}$$

Frames of reference can be divided into two groups: inertial (relative motion with constant velocity) and non-inertial (accelerating, moving in curved paths, rotational motion with constant angular velocity, etc.). The term "Lorentz transformations" only refers to transformations between _inertial_ frames, usually in the context of special relativity.

In each reference frame, an observer can use a local coordinate system (usually Cartesian coordinates in this context) to measure lengths, and a clock to measure time intervals. An event is something that happens at a point in space at an instant of time, or more formally a point in spacetime. The transformations connect the space and time coordinates of an event as measured by an observer in each frame.[3]

They supersede the Galilean transformation of Newtonian physics, which assumes an absolute space and time (see Galilean relativity). The Galilean transformation is a good approximation only at relative speeds well below the speed of light. Lorentz transformations have a number of unintuitive features that do not appear in Galilean transformations. For example, they reflect the fact that observers moving at different velocities may measure different distances, elapsed times, and even different orderings of events, but always such that the speed of light is the same in all inertial reference frames. The invariance of light speed is one of the postulates of special relativity.

Historically, the transformations were the result of attempts by Lorentz and others to explain how the speed of light was observed to be independent of the reference frame, and to understand the symmetries of the laws of electromagnetism. The Lorentz transformation is in accordance with special relativity, but was derived before Einstein developed special relativity.

The Lorentz transformation is a linear transformation. It may include a rotation of space; a rotation-free Lorentz transformation is called a LORENTZ BOOST. In Minkowski space, the mathematical model of spacetime in special relativity, the Lorentz transformations preserve the spacetime interval between any two events. This property is the defining property of a Lorentz transformation. They describe only the transformations in which the spacetime event at the origin is left fixed. They can be considered as a hyperbolic rotation of Minkowski space. The more general set of transformations that also includes translations is known as the Poincaré group.


History

Many physicists—including Woldemar Voigt, George FitzGerald, Joseph Larmor, and Hendrik Lorentz[4] himself—had been discussing the physics implied by these equations since 1887.[5] Early in 1889, Oliver Heaviside had shown from Maxwell's equations that the electric field surrounding a spherical distribution of charge should cease to have spherical symmetry once the charge is in motion relative to the aether. FitzGerald then conjectured that Heaviside's distortion result might be applied to a theory of intermolecular forces. Some months later, FitzGerald published the conjecture that bodies in motion are being contracted, in order to explain the baffling outcome of the 1887 aether-wind experiment of Michelson and Morley. In 1892, Lorentz independently presented the same idea in a more detailed manner, which was subsequently called FitzGerald–Lorentz contraction hypothesis.[6] Their explanation was widely known before 1905.[7]

Lorentz (1892–1904) and Larmor (1897–1900), who believed the luminiferous aether hypothesis, also looked for the transformation under which Maxwell's equations are invariant when transformed from the aether to a moving frame. They extended the FitzGerald–Lorentz contraction hypothesis and found out that the time coordinate has to be modified as well ("local time"). Henri Poincaré gave a physical interpretation to local time (to first order in _v_/_c_, the relative velocity of the two reference frames normalized to the speed of light) as the consequence of clock synchronization, under the assumption that the speed of light is constant in moving frames.[8] Larmor is credited to have been the first to understand the crucial time dilation property inherent in his equations.[9]

In 1905, Poincaré was the first to recognize that the transformation has the properties of a mathematical group, and named it after Lorentz.[10] Later in the same year Albert Einstein published what is now called special relativity, by deriving the Lorentz transformation under the assumptions of the principle of relativity and the constancy of the speed of light in any inertial reference frame, and by abandoning the mechanistic aether as unnecessary.[11]


Derivation of the group of Lorentz transformations

An _event_ is something that happens at a certain point in spacetime, or more generally, the point in spacetime itself. In any inertial frame an event is specified by a time coordinate _ct_ and a set of Cartesian coordinates to specify position in space in that frame. Subscripts label individual events.

From Einstein's second postulate of relativity follows

in all inertial frames for events connected by _light signals_. The quantity on the left is called the _spacetime interval_ between events (_t_₁, _x_₁, _y_₁, _z_₁)}} and (_t_₂, _x_₂, _y_₂, _z_₂)}}. The interval between _any two_ events, not necessarily separated by light signals, is in fact invariant, i.e., independent of the state of relative motion of observers in different inertial frames, as is shown using homogeneity and isotropy of space. The transformation sought after thus must possess the property that

where are the spacetime coordinates used to define events in one frame, and are the coordinates in another frame. First one observes that is satisfied if an arbitrary -tuple of numbers are added to events and . Such transformations are called _spacetime translations_ and are not dealt with further here. Then one observes that a _linear_ solution preserving the origin of the simpler problem

solves the general problem too. (A solution satisfying the left formula automatically satisfies the right formula, see polarization identity.) Finding the solution to the simpler problem is just a matter of look-up in the theory of classical groups that preserve bilinear forms of various signature.[12] First equation in can be written more compactly as

where refers to the bilinear form of signature on exposed by the right hand side formula in . The alternative notation defined on the right is referred to as the _relativistic dot product_. Spacetime mathematically viewed as endowed with this bilinear form is known as Minkowski space . The Lorentz transformation is thus an element of the group Lorentz group , the Lorentz group or, for those that prefer the other metric signature, (also called the Lorentz group).[13] One has

which is precisely preservation of the bilinear form which implies (by linearity of and bilinearity of the form) that is satisfied. The elements of the Lorentz group are rotations and _boosts_ and mixes thereof. If the spacetime translations are included, then one obtains the _inhomogeneous Lorentz group_ or the Poincaré group.


Generalities

The relations between the primed and unprimed spacetime coordinates are the LORENTZ TRANSFORMATIONS, each coordinate in one frame is a linear function of all the coordinates in the other frame, and the inverse functions are the inverse transformation. Depending on how the frames move relative to each other, and how they are oriented in space relative to each other, other parameters that describe direction, speed, and orientation enter the transformation equations.

Transformations describing relative motion with constant (uniform) velocity and without rotation of the space coordinate axes are called _boosts_, and the relative velocity between the frames is the parameter of the transformation. The other basic type of Lorentz transformations is rotations in the spatial coordinates only, these are also inertial frames since there is no relative motion, the frames are simply tilted (and not continuously rotating), and in this case quantities defining the rotation are the parameters of the transformation (e.g., axis–angle representation, or Euler angles, etc.). A combination of a rotation and boost is a _homogeneous transformation_, which transforms the origin back to the origin.

The full Lorentz group also contains special transformations that are neither rotations nor boosts, but rather reflections in a plane through the origin. Two of these can be singled out; spatial inversion in which the spatial coordinates of all events are reversed in sign and temporal inversion in which the time coordinate for each event gets its sign reversed.

Boosts should not be conflated with mere displacements in spacetime; in this case, the coordinate systems are simply shifted and there is no relative motion. However, these also count as symmetries forced by special relativity since they leave the spacetime interval invariant. A combination of a rotation with a boost, followed by a shift in spacetime, is an _inhomogeneous Lorentz transformation_, an element of the Poincaré group, which is also called the inhomogeneous Lorentz group.


Physical formulation of Lorentz boosts

Coordinate transformation

A "stationary" observer in frame defines events with coordinates . Another frame moves with velocity relative to , and an observer in this "moving" frame defines events using the coordinates .

The coordinate axes in each frame are parallel (the and axes are parallel, the and axes are parallel, and the and axes are parallel), remain mutually perpendicular, and relative motion is along the coincident axes. At _t_′ {{=}} 0}}, the origins of both coordinate systems are the same, (_x_′, _y_′, _z_′) {{=}} (0, 0, 0)}}. In other words, the times and positions are coincident at this event. If all these hold, then the coordinate systems are said to be in STANDARD CONFIGURATION, or SYNCHRONIZED.

If an observer in records an event , then an observer in records the _same_ event with coordinates[14]

where is the relative velocity between frames in the -direction, is the speed of light, and

$$\gamma = \frac{1}{ \sqrt{1 - \frac{v^2}{c^2}}}$$

(lowercase gamma) is the Lorentz factor.

Here, is the _parameter_ of the transformation, for a given boost it is a constant number, but can take a continuous range of values. In the setup used here, positive relative velocity is motion along the positive directions of the axes, zero relative velocity 0}} is no relative motion, while negative relative velocity is relative motion along the negative directions of the axes. The magnitude of relative velocity cannot equal or exceed , so only subluminal speeds are allowed. The corresponding range of is .

The transformations are not defined if is outside these limits. At the speed of light ( _c_}}) is infinite, and faster than light () is a complex number, each of which make the transformations unphysical. The space and time coordinates are measurable quantities and numerically must be real numbers.

As an active transformation, an observer in F′ notices the coordinates of the event to be "boosted" in the negative directions of the axes, because of the in the transformations. This has the equivalent effect of the _coordinate system_ F′ boosted in the positive directions of the axes, while the event does not change and is simply represented in another coordinate system, a passive transformation.

The inverse relations ( in terms of ) can be found by algebraically solving the original set of equations. A more efficient way is to use physical principles. Here is the "stationary" frame while is the "moving" frame. According to the principle of relativity, there is no privileged frame of reference, so the transformations from to must take exactly the same form as the transformations from to . The only difference is moves with velocity relative to (i.e., the relative velocity has the same magnitude but is oppositely directed). Thus if an observer in notes an event , then an observer in notes the _same_ event with coordinates

and the value of remains unchanged. This "trick" of simply reversing the direction of relative velocity while preserving its magnitude, and exchanging primed and unprimed variables, always applies to finding the inverse transformation of every boost in any direction.

Sometimes it is more convenient to use _v_/_c_}} (lowercase beta) instead of , so that

$$\begin{align}
  ct' &= \gamma \left( ct - \beta x \right) \,, \\
   x' &= \gamma \left( x - \beta ct \right) \,, \\
\end{align}$$

which shows much more clearly the symmetry in the transformation. From the allowed ranges of and the definition of , it follows . The use of and is standard throughout the literature.

The Lorentz transformations can also be derived in a way that resembles circular rotations in 3d space using the hyperbolic functions. For the boost in the direction, the results are

where (lowercase zeta) is a parameter called _rapidity_ (many other symbols are used, including ). Given the strong resemblance to rotations of spatial coordinates in 3d space in the Cartesian xy, yz, and zx planes, a Lorentz boost can be thought of as a hyperbolic rotation of spacetime coordinates in the xt, yt, and zt Cartesian-time planes of 4d Minkowski space. The parameter is the hyperbolic angle of rotation, analogous to the ordinary angle for circular rotations. This transformation can be illustrated with a Minkowski diagram.

The hyperbolic functions arise from the _difference_ between the squares of the time and spatial coordinates in the spacetime interval, rather than a sum. The geometric significance of the hyperbolic functions can be visualized by taking 0}} or 0}} in the transformations. Squaring and subtracting the results, one can derive hyperbolic curves of constant coordinate values but varying , which parametrizes the curves according to the identity

cosh²_ζ_ − sinh²_ζ_ = 1 .

Conversely the and axes can be constructed for varying coordinates but constant . The definition

$$\tanh\zeta = \frac{\sinh\zeta}{\cosh\zeta} \,,$$

provides the link between a constant value of rapidity, and the slope of the axis in spacetime. A consequence these two hyperbolic formulae is an identity that matches the Lorentz factor

$$\cosh\zeta = \frac{1}{\sqrt{1 - \tanh^2\zeta}} \,.$$

Comparing the Lorentz transformations in terms of the relative velocity and rapidity, or using the above formulae, the connections between , , and are

$$\begin{align}
         \beta &= \tanh\zeta  \,, \\
        \gamma &= \cosh\zeta  \,, \\
  \beta \gamma &= \sinh\zeta  \,.
\end{align}$$

Taking the inverse hyperbolic tangent gives the rapidity

_ζ_ = tanh^( − 1)_β_ .

Since , it follows . From the relation between and , positive rapidity is motion along the positive directions of the axes, zero rapidity 0}} is no relative motion, while negative rapidity is relative motion along the negative directions of the axes.

The inverse transformations are obtained by exchanging primed and unprimed quantities to switch the coordinate frames, and negating rapidity since this is equivalent to negating the relative velocity. Therefore,

The inverse transformations can be similarly visualized by considering the cases when 0}} and 0}}.

So far the Lorentz transformations have been applied to _one event_. If there are two events, there is a spatial separation and time interval between them. It follows from the linearity of the Lorentz transformations that two values of space and time coordinates can be chosen, the Lorentz transformations can be applied to each, then subtracted to get the Lorentz transformations of the differences;

$$\begin{align}
  \Delta t' &= \gamma \left( \Delta t - \frac{v \, \Delta x}{c^2} \right) \,, \\
  \Delta x' &= \gamma \left( \Delta x - v \, \Delta t \right) \,,
\end{align}$$

with inverse relations

$$\begin{align}
  \Delta t &= \gamma \left( \Delta t' + \frac{v \, \Delta x'}{c^2} \right) \,, \\
  \Delta x &= \gamma \left( \Delta x' + v \, \Delta t' \right) \,.
\end{align}$$

where (uppercase delta) indicates a difference of quantities; e.g., _x_₂ − _x_₁}} for two values of coordinates, and so on.

These transformations on _differences_ rather than spatial points or instants of time are useful for a number of reasons:

-   in calculations and experiments, it is lengths between two points or time intervals that are measured or of interest (e.g., the length of a moving vehicle, or time duration it takes to travel from one place to another),
-   the transformations of velocity can be readily derived by making the difference infinitesimally small and dividing the equations, and the process repeated for the transformation of acceleration,
-   if the coordinate systems are never coincident (i.e., not in standard configuration), and if both observers can agree on an event in and in , then they can use that event as the origin, and the spacetime coordinate differences are the differences between their coordinates and this origin, e.g., _x_ − _x_₀}}, _x_′ − _x_₀′}}, etc.

Physical implications

A critical requirement of the Lorentz transformations is the invariance of the speed of light, a fact used in their derivation, and contained in the transformations themselves. If in the equation for a pulse of light along the direction is _ct_}}, then in the Lorentz transformations give _ct_′}}, and vice versa, for any .

For relative speeds much less than the speed of light, the Lorentz transformations reduce to the Galilean transformation

$$\begin{align}
  t' &\approx t \\
  x' &\approx x - vt
\end{align}$$

in accordance with the correspondence principle. It is sometimes said that nonrelativistic physics is a physics of "instantaneous action at a distance".[15]

Three counterintuitive, but correct, predictions of the transformations are:

Relativity of simultaneity: Suppose two events occur simultaneously ( 0}}) along the x axis, but separated by a nonzero displacement . Then in , we find that $\Delta t' = \gamma \frac{-v\,\Delta x}{c^2}$, so the events are no longer simultaneous according to a moving observer.
Time dilation: Suppose there is a clock at rest in . If a time interval is measured at the same point in that frame, so that  0}}, then the transformations give this interval in  by  _γ_Δ_t_}}. Conversely, suppose there is a clock at rest in . If an interval is measured at the same point in that frame, so that  0}}, then the transformations give this interval in F by  _γ_Δ_t_′}}. Either way, each observer measures the time interval between ticks of a moving clock to be longer by a factor  than the time interval between ticks of his own clock.
Length contraction: Suppose there is a rod at rest in  aligned along the x axis, with length . In , the rod moves with velocity , so its length must be measured by taking two simultaneous ( 0}}) measurements at opposite ends. Under these conditions, the inverse Lorentz transform shows that  _γ_Δ_x_′}}. In  the two measurements are no longer simultaneous, but this does not matter because the rod is at rest in . So each observer measures the distance between the end points of a moving rod to be shorter by a factor  than the end points of an identical rod at rest in his own frame. Length contraction affects any geometric quantity related to lengths, so from the perspective of a moving observer, areas and volumes will also appear to shrink along the direction of motion.

Vector transformations

The use of vectors allows positions and velocities to be expressed in arbitrary directions compactly. A single boost in any direction depends on the full relative velocity vector with a magnitude _v_}} that cannot equal or exceed , so that .

Only time and the coordinates parallel to the direction of relative motion change, while those coordinates perpendicular do not. With this in mind, split the spatial position vector as measured in , and as measured in , each into components perpendicular (⊥) and parallel ( ‖ ) to ,

R = R_(⊥) + R_(∥) , R′ = R_(⊥)′ + R_(∥)′ ,

then the transformations are

$$\begin{align}
                t'  &= \gamma \left(t - \frac{\mathbf{r}_\parallel \cdot \mathbf{v}}{c^2} \right) \\
     \mathbf{r}_\|' &= \gamma (\mathbf{r}_\| - \mathbf{v} t) \\
  \mathbf{r}_\perp' &= \mathbf{r}_\perp
\end{align}$$

where · is the dot product. The Lorentz factor retains its definition for a boost in any direction, since it depends only on the magnitude of the relative velocity. The definition V/_c_}} with magnitude is also used by some authors.

Introducing a unit vector V/_v_ {{=}} Β/_β_}} in the direction of relative motion, the relative velocity is _v_N}} with magnitude and direction , and vector projection and rejection give respectively

R_(∥) = (R ⋅ N)N , R_(⊥) = R − (R ⋅ N)N

Accumulating the results gives the full transformations,

{c^2} \right) \,, \\

 \mathbf{r}' &= \mathbf{r} + (\gamma-1)(\mathbf{r}\cdot\mathbf{n})\mathbf{n} - \gamma t v\mathbf{n} \,.

\end{align} |cellpadding |border = 1 |border colour = black |background colour=white}}

The projection and rejection also applies to . For the inverse transformations, exchange and to switch observed coordinates, and negate the relative velocity (or simply the unit vector since the magnitude is always positive) to obtain

{c^2} \right) \,, \\

 \mathbf{r} &= \mathbf{r}' + (\gamma-1)(\mathbf{r}'\cdot\mathbf{n})\mathbf{n} + \gamma t' v\mathbf{n} \,,

\end{align} |cellpadding |border = 1 |border colour = black |background colour=white}}

The unit vector has the advantage of simplifying equations for a single boost, allows either or to be reinstated when convenient, and the rapidity parametrization is immediately obtained by replacing and . It is not convenient for multiple boosts.

The vectorial relation between relative velocity and rapidity is[16]

Β = _β_N = Ntanh _ζ_ ,

and the "rapidity vector" can be defined as

Ζ = _ζ_N = Ntanh^( − 1)_β_ ,

each of which serves as a useful abbreviation in some contexts. The magnitude of is the absolute value of the rapidity scalar confined to , which agrees with the range .

Transformation of velocities

, the ordering of vectors is chosen to reflect the ordering of the addition of velocities; first (the velocity of F′ relative to F) then (the velocity of X relative to F′) to obtain V ⊕ U′}} (the velocity of X relative to F).]]

Defining the coordinate velocities and Lorentz factor by

$$\mathbf{u} = \frac{d\mathbf{r}}{dt} \,,\quad \mathbf{u}' = \frac{d\mathbf{r}'}{dt'} \,,\quad \gamma_\mathbf{v} = \frac{1}{\sqrt{1-\dfrac{\mathbf{v}\cdot\mathbf{v}}{c^2}}}$$

taking the differentials in the coordinates and time of the vector transformations, then dividing equations, leads to

$$\mathbf{u}' = \frac{1}{ 1 - \frac{\mathbf{v}\cdot\mathbf{u}}{c^2} }\left[\frac{\mathbf{u}}{\gamma_\mathbf{v}} - \mathbf{v} + \frac{1}{c^2}\frac{\gamma_\mathbf{v}}{\gamma_\mathbf{v} + 1}\left(\mathbf{u}\cdot\mathbf{v}\right)\mathbf{v}\right]$$

The velocities and are the velocity of some massive object. They can also be for a third inertial frame (say _F_′′), in which case they must be _constant_. Denote either entity by X. Then X moves with velocity relative to F, or equivalently with velocity relative to F′, in turn F′ moves with velocity relative to F. The inverse transformations can be obtained in a similar way, or as with position coordinates exchange and , and change to .

The transformation of velocity is useful in stellar aberration, the Fizeau experiment, and the relativistic Doppler effect.

The Lorentz transformations of acceleration can be similarly obtained by taking differentials in the velocity vectors, and dividing these by the time differential.

Transformation of other quantities

In general, given four quantities and (_Z__(x), _Z__(y), _Z__(z))}} and their Lorentz-boosted counterparts and (_Z_′_(x), _Z_′_(y), _Z_′_(z))}}, a relation of the form

_A_² − Z ⋅ Z = _A_′² − Z′ ⋅ Z′

implies the quantities transform under Lorentz transformations similar to the transformation of spacetime coordinates;

$$\begin{align}
           A' &= \gamma \left(A - \frac{v\mathbf{n}\cdot \mathbf{Z}}{c} \right) \,, \\
  \mathbf{Z}' &= \mathbf{Z} + (\gamma-1)(\mathbf{Z}\cdot\mathbf{n})\mathbf{n} - \frac{\gamma A v\mathbf{n}}{c} \,.
\end{align}$$

The decomposition of (and ) into components perpendicular and parallel to is exactly the same as for the position vector, as is the process of obtaining the inverse transformations (exchange and to switch observed quantities, and reverse the direction of relative motion by the substitution ).

The quantities collectively make up a _four vector_, where is the "timelike component", and the "spacelike component". Examples of and are the following:

    {| class="wikitable"

|- ! Four vector ! ! |- | Position four vector | Time (multiplied by ), | Position vector, |- | Four momentum | Energy (divided by ), | Momentum, |- | Four-wave vector | angular frequency (divided by ), | wave vector, |- | Four spin | (No name), | Spin, |- | Four current | Charge density (multiplied by ), | Current density, |- | Electromagnetic four potential | Electric potential (divided by ), | Magnetic potential, |}

For a given object (e.g., particle, fluid, field, material), if or correspond to properties specific to the object like its charge density, mass density, spin, etc., its properties can be fixed in the rest frame of that object. Then the Lorentz transformations give the corresponding properties in a frame moving relative to the object with constant velocity. This breaks some notions taken for granted in non-relativistic physics. For example, the energy of an object is a scalar in non-relativistic mechanics, but not in relativistic mechanics because energy changes under Lorentz transformations; its value is different for various inertial frames. In the rest frame of an object, it has a rest energy and zero momentum. In a boosted frame its energy is different and it appears to have a momentum. Similarly, in non-relativistic quantum mechanics the spin of a particle is a constant vector, but in relativistic quantum mechanics spin depends on relative motion. In the rest frame of the particle, the spin pseudovector can be fixed to be its ordinary non-relativistic spin with a zero timelike quantity , however a boosted observer will perceive a nonzero timelike component and an altered spin.[17]

Not all quantities are invariant in the form as shown above, for example orbital angular momentum does not have a timelike quantity, and neither does the electric field nor the magnetic field . The definition of angular momentum is R × P}}, and in a boosted frame the altered angular momentum is R′ × P′}}. Applying this definition using the transformations of coordinates and momentum leads to the transformation of angular momentum. It turns out transforms with another vector quantity (_E_/_c_²)R − _t_P}} related to boosts, see relativistic angular momentum for details. For the case of the and fields, the transformations cannot be obtained as directly using vector algebra. The Lorentz force is the definition of these fields, and in it is _q_(E + V × B)}} while in it is _q_(E′ + V′ × B′)}}. A method of deriving the EM field transformations in an efficient way which also illustrates the unit of the electromagnetic field uses tensor algebra, given below.


Mathematical formulation

Throughout, italic non-bold capital letters are 4×4 matrices, while non-italic bold letters are 3×3 matrices.

Homogeneous Lorentz group

Writing the coordinates in column vectors and the Minkowski metric as a square matrix

$$X' = \begin{bmatrix} c\,t' \\ x' \\ y' \\ z' \end{bmatrix} \,, \quad \eta = \begin{bmatrix} -1&0&0&0\\ 0&1&0&0 \\ 0&0&1&0 \\ 0&0&0&1 \end{bmatrix} \,, \quad X = \begin{bmatrix} c\,t \\ x \\ y \\ z \end{bmatrix}$$

the spacetime interval takes the form (T denotes transpose)

_X_ ⋅ _X_ = _X_^(_T_)_η__X_ = _X_′^(_T_)_η__X_′

and is invariant under a Lorentz transformation

_X_′ = _Λ__X_

where Λ is a square matrix which can depend on parameters.

The set of all Lorentz transformations Λ in this article is denoted ℒ. This set together with matrix multiplication forms a group, in this context known as the _Lorentz group_. Also, the above expression is a quadratic form of signature (3,1) on spacetime, and the group of transformations which leaves this quadratic form invariant is the indefinite orthogonal group O(3,1), a Lie group. In other words, the Lorentz group is O(3,1). As presented in this article, any Lie groups mentioned are matrix Lie groups. In this context the operation of composition amounts to matrix multiplication.

From the invariance of the spacetime interval it follows

_η_ = _Λ_^(_T_)_η__Λ_

and this matrix equation contains the general conditions on the Lorentz transformation to ensure invariance of the spacetime interval. Taking the determinant of the equation using the product rule[18] gives immediately

[det (_Λ_)]² = 1 ⇒ det (_Λ_) =  ± 1

Writing the Minkowski metric as a block matrix, and the Lorentz transformation in the most general form,

$$\eta = \begin{bmatrix}-1 & 0 \\ 0 & \mathbf{I}\end{bmatrix} \,, \quad \Lambda=\begin{bmatrix}\Gamma & -\mathbf{a}^\mathrm{T}\\-\mathbf{b} & \mathbf{M}\end{bmatrix}  \,,$$

carrying out the block matrix multiplications obtains general conditions on to ensure relativistic invariance. Not much information can be directly extracted from all the conditions, however one of the results

_Γ_² = 1 + B^(_T_)B

is useful; always so it follows that

_Γ_² ≥ 1 ⇒ _Γ_ ≤  − 1 , _Γ_ ≥ 1

The negative inequality may be unexpected, because multiplies the time coordinate and this has an effect on time symmetry. If the positive equality holds, then is the Lorentz factor.

The determinant and inequality provide four ways to classify Lorentz Transformations (_herein LTs for brevity_). Any particular LT has only one determinant sign _and_ only one inequality. There are four sets which include every possible pair given by the intersections ("n"-shaped symbol meaning "and") of these classifying sets.

+----------------------------------+-----------------------------------------+----------------------------+
| Intersection, ∩                  | ANTICHRONOUS (or non-orthochronous) LTs | ORTHOCHRONOUS LTs          |
|                                  |                                         |                            |
|                                  | ℒ^(↓) = {_Λ_ : _Γ_ ≤  − 1}              | ℒ^(↑) = {_Λ_ : _Γ_ ≥ 1}    |
+==================================+=========================================+============================+
| PROPER LTs                       | PROPER ANTICHRONOUS LTs                 | PROPER ORTHOCHRONOUS LTs   |
|                                  |                                         |                            |
| ℒ₊ = {_Λ_ : det (_Λ_) =  + 1}    | ℒ₊^(↓) = ℒ₊ ∩ ℒ^(↓)                     | ℒ₊^(↑) = ℒ₊ ∩ ℒ^(↑)        |
+----------------------------------+-----------------------------------------+----------------------------+
| IMPROPER LTs                     | IMPROPER ANTICHRONOUS LTs               | IMPROPER ORTHOCHRONOUS LTs |
|                                  |                                         |                            |
| ℒ_(−) = {_Λ_ : det (_Λ_) =  − 1} | ℒ_(−)^(↓) = ℒ_(−) ∩ ℒ^(↓)               | ℒ_(−)^(↑) = ℒ_(−) ∩ ℒ^(↑)  |
+----------------------------------+-----------------------------------------+----------------------------+
|                                  |                                         |                            |
+----------------------------------+-----------------------------------------+----------------------------+

where "+" and "−" indicate the determinant sign, while "↑" for ≥ and "↓" for ≤ denote the inequalities.

The full Lorentz group splits into the union ("u"-shaped symbol meaning "or") of four disjoint sets

ℒ = ℒ₊^(↑) ∪ ℒ_(−)^(↑) ∪ ℒ₊^(↓) ∪ ℒ_(−)^(↓)

A subgroup of a group must be closed under the same operation of the group (here matrix multiplication). In other words, for two Lorentz transformations and from a particular set, the composite Lorentz transformations and must be in the same set as and . This will not always be the case; it can be shown that the composition of _any_ two Lorentz transformations always has the positive determinant and positive inequality, a proper orthochronous transformation. The sets ℒ₊^(↑), ℒ₊, ℒ^(↑), and ℒ₀ = ℒ₊^(↑) ∪ ℒ_(−)^(↓) all form subgroups. The other sets involving the improper and/or antichronous properties (i.e. ℒ₊^(↓), ℒ_(−)^(↓), ℒ_(−)^(↑)) do not form subgroups, because the composite transformation always has a positive determinant or inequality, whereas the original separate transformations will have negative determinants and/or inequalities.

Proper transformations

The Lorentz boost is

_X_′ = _B_(V)_X_

where the boost matrix is

$$B(\mathbf{v}) = \begin{bmatrix} \gamma&-\gamma\beta n_x&-\gamma\beta n_y&-\gamma\beta n_z\\ -\gamma\beta n_x&1+(\gamma-1)n_x^2&(\gamma-1)n_x n_y&(\gamma-1)n_x n_z\\ -\gamma\beta n_y&(\gamma-1)n_y n_x&1+(\gamma-1)n_y^2&(\gamma-1)n_y n_z\\ -\gamma\beta n_z&(\gamma-1)n_z n_x&(\gamma-1)n_z n_y&1+(\gamma-1)n_z^2\\ \end{bmatrix} \,.$$

The boosts along the Cartesian directions can be readily obtained, for example the unit vector in the x direction has components 1}} and _n_(z)_ {{=}} 0}}.

The matrices make one or more successive transformations easier to handle, rather than rotely iterating the transformations to obtain the result of more than one transformation. If a frame is boosted with velocity relative to frame , and another frame is boosted with velocity relative to , the separate boosts are

_X_″ = _B_(V)_X_′ , _X_′ = _B_(U)_X_
and the composition of the two boosts connects the coordinates in and ,

_X_″ = _B_(V)_B_(U)_X_ .
Successive transformations act on the left. If and are collinear (parallel or antiparallel along the same line of relative motion), the boost matrices commute: _B_(U)_B_(V)}} and this composite transformation happens to be another boost.

If and are not collinear but in different directions, the situation is considerably more complicated. Lorentz boosts along different directions do not commute: and are not equal. Also, each of these compositions is _not_ a single boost, but still a Lorentz transformation as each boost still preserves invariance of the spacetime interval. It turns out the composition of any two Lorentz boosts is equivalent to a boost followed or preceded by a rotation on the spatial coordinates, in the form of or . The and are composite velocities, while and are rotation parameters (e.g. axis-angle variables, Euler angles, etc.). The rotation in block matrix form is simply

$$\quad R(\boldsymbol{\rho}) = \begin{bmatrix} 1 & 0 \\ 0 & \mathbf{R}(\boldsymbol{\rho}) \end{bmatrix} \,,$$

where is a 3d rotation matrix, which rotates any 3d vector in one sense (active transformation), or equivalently the coordinate frame in the opposite sense (passive transformation). It is _not_ simple to connect and (or and ) to the original boost parameters and . In a composition of boosts, the matrix is named the Wigner rotation, and gives rise to the Thomas precession. These articles give the explicit formulae for the composite transformation matrices, including expressions for .

In this article the axis-angle representation is used for . The rotation is about an axis in the direction of a unit vector , through angle (positive anticlockwise, negative clockwise, according to the right-hand rule). The "axis-angle vector"

Θ = _θ_E
will serve as a useful abbreviation.

Spatial rotations alone are also Lorentz transformations they leave the spacetime interval invariant. Like boosts, successive rotations about different axes do not commute. Unlike boosts, the composition of any two rotations is equivalent to a single rotation. Some other similarities and differences between the boost and rotation matrices include:

-   inverses: _B_(−V)}} (relative motion in the opposite direction), and _R_(−Θ)}} (rotation in the opposite sense about the same axis)
-   identity transformation for no relative motion/rotation: _R_(0) {{=}} _I_}}
-   unit determinant: det(_R_) {{=}} +1}}. This property makes them proper transformations.
-   matrix symmetry: is symmetric (equals transpose), while is nonsymmetric but orthogonal (transpose equals inverse, _R_^(−1)}}).

The most general proper Lorentz transformation includes a boost and rotation together, and is a nonsymmetric matrix. As special cases, _R_(Θ)}} and _B_(V)}}. An explicit form of the general Lorentz transformation is cumbersome to write down and will not be given here. Nevertheless, closed form expressions for the transformation matrices will be given below using group theoretical arguments. It will be easier to use the rapidity parametrization for boosts, in which case one writes and .

The Lie group SO⁺(3,1)

The set of transformations

{_B_(Ζ), _R_(Θ), _Λ_(Ζ, Θ)}

with matrix multiplication as the operation of composition forms a group, called the "restricted Lorentz group", and is the special indefinite orthogonal group SO⁺(3,1). (The plus sign indicates that it preserves the orientation of the temporal dimension).

For simplicity, look at the infinitesimal Lorentz boost in the x direction (examining a boost in any other direction, or rotation about any axis, follows an identical procedure). The infinitesimal boost is a small boost away from the identity, obtained by the Taylor expansion of the boost matrix to first order about 0}},

$$B_x = I + \zeta \left. \frac{\partial B_x}{\partial \zeta } \right|_{\zeta=0} + \cdots$$

where the higher order terms not shown are negligible because is small, and is simply the boost matrix in the _x_ direction. The derivative of the matrix is the matrix of derivatives (of the entries, with respect to the same variable), and it is understood the derivatives are found first then evaluated at 0}},

$$\left. \frac{\partial B_x }{\partial \zeta } \right|_{\zeta=0} = - K_x \,.$$

For now, is defined by this result (its significance will be explained shortly). In the limit of an infinite number of infinitely small steps, the finite boost transformation in the form of a matrix exponential is obtained

$$B_x =\lim_{N\rightarrow\infty}\left(I-\frac{\zeta }{N}K_x\right)^{N} = e^{-\zeta K_x}$$

where the limit definition of the exponential has been used (see also characterizations of the exponential function). More generallyExplicitly,

Ζ ⋅ K = _ζ__(_x_)_K__(_x_) + _ζ__(_y_)_K__(_y_) + _ζ__(_z_)_K__(_z_)

Θ ⋅ J = _θ__(_x_)_J__(_x_) + _θ__(_y_)_J__(_y_) + _θ__(_z_)_J__(_z_)

_B_(Ζ) = _e_^( − Ζ ⋅ K) , _R_(Θ) = _e_^(Θ ⋅ J) .

The axis-angle vector and rapidity vector are altogether six continuous variables which make up the group parameters (in this particular representation), and the generators of the group are (_K_(x), K_(y), K_(z)_)}} and (_J_(x), J_(y), J_(z)_)}}, each vectors of matrices with the explicit forms[19]

$$K_x = \begin{bmatrix}
    0 & 1 & 0 & 0 \\
    1 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 \\
  \end{bmatrix}\,,\quad K_y = \begin{bmatrix}
    0 & 0 & 1 & 0\\
    0 & 0 & 0 & 0\\
    1 & 0 & 0 & 0\\
    0 & 0 & 0 & 0
  \end{bmatrix}\,,\quad K_z = \begin{bmatrix}
    0 & 0 & 0 & 1\\
    0 & 0 & 0 & 0\\
    0 & 0 & 0 & 0\\
    1 & 0 & 0 & 0
  \end{bmatrix}$$

$$J_x =  \begin{bmatrix}
    0 & 0 & 0 &  0 \\
    0 & 0 & 0 &  0 \\
    0 & 0 & 0 & -1 \\
    0 & 0 & 1 &  0 \\
  \end{bmatrix}\,,\quad J_y =
  \begin{bmatrix}
    0 &  0 & 0 & 0 \\
    0 &  0 & 0 & 1 \\
    0 &  0 & 0 & 0 \\
    0 & -1 & 0 & 0
  \end{bmatrix}\,,\quad J_z =  \begin{bmatrix}
    0 & 0 &  0 & 0 \\
    0 & 0 & -1 & 0 \\
    0 & 1 &  0 & 0 \\
    0 & 0 &  0 & 0
  \end{bmatrix}$$

These are all defined in an analogous way to above, although the minus signs in the boost generators are conventional. Physically, the generators of the Lorentz group correspond to important symmetries in spacetime: are the _rotation generators_ which correspond to angular momentum, and are the _boost generators_ which correspond to the motion of the system in spacetime. The derivative of any smooth curve with _I_}} in the group depending on some group parameter with respect to that group parameter, evaluated at 0}}, serves as a definition of a corresponding group generator , and this reflects an infinitesimal transformation away from the identity. The smooth curve can always be taken as an exponential as the exponential will always map smoothly back into the group via for all ; this curve will yield again when differentiated at 0}}.

Expanding the exponentials in their Taylor series obtains

_B_(Ζ) = _I_ − sinh _ζ_(N ⋅ K) + (cosh _ζ_ − 1)(N ⋅ K)²

_R_(Θ) = _I_ + sin _θ_(E ⋅ J) + (1 − cos _θ_)(E ⋅ J)² .

which compactly reproduce the boost and rotation matrices as given in the previous section.

It has been stated that the general proper Lorentz transformation is a product of a boost and rotation. At the _infinitesimal_ level the product

$$\begin{align} \Lambda
 & = (I - \boldsymbol {\zeta } \cdot \mathbf {K} + \cdots )(I + \boldsymbol {\theta } \cdot \mathbf {J} + \cdots ) \\
 & = (I + \boldsymbol {\theta } \cdot \mathbf {J} + \cdots )(I - \boldsymbol {\zeta } \cdot \mathbf {K} + \cdots ) \\
 & = I - \boldsymbol {\zeta } \cdot \mathbf {K}  + \boldsymbol {\theta } \cdot \mathbf {J} + \cdots
\end{align}$$

is commutative because only linear terms are required (products like and count as higher order terms and are negligible). Taking the limit as before leads to the finite transformation in the form of an exponential

_Λ_(Ζ, Θ) = _e_^( − Ζ ⋅ K + Θ ⋅ J).

The converse is also true, but the decomposition of a finite general Lorentz transformation into such factors is nontrivial. In particular,

_e_^( − Ζ ⋅ K + Θ ⋅ J) ≠ _e_^( − Ζ ⋅ K)_e_^(Θ ⋅ J),

because the generators do not commute. For a description of how to find the factors of a general Lorentz transformation in terms of a boost and a rotation _in principle_ (this usually does not yield an intelligible expression in terms of generators and ), see Wigner rotation. If, on the other hand, _the decomposition is given_ in terms of the generators, and one wants to find the product in terms of the generators, then the Baker–Campbell–Hausdorff formula applies.

The Lie algebra so(3,1)

Lorentz generators can be added together, or multiplied by real numbers, to obtain more Lorentz generators. In other words, the set of all Lorentz generators

_V_ = {Ζ ⋅ K + Θ ⋅ J}

together with the operations of ordinary matrix addition and multiplication of a matrix by a number, forms a vector space over the real numbers.[20] The generators form a basis set of _V_, and the components of the axis-angle and rapidity vectors, , are the coordinates of a Lorentz generator with respect to this basis.[21]

Three of the commutation relations of the Lorentz generators are

[_J__(_x_), _J__(_y_)] = _J__(_z_) , [_K__(_x_), _K__(_y_)] =  − _J__(_z_) , [_J__(_x_), _K__(_y_)] = _K__(_z_) ,

where the bracket _AB_ − _BA_}} is known as the _commutator_, and the other relations can be found by taking cyclic permutations of x, y, z components (i.e. change x to y, y to z, and z to x, repeat).

These commutation relations, and the vector space of generators, fulfill the definition of the Lie algebra 𝔰𝔬(3, 1). In summary, a Lie algebra is defined as a vector space _V_ over a field of numbers, and with a binary operation [ , ] (called a Lie bracket in this context) on the elements of the vector space, satisfying the axioms of bilinearity, alternatization, and the Jacobi identity. Here the operation [ , ] is the commutator which satisfies all of these axioms, the vector space is the set of Lorentz generators _V_ as given previously, and the field is the set of real numbers.

Linking terminology used in mathematics and physics: A group generator is any element of the Lie algebra. A group parameter is a component of a coordinate vector representing an arbitrary element of the Lie algebra with respect to some basis. A basis, then, is a set of generators being a basis of the Lie algebra in the usual vector space sense.

The exponential map from the Lie algebra to the Lie group,

_e__x__p_ : 𝔰𝔬(3, 1) → _S__O_(3, 1),

provides a one-to-one correspondence between small enough neighborhoods of the origin of the Lie algebra and neighborhoods of the identity element of the Lie group. It the case of the Lorentz group, the exponential map is just the matrix exponential. Globally, the exponential map is not one-to-one, but in the case of the Lorentz group, it is surjective (onto). Hence any group element in the connected component of the identity can be expressed as an exponential of an element of the Lie algebra.

Improper transformations

Lorentz transformations also include parity inversion

$$P = \begin{bmatrix} 1 & 0 \\ 0 & - \mathbf{I} \end{bmatrix}$$

which negates all the spatial coordinates only, and time reversal

$$T = \begin{bmatrix} - 1 & 0 \\ 0 & \mathbf{I} \end{bmatrix}$$

which negates the time coordinate only, because these transformations leave the spacetime interval invariant. Here is the 3d identity matrix. These are both symmetric, they are their own inverses (see involution (mathematics)), and each have determinant −1. This latter property makes them improper transformations.

If is a proper orthochronous Lorentz transformation, then is improper antichronous, is improper orthochronous, and _PT_Λ}} is proper antichronous.

Inhomogeneous Lorentz group

Two other spacetime symmetries have not been accounted for. For the spacetime interval to be invariant, it can be shown[22] that it is necessary and sufficient for the coordinate transformation to be of the form

_X_′ = _Λ__X_ + _C_

where _C_ is a constant column containing translations in time and space. If _C_ ≠ 0, this is an INHOMOGENEOUS LORENTZ TRANSFORMATION or POINCARÉ TRANSFORMATION.[23][24] If _C_ = 0, this is a HOMOGENEOUS LORENTZ TRANSFORMATION. Poincaré transformations are not dealt further in this article.


Tensor formulation

Contravariant vectors

Writing the general matrix transformation of coordinates as the matrix equation

$$\begin{bmatrix}
    {x'}^0 \\
    {x'}^1 \\
    {x'}^2 \\
    {x'}^3
  \end{bmatrix} =
  \begin{bmatrix}
    {\Lambda^0}_0 & {\Lambda^0}_1 & {\Lambda^0}_2 & {\Lambda^0}_3 \\
    {\Lambda^1}_0 & {\Lambda^1}_1 & {\Lambda^1}_2 & {\Lambda^1}_3 \\
    {\Lambda^2}_0 & {\Lambda^2}_1 & {\Lambda^2}_2 & {\Lambda^2}_3 \\
    {\Lambda^3}_0 & {\Lambda^3}_1 & {\Lambda^3}_2 & {\Lambda^3}_3 \\
  \end{bmatrix}
  \begin{bmatrix}
    x^0 \\
    x^1 \\
    x^2 \\
    x^3
  \end{bmatrix}$$

allows the transformation of other physical quantities that cannot be expressed as four-vectors; e.g., tensors or spinors of any order in 4d spacetime, to be defined. In the corresponding tensor index notation, the above matrix expression is

_x_^(′)^(_ν_) = _Λ_^(_ν_)_(_μ_)_x_^(_μ_),

where lower and upper indices label covariant and contravariant components respectively,[25] and the summation convention is applied. It is a standard convention to use Greek indices that take the value 0 for time components, and 1, 2, 3 for space components, while Latin indices simply take the values 1, 2, 3, for spatial components. Note that the first index (reading left to right) corresponds in the matrix notation to a _row index_. The second index corresponds to the column index.

The transformation matrix is universal for all four-vectors, not just 4-dimensional spacetime coordinates. If is any four-vector, then in tensor index notation

_A_^(′)^(_ν_) = _Λ_^(_ν_)_(_μ_)_A_^(_μ_) .

Alternatively, one writes

_A_^(_ν_′) = _Λ_^(_ν_′)_(_μ_)_A_^(_μ_) .

in which the primed indices denote the indices of A in the primed frame. This notation cuts risk of exhausting the Greek alphabet roughly in half.

For a general -component object one may write

_X_′^(_α_) = _Π_(_Λ_)^(_α_)_(_β_)_X_^(_β_) ,

where is the appropriate representation of the Lorentz group, an matrix for every . In this case, the indices should _not_ be thought of as spacetime indices (sometimes called Lorentz indices), and they run from to . E.g., if is a bispinor, then the indices are called _Dirac indices_.

Covariant vectors

There are also vector quantities with covariant indices. They are generally obtained from their corresponding objects with contravariant indices by the operation of _lowering an index_; e.g.,

_x__(_ν_) = _η__(_μ__ν_)_x_^(_μ_),

where is the metric tensor. (The linked article also provides more information about what the operation of raising and lowering indices really is mathematically.) The inverse of this transformation is given by

_x_^(_μ_) = _η_^(_μ__ν_)_x__(_ν_),

where, when viewed as matrices, is the inverse of . As it happens, }}. This is referred to as _raising an index_. To transform a covariant vector , first raise its index, then transform it according to the same rule as for contravariant -vectors, then finally lower the index;

_A_′_(_ν_) = _η__(_ρ__ν_)_Λ_^(_ρ_)_(_σ_)_η_^(_μ__σ_)_A__(_μ_).

But

_η__(_ρ__ν_)_Λ_^(_ρ_)_(_σ_)_η_^(_μ__σ_) = (_Λ_^( − 1))^(_μ_)_(_ν_),

I. e., it is the -component of the _inverse_ Lorentz transformation. One defines (as a matter of notation),

_Λ__(_ν_)^(_μ_) ≡ (_Λ_^( − 1))^(_μ_)_(_ν_),

and may in this notation write

_A_′_(_ν_) = _Λ__(_ν_)^(_μ_)_A__(_μ_).

Now for a subtlety. The implied summation on the right hand side of

_A_′_(_ν_) = _Λ__(_ν_)^(_μ_)_A__(_μ_) = (_Λ_^( − 1))^(_μ_)_(_ν_)_A__(_μ_)

is running over _a row index_ of the matrix representing . Thus, in terms of matrices, this transformation should be thought of as the _inverse transpose_ of acting on the column vector . That is, in pure matrix notation,

_A_′ = (_Λ_^( − 1))^(_T_)_A_.

This means exactly that covariant vectors (thought of as column matrices) transform according to the dual representation of the standard representation of the Lorentz group. This notion generalizes to general representations, simply replace with .

Tensors

If and are linear operators on vector spaces and , then a linear operator may be defined on the tensor product of and , denoted according to[26]

From this it is immediately clear that if and are a four-vectors in , then transforms as

The second step uses the bilinearity of the tensor product and the last step defines a 2-tensor on component form, or rather, it just renames the tensor .

These observations generalize in an obvious way to more factors, and using the fact that a general tensor on a vector space can be written as a sum of a coefficient (component!) times tensor products of basis vectors and basis covectors, one arrives at the transformation law for any tensor quantity . It is given by[27]

_\mu {\Lambda^{\beta'}}_\nu \cdots {\Lambda^{\zeta'}}_\rho

   {\Lambda_{\theta'}}^\sigma {\Lambda_{\iota'}}^\upsilon \cdots {\Lambda_{\kappa'}}^\zeta
   T^{\mu\nu \cdots \rho}_{\sigma\upsilon \cdots \zeta},

             

|cellpadding= 6
|border
|border colour = #0073CF
|bgcolor=#F9FFF7

}}

where is defined above. This form can generally be reduced to the form for general -component objects given above with a single matrix () operating on column vectors. This latter form is sometimes preferred; e.g., for the electromagnetic field tensor.

Transformation of the electromagnetic field

Lorentz transformations can also be used to illustrate that the magnetic field and electric field are simply different aspects of the same force — the electromagnetic force, as a consequence of relative motion between electric charges and observers.[28] The fact that the electromagnetic field shows relativistic effects becomes clear by carrying out a simple thought experiment.[29]

-   An observer measures a charge at rest in frame F. The observer will detect a static electric field. As the charge is stationary in this frame, there is no electric current, so the observer does not observe any magnetic field.
-   The other observer in frame F′ moves at velocity relative to F and the charge. _This_ observer sees a different electric field because the charge moves at velocity in their rest frame. The motion of the charge corresponds to an electric current, and thus the observer in frame F′ also sees a magnetic field.

The electric and magnetic fields transform differently from space and time, but exactly the same way as relativistic angular momentum and the boost vector.

The electromagnetic field strength tensor is given by

$$F^{\mu\nu} = \begin{bmatrix}
    0              & -\frac{1}{c}E_x & -\frac{1}{c}E_y & -\frac{1}{c}E_z \\
    \frac{1}{c}E_x &  0              & -B_z            &  B_y   \\
    \frac{1}{c}E_y &  B_z            &  0              & -B_x   \\
    \frac{1}{c}E_z & -B_y            &  B_x            &  0
  \end{bmatrix} \text{(SI units, signature }(+,-,-,-)\text{)}.$$

in SI units. In relativity, the Gaussian system of units is often preferred over SI units, even in texts whose main choice of units is SI units, because in it the electric field and the magnetic induction have the same units making the appearance of the electromagnetic field tensor more natural.[30] Consider a Lorentz boost in the -direction. It is given by[31]

$${\Lambda^\mu}_\nu = \begin{bmatrix}
     \gamma      & -\gamma\beta & 0 & 0\\
    -\gamma\beta &  \gamma      & 0 & 0\\
     0           &  0           & 1 & 0\\
     0           &  0           & 0 & 1\\
  \end{bmatrix}, \qquad

  F^{\mu\nu} = \begin{bmatrix}
     0   &  E_x &  E_y &  E_z \\
    -E_x &  0   &  B_z & -B_y \\
    -E_y & -B_z &  0   &  B_x \\
    -E_z &  B_y & -B_x &  0
  \end{bmatrix} \text{(Gaussian units, signature }(-,+,+,+)\text{)},$$

where the field tensor is displayed side by side for easiest possible reference in the manipulations below.

The general transformation law becomes

_F_^(_μ_′_ν_′) = _Λ_^(_μ_′)_(_μ_)_Λ_^(_ν_′)_(_ν_)_F_^(_μ__ν_).

For the magnetic field one obtains

$$\begin{align}
  B_{x'} &= F^{2'3'}
            = {\Lambda^2}_\mu {\Lambda^3}_\nu F^{\mu\nu}
            = {\Lambda^2}_2 {\Lambda^3}_3 F^{23}
            = 1 \times 1 \times B_x \\
         &= B_x, \\
  B_{y'} &= F^{3'1'}
            = {\Lambda^3}_\mu {\Lambda^1}_\nu F^{\mu \nu}
            = {\Lambda^3}_3 {\Lambda^1}_\nu F^{3\nu}
            = {\Lambda^3}_3 {\Lambda^1}_0 F^{30} + {\Lambda^3}_3 {\Lambda^1}_1 F^{31} \\
         &= 1 \times (-\beta\gamma) (-E_z) + 1 \times \gamma B_y
            = \gamma B_y + \beta\gamma E_z \\
         &= \gamma\left(\mathbf{B} - \boldsymbol{\beta} \times \mathbf{E}\right)_y \\
  B_{z'} &= F^{1'2'}
            = {\Lambda^1}_\mu {\Lambda^2}_\nu F^{\mu\nu}
            = {\Lambda^1}_\mu {\Lambda^2}_2 F^{\mu 2}
            = {\Lambda^1}_0 {\Lambda^2}_2 F^{02} + {\Lambda^1}_1 {\Lambda^2}_2 F^{12} \\
         &= (-\gamma\beta) \times 1\times E_y + \gamma \times 1 \times B_z
            = \gamma B_z - \beta\gamma E_y \\
         &= \gamma\left(\mathbf{B} - \boldsymbol{\beta} \times \mathbf{E}\right)_z
\end{align}$$

For the electric field results

$$\begin{align}
  E_{x'} &= F^{0'1'}
            = {\Lambda^0}_\mu {\Lambda^1}_\nu F^{\mu\nu}
            = {\Lambda^0}_1 {\Lambda^1}_0 F^{10} + {\Lambda^0}_0 {\Lambda^1}_1 F^{01} \\
         &= (-\gamma\beta)(-\gamma\beta)(-E_x) + \gamma\gamma E_x
            = -\gamma^2\beta^2(E_x) + \gamma^2 E_x
            = E_x(1 - \beta^2)\gamma^2 \\
         &= E_x, \\
  E_{y'} &= F^{0'2'}
            = {\Lambda^0}_\mu {\Lambda^2}_\nu F^{\mu\nu}
            = {\Lambda^0}_\mu {\Lambda^2}_2 F^{\mu 2}
            = {\Lambda^0}_0 {\Lambda^2}_2 F^{02} + {\Lambda^0}_1 {\Lambda^2}_2 F^{12} \\
         &= \gamma \times 1 \times E_y + (-\beta\gamma) \times 1 \times B_z
            = \gamma E_y - \beta\gamma B_z \\
         &= \gamma\left(\mathbf{E} + \boldsymbol{\beta} \times \mathbf{B}\right)_y \\
  E_{z'} &= F^{0'3'}
            = {\Lambda^0}_\mu {\Lambda^3}_\nu F^{\mu\nu}
            = {\Lambda^0}_\mu {\Lambda^3}_3 F^{\mu 3}
            = {\Lambda^0}_0 {\Lambda^3}_3 F^{03} + {\Lambda^0}_1 {\Lambda^3}_3 F^{13} \\
         &= \gamma \times 1 \times E_z - \beta\gamma \times 1 \times (-B_y)
            = \gamma E_z + \beta\gamma B_y \\
         &= \gamma\left(\mathbf{E} + \boldsymbol{\beta} \times \mathbf{B}\right)_z.
\end{align}$$

Here, (_β_, 0, 0)}} is used. These results can be summarized by

$$\begin{align}
  \mathbf{E}_{\parallel'} &= \mathbf{E}_\parallel \\
  \mathbf{B}_{\parallel'} &= \mathbf{B}_\parallel \\
       \mathbf{E}_{\bot'} &= \gamma \left( \mathbf{E}_\bot + \boldsymbol{\beta} \times \mathbf{B}_\bot \right) = \gamma \left( \mathbf{E} + \boldsymbol{\beta} \times \mathbf{B} \right)_\bot,\\
       \mathbf{B}_{\bot'} &= \gamma \left( \mathbf{B}_\bot - \boldsymbol{\beta} \times \mathbf{E}_\bot \right) = \gamma \left( \mathbf{B} - \boldsymbol{\beta} \times \mathbf{E} \right)_\bot,
\end{align}$$

and are independent of the metric signature. For SI units, substitute . refer to this last form as the view as opposed to the _geometric view_ represented by the tensor expression

_F_^(_μ_′_ν_′) = _Λ_^(_μ_′)_(_μ_)_Λ_^(_ν_′)_(_ν_)_F_^(_μ__ν_),
and make a strong point of the ease with which results that are difficult to achieve using the view can be obtained and understood. Only objects that have well defined Lorentz transformation properties (in fact under _any_ smooth coordinate transformation) are geometric objects. In the geometric view, the electromagnetic field is a six-dimensional geometric object in _spacetime_ as opposed to two interdependent, but separate, 3-vector fields in _space_ and _time_. The fields (alone) and (alone) do not have well defined Lorentz transformation properties. The mathematical underpinnings are equations and that immediately yield . One should note that the primed and unprimed tensors refer to the _same event in spacetime_. Thus the complete equation with spacetime dependence is

_F_^(_μ_′_ν_′)(_x_′) = _Λ_^(_μ_′)_(_μ_)_Λ_^(_ν_′)_(_ν_)_F_^(_μ__ν_)(_Λ_^( − 1)_x_′) = _Λ_^(_μ_′)_(_μ_)_Λ_^(_ν_′)_(_ν_)_F_^(_μ__ν_)(_x_).

Length contraction has an effect on charge density and current density , and time dilation has an effect on the rate of flow of charge (current), so charge and current distributions must transform in a related way under a boost. It turns out they transform exactly like the space-time and energy-momentum four-vectors,

$$\begin{align}
  \mathbf{j}' &= \mathbf{j} - \gamma\rho v\mathbf{n} + \left( \gamma - 1 \right)(\mathbf{j} \cdot \mathbf{n})\mathbf{n} \\
        \rho' &= \gamma \left(\rho - \mathbf{j} \cdot \frac{v\mathbf{n}}{c^2}\right),
\end{align}$$

or, in the simpler geometric view,

_j_^(_μ_^(′)) = _Λ_^(_μ_′)_(_μ_)_j_^(_μ_).

One says that charge density transforms as the time component of a four-vector. It is a rotational scalar. The current density is a 3-vector.

The Maxwell equations are invariant under Lorentz transformations.

Spinors

Equation hold unmodified for any representation of the Lorentz group, including the bispinor representation. In one simply replaces all occurrences of by the bispinor representation ,

The above equation could, for instance, be the transformation of a state in Fock space describing two free electrons.

Transformation of general fields

A general _noninteracting_ multi-particle state (Fock space state) in quantum field theory transforms according to the rule[32]

           \left( \sum_{\sigma_1'\sigma_2' \cdots} D_{\sigma_1'\sigma_1}^{(j_1)}\left[W(\Lambda, p_1)\right] D_{\sigma_2'\sigma_2}^{(j_2)}\left[W(\Lambda, p_2)\right] \cdots \right)
           \Psi_{\Lambda p_1 \sigma_1' n_1; \Lambda p_2 \sigma_2' n_2; \cdots},
 \end{align}
| 

}} where is the Wigner rotation and is the representation of .


See also


Footnotes


Notes


References

Websites

-   -

Papers

-   -   -

-

-

-

-   . See also: English translation.

-   -   eqn (55).

-   -   -   -   -

Books

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


Further reading

-   -   -   -


External links

-   Derivation of the Lorentz transformations. This web page contains a more detailed derivation of the Lorentz transformation with special emphasis on group properties.
-   The Paradox of Special Relativity. This webpage poses a problem, the solution of which is the Lorentz transformation, which is presented graphically in its next page.
-   Relativity – a chapter from an online textbook
-   Warp Special Relativity Simulator. A computer program demonstrating the Lorentz transformations on everyday objects.
-   visualizing the Lorentz transformation.

-   Lorentz Frames Animated _from John de Pillis._ Online Flash animations of Galilean and Lorentz frames, various paradoxes, EM wave phenomena, _etc_.

Category:Special relativity Category:Theoretical physics Category:Mathematical physics Category:Spacetime Category:Coordinate systems Category:Hendrik Lorentz

[1]

[2]  Extract of page 21

[3] One can imagine that in each inertial frame there are observers positioned throughout space, each with a synchronized clock and at rest in the particular inertial frame. These observers then report to a central office, where a report is collected. When one speaks of a _particular_ observer, one refers to someone having, at least in principle, a copy of this report. See, e.g., .

[4]

[5]

[6]

[7]

[8]

[9]

[10] The reference is within the following paper:

[11]

[12] The separate requirements of the three equations lead to three different groups. The second equation is satisfied for spacetime translations in addition to Lorentz transformations leading to the Poincaré group or the _inhomogeneous Lorentz group_. The first equation (or the second restricted to lightlike separation) leads to a yet larger group, the conformal group of spacetime.

[13] The groups and are isomorphic. It is widely believed that the choice between the two metric signatures has no physical relevance, even though some objects related to and respectively, e.g., the Clifford algebras corresponding to the different signatures of the bilinear form associated to the two groups, are non-isomorphic.

[14]

[15]

[16]

[17]

[18] For two square matrices and , det(_A_)det(_B_)}}

[19] In quantum mechanics, relativistic quantum mechanics, and quantum field theory, a different convention is used for these matrices; the right hand sides are all multiplied by a factor of the imaginary unit }}.

[20] Until now the term "vector" has exclusively referred to "Euclidean vector", examples are position , velocity , etc. The term "vector" applies much more broadly than Euclidean vectors, row or column vectors, etc., see linear algebra and vector space for details. The generators of a Lie group also form a vector space over a field of numbers (e.g. real numbers, complex numbers), since a linear combination of the generators is also a generator. They just live in a different space to the position vectors in ordinary 3d space.

[21] In ordinary 3d position space, the position vector ''x''E_(_x_) + ''y''E_(_y_) + _z_E_(_z_)}} is expressed as a linear combination of the Cartesian unit vectors which form a basis, and the Cartesian coordinates are coordinates with respect to this basis.

[22]

[23]

[24]

[25]  Extract of page 138

[26]

[27]

[28]

[29]

[30]

[31]

[32]