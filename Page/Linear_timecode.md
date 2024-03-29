LINEAR (OR LONGITUDINAL) TIMECODE (LTC) is an encoding of SMPTE timecode data in an audio signal, as defined in SMPTE 12M specification. The audio signal is commonly recorded on a VTR track or other storage media. The bits are encoded using the biphase mark code (also known as _FM_): a 0 bit has a single transition at the start of the bit period. A 1 bit has two transitions, at the beginning and middle of the period. This encoding is self-clocking. Each frame is terminated by a 'sync word' which has a special predefined sync relationship with any video or film content.

A special bit in the linear timecode frame, the _biphase mark correction_ bit, ensures that there are an even number of AC transitions in each timecode frame.

The sound of linear timecode is a jarring and distinctive noise and has been used as a sound-effects shorthand to imply _telemetry_ or _computers_.


Generation and Distribution

In broadcast video situations, the LTC generator should be tied into house black burst, as should all devices using timecode, TO ENSURE CORRECT COLOR FRAMING AND CORRECT SYNCHRONIZATION OF ALL DIGITAL CLOCKS. When synchronizing multiple clock-dependent digital devices together with video, such as digital audio recorders, the devices must be connected to a common word clock signal that is derived from the house black burst signal. This can be accomplished by using a generator that generates both black burst and video-resolved word clock, or by synchronizing the master digital device to video, and synchronizing all subsequent devices to the word clock output of the master digital device (and to LTC).

Made up of 80 bits per frame, where there may be 24, 25 or 30 frames per second, LTC timecode varies from 960 Hz (binary zeros at 24 frames/s) to 2400 Hz (binary ones at 30 frames/s), and thus is comfortably in the audio frequency range. LTC can exist as either a balanced or unbalanced signal, and can be treated as an audio signal in regards to distribution. Like audio, LTC can be distributed by standard audio wiring, connectors, distribution amplifiers, and patchbays, and can be ground-isolated with audio transformers. It can also be distributed via 75 ohm video cable and video distribution amplifiers, although the voltage attenuation caused by using a 75 ohm system may cause the signal to drop to a level that can not be read by some equipment.

Care has to be taken with analog audio to avoid audible 'breakthrough' (aka "crosstalk") from the LTC track to the audio tracks.

LTC CARE:

-   Avoid percussive sounds close to LTC
-   Never process an LTC with noise reduction, eq or compressor
-   Allow pre roll and post roll
-   To create negative time code add one hour to time (avoid _midnight effect_)
-   Always put slowest device as a master

Longitudinal SMPTE timecode should be played back at a middle-level when recorded on an audio track, as both low and high levels will introduce distortion.


Longitudinal timecode data format

The basic format is an 80-bit code that gives the time of day to the second, and the frame number within the second. Values are stored in binary-coded decimal, least significant bit first. There are thirty-two bits of user data, usually used for a reel number and date.

[TABLE]

: SMPTE linear timecode[1]

-   Bit 10 is set to 1 if drop frame numbering is in use; frame numbers 0 and 1 are skipped during the first second of every minute, except multiples of 10 minutes. This converts 30 frame/second time code to the 29.97 frame/second NTSC standard.
-   Bit 11, the color framing bit, is set to 1 if the time code is synchronized to a color video signal. The frame number modulo 2 (for NTSC and SECAM) or modulo 4 (for PAL) should be preserved across cuts in order to avoid phase jumps in the chrominance subcarrier.
-   Bits 27, 43, and 59 differ between 25 frame/s time code, and other frame rates (30, 29.97, or 24).[2] The bits are:
    -   "Polarity correction bit" (bit 59 at 25 frame/s, bit 27 at other rates): this bit is chosen to provide an even number of 0 bits in the whole frame, including the sync code. (Since the frame is an even number of bits long, this implies an even number of 1 bits, and is thus an even parity bit. Since the sync code includes an odd number of 1 bits, it is an odd parity bit over the data.) This keeps the phase of each frame consistent, so it always starts with a rising edge at the beginning of bit 0. This allows seamless splicing of different time codes, and lets it be more easily read with an oscilloscope.
    -   "Binary group flag" bits BGF0 and BGF2 (bits 27 and 43 at 25 frame/s, bits 43 and 59 at other rates): these indicate the format of the user bits. Both 0 indicates no (or unspecified) format. Only BGF0 set indicates four 8-bit characters (transmitted little-endian). The combinations with BGF2 set are reserved.
-   Bit 58, unused in earlier versions of the specification, is now defined as "binary group flag 1" and indicates that the time code is synchronized to an external clock. if zero, the time origin is arbitrary.
-   The sync pattern in bits 64 through 79 includes 12 consecutive 1 bits, which cannot appear anywhere else in the time code. Assuming all user bits are set to 1, the longest run of 1 bits that can appear elsewhere in the time code is 10, bits 9 to 18 inclusive.
-   The sync pattern is preceded by 00 and followed by 01. This is used to determine whether an audio tape is running forward or backward.[3][4]


See also

-   Vertical interval timecode
-   Burnt-in timecode
-   MIDI timecode
-   CTL timecode
-   AES-EBU embedded timecode
-   Rewritable consumer timecode
-   VTR
-   Manchester Code
-   Biphase Mark Code


References


External links

-   LGPL library to en/decode LTC in software

Category:Broadcast engineering Category:Electrical engineering Category:Timecodes Category:Recording devices Category:Film and video technology

[1]

[2]  This is an example of the 25 frame/s bit assignments, which are different from the more commonly seen 30/29.97/24 bit assignments.

[3]

[4]