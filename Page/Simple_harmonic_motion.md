In mechanics and physics, SIMPLE HARMONIC MOTION is a special type of periodic motion or oscillation where the restoring force is directly proportional to the displacement and acts in the direction opposite to that of displacement.

Simple harmonic motion can serve as a mathematical model for a variety of motions, such as the oscillation of a spring. In addition, other phenomena can be approximated by simple harmonic motion, including the motion of a simple pendulum as well as molecular vibration. Simple harmonic motion is typified by the motion of a mass on a spring when it is subject to the linear elastic restoring force given by Hooke's law. The motion is sinusoidal in time and demonstrates a single resonant frequency. For simple harmonic motion to be an accurate model for a pendulum, the net force on the object at the end of the pendulum must be proportional to the displacement. This is a good approximation when the angle of the swing is small.

Simple harmonic motion provides a basis for the characterization of more complicated motions through the techniques of Fourier analysis.


Introduction

The motion of a particle moving along a straight line with an acceleration whose direction is always towards a fixed point on the line and whose magnitude is proportional to the distance from the fixed point is called simple harmonic motion [SHM].[1]

. The orbit is periodic. (Here the velocity and position axes have been reversed from the standard convention to align the two diagrams)]]

In the diagram, a simple harmonic oscillator, consisting of a weight attached to one end of a spring, is shown. The other end of the spring is connected to a rigid support such as a wall. If the system is left at rest at the equilibrium position then there is no net force acting on the mass. However, if the mass is displaced from the equilibrium position, the spring exerts a restoring elastic force that obeys Hooke's law.

Mathematically, the restoring force is given by

F =  − _k_X,
where is the restoring elastic force exerted by the spring (in SI units: N), is the spring constant (N·m^(−1)), and is the displacement from the equilibrium position (m).

For any simple mechanical harmonic oscillator:

-   When the system is displaced from its equilibrium position, a restoring force that obeys Hooke's law tends to restore the system to equilibrium.

Once the mass is displaced from its equilibrium position, it experiences a net restoring force. As a result, it accelerates and starts going back to the equilibrium position. When the mass moves closer to the equilibrium position, the restoring force decreases. At the equilibrium position, the net restoring force vanishes. However, at 0}}, the mass has momentum because of the acceleration that the restoring force has imparted. Therefore, the mass continues past the equilibrium position, compressing the spring. A net restoring force then slows it down until its velocity reaches zero, whereupon it is accelerated back to the equilibrium position again.

As long as the system has no energy loss, the mass continues to oscillate. Thus simple harmonic motion is a type of periodic motion. Note if the real space and phase space diagram are not co-linear, the phase space motion becomes elliptical. The area enclosed depends on the amplitude and the maximum momentum.


Dynamics

In Newtonian mechanics, for one-dimensional simple harmonic motion, the equation of motion, which is a second-order linear ordinary differential equation with constant coefficients, can be obtained by means of Newton's 2nd law and Hooke's law for a mass on a spring.

$$F_\mathrm{net} = m\frac{\mathrm{d}^2 x}{\mathrm{d}t^2} = -kx,$$
where is the inertial mass of the oscillating body, is its displacement from the equilibrium (or mean) position, and is a constant (the spring constant for a mass on a spring).

Therefore,

$$\frac{\mathrm{d}^2 x}{\mathrm{d}t^2} = -\frac{k}{m}x,$$

Solving the differential equation above produces a solution that is a sinusoidal function.

_x_(_t_) = _c_₁cos (_ω__t_) + _c_₂sin (_ω__t_)
This equation can be written in the form:

_x_(_t_) = _A_cos (_ω__t_−_φ_),
where

$$\omega = \sqrt{\frac{k}{m}}, \qquad A = \sqrt{{c_1}^2 + {c_2}^2}, \qquad \tan \varphi = \frac{c_2}{c_1},$$
In the solution, and are two constants determined by the initial conditions, and the origin is set to be the equilibrium position. Each of these constants carries a physical meaning of the motion: is the amplitude (maximum displacement from the equilibrium position), 2π_f_}} is the angular frequency, and is the initial phase.

Using the techniques of calculus, the velocity and acceleration as a function of time can be found:

$$v(t) = \frac{\mathrm{d} x}{\mathrm{d} t} = - A\omega \sin(\omega t-\varphi),$$
Speed:

$${\omega} \sqrt {A^2 - x^2}$$
Maximum speed: (at equilibrium point)

$$a(t) = \frac{\mathrm{d}^2 x}{\mathrm{d}t^2} = - A \omega^2 \cos( \omega t-\varphi).$$
Maximum acceleration: (at extreme points)

By definition, if a mass is under SHM its acceleration is directly proportional to displacement.

_a_(_x_) =  − _ω_²_x_.
where

$$\omega^2=\frac{k}{m}$$

Since 2π_f_}},

$$f = \frac{1}{2\pi}\sqrt{\frac{k}{m}},$$

and, since }} where is the time period,

$$T = 2\pi \sqrt{\frac{m}{k}}.$$

These equations demonstrate that the simple harmonic motion is isochronous (the period and frequency are independent of the amplitude and the initial phase of the motion).


Energy

Substituting with , the kinetic energy of the system at time is

$$K(t) = \tfrac12 mv^2(t) = \tfrac12 m\omega^2A^2\sin^2(\omega t - \varphi) = \tfrac12 kA^2 \sin^2(\omega t - \varphi),$$
and the potential energy is

$$U(t) = \tfrac12 k x^2(t) = \tfrac12 k A^2 \cos^2(\omega t - \varphi).$$
In the absence of friction and other energy loss, the total mechanical energy has a constant value

$$E = K + U = \tfrac12 k A^2.$$


Examples

undergoes simple harmonic motion.]] The following physical systems are some examples of simple harmonic oscillator.

Mass on a spring

A mass attached to a spring of spring constant exhibits simple harmonic motion in closed space. The equation for describing the period

$$T= 2 \pi\sqrt\frac{m}{k}$$
shows the period of oscillation is independent of both the amplitude and gravitational acceleration, though in practice the amplitude should be small. The above equation is also valid in the case when an additional constant force is being applied on the mass, i.e. the additional constant force cannot change the period of oscillation.

Uniform circular motion

Simple harmonic motion can be considered the one-dimensional projection of uniform circular motion. If an object moves with angular speed around a circle of radius centered at the origin of the -plane, then its motion along each coordinate is simple harmonic motion with amplitude and angular frequency .

Mass of a simple pendulum

approximates to simple harmonic motion if the angle of oscillation is small.]]

In the small-angle approximation, the motion of a simple pendulum is approximated by simple harmonic motion. The period of a mass attached to a pendulum of length with gravitational acceleration g is given by

$$T = 2 \pi \sqrt\frac{l}{g}$$

This shows that the period of oscillation is independent of the amplitude and mass of the pendulum but not of the acceleration due to gravity, g, therefore a pendulum of the same length on the Moon would swing more slowly due to the Moon's lower gravitational field strength. Because the value of g varies slightly over the surface of the earth, the time period will vary slightly from place to place and will also vary with height above sea level.

This approximation is accurate only for small angles because of the expression for angular acceleration being proportional to the sine of the displacement angle:

 − _m__g__l_sin _θ_ = _I__α_,
where is the moment of inertia. When is small, and therefore the expression becomes

 − _m__g__l__θ_ = _I__α_
which makes angular acceleration directly proportional to , satisfying the definition of simple harmonic motion.

Scotch yoke

A Scotch yoke mechanism can be used to convert between rotational motion and linear reciprocating motion. The linear motion can take various forms depending on the shape of the slot, but the basic yoke with a constant rotation speed produces a linear motion that is simple harmonic in form.


See also


Notes

.}} , and thus when _A_}}.}}


References

-   -   -   -


External links

-   Simple Harmonic Motion from HyperPhysics
-   Java simulation of spring-mass oscillator

Category:Classical mechanics Category:Pendulums

[1]