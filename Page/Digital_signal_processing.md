DIGITAL SIGNAL PROCESSING (DSP) is the use of digital processing, such as by computers or more specialized digital signal processors, to perform a wide variety of signal processing operations. The signals processed in this manner are a sequence of numbers that represent samples of a continuous variable in a domain such as time, space, or frequency.

Digital signal processing and analog signal processing are subfields of signal processing. DSP applications include audio and speech processing, sonar, radar and other sensor array processing, spectral density estimation, statistical signal processing, digital image processing, signal processing for telecommunications, control systems, biomedical engineering, seismology, among others.

DSP can involve linear or nonlinear operations. Nonlinear signal processing is closely related to nonlinear system identification[1] and can be implemented in the time, frequency, and spatio-temporal domains.

The application of digital computation to signal processing allows for many advantages over analog processing in many applications, such as error detection and correction in transmission as well as data compression.[2] DSP is applicable to both streaming data and static (stored) data.


Signal sampling

To digitally analyze and manipulate an analog signal, it must be digitized with an analog-to-digital converter (ADC).[3] Sampling is usually carried out in two stages, discretization and quantization. Discretization means that the signal is divided into equal intervals of time, and each interval is represented by a single measurement of amplitude. Quantization means each amplitude measurement is approximated by a value from a finite set. Rounding real numbers to integers is an example.

The Nyquist–Shannon sampling theorem states that a signal can be exactly reconstructed from its samples if the sampling frequency is greater than twice the highest frequency component in the signal. In practice, the sampling frequency is often significantly higher than twice the Nyquist frequency.[4]

Theoretical DSP analyses and derivations are typically performed on discrete-time signal models with no amplitude inaccuracies (quantization error), "created" by the abstract process of sampling. Numerical methods require a quantized signal, such as those produced by an ADC. The processed result might be a frequency spectrum or a set of statistics. But often it is another quantized signal that is converted back to analog form by a digital-to-analog converter (DAC).


Domains

In DSP, engineers usually study digital signals in one of the following domains: time domain (one-dimensional signals), spatial domain (multidimensional signals), frequency domain, and wavelet domains. They choose the domain in which to process a signal by making an informed assumption (or by trying different possibilities) as to which domain best represents the essential characteristics of the signal and the processing to be applied to it. A sequence of samples from a measuring device produces a temporal or spatial domain representation, whereas a discrete Fourier transform produces the frequency domain representation.

Time and space domains

The most common processing approach in the time or space domain is enhancement of the input signal through a method called filtering. Digital filtering generally consists of some linear transformation of a number of surrounding samples around the current sample of the input or output signal. There are various ways to characterize filters; for example:

-   A _linear_ filter is a linear transformation of input samples; other filters are _nonlinear_. Linear filters satisfy the superposition principle, i.e. if an input is a weighted linear combination of different signals, the output is a similarly weighted linear combination of the corresponding output signals.
-   A _causal_ filter uses only previous samples of the input or output signals; while a _non-causal_ filter uses future input samples. A non-causal filter can usually be changed into a causal filter by adding a delay to it.
-   A _time-invariant_ filter has constant properties over time; other filters such as adaptive filters change in time.
-   A _stable_ filter produces an output that converges to a constant value with time, or remains bounded within a finite interval. An _unstable_ filter can produce an output that grows without bounds, with bounded or even zero input.
-   A finite impulse response (FIR) filter uses only the input signals, while an infinite impulse response (IIR) filter uses both the input signal and previous samples of the output signal. FIR filters are always stable, while IIR filters may be unstable.

A filter can be represented by a block diagram, which can then be used to derive a sample processing algorithm to implement the filter with hardware instructions. A filter may also be described as a difference equation, a collection of zeros and poles or an impulse response or step response.

The output of a linear digital filter to any given input may be calculated by convolving the input signal with the impulse response.

Frequency domain

Signals are converted from time or space domain to the frequency domain usually through use of the Fourier transform. The Fourier transform converts the time or space information to a magnitude and phase component of each frequency. With some applications, how the phase varies with frequency can be a significant consideration. Where phase is unimportant, often the Fourier transform is converted to the power spectrum, which is the magnitude of each frequency component squared.

The most common purpose for analysis of signals in the frequency domain is analysis of signal properties. The engineer can study the spectrum to determine which frequencies are present in the input signal and which are missing. Frequency domain analysis is also called _spectrum-_ or _spectral analysis_.

Filtering, particularly in non-realtime work can also be achieved in the frequency domain, applying the filter and then converting back to the time domain. This can be an efficient implementation and can give essentially any filter response including excellent approximations to brickwall filters.

There are some commonly-used frequency domain transformations. For example, the cepstrum converts a signal to the frequency domain through Fourier transform, takes the logarithm, then applies another Fourier transform. This emphasizes the harmonic structure of the original spectrum.

Z-plane analysis

Digital filters come in both IIR and FIR types. Whereas FIR filters are always stable, IIR filters have feedback loops that may become unstable and oscillate. The Z-transform provides a tool for analyzing stability issues of digital IIR filters. It is analogous to the Laplace transform, which is used to design and analyze analog IIR filters.

Wavelet

. The original image is high-pass filtered, yielding the three large images, each describing local changes in brightness (details) in the original image. It is then low-pass filtered and downscaled, yielding an approximation image; this image is high-pass filtered to produce the three smaller detail images, and low-pass filtered to produce the final approximation image in the upper-left.]] In numerical analysis and functional analysis, a discrete wavelet transform (DWT) is any wavelet transform for which the wavelets are discretely sampled. As with other wavelet transforms, a key advantage it has over Fourier transforms is temporal resolution: it captures both frequency _and_ location information.The accuracy of the joint time-frequency resolution is limited by the uncertainty principle of time-frequency.


Applications

Applications of DSP include audio signal processing, audio compression, digital image processing, video compression, speech processing, speech recognition, digital communications, digital synthesizers, radar, sonar, financial signal processing, seismology and biomedicine. Specific examples include speech coding and transmission in digital mobile phones, room correction of sound in hi-fi and sound reinforcement applications, weather forecasting, economic forecasting, seismic data processing, analysis and control of industrial processes, medical imaging such as CAT scans and MRI, MP3 compression, computer graphics, image manipulation, audio crossovers and equalization, and audio effects units.[5]


Implementation

DSP algorithms may be run on general-purpose computers and digital signal processors. DSP algorithms are also implemented on purpose-built hardware such as application-specific integrated circuit (ASICs). Additional technologies for digital signal processing include more powerful general purpose microprocessors, field-programmable gate arrays (FPGAs), digital signal controllers (mostly for industrial applications such as motor control), and stream processors.[6]

For systems that do not a have real-time computing requirement and the signal data (either input or output) exists in data files, processing may be done economically with a general-purpose computer. This is essentially no different from any other data processing, except DSP mathematical techniques (such as the FFT) are used, and the sampled data is usually assumed to be uniformly sampled in time or space. An example of such an application is processing digital photographs with software such as Photoshop.

When the application requirement is real-time, DSP is often implemented using specialized or dedicated processors or microprocessors, sometimes using multiple processors or multiple processing cores. These may process data using fixed-point arithmetic or floating point. For more demanding applications FPGAs may be used.[7] For the most demanding applications or high-volume products, ASICs might be designed specifically for the application.


Techniques

-   Bilinear transform
-   Discrete Fourier transform
-   Discrete-time Fourier transform
-   Filter design
-   Goertzel algorithm
-   LTI system theory
-   Minimum phase
-   s-plane
-   Transfer function
-   Z-transform


Related fields

-   Analog signal processing
-   Automatic control
-   Computer Engineering
-   Computer science
-   Data compression
-   Dataflow programming
-   Electrical engineering
-   Fourier analysis
-   Information theory
-   Machine learning
-   Real-time computing
-   Stream processing
-   Telecommunication
-   Time series
-   Wavelet


References


Further reading

-   N. Ahmed and K.R. Rao (1975). Orthogonal Transforms for Digital Signal Processing. Springer-Verlag (Berlin – Heidelberg – New York), .
-   Jonathan M. Blackledge, Martin Turner: _Digital Signal Processing: Mathematical and Computational Methods, Software Development and Applications_, Horwood Publishing,
-   James D. Broesch: _Digital Signal Processing Demystified_, Newnes,
-   Paul M. Embree, Damon Danieli: _C++ Algorithms for Digital Signal Processing_, Prentice Hall,
-   Hari Krishna Garg: _Digital Signal Processing Algorithms_, CRC Press,
-   P. Gaydecki: _Foundations Of Digital Signal Processing: Theory, Algorithms And Hardware Design_, Institution of Electrical Engineers,
-   Ashfaq Khan: _Digital Signal Processing Fundamentals_, Charles River Media,
-   Sen M. Kuo, Woon-Seng Gan: _Digital Signal Processors: Architectures, Implementations, and Applications_, Prentice Hall,
-   Paul A. Lynn, Wolfgang Fuerst: _Introductory Digital Signal Processing with Computer Applications_, John Wiley & Sons,
-   Richard G. Lyons: _Understanding Digital Signal Processing_, Prentice Hall,
-   Vijay Madisetti, Douglas B. Williams: _The Digital Signal Processing Handbook_, CRC Press,
-   James H. McClellan, Ronald W. Schafer, Mark A. Yoder: _Signal Processing First_, Prentice Hall,
-   Bernard Mulgrew, Peter Grant, John Thompson: _Digital Signal Processing - Concepts and Applications_, Palgrave Macmillan,
-   Boaz Porat: _A Course in Digital Signal Processing_, Wiley,
-   John G. Proakis, Dimitris Manolakis: _Digital Signal Processing: Principles, Algorithms and Applications_, 4th ed, Pearson, April 2006,
-   John G. Proakis: _A Self-Study Guide for Digital Signal Processing_, Prentice Hall,
-   Charles A. Schuler: _Digital Signal Processing: A Hands-On Approach_, McGraw-Hill,
-   Doug Smith: _Digital Signal Processing Technology: Essentials of the Communications Revolution_, American Radio Relay League,
-   -   -   -   -   -   Hayes, Monson H. Statistical digital signal processing and modeling. John Wiley & Sons, 2009. (with MATLAB scripts)

Category:Digital electronics * Category:Telecommunication theory Category:Radar signal processing

[1]

[2]

[3]

[4]

[5]

[6]

[7]