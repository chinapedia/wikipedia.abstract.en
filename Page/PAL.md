PHASE ALTERNATING LINE (PAL) is a colour encoding system for analogue television used in broadcast television systems in most countries broadcasting at 625-line / 50 field (25 frame) per second (576i). Other common colour encoding systems are NTSC National Television Standards Committee, ATSC Advanced Television Systems Committee, and SECAM.

All the countries using PAL are currently in process of conversion or have already converted standards to DVB, ISDB or DTMB.

This page primarily discusses the PAL colour encoding system. The articles on broadcast television systems and analogue television further describe frame rates, image resolution and audio modulation.


History

In the 1950s, the Western European countries began plans to introduce colour television, and were faced with the problem that the NTSC standard demonstrated several weaknesses, including colour tone shifting under poor transmission conditions, which became a major issue considering Europe's geographical and weather-related particularities. To overcome NTSC's shortcomings, alternative standards were devised, resulting in the development of the PAL and SECAM standards. The goal was to provide a colour TV standard for the European picture frequency of 50 fields per second (50 hertz), and finding a way to eliminate the problems with NTSC.

PAL was developed by Walter Bruch at Telefunken in Hanover, West Germany, with important input from Dr. Kruse and . The format was patented by Telefunken in 1962, citing Bruch as inventor, and unveiled to members of the European Broadcasting Union (EBU) on 3 January 1963. When asked, why the system was named "PAL" and not "Bruch" the inventor answered that a "Bruch system" would probably not have sold very well ("Bruch" lit. means "break"). The first broadcasts began in the United Kingdom in June 1967, followed by West Germany later that year.[1] The one BBC channel initially using the broadcast standard was BBC2, which had been the first UK TV service to introduce "625-lines" in 1964. Telefunken PALcolor 708T was the first PAL commercial TV set. It was followed by Loewe-Farbfernseher S 920 & F 900.

Telefunken was later bought by the French electronics manufacturer Thomson. Thomson also bought the _Compagnie Générale de Télévision_ where Henri de France developed SECAM, the first European Standard for colour television. Thomson, now called Technicolor SA, also owns the RCA brand and licenses it to other companies; Radio Corporation of America, the originator of that brand, created the NTSC colour TV standard before Thomson became involved.

The term PAL was often used informally and somewhat imprecisely to refer to the 625-line/50 Hz (576i) television system in general, to differentiate from the 525-line/60 Hz (480i) system generally used with NTSC. Accordingly, DVDs were labelled as PAL or NTSC (referring to the line count and frame rate) even though technically the discs carry neither PAL nor NTSC encoded signal. CCIR 625/50 and EIA 525/60 are the proper names for these (line count and field rate) standards; PAL and NTSC on the other hand are methods of encoding colour information in the signal.


Colour encoding

Both the PAL and the NTSC system use a quadrature amplitude modulated subcarrier carrying the chrominance information added to the luminance video signal to form a composite video baseband signal. The frequency of this subcarrier is 4.43361875 MHz for PAL and NTSC 4.43, compared to 3.579545 MHz for NTSC 3.58. The SECAM system, on the other hand, uses a frequency modulation scheme on its two line alternate colour subcarriers 4.25000 and 4.40625 MHz.

The name "Phase Alternating Line" describes the way that the phase of part of the colour information on the video signal is reversed with each line, which automatically corrects phase errors in the transmission of the signal by cancelling them out, at the expense of vertical frame colour resolution. Lines where the colour phase is reversed compared to NTSC are often called PAL or phase-alternation lines, which justifies one of the expansions of the acronym, while the other lines are called NTSC lines. Early PAL receivers relied on the human eye to do that cancelling; however, this resulted in a comb-like effect known as Hanover bars on larger phase errors. Thus, most receivers now use a chrominance analog delay line, which stores the received colour information on each line of display; an average of the colour information from the previous line and the current line is then used to drive the picture tube. The effect is that phase errors result in saturation changes, which are less objectionable than the equivalent hue changes of NTSC. A minor drawback is that the vertical colour resolution is poorer than the NTSC system's, but since the human eye also has a colour resolution that is much lower than its brightness resolution, this effect is not visible. In any case, NTSC, PAL, and SECAM all have chrominance bandwidth (horizontal colour detail) reduced greatly compared to the luminance signal.

of an actual PAL-I transmission with NICAM.]]

The 4.43361875 MHz frequency of the colour carrier is a result of 283.75 colour clock cycles per line plus a 25 Hz offset to avoid interferences. Since the line frequency (number of lines per second) is 15625 Hz (625 lines × 50 Hz ÷ 2), the colour carrier frequency calculates as follows: 4.43361875 MHz = 283.75 × 15625 Hz + 25 Hz. The frequency 50 Hz is the optional refresh frequency of the monitor to be able to create an illusion of motion, while 625 lines means the vertical lines or resolution that the PAL system supports. The original colour carrier is required by the colour decoder to recreate the colour difference signals. Since the carrier is not transmitted with the video information it has to be generated locally in the receiver. In order that the phase of this locally generated signal can match the transmitted information, a 10 cycle burst of colour subcarrier is added to the video signal shortly after the line sync pulse, but before the picture information, during the so-called back porch. This colour burst is not actually in phase with the original colour subcarrier, but leads it by 45 degrees on the odd lines and lags it by 45 degrees on the even lines. This swinging burst enables the colour decoder circuitry to distinguish the phase of the R-Y vector which reverses every line.

PAL vs. NTSC

PAL usually has 576 visible lines compared with 486 lines with NTSC, meaning that PAL has a 20% higher resolution, in fact it even has a higher resolution than Enhanced Definition standard (854x486). Most TV output for PAL and NTSC use interlaced frames meaning that even lines update on one field and odd lines update on the next field. Interlacing frames gives a smoother motion with half the frame rate. NTSC is used with a frame rate of 60i or 30p whereas PAL generally uses 50i or 25p; both use a high enough frame rate to give the illusion of fluid motion. This is due to the fact that NTSC is generally used in countries with a utility frequency of 60 Hz and PAL in countries with 50 Hz, although there are many exceptions. Both PAL and NTSC have a higher frame rate than film which uses 24 frames per second. PAL has a closer frame rate to that of film, so most films are sped up 4% to play on PAL systems, shortening the runtime of the film and, without adjustment, slightly raising the pitch of the audio track. Film conversions for NTSC instead use 3:2 pull down to spread the 24 frames of film across 60 interlaced fields. This maintains the runtime of the film and preserves the original audio, but may cause worse interlacing artefacts during fast motion.

NTSC receivers have a tint control to perform colour correction manually. If this is not adjusted correctly, the colours may be faulty. The PAL standard automatically cancels hue errors by phase reversal, so a tint control is unnecessary yet Saturation control can be more useful. Chrominance phase errors in the PAL system are cancelled out using a 1H delay line resulting in lower saturation, which is much less noticeable to the eye than NTSC hue errors.

However, the alternation of colour information—Hanover bars—can lead to picture grain on pictures with extreme phase errors even in PAL systems, if decoder circuits are misaligned or use the simplified decoders of early designs (typically to overcome royalty restrictions). In most cases such extreme phase shifts do not occur. This effect will usually be observed when the transmission path is poor, typically in built up areas or where the terrain is unfavourable. The effect is more noticeable on UHF than VHF signals as VHF signals tend to be more robust.

In the early 1970s some Japanese set manufacturers developed decoding systems to avoid paying royalties to Telefunken. The Telefunken licence covered any decoding method that relied on the alternating subcarrier phase to reduce phase errors. This included very basic PAL decoders that relied on the human eye to average out the odd/even line phase errors. One solution was to use a 1H analog delay line to allow decoding of only the odd or even lines. For example, the chrominance on odd lines would be switched directly through to the decoder and also be stored in the delay line. Then, on even lines, the stored odd line would be decoded again. This method effectively converted PAL to NTSC. Such systems suffered hue errors and other problems inherent in NTSC and required the addition of a manual hue control.

PAL and NTSC have slightly divergent colour spaces, but the colour decoder differences here are ignored.

PAL vs. SECAM

The SECAM patents predate those of PAL by several years (1956 vs 1962). Its creator, Henri de France, in search of a response to known NTSC hue problems, came up with ideas that were to become fundamental to both European systems, namely: 1) colour information on two successive TV lines is very similar and vertical resolution can be halved without serious impact on perceived visual quality 2) more robust colour transmission can be achieved by spreading information on two TV lines instead of just one 3) information from the two TV lines can be recombined using a delay line.

SECAM applies those principles by transmitting alternately only one of the U and V components on each TV line, and getting the other from the delay line. QAM is not required, and frequency modulation of the subcarrier is used instead for additional robustness (sequential transmission of U and V was to be reused much later in Europe's last "analog" video systems: the MAC standards).

SECAM is free of both hue and saturation errors. It is not sensitive to phase shifts between the color burst and the chrominance signal, and for this reason was sometimes used in early attempts at color video recording, where tape speed fluctuations could get the other systems into trouble. In the receiver, it did not require a quartz crystal (which was an expensive component at the time) and generally could do with lower accuracy delay lines and components.

SECAM transmissions are more robust over longer distances than NTSC or PAL. However, owing to their FM nature, the color signal remains present, although at reduced amplitude, even in monochrome portions of the image, thus being subject to stronger cross color.

One serious drawback for studio work is that the addition of two SECAM signals does not yield valid colour information, due to its use of frequency modulation. It was necessary to demodulate the FM and handle it as AM for proper mixing, before finally remodulating as FM, at the cost of some added complexity and signal degradation. In its later years, this was no longer a problem, due to the wider use of component and digital equipment.

PAL can work without a delay line, but this configuration, sometimes referred to as "poor man's PAL", could not match SECAM in terms of picture quality. To compete with it at the same level, it had to make use of the main ideas outlined above, and as a consequence PAL had to pay license fees to SECAM. Over the years, this contributed significantly to the estimated 500 million francs gathered by the SECAM patents (for an initial 100 million francs invested in research).[2]

Hence, PAL could be considered as a hybrid system, with its signal structure closer to NTSC, but its decoding borrowing much from SECAM.

There were initial specifications to use color with the French 819 line format (system E). However, "SECAM E" only ever existed in development phases. Actual deployment used the 625 line format. This made for easy interchange and conversion between PAL and SECAM in Europe. Conversion was often not even needed, as more and more receivers and VCRs became compliant with both standards, helped in this by the common decoding steps and components. When the SCART plug became standard, it could take RGB as an input, effectively bypassing all the color coding formats' peculiarities.

When it comes to home VCRs, all video standards use what is called "color under" format. Color is extracted from the high frequencies of the video spectrum, and moved to the lower part of the spectrum available from tape. Luminance then uses what remains of it, above the color frequency range. This is usually done by heterodyning for PAL (as well as NTSC). But the FM nature of color in SECAM allows for a cheaper trick: division by 4 of the subcarrier frequency (and multiplication on replay). This became the standard for SECAM VHS recording in France. Most other countries kept using the same heterodyning process as for PAL or NTSC and this is known as MESECAM recording (as it was more convenient for some Middle East countries that used both PAL and SECAM broadcasts).

Regarding early (analog) videodiscs, the established Laserdisc standard supported only NTSC and PAL. However, a different optical disc format, the Thomson transmissive optical disc made a brief appearance on the market. At some point, it used a modified SECAM signal (single FM subcarrier at 3.6 MHz[3]). The media's flexible and transmissive material allowed for direct access to both sides without flipping the disc, a concept that reappeared in multi-layered DVDs about fifteen years later.

PAL signal details

For PAL-B/G the signal has these characteristics.

+--------------------------+----------+
| Parameter                | Value    |
+==========================+==========+
| Bandwidth                | [4]      |
+--------------------------+----------+
| Horizontal sync polarity | Negative |
+--------------------------+----------+
| Total time for each line | [5][6]   |
+--------------------------+----------+
| Front porch (A)          |          |
+--------------------------+----------+
| Sync pulse length (B)    |          |
+--------------------------+----------+
| Back porch (C)           |          |
+--------------------------+----------+
| Active video (D)         |          |
+--------------------------+----------+

(Total horizontal sync time 12.05 µs)

After 0.9 µs a colorburst of cycles is sent. Most rise/fall times are in range. Amplitude is 100% for white level, 30% for black, and 0% for sync.[7] The CVBS electrical amplitude is Vpp and impedance of 75 Ω.[8]

) signal used in systems M and N before combination with a sound carrier and modulation onto an RF carrier.]]

The vertical timings are:

+------------------------+-------------------+
| Parameter              | Value             |
+========================+===================+
| Vertical lines         | 312.5 (625 total) |
+------------------------+-------------------+
| Vertical lines visible | 288 (576 total)   |
+------------------------+-------------------+
| Vertical sync polarity | Negative (burst)  |
+------------------------+-------------------+
| Vertical frequency     |                   |
+------------------------+-------------------+
| Sync pulse length (F)  | (burst)[9]        |
+------------------------+-------------------+
| Active video (H)       | 18.4 ms           |
+------------------------+-------------------+

(Total vertical sync time 1.6 ms)

As PAL is interlaced, every two fields are summed to make a complete picture frame.

Luminance, Y, is derived from red, green, and blue (R′G′B′) signals: [10]

-   Y = 0.299R′ + 0.587G′ + 0.114B′

U and V are used to transmit chrominance. Each has a typical bandwidth of 1.3 MHz.

-   U = 0.492(B′ − Y)
-   V = 0.877(R′ − Y)

Composite PAL signal  = Y + Usin (ωt) + Vcos (ωt)+timing [11] where ω = 2πF_(SC).

Subcarrier frequency F_(SC) is 4.43361875 MHz (±5 Hz) for PAL-B/D/G/H/I/N.

PAL broadcast systems

This table illustrates the differences:

                                 PAL B            PAL G, H         PAL I            PAL D/K          PAL M          PAL N
  ------------------------------ ---------------- ---------------- ---------------- ---------------- -------------- ----------------
  Transmission band              VHF              UHF              UHF/VHF*         VHF/UHF          VHF/UHF        VHF/UHF
  Fields                         50               50               50               50               60             50
  Lines                          625              625              625              625              525            625
  Active lines                   576              576              576              576              480            576
  Channel bandwidth              7 MHz            8 MHz            8 MHz            8 MHz            6 MHz          6 MHz
  Video bandwidth                5.0 MHz          5.0 MHz          5.5 MHz          6.0 MHz          4.2 MHz        4.2 MHz
  Colour subcarrier              4.43361875 MHz   4.43361875 MHz   4.43361875 MHz   4.43361875 MHz   3.575611 MHz   3.58205625 MHz
  Vision/Sound carrier spacing   5.5 MHz          5.5 MHz          6.0 MHz          6.5 MHz          4.5 MHz        4.5 MHz

* System I has never been used on VHF in the UK.

PAL-B/G/D/K/I

Many countries have turned off analog transmissions, so the following does not apply, except for using devices which output broadcast signals, such as video recorders. The resolution that PAL gave may or may not still be used, but HD or full HD are most commonly used in digital transmissions.

The majority of countries using PAL have television standards with 625 lines and 50 fields per second, differences concern the audio carrier frequency and channel bandwidths. The variants are:

-   Standards B/G are used in most of Western Europe, Australia, and New Zealand
-   Standard I in the UK, Ireland, Hong Kong, South Africa, and Macau
-   Standards D/K (along with SECAM) in most of Central and Eastern Europe
-   Standard D in mainland China. Most analogue CCTV cameras are Standard D.

Systems B and G are similar. System B specifies 7 MHz channel bandwidth, while System G specifies 8 MHz channel bandwidth. Australia used System B for VHF and UHF channels. Similarly, Systems D and K are similar except for the bands they use: System D is only used on VHF (except in mainland China), while System K is only used on UHF. Although System I is used on both bands, it has only been used on UHF in the United Kingdom.

PAL-M (Brazil)

In Brazil, PAL is used in conjunction with the 525 line, 59.94 field/s system M, using (very nearly) the NTSC colour subcarrier frequency. Exact colour subcarrier frequency of PAL-M is 3.575611 MHz. Almost all other countries using system M use NTSC.

The PAL colour system (either baseband or with any RF system, with the normal 4.43 MHz subcarrier unlike PAL-M) can also be applied to an NTSC-like 525-line (480i) picture to form what is often known as "PAL-60" (sometimes "PAL-60/525", "Quasi-PAL" or "Pseudo PAL"). PAL-M (a broadcast standard) however should not be confused with "PAL-60" (a video playback system—see below).

PAL-N (Argentina, Paraguay and Uruguay)

In Argentina, Paraguay and Uruguay the PAL-N variant is used. It employs the 625 line/50 field per second waveform of PAL-B/G, D/K, H, and I, but on a 6 MHz channel with a chrominance subcarrier frequency of 3.582056 MHz very similar to NTSC.

PAL-N uses the YDbDr colour space.

VHS tapes recorded from a PAL-N or a PAL-B/G, D/K, H, or I broadcast are indistinguishable because the downconverted subcarrier on the tape is the same. A VHS recorded off TV (or released) in Europe will play in colour on any PAL-N VCR and PAL-N TV in Argentina, Paraguay and Uruguay. Likewise, any tape recorded in Argentina, Paraguay or Uruguay off a PAL-N TV broadcast can be sent to anyone in European countries that use PAL (and Australia/New Zealand, etc.) and it will display in colour. This will also play back successfully in Russia and other SECAM countries, as the USSR mandated PAL compatibility in 1985—this has proved to be very convenient for video collectors.

People in Argentina, Paraguay and Uruguay usually own TV sets that also display NTSC-M, in addition to PAL-N. Direct TV also conveniently broadcasts in NTSC-M for North, Central, and South America. Most DVD players sold in Argentina, Paraguay and Uruguay also play PAL discs—however, this is usually output in the European variant (colour subcarrier frequency 4.433618 MHz), so people who own a TV set which only works in PAL-N (plus NTSC-M in most cases) will have to watch those PAL DVD imports in black and white (unless the TV supports RGB SCART) as the colour subcarrier frequency in the TV set is the PAL-N variation, 3.582056 MHz.

In the case that a VHS or DVD player works in PAL (and not in PAL-N) and the TV set works in PAL-N (and not in PAL), there are two options:

-   images can be seen in black and white, or
-   an inexpensive transcoder (PAL -> PAL-N) can be purchased in order to see the colours

Some DVD players (usually lesser known brands) include an internal transcoder and the signal can be output in NTSC-M, with some video quality loss due to the system's conversion from a 625/50 PAL DVD to the NTSC-M 525/60 output format. A few DVD players sold in Argentina, Paraguay and Uruguay also allow a signal output of NTSC-M, PAL, or PAL-N. In that case, a PAL disc (imported from Europe) can be played back on a PAL-N TV because there are no field/line conversions, quality is generally excellent.

Extended features of the PAL specification, such as Teletext, are implemented quite differently in PAL-N. PAL-N supports a modified 608 closed captioning format that is designed to ease compatibility with NTSC originated content carried on line 18, and a modified teletext format that can occupy several lines.

Some special VHS video recorders are available which can allow viewers the flexibility of enjoying PAL-N recordings using a standard PAL ( 625/50 Hz ) colour TV, or even through multi-system TV sets. Video recorders like Panasonic NV-W1E (AG-W1 for the US), AG-W2, AG-W3, NV-J700AM, Aiwa HV-M110S, HV-M1U, Samsung SV-4000W and SV-7000W feature a digital TV system conversion circuitry.

PAL-L

The PAL L (Phase Alternating Line with L-sound system) standard uses the same video system as PAL-B/G/H (625 lines, 50 Hz field rate, 15.625 kHz line rate), but with 6 MHz video bandwidth rather than 5.5 MHz. This requires the audio subcarrier to be moved to 6.5 MHz. An 8 MHz channel spacing is used for PAL-L.

System A

The BBC tested their pre-war 405 line monochrome system with all three colour standards including PAL, before the decision was made to abandon 405 and transmit colour on 625/System I only.

PAL interoperability

The PAL colour system is usually used with a video format that has 625 lines per frame (576 visible lines, the rest being used for other information such as sync data and captioning) and a refresh rate of 50 interlaced fields per second (compatible with 25 full frames per second), such systems being B, G, H, I, and N (see broadcast television systems for the technical details of each format).

This ensures video interoperability. However, as some of these standards (B/G/H, I and D/K) use different sound carriers (5.5 MHz, 6.0 MHz 6.5 MHz respectively), it may result in a video image without audio when viewing a signal broadcast over the air or cable. Some countries in Eastern Europe which formerly used SECAM with systems D and K have switched to PAL while leaving other aspects of their video system the same, resulting in the different sound carrier. Instead, other European countries have changed completely from SECAM-D/K to PAL-B/G.[12]

The PAL-N system has a different sound carrier, and also a different colour subcarrier, and decoding on incompatible PAL systems results in a black-and-white image without sound. The PAL-M system has a different sound carrier and a different colour subcarrier, and does not use 625 lines or 50 frames/second. This would result in no video or audio at all when viewing a European signal.

Multisystem PAL support and "PAL 60"

Recently manufactured PAL television receivers can typically decode all of these systems except, in some cases, PAL-M and PAL-N. Many of receivers can also receive Eastern European and Middle Eastern SECAM, though rarely French-broadcast SECAM (because France used a quasi-unique positive video modulation, system L) unless they are manufactured for the French market. They will correctly display plain CVBS or S-video SECAM signals. Many can also accept baseband NTSC-M, such as from a VCR or game console, and RF modulated NTSC with a PAL standard audio subcarrier (i.e., from a modulator), though not usually broadcast NTSC (as its 4.5 MHz audio subcarrier is not supported). Many sets also support NTSC with a 4.43 MHz subcarrier.

Many 1990s-onwards videocassette recorders sold in Europe can play back NTSC tapes. When operating in this mode most of them do not output a true (625/25) PAL signal, but rather a hybrid consisting of the original NTSC line standard (525/30), but with colour converted to PAL 4.43 MHz—this is known as "PAL 60" (also "quasi-PAL" or "pseudo-PAL") with "60" standing for 60 Hz (for 525/30), instead of 50 Hz (for 625/25). Some video game consoles also output a signal in this mode. Most newer television sets can display such a signal correctly, but some will only do so (if at all) in black and white and/or with flickering/foldover at the bottom of the picture, or picture rolling (however, many old TV sets can display the picture properly by means of adjusting the V-Hold and V-Height knobs—assuming they have them). Some TV tuner cards or video capture cards will support this mode (although software/driver modification can be required and the manufacturers' specs may be unclear). A "PAL 60" signal is similar to an NTSC (525/30) signal, but with the usual PAL chrominance subcarrier at 4.43 MHz (instead of 3.58 as with NTSC and South American PAL variants) and with the PAL-specific phase alternation of the red colour difference signal between the lines.

Modern PAL DVD players, such as European DVD players, convert the NTSC Signal to PAL when playing NTSC discs[13].


Countries and territories using PAL

Below countries and territories currently use or once used the PAL system. Many of these have converted or are currently converting PAL to DVB-T (most countries), DVB-T2 (most countries), DTMB (China, Hong Kong and Macau) or ISDB (Sri Lanka, Maldives, Botswana and part of South America).

PAL B, D, G, H, K or I

-   (used SECAM)[14]

-   [15]

-   (DVB-T introduction currently in assessment) [16]

-   [17]

-   [18]

-   [19]

-   [20]

-   [21]

-   [22]

-   [23]

-   [24]

-   (Digital broadcast using DTMB)[25]

-   (see New Zealand)

-   [26]

-   (migrated from SECAM 1990–1992)[27]

-   [28]

-   [29]

-   [30]

-   (UHF only)[31]

-   [32]

-   [33]

-   [34]

-   (PAL-I, DTMB introduced since 31 December 2007, PAL-I broadcast to be abandoned on 1 December 2020)

-   [35] (Analogue shutoff scheduled to 2020; simulcasted in DVB-T since 2008 until 2012, been changed to DVB-T2 2012 forward, and the government scheduled to give-away free 7 million STB DVB-T2 in April 2014)

-   [36](DVB-T introduction currently in assessment)

-   [37] (DVB-T introduction currently in assessment)

-   [38]

-   [39]

-   (Once experimented in PAL-M)[40]

-   (Using PAL for Lebanese Channels. Channels from Europe or even from USA are not broadcast analogue)

-   [41]

-   -   [42]

-   [43] (DVB-T2 digital launched. Analogue switch-off expected to be completed by end-March 2019)

-   [44]

-   [45]

-   [46]

-   [47]

-   [48]

-   (see Australia)

-   (used SECAM)[49]

-   (DVB-T introduction currently in assessment)[50]

-   [51]

-   (DVB-T introduction currently in assessment)

-   [52]

-   (Two PAL-I analogue TV services operated by BFBS)

-   [53]

-   [54]

-   [55]

-   [56]

-   -   [57]

-   [58]

-   [59]

-   (along with SECAM)[60]

-   (PAL broadcast ceased on 16 July 2018 - with the exception of TV 3 - which will cease in 2020) - simulcast in DVB-T2 System

-   -   [61] (PAL broadcast to be abandoned. Analog shutoff scheduled for 15 June 2015. Simulcast in DVB-T)

-   [62]

-   [63]

-   [64]

-   [65]

-   [66] (DVB-T introduction)

-   [67]

PAL-M

-   [68] (simulcast with digital format in ISDB-Tb, also called _SBTVD_), an update to ISDB-T, started in December 2007. PAL broadcasting continues until 2020.

PAL-N

-   [69] (H264 video over ISDB-T, at 576i@50 Hz (SD) or 1080i@50 Hz (HD))

-   [70] (Simulcast in ISDB-T)

-   [71] (will use ISDB-T)

Countries that have formerly used PAL

The following countries no longer use PAL for terrestrial broadcasts, and are in process of converting from PAL (cable) to DVB-C.

+---------+----------------------------+--------------------------------------------------------------+
| Country | Switched to                | Switchover completed                                         |
+=========+============================+==============================================================+
|         | DVB-T                      | 2015-06-1717 June 2015                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2007-09-2525 September 2007                                  |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2013-12-1010 December 2013                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2011-06-077 June 2011                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-06-1717 June 2015                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-03-011 March 2010                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-01-011 January 2015                                     |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2013-09-3030 September 2013                                  |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T2                     | 2015-01-011 January 2015                                     |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-10-2020 October 2010                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2011-07-011 July 2011                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-06-3030 June 2012                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2009-11-011 November 2009                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-07-011 July 2010                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2002-12 December 2002                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2007-09-011 September 2007                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-07-011 July 2015                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2009-06-044 June 2009                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T2                     | 2015-06June 2015                                             |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-02-056 February 2015                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-12-3131 December 2012                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-11-1717 November 2010                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2013-10-3131 October 2013                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2015-02-022 February 2015                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-02-3131 March 2015                                      |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2014-12-1919 December 2014                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-10-2424 October 2012                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-10-2424 October 2012                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2011-06-1313 June 2011                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-07-044 July 2012                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-11-1717 November 2010                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-03March 2015                                            |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-06-011 June 2010                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-10-2929 October 2012                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2006-09-011 September 2006                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2013-05-3131 May 2013                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2011-10-3131 October 2011                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2011-05-2424 May 2011                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-06-1717 June 2015                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2014-09-1313 September 2014                                  |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2006-12-1414 December 2006                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2013-12-011 December 2013                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2009-12-011 December 2009                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2013-07-2323 July 2013                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-04-2626 April 2012                                      |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2012-02-1313 February 2012                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T2                     | 2016-12-3131 December 2016                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2014-03March 2014                                            |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2012-02-1313 February 2012                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T2                     | 2015-06-077 June 2015                                        |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-12-022 December 2010                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T2                     | 2019-01-022 January 2019                                     |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-12-011 December 2010                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2012-12-3131 December 2012                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 20152015[72] (as of 2018, PAL terrestrial still operational) |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2010-04-033 April 2010                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2007-10-2929 October 2007                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2007-11-2626 November 2007                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2014-07July 2014                                             |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T                      | 2015-03-033 March 2015                                       |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2012-02-1313 February 2012                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T and DVB-T2           | 2016-12-3131 December 2016                                   |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T (SD) and DVB-T2 (HD) | 2012-10-2424 October 2012                                    |
+---------+----------------------------+--------------------------------------------------------------+
|         | DVB-T2                     | 2014-12-3131 December 2014                                   |
+---------+----------------------------+--------------------------------------------------------------+


See also

-   PALplus
-   Broadcast television systems
    -   Advanced Television Systems Committee standards
    -   Multichannel television sound
    -   NTSC
    -   NTSC-J
    -   SECAM
-   DVB
-   Moving image formats
-   Early television stations
-   Digital television
-   Broadcast-safe
-   PAL region
-   Differential gain
-   YUV


References


External links

-   Review of the different refresh rates of PAL, NTSC and motion picture films
-   World TV standards

Category:ITU-R recommendations Category:Television technology Category:Television terminology Category:Television transmission standards Category:Video formats

[1] The standard that defines the PAL system was published by the International Telecommunication Union in 1998 and has the title _Recommendation ITU-R BT.470-6, Conventional Television Systems_

[2] http://www.ebha.org/ebha2007/pdf/Gaillard.pdf The CCIR, the standards and the TV sets’ market in France (section III.1)

[3] "Les Videodisques", Georges Broussaud (head/member of development team), editions Masson

[4]  090426 dvd-replica.com

[5]  090426 pembers.freeserve.co.uk

[6]  090426 deetc.isel.ipl.pt page 52

[7]

[8]  090426 thomsongrassvalley.com

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

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

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

[42]

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

[72] |http://afkinsider.com/68611/analogue-tv-banning-to-switch-off-many-in-africa/