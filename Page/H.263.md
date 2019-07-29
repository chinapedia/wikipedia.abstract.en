H.263 is a video compression standard originally designed as a low-bit-rate compressed format for videoconferencing. It was standardised by the ITU-T Video Coding Experts Group (VCEG) in a project ending in 1995/1996, and developed with a number of companies, primarily Mitsubishi Electric, Hitachi and Panasonic. It is a member of the H.26x family of video coding standards in the domain of the ITU-T.

It was later extended to add various additional enhanced features in 1998 and 2000. Smaller additions were also made in 1997 and 2001, and a unified edition was produced in 2005.


History and background

The H.263 standard was first designed to be utilized in H.324 based systems (PSTN and other circuit-switched network videoconferencing and videotelephony), but it also found use in H.323 (RTP/IP-based videoconferencing), H.320 (ISDN-based videoconferencing), RTSP (streaming media) and SIP (IP-based videoconferencing) solutions.

The format was developed as part of the MPEG-4 Visual standard, with contributions from a number of companies. The majority of company patent contributions came from three companies: Mitsubishi Electric (255 patents), Hitachi (206 patents), and Panasonic (200 patents).[1]

H.263 is a required video coding format in ETSI 3GPP technical specifications for IP Multimedia Subsystem (IMS), Multimedia Messaging Service (MMS) and Transparent end-to-end Packet-switched Streaming Service (PSS).[2][3][4] In 3GPP specifications, H.263 video is usually used in 3GP container format.

H.263 also found many applications on the internet: much Flash Video content (as used on sites such as YouTube, Google Video, and MySpace) used to be encoded in Sorenson Spark format (an incomplete implementation of H.263[5][6][7]). The original version of the RealVideo codec was based on H.263 until the release of RealVideo 8.[8]

H.263 was developed as an evolutionary improvement based on experience from H.261, the previous ITU-T standard for video compression, and the MPEG-1 and MPEG-2 standards. Its first version was completed in 1995 and provided a suitable replacement for H.261 at all bit rates. It was further enhanced in projects known as H.263v2 (also known as H.263+ or H.263 1998), MPEG-4 Part 2 and H.263v3 (also known as H.263++ or H.263 2000).[9][10][11] MPEG-4 Part 2 is H.263 compatible in the sense that basic "baseline" H.263 bitstreams are correctly decoded by an MPEG-4 Video decoder.[12][13]

The next enhanced format developed by ITU-T VCEG (in partnership with MPEG) after H.263 was the H.264 standard, also known as AVC and MPEG-4 part 10. As H.264 provides a significant improvement in capability beyond H.263, the H.263 standard is now considered a legacy design. Most new videoconferencing products now include H.264 as well as H.263 and H.261 capabilities. An even-newer standard format, HEVC, has also been developed by VCEG and MPEG, and has begun to emerge in some applications.


Versions

Since the original ratification of H.263 in March 1996[14] (approving a document that was produced in November 1995), there have been two subsequent additions which improved on the original standard by additional optional extensions (for example, the H.263v2 project added a deblocking filter in its Annex J).

Version 1 and Annex I

The original version of H.263 specified the following annexes:

-   Annex A – Inverse transform accuracy specification
-   Annex B – Hypothetical Reference Decoder
-   Annex C – Considerations for Multipoint
-   Annex D – Unrestricted Motion Vector mode
-   Annex E – Syntax-based Arithmetic Coding mode
-   Annex F – Advanced Prediction mode
-   Annex G – PB-frames mode
-   Annex H – Forward Error Correction for coded video signal

The first version of H.263 supported a limited set of picture sizes:

-   128x96 (a.k.a. Sub-QCIF)
-   176x144 (a.k.a. QCIF)
-   352x288 (a.k.a. CIF)
-   704x576 (a.k.a. 4CIF)
-   1408x1152 (a.k.a. 16CIF)

In March 1997, an informative Appendix I describing Error Tracking – an encoding technique for providing improved robustness to data losses and errors, was approved to provide information for the aid of implementers having an interest in such techniques.

H.263v2 (H.263+)

H.263v2 (also known as _H.263+_, or as _the 1998 version of H.263_) is the informal name of the second edition of the ITU-T H.263 international video coding standard. It retained the entire technical content of the original version of the standard, but enhanced H.263 capabilities by adding several annexes which can substantially improve encoding efficiency and provide other capabilities (such as enhanced robustness against data loss in the transmission channel). The H.263+ project was ratified by the ITU in February 1998. It added the following Annexes:

-   Annex I – Advanced INTRA Coding mode
-   Annex J – Deblocking Filter mode
-   Annex K – Slice Structured mode
-   Annex L – Supplemental Enhancement Information Specification
-   Annex M – Improved PB-frames mode
-   Annex N – Reference Picture Selection mode
-   Annex O – Temporal, SNR, and Spatial Scalability mode
-   Annex P – Reference picture resampling
-   Annex Q – Reduced-Resolution Update mode (see implementors' guide correction as noted below)
-   Annex R – Independent Segment Decoding mode
-   Annex S – Alternative INTER VLC mode
-   Annex T – Modified Quantization mode

H.263v2 also added support for flexible customized picture formats and custom picture clock frequencies. As noted above, the only picture formats previously supported in H.263 had been Sub-QCIF, QCIF, CIF, 4CIF, and 16CIF, and the only picture clock frequency had been 30000/1001 (approximately 29.97) clock ticks per second.

H.263v2 specified a set of recommended modes in an informative appendix (Appendix II, since deprecated):

+---------------------------------------------------------------+---------+---------+---------+
|                                                               | Level 1 | Level 2 | Level 3 |
+===============================================================+=========+=========+=========+
| Advanced INTRA Coding                                         |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Deblocking Filter                                             |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Supplemental Enhancement Information (Full-Frame Freeze Only) |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Modified Quantization                                         |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Unrestricted Motion Vectors                                   |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Slice Structured Mode                                         |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Reference Picture Resampling (Implicit Factor-of-4 Mode Only) |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Advanced Prediction                                           |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Improved PB-frames                                            |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Independent Segment Decoding                                  |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
| Alternate INTER VLC                                           |         |         |         |
+---------------------------------------------------------------+---------+---------+---------+
|                                                               | Level 1 | Level 2 | Level 3 |
+---------------------------------------------------------------+---------+---------+---------+

H.263v3 (H.263++) and Annex X

The definition of H.263v3 (also known as H.263++ or as the 2000 version of H.263) added three annexes. These annexes and an additional annex that specified profiles (approved the following year) were originally published as separate documents from the main body of the standard itself. The additional annexes specified are:

-   Annex U – Enhanced reference picture selection mode
-   Annex V – Data-partitioned slice mode
-   Annex W – Additional supplemental enhancement information specification
-   Annex X (originally specified in 2001) – Profiles and levels definition

The prior informative Appendix II (recommended optional enhancement) was obsoleted by the creation of the normative Annex X.

In June 2001, another informative appendix (Appendix III, Examples for H.263 encoder/decoder implementations) was approved. It describes techniques for encoding and for error/loss concealment by decoders.

In January 2005, a unified H.263 specification document was produced (with the exception of Appendix III, which remains as a separately-published document).

In August 2005, an implementors guide was approved to correct a small error in the seldom-used Annex Q reduced-resolution update mode.


Patent holders

The following companies hold patents for MPEG-4 Visual (H.263) technology, as listed in the patent pool maintained by MPEG LA. }}


Open-source implementation

In countries without software patents, H.263 video can be legally encoded[15] and decoded with the free LGPL-licensed libavcodec library (part of the FFmpeg project) which is used by programs such as ffdshow, VLC media player and MPlayer.


See also

-   MPEG-4 Part 2 (MPEG-4 Visual)
-   H.262/MPEG-2 Part 2


References


External links

-   The ITU-T specification for H.263
-   IETF AVT Working Group - Group that reviews codec packetizations for RTP
    -   RFC 4629 - RTP Payload Format for ITU-T Rec. H.263 Video
    -   RFC 2429 - RTP Payload Format for the 1998 Version of ITU-T Rec. H.263 Video (H.263+) (Obsolete, upgraded spec in RFC 4629)
    -   RFC 2190 - RTP Payload Format for H.263 Video Streams (Historic)
-   H.263 - MultimediaWiki
-   Intel Integrated Performance Primitives
-   H.263 implementation in vic (source code available)

Category:Video codecs Category:Videotelephony Category:Open standards covered by patents Category:ITU-T recommendations Category:ITU-T H Series Recommendations Category:H.26x

[1]

[2] ETSI (2009-04) ETSI TS 126 234 V8.2.0 (2009-04); 3GPP TS 26.234; Transparent end-to-end Packet-switched Streaming Service (PSS); Protocols and codecs Retrieved on 2009-06-02.

[3] ETSI (2009-01) ETSI TS 126 140 V8.0.0 (2009-01); 3GPP TS 26.140; Multimedia Messaging Service (MMS); Media formats and codes Retrieved on 2009-06-02.

[4] ETSI (2009-01) ETSI TS 126 141 V8.0.0 (2009-01); 3GPP TS 26.141; IP Multimedia System (IMS) Messaging and Presence; Media formats and codecs Retrieved on 2009-06-02.

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15] http://www.mplayerhq.hu/DOCS/HTML/en/menc-feat-enc-libavcodec.html