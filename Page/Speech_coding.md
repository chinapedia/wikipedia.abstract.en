SPEECH CODING is an application of data compression of digital audio signals containing speech. Speech coding uses speech-specific parameter estimation using audio signal processing techniques to model the speech signal, combined with generic data compression algorithms to represent the resulting modeled parameters in a compact bitstream.[1]

The two most important applications of speech coding are mobile telephony and voice over IP.[2]

The techniques employed in speech coding are similar to those used in audio data compression and audio coding where knowledge in psychoacoustics is used to transmit only data that is relevant to the human auditory system. For example, in voiceband speech coding, only information in the frequency band 400 Hz to 3500 Hz is transmitted but the reconstructed signal is still adequate for intelligibility.

Speech coding differs from other forms of audio coding in that speech is a simpler signal than most other audio signals, and a lot more statistical information is available about the properties of speech. As a result, some auditory information which is relevant in audio coding can be unnecessary in the speech coding context. In speech coding, the most important criterion is preservation of intelligibility and "pleasantness" of speech, with a constrained amount of transmitted data.[3]

In addition, most speech applications require low coding delay, as long coding delays interfere with speech interaction.[4]


Categories

Speech coders are of two types:[5]

1.  Waveform coders
    -   Time-domain: (PCM, ADPCM)
    -   Frequency-domain: Sub-band coders, adaptive transform coders
2.  Vocoders
    -   Linear predictive coders (LPC)
    -   Formant coders


Sample companding viewed as a form of speech coding

From this point of view, the A-law and μ-law algorithms (G.711) used in traditional PCM digital telephony can be seen as an earlier precursor of speech encoding, requiring only 8 bits per sample but giving effectively 12 bits of resolution.[6] The logarithmic companding laws are consistent with human hearing perception in that a low-amplitude noise is heard along a low-amplitude speech signal but is masked by a high-amplitude one. Although this would generate unacceptable distortion in a music signal, the peaky nature of speech waveforms, combined with the simple frequency structure of speech as a periodic waveform having a single fundamental frequency with occasional added noise bursts, make these very simple instantaneous compression algorithms acceptable for speech.

A wide variety of other algorithms were tried at the time, mostly on delta modulation variants, but after a careful consideration, the A-law/μ-law algorithms were chosen by the designers of the early digital telephony systems. At the time of their design, their 33% bandwidth reduction for a very low complexity made an excellent engineering compromise. Their audio performance remains acceptable, and there was no need to replace them in the stationary phone network.

In 2008, G.711.1 codec, which has a scalable structure, was standardized by ITU-T. The input sampling rate is 16 kHz.


Modern speech compression

Much of the later works in speech compression was motivated by military research into digital communications for secure military radios, where very low data rates were required to allow effective operation in a hostile radio environment. At the same time, far more processing power was available, in the form of VLSI circuits, than was available for earlier compression techniques. As a result, modern speech compression algorithms could use far more complex techniques than were available in the 1960s to achieve far higher compression ratios.

These techniques were available through the open research literature to be used for civilian applications, allowing the creation of digital mobile phone networks with substantially higher channel capacities than the analog systems that preceded them.

The most common speech coding scheme is Code Excited Linear Prediction (CELP) coding, which is used for example in the GSM standard. In CELP, the modelling is divided in two stages, a linear predictive stage that models the spectral envelope and code-book based model of the residual of the linear predictive model. In CELP, linear prediction coefficients (LPC) are computed and quantized, usually as line spectral pairs (LSPs).

In addition to the actual speech coding of the signal, it is often necessary to use channel coding for transmission, to avoid losses due to transmission errors. Usually, speech coding and channel coding methods have to be chosen in pairs, with the more important bits in the speech data stream protected by more robust channel coding, in order to get the best overall coding results.

The Opus project is an attempt to create a free software speech coder, unencumbered by patent restrictions.

Codec2 is another free software speech coder, unencumbered by patent restrictions, which manages to achieve very good compression, as low as 700 bit/s.

Major subfields:

-   Wide-band speech coding
    -   AMR-WB for WCDMA networks
    -   VMR-WB for CDMA2000 networks
    -   G.722, G.722.1, Speex, IP-MR and others for VoIP and videoconferencing
-   Narrow-band speech coding
    -   FNBDT for military applications
    -   SMV for CDMA networks
    -   Full Rate, Half Rate, EFR, AMR for GSM networks
    -   G.723.1, G.726, G.728, G.729, G.729.1, iLBC and others for VoIP or videoconferencing


See also

-   Audio data compression
-   Audio signal processing
-   Data compression
-   Digital signal processing
-   Linear prediction
-   Mobile phone
-   Pulse-code modulation
-   Psychoacoustic model
-   Speech interface guideline
-   Speech processing
-   Speech synthesis
-   Telecommunication
-   Vector quantization
-   Vocoder


References


External links

-   Various Speech Coding Links
-   ITU-T Test Signals for Telecommunication Systems Test Samples
-   ITU-T Perceptual evaluation of speech quality (PESQ) tool Sources

Speech_codecs

[1] M. Arjona Ramírez and M. Minami, "Low bit rate speech coding," in Wiley Encyclopedia of Telecommunications, J. G. Proakis, Ed., New York: Wiley, 2003, vol. 3, pp. 1299-1308.

[2] M. Arjona Ramírez and M. Minami, “Technology and standards for low-bit-rate vocoding methods,” in The Handbook of Computer Networks, H. Bidgoli, Ed., New York: Wiley, 2011, vol. 2, pp. 447–467.

[3] P. Kroon, "Evaluation of speech coders," in Speech Coding and Synthesis, W. Bastiaan Kleijn and K. K. Paliwal, Ed., Amsterdam: Elsevier Science, 1995, pp. 467-494.

[4] J. H. Chen, R. V. Cox, Y.-C. Lin, N. S. Jayant, and M. J. Melchner, A low-delay CELP coder for the CCITT 16 kb/s speech coding standard. IEEE J. Select. Areas Commun. 10(5): 830-849, June 1992.

[5] Soo Hyun Bae, ECE 8873 Data Compression & Modeling, Georgia Institute of Technology , 2004

[6] N. S. Jayant and P. Noll, Digital coding of waveforms. Englewood Cliﬀs: Prentice-Hall, 1984.