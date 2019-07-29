DIGITAL VIDEO is an electronic representation of moving visual images (video) in the form of encoded digital data. This is in contrast to analog video, which represents moving visual images with analog signals. Digital video comprises a series of digital images displayed in rapid succession.

Digital video was first introduced commercially in 1986 with the Sony D1 format[1], which recorded an uncompressed standard definition component video signal in digital form. In addition to uncompressed formats, popular compressed digital video formats today include H.264 and MPEG-4. Modern interconnect standards for digital video include HDMI, DisplayPort, Digital Visual Interface (DVI) and serial digital interface (SDI).

Digital video can be copied with no degradation in quality. In contrast, when analog sources are copied, they experience generation loss. Digital video can be stored on digital media such as Blu-ray Disc, on computer data storage or streamed over the Internet to end users who watch content on a desktop computer screen or a digital smart TV. In everyday practice, digital video content such as TV shows and movies also includes a digital audio soundtrack.


History

Starting in the late 1970s to the early 1980s, several types of video production equipment that were digital in their internal workings were introduced. These included time base correctors (TBC) and digital video effects (DVE) units. They operated by taking a standard analog composite video input and digitizing it internally. This made it easier to either correct or enhance the video signal, as in the case of a TBC, or to manipulate and add effects to the video, in the case of a DVE unit. The digitized and processed video information was then converted back to standard analog video for output.

Later on in the 1970s, manufacturers of professional video broadcast equipment, such as Bosch (through their Fernseh division) and Ampex developed prototype digital videotape recorders (VTR) in their research and development labs. Bosch's machine used a modified 1 inch type B videotape transport, and recorded an early form of CCIR 601 digital video. Ampex's prototype digital video recorder used a modified 2 inch Quadruplex videotape VTR (an Ampex AVR-3), but fitted with custom digital video electronics, and a special "octaplex" 8-head headwheel (regular analog 2" Quad machines only used 4 heads). Like standard 2" Quad, the audio on the Ampex prototype digital machine, nicknamed by its developers as "Annie", still recorded the audio in analog as linear tracks on the tape. None of these machines from these manufacturers were ever marketed commercially.

Digital video was first introduced commercially in 1986 with the Sony D1 format, which recorded an uncompressed standard definition component video signal in digital form. Component video connections required 3 cables and most television facilities were wired for composite NTSC or PAL video using one cable. Due this incompatibility and also due to the cost of the recorder, D1 was used primarily by large television networks and other component-video capable video studios.

In 1988, Sony and Ampex co-developed and released the D2 digital videocassette format, which recorded video digitally without compression in ITU-601 format, much like D1. But D2 had the major difference of encoding the video in composite form to the NTSC standard, thereby only requiring single-cable composite video connections to and from a D2 VCR, making it a perfect fit for the majority of television facilities at the time. D2 was a successful format in the television broadcast industry throughout the late '80s and the '90s. D2 was also widely used in that era as the master tape format for mastering laserdiscs.

D1 & D2 would eventually be replaced by cheaper systems using video compression, most notably Sony's Digital Betacam that were introduced into the network's television studios. Other examples of digital video formats utilizing compression were Ampex's DCT (the first to employ such when introduced in 1992), the industry-standard DV and MiniDV and its professional variations, Sony's DVCAM and Panasonic's DVCPRO, and Betacam SX, a lower-cost variant of Digital Betacam using MPEG-2 compression.

One of the first digital video products to run on personal computers was _PACo: The PICS Animation Compiler_ from The Company of Science & Art in Providence, RI, which was developed starting in 1990 and first shipped in May 1991. PACo could stream unlimited-length video with synchronized sound from a single file (with the ".CAV" file extension) on CD-ROM. Creation required a Mac; playback was possible on Macs, PCs, and Sun SPARCstations.[2]

QuickTime, Apple Computer's multimedia framework appeared in June 1991. Audio Video Interleave from Microsoft followed in 1992. Initial consumer-level content creation tools were crude, requiring an analog video source to be digitized to a computer-readable format. While low-quality at first, consumer digital video increased rapidly in quality, first with the introduction of playback standards such as MPEG-1 and MPEG-2 (adopted for use in television transmission and DVD media), and then the introduction of the DV tape format allowing recordings in the format to be transferred direct to digital video files using a FireWire port on an editing computer. This simplified the process, allowing non-linear editing systems (NLE) to be deployed cheaply and widely on desktop computers with no external playback or recording equipment needed.

The widespread adoption of digital video and accompanying compression formats has reduced the bandwidth needed for a high-definition video signal (with HDV and AVCHD, as well as several commercial variants such as DVCPRO-HD, all using less bandwidth than a standard definition analog signal). These savings have increased the number of channels available on cable television and direct broadcast satellite systems, created opportunities for spectrum reallocation of terrestrial television broadcast frequencies, made tapeless camcorders based on flash memory possible among other innovations and efficiencies.


Overview

Digital video comprises a series of digital images displayed in rapid succession. In the context of video these images are called frames. The rate at which frames are displayed is known as the frame rate and is measured in frames per second (FPS). Every frame is an orthogonal bitmap digital image and so comprises a raster of pixels. Pixels have only one property, their color. The color of a pixel is represented by a fixed number of bits. The more bits the more subtle variations of colors can be reproduced. This is called the color depth of the video.

Interlacing

In interlaced video each _frame_ is composed of two halves of an image. The first half contains only the odd-numbered lines of a full frame. The second half contains only the even-numbered lines. Those halves are referred to individually as _fields_. Two consecutive fields compose a full frame. If an interlaced video has a frame rate of 30 frames per second the field rate is 60 fields per second. All the properties discussed here apply equally to interlaced video but one should be careful not to confuse the fields-per-second rate with the frames-per-second rate.

Bit rate and BPP

By its definition, bit rate is a measure of the rate of information content of the digital video stream. In the case of uncompressed video, bit rate corresponds directly to the quality of the video as bit rate is proportional to every property that affects the video quality. Bit rate is an important property when transmitting video because the transmission link must be capable of supporting that bit rate. Bit rate is also important when dealing with the storage of video because, as shown above, the video size is proportional to the bit rate and the duration. Video compression is used to greatly reduce the bit rate while having a lesser effect on quality.

Bits per pixel (BPP) is a measure of the efficiency of compression. A true-color video with no compression at all may have a BPP of 24 bits/pixel. Chroma subsampling can reduce the BPP to 16 or 12 bits/pixel. Applying jpeg compression on every frame can reduce the BPP to 8 or even 1 bits/pixel. Applying video compression algorithms like MPEG1, MPEG2 or MPEG4 allows for fractional BPP values.

Constant bit rate versus variable bit rate

BPP represents the _average_ bits per pixel. There are compression algorithms that keep the BPP almost constant throughout the entire duration of the video. In this case, we also get video output with a constant bitrate (CBR). This CBR video is suitable for real-time, non-buffered, fixed bandwidth video streaming (e.g. in videoconferencing). As not all frames can be compressed at the same level, because quality is more severely impacted for scenes of high complexity, some algorithms try to constantly adjust the BPP. They keep it high while compressing complex scenes and low for less demanding scenes. This way, one gets the best quality at the smallest average bit rate (and the smallest file size, accordingly). This method produces a variable bitrate because it tracks the variations of the BPP.


Technical overview

Standard film stocks such as 16 mm and 35 mm record at 24 frames per second. For video, there are two frame rate standards: NTSC, which shoot at 30/1.001 (about 29.97) frames per second or 59.94 fields per second, and PAL, 25 frames per second or 50 fields per second. Digital video cameras come in two different image capture formats: interlaced and deinterlaced / progressive scan. Interlaced cameras record the image in alternating sets of lines: the odd-numbered lines are scanned, and then the even-numbered lines are scanned, then the odd-numbered lines are scanned again, and so on. One set of odd or even lines is referred to as a "field", and a consecutive pairing of two fields of opposite parity is called a _frame_. Deinterlaced cameras records each frame as distinct, with all scan lines being captured at the same moment in time. Thus, interlaced video captures samples the scene motion twice as often as progressive video does, for the same number of frames per second. Progressive-scan camcorders generally produce a slightly sharper image. However, motion may not be as smooth as interlaced video which uses 50 or 59.94 fields per second, particularly if they employ the 24 frames per second standard of film.

Digital video can be copied with no degradation in quality. No matter how many generations of a digital source is copied, it will still be as clear as the original first generation of digital footage. However a change in parameters like frame size as well as a change of the digital format can decrease the quality of the video due to new calculations that have to be made. Digital video can be manipulated and edited to follow an order or sequence on an NLE, or non-linear editing workstation, a computer-based device intended to edit video and audio. More and more, videos are edited on readily available, increasingly affordable consumer-grade computer hardware and software. However, such editing systems require ample disk space for video footage. The many video formats and parameters to be set make it quite impossible to come up with a specific number for how many minutes need how much time.

Digital video has a significantly lower cost than 35 mm film. In comparison to the high cost of film stock, the tape stock (or other electronic media used for digital video recording, such as flash memory or hard disk drive) used for recording digital video is very inexpensive. Digital video also allows footage to be viewed on location without the expensive chemical processing required by film. Also physical deliveries of tapes and broadcasts do not apply anymore. Digital television (including higher quality HDTV) started to spread in most developed countries in early 2000s. Digital video is also used in modern mobile phones and video conferencing systems. Digital video is also used for Internet distribution of media, including streaming video and peer-to-peer movie distribution. However even within Europe are lots of TV-Stations not broadcasting in HD, due to restricted budgets for new equipment for processing HD.

Many types of video compression exist for serving digital video over the internet and on optical disks. The file sizes of digital video used for professional editing are generally not practical for these purposes, and the video requires further compression with codecs such as Sorenson, H.264 and more recently Apple ProRes especially for HD. Probably the most widely used formats for delivering video over the internet are MPEG4, Quicktime, Flash and Windows Media, while MPEG2 is used almost exclusively for DVDs, providing an exceptional image in minimal size but resulting in a high level of CPU consumption to decompress.

, the highest resolution demonstrated for digital video generation is 35 megapixels (8192 x 4320). The highest speed is attained in industrial and scientific high speed cameras that are capable of filming 1024x1024 video at up to 1 million frames per second for brief periods of recording.


Properties

An example video can have a DURATION (T) of 1 hour (3600_sec_), a frame size of 640x480 _(WxH)_ at a color depth of 24 _bits_ and a frame rate of 25_fps_. This example video has the following properties:

-   PIXELS PER FRAME = 640 * 480 = 307,200
-   BITS PER FRAME = 307,200 * 24 = 7,372,800 = 7.37 _Mbits_
-   BIT RATE (BR) = 7.37 * 25 = 184.25 _MBITS/SEC_
-   VIDEO SIZE (VS)[3] = 184 _Mbits/sec_ * 3600 _sec_ = 662,400 _Mbits_ = 82,800 _Mbytes_ = 82.8 _GBYTES_

The most important properties are _bit rate_ and _video size_. The formulas relating those two with all other properties are:

BR = W * H * CD * FPS
VS = BR * T = W * H * CD * FPS * T
(units are: BR in bit/s, W and H in pixels, CD in bits, VS in bits, T in seconds)

while some secondary formulas are:

_pixels_per_frame_ = W * H
_pixels_per_second_ = W * H * FPS
_bits_per_frame_ = W * H * CD

The above are accurate for uncompressed video. Because of the relatively high bit rate of uncompressed video, video compression is extensively used. In the case of compressed video each frame requires a small percentage of the original bits. Assuming a compression algorithm that shrinks the input data by a factor of CF, the bit rate and video size would equal to:

BR = W * H * CD * FPS / CF
VS = BR * T / CF

Note that it is not necessary that all frames are equally compressed by a factor of CF. In practice they are not, so CF is the _average_ factor of compression for _all_ the frames taken together.

The above equation for the bit rate can be rewritten by combining the compression factor and the color depth like this:

BR = W * H * ( CD / CF ) * FPS

The value (CD / CF) represents the AVERAGE BITS PER PIXEL (BPP). As an example, if there is a color depth of 12 bits/pixel and an algorithm that compresses at 40x, then BPP equals 0.3 (12/40). So in the case of compressed video the formula for bit rate is:

BR = W * H * BPP * FPS

The same formula is valid for uncompressed video because in that case one can assume that the "compression" factor is 1 and that the average bits per pixel equal the color depth.


Interfaces and cables

Many interfaces have been designed specifically to handle the requirements of uncompressed digital video (from roughly 400 Mbit/s to 10 Gbit/s):

-   High-Definition Multimedia Interface
-   Digital Visual Interface
-   Serial Digital Interface
-   DisplayPort
-   Digital component video
-   Unified Display Interface
-   FireWire
-   USB

The following interface has been designed for carrying MPEG-Transport compressed video:

-   DVB-ASI

Compressed video is also carried using UDP-IP over Ethernet. Two approaches exist for this:

-   Using RTP as a wrapper for video packets
-   1–7 MPEG Transport Packets are placed directly in the UDP packet

Alternative methods of carrying video over IP include:

-   Network Device Interface


Storage formats

Encoding

All current formats, which are listed below, are PCM based.

-   CCIR 601 used for broadcast stations
-   MPEG-4 good for online distribution of large videos and video recorded to flash memory
-   MPEG-2 used for DVDs, Super-VCDs, and many broadcast television formats
-   MPEG-1 used for video CDs
-   H.261
-   H.263
-   H.264 also known as _MPEG-4 Part 10_, or as _AVC_, used for Blu-ray Discs and some broadcast television formats
-   Theora used for video on Wikipedia

Tapes

-   Betacam SX, Betacam IMX, Digital Betacam, or DigiBeta — Commercial video systems by Sony, based on original Betamax technology
-   D-VHS — MPEG-2 format data recorded on a tape similar to S-VHS
-   D1, D2, D3, D5, D9 (also known as Digital-S) — various SMPTE commercial digital video standards
-   Digital8 — DV-format data recorded on Hi8-compatible cassettes; largely a consumer format
-   DV, MiniDV — used in most of today's videotape-based consumer camcorders; designed for high quality and easy editing; can also record high-definition data (HDV) in MPEG-2 format
-   DVCAM, DVCPRO — used in professional broadcast operations; similar to DV but generally considered more robust; though DV-compatible, these formats have better audio handling.
-   DVCPRO50, DVCPROHD support higher bandwidths as compared to Panasonic's DVCPRO.
-   HDCAM was introduced by Sony as a high-definition alternative to DigiBeta.
-   MicroMV — MPEG-2-format data recorded on a very small, matchbook-sized cassette; obsolete
-   ProHD — name used by JVC for its MPEG-2-based professional camcorders

Discs

-   Blu-ray Disc
-   DVD
-   VCD


See also

-   Digital audio
-   Digital cinematography
-   List of video topics
-   Video coding
-   Video editing software
-   Video hosting service
-   Webcam


Notes


References


External links

-   The DV, DVCAM, & DVCPRO Formats – tech details, FAQ, and links
-   Standard digital TV and video formats.

pl:Digital video pt:Vídeo digital

Category:Film and video technology Category:Video signal Category:Television terminology Category:Audiovisual introductions in 1986 Category:Film and video terminology

[1]

[2]

[3] the term _video size_ is used instead of just _size_ in order to avoid confusion with the _frame size_