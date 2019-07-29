AUDIO SIGNAL PROCESSING is a subfield of signal processing that is concerned with the electronic manipulation of audio signals. Audio signals are electronic representations of sound waves—longitudinal waves which travel through air, consisting of compressions and rarefactions. The energy contained in audio signals is typically measured in decibels. As audio signals may be represented in either digital or analog format, processing may occur in either domain. Analog processors operate directly on the electrical signal, while digital processors operate mathematically on its digital representation.


History

The motivation for audio signal processing began at the beginning of the 20th century with inventions like the telephone, phonograph, and radio that allowed for the transmission and storage of audio signals. Audio processing was necessary for early radio broadcasting, as there were many problems with studio-to-transmitter links.[1] The theory of signal processing and it's application to audio was largely developed at Bell Labs in the mid 20th century. Claude Shannon and Harry Nyquist's early work on communication theory, sampling theory, and Pulse-code modulation laid the foundations for the field. In 1957, Max Mathews became the first person to synthesize audio from a computer, giving birth to computer music.


Analog signals

An analog audio signal is a continuous signal represented by an electrical voltage or current that is “analogous” to the sound waves in the air. Analog signal processing then involves physically altering the continuous signal by changing the voltage or current or charge via electrical circuits.

Historically, before the advent of widespread digital technology, analog was the only method by which to manipulate a signal. Since that time, as computers and software have become more capable and affordable and digital signal processing has become the method of choice. However, in music applications analog technology is often still desirable as it often produces nonlinear responses that are difficult to replicate with digital filters.


Digital signals

A digital representation expresses the audio waveform as a sequence of symbols, usually binary numbers. This permits signal processing using digital circuits such as digital signal processors, microprocessors and general-purpose computers. Most modern audio systems use a digital approach as the techniques of digital signal processing are much more powerful and efficient than analog domain signal processing.[2]


Application areas

Processing methods and application areas include storage, data compression, music information retrieval, speech processing, localization, acoustic detection, transmission, noise cancellation, acoustic fingerprinting, sound recognition, synthesis, and enhancement (e.g. equalization, filtering, level compression, echo and reverb removal or addition, etc.).

Audio broadcasting

Audio signal processing is used when broadcasting audio signals in order to enhance their fidelity or optimize for bandwidth or latency. In this domain, the most important audio processing takes place just before the transmitter. The audio processor here must prevent or minimize overmodulation, compensate for non-linear transmitters (a potential issue with medium wave and shortwave broadcasting), and adjust overall loudness to desired level.

Active noise control

Active noise control is a technique designed to reduce unwanted sound. By creating a signal that is identical to the unwanted noise but with the opposite polarity, the two signals cancel out due to destructive interference.

Audio synthesis

Audio synthesis is the electronic generation of audio signals. A musical instrument that accomplishes this is called a synthesizer. Synthesizers can either imitate sounds or generate new ones. Audio synthesis is also used to generate human speech using speech synthesis.

Audio effects

AUDIO EFFECTS are systems designed to alter how an audio signal sounds. Unprocessed audio is metaphorically referred to as _dry_, while processed audio is referred to as _wet_.[3]

-   _delay_ or echo - To simulate the effect of reverberation in a large hall or cavern, one or several delayed signals are added to the original signal. To be perceived as echo, the delay has to be of order 35 milliseconds or above. Short of actually playing a sound in the desired environment, the effect of echo can be implemented using either digital or analog methods. Analog echo effects are implemented using tape delays or bucket-brigade devices. When large numbers of delayed signals are mixed a reverberation effect is produced; The resulting sound has the effect of being presented in a large room.
-   _flanger_ - to create an unusual sound, a delayed signal is added to the original signal with a continuously variable delay (usually smaller than 10 ms). This effect is now done electronically using DSP, but originally the effect was created by playing the same recording on two synchronized tape players, and then mixing the signals together. As long as the machines were synchronized, the mix would sound more-or-less normal, but if the operator placed his finger on the flange of one of the players (hence "flanger"), that machine would slow down and its signal would fall out-of-phase with its partner, producing a phasing comb filter effect. Once the operator took his finger off, the player would speed up until it was back in phase with the master, and as this happened, the phasing effect would appear to slide up the frequency spectrum. This phasing up-and-down the register can be performed rhythmically.
-   _phaser_ - another way of creating an unusual sound; the signal is split, a portion is filtered with a variable all-pass filter to produce a phase-shift, and then the unfiltered and filtered signals are mixed to produce a comb filter. The phaser effect was originally a simpler implementation of the flanger effect since delays were difficult to implement with analog equipment.
-   _chorus_ - a delayed version of the signal is added to the original signal. The delay has to be short in order not to be perceived as echo, but above 5 ms to be audible. If the delay is too short, it will destructively interfere with the un-delayed signal and create a flanging effect. Often, the delayed signals will be slightly pitch shifted to more realistically convey the effect of multiple voices.
-   _equalization_ - different frequency bands are attenuated or boosted to produce desired spectral characteristics. Moderate use of equalization (often abbreviated as "EQ") can be used to "fine-tune" the tone quality of a recording; extreme use of equalization, such as heavily cutting a certain frequency can create more unusual effects.
-   _filtering_ - Equalization is a form of filtering. In the general sense, frequency ranges can be emphasized or attenuated using low-pass, high-pass, band-pass or band-stop filters. Band-pass filtering of voice can simulate the effect of a telephone because telephones use band-pass filters.
-   _overdrive_ effects such as the use of a fuzz box can be used to produce distorted sounds, such as for imitating robotic voices or to simulate distorted radiotelephone traffic (e.g., the radio chatter between starfighter pilots in the science fiction film _Star Wars_) . The most basic overdrive effect involves _clipping_ the signal when its absolute value exceeds a certain threshold.
-   _pitch shift_ - this effect shifts a signal up or down in pitch. For example, a signal may be shifted an octave up or down. This is usually applied to the entire signal, and not to each note separately. Blending the original signal with shifted duplicate(s) can create harmonies from one voice. Another application of pitch shifting is pitch correction. Here a musical signal is tuned to the correct pitch using digital signal processing techniques. This effect is ubiquitous in karaoke machines and is often used to assist pop singers who sing out of tune. It is also used intentionally for aesthetic effect in such pop songs as Cher's _Believe_ and Madonna's _Die Another Day_.
-   _time stretching_ - the complement of pitch shift, that is, the process of changing the speed of an audio signal without affecting its pitch.
-   _resonators_ - emphasize harmonic frequency content on specified frequencies. These may be created from parametric EQs or from delay-based comb-filters.
-   _robotic voice effects_ are used to make an actor's voice sound like a synthesized human voice.
-   _modulation_ - to change the frequency or amplitude of a carrier signal in relation to a predefined signal. Ring modulation is an effect made famous by Doctor Who's Daleks and commonly used throughout sci-fi.
-   _compression_ - the reduction of the dynamic range of a sound to avoid unintentional fluctuation in the dynamics. Level compression is not to be confused with audio data compression, where the amount of data is reduced without affecting the amplitude of the sound it represents.
-   _3D audio effects_ - place sounds outside the stereo basis
-   _reverse echo_ - a swelling effect created by reversing an audio signal and recording echo and/or delay while the signal runs in reverse. When played back forward the last echos are heard before the effected sound creating a rush like swell preceding and during playback. Jimmy Page of Led Zeppelin used this effect in the bridge of "Whole Lotta Love".[4][5][6]
-   _wave field synthesis_ - a spatial audio rendering technique for the creation of virtual acoustic environments


See also

-   Sound card
-   Sound effect


References


Further reading

-

Category:Audio electronics Category:Signal processing

[1]

[2]

[3] Hodgson, Jay (2010). _Understanding Records_, p.95. .

[4]

[5]

[6]