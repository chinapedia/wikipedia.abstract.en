In radio communications, SINGLE-SIDEBAND MODULATION (SSB) or SINGLE-SIDEBAND SUPPRESSED-CARRIER MODULATION (SSB-SC) is a type of modulation, used to transmit information, such as an audio signal, by radio waves. A refinement of amplitude modulation, it uses transmitter power and bandwidth more efficiently. Amplitude modulation produces an output signal the bandwidth of which is twice the maximum frequency of the original baseband signal. Single-sideband modulation avoids this bandwidth increase, and the power wasted on a carrier, at the cost of increased device complexity and more difficult tuning at the receiver.


Basic concept

Radio transmitters work by mixing a radio frequency (RF) signal of a specific frequency, the carrier wave, with the audio signal to be broadcast. In AM transmitters this mixing usually takes place in the final RF amplifier (high level modulation). It is less common and much less efficient to do the mixing at low power and then amplify it in a linear amplifier. Either method produces a set of frequencies with a strong signal at the carrier frequency and with weaker signals at frequencies extending above and below the carrier frequency by the maximum frequency of the input signal. Thus the resulting signal has a spectrum whose bandwidth is twice the maximum frequency of the original input audio signal.

SSB takes advantage of the fact that the entire original signal is encoded in each of these "sidebands". It is not necessary to transmit both sidebands plus the carrier, as a suitable receiver can extract the entire original signal from either the upper or lower sideband. There are several methods for eliminating the carrier and one sideband from the transmitted signal. Producing this single sideband signal is too complicated to be done in the final amplifier stage as with AM. SSB Modulation must be done at a low level and amplified in a linear amplifier where lower efficiency partially offsets the power advantage gained by eliminating the carrier and one sideband. Nevertheless, SSB transmissions use the available amplifier energy considerably more efficiently, providing longer-range transmission for the same power output. In addition, the occupied spectrum is less than half that of a full carrier AM signal.

SSB reception requires frequency stability and selectivity well beyond that of inexpensive AM receivers which is why broadcasters have seldom used it. In point to point communications where expensive receivers are in common use already they can successfully be adjusted to receive whichever sideband is being transmitted.


History

The first U.S. patent application for SSB modulation was filed on December 1, 1915 by John Renshaw Carson.[1] The U.S. Navy experimented with SSB over its radio circuits before World War I.[2][3] SSB first entered commercial service on January 7, 1927, on the longwave transatlantic public radiotelephone circuit between New York and London. The high power SSB transmitters were located at Rocky Point, New York, and Rugby, England. The receivers were in very quiet locations in Houlton, Maine, and Cupar Scotland.[4]

SSB was also used over long distance telephone lines, as part of a technique known as frequency-division multiplexing (FDM). FDM was pioneered by telephone companies in the 1930s. With this technology, many simultaneous voice channels could be transmitted on a single physical circuit, for example in L-carrier. With SSB, channels could to be spaced (usually) only 4,000 Hz apart, while offering a speech bandwidth of nominally 300 Hz to 3,400 Hz.

Amateur radio operators began serious experimentation with SSB after World War II. The Strategic Air Command established SSB as the radio standard for its aircraft in 1957.[5] It has become a de facto standard for long-distance voice radio transmissions since then.


Mathematical formulation

Single-sideband has the mathematical form of quadrature amplitude modulation (QAM) in the special case where one of the baseband waveforms is derived from the other, instead of being independent messages:

where s(t)  is the message, ŝ(t)  is its Hilbert transform, and f₀  is the radio carrier frequency.[6]

To understand this formula, we may express s(t) as the real part of a complex-valued function, with no loss of information:

_s_(_t_) = Re {_s__(_a_)(_t_)} = Re {_s_(_t_)+_j_⋅_ŝ_(_t_)},

where j represents the imaginary unit.  s_(a)(t) is the analytic representation of s(t),  which means that it comprises only the positive-frequency components of s(t):

$$\frac{1}{2}S_\mathrm{a}(f) =
    \begin{cases}
      S(f), &\text{for}\ f > 0,\\
      0,    &\text{for}\ f < 0,
    \end{cases}$$

where S_(a)(f) and S(f) are the respective Fourier transforms of s_(a)(t) and s(t).  Therefore the frequency-translated function S_(a)(f−f₀) contains only one side of S(f).  Since it also has only positive-frequency components, its inverse Fourier transform is the analytic representation of s_(ssb)(t):

_s__(ssb)(_t_) + _j_ ⋅ _ŝ__(ssb)(_t_) = ℱ^( − 1){_S__(_a_)(_f_−_f_₀)} = _s__(_a_)(_t_) ⋅ _e_^(_j_2_π__f_₀_t_), 

and again the real part of this expression causes no loss of information.  With Euler's formula to expand  e^(j2πf₀t),   we obtain :

$$\begin{align}
  s_\text{ssb}(t) &= \operatorname{Re}\left\{s_\mathrm{a}(t)\cdot e^{j2\pi f_0 t}\right\} \\
                  &= \operatorname{Re}\left\{\,\left[s(t) + j \cdot \widehat{s}(t)\right] \cdot \left[\cos\left(2\pi f_0 t\right) + j \cdot \sin\left(2\pi f_0 t\right)\right]\,\right\} \\
                  &= s(t) \cdot \cos\left(2\pi f_0 t\right) - \widehat{s}(t) \cdot \sin\left(2\pi f_0 t\right).
\end{align}$$

Coherent demodulation of s_(ssb)(t) to recover s(t) is the same as AM: multiply by cos (2πf₀t),  and lowpass to remove the "double-frequency" components around frequency 2f₀. If the demodulating carrier is not in the correct phase (cosine phase here), then the demodulated signal will be some linear combination of s(t) and ŝ(t), which is usually acceptable in voice communications (if the demodulation carrier frequency is not quite right, the phase will be drifting cyclically, which again is usually acceptable in voice communications if the frequency error is small enough, and amateur radio operators are sometimes tolerant of even larger frequency errors that cause unnatural-sounding pitch shifting effects).

Lower sideband

s(t) can also be recovered as the real part of the complex-conjugate, s_(a)^(*)(t), which represents the negative frequency portion of S(f). When f₀  is large enough that S(f−f₀) has no negative frequencies, the product s_(a)^(*)(t) ⋅ e^(j2πf₀t) is another analytic signal, whose real part is the actual _lower-sideband_ transmission:

$$\begin{align}
  s_\mathrm{a}^*(t)\cdot e^{j2\pi f_0 t} &= s_\text{lsb}(t) + j \cdot \widehat s_\text{lsb}(t) \\
             \Rightarrow s_\text{lsb}(t) &= \operatorname{Re}\left\{s_\mathrm{a}^*(t) \cdot e^{j2\pi f_0 t}\right\} \\
                                         &= s(t) \cdot \cos\left(2\pi f_0 t\right) + \widehat{s}(t) \cdot \sin\left(2\pi f_0 t\right).
\end{align}$$

Note that the sum of the two sideband signals is:

_s__(usb)(_t_) + _s__(lsb)(_t_) = 2_s_(_t_) ⋅ cos (2_π__f_₀_t_), 

which is the classic model of suppressed-carrier double sideband AM.


Practical implementations

, an early Amateur Radio transceiver that featured SSB voice capability]]

Bandpass filtering

One method of producing an SSB signal is to remove one of the sidebands via filtering, leaving only either the UPPER SIDEBAND (USB), the sideband with the higher frequency, or less commonly the LOWER SIDEBAND (LSB), the sideband with the lower frequency. Most often, the carrier is reduced or removed entirely (suppressed), being referred to in full as SINGLE SIDEBAND SUPPRESSED CARRIER (SSBSC). Assuming both sidebands are symmetric, which is the case for a normal AM signal, no information is lost in the process. Since the final RF amplification is now concentrated in a single sideband, the effective power output is greater than in normal AM (the carrier and redundant sideband account for well over half of the power output of an AM transmitter). Though SSB uses substantially less bandwidth and power, it cannot be demodulated by a simple envelope detector like standard AM.

Hartley modulator

An alternate method of generation known as a HARTLEY MODULATOR, named after R. V. L. Hartley, uses phasing to suppress the unwanted sideband. To generate an SSB signal with this method, two versions of the original signal are generated, mutually 90° out of phase for any single frequency within the operating bandwidth. Each one of these signals then modulates carrier waves (of one frequency) that are also 90° out of phase with each other. By either adding or subtracting the resulting signals, a lower or upper sideband signal results. A benefit of this approach is to allow an analytical expression for SSB signals, which can be used to understand effects such as synchronous detection of SSB.

Shifting the baseband signal 90° out of phase cannot be done simply by delaying it, as it contains a large range of frequencies. In analog circuits, a wideband 90-degree phase-difference network[7] is used. The method was popular in the days of vacuum tube radios, but later gained a bad reputation due to poorly adjusted commercial implementations. Modulation using this method is again gaining popularity in the homebrew and DSP fields. This method, utilizing the Hilbert transform to phase shift the baseband audio, can be done at low cost with digital circuitry.

Weaver modulator

Another variation, the WEAVER MODULATOR,[8] uses only lowpass filters and quadrature mixers, and is a favored method in digital implementations.

In Weaver's method, the band of interest is first translated to be centered at zero, conceptually by modulating a complex exponential exp (jωt) with frequency in the middle of the voiceband, but implemented by a quadrature pair of sine and cosine modulators at that frequency (e.g. 2 kHz). This complex signal or pair of real signals is then lowpass filtered to remove the undesired sideband that is not centered at zero. Then, the single-sideband complex signal centered at zero is upconverted to a real signal, by another pair of quadrature mixers, to the desired center frequency.

Full, reduced, and suppressed-carrier SSB

Conventional amplitude-modulated signals can be considered wasteful of power and bandwidth because they contain a carrier signal and two identical sidebands. Therefore, SSB transmitters are generally designed to minimize the amplitude of the carrier signal. When the carrier is removed from the transmitted signal, it is called _suppressed-carrier SSB_.

However, in order for a receiver to reproduce the transmitted audio without distortion, it must be tuned to exactly the same frequency as the transmitter. Since this is difficult to achieve in practice, SSB transmissions can sound unnatural, and if the error in frequency is great enough, it can cause poor intelligibility. In order to correct this, a small amount of the original carrier signal can be transmitted so that receivers with the necessary circuitry to synchronize with the transmitted carrier can correctly demodulate the audio. This mode of transmission is called reduced-carrier single-sideband.

In other cases, it may be desirable to maintain some degree of compatibility with simple AM receivers, while still reducing the signal's bandwidth. This can be accomplished by transmitting single-sideband with a normal or slightly reduced carrier. This mode is called _compatible (or full-carrier) SSB_ or _amplitude modulation equivalent (AME)_. In typical AME systems, harmonic distortion can reach 25%, and intermodulation distortion can be much higher than normal, but minimizing distortion in receivers with envelope detectors is generally considered less important than allowing them to produce intelligible audio.

A second, and perhaps more correct, definition of "compatible single sideband" (CSSB) refers to a form of amplitude and phase modulation in which the carrier is transmitted along with a series of sidebands that are predominantly above or below the carrier term. Since phase modulation is present in the generation of the signal, energy is removed from the carrier term and redistributed into the sideband structure similar to that which occurs in analog frequency modulation. The signals feeding the phase modulator and the envelope modulator are further phase-shifted by 90° with respect to each other. This places the information terms in quadrature with each other; the Hilbert transform of information to be transmitted is utilized to cause constructive addition of one sideband and cancellation of the opposite primary sideband. Since phase modulation is employed, higher-order terms are also generated. Several methods have been employed to reduce the impact (amplitude) of most of these higher-order terms. In one system, the phase-modulated term is actually the log of the value of the carrier level plus the phase-shifted audio/information term. This produces an ideal CSSB signal, where at low modulation levels only a first-order term on one side of the carrier is predominant. As the modulation level is increased, the carrier level is reduced while a second-order term increases substantially in amplitude. At the point of 100% envelope modulation, 6 dB of power is removed from the carrier term, and the second-order term is identical in amplitude to carrier term. The first-order sideband has increased in level until it is now at the same level as the formerly unmodulated carrier. At the point of 100% modulation, the spectrum appears identical to a normal double-sideband AM transmission, with the center term (now the primary audio term) at a 0 dB reference level, and both terms on either side of the primary sideband at −6 dB. The difference is that what appears to be the carrier has shifted by the audio-frequency term towards the "sideband in use". At levels below 100% modulation, the sideband structure appears quite asymmetric. When voice is conveyed by a CSSB source of this type, low-frequency components are dominant, while higher-frequency terms are lower by as much as 20 dB at 3 kHz. The result is that the signal occupies approximately 1/2 the normal bandwidth of a full-carrier, DSB signal. There is one catch: the audio term utilized to phase-modulate the carrier is generated based on a log function that is biased by the carrier level. At negative 100% modulation, the term is driven to zero (0), and the modulator becomes undefined. Strict modulation control must be employed to maintain stability of the system and avoid splatter. This system is of Russian origin and was described in the late 1950s. It is uncertain whether it was ever deployed.

A second series of approaches was designed and patented by Leonard R. Kahn. The various Kahn systems removed the hard limit imposed by the use of the strict log function in the generation of the signal. Earlier Kahn systems utilized various methods to reduce the second-order term through the insertion of a predistortion component. One example of this method was also used to generate one of the Kahn independent-sideband (ISB) AM stereo signals. It was known as the STR-77 exciter method, having been introduced in 1977. Later, the system was further improved by use of an arcsine-based modulator that included a 1-0.52E term in the denominator of the arcsin generator equation. E represents the envelope term; roughly half the modulation term applied to the envelope modulator is utilized to reduce the second-order term of the arcsin "phase"-modulated path; thus reducing the second-order term in the undesired sideband. A multi-loop modulator/demodulator feedback approach was used to generate an accurate arcsin signal. This approach was introduced in 1984 and became known as the STR-84 method. It was sold by Kahn Research Laboratories; later, Kahn Communications, Inc. of NY. An additional audio processing device further improved the sideband structure by selectively applying pre-emphasis to the modulating signals. Since the envelope of all the signals described remains an exact copy of the information applied to the modulator, it can be demodulated without distortion by an envelope detector such as a simple diode. In a practical receiver, some distortion may be present, usually at a low level (in AM broadcast, always below 5%), due to sharp filtering and nonlinear group delay in the IF filters of the receiver, which act to truncate the compatibility sideband – those terms that are not the result of a linear process of simply envelope modulating the signal as would be the case in full-carrier DSB-AM – and rotation of phase of these compatibility terms such that they no longer cancel the quadrature distortion term caused by a first-order SSB term along with the carrier. The small amount of distortion caused by this effect is generally quite low and acceptable.

The Kahn CSSB method was also briefly used by Airphone as the modulation method employed for early consumer telephone calls that could be placed from an aircraft to ground. This was quickly supplanted by digital modulation methods to achieve even greater spectral efficiency.

While CSSB is seldom used today in the AM/MW broadcast bands worldwide, some amateur radio operators still experiment with it.


Demodulation

The front end of an SSB receiver is similar to that of an AM or FM receiver, consisting of a superheterodyne RF front end that produces a frequency-shifted version of the radio frequency (RF) signal within a standard intermediate frequency (IF) band.

To recover the original signal from the IF SSB signal, the single sideband must be frequency-shifted down to its original range of baseband frequencies, by using a product detector which mixes it with the output of a beat frequency oscillator (BFO). In other words, it is just another stage of heterodyning. For this to work, the BFO frequency must be exactly adjusted. If the BFO frequency is off, the output signal will be frequency-shifted (up or down), making speech sound strange and "Donald Duck"-like, or unintelligible.

For audio communications, there is a common agreement about the BFO oscillator shift of 1.7 kHz. A voice signal is sensitive to about 50 Hz shift, with up to 100 Hz still bearable. Some receivers use a carrier recovery system, which attempts to automatically lock on to the exact IF frequency. The carrier recovery doesn't solve the frequency shift. It gives better S/N ratio on the detector output.

As an example, consider an IF SSB signal centered at frequency F_(if)  = 45000 Hz. The baseband frequency it needs to be shifted to is F_(b)  = 2000 Hz. The BFO output waveform is cos (2π⋅F_(nfo)⋅t). When the signal is multiplied by (aka _heterodyned with_) the BFO waveform, it shifts the signal to  (F_(if)+F_(bfo)), _and_ to |F_(if)−F_(bfo)|, which is known as the _beat frequency_ or _image frequency_. The objective is to choose an F_(BFO) that results in  |F_(if)−F_(bfo)| = F_(b)  = 2000 Hz. (The unwanted components at (F_(if)+F_(bfo))  can be removed by a lowpass filter; for which an output transducer or the human ear may serve).

Note that there are two choices for F_(bfo): 43000 Hz and 47000 Hz, called _low-side_ and _high-side_ injection. With high-side injection, the spectral components that were distributed around 45000 Hz will be distributed around 2000 Hz in the reverse order, also known as an inverted spectrum. That is in fact desirable when the IF spectrum is also inverted, because the BFO inversion restores the proper relationships. One reason for that is when the IF spectrum is the output of an inverting stage in the receiver. Another reason is when the SSB signal is actually a lower sideband, instead of an upper sideband. But if both reasons are true, then the IF spectrum is not inverted, and the non-inverting BFO (43000 Hz) should be used.

If F_(bfo)  is off by a small amount, then the beat frequency is not exactly F_(b) , which can lead to the speech distortion mentioned earlier.


SSB as a speech-scrambling technique

SSB techniques can also be adapted to frequency-shift and frequency-invert baseband waveforms (voice inversion). This voice scrambling method was made by running the audio of one side band modulated audio sample though its opposite (e.g. running an LSB modulated audio sample through a radio running USB modulation). These effects were used, in conjunction with other filtering techniques, during World War II as a simple method for speech encryption. Radiotelephone conversations between the US and Britain were intercepted and "decrypted" by the Germans; they included some early conversations between Franklin D. Roosevelt and Churchill. In fact, the signals could be understood directly by trained operators. Largely to allow secure communications between Roosevelt and Churchill, the SIGSALY system of digital encryption was devised.

Today, such simple inversion-based speech encryption techniques are easily decrypted using simple techniques and are no longer regarded as secure.


Vestigial sideband (VSB)

Limitation of single-sideband modulation being used for voice signals and not available for video/TV signals leads to the usage of VESTIGIAL SIDEBAND. A VESTIGIAL SIDEBAND (in radio communication) is a sideband that has been only partly cut off or suppressed. Television broadcasts (in analog video formats) use this method if the video is transmitted in AM, due to the large bandwidth used. It may also be used in digital transmission, such as the ATSC standardized 8VSB.

The broadcast or transport channel for TV in countries that use NTSC or ATSC has a bandwidth of 6 MHz. To conserve bandwidth, SSB would be desirable, but the video signal has significant low-frequency content (average brightness) and has rectangular synchronising pulses. The engineering compromise is vestigial-sideband transmission. In vestigial sideband, the full upper sideband of bandwidth W2 = 4.75 MHz is transmitted, but only W1 = 1.25 MHz of the lower sideband is transmitted, along with a carrier. This effectively makes the system AM at low modulation frequencies and SSB at high modulation frequencies. The absence of the lower sideband components at high frequencies must be compensated for, and this is done in the IF amplifier.


Frequencies for LSB and USB in amateur radio voice communication

When single-sideband is used in amateur radio voice communications, it is common practice that for frequencies below 10 MHz, lower sideband (LSB) is used and for frequencies of 10 MHz and above, upper sideband (USB) is used.[9] For example, on the 40 m band, voice communications often take place around 7.100 MHz using LSB mode. On the 20 m band at 14.200 MHz, USB mode would be used.

An exception to this rule applies to the five discrete amateur channels on the 60-meter band (near 5.3 MHz) where FCC rules specifically require USB.[10]


Extended single sideband (eSSB)

Extended single sideband is any J3E (SSB-SC) mode that exceeds the audio bandwidth of standard or traditional 2.9 kHz SSB J3E modes (ITU 2K90J3E) to support higher-quality sound.

  Extended SSB modes   Bandwidth   Frequency response   ITU Designator
  -------------------- ----------- -------------------- ----------------
  eSSB (Narrow-1a)     3 kHz       100 Hz ~ 3.10 kHz    3K00J3E
  eSSB (Narrow-1b)     3 kHz       50 Hz ~ 3.05 kHz     3K00J3E
  eSSB (Narrow-2)      3.5 kHz     50 Hz ~ 3.55 kHz     3K50J3E
  eSSB (Medium-1)      4 kHz       50 Hz ~ 4.05 kHz     4K00J3E
  eSSB (Medium-2)      4.5 kHz     50 Hz ~ 4.55 kHz     4K50J3E
  eSSB (Wide-1)        5 kHz       50 Hz ~ 5.05 kHz     5K00J3E
  eSSB (Wide-2)        6 kHz       50 Hz ~ 6.05 kHz     6K00J3E


Amplitude-companded single-sideband modulation (ACSSB)

Amplitude-companded single sideband (ACSSB) is a narrowband modulation method using a single sideband with a pilot tone, allowing an expander in the receiver to restore the amplitude that was severely compressed by the transmitter. It offers improved effective range over standard SSB modulation while simultaneously retaining backwards compatibility with standard SSB radios. ACSSB also offers reduced bandwidth and improved range for a given power level compared with narrow band FM modulation.


Controlled-envelope single-sideband modulation (CESSB)

The generation of standard SSB modulation results in large envelope overshoots well above the average envelope level for a sinusoidal tone (even when the audio signal is peak-limited). The standard SSB envelope peaks are due to truncation of the spectrum and nonlinear phase distortion from the approximation errors of the practical implementation of the required Hilbert transform. It was recently shown that suitable overshoot compensation (so-called controlled-envelope single-sideband modulation or CESSB) achieves about 3.8 dB of peak reduction for speech transmission. This results in an effective average power increase of about 140%.[11] Although the generation of the CESSB signal can be integrated into the SSB modulator, it is feasible to separate the generation of the CESSB signal (e.g. in form of an external speech preprocessor) from a standard SSB radio. This requires that the standard SSB radio's modulator be linear-phase and have a sufficient bandwidth to pass the CESSB signal. If a standard SSB modulator meets these requirements, then the envelope control by the CESSB process is preserved.[12]


ITU designations

In 1982, the International Telecommunication Union (ITU) designated the types of amplitude modulation:

  Designation   Description
  ------------- ----------------------------------------------------------------------
  A3E           Double-sideband full-carrier – the basic amplitude-modulation scheme
  R3E           Single-sideband reduced-carrier
  H3E           Single-sideband full-carrier
  J3E           Single-sideband suppressed-carrier
  B8E           Independent-sideband emission
  C3F           Vestigial-sideband
  Lincompex     Linked compressor and expander


See also

-   ACSSB, amplitude-companded single sideband
-   Independent sideband
-   Modulation for other examples of modulation techniques
-   Sideband for more general information about a sideband


References


Sources

-   Partly from Federal Standard 1037C in support of MIL-STD-188


Further reading

-   Sgrignoli, G., W. Bretl, R. and Citta. (1995). "VSB modulation used for terrestrial and cable broadcasts." _IEEE Transactions on Consumer Electronics._ v. 41, issue 3, p. 367 - 382.
-   J. Brittain, (1992). "Scanning the past: Ralph V.L. Hartley", _Proc. IEEE_, vol.80,p. 463.
-   eSSB - Extended Single Sideband

Category:Radio modulation modes Category:Electronic design

[1]

[2] The History of Single Sideband Modulation , _Ing. Peter Weber_

[3] IEEE, Early History of Single-Sideband Transmission, _Oswald, A.A._

[4] History Of Undersea Cables, (1927)

[5]

[6]

[7] Earthlink.net, listing numerous articles.

[8] "A Third Method of Generation and Detection of Single-Sideband Signals" D K Weaver Jr. Proc. IRE, Dec. 1956

[9]

[10]

[11]  by David L. Hershberger, W9GR, QEX, issue Nov./Dec. 2014, pp. 3–13.

[12]  by David L. Hershberger, W9GR, QEX, issue Jan./Feb. 2016, pp. 9–12.