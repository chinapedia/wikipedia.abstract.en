OGG is a free, open container format maintained by the Xiph.Org Foundation. The creators of the Ogg format state that it is unrestricted by software patents[1] and is designed to provide for efficient streaming and manipulation of high-quality digital multimedia. Its name is derived from "ogging", jargon from the computer game _Netrek_.[2]

The Ogg container format can multiplex a number of independent streams for audio, video, text (such as subtitles), and metadata.

In the Ogg multimedia framework, Theora provides a lossy video layer. The audio layer is most commonly provided by the music-oriented Vorbis format or its successor Opus. Lossless audio compression formats include FLAC, and OggPCM.

Before 2007, the .ogg filename extension was used for all files whose content used the Ogg container format. Since 2007, the Xiph.Org Foundation recommends that .ogg only be used for Ogg Vorbis audio files. The Xiph.Org Foundation decided to create a new set of file extensions and media types to describe different types of content such as .oga for audio only files, .ogv for video with or without sound (including Theora), and .ogx for multiplexed Ogg.[3]

As of November 7, 2017, the current version of the Xiph.Org Foundation's reference implementation is libogg 1.3.3.[4] Another version, libogg2, has been in development, but is awaiting a rewrite as of 2018.[5] Both software libraries are free software, released under the New BSD License. Ogg reference implementation was separated from Vorbis on September 2, 2000.[6]

Because the format is free, and its reference implementation is not subject to restrictions associated with copyright, Ogg's various codecs have been incorporated into a number of different free and proprietary media players, both commercial and non-commercial, as well as portable media players and GPS receivers from different manufacturers.


Naming

It is sometimes assumed that the name "Ogg" comes from the character of Nanny Ogg in Terry Pratchett's _Discworld_ novels, but the Ogg developers say that is not true.[7] Ogg is derived from "ogging", jargon from the computer game _Netrek_, which came to mean doing something forcefully, possibly without consideration of the drain on future resources.[8] At its inception, the Ogg project was thought to be somewhat ambitious given the power of the PC hardware of the time.[9] Still, to quote the same reference: "Vorbis, on the other hand is named after the Terry Pratchett character from the book _Small Gods_".

The Ogg Vorbis project started in 1993. It was originally named "Squish" but that name was already trademarked, so the project underwent a name change. The new name, "OggSquish", was used until 2001 when it was changed again to "Ogg". Ogg has since come to refer to the container format, which is now part of the larger Xiph.org multimedia project. Today, "Squish" (now known as "Vorbis") refers to a particular audio coding format typically used with the Ogg container format.[10]


File format

The "Ogg" bitstream format, spearheaded by the Xiph.Org Foundation, has been created as the framework of a larger initiative aimed at developing a set of components for the coding and decoding of multimedia content, which are available free of charge and freely re-implementable in software.

The format consists of chunks of data each called an "Ogg page". Each page begins with the characters, "OggS", to identify the file as Ogg format.

A "serial number" and "page number" in the page header identifies each page as part of a series of pages making up a bitstream. Multiple bitstreams may be multiplexed in the file where pages from each bitstream are ordered by the seek time of the contained data. Bitstreams may also be appended to existing files, a process known as "chaining", to cause the bitstreams to be decoded in sequence.

A BSD-licensed library, called "libvorbis", is available to encode and decode data from "Vorbis" streams. Independent Ogg implementations are used in several projects such as RealPlayer and a set of DirectShow filters.[11]

Mogg, the "Multi-Track-Single-Logical-Stream Ogg-Vorbis", is the multi-channel or multi-track Ogg file format.


Page structure

The following is the field layout of an Ogg page header:

Ogg_page_header_structure_(en).svg

Capture pattern – 32 bits
    The capture pattern or sync code is a magic number used to ensure synchronization when parsing Ogg files. Every page starts with the four ASCII character sequence, "OggS". This assists in resynchronizing a parser in cases where data has been lost or is corrupted, and is a sanity check before commencing parsing of the page structure.

Version – 8 bits
    This field indicates the version of the Ogg bitstream format, to allow for future expansion. It is currently mandated to be 0.

Header type – 8 bits
    This is an 8 bit field of flags, which indicates the type of page that follows.
    {| class="wikitable"

! style="width:5%;"|Bit ! style="width:10%;"|Value ! style="width:10%;"|Flag ! style="width:75%;"|Page type |- |0 |0x01 |Continuation |The first packet on this page is a continuation of the previous packet in the logical bitstream. |- |1 |0x02 |BOS |Beginning Of Stream. This page is the first page in the logical bitstream. The BOS flag must be set on the first page of every logical bitstream, and must not be set on any other page. |- |2 |0x04 |EOS |End Of Stream. This page is the last page in the logical bitstream. The EOS flag must be set on the final page of every logical bitstream, and must not be set on any other page. |}

Granule position – 64 bits
    A granule position is the time marker in Ogg files. It is an abstract value, whose meaning is determined by the codec. It may, for example, be a count of the number of samples, the number of frames or a more complex scheme.

Bitstream serial number – 32 bits
    This field is a serial number that identifies a page as belonging to a particular logical bitstream. Each logical bitstream in a file has a unique value, and this field allows implementations to deliver the pages to the appropriate decoder. In a typical Vorbis and Theora file, one stream is the audio (Vorbis), and the other is the video (Theora)

Page sequence number – 32 bits
    This field is a monotonically increasing field for each logical bitstream. The first page is 0, the second 1, etc. This allows implementations to detect when data has been lost.

Checksum – 32 bits
    This field provides a CRC32 checksum of the data in the entire page (including the page header, calculated with the checksum field set to 0). This allows verification that the data has not been corrupted since it was created. Pages that fail the checksum should be discarded. The checksum is generated using a polynomial value of 0x04C11DB7.

Page segments – 8 bits
    This field indicates the number of segments that exist in this page. It also indicates how many bytes are in the segment table that follows this field. There can be a maximum of 255 segments in any one page.

Segment table
    The segment table is a vector of 8-bit values, each indicating the length of the corresponding segment within the page body. The number of segments is determined from the preceding Page Segments field. Each segment is between 0 and 255 bytes in length.

The segments provide a way to group segments into packets, which are meaningful units of data for the decoder. When the segment's length is indicated to be 255, this indicates that the following segment is to be concatenated to this one and is part of the same packet. When the segment's length is 0–254, this indicates that this segment is the final segment in this packet. Where a packet's length is a multiple of 255, the final segment is length 0.

Where the final packet continues on the next page, the final segment value is 255, and the continuation flag is set on the following page to indicate that the start of the new page is a continuation of last page.


Metadata

VorbisComment is a base-level Metadata format initially created for use with Ogg Vorbis. It has since been adopted in the specifications of Ogg encapsulations for other Xiph.Org codecs including Theora, Speex and FLAC. VorbisComment is the simplest and most widely-supported mechanism for storing metadata with Xiph.Org codecs.[12]

Other existing and proposed mechanisms are:[13]

-   FLAC metadata blocks
-   Ogg Skeleton
-   OggKate
-   Continuous Media Markup Language (deprecated)
-   M3F (unused draft)
-   XMLEmbedding (unused draft)


History

Play_ogg.png The Ogg project began with a simple audio compression package as part of a larger project in 1993.[14] The software was originally named _Squish_ but due to an existing trade mark it was renamed to _OggSquish_. This name was later used for the whole Ogg project. In 1997, the Xiphophorus OggSquish was described as "an attempt both to create a flexible compressed audio format for modern audio applications as well as to provide the first audio format that is common on any and every modern computer platform".[15] The OggSquish was in 2000 referred to as "a group of several related multimedia and signal processing projects". In 2000, two projects were in active development for planned release: Ogg Vorbis format and libvorbis - the reference implementation of Vorbis. Research also included work on future video and lossless audio coding.[16][17][18][19][20] In 2001, OggSquish was renamed to _Ogg_ and it was described as "the umbrella for a group of several related multimedia and signal processing projects".[21] Ogg has come to stand for the file format, as part of the larger Xiph.org multimedia project. Squish became just the name of one of the Ogg codecs.[22] In 2009, Ogg is described as "a multimedia container format, and the native file and stream format for the Xiph.org multimedia codecs".[23]

Ogg reference implementation was separated from Vorbis on September 2, 2000.[24]

In May 2003, two Internet RFCs were published relating to the format. The Ogg bitstream was defined in RFC 3533 (which is classified as 'informative') and its Internet content type (application/ogg) in RFC 3534 (which is, , a proposed standard protocol). In September 2008, RFC 3534 was obsoleted by RFC 5334, which added content types video/ogg, audio/ogg and filename extensions .ogx, .ogv, .oga, .spx.

OGM

In 2002, the lack of formal video support in Ogg resulted in the creation of the _OGM_ file format, a hack on Ogg that allowed embedding of video from the Microsoft DirectShow framework into an Ogg-based wrapper. OGM was initially supported only by closed source Windows-only tools, but the code base was subsequently opened. Later, video (and subtitle) support were formally specified for Ogg but in a manner incompatible with OGM. Independently, the Matroska container format reached maturity and provided an alternative for people interested in combining Vorbis audio and arbitrary video codecs. As a result, OGM is no longer supported or developed and is formally discouraged by Xiph.org.[25] Today, video in Ogg is found with the .ogv file extension, which is formally specified and officially supported. Software and codecs that support .ogm files are available without charge.[26]

2006

Although Ogg hadn't reached anywhere near the ubiquity of the MPEG standards[27][28] (e.g., MP3/MP4), , it was commonly used to encode free content (such as free music, multimedia on Wikimedia Foundation projects and Creative Commons files) and had started to be supported by a significant minority of digital audio players. Also supporting the Ogg format were many popular video game engines, including Doom 3, Unreal Tournament 2004, Halo: Combat Evolved, Jets n Guns, Mafia: The City of Lost Heaven, Myst IV: Revelation, Stepmania, Serious Sam: The Second Encounter, Lineage 2, Vendetta Online, Battlefield 2, and the Grand Theft Auto engines, as well as the audio files of the Java-based game, Minecraft. The more popular Vorbis codec had built-in support on many software players, and extensions were available for nearly all the rest.

2007

On May 16, 2007, the Free Software Foundation started a campaign to increase the use of Vorbis "as an ethically, legally and technically superior audio alternative to the proprietary MP3 format."[29] People were also encouraged to support the campaign by adding a web button to their website or blog. For those who don't want to download and use FSF's suggested Ogg player (VLC), the Xiph.Org Foundation had an official codec[30] for QuickTime-based applications in Windows and Mac OS X, such as iTunes players and iMovie applications; and Windows users could install a Windows Media Player Ogg codec.[31]

2009

By June 30, 2009, the Ogg container, through the use of the Theora and Vorbis, was the only container format included in Firefox 3.5 web browser's implementation of the HTML 5

and

elements.[32][33] This was in accordance with the original recommendation outlined in, but later removed from, the HTML 5 draft specification (see Ogg controversy).

2010

On March 3, 2010, a technical analysis by an FFmpeg developer was critical about the general purpose abilities of Ogg as a multimedia container format.[34] In a lengthy response, the creator of Ogg refuted these claims.[35]


Ogg codecs

Ogg is only a container format. The actual audio or video encoded by a codec is stored inside an Ogg container. Ogg containers may contain streams encoded with multiple codecs, for example, a video file with sound contains data encoded by both an audio codec and a video codec.

Being a container format, Ogg can embed audio and video in various formats[36][37] (such as Dirac, MNG, CELT, MPEG-4, MP3 and others) but Ogg was intended to be, and usually is, used with the following Xiph.org free codecs:

-   Audio
    -   Lossy
        -   Speex: handles voice data at low bitrates (~2.1–32 kbit/s/channel)
        -   Vorbis: handles general audio data at mid to high-level variable bitrates (≈16–500 kbit/s per channel)
        -   Opus: handles voice, music and generic audio at low and high variable bitrates (≈6–510 kbit/s per channel)
    -   Lossless
        -   FLAC handles archival and high fidelity audio data.
    -   Uncompressed
        -   OggPCM: handles uncompressed PCM audio. It is broadly comparable to WAV.[38]
-   Video
    -   Lossy
        -   Theora: based upon On2's VP3, it is targeted at competing with MPEG-4 video (for example, encoded with DivX or Xvid), RealVideo, or Windows Media Video.
        -   Daala: a video coding format under development.
        -   Tarkin: an experimental and now obsolete video codec developed in 2000, 2001 and 2002 utilizing discrete wavelet transforms in the three dimensions of width, height, and time.[39][40][41][42] It has been put on hold after Theora became the main focus for video encoding (in August 2002).[43]
        -   Dirac: a free and open video format developed by the BBC. Uses wavelet encoding.[44]
    -   Lossless
        -   Dirac: a part of the specification of dirac covers lossless compression.
        -   Daala: a video coding format under development.
-   Text
    -   Writ: incomplete draft for a text codec designed to embed subtitles or captions, discontinued in 2007.[45]
    -   Continuous Media Markup Language: a text/application codec for timed metadata, captioning, and formatting.
    -   Annodex: A free and open source set of standards developed by CSIRO to annotate and index networked media.
    -   [//wiki.xiph.org/OggKate OggKate]: An overlay codec, originally designed for karaoke and text, that can be multiplexed in Ogg.


See also

-   Audio data compression
-   Comparison of audio coding formats
-   Comparison of container formats
-   Commons:file types
-   Use of Ogg formats in HTML5
-   WikiCommons' Theora video conversion help page
-   Wikipedia:Media help (Ogg) Installing audio and video software


References


External links

-   [//www.xiph.org/ogg/ The Xiph.Org Foundation official webpage — Ogg]
-   [//tools.ietf.org/html/rfc3533 RFC 3533 — The Ogg Encapsulation Format Version 0]
-   [//tools.ietf.org/html/rfc5334 RFC 5334 — Ogg Media Types]
-   [//tools.ietf.org/html/rfc3534 RFC 3534 — The application/ogg Media Type] - obsoleted by RFC 5334
-   [//tools.ietf.org/html/rfc7845 RFC 7845 — Ogg Encapsulation for the Opus Audio Codec]
-   Using Creative Commons Metadata in Ogg containers
-   Ogg etymology from the Jargon File
-   [//xiph.org/quicktime/ Xiph.Org's official Ogg QuickTime Components for iTunes and iMovie (Windows and Mac OS X)]
-   Windows Media Player codecs for Vorbis, Speex, Theora and FLAC
-   ffmpeg2theora Ogg Theora encoder, commandline application for Linux and Win32

Category:Digital container formats Category:Filename extensions Category:Free digital container formats Category:Open formats Category:Xiph.Org projects

[1]

[2]

[3]

[4]

[5]

[6] Xiph.Org (2002-07-19) Ogg releases - libogg-1.0.tar.gz - CHANGES. Retrieved 2009-09-01.

[7]

[8]

[9]

[10]

[11] Directshow Filters for Ogg Vorbis

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

[40] Ralph Giles (2000-12-19) vorbis-dev - Tarkin video codec?, Xiph.org vorbis-dev mailinglist. Retrieved 2009-09-06.

[41] Jack Moffitt (2001-01-03) vorbis-dev - Tarkin at last, Xiph.org vorbis-dev mailinglist. Retrieved 2009-09-06.

[42] Chris Montgomery (2001-02-11) Tarkin developer mailing list, Retrieved on 2009-09-06

[43] Michael Smith (2005-08-29) Tarkin. Retrieved 2009-09-06.

[44] Dirac specification - integration of Dirac encoded video into commonly used container formats Retrieved on 2009-07-05

[45]