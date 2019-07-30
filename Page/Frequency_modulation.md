or FM radio wave.|alt=Animation of audio, AM and FM signals]] ) rejection than AM, as shown in this dramatic New York publicity demonstration by General Electric in 1940. The radio has both AM and FM receivers. With a million-volt arc as a source of interference behind it, the AM receiver produced only a roar of static, while the FM receiver clearly reproduced a music program from Armstrong's experimental FM transmitter W2XMN in New Jersey.]]

In telecommunications and signal processing, FREQUENCY MODULATION (FM) is the encoding of information in a carrier wave by varying the instantaneous frequency of the wave.

In analog frequency modulation, such as FM radio broadcasting of an audio signal representing voice or music, the instantaneous frequency deviation, the difference between the frequency of the carrier and its center frequency, is proportional to the modulating signal.

Digital data can be encoded and transmitted via FM by shifting the carrier's frequency among a predefined set of frequencies representing digits – for example one frequency can represent a binary 1 and a second can represent binary 0. This modulation technique is known as frequency-shift keying (FSK). FSK is widely used in modems such as fax modems, and can also be used to send Morse code.[1] Radioteletype also uses FSK.[2]

Frequency modulation is widely used for FM radio broadcasting. It is also used in telemetry, radar, seismic prospecting, and monitoring newborns for seizures via EEG,[3] two-way radio systems, music synthesis, magnetic tape-recording systems and some video-transmission systems. In radio transmission, an advantage of frequency modulation is that it has a larger signal-to-noise ratio and therefore rejects radio frequency interference better than an equal power amplitude modulation (AM) signal. For this reason, most music is broadcast over FM radio.

Frequency modulation and phase modulation are the two complementary principal methods of angle modulation; phase modulation is often used as an intermediate step to achieve frequency modulation. These methods contrast with amplitude modulation, in which the amplitude of the carrier wave varies, while the frequency and phase remain constant.


Theory

If the information to be transmitted (i.e., the baseband signal) is x_(m)(t) and the sinusoidal carrier is x_(c)(t) = A_(c)cos (2πf_(c)t) , where _f_(c)_ is the carrier's base frequency, and _A_(c)_ is the carrier's amplitude, the modulator combines the carrier with the baseband data signal to get the transmitted signal*

$$\begin{align}
  y(t) &= A_c \cos\left(2\pi \int_0^t f(\tau) d\tau\right) \\
       &= A_c \cos\left(2\pi \int_0^t \left[f_c + f_\Delta x_m(\tau)\right] d\tau\right) \\
       &= A_c \cos\left(2\pi f_c t + 2\pi f_\Delta \int_0^t x_m(\tau) d\tau\right) \\
\end{align}$$

where f_(Δ) = K_(f)A_(m), K_(f) being the sensitivity of the frequency modulator and A_(m) being the amplitude of the modulating signal or baseband signal.

In this equation, f(τ)  is the _instantaneous frequency_ of the oscillator and f_(Δ)  is the _frequency deviation_, which represents the maximum shift away from _f_(c)_ in one direction, assuming _x__(_m_)(_t_) is limited to the range ±1.

While most of the energy of the signal is contained within _f_(c)_ ± _f__(Δ), it can be shown by Fourier analysis that a wider range of frequencies is required to precisely represent an FM signal. The frequency spectrum of an actual FM signal has components extending infinitely, although their amplitude decreases and higher-order components are often neglected in practical design problems.[4]

Sinusoidal baseband signal

Mathematically, a baseband modulating signal may be approximated by a sinusoidal continuous wave signal with a frequency _f_(m)_. This method is also named as single-tone modulation. The integral of such a signal is:

$$\int_0^t x_m(\tau)d\tau = A_m \frac{\sin\left(2\pi f_m t\right)}{2\pi f_m}\,$$

In this case, the expression for y(t) above simplifies to:

$$y(t) = A_c \cos\left(2\pi f_c t + \frac{A_m f_\Delta}{f_m} \sin\left(2\pi f_m t\right)\right)\,$$

where the amplitude A_(m)  of the modulating sinusoid is represented by the peak deviation f_(Δ)  (see frequency deviation).

The harmonic distribution of a sine wave carrier modulated by such a sinusoidal signal can be represented with Bessel functions; this provides the basis for a mathematical understanding of frequency modulation in the frequency domain.

Modulation index

As in other modulation systems, the modulation index indicates by how much the modulated variable varies around its unmodulated level. It relates to variations in the carrier frequency:

$$h = \frac{\Delta{}f}{f_m} = \frac{f_\Delta \left|x_m(t)\right|}{f_m}$$

where f_(m)  is the highest frequency component present in the modulating signal _x__(_m_)(_t_), and Δf  is the peak frequency-deviation—i.e. the maximum deviation of the _instantaneous frequency_ from the carrier frequency. For a sine wave modulation, the modulation index is seen to be the ratio of the peak frequency deviation of the carrier wave to the frequency of the modulating sine wave.

If h ≪ 1, the modulation is called NARROWBAND FM (NFM), and its bandwidth is approximately 2f_(m) . Sometimes modulation index h < 0.3 is considered as NFM, otherwise wideband FM (WFM or FM).

For digital modulation systems, for example binary frequency shift keying (BFSK), where a binary signal modulates the carrier, the modulation index is given by:

$$h = \frac{\Delta{}f}{f_m} = \frac{\Delta{}f}{\frac{1}{2T_s}} = 2\Delta{}fT_s \$$

where T_(s)  is the symbol period, and $f_m = \frac{1}{2T_s}\,$ is used as the highest frequency of the modulating binary waveform by convention, even though it would be more accurate to say it is the highest _fundamental_ of the modulating binary waveform. In the case of digital modulation, the carrier f_(c)  is never transmitted. Rather, one of two frequencies is transmitted, either f_(c) + Δf or f_(c) − Δf, depending on the binary state 0 or 1 of the modulation signal.

If h ≫ 1, the modulation is called _wideband FM_ and its bandwidth is approximately 2f_(Δ) . While wideband FM uses more bandwidth, it can improve the signal-to-noise ratio significantly; for example, doubling the value of Δf , while keeping f_(m) constant, results in an eight-fold improvement in the signal-to-noise ratio.[5] (Compare this with chirp spread spectrum, which uses extremely wide frequency deviations to achieve processing gains comparable to traditional, better-known spread-spectrum modes).

With a tone-modulated FM wave, if the modulation frequency is held constant and the modulation index is increased, the (non-negligible) bandwidth of the FM signal increases but the spacing between spectra remains the same; some spectral components decrease in strength as others increase. If the frequency deviation is held constant and the modulation frequency increased, the spacing between spectra increases.

Frequency modulation can be classified as narrowband if the change in the carrier frequency is about the same as the signal frequency, or as wideband if the change in the carrier frequency is much higher (modulation index > 1) than the signal frequency.[6] For example, narrowband FM (NFM) is used for two-way radio systems such as Family Radio Service, in which the carrier is allowed to deviate only 2.5 kHz above and below the center frequency with speech signals of no more than 3.5 kHz bandwidth. Wideband FM is used for FM broadcasting, in which music and speech are transmitted with up to 75 kHz deviation from the center frequency and carry audio with up to a 20 kHz bandwidth and subcarriers up to 92 kHz.

Bessel functions

of a 146.52MHz carrier, frequency modulated by a 1,000Hz sinusoid. The modulation index has been adjusted to around 2.4, so the carrier frequency has small amplitude. Several strong sidebands are apparent; in principle an infinite number are produced in FM but the higher-order sidebands are of negligible magnitude.]]

For the case of a carrier modulated by a single sine wave, the resulting frequency spectrum can be calculated using Bessel functions of the first kind, as a function of the sideband number and the modulation index. The carrier and sideband amplitudes are illustrated for different modulation indices of FM signals. For particular values of the modulation index, the carrier amplitude becomes zero and all the signal power is in the sidebands.[7]

Since the sidebands are on both sides of the carrier, their count is doubled, and then multiplied by the modulating frequency to find the bandwidth. For example, 3 kHz deviation modulated by a 2.2 kHz audio tone produces a modulation index of 1.36. Suppose that we limit ourselves to only those sidebands that have a relative amplitude of at least 0.01. Then, examining the chart shows this modulation index will produce three sidebands. These three sidebands, when doubled, gives us (6 × 2.2 kHz) or a 13.2 kHz required bandwidth.

+------------+--------------------+
| Modulation | Sideband amplitude |
| index      |                    |
+============+====================+
| Carrier    | 1                  |
+------------+--------------------+
| 0.00       | 1.00               |
+------------+--------------------+
| 0.25       | 0.98               |
+------------+--------------------+
| 0.5        | 0.94               |
+------------+--------------------+
| 1.0        | 0.77               |
+------------+--------------------+
| 1.5        | 0.51               |
+------------+--------------------+
| 2.0        | 0.22               |
+------------+--------------------+
| 2.41       | 0.00               |
+------------+--------------------+
| 2.5        | −0.05              |
+------------+--------------------+
| 3.0        | −0.26              |
+------------+--------------------+
| 4.0        | −0.40              |
+------------+--------------------+
| 5.0        | −0.18              |
+------------+--------------------+
| 5.53       | 0.00               |
+------------+--------------------+
| 6.0        | 0.15               |
+------------+--------------------+
| 7.0        | 0.30               |
+------------+--------------------+
| 8.0        | 0.17               |
+------------+--------------------+
| 8.65       | 0.00               |
+------------+--------------------+
| 9.0        | −0.09              |
+------------+--------------------+
| 10.0       | −0.25              |
+------------+--------------------+
| 12.0       | 0.05               |
+------------+--------------------+

Carson's rule

A rule of thumb, _Carson's rule_ states that nearly all (~98 percent) of the power of a frequency-modulated signal lies within a bandwidth B_(T)  of:

_B__(_T_) = 2(_Δ__f_+_f__(_m_)) = 2_f__(_m_)(_β_ + 1)

where Δf , as defined above, is the peak deviation of the instantaneous frequency f(t)  from the center carrier frequency f_(c), β is the Modulation index which is the ratio of frequency deviation to highest frequency in the modulating signal and f_(m) is the highest frequency in the modulating signal. Condition for application of Carson's rule is only sinusoidal signals.

_B__(_T_) = 2(_Δ__f_ + _W_) = 2_W_(_D_ + 1)

where W is the highest frequency in the modulating signal but non-sinusoidal in nature and D is the Deviation ratio which the ratio of frequency deviation to highest frequency of modulating non-sinusoidal signal.


Noise reduction

FM provides improved signal-to-noise ratio (SNR), as compared for example with AM. Compared with an optimum AM scheme, FM typically has poorer SNR below a certain signal level called the noise threshold, but above a higher level – the full improvement or full quieting threshold – the SNR is much improved over AM. The improvement depends on modulation level and deviation. For typical voice communications channels, improvements are typically 5–15 dB. FM broadcasting using wider deviation can achieve even greater improvements. Additional techniques, such as pre-emphasis of higher audio frequencies with corresponding de-emphasis in the receiver, are generally used to improve overall SNR in FM circuits. Since FM signals have constant amplitude, FM receivers normally have limiters that remove AM noise, further improving SNR.[8][9]


Implementation

Modulation

FM signals can be generated using either direct or indirect frequency modulation:

-   Direct FM modulation can be achieved by directly feeding the message into the input of a voltage-controlled oscillator.
-   For indirect FM modulation, the message signal is integrated to generate a phase-modulated signal. This is used to modulate a crystal-controlled oscillator, and the result is passed through a frequency multiplier to produce an FM signal. In this modulation, narrowband FM is generated leading to wideband FM later and hence the modulation is known as indirect FM modulation.[10]

Demodulation

Many FM detector circuits exist. A common method for recovering the information signal is through a Foster-Seeley discriminator or ratio detector. A phase-locked loop can be used as an FM demodulator. _Slope detection_ demodulates an FM signal by using a tuned circuit which has its resonant frequency slightly offset from the carrier. As the frequency rises and falls the tuned circuit provides a changing amplitude of response, converting FM to AM. AM receivers may detect some FM transmissions by this means, although it does not provide an efficient means of detection for FM broadcasts.


Applications

Magnetic tape storage

FM is also used at intermediate frequencies by analog VCR systems (including VHS) to record the luminance (black and white) portions of the video signal. Commonly, the chrominance component is recorded as a conventional AM signal, using the higher-frequency FM signal as bias. FM is the only feasible method of recording the luminance ("black and white") component of video to (and retrieving video from) magnetic tape without distortion; video signals have a large range of frequency components – from a few hertz to several megahertz, too wide for equalizers to work with due to electronic noise below −60 dB. FM also keeps the tape at saturation level, acting as a form of noise reduction; a limiter can mask variations in playback output, and the FM capture effect removes print-through and pre-echo. A continuous pilot-tone, if added to the signal – as was done on V2000 and many Hi-band formats – can keep mechanical jitter under control and assist timebase correction.

These FM systems are unusual, in that they have a ratio of carrier to maximum modulation frequency of less than two; contrast this with FM audio broadcasting, where the ratio is around 10,000. Consider, for example, a 6-MHz carrier modulated at a 3.5-MHz rate; by Bessel analysis, the first sidebands are on 9.5 and 2.5 MHz and the second sidebands are on 13 MHz and −1 MHz. The result is a reversed-phase sideband on +1 MHz; on demodulation, this results in unwanted output at 6 – 1 = 5 MHz. The system must be designed so that this unwanted output is reduced to an acceptable level.[11]

Sound

FM is also used at audio frequencies to synthesize sound. This technique, known as FM synthesis, was popularized by early digital synthesizers and became a standard feature in several generations of personal computer sound cards.

Radio

Edwin Howard Armstrong (1890–1954) was an American electrical engineer who invented wideband frequency modulation (FM) radio.[12] He patented the regenerative circuit in 1914, the superheterodyne receiver in 1918 and the super-regenerative circuit in 1922.[13] Armstrong presented his paper, "A Method of Reducing Disturbances in Radio Signaling by a System of Frequency Modulation", (which first described FM radio) before the New York section of the Institute of Radio Engineers on November 6, 1935. The paper was published in 1936.[14]

As the name implies, wideband FM (WFM) requires a wider signal bandwidth than amplitude modulation by an equivalent modulating signal; this also makes the signal more robust against noise and interference. Frequency modulation is also more robust against signal-amplitude-fading phenomena. As a result, FM was chosen as the modulation standard for high frequency, high fidelity radio transmission, hence the term "FM radio" (although for many years the BBC called it "VHF radio" because commercial FM broadcasting uses part of the VHF band—the FM broadcast band). FM receivers employ a special detector for FM signals and exhibit a phenomenon known as the _capture effect_, in which the tuner "captures" the stronger of two stations on the same frequency while rejecting the other (compare this with a similar situation on an AM receiver, where both stations can be heard simultaneously). However, frequency drift or a lack of selectivity may cause one station to be overtaken by another on an adjacent channel. Frequency drift was a problem in early (or inexpensive) receivers; inadequate selectivity may affect any tuner.

An FM signal can also be used to carry a stereo signal; this is done with multiplexing and demultiplexing before and after the FM process. The FM modulation and demodulation process is identical in stereo and monaural processes. A high-efficiency radio-frequency switching amplifier can be used to transmit FM signals (and other constant-amplitude signals). For a given signal strength (measured at the receiver antenna), switching amplifiers use less battery power and typically cost less than a linear amplifier. This gives FM another advantage over other modulation methods requiring linear amplifiers, such as AM and QAM.

FM is commonly used at VHF radio frequencies for high-fidelity broadcasts of music and speech. Analog TV sound is also broadcast using FM. Narrowband FM is used for voice communications in commercial and amateur radio settings. In broadcast services, where audio fidelity is important, wideband FM is generally used. In two-way radio, narrowband FM (NBFM) is used to conserve bandwidth for land mobile, marine mobile and other radio services.

There are reports that on October 5, 1924, Professor Mikhail A. Bonch-Bruevich, during a scientific and technical conversation in the Nizhny Novgorod Radio Laboratory, reported about his new method of telephony, based on a change in the period of oscillations. Demonstration of frequency modulation was carried out on the laboratory model.[15]


See also

-   Amplitude modulation
-   Continuous-wave frequency-modulated radar
-   Chirp
-   FM broadcasting
-   FM stereo
-   FM-UWB (FM and Ultra Wideband)
-   History of radio
-   Modulation, for a list of other modulation techniques


References


Further reading

-   A. Bruce Carlson. _Communication Systems, 4th edition._ McGraw-Hill Science/Engineering/Math. 2001. , .
-   Gary L. Frost. _Early FM Radio: Incremental Technology in Twentieth-Century America._ Baltimore: Johns Hopkins University Press, 2010. , .
-   Ken Seymour, AT&T Wireless (Mobility). _Frequency Modulation, The Electronics Handbook, pp 1188–1200, 1st Edition, 1996. 2nd Edition, 2005_ CRC Press, Inc., (1st Edition).

Category:Radio modulation modes

[1]

[2]

[3] B. Boashash, editor, "Time-Frequency Signal Analysis and Processing – A Comprehensive Reference", Elsevier Science, Oxford, 2003;

[4]

[5] Der, Lawrence, Ph.D., _Frequency Modulation (FM) Tutorial_, http://www.silabs.com/Marcom%20Documents/Resources/FMTutorial.pdf, Silicon Laboratories, Inc., accessed 2013 February 24, p. 5

[6] Lathi, B. P. (1968). _Communication Systems_, p. 214–217. New York: John Wiley and Sons, .

[7] T.G. Thomas, S. C. Sekhar _Communication Theory_, Tata-McGraw Hill 2005, page 136

[8]

[9]

[10] Haykin, Simon [Ed]. (2001). _Communication Systems_, 4th ed.

[11] : "FM Systems Of Exceptional Bandwidth" Proc. IEEE vol 112, no. 9, p. 1664, September 1965

[12]

[13]

[14]

[15] Ф. Лбов. Новая система радиофона // «Радиолюбитель». — 1924. — № 6. — С. 86.