An OPERATIONAL AMPLIFIER (often OP-AMP or OPAMP) is a DC-coupled high-gain electronic voltage amplifier with a differential input and, usually, a single-ended output.[1] In this configuration, an op-amp produces an output potential (relative to circuit ground) that is typically hundreds of thousands of times larger than the potential difference between its input terminals. Operational amplifiers had their origins in analog computers, where they were used to perform mathematical operations in many linear, non-linear, and frequency-dependent circuits.

The popularity of the op-amp as a building block in analog circuits is due to its versatility. By using negative feedback, the characteristics of an op-amp circuit, its gain, input and output impedance, bandwidth etc. are determined by external components and have little dependence on temperature coefficients or engineering tolerance in the op-amp itself.

Op-amps are among the most widely used electronic devices today, being used in a vast array of consumer, industrial, and scientific devices. Many standard IC op-amps cost only a few cents in moderate production volume; however, some integrated or hybrid operational amplifiers with special performance specifications may cost over in small quantities.[2] Op-amps may be packaged as components or used as elements of more complex integrated circuits.

The op-amp is one type of differential amplifier. Other types of differential amplifier include the fully differential amplifier (similar to the op-amp, but with two outputs), the instrumentation amplifier (usually built from three op-amps), the isolation amplifier (similar to the instrumentation amplifier, but with tolerance to common-mode voltages that would destroy an ordinary op-amp), and negative-feedback amplifier (usually built from one or more op-amps and a resistive feedback network).


Operation

Op-amp_open-loop_1.svg The amplifier's differential inputs consist of a non-inverting input (+) with voltage _V_₊ and an inverting input (–) with voltage _V__(−); ideally the op-amp amplifies only the difference in voltage between the two, which is called the _differential input voltage_. The output voltage of the op-amp _V__(out) is given by the equation

_V__(out) = _A__(OL)(_V_₊ − _V__(−)),
where _A__(OL) is the open-loop gain of the amplifier (the term "open-loop" refers to the absence of a feedback loop from the output to the input).

Open-loop amplifier

The magnitude of _A__(OL) is typically very large (100,000 or more for integrated circuit op-amps), and therefore even a quite small difference between _V_₊ and _V__(−) drives the amplifier output nearly to the supply voltage. Situations in which the output voltage is equal to or greater than the supply voltage are referred to as _saturation_ of the amplifier. The magnitude of _A__(OL) is not well controlled by the manufacturing process, and so it is impractical to use an open-loop amplifier as a stand-alone differential amplifier.

Without negative feedback, and perhaps with positive feedback for regeneration, an op-amp acts as a comparator. If the inverting input is held at ground (0 V) directly or by a resistor _R__(g), and the input voltage _V__(in) applied to the non-inverting input is positive, the output will be maximum positive; if _V__(in) is negative, the output will be maximum negative. Since there is no feedback from the output to either input, this is an _open-loop_ circuit acting as a comparator.

Closed-loop amplifier

Operational_amplifier_noninverting.svg If predictable operation is desired, negative feedback is used, by applying a portion of the output voltage to the inverting input. The _closed-loop_ feedback greatly reduces the gain of the circuit. When negative feedback is used, the circuit's overall gain and response becomes determined mostly by the feedback network, rather than by the op-amp characteristics. If the feedback network is made of components with values small relative to the op amp's input impedance, the value of the op-amp's open-loop response _A__(OL) does not seriously affect the circuit's performance. The response of the op-amp circuit with its input, output, and feedback circuits to an input is characterized mathematically by a transfer function; designing an op-amp circuit to have a desired transfer function is in the realm of electrical engineering. The transfer functions are important in most applications of op-amps, such as in analog computers. High input impedance at the input terminals and low output impedance at the output terminal(s) are particularly useful features of an op-amp.

In the non-inverting amplifier on the right, the presence of negative feedback via the voltage divider _R__(f), _R__(g) determines the _closed-loop gain_ _A__(CL) = _V__(out) / _V__(in). Equilibrium will be established when _V__(out) is just sufficient to "reach around and pull" the inverting input to the same voltage as _V__(in). The voltage gain of the entire circuit is thus 1 + _R__(f)/_R__(g). As a simple example, if _V__(in) = 1 V and R_(f) = _R__(g), _V__(out) will be 2 V, exactly the amount required to keep _V__(−) at 1 V. Because of the feedback provided by the _R__(f), _R__(g) network, this is a _closed-loop_ circuit.

Another way to analyze this circuit proceeds by making the following (usually valid) assumptions:[3]

-   When an op-amp operates in linear (i.e., not saturated) mode, the difference in voltage between the non-inverting (+) pin and the inverting (−) pin is negligibly small.
-   The input impedance between (+) and (−) pins is much larger than other resistances in the circuit.

The input signal _V__(in) appears at both (+) and (−) pins, resulting in a current _i_ through _R__(g) equal to _V__(in)/_R__(g):

    $i = \frac{V_\text{in}}{R_g}.$

Since Kirchhoff's current law states that the same current must leave a node as enter it, and since the impedance into the (−) pin is near infinity, we can assume practically all of the same current _i_ flows through _R__(f), creating an output voltage

    $V_\text{out} = V_\text{in} + i \times R_f = V_\text{in} + \left(\frac{V_\text{in}}{R_g} \times R_f\right) = V_\text{in} + \frac{V_\text{in} \times R_f} {R_g} = V_\text{in}  \left(1 + \frac{R_f}{R_g}\right).$

By combining terms, we determine the closed-loop gain _A__(CL):

    $A_\text{CL} = \frac{V_\text{out}}{V_\text{in}} = 1 + \frac{R_f}{R_g}.$


Op-amp characteristics

Ideal op-amps

Op-Amp_Internal.svg

An ideal op-amp is usually considered to have the following characteristics:[4][5]

-   Infinite open-loop gain G = _v__(out) / _v__(in)
-   Infinite input impedance R_(in), and so zero input current
-   Zero input offset voltage
-   Infinite output voltage range
-   Infinite bandwidth with zero phase shift and infinite slew rate
-   Zero output impedance R_(out)
-   Zero noise
-   Infinite common-mode rejection ratio (CMRR)
-   Infinite power supply rejection ratio.

These ideals can be summarized by the two "golden rules":

The first rule only applies in the usual case where the op-amp is used in a closed-loop design (negative feedback, where there is a signal path of some sort feeding back from the output to the inverting input). These rules are commonly used as a good first approximation for analyzing or designing op-amp circuits.[6]

None of these ideals can be perfectly realized. A real op-amp may be modeled with non-infinite or non-zero parameters using equivalent resistors and capacitors in the op-amp model. The designer can then include these effects into the overall performance of the final circuit. Some parameters may turn out to have negligible effect on the final design while others represent actual limitations of the final performance that must be evaluated.

Real op-amps

Real op-amps differ from the ideal model in various aspects.

DC imperfections

Real operational amplifiers suffer from several non-ideal effects:

Finite gain: Open-loop gain is infinite in the ideal operational amplifier but finite in real operational amplifiers. Typical devices exhibit open-loop DC gain ranging from 100,000 to over 1 million. So long as the loop gain (i.e., the product of open-loop and feedback gains) is very large, the circuit gain will be determined entirely by the amount of negative feedback (i.e., it will be independent of open-loop gain). In cases where closed-loop gain must be very high, the feedback gain will be very low, and the low feedback gain causes low loop gain; in these cases, the operational amplifier will cease to behave ideally.

Finite input impedances : The _differential input impedance_ of the operational amplifier is defined as the impedance _between_ its two inputs; the _common-mode input impedance_ is the impedance from each input to ground. MOSFET-input operational amplifiers often have protection circuits that effectively short circuit any input differences greater than a small threshold, so the input impedance can appear to be very low in some tests. However, as long as these operational amplifiers are used in a typical high-gain negative feedback application, these protection circuits will be inactive. The input bias and leakage currents described below are a more important design parameter for typical operational amplifier applications.

Non-zero output impedance: Low output impedance is important for low-impedance loads; for these loads, the voltage drop across the output impedance effectively reduces the open loop gain. In configurations with a voltage-sensing negative feedback, the output impedance of the amplifier is effectively lowered; thus, in linear applications, op-amp circuits usually exhibit a very low output impedance.
    Low-impedance outputs typically require high quiescent (i.e., idle) current in the output stage and will dissipate more power, so low-power designs may purposely sacrifice low output impedance.

Input current: Due to biasing requirements or leakage, a small amount of current (typically ~10 nanoamperes for bipolar op-amps, tens of picoamperes (pA) for JFET input stages, and only a few pA for MOSFET input stages) flows into the inputs. When large resistors or sources with high output impedances are used in the circuit, these small currents can produce large unmodeled voltage drops. If the input currents are matched, _and_ the impedance looking _out_ of _both_ inputs are matched, then the voltages produced at each input will be equal. Because the operational amplifier operates on the _difference_ between its inputs, these matched voltages will have no effect. It is more common for the input currents to be slightly mismatched. The difference is called input offset current, and even with matched resistances a small _offset voltage_ (different from the input offset voltage below) can be produced. This offset voltage can create offsets or drifting in the operational amplifier.

Input offset voltage: This voltage, which is what is required across the op-amp's input terminals to drive the output voltage to zero.[7][8] In the perfect amplifier, there would be no input offset voltage. However, it exists in actual op-amps because of imperfections in the differential amplifier that constitutes the input stage of the vast majority of these devices. Input offset voltage creates two problems: First, due to the amplifier's high voltage gain, it virtually assures that the amplifier output will go into saturation if it is operated without negative feedback, even when the input terminals are wired together. Second, in a closed loop, negative feedback configuration, the input offset voltage is amplified along with the signal and this may pose a problem if high precision DC amplification is required or if the input signal is very small.[9]

Common-mode gain: A perfect operational amplifier amplifies only the voltage difference between its two inputs, completely rejecting all voltages that are common to both. However, the differential input stage of an operational amplifier is never perfect, leading to the amplification of these common voltages to some degree. The standard measure of this defect is called the common-mode rejection ratio (denoted CMRR). Minimization of common mode gain is usually important in non-inverting amplifiers (described below) that operate at high amplification.

Power-supply rejection: The output of a perfect operational amplifier will be completely independent from its power supply. Every real operational amplifier has a finite power supply rejection ratio (PSRR) that reflects how well the op-amp can reject changes in its supply voltage.

Temperature effects: All parameters change with temperature. Temperature drift of the input offset voltage is especially important.

Drift: Real op-amp parameters are subject to slow change over time and with changes in temperature, input conditions, etc.

AC imperfections

The op-amp gain calculated at DC does not apply at higher frequencies. Thus, for high-speed operation, more sophisticated considerations must be used in an op-amp circuit design.

Finite bandwidth: All amplifiers have finite bandwidth. To a first approximation, the op-amp has the frequency response of an integrator with gain. That is, the gain of a typical op-amp is inversely proportional to frequency and is characterized by its gain–bandwidth product (GBWP). For example, an op-amp with a GBWP of 1 MHz would have a gain of 5 at 200 kHz, and a gain of 1 at 1 MHz. This dynamic response coupled with the very high DC gain of the op-amp gives it the characteristics of a first-order low-pass filter with very high DC gain and low cutoff frequency given by the GBWP divided by the DC gain.The finite bandwidth of an op-amp can be the source of several problems, including:Typical low-cost, general-purpose op-amps exhibit a GBWP of a few megahertz. Specialty and high-speed op-amps exist that can achieve a GBWP of hundreds of megahertz. For very high-frequency circuits, a current-feedback operational amplifier is often used.

Noise: Amplifiers generate random voltage at the output even when there is no signal applied. This can be due to thermal noise and flicker noise of the devices. For applications with high gain or high bandwidth, noise becomes a very important consideration.

Input capacitance: Most important for high frequency operation because it reduces input impedance and may cause phase shifts.

Common-mode gain: See DC imperfections, above.

Power-supply rejection: With increasing frequency the power-supply rejection usually gets worse. So it can be important to keep the supply clean of higher frequency ripples and signals, e.g. by the use of bypass capacitors.

Non-linear imperfections

Inverting_Amplifier_Signal_Clipping.png

Saturation:Output voltage is limited to a minimum and maximum value close to the power supply voltages.[10] The output of older op-amps can reach to within one or two volts of the supply rails. The output of newer so-called "rail to rail" op-amps can reach to within millivolts of the supply rails when providing low output currents.
Slewing: The amplifier's output voltage reaches its maximum rate of change, the slew rate, usually specified in volts per microsecond. When slewing occurs, further increases in the input signal have no effect on the rate of change of the output. Slewing is usually caused by the input stage saturating; the result is a constant current  driving a capacitance  in the amplifier (especially those capacitances used to implement its frequency compensation); the slew rate is limited by  _i_/_C_}}. Slewing is associated with the _large-signal_ performance of an op-amp. Consider, for example, an op-amp configured for a gain of 10. Let the input be a 1V, 100 kHz sawtooth wave. That is, the amplitude is 1V and the period is 10 microseconds. Accordingly, the rate of change (i.e., the slope) of the input is 0.1V per microsecond. After 10× amplification, the output should be a 10V, 100 kHz sawtooth, with a corresponding slew rate of 1V per microsecond. However, the classic 741 op-amp has a 0.5V per microsecond slew rate specification, so that its output can rise to no more than 5V in the sawtooth's 10 microsecond period. Thus, if one were to measure the output, it would be a 5V, 100 kHz sawtooth, rather than a 10V, 100 kHz sawtooth.Next consider the same amplifier and 100 kHz sawtooth, but now the input amplitude is 100mV rather than 1V. After 10× amplification the output is a 1V, 100 kHz sawtooth with a corresponding slew rate of 0.1V per microsecond. In this instance, the 741 with its 0.5V per microsecond slew rate will amplify the input properly. Modern high speed op-amps can have slew rates in excess of 5,000V per microsecond. However, it is more common for op-amps to have slew rates in the range 5–100V per microsecond. For example, the general purpose TL081 op-amp has a slew rate of 13V per microsecond. As a general rule, low power and small bandwidth op-amps have low slew rates. As an example, the LT1494 micropower op-amp consumes 1.5 microamp but has a 2.7 kHz gain-bandwidth product and a 0.001V per microsecond slew rate.

Non-linear input-output relationship: The output voltage may not be accurately proportional to the difference between the input voltages. It is commonly called distortion when the input signal is a waveform. This effect will be very small in a practical circuit where substantial negative feedback is used.

Phase reversal: In some integrated op-amps, when the published common mode voltage is violated (e.g., by one of the inputs being driven to one of the supply voltages), the output may slew to the opposite polarity from what is expected in normal operation.

  Under such conditions, negative feedback becomes positive, likely causing the circuit to "lock up" in that state.

Power considerations

Limited output current: The output current must be finite. In practice, most op-amps are designed to limit the output current so as not to exceed a specified level – around 25 mA for a type 741 IC op-amp – thus protecting the op-amp and associated circuitry from damage. Modern designs are electronically more rugged than earlier implementations and some can sustain direct short circuits on their outputs without damage.

Output sink current: The output sink current is the maximum current allowed to sink into the output stage. Some manufacturers show the output voltage vs. the output sink current plot, which gives an idea of the output voltage when it is sinking current from another source into the output pin.
Limited dissipated power: The output current flows through the op-amp's internal output impedance, generating heat which must be dissipated. If the op-amp dissipates too much power, then its temperature will increase above some safe limit. The op-amp may enter thermal shutdown, or it may be destroyed.

Modern integrated FET or MOSFET op-amps approximate more closely the ideal op-amp than bipolar ICs when it comes to input impedance and input bias currents. Bipolars are generally better when it comes to input _voltage_ offset, and often have lower noise. Generally, at room temperature, with a fairly large signal, and limited bandwidth, FET and MOSFET op-amps now offer better performance.


Internal circuitry of 741-type op-amp

OpAmpTransistorLevel_Colored_Labeled.svgs; differential amplifier; class A gain stage; voltage level shifter; output stage.]] Sourced by many manufacturers, and in multiple similar products, an example of a bipolar transistor operational amplifier is the 741 integrated circuit designed in 1968 by David Fullagar at Fairchild Semiconductor after Bob Widlar's LM301 integrated circuit design.[11] In this discussion, we use the parameters of the Hybrid-pi model to characterize the small-signal, grounded emitter characteristics of a transistor. In this model, the current gain of a transistor is denoted _h__(fe), more commonly called the β.[12]

Architecture

A small-scale integrated circuit, the 741 op-amp shares with most op-amps an internal structure consisting of three gain stages:[13]

1.  Differential amplifier (outlined dark blue) — provides high differential amplification (gain), with rejection of common-mode signal, low noise, high input impedance, and drives a
2.  Voltage amplifier (outlined magenta) — provides high voltage gain, a single-pole frequency roll-off, and in turn drives the
3.  Output amplifier (outlined cyan and green) — provides high current gain (low output impedance), along with output current limiting, and output short-circuit protection.

Additionally, it contains current mirror (outlined red) bias circuitry and compensation capacitor (30 pF).

Differential amplifier

The input stage consists of a cascaded differential amplifier (outlined in blue) followed by a current-mirror active load. This constitutes a transconductance amplifier, turning a differential voltage signal at the bases of Q1, Q2 into a current signal into the base of Q15.

It entails two cascaded transistor pairs, satisfying conflicting requirements. The first stage consists of the matched NPN emitter follower pair Q1, Q2 that provide high input impedance. The second is the matched PNP common-base pair Q3, Q4 that eliminates the undesirable Miller effect; it drives an active load Q7 plus matched pair Q5, Q6.

That active load is implemented as a modified Wilson current mirror; its role is to convert the (differential) input current signal to a single-ended signal without the attendant 50% losses (increasing the op-amp's open-loop gain by 3 dB).[14] Thus, a small-signal differential current in Q3 versus Q4 appears summed (doubled) at the base of Q15, the input of the voltage gain stage.

Voltage amplifier

The (class-A) voltage gain stage (outlined in magenta) consists of the two NPN transistors Q15/Q19 connected in a Darlington configuration and uses the output side of current mirror Q12/Q13 as its collector (dynamic) load to achieve its high voltage gain. The output sink transistor Q20 receives its base drive from the common collectors of Q15 and Q19; the level-shifter Q16 provides base drive for the output source transistor Q14.

The transistor Q22 prevents this stage from delivering excessive current to Q20 and thus limits the output sink current.

Output amplifier

The output stage (Q14, Q20, outlined in cyan) is a Class AB complementary-symmetry amplifier. It provides an output drive with impedance of ≈50Ω, in essence, current gain. Transistor Q16 (outlined in green) provides the quiescent current for the output transistors, and Q17 provides output current limiting.

Biasing circuits

Provide appropriate quiescent current for each stage of the op-amp.

The resistor (39 kΩ) connecting the (diode-connected) Q11 and Q12, and the given supply voltage (_V__(_S_+) − _V__(_S_−)), determine the current in the current mirrors, (matched pairs) Q10/Q11 and Q12/Q13. The collector current of Q11, _i_₁₁ × 39 kΩ = _V__(_S_+) − _V__(_S_−) − 2 _V__(BE). For the typical _V__(_S_) = ±20 V, the standing current in Q11/Q12 (as well as in Q13) would be ~1 mA. A supply current for a typical 741 of about 2 mA agrees with the notion that these two bias currents dominate the quiescent supply current.

Transistors Q11 and Q10 form a Widlar current mirror, with quiescent current in Q10 _i_₁₀ such that ln(_i_₁₁ / _i_₁₀) = _i_₁₀ × 5 kΩ / 28 mV, where 5 kΩ represents the emitter resistor of Q10, and 28 mV is V_(T), the thermal voltage at room temperature. In this case _i_₁₀ ≈ 20 μA.

Differential amplifier

The biasing circuit of this stage is set by a feedback loop that forces the collector currents of Q10 and Q9 to (nearly) match. The small difference in these currents provides the drive for the common base of Q3/Q4 (note that the base drive for input transistors Q1/Q2 is the input bias current and must be sourced externally). The summed quiescent currents of Q1/Q3 plus Q2/Q4 is mirrored from Q8 into Q9, where it is summed with the collector current in Q10, the result being applied to the bases of Q3/Q4.

The quiescent currents of Q1/Q3 (resp., Q2/Q4) _i_₁ will thus be half of _i_₁₀, of order ~10 μA. Input bias current for the base of Q1 (resp. Q2) will amount to _i_₁ / β; typically ~50 nA, implying a current gain _h__(fe) ≈ 200 for Q1(Q2).

This feedback circuit tends to draw the common base node of Q3/Q4 to a voltage _V__(com) − 2 _V__(BE), where _V__(com) is the input common-mode voltage. At the same time, the magnitude of the quiescent current is relatively insensitive to the characteristics of the components Q1–Q4, such as _h__(fe), that would otherwise cause temperature dependence or part-to-part variations.

Transistor Q7 drives Q5 and Q6 into conduction until their (equal) collector currents match that of Q1/Q3 and Q2/Q4. The quiescent current in Q7 is _V__(BE) / 50 kΩ, about 35 μA, as is the quiescent current in Q15, with its matching operating point. Thus, the quiescent currents are pairwise matched in Q1/Q2, Q3/Q4, Q5/Q6, and Q7/Q15.

Voltage amplifier

Quiescent currents in Q16 and Q19 are set by the current mirror Q12/Q13, which is running at ~1 mA. Through some mechanism, the collector current in Q19 tracks that standing current.

Output amplifier

In the circuit involving Q16 (variously named rubber diode or _V__(BE) multiplier), the 4.5 kΩ resistor must be conducting about 100 μA, with the Q16 _V__(BE) roughly 700 mV. Then the _V__(CB) must be about 0.45 V and _V__(CE) at about 1.0 V. Because the Q16 collector is driven by a current source and the Q16 emitter drives into the Q19 collector current sink, the Q16 transistor establishes a voltage difference between Q14 base and Q20 base of ~1 V, regardless of the common-mode voltage of Q14/Q20 base. The standing current in Q14/Q20 will be a factor exp(100 mV / V_(T)) ≈ 36 smaller than the 1 mA quiescent current in the class A portion of the op amp. This (small) standing current in the output transistors establishes the output stage in class AB operation and reduces the crossover distortion of this stage.

Small-signal differential mode

A small differential input voltage signal gives rise, through multiple stages of current amplification, to a much larger voltage signal on output.

Input impedance

The input stage with Q1 and Q3 is similar to an emitter-coupled pair (long-tailed pair), with Q2 and Q4 adding some degenerating impedance. The input impedance is relatively high because of the small current through Q1-Q4. A typical 741 op amp has a differential input impedance of about 2 MΩ. The common mode input impedance is even higher, as the input stage works at an essentially constant current.

Differential amplifier

A differential voltage _V__(In) at the op-amp inputs (pins 3 and 2, respectively) gives rise to a small differential current in the bases of Q1 and Q2 _i__(In) ≈ _V__(In) / (2 _h__(ie) × _h__(fe)). This differential base current causes a change in the differential collector current in each leg by _i__(In) × _h__(fe). Introducing the transconductance of Q1, _g__(_m_) = _h__(fe) / _h__(ie), the (small-signal) current at the base of Q15 (the input of the voltage gain stage) is _V__(In) × _g__(_m_) / 2.

This portion of the op amp cleverly changes a differential signal at the op amp inputs to a single-ended signal at the base of Q15, and in a way that avoids wastefully discarding the signal in either leg. To see how, notice that a small negative change in voltage at the inverting input (Q2 base) drives it out of conduction, and this incremental decrease in current passes directly from Q4 collector to its emitter, resulting in a decrease in base drive for Q15. On the other hand, a small positive change in voltage at the non-inverting input (Q1 base) drives this transistor into conduction, reflected in an increase in current at the collector of Q3. This current drives Q7 further into conduction, which turns on current mirror Q5/Q6. Thus, the increase in Q3 emitter current is mirrored in an increase in Q6 collector current; the increased collector currents shunts more from the collector node and results in a decrease in base drive current for Q15. Besides avoiding wasting 3 dB of gain here, this technique decreases common-mode gain and feedthrough of power supply noise. <!-- The input voltage sources are connected through two "diode" strings, each of them consisting of two connected in series base-emitter junctions (Q1-Q3 and Q2-Q4), to the common point of Q3/Q4 bases. So, if the input voltages change slightly in opposite directions, Q3/Q4 bases stay at relatively constant voltage and the common base current does not change as well; it only vigorously steers between Q3/Q4 bases and makes the common quiescent current distribute between Q3/Q4 collectors in the same proportion.[15] The current mirror inverts Q3 collector current and tries to pass it through Q4. In the middle point between Q4 and Q6, the signal currents (current changes) of Q3 and Q4 are subtracted. In this case (differential input signal), they are equal and opposite. Thus, the difference is twice the individual signal currents (Δ_I_ − (−Δ_I_) = 2Δ_I_)<! -- if signals equal and opposite, their sum would be zero. Must explain the mirror's gain. -- > and the differential to single ended conversion is completed without gain losses. The open circuit signal voltage appearing at this point is given by the product of the subtracted signal currents and the total circuit impedance (the paralleled collector resistances of Q4 and Q6). Since the collectors of Q4 and Q6 appear as high differential resistances to the signal current (Q4 and Q6 behave as current sources), the open circuit voltage gain of this stage is very high.[16]

More intuitively, the transistor Q6 can be considered as a duplicate of Q3 and the combination of Q4 and Q6 can be thought as of a varying voltage divider composed of two voltage-controlled resistors. For differential input signals, they vigorously change their instant resistances in opposite directions but the total resistance stays constant (like a potentiometer with quickly moving slider). As a result, the current stays constant as well but the voltage at the middle point changes vigorously. As the two resistance changes are equal and opposite, the effective voltage change is twice the individual change. -->

Voltage amplifier

A current signal _i_ at Q15's base gives rise to a current in Q19 of order _i_ × β² (the product of the _h__(fe) of each of Q15 and Q19, which are connected in a Darlington pair). This current signal develops a voltage at the bases of output transistors Q14/Q20 proportional to the _h__(ie) of the respective transistor.

Output amplifier

Output transistors Q14 and Q20 are each configured as an emitter follower, so no voltage gain occurs there; instead, this stage provides current gain, equal to the _h__(fe) of Q14 (resp. Q20).

The output impedance is not zero, as it would be in an ideal op-amp, but with negative feedback it approaches zero at low frequencies.

Overall open-loop voltage gain

The net open-loop small-signal voltage gain of the op amp involves the product of the current gain _h__(fe) of some 4 transistors. In practice, the voltage gain for a typical 741-style op amp is of order 200,000, and the current gain, the ratio of input impedance (≈2−6 MΩ) to output impedance (≈50Ω) provides yet more (power) gain.

Other linear characteristics

Small-signal common mode gain

The ideal op amp has infinite common-mode rejection ratio, or zero common-mode gain.

In the present circuit, if the input voltages change in the same direction, the negative feedback makes Q3/Q4 base voltage follow (with 2_V__(BE) below) the input voltage variations. Now the output part (Q10) of Q10-Q11 current mirror keeps up the common current through Q9/Q8 constant in spite of varying voltage. Q3/Q4 collector currents, and accordingly the output current at the base of Q15, remain unchanged.

In the typical 741 op amp, the common-mode rejection ratio is 90 dB, implying an open-loop common-mode voltage gain of about 6.

Frequency compensation

The innovation of the Fairchild μA741 was the introduction of frequency compensation via an on-chip (monolithic) capacitor, simplifying application of the op amp by eliminating the need for external components for this function. The 30 pF capacitor stabilizes the amplifier via Miller compensation and functions in a manner similar to an op-amp integrator circuit. Also known as 'dominant pole compensation' because it introduces a pole that masks (dominates) the effects of other poles into the open loop frequency response; in a 741 op amp this pole can be as low as 10 Hz (where it causes a −3 dB loss of open loop voltage gain).

This internal compensation is provided to achieve unconditional stability of the amplifier in negative feedback configurations where the feedback network is non-reactive and the closed loop gain is unity or higher. By contrast, amplifiers requiring external compensation, such as the μA748, may require external compensation or closed-loop gains significantly higher than unity.

Input offset voltage

The "offset null" pins may be used to place external resistors (typically in the form of the two ends of a potentiometer, with the slider connected to _V__(_S_–)) in parallel with the emitter resistors of Q5 and Q6, to adjust the balance of the Q5/Q6 current mirror. The potentiometer is adjusted such that the output is null (midrange) when the inputs are shorted together.

Non-linear characteristics

Input breakdown voltage

The transistors Q3, Q4 help to increase the reverse _V__(BE) rating: the base-emitter junctions of the NPN transistors Q1 and Q2 break down at around 7V, but the PNP transistors Q3 and Q4 have _V__(BE) breakdown voltages around 50 V.[17]

Output-stage voltage swing and current limiting

Variations in the quiescent current with temperature, or between parts with the same type number, are common, so crossover distortion and quiescent current may be subject to significant variation.

The output range of the amplifier is about one volt less than the supply voltage, owing in part to _V__(BE) of the output transistors Q14 and Q20.

The 25 Ω resistor at the Q14 emitter, along with Q17, acts to limit Q14 current to about 25 mA; otherwise, Q17 conducts no current.

Current limiting for Q20 is performed in the voltage gain stage: Q22 senses the voltage across Q19's emitter resistor (50Ω); as it turns on, it diminishes the drive current to Q15 base.

Later versions of this amplifier schematic may show a somewhat different method of output current limiting.

Applicability considerations

While the 741 was historically used in audio and other sensitive equipment, such use is now rare because of the improved noise performance of more modern op-amps. Apart from generating noticeable hiss, 741s and other older op-amps may have poor common-mode rejection ratios and so will often introduce cable-borne mains hum and other common-mode interference, such as switch 'clicks', into sensitive equipment.

The "741" has come to often mean a generic op-amp IC (such as μA741, LM301, 558, LM324, TBA221 — or a more modern replacement such as the TL071). The description of the 741 output stage is qualitatively similar for many other designs (that may have quite different input stages), except:

-   Some devices (μA748, LM301, LM308) are not internally compensated (require an external capacitor from output to some point within the operational amplifier, if used in low closed-loop gain applications).
-   Some modern devices have "rail-to-rail output" capability, meaning that the output can range from within a few millivolts of the positive supply voltage to within a few millivolts of the negative supply voltage.


Classification

Op-amps may be classified by their construction:

-   discrete (built from individual transistors or tubes/valves)
-   IC (fabricated in an Integrated circuit) — most common
-   hybrid

IC op-amps may be classified in many ways, including:

-   Military, Industrial, or Commercial grade (for example: the LM301 is the commercial grade version of the LM101, the LM201 is the industrial version). This may define operating temperature ranges and other environmental or quality factors.
-   Classification by package type may also affect environmental hardiness, as well as manufacturing options; DIP, and other through-hole packages are tending to be replaced by surface-mount devices.
-   Classification by internal compensation: op-amps may suffer from high frequency instability in some negative feedback circuits unless a small compensation capacitor modifies the phase and frequency responses. Op-amps with a built-in capacitor are termed "_compensated_", and allow circuits above some specified closed-loop gain to operate stably with no external capacitor. In particular, op-amps that are stable even with a closed loop gain of 1 are called "unity gain compensated".
-   Single, dual and quad versions of many commercial op-amp IC are available, meaning 1, 2 or 4 operational amplifiers are included in the same package.
-   Rail-to-rail input (and/or output) op-amps can work with input (and/or output) signals very close to the power supply rails.
-   CMOS op-amps (such as the CA3140E) provide extremely high input resistances, higher than JFET-input op-amps, which are normally higher than bipolar-input op-amps.
-   other varieties of op-amp include programmable op-amps (simply meaning the quiescent current, bandwidth and so on can be adjusted by an external resistor).
-   manufacturers often tabulate their op-amps according to purpose, such as low-noise pre-amplifiers, wide bandwidth amplifiers, and so on.


Applications

Generic_741_pinout_top.png pinout for 741-type operational amplifier]]

Use in electronics system design

The use of op-amps as circuit blocks is much easier and clearer than specifying all their individual circuit elements (transistors, resistors, etc.), whether the amplifiers used are integrated or discrete circuits. In the first approximation op-amps can be used as if they were ideal differential gain blocks; at a later stage limits can be placed on the acceptable range of parameters for each op-amp.

Circuit design follows the same lines for all electronic circuits. A specification is drawn up governing what the circuit is required to do, with allowable limits. For example, the gain may be required to be 100 times, with a tolerance of 5% but drift of less than 1% in a specified temperature range; the input impedance not less than one megohm; etc.

A basic circuit is designed, often with the help of circuit modeling (on a computer). Specific commercially available op-amps and other components are then chosen that meet the design criteria within the specified tolerances at acceptable cost. If not all criteria can be met, the specification may need to be modified.

A prototype is then built and tested; changes to meet or improve the specification, alter functionality, or reduce the cost, may be made.

Applications without using any feedback

That is, the op-amp is being used as a voltage comparator. Note that a device designed primarily as a comparator may be better if, for instance, speed is important or a wide range of input voltages may be found, since such devices can quickly recover from full on or full off ("saturated") states.

A _voltage level detector_ can be obtained if a reference voltage _V__(ref) is applied to one of the op-amp's inputs. This means that the op-amp is set up as a comparator to detect a positive voltage. If the voltage to be sensed, _E__(i), is applied to op amp's (+) input, the result is a noninverting positive-level detector: when _E__(i) is above _V__(ref), _V__(O) equals +_V__(sat); when _E__(i) is below _V__(ref), _V__(O) equals −_V__(sat). If _E__(i) is applied to the inverting input, the circuit is an inverting positive-level detector: When _E__(i) is above _V__(ref), _V__(O) equals −_V__(sat).

A _zero voltage level detector_ (_E__(i) = 0) can convert, for example, the output of a sine-wave from a function generator into a variable-frequency square wave. If _E__(i) is a sine wave, triangular wave, or wave of any other shape that is symmetrical around zero, the zero-crossing detector's output will be square. Zero-crossing detection may also be useful in triggering TRIACs at the best time to reduce mains interference and current spikes.

Positive-feedback applications

Op-Amp_Schmitt_Trigger.svg

Another typical configuration of op-amps is with positive feedback, which takes a fraction of the output signal back to the non-inverting input. An important application of it is the comparator with hysteresis, the Schmitt trigger. Some circuits may use _positive_ feedback and _negative_ feedback around the same amplifier, for example triangle-wave oscillators and active filters.

Because of the wide slew range and lack of positive feedback, the response of all the open-loop level detectors described above will be relatively slow. External overall positive feedback may be applied, but (unlike internal positive feedback that may be applied within the latter stages of a purpose-designed comparator) this markedly affects the accuracy of the zero-crossing detection point. Using a general-purpose op-amp, for example, the frequency of _E__(i) for the sine to square wave converter should probably be below 100 Hz.

Negative-feedback applications

Non-inverting amplifier

Op-Amp_Non-Inverting_Amplifier.svg In a non-inverting amplifier, the output voltage changes in the same direction as the input voltage.

The gain equation for the op-amp is

_V__(out) = _A__(OL)(_V_₊ − _V__(−)).

However, in this circuit _V__(−) is a function of _V__(out) because of the negative feedback through the _R_₁ _R_₂ network. _R_₁ and _R_₂ form a voltage divider, and as _V__(−) is a high-impedance input, it does not load it appreciably. Consequently

_V__(−) = _β__V__(out),

where

$$\beta = \frac{R_1}{R_1 + R_2}.$$

Substituting this into the gain equation, we obtain

_V__(out) = _A__(OL)(_V__(in) − _β__V__(out)).

Solving for V_(out):

$$V_\text{out} = V_\text{in} \left( \frac{1}{\beta + \frac{1}{A_\text{OL}}} \right).$$

If A_(OL) is very large, this simplifies to

$$V_\text{out} \approx \frac{V_\text{in}}{\beta}
                     = \frac{V_\text{in}}{\frac{R_1}{R_1 + R_2}}
                     = V_\text{in} \left(1 + \frac{R_2}{R_1}\right).$$

The non-inverting input of the operational amplifier needs a path for DC to ground; if the signal source does not supply a DC path, or if that source requires a given load impedance, then the circuit will require another resistor from the non-inverting input to ground. When the operational amplifier's input bias currents are significant, then the DC source resistances driving the inputs should be balanced.[18] The ideal value for the feedback resistors (to give minimal offset voltage) will be such that the two resistances in parallel roughly equal the resistance to ground at the non-inverting input pin. That ideal value assumes the bias currents are well matched, which may not be true for all op-amps.[19]

Inverting amplifier

Op-Amp_Inverting_Amplifier.svg

In an inverting amplifier, the output voltage changes in an opposite direction to the input voltage.

As with the non-inverting amplifier, we start with the gain equation of the op-amp:

_V__(out) = _A__(OL)(_V_₊ − _V__(−)).

This time, _V__(−) is a function of both _V__(out) and _V__(in) due to the voltage divider formed by _R__(f) and _R__(in). Again, the op-amp input does not apply an appreciable load, so

$$V_- = \frac{1}{R_\text{f} + R_\text{in}} \left( R_\text{f} V_\text{in} + R_\text{in} V_\text{out} \right).$$

Substituting this into the gain equation and solving for V_(out):

$$V_\text{out} = - V_\text{in} \cdot \frac{A_\text{OL} R_\text{f}}{R_\text{f} + R_\text{in} + A_\text{OL} R_\text{in}}.$$

If A_(OL) is very large, this simplifies to

$$V_\text{out} \approx -V_\text{in} \frac{R_\text{f}}{R_\text{in}}.$$

A resistor is often inserted between the non-inverting input and ground (so both inputs "see" similar resistances), reducing the input offset voltage due to different voltage drops due to bias current, and may reduce distortion in some op-amps.

A DC-blocking capacitor may be inserted in series with the input resistor when a frequency response down to DC is not needed and any DC voltage on the input is unwanted. That is, the capacitive component of the input impedance inserts a DC zero and a low-frequency pole that gives the circuit a bandpass or high-pass characteristic.

The potentials at the operational amplifier inputs remain virtually constant (near ground) in the inverting configuration. The constant operating potential typically results in distortion levels that are lower than those attainable with the non-inverting topology.

Other applications

-   audio- and video-frequency pre-amplifiers and buffers
-   differential amplifiers
-   differentiators and integrators
-   filters
-   precision rectifiers
-   precision peak detectors
-   voltage and current regulators
-   analog calculators
-   analog-to-digital converters
-   digital-to-analog converters
-   Voltage clamping
-   oscillators and waveform generators
-   clipper
-   clamper(dc inserter or restorer)
-   LOG and ANTILOG amplifiers

Most single, dual and quad op-amps available have a standardized pin-out which permits one type to be substituted for another without wiring changes. A specific op-amp may be chosen for its open loop gain, bandwidth, noise performance, input impedance, power consumption, or a compromise between any of these factors.


Historical timeline

1941: A VACUUM TUBE OP-AMP. An op-amp, defined as a general-purpose, DC-coupled, high gain, inverting feedback amplifier, is first found in "Summing Amplifier" filed by Karl D. Swartzel Jr. of Bell Labs in 1941. This design used three vacuum tubes to achieve a gain of and operated on voltage rails of . It had a single inverting input rather than differential inverting and non-inverting inputs, as are common in today's op-amps. Throughout World War II, Swartzel's design proved its value by being liberally used in the M9 artillery director designed at Bell Labs. This artillery director worked with the SCR584 radar system to achieve extraordinary hit rates (near 90%) that would not have been possible otherwise.[20]

K2-w_Vacuum_Tube_Op-amp.jpg

1947: AN OP-AMP WITH AN EXPLICIT NON-INVERTING INPUT. In 1947, the operational amplifier was first formally defined and named in a paper[21] by John R. Ragazzini of Columbia University. In this same paper a footnote mentioned an op-amp design by a student that would turn out to be quite significant. This op-amp, designed by Loebe Julie, was superior in a variety of ways. It had two major innovations. Its input stage used a long-tailed triode pair with loads matched to reduce drift in the output and, far more importantly, it was the first op-amp design to have two inputs (one inverting, the other non-inverting). The differential input made a whole range of new functionality possible, but it would not be used for a long time due to the rise of the chopper-stabilized amplifier.[22]

1949: A CHOPPER-STABILIZED OP-AMP. In 1949, Edwin A. Goldberg designed a chopper-stabilized op-amp.[23] This set-up uses a normal op-amp with an additional AC amplifier that goes alongside the op-amp. The chopper gets an AC signal from DC by switching between the DC voltage and ground at a fast rate (60 Hz or 400 Hz). This signal is then amplified, rectified, filtered and fed into the op-amp's non-inverting input. This vastly improved the gain of the op-amp while significantly reducing the output drift and DC offset. Unfortunately, any design that used a chopper couldn't use their non-inverting input for any other purpose. Nevertheless, the much improved characteristics of the chopper-stabilized op-amp made it the dominant way to use op-amps. Techniques that used the non-inverting input regularly would not be very popular until the 1960s when op-amp ICs started to show up in the field.

1953: A COMMERCIALLY AVAILABLE OP-AMP. In 1953, vacuum tube op-amps became commercially available with the release of the model K2-W from George A. Philbrick Researches, Incorporated. The designation on the devices shown, GAP/R, is an acronym for the complete company name. Two nine-pin 12AX7 vacuum tubes were mounted in an octal package and had a model K2-P chopper add-on available that would effectively "use up" the non-inverting input. This op-amp was based on a descendant of Loebe Julie's 1947 design and, along with its successors, would start the widespread use of op-amps in industry.

Discrete_opamp.png

1961: A DISCRETE IC OP-AMP. With the birth of the transistor in 1947, and the silicon transistor in 1954, the concept of ICs became a reality. The introduction of the planar process in 1959 made transistors and ICs stable enough to be commercially useful. By 1961, solid-state, discrete op-amps were being produced. These op-amps were effectively small circuit boards with packages such as edge connectors. They usually had hand-selected resistors in order to improve things such as voltage offset and drift. The P45 (1961) had a gain of 94 dB and ran on ±15 V rails. It was intended to deal with signals in the range of .

1961: A VARACTOR BRIDGE OP-AMP. There have been many different directions taken in op-amp design. Varactor bridge op-amps started to be produced in the early 1960s.[24][25] They were designed to have extremely small input current and are still amongst the best op-amps available in terms of common-mode rejection with the ability to correctly deal with hundreds of volts at their inputs.

Modular_opamp.png

1962: AN OP-AMP IN A POTTED MODULE. By 1962, several companies were producing modular potted packages that could be plugged into printed circuit boards. These packages were crucially important as they made the operational amplifier into a single black box which could be easily treated as a component in a larger circuit.

1963: A MONOLITHIC IC OP-AMP. In 1963, the first monolithic IC op-amp, the μA702 designed by Bob Widlar at Fairchild Semiconductor, was released. Monolithic ICs consist of a single chip as opposed to a chip and discrete parts (a discrete IC) or multiple chips bonded and connected on a circuit board (a hybrid IC). Almost all modern op-amps are monolithic ICs; however, this first IC did not meet with much success. Issues such as an uneven supply voltage, low gain and a small dynamic range held off the dominance of monolithic op-amps until 1965 when the μA709[26] (also designed by Bob Widlar) was released.

1968: RELEASE OF THE ΜA741. The popularity of monolithic op-amps was further improved upon the release of the LM101 in 1967, which solved a variety of issues, and the subsequent release of the μA741 in 1968. The μA741 was extremely similar to the LM101 except that Fairchild's facilities allowed them to include a 30 pF compensation capacitor inside the chip instead of requiring external compensation. This simple difference has made the 741 _the_ canonical op-amp and many modern amps base their pinout on the 741s. The μA741 is still in production, and has become ubiquitous in electronics—many manufacturers produce a version of this classic chip, recognizable by part numbers containing _741_. The same part is manufactured by several companies.

1970: FIRST HIGH-SPEED, LOW-INPUT CURRENT FET DESIGN. In the 1970s high speed, low-input current designs started to be made by using FETs. These would be largely replaced by op-amps made with MOSFETs in the 1980s. Hybrid_opamp.png

1972: SINGLE SIDED SUPPLY OP-AMPS BEING PRODUCED. A single sided supply op-amp is one where the input and output voltages can be as low as the negative power supply voltage instead of needing to be at least two volts above it. The result is that it can operate in many applications with the negative supply pin on the op-amp being connected to the signal ground, thus eliminating the need for a separate negative power supply.

The LM324 (released in 1972) was one such op-amp that came in a quad package (four separate op-amps in one package) and became an industry standard. In addition to packaging multiple op-amps in a single package, the 1970s also saw the birth of op-amps in hybrid packages. These op-amps were generally improved versions of existing monolithic op-amps. As the properties of monolithic op-amps improved, the more complex hybrid ICs were quickly relegated to systems that are required to have extremely long service lives or other specialty systems.

LM741CN.jpg

RECENT TRENDS. Recently supply voltages in analog circuits have decreased (as they have in digital logic) and low-voltage op-amps have been introduced reflecting this. Supplies of 5 V and increasingly 3.3 V (sometimes as low as 1.8 V) are common. To maximize the signal range modern op-amps commonly have rail-to-rail output (the output signal can range from the lowest supply voltage to the highest) and sometimes rail-to-rail inputs. Recent "boomer" amplifiers such as the LM4871 and 8002 also have a shutdown feature, an internal power supply for biasing, and a bypass pin to connect a bypass capacitor for that power supply.


See also

-   Active filter
-   Analog computer
-   Bob Widlar
-   Current conveyor
-   Current-feedback operational amplifier
-   Differential amplifier
-   George A. Philbrick
-   Instrumentation amplifier
-   Negative feedback amplifier
-   Op-amp swapping
-   Operational amplifier applications
-   Operational transconductance amplifier
-   Sallen–Key topology


Notes


References


Further reading

Books

-   _Op Amps For Everyone_; 5th Ed; Bruce Carter, Ron Mancini; Newnes; 484 pages; 2017; . (2 MB PDF - 1st edition)
-   _Operational Amplifiers - Theory and Design_; 3rd Ed; Johan Huijsing; Springer; 423 pages; 2017; .
-   _Operational Amplifiers and Linear Integrated Circuits - Theory and Application_; 3rd Ed; James Fiore; Creative Commons; 589 pages; 2016.(13 MB PDF Text)(2 MB PDF Lab)
-   _Analysis and Design of Linear Circuits_; 8th Ed; Roland Thomas, Albert Rosa, Gregory Toussaint; Wiley; 912 pages; 2016; .
-   _Design with Operational Amplifiers and Analog Integrated Circuits_; 4th Ed; Sergio Franco; McGraw Hill; 672 pages; 2015; .
-   _Small Signal Audio Design_; 2nd Ed; Douglas Self; Focal Press; 780 pages; 2014; .
-   _Linear Circuit Design Handbook_; 1st Ed; Hank Zumbahlen; Newnes; 960 pages; 2008; . (35 MB PDF)
-   _Op Amp Applications Handbook_; 1st Ed; Walt Jung; Analog Devices & Newnes; 896 pages; 2005; . (17 MB PDF)
-   _Operational Amplifiers and Linear Integrated Circuits_; 6th Ed; Robert Coughlin, Frederick Driscoll; Prentice Hall; 529 pages; 2001; .
-   _Active-Filter Cookbook_; 2nd Ed; Don Lancaster; Sams; 240 pages; 1996; . (28 MB PDF - 1st edition)
-   _IC Op-Amp Cookbook_; 3rd Ed; Walt Jung; Prentice Hall; 433 pages; 1986; . (18 MB PDF - 1st edition)
-   _Engineer's Mini-Notebook – OpAmp IC Circuits_; 1st Ed; Forrest Mims III; Radio Shack; 49 pages; 1985; ASIN B000DZG196. (4 MB PDF)
-   _Intuitive IC Op Amps - from Basics to Useful Applications_; 1st Ed; Thomas Frederiksen; National Semiconductor; 299 pages; 1984; .
-   _Designing with Operational Amplifiers - Applications Alternatives_; 1st Ed; Jerald Graeme; Burr-Brown & McGraw Hill; 269 pages; 1976; .
-   _Applications of Operational Amplifiers - Third Generation Techniques_; 1st Ed; Jerald Graeme; Burr-Brown & McGraw Hill; 233 pages; 1973; . (37 MB PDF)
-   _Operational Amplifiers - Design and Applications_; 1st Ed; Jerald Graeme, Gene Tobey, Lawrence Huelsman; Burr-Brown & McGraw Hill; 473 pages; 1971; .

Books with opamp chapters

-   _Learning the Art of Electronics - A Hands-On Lab Course_; 1st Ed; Thomas Hayes, Paul Horowitz; Cambridge; 1150 pages; 2016; . (Part 3 is 268 pages)
-   _The Art of Electronics_; 3rd Ed; Paul Horowitz, Winfield Hill; Cambridge; 1220 pages; 2015; . (Chapter 4 is 69 pages)
-   _Lessons in Electric Circuits - Volume III - Semiconductors_; 5th Ed; Tony Kuphaldt; Open Book Project; 528 page; 2009. (Chapter 8 is 59 pages) (4 MB PDF)
-   _Troubleshooting Analog Circuits_; 1st Ed; Bob Pease; Newnes; 217 pages; 1991; . (Chapter 8 is 19 pages)
-   _Analog Applications Manual_; 1st Ed; Signetics; 418 pages; 1979. (Chapter 3 is 32 pages) (32 MB PDF)


External links

-   Op Amp Circuit Collection- National Semiconductor Corporation
-   Operational Amplifiers - Chapter on All About Circuits
-   Loop Gain and its Effects on Analog Circuit Performance - Introduction to loop gain, gain and phase margin, loop stability
-   Simple Op Amp Measurements How to measure offset voltage, offset and bias current, gain, CMRR, and PSRR.
-   Operational Amplifiers. Introductory on-line text by E. J. Mastascusa (Bucknell University).
-   Introduction to op-amp circuit stages, second order filters, single op-amp bandpass filters, and a simple intercom
-   _MOS op amp design: A tutorial overview_
-   Operational Amplifier Noise Prediction (All Op Amps) using spot noise
-   Operational Amplifier Basics
-   History of the Op-amp from vacuum tubes to about 2002. Lots of detail, with schematics. IC part is somewhat ADI-centric.
-   Loebe Julie historical OpAmp interview by Bob Pease
-   www.PhilbrickArchive.orgA free repository of materials from George A Philbrick / Researches - Operational Amplifier Pioneer
-   What’s The Difference Between Operational Amplifiers And Instrumentation Amplifiers?, Electronic Design Magazine

Datasheets / Databooks

-   LM301, Single BJT OpAmp, Texas Instruments
-   LM324, Quad BJT OpAmp, Texas Instruments
-   LM741, Single BJT OpAmp, Texas Instruments
-   NE5532, Dual BJT OpAmp, Texas Instruments (NE5534 is similar single)
-   TL072, Dual JFET OpAmp, Texas Instruments (TL074 is Quad)

Category:Electronic amplifiers Category:Linear integrated circuits Category:Integrated circuits

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] This definition hews to the convention of measuring op-amp parameters with respect to the zero voltage point in the circuit, which is usually half the total voltage between the amplifier's positive and negative power rails.

[9] Many older designs of operational amplifiers have offset null inputs to allow the offset to be manually adjusted away. Modern precision op-amps can have internal circuits that automatically cancel this offset using choppers or other circuits that measure the offset voltage periodically and subtract it from the input voltage.

[10] That the output cannot reach the power supply voltages is usually the result of limitations of the amplifier's output stage transistors. See Output stage.

[11]

[12]

[13]

[14] Widlar used this same trick in μA702 and μA709

[15] If the input differential voltage changes significantly (with more than about a hundred millivolts), the base-emitter junctions of the transistors driven by the lower input voltage (e.g., Q1 and Q3) become backward biased and the total common base current flows through the other (Q2 and Q4) base-emitter junctions. However, the high breakdown voltage of the PNP transistors Q3/Q4 prevents Q1/Q2 base-emitter junctions from damaging when the input difference voltage increases up to 50 V because of the unlimited current that may flow directly through the "diode bridge" between the two input sources.

[16] This circuit (and geometrical) phenomenon can be illustrated graphically by superimposing the Q4 and Q6 output characteristics (almost parallel horizontal lines) on the same coordinate system. When the input voltages vary slightly in opposite directions, the two curves move slightly toward each other in the vertical direction but the operating (cross) point moves vigorously in the horizontal direction. The ratio between the two movements represents the high amplification.

[17] The μA741 Operational Amplifier

[18] An input bias current of 1 µA through a DC source resistance of 10 kΩ produces a 10 mV offset voltage. If the other input bias current is the same and sees the same source resistance, then the two input offset voltages will cancel out. Balancing the DC source resistances may not be necessary if the input bias current and source resistance product is small.

[19]

[20]

[21]

[22]

[23]

[24]

[25] June 1961 advertisement for Philbrick P2,

[26]