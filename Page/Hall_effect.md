The HALL EFFECT is the production of a voltage difference (the HALL VOLTAGE) across an electrical conductor, transverse to an electric current in the conductor and to an applied magnetic field perpendicular to the current. It was discovered by Edwin Hall in 1879.[1] For clarity, the original effect is sometimes called the ORDINARY HALL EFFECT to distinguish it from other "Hall effects" which have different physical mechanisms.

The Hall coefficient is defined as the ratio of the induced electric field to the product of the current density and the applied magnetic field. It is a characteristic of the material from which the conductor is made, since its value depends on the type, number, and properties of the charge carriers that constitute the current.


Discovery

The modern theory of electromagnetism was systematized by James Clerk Maxwell in the paper On Physical Lines of Force, which was published in four parts between 1861-1862. While Maxwell's paper established a solid mathematical basis for electromagnetic theory, the detailed mechanisms of the theory were still being explored. One such question was about the details of the interaction between magnets and electric current, including whether magnetic fields interacted with the conductors or the electric current itself. In 1879 Edwin Hall was exploring this interaction, and discovered the Hall effect while he was working on his doctoral degree at Johns Hopkins University in Baltimore, Maryland.[2] Eighteen years before the electron was discovered, his measurements of the tiny effect produced in the apparatus he used were an experimental tour de force, published under the name "On a New Action of the Magnet on Electric Currents".[3][4][5]


Theory

The Hall effect is due to the nature of the current in a conductor. Current consists of the movement of many small charge carriers, typically electrons, holes, ions (see Electromigration) or all three. When a magnetic field is present, these charges experience a force, called the Lorentz force.[6] When such a magnetic field is absent, the charges follow approximately straight, 'line of sight' paths between collisions with impurities, phonons, etc. However, when a magnetic field with a perpendicular component is applied, their paths between collisions are curved, thus moving charges accumulate on one face of the material. This leaves equal and opposite charges exposed on the other face, where there is a scarcity of mobile charges. The result is an asymmetric distribution of charge density across the Hall element, arising from a force that is perpendicular to both the 'line of sight' path and the applied magnetic field. The separation of charge establishes an electric field that opposes the migration of further charge, so a steady electric potential is established for as long as the charge is flowing.

In classical electromagnetism electrons move in the opposite direction of the current (by convention "current" describes a theoretical "hole flow"). In some semiconductors it _appears_ "holes" are actually flowing because the direction of the voltage is opposite to the derivation below.

Hall_Effect_Measurement_Setup_for_Electrons.png Hall_Sensor.webm For a simple metal where there is only one type of charge carrier (electrons), the Hall voltage can be derived by using the Lorentz force and seeing that, in the steady-state condition, charges are not moving in the -axis direction. Thus, the magnetic force on each electron in the -axis direction is cancelled by a -axis electrical force due to the buildup of charges. The term is the drift velocity of the current which is assumed at this point to be holes by convention. The term is negative in the -axis direction by the right hand rule.

F = _q_(E + V × B)

In steady state, 0}}, so _E_(y)_ − _v_(x)B_(z)_}}, where is assigned in the direction of the -axis, (and not with the arrow of the induced electric field as in the image (pointing in the direction), which tells you where the field caused by the electrons is pointing).

In wires, electrons instead of holes are flowing, so and . Also −}}. Substituting these changes gives

_V__(_H_) = _v__(_x_)_B__(_z_)_w_

The conventional "hole" current is in the negative direction of the electron current and the negative of the electrical charge which gives _ntw_(−_v_(x)_)(−_e_)}} where is charge carrier density, is the cross-sectional area, and is the charge of each electron. Solving for w and plugging into the above gives the Hall voltage:

$$V_\mathrm{H} = \frac{I_x B_z}{n t e}$$

If the charge build up had been positive (as it appears in some semiconductors), then the assigned in the image would have been negative (positive charge would have built up on the left side).

The Hall coefficient is defined as

$$R_\mathrm{H} =\frac{E_y}{j_x B_z}$$

where is the current density of the carrier electrons, and is the induced electric field. In SI units, this becomes

$$R_\mathrm{H} =\frac{E_y}{j_x B}= \frac{V_\mathrm{H} t}{IB}=-\frac{1}{ne}.$$

(The units of are usually expressed as m³/C, or Ω·cm/G, or other variants.) As a result, the Hall effect is very useful as a means to measure either the carrier density or the magnetic field.

One very important feature of the Hall effect is that it differentiates between positive charges moving in one direction and negative charges moving in the opposite. The Hall effect offered the first real proof that electric currents in metals are carried by moving electrons, not by protons. The Hall effect also showed that in some substances (especially p-type semiconductors), it is more appropriate to think of the current as positive "holes" moving rather than negative electrons. A common source of confusion with the Hall effect is that holes moving to the left are really electrons moving to the right, so one expects the same sign of the Hall coefficient for both electrons and holes. This confusion, however, can only be resolved by modern quantum mechanical theory of transport in solids.[7]

The sample inhomogeneity might result in spurious sign of the Hall effect, even in ideal van der Pauw configuration of electrodes. For example, positive Hall effect was observed in evidently n-type semiconductors.[8] Another source of artifact, in uniform materials, occurs when the sample's aspect ratio is not long enough: the full Hall voltage only develops far away from the current-introducing contacts, since at the contacts the transverse voltage is shorted out to zero.

Hall effect in semiconductors

When a current-carrying semiconductor is kept in a magnetic field, the charge carriers of the semiconductor experience a force in a direction perpendicular to both the magnetic field and the current. At equilibrium, a voltage appears at the semiconductor edges.

The simple formula for the Hall coefficient given above is usually a good explanation when conduction is dominated by a single charge carrier. However, in semiconductors the theory is more complex, because in these materials conduction can involve significant, simultaneous contributions from both electrons and holes, which may be present in different concentrations and have different mobilities. For moderate magnetic fields the Hall coefficient is[9]

$$R_\mathrm{H}=\frac{p\mu_\mathrm{h}^2 - n\mu_\mathrm{e}^2}{e\left(p\mu_\mathrm{h} + n\mu_\mathrm{e}\right)^2}$$
or equivalently

$$R_\mathrm{H}=\frac{\left(p-nb^2\right)}{e\left(p+nb\right)^2}$$
with

$$b=\frac{\mu_\mathrm{e}}{\mu_\mathrm{h}}$$
. Here is the electron concentration, the hole concentration, the electron mobility, the hole mobility and the elementary charge.

For large applied fields the simpler expression analogous to that for a single carrier type holds.

Relationship with star formation

Although it is well known that magnetic fields play an important role in star formation, research models[10][11][12] indicate that Hall diffusion critically influences the dynamics of gravitational collapse that forms protostars.

Quantum Hall effect

For a two-dimensional electron system which can be produced in a MOSFET, in the presence of large magnetic field strength and low temperature, one can observe the quantum Hall effect, in which the Hall conductance undergoes quantum Hall transitions to take on the quantized values.

Spin Hall effect

The spin Hall effect consists in the spin accumulation on the lateral boundaries of a current-carrying sample. No magnetic field is needed. It was predicted by Mikhail Dyakonov and V. I. Perel in 1971 and observed experimentally more than 30 years later, both in semiconductors and in metals, at cryogenic as well as at room temperatures.

Quantum spin Hall effect

For mercury telluride two dimensional quantum wells with strong spin-orbit coupling, in zero magnetic field, at low temperature, the quantum spin Hall effect has been recently observed.

Anomalous Hall effect

In ferromagnetic materials (and paramagnetic materials in a magnetic field), the Hall resistivity includes an additional contribution, known as the ANOMALOUS HALL EFFECT (or the EXTRAORDINARY HALL EFFECT), which depends directly on the magnetization of the material, and is often much larger than the ordinary Hall effect. (Note that this effect is _not_ due to the contribution of the magnetization to the total magnetic field.) For example, in nickel, the anomalous Hall coefficient is about 100 times larger than the ordinary Hall coefficient near the Curie temperature, but the two are similar at very low temperatures.[13] Although a well-recognized phenomenon, there is still debate about its origins in the various materials. The anomalous Hall effect can be either an _extrinsic_ (disorder-related) effect due to spin-dependent scattering of the charge carriers, or an _intrinsic_ effect which can be described in terms of the Berry phase effect in the crystal momentum space (-space).[14]

Hall effect in ionized gases

The Hall effect in an ionized gas (plasma) is significantly different from the Hall effect in solids (where the HALL PARAMETER is always much less than unity). In a plasma, the Hall parameter can take any value. The Hall parameter, , in a plasma is the ratio between the electron gyrofrequency, , and the electron-heavy particle collision frequency, :

$$\beta=\frac {\Omega_\mathrm{e}}{\nu}=\frac {eB}{m_\mathrm{e}\nu}$$

where

-   is the elementary charge (approximately )

-   is the magnetic field (in teslas)

-   is the electron mass (approximately ).

The Hall parameter value increases with the magnetic field strength.

Physically, the trajectories of electrons are curved by the Lorentz force. Nevertheless, when the Hall parameter is low, their motion between two encounters with heavy particles (neutral or ion) is almost linear. But if the Hall parameter is high, the electron movements are highly curved. The current density vector, , is no longer collinear with the electric field vector, . The two vectors and make the HALL ANGLE, , which also gives the Hall parameter:

_β_ = tan (_θ_).


Applications

Hall probes are often used as magnetometers, i.e. to measure magnetic fields, or inspect materials (such as tubing or pipelines) using the principles of magnetic flux leakage.

Hall effect devices produce a very low signal level and thus require amplification. While suitable for laboratory instruments, the vacuum tube amplifiers available in the first half of the 20th century were too expensive, power consuming, and unreliable for everyday applications. It was only with the development of the low cost integrated circuit that the Hall effect sensor became suitable for mass application. Many devices now sold as Hall effect sensors in fact contain both the sensor as described above plus a high gain integrated circuit (IC) amplifier in a single package. Recent advances have further added into one package an analog-to-digital converter and I²C (Inter-integrated circuit communication protocol) IC for direct connection to a microcontroller's I/O port.

Advantages over other methods

Hall effect devices (when appropriately packaged) are immune to dust, dirt, mud, and water. These characteristics make Hall effect devices better for position sensing than alternative means such as optical and electromechanical sensing. HallEffCurrentSense.jpg When electrons flow through a conductor, a magnetic field is produced. Thus, it is possible to create a non-contacting current sensor. The device has three terminals. A sensor voltage is applied across two terminals and the third provides a voltage proportional to the current being sensed. This has several advantages; no additional resistance (a _shunt_, required for the most common current sensing method) need to be inserted in the primary circuit. Also, the voltage present on the line to be sensed is not transmitted to the sensor, which enhances the safety of measuring equipment.

Disadvantages compared with other methods

Magnetic flux from the surroundings (such as other wires) may diminish or enhance the field the Hall probe intends to detect, rendering the results inaccurate. Also, as Hall voltage is often on the order of millivolts, the output from this type of sensor cannot be used to directly drive actuators but instead must be amplified by a transistor-based circuit.

Ways to measure mechanical positions within an electromagnetic system, such as a brushless direct current motor, include (1) the Hall effect, (2) optical position encoder (e.g., absolute and incremental encoders) and (3) induced voltage by moving the amount of metal core inserted into a transformer. When Hall is compared to photo-sensitive methods, it is harder to get absolute position with Hall. Hall detection is also sensitive to stray magnetic fields.

Contemporary applications

Hall effect sensors are readily available from a number of different manufacturers, and may be used in various sensors such as rotating speed sensors (bicycle wheels, gear-teeth, automotive speedometers, electronic ignition systems), fluid flow sensors, current sensors, and pressure sensors. Common applications are often found where a robust and contactless switch or potentiometer is required. These include: electric airsoft guns, triggers of electropneumatic paintball guns, go-cart speed controls, smart phones, and some global positioning systems.

Ferrite toroid Hall effect current transducer

RAZC-GENARRv1.jpg

Hall sensors can detect stray magnetic fields easily, including that of Earth, so they work well as electronic compasses: but this also means that such stray fields can hinder accurate measurements of small magnetic fields. To solve this problem, Hall sensors are often integrated with magnetic shielding of some kind. For example, a Hall sensor integrated into a ferrite ring (as shown) can reduce the detection of stray fields by a factor of 100 or better (as the external magnetic fields cancel across the ring, giving no residual magnetic flux). This configuration also provides an improvement in signal-to-noise ratio and drift effects of over 20 times that of a bare Hall device.

The range of a given feedthrough sensor may be extended upward and downward by appropriate wiring. To extend the range to lower currents, multiple turns of the current-carrying wire may be made through the opening, each turn adding to the sensor output the same quantity; when the sensor is installed onto a printed circuit board, the turns can be carried out by a staple on the board. To extend the range to higher currents, a current divider may be used. The divider splits the current across two wires of differing widths and the thinner wire, carrying a smaller proportion of the total current, passes through the sensor.

Ampere-Turnsv1.jpg

Split ring clamp-on sensor

A variation on the ring sensor uses a split sensor which is clamped onto the line enabling the device to be used in temporary test equipment. If used in a permanent installation, a split sensor allows the electric current to be tested without dismantling the existing circuit.

Analog multiplication

The output is proportional to both the applied magnetic field and the applied sensor voltage. If the magnetic field is applied by a solenoid, the sensor output is proportional to the product of the current through the solenoid and the sensor voltage. As most applications requiring computation are now performed by small digital computers, the remaining useful application is in power sensing, which combines current sensing with voltage sensing in a single Hall effect device.

Power measurement

By sensing the current provided to a load and using the device's applied voltage as a sensor voltage it is possible to determine the power dissipated by a device.

Position and motion sensing

Hall effect devices used in motion sensing and motion limit switches can offer enhanced reliability in extreme environments. As there are no moving parts involved within the sensor or magnet, typical life expectancy is improved compared to traditional electromechanical switches. Additionally, the sensor and magnet may be encapsulated in an appropriate protective material. This application is used in brushless DC motors.

Hall effect sensors, affixed to mechanical gauges that have magnetized indicator needles, can translate the physical position or orientation of the mechanical indicator needle into an electrical signal that can be used by electronic indicators, controls or communications devices.[15]

Automotive ignition and fuel injection

Commonly used in distributors for ignition timing (and in some types of crank and camshaft position sensors for injection pulse timing, speed sensing, etc.) the Hall effect sensor is used as a direct replacement for the mechanical breaker points used in earlier automotive applications. Its use as an ignition timing device in various distributor types is as follows. A stationary permanent magnet and semiconductor Hall effect chip are mounted next to each other separated by an air gap, forming the Hall effect sensor. A metal rotor consisting of windows and tabs is mounted to a shaft and arranged so that during shaft rotation, the windows and tabs pass through the air gap between the permanent magnet and semiconductor Hall chip. This effectively shields and exposes the Hall chip to the permanent magnet's field respective to whether a tab or window is passing through the Hall sensor. For ignition timing purposes, the metal rotor will have a number of equal-sized tabs and windows matching the number of engine cylinders. This produces a uniform square wave output since the on/off (shielding and exposure) time is equal. This signal is used by the engine computer or ECU to control ignition timing. Many automotive Hall effect sensors have a built-in internal NPN transistor with an open collector and grounded emitter, meaning that rather than a voltage being produced at the Hall sensor signal output wire, the transistor is turned on providing a circuit to ground through the signal output wire.

Wheel rotation sensing

The sensing of wheel rotation is especially useful in anti-lock braking systems. The principles of such systems have been extended and refined to offer more than anti-skid functions, now providing extended vehicle handling enhancements.

Electric motor control

Some types of brushless DC electric motors use Hall effect sensors to detect the position of the rotor and feed that information to the motor controller. This allows for more precise motor control.

Industrial applications

Applications for Hall effect sensing have also expanded to industrial applications, which now use Hall effect joysticks to control hydraulic valves, replacing the traditional mechanical levers with contactless sensing. Such applications include mining trucks, backhoe loaders, cranes, diggers, scissor lifts, etc.

Spacecraft propulsion

A Hall-effect thruster (HET) is a relatively low power device that is used to propel some spacecraft, after it gets into orbit or farther out into space. In the HET, atoms are ionized and accelerated by an electric field. A radial magnetic field established by magnets on the thruster is used to trap electrons which then orbit and create an electric field due to the Hall effect. A large potential is established between the end of the thruster where neutral propellant is fed, and the part where electrons are produced; so, electrons trapped in the magnetic field cannot drop to the lower potential. They are thus extremely energetic, which means that they can ionize neutral atoms. Neutral propellant is pumped into the chamber and is ionized by the trapped electrons. Positive ions and electrons are then ejected from the thruster as a quasineutral plasma, creating thrust.


The Corbino effect

Corbino_disc_by_Zureks.svg paths of deflected electrons]]

The Corbino effect is a phenomenon involving the Hall effect, but a disc-shaped metal sample is used in place of a rectangular one. Because of its shape the Corbino disc allows the observation of Hall effect–based magnetoresistance without the associated Hall voltage.

A radial current through a circular disc, subjected to a magnetic field perpendicular to the plane of the disc, produces a "circular" current through the disc.[16]

The absence of the free transverse boundaries renders the interpretation of the Corbino effect simpler than that of the Hall effect.


See also

-   Capacitor
-   Transducer
-   Coulomb potential between two current loops embedded in a magnetic field
-   Eddy current
-   Eric Fawcett
-   List of plasma (physics) articles
-   Nernst effect
-   Quantum Hall effect
-   Fractional quantum Hall effect
-   Quantum anomalous Hall effect
-   Senftleben–Beenakker effect
-   Spin Hall effect
-   Thermal Hall effect


References


Sources

-   Introduction to Plasma Physics and Controlled Fusion, Volume 1, Plasma Physics, Second Edition, 1984, Francis F. Chen


Further reading

-   -   Annraoi M. de Paor. _Correction to the classical two-species Hall Coefficient using twoport network theory_. International Journal of Electrical Engineering Education 43/4.
-   NIST The Hall Effect
-   University of Washington The Hall Effect


External links

Patents

-   , P. H. Craig, _System and apparatus employing the Hall effect_

-   , J. T. Maupin, E. A. Vorthmann, _Hall effect contactless switch with prebiased Schmitt trigger_

General

-   Understanding and Applying the Hall Effect
-   Hall Effect Thrusters Alta Space
-   Hall effect calculators
-   Interactive Java tutorial on the Hall effect National High Magnetic Field Laboratory
-   Science World (wolfram.com) article.
-   "The Hall Effect". nist.gov.
-   Table with Hall coefficients of different elements at room temperature.
-   Simulation of the Hall effect as a Youtube video
-   Hall effect in electrolytes
-

Hall_effect Category:Condensed matter physics Category:Electric and magnetic fields in matter

[1]

[2]

[3]

[4]

[5]

[6]

[7] N.W. Ashcroft and N.D. Mermin "Solid State Physics"

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15] Tank Sensors & Probes, Electronic Sensors, Inc., retrieved August 8, 2018

[16]