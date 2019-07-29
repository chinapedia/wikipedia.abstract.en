An AUDIO FILE FORMAT is a file format for storing digital audio data on a computer system. The bit layout of the audio data (excluding metadata) is called the audio coding format and can be uncompressed, or compressed to reduce the file size, often using lossy compression. The data can be a raw bitstream in an audio coding format, but it is usually embedded in a container format or an audio data format with defined storage layer.


Format types

It is important to distinguish between the audio coding format, the container containing the raw audio data, and an audio codec. A codec performs the encoding and decoding of the raw audio data while this encoded data is (usually) stored in a container file. Although most audio file formats support only one type of audio coding data (created with an audio coder), a multimedia container format (as Matroska or AVI) may support multiple types of audio and video data.

There are three major groups of audio file formats:

-   Uncompressed audio formats, such as WAV, AIFF, AU or raw header-less PCM;
-   Formats with lossless compression, such as FLAC, Monkey's Audio (filename extension .ape), WavPack (filename extension .wv), TTA, ATRAC Advanced Lossless, ALAC (filename extension .m4a), MPEG-4 SLS, MPEG-4 ALS, MPEG-4 DST, Windows Media Audio Lossless (WMA Lossless), and Shorten (SHN).
-   Formats with lossy compression, such as Opus, MP3, Vorbis, Musepack, AAC, ATRAC and Windows Media Audio Lossy (WMA lossy).

Uncompressed audio format

One major uncompressed audio format, LPCM, is the same variety of PCM as used in Compact Disc Digital Audio and is the format most commonly accepted by low level audio APIs and D/A converter hardware. Although LPCM can be stored on a computer as a raw audio format, it is usually stored in a .wav file on Windows or in a .aiff file on macOS. The AIFF format is based on the Interchange File Format (IFF), and the WAV format is based on the similar Resource Interchange File Format (RIFF). WAV and AIFF are designed to store a wide variety of audio formats, lossless and lossy; they just add a small, metadata-containing header before the audio data to declare the format of the audio data, such as LPCM with a particular sample rate, bit depth, endianness and number of channels. Since WAV and AIFF are widely supported and can store LPCM, they are suitable file formats for storing and archiving an original recording.

BWF (Broadcast Wave Format) is a standard audio format created by the European Broadcasting Union as a successor to WAV. Among other enhancements, BWF allows more robust metadata to be stored in the file. See _European Broadcasting Union: Specification of the Broadcast Wave Format_ (EBU Technical document 3285, July 1997). This is the primary recording format used in many professional audio workstations in the television and film industry. BWF files include a standardized timestamp reference which allows for easy synchronization with a separate picture element. Stand-alone, file based, multi-track recorders from AETA,[1] Sound Devices,[2] Zaxcom,[3] HHB Communications Ltd,[4] Fostex, Nagra, Aaton,[5] and TASCAM all use BWF as their preferred format.

Lossless compressed audio format

A lossless compressed format stores data in less space without losing any information. The original, uncompressed data can be recreated from the compressed version.

Uncompressed audio formats encode both sound and silence with the same number of bits per unit of time. Encoding an uncompressed minute of absolute silence produces a file of the same size as encoding an uncompressed minute of music. In a lossless compressed format, however, the music would occupy a smaller file than an uncompressed format and the silence would take up almost no space at all.

Lossless compression formats include the common[6] FLAC, WavPack, Monkey's Audio, ALAC (Apple Lossless). They provide a compression ratio of about 2:1 (i.e. their files take up half the space of PCM). Development in lossless compression formats aims to reduce processing time while maintaining a good compression ratio.

Lossy compressed audio format

Lossy compression enables even greater reductions in file size by removing some of the audio information and simplifying the data. This, of course, results in a reduction in audio quality, but a variety of techniques are used, mainly by exploiting psychoacoustics, to remove the parts of the sound that have the least effect on perceived quality, and to minimize the amount of audible noise added during the process. The popular MP3 format is probably the best-known example, but the AAC format found on the iTunes Music Store is also common. Most formats offer a range of degrees of compression, generally measured in bit rate. The lower the rate, the smaller the file and the more significant the quality loss.


List of formats

  File Extension      Creation Company                  Description
  ------------------- --------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  .3gp                                                  Multimedia container format can contain proprietary formats as AMR, AMR-WB or AMR-WB+, but also some open formats
  .aa                 Audible.com (Amazon.com)          A low-bitrate audiobook container format with DRM, containing audio encoded as either MP3 or the ACELP speech codec.
  .aac                                                  The Advanced Audio Coding format is based on the MPEG-2 and MPEG-4 standards. AAC files are usually ADTS or ADIF containers.
  .aax                Audible.com (Amazon.com)          An Audiobook format, which is a variable-bitrate (allowing high quality) M4B file encrypted with DRM. MPB contains AAC or ALAC encoded audio in an MPEG-4 container. (More details below.)
  .act                                                  ACT is a lossy ADPCM 8 kbit/s compressed audio format recorded by most Chinese MP3 and MP4 players with a recording function, and voice recorders
  .aiff               Apple                             A standard uncompressed CD-quality, audio file format used by Apple. Established 3 years prior to Microsoft's uncompressed version wav.
  .amr                                                  AMR-NB audio, used primarily for speech.
  .ape                Matthew T. Ashland                Monkey's Audio lossless audio compression format.
  .au                 Sun Microsystems                  The standard audio file format used by Sun, Unix and Java. The audio in au files can be PCM or compressed with the μ-law, a-law or G729 codecs.
  .awb                                                  AMR-WB audio, used primarily for speech, same as the ITU-T's G.722.2 specification.
  .dct                NCH Software                      A variable codec format designed for dictation. It has dictation header information and can be encrypted (as may be required by medical confidentiality laws). A proprietary format of NCH Software.
  .dss                Olympus                           DSS files are an Olympus proprietary format. It is a fairly old and poor codec. GSM or MP3 are generally preferred where the recorder allows. It allows additional data to be held in the file header.
  .dvf                Sony                              A Sony proprietary format for compressed voice files; commonly used by Sony dictation recorders.
  .flac                                                 A file format for the Free Lossless Audio Codec, an open-source lossless compression codec.
  .gsm                                                  Designed for telephony use in Europe, gsm is a very practical format for telephone quality voice. It makes a good compromise between file size and quality. Note that wav files can also be encoded with the gsm codec.
  .iklax              iKlax                             An iKlax Media proprietary format, the iKlax format is a multi-track digital audio format allowing various actions on musical data, for instance on mixing and volumes arrangements.
  .ivs                3D Solar UK Ltd                   A proprietary version with Digital Rights Management developed by 3D Solar UK Ltd for use in music downloaded from their Tronme Music Store and interactive music and video player.
  .m4a                                                  An audio-only MPEG-4 file, used by Apple for unprotected music downloaded from their iTunes Music Store. Audio within the m4a file is typically encoded with AAC, although lossless ALAC may also be used.
  .m4b                                                  An Audiobook / podcast extension with AAC or ALAC encoded audio in an MPEG-4 container. Both M4A and M4B formats can contain metadata including chapter markers, images, and hyperlinks, but M4B allows "bookmarks" (remembering the last listening spot), whereas M4A does not.[7]
  .m4p                Apple                             A version of AAC with proprietary Digital Rights Management developed by Apple for use in music downloaded from their iTunes Music Store.
  .mmf                Yamaha, Samsung                   A Samsung audio format that is used in ringtones. Developed by Yamaha (SMAF stands for "Synthetic music Mobile Application Format", and is a multimedia data format invented by the Yamaha Corporation, .mmf file format).
  .mp3                                                  MPEG Layer III Audio. It is the most common sound file format used today.
  .mpc                                                  Musepack or MPC (formerly known as MPEGplus, MPEG+ or MP+) is an open source lossy audio codec, specifically optimized for transparent compression of stereo audio at bitrates of 160–180 kbit/s.
  .msv                Sony                              A Sony proprietary format for Memory Stick compressed voice files.
  .nmf                NICE                              NICE Media Player audio file
  .nsf                Nintendo                          The NES Sound Format (.nsf) is used for storing and playing music from the NES and related systems.[8]
  .ogg, .oga, .mogg   Xiph.Org Foundation               A free, open source container format supporting a variety of formats, the most popular of which is the audio format Vorbis. Vorbis offers compression similar to MP3 but is less popular. Mogg, the "Multi-Track-Single-Logical-Stream Ogg-Vorbis", is the multi-channel or multi-track Ogg file format.
  .opus               Internet Engineering Task Force   A lossy audio compression format developed by the Internet Engineering Task Force (IETF) and made especially suitable for interactive real-time applications over the Internet. As an open format standardised through RFC 6716, a reference implementation is provided under the 3-clause BSD license.
  .ra, .rm            RealNetworks                      A RealAudio format designed for streaming audio over the Internet. The .ra format allows files to be stored in a self-contained fashion on a computer, with all of the audio data contained inside the file itself.
  .raw                                                  A raw file can contain audio in any format but is usually used with PCM audio data. It is rarely used except for technical tests.
  .sln                                                  Signed Linear PCM format used by Asterisk. Prior to v.10 the standard formats were 16-bit Signed Linear PCM sampled at 8 kHz and at 16 kHz. With v.10 many more sampling rates were added.[9]
  .tta                                                  The True Audio, real-time lossless audio codec.
  .voc                Creative Technology               The file format consists of a 26-byte header and a series of subsequent data blocks containing the audio information
  .vox                                                  The vox format most commonly uses the Dialogic ADPCM (Adaptive Differential Pulse Code Modulation) codec. Similar to other ADPCM formats, it compresses to 4-bits. Vox format files are similar to wave files except that the vox files contain no information about the file itself so the codec sample rate and number of channels must first be specified in order to play a vox file.
  .wav                                                  Standard audio file container format used mainly in Windows PCs. Commonly used for storing uncompressed (PCM), CD-quality sound files, which means that they can be large in size—around 10 MB per minute. Wave files can also contain data encoded with a variety of (lossy) codecs to reduce the file size (for example the GSM or MP3 formats). Wav files use a RIFF structure.
  .wma                Microsoft                         Windows Media Audio format, created by Microsoft. Designed with Digital Rights Management (DRM) abilities for copy protection.
  .wv                                                   Format for wavpack files.
  .webm                                                 Royalty-free format created for HTML5 video.
  .8svx               Electronic Arts                   The IFF-8SVX format for 8-bit sound samples, created by Electronic Arts in 1984 at the birth of the Amiga.


See also

-   Audio compression (data)
-   Comparison of audio coding formats
-   Comparison of container formats
-   Comparison of video codecs
-   List of open-source audio codecs
-   Timeline of audio formats


References

Category:Digital container formats Audio_file_formats

[1]

[2]

[3]

[4]

[5]

[6] 2008 ripping/encoding general poll - Hydrogenaudio Forums

[7]

[8]

[9]