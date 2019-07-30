In mathematics, FOURIER ANALYSIS ()[1] is the study of the way general functions may be represented or approximated by sums of simpler trigonometric functions. Fourier analysis grew from the study of Fourier series, and is named after Joseph Fourier, who showed that representing a function as a sum of trigonometric functions greatly simplifies the study of heat transfer.

Today, the subject of Fourier analysis encompasses a vast spectrum of mathematics. In the sciences and engineering, the process of decomposing a function into oscillatory components is often called Fourier analysis, while the operation of rebuilding the function from these pieces is known as FOURIER SYNTHESIS. For example, determining what component frequencies are present in a musical note would involve computing the Fourier transform of a sampled musical note. One could then re-synthesize the same sound by including the frequency components as revealed in the Fourier analysis. In mathematics, the term _Fourier analysis_ often refers to the study of both operations.

The decomposition process itself is called a Fourier transformation. Its output, the Fourier transform, is often given a more specific name, which depends on the domain and other properties of the function being transformed. Moreover, the original concept of Fourier analysis has been extended over time to apply to more and more abstract and general situations, and the general field is often known as harmonic analysis. Each transform used for analysis (see list of Fourier-related transforms) has a corresponding inverse transform that can be used for synthesis.


Applications

Fourier analysis has many scientific applications – in physics, partial differential equations, number theory, combinatorics, signal processing, digital image processing, probability theory, statistics, forensics, option pricing, cryptography, numerical analysis, acoustics, oceanography, sonar, optics, diffraction, geometry, protein structure analysis, and other areas.

This wide applicability stems from many useful properties of the transforms:

-   The transforms are linear operators and, with proper normalization, are unitary as well (a property known as Parseval's theorem or, more generally, as the Plancherel theorem, and most generally via Pontryagin duality) .
-   The transforms are usually invertible.
-   The exponential functions are eigenfunctions of differentiation, which means that this representation transforms linear differential equations with constant coefficients into ordinary algebraic ones . Therefore, the behavior of a linear time-invariant system can be analyzed at each frequency independently.
-   By the convolution theorem, Fourier transforms turn the complicated convolution operation into simple multiplication, which means that they provide an efficient way to compute convolution-based operations such as polynomial multiplication and multiplying large numbers .
-   The discrete version of the Fourier transform (see below) can be evaluated quickly on computers using Fast Fourier Transform (FFT) algorithms.

In forensics, laboratory infrared spectrophotometers use Fourier transform analysis for measuring the wavelengths of light at which a material will absorb in the infrared spectrum. The FT method is used to decode the measured signals and record the wavelength data. And by using a computer, these Fourier calculations are rapidly carried out, so that in a matter of seconds, a computer-operated FT-IR instrument can produce an infrared absorption pattern comparable to that of a prism instrument.[2]

Fourier transformation is also useful as a compact representation of a signal. For example, JPEG compression uses a variant of the Fourier transformation (discrete cosine transform) of small square pieces of a digital image. The Fourier components of each square are rounded to lower arithmetic precision, and weak components are eliminated entirely, so that the remaining components can be stored very compactly. In image reconstruction, each image square is reassembled from the preserved approximate Fourier-transformed components, which are then inverse-transformed to produce an approximation of the original image.

Applications in signal processing

When processing signals, such as audio, radio waves, light waves, seismic waves, and even images, Fourier analysis can isolate narrowband components of a compound waveform, concentrating them for easier detection or removal. A large family of signal processing techniques consist of Fourier-transforming a signal, manipulating the Fourier-transformed data in a simple way, and reversing the transformation.[3]

Some examples include:

-   Equalization of audio recordings with a series of bandpass filters;
-   Digital radio reception without a superheterodyne circuit, as in a modern cell phone or radio scanner;
-   Image processing to remove periodic or anisotropic artifacts such as jaggies from interlaced video, strip artifacts from strip aerial photography, or wave patterns from radio frequency interference in a digital camera;
-   Cross correlation of similar images for co-alignment;
-   X-ray crystallography to reconstruct a crystal structure from its diffraction pattern;
-   Fourier transform ion cyclotron resonance mass spectrometry to determine the mass of ions from the frequency of cyclotron motion in a magnetic field;
-   Many other forms of spectroscopy, including infrared and nuclear magnetic resonance spectroscopies;
-   Generation of sound spectrograms used to analyze sounds;
-   Passive sonar used to classify targets based on machinery noise.


Variants of Fourier analysis

(Continuous) Fourier transform

Most often, the unqualified term FOURIER TRANSFORM refers to the transform of functions of a continuous real argument, and it produces a continuous function of frequency, known as a _frequency distribution_. One function is transformed into another, and the operation is reversible. When the domain of the input (initial) function is time (), and the domain of the output (final) function is ordinary frequency, the transform of function at frequency is given by the complex number:

_S_(_f_) = ∫_( − ∞)^(∞)_s_(_t_) ⋅ _e_^( − _i_2_π__f__t_) _d__t_.

Evaluating this quantity for all values of produces the _frequency-domain_ function. Then can be represented as a recombination of complex exponentials of all possible frequencies:

_s_(_t_) = ∫_( − ∞)^(∞)_S_(_f_) ⋅ _e_^(_i_2_π__f__t_) _d__f_,

which is the inverse transform formula. The complex number, , conveys both amplitude and phase of frequency .

See Fourier transform for much more information, including:

-   conventions for amplitude normalization and frequency scaling/units
-   transform properties
-   tabulated transforms of specific functions
-   an extension/generalization for functions of multiple dimensions, such as images.

Fourier series

The Fourier transform of a periodic function, , with period , becomes a Dirac comb function, modulated by a sequence of complex coefficients:

$$S[k] = \frac{1}{P}\int_{P} s_P(t)\cdot e^{-i2\pi \frac{k}{P} t}\, dt$$

for all integer values of , and where is the integral over any interval of length _P_.

The inverse transform, known as FOURIER SERIES, is a representation of in terms of a summation of a potentially infinite number of harmonically related sinusoids or complex exponential functions, each with an amplitude and phase specified by one of the coefficients:

$$s_P(t)=\sum_{k=-\infty}^\infty S[k]\cdot e^{i2\pi \frac{k}{P} t} \quad\stackrel{\displaystyle \mathcal{F}}{\Longleftrightarrow}\quad \sum_{k=-\infty}^{+\infty} S[k]\, \delta \left(f-\frac{k}{P}\right).$$

When , is expressed as a periodic summation of another function, :

    $s_P(t) \,\triangleq\, \sum_{m=-\infty}^\infty s(t-mP),$

the coefficients are proportional to samples of at discrete intervals of :

    $S[k] =\frac{1}{P}\cdot S\left(\frac{k}{P}\right).$

    $\int_{P} \left(\sum_{m=-\infty}^{\infty} s(t-mP)\right) \cdot e^{-i2\pi \frac{k}{P} t} \,dt = \underbrace{\int_{-\infty}^{\infty} s(t) \cdot e^{-i2\pi \frac{k}{P} t} \,dt}_{\triangleq\, S\left(\frac{k}{P}\right)}$

A sufficient condition for recovering (and therefore ) from just these samples (i.e. from the Fourier series) is that the non-zero portion of be confined to a known interval of duration , which is the frequency domain dual of the Nyquist–Shannon sampling theorem.

See Fourier series for more information, including the historical development.

Discrete-time Fourier transform (DTFT)

The DTFT is the mathematical dual of the time-domain Fourier series. Thus, a convergent periodic summation in the frequency domain can be represented by a Fourier series, whose coefficients are samples of a related continuous time function:

$$S_\frac{1}{T}(f)\ \triangleq\ \underbrace{\sum_{k=-\infty}^{\infty} S\left(f - \frac{k}{T}\right) \equiv \overbrace{\sum_{n=-\infty}^{\infty} s[n] \cdot e^{-i2\pi f n T}}^{\text{Fourier series (DTFT)}}}_{\text{Poisson summation formula}} = \mathcal{F} \left \{ \sum_{n=-\infty}^{\infty} s[n]\ \delta(t-nT)\right \},\,$$

which is known as the DTFT. Thus the DTFT of the sequence is also the FOURIER TRANSFORM of the modulated Dirac comb function.We may also note that:

$$\begin{align} \sum_{n=-\infty}^{+\infty} T\cdot s(nT) \delta(t-nT) &= \sum_{n=-\infty}^{+\infty} T\cdot s(t) \delta(t-nT) \\ &= s(t)\cdot T \sum_{n=-\infty}^{+\infty} \delta(t-nT). \end{align}$$
Consequently, a common practice is to model "sampling" as a multiplication by the Dirac comb function, which of course is only "possible" in a purely mathematical sense.

The Fourier series coefficients (and inverse transform), are defined by:

$$s[n]\ \triangleq\ T \int_\frac{1}{T} S_\frac{1}{T}(f)\cdot e^{i2\pi f nT} \,df = T \underbrace{\int_{-\infty}^{\infty} S(f)\cdot e^{i2\pi f nT} \,df}_{\triangleq\, s(nT)}.$$

Parameter corresponds to the sampling interval, and this Fourier series can now be recognized as a form of the Poisson summation formula. Thus we have the important result that when a discrete data sequence, , is proportional to samples of an underlying continuous function, , one can observe a periodic summation of the continuous Fourier transform, . That is a cornerstone in the foundation of digital signal processing. Furthermore, under certain idealized conditions one can theoretically recover and exactly. A sufficient condition for perfect recovery is that the non-zero portion of be confined to a known frequency interval of width . When that interval is , the applicable reconstruction formula is the Whittaker–Shannon interpolation formula.

Another reason to be interested in is that it often provides insight into the amount of aliasing caused by the sampling process.

Applications of the DTFT are not limited to sampled functions. See Discrete-time Fourier transform for more information on this and other topics, including:

-   normalized frequency units
-   windowing (finite-length sequences)
-   transform properties
-   tabulated transforms of specific functions

Discrete Fourier transform (DFT)

Similar to a Fourier series, the DTFT of a periodic sequence, , with period , becomes a Dirac comb function, modulated by a sequence of complex coefficients (see DTFT/Periodic data):

$$S[k] = \sum_n s_N[n]\cdot e^{-i2\pi \frac{k}{N} n},$$
  where is the sum over any sequence of length .

The sequence is what is customarily known as the DFT of :

$$S[k] = \frac{1}{T}\cdot S_\frac{1}{T}\left(\frac{k}{P}\right).$$

$$\sum_{n=0}^{N-1} \left(\sum_{m=-\infty}^{\infty} s([n-mN]T)\right) \cdot e^{-i2\pi \frac{k}{N} n} = \underbrace{\sum_{n=-\infty}^{\infty} s(nT) \cdot e^{-i2\pi \frac{k}{N} n}}_{\triangleq\, \frac{1}{T} S_\frac{1}{T}\left(\frac{k}{NT}\right)}$$

Conversely, when one wants to compute an arbitrary number () of discrete samples of one cycle of a continuous DTFT, , it can be done by computing the relatively simple DFT of , as defined above. In most cases, is chosen equal to the length of non-zero portion of . Increasing , known as _zero-padding_ or _interpolation_, results in more closely spaced samples of one cycle of . Decreasing , causes overlap (adding) in the time-domain (analogous to aliasing), which corresponds to decimation in the frequency domain. (see Sampling the DTFT) In most cases of practical interest, the sequence represents a longer sequence that was truncated by the application of a finite-length window function or FIR filter array.

The DFT can be computed using a fast Fourier transform (FFT) algorithm, which makes it a practical and important transformation on computers.

See Discrete Fourier transform for much more information, including:

-   transform properties
-   applications
-   tabulated transforms of specific functions

Summary

For periodic functions, both the Fourier transform and the DTFT comprise only a discrete set of frequency components (Fourier series), and the transforms diverge at those frequencies. One common practice (not discussed above) is to handle that divergence via Dirac delta and Dirac comb functions. But the same spectral information can be discerned from just one cycle of the periodic function, since all the other cycles are identical. Similarly, finite-duration functions can be represented as a Fourier series, with no actual loss of information except that the periodicity of the inverse transform is a mere artifact.

We also note that it is common in practice for the duration of _s_(•) to be limited to the period, or .  But these formulas do not require that condition.

              Continuous frequency                        Discrete frequencies
  ----------- ------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Transform   S(f) ≜ ∫_( − ∞)^(∞)s(t) ⋅ e^( − i2πft) dt   $\overbrace{\frac{1}{P}\cdot S\left(\frac{k}{P}\right)}^{S[k]}\, \triangleq\, \frac{1}{P} \int_{-\infty}^{\infty} s(t) \cdot e^{-i2\pi \frac{k}{P} t}\,dt \equiv \frac{1}{P} \int_P s_P(t) \cdot e^{-i2\pi \frac{k}{P} t} \,dt$
  Inverse     s(t) = ∫_( − ∞)^(∞)S(f) ⋅ e^(i2πft) df      $\underbrace{s_P(t) = \sum_{k=-\infty}^{\infty} S[k] \cdot e^{i2\pi \frac{k}{P} t}}_{\text{Poisson summation formula (Fourier series)}}\,$

  :  transforms (continuous-time)

              Continuous frequency                                                                                                                                                                                                                                                      Discrete frequencies
  ----------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------
  Transform   $\underbrace{\frac{1}{T} S_\frac{1}{T}(f)\, \triangleq\, \sum_{n=-\infty}^{\infty} s(nT)\cdot e^{-i2\pi f nT}}_{\text{Poisson summation formula (DTFT)}}$                                                                                                                 $\begin{align}
                                                                                                                                                                                                                                                                                        \overbrace{\frac{1}{T} S_\frac{1}{T}\left(\frac{k}{NT}\right)}^{S[k]}\, &\triangleq\, \sum_{n=-\infty}^{\infty} s(nT)\cdot e^{-i2\pi \frac{kn}{N}}\\
                                                                                                                                                                                                                                                                                        &\equiv \underbrace{\sum_{n} s_P(nT)\cdot e^{-i2\pi \frac{kn}{N}}}_{\text{DFT}}\,
                                                                                                                                                                                                                                                                                        \end{align}$
  Inverse     $s(nT) = T \int_\frac{1}{T} \frac{1}{T} S_\frac{1}{T}(f)\cdot e^{i2\pi f nT} \,df$ $\sum_{n=-\infty}^{\infty} s(nT)\cdot \delta(t-nT) = \underbrace{\int_{-\infty}^{\infty} \frac{1}{T}\ S_\frac{1}{T}(f)\cdot e^{i2\pi f t}\,df}_{\text{inverse Fourier transform}}\,$   $\begin{align}
                                                                                                                                                                                                                                                                                        s_P(nT) &= \overbrace{\frac{1}{N} \sum_{k} S[k]\cdot e^{i2\pi \frac{kn}{N}}}^{\text{inverse DFT}}\\
                                                                                                                                                                                                                                                                                        &= \tfrac{1}{P} \sum_{k} S_\frac{1}{T}\left(\frac{k}{P}\right)\cdot e^{i2\pi \frac{kn}{N}}
                                                                                                                                                                                                                                                                                        \end{align}$

  :  transforms (discrete-time)

Symmetry properties

When the real and imaginary parts of a complex function are decomposed into their even and odd parts, there are four components, denoted below by the subscripts RE, RO, IE, and IO. And there is a one-to-one mapping between the four components of a complex time function and the four components of its complex frequency transform:[4]



\begin{array}{rccccccccc} \text{Time domain} & s & = & s_{_{\text{RE}}} & + & s_{_{\text{RO}}} & + & i s_{_{\text{IE}}} & + & \underbrace{i\ s_{_{\text{IO}}}} \\ &\Bigg\Updownarrow\mathcal{F} & &\Bigg\Updownarrow\mathcal{F} & &\ \ \Bigg\Updownarrow\mathcal{F} & &\ \ \Bigg\Updownarrow\mathcal{F} & &\ \ \Bigg\Updownarrow\mathcal{F}\\ \text{Frequency domain} & S & = & S_\text{RE} & + & \overbrace{\,i\ S_\text{IO}\,} & + & i S_\text{IE} & + & S_\text{RO} \end{array}

From this, various relationships are apparent, for example:

-   The transform of a real-valued function () is the even symmetric function . Conversely, an even-symmetric transform implies a real-valued time-domain.
-   The transform of an imaginary-valued function () is the odd symmetric function , and the converse is true.
-   The transform of an even-symmetric function () is the real-valued function , and the converse is true.
-   The transform of an odd-symmetric function () is the imaginary-valued function , and the converse is true.

Fourier transforms on arbitrary locally compact abelian topological groups

The Fourier variants can also be generalized to Fourier transforms on arbitrary locally compact Abelian topological groups, which are studied in harmonic analysis; there, the Fourier transform takes functions on a group to functions on the dual group. This treatment also allows a general formulation of the convolution theorem, which relates Fourier transforms and convolutions. See also the Pontryagin duality for the generalized underpinnings of the Fourier transform.

More specific, Fourier analysis can be done on cosets,[5] even discrete cosets.

Time–frequency transforms

In signal processing terms, a function (of time) is a representation of a signal with perfect _time resolution_, but no frequency information, while the Fourier transform has perfect _frequency resolution_, but no time information.

As alternatives to the Fourier transform, in time–frequency analysis, one uses time–frequency transforms to represent signals in a form that has some time information and some frequency information – by the uncertainty principle, there is a trade-off between these. These can be generalizations of the Fourier transform, such as the short-time Fourier transform, the Gabor transform or fractional Fourier transform (FRFT), or can use different functions to represent signals, as in wavelet transforms and chirplet transforms, with the wavelet analog of the (continuous) Fourier transform being the continuous wavelet transform.


History

A primitive form of harmonic series dates back to ancient Babylonian mathematics, where they were used to compute ephemerides (tables of astronomical positions).[6][7][8][9]

The classical Greek concepts of deferent and epicycle in the Ptolemaic system of astronomy were related to Fourier series (see Deferent and epicycle: Mathematical formalism).

In modern times, variants of the discrete Fourier transform were used by Alexis Clairaut in 1754 to compute an orbit,[10] which has been described as the first formula for the DFT,[11] and in 1759 by Joseph Louis Lagrange, in computing the coefficients of a trigonometric series for a vibrating string.[12] Technically, Clairaut's work was a cosine-only series (a form of discrete cosine transform), while Lagrange's work was a sine-only series (a form of discrete sine transform); a true cosine+sine DFT was used by Gauss in 1805 for trigonometric interpolation of asteroid orbits.[13] Euler and Lagrange both discretized the vibrating string problem, using what would today be called samples.[14]

An early modern development toward Fourier analysis was the 1770 paper _Réflexions sur la résolution algébrique des équations_ by Lagrange, which in the method of Lagrange resolvents used a complex Fourier decomposition to study the solution of a cubic:[15] Lagrange transformed the roots into the resolvents:

$$\begin{align}
r_1 &= x_1 + x_2 + x_3\\
r_2 &= x_1 + \zeta x_2 + \zeta^2 x_3\\
r_3 &= x_1 + \zeta^2 x_2 + \zeta x_3
\end{align}$$
where is a cubic root of unity, which is the DFT of order 3.

A number of authors, notably Jean le Rond d'Alembert, and Carl Friedrich Gauss used trigonometric series to study the heat equation,[16] but the breakthrough development was the 1807 paper _Mémoire sur la propagation de la chaleur dans les corps solides_ by Joseph Fourier, whose crucial insight was to model _all_ functions by trigonometric series, introducing the Fourier series.

Historians are divided as to how much to credit Lagrange and others for the development of Fourier theory: Daniel Bernoulli and Leonhard Euler had introduced trigonometric representations of functions,[17] and Lagrange had given the Fourier series solution to the wave equation,[18] so Fourier's contribution was mainly the bold claim that an arbitrary function could be represented by a Fourier series.[19]

The subsequent development of the field is known as harmonic analysis, and is also an early instance of representation theory.

The first fast Fourier transform (FFT) algorithm for the DFT was discovered around 1805 by Carl Friedrich Gauss when interpolating measurements of the orbit of the asteroids Juno and Pallas, although that particular FFT algorithm is more often attributed to its modern rediscoverers Cooley and Tukey.[20][21]


Interpretation in terms of time and frequency

In signal processing, the Fourier transform often takes a time series or a function of continuous time, and maps it into a frequency spectrum. That is, it takes a function from the time domain into the frequency domain; it is a decomposition of a function into sinusoids of different frequencies; in the case of a Fourier series or discrete Fourier transform, the sinusoids are harmonics of the fundamental frequency of the function being analyzed.

When the function is a function of time and represents a physical signal, the transform has a standard interpretation as the frequency spectrum of the signal. The magnitude of the resulting complex-valued function at frequency represents the amplitude of a frequency component whose initial phase is given by the phase of .

Fourier transforms are not limited to functions of time, and temporal frequencies. They can equally be applied to analyze _spatial_ frequencies, and indeed for nearly any function domain. This justifies their use in such diverse branches as image processing, heat conduction, and automatic control.


See also

-   Generalized Fourier series
-   Fourier–Bessel series
-   Fourier-related transforms
-   Laplace transform (LT)
-   Two-sided Laplace transform
-   Mellin transform
-   Non-uniform discrete Fourier transform (NDFT)
-   Quantum Fourier transform (QFT)
-   Number-theoretic transform
-   Least-squares spectral analysis
-   Basis vectors
-   Bispectrum
-   Characteristic function (probability theory)
-   Orthogonal functions
-   Schwartz space
-   Spectral density
-   Spectral density estimation
-   Spectral music
-   Wavelet


Notes


References


Further reading

-   -   -   -   -   -   -   -   -   -


External links

-   Tables of Integral Transforms at EqWorld: The World of Mathematical Equations.
-   An Intuitive Explanation of Fourier Theory by Steven Lehar.
-   Lectures on Image Processing: A collection of 18 lectures in pdf format from Vanderbilt University. Lecture 6 is on the 1- and 2-D Fourier Transform. Lectures 7–15 make use of it., by Alan Peters
-

Fourier_analysis Category:Integral transforms Category:Digital signal processing Category:Mathematical physics Category:Mathematics of computing Category:Time series Category:Joseph Fourier

[1]

[2]

[3]

[4]

[5] Forrest, Brian. (1998). Fourier Analysis on Coset Spaces. Rocky Mountain Journal of Mathematics. 28. 10.1216/rmjm/1181071828.

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]