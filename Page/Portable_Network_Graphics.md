PORTABLE NETWORK GRAPHICS (PNG, pronounced [1] or [2][3] ) is a raster-graphics file-format that supports lossless data compression. PNG was developed as an improved, non-patented replacement for Graphics Interchange Format (GIF).

PNG supports palette-based images (with palettes of 24-bit RGB or 32-bit RGBA colors), grayscale images (with or without alpha channel for transparency), and full-color non-palette-based RGB/RGBA images (with or without alpha channel). The PNG working group designed the format for transferring images on the Internet, not for professional-quality print graphics, and therefore it does not support non-RGB color spaces such as CMYK. A PNG file contains a single image in an extensible structure of "chunks", encoding the basic pixels and other information such as textual comments and integrity checks documented in RFC 2083.[4]

PNG files nearly always use the file extension PNG or png and are assigned MIME media type image/png.[5] PNG was published as informational RFC 2083 in March 1997 and as an ISO/IEC standard in 2004.[6]


History and development

The motivation for creating the PNG format was the realization, in early 1995, that the Lempel–Ziv–Welch (LZW) data compression algorithm used in the Graphics Interchange Format (GIF) format was patented by Unisys. There were also other problems with the GIF format that made a replacement desirable, notably its limit of 256 colors at a time when computers able to display far more than 256 colors were becoming common.

A January 1995 precursory discussion thread, on the usenet newsgroup "comp.graphics" with the subject _Thoughts on a GIF-replacement file format_, had many propositions, which would later be part of the PNG file format. In this thread, Oliver Fromme, author of the popular DOS JPEG viewer QPEG, proposed the PING name, a recursive acronym meaning _PING is not GIF_, and also the PNG extension.[7]

Although GIF allows for animation, it was decided that PNG should be a single-image format.[8] In 2001, the developers of PNG published the Multiple-image Network Graphics (MNG) format, with support for animation. MNG achieved moderate application support, but not enough among mainstream web browsers and no usage among web site designers or publishers. In 2008, certain Mozilla developers published the Animated Portable Network Graphics (APNG) format with similar goals. APNG is a format that is natively supported by Gecko- and Presto-based web browsers and is also commonly used for thumbnails on Sony's PlayStation Portable system (using the normal PNG file extension), and as of 2017, usage of APNG remains minimal despite being supported by all major browsers but Microsoft Edge.

-   1 October 1996: Version 1.0 of the PNG specification was released, and later appeared as RFC 2083. It became a W3C Recommendation on 1 October 1996.
-   31 December 1998: Version 1.1, with some small changes and the addition of three new chunks, was released.
-   11 August 1999: Version 1.2, adding one extra chunk, was released.
-   10 November 2003: PNG became an International Standard (ISO/IEC 15948:2003). This version of PNG differs only slightly from version 1.2 and adds no new chunks.
-   3 March 2004: ISO/IEC 15948:2004.[9]


PNG Working Group

The original PNG specification was authored by an ad-hoc group of computer graphics experts and enthusiasts. Discussions and decisions about the format were conducted by email. The original authors listed on RFC 2083 are:[10]

-   Editor: Thomas Boutell
-   Contributing Editor: Tom Lane
-   Authors (in alphabetical order by last name): Mark Adler, Thomas Boutell, Christian Brunschen, Adam M. Costello, Lee Daniel Crocker, Andreas Dilger, Oliver Fromme, Jean-loup Gailly , Chris Herborth, Aleks Jakulin, Neal Kettler, Tom Lane, Alexander Lehmann, Chris Lilley, Dave Martindale, Owen Mortensen, Keith S. Pickens, Robert P. Poole, Glenn Randers-Pehrson, Greg Roelofs, Willem van Schaik, Guy Schalnat, Paul Schmidt, Tim Wegner, Jeremy Wohl


File format

PNG-Gradient_hex.png viewed with a hex editor]]

File header

A PNG file starts with an 8-byte signature (refer to hex editor image on the right):

  Values (hex)   Purpose
  -------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  89             Has the high bit set to detect transmission systems that do not support 8-bit data and to reduce the chance that a text file is mistakenly interpreted as a PNG, or vice versa.
  50 4E 47       In ASCII, the letters _PNG_, allowing a person to identify the format easily if it is viewed in a text editor.
  0D 0A          A DOS-style line ending (CRLF) to detect DOS-Unix line ending conversion of the data.
  1A             A byte that stops display of the file under DOS when the command type has been used—the end-of-file character.
  0A             A Unix-style line ending (LF) to detect Unix-DOS line ending conversion.

"Chunks" within the file

After the header comes a series of chunks, each of which conveys certain information about the image. Chunks declare themselves as _critical_ or _ancillary_, and a program encountering an ancillary chunk that it does not understand can safely ignore it. This chunk-based storage layer structure, similar in concept to a container format or to Amiga{{'}}s IFF, is designed to allow the PNG format to be extended while maintaining compatibility with older versions—it provides forward compatibility, and this same file structure (with different signature and chunks) is used in the associated MNG, JNG, and APNG formats.

A chunk consists of four parts: length (4 bytes, big-endian), chunk type/name (4 bytes), chunk data (length bytes) and CRC (cyclic redundancy code/checksum; 4 bytes). The CRC is a network-byte-order CRC-32 computed over the chunk type and chunk data, but not the length.

  Length    Chunk type   Chunk data       CRC
  --------- ------------ ---------------- ---------
  4 bytes   4 bytes      _Length_ bytes   4 bytes

Chunk types are given a four-letter case sensitive ASCII type/name; compare FourCC. The case of the different letters in the name (bit 5 of the numeric value of the character) is a bit field that provides the decoder with some information on the nature of chunks it does not recognize.

The case of the first letter indicates whether the chunk is critical or not. If the first letter is uppercase, the chunk is critical; if not, the chunk is ancillary. Critical chunks contain information that is necessary to read the file. If a decoder encounters a critical chunk it does not recognize, it must abort reading the file or supply the user with an appropriate warning.

The case of the second letter indicates whether the chunk is "public" (either in the specification or the registry of special-purpose public chunks) or "private" (not standardised). Uppercase is public and lowercase is private. This ensures that public and private chunk names can never conflict with each other (although two private chunk names could conflict).

The third letter must be uppercase to conform to the PNG specification. It is reserved for future expansion. Decoders should treat a chunk with a lower case third letter the same as any other unrecognised chunk.

The case of the fourth letter indicates whether the chunk is safe to copy by editors that do not recognize it. If lowercase, the chunk may be safely copied regardless of the extent of modifications to the file. If uppercase, it may only be copied if the modifications have not touched any critical chunks.

Critical chunks

A decoder must be able to interpret critical chunks to read and render a PNG file.

-   IHDR must be the first chunk; it contains (in this order) the image's width (4 bytes), height (4 bytes), bit depth (1 byte), color type (1 byte), compression method (1 byte), filter method (1 byte), and interlace method (1 byte) (13 data bytes total).[11]
-   PLTE contains the palette; list of colors.
-   IDAT contains the image, which may be split among multiple IDAT chunks. Such splitting increases filesize slightly, but makes it possible to generate a PNG in a streaming manner. The IDAT chunk contains the actual image data, which is the output stream of the compression algorithm.[12]
-   IEND marks the image end.

The PLTE chunk is essential for color type 3 (indexed color). It is optional for color types 2 and 6 (truecolor and truecolor with alpha) and it must not appear for color types 0 and 4 (grayscale and grayscale with alpha).

Ancillary chunks

Other image attributes that can be stored in PNG files include gamma values, background color, and textual metadata information. PNG also supports color management through the inclusion of ICC color space profiles.[13]

-   bKGD gives the default background color. It is intended for use when there is no better choice available, such as in standalone image viewers (but not web browsers; see below for more details).
-   cHRM gives the chromaticity coordinates of the display primaries and white point.
-   dSIG is for storing digital signatures.[14]
-   eXIf stores Exif metadata.[15]
-   gAMA specifies gamma.
-   hIST can store the histogram, or total amount of each color in the image.
-   iCCP is an ICC color profile.
-   iTXt contains a keyword and UTF-8 text, with encodings for possible compression and translations marked with language tag. The Extensible Metadata Platform (XMP) uses this chunk with a keyword 'XML:com.adobe.xmp'
-   pHYs holds the intended pixel size (or pixel aspect ratio).
-   sBIT (significant bits) indicates the color-accuracy of the source data.
-   sPLT suggests a palette to use if the full range of colors is unavailable.
-   sRGB indicates that the standard sRGB color space is used.
-   sTER stereo-image indicator chunk for stereoscopic images.[16]
-   tEXt can store text that can be represented in ISO/IEC 8859-1, with one key-value pair for each chunk. The "key" must be between 1 and 79 characters long. Separator is a null character. The "value" can be any length, including zero up to the maximum permissible chunk size minus the length of the keyword and separator. Neither "key" nor "value" can contain null character. Leading or trailing spaces are also disallowed.
-   tIME stores the time that the image was last changed.
-   tRNS contains transparency information. For indexed images, it stores alpha channel values for one or more palette entries. For truecolor and grayscale images, it stores a single pixel value that is to be regarded as fully transparent.
-   zTXt contains compressed text (and a compression method marker) with the same limits as tEXt.

The lowercase first letter in these chunks indicates that they are not needed for the PNG specification. The lowercase last letter in some chunks indicates that they are safe to copy, even if the application concerned does not understand them.

Pixel format

  Bits per pixel
  ---------------------
  Color option
  1
  Indexed
  Grayscale
  Grayscale and alpha
  Truecolor
  Truecolor and alpha

  : PNG color options[17]

Pixels in PNG images are numbers that may be either indices of sample data in the palette or the sample data itself. The palette is a separate table contained in the PLTE chunk. Sample data for a single pixel consists of a tuple of between one and four numbers. Whether the pixel data represents palette indices or explicit sample values, the numbers are referred to as channels and every number in the image is encoded with an identical format.

The permitted formats encode each number as an unsigned integral value using a fixed number of bits, referred to in the PNG specification as the _bit depth_. Notice that this is not the same as color depth, which is commonly used to refer to the total number of bits in each pixel, not each channel. The permitted bit depths are summarized in the table along with the total number of bits used for each pixel.

The number of channels depends on whether the image is grayscale or color and whether it has an alpha channel. PNG allows the following combinations of channels, called the _color type_.

  ---------- --------------------------------------------------------------
  0 (000₂)   grayscale
  2 (010₂)   red, green and blue: rgb/truecolor
  3 (011₂)   indexed: channel containing indices into a palette of colors
  4 (100₂)   grayscale and alpha: level of opacity for each pixel
  6 (110₂)   red, green, blue and alpha
  ---------- --------------------------------------------------------------

The color type is specified as an 8-bit value however only the low 3 bits are used and, even then, only the five combinations listed above are permitted. So long as the color type is valid it can be considered as a bit field as summarized in the adjacent table:

+-------+---------------------+--------+-------+
| Color | Name                | Binary | Masks |
| type  |                     |        |       |
+=======+=====================+========+=======+
|       | A                   | C      | P     |
+-------+---------------------+--------+-------+
| 0     | Grayscale           |        |       |
+-------+---------------------+--------+-------+
| 2     | Truecolor           |        |       |
+-------+---------------------+--------+-------+
| 3     | Indexed             |        |       |
+-------+---------------------+--------+-------+
| 4     | Grayscale and alpha |        |       |
+-------+---------------------+--------+-------+
| 6     | Truecolor and alpha |        |       |
+-------+---------------------+--------+-------+

: PNG color types

-   bit value 1: the image data stores palette indices. This is only valid in combination with BIT VALUE 2;
-   bit value 2: the image samples contain three channels of data encoding trichromatic colors, otherwise the image samples contain one channel of data encoding relative luminance,
-   bit value 4: the image samples also contain an alpha channel expressed as a linear measure of the opacity of the pixel. This is not valid in combination with BIT VALUE 1.

With indexed color images, the palette always stores trichromatic colors at a depth of 8 bits per channel (24 bits per palette entry). Additionally, an optional list of 8-bit alpha values for the palette entries may be included; if not included, or if shorter than the palette, the remaining palette entries are assumed to be opaque. The palette must not have more entries than the image bit depth allows for, but it may have fewer (for example, if an image with 8-bit pixels only uses 90 colors then it does not need palette entries for all 256 colors). The palette must contain entries for all the pixel values present in the image.

The standard allows indexed color PNGs to have 1, 2, 4 or 8 bits per pixel; grayscale images with no alpha channel may have 1, 2, 4, 8 or 16 bits per pixel. Everything else uses a bit depth per channel of either 8 or 16. The combinations this allows are given in the table above. The standard requires that decoders can read all supported color formats, but many image editors can only produce a small subset of them.

Transparency of image

PNG offers a variety of transparency options. With true-color and grayscale images either a single pixel value can be declared as transparent or an alpha channel can be added (enabling any percentage of partial transparency to be used). For paletted images, alpha values can be added to palette entries. The number of such values stored may be less than the total number of palette entries, in which case the remaining entries are considered fully opaque.

The scanning of pixel values for binary transparency is supposed to be performed before any color reduction to avoid pixels becoming unintentionally transparent. This is most likely to pose an issue for systems that can decode 16-bits-per-channel images (as they must to be compliant with the specification) but only output at 8 bits per channel (the norm for all but the highest end systems).

Alpha storage can be "associated" ("premultiplied") or "unassociated", but PNG standardized[18] on "unassociated" ("non-premultiplied") alpha so that images with separate transparency masks can be stored losslessly.

Compression

PNG_demo_Banana.pngPNG_demo_heatmap_Banana.png PNG uses a 2-stage compression process:

-   pre-compression: filtering (prediction)
-   compression: DEFLATE

PNG uses DEFLATE, a non-patented lossless data compression algorithm involving a combination of LZ77 and Huffman coding. Permissively-licensed DEFLATE implementations, such as zlib, are widely available.

Compared to formats with lossy compression such as JPG, choosing a compression setting higher than average delays processing, but often does not result in a significantly smaller file size.

Filtering

Pixel-prediction.svg PNG-Gradient.png

Before DEFLATE is applied, the data is transformed via a prediction method: a single _filter method_ is used for the entire image, while for each image line, a _filter type_ is chosen to transform the data to make it more efficiently compressible.[19] The filter type used for a scanline is prepended to the scanline to enable inline decompression.

There is only one filter method in the current PNG specification (denoted method 0), and thus in practice the only choice is which filter type to apply to each line. For this method, the filter predicts the value of each pixel based on the values of previous neighboring pixels, and subtracts the predicted color of the pixel from the actual value, as in DPCM. An image line filtered in this way is often more compressible than the raw image line would be, especially if it is similar to the line above, since the differences from prediction will generally be clustered around 0, rather than spread over all possible image values. This is particularly important in relating separate rows, since DEFLATE has no understanding that an image is a 2D entity, and instead just sees the image data as a stream of bytes.

There are five filter types for filter method 0; each type predicts the value of each byte (of the image data before filtering) based on the corresponding byte of the pixel to the left (_A_), the pixel above (_B_), and the pixel above and to the left (_C_) or some combination thereof, and encodes the _difference_ between the predicted value and the actual value. Filters are applied to byte values, not pixels; pixel values may be one or two bytes, or several values per byte, but never cross byte boundaries. The filter types are:[20]

  Type byte   Filter name   Predicted value
  ----------- ------------- ------------------------------------------------------------
  0           None          Zero (so that the raw byte value passes through unaltered)
  1           Sub           Byte _A_ (to the left)
  2           Up            Byte _B_ (above)
  3           Average       Mean of bytes _A_ and _B_, rounded down
  4           Paeth         _A_, _B_, or _C_, whichever is closest to

The Paeth filter is based on an algorithm by Alan W. Paeth.[21] Compare to the version of DPCM used in lossless JPEG, and to the discrete wavelet transform using 1×2, 2×1, or (for the Paeth predictor) 2×2 windows and Haar wavelets.

Compression is further improved by choosing filter types adaptively on a line-by-line basis. This improvement, and a heuristic method of implementing it commonly used by PNG-writing software, were created by Lee Daniel Crocker, who tested the methods on many images during the creation of the format;[22] the choice of filter is a component of file size optimization, as discussed below.

If interlacing is used, each stage of the interlacing is filtered separately, meaning that the image can be progressively rendered as each stage is received; however, interlacing generally makes compression less effective.

Interlacing

Adam7_passes.gif PNG offers an optional 2-dimensional, 7-pass interlacing scheme—the Adam7 algorithm. This is more sophisticated than GIF's 1-dimensional, 4-pass scheme, and allows a clearer low-resolution image to be visible earlier in the transfer, particularly if interpolation algorithms such as bicubic interpolation are used.[23]

However, the 7-pass scheme tends to reduce the data's compressibility more than simpler schemes.

Animation

Animated_PNG_example_bouncing_beach_ball.png)]] PNG itself does not support animation at all. MNG is an extension to PNG that does; it was designed by members of the PNG Group. MNG shares PNG's basic structure and chunks, but it is significantly more complex and has a different file signature, which automatically renders it incompatible with standard PNG decoders.

The complexity of MNG led to the proposal of APNG by developers of the Mozilla Foundation. It is based on PNG, supports animation and is simpler than MNG. APNG offers fallback to single-image display for PNG decoders that do not support APNG. However, neither of these formats is currently widely supported. APNG is supported in Firefox 3.0 and up, Pale Moon (all versions), and Opera 9.5,[24] but since Opera changed its layout engine to Blink, support was dropped. The latest version of Safari on iOS 8 and Safari 8 for OS X Yosemite support APNG.[25] Chromium 59.0 has added APNG support,[26][27] then Opera added back in 46.0.[28] The PNG Group decided in April 2007 not to embrace APNG.[29] Several alternatives were under discussion, ANG, aNIM/mPNG, "PNG in GIF" and its subset "RGBA in GIF".[30]


Comparison with other file formats

Graphics Interchange Format (GIF)

-   On small images, GIF can achieve greater compression than PNG (see the section on filesize, below).
-   On most images, except for the above case, a GIF file has a larger size than an indexed PNG image.
-   PNG gives a much wider range of transparency options than GIF, including alpha channel transparency.
-   Whereas GIF is limited to 8-bit indexed color, PNG gives a much wider range of color depths, including 24-bit (8 bits per channel) and 48-bit (16 bits per channel) truecolor, allowing for greater color precision, smoother fades, etc.[31] When an alpha channel is added, up to 64 bits per pixel (before compression) are possible.
-   When converting an image from the PNG format to GIF, the image quality may suffer due to posterization if the PNG image has more than 256 colors.
-   GIF intrinsically supports animated images. PNG supports animation only via unofficial extensions (see the section on animation, above).

PNG images are less widely supported by older browsers. In particular, IE6 has limited support for PNG.[32]

JPEG

Comparison_of_JPEG_and_PNG.png

The JPEG (Joint Photographic Experts Group) format can produce a smaller file than PNG for photographic (and photo-like) images, since JPEG uses a lossy encoding method specifically designed for photographic image data, which is typically dominated by soft, low-contrast transitions, and an amount of noise or similar irregular structures. Using PNG instead of a high-quality JPEG for such images would result in a large increase in filesize with negligible gain in quality. In comparison, when storing images that contain text, line art, or graphics – images with sharp transitions and large areas of solid color – the PNG format can compress image data more than JPEG can. Additionally, PNG is lossless, while JPEG produces visual artifacts around high-contrast areas. (Such artifacts depend on the settings used in the JPG compression; they can be quite noticeable when a low-quality [high-compression] setting is used.) Where an image contains both sharp transitions and photographic parts, a choice must be made between the two effects. JPEG does not support transparency.

JPEG's lossy compression also suffers from generation loss, where repeatedly decoding and re-encoding an image to save it again causes a loss of information each time, degrading the image. This does not happen with repeated viewing or copying, but only if the file is edited and saved over again. Because PNG is lossless, it is suitable for storing images to be edited. While PNG is reasonably efficient when compressing photographic images, there are lossless compression formats designed specifically for photographic images, lossless WebP and Adobe DNG (digital negative) for example. However these formats are either not widely supported, or are proprietary. An image can be stored losslessly and converted to JPEG format only for distribution, so that there is no generation loss.

The PNG specification does not include a standard for embedding Exif image data from sources such as digital cameras. Instead, PNG has various dedicated ancillary chunks for storing the metadata that other file formats (such as JPEG) would typically store in Exif format.

Early web browsers did not support PNG images; JPEG and GIF were the main image formats. JPEG was commonly used when exporting images containing gradients for web pages, because of GIF's limited color depth. However, JPEG compression causes a gradient to blur slightly. A PNG format reproduces a gradient as accurately as possible for a given bit depth, while keeping the file size small. PNG became the optimal choice for small gradient images as web browser support for the format improved. No images at all are needed to display gradients in modern browsers, as gradients can be created using CSS.

JPEG-LS

JPEG-LS is a image format by the Joint Photographic Experts Group, though far less widely known and supported than the other lossy JPEG format discussed above. It is directly comparable with PNG, and has a standard set of test images.[33] On the Waterloo Repertoire ColorSet, a standard set of test images (unrelated to the JPEG-LS conformance test set), JPEG-LS generally performs better than PNG, by 10–15%, but on some images PNG performs substantially better, on the order of 50–75%.[34] Thus, if both of these formats are options and file size is an important criterion, they should both be considered, depending on the image.

TIFF

Tagged Image File Format (TIFF) is a format that incorporates an extremely wide range of options. While this makes TIFF useful as a generic format for interchange between professional image editing applications, it makes adding support for it to applications a much bigger task and so it has little support in applications not concerned with image manipulation (such as web browsers). The high level of extensibility also means that most applications provide only a subset of possible features, potentially creating user confusion and compatibility issues.

The most common general-purpose, lossless compression algorithm used with TIFF is Lempel–Ziv–Welch (LZW). This compression technique, also used in GIF, was covered by patents until 2003. TIFF also supports the compression algorithm PNG uses (i.e. Compression Tag 0008₁₆ 'Adobe-style') with medium usage and support by applications. TIFF also offers special-purpose lossless compression algorithms like CCITT Group IV, which can compress bilevel images (e.g., faxes or black-and-white text) better than PNG's compression algorithm.

PNG supports non-premultiplied alpha only[35] whereas TIFF also supports "associated" (premultiplied) alpha.


Software support

The official reference implementation of the PNG format is the programming library _libpng_.[36] It is published as free software under the terms of a permissive free software license. Therefore, it is usually found as an important system library in free operating systems.

Bitmap graphics editor support for PNG

The PNG format is widely supported by graphics programs, including Adobe Photoshop, Corel's Photo-Paint and Paint Shop Pro, the GIMP, GraphicConverter, Helicon Filter, ImageMagick, Inkscape, IrfanView, Pixel image editor, Paint.NET and Xara Photo & Graphic Designer and many others. Some programs bundled with popular operating systems which support PNG include Microsoft's Paint and Apple's Photos/iPhoto and Preview, with the GIMP also often being bundled with popular Linux distributions.

Adobe Fireworks (formerly by Macromedia) uses PNG as its native file format, allowing other image editors and preview utilities to view the flattened image. However, Fireworks by default also stores metadata for layers, animation, vector data, text and effects. Such files should not be distributed directly. Fireworks can instead export the image as an optimized PNG without the extra metadata for use on web pages, etc.

Web browser support for PNG

PNG support first appeared in Internet Explorer 4.0b1 (32-bit only for NT) and in Netscape 4.04.[37]

Despite calls by the Free Software Foundation[38] and the World Wide Web Consortium (W3C),[39] tools such as gif2png,[40] and campaigns such as Burn All GIFs,[41] PNG adoption on websites was fairly slow due to late and buggy support in Internet Explorer, particularly regarding transparency.[42]

PNG compatible browsers include: Apple Safari, Google Chrome, Mozilla Firefox, Opera, Camino, Internet Explorer 7 (still numerous issues),[43] Internet Explorer 8 (still some issues), Internet Explorer 9 and many others. For the complete comparison, see Comparison of web browsers (Image format support).

Especially versions of Internet Explorer (Windows) below 9.0 have numerous problems which prevent it from correctly rendering PNG images.[44]

-   4.0 crashes on large PNG chunks.[45]
-   4.0 does not include the functionality to view .png files,[46] but there is a registry fix.[47]
-   5.0 and 5.01 have broken OBJECT support.[48]
-   5.01 prints palette images with black (or dark gray) backgrounds under Windows 98, sometimes with radically altered colors.[49]
-   6.0 fails to display PNG images of 4097 or 4098 bytes in size.[50]
-   6.0 cannot open a PNG file that contains one or more zero-length IDAT chunks. This issue was first fixed in security update 947864 (MS08-024). For more information, see this article in the Microsoft Knowledge Base: 947864 MS08-024: Cumulative Security Update for Internet Explorer.[51]
-   6.0 sometimes completely loses ability to display PNGs, but there are various fixes.[52]
-   6.0 and below have broken alpha-channel transparency support (will display the default background color instead).[53][54][55]
-   7.0 and below cannot combine 8-bit alpha transparency AND element opacity (CSS – filter: Alpha (opacity=xx)) without filling partially transparent sections with black.[56]
-   8.0 and below have inconsistent/broken gamma support.[57]
-   8.0 and below don't have color-correction support.[58]

Operating system support for PNG icons

PNG icons have been supported in most distributions of Linux since at least 1999, in desktop environments such as GNOME.[59] In 2006, Microsoft Windows support for PNG icons was introduced in Windows Vista.[60] PNG icons are supported in AmigaOS 4, AROS, macOS, iOS and MorphOS as well. In addition, Android makes extensive use of PNGs.


File size and optimization software

PNG file size can vary significantly depending on how it is encoded and compressed; this is discussed and a number of tips are given in _PNG: The Definitive Guide._[61]

Compared to GIF

Compared to GIF files, a PNG file with the same information (256 colors, no ancillary chunks/metadata), compressed by an effective compressor is normally smaller than a GIF image. Depending on the file and the compressor, PNG may range from somewhat smaller (10%) to significantly smaller (50%) to somewhat larger (5%), but is rarely significantly larger[62] for large images. This is attributed to the performance of PNG's DEFLATE compared to GIF's LZW, and because the added precompression layer of PNG's predictive filters take account of the 2-dimensional image structure to further compress files; as filtered data encodes differences between pixels, they will tend to cluster closer to 0, rather than being spread across all possible values, and thus be more easily compressed by DEFLATE. However, some versions of Adobe Photoshop, CorelDRAW and MS Paint provide poor PNG compression, creating the impression that GIF is more efficient.[63]

File size factors

PNG files vary in size due to a number of factors:

color depth: Color depth can range from 1 to 64 bits per pixel.
ancillary chunks: PNG supports metadata—this may be useful for editing, but unnecessary for viewing, as on websites.
interlacing: As each pass of the Adam7 algorithm is separately filtered, this can increase file size.[64]
filter: As a precompression stage, each line is filtered by a predictive filter, which can change from line to line. As the ultimate DEFLATE step operates on the whole image's filtered data, one cannot optimize this row-by-row; the choice of filter for each row is thus potentially very variable, though heuristics exist.[65]
compression: With additional computation, DEFLATE compressors can produce smaller files.

There is thus a filesize trade-off between high color depth, maximal metadata (including color space information, together with information that does not affect display), interlacing, and speed of compression, which all yield large files, with lower color depth, fewer or no ancillary chunks, no interlacing, and tuned but computationally intensive filtering and compression. For different purposes, different trade-offs are chosen: a maximal file may be best for archiving and editing, while a stripped down file may be best for use on a website, and similarly fast but poor compression is preferred when repeatedly editing and saving a file, while slow but high compression is preferred when a file is stable: when archiving or posting. Interlacing is a trade-off: it dramatically speeds up early rendering of large files (improves latency), but may increase file size (decrease throughput) for little gain, particularly for small files.[66]

Lossy PNG compression

Even though PNG has been designed as a lossless format, PNG encoders can pre-process image data in a lossy fashion (so as to reduce colors used) to improve PNG compression.[67]

Image editing software

Some programs are more efficient than others when saving PNG files, this relates to implementation of the PNG compression used by the program.

Many graphics programs (such as Apple's Preview software) save PNGs with large amounts of metadata and color-correction data that are generally unnecessary for Web viewing. Unoptimized PNG files from Adobe Fireworks are also notorious for this since they contain options to make the image editable in supported editors. Also CorelDRAW (at least version 11) sometimes produces PNGs which cannot be opened by Internet Explorer (versions 6–8).

Adobe Photoshop's performance on PNG files has improved in the CS Suite when using the Save For Web feature (which also allows explicit PNG/8 use).

Adobe's Fireworks saves larger PNG files than many programs by default. This stems from the mechanics of its _Save_ format: the images produced by Fireworks' save function include large, private chunks, containing complete layer and vector information. This allows further lossless editing. When saved with the _Export_ option, Fireworks' PNGs are competitive with those produced by other image editors, but are no longer editable as anything but flattened bitmaps. Fireworks is unable to save size-optimized vector-editable PNGs.

Other notable examples of poor PNG compressors include:

-   Microsoft's Paint for Windows XP
-   Microsoft Picture It! Photo Premium 9

Poor compression increases the PNG file size but does not affect the image quality or compatibility of the file with other programs.

When the color depth of a truecolor image is reduced to an 8-bit palette (as in GIF), the resulting image data is typically much smaller. Thus a truecolor PNG is typically larger than a color-reduced GIF, although PNG could store the color-reduced version as a palettized file of comparable size. Conversely, some tools, when saving images as PNGs, automatically save them as truecolor, even if the original data use only 8-bit color, thus bloating the file unnecessarily.[68] Both factors can lead to the misconception that PNG files are larger than equivalent GIF files.

Optimizing tools

Various tools are available for optimizing PNG files; they do this by:

-   (optionally) removing ancillary chunks,
-   reducing color depth, either:
    -   use a palette (instead of RGB) if the image has 256 or fewer colors,
    -   use a smaller palette, if the image has 2, 4, or 16 colors, or
    -   (optionally) lossily discard some of the data in the original image,
-   optimizing line-by-line filter choice, and
-   optimizing DEFLATE compression.

Tool list

-   pngcrush is the oldest of the popular PNG optimizers. It allows for multiple trials on filter selection and compression arguments, and finally chooses the smallest one. This working model is used in almost every png optimizer.
-   OptiPNG was inspired by pngcrush, but iterates over a wider range of compression parameters and performs trials in-memory for faster execution.[69] The main purpose of OptiPNG is to reduce the size of the PNG IDAT data stream by trying various filtering and compression methods. It also performs automatic bit depth, color type and color palette reduction where possible, and can correct some data integrity errors in input files. (pngcrush has the ability to do color reduction in a later version.)

-   Advpng from package AdvanceCOMP was made to use the DEFLATE implementation in 7-zip's LZMA SDK (which is slower but has smaller output than zlib), to optimize png files. However, since PNG is filtered before deflate compression, while advpng uses filter 0 globally (in other words it only uses unfiltered data), it's not a good consideration for png optimization. (In most scenarios, filtering helps more than a good deflater.)
    Advdef from the same package, however, is able to recompress the zlib stream, acting as a re-deflater.
-   pngout was made with the author's own deflater (same to the author's zip utility, kzip), while keeps all facilities of color reduction / filtering. However, pngout doesn't allow for using several trials on filters in a single run, so it's suggested to use its commercial GUI version, pngoutwin, or used with a wrapper to automates the trials or to recompress using its own deflater while keep the filter line by line.[70]
-   zopflipng was also made with a self-own deflater, zopfli. It has all the optimizing features optipng/pngcrush have (including automating trials) while providing a good deflater.

A simple comparison of their features is listed below.

  Optimizer   Chunk removal   Color reduction   Filtering                                                          Filter reuse[71]   Multiple trials on filters in a single run   Deflater[72]
  ----------- --------------- ----------------- ------------------------------------------------------------------ ------------------ -------------------------------------------- -----------------
  Advpng      Yes             No[73]            0                                                                  No                 N/A[74]                                      zopfli or 7-zip
  Advdef      No              No                Don't deal with[75]                                                Always[76]         N/A[77]                                      zopfli or 7-zip
  OptiPNG     Yes             Yes               0–4 or adaptive                                                    No                 Yes                                          zlib
  pngcrush    Yes             Yes               0–4 or adaptive                                                    No                 Yes                                          zlib
  pngout      Yes             Yes               0–4 or adaptive                                                    Yes[78]            No                                           kzip
  zopflipng   Yes             Yes               0–4 or adaptive with 2 different algorithms, or with a brute way   Yes                Yes                                          zopfli

Before zopflipng was available, a good way in practice to perform a png optimization is to use a combination of 2 tools in sequence for optimal compression: one which optimizes filters (and removes ancillary chunks), and one which optimizes DEFLATE. Although pngout offers both, only one type of filter can be specified in a single run, therefore it can be used with a wrapper tool or in combination with optipng or pngcrush,[79] acting as a re-deflater, like advdef.

Ancillary chunk removal

For removing ancillary chunks, most PNG optimization tools have the ability to remove all color correction data from PNG files (gamma, white balance, ICC color profile, standard RGB color profile). This often results in much smaller file sizes. For example, the following command line options achieve this with pngcrush:

pngcrush -rem gAMA -rem cHRM -rem iCCP -rem sRGB _InputFile.png_ _OutputFile.png_

Ancillary chunks can also be losslessly removed using the free Win32 program PNGExtra.

Filter optimization

OptiPNG, pngcrush, pngout, and zopflipng all offer options applying one of the filter types 0–4 globally (using the same filter type for all lines) or with a "pseudo filter" (numbered 5), which for each line chooses one of the filter types 0–4 using an adaptive algorithm. Zopflipng offers 3 different adaptive method, including a brute-force search that attempts to optimize the filtering.[80]

pngout and zopflipng provide an option to preserve/reuse[81][82] the line-by-line filter set present in the input image.

OptiPNG, pngcrush and zopflipng provide options to try different filter strategies in a single run and choose the best. The freeware command line version of pngout doesn't offer this, but the commercial version, pngoutwin, does.[83]

DEFLATE optimization

zopfli and the LZMA SDK employ DEFLATE implementations that produce higher compression ratios than the zlib reference implementation at the cost of performance. AdvanceCOMP's advpng and advdef can use either of these libraries to re-compress PNG files. Additionally, PNGOUT contains its own proprietary DEFLATE implementation.

advpng doesn't have an option to apply filters and always uses filter 0 globally (leaving the image data unfiltered); therefore it should not be used where the image benefits significantly from filtering. By contrast, advdef from the same package doesn't deal with PNG structure and acts only as a re-deflater, retaining any existing filter settings.

Wrapper tools

Most wrapper tools take several passes using different optimizers and then select the smallest file.

Wrapper tools that simplify this workflow include: ImageOptim, a GUI front-end for Mac OS X; Kashmir Web Optimizer- GUI front-end for Windows; pngoptim a cmd batch script for Windows; imgopt, a command-line shell script that also losslessly optimizes JPEG images, Smush.it, an image-optimizing web service; TinyPNG, which provides compression by reducing the number of colors in the image automatically, but preserving alpha transparency; and Compress Images that allows users to pick the number of colors that should be used.

The littleutils is another open-source package, containing a wrapper script called opt-png that uses pngcrush and a variant of pngrewrite to reduce bit-depth when possible. Perl scripts might wish to employ Image-Pngslimmer which allows some dynamic optimization.

The current version of IrfanView can use PNGOUT as an external plug-in, obviating the need for a separate compressor.

An open source Windows program called FileOptimizer losslessly optimizes many filetypes, including PNG. It runs multiple PNG optimization programs: advpng, apngopt, optipng, PngOptimizer, pngout, pngrewrite, and pngwolf.

Another open source Windows tool, pngoptim, uses a more opinionated approach, utilizing only pngout and zopflipng instead of taking the brute force approach of trying multiple optimizers.

Icon optimization

Since icons intended for Windows Vista and later versions may contain PNG subimages, the optimizations can be applied to them as well. At least one icon editor, Pixelformer, is able to perform a special optimization pass while saving ICO files, thereby reducing their sizes. FileOptimizer (mentioned above) can also handle ICO files.

Icons for macOS may also contain PNG subimages, yet there isn't such tool available.


See also

-   Computer graphics, including:
    -   Comparison of browser engines (graphics support)
-   Image editing
-   Image file formats
-   Related graphics file formats
    -   APNG Animated PNG
    -   JPEG Network Graphics (JNG)
    -   Multiple-image Network Graphics (MNG)
-   Similar file formats
    -   X PixMap for portable icons
-   Scalable Vector Graphics
-   WebP
-   IrfanView


Notes


References


Further reading

-   -


External links

-   PNG Home Site
-   libpng Home Page
-   _The Story of PNG_ by Greg Roelofs
-   W3 PNG Specification
-   Test inline PNG images
-   RFC 2083
-   More information about PNG color correction
-   The GD-library to generate dynamic PNG-files with PHP
-   A guide to PNG optimization
-   PNG Adam7 interlacing
-   Encoding Web Shells in PNG files: Encoding human readable data inside an IDAT block.

Category:Raster graphics file formats Category:Graphics standards Category:ISO standards Category:World Wide Web Consortium standards Category:Open formats Category:Image compression Category:Computer-related introductions in 1996 Category:PNG

[1]

[2]

[3]

[4]

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

[15]

[16]

[17] Portable Network Graphics (PNG) Specification (Second Edition): 11.2.2 IHDR Image header.

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

[34] Chapter 9. Compression and Filtering, in _PNG: The Definitive Guide_ by Greg Roelofs.

[35]

[36]

[37]

[38]

[39]

[40]

[41]

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

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65] The filtering is used to increase the similarity to the data, hence increasing the compression ratio. However, there is theoretically no formula for similarity, nor absolute relationship between the similarity and compressor, thus unless the compression is done, one can't tell one filter set is better than another.

[66]

[67]

[68]

[69] Truţa, Cosmin. "A guide to PNG optimization".

[70] Use pngout -f6 to reuse previous filter set

[71] The tools offering such feature could act as a pure re-deflater to PNG files.

[72] The reference deflater implementation, zlib, is not good enough. See Page Zopfli, zip format in 7-zip and pngout

[73] Not only advpng doesn't support color reduction, it also fails with the images with a reduced colorspace

[74] Advpng can only apply filter 0 globally, thus it's neither yes or no, but N/A.

[75] Advdef only works to inflate the deflated data, and re-deflate it

[76]

[77]

[78]

[79]

[80] [optipng|pngcrush|pngout] -f OR zopflipng --filters

[81]

[82] zopflipng --filters=p

[83] Pngoutwin's setting dialog for optimization offers the user a selection of filter strategies.