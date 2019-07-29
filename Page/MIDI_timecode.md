MIDI TIME CODE (MTC) embeds the same timing information as standard SMPTE timecode as a series of small 'quarter-frame' MIDI messages. There is no provision for the user bits in the standard MIDI time code messages, and SysEx messages are used to carry this information instead. The quarter-frame messages are transmitted in a sequence of eight messages, thus a complete timecode value is specified every two frames. If the MIDI data stream is running close to capacity, the MTC data may arrive a little behind schedule which has the effect of introducing a small amount of jitter. In order to avoid this it is ideal to use a completely separate MIDI port for MTC data. Larger full-frame messages, which encapsulate a frame worth of timecode in a single message, are used to locate to a time while timecode is not running.

Unlike standard SMPTE timecode, MIDI timecode's quarter-frame and full-frame messages carry a two-bit flag value that identifies the rate of the timecode, specifying it as either:

-   24 frame/s (standard rate for film work)
-   25 frame/s (standard rate for PAL video)
-   29.97 frame/s (drop-frame timecode for NTSC video)
-   30 frame/s (non-drop timecode for NTSC video)

MTC distinguishes between film speed and video speed only by the rate at which timecode advances, not by the information contained in the timecode messages; thus, 29.97 frame/s dropframe is represented as 30 frame/s dropframe at 0.1% pulldown.

MTC allows the synchronisation of a sequencer or DAW with other devices that can synchronise to MTC or for these devices to 'slave' to a tape machine that is striped with SMPTE. For this to happen a SMPTE to MTC converter needs to be employed. It is possible for a tape machine to synchronise to an MTC signal (if converted to SMPTE), if the tape machine is able to 'slave' to incoming timecode via motor control, which is a rare feature.


Time code format

The MIDI time code is 32 bits long, of which 24 are used, while 8 bits are unused and always zero. Because the full-time code messages requires that the most significant bits of each byte are zero (valid MIDI data bytes), there are really only 28 available bits and 4 spare bits.

Like most audiovisual timecodes such as SMPTE time code, it encodes only time of day, repeating each 24 hours. Time is given in units of hours, minutes, seconds, and frames. There may be 24, 25, or 30 frames per second.

Unlike most other timecodes, the components are encoded in straight binary, not binary-coded decimal.

Each component is assigned one byte:

Byte 0 : 0rrhhhhh: Rate (0–3) and hour (0–23).

:* rr = 00: 24 frames/s

:* rr = 01: 25 frames/s

:* rr = 10: 29.97 frames/s (SMPTE drop-frame timecode)

:* rr = 11: 30 frames/s

Byte 1 : 00mmmmmm: Minute (0–59)
Byte 2 : 00ssssss: Second (0–59)
Byte 3 : 000fffff: Frame (0–29, or less at lower frame rates)

Full time code

When there is a jump in the time code, a single full-time code is sent to synchronize attached equipment. This takes the form of a special global system exclusive message:

    F0 7F 7F 01 01 hh mm ss ff F7

The manufacturer ID of 7F indicates a real-time universal message, the channel of 7F indicates it is a global broadcast. The following ID of 01 identifies this is a time code type message, and the second 01 indicates it is a full-time code message. The 4 bytes of time code follow. Although MIDI is generally little-endian, the 4 time code bytes follow in big-endian order, followed by a F7 "end of exclusive" byte.

After a jump, the time clock stops until the first following quarter-frame message is received.

Quarter-frame messages

When the time is running continuously, the 32-bit time code is broken into 8 4-bit pieces, and one piece is transmitted each quarter frame. I.e. 96—120 times per second, depending on the frame rate. Since it takes eight quarter frames for a complete time code message, the complete SMPTE time is updated every two frames. A quarter-frame messages consists of a status byte of 0xF1, followed by a single 7-bit data value: 3 bits to identify the piece, and 4 bits of partial time code. When time is running forward, the piece numbers increment from 0–7; with the time that piece 0 is transmitted is the coded instant, and the remaining pieces are transmitted later.

If the MIDI data stream is being rewound, the piece numbers count backward. Again, piece 0 is transmitted at the coded moment.

The time code is divided little-endian as follows:

  Piece #   Data byte   Significance
  --------- ----------- ---------------------
  0         0000 ffff   Frame number lsbits
  1         0001 000f   Frame number msbit
  2         0010 ssss   Second lsbits
  3         0011 00ss   Second msbits
  4         0100 mmmm   Minute lsbits
  5         0101 00mm   Minute msbits
  6         0110 hhhh   Hour lsbits
  7         0111 0rrh   Rate and hour msbit

  : MIDI time code pieces


See also

-   AES-EBU embedded timecode
-   Burnt-in timecode
-   CTL timecode
-   DIN sync
-   Linear timecode
-   MIDI beat clock
-   Rewritable consumer timecode
-   Vertical interval timecode


External links

-   MIDI Time Code information
-   MIDI time code specification 12 Feb 1987
-   Guide to the MIDI Software Specification

Category:MIDI standards Category:Timecodes Category:MIDI Category:SMPTE standards