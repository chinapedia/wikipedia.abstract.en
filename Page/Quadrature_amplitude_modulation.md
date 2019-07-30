QUADRATURE AMPLITUDE MODULATION (QAM) is the name of a family of digital modulation methods and a related family of analog modulation methods widely used in modern telecommunications to transmit information. It conveys two analog message signals, or two digital bit streams, by changing (_modulating_) the amplitudes of two carrier waves, using the amplitude-shift keying (ASK) digital modulation scheme or amplitude modulation (AM) analog modulation scheme. The two carrier waves of the same frequency are out of phase with each other by 90°, a condition known as orthogonality or quadrature. The transmitted signal is created by adding the two carrier waves together. At the receiver, the two waves can be coherently separated (demodulated) because of their orthogonality property. Another key property is that the modulations are low-frequency/low-bandwidth waveforms compared to the carrier frequency, which is known as the narrowband assumption.

Phase modulation (analog PM) and phase-shift keying (digital PSK) can be regarded as a special case of QAM, where the amplitude of the transmitted signal is a constant, but its phase varies. This can also be extended to frequency modulation (FM) and frequency-shift keying (FSK), for these can be regarded as a special case of phase modulation.

QAM is used extensively as a modulation scheme for digital telecommunication systems, such as in 802.11 Wi-Fi standards. Arbitrarily high spectral efficiencies can be achieved with QAM by setting a suitable constellation size, limited only by the noise level and linearity of the communications channel.[1]  QAM is being used in optical fiber systems as bit rates increase; QAM16 and QAM64 can be optically emulated with a 3-path interferometer.[2][3]


Demodulation of QAM

In a QAM signal, one carrier lags the other by 90°, and its amplitude modulation is customarily referred to as the in-phase component, denoted by The other modulating function is the quadrature component, So the composite waveform is mathematically modeled as:

$$s_s(t) \triangleq \sin(2\pi f_c t)\cdot I(t)\ +\ \underbrace{\sin\left(2\pi f_c t + \tfrac{\pi}{2} \right)}_{\cos(2\pi f_c t)} \cdot Q(t),$$
    or:

where is the carrier frequency.  At the receiver, a coherent demodulator multiplies the received signal separately with both a cosine and sine signal to produce the received estimates of and . For example:

_r_(_t_) ≜ _s__(_c_)(_t_)cos (2_π__f__(_c_)_t_) = _I_(_t_) ⋅ cos (2_π__f__(_c_)_t_)cos (2_π__f__(_c_)_t_) − _Q_(_t_) ⋅ sin (2_π__f__(_c_)_t_)cos (2_π__f__(_c_)_t_).

Using standard trigonometric identities, we can write this as:

$$\begin{align}
  r(t) &= \tfrac{1}{2} I(t) \left[1 + \cos (4 \pi f_c t)\right] - \tfrac{1}{2} Q(t) \sin (4 \pi f_c t) \\
       &= \tfrac{1}{2} I(t) + \tfrac{1}{2} [I(t) \cos (4 \pi f_c t) - Q(t) \sin (4 \pi f_c t)].
\end{align}$$

Low-pass filtering removes the high frequency terms (containing ), leaving only the term. This filtered signal is unaffected by showing that the in-phase component can be received independently of the quadrature component.  Similarly, we can multiply by a sine wave and then low-pass filter to extract

The addition of two sinusoids is a linear operation that creates no new frequency components. So the bandwidth of the composite signal is comparable to the bandwidth of the DSB (Double-Sideband) components. Effectively, the spectral redundancy of DSB enables a doubling of the information capacity using this technique. This comes at the expense of demodulation complexity. In particular, a DSB signal has zero-crossings at a regular frequency, which makes it easy to recover the phase of the carrier sinusoid. It is said to be self-clocking. But the sender and receiver of a quadrature-modulated signal must share a clock or otherwise send a clock signal. If the clock phases drift apart, the demodulated _I_ and _Q_ signals bleed into each other, yielding crosstalk. In this context, the clock signal is called a "phase reference". Clock synchronization is typically achieved by transmitting a burst subcarrier or a pilot signal. The phase reference for NTSC, for example, is included within its color burst signal.

Analog QAM is used in:

-   NTSC and PAL analog Color television systems, where the I- and Q-signals carry the components of chroma (colour) information. The QAM carrier phase is recovered from a special Colorburst transmitted at the beginning of each scan line.
-   C-QUAM ("Compatible QAM") is used in AM stereo radio to carry the stereo difference information.


Fourier analysis of QAM

In the frequency domain, QAM has a similar spectral pattern to DSB-SC modulation. Applying Euler's formula to the sinusoids in , the positive-frequency portion of (or analytic representation) is:

$$s_c(t)_+ = \tfrac{1}{2} e^{i2\pi f_c t}[I(t)+i\cdot Q(t)]\quad\stackrel{\mathcal{F}}{\Longrightarrow}\quad \tfrac{1}{2}[\widehat{I\ }(f-f_c) + e^{i\pi/2} \widehat Q(f-f_c)],$$

where ℱ denotes the Fourier transform, and and are the transforms of and This result represents the sum of two DSB-SC signals with the same center frequency. The factor of represents the 90° phase shift that enables their individual demodulations.


Digital QAM

As in many digital modulation schemes, the constellation diagram is useful for QAM. In QAM, the constellation points are usually arranged in a square grid with equal vertical and horizontal spacing, although other configurations are possible (e.g. Cross-QAM). Since in digital telecommunications the data is usually binary, the number of points in the grid is usually a power of 2 (2, 4, 8, …). Since QAM is usually square, some of these are rare—the most common forms are 16-QAM, 64-QAM and 256-QAM. By moving to a higher-order constellation, it is possible to transmit more bits per symbol. However, if the mean energy of the constellation is to remain the same (by way of making a fair comparison), the points must be closer together and are thus more susceptible to noise and other corruption; this results in a higher bit error rate and so higher-order QAM can deliver more data less reliably than lower-order QAM, for constant mean constellation energy. Using higher-order QAM without increasing the bit error rate requires a higher signal-to-noise ratio (SNR) by increasing signal energy, reducing noise, or both.

If data-rates beyond those offered by 8-PSK are required, it is more usual to move to QAM since it achieves a greater distance between adjacent points in the I-Q plane by distributing the points more evenly. The complicating factor is that the points are no longer all the same amplitude and so the demodulator must now correctly detect both phase and amplitude, rather than just phase.

64-QAM and 256-QAM are often used in digital cable television and cable modem applications. In the United States, 64-QAM and 256-QAM are the mandated modulation schemes for digital cable (see QAM tuner) as standardised by the SCTE in the standard ANSI/SCTE 07 2013. Note that many marketing people will refer to these as QAM-64 and QAM-256. In the UK, 64-QAM is used for digital terrestrial television (Freeview) whilst 256-QAM is used for Freeview-HD.

Communication systems designed to achieve very high levels of spectral efficiency usually employ very dense QAM constellations. For example, current Homeplug AV2 500-Mbit powerline Ethernet devices use 1024-QAM and 4096-QAM,[4] as well as future devices using ITU-T G.hn standard for networking over existing home wiring (coaxial cable, phone lines and power lines); 4096-QAM provides 12 bits/symbol. Another example is ADSL technology for copper twisted pairs, whose constellation size goes up to 32768-QAM (in ADSL terminology this is referred to as bit-loading, or bit per tone, 32768-QAM being equivalent to 15 bits per tone).[5]

Ultra-high capacity Microwave Backhaul Systems also use 1024-QAM.[6] With 1024-QAM, adaptive coding and modulation (ACM) and XPIC, vendors can obtain gigabit capacity in a single 56 MHz channel.[7]


Interference and noise

In moving to a higher order QAM constellation (higher data rate and mode) in hostile RF/microwave QAM application environments, such as in broadcasting or telecommunications, multipath interference typically increases. There is a spreading of the spots in the constellation, decreasing the separation between adjacent states, making it difficult for the receiver to decode the signal appropriately. In other words, there is reduced noise immunity. There are several test parameter measurements which help determine an optimal QAM mode for a specific operating environment. The following three are most significant:[8]

-   Carrier/interference ratio
-   Carrier-to-noise ratio
-   Threshold-to-noise ratio


See also

-   Amplitude and phase-shift keying or Asymmetric phase-shift keying (APSK)
-   Carrierless Amplitude Phase Modulation (CAP)
-   In-phase and quadrature components
-   Modulation for other examples of modulation techniques
-   Phase-shift keying
-   QAM tuner for HDTV
-   Random modulation


References


Further reading

-   Jonqyin (Russell) Sun "Linear diversity analysis for QAM in Rician fading channels", IEEE WOCC 2014
-   _John G. Proakis_, "_Digital Communications, 3rd Edition_"


External links

-   QAM Demodulation
-   Interactive webdemo of QAM constellation with additive noise Institute of Telecommunicatons, University of Stuttgart
-   QAM bit error rate for AWGN channel – online experiment
-   How imperfections affect QAM constellation
-   Microwave Phase Shifters Overview by Herley General Microwave
-   Simulation of dual-polarization QPSK (DP-QPSK) for 100G optical transmission

Category:Radio modulation modes Category:Data transmission

[1]

[2]

[3] Kylia products , dwdm mux demux, 90 degree optical hybrid, d(q) psk demodulatorssingle polarization

[4] http://www.homeplug.org/media/filer_public/a1/46/a1464318-f5df-46c5-89dc-7243d8ccfcee/homeplug_av2_whitepaper_150907.pdf Homeplug_AV2 whitepaper

[5] http://www.itu.int/rec/T-REC-G.992.3-200904-I section 8.6.3 Constellation mapper - maximum number of bits per constellation BIMAX ≤ 15

[6] http://www.trangosys.com/products/point-to-point-wireless-backhaul/licensed-wireless/trangolink-apex-orion.shtml A Apex Orion

[7]

[8]