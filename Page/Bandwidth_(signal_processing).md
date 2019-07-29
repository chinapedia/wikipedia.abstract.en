Baseband.svg

BANDWIDTH is the difference between the upper and lower frequencies in a continuous band of frequencies. It is typically measured in hertz, and depending on context, may specifically refer to _passband bandwidth_ or _baseband bandwidth_. Passband bandwidth is the difference between the upper and lower cutoff frequencies of, for example, a band-pass filter, a communication channel, or a signal spectrum. Baseband bandwidth applies to a low-pass filter or baseband signal; the bandwidth is equal to its upper cutoff frequency.

Bandwidth in hertz is a central concept in many fields, including electronics, information theory, digital communications, radio communications, signal processing, and spectroscopy and is one of the determinants of the capacity of a given communication channel.

A key characteristic of bandwidth is that any band of a given width can carry the same amount of information, regardless of where that band is located in the frequency spectrum.[1] For example, a 3 kHz band can carry a telephone conversation whether that band is at baseband (as in a POTS telephone line) or modulated to some higher frequency.


Overview

Bandwidth is a key concept in many telecommunications applications. In radio communications, for example, bandwidth is the frequency range occupied by a modulated carrier signal. An FM radio receiver's tuner spans a limited range of frequencies. A government agency (such as the Federal Communications Commission in the United States) may apportion the regionally available bandwidth to broadcast license holders so that their signals do not mutually interfere. In this context, bandwidth is also known as channel spacing.

For other applications there are other definitions. One definition of bandwidth, for a system, could be the range of frequencies over which the system produces a specified level of performance. A less strict and more practically useful definition will refer to the frequencies beyond which Performance is degraded. In the case of frequency response, degradation could, for example, mean more than 3 dB below the maximum value or it could mean below a certain absolute value. As with any definition of the _width_ of a function, many definitions are suitable for different purposes.

In the context of, for example, the sampling theorem and Nyquist sampling rate, bandwidth typically refers to baseband bandwidth. In the context of Nyquist symbol rate or Shannon-Hartley channel capacity for communication systems it refers to passband bandwidth.

The RAYLEIGH BANDWIDTH of a simple radar pulse is defined as the inverse of its duration. For example, a one-microsecond pulse has a Rayleigh bandwidth of one megahertz.[2]

The ESSENTIAL BANDWIDTH is defined as the portion of a signal spectrum in the frequency domain which contains most of the energy of the signal.[3]


_x_ dB bandwidth

Bandwidth_2.svg's gain magnitude, illustrating the concept of −3 dB bandwidth at a gain of approximately 0.707. The frequency axis of this symbolic diagram can be linear or logarithmically scaled.]]

In some contexts, the signal bandwidth in hertz refers to the frequency range in which the signal's spectral density (in W/Hz or V²/Hz) is nonzero or above a small threshold value. That definition is used in calculations of the lowest sampling rate that will satisfy the sampling theorem. The threshold value is often defined relative to the maximum value, and is most commonly the , that is the point where the spectral density is half its maximum value (or the spectral amplitude, in V or V/Hz, is 70.7% of its maximum).[4]

The word bandwidth applies to signals as described above, but it could also apply to _systems_, for example filters or communication channels. To say that a system has a certain bandwidth means that the system can process signals of that bandwidth, or that the system reduces the bandwidth of a white noise input to that bandwidth.

The 3 dB bandwidth of an electronic filter or communication channel is the part of the system's frequency response that lies within 3 dB of the response at its peak, which in the passband filter case is typically at or near its center frequency, and in the low-pass filter is near 0 hertz. If the maximum gain is 0 dB, the 3 dB bandwidth is the frequency range where the gain is more than −3 dB, or the attenuation is less than 3 dB. This is also the range of frequencies where the amplitude gain is above 70.7% of the maximum amplitude gain, and the power gain is above half the maximum power gain. This same _half-power gain_ convention is also used in spectral width, and more generally for extent of functions as full width at half maximum (FWHM).

In electronic filter design, a filter specification may require that within the filter passband, the gain is nominally 0 dB ± a small number of dB, for example within the ±1 dB interval. In the stopband(s), the required attenuation in dB is above a certain level, for example >100 dB. In a transition band the gain is not specified. In this case, the filter bandwidth corresponds to the passband width, which in this example is the 1 dB-bandwidth. If the filter shows amplitude ripple within the passband, the _x_ dB point refers to the point where the gain is _x_ dB below the nominal passband gain rather than _x_ dB below the maximum gain.

A commonly used quantity is FRACTIONAL BANDWIDTH. This is the bandwidth of a device divided by its center frequency. E.g., a passband filter that has a bandwidth of 2 MHz with center frequency 10 MHz will have a fractional bandwidth of 2/10, or 20%.

In communication systems, in calculations of the Shannon–Hartley channel capacity, bandwidth refers to the 3 dB-bandwidth. In calculations of the maximum symbol rate, the Nyquist sampling rate, and maximum bit rate according to the Hartley formula, the bandwidth refers to the frequency range within which the gain is non-zero, or the gain in dB is below a very large value.

The fact that in equivalent baseband models of communication systems, the signal spectrum consists of both negative and positive frequencies, can lead to confusion about bandwidth, since they are sometimes referred to only by the positive half, and one will occasionally see expressions such as B = 2W, where B is the total bandwidth (i.e. the maximum passband bandwidth of the carrier-modulated RF signal and the minimum passband bandwidth of the physical passband channel), and W is the positive bandwidth (the baseband bandwidth of the equivalent channel model). For instance, the baseband model of the signal would require a low-pass filter with cutoff frequency of at least W to stay intact, and the physical passband channel would require a passband filter of at least B to stay intact.

In signal processing and control theory the bandwidth is the frequency at which the closed-loop system gain drops 3 dB below peak.

In basic electric circuit theory, when studying band-pass and band-reject filters, the bandwidth represents the distance between the two points in the frequency domain where the signal is $\frac{1}{\sqrt{2}}$ of the maximum signal amplitude (half power).


Antenna systems

In the field of antennas, two different methods of expressing relative bandwidth are used for narrowband and wideband antennas.[5] For either, a set of criteria is established to define the extents of the bandwidth, such as input impedance, pattern, or polarization.

_Percent bandwidth_, usually used for narrowband antennas, is used defined as $\%B=100 \times \frac{f_H-f_L}{f_c}=200 \times \frac{f_H-f_L}{f_H+f_L}$. The theoretical limit to percent bandwidth is 200%, which occurs for f_(L) = 0.

_Fractional bandwidth or ratio bandwidth_, usually used for wideband antennas, is defined as B = f_(H)/f_(L), and is typically presented in the form of B : 1. Fractional bandwidth is used for wideband antennas because of the compression of the percent bandwidth that occurs mathematically with percent bandwidths above 100%, which corresponds to a fractional bandwidth of 3:1.

If $\%B =200 \times \frac{f_H-f_L}{f_H+f_L} = p$

then $B = \frac{200+p}{200-p}$.


Photonics

In photonics, the term _bandwidth_ occurs in a variety of meanings:

-   the bandwidth of the output of some light source, e.g., an ASE source or a laser; the bandwidth of ultrashort optical pulses can be particularly large
-   the width of the frequency range that can be transmitted by some element, e.g. an optical fiber
-   the gain bandwidth of an optical amplifier
-   the width of the range of some other phenomenon (e.g., a reflection, the phase matching of a nonlinear process, or some resonance)
-   the maximum modulation frequency (or range of modulation frequencies) of an optical modulator
-   the range of frequencies in which some measurement apparatus (e.g., a powermeter) can operate
-   the data rate (e.g., in Gbit/s) achieved in an optical communication system; see bandwidth (computing).

A related concept is the spectral linewidth of the radiation emitted by excited atoms.


See also

-   Rise time
-   Bandwidth (Wiktionary entry)
-   Bandwidth efficiency
-   Bandwidth extension
-   Broadband
-   Essential bandwidth


Notes


References

Category:Signal processing Category:Telecommunication theory Category:Filter frequency response

[1] Assuming equivalent noise level.

[2] Jeffrey A. Nanzer, _Microwave and Millimeter-wave Remote Sensing for Security Applications_, pp. 268-269, Artech House, 2012 .

[3]

[4]

[5]