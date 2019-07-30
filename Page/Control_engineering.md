]] CONTROL ENGINEERING or CONTROL SYSTEMS ENGINEERING is an engineering discipline that applies automatic control theory to design systems with desired behaviors in control environments.[1] The discipline of controls overlaps and is usually taught along with electrical engineering at many institutions around the world.[2]

The practice uses sensors and detectors to measure the output performance of the process being controlled; these measurements are used to provide corrective feedback helping to achieve the desired performance. Systems designed to perform without requiring human input are called automatic control systems (such as cruise control for regulating the speed of a car). Multi-disciplinary in nature, control systems engineering activities focus on implementation of control systems mainly derived by mathematical modeling of a diverse range of systems.


Overview

Modern day control engineering is a relatively new field of study that gained significant attention during the 20th century with the advancement of technology. It can be broadly defined or classified as practical application of control theory. Control engineering has an essential role in a wide range of control systems, from simple household washing machines to high-performance F-16 fighter aircraft. It seeks to understand physical systems, using mathematical modelling, in terms of inputs, outputs and various components with different behaviors; use control systems design tools to develop controllers for those systems; and implement controllers in physical systems employing available technology. A system can be mechanical, electrical, fluid, chemical, financial or biological, and the mathematical modelling, analysis and controller design uses control theory in one or many of the time, frequency and complex-s domains, depending on the nature of the design problem.


History

s is one of the more challenging applications]]Automatic control systems were first developed over two thousand years ago. The first feedback control device on record is thought to be the ancient Ktesibios's water clock in Alexandria, Egypt around the third century B.C.E. It kept time by regulating the water level in a vessel and, therefore, the water flow from that vessel. This certainly was a successful device as water clocks of similar design were still being made in Baghdad when the Mongols captured the city in 1258 A.D. A variety of automatic devices have been used over the centuries to accomplish useful tasks or simply just to entertain. The latter includes the automata, popular in Europe in the 17th and 18th centuries, featuring dancing figures that would repeat the same task over and over again; these automata are examples of open-loop control. Milestones among feedback, or "closed-loop" automatic control devices, include the temperature regulator of a furnace attributed to Drebbel, circa 1620, and the centrifugal flyball governor used for regulating the speed of steam engines by James Watt in 1788.

In his 1868 paper "On Governors", James Clerk Maxwell was able to explain instabilities exhibited by the flyball governor using differential equations to describe the control system. This demonstrated the importance and usefulness of mathematical models and methods in understanding complex phenomena, and it signaled the beginning of mathematical control and systems theory. Elements of control theory had appeared earlier but not as dramatically and convincingly as in Maxwell's analysis.

Control theory made significant strides over the next century. New mathematical techniques, as well as advancements in electronic and computer technologies, made it possible to control significantly more complex dynamical systems than the original flyball governor could stabilize. New mathematical techniques included developments in optimal control in the 1950s and 1960s followed by progress in stochastic, robust, adaptive, nonlinear, control methods in the 1970s and 1980s. Applications of control methodology have helped to make possible space travel and communication satellites, safer and more efficient aircraft, cleaner automobile engines, and cleaner and more efficient chemical processes.

Before it emerged as a unique discipline, control engineering was practiced as a part of mechanical engineering and control theory was studied as a part of electrical engineering since electrical circuits can often be easily described using control theory techniques. In the very first control relationships, a current output was represented by a voltage control input. However, not having adequate technology to implement electrical control systems, designers were left with the option of less efficient and slow responding mechanical systems. A very effective mechanical controller that is still widely used in some hydro plants is the governor. Later on, previous to modern power electronics, process control systems for industrial applications were devised by mechanical engineers using pneumatic and hydraulic control devices, many of which are still in use today.


Control theory

There are two major divisions in control theory, namely, classical and modern, which have direct implications for the control engineering applications. The scope of classical control theory is limited to single-input and single-output (SISO) system design, except when analyzing for disturbance rejection using a second input. The system analysis is carried out in the time domain using differential equations, in the complex-s domain with the Laplace transform, or in the frequency domain by transforming from the complex-s domain. Many systems may be assumed to have a second order and single variable system response in the time domain. A controller designed using classical theory often requires on-site tuning due to incorrect design approximations. Yet, due to the easier physical implementation of classical controller designs as compared to systems designed using modern control theory, these controllers are preferred in most industrial applications. The most common controllers designed using classical control theory are PID controllers. A less common implementation may include either or both a Lead or Lag filter. The ultimate end goal is to meet requirements typically provided in the time-domain called the step response, or at times in the frequency domain called the open-loop response. The step response characteristics applied in a specification are typically percent overshoot, settling time, etc. The open-loop response characteristics applied in a specification are typically Gain and Phase margin and bandwidth. These characteristics may be evaluated through simulation including a dynamic model of the system under control coupled with the compensation model.

In contrast, modern control theory is carried out in the state space, and can deal with multiple-input and multiple-output (MIMO) systems. This overcomes the limitations of classical control theory in more sophisticated design problems, such as fighter aircraft control, with the limitation that no frequency domain analysis is possible. In modern design, a system is represented to the greatest advantage as a set of decoupled first order differential equations defined using state variables. Nonlinear, multivariable, adaptive and robust control theories come under this division. Matrix methods are significantly limited for MIMO systems where linear independence cannot be assured in the relationship between inputs and outputs. Being fairly new, modern control theory has many areas yet to be explored. Scholars like Rudolf E. Kalman and Aleksandr Lyapunov are well-known among the people who have shaped modern control theory.


Control systems

Control engineering is the engineering discipline that focuses on the modeling of a diverse range of dynamic systems (e.g. mechanical systems) and the design of controllers that will cause these systems to behave in the desired manner. Although such controllers need not be electrical, many are and hence control engineering is often viewed as a subfield of electrical engineering. However, the falling price of microprocessors is making the actual implementation of a control system essentially trivial. As a result, focus is shifting back to the mechanical and process engineering discipline, as intimate knowledge of the physical system being controlled is often desired.

Electrical circuits, digital signal processors and microcontrollers can all be used to implement control systems. Control engineering has a wide range of applications from the flight and propulsion systems of commercial airliners to the cruise control present in many modern automobiles.

In most cases, control engineers utilize feedback when designing control systems. This is often accomplished using a PID controller system. For example, in an automobile with cruise control the vehicle's speed is continuously monitored and fed back to the system, which adjusts the motor's torque accordingly. Where there is regular feedback, control theory can be used to determine how the system responds to such feedback. In practically all such systems stability is important and control theory can help ensure stability is achieved.

Although feedback is an important aspect of control engineering, control engineers may also work on the control of systems without feedback. This is known as open loop control. A classic example of open loop control is a washing machine that runs through a pre-determined cycle without the use of sensors.


Control engineering education

At many universities around the world, control engineering courses are taught primarily in electrical engineering and mechanical engineering, but some courses can be instructed in mechatronics engineering, and aerospace engineering. In others, control engineering is connected to computer science, as most control techniques today are implemented through computers, often as embedded systems (as in the automotive field). The field of control within chemical engineering is often known as process control. It deals primarily with the control of variables in a chemical process in a plant. It is taught as part of the undergraduate curriculum of any chemical engineering program and employs many of the same principles in control engineering. Other engineering disciplines also overlap with control engineering as it can be applied to any system for which a suitable model can be derived. However, specialised control engineering departments do exist, for example, the Department of Automatic Control and Systems Engineering at the University of Sheffield [3] and the Department of Systems Engineering at the United States Naval Academy.[4]

Control engineering has diversified applications that include science, finance management, and even human behavior. Students of control engineering may start with a linear control system course dealing with the time and complex-s domain, which requires a thorough background in elementary mathematics and Laplace transform, called classical control theory. In linear control, the student does frequency and time domain analysis. Digital control and nonlinear control courses require Z transformation and algebra respectively, and could be said to complete a basic control education.


Recent advancement

Originally, control engineering was all about continuous systems. Development of computer control tools posed a requirement of discrete control system engineering because the communications between the computer-based digital controller and the physical system are governed by a computer clock. The equivalent to Laplace transform in the discrete domain is the Z-transform. Today, many of the control systems are computer controlled and they consist of both digital and analog components.

Therefore, at the design stage either digital components are mapped into the continuous domain and the design is carried out in the continuous domain, or analog components are mapped into discrete domain and design is carried out there. The first of these two methods is more commonly encountered in practice because many industrial systems have many continuous systems components, including mechanical, fluid, biological and analog electrical components, with a few digital controllers.

Similarly, the design technique has progressed from paper-and-ruler based manual design to computer-aided design and now to computer-automated design or CAutoD which has been made possible by evolutionary computation. CAutoD can be applied not just to tuning a predefined control scheme, but also to controller structure optimisation, system identification and invention of novel control systems, based purely upon a performance requirement, independent of any specific control scheme.[5][6]

Resilient control systems extend the traditional focus of addressing only planned disturbances to frameworks and attempt to address multiple types of unexpected disturbance; in particular, adapting and transforming behaviors of the control system in response to malicious actors, abnormal failure modes, undesirable human action, etc.[7]


See also

-   Electrical engineering
-   Communications engineering
-   Satellite navigation
-   Outline of control engineering
-   Advanced process control
-   Building automation
-   Computer-automated design (CAutoD, CAutoCSD)
-   Control reconfiguration
-   Feedback
-   H-infinity
-   Lead–lag compensator
-   List of control engineering topics
-   Quantitative feedback theory
-   Robotic unicycle
-   State space
-   Sliding mode control
-   Systems engineering
-   Testing controller
-   VisSim
-   Control Engineering (magazine)
-   EICASLAB
-   Time series
-   Process control system
-   Robotic control
-   Mechatronics


References


Further reading

-   -   -   -   -


External links

-   Control Labs Worldwide
-   The Michigan Chemical Engineering Process Dynamics and Controls Open Textbook
-   Control System Integrators Association
-   List of control systems integrators
-   Institution of Mechanical Engineers - Mechatronics, Informatics and Control Group (MICG)
-   Systems Science & Control Engineering: An Open Access Journal

Category:Electrical engineering Control_engineering Category:Systems engineering Category:Engineering disciplines

[1]  Electrical Engineering and Computer Science|url=https://engineering.case.edu/eecs/node/213%7Cwebsite=engineering.case.edu%7Cpublisher=Case Western Reserve University|accessdate=27 June 2017|language=en|date=20 November 2015}}

[2]

[3]

[4]

[5] Tan, K.C. and Li, Y. (2001) Performance-based control system design automation via evolutionary computing. Engineering Applications of Artificial Intelligence, 14 (4). pp. 473-486. , http://eprints.gla.ac.uk/3807/

[6] Li, Y., et al. (2004). CAutoCSD - Evolutionary search and optimisation enabled computer automated control system design. International Journal of Automation and Computing, 1(1). pp.76-88. , http://eprints.gla.ac.uk/3818/

[7] C. G. Rieger, D. I. Gertman and M. A. McQueen, "Resilient control systems: Next generation design research," 2009 2nd Conference on Human System Interactions, Catania, 2009, pp. 632-636. http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=5091051&isnumber=5090940