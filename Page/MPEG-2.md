, TS, and MPEG program stream, PS, are container formats.]] MPEG-2 (a.k.a. H.222/H.262 as defined by the ITU) is a standard for "the generic coding of moving pictures and associated audio information".[1] It describes a combination of lossy video compression and lossy audio data compression methods, which permit storage and transmission of movies using currently available storage media and transmission bandwidth. While MPEG-2 is not as efficient as newer standards such as H.264/AVC and H.265/HEVC, backwards compatibility with existing hardware and software means it is still widely used, for example in over-the-air digital television broadcasting and in the DVD-Video standard.


Main characteristics

MPEG-2 is widely used as the format of digital television signals that are broadcast by terrestrial (over-the-air), cable, and direct broadcast satellite TV systems. It also specifies the format of movies and other programs that are distributed on DVD and similar discs. TV stations, TV receivers, DVD players, and other equipment are often designed to this standard. MPEG-2 was the second of several standards developed by the Moving Pictures Expert Group (MPEG) and is an international standard (ISO/IEC 13818). Parts 1 and 2 of MPEG-2 were developed in a collaboration with ITU-T, and they have a respective catalog number in the ITU-T Recommendation Series.

While MPEG-2 is the core of most digital television and DVD formats, it does not completely specify them. Regional institutions can adapt it to their needs by restricting and augmenting aspects of the standard. See Video profiles and levels.

Systems

MPEG-2 includes a Systems section, part 1, that defines two distinct, but related, container formats. One is the _transport stream_, a data packet format designed to transmit one data packet in four ATM data packets for streaming digital video and audio over fixed or mobile transmission mediums, where the beginning and the end of the stream may not be identified, such as radio frequency, cable and linear recording mediums, examples of which include ATSC/DVB/ISDB/SBTVD broadcasting, and HDV recording on tape. The other is the _program stream_, an extended version of the MPEG-1 container format with less overhead than _transport stream_. _Program stream_ is designed for random access storage mediums such as hard disk drives, optical discs and flash memory.

_Transport stream_ file formats include M2TS, which is used on Blu-ray discs, AVCHD on re-writable DVDs and HDV on compact flash cards. _Program stream_ files include VOB on DVDs and Enhanced VOB on the short lived HD DVD. The standard MPEG-2 _transport stream_ contains packets of 188 bytes. M2TS prepends each packet with 4 bytes containing a 2-bit copy permission indicator and 30-bit timestamp.

MPEG-2 Systems is formally known as ISO/IEC 13818-1 and as ITU-T Rec. H.222.0.[2][3] ISO authorized the "SMPTE Registration Authority, LLC" as the registration authority for MPEG-2 format identifiers. The registration descriptor of MPEG-2 transport is provided by ISO/IEC 13818-1 in order to enable users of the standard to unambiguously carry data when its format is not necessarily a recognized international standard. This provision will permit the MPEG-2 transport standard to carry all types of data while providing for a method of unambiguous identification of the characteristics of the underlying private data.[4]

Video

The Video section, part 2 of MPEG-2, is similar to the previous MPEG-1 standard, but also provides support for interlaced video, the format used by analog broadcast TV systems. MPEG-2 video is not optimized for low bit-rates, especially less than 1 Mbit/s at standard definition resolutions. All standards-compliant MPEG-2 Video decoders are fully capable of playing back MPEG-1 Video streams conforming to the Constrained Parameters Bitstream syntax. MPEG-2/Video is formally known as ISO/IEC 13818-2 and as ITU-T Rec. H.262.[5]

With some enhancements, MPEG-2 Video and Systems are also used in some HDTV transmission systems, and is the standard format for over-the-air ATSC digital television.

Audio

MPEG-2 introduces new audio encoding methods compared to MPEG-1:[6]

MPEG-2 Part 3

The MPEG-2 Audio section, defined in Part 3 (ISO/IEC 13818-3) of the standard, enhances MPEG-1's audio by allowing the coding of audio programs with more than two channels, up to 5.1 multichannel. This method is backwards-compatible (also known as MPEG-2 BC[7][8][9][10]), allowing MPEG-1 audio decoders to decode the two main stereo components of the presentation.[11] MPEG-2 part 3 also defined additional bit rates and sample rates for MPEG-1 Audio Layer I, II and III.[12]

MPEG-2 BC (backward compatible with MPEG-1 audio formats)[13][14][15]

-   low bitrate encoding with halved sampling rate (MPEG-1 Layer 1/2/3 LSF - a.k.a. MPEG-2 LSF - "Low Sampling Frequencies")
-   multichannel encoding with up to 5.1 channels, a.k.a. MPEG Multichannel

MPEG-2 Part 7

Part 7 (ISO/IEC 13818-7) of the MPEG-2 standard specifies a rather different, non-backwards-compatible audio format[16] (also known as MPEG-2 NBC[17][18][19]). Part 7 is referred to as MPEG-2 AAC. AAC is more efficient than the previous MPEG audio standards, and is in some ways less complicated than its predecessor, MPEG-1 Audio, Layer 3, in that it does not have the hybrid filter bank. It supports from 1 to 48 channels at sampling rates of 8 to 96 kHz, with multichannel, multilingual, and multiprogram capabilities.[20] Advanced Audio is also defined in Part 3 of the MPEG-4 standard.

MPEG-2 NBC (Non-Backward Compatible)[21][22]

-   MPEG-2 AAC
-   multichannel encoding with up to 48 channels


ISO/IEC 13818

MPEG-2 standards are published as parts of ISO/IEC 13818. Each part covers a certain aspect of the whole specification.

Part 1: Systems – describes synchronization and multiplexing of video and audio. (It is also known as ITU-T Rec. H.222.0.[23]) See MPEG transport stream and MPEG program stream.
Part 2: Video – video coding format for interlaced and non-interlaced video signals (Also known as ITU-T Rec. H.262).
Part 3: Audio – audio coding format for perceptual coding of audio signals. A multichannel-enabled extension and extension of bit rates and sample rates for MPEG-1 Audio Layer I, II and III of MPEG-1 audio.
Part 4: Describes procedures for testing compliance.
Part 5: Describes systems for Software simulation.
Part 6: Describes extensions for DSM-CC (Digital Storage Media Command and Control).
Part 7: Advanced Audio Coding (AAC).
Part 8: 10-bit video extension. Primary application was studio video, allowing artifact-free processing without giving up compression. Part 8 has been withdrawn due to lack of interest by industry.
Part 9: Extension for real time interfaces.
Part 10: Conformance extensions for DSM-CC.
Part 11: Intellectual property management (IPMP)

  Part      Number               First public release date (First edition)   Latest public release date (edition)   Latest amend- ment   Identical ITU-T Rec.   Title                                                                           Description
  --------- -------------------- ------------------------------------------- -------------------------------------- -------------------- ---------------------- ------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
  Part 1    ISO/IEC 13818-1      1996                                        2015                                   2016[26]             H.222.0                Systems
  Part 2    ISO/IEC 13818-2      1996                                        2013                                                        H.262                  Video
  Part 3    ISO/IEC 13818-3      1995                                        1998                                                                               Audio                                                                           MPEG-2 BC - backwards compatible with MPEG-1 Audio
  Part 4    ISO/IEC 13818-4      1998                                        2004                                   2009[27]                                    Conformance testing
  Part 5    ISO/IEC TR 13818-5   1997                                        2005                                                                               Software simulation
  Part 6    ISO/IEC 13818-6      1998                                        1998                                   2001[28]                                    Extensions for DSM-CC                                                           extensions for Digital Storage Media Command and Control[29][30]
  Part 7    ISO/IEC 13818-7      1997                                        2006                                   2007[31]                                    Advanced Audio Coding (AAC)                                                     MPEG-2 NBC Audio - Non-Backwards Compatible with MPEG-1 Audio
  Part 8    dropped                                                                                                                                             10-Bit Video                                                                    The work began in 1995, but was terminated in 2007 because of low industry interest.[32][33]
  Part 9    ISO/IEC 13818-9      1996                                        1996                                                                               Extension for real time interface for systems decoders
  Part 10   ISO/IEC 13818-10     1999                                        1999                                                                               Conformance extensions for Digital Storage Media Command and Control (DSM-CC)
  Part 11   ISO/IEC 13818-11     2004                                        2004                                                                               IPMP on MPEG-2 systems                                                          Intellectual Property Management and Protection on the MPEG-2 system[34][35] (XML IPMP messages are also defined in ISO/IEC 23001-3[36])

  : MPEG-2 Parts[24][25]


History

MPEG-2 evolved out of the shortcomings of MPEG-1.

MPEG-1's known weaknesses:

-   An audio compression system limited to two channels (stereo).
-   No standardized support for interlaced video with poor compression when used for interlaced video
-   Only one standardized "profile" (Constrained Parameters Bitstream), which was unsuited for higher resolution video. MPEG-1 could support 4k video but there was no easy way to encode video for higher resolutions, and identify hardware capable of supporting it, as the limitations of such hardware were not defined.
-   Support for only one chroma subsampling, 4:2:0.

Sakae Okubo of NTT was the ITU-T coordinator for developing the H.262/MPEG-2 Part 2 video coding standard and the requirements chairman in MPEG for the MPEG-2 set of standards.[37] The majority of patents underlying MPEG-2 technology are owned by three companies: Sony (311 patents), Thomson (198 patents) and Mitsubishi Electric (119 patents).[38] Hyundai Electronics (now SK Hynix) developed the first MPEG-2 SAVI (System/Audio/Video) decoder in 1995.[39]


Filename extensions

.mpg, .mpeg, .m2v, .mp2, .mp3 are some of a number of filename extensions used for MPEG-1 or MPEG-2 audio and video file formats.


Applications

DVD-Video

The DVD-Video standard uses MPEG-2 video, but imposes some restrictions:

-   Allowed Dimensions
    -   720 × 480, 704 × 480, 352 × 480, 352 × 240 pixel (NTSC)
    -   720 × 576, 704 × 576, 352 × 576, 352 × 288 pixel (PAL)
-   Allowed Aspect ratios (Display AR)
    -   4:3 (for letterboxed widescreen and non-widescreen frames)
    -   16:9 (for anamorphic widescreen[40])

-   Allowed frame rates
    -   29.97 interlaced frame/s (NTSC)
    -   23.978 progressive frame/s (for NTSC 2:3 pull-down to 29.97[41])
    -   25 interlaced frame/s (PAL)

-   Audio + video bitrate
    -   Video peak 9.8 Mbit/s
    -   Total peak 10.08 Mbit/s
    -   Minimum 300 kbit/s
-   YUV 4:2:0
-   Additional subtitles possible
-   Closed captioning (NTSC only)
-   Audio
    -   Linear Pulse Code Modulation (LPCM): 48 kHz or 96 kHz; 16- or 24-bit; up to six channels (not all combinations possible due to bitrate constraints)
    -   MPEG Layer 2 (MP2): 48 kHz, up to 5.1 channels (required in PAL players only)
    -   Dolby Digital (DD, also known as AC-3): 48 kHz, 32–448 kbit/s, up to 5.1 channels
    -   Digital Theater Systems (DTS): 754 kbit/s or 1510 kbit/s (not required for DVD player compliance)
    -   NTSC DVDs must contain at least one LPCM or Dolby Digital audio track.
    -   PAL DVDs must contain at least one MPEG Layer 2, LPCM, or Dolby Digital audio track.
    -   Players are not required to play back audio with more than two channels, but must be able to downmix multichannel audio to two channels.
-   GOP structure (Group Of Pictures)
    -   Sequence header must be present at the beginning of every GOP
    -   Maximum frames per GOP: 18 (NTSC) / 15 (PAL), i.e. 0.6 seconds both
    -   Closed GOP required for multi-angle DVDs

HDV

HDV is a format for recording and playback of high-definition MPEG-2 video on a DV cassette tape.

MOD and TOD

MOD and TOD are recording formats for use in consumer digital file-based camcorders.

XDCAM

XDCAM is a professional file-based video recording format.

DVB

Application-specific restrictions on MPEG-2 video in the DVB standard:

Allowed resolutions for SDTV:

-   720, 640, 544, 528, 480 or 352 × 480 pixel, 24/1.001, 24, 30/1.001 or 30 frame/s
-   352 × 240 pixel, 24/1.001, 24, 30/1.001 or 30 frame/s
-   720, 704, 544, 528, 480 or 352 × 576 pixel, 25 frame/s
-   352 × 288 pixel, 25 frame/s

For HDTV:

-   720 x 576 x 50 frame/s progressive (576p50)
-   1280 x 720 x 25 or 50 frame/s progressive (720p50)
-   1440 or 1920 x 1080 x 25 frame/s progressive (1080p25 = film mode)
-   1440 or 1920 x 1080 x 25 frame/s interlace (1080i50)

ATSC

The ATSC A/53 standard used in the United States, uses MPEG-2 video at the Main Profile @ High Level (MP@HL), with additional restrictions such as the maximum bitrate of 19.39 Mbit/s for broadcast television and 38.8 Mbit/s for cable television, 4:2:0 chroma subsampling format, and mandatory colorimetry information.

ATSC allows the following video resolutions, aspect ratios, and frame/field rates:

-   1920 × 1080 pixel (16:9, square pixels), at 30p, 29.97p, 24p, 23.976p, 60i, 59.94i.
-   1280 × 720 pixel (16:9, square pixels), at 60p, 59.94p, 30p, 29.97p, 24p, or 23.976p
-   704 × 480 pixel (4:3 or 16:9, non-square pixels), at 60p, 59.94p, 30p, 29.97p, 24p, 23.976p, 60i, or 59.94i
-   640 × 480 pixel (4:3, square pixels), at 60p, 59.94p, 30p, 29.97p, 24p, 23.976p, 60i, or 59.94i

ATSC standard A/63 defines additional resolutions and aspect rates for 50 Hz (PAL) signal.

The ATSC specification and MPEG-2 allow the use of progressive frames, even within an interlaced video sequence. For example, a station that transmits 1080i60 video sequence can use a coding method where those 60 fields are coded with 24 progressive frames and metadata instructs the decoder to interlace them and perform 3:2 pulldown before display. This allows broadcasters to switch between 60 Hz interlaced (news, soap operas) and 24 Hz progressive (prime-time) content without ending the MPEG-2 sequence and introducing a several seconds of delay as the TV switches formats. This is the reason why 1080p30 and 1080p24 sequences allowed by the ATSC specification are not used in practice.

The 1080-line formats are encoded with 1920 × 1088 pixel luma matrices and 960 × 540 chroma matrices, but the last 8 lines are discarded by the MPEG-2 decoding and display process.

ATSC A/72 is the newest revision of ATSC standards for digital television, which allows the use of H.264/AVC video coding format and 1080p60 signal.

MPEG-2 audio was a contender for the ATSC standard during the DTV "Grand Alliance" shootout, but lost out to Dolby AC-3.

ISDB-T

Technical features of MPEG-2 in ATSC are also valid for ISDB-T, except that in the main TS has aggregated a second program for mobile devices compressed in MPEG-4 H.264 AVC for video and AAC-LC for audio, mainly known as 1seg.

Blu-ray

MPEG-2 is one of the three supported coding formats supported by Blu-ray Disc. Early Blu-ray releases typically used MPEG-2 video, but recent releases are almost always in H.264 or occasionally VC-1.


Patent pool

As of April 1 2019, only Malaysia and the Philippines still have active patents covering MPEG-2. Patents in the rest of the world have expired, with the last US patent expiring February 23, 2018.[42]

MPEG LA, a private patent licensing organization, has acquired rights from over 20 corporations and one university to license a patent pool of approximately 640 worldwide patents, which it claims are the "essential" to use of MPEG-2 technology. The patent holders include Sony, Mitsubishi Electric, Fujitsu, Panasonic, Scientific Atlanta, Columbia University, Philips, General Instrument, Canon, Hitachi, JVC Kenwood, LG Electronics, NTT, Samsung, Sanyo, Sharp and Toshiba.[43][44] Where Software patentability is upheld and patents have not expired, the use of MPEG-2 requires the payment of licensing fees to the patent holders. Other patents are licensed by Audio MPEG, Inc.[45] The development of the standard itself took less time than the patent negotiations.[46] Patent pooling between essential and peripheral patent holders in the MPEG-2 pool was the subject of a study by the University of Wisconsin.[47]

According to the MPEG-2 licensing agreement ANY use of MPEG-2 technology in countries with active patents is subject to royalties.[48] MPEG-2 encoders and decoders are subject to $0.35 per unit.[49] Also, any packaged medium (DVDs/Data Streams) is subject to licence fees according to length of recording/broadcast. The royalties were previously priced higher but were lowered at several points, most recently on January 1 2018. [50] An earlier criticism of the MPEG-2 patent pool was that even though the number of patents will decreased from 1,048 to 416 by June 2013 the license fee had not decreased with the expiration rate of MPEG-2 patents.[51][52][53][54].

Patent holders

The following organizations have held patents for MPEG-2, as listed at MPEG LA.

  Organization                                         Patents[55]
  ---------------------------------------------------- -------------
  Sony Corporation                                     311
  Thomson Licensing                                    198
  Mitsubishi Electric                                  119
  Philips                                              99
  GE Technology Development, Inc.                      75
  Panasonic Corporation                                55
  CIF Licensing, LLC                                   44
  JVC Kenwood                                          39
  Samsung Electronics                                  38
  Alcatel Lucent (including Multimedia Patent Trust)   33
  Cisco Technology, Inc.                               13
  Toshiba Corporation                                  9
  Columbia University                                  9
  LG Electronics                                       8
  Hitachi                                              7
  Orange S.A.                                          7
  Fujitsu                                              6
  Robert Bosch GmbH                                    5
  General Instrument                                   4
  British Telecommunications                           3
  Canon Inc.                                           2
  KDDI Corporation                                     2
  Nippon Telegraph and Telephone (NTT)                 2
  ARRIS Technology, Inc.                               2
  Sanyo Electric                                       1
  Sharp Corporation                                    1
  Hewlett Packard Enterprise Company                   1

Patents (U.S. only)

The last United States patent expired on .[56]


See also

-   MPEG encoding
-   MPEG-1 Audio Layer II (MP2)
-   MPEG-1 Audio Layer III (MP3)
-   DVD
-   DVB-S2
-   ISO/IEC JTC 1/SC 29


References


External links

-   A Beginners Guide for MPEG-2 Standard
-   MPEG-2 Overview (figures are lost)
-   MPEG-2 video compression
-   MIT 6.344 – Slides from lectures on video compression at MIT.
-   A Discrete Cosine Transform tutorial
-   IPTV MPEG and Quality of Experience Testing
-   OpenIPMP: Open Source DRM Project for MPEG-2
-   ISO/IEC 13818 – MPEG-2 at the ISO Store.
-   MPEG Books - A list of MPEG reference books.
-   1 - Recommended Practice: Guide to the Use of the ATSC Digital Television Standard, including Corrigendum No. 1

MPEG-2 Category:Audio codecs Category:Video codecs Category:Interactive television Category:ISO/IEC standards Category:Japanese inventions Category:Open standards covered by patents Category:Video compression Category:Videotelephony

[1]

[2]

[3]

[4] SMPTE Registration Authority, LLC - registration authority for MPEG-2 format identifiers Retrieved on 2009-07-06

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12] Predrag Supurovic, MPEG Audio Frame Header , Retrieved on 2009-07-11

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

[40] 1.85:1 and 2.35:1, among others, are often listed as valid DVD aspect ratios, but are wider film aspects with letterbox style padding to create a 16:9 image

[41] By using a pattern of REPEAT_FIRST_FIELD flags on the headers of encoded pictures, pictures can be displayed for either two or three fields and almost any picture display rate (minimum ⅔ of the frame rate) can be achieved. This is most often used to display 23.976 (approximately film rate) video on NTSC. See telecine for more information on how this works.

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