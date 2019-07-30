(voltage or current) of a time-varying signal by a given factor, as shown here. The graph shows the input v_(i)(t) _(blue)_ and output voltage v_(o)(t) _(red)_ of an ideal linear amplifier with an arbitrary signal applied as input. In this example the amplifier has a _voltage gain_ of 3; that is at any instant v_(o) = 3v_(i) ]]

An AMPLIFIER, ELECTRONIC AMPLIFIER or (informally) AMP is an electronic device that can increase the power of a signal (a time-varying voltage or current). It is a two-port electronic circuit that uses electric power from a power supply to increase the amplitude of a signal applied to its input terminals, producing a proportionally greater amplitude signal at its output. The amount of amplification provided by an amplifier is measured by its gain: the ratio of output voltage, current, or power to input. An amplifier is a circuit that has a power gain greater than one.[1][2][3]

An amplifier can either be a separate piece of equipment or an electrical circuit contained within another device. Amplification is fundamental to modern electronics, and amplifiers are widely used in almost all electronic equipment. Amplifiers can be categorized in different ways. One is by the frequency of the electronic signal being amplified. For example, audio amplifiers amplify signals in the audio (sound) range of less than 20 kHz, RF amplifiers amplify frequencies in the radio frequency range between 20 kHz and 300 GHz, and servo amplifiers and instrumentation amplifiers may work with very low frequencies down to direct current. Amplifiers can also be categorized by their physical placement in the signal chain; a preamplifier may precede other signal processing stages, for example.[4] The first practical electrical device which could amplify was the triode vacuum tube, invented in 1906 by Lee De Forest, which led to the first amplifiers around 1912. Today most amplifiers use transistors.


History

The first practical device that could amplify was the triode vacuum tube, invented in 1906 by Lee De Forest, which led to the first amplifiers around 1912. Vacuum tubes were used in almost all amplifiers until the 1960s–1970s when the transistor, invented in 1947, replaced them. Today, most amplifiers use transistors, but vacuum tubes continue to be used in some applications. (triode) vacuum tube had a voltage gain of about 5, providing a total gain of approximately 125 for this three-stage amplifier.]]

The development of audio communication technology in form of the telephone, first patented in 1876, created the need to increase the amplitude of electrical signals to extend the transmission of signals over increasingly long distances. In telegraphy, this problem had been solved with intermediate devices at stations that replenished the dissipated energy by operating a signal recorder and transmitter back-to-back, forming a relay, so that a local energy source at each intermediate station powered the next leg of transmission. For duplex transmission, i.e. sending and receiving in both directions, bi-directional relay repeaters were developed starting with the work of C. F. Varley for telegraphic transmission. Duplex transmission was essential for telephony and the problem was not satisfactorily solved until 1904, when H. E. Shreeve of the American Telephone and Telegraph Company improved existing attempts at constructing a telephone repeater consisting of back-to-back carbon-granule transmitter and electrodynamic receiver pairs.[5] The Shreeve repeater was first tested on a line between Boston and Amesbury, MA, and more refined devices remained in service for some time. After the turn of the century it was found that negative resistance mercury lamps could amplify, and were also tried in repeaters, with little success.[6]

The development of thermionic valves starting around 1902, provided an entirely electronic method of amplifying signals. The first practical version of such devices was the Audion triode, invented in 1906 by Lee De Forest,[7][8][9] which led to the first amplifiers around 1912.[10] Since the only previous device which was widely used to strengthen a signal was the relay used in telegraph systems, the amplifying vacuum tube was first called an _electron relay_.[11][12][13][14] The terms _amplifier_ and _amplification_, derived from the Latin _amplificare_, (_to enlarge or expand_),[15] were first used for this new capability around 1915 when triodes became widespread.[16]

The amplifying vacuum tube revolutionized electrical technology, creating the new field of electronics, the technology of active electrical devices.[17] It made possible long distance telephone lines, public address systems, radio broadcasting, talking motion pictures, practical audio recording, radar, television, and the first computers. For 50 years virtually all consumer electronic devices used vacuum tubes. Early tube amplifiers often had positive feedback (regeneration), which could increase gain but also make the amplifier unstable and prone to oscillation. Much of the mathematical theory of amplifiers was developed at Bell Telephone Laboratories during the 1920s to 1940s. Distortion levels in early amplifiers were high, usually around 5%, until 1934, when Harold Black developed negative feedback; this allowed the distortion levels to be greatly reduced, at the cost of lower gain. Other advances in the theory of amplification were made by Harry Nyquist and Hendrik Wade Bode.[18]

The vacuum tube was virtually the only amplifying device, other than specialized power devices such as the magnetic amplifier and amplidyne, for 40 years. Power control circuitry used magnetic amplifiers until the latter half of the twentieth century when power semiconductor devices became more economical, with higher operating speeds. The old Shreeve electroacoustic carbon repeaters were used in adjustable amplifiers in telephone subscriber sets for the hearing impaired until the transistor provided smaller and higher quality amplifiers in the 1950s.[19]

The replacement of bulky electron tubes with transistors during the 1960s and 1970s created another revolution in electronics, making possible a large class of portable electronic devices, such as the transistor radio developed in 1954. Today, use of vacuum tubes is limited for some high power applications, such as radio transmitters.

Beginning in the 1970s, more and more transistors were connected on a single chip thereby creating higher scales of integration (small-scale, medium-scale, large-scale, etc.) in integrated circuits. Many amplifiers commercially available today are based on integrated circuits.

For special purposes, other active elements have been used. For example, in the early days of the satellite communication, parametric amplifiers were used. The core circuit was a diode whose capacitance was changed by an RF signal created locally. Under certain conditions, this RF signal provided energy that was modulated by the extremely weak satellite signal received at the earth station.

Advances in digital electronics since the late 20th century provided new alternatives to the traditional linear-gain amplifiers by using digital switching to vary the pulse-shape of fixed amplitude signals, resulting in devices such as the Class-D amplifier.


Ideal

In principle, an amplifier is an electrical two-port network that produces a signal at the output port that is a replica of the signal applied to the input port, but increased in magnitude.

The input port can be idealized as either being a voltage input, which takes no current, with the output proportional to the voltage across the port; or a current input, with no voltage across it, in which the output is proportional to the current through the port. The output port can be idealized as being either a dependent voltage source, with zero source resistance and its output voltage dependent on the input; or a dependent current source, with infinite source resistance and the output current dependent on the input. Combinations of these choices lead to four types of ideal amplifiers.[20] In idealized form they are represented by each of the four types of dependent source used in linear analysis, as shown in the figure, namely:

  Input   Output   Dependent source                          Amplifier type               Gain units
  ------- -------- ----------------------------------------- ---------------------------- ------------

  I       I        Current controlled current source, CCCS   Current amplifier            Unitless

  I       V        Current controlled voltage source, CCVS   Transresistance amplifier    Ohm

  V       I        Voltage controlled current source, VCCS   Transconductance amplifier   Siemens

  V       V        Voltage controlled voltage source, VCVS   Voltage amplifier            Unitless

Each type of amplifier in its ideal form has an ideal input and output resistance that is the same as that of the corresponding dependent source:[21]

  Amplifier type     Dependent source   Input impedance   Output impedance
  ------------------ ------------------ ----------------- ------------------
  Current            CCCS               0                 ∞
  Transresistance    CCVS               0                 0
  Transconductance   VCCS               ∞                 ∞
  Voltage            VCVS               ∞                 0

In real amplifiers the ideal impedances are not possible to achieve, but these ideal elements can be used to construct equivalent circuits of real amplifiers by adding impedances (resistance, capacitance and inductance) to the input and output. For any particular circuit, a small-signal analysis is often used to find the actual impedance. A small-signal AC test current _I_(x)_ is applied to the input or output node, all external sources are set to AC zero, and the corresponding alternating voltage _V_(x)_ across the test current source determines the impedance seen at that node as _R = V_(x) / I_(x)_.[22]

Amplifiers designed to attach to a transmission line at input and output, especially RF amplifiers, do not fit into this classification approach. Rather than dealing with voltage or current individually, they ideally couple with an input or output impedance matched to the transmission line impedance, that is, match _ratios_ of voltage to current. Many real RF amplifiers come close to this ideal. Although, for a given appropriate source and load impedance, RF amplifiers can be characterized as amplifying voltage or current, they fundamentally are amplifying power.[23]


Properties

Amplifier properties are given by parameters that include:

-   Gain, the ratio between the magnitude of output and input signals
-   Bandwidth, the width of the useful frequency range
-   Efficiency, the ratio between the power of the output and total power consumption
-   Linearity, the extent to which the proportion between input and output amplitude is the same for high amplitude and low amplitude input
-   Noise, a measure of undesired noise mixed into the output
-   Output dynamic range, the ratio of the largest and the smallest useful output levels
-   Slew rate, the maximum rate of change of the output
-   Rise time, settling time, ringing and overshoot that characterize the step response
-   Stability, the ability to avoid self-oscillation

Amplifiers are described according to the properties of their inputs, their outputs, and how they relate.[24] All amplifiers have gain, a multiplication factor that relates the magnitude of some property of the output signal to a property of the input signal. The gain may be specified as the ratio of output voltage to input voltage (voltage gain), output power to input power (power gain), or some combination of current, voltage, and power. In many cases the property of the output that varies is dependent on the same property of the input, making the gain unitless (though often expressed in decibels (dB)).

Most amplifiers are designed to be linear. That is, they provide constant gain for any normal input level and output signal. If an amplifier's gain is not linear, the output signal can become distorted. There are, however, cases where variable gain is useful. Certain signal processing applications use exponential gain amplifiers.[25]

Amplifiers are usually designed to function well in a specific application, for example: radio and television transmitters and receivers, high-fidelity ("hi-fi") stereo equipment, microcomputers and other digital equipment, and guitar and other instrument amplifiers. Every amplifier includes at least one active device, such as a vacuum tube or transistor.


Negative feedback

Negative feedback is a technique used in most modern amplifiers to improve bandwidth and distortion and control gain. In a negative feedback amplifier part of the output is fed back and added to the input in opposite phase, subtracting from the input. The main effect is to reduce the overall gain of the system. However, any unwanted signals introduced by the amplifier, such as distortion are also fed back. Since they are not part of the original input, they are added to the input in opposite phase, subtracting them from the input. In this way, negative feedback also reduces nonlinearity, distortion and other errors introduced by the amplifier. Large amounts of negative feedback can reduce errors to the point that the response of the amplifier itself becomes almost irrelevant as long as it has a large gain, and the output performance of the system (the "closed loop performance") is defined entirely by the components in the feedback loop. This technique is particularly used with operational amplifiers (op-amps).

Non-feedback amplifiers can only achieve about 1% distortion for audio-frequency signals. With negative feedback, distortion can typically be reduced to 0.001%. Noise, even crossover distortion, can be practically eliminated. Negative feedback also compensates for changing temperatures, and degrading or nonlinear components in the gain stage, but any change or nonlinearity in the components in the feedback loop will affect the output. Indeed, the ability of the feedback loop to define the output is used to make active filter circuits.

Another advantage of negative feedback is that it extends the bandwidth of the amplifier. The concept of feedback is used in operational amplifiers to precisely define gain, bandwidth, and other parameters entirely based on the components in the feedback loop.

Negative feedback can be applied at each stage of an amplifier to stabilize the operating point of active devices against minor changes in power-supply voltage or device characteristics.

Some feedback, positive or negative, is unavoidable and often undesirable—introduced, for example, by parasitic elements, such as inherent capacitance between input and output of devices such as transistors, and capacitive coupling of external wiring. Excessive frequency-dependent positive feedback can produce parasitic oscillation and turn an amplifier into an oscillator.


Categories

Active devices

All amplifiers include some form of active device: this is the device that does the actual amplification. The active device can be a vacuum tube, discrete solid state component, such as a single transistor, or part of an integrated circuit, as in an op-amp).

Transistor amplifiers (or solid state amplifiers) are the most common type of amplifier in use today. A transistor is used as the active element. The gain of the amplifier is determined by the properties of the transistor itself as well as the circuit it is contained within.

Common active devices in transistor amplifiers include bipolar junction transistors (BJTs) and metal oxide semiconductor field-effect transistors (MOSFETs).

Applications are numerous, some common examples are audio amplifiers in a home stereo or public address system, RF high power generation for semiconductor equipment, to RF and microwave applications such as radio transmitters.

Transistor-based amplification can be realized using various configurations: for example a bipolar junction transistor can realize common base, common collector or common emitter amplification; a MOSFET can realize common gate, common source or common drain amplification. Each configuration has different characteristics.

Vacuum-tube amplifiers (also known as tube amplifiers or valve amplifiers) use a vacuum tube as the active device. While semiconductor amplifiers have largely displaced valve amplifiers for low-power applications, valve amplifiers can be much more cost effective in high power applications such as radar, countermeasures equipment, and communications equipment. Many microwave amplifiers are specially designed valve amplifiers, such as the klystron, gyrotron, traveling wave tube, and crossed-field amplifier, and these microwave valves provide much greater single-device power output at microwave frequencies than solid-state devices.[26] Vacuum tubes remain in use in some high end audio equipment, as well as in musical instrument amplifiers, due to a preference for "tube sound".

Magnetic amplifiers are devices somewhat similar to a transformer where one winding is used to control the saturation of a magnetic core and hence alter the impedance of the other winding.[27]

They have largely fallen out of use due to development in semiconductor amplifiers but are still useful in HVDC control, and in nuclear power control circuitry due to not being affected by radioactivity.

Negative resistances can be used as amplifiers, such as the tunnel diode amplifier.[28][29]

Power amplifiers

in a Smartphone.]] A power amplifier is an amplifier designed primarily to increase the power available to a load. In practice, amplifier power gain depends on the source and load impedances, as well as the inherent voltage and current gain. A radio frequency (RF) amplifier design typically optimizes impedances for power transfer, while audio and instrumentation amplifier designs normally optimize input and output impedance for least loading and highest signal integrity. An amplifier that is said to have a gain of 20 dB might have a voltage gain of 20 dB and an available power gain of much more than 20 dB (power ratio of 100)—yet actually deliver a much lower power gain if, for example, the input is from a 600 Ω microphone and the output connects to a 47 kΩ input socket for a power amplifier. In general the power amplifier is the last 'amplifier' or actual circuit in a signal chain (the output stage) and is the amplifier stage that requires attention to power efficiency. Efficiency considerations lead to the various classes of power amplifier based on the biasing of the output transistors or tubes: see power amplifier classes below.

Audio power amplifiers are typically used to drive loudspeakers. They will often have two output channels and deliver equal power to each. An RF power amplifier is found in radio transmitter final stages. A Servo motor controller: amplifies a control voltage to adjust the speed of a motor, or the position of a motorized system.

Operational amplifiers (op-amps)

]] An operational amplifier is an amplifier circuit which typically has very high open loop gain and differential inputs. Op amps have become very widely used as standardized "gain blocks" in circuits due to their versatility; their gain, bandwidth and other characteristics can be controlled by feedback through an external circuit. Though the term today commonly applies to integrated circuits, the original operational amplifier design used valves, and later designs used discrete transistor circuits.

A fully differential amplifier is similar to the operational amplifier, but also has differential outputs. These are usually constructed using BJTs or FETs.

Distributed amplifiers

These use balanced transmission lines to separate individual single stage amplifiers, the outputs of which are summed by the same transmission line. The transmission line is a balanced type with the input at one end and on one side only of the balanced transmission line and the output at the opposite end is also the opposite side of the balanced transmission line. The gain of each stage adds linearly to the output rather than multiplies one on the other as in a cascade configuration. This allows a higher bandwidth to be achieved than could otherwise be realised even with the same gain stage elements.

Switched mode amplifiers

These nonlinear amplifiers have much higher efficiencies than linear amps, and are used where the power saving justifies the extra complexity. Class-D amplifiers are the main example of this type of amplification.

Negative Resistance Amplifier

Negative Resistance Amplifier is a type of Regenerative Amplifier [30] that can use the feedback between the transistor's source and gate to transform a capacitive impedance on the transistor’s source to a negative resistance on its gate. Compared to other types of amplifiers, this "negative resistance amplifier" will only require a tiny amount of power to achieve very high gain, maintaining a good noise figure at the same time.

Applications

Video amplifiers

Video amplifiers are designed to process video signals and have varying bandwidths depending on whether the video signal is for SDTV, EDTV, HDTV 720p or 1080i/p etc.. The specification of the bandwidth itself depends on what kind of filter is used—and at which point ( or for example) the bandwidth is measured. Certain requirements for step response and overshoot are necessary for an acceptable TV image.[31]

Microwave amplifiers

Traveling wave tube amplifiers (TWTAs) are used for high power amplification at low microwave frequencies. They typically can amplify across a broad spectrum of frequencies; however, they are usually not as tunable as klystrons.[32]

Klystrons are specialized linear-beam vacuum-devices, designed to provide high power, widely tunable amplification of millimetre and sub-millimetre waves. Klystrons are designed for large scale operations and despite having a narrower bandwidth than TWTAs, they have the advantage of coherently amplifying a reference signal so its output may be precisely controlled in amplitude, frequency and phase.

Solid-state devices are used such as GaAs FETs, IMPATT diodes, and others, especially at lower microwave frequencies and power levels on the order of watts.

The maser is a non-electronic microwave amplifier.

Musical instrument amplifiers

Instrument amplifiers are a range of audio power amplifiers used to increase the sound level of musical instruments, for example guitars, during performances.


Classification of amplifier stages and systems

Common terminal

One set of classifications for amplifiers is based on which device terminal is common to both the input and the output circuit. In the case of bipolar junction transistors, the three classes are common emitter, common base, and common collector. For field-effect transistors, the corresponding configurations are common source, common gate, and common drain; for vacuum tubes, common cathode, common grid, and common plate.

The common emitter (or common source, common cathode, etc.) is most often configured to provide amplification of a voltage applied between base and emitter, and the output signal taken between collector and emitter is inverted, relative to the input. The common collector arrangement applies the input voltage between base and collector, and to take the output voltage between emitter and collector. This causes negative feedback, and the output voltage tends to follow the input voltage. This arrangement is also used as the input presents a high impedance and does not load the signal source, though the voltage amplification is less than one. The common-collector circuit is, therefore, better known as an emitter follower, source follower, or cathode follower.

Unilateral or bilateral

An amplifier whose output exhibits no feedback to its input side is described as 'unilateral'. The input impedance of a unilateral amplifier is independent of load, and output impedance is independent of signal source impedance.[33]

An amplifier that uses feedback to connect part of the output back to the input is a _bilateral_ amplifier. Bilateral amplifier input impedance depends on the load, and output impedance on the signal source impedance. All amplifiers are bilateral to some degree; however they may often be modeled as unilateral under operating conditions where feedback is small enough to neglect for most purposes, simplifying analysis (see the common base article for an example).

Inverting or non-inverting

Another way to classify amplifiers is by the phase relationship of the input signal to the output signal. An 'inverting' amplifier produces an output 180 degrees out of phase with the input signal (that is, a polarity inversion or mirror image of the input as seen on an oscilloscope). A 'non-inverting' amplifier maintains the phase of the input signal waveforms. An emitter follower is a type of non-inverting amplifier, indicating that the signal at the emitter of a transistor is following (that is, matching with unity gain but perhaps an offset) the input signal. Voltage follower is also non inverting type of amplifier having unity gain.

This description can apply to a single stage of an amplifier, or to a complete amplifier system.

Function

Other amplifiers may be classified by their function or output characteristics. These functional descriptions usually apply to complete amplifier systems or sub-systems and rarely to individual stages.

-   A SERVO AMPLIFIER indicates an integrated feedback loop to actively control the output at some desired level. A DC servo indicates use at frequencies down to DC levels, where the rapid fluctuations of an audio or RF signal do not occur. These are often used in mechanical actuators, or devices such as DC motors that must maintain a constant speed or torque. An AC SERVO amp. can do this for some AC motors.
-   A LINEAR amplifier responds to different frequency components independently, and does not generate harmonic distortion or intermodulation distortion. No amplifier can provide _perfect_ linearity (even the most linear amplifier has some nonlinearities, since the amplifying devices—transistors or vacuum tubes—follow nonlinear power laws such as square-laws and rely on circuitry techniques to reduce those effects).
-   A NONLINEAR amplifier generates significant distortion and so changes the harmonic content; there are situations where this is useful. Amplifier circuits intentionally providing a non-linear transfer function include:
    -   a device like a silicon controlled rectifier or a transistor used as a switch may be employed to turn either fully _on_ or _off_ a load such as a lamp based on a threshold in a continuously variable input.
    -   a non-linear amplifier in an analog computer or true RMS converter for example can provide a special transfer function, such as logarithmic or square-law.
    -   a Class C RF amplifier may be chosen because it can be very efficient—but is non-linear. Following such an amplifier with a so-called _tank_ tuned circuit can reduce unwanted harmonics (distortion) sufficiently to make it useful in transmitters, or some desired harmonic may be selected by setting the resonant frequency of the tuned circuit to a higher frequency rather than fundamental frequency in frequency multiplier circuits.
    -   Automatic gain control circuits require an amplifier's gain be controlled by the time-averaged amplitude so that the output amplitude varies little when weak stations are being received. The non-linearities are assumed arranged so the relatively small signal amplitude suffers from little distortion (cross-channel interference or intermodulation) yet is still modulated by the relatively large gain-control DC voltage.
    -   AM detector circuits that use amplification such as anode-bend detectors, precision rectifiers and infinite impedance detectors (so excluding _unamplified_ detectors such as cat's-whisker detectors), as well as peak detector circuits, rely on changes in amplification based on the signal's instantaneous amplitude to derive a direct current from an alternating current input.
    -   Operational amplifier comparator and detector circuits.
-   A WIDEBAND amplifier has a precise amplification factor over a wide frequency range, and is often used to boost signals for relay in communications systems. A NARROWBAND amp amplifies a specific narrow range of frequencies, to the exclusion of other frequencies.
-   An RF amplifier amplifies signals in the radio frequency range of the electromagnetic spectrum, and is often used to increase the sensitivity of a receiver or the output power of a transmitter.[34]
-   An AUDIO AMPLIFIER amplifies audio frequencies. This category subdivides into small signal amplification, and power amps that are optimised to driving speakers, sometimes with multiple amps grouped together as separate or bridgeable channels to accommodate different audio reproduction requirements. Frequently used terms within audio amplifiers include:
    -   Preamplifier (preamp.), which may include a phono preamp with RIAA equalization, or tape head preamps with CCIR equalisation filters. They may include filters or tone control circuitry.
    -   Power amplifier (normally drives loudspeakers), headphone amplifiers, and public address amplifiers.
    -   Stereo amplifiers imply two channels of output (left and right), though the term simply means "solid" sound (referring to three-dimensional)—so quadraphonic stereo was used for amplifiers with four channels. 5.1 and 7.1 systems refer to Home theatre systems with 5 or 7 normal spatial channels, plus a subwoofer channel.
-   Buffer amplifiers, which may include emitter followers, provide a high impedance input for a device (perhaps another amplifier, or perhaps an energy-hungry load such as lights) that would otherwise draw too much current from the source. Line drivers are a type of buffer that feeds long or interference-prone interconnect cables, possibly with differential outputs through twisted pair cables.

Interstage coupling method

Amplifiers are sometimes classified by the coupling method of the signal at the input, output, or between stages. Different types of these include:

Resistive-capacitive (RC) coupled amplifier, using a network of resistors and capacitors: By design these amplifiers cannot amplify DC signals as the capacitors block the DC component of the input signal. RC-coupled amplifiers were used very often in circuits with vacuum tubes or discrete transistors. In the days of the integrated circuit a few more transistors on a chip are much cheaper and smaller than a capacitor.
Inductive-capacitive (LC) coupled amplifier, using a network of inductors and capacitors: This kind of amplifier is most often used in selective radio-frequency circuits.
Transformer coupled amplifier, using a transformer to match impedances or to decouple parts of the circuits :Quite often LC-coupled and transformer-coupled amplifiers cannot be distinguished as a transformer is some kind of inductor.
Direct coupled amplifier, using no impedance and bias matching components: This class of amplifier was very uncommon in the vacuum tube days when the anode (output) voltage was at greater than several hundred volts and the grid (input) voltage at a few volts minus. So they were only used if the gain was specified down to DC (e.g., in an oscilloscope). In the context of modern electronics developers are encouraged to use directly coupled amplifiers whenever possible. In FET and CMOS technologies direct coupling is dominant since gates of MOSFETs theoretically pass no current through themselves. Therefore, DC component of the input signals is automatically filtered.

Frequency range

Depending on the frequency range and other properties amplifiers are designed according to different principles.

Frequency ranges down to DC are only used when this property is needed. Amplifiers for direct current signals are vulnerable to minor variations in the properties of components with time. Special methods, such as chopper stabilized amplifiers are used to prevent objectionable drift in the amplifier's properties for DC. "DC-blocking" capacitors can be added to remove DC and sub-sonic frequencies from audio amplifiers.

Depending on the frequency range specified different design principles must be used. Up to the MHz range only "discrete" properties need be considered; e.g., a terminal has an input impedance.

As soon as any connection within the circuit gets longer than perhaps 1% of the wavelength of the highest specified frequency (e.g., at 100 MHz the wavelength is 3 m, so the critical connection length is approx. 3 cm) design properties radically change. For example, a specified length and width of a PCB trace can be used as a selective or impedance-matching entity. Above a few hundred MHz, it gets difficult to use discrete elements, especially inductors. In most cases, PCB traces of very closely defined shapes are used instead (stripline techniques).

The frequency range handled by an amplifier might be specified in terms of bandwidth (normally implying a response that is 3 dB down when the frequency reaches the specified bandwidth), or by specifying a FREQUENCY RESPONSE that is within a certain number of decibels between a lower and an upper frequency (e.g. "20 Hz to 20 kHz plus or minus 1 dB").


Power amplifier classes

Power amplifier circuits (output stages) are classified as A, B, AB and C for analog designs—and class D and E for switching designs. The power amplifier classes are based on the proportion of each input cycle (conduction angle) during which an amplifying device passes current.[35] The image of the conduction angle derives from amplifying a sinusoidal signal. If the device is always on, the conducting angle is 360°. If it is on for only half of each cycle, the angle is 180°. The angle of flow is closely related to the amplifier power efficiency.


Example amplifier circuit

The practical amplifier circuit shown above could be the basis for a moderate-power audio amplifier. It features a typical (though substantially simplified) design as found in modern amplifiers, with a class-AB push–pull output stage, and uses some overall negative feedback. Bipolar transistors are shown, but this design would also be realizable with FETs or valves.

The input signal is coupled through capacitor C1 to the base of transistor Q1. The capacitor allows the AC signal to pass, but blocks the DC bias voltage established by resistors R1 and R2 so that any preceding circuit is not affected by it. Q1 and Q2 form a differential amplifier (an amplifier that multiplies the difference between two inputs by some constant), in an arrangement known as a long-tailed pair. This arrangement is used to conveniently allow the use of negative feedback, which is fed from the output to Q2 via R7 and R8.

The negative feedback into the difference amplifier allows the amplifier to compare the input to the actual output. The amplified signal from Q1 is directly fed to the second stage, Q3, which is a common emitter stage that provides further amplification of the signal and the DC bias for the output stages, Q4 and Q5. R6 provides the load for Q3 (a better design would probably use some form of active load here, such as a constant-current sink). So far, all of the amplifier is operating in class A. The output pair are arranged in class-AB push–pull, also called a complementary pair. They provide the majority of the current amplification (while consuming low quiescent current) and directly drive the load, connected via DC-blocking capacitor C2. The diodes D1 and D2 provide a small amount of constant voltage bias for the output pair, just biasing them into the conducting state so that crossover distortion is minimized. That is, the diodes push the output stage firmly into class-AB mode (assuming that the base-emitter drop of the output transistors is reduced by heat dissipation).

This design is simple, but a good basis for a practical design because it automatically stabilises its operating point, since feedback internally operates from DC up through the audio range and beyond. Further circuit elements would probably be found in a real design that would roll-off the frequency response above the needed range to prevent the possibility of unwanted oscillation. Also, the use of fixed diode bias as shown here can cause problems if the diodes are not both electrically and thermally matched to the output transistors if the output transistors turn on too much, they can easily overheat and destroy themselves, as the full current from the power supply is not limited at this stage.

A common solution to help stabilise the output devices is to include some emitter resistors, typically one ohm or so. Calculating the values of the circuit's resistors and capacitors is done based on the components employed and the intended use of the amp.


Notes on implementation

Any real amplifier is an imperfect realization of an ideal amplifier. An important limitation of a real amplifier is that the output it generates is ultimately limited by the power available from the power supply. An amplifier saturates and clips the output if the input signal becomes too large for the amplifier to reproduce or exceeds operational limits for the device. The power supply may influence the output, so must be considered in the design. The power output from an amplifier cannot exceed its input power.

The amplifier circuit has an "open loop" performance. This is described by various parameters (gain, slew rate, output impedance, distortion, bandwidth, signal-to-noise ratio, etc.). Many modern amplifiers use negative feedback techniques to hold the gain at the desired value and reduce distortion. Negative loop feedback has the intended effect of lowering the output impedance and thereby increasing electrical damping of loudspeaker motion at and near the resonance frequency of the speaker.

When assessing rated amplifier power output, it is useful to consider the applied load, the signal type (e.g., speech or music), required power output duration (i.e., short-time or continuous), and required dynamic range (e.g., recorded or live audio). In high-powered audio applications that require long cables to the load (e.g., cinemas and shopping centres) it may be more efficient to connect to the load at line output voltage, with matching transformers at source and loads. This avoids long runs of heavy speaker cables.

To prevent instability or overheating requires care to ensure solid state amplifiers are adequately loaded. Most have a rated minimum load impedance.

All amplifiers generate heat through electrical losses. The amplifier must dissipate this heat via convection or forced air cooling. Heat can damage or reduce electronic component service life. Designers and installers must also consider heating effects on adjacent equipment.

Different power supply types result in many different methods of bias. Bias is a technique by which active devices are set to operate in a particular region, or by which the DC component of the output signal is set to the midpoint between the maximum voltages available from the power supply. Most amplifiers use several devices at each stage; they are typically matched in specifications except for polarity. Matched inverted polarity devices are called complementary pairs. Class-A amplifiers generally use only one device, unless the power supply is set to provide both positive and negative voltages, in which case a dual device symmetrical design may be used. Class-C amplifiers, by definition, use a single polarity supply.

Amplifiers often have multiple stages in cascade to increase gain. Each stage of these designs may be a different type of amp to suit the needs of that stage. For instance, the first stage might be a class-A stage, feeding a class-AB push–pull second stage, which then drives a class-G final output stage, taking advantage of the strengths of each type, while minimizing their weaknesses.


See also

-   Charge transfer amplifier
-   Distributed amplifier
-   Doherty amplifier
-   Faithful amplification
-   Low-noise amplifier
-   Negative feedback amplifier
-   Optical amplifier
-   Power added efficiency
-   Programmable gain amplifier
-   Tuned amplifier
-   Double-tuned amplifier
-   CMOS Amplifiers


References


External links

-   AES guide to amplifier classes
-   Design and analysis of a basic class D amplifier
-   Conversion: distortion factor to distortion attenuation and THD
-   -   contains an explanation of different amplifier classes

-   -   Anatomy of the power amplifier, including information about classes
-   Tons of Tones - Site explaining non linear distortion stages in Amplifier Models
-   -   tutorials, schematics, examples, and construction details

Electronic_amplifiers Category:Electronic circuits Category:Audiovisual introductions in 1906

[1]

[2]

[3]

[4]

[5] Gherardi B., Jewett F.B., _Telephone Repeaters_, Transactions of the AIEE 38(11), 1 Oct 1919, p.1298

[6]

[7]  The link is to a reprint of the paper in the ''Scientific American Supplement, No. 1665, November 30, 1907, p.348-350, copied on Thomas H. White's United States Early Radio History website

[8]

[9]

[10]

[11]

[12]

[13]

[14] Hong 2001, _Wireless: From Marconi's Black-Box to the Audion_, p. 177

[15]

[16]

[17]

[18]

[19] AT&T, Bell System Practices Section C65.114, _Telephone Sets for Subscribers with Impaired Hearing — 334 Type_

[20]

[21] This table is a "Zwicky box"; in particular, it encompasses all possibilities. See Fritz Zwicky.

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]  Active Directivity of Amplifiers|last=Administrator|website=www.microwaves101.com|access-date=2016-06-20}}

[34]

[35]