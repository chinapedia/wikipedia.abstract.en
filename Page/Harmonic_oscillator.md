In classical mechanics, a HARMONIC OSCILLATOR is a system that, when displaced from its equilibrium position, experiences a restoring force _F_ proportional to the displacement _x_:

_F⃗_ =  − _k__x⃗_,
where _k_ is a positive constant.

If _F_ is the only force acting on the system, the system is called a SIMPLE HARMONIC OSCILLATOR, and it undergoes simple harmonic motion: sinusoidal oscillations about the equilibrium point, with a constant amplitude and a constant frequency (which does not depend on the amplitude).

If a frictional force (damping) proportional to the velocity is also present, the harmonic oscillator is described as a DAMPED OSCILLATOR. Depending on the friction coefficient, the system can:

-   Oscillate with a frequency lower than in the undamped case, and an amplitude decreasing with time (underdamped oscillator).
-   Decay to the equilibrium position, without oscillations (overdamped oscillator).

The boundary solution between an underdamped oscillator and an overdamped oscillator occurs at a particular value of the friction coefficient and is called critically damped.

If an external time-dependent force is present, the harmonic oscillator is described as a _driven oscillator_.

Mechanical examples include pendulums (with small angles of displacement), masses connected to springs, and acoustical systems. Other analogous systems include electrical harmonic oscillators such as RLC circuits. The harmonic oscillator model is very important in physics, because any mass subject to a force in stable equilibrium acts as a harmonic oscillator for small vibrations. Harmonic oscillators occur widely in nature and are exploited in many manmade devices, such as clocks and radio circuits. They are the source of virtually all sinusoidal vibrations and waves.


Simple harmonic oscillator

A simple harmonic oscillator is an oscillator that is neither driven nor damped. It consists of a mass _m_, which experiences a single force _F_, which pulls the mass in the direction of the point _x_ = 0 and depends only on the mass's position _x_ and a constant _k_. Balance of forces (Newton's second law) for the system is

$$F = m a = m \frac{\mathrm{d}^2x}{\mathrm{d}t^2} = m\ddot{x} = -k x.$$

Solving this differential equation, we find that the motion is described by the function

_x_(_t_) = _A_cos (_ω__t_ + _φ_),

where

$$\omega = \sqrt{\frac k m}.$$

The motion is periodic, repeating itself in a sinusoidal fashion with constant amplitude _A_. In addition to its amplitude, the motion of a simple harmonic oscillator is characterized by its period T = 2π/ω, the time for a single oscillation or its frequency f = 1/T, the number of cycles per unit time. The position at a given time _t_ also depends on the phase _φ_, which determines the starting point on the sine wave. The period and frequency are determined by the size of the mass _m_ and the force constant _k_, while the amplitude and phase are determined by the starting position and velocity.

The velocity and acceleration of a simple harmonic oscillator oscillate with the same frequency as the position, but with shifted phases. The velocity is maximal for zero displacement, while the acceleration is in the direction opposite to the displacement.

The potential energy stored in a simple harmonic oscillator at position _x_ is

    $U = \frac 1 2 kx^2.$


Damped harmonic oscillator

Damping_1.svg Oscillatory_motion_acceleration.ogv. ]]

In real oscillators, friction, or damping, slows the motion of the system. Due to frictional force, the velocity decreases in proportion to the acting frictional force. While in a simple undriven harmonic oscillator the only force acting on the mass is the restoring force, in a damped harmonic oscillator there is in addition a frictional force which is always in a direction to oppose the motion. In many vibrating systems the frictional force _F__(f) can be modeled as being proportional to the velocity _v_ of the object: , where _c_ is called the _viscous damping coefficient_.

The balance of forces (Newton's second law) for damped harmonic oscillators is then

$$F = - kx - c\frac{\mathrm{d}x}{\mathrm{d}t} = m \frac{\mathrm{d}^2x}{\mathrm{d}t^2},$$
[1][2][3]

which can be rewritten into the form

$$\frac{\mathrm{d}^2x}{\mathrm{d}t^2} + 2\zeta\omega_0\frac{\mathrm{d}x}{\mathrm{d}t} + \omega_0^2 x = 0,$$

where

    $\omega_0 = \sqrt{\frac k m}$ is called the "undamped angular frequency of the oscillator",
    $\zeta = \frac{c}{2\sqrt{mk}}$ is called the "damping ratio".

Step_response_for_two-pole_feedback_amplifier.PNG of a damped harmonic oscillator; curves are plotted for three values of . Time is in units of the decay time .]]

The value of the damping ratio _ζ_ critically determines the behavior of the system. A damped harmonic oscillator can be:

-   _Overdamped_ (_ζ_ > 1): The system returns (exponentially decays) to steady state without oscillating. Larger values of the damping ratio _ζ_ return to equilibrium more slowly.
-   _Critically damped_ (_ζ_ = 1): The system returns to steady state as quickly as possible without oscillating (although overshoot can occur). This is often desired for the damping of systems such as doors.
-   _Underdamped_ (_ζ_ < 1): The system oscillates (with a slightly different frequency than the undamped case) with the amplitude gradually decreasing to zero. The angular frequency of the underdamped harmonic oscillator is given by $\omega_1 = \omega_0\sqrt{1 - \zeta^2},$ the exponential decay of the underdamped harmonic oscillator is given by λ = ω₀ζ.

The Q factor of a damped oscillator is defined as

$$Q = 2\pi \times \frac{\text{energy stored}}{\text{energy lost per cycle}}.$$

_Q_ is related to the damping ratio by the equation $Q = \frac{1}{2\zeta}.$


Driven harmonic oscillators

Driven harmonic oscillators are damped oscillators further affected by an externally applied force _F_(_t_).

Newton's second law takes the form

$$F(t)-kx-c\frac{\mathrm{d}x}{\mathrm{d}t}=m\frac{\mathrm{d}^2x}{\mathrm{d}t^2}.$$

It is usually rewritten into the form

$$\frac{\mathrm{d}^2x}{\mathrm{d}t^2} + 2\zeta\omega_0\frac{\mathrm{d}x}{\mathrm{d}t} + \omega_0^2 x = \frac{F(t)}{m}.$$

This equation can be solved exactly for any driving force, using the solutions _z_(_t_) that satisfy the unforced equation

$$\frac{\mathrm{d}^2z}{\mathrm{d}t^2} + 2\zeta\omega_0\frac{\mathrm{d}z}{\mathrm{d}t} + \omega_0^2 z = 0,$$

and which can be expressed as damped sinusoidal oscillations:

$$z(t) = A \mathrm{e}^{-\zeta \omega_0 t} \sin \left( \sqrt{1 - \zeta^2} \omega_0 t + \varphi \right),$$

in the case where _ζ_ ≤ 1. The amplitude _A_ and phase _φ_ determine the behavior needed to match the initial conditions.

Step input

In the case _ζ_ < 1 and a unit step input with _x_(0) = 0:

$$\frac{F(t)}{m} = \begin{cases} \omega _0^2 & t \geq 0 \\ 0 & t < 0 \end{cases}$$

the solution is

$$x(t) = 1 - \mathrm{e}^{-\zeta \omega_0 t} \frac{\sin \left( \sqrt{1 - \zeta^2} \omega_0 t + \varphi \right)}{\sin(\varphi)},$$

with phase _φ_ given by

cos _φ_ = _ζ_.

The time an oscillator needs to adapt to changed external conditions is of the order _τ_ = 1/(_ζω_₀). In physics, the adaptation is called relaxation, and _τ_ is called the relaxation time.

In electrical engineering, a multiple of _τ_ is called the _settling time_, i.e. the time necessary to ensure the signal is within a fixed departure from final value, typically within 10%. The term _overshoot_ refers to the extent the response maximum exceeds final value, and _undershoot_ refers to the extent the response falls below final value for times following the response maximum.

Sinusoidal driving force

Mplwp_resonance_zeta_envelope.svg ζ of a driven simple harmonic oscillator]]

In the case of a sinusoidal driving force:

$$\frac{\mathrm{d}^2x}{\mathrm{d}t^2} + 2\zeta\omega_0\frac{\mathrm{d}x}{\mathrm{d}t} + \omega_0^2 x = \frac{1}{m} F_0 \sin(\omega t),$$

where F₀ is the driving amplitude, and ω is the driving frequency for a sinusoidal driving mechanism. This type of system appears in AC-driven RLC circuits (resistor–inductor–capacitor) and driven spring systems having internal mechanical resistance or external air resistance.

The general solution is a sum of a transient solution that depends on initial conditions, and a steady state that is independent of initial conditions and depends only on the driving amplitude F₀, driving frequency ω, undamped angular frequency ω₀, and the damping ratio ζ.

The steady-state solution is proportional to the driving force with an induced phase change φ:

$$x(t) = \frac{F_0}{m Z_m \omega} \sin(\omega t + \varphi),$$

where

$$Z_m = \sqrt{\left(2\omega_0\zeta\right)^2 + \frac{1}{\omega^2} (\omega_0^2 - \omega^2)^2}$$

is the absolute value of the impedance or linear response function, and

$$\varphi = \arctan\left(\frac{2\omega \omega_0\zeta}{\omega^2 - \omega_0^2} \right) + n\pi$$

is the phase of the oscillation relative to the driving force. The phase value is usually taken to be between −180° and 0 (that is, it represents a phase lag, for both positive and negative values of the arctan argument).

For a particular driving frequency called the resonance, or resonant frequency $\omega_r = \omega_0 \sqrt{1 - 2\zeta^2}$, the amplitude (for a given F₀) is maximal. This resonance effect only occurs when $\zeta < 1 / \sqrt{2}$, i.e. for significantly underdamped systems. For strongly underdamped systems the value of the amplitude can become quite large near the resonant frequency.

The transient solutions are the same as the unforced (F₀ = 0) damped harmonic oscillator and represent the systems response to other events that occurred previously. The transient solutions typically die out rapidly enough that they can be ignored.


Parametric oscillators

A parametric oscillator is a driven harmonic oscillator in which the drive energy is provided by varying the parameters of the oscillator, such as the damping or restoring force. A familiar example of parametric oscillation is "pumping" on a playground swing.[4][5][6] A person on a moving swing can increase the amplitude of the swing's oscillations without any external drive force (pushes) being applied, by changing the moment of inertia of the swing by rocking back and forth ("pumping") or alternately standing and squatting, in rhythm with the swing's oscillations. The varying of the parameters drives the system. Examples of parameters that may be varied are its resonance frequency ω and damping β.

Parametric oscillators are used in many applications. The classical varactor parametric oscillator oscillates when the diode's capacitance is varied periodically. The circuit that varies the diode's capacitance is called the "pump" or "driver". In microwave electronics, waveguide/YAG based parametric oscillators operate in the same fashion. The designer varies a parameter periodically to induce oscillations.

Parametric oscillators have been developed as low-noise amplifiers, especially in the radio and microwave frequency range. Thermal noise is minimal, since a reactance (not a resistance) is varied. Another common use is frequency conversion, e.g., conversion from audio to radio frequencies. For example, the Optical parametric oscillator converts an input laser wave into two output waves of lower frequency (ω_(s), ω_(i)).

Parametric resonance occurs in a mechanical system when a system is parametrically excited and oscillates at one of its resonant frequencies. Parametric excitation differs from forcing, since the action appears as a time varying modification on a system parameter. This effect is different from regular resonance because it exhibits the instability phenomenon.


Universal oscillator equation

The equation

$$\frac{\mathrm{d}^2q}{\mathrm{d} \tau^2} + 2 \zeta \frac{\mathrm{d}q}{\mathrm{d}\tau} + q = 0$$

is known as the UNIVERSAL OSCILLATOR EQUATION, since all second-order linear oscillatory systems can be reduced to this form. This is done through nondimensionalization.

If the forcing function is _f_(_t_) = cos(_ωt_) = cos(_ωt_(c)τ_) = cos(_ωτ_), where _ω_ = _ωt__(_c_), the equation becomes

    $\frac{\mathrm{d}^2q}{\mathrm{d} \tau^2} + 2 \zeta \frac{\mathrm{d}q}{\mathrm{d}\tau} + q = \cos(\omega \tau).$

The solution to this differential equation contains two parts: the "transient" and the "steady-state".

Transient solution

The solution based on solving the ordinary differential equation is for arbitrary constants _c_₁ and _c_₂

    q_t (\tau) = \begin{cases}

\mathrm{e}^{-\zeta\tau} \left( c_1 \mathrm{e}^{\tau \sqrt{\zeta^2 - 1}} + c_2 \mathrm{e}^{- \tau \sqrt{\zeta^2 - 1}} \right) & \zeta > 1 \text{ (overdamping)} \\
\mathrm{e}^{-\zeta\tau} (c_1+c_2 \tau) = \mathrm{e}^{-\tau}(c_1+c_2 \tau) & \zeta = 1 \text{ (critical damping)} \\
\mathrm{e}^{-\zeta \tau} \left[ c_1 \cos \left(\sqrt{1-\zeta^2} \tau\right) + c_2 \sin\left(\sqrt{1-\zeta^2} \tau\right) \right] & \zeta < 1 \text{ (underdamping)}

\end{cases}

The transient solution is independent of the forcing function.

Steady-state solution

Apply the "complex variables method" by solving the auxiliary equation below and then finding the real part of its solution:

$$\frac{\mathrm{d}^2 q}{\mathrm{d}\tau^2} + 2 \zeta \frac{\mathrm{d}q}{\mathrm{d}\tau} + q = \cos(\omega \tau) + \mathrm{i}\sin(\omega \tau) = \mathrm{e}^{ \mathrm{i} \omega \tau}.$$

Supposing the solution is of the form

_q__(_s_)(_τ_) = _A__e_^(_i_(_ω__τ_ + _φ_)).

Its derivatives from zeroth to second order are

$$q_s = A \mathrm{e}^{\mathrm{i} (\omega \tau + \varphi) }, \quad
\frac{\mathrm{d}q_s}{\mathrm{d} \tau} = \mathrm{i} \omega A \mathrm{e}^{\mathrm{i} (\omega \tau + \varphi) }, \quad
\frac{\mathrm{d}^2 q_s}{\mathrm{d} \tau^2} = -\omega^2 A \mathrm{e}^{\mathrm{i} (\omega \tau + \varphi) } .$$

Substituting these quantities into the differential equation gives

 − _ω_²_A__e_^(_i_(_ω__τ_ + _φ_)) + 2_ζ__i__ω__A__e_^(_i_(_ω__τ_ + _φ_)) + _A__e_^(_i_(_ω__τ_ + _φ_)) = ( − _ω_²_A_ + 2_ζ__i__ω__A_ + _A_)_e_^(_i_(_ω__τ_ + _φ_)) = _e_^(_i__ω__τ_).

Dividing by the exponential term on the left results in

 − _ω_²_A_ + 2_ζ__i__ω__A_ + _A_ = _e_^( − _i__φ_) = cos _φ_ − _i_sin _φ_.

Equating the real and imaginary parts results in two independent equations

_A_(1 − _ω_²) = cos _φ_, 2_ζ__ω__A_ =  − sin _φ_.

Amplitude part

Harmonic_oscillator_gain.svg of the frequency response of an ideal harmonic oscillator]] Squaring both equations and adding them together gives

$$\left. \begin{aligned}
 A^2 (1-\omega^2)^2 &= \cos^2\varphi \\
 (2 \zeta \omega A)^2 &= \sin^2\varphi
\end{aligned} \right\}
\Rightarrow A^2[(1 - \omega^2)^2 + (2 \zeta \omega)^2] = 1.$$

Therefore,

$$A = A(\zeta, \omega) = \operatorname{sign} \left( \frac{-\sin\varphi}{2 \zeta \omega} \right) \frac{1}{\sqrt{(1 - \omega^2)^2 + (2 \zeta \omega)^2}}.$$

Compare this result with the theory section on resonance, as well as the "magnitude part" of the RLC circuit. This amplitude function is particularly important in the analysis and understanding of the frequency response of second-order systems.

Phase part

To solve for _φ_, divide both equations to get

$$\tan\varphi = -\frac{2 \zeta \omega}{1 - \omega^2} = \frac{2 \zeta \omega}{\omega^2 - 1} \Rightarrow \varphi \equiv \varphi(\zeta, \omega) = \arctan \left( \frac{2 \zeta \omega}{\omega^2 - 1} \right ) + n\pi.$$

This phase function is particularly important in the analysis and understanding of the frequency response of second-order systems.

Full solution

Combining the amplitude and phase portions results in the steady-state solution

_q__(_s_)(_τ_) = _A_(_ζ_, _ω_)cos (_ω__τ_ + _φ_(_ζ_, _ω_)) = _A_cos (_ω__τ_ + _φ_).

The solution of original universal oscillator equation is a superposition (sum) of the transient and steady-state solutions:

_q_(_τ_) = _q__(_t_)(_τ_) + _q__(_s_)(_τ_).

For a more complete description of how to solve the above equation, see linear ODEs with constant coefficients.


Equivalent systems

Harmonic oscillators occurring in a number of areas of engineering are equivalent in the sense that their mathematical models are identical (see universal oscillator equation above). Below is a table showing analogous quantities in four harmonic oscillator systems in mechanics and electronics. If analogous parameters on the same line in the table are given numerically equal values, the behavior of the oscillatorstheir output waveform, resonant frequency, damping factor, etc.are the same.

  Translational mechanical                     Rotational mechanical                                     Series RLC circuit                          Parallel RLC circuit
  -------------------------------------------- --------------------------------------------------------- ------------------------------------------- --------------------------------------------------
  Position x                                   Angle θ                                                   Charge q                                    Flux linkage φ
  Velocity $\frac{\mathrm{d}x}{\mathrm{d}t}$   Angular velocity $\frac{\mathrm{d}\theta}{\mathrm{d}t}$   Current $\frac{\mathrm{d}q}{\mathrm{d}t}$   Voltage $\frac{\mathrm{d}\varphi}{\mathrm{d}t}$
  Mass m                                       Moment of inertia I                                       Inductance L                                Capacitance C
  Spring constant k                            Torsion constant μ                                        Elastance 1/C                               Magnetic reluctance 1/L
  Damping c                                    Rotational friction Γ                                     Resistance R                                Conductance G = 1/R
  Drive force F(t)                             Drive torque τ(t)                                         Voltage e                                   Current i
  Undamped resonant frequency f_(n):
  $\frac{1}{2\pi}\sqrt{\frac{k}{m}}$           $\frac{1}{2\pi}\sqrt{\frac{\mu}{I}}$                      $\frac{1}{2\pi}\sqrt{\frac{1}{LC}}$         $\frac{1}{2\pi}\sqrt{\frac{1}{LC}}$
  Damping ratio ζ:
  $\frac{c}{2}\sqrt{\frac{1}{km}}$             $\frac{\Gamma}{2}\sqrt{\frac{1}{I\mu}}$                   $\frac{R}{2}\sqrt{\frac{C}{L}}$             $\frac{G}{2}\sqrt{\frac{L}{C}}$
  Differential equation:
  $m \ddot x + c \dot x + kx = F$              $I \ddot\theta + \Gamma \dot\theta + \mu\theta = \tau$    $L \ddot q + R \dot q + q/C = e$            $C \ddot\varphi + G \dot\varphi + \varphi/L = i$


Application to a conservative force

The problem of the simple harmonic oscillator occurs frequently in physics, because a mass at equilibrium under the influence of any conservative force, in the limit of small motions, behaves as a simple harmonic oscillator.

A conservative force is one that is associated with a potential energy. The potential-energy function of a harmonic oscillator is

$$V(x) = \frac{1}{2} k x^2.$$

Given an arbitrary potential-energy function V(x), one can do a Taylor expansion in terms of x around an energy minimum (x = x₀) to model the behavior of small perturbations from equilibrium.

$$V(x) = V(x_0) + V'(x_0) \cdot (x - x_0) + \frac{1}{2} V^{(2)}(x_0) \cdot (x - x_0)^2 + O(x - x_0)^3.$$

Because V(x₀) is a minimum, the first derivative evaluated at x₀ must be zero, so the linear term drops out:

$$V(x) = V(x_0) + \frac{1}{2} V^{(2)}(x_0) \cdot (x - x_0)^2 + O(x - x_0)^3.$$

The constant term _V_(_x_₀) is arbitrary and thus may be dropped, and a coordinate transformation allows the form of the simple harmonic oscillator to be retrieved:

$$V(x) \approx \frac{1}{2} V^{(2)}(0) \cdot x^2 = \frac{1}{2} k x^2.$$

Thus, given an arbitrary potential-energy function V(x) with a non-vanishing second derivative, one can use the solution to the simple harmonic oscillator to provide an approximate solution for small perturbations around the equilibrium point.


Examples

Simple pendulum

Simple_pendulum_height.svg exhibits approximately simple harmonic motion under the conditions of no damping and small amplitude.]]

Assuming no damping, the differential equation governing a simple pendulum of length l, where g is the local acceleration of gravity, is

$$\frac{d^2\theta}{dt^2} + \frac{g}{l}\sin\theta = 0.$$

If the maximal displacement of the pendulum is small, we can use the approximation sin θ ≈ θ and instead consider the equation

$$\frac{d^2\theta}{dt^2} + \frac{g}{l}\theta = 0.$$

The general solution to this differential equation is

$$\theta(t) = A \cos\left(\sqrt{\frac{g}{l}} t + \varphi \right),$$

where A and φ are constants that depends on the initial conditions. Using as initial conditions θ(0) = θ₀ and θ̇(0) = 0, the solution is given by

$$\theta(t) = \theta_0 \cos\left(\sqrt{\frac{g}{l}} t\right),$$

where θ₀ is the largest angle attained by the pendulum (that is, θ₀ is the amplitude of the pendulum). The period, the time for one complete oscillation, is given by the expression

$$\tau = 2\pi \sqrt\frac{l}{g} = \frac{2\pi}{\omega},$$

which is a good approximation of the actual period when θ₀ is small. Notice that in this approximation the period τ is independent of the amplitude θ₀. In the above equation, ω represents the angular frequency.

Spring/mass system

Harmonic_oscillator.svg

When a spring is stretched or compressed by a mass, the spring develops a restoring force. Hooke's law gives the relationship of the force exerted by the spring when the spring is compressed or stretched a certain length:

_F_(_t_) =  − _k__x_(_t_),

where _F_ is the force, _k_ is the spring constant, and _x_ is the displacement of the mass with respect to the equilibrium position. The minus sign in the equation indicates that the force exerted by the spring always acts in a direction that is opposite to the displacement (i.e. the force always acts towards the zero position), and so prevents the mass from flying off to infinity.

By using either force balance or an energy method, it can be readily shown that the motion of this system is given by the following differential equation:

$$F(t) = -kx(t) = m \frac{\mathrm{d}^2}{\mathrm{d} t^2} x(t) = ma,$$

the latter being Newton's second law of motion.

If the initial displacement is _A_, and there is no initial velocity, the solution of this equation is given by

    $x(t) = A \cos \left( \sqrt{\frac{k}{m}} t \right).$

Given an ideal massless spring, m is the mass on the end of the spring. If the spring itself has mass, its effective mass must be included in m.

Energy variation in the spring–damping system

In terms of energy, all systems have two types of energy: potential energy and kinetic energy. When a spring is stretched or compressed, it stores elastic potential energy, which then is transferred into kinetic energy. The potential energy within a spring is determined by the equation U = kx²/2.

When the spring is stretched or compressed, kinetic energy of the mass gets converted into potential energy of the spring. By conservation of energy, assuming the datum is defined at the equilibrium position, when the spring reaches its maximal potential energy, the kinetic energy of the mass is zero. When the spring is released, it tries to return to equilibrium, and all its potential energy converts to kinetic energy of the mass.


Definition of terms

  Symbol   Definition                                       Dimensions    SI units
  -------- ------------------------------------------------ ------------- ----------
  a        Acceleration of mass                             LT^( − 2)     m/s²
  A        Peak amplitude of oscillation                    L             m
  c        Viscous damping coefficient                      MT^( − 1)     N·s/m
  f        Frequency                                        T^( − 1)      Hz
  F        Drive force                                      MLT^( − 2)    N
  g        Acceleration of gravity at the Earth's surface   LT^( − 2)     m/s²
  i        Imaginary unit, $\sqrt{-1}$                      —             —
  k        Spring constant                                  MT^( − 2)     N/m
  m, M     Mass                                             M             kg
  Q        Quality factor                                   —             —
  T        Period of oscillation                            T             s
  t        Time                                             T             s
  U        Potential energy stored in oscillator            ML²T^( − 2)   J
  x        Position of mass                                 L             m
  ζ        Damping ratio                                    —             —
  φ        Phase shift                                      —             rad
  ω        Angular frequency                                T^( − 1)      rad/s
  ω₀       Natural resonant angular frequency               T^( − 1)      rad/s


See also

-   Anharmonic oscillator
-   Critical speed
-   Effective mass (spring-mass system)
-   Normal mode
-   Parametric oscillator
-   Phasor
-   Q factor
-   Quantum harmonic oscillator
-   Radial harmonic oscillator
-   Spring pendulum


Notes


References

-   {{ citation | first1 = Grant R. | last1 = Fowles | first2 = George L. | last2 = Cassiday | year = 1986 | isbn = 0-03-96746-5 | ignore-isbn-error = true | lccn = 93085193 | title = Analytic Mechanics | edition = 5th | publisher = Saunders College Publishing | location = Fort Worth }}
-   -   {{ citation | last1 = Kreyszig | first1 = Erwin | authorlink = Erwin Kreyszig | title = Advanced Engineering Mathematics | edition = 3rd | location = New York | publisher = Wiley | year = 1972 | isbn = 0-471-50728-8 }}
-   -   -


External links

-   The Harmonic Oscillator from The Feynman Lectures on Physics
-   -   Harmonic Oscillator from The Chaos Hypertextbook
-   A Java applet of harmonic oscillator with damping proportional to velocity or damping caused by dry friction

Category:Mechanical vibrations Category:Ordinary differential equations Category:Articles containing video clips Category:Oscillators

[1]

[2]

[3]

[4]

[5]

[6]