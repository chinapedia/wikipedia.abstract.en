In electrical engineering, a SWITCH is an electrical component that can "make" or "break" an electrical circuit, interrupting the current or diverting it from one conductor to another.[1][2] The mechanism of a switch removes or restores the conducting path in a circuit when it is operated. It may be operated manually, for example, a light switch or a keyboard button, may be operated by a moving object such as a door, or may be operated by some sensing element for pressure, temperature or flow. A switch will have one or more sets of contacts, which may operate simultaneously, sequentially, or alternately. Switches in high-powered circuits must operate rapidly to prevent destructive arcing, and may include special features to assist in rapidly interrupting a heavy current. Multiple forms of actuators are used for operation by hand or to sense position, level, temperature or flow. Special types are used, for example, for control of machinery, to reverse electric motors, or to sense liquid level. Many specialized forms exist. A common use is control of lighting, where multiple switches may be wired into one circuit to allow convenient control of light fixtures.

By analogy with the devices that select one or more possible paths for electric currents, devices that route information in a computer network are also called "switches" - these are usually more complicated than simple electromechanical toggles or pushbutton devices, and operate without direct human interaction.


Description

switches-electrical.agr.jpg, wafer switch, DIP switch, surface mount switch, reed switch. Bottom, left to right: wall switch (U.S. style), miniature toggle switch, in‑line switch, push-button switch, rocker switch, microswitch.]]The most familiar form of switch is a manually operated electromechanical device with one or more sets of electrical contacts, which are connected to external circuits. Each set of contacts can be in one of two states: either "closed" meaning the contacts are touching and electricity can flow between them, or "open", meaning the contacts are separated and the switch is nonconducting. The mechanism actuating the transition between these two states (open or closed) are usually (there are other types of actions) either an "_alternate action_" (flip the switch for continuous "on" or "off") or "_momentary_" (push for "on" and release for "off") type.

A switch may be directly manipulated by a human as a control signal to a system, such as a computer keyboard button, or to control power flow in a circuit, such as a light switch. Automatically operated switches can be used to control the motions of machines, for example, to indicate that a garage door has reached its full open position or that a machine tool is in a position to accept another workpiece. Switches may be operated by process variables such as pressure, temperature, flow, current, voltage, and force, acting as sensors in a process and used to automatically control a system. For example, a thermostat is a temperature-operated switch used to control a heating process. A switch that is operated by another electrical circuit is called a relay. Large switches may be remotely operated by a motor drive mechanism. Some switches are used to isolate electric power from a system, providing a visible point of isolation that can be padlocked if necessary to prevent accidental operation of a machine during maintenance, or to prevent electric shock.

An ideal switch would have no voltage drop when closed, and would have no limits on voltage or current rating. It would have zero rise time and fall time during state changes, and would change state without "bouncing" between on and off positions.

Practical switches fall short of this ideal; as the result of roughness and oxide films, they exhibit contact resistance, limits on the current and voltage they can handle, finite switching time, etc. The ideal switch is often used in circuit analysis as it greatly simplifies the system of equations to be solved, but this can lead to a less accurate solution. Theoretical treatment of the effects of non-ideal properties is required in the design of large networks of switches, as for example used in telephone exchanges.


Contacts

On-Off_Switch.jpg In the simplest case, a switch has two conductive pieces, often metal, called _contacts_, connected to an external circuit, that touch to complete (make) the circuit, and separate to open (break) the circuit. The contact material is chosen for its resistance to corrosion, because most metals form insulating oxides that would prevent the switch from working. Contact materials are also chosen on the basis of electrical conductivity, hardness (resistance to abrasive wear), mechanical strength, low cost and low toxicity. The formation of oxide layers at contact surface, as well as surface roughness and contact pressure, determine the contact resistance, and wetting current of a mechanical switch. Sometimes the contacts are plated with noble metals, for their excellent conductivity and resistance to corrosion. They may be designed to wipe against each other to clean off any contamination. Nonmetallic conductors, such as conductive plastic, are sometimes used. To prevent the formation of insulating oxides, a minimum wetting current may be specified for a given switch design.

Contact terminology

Tpst.jpg used to short the windings of a 3‑phase wind turbine for braking purposes. Here the switch is shown in the open position.]]

In electronics, switches are classified according to the arrangement of their contacts. A pair of contacts is said to be "_closed_" when current can flow from one to the other. When the contacts are separated by an insulating air gap, they are said to be "_open_", and no current can flow between them at normal voltages. The terms "_make_" for closure of contacts and "_break_" for opening of contacts are also widely used.

The terms POLE and THROW are also used to describe switch contact variations. The number of "_poles_" is the number of electrically separate switches which are controlled by a single physical actuator. For example, a "_2-pole_" switch has two separate, parallel sets of contacts that open and close in unison via the same mechanism. The number of "_throws_" is the number of separate wiring path choices other than "open" that the switch can adopt for each pole. A single-throw switch has one pair of contacts that can either be closed or open. A double-throw switch has a contact that can be connected to either of two other contacts, a triple-throw has a contact which can be connected to one of three other contacts, etc.[3]

In a switch where the contacts remain in one state unless actuated, such as a push-button switch, the contacts can either be NORMALLY OPEN (abbreviated "N.O." or "NO") until closed by operation of the switch, or NORMALLY CLOSED ("N.C." or "NC") and opened by the switch action. A switch with both types of contact is called a _changeover switch_ or _double-throw switch_. These may be "MAKE-BEFORE-BREAK" ("MBB" or shorting) which momentarily connects both circuits, or may be "BREAK-BEFORE-MAKE" ("BBM" or non-shorting) which interrupts one circuit before closing the other.

These terms have given rise to abbreviations for the types of switch which are used in the electronics industry such as "_single-pole, single-throw_" (SPST) (the simplest type, "on or off") or "_single-pole, double-throw_" (SPDT), connecting either of two terminals to the common terminal. In electrical power wiring (i.e., house and building wiring by electricians), names generally involve the suffix _"-way"_; however, these terms differ between British English and American English (i.e., the terms _two way_ and _three  way_ are used with different meanings).

+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| Electronics specification and abbreviation | Expansion                                  | British             | American        | Description                                                                                                                                                                                                                                                                                                                                                                                              | Symbol                      |
|                                            | of                                         | mains               | electrical      |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
|                                            | abbreviation                               | wiring              | wiring          |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
|                                            |                                            | name                | name            |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
+============================================+============================================+=====================+=================+==========================================================================================================================================================================================================================================================================================================================================================================================================+=============================+
| SPST                                       | Single pole, single throw                  | One-way             | Two-way         | A simple on-off switch: The two terminals are either connected together or disconnected from each other. An example is a light switch.                                                                                                                                                                                                                                                                   | SPST-Switch.svg             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| SPST-NO FORM A[4]                          | Single pole, single throw, normally open   |                     |                 | A simple on-off switch. The two terminals are normally disconnected (open) and are closed when the switch is activated. An example is a pushbutton switch.                                                                                                                                                                                                                                               |                             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| SPST-NC FORM B[5]                          | Single pole, single throw, normally closed |                     |                 | A simple on-off switch. The two terminals are normally connected together (closed) and are open when the switch is activated. An example is a pushbutton switch.                                                                                                                                                                                                                                         | SPST-NC-Switch.svg          |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| SPDT FORM C[6]                             | Single pole, double throw                  | Two-way             | Three-way       | A simple break-before-make changeover switch: C (COM, Common) is connected either to L1 or to L2.                                                                                                                                                                                                                                                                                                        | SPDT-Switch.svg             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| SPCO                                       | Single pole changeover                     |                     |                 | Similar to _SPDT_. Some suppliers use _SPCO/SPTT_ for switches with a stable off position in the centre and _SPDT_ for those without.                                                                                                                                                                                                                                                                    |                             |
| SPTT, C.O.                                 | _or_                                       |                     |                 |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
|                                            | Single pole, centre off _or_               |                     |                 |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
|                                            | Single Pole, Triple Throw                  |                     |                 |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| DPST                                       | Double pole, single throw                  | Double pole         | Double pole     | Equivalent to two _SPST_ switches controlled by a single mechanism.                                                                                                                                                                                                                                                                                                                                      | DPST-symbol.svg             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| DPDT                                       | Double pole, double throw                  |                     |                 | Equivalent to two _SPDT_ switches controlled by a single mechanism.                                                                                                                                                                                                                                                                                                                                      | DPDT-symbol.svg             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| DPCO                                       | Double pole changeover                     |                     |                 | Schematically equivalent to _DPDT_. Some suppliers use _DPCO_ for switches with a stable center position and _DPDT_ for those without. A DPDT/DPCO switch with a center position can be "off" in the center, not connected to either L1 or L2, or "on", connected to both L1 and L2 at the same time. The positions of such switches are commonly referenced as "on-off-on" and "on-on-on" respectively. |                             |
|                                            | _or_ Double pole, centre off               |                     |                 |                                                                                                                                                                                                                                                                                                                                                                                                          |                             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
|                                            |                                            | Intermediate switch | Four-way switch | _DPDT_ switch internally wired for polarity-reversal applications: only four rather than six wires are brought outside the switch housing.                                                                                                                                                                                                                                                               | crossover-switch-symbol.svg |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| 2P6T                                       | Two pole, six throw                        |                     |                 | Changeover switch with a COM (Common), which can connect to L1, L2, L3, L4, L5, or L6; with a second switch (2P, two pole) controlled by a single mechanism.                                                                                                                                                                                                                                             | 2P6T-symbol.svg             |
+--------------------------------------------+--------------------------------------------+---------------------+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+

Switches with larger numbers of poles or throws can be described by replacing the "S" or "D" with a number (e.g. 3PST, SP4T, etc.) or in some cases the letter "T" (for "triple") or "Q" (for "quadruple"). In the rest of this article the terms _SPST_, _SPDT_ and _intermediate_ will be used to avoid the ambiguity.

Contact bounce

Bouncy_Switch.png. The switch bounces between on and off several times before settling.]] Contact bounce (also called _chatter_) is a common problem with mechanical switches and relays. Switch and relay contacts are usually made of springy metals. When the contacts strike together, their momentum and elasticity act together to cause them to bounce apart one or more times before making steady contact. The result is a rapidly pulsed electric current instead of a clean transition from zero to full current. The effect is usually unimportant in power circuits, but causes problems in some analogue and logic circuits that respond fast enough to misinterpret the on‑off pulses as a data stream.[7]

The effects of contact bounce can be eliminated by use of mercury-wetted contacts, but these are now infrequently used because of the hazard of mercury release. Alternatively, contact circuit voltages can be low-pass filtered to reduce or eliminate multiple pulses from appearing. In digital systems, multiple samples of the contact state can be taken at a low rate and examined for a steady sequence, so that contacts can settle before the contact level is considered reliable and acted upon. Bounce in SPDT switch contacts signals can be filtered out using a SR flip-flop (latch) or Schmitt trigger. All of these methods are referred to as 'debouncing'.

By analogy, the term "debounce" has arisen in the software development industry to describe rate-limiting or throttling the frequency of a method's execution.[8]

Entprellte Taste.svg|Low-pass filtered schmitt trigger input for debouncing Prellfreie Taste.svg|SR flip-flop in a debouncing circuit[9][10]

In the Hammond organ, multiple wires are pressed together under the piano keys of the manuals. Their bouncing and non-synchronous closing of the switches is known as _Hammond Click_ and compositions exist that use and emphasize this feature. Some electronic organs have a switchable replica of this sound effect.[11]

Arcs and quenching

When the power being switched is sufficiently large, the electron flow across opening switch contacts is sufficient to ionize the air molecules across the tiny gap between the contacts as the switch is opened, forming a gas plasma, also known as an electric arc. The plasma is of low resistance and is able to sustain power flow, even with the separation distance between the switch contacts steadily increasing. The plasma is also very hot and is capable of eroding the metal surfaces of the switch contacts. Electric current arcing causes significant degradation of the contacts and also significant electromagnetic interference (EMI), requiring the use of arc suppression methods.[12]

Where the voltage is sufficiently high, an arc can also form as the switch is closed and the contacts approach. If the voltage potential is sufficient to exceed the breakdown voltage of the air separating the contacts, an arc forms which is sustained until the switch closes completely and the switch surfaces make contact.

In either case, the standard method for minimizing arc formation and preventing contact damage is to use a fast-moving switch mechanism, typically using a spring-operated tipping-point mechanism to assure quick motion of switch contacts, regardless of the speed at which the switch control is operated by the user. Movement of the switch control lever applies tension to a spring until a tipping point is reached, and the contacts suddenly snap open or closed as the spring tension is released.

As the power being switched increases, other methods are used to minimize or prevent arc formation. A plasma is hot and will rise due to convection air currents. The arc can be quenched with a series of non-conductive blades spanning the distance between switch contacts, and as the arc rises, its length increases as it forms ridges rising into the spaces between the blades, until the arc is too long to stay sustained and is extinguished. A _puffer_ may be used to blow a sudden high velocity burst of gas across the switch contacts, which rapidly extends the length of the arc to extinguish it quickly.

Extremely large switches in excess of 100,000‑watt capacity often have switch contacts surrounded by something other than air to more rapidly extinguish the arc. For example, the switch contacts may operate in a vacuum, immersed in mineral oil, or in sulfur hexafluoride.

In AC power service, the current periodically passes through zero; this effect makes it harder to sustain an arc on opening. Manufacturers may rate switches with lower voltage or current rating when used in DC circuits.

Power switching

When a switch is designed to switch significant power, the transitional state of the switch as well as the ability to withstand continuous operating currents must be considered. When a switch is in the on state, its resistance is near zero and very little power is dropped in the contacts; when a switch is in the off state, its resistance is extremely high and even less power is dropped in the contacts. However, when the switch is flicked, the resistance must pass through a state where a quarter of the load's rated power (or worse if the load is not purely resistive) is briefly dropped in the switch.

For this reason, power switches intended to interrupt a load current have spring mechanisms to make sure the transition between on and off is as short as possible regardless of the speed at which the user moves the rocker.

Power switches usually come in two types. A momentary on‑off switch (such as on a laser pointer) usually takes the form of a button and only closes the circuit when the button is depressed. A regular on‑off switch (such as on a flashlight) has a constant on-off feature. Dual-action switches incorporate both of these features.

Inductive loads

When a strongly inductive load such as an electric motor is switched off, the current cannot drop instantaneously to zero; a spark will jump across the opening contacts. Switches for inductive loads must be rated to handle these cases. The spark will cause electromagnetic interference if not suppressed; a snubber network of a resistor and capacitor in series will quell the spark.[13]

Incandescent loads

General-Electric-silent-T-rated-light-switch.jpgWhen turned on, an incandescent lamp draws a large inrush current of about ten times the steady-state current; as the filament heats up, its resistance rises and the current decreases to a steady-state value. A switch designed for an incandescent lamp load can withstand this inrush current.[14]

Wetting current

_Wetting current_ is the minimum current needing to flow through a mechanical switch while it is operated to break through any film of oxidation that may have been deposited on the switch contacts.[15] The film of oxidation occurs often in areas with high humidity. Providing a sufficient amount of wetting current is a crucial step in designing systems that use delicate switches with small contact pressure as sensor inputs. Failing to do this might result in switches remaining electrically "open" due to contact oxidation.


Actuator

The moving part that applies the operating force to the contacts is called the _actuator_, and may be a TOGGLE or _dolly_, a ROCKER, a PUSH-BUTTON or any type of mechanical linkage _(see photo)._

Biased switches

A switch normally maintains its set position once operated. A biased switch contains a mechanism that springs it into another position when released by an operator. The momentary push-button switch is a type of biased switch. The most common type is a "push-to-make" (or normally-open or NO) switch, which makes contact when the button is pressed and breaks when the button is released. Each key of a computer keyboard, for example, is a normally-open "push-to-make" switch. A "push-to-break" (or normally-closed or NC) switch, on the other hand, breaks contact when the button is pressed and makes contact when it is released. An example of a push-to-break switch is a button used to release a door held closed by an electromagnet. The interior lamp of a household refrigerator is controlled by a switch that is held open when the door is closed.

Rotary switch

Rotaryswitch.gif

A rotary switch operates with a twisting motion of the operating handle with at least two positions. One or more positions of the switch may be momentary (biased with a spring), requiring the operator to hold the switch in the position. Other positions may have a detent to hold the position when released. A rotary switch may have multiple levels or "decks" in order to allow it to control multiple circuits.

One form of rotary switch consists of a spindle or "rotor" that has a contact arm or "spoke" which projects from its surface like a cam. It has an array of terminals, arranged in a circle around the rotor, each of which serves as a contact for the "spoke" through which any one of a number of different electrical circuits can be connected to the rotor. The switch is layered to allow the use of multiple poles, each layer is equivalent to one pole. Usually such a switch has a detent mechanism so it "clicks" from one active position to another rather than stalls in an intermediate position. Thus a rotary switch provides greater pole and throw capabilities than simpler switches do.

Other types use a cam mechanism to operate multiple independent sets of contacts.

Rotary switches were used as channel selectors on television receivers until the early 1970s, as range selectors on electrical metering equipment, as band selectors on multi-band radios and other similar purposes. In industry, rotary switches are used for control of measuring instruments, switchgear, or in control circuits. For example, a radio controlled overhead crane may have a large multi-circuit rotary switch to transfer hard-wired control signals from the local manual controls in the cab to the outputs of the remote control receiver.

Toggle switch

Electronic-Component-Four-Switch.jpg Nova1200.agr.jpg minicomputer front panel.]] Toggle_switch_logic.jpg

A TOGGLE SWITCH or TUMBLER SWITCH is a class of electrical switches that are manually actuated by a mechanical lever, handle, or rocking mechanism.

Toggle switches are available in many different styles and sizes, and are used in numerous applications. Many are designed to provide the simultaneous actuation of multiple sets of electrical contacts, or the control of large amounts of electric current or mains voltages.

The word "toggle" is a reference to a kind of mechanism or joint consisting of two arms, which are almost in line with each other, connected with an elbow-like pivot. However, the phrase "toggle switch" is applied to a switch with a short handle and a positive snap-action, whether it actually contains a toggle mechanism or not. Similarly, a switch where a definitive click is heard, is called a "positive on-off switch".[16] A very common use of this type of switch is to switch lights or other electrical equipment on or off. Multiple toggle switches may be mechanically interlocked to prevent forbidden combinations.

In some contexts, particularly computing, a toggle switch, or the action of toggling, is understood in the different sense of a mechanical or software switch that alternates between two states each time it is activated, regardless of mechanical construction. For example, the caps lock key on a computer causes all letters to be generated in capitals after it is pressed once; pressing it again reverts to lower-case letters.


Special types

Float_switch_on.jpg of a dirty water pump]] Switches can be designed to respond to any type of mechanical stimulus: for example, vibration (the trembler switch), tilt, air pressure, fluid level (a float switch), the turning of a key (key switch), linear or rotary movement (a limit switch or microswitch), or presence of a magnetic field (the reed switch). Many switches are operated automatically by changes in some environmental condition or by motion of machinery. A limit switch is used, for example, in machine tools to interlock operation with the proper position of tools. In heating or cooling systems a sail switch ensures that air flow is adequate in a duct. Pressure switches respond to fluid pressure.

Mercury tilt switch

The mercury switch consists of a drop of mercury inside a glass bulb with two or more contacts. The two contacts pass through the glass, and are connected by the mercury when the bulb is tilted to make the mercury roll on to them.

This type of switch performs much better than the ball tilt switch, as the liquid metal connection is unaffected by dirt, debris and oxidation, it wets the contacts ensuring a very low resistance bounce-free connection, and movement and vibration do not produce a poor contact. These types can be used for precision works.

It can also be used where arcing is dangerous (such as in the presence of explosive vapour) as the entire unit is sealed.

Knife switch

Sectionneur.JPG

Knife switches consist of a flat metal blade, hinged at one end, with an insulating handle for operation, and a fixed contact. When the switch is closed, current flows through the hinged pivot and blade and through the fixed contact. Such switches are usually not enclosed. The knife and contacts are typically formed of copper, steel, or brass, depending on the application. Fixed contacts may be backed up with a spring. Several parallel blades can be operated at the same time by one handle. The parts may be mounted on an insulating base with terminals for wiring, or may be directly bolted to an insulated switch board in a large assembly. Since the electrical contacts are exposed, the switch is used only where people cannot accidentally come in contact with the switch or where the voltage is so low as to not present a hazard.

Knife switches are made in many sizes from miniature switches to large devices used to carry thousands of amperes. In electrical transmission and distribution, gang-operated switches are used in circuits up to the highest voltages.

The disadvantages of the knife switch are the slow opening speed and the proximity of the operator to exposed live parts. Metal-enclosed safety disconnect switches are used for isolation of circuits in industrial power distribution. Sometimes spring-loaded auxiliary blades are fitted which momentarily carry the full current during opening, then quickly part to rapidly extinguish the arc.

Footswitch

A footswitch is a rugged switch which is operated by foot pressure. An example of use is in the control of a machine tool, allowing the operator to have both hands free to manipulate the workpiece. The foot control of an electric guitar is also a footswitch.

Reversing switch

A DPDT switch has six connections, but since polarity reversal is a very common usage of DPDT switches, some variations of the DPDT switch are internally wired specifically for polarity reversal. These crossover switches only have four terminals rather than six. Two of the terminals are inputs and two are outputs. When connected to a battery or other DC source, the 4-way switch selects from either normal or reversed polarity. Such switches can also be used as intermediate switches in a multiway switching system for control of lamps by more than two switches.


Light switches

In building wiring, light switches are installed at convenient locations to control lighting and occasionally other circuits. By use of multiple-pole switches, multiway switching control of a lamp can be obtained from two or more places, such as the ends of a corridor or stairwell. A wireless light switch allows remote control of lamps for convenience; some lamps include a touch switch which electronically controls the lamp if touched anywhere. In public buildings several types of vandal resistant switches are used to prevent unauthorized use.


Slide switches

Slide switches are mechanical switches using a slider that moves (slides) from the open (off) position to the closed (on) position.


Electronic switches

Tactile_switches.jpg A relay is an electrically operated switch. Many relays use an electromagnet to operate a switching mechanism mechanically, but other operating principles are also used. Solid-state relays control power circuits with no moving parts, instead using a semiconductor device to perform switching—often a silicon-controlled rectifier or triac.

The analogue switch uses two MOSFET transistors in a transmission gate arrangement as a switch that works much like a relay, with some advantages and several limitations compared to an electromechanical relay.

The power transistor(s) in a switching voltage regulator, such as a power supply unit, are used like a switch to alternately let power flow and block power from flowing.

Many people use metonymy to call a variety of devices "switches" that conceptually connect or disconnect signals and communication paths between electrical devices, analogous to the way mechanical switches connect and disconnect paths for electrons to flow between two conductors. Early telephone systems used an automatically operated Strowger switch to connect telephone callers; telephone exchanges contain one or more crossbar switches today.

Since the advent of digital logic in the 1950s, the term _switch_ has spread to a variety of digital active devices such as transistors and logic gates whose function is to change their output state between two logic levels or connect different signal lines, and even computers, network switches, whose function is to provide connections between different ports in a computer network. The term 'switched' is also applied to telecommunications networks, and signifies a network that is circuit switched, providing dedicated circuits for communication between end nodes, such as the public switched telephone network. The common feature of all these usages is they refer to devices that control a binary state: they are either _on_ or _off_, _closed_ or _open_, _connected_ or _not connected_.


Other switches

-   Centrifugal switch
-   Company switch
-   Dead man's switch
-   Fireman's switch
-   Hall-effect switch
-   Inertial switch
-   Isolator switch
-   Kill switch
-   Latching switch
-   Light switch
-   Load control switch
-   Membrane switch
-   MEMS switch
-   Optical switch
-   Piezo switch
-   Pull switch
-   Push switch
-   Sense switch
-   Slotted optical switch
-   Stepping switch
-   Thermal switch
-   Time switch
-   Touch switch
-   Transfer switch
-   Zero speed switch


See also

-   Commutator (electric)
-   Contact resistance
-   Cutout
-   DIN rail
-   Electric switchboard
-   RF switch matrix
-   Switch access
-   Switchgear
-   Circuit breaker


References


External links

-

Switches Category:Electrical components Category:Human–machine interaction

[1]

[2]

[3] RF Switch Explanation by Herley – General Microwave

[4]

[5]

[6]

[7] Walker, PMB, _Chambers Science and Technology Dictionary_, Edinburgh, 1988,

[8] "Debouncing Javascript Methods"

[9] Manoj Shenoy: Switch Debouncing, electroSome, 1 January 2018, retrieved 26 Juli 2018

[10] (German) Ulrich Tietze and Christoph Schenk: _Halbleiter-Schaltungstechnik_, Release 9, Springer 1989, , p. 256.

[11] Features of Technics E-33

[12]  (3.6 Mb)

[13]

[14]

[15] Gregory K. McMillan (ed) _Process/Industrial Instruments and Controls Handbook (5th Edition)_ (McGraw Hill, 1999) page 7.26

[16]