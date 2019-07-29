Airbus-319-cockpit.jpg was the first commercial airliner to feature a full glass cockpit and digital fly-by-wire flight control system. The only analogue instruments were the RMI, brake pressure indicator, standby altimeter and artificial horizon, the latter two being replaced by a digital integrated standby instrument system in later production models.]] FLY-BY-WIRE (FBW) is a system that replaces the conventional manual flight controls of an aircraft with an electronic interface. The movements of flight controls are converted to electronic signals transmitted by wires (hence the fly-by-wire term), and flight control computers determine how to move the actuators at each control surface to provide the ordered response. It can use mechanical flight control backup systems (Boeing 777) or use fully fly-by-wire controls.[1]

Improved fully fly-by-wire systems interpret the pilot's control inputs as a desired outcome and calculate the control surface positions required to achieve that outcome; this results in various combinations of rudder, elevator, aileron, flaps and engine controls in different situations using a closed (feedback) loop. The pilot may not be fully aware of all the control outputs acting to effect the outcome, only that the aircraft is reacting as expected. The fly-by-wire computers act to stabilise the aircraft and adjust the flying characteristics without the pilot's involvement and to prevent the pilot operating outside of the aircraft's safe performance envelope.[2][3]


Development

Mechanical and hydro-mechanical flight control systems are relatively heavy and require careful routing of flight control cables through the aircraft by systems of pulleys, cranks, tension cables and hydraulic pipes. Both systems often require redundant backup to deal with failures, which increases weight. Both have limited ability to compensate for changing aerodynamic conditions. Dangerous characteristics such as stalling, spinning and pilot-induced oscillation (PIO), which depend mainly on the stability and structure of the aircraft concerned rather than the control system itself, are depending on pilot's action.

The term "fly-by-wire" implies a purely electrically signaled control system. It is used in the general sense of computer-configured controls, where a computer system is interposed between the operator and the final control actuators or surfaces. This modifies the manual inputs of the pilot in accordance with control parameters.[4]

Side-sticks, centre sticks, or conventional flight control yokes can be used to fly FBW aircraft.

Basic operation

Closed-loop feedback control

Feedback_loop_with_descriptions.svg loop]] A pilot commands the flight control computer to make the aircraft perform a certain action, such as pitch the aircraft up, or roll to one side, by moving the control column or sidestick. The flight control computer then calculates what control surface movements will cause the plane to perform that action and issues those commands to the electronic controllers for each surface.[5] The controllers at each surface receive these commands and then move actuators attached to the control surface until it has moved to where the flight control computer commanded it to. The controllers measure the position of the flight control surface with sensors such as LVDTs.[6]

Automatic stability systems

Fly-by-wire control systems allow aircraft computers to perform tasks without pilot input. Automatic stability systems operate in this way. Gyroscopes fitted with sensors are mounted in an aircraft to sense rotation on the pitch, roll and yaw axes. Any movement (from straight and level flight for example) results in signals to the computer, which can automatically move control actuators to stabilize the aircraft.[7]

Safety and redundancy

While traditional mechanical or hydraulic control systems usually fail gradually, the loss of all flight control computers immediately renders the aircraft uncontrollable. For this reason, most fly-by-wire systems incorporate either redundant computers (triplex, quadruplex etc.), some kind of mechanical or hydraulic backup or a combination of both. A "mixed" control system with mechanical backup feedbacks any rudder elevation directly to the pilot and therefore makes closed loop (feedback) systems senseless.[8]

Aircraft systems may be quadruplexed (four independent channels) to prevent loss of signals in the case of failure of one or even two channels. High performance aircraft that have fly-by-wire controls (also called CCVs or Control-Configured Vehicles) may be deliberately designed to have low or even negative stability in some flight regimes rapid-reacting CCV controls can electronically stabilize the lack of natural stability.[9]

Pre-flight safety checks of a fly-by-wire system are often performed using built-in test equipment (BITE). A number of control movement steps can be automatically performed, reducing workload of the pilot or groundcrew and speeding up flight-checks.

Some aircraft, the Panavia Tornado for example, retain a very basic hydro-mechanical backup system for limited flight control capability on losing electrical power; in the case of the Tornado this allows rudimentary control of the stabilators only for pitch and roll axis movements.[10]

Weight saving

A FBW aircraft can be lighter than a similar design with conventional controls. This is partly due to the lower overall weight of the system components, and partly because the natural stability of the aircraft can be relaxed, slightly for a transport aircraft and more for a maneuverable fighter, which means that the stability surfaces that are part of the aircraft structure can therefore be made smaller. These include the vertical and horizontal stabilizers (fin and tailplane) that are (normally) at the rear of the fuselage. If these structures can be reduced in size, airframe weight is reduced. The advantages of FBW controls were first exploited by the military and then in the commercial airline market. The Airbus series of airliners used full-authority FBW controls beginning with their A320 series, see A320 flight control (though some limited FBW functions existed on A310).[11] Boeing followed with their 777 and later designs.

History

Avro_Arrow_rollout.jpg, first non-experimental aircraft flown with a fly-by-wire control system]] F-8C_FBW.jpg digital fly-by-wire testbed]] Servo-electrically operated control surfaces were first tested in the 1930s on the Soviet Tupolev ANT-20.[12] Long runs of mechanical and hydraulic connections were replaced with wires and electric servos.

The first pure electronic fly-by-wire aircraft with no mechanical or hydraulic backup was the Apollo Lunar Landing Training Vehicle (LLTV), first flown in 1968.[13]

The first non-experimental aircraft that was designed and flown (in 1958) with a fly-by-wire flight control system was the Avro Canada CF-105 Arrow,[14][15] a feat not repeated with a production aircraft until Concorde in 1969. This system also included solid-state components and system redundancy, was designed to be integrated with a computerised navigation and automatic search and track radar, was flyable from ground control with data uplink and downlink, and provided artificial feel (feedback) to the pilot.[16]

In the UK the two seater Avro 707B was flown with a Fairey system with mechanical backup[17] in the early to mid-60s. The program was curtailed when the air-frame ran out of flight time.[18]

In 1972, the first digital fly-by-wire fixed-wing aircraft without a mechanical backup[19] to take to the air was an F-8 Crusader, which had been modified electronically by NASA of the United States as a test aircraft; the F-8 used the Apollo 11 guidance, navigation and control hardware..[20]

This was preceded in 1964 by the LLRV which pioneered fly-by-wire flight with no mechanical backup.[21] Control was through a digital computer with three analog redundant channels. In the USSR, the Sukhoi T-4 also flew. At about the same time in the United Kingdom a trainer variant of the British Hawker Hunter fighter was modified at the British Royal Aircraft Establishment with fly-by-wire flight controls[22] for the right-seat pilot.


Analog systems

All "fly-by-wire" flight control systems eliminate the complexity, the fragility, and the weight of the mechanical circuit of the hydromechanical or electromechanical flight control systems—each being replaced with electronic circuits. The control mechanisms in the cockpit now operate signal transducers, which in turn generate the appropriate electronic commands. These are next processed by an electronic controller—either an analog one, or (more modernly) a digital one. Aircraft and spacecraft autopilots are now part of the electronic controller.

The hydraulic circuits are similar except that mechanical servo valves are replaced with electrically controlled servo valves, operated by the electronic controller. This is the simplest and earliest configuration of an analog fly-by-wire flight control system. In this configuration, the flight control systems must simulate "feel". The electronic controller controls electrical feel devices that provide the appropriate "feel" forces on the manual controls. This was used in Concorde, the first production fly-by-wire airliner.[23]

In more sophisticated versions, analog computers replaced the electronic controller. The canceled 1950s Canadian supersonic interceptor, the Avro Canada CF-105 Arrow, employed this type of system. Analog computers also allowed some customization of flight control characteristics, including relaxed stability. This was exploited by the early versions of F-16, giving it impressive maneuverability.


Digital systems

Fly_by_wire.jpg A digital fly-by-wire flight control system can be extended from its analog counterpart. Digital signal processing can receive and interpret input from multiple sensors simultaneously (such as the altimeters and the pitot tubes) and adjust the controls in real time. The computers sense position and force inputs from pilot controls and aircraft sensors. They then solve differential equations related to the aircraft's equations of motion to determine the appropriate command signals for the flight controls to execute the intentions of the pilot.[24]

The programming of the digital computers enable flight envelope protection. These protections are tailored to an aircraft's handling characteristics to stay within aerodynamic and structural limitations of the aircraft. For example, the computer in flight envelope protection mode can try to prevent the aircraft from being handled dangerously by preventing pilots from exceeding preset limits on the aircraft's flight-control envelope, such as those that prevent stalls and spins, and which limit airspeeds and g forces on the airplane. Software can also be included that stabilize the flight-control inputs to avoid pilot-induced oscillations.[25]

Since the flight-control computers continuously feedback the environment, pilot's workloads can be reduced.[26] Also, in military and naval applications, it is now possible to fly military aircraft that have relaxed stability. The primary benefit for such aircraft is more maneuverability during combat and training flights, and the so-called "carefree handling" because stalling, spinning and other undesirable performances are prevented automatically by the computers. Digital flight control systems enable inherently unstable combat aircraft, such as the Lockheed F-117 Nighthawk and the Northrop Grumman B-2 Spirit flying wing to fly in usable and safe manners.[27]

Legislation

The Federal Aviation Administration (FAA) of the United States has adopted the RTCA/DO-178C, titled "Software Considerations in Airborne Systems and Equipment Certification", as the certification standard for aviation software. Any safety-critical component in a digital fly-by-wire system including applications of the laws of aeronautics and computer operating systems will need to be certified to DO-178C Level A or B, depending on the class of aircraft, which is applicable for preventing potential catastrophic failures.[28]

Nevertheless, the top concern for computerized, digital, fly-by-wire systems is reliability, even more so than for analog electronic control systems. This is because the digital computers that are running software are often the only control path between the pilot and aircraft's flight control surfaces. If the computer software crashes for any reason, the pilot may be unable to control an aircraft. Hence virtually all fly-by-wire flight control systems are either triply or quadruply redundant in their computers and electronics. These have three or four flight-control computers operating in parallel, and three or four separate data buses connecting them with each control surface.

Redundancy

The multiple redundant flight control computers continuously monitor each other's output. If one computer begins to give aberrant results for any reason, potentially including software or hardware failures or flawed input data, then the combined system is designed to exclude the results from that computer in deciding the appropriate actions for the flight controls. Depending on specific system details there may be the potential to reboot an aberrant flight control computer, or to reincorporate its inputs if they return to agreement. Complex logic exists to deal with multiple failures, which may prompt the system to revert to simpler back-up modes.[29][30]

In addition, most of the early digital fly-by-wire aircraft also had an analog electrical, mechanical, or hydraulic back-up flight control system. The Space Shuttle has, in addition to its redundant set of four digital computers running its primary flight-control software, a fifth back-up computer running a separately developed, reduced-function, software flight-control system – one that can be commanded to take over in the event that a fault ever affects all of the computers in the other four. This back-up system serves to reduce the risk of total flight-control-system failure ever happening because of a general-purpose flight software fault that has escaped notice in the other four computers.[31][32]

Efficiency of flight

For airliners, flight-control redundancy improves their safety, but fly-by-wire control systems, which are physically lighter and have lower maintenance demands than conventional controls also improve economy, both in terms of cost of ownership and for in-flight economy. In certain designs with limited relaxed stability in the pitch axis, for example the Boeing 777, the flight control system may allow the aircraft to fly at a more aerodynamically efficient angle of attack than a conventionally stable design. Modern airliners also commonly feature computerized Full-Authority Digital Engine Control systems (FADECs) that control their jet engines, air inlets, fuel storage and distribution system, in a similar fashion to the way that FBW controls the flight control surfaces. This allows the engine output to be continually varied for the most efficient usage possible.

The second generation Embraer E-Jet family gained a 1.5% efficiency improvement over the first generation from the fly-by-wire system, which enabled a reduction from 280 ft.² to 250 ft.² for the horizontal stabilizer on the E190/195 variants.[33]

Airbus/Boeing

Airbus and Boeing differ in their approaches to implementing fly-by-wire systems in commercial aircraft. Since the Airbus A320, Airbus flight-envelope control systems always retain ultimate flight control when flying under normal law, and will not permit the pilots to violate aircraft performance limits unless they choose to fly under alternate law.[34] This strategy has been continued on subsequent Airbus airliners.[35][36] However, in the event of multiple failures of redundant computers, the A320 does have a mechanical back-up system for its pitch trim and its rudder, the Airbus A340 has a purely electrical (not electronic) back-up rudder control system, and beginning with the A380, all flight-control systems have back-up systems that are purely electrical through the use of a "three-axis Backup Control Module" (BCM).[37]

Boeing airliners, such as the Boeing 777, allow the pilots to completely override the computerised flight-control system, permitting the aircraft to be flown outside of its usual flight-control envelope if they decide that it is necessary.

Applications

F-BUAD_A300B2-C1_Airbus_Industry(3rd_prototype)_Farnborough_SEP86_(12609347665).jpg trialed fly-by-wire on an A300 as shown in 1986, then produced the A320.]]

-   The General Dynamics F-16 was the first production aircraft to use fly-by-wire controls.
-   The Space Shuttle orbiter has an all-digital fly-by-wire control system. This system was first exercised (as the only flight control system) during the glider unpowered-flight "Approach and Landing Tests" that began on the Space Shuttle _Enterprise_ during 1977.
-   Launched into production during 1984, the Airbus Industries Airbus A320 became the first airliner to fly with an all-digital fly-by-wire control system.[38]
-   During 2005, the Dassault Falcon 7X became the first business jet with fly-by-wire controls.[39]
-   A fully digital fly-by-wire _without a closed feedback loop_ was integrated 2002 in the first generation Embraer E-Jet family. By closing the loop (feedback), the second generation Embraer E-Jet family gained a 1.5% efficiency improvement in 2016.[40]


Engine digital control

The advent of FADEC (Full Authority Digital Engine Control) engines permits operation of the flight control systems and autothrottles for the engines to be fully integrated. On modern military aircraft other systems such as autostabilization, navigation, radar and weapons system are all integrated with the flight control systems. FADEC allows maximum performance to be extracted from the aircraft without fear of engine misoperation, aircraft damage or high pilot workloads.

In the civil field, the integration increases flight safety and economy. The Airbus A320 and its fly-by-wire brethren are protected from dangerous situations such as low-speed stall or overstressing by flight envelope protection. As a result, in such conditions, the flight control systems commands the engines to increase thrust without pilot intervention. In economy cruise modes, the flight control systems adjust the throttles and fuel tank selections more precisely than all but the most skillful pilots. FADEC reduces rudder drag needed to compensate for sideways flight from unbalanced engine thrust. On the A330/A340 family, fuel is transferred between the main (wing and center fuselage) tanks and a fuel tank in the horizontal stabilizer, to optimize the aircraft's center of gravity during cruise flight. The fuel management controls keep the aircraft's center of gravity accurately trimmed with fuel weight, rather than drag-inducing aerodynamic trims in the elevators.


Further developments

Fly-by-optics

Fly-by-optics is sometimes used instead of fly-by-wire because it offers a higher data transfer rate, immunity to electromagnetic interference, and lighter weight. In most cases, the cables are just changed from electrical to optical fiber cables. Sometimes it is referred to as "fly-by-light" due to its use of fiber optics. The data generated by the software and interpreted by the controller remain the same. Fly-by-light has the effect of decreasing electro-magnetic disturbances to sensors in comparison to more common fly-by-wire control systems. The Kawasaki P-1 is the first production aircraft in the world to be equipped with such a flight control system.[41]

Power-by-wire

Having eliminated the mechanical transmission circuits in fly-by-wire flight control systems, the next step is to eliminate the bulky and heavy hydraulic circuits. The hydraulic circuit is replaced by an electrical power circuit. The power circuits power electrical or self-contained electrohydraulic actuators that are controlled by the digital flight control computers. All benefits of digital fly-by-wire are retained.

The biggest benefits are weight savings, the possibility of redundant power circuits and tighter integration between the aircraft flight control systems and its avionics systems. The absence of hydraulics greatly reduces maintenance costs. This system is used in the Lockheed Martin F-35 Lightning II and in Airbus A380 backup flight controls. The Boeing 787 and Airbus A350 also incorporate electrically powered backup flight controls which remain operational even in the event of a total loss of hydraulic power.[42]

Fly-by-wireless

Wiring adds a considerable amount of weight to an aircraft; therefore, researchers are exploring implementing fly-by-wireless solutions. Fly-by-wireless systems are very similar to fly-by-wire systems, however, instead of using a wired protocol for the physical layer a wireless protocol is employed.

In addition to reducing weight, implementing a wireless solution has the potential to reduce costs throughout an aircraft's life cycle. For example, many key failure points associated with wire and connectors will be eliminated thus hours spent troubleshooting wires and connectors will be reduced. Furthermore, engineering costs could potentially decrease because less time would be spent on designing wiring installations, late changes in an aircraft's design would be easier to manage, etc.[43]

Intelligent flight control system

A newer flight control system, called intelligent flight control system (IFCS), is an extension of modern digital fly-by-wire flight control systems. The aim is to intelligently compensate for aircraft damage and failure during flight, such as automatically using engine thrust and other avionics to compensate for severe failures such as loss of hydraulics, loss of rudder, loss of ailerons, loss of an engine, etc. Several demonstrations were made on a flight simulator where a Cessna-trained small-aircraft pilot successfully landed a heavily damaged full-size concept jet, without prior experience with large-body jet aircraft. This development is being spearheaded by NASA Dryden Flight Research Center.[44] It is reported that enhancements are mostly software upgrades to existing fully computerized digital fly-by-wire flight control systems. The Dassault Falcon 7X and Embraer Legacy 500 business jets have flight computers that can partially compensate for engine-out scenarios by adjusting thrust levels and control inputs, but still require pilots to respond appropriately.[45]


See also

-   Aircraft flight control system
-   Air France Flight 296
-   Drive by wire
-   Flight control modes (electronic)
-   MIL-STD-1553, a standard data bus for fly-by-wire
-   Relaxed stability


References


External links

-   "Fly-by-wire" a 1972 _Flight_ article

Category:Aircraft controls Category:Fault tolerance

[1] Fly by Wire Flight Control Systems Sutherland

[2] Crane, Dale: _Dictionary of Aeronautical Terms, third edition_, page 224. Aviation Supplies & Academics, 1997.

[3]

[4]

[5]

[6]

[7]

[8]

[9] Respect the unstable - Berkeley Center for Control and Identification

[10]

[11] Dominique Brière, Christian Favre, Pascal Traverse, _Electrical Flight Controls, From Airbus A320/330/340 to Future Military Transport Aircraft: A Family of Fault-Tolerant Systems_, chapitre 12 du _Avionics Handbook_, Cary Spitzer ed., CRC Press 2001,

[12] Official site of PSC "Tupolev". One of the history page.

[13]

[14] W. (Spud) Potocki, quoted in The Arrowheads, _Avro Arrow: the story of the Avro Arrow from its evolution to its extinction_, pages 83–85. Boston Mills Press, Erin, Ontario, Canada 2004 (originally published 1980). .

[15] Whitcomb, Randall L. _Cold War Tech War: The Politics of America's Air Defense_. Apogee Books, Burlington, Ontario, Canada 2008. Pages 134, 163.

[16]

[17] Fairey fly-by-wire _Flight International_, 10 August 1972

[18]

[19] Fly-by-wire for combat aircraft, _Flight International_, 23 August 1973 p353

[20] 1 NASA F-8 www.nasa.gov. Retrieved 3 June 2010

[21]

[22] RAE Electric Hunter _Flight International_, 10 August 1972

[23] The Tay-Viscount was the first airliner to be fitted with electrical controls _Flight_ 1986

[24]

[25] Airbus A320/A330/A340 Electrical Flight Controls: A Family of Fault-Tolerant Systems

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35] Briere D. and Traverse, P. (1993) “Airbus A320/A330/A340 Electrical Flight Controls: A Family of Fault-Tolerant Systems ” Proc. FTCS, pp. 616–623.

[36] North, David. (2000) "Finding Common Ground in Envelope Protection Systems". _Aviation Week & Space Technology_, 28 Aug, pp. 66–68.

[37] Le Tron, X. (2007) A380 Flight Control Overview Presentation at Hamburg University of Applied Sciences, 27 September 2007

[38]

[39]

[40]

[41]

[42] A350 XWB family & technologies

[43] "Fly-by-Wireless": A Revolution in Aerospace Vehicle Architecture for Instrumentation and Control

[44] Intelligent Flight Control System. _IFCS Fact Sheet_. NASA. Retrieved 8 June 2011.

[45] Flying Magazine Fly by Wire. "Fly by Wire: Fact versus Science Fiction". Flying Magazine. Retrieved 27 May 2017.