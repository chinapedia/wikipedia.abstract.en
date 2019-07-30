In physics, JERK is the rate of change of acceleration; that is, the time derivative of acceleration, and as such the second derivative of velocity, or the third time derivative of position. According to the result of dimensional analysis of jerk, [length/time³], the SI units for its magnitude are m/s³ (or m⋅s^(−3)); this can also be expressed in standard gravity per second (_g_/s).

Jerk is a vector, and (as with _acceleration_) there is no distinct term to denote its scalar magnitude (more precisely, its norm, as, e.g., there is "speed" for the norm of the velocity vector).


Expressions

Jerk can be formulated in any of the following equivalent ways:

$$\vec \jmath(t) = \frac{\mathrm{d} \vec a(t)}{\mathrm{d}t} = \dot{\vec a}(t) = \frac{\mathrm{d}^2 \vec v(t)}{\mathrm{d}t^2} = \ddot{\vec v}(t) = \frac{\mathrm{d}^3 \vec r(t)}{\mathrm{d}t^3} = \overset{...}{\vec r}(t),$$

where

_a⃗_
is acceleration,

_v⃗_
is velocity,

_r⃗_
is position,

_t_
is time.

There is no standard symbol for jerk, but j is commonly used. Newton's notation for the time derivative ($\dot{ a}, \ddot{ v}, \overset{...}{r}$) is also applied.

The fourth derivative of position, equivalent to the first derivative of jerk, is jounce.

The definition of jerk is based on a third derivative. For this reason, in mathematics differential equations of the form

    $J\left(\overset{...}{x}, \ddot{x}, \dot{x}, x\right) = 0,$

having third derivatives in them, are sometimes called _jerk equations_. It has been shown that a jerk equation, which is equivalent to a system of three first-order ordinary non-linear differential equations, is in a mathematically well defined sense the minimal setting for solutions showing chaotic behaviour. This motivates mathematical interest in _jerk systems_. Systems involving a fourth or higher derivative are accordingly called _hyperjerk systems_.[1]


Physiological effects and human perception

Human tolerance of g-force}}

The smooth movement and also the rest state of an alert human body is achieved by balancing the forces of several antagonistic muscles which are controlled across neural paths by the brain (for directed movement) or sometimes across reflex arcs. In balancing some given force (e.g., holding or pulling up a weight, well within muscular capability) the postcentral gyrus establishes a control loop to achieve this equilibrium or the desired motion. The sensed position of the actuator coupled to the weight is compared by the brain to the intended position (steady or lifted in the example) and the according muscles are tensioned or relaxed to achieve the desired result. If the load changes faster than the current state of this control loop is capable of supplying a suitable adaptive response, the balance cannot be upheld, because the tensioned muscles cannot relax or build up tension fast enough and overshoot in either direction, until the neural control loop manages to take control again. Of course the time to react is limited from below by physiological bounds and also depends on the attention level of the brain: an _expected_ change will be stabilized faster than a _sudden_ drop or increase of load.

To avoid passengers in transportation losing control over their body motion, thereby endangering their physical integrity, it is not only necessary to limit the maximum acceleration, that is the force, they can safely be exposed to, but also the maximum jerk, since they need time to adapt to even limited stress changes by adjusting their muscle tension, or else suffer conditions such as whiplash.[2] Even where occupant safety is not an issue, excessive jerk may result in an uncomfortable ride on elevators, trams, and the like; so engineers expend considerable design effort to minimize "jerky motion".

Since forces, changing at a suitable rate in time (that is, _suitable_ jerk) are the cause of vibrations, and vibrations significantly impair the quality of transportation, there is good reason to simply _minimize_ jerk in transportation vehicles.

As an everyday example, driving in a car can show effects of acceleration and jerk. More skilled and experienced drivers can accelerate smoothly, but beginners often provide a _jerky_ ride.

-   Changing gears in an average car, especially with a foot-operated clutch, offers well-known examples: although the accelerating force is limited by engine power, an inexperienced driver lets you experience _severe_ jerk, just because of intermittent force closure over the clutch.
-   High-powered sports cars offer the feeling of being pressed into the cushioning, but this is the force of the acceleration. Jerk occurs only in the very first moments, when the torque of the engine starts at zero and grows with the rotational speed, causing a remarkable of the acceleration. A slight whiplash effect is noticeable in the neck, mostly masked by the jerk of gear switching.
-   In the beginning of an (emergency) braking a body under tonicity whips forward (with respect to the car) to a bigger extent than the achieved acceleration alone accomplishes during the rest of the braking process, when the muscle tension regains control of the body. A collision can do so to an even greater degree, not allowing for a tonicity controlled body at all. Quantitative testing on living humans (and, for some, on animals) runs afoul of ethical concerns, with the effect that cadavers or crash test dummies must be substituted, which, of course, do not show the physiological reactions to jerk caused by an active control loop described above.
-   A highly reproducible experiment to demonstrate jerk is as follows: Brake a car starting at a _modest_ speed in two different ways:
    1.  apply a constant, modest force on the pedal till the car comes to a halt, only then release the pedal;
    2.  apply the same, constant, modest force on the pedal, but just before the halt, reduce the force on the pedal, optimally releasing the pedal fully, exactly when the car stops.

    The reason for the by far bigger jerk in the first way to brake is a _discontinuity_ of the acceleration, which is initially at a _constant_ value, due to the constant force on the pedal, and _drops to zero_ immediately, when the wheels stop rotating. Note that there would be _no jerk_ if the car started to move _backwards_ with the same acceleration. Every experienced driver knows how to start and how to stop braking with low jerk. See also below in the motion profile, segment 7: _Deceleration ramp-down_.

For some remarks on how the human perception of various motions is organized in the proprioceptors, the vestibular organ and by visual impressions, and how to deceive it, see the article on motion simulators.


Forces and path derivatives

Position x itself, zeroth derivative

The most prominent force F associated with the _position_ of a particle relates through Hooke's law to the _rigid_ stiffness k_(r) of a spring:

_F_ =  − _k__(_r_)_x_.
This is a force opposing the increase in displacement.

Speed v, magnitude of the first derivative

A particle moving in a viscous fluid environment experiences a drag force F_(D), which, depending on the Reynolds number and its area, ranges from being proportional to v up to being proportional to v² according to the drag equation:

$$F_D = \tfrac12 \rho v^2 C_D A,$$
where

_ρ_
is the density of the fluid,

_v_
is the speed of the object relative to the fluid,

_A_
is the cross-sectional area,

_C__(_D_)
is the drag coefficient – a dimensionless number. The drag coefficient depends on the scalable shape of the object and on the Reynolds number, which itself depends on the speed.

Acceleration _a_, magnitude of the second derivative

The acceleration a is according to Newton's second law

_F_ = _m_ ⋅ _a_
bound to a force F by the proportionality given by the mass m.

Higher derivatives

In classical mechanics of rigid bodies there are _no forces_ associated with the higher derivatives of the path, nevertheless not only the physiological effects of jerk, but also oscillations and deformation propagation along and in non-ideally rigid bodies, require various techniques for controlling motion to avoid the resulting destructive forces. It is often reported that NASA in designing the Hubble Telescope not only limited the jerk in their requirement specification, but also the next higher derivative, the jounce.

For a recoil force on accelerating _charged_ particles emitting radiation, which is proportional to their jerk and the square of their charge, see the Abraham–Lorentz force. A more advanced theory, applicable in a relativistic and quantum environment, accounting for self-energy is provided in Wheeler–Feynman absorber theory.


In an idealized setting

In real world environments, because of deformation, granularity at least at the Planck scale, i.e. quanta-effects, and other reasons, discontinuities in acceleration do not occur. However, frequently used idealized settings (rigid bodies, smooth representations of paths, no friction, and the like) applied to an also idealized point mass moving along a piecewise smooth and as a whole continuous path, suffice for the phenomenon of a jump-discontinuity in acceleration at the points where the path is not smooth, and accordingly for an unbounded jerk in this simplified model of classical mechanics (see two examples below). Extrapolating from the idealized settings, the effect of jerk in real situations can be qualitatively described, explained and predicted.

The jump-discontinuity in acceleration may be modeled by a Dirac delta in the jerk, scaled with the height of this jump. Integrating jerk over time generally gives the according acceleration; doing so across such a Dirac delta reconstructs exactly the jump discontinuity in the acceleration belonging to the Dirac delta in the jerk.

Assume a path along a circular arc with radius r, which tangentially connects to a straight line. The whole path is continuous and its pieces are smooth. Now let a point particle move with constant speed along this path, so its tangential acceleration is zero, and consider the acceleration orthogonal to the path: it is zero along the straight part and v²/r along the circle (centripetal acceleration). This gives a jump-discontinuity in the magnitude of the acceleration by v²/r, and the particle undergoes a jerk measured by a Dirac delta scaled with this value, for purely geometric reasons, when it passes the connection of the pieces. See below for a more concrete application.

If we assume an idealized spring and idealized, kinetic frictional forces, proportional to the normal force and directed oppositely to the velocity, there is another example of discontinuous acceleration. Let a mass, connected to an ideal spring, oscillate on a flat, idealized surface with friction. Each time the velocity changes sign (at the maxima of displacement), the magnitude of the force on the mass, which is the vectorial sum of the spring force and the kinetic frictional force, changes by twice the magnitude of the frictional force, since the spring force is continuous and the frictional force _reverses_ its direction when the velocity does. Therefore the acceleration jumps by this amount divided by the mass. That is, the mass experiences a discontinuous acceleration and the jerk contains a Dirac delta, each time the mass passes through the (decreasing) maximal displacements, until it comes to a halt, because the static friction force adapts to the residual spring force, establishing equilibrium with zero net force and zero velocity.

The car example relies on the way the brakes operate on a rotating drum or on a disc. As long as the disc rotates the brake pads act to decelerate the vehicle via the kinetic frictional forces which create a constant braking torque on the disk. This decreases the rotation _linearly_ to zero with _constant_ angular acceleration, but when the rotation reaches exactly zero, this hitherto constant frictional force _suddenly_ drops to zero, as well as the torque, and the associated acceleration of the car. This, of course, neglects all effects of tire sliding, dipping of suspension, real deflection of all ideally rigid mechanisms, etc. A sudden drop in acceleration indicates a Dirac delta in the _physical_ jerk, which is smoothed down by the _real_ environment, the cumulative effects of which are analogous to damping, to the _physiologically_ perceived _jerk_.

Another example of significant jerk, analogous to the first setting, is given by cutting the rope twirling a particle around a center. When the rope is cut, the circular path with non-zero centripetal acceleration changes abruptly to a straight path with suddenly no force in the direction to the former center. Imagine a monomolecular fiber, cut by a laser and you arrive at very high rates of jerk, because of the extremely short cutting time.


In rotation

in operation]]

Consider a rotational movement of a rigid body about a fixed axis in an inertial frame. The orientation of the solid can be expressed by an angle θ, the angular position, from which one can express:

    the angular speed $\omega(t)=\dot\theta(t)=\frac{\mathrm {d}\theta(t)} {\mathrm {d}t}$ as the time derivative of θ(t)
    the angular acceleration $\alpha(t)=\dot\omega(t)=\frac{\mathrm {d}\omega(t)} {\mathrm {d} t}$ as the time derivative of ω(t).

Differentiating the α(t) with respect to time, defines an angular jerk ζ(t):

$$\zeta(t) = \dot {\alpha}(t) =\ddot\omega(t) = \overset{...}{ \theta}(t)$$
.

The angular acceleration corresponds to the quotient of the torque acting on the body and the moment of inertia of the body with respect to the momentary axis of rotation. An abrupt change of the torque results in an important angular jerk.

The general case of a rigid body movement in space can be modeled by a kinematic screw, which specifies at each instant one (axial) vector, the angular velocity Ω⃗(t) and one (polar) vector, the linear velocity v⃗(t). From this the angular acceleration is defined as

    $\vec {\alpha}(t) = \frac {\mathrm {d}} {\mathrm {d} t} \vec {\Omega}(t)= \dot {\vec \Omega}(t)$

and thus the angular jerk

    $\vec \zeta(t) = \frac {\mathrm {d}}{\mathrm {d}t}\vec{\alpha}(t)=\dot{\vec\alpha}(t)$ .

Consider for example a Geneva drive, a device for creating an intermittent rotation of the driven wheel (blue) from a continuous rotation of the driving wheel (red). On one cycle of the driving wheel there is a variation of the angular position θ of the driven wheel by one quarter of a cycle, and a constant angular position on the remainder of the cycle.

Because of the necessary finite thickness of the fork making up the slot for the driving pin this device generates a discontinuity in the angular acceleration α, and therefore an unbounded angular jerk ζ in the driven wheel.

This does not preclude the mechanism from being used in e.g. movie projectors to stepwise transport the film with high reliability (very long life) and just slight noise, since the load is very low - the system drives just that part of the film which is within the corridor of projection, so a very low mass (a few centimeters thin plastic film), with low friction, at a moderate speed (2.4 m/s, 8.6 km/h) is affected.

To avoid the jerk inherent in a single cam device, a dual cam device can be used instead, bulkier and more expensive, but also quieter. This operates two cams on one axis in continuous rotation and shifting another axle about a fraction of a full revolution. The pictures show a step drive by one sixth and one third rotation, respectively per full revolution of the driving axle. Note that two of the arms of the stepped wheel are always in contact with the double cam, so there is no radial clearance. To follow the detailed operation of the dual cam devices it is advisable to have a look at the enlarged pictures.

Generally, combined contacts may be used to avoid jerk (and also wear and noise) associated with one single follower, e.g. gliding along a slot and thereby changing its contact point from one side of the slot to the other, by using two followers always sliding along the same, one side each.


In elastically deformable matter

A force/acceleration acting on an elastically deformable mass will affect a deformation which depends on its stiffness and the acceleration applied. If the change of this force is slow, the jerk is small, and the propagation of this deformation through the body may be considered instantaneously compared to the change in acceleration. The distorted body acts as if it were in a quasi-static regime. It is the common thread that only a changing force, i.e. a non-zero jerk, can cause mechanical (or on a charged particle: electromagnetic) waves to be radiated. So for non-zero to high jerk a shock wave and its propagation through the body is to be considered. The left picture shows the propagation of a deformation as a compressional, plane wave through an elastically deformable material. For angular jerk the deformation waves are arranged circularly and cause shear stress as shown in the adjacent picture, which also might cause other modes of vibration. As usual with waves, one has to consider their reflections along all boundaries and the emerging interference patterns, i.e. destructive as well as constructive interference, which may lead to exceeding boundaries of structural integrity. As a rough estimate the deformation waves result in vibrations of the whole device and, generally, vibrations cause noise, wear, and, especially in resonance cases, even disruption.

The picture to the left shows a massive top bending the elastic pole, to which it is connected, to the left, when the bottom block is accelerated to the right. When the block stops accelerating, the top on the pole will start a (damped) oscillation under the regime of the stiffness of the pole. This could make plausible, how a bigger (periodic) jerk might excite a bigger amplitude of the oscillations, because any small oscillations are damped before they get reinforced by another amplitude of the shock wave.

One can also argue that a _steeper_ slope of the acceleration, i.e. a bigger jerk, excites bigger wave components in the shockwave with higher frequencies, belonging to higher Fourier coefficients, and so an increased probability of exciting a resonant mode.

As a general rule, to reduce the amplitude of excited stress waves, causing vibrations, any motion of massive parts has to be shaped by limiting the jerk, i.e. making the acceleration continuous and keep its slopes as flat as possible. Since the described effects are almost not amenable to abstract models anymore, the various suggested algorithms for reducing vibrations include still higher derivatives such as the jounce or suggest continuous regimes not only for the acceleration, but also for the jerk. One concept is e.g. shaping the acceleration and deceleration sinusoidal with zero-acceleration in between (see the profile to the right), making the speed look sinusoidal with constant maximal speed, too. The jerk however will remain discontinuous at the points when the acceleration enters and leaves its zero-phases.


In the geometric design of roads and tracks

The principles of geometric design apply to the jerk oriented orthogonally to the path of motion, considering the centripetal acceleration, whereas the velocity along the path is assumed to be constant, and so the tangential jerk is zero. Any change in curvature of the path implies non-zero jerk, arising from purely geometric reasons. To avoid the unbounded (centripetal) jerk when moving from a straight path into a curve or vice versa, track transition curves are constructed, which limit the jerk by gradually increasing the centripetal acceleration, i.e. the curvature, to the value that belongs to the radius of the circle and the speed of travel. The theoretical optimum is achieved by the Euler spiral, which linearly increases the acceleration, i.e., constant jerk. As a design rule a maximum value of 0.5 m/s³ and for convenience purposes a value of 0.35 m/s³ are recommended in railway design. The picture shows a piece of an Euler spiral leading as track transition curve from a straight line to an arc of a circle. In the real scenario the plane of the track is inclined in the course of the curve and so also this vertical acceleration of the necessary lifting of the center of mass of the rail car has to be considered to minimize the wear on the embankment and the tracks by following a slightly different curve. This has been patented as the _Wiener Kurve_ (Viennese Curve).[3][4]

Roller coasters[5] are of course also subject to these design considerations, when rolling into a loop. The acceleration values range up to 4g in this environment and it would not be possible to ride loopings without track transitions, as well as one cannot smoothly drive along a figure eight consisting of circles. Any S-shaped curve must contain some jerk-reducing transition.


In motion control

In motion control the focus is on straight linear motion, where the need is to move a system from one steady position to another (point-to-point motion). So effectively, the jerk resulting from tangential acceleration is under control. Prominent applications are elevators in people transportation, and the support of tools in machining. It is reported[6] that most passengers rate a vertical jerk of 2.0 m/s³ in a lift ride as acceptable, 6.0 m/s³ as intolerable and for a hospital environment 0.7 m/s³ is suggested. In any case, limiting jerk is considered essential for riding convenience.[7] ISO 18 738[8] defines how to measure elevator ride quality with respect to jerk, acceleration, vibrations and noise, but does not venture into defining what are different levels of elevator ride quality.

Achieving the shortest possible transition time, thereby not exceeding given limit magnitudes for speed, acceleration, and jerk, will result in a third-order motion profile, with quadratic ramping and de-ramping phases in the velocity, as illustrated below:

This motion profile consists of up to seven segments defined by the following:

1.  ACCELERATION BUILD-UP: _limit jerk_ implies _linear increase_ of acceleration to the _limit acceleration_, _quadratic increase_ of speed
2.  LIMIT ACCELERATION: implies _zero jerk_ and _linear increase_ of speed
3.  ACCELERATION RAMP-DOWN: approaching the desired limit velocity with _negative limit jerk_, i.e. _linear decrease_ of acceleration, _(negative) quadratic increase_ of speed
4.  LIMIT SPEED: implies _zero jerk_ and _zero acceleration_
5.  DECELERATION BUILD-UP: _limit negative jerk_ implies _linear decrease_ of acceleration to the _negative limit acceleration_, _(negative) quadratic decrease_ of speed
6.  LIMIT DECELERATION: implies _zero jerk_ and _linear decrease_ of speed
7.  DECELERATION RAMP-DOWN: _limit jerk_ implies _linear increase_ of acceleration to zero, _quadratic decrease_ of speed, approaching the desired position at zero speed and zero acceleration

The time allotted to segment 4, concerning constant velocity, is to be varied to suit the distance between the two positions. If the initial and final positions are so close together that a complete omission of this 4th segment does not suffice, the segments 2 and 6 with constant acceleration are equally reduced and the limit of speed would not be reached in this variant of the profile. If also this does not reduce the crossed distance sufficiently, in a next step the ramping segments 1, 3, 5, and 7 are to be shortened by an equal amount and the limit of acceleration is also not reached.

There are also other strategies to design a motion profile, e.g. minimizing the square of the jerk for a given transition time, to be selected according to the varying applications in machines, people movers, chain hoists, automotive industries, robot design, and many more. For a sinusoidal-shaped acceleration profile, with sinusoidal-shaped speed and bounded jerk also, see above.

In manufacturing

Jerk is also important to consider in manufacturing processes. Rapid changes in acceleration of a cutting tool can lead to premature tool wear and result in uneven cuts. This is why modern motion controllers include jerk limitation features. In mechanical engineering, jerk is considered, in addition to velocity and acceleration, in the development of cam profiles because of tribological implications and the ability of the actuated body to follow the cam profile without chatter.[9] Jerk must often be considered when the excitation of vibrations is a concern. A device that measures jerk is called a "jerkmeter".


See also

-   Jounce, the derivative of jerk
-   Geomagnetic jerk
-   Abraham–Lorentz force, a force in electrodynamics whose magnitude is proportional to jerk
-   Shock (mechanics)
-   Wheeler–Feynman absorber theory


Notes


References

-   -   -


External links

-   What is the term used for the third derivative of position?, description of jerk in the Usenet Physics FAQ
-   Mathematics of Motion Control Profiles
-   Elevator-Ride-Quality
-   Elevator manufacturer brochure
-   Patent of _Wiener Kurve_
-   Description of _Wiener Kurve_

Category:Classical mechanics Category:Physical quantities Category:Acceleration Category:Time in physics Category:Temporal rates

[1] K. E. Chlouverakis and J. C. Sprott, Chaos Solitons & Fractals 28, 739–746 (2005), Chaotic Hyperjerk Systems, http://sprott.physics.wisc.edu/pubs/paper297.htm

[2]

[3] https://depatisnet.dpma.de/DepatisNet/depatisnet?window=1&space=menu&content=treffer&action=pdf&docid=AT000000412975B

[4]

[5]

[6]

[7]

[8]

[9] Blair, G., "Making the Cam", ''Race Engine Technology '' 10, September/October 2005