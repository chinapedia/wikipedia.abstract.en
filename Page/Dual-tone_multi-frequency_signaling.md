systems used all 16 DTMF signals. The red keys in the fourth column produce the A, B, C, and D DTMF events.]] DUAL-TONE MULTI-FREQUENCY SIGNALING (DTMF) is a telecommunication signaling system using the voice-frequency band over telephone lines between telephone equipment and other communications devices and switching centers.[1] DTMF was first developed in the Bell System in the United States, and became known under the trademark TOUCH-TONE for use in push-button telephones supplied to telephone customers, starting in 1963. DTMF is standardized as ITU-T Recommendation Q.23.[2] It is also known in the UK as _MF4_.

The Touch-Tone system using a telephone keypad gradually replaced the use of rotary dial and has become the industry standard for landline and mobile service. Other multi-frequency systems are used for internal signaling within the telephone network.


Multiplex frequency signaling

Prior to the development of DTMF, telephone numbers were dialed by users with a loop-disconnect (LD) signaling, more commonly known as pulse dialing (dial pulse, DP) in the U.S. It functions by interrupting the current in the local loop between the telephone exchange and the calling party's telephone at a precise rate with a switch in the telephone that is operated by the rotary dial as it spins back to its rest position after having been rotated to each desired number. The exchange equipment responds to the dial pulses either directly by operating relays, or by storing the number in a digit register recording the dialed number. The physical distance for which this type of dialing was possible was restricted by electrical distortions and was possible only on direct metallic links between end points of a line. Placing calls over longer distances required either operator assistance or provision of special subscriber trunk dialing equipment. Operators used an earlier type of multiplex-frequency signaling.

MULTIPLEX-FREQUENCY SIGNALING (MF) is a group of signaling methods that use a mixture of two pure tone (pure sine wave) sounds. Various MF signaling protocols were devised by the Bell System and CCITT. The earliest of these were for in-band signaling between switching centers, where long-distance telephone operators used a 16-digit keypad to input the next portion of the destination telephone number in order to contact the next downstream long-distance telephone operator. This semi-automated signaling and switching proved successful in both speed and cost effectiveness. Based on this prior success with using MF by specialists to establish long-distance telephone calls, dual-tone multi-frequency signaling was developed for end-user signaling without the assistance of operators.

The DTMF system uses a set of eight audio frequencies transmitted in pairs to represent 16 signals, represented by the ten digits, the letters A to D, and the symbols _#_ and _*_. As the signals are audible tones in the voice frequency range, they can be transmitted through electrical repeaters and amplifiers, and over radio and microwave links, thus eliminating the need for intermediate operators on long-distance circuits.

AT&T described the product as "a method for pushbutton signaling from customer stations using the voice transmission path."[3] In order to prevent consumer telephones from interfering with the MF-based routing and switching between telephone switching centers, DTMF frequencies differ from all of the pre-existing MF signaling protocols between switching centers: MF/R1, R2, CCS4, CCS5, and others that were later replaced by SS7 digital signaling. DTMF was known throughout the Bell System by the trademark _Touch-Tone_. The term was first used by AT&T in commerce on July 5, 1960 and was introduced to the public on November 18, 1963, when the first push-button telephone was made available to the public. As a parent company of Bell Systems, AT&T held the trademark from September 4, 1962 to March 13, 1984. It is standardized by ITU-T Recommendation Q.23. In the UK, it is also known as MF4.

Other vendors of compatible telephone equipment called the Touch-Tone feature _tone dialing_ or _DTMF_, or used their other trade names such as _Digitone_ by Northern Electric Company in Canada.

As a method of in-band signaling, DTMF signals were also used by cable television broadcasters to indicate the start and stop times of local commercial insertion points during station breaks for the benefit of cable companies. Until out-of-band signaling equipment was developed in the 1990s, fast, unacknowledged DTMF tone sequences could be heard during the commercial breaks of cable channels in the United States and elsewhere. Previously, terrestrial television stations used DTMF tones to control remote transmitters. In IP telephony, DTMF signals can also be delivered as either in-band or out-of-band tones,[4] or even as a part of signaling protocols,[5] as long as both endpoints agree on a common approach to adopt.


#, *, A, B, C, and D

The engineers had envisioned telephones being used to access computers and automated response systems.[6] They consulted with companies to determine the requirements. This led to the addition of the number sign (#, ''pound'' or "diamond" in this context, "hash", "square" or "gate" in the UK, and "octothorpe'' by the original engineers) and asterisk or "star" (*) keys as well as a group of keys for menu selection: A, B, C and D. In the end, the lettered keys were dropped from most phones, and it was many years before the two symbol keys became widely used for vertical service codes such as *67 in the United States of America and Canada to suppress caller ID.

Public payphones that accept credit cards use these additional codes to send the information from the magnetic strip.

The AUTOVON telephone system of the United States Armed Forces used these signals to assert certain privilege and priority levels when placing telephone calls.[7] Precedence is still a feature of military telephone networks, but using number combinations. For example, entering 93 before a number is a priority call.

Present-day uses of the A, B, C and D signals on telephone networks are few, and are exclusive to network control. For example, the A key is used on some networks to cycle through different carriers at will. The A, B, C and D tones are used in radio phone patch and repeater operations to allow, among other uses, control of the repeater while connected to an active phone line.

The *, #, A, B, C and D keys are still widely used worldwide by amateur radio operators and commercial two-way radio systems for equipment control, repeater control, remote-base operations and some telephone communications systems.

DTMF signaling tones can also be heard at the start or end of some VHS (Video Home System) cassette tapes. Information on the master version of the video tape is encoded in the DTMF tone. The encoded tone provides information to automatic duplication machines, such as format, duration and volume levels, in order to replicate the original video as closely as possible.

DTMF tones are used in some caller ID systems to transfer the caller ID information, but in the United States only Bell 202 modulated FSK signaling is used to transfer the data.


Keypad

The DTMF telephone keypad is laid out as a matrix of push buttons in which each row represents the low frequency component and each column represents the high frequency component of the DTMF signal. The commonly used keypad has four rows and three columns, but a fourth column is present for some applications. Pressing a key sends a combination of the row and column frequencies. For example, the _1_ key produces a superimposition of a 697 Hz low tone and a 1209 Hz high tone. Initial pushbutton designs employed levers, enabling each button to activate one row and one column contact. The tones are decoded by the switching center to determine the keys pressed by the user.

            1209 Hz   1336 Hz   1477 Hz   1633 Hz
  -------- --------- --------- --------- ---------
   697 Hz      1         2         3         A
   770 Hz      4         5         6         B
   852 Hz      7         8         9         C
   941 Hz      *         0         #         D

  : DTMF keypad frequencies (with sound clips)


Decoding

DTMF was originally decoded by tuned filter banks. By the end of the 20th century, digital signal processing became the predominant technology for decoding. DTMF decoding algorithms typically use the Goertzel algorithm. As DTMF signaling is often transmitted in-band with voice or other audio signals present simultaneously, the DTMF signal definition includes strict limits for timing (minimum duration and interdigit spacing), frequency deviations, harmonics, and amplitude relation of the two components with respect to each other (_twist_).[8]


Other multiple frequency signals

National telephone systems define other tones, outside the DTMF specification, that indicate the status of lines, equipment, or the result of calls. Such call-progress tones are often also composed of multiple frequencies and are standardized in each country. The Bell System defined them in the Precise Tone Plan.[9]


See also

-   Selective calling
-   Special information tone


References


Further reading

-   ITU's recommendations for implementing DTMF services
-   .

-   -   Frank Durda, Dual Tone Multi-Frequency (Touch-Tone®) Reference, 2006.
-   ITU-T Recommendation Q.24 - Multifrequency push-button signal reception

Category:Telephony signals Category:Broadcast engineering

[1]

[2]

[3] AT&T, _Compatibility Bulletin No. 105_

[4] H. Schulzrinne and T. Taylor, _RTP Payload for DTMF Digits, Telephony Tones, and Telephony Signals_, IETF RFC 4733, December 2006.

[5] C. Holmberg, E. Burger, H. Kaplan, _Session Initiation Protocol (SIP) INFO Method and Package Framework_, IETF RFC 6086, January 2011.

[6]

[7] "What are the ABCD tones?" — Tech FAQ

[8] W. D. Reeves, _Subscriber Loop Signaling and Transmission Handbook—Analog_, IEEE (1992), p.27

[9] AT&T, _Notes on Distance Dialing_, 1968