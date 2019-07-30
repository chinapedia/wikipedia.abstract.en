CONTROL THEORY in control systems engineering is a subfield of mathematics that deals with the control of continuously operating dynamical systems in engineered processes and machines. The objective is to develop a control model for controlling such systems using a control action in an optimum manner without _delay or overshoot_ and ensuring control stability.

To do this, a _controller_ with the requisite corrective behaviour is required. This controller monitors the controlled process variable (PV), and compares it with the reference or set point (SP). The difference between actual and desired value of the process variable, called the _error_ signal, or SP-PV error, is applied as feedback to generate a control action to bring the controlled process variable to the same value as the set point. Other aspects which are also studied are controllability and observability. On this is based the advanced type of automation that revolutionized manufacturing, aircraft, communications and other industries. This is _feedback control_, which is usually _continuous_ and involves taking measurements using a sensor and making calculated adjustments to keep the measured variable within a set range by means of a "final control element", such as a control valve.[1]

Extensive use is usually made of a diagrammatic style known as the block diagram. In it the transfer function, also known as the system function or network function, is a mathematical model of the relation between the input and output based on the differential equations describing the system.

Control theory dates from the 19th century, when the theoretical basis for the operation of governors was first described by James Clerk Maxwell.[2] Control theory was further advanced by Edward Routh in 1874, Charles Sturm and in 1895, Adolf Hurwitz, who all contributed to the establishment of control stability criteria; and from 1922 onwards, the development of PID control theory by Nicolas Minorsky.[3] Although a major application of control theory is in control systems engineering, which deals with the design of process control systems for industry, other applications range far beyond this. As the general theory of feedback systems, control theory is useful wherever feedback occurs.


History

in a Boulton & Watt engine of 1788]]

Although control systems of various types date back to antiquity, a more formal analysis of the field began with a dynamics analysis of the centrifugal governor, conducted by the physicist James Clerk Maxwell in 1868, entitled _On Governors_.[4] A centrifugal governor was already used to regulate the velocity of windmills.[5] Maxwell described and analyzed the phenomenon of self-oscillation, in which lags in the system may lead to overcompensation and unstable behavior. This generated a flurry of interest in the topic, during which Maxwell's classmate, Edward John Routh, abstracted Maxwell's results for the general class of linear systems.[6] Independently, Adolf Hurwitz analyzed system stability using differential equations in 1877, resulting in what is now known as the Routh–Hurwitz theorem.[7][8]

A notable application of dynamic control was in the area of manned flight. The Wright brothers made their first successful test flights on December 17, 1903 and were distinguished by their ability to control their flights for substantial periods (more so than the ability to produce lift from an airfoil, which was known). Continuous, reliable control of the airplane was necessary for flights lasting longer than a few seconds.

By World War II, control theory was becoming an important area of research. Irmgard Flügge-Lotz developed the theory of discontinuous automatic control systems, and applied the bang-bang principle to the development of automatic flight control equipment for aircraft.[9][10] Other areas of application for discontinuous controls included fire-control systems, guidance systems and electronics.

Sometimes, mechanical methods are used to improve the stability of systems. For example, ship stabilizers are fins mounted beneath the waterline and emerging laterally. In contemporary vessels, they may be gyroscopically controlled active fins, which have the capacity to change their angle of attack to counteract roll caused by wind or waves acting on the ship.

The Space Race also depended on accurate spacecraft control, and control theory has also seen an increasing use in fields such as economics.


Open-loop and closed-loop (feedback) control

of a negative feedback control system using a feedback loop to control the process variable by comparing it with a desired value, and applying the difference as an error signal to generate a control output to reduce or eliminate the error.]] Fundamentally, there are two types of control loops: open loop control and closed loop (feedback) control.

In open loop control, the control action from the controller is independent of the "process output" (or "controlled process variable" - PV). A good example of this is a central heating boiler controlled only by a timer, so that heat is applied for a constant time, regardless of the temperature of the building. The control action is the timed switching on/off of the boiler, the process variable is the building temperature, but neither is linked.

In closed loop control, the control action from the controller is dependent on feedback from the process in the form of the value of the process variable (PV). In the case of the boiler analogy, a closed loop would include a thermostat to compare the building temperature (PV) with the temperature set on the thermostat (the set point - SP). This generates a controller output to maintain the building at the desired temperature by switching the boiler on and off. A closed loop controller, therefore, has a feedback loop which ensures the controller exerts a control action to manipulate the process variable to be the same as the "Reference input" or "set point". For this reason, closed loop controllers are also called feedback controllers.[11]

The definition of a closed loop control system according to the British Standard Institution is "a control system possessing monitoring feedback, the deviation signal formed as a result of this feedback being used to control the action of a final control element in such a way as to tend to reduce the deviation to zero." [12]

Likewise; "A _Feedback Control System_ is a system which tends to maintain a prescribed relationship of one system variable to another by comparing functions of these variables and using the difference as a means of control."[13]

Other examples

An example of a control system is a car's cruise control, which is a device designed to maintain vehicle speed at a constant _desired_ or _reference_ speed provided by the driver. The _controller_ is the cruise control, the _plant_ is the car, and the _system_ is the car and the cruise control. The system output is the car's speed, and the control itself is the engine's throttle position which determines how much power the engine delivers.

A primitive way to implement cruise control is simply to lock the throttle position when the driver engages cruise control. However, if the cruise control is engaged on a stretch of flat road, then the car will travel slower going uphill and faster when going downhill. This type of controller is called an _open-loop controller_ because there is no feedback; no measurement of the system output (the car's speed) is used to alter the control (the throttle position.) As a result, the controller cannot compensate for changes acting on the car, like a change in the slope of the road.

In a _closed-loop control system_, data from a sensor monitoring the car's speed (the system output) enters a controller which continuously compares the quantity representing the speed with the reference quantity representing the desired speed. The difference, called the error, determines the throttle position (the control). The result is to match the car's speed to the reference speed (maintain the desired system output). Now, when the car goes uphill, the difference between the input (the sensed speed) and the reference continuously determines the throttle position. As the sensed speed drops below the reference, the difference increases, the throttle opens, and engine power increases, speeding up the vehicle. In this way, the controller dynamically counteracts changes to the car's speed. The central idea of these control systems is the _feedback loop_, the controller affects the system output, which in turn is measured and fed back to the controller.


Classical control theory

To overcome the limitations of the open-loop controller, control theory introduces feedback. A closed-loop controller uses feedback to control states or outputs of a dynamical system. Its name comes from the information path in the system: process inputs (e.g., voltage applied to an electric motor) have an effect on the process outputs (e.g., speed or torque of the motor), which is measured with sensors and processed by the controller; the result (the control signal) is "fed back" as input to the process, closing the loop.

Closed-loop controllers have the following advantages over open-loop controllers:

-   disturbance rejection (such as hills in the cruise control example above)
-   guaranteed performance even with model uncertainties, when the model structure does not match perfectly the real process and the model parameters are not exact
-   unstable processes can be stabilized
-   reduced sensitivity to parameter variations
-   improved reference tracking performance

In some systems, closed-loop and open-loop control are used simultaneously. In such systems, the open-loop control is termed feedforward and serves to further improve reference tracking performance.

A common closed-loop controller architecture is the PID controller.


Closed-loop transfer function

The output of the system _y(t)_ is fed back through a sensor measurement _F_ to a comparison with the reference value _r(t)_. The controller _C_ then takes the error _e_ (difference) between the reference and the output to change the inputs _u_ to the system under control _P_. This is shown in the figure. This kind of controller is a closed-loop controller or feedback controller.

This is called a single-input-single-output (_SISO_) control system; _MIMO_ (i.e., Multi-Input-Multi-Output) systems, with more than one input/output, are common. In such cases variables are represented through vectors instead of simple scalar values. For some distributed parameter systems the vectors may be infinite-dimensional (typically functions).

If we assume the controller _C_, the plant _P_, and the sensor _F_ are linear and time-invariant (i.e., elements of their transfer function _C(s)_, _P(s)_, and _F(s)_ do not depend on time), the systems above can be analysed using the Laplace transform on the variables. This gives the following relations:

    Y(s) = P(s)U(s)
    U(s) = C(s)E(s)
    E(s) = R(s) − F(s)Y(s).

Solving for _Y_(_s_) in terms of _R_(_s_) gives

    $Y(s) = \left( \frac{P(s)C(s)}{1 + P(s)C(s)F(s)} \right) R(s) = H(s)R(s).$

The expression $H(s) = \frac{P(s)C(s)}{1 + F(s)P(s)C(s)}$ is referred to as the _closed-loop transfer function_ of the system. The numerator is the forward (open-loop) gain from _r_ to _y_, and the denominator is one plus the gain in going around the feedback loop, the so-called loop gain. If |P(s)C(s)| ≫ 1, i.e., it has a large norm with each value of _s_, and if |F(s)| ≈ 1, then _Y(s)_ is approximately equal to _R(s)_ and the output closely tracks the reference input.


PID feedback control

of a PID controller in a feedback loop, r(_t_) is the desired process value or "set point", and y(_t_) is the measured process value.]] A '''proportional–integral–derivative controller ''' (PID CONTROLLER) is a control loop feedback mechanism control technique widely used in control systems.

A PID controller continuously calculates an _error value_ e(t) as the difference between a desired setpoint and a measured process variable and applies a correction based on proportional, integral, and derivative terms. _PID_ is an initialism for _Proportional-Integral-Derivative_, referring to the three terms operating on the error signal to produce a control signal.

The theoretical understanding and application dates from the 1920s, and they are implemented in nearly all analogue control systems; originally in mechanical controllers, and then using discrete electronics and latterly in industrial process computers. The PID controller is probably the most-used feedback control design.

If _u(t)_ is the control signal sent to the system, _y(t)_ is the measured output and _r(t)_ is the desired output, and e(t) = r(t) − y(t) is the tracking error, a PID controller has the general form

$$u(t) =  K_P e(t) + K_I \int e(\tau)\text{d}\tau + K_D \frac{\text{d}e(t)}{\text{d}t}.$$

The desired closed loop dynamics is obtained by adjusting the three parameters K_(P), K_(I) and K_(D), often iteratively by "tuning" and without specific knowledge of a plant model. Stability can often be ensured using only the proportional term. The integral term permits the rejection of a step disturbance (often a striking specification in process control). The derivative term is used to provide damping or shaping of the response. PID controllers are the most well-established class of control systems: however, they cannot be used in several more complicated cases, especially if MIMO systems are considered.

Applying Laplace transformation results in the transformed PID controller equation

$$u(s) =  K_P e(s) + K_I \frac{1}{s} e(s) + K_D s e(s)$$

$$u(s) =  \left(K_P + K_I \frac{1}{s} + K_D s\right) e(s)$$

with the PID controller transfer function

$$C(s) = \left(K_P + K_I \frac{1}{s} + K_D s\right).$$

As an example of tuning a PID controller in the closed-loop system H(s), consider a 1st order plant given by

$$P(s) = \frac{A}{1 + sT_P}$$

where A and T_(P) are some constants. The plant output is fed back through

$$F(s) = \frac{1}{1 + sT_F}$$

where T_(F) is also a constant. Now if we set $K_P=K\left(1+\frac{T_D}{T_I}\right)$, K_(D) = KT_(D), and $K_I=\frac{K}{T_I}$, we can express the PID controller transfer function in series form as

$$C(s) =  K \left(1 + \frac{1}{sT_I}\right)(1 + sT_D)$$

Plugging P(s), F(s), and C(s) into the closed-loop transfer function H(s), we find that by setting

$$K = \frac{1}{A},   T_I = T_F,   T_D = T_P$$

H(s) = 1. With this tuning in this example, the system output follows the reference input exactly.

However, in practice, a pure differentiator is neither physically realizable nor desirable[14] due to amplification of noise and resonant modes in the system. Therefore, a phase-lead compensator type approach or a differentiator with low-pass roll-off are used instead.


Linear and nonlinear control theory

The field of control theory can be divided into two branches:

-   _Linear control theory_ – This applies to systems made of devices which obey the superposition principle, which means roughly that the output is proportional to the input. They are governed by linear differential equations. A major subclass is systems which in addition have parameters which do not change with time, called _linear time invariant_ (LTI) systems. These systems are amenable to powerful frequency domain mathematical techniques of great generality, such as the Laplace transform, Fourier transform, Z transform, Bode plot, root locus, and Nyquist stability criterion. These lead to a description of the system using terms like bandwidth, frequency response, eigenvalues, gain, resonant frequencies, zeros and poles, which give solutions for system response and design techniques for most systems of interest.
-   _Nonlinear control theory_ – This covers a wider class of systems that do not obey the superposition principle, and applies to more real-world systems because all real control systems are nonlinear. These systems are often governed by nonlinear differential equations. The few mathematical techniques which have been developed to handle them are more difficult and much less general, often applying only to narrow categories of systems. These include limit cycle theory, Poincaré maps, Lyapunov stability theorem, and describing functions. Nonlinear systems are often analyzed using numerical methods on computers, for example by simulating their operation using a simulation language. If only solutions near a stable point are of interest, nonlinear systems can often be linearized by approximating them by a linear system using perturbation theory, and linear techniques can be used.[15]


Analysis techniques - frequency domain and time domain

Mathematical techniques for analyzing and designing control systems fall into two different categories:

-   _Frequency domain_ – In this type the values of the state variables, the mathematical variables representing the system's input, output and feedback are represented as functions of frequency. The input signal and the system's transfer function are converted from time functions to functions of frequency by a transform such as the Fourier transform, Laplace transform, or Z transform. The advantage of this technique is that it results in a simplification of the mathematics; the _differential equations_ that represent the system are replaced by _algebraic equations_ in the frequency domain which is much simpler to solve. However, frequency domain techniques can only be used with linear systems, as mentioned above.
-   _Time-domain state space representation_ – In this type the values of the state variables are represented as functions of time. With this model, the system being analyzed is represented by one or more differential equations. Since frequency domain techniques are limited to linear systems, time domain is widely used to analyze real-world nonlinear systems. Although these are more difficult to solve, modern computer simulation techniques such as simulation languages have made their analysis routine.

In contrast to the frequency domain analysis of the classical control theory, modern control theory utilizes the time-domain state space representation, a mathematical model of a physical system as a set of input, output and state variables related by first-order differential equations. To abstract from the number of inputs, outputs, and states, the variables are expressed as vectors and the differential and algebraic equations are written in matrix form (the latter only being possible when the dynamical system is linear). The state space representation (also known as the "time-domain approach") provides a convenient and compact way to model and analyze systems with multiple inputs and outputs. With inputs and outputs, we would otherwise have to write down Laplace transforms to encode all the information about a system. Unlike the frequency domain approach, the use of the state-space representation is not limited to systems with linear components and zero initial conditions. "State space" refers to the space whose axes are the state variables. The state of the system can be represented as a point within that space.[16][17]


System interfacing - SISO & MIMO

Control systems can be divided into different categories depending on the number of inputs and outputs.

-   Single-input single-output (SISO) – This is the simplest and most common type, in which one output is controlled by one control signal. Examples are the cruise control example above, or an audio system, in which the control input is the input audio signal and the output is the sound waves from the speaker.
-   Multiple-input multiple-output (MIMO) – These are found in more complicated systems. For example, modern large telescopes such as the Keck and MMT have mirrors composed of many separate segments each controlled by an actuator. The shape of the entire mirror is constantly adjusted by a MIMO active optics control system using input from multiple sensors at the focal plane, to compensate for changes in the mirror shape due to thermal expansion, contraction, stresses as it is rotated and distortion of the wavefront due to turbulence in the atmosphere. Complicated systems such as nuclear reactors and human cells are simulated by a computer as large MIMO control systems.


Topics in control theory

Stability

The _stability_ of a general dynamical system with no input can be described with Lyapunov stability criteria.

-   A linear system is called bounded-input bounded-output (BIBO) stable if its output will stay bounded for any bounded input.
-   Stability for nonlinear systems that take an input is input-to-state stability (ISS), which combines Lyapunov stability and a notion similar to BIBO stability.

For simplicity, the following descriptions focus on continuous-time and discrete-time LINEAR SYSTEMS.

Mathematically, this means that for a causal linear system to be stable all of the poles of its transfer function must have negative-real values, i.e. the real part of each pole must be less than zero. Practically speaking, stability requires that the transfer function complex poles reside

-   in the open left half of the complex plane for continuous time, when the Laplace transform is used to obtain the transfer function.
-   inside the unit circle for discrete time, when the Z-transform is used.

The difference between the two cases is simply due to the traditional method of plotting continuous time versus discrete time transfer functions. The continuous Laplace transform is in Cartesian coordinates where the x axis is the real axis and the discrete Z-transform is in circular coordinates where the ρ axis is the real axis.

When the appropriate conditions above are satisfied a system is said to be asymptotically stable; the variables of an asymptotically stable control system always decrease from their initial value and do not show permanent oscillations. Permanent oscillations occur when a pole has a real part exactly equal to zero (in the continuous time case) or a modulus equal to one (in the discrete time case). If a simply stable system response neither decays nor grows over time, and has no oscillations, it is marginally stable; in this case the system transfer function has non-repeated poles at the complex plane origin (i.e. their real and complex component is zero in the continuous time case). Oscillations are present when poles with real part equal to zero have an imaginary part not equal to zero.

If a system in question has an impulse response of

 _x_[_n_] = 0.5^(_n_)_u_[_n_]

then the Z-transform (see this example), is given by

$$\ X(z) = \frac{1}{1 - 0.5z^{-1}}$$

which has a pole in z = 0.5 (zero imaginary part). This system is BIBO (asymptotically) stable since the pole is _inside_ the unit circle.

However, if the impulse response was

 _x_[_n_] = 1.5^(_n_)_u_[_n_]

then the Z-transform is

$$\ X(z) = \frac{1}{1 - 1.5z^{-1}}$$

which has a pole at z = 1.5 and is not BIBO stable since the pole has a modulus strictly greater than one.

Numerous tools exist for the analysis of the poles of a system. These include graphical systems like the root locus, Bode plots or the Nyquist plots.

Mechanical changes can make equipment (and control systems) more stable. Sailors add ballast to improve the stability of ships. Cruise ships use antiroll fins that extend transversely from the side of the ship for perhaps 30 feet (10 m) and are continuously rotated about their axes to develop forces that oppose the roll.

Controllability and observability

Controllability and observability are main issues in the analysis of a system before deciding the best control strategy to be applied, or whether it is even possible to control or stabilize the system. Controllability is related to the possibility of forcing the system into a particular state by using an appropriate control signal. If a state is not controllable, then no signal will ever be able to control the state. If a state is not controllable, but its dynamics are stable, then the state is termed _stabilizable_. Observability instead is related to the possibility of _observing_, through output measurements, the state of a system. If a state is not observable, the controller will never be able to determine the behavior of an unobservable state and hence cannot use it to stabilize the system. However, similar to the stabilizability condition above, if a state cannot be observed it might still be detectable.

From a geometrical point of view, looking at the states of each variable of the system to be controlled, every "bad" state of these variables must be controllable and observable to ensure a good behavior in the closed-loop system. That is, if one of the eigenvalues of the system is not both controllable and observable, this part of the dynamics will remain untouched in the closed-loop system. If such an eigenvalue is not stable, the dynamics of this eigenvalue will be present in the closed-loop system which therefore will be unstable. Unobservable poles are not present in the transfer function realization of a state-space representation, which is why sometimes the latter is preferred in dynamical systems analysis.

Solutions to problems of an uncontrollable or unobservable system include adding actuators and sensors.

Control specification

Several different control strategies have been devised in the past years. These vary from extremely general ones (PID controller), to others devoted to very particular classes of systems (especially robotics or aircraft cruise control).

A control problem can have several specifications. Stability, of course, is always present. The controller must ensure that the closed-loop system is stable, regardless of the open-loop stability. A poor choice of controller can even worsen the stability of the open-loop system, which must normally be avoided. Sometimes it would be desired to obtain particular dynamics in the closed loop: i.e. that the poles have $Re[\lambda] < -\overline{\lambda}$, where $\overline{\lambda}$ is a fixed value strictly greater than zero, instead of simply asking that Re[λ] < 0.

Another typical specification is the rejection of a step disturbance; including an integrator in the open-loop chain (i.e. directly before the system under control) easily achieves this. Other classes of disturbances need different types of sub-systems to be included.

Other "classical" control theory specifications regard the time-response of the closed-loop system. These include the rise time (the time needed by the control system to reach the desired value after a perturbation), peak overshoot (the highest value reached by the response before reaching the desired value) and others (settling time, quarter-decay). Frequency domain specifications are usually related to robustness (see after).

Modern performance assessments use some variation of integrated tracking error (IAE,ISA,CQI).

Model identification and robustness

A control system must always have some robustness property. A robust controller is such that its properties do not change much if applied to a system slightly different from the mathematical one used for its synthesis. This requirement is important, as no real physical system truly behaves like the series of differential equations used to represent it mathematically. Typically a simpler mathematical model is chosen in order to simplify calculations, otherwise, the true system dynamics can be so complicated that a complete model is impossible.

System identification

The process of determining the equations that govern the model's dynamics is called system identification. This can be done off-line: for example, executing a series of measures from which to calculate an approximated mathematical model, typically its transfer function or matrix. Such identification from the output, however, cannot take account of unobservable dynamics. Sometimes the model is built directly starting from known physical equations, for example, in the case of a mass-spring-damper system we know that $m \ddot{{x}}(t) = - K x(t) - \Beta \dot{x}(t)$. Even assuming that a "complete" model is used in designing the controller, all the parameters included in these equations (called "nominal parameters") are never known with absolute precision; the control system will have to behave correctly even when connected to a physical system with true parameter values away from nominal.

Some advanced control techniques include an "on-line" identification process (see later). The parameters of the model are calculated ("identified") while the controller itself is running. In this way, if a drastic variation of the parameters ensues, for example, if the robot's arm releases a weight, the controller will adjust itself consequently in order to ensure the correct performance.

Analysis

Analysis of the robustness of a SISO (single input single output) control system can be performed in the frequency domain, considering the system's transfer function and using Nyquist and Bode diagrams. Topics include gain and phase margin and amplitude margin. For MIMO (multi-input multi output) and, in general, more complicated control systems, one must consider the theoretical results devised for each control technique (see next section). I.e., if particular robustness qualities are needed, the engineer must shift his attention to a control technique by including them in its properties.

Constraints

A particular robustness issue is the requirement for a control system to perform properly in the presence of input and state constraints. In the physical world every signal is limited. It could happen that a controller will send control signals that cannot be followed by the physical system, for example, trying to rotate a valve at excessive speed. This can produce undesired behavior of the closed-loop system, or even damage or break actuators or other subsystems. Specific control techniques are available to solve the problem: model predictive control (see later), and anti-wind up systems. The latter consists of an additional control block that ensures that the control signal never exceeds a given threshold.


System classifications

Linear systems control

For MIMO systems, pole placement can be performed mathematically using a state space representation of the open-loop system and calculating a feedback matrix assigning poles in the desired positions. In complicated systems this can require computer-assisted calculation capabilities, and cannot always ensure robustness. Furthermore, all system states are not in general measured and so observers must be included and incorporated in pole placement design.

Nonlinear systems control

Processes in industries like robotics and the aerospace industry typically have strong nonlinear dynamics. In control theory it is sometimes possible to linearize such classes of systems and apply linear techniques, but in many cases it can be necessary to devise from scratch theories permitting control of nonlinear systems. These, e.g., feedback linearization, backstepping, sliding mode control, trajectory linearization control normally take advantage of results based on Lyapunov's theory. Differential geometry has been widely used as a tool for generalizing well-known linear control concepts to the non-linear case, as well as showing the subtleties that make it a more challenging problem. Control theory has also been used to decipher the neural mechanism that directs cognitive states.[18]

Decentralized systems control

When the system is controlled by multiple controllers, the problem is one of decentralized control. Decentralization is helpful in many ways, for instance, it helps control systems to operate over a larger geographical area. The agents in decentralized control systems can interact using communication channels and coordinate their actions.

Deterministic and stochastic systems control

A stochastic control problem is one in which the evolution of the state variables is subjected to random shocks from outside the system. A deterministic control problem is not subject to external random shocks.


Main control strategies

Every control system must guarantee first the stability of the closed-loop behavior. For linear systems, this can be obtained by directly placing the poles. Non-linear control systems use specific theories (normally based on Aleksandr Lyapunov's Theory) to ensure stability without regard to the inner dynamics of the system. The possibility to fulfill different specifications varies from the model considered and the control strategy chosen.

List of the main control techniques

-   Adaptive control uses on-line identification of the process parameters, or modification of controller gains, thereby obtaining strong robustness properties. Adaptive controls were applied for the first time in the aerospace industry in the 1950s, and have found particular success in that field.
-   A hierarchical control system is a type of control system in which a set of devices and governing software is arranged in a hierarchical tree. When the links in the tree are implemented by a computer network, then that hierarchical control system is also a form of networked control system.
-   Intelligent control uses various AI computing approaches like artificial neural networks, Bayesian probability, fuzzy logic,[19] machine learning, evolutionary computation and genetic algorithms to control a dynamic system.
-   Optimal control is a particular control technique in which the control signal optimizes a certain "cost index": for example, in the case of a satellite, the jet thrusts needed to bring it to desired trajectory that consume the least amount of fuel. Two optimal control design methods have been widely used in industrial applications, as it has been shown they can guarantee closed-loop stability. These are Model Predictive Control (MPC) and linear-quadratic-Gaussian control (LQG). The first can more explicitly take into account constraints on the signals in the system, which is an important feature in many industrial processes. However, the "optimal control" structure in MPC is only a means to achieve such a result, as it does not optimize a true performance index of the closed-loop control system. Together with PID controllers, MPC systems are the most widely used control technique in process control.
-   Robust control deals explicitly with uncertainty in its approach to controller design. Controllers designed using _robust control_ methods tend to be able to cope with small differences between the true system and the nominal model used for design.[20] The early methods of Bode and others were fairly robust; the state-space methods invented in the 1960s and 1970s were sometimes found to lack robustness. Examples of modern robust control techniques include H-infinity loop-shaping developed by Duncan McFarlane and Keith Glover, Sliding mode control (SMC) developed by Vadim Utkin, and safe protocols designed for control of large heterogeneous populations of electric loads in Smart Power Grid applications.[21] Robust methods aim to achieve robust performance and/or stability in the presence of small modeling errors.
-   Stochastic control deals with control design with uncertainty in the model. In typical stochastic control problems, it is assumed that there exist random noise and disturbances in the model and the controller, and the control design must take into account these random deviations.
-   Energy-shaping control view the plant and the controller as energy-transformation devices. The control strategy is formulated in terms of interconnection (in a power-preserving manner) in order to achieve a desired behavior.
-   Self-organized criticality control may be defined as attempts to interfere in the processes by which the self-organized system dissipates energy.


People in systems and control

Many active and historical figures made significant contribution to control theory including

-   Pierre-Simon Laplace invented the Z-transform in his work on probability theory, now used to solve discrete-time control theory problems. The Z-transform is a discrete-time equivalent of the Laplace transform which is named after him.
-   Irmgard Flugge-Lotz developed the theory of discontinuous automatic control and applied it to automatic aircraft control systems.
-   Alexander Lyapunov in the 1890s marks the beginning of stability theory.
-   Harold S. Black invented the concept of negative feedback amplifiers in 1927. He managed to develop stable negative feedback amplifiers in the 1930s.
-   Harry Nyquist developed the Nyquist stability criterion for feedback systems in the 1930s.
-   Richard Bellman developed dynamic programming since the 1940s.[22]
-   Andrey Kolmogorov co-developed the Wiener–Kolmogorov filter in 1941.
-   Norbert Wiener co-developed the Wiener–Kolmogorov filter and coined the term cybernetics in the 1940s.
-   John R. Ragazzini introduced digital control and the use of Z-transform in control theory (invented by Laplace) in the 1950s.
-   Lev Pontryagin introduced the maximum principle and the bang-bang principle.
-   Pierre-Louis Lions developed viscosity solutions into stochastic control and optimal control methods.
-   Rudolf Kalman pioneered the state-space approach to systems and control. Introduced the notions of controllability and observability. Developed the Kalman filter for linear estimation.
-   Ali H. Nayfeh who was one of the main contributors to Non-Linear Control Theory and published many books on Perturbation Methods
-   Jan C. Willems Introduced the concept of dissipativity, as a generalization of Lyapunov function to input/state/output systems.The construction of the storage function, as the analogue of a Lyapunov function is called, led to the study of the linear matrix inequality (LMI) in control theory. He pioneered the behavioral approach to mathematical systems theory.


See also

Examples of control systems

-   Automation
-   Deadbeat controller
-   Distributed parameter systems
-   Fractional-order control
-   H-infinity loop-shaping
-   Hierarchical control system
-   Model predictive control
-   PID controller
-   Process control
-   Robust control
-   Servomechanism
-   State space (controls)
-   Vector control

Topics in control theory

-   Coefficient diagram method
-   Control reconfiguration
-   Cut-insertion theorem
-   Feedback
-   H infinity
-   Hankel singular value
-   Krener's theorem
-   Lead-lag compensator
-   Minor loop feedback
-   Multi-loop feedback
-   Positive systems
-   Radial basis function
-   Root locus
-   Signal-flow graphs
-   Stable polynomial
-   State space representation
-   Steady state
-   Transient response
-   Transient state
-   Underactuation
-   Youla–Kucera parametrization
-   Markov chain approximation method

Other related topics

-   Automation and remote control
-   Bond graph
-   Control engineering
-   Control–feedback–abort loop
-   Controller (control theory)
-   Cybernetics
-   Intelligent control
-   Mathematical system theory
-   Negative feedback amplifier
-   People in systems and control
-   Perceptual control theory
-   Systems theory
-   Time scale calculus


References


Further reading

-   -   -   -   -   -   -   -   -   -   -   -

For Chemical Engineering

-


External links

-   Control Tutorials for Matlab, a set of worked-through control examples solved by several different methods.
-   Control Tuning and Best Practices
-   Advanced control structures, free on-line simulators explaining the control theory
-   "Applying control theory to manage flash erasures/lifespan"
-   The Dark Side of Loop Control Theory, a professional seminar taught at APEC in 2012 (Orlando, FL).

Control_theory Category:Cybernetics Category:Control engineering Category:Computational mathematics

[1] Bennett, Stuart (1992). A history of control engineering, 1930-1955. IET. p. 48. .

[2]

[3]

[4]

[5] Control Theory: History, Mathematical Achievements and Perspectives | E. Fernandez-Cara1 and E. Zuazua

[6]

[7]

[8]

[9]

[10]

[11] "Feedback and control systems" - JJ Di Steffano, AR Stubberud, IJ Williams. Schaums outline series, McGraw-Hill 1967

[12]

[13]

[14]

[15] trim point

[16]

[17]

[18]

[19]

[20]

[21]

[22]