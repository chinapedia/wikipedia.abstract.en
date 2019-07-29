LINEAR FILTERS process time-varying input signals to produce output signals, subject to the constraint of linearity. This results from systems composed solely of components (or digital algorithms) classified as having a linear response. Most filters implemented in analog electronics, in digital signal processing, or in mechanical systems are classified as causal, time invariant, and linear signal processing filters.

The general concept of linear filtering is also used in statistics, data analysis, and mechanical engineering among other fields and technologies. This includes non-causal filters and filters in more than one dimension such as those used in image processing; those filters are subject to different constraints leading to different design methods.


Impulse response and transfer function

A linear time-invariant (LTI) filter can be uniquely specified by its impulse response _h_, and the output of any filter is mathematically expressed as the convolution of the input with that impulse response. The frequency response, given by the filter's transfer function H(ω), is an alternative characterization of the filter. Typical filter design goals are to realize a particular frequency response, that is, the magnitude of the transfer function |H(ω)|; the importance of the phase of the transfer function varies according to the application, inasmuch as the shape of a waveform can be distorted to a greater or lesser extent in the process of achieving a desired (amplitude) response in the frequency domain. The frequency response may be tailored to, for instance, eliminate unwanted frequency components from an input signal, or to limit an amplifier to signals within a particular band of frequencies.

The impulse response _h_ of a linear time-invariant causal filter specifies the output that the filter would produce if it were to receive an input consisting of a single impulse at time 0. An "impulse" in a continuous time filter means a Dirac delta function; in a discrete time filter the Kronecker delta function would apply. The impulse response completely characterizes the response of any such filter, inasmuch as any possible input signal can be expressed as a (possibly infinite) combination of weighted delta functions. Multiplying the impulse response shifted in time according to the arrival of each of these delta functions by the amplitude of each delta function, and summing these responses together (according to the superposition principle, applicable to all linear systems) yields the output waveform.

Mathematically this is described as the convolution of a time-varying input signal _x(t)_ with the filter's impulse response _h_, defined as:

_y_(_t_) = ∫₀^(_T_)_x_(_t_ − _τ_) _h_(_τ_) _d__τ_

$$y_k =  \sum_{i=0}^{N} x_{k-i}\, h_i$$

The first form is the continuous-time form, which describes mechanical and analog electronic systems, for instance. The second equation is a discrete-time version used, for example, by digital filters implemented in software, so-called _digital signal processing_. The impulse response _h_ completely characterizes any linear time-invariant (or shift-invariant in the discrete-time case) filter. The input _x_ is said to be "convolved" with the impulse response _h_ having a (possibly infinite) duration of time _T_ (or of _N_ sampling periods).

Filter design consists of finding a possible transfer function that can be implemented within certain practical constraints dictated by the technology or desired complexity of the system, followed by a practical design that realizes that transfer function using the chosen technology. The complexity of a filter may be specified according to the order of the filter.

Among the time-domain filters we here consider, there are two general classes of filter transfer functions that can approximate a desired frequency response. Very different mathematical treatments apply to the design of filters termed infinite impulse response (IIR) filters, characteristic of mechanical and analog electronics systems, and finite impulse response (FIR) filters, which can be implemented by discrete time systems such as computers (then termed _digital signal processing_).

Infinite impulse response filters

Consider a physical system that acts as a linear filter, such as a system of springs and masses, or an analog electronic circuit that includes capacitors and/or inductors (along with other linear components such as resistors and amplifiers). When such a system is subject to an impulse (or any signal of finite duration) it responds with an output waveform that lasts past the duration of the input, eventually decaying exponentially in one or another manner, but never completely settling to zero (mathematically speaking). Such a system is said to have an infinite impulse response (IIR). The convolution integral (or summation) above extends over all time: T (or N) must be set to infinity.

For instance, consider a damped harmonic oscillator such as a pendulum, or a resonant L-C tank circuit. If the pendulum has been at rest and we were to strike it with a hammer (the "impulse"), setting it in motion, it would swing back and forth ("resonate"), say, with an amplitude of 10 cm. After 10 minutes, say, the pendulum would still be swinging but the amplitude would have decreased to 5 cm, half of its original amplitude. After another 10 minutes its amplitude would be only 2.5 cm, then 1.25 cm, etc. However it would never come to a complete rest, and we therefore call that response to the impulse (striking it with a hammer) "infinite" in duration.

The complexity of such a system is specified by its order _N_. N is often a constraint on the design of a transfer function since it specifies the number of reactive components in an analog circuit; in a digital IIR filter the number of computations required is proportional to N.

Finite impulse response filters

A filter implemented in a computer program (or a so-called digital signal processor) is a discrete-time system; a different (but parallel) set of mathematical concepts defines the behavior of such systems. Although a digital filter can be an IIR filter if the algorithm implementing it includes feedback, it is also possible to easily implement a filter whose impulse truly goes to zero after N time steps; this is called a finite impulse response (FIR) filter.

For instance, suppose one has a filter that, when presented with an impulse in a time series:

    0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ...

outputs a series that responds to that impulse at time 0 until time 4, and has no further response, such as:

    0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0.....

Although the impulse response has lasted 4 time steps after the input, starting at time 5 it has truly gone to zero. The extent of the impulse response is _finite_, and this would be classified as a fourth-order FIR filter. The convolution integral (or summation) above need only extend to the full duration of the impulse response T, or the order N in a discrete time filter.

Implementation issues

Classical analog filters are IIR filters, and classical filter theory centers on the determination of transfer functions given by low order rational functions, which can be synthesized using the same small number of reactive components.[1] Using digital computers, on the other hand, both FIR and IIR filters are straightforward to implement in software.

A digital IIR filter can generally approximate a desired filter response using less computing power than a FIR filter, however this advantage is more often unneeded given the increasing power of digital processors. The ease of designing and characterizing FIR filters makes them preferable to the filter designer (programmer) when ample computing power is available. Another advantage of FIR filters is that their impulse response can be made symmetric, which implies a response in the frequency domain that has zero phase at all frequencies (not considering a finite delay), which is absolutely impossible with any IIR filter.[2]


Frequency response

The frequency response or transfer function |H(ω)| of a filter can be obtained if the impulse response is known, or directly through analysis using Laplace transforms, or in discrete-time systems the Z-transform. The frequency response also includes the phase as a function of frequency, however in many cases the phase response is of little or no interest. FIR filters can be made to have zero phase, but with IIR filters that is generally impossible. With most IIR transfer functions there are related transfer functions having a frequency response with the same magnitude but a different phase; in most cases the so-called minimum phase transfer function is preferred.

Filters in the time domain are most often requested to follow a specified frequency response. Then, a mathematical procedure finds a filter transfer function that can be realized (within some constraints), and approximates the desired response to within some criterion. Common filter response specifications are described as follows:

-   A low-pass filter passes low frequencies while blocking higher frequencies.
-   A high-pass filter passes high frequencies.
-   A band-pass filter passes a band (range) of frequencies.
-   A band-stop filter passes high and low frequencies outside of a specified band.
-   A notch filter has a null response at a particular frequency. This function may be combined with one of the above responses.
-   An all-pass filter passes all frequencies equally well, but alters the phase relationship among them.
-   An equalization filter is not designed to fully pass or block any frequency, but instead to gradually vary the amplitude response as a function of frequency: filters used as pre-emphasis filters, equalizers, or tone controls are good examples.

FIR transfer functions

Meeting a frequency response requirement with an FIR filter uses relatively straightforward procedures. In the most basic form, the desired frequency response itself can be sampled with a resolution of Δf and Fourier transformed to the time domain. This obtains the filter coefficients _h_(i)_, which implements a zero phase FIR filter that matches the frequency response at the sampled frequencies used. To better match a desired response, Δf must be reduced. However the duration of the filter's impulse response, and the number of terms that must be summed for each output value (according to the above discrete time convolution) is given by N = 1/(Δf T) where _T_ is the sampling period of the discrete time system (N-1 is also termed the _order_ of an FIR filter). Thus the complexity of a digital filter and the computing time involved, grows inversely with Δf, placing a higher cost on filter functions that better approximate the desired behavior. For the same reason, filter functions whose critical response is at lower frequencies (compared to the sampling frequency _1/T_) require a higher order, more computationally intensive FIR filter. An IIR filter can thus be much more efficient in such cases.

Elsewhere the reader may find further discussion of design methods for practical FIR filter design.

IIR transfer functions

Since classical analog filters are IIR filters, there has been a long history of studying the range of possible transfer functions implementing various of the above desired filter responses in continuous time systems. Using transforms it is possible to convert these continuous time frequency responses to ones that are implemented in discrete time, for use in digital IIR filters. The complexity of any such filter is given by the _order_ N, which describes the order of the rational function describing the frequency response. The order N is of particular importance in analog filters, because an N^(th) order electronic filter requires N reactive elements (capacitors and/or inductors) to implement. If a filter is implemented using, for instance, biquad stages using op-amps, N/2 stages are needed. In a digital implementation, the number of computations performed per sample is proportional to N. Thus the mathematical problem is to obtain the best approximation (in some sense) to the desired response using a smaller N, as we shall now illustrate.

Below are the frequency responses of several standard filter functions that approximate a desired response, optimized according to some criterion. These are all fifth-order low-pass filters, designed for a cutoff frequency of .5 in normalized units. Frequency responses are shown for the Butterworth, Chebyshev, inverse Chebyshev, and elliptic filters.

Electronic_linear_filters.svg

As is clear from the image, the elliptic filter is sharper than the others, but at the expense of ripples in both its passband and stopband. The Butterworth filter has the poorest transition but has a more even response, avoiding ripples in either the passband or stopband. A Bessel filter (not shown) has an even poorer transition in the frequency domain, but maintains the best phase fidelity of a waveform. Different applications emphasize different design requirements, leading to different choices among these (and other) optimizations, or requiring a filter of a higher order.

Sallen-Key_Lowpass_General.svg


Example implementations

A popular circuit implementing a second order active R-C filter is the Sallen-Key design, whose schematic diagram is shown here. This topology can be adapted to produce low-pass, band-pass, and high pass filters.

FIR_Filter.svg

An N^(th) order FIR filter can be implemented in a discrete time system using a computer program or specialized hardware in which the input signal is subject to N delay stages. The output of the filter is formed as the weighted sum of those delayed signals, as is depicted in the accompanying signal flow diagram. The response of the filter depends on the weighting coefficients denoted _b₀_, _b₁_, .... _b_(N)_. For instance, if all of the coefficients were equal to unity, a so-called boxcar function, then it would implement a low-pass filter with a low frequency gain of N+1 and a frequency response given by the sinc function. Superior shapes for the frequency response can be obtained using coefficients derived from a more sophisticated design procedure.


Mathematics of filter design

LTI system theory describes linear _time-invariant_ (LTI) filters of all types. LTI filters can be completely described by their frequency response and phase response, the specification of which uniquely defines their impulse response, and _vice versa_. From a mathematical viewpoint, continuous-time IIR LTI filters may be described in terms of linear differential equations, and their impulse responses considered as Green's functions of the equation. Continuous-time LTI filters may also be described in terms of the Laplace transform of their impulse response, which allows all of the characteristics of the filter to be analyzed by considering the pattern of zeros and poles of their Laplace transform in the complex plane. Similarly, discrete-time LTI filters may be analyzed via the Z-transform of their impulse response.

Before the advent of computer filter synthesis tools, graphical tools such as Bode plots and Nyquist plots were extensively used as design tools. Even today, they are invaluable tools to understanding filter behavior. Reference books[3] had extensive plots of frequency response, phase response, group delay, and impulse response for various types of filters, of various orders. They also contained tables of values showing how to implement such filters as RLC ladders - very useful when amplifying elements were expensive compared to passive components. Such a ladder can also be designed to have minimal sensitivity to component variation[4] a property hard to evaluate without computer tools.

Many different analog filter designs have been developed, each trying to optimise some feature of the system response. For practical filters, a custom design is sometimes desirable, that can offer the best tradeoff between different design criteria, which may include component count and cost, as well as filter response characteristics.

These descriptions refer to the _mathematical_ properties of the filter (that is, the frequency and phase response). These can be _implemented_ as analog circuits (for instance, using a Sallen Key filter topology, a type of active filter), or as algorithms in digital signal processing systems.

Digital filters are much more flexible to synthesize and use than analog filters, where the constraints of the design permits their use. Notably, there is no need to consider component tolerances, and very high Q levels may be obtained.

FIR digital filters may be implemented by the direct convolution of the desired impulse response with the input signal. They can easily be designed to give a matched filter for any arbitrary pulse shape.

IIR digital filters are often more difficult to design, due to problems including dynamic range issues, quantization noise and instability. Typically digital IIR filters are designed as a series of digital biquad filters.

All low-pass second-order continuous-time filters have a transfer function given by

    $H(s)=\frac{K \omega^{2}_{0}}{s^{2}+\frac{\omega_{0}}{Q}s+\omega^{2}_{0}}.$

All band-pass second-order continuous-time filters have a transfer function given by

    $H(s)=\frac{K \frac{\omega_{0}}{Q}s}{s^{2}+\frac{\omega_{0}}{Q}s+\omega^{2}_{0}}.$

where

-   _K_ is the gain (low-pass DC gain, or band-pass mid-band gain) (_K_ is 1 for passive filters)
-   _Q_ is the Q factor
-   ω₀ is the center frequency
-   s = σ + jω is the complex frequency


See also

-   Filter design
-   Laplace transform
-   Green's function
-   Prototype filter
-   Z-transform
-   System theory
    -   LTI system theory
-   Nonlinear filter
-   Wiener filter
-   Gabor filter
-   Leapfrog filter


Notes and references


Further reading

-   -   National Semiconductor AN-779 application note describing analog filter theory
-   Lattice AN6017 application note comparing and contrasting filters (in order of damping coefficient, from lower to higher values): Gaussian, Bessel, linear phase, Butterworth, Chebyshev, Legendre, elliptic. (with graphs).
-   USING THE ANALOG DEVICES ACTIVE FILTER DESIGN TOOL: a similar application note from Analog Devices with extensive graphs, active RC filter topologies, and tables for practical design.
-   "Design and Analysis of Analog Filters: A Signal Processing Perspective" by L. D. Paarmann

* Category:Filter theory

[1] However, there are a few cases in which FIR filters directly process analog signals, involving non-feedback topologies and analog delay elements. An example is the discrete-time _analog sampled filter_, implemented using a so-called bucket-brigade device clocked at a certain sampling rate, outputting copies of the input signal at different delays that can be combined with some weighting to realize an FIR filter. Electromechanical filters such as SAW filters can likewise implement FIR filter responses; these operate in continuous time and can thus be designed for higher frequencies.

[2] Outside of trivial cases, stable IIR filters with zero phase response are possible if they are not causal (and thus are unusable in real-time applications) or implementing transfer functions classified as unstable or "marginally stable" such as a double integrator.

[3] A. Zverev, _Handbook of Filter Synthesis_, John Wiley and Sons, 1967,

[4] Normally, computing sensitivities is a very laborious operation. But in the special case of an LC ladder driven by an impedance and terminated by a resistor, there is a neat argument showing the sensitivities are small. In such as case, the transmission at the maximum frequency(s) transfers the maximal possible energy to the output load, as determined by the physics of the source and load impedances. Since this point is a maximum, _all_ derivatives with respect to _all_ component values must be zero, since the result of changing _any_ component value in _any_ direction can only result in a reduction. This result only strictly holds true at the peaks of the response, but is roughly true at nearby points as well.