Lame}}

LAME is a software encoder that converts audio to the MP3 file format. LAME is a free software project that was first released in 1998, and has incorporated many improvements since then, including an improved psychoacoustic model. The LAME encoder outperforms early encoders like L3enc.[1]

LAME is required by some programs. In many programs released as free software (e.g., Audacity), LAME must be linked for MP3 support. This avoided including LAME itself, which used patented techniques, and so required patent licenses in many countries.


History

The name LAME is a recursive acronym for "LAME Ain't an MP3 Encoder".[2]

Around mid-1998, Mike Cheng created LAME 1.0 as a set of modifications against the "8Hz-MP3" encoder source code. After some quality concerns raised by others, he decided to start again from scratch based on the "dist10" MPEG reference software sources. His goal was only to speed up the dist10 sources, and leave its quality untouched. That branch (a patch against the reference sources) became Lame 2.0. The project quickly became a team project. Mike Cheng eventually left leadership and started working on tooLAME (an MP2 encoder).

Mark Taylor then started pursuing increased quality in addition to better speed, and released version 3.0 featuring gpsycho, a new psychoacoustic model he developed.

A few key improvements, in chronological order:

-   May 1999: a new psychoacoustic model (gpsycho) is released along with LAME 3.0.
-   June 1999: The first variable bitrate implementation is released. Soon after this, LAME also became able to target lower sampling frequencies from MPEG-2.
-   November 1999: LAME switches from a GPL license to an LGPL license, which allows using it with closed-source applications.
-   May 2000: the last pieces of the original ISO demonstration code are removed. LAME is not a patch anymore, but a full encoder.
-   December 2003: substantial improvement to default settings, along with improved speed. LAME no longer requires user to use complicated parameters to produce good results.
-   May 2007: default variable bitrate encoding speed is vastly improved.


Patents and legal issues

Like all MP3 encoders, LAME implemented techniques covered by software patents owned by the Fraunhofer Society and others. The developers of LAME did not license the technology described by these patents. Distributing compiled binaries of LAME, its libraries, or programs that derive from LAME in countries that recognize those patents may have constituted infringement, but since April 23, 2017, all of these patents have expired.[3][4]

The LAME developers stated that, since their code was only released in source code form, it should only be considered as an educational description of an MP3 encoder, and thus did not infringe any patent in itself. They also advised users to obtain relevant patent licenses before including a compiled version of the encoder in a product.[5] Some software was released using this strategy: companies used the LAME library, but obtained patent licenses.

In the course of the 2005 Sony BMG copy protection rootkit scandal, there were reports that the Extended Copy Protection rootkit included on some Sony Compact Discs had portions of the LAME library without complying with the terms of the LGPL.[6][7][8]


See also

-   List of codecs
-   Lossy compression
-   MP3, ID3


References


External links

-   -   LAME binaries - RareWares
-   LAME binaries for Audacity - recommended for the Audacity free and GPL audio editor
-   LAME Wiki - HydrogenAudio
-   LAME Mp3 Info Tag revision 1 Specifications

Category:1998 software Category:Cross-platform software Category:Free audio codecs Category:MP3

[1]

[2]

[3]

[4]  The page's later caution about third-party implementation–specific patents is not about LAME's implementation.

[5] http://lame.sourceforge.net/tech-FAQ.txt

[6]

[7]

[8]