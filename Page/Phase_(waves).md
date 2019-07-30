In physics and mathematics, the PHASE of a periodic function F of some real variable t is the relative value of that variable within the span of each full period.

The phase is typically expressed as an angle ϕ(t), in such a scale that it varies by one full turn as the variable t goes through each period (and F(t) goes through each complete cycle). Thus, if the phase is expressed in degrees, it will increase by 360° as t increases by one period. If it is expressed in radians, the same increase in t will increase the phase by 2π.[1]

This convention is especially appropriate for a sinusoidal function, since its value at any argument t then can be expressed as the sine of the phase ϕ(t), multiplied by some factor (the amplitude of the sinusoid). (The cosine may be used instead of sine, depending on where one considers each period to start.)

Usually, whole turns are ignored when expressing the phase; so that ϕ(t) is also a periodic function, with the same period as F, that repeatedly scans the same range of angles as t goes through each period. Then, F is said to be "at the same phase" at two argument values t₁ and t₂ (that is, ϕ(t₁) = ϕ(t₂)) if the difference between them is a whole number of periods.

The numeric value of the phase ϕ(t) depends on the arbitrary choice of the start of each period, and on the interval of angles that each period is to be mapped to.

The term "phase" is also used when comparing a periodic function F with a shifted version G of it. If the shift in t is expressed as a fraction of the period, and then scaled to an angle φ spanning a whole turn, one gets the PHASE SHIFT, PHASE OFFSET, or PHASE DIFFERENCE of G relative to F. If F is a "canonical" function for a class of signals, like sin (t) is for all sinusoidal signals, then φ is called the INITIAL PHASE of G.


Mathematical definition

Let F be a periodic signal (that is, a function of one real variable), and T be its period (that is, the smallest positive real number such that F(t + T) = F(t) for all t) . Then the '''phase of '''F AT any argument t is

$$\phi(t) = 2\pi\left[\!\!\left[\frac{t - t_0}{T}\right]\!\!\right]$$

Here [​[ ⋅ ]​] denotes the fractional part of a real number, discarding its integer part; that is, [​[x]​] = x − ⌊x⌋; and t₀ is an arbitrary "origin" value of the argument, that one considers to be the beginning of a cycle.

This concept can be visualized by imagining a clock with a hand that turns at constant speed, making a full turn every T seconds, and is pointing straight up at time t₀. The phase ϕ(t) is then the angle from the 12:00 position to the current position of the hand, at time t, measured clockwise.

The phase concept is most useful when the origin t₀ is chosen based on features of F. For example, for a sinusoid, a convenient choice is any t where the function's value changes from zero to positive.

The formula above gives the phase as an angle in radians between 0 and 2π. To get the phase as an angle between  − π and  + π, one uses instead

$$\phi(t) = 2\pi\left(\left[\!\!\left[\frac{t - t_0}{T} + \tfrac{1}{2}\right]\!\!\right] - \tfrac{1}{2}\right)$$
The phase expressed in degrees (from 0° to 360°, or from −180° to +180°) is defined the same way, except with "360°" in place of "2π".

Consequences

With any of the above definitions, the phase ϕ(t) of a periodic signal is periodic too, with the same period T:

_ϕ_(_t_ + _T_) = _ϕ_(_t_)  
for all t. The phase is zero at the start of each period; that is

_ϕ_(_t_₀ + _k__T_) = 0  
for any integer k.

Moreover, for any given choice of the origin t₀, the value of the signal F for any argument t depends only on its phase at t. Namely, one can write F(t) = f(ϕ(t)), where f is a function of an angle, defined only for a single full turn, that describes the variation of F as t ranges over a single period.

In fact, every periodic signal F with a specific waveform can be expressed as

_F_(_t_) = _A_ _w_(_ϕ_(_t_))
where w is a "canonical" function of a phase angle in 0 to 2π, that describes just one cycle of that waveform; and A is a scaling factor for the amplitude. (This claim assumes that the starting time t₀ chosen to compute the phase of F corresponds to argument 0 of w.)


Adding and comparing phases

Since phases are angles, any whole full turns should usually be ignored when performing arithmetic operations on them. That is, the sum and difference of two phases (in degrees) should be computed by the formulas

$$360\,\left[\!\!\left[\frac{\alpha + \beta}{360}\right]\!\!\right]\quad\quad$$
and $\quad\quad 360\,\left[\!\!\left[\frac{\alpha - \beta}{360}\right]\!\!\right]$

respectively. Thus, for example, the sum of phase angles 190° + 200° is 30° (190 + 200 = 390, minus one full turn), and subtracting 50° from 30° gives a phase of 340° (30 - 50 = -20, plus one full turn).

Similar formulas hold for radians, with 2π instead of 360.


Phase shift

General definition

The difference φ(t) = ϕ_(G)(t) − ϕ_(F)(t) between the phases of two periodic signals F and G is called the PHASE DIFFERENCE of G relative to F.[2] At values of t when the difference is zero, the two signals are said to be IN PHASE, otherwise they are OUT OF PHASE with each other.

In the clock analogy, each signal is represented by a hand (pointer) of the same clock, both turning at constant but possibly different speeds. The phase difference is then the angle between the two hands, measured clockwise.

The phase difference is particularly important when two signals are added together by some physical process, such as two periodic sound waves emitted by two sources and recorded together by a microphone. This is usually the case in linear systems, when the superposition principle holds.

For arguments t when the phase difference is zero, the two signals will have the same sign and will be reinforcing each other. One says that constructive interference is occurring. At arguments t when the phases are different, the value of the sum depends on the waveform.

For sinusoids

For sinusoidal signals, when the phase difference φ(t) is 180° (π radians), one says that the phases are OPPOSITE, and that the signals are IN ANTIPHASE. Then the signals have opposite signs, and destructive interference occurs.

When the phase difference φ(t) is a quarter of turn (a right angle, +90°=π/2 or −90°=270°= − π/2 = 3π/2), sinusoidal signals are sometimes said to be IN QUADRATURE.

if the frequencies are different, the phase difference φ(t) increases linearly with the argument t. The periodic changes from reinforcement and opposition cause a phenomenon called beating.

For shifted signals

The phase difference is especially important when comparing a periodic signal F with a shifted and possibly scaled version G of it. That is, suppose that G(t) = α F(t + τ) for some constants α, τ and all t. Suppose also that the origin for computing the phase of G has been shifted too. In that case, the phase difference φ is a constant (independent of t), called the PHASE SHIFT or PHASE OFFSET of G relative to F. In the clock analogy, this situation corresponds to the two hands turning at the same speed, so that the angle between them is constant.

In this case, the phase shift is simply the argument shift τ, expressed as a fraction of the common period T of the two signals and then scaled to a full turn. Namely,

$$\varphi = 2\pi\left[\!\!\left[\frac{\tau}{T}\right]\!\!\right]$$
. If F is a "canonical" representative for a class of signals, like sin (t) is for all sinusoidal signals, then the phase shift φ called simply the INITIAL PHASE of G.

Therefore, when two periodic signals have the same frequency, they are always in phase, or always out of phase. Physically, this situation commonly occurs, for many reasons. For example, the two signals may be a periodic soundwave recorded by two microphones at separate locations. Or, conversely, they may be periodic soundwaves created by two separate speakers from the same electrical signal, and recorded by a single microphone. They may be a radio signal that reaches the receiving antenna in a straight line, and a copy of it that was reflected off a large building nearby.

A well-known example of phase difference is the length of shadows seen at different points of Earth. To a first approximation, if F(t) is the length seen at time t at one spot, and G is the length seen at the same time at a longitude 30 degrees west of that point, then the phase difference between the two signals will be 30 degrees (assuming that, in each signal, each period starts when the shadow is shortest).

For sinusoids with same frequency

For sinusoidal signals (and a few other waveforms, like square or symmetric triangular), a phase shift of 180° is equivalent to a phase shift of 0° with negation of the amplitude. When two signals with these waveforms, same period, and opposite phases are added together, the sum F + G is either identically zero, or is a sinusoidal signal with the same period and phase, whose amplitude is the difference of the original amplitudes.

The phase shift of the co-sine function relative to the sine function is +90°. It follows that, for two sinusoidal signals F and G with same frequency and amplitudes A and B, and G has phase shift +90° relative to F, the sum F + G is a sinusoidal signal with the same frequency, with amplitude C and phase shift  − 90^(∘) < φ <  + 90^(∘) from F, such that

$$C = \sqrt{A^2 + B^2}\quad\quad{}$$
and   sin (φ) = B/C.

of a plane wave moving from top to bottom. Right: the same wave after a central section underwent a phase shift, for example, by passing through a glass of different thickness than the other parts.]]

.

A real-world example of a sonic phase difference occurs in the warble of a Native American flute. The amplitude of different harmonic components of same long-held note on the flute come into dominance at different points in the phase cycle. The phase difference between the different harmonics can be observed on a spectrogram of the sound of a warbling flute.[3]

Phase comparison

PHASE COMPARISON is a comparison of the phase of two waveforms, usually of the same nominal frequency. In time and frequency, the purpose of a phase comparison is generally to determine the frequency offset (difference between signal cycles) with respect to a reference.[4]

A phase comparison can be made by connecting two signals to a two-channel oscilloscope. The oscilloscope will display two sine signals, as shown in the graphic to the right. In the adjacent image, the top sine signal is the test frequency, and the bottom sine signal represents a signal from the reference.

If the two frequencies were exactly the same, their phase relationship would not change and both would appear to be stationary on the oscilloscope display. Since the two frequencies are not exactly the same, the reference appears to be stationary and the test signal moves. By measuring the rate of motion of the test signal the offset between frequencies can be determined.

Vertical lines have been drawn through the points where each sine signal passes through zero. The bottom of the figure shows bars whose width represents the phase difference between the signals. In this case the phase difference is increasing, indicating that the test signal is lower in frequency than the reference.[5]


Formula for phase of an oscillation or a periodic signal

The phase of an oscillation or signal refers to a sinusoidal function such as the following:

$$\begin{align}
x(t) &= A\cdot \cos( 2 \pi f t + \varphi ) \\
y(t) &= A\cdot \sin( 2 \pi f t + \varphi ) = A\cdot \cos\left( 2 \pi f t + \varphi - \tfrac{\pi}{2}\right)
\end{align}$$

where $\textstyle A$, $\textstyle f$, and $\textstyle \varphi$ are constant parameters called the _amplitude_, _frequency_, and _phase_ of the sinusoid. These signals are periodic with period $\textstyle T = \frac{1}{f}$, and they are identical except for a displacement of $\textstyle \frac{T}{4}$ along the $\textstyle t$ axis. The term PHASE can refer to several different things:

-   It can refer to a specified reference, such as $\textstyle \cos( 2 \pi f t)$, in which case we would say the PHASE of $\textstyle x(t)$ is $\textstyle \varphi$, and the PHASE of $\textstyle y(t)$ is $\textstyle \varphi - \frac{\pi}{2}$.
-   It can refer to $\textstyle \varphi$, in which case we would say $\textstyle x(t)$ and $\textstyle y(t)$ have the same PHASE but are relative to their own specific references.
-   In the context of communication waveforms, the time-variant angle $\textstyle 2 \pi f t + \varphi$, or its principal value, is referred to as INSTANTANEOUS PHASE, often just PHASE.


See also

-   In-phase and quadrature components
-   Instantaneous phase
-   Lissajous curve
-   Phase angle
-   Phase cancellation
-   Phase problem
-   Phase velocity
-   Phasor
-   Polarization
-   Coherence, the quality of a wave to display a well defined phase relationship in different regions of its domain of definition
-   Absolute phase


References


External links

-   "What is a phase?". Prof. Jeffrey Hass. "_An Acoustics Primer_", Section 8. Indiana University. © 2003. See also: (pages 1 thru 3. © 2013)
-   Phase angle, phase difference, time delay, and frequency
-   ECE 209: Sources of Phase Shift — Discusses the time-domain sources of phase shift in simple linear time-invariant circuits.
-   Open Source Physics JavaScript HTML5
-   Phase Difference Java Applet

Category:Wave mechanics Category:Physical quantities

[1]

[2]

[3]

[4]  This content has been copied and pasted from an NIST web page _and is in the public domain_.

[5]