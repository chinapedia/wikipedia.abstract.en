JPEG NETWORK GRAPHICS (JNG, ) is a JPEG-based graphics file format which is closely related to PNG: it uses the PNG file structure (with a different signature) as a container format to wrap JPEG-encoded image data.

JNG was created as an adjunct to the MNG animation format, but may be used as a stand-alone format. JNG files embed an 8-bit or 12-bit JPEG datastream in order to store color data, and may embed another datastream (1, 2, 4, 8, 16-bit PNG, or 8-bit JPEG grayscale image) for transparency information. However, a JNG may contain two separate JPEG datastreams for color information (one 8-bit AND one 12-bit) to permit decoders that are unable to (or do not wish to) handle 12-bit datastreams to display the 8-bit datastream instead, if one is present.

Version 1.0 of the JNG specification was released on January 31, 2001 (initially as part of the MNG specification). Usually, all the applications supporting the MNG file format can handle JNG files too. For example, Konqueror has native MNG/JNG support, and MNG/JNG plugins are available for Opera, Internet Explorer, and Mozilla Firefox. The Mozilla Application Suite (and hence Netscape) originally supported MNG/JNG, but native support was removed in Mozilla 1.5a by developers, and Mozilla has not supported the format since, despite requests from its users. Safari does not support MNG/JNG.

JNG enhances the capabilities of the JFIF format (the usual JPEG file format) by supporting transparency, two consecutive color streams (one 8-bit and the other 12-bit), and other useful PNG features like color correction, gamma correction, embedded color profiles, PNG-style metadata, checksums, etc. The transparency information inside a JNG file (as an alpha channel) can be saved either in lossless PNG format or in lossy JPEG format. This way, users can benefit from the power of JPEG compression while preserving lossless (PNG-compressed) transparency information.

The chunk-based structure of JNG files is essentially the same as that of PNG files, differing only in the slightly different signature and the use of different chunks.

  Name          Signature
  ------------- -------------------------
  hexadecimal   ASCII + C0, C1
  PNG           89 50 4E 47 0D 0A 1A 0A
  MNG           8A 4D 4E 47 0D 0A 1A 0A
  JNG           8B 4A 4E 47 0D 0A 1A 0A

  : Network Graphics signatures

JNG does not have a registered Internet media type, but image/x-jng can be used.[1]


Alternatives

Due to the lack of wide adoption of both the JNG and MNG format, it has fallen in disuse in favor of other formats that are in active development with similar qualities:

-   JPEG XR: Supporting wide color space and a lossy format with transparency (JNG contender, standardized)
-   WebP: Supporting a lossy format with transparency and animation (JNG/MNG contender, not yet standardized)


Notes


External links

-   JNG 1.0 specification
-   Original JNG specification as part of the MNG specification
-   Photoshop Plugin (for Photoshop7.0 or greater)
-   Amiga Datatype (for AmigaOS 4.0 or greater)

JNG Category:Graphics file formats Category:PNG

[1] Official JNG specification, section 1