SYNCHRONIZED MULTIMEDIA INTEGRATION LANGUAGE (SMIL ()) is a World Wide Web Consortium recommended Extensible Markup Language (XML) markup language to describe multimedia presentations. It defines markup for timing, layout, animations, visual transitions, and media embedding, among other things. SMIL allows presenting media items such as text, images, video, audio, links to other SMIL presentations, and files from multiple web servers. SMIL markup is written in XML, and has similarities to HTML.


Version history

, the W3C Recommendation for SMIL is _SMIL 3.0_.

SMIL 1.0

SMIL 1.0 became a W3C Recommendation in June 1999.[1]

SMIL 2.0

_SMIL 2.0_ became a W3C Recommendation in August 2001. SMIL 2.0 introduced a modular language structure that facilitated integration of SMIL semantics into other XML-based languages. Basic animation and timing modules were integrated into Scalable Vector Graphics (SVG) and the SMIL modules formed a basis for Timed-Text. The modular structure made it possible to define the standard SMIL language profile and the XHTML+SMIL language profile with common syntax and standard semantics.

SMIL 2.1

_SMIL 2.1_ became a W3C Recommendation in December 2005. SMIL 2.1 includes a small number of extensions based on practical experience gathered using SMIL in the Multimedia Messaging System on mobile phones.

SMIL 3.0

_SMIL 3.0_ became a W3C Recommendation in December 2008. It was first submitted as a W3C Working draft on December 21, 2006.[2] The last draft revision was released on October 6, 2008.[3][4]


Authoring tools

AUTHORING AND RENDERING TOOLS FOR SMILTEXT AND SMIL 3.0 PANZOOM FUNCTIONALITY:

-   Fluition by Confluent Technologies
-   Ezer by SMIL Media
-   Grins by Oratrix
-   GoLive6 by Adobe
-   Hi-Caption, a captioning tool by Hisoftware
-   HomeSite by Allaire
-   JM-Mobile Editor for mobiles using SMIL and J2ME technologies
-   Kino: a non-linear DV editor for GNU/Linux. It features integration with IEEE-1394 for capture.
-   LimSee2 is an open source SMIL authoring tool, with support for SMIL 1.0 and SMIL 2.0.
-   MAGpie, a captioning tool by WGBH
-   MovieBoard, for e-learning (Japanese only)
-   MMS Simulators list
-   Perly SMIL, a SMIL 1.0 Perl module
-   ppt2smil tool is a PowerPoint macro that convert a PowerPoint presentation to a streaming SMIL presentation with audio and/or video.
-   RealSlideshow Basic by RealNetworks
-   SMIL Composer SuperToolz by HotSausage
-   Smibase, a server-installed software suite
-   SMIL Editor V2.0 by DoCoMo
-   SMILGen by RealNetworks, a SMIL (and XML) authoring tool designed to ease the process of XML.
-   SMIL Scenario Creator by KDDI
-   SMIRK presentation authoring tool for the production of accessible slide shows outputting to SMIL 2.0, SMIL 1.0, XHTML + SMIL, HTML 4.01.
-   SMOX Pad and SMOX Editor, for advanced SMIL and HTML+Time development.
-   SMG for a PDA, a BREW, a Phone and a PC by Smilmedia
-   TAG Editor 2.0 - G2 release by Digital Renaissance ???
-   Tagfree 2000 SMIL Editor
-   Toolkit for MPEG-4 from IBM, creates MPEG-4 binary from content created in XMT-O (based on the SMIL 2.0 syntax and semantics).
-   TransTool - open source transcription tool
-   VeonStudio by Veon
-   Validator: SMIL 1.0, SMIL 2.0, SMIL 2.0 Basic and XHTML+SMIL by CWI.
-   3TMAN allows to easily author the complex multimedia projects and then can export the multimedia projects to the Html+time and/or SMIL formats

DEMOS

-   SMIL 2.0 Feature-by-feature demos by RealNetworks
-   Torino and New York demos by Telecom Italia Lab
-   SMIL1.0, SMIL 2.0 demos available from Oratrix.
-   Synchronized Multimedia Summer School at INRIA
-   The Webnews demo, by CWI. (needs an HTML renderer)
-   Demos available from RealNetworks
-   SMIL 1.0 tutorial written in SMIL
-   SMIL1.0 demo of the Canyonlands
-   XHTML+SMIL demos, by Microsoft (works In > IE5.5 only)
-   XHTML+SMIL demos, by Patrick Schmitz (works In > IE5.5 only)
-   Demos of SMIL Animation used in combination with SVG at Burning Pixel and KevLinDev
-   Karaoke demo; SMIL version, you can directly test a Html+time version for IE6. An enhanced Karaoke demo.


SMIL documents

A SMIL document is similar in structure to an HTML document in that they are typically divided between an optional

section and a required

section. The

section contains layout and metadata information. The

section contains the timing information, and is generally composed of combinations of three main tags—sequential ("", simple playlists), parallel ("", multi-zone/multi-layer playback) and exclusive ("", event-triggered interrupts). SMIL refers to media objects by URLs, allowing them to be shared between presentations and stored on different servers for load balancing. The language can also associate different media objects with different bandwidth requirements.

For playback scheduling, SMIL supports ISO-8601 wallclock() date/time specification to define begin/end events for playlists.

SMIL files take either a .smi or .smil file extension. However, SAMI files and Macintosh self mounting images also use .smi, which creates some ambiguity at first glance. As a result, SMIL files commonly use the .smil file extension to avoid confusion.


Combination with other XML-based standards

SMIL+SVG

File:Toy_train_SMIL.svg%7Cthumb%7Cright%7C500px%7CExample of a non-interactive SVG with SMIL demonstrating animation of transformation and motion. default [//upload.wikimedia.org/wikipedia/commons/b/ba/Toy_train_SMIL.svg] File:SMIL_missile_demo.svg%7Cthumb%7Cright%7C250px%7CExample of an interactive SVG with SMIL demonstrating _mouse_ events. default [//upload.wikimedia.org/wikipedia/commons/9/9b/SMIL_missile_demo.svg] SMIL is one of three means by which SVG animation can be achieved (the others being JavaScript and CSS animations).

SMIL+RSS or other web syndication methods

While RSS and Atom are web syndication methods, with the former being more popular as a syndication method for podcasts, SMIL is potentially useful as a script or playlist that can tie sequential pieces of multimedia together and can then be syndicated through RSS or Atom.[5][6] In addition, the combination of multimedia-laden .smil files with RSS or Atom syndication would be useful for accessibility to audio-enabled podcasts by the deaf through Timed Text closed captions,[7] and can also turn multimedia into hypermedia that can be hyperlinked to other linkable audio and video multimedia.[8]

SMIL+VoiceXML and SMIL+MusicXML

VoiceXML can be combined with SMIL to provide a sequential reading of several pre-provided pages or slides in a voice browser, while combining SMIL with MusicXML would allow for the creation of infinitely-recombinable sequences of music sheets. Combining SMIL+VoiceXML or SMIL+MusicXML with RSS or Atom could be useful in the creation of an audible pseudo-podcast with embedded hyperlinks, while combining SMIL+SVG with VoiceXML and/or MusicXML would be useful in the creation of an automatically audio-enabled vector graphics animation with embedded hyperlinks.

SMIL+TEI

SMIL is anticipated for use within TEI documents.[9]


Status of SMIL

SMIL is being implemented on handheld and mobile devices and has also spawned [10] the Multimedia Messaging Service (MMS) which is a video and picture equivalent of Short Message Service (SMS).

SMIL is also one of the underlying technologies used for "Advanced Content" in the (discontinued) HD DVD format for adding interactive content (menus etc.).

The field of Digital Signage is embracing SMIL as a means of controlling dynamic advertising in public areas.[11][12]

The internet video site Hulu uses SMIL as part of its media playing technology.


SMIL players

Software

Most commonly used web browsers have native support for SMIL, but it has not been implemented in Microsoft browsers. It was to be deprecated in Google Chrome,[13] but it has now been decided to suspend that intent until alternatives are sufficiently developed.[14] Other software that implement SMIL playback include:

-   Adobe Media Player
-   Amarok
-   Helix Player
-   QuickTime Player
-   RealPlayer
-   Totem
-   Windows Media Player (Playlist Files)
-   Zune (Playlist Files)

Hardware

-   IAdea XMP-300 media player
-   IAdea XMP-7300 media player (with limitations)
-   Planar MP-70 media player (with limitations)
-   SpinetiX HMP350 Hyper Media Player
-   SpinetiX HMP300 Hyper Media Player
-   SpinetiX HMP200 Hyper Media Player
-   Thomson/Grass Valley MediaEdge-3 player
-   ViewSonic NMP-550 media player
-   ViewSonic EP1020r wireless display+player (supporting a subset of SMIL)
-   Innes DMC200 media player
-   Innes DME204 media player with HD H264 encoder embedded

Media player boxes based on dedicated 1080p decoder chips such as the Sigma Designs 8634 processor are getting SMIL players embedded in them.

Embedding SMIL files into XHTML web pages

A SMIL file must be embedded, then opened using a plug-in such as Apple's QuickTime or Microsoft's Windows Media Player, to be viewed by a browser that doesn't support SMIL.


Sources

-


See also

-   Synchronized Accessible Media Interchange
-   HTML+TIME
-   XHTML+SMIL
-   Nested Context Language (NCL)
-   Semantic Web


References


External links

-   W3C's SMIL Web Site
-   SMIL 3.0 (W3C Recommendation)

Category:Markup languages Category:World Wide Web Consortium standards Category:XML-based standards Category:Subtitle file formats Category:Computer file formats Category:Declarative markup languages Category:Playlist markup languages Category:XML-based programming languages Category:Declarative programming languages Category:Open formats Category:1999 introductions

[1] https://www.w3.org/TR/1998/REC-smil-19980615/ _SMIL 1.0_

[2]

[3]

[4] Bulterman, D.C.A., & Rutledge, L. (2008). _SMIL 3.0_ . New York, NY: Springer.

[5]

[6]

[7]

[8]

[9] Guidelines for Electronic Text Encoding and Interchange, 1, 2

[10] 3GPP, 3GPP TS 26.140 Multimedia Messaging Service (MMS); Media formats and codecs

[11] DigiSigToday, Digital Signage Media Player to Support SMIL Standard , 2008

[12] A-SMIL.ORG, SMIL for Digital Signage

[13]

[14]