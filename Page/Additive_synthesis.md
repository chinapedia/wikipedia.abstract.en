ADDITIVE SYNTHESIS is a sound synthesis technique that creates timbre by adding sine waves together.[1][2]

The timbre of musical instruments can be considered in the light of Fourier theory to consist of multiple harmonic or inharmonic _partials_ or overtones. Each partial is a sine wave of different frequency and amplitude that swells and decays over time due to modulation from an ADSR envelope or low frequency oscillator.

Additive synthesis most directly generates sound by adding the output of multiple sine wave generators. Alternative implementations may use pre-computed wavetables or the inverse Fast Fourier transform.


Explanation

The sounds that are heard in everyday life are not characterized by a single frequency. Instead, they consist of a sum of pure sine frequencies, each one at a different amplitude. When humans hear these frequencies simultaneously, we can recognize the sound. This is true for both "non-musical" sounds (e.g. water splashing, leaves rustling, etc.) and for "musical sounds" (e.g. a piano note, a bird's tweet, etc.). This set of parameters (frequencies, their relative amplitudes, and how the relative amplitudes change over time) are encapsulated by the _timbre_ of the sound. Fourier analysis is the technique that is used to determine these exact timbre parameters from an overall sound signal; conversely, the resulting set of frequencies and amplitudes is called the Fourier series of the original sound signal.

In the case of a musical note, the lowest frequency of its timbre is designated as the sound's fundamental frequency. For simplicity, we often say that the note is playing at that fundamental frequency (e.g. "middle C is 261.6 Hz"),[3] even though the sound of that note consists of many other frequencies as well. The set of the remaining frequencies is called the overtones (or the harmonics) of the sound.[4] In other words, the fundamental frequency alone is responsible for the pitch of the note, while the overtones define the timbre of the sound. The overtones of a piano playing middle C will be quite different from the overtones of a violin playing the same note; that's what allows us to differentiate the sounds of the two instruments. There are even subtle differences in timbre between different versions of the same instrument (for example, an upright piano vs. a grand piano).

Additive synthesis aims to exploit this property of sound in order to construct timbre from the ground up. By adding together pure frequencies (sine waves) of varying frequencies and amplitudes, we can precisely define the timbre of the sound that we want to create.


Definitions

  ------------------------
  Additive_synthesis.svg
  ------------------------

Harmonic additive synthesis is closely related to the concept of a Fourier series which is a way of expressing a periodic function as the sum of sinusoidal functions with frequencies equal to integer multiples of a common fundamental frequency. These sinusoids are called harmonics, overtones, or generally, partials. In general, a Fourier series contains an infinite number of sinusoidal components, with no upper limit to the frequency of the sinusoidal functions and includes a DC component (one with frequency of 0 Hz). Frequencies outside of the human audible range can be omitted in additive synthesis. As a result, only a finite number of sinusoidal terms with frequencies that lie within the audible range are modeled in additive synthesis.

A waveform or function is said to be periodic if

    $y(t) = y(t+P) \$

for all t  and for some period P .

The Fourier series of a periodic function is mathematically expressed as:

    \begin{align}

 y(t) &= \frac{a_0}{2} + \sum_{k=1}^{\infty} \left[ a_k \cos(2 \pi k f_0 t ) - b_k \sin(2 \pi k f_0 t ) \right] \\
      &= \frac{a_0}{2} + \sum_{k=1}^{\infty} r_k \cos\left(2 \pi k f_0 t + \phi_k \right) \\
  \end{align} 

where



        f₀ = 1/P  is the fundamental frequency of the waveform and is equal to the reciprocal of the period,
        a_(k) = r_(k)cos (ϕ_(k)) = 2f₀∫₀^(P)y(t)cos (2πkf₀t) dt, k ≥ 0 
        b_(k) = r_(k)sin (ϕ_(k)) =  − 2f₀∫₀^(P)y(t)sin (2πkf₀t) dt, k ≥ 1 
        $r_k = \sqrt{a_k^2 + b_k^2}\,$ is the amplitude of the k th harmonic,
        ϕ_(k) = atan2 (b_(k), a_(k))  is the phase offset of the k th harmonic. atan2( ) is the four-quadrant arctangent function,

Being inaudible, the DC component, a₀/2 , and all components with frequencies higher than some finite limit, Kf₀ , are omitted in the following expressions of additive synthesis.

Harmonic form

The simplest harmonic additive synthesis can be mathematically expressed as:



where y(t)  is the synthesis output, r_(k) , kf₀ , and ϕ_(k)  are the amplitude, frequency, and the phase offset, respectively, of the k th harmonic partial of a total of K  harmonic partials, and f₀  is the fundamental frequency of the waveform and the frequency of the musical note.

Time-dependent amplitudes

  ------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Harmonic_additive_synthesis_spectrum.png   Example of harmonic additive synthesis in which each harmonic has a time-dependent amplitude. The fundamental frequency is 440 Hz. noicon Problems listening to this file? See Media help
  ------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

More generally, the amplitude of each harmonic can be prescribed as a function of time, r_(k)(t) , in which case the synthesis output is



Each envelope r_(k)(t)  should vary slowly relative to the frequency spacing between adjacent sinusoids. The bandwidth of r_(k)(t)  should be significantly less than f₀ .

Inharmonic form

Additive synthesis can also produce inharmonic sounds (which are aperiodic waveforms) in which the individual overtones need not have frequencies that are integer multiples of some common fundamental frequency.[5][6] While many conventional musical instruments have harmonic partials (e.g. an oboe), some have inharmonic partials (e.g. bells). Inharmonic additive synthesis can be described as

    $y(t) = \sum_{k=1}^{K} r_k(t) \cos\left(2 \pi f_k t + \phi_k \right),$

where f_(k)  is the constant frequency of k th partial.

  -------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Inharmonic_additive_synthesis_spectrum.png   Example of inharmonic additive synthesis in which both the amplitude and frequency of each partial are time-dependent. noicon Problems listening to this file? See Media help
  -------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Time-dependent frequencies

In the general case, the instantaneous frequency of a sinusoid is the derivative (with respect to time) of the argument of the sine or cosine function. If this frequency is represented in hertz, rather than in angular frequency form, then this derivative is divided by 2π . This is the case whether the partial is harmonic or inharmonic and whether its frequency is constant or time-varying.

In the most general form, the frequency of each non-harmonic partial is a non-negative function of time, f_(k)(t) , yielding



Broader definitions

_Additive synthesis_ more broadly may mean sound synthesis techniques that sum simple elements to create more complex timbres, even when the elements are not sine waves.[7][8] For example, F. Richard Moore listed additive synthesis as one of the "four basic categories" of sound synthesis alongside subtractive synthesis, nonlinear synthesis, and physical modeling.[9] In this broad sense, pipe organs, which also have pipes producing non-sinusoidal waveforms, can be considered as a variant form of additive synthesizers. Summation of principal components and Walsh functions have also been classified as additive synthesis.[10]


Implementation methods

Modern-day implementations of additive synthesis are mainly digital. (See section _Discrete-time equations_ for the underlying discrete-time theory)

Oscillator bank synthesis

Additive synthesis can be implemented using a bank of sinusoidal oscillators, one for each partial.[11]

Wavetable synthesis

In the case of harmonic, quasi-periodic musical tones, wavetable synthesis can be as general as time-varying additive synthesis, but requires less computation during synthesis.[12][13] As a result, an efficient implementation of time-varying additive synthesis of harmonic tones can be accomplished by use of _wavetable synthesis_.

Group additive synthesis

Group additive synthesis

[14][15] is a method to group partials into harmonic groups (having different fundamental frequencies) and synthesize each group separately with _wavetable synthesis_ before mixing the results.

Inverse FFT synthesis

An inverse Fast Fourier transform can be used to efficiently synthesize frequencies that evenly divide the transform period or "frame". By careful consideration of the DFT frequency-domain representation it is also possible to efficiently synthesize sinusoids of arbitrary frequencies using a series of overlapping frames and the inverse Fast Fourier transform.[16]


Additive analysis/resynthesis

Sinusoidal analysis/synthesis system for Sinusoidal Modeling (based on )[17]

It is possible to analyze the frequency components of a recorded sound giving a "sum of sinusoids" representation. This representation can be re-synthesized using additive synthesis. One method of decomposing a sound into time varying sinusoidal partials is short-time Fourier transform (STFT)-based McAulay-Quatieri Analysis.[18][19]

By modifying the sum of sinusoids representation, timbral alterations can be made prior to resynthesis. For example, a harmonic sound could be restructured to sound inharmonic, and vice versa. Sound hybridisation or "morphing" has been implemented by additive resynthesis.[20]

Additive analysis/resynthesis has been employed in a number of techniques including Sinusoidal Modelling,[21] Spectral Modelling Synthesis (SMS),[22] and the Reassigned Bandwidth-Enhanced Additive Sound Model.[23] Software that implements additive analysis/resynthesis includes: SPEAR,[24] LEMUR, LORIS,[25] SMSTools,[26] ARSS.[27]

Products

New England Digital Synclavier had a resynthesis feature where samples could be analyzed and converted into ”timbre frames” which were part of its additive synthesis engine. Technos acxel, launched in 1987, utilized the additive analysis/resynthesis model, in an FFT implementation.

Also a vocal synthesizer, Vocaloid have been implemented on the basis of additive analysis/resynthesis: its spectral voice model called Excitation plus Resonances (EpR) model[28][29] is extended based on Spectral Modeling Synthesis (SMS), and its diphone concatenative synthesis is processed using _spectral peak processing_ (SPP)[30] technique similar to modified phase-locked vocoder[31] (an improved phase vocoder for formant processing).[32] Using these techniques, spectral components (_formants_) consisting of purely harmonic partials can be appropriately transformed into desired form for sound modeling, and sequence of short samples (_diphones_ or _phonemes_) constituting desired phrase, can be smoothly connected by interpolating matched partials and formant peaks, respectively, in the inserted transition region between different samples. (See also Dynamic timbres)


Applications

Musical instruments

Additive synthesis is used in electronic musical instruments. It is the principal sound generation technique used by Eminent organs.

Speech synthesis

In linguistics research, harmonic additive synthesis was used in 1950s to play back modified and synthetic speech spectrograms.[33]

Later, in early 1980s, listening tests were carried out on synthetic speech stripped of acoustic cues to assess their significance. Time-varying formant frequencies and amplitudes derived by linear predictive coding were synthesized additively as pure tone whistles. This method is called sinewave synthesis.[34][35] Also the composite sinusoidal modeling (CSM)[36][37] used on a singing speech synthesis feature on Yamaha CX5M (1984), is known to use a similar approach which was independently developed during 1966–1979.[38][39] These methods are characterized by extraction and recomposition of a set of significant spectral peaks corresponding to the several resonance modes occurred in the oral cavity and nasal cavity, in a viewpoint of acoustics. This principle was also utilized on a physical modeling synthesis method, called modal synthesis.[40][41][42][43]


History

Harmonic analysis was discovered by Joseph Fourier,[44] who published an extensive treatise of his research in the context of heat transfer in 1822.[45] The theory found an early application in prediction of tides. Around 1876,[46] Lord Kelvin constructed a mechanical tide predictor. It consisted of a _harmonic analyzer_ and a _harmonic synthesizer_, as they were called already in the 19th century.[47][48] The analysis of tide measurements was done using James Thomson's _integrating machine_. The resulting Fourier coefficients were input into the synthesizer, which then used a system of cords and pulleys to generate and sum harmonic sinusoidal partials for prediction of future tides. In 1910, a similar machine was built for the analysis of periodic waveforms of sound.[49] The synthesizer drew a graph of the combination waveform, which was used chiefly for visual validation of the analysis.[50]

Georg Ohm applied Fourier's theory to sound in 1843. The line of work was greatly advanced by Hermann von Helmholtz, who published his eight years worth of research in 1863.[51] Helmholtz believed that the psychological perception of tone color is subject to learning, while hearing in the sensory sense is purely physiological.[52] He supported the idea that perception of sound derives from signals from nerve cells of the basilar membrane and that the elastic appendages of these cells are sympathetically vibrated by pure sinusoidal tones of appropriate frequencies.[53] Helmholtz agreed with the finding of Ernst Chladni from 1787 that certain sound sources have inharmonic vibration modes.[54]

In Helmholtz's time, electronic amplification was unavailable. For synthesis of tones with harmonic partials, Helmholtz built an electrically excited array of tuning forks and acoustic resonance chambers that allowed adjustment of the amplitudes of the partials.[55] Built at least as early as in 1862,[56] these were in turn refined by Rudolph Koenig, who demonstrated his own setup in 1872.[57] For harmonic synthesis, Koenig also built a large apparatus based on his _wave siren_. It was pneumatic and utilized cut-out tonewheels, and was criticized for low purity of its partial tones.[58] Also tibia pipes of pipe organs have nearly sinusoidal waveforms and can be combined in the manner of additive synthesis.[59]

In 1938, with significant new supporting evidence,[60] it was reported on the pages of Popular Science Monthly that the human vocal cords function like a fire siren to produce a harmonic-rich tone, which is then filtered by the vocal tract to produce different vowel tones.[61] By the time, the additive Hammond organ was already on market. Most early electronic organ makers thought it too expensive to manufacture the plurality of oscillators required by additive organs, and began instead to build subtractive ones.[62] In a 1940 Institute of Radio Engineers meeting, the head field engineer of Hammond elaborated on the company's new _Novachord_ as having a _“subtractive system”_ in contrast to the original Hammond organ in which _“the final tones were built up by combining sound waves”_.[63] Alan Douglas used the qualifiers _additive_ and _subtractive_ to describe different types of electronic organs in a 1948 paper presented to the Royal Musical Association.[64] The contemporary wording _additive synthesis_ and _subtractive synthesis_ can be found in his 1957 book _The electrical production of music_, in which he categorically lists three methods of forming of musical tone-colours, in sections titled _Additive synthesis_, _Subtractive synthesis_, and _Other forms of combinations_.[65]

A typical modern additive synthesizer produces its output as an electrical, analog signal, or as digital audio, such as in the case of software synthesizers, which became popular around year 2000.[66]

Timeline

The following is a timeline of historically and technologically notable analog and digital synthesizers and devices implementing additive synthesis.

+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Research implementation or publication | Commercially available             | Company or institution                                                                                          | Synthesizer or synthesis device                                                              | Description                                                                                                                                            | Audio samples                                                              |
+========================================+====================================+=================================================================================================================+==============================================================================================+========================================================================================================================================================+============================================================================+
| 1900 {{cite book | ref=harv            | last = Weidenaar | first = Reynold | year = 1995                                                                                                     | title = Magic Music from the Telharmonium                                                    | location = Lanham, MD                                                                                                                                  | publisher = Scarecrow Press                                                |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1933 {{cite web                        | ref = harv                         | last = Olsen                                                                                                    | first = Harvey                                                                               | date = 14 December 2011                                                                                                                                | title = Leslie Speakers and Hammond organs: Rumors, Myths, Facts, and Lore |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1950 or earlier                        | date=May 1951                      | title = The interconversion of audible and visible patterns as a basis for research in the perception of speech | journal = Proc. Natl. Acad. Sci. U.S.A.                                                      | volume = 37 | issue = 5 | pages = 318–25                                                                                                               | pmc = 1063363 | pmid = 14834156                                            |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{Cite journal | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1958                                   | last = Holzer | first = Derek      | date = 22 February 2010                                                                                         | url = http://www.umatic.nl/tonewheels_historical.html                                        | title = A brief history of optical synthesis                                                                                                           | accessdate = 13 January 2012                                               |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{cite web     | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        | }}                                                                         |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1963                                   | last = Luce | first = David Alan   | year = 1963                                                                                                     | title = Physical correlates of nonpercussive musical instrument tones                        | hdl = 1721.1/27450                                                                                                                                     | location = Cambridge, Massachusetts, U.S.A.                                |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{cite book    | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1964                                   | last = Beauchamp | first = James   | date = 17 November 2009                                                                                         | title = The Harmonic Tone Generator: One of the First Analog Voltage-Controlled Synthesizers | url = http://cmp.music.illinois.edu/beaucham/htg.html                                                                                                  | work = Prof. James W. Beauchamp Home Page                                  |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{cite web     | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        | }}                                                                         |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1974 or earlier[67][68]                | 1974                               | title = RMI Harmonic Synthesizer                                                                                | url = http://www.synthmuseum.com/rmi/rmihar01.html                                           | publisher = Synthmuseum.com                                                                                                                            | accessdate = 12 May 2011                                                   |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
|                                        | {{cite web     | ref=harv          |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1974                                   | last = Cosimi | first = Enrico     | date = 20 May 2009                                                                                              | title = EMS Story - Prima Parte                                                              | url = http://audio.accordo.it/articles/2009/05/23828/ems-story-prima-parte.html                                                                        | trans-title = EMS Story - Part One                                         |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{cite journal | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1976                                   | last = Leete | first = Norm        |                                                                                                                 | title = Fairlight Computer – Musical Instrument (Retro)                                      | url = http://www.soundonsound.com/sos/apr99/articles/fairlight.htm                                                                                     | journal = Sound on Sound                                                   |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{cite journal | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1977                                   | last = Leider | first = Colby      | year = 2004                                                                                                     | chapter = The Development of the Modern DAW                                                  | title = Digital Audio Workstation                                                                                                                      | page = 58                                                                  |
|                                        |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
| {{cite book    | ref=harv              |                                    |                                                                                                                 |                                                                                              |                                                                                                                                                        |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| 1979[69]                               | 1979[70]                           | New England Digital                                                                                             | Synclavier II                                                                                | A commercial digital synthesizer that enabled development of timbre over time by smooth cross-fades between waveforms generated by additive synthesis. |                                                                            |
+----------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+


Discrete-time equations

In digital implementations of additive synthesis, discrete-time equations are used in place of the continuous-time synthesis equations. A notational convention for discrete-time signals uses brackets i.e. y[n]  and the argument n  can only be integer values. If the continuous-time synthesis output y(t)  is expected to be sufficiently bandlimited; below half the sampling rate or f_(s)/2 , it suffices to directly sample the continuous-time expression to get the discrete synthesis equation. The continuous synthesis output can later be reconstructed from the samples using a digital-to-analog converter. The sampling period is T = 1/f_(s) .

Beginning with (),

    $y(t) = \sum_{k=1}^{K} r_k(t) \cos\left(2 \pi \int_0^t f_k(u)\ du + \phi_k \right)$

and sampling at discrete times t = nT = n/f_(s)  results in

$$\begin{align}
 y[n] & = y(nT) = \sum_{k=1}^{K} r_k(nT) \cos\left(2 \pi \int_0^{nT} f_k(u)\ du + \phi_k \right) \\
      & = \sum_{k=1}^{K} r_k(nT) \cos\left(2 \pi \sum_{i=1}^{n} \int_{(i-1)T}^{iT} f_k(u)\ du + \phi_k \right) \\
      & = \sum_{k=1}^{K} r_k(nT) \cos\left(2 \pi \sum_{i=1}^{n} (T f_k[i]) + \phi_k \right) \\
      & = \sum_{k=1}^{K} r_k[n] \cos\left(\frac{2 \pi}{f_\mathrm{s}} \sum_{i=1}^{n} f_k[i] + \phi_k \right) \\
       \end{align}$$
where

    r_(k)[n] = r_(k)(nT)  is the discrete-time varying amplitude envelope
    $f_k[n] = \frac{1}{T} \int_{(n-1)T}^{nT} f_k(t)\ dt \,$ is the discrete-time backward difference instantaneous frequency.

This is equivalent to

    $y[n] = \sum_{k=1}^{K} r_k[n] \cos\left( \theta_k[n] \right)$

where

$$\begin{align}
    \theta_k[n] &= \frac{2 \pi}{f_\mathrm{s}} \sum_{i=1}^{n} f_k[i] + \phi_k \\
                &= \theta_k[n-1] + \frac{2 \pi}{f_\mathrm{s}} f_k[n] \\
       \end{align}$$
for all n > 0 [71] and

    θ_(k)[0] = ϕ_(k). 


See also

-   Frequency modulation synthesis
-   Subtractive synthesis
-   Speech synthesis
-   Harmonic series (music)


References


External links

-   Digital Keyboards Synergy

Category:Sound synthesis types

[1]

[2]

[3]

[4]

[5]  (online reprint)

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

[22]

[23]

[24] SPEAR Sinusoidal Partial Editing Analysis and Resynthesis for Mac OS X, MacOS 9 and Windows

[25]

[26] SMSTools application for Windows

[27] ARSS: The Analysis & Resynthesis Sound Spectrograph

[28]  (PDF)

[29]  (PDF).
See "_Excitation plus resonances voice model_" (p. 51)

[30] , "_Spectral peak processing"_

[31] , "_Phase locked vocoder_"

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]   (See also companion page)

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]