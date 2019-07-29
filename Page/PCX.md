PCX, standing for _PiCture eXchange_, is an image file format developed by the now-defunct ZSoft Corporation of Marietta, Georgia, United States. It was the native file format for PC Paintbrush and became one of the first widely accepted DOS imaging standards, although it has since been succeeded by more sophisticated image formats, such as BMP, JPEG, and PNG. PCX files commonly stored palette-indexed images ranging from 2 or 4 colors to 16 and 256 colors, although the format has been extended to record true-color (24-bit) images as well.[1]


PCX image formats

  Bit Depth   Planes   Number of Colors
  ----------- -------- ----------------------------------------------
  4           1        16 colors from a palette
  8           1        256 colors from a palette
  8           1        256 shades of gray
  4           4        4095 colors with 16 levels of transparency
  8           3        16.7 million, 24-bit "true color"
  8           4        16.7 million with 256 levels of transparency

  : Table A. Common PCX Image Formats

PCX was designed during the early development of PC display hardware and most of the formats it supported are no longer used, Table A shows a list of the most commonly used PCX formats. Contemporary image editing programs may not read PCX files that match older hardware.

PCX is supported by common image processing software including ACDSee, GIMP, ImageMagick, IrfanView, LView, Netpbm, PaintShop Pro, Photoshop, Visio, PMview, XnView and GraphicConverter.[2][3] In version 2.1.4 FFmpeg could encode and decode the PCX pixel formats _rgb24, rgb8, bgr8, rgb4_byte, bgr4_byte, gray, pal8,_ and _monob_.[4]

There is a multi-page version of PCX, used by some computer fax and document management programs, with file extension .dcx. A DCX file consists of a header introducing a set of following PCX files.[5]


PCX file format

PCX files were designed for use on IBM-compatible PCs and always use little endian byte ordering. A PCX file has three main sections, in the following order

1.  128-byte header
2.  image data
3.  (optional) 256-color palette

The PCX file header contains an identifier byte (value 10), a version number, image dimensions, 16 palette colors, number color planes, bit depth of each plane, and a value for compression method. PCX version numbers range from 0 to 5, this originally denoted the version of the PC Paintbrush program used to create the PCX file. The header always has space for 16 colors though the number of colors used depends upon the bit depth of the image. The header is 74 bytes long and the image data begins 128 bytes after the start of the file, the 54 bytes between are not used.[6]

All PCX files use the same compression scheme and the compression value is always 1. No other values have been defined and there are no uncompressed PCX files. One source claims that 0 (uncompressed) is _allowed, but not much software supports it_.[7]

Image data layout

  ------------------- -------------------
         Row 0         R R R R R R R R R
    G G G G G G G G
   B B B B B B B B B
   A A A A A A A A A
         Row 1         R R R R R R R R R
    G G G G G G G G
   B B B B B B B B B
   A A A A A A A A A
      Row 2 etc.             ....
  ------------------- -------------------

  : Table B. PCX Image Data Arranged into Color Planes

PCX image data is stored in rows or scan lines in top-down order. If the image has multiple planes, these are stored by plane within row, such that all the red data for row 0 are followed by all the green data for row 0, then all the blue data, then alpha data. This pattern is repeated for each line as shown in Table B.

When an image is less than 8 bits per pixel, each line is padded to the next byte boundary. For example, if an image has 1 plane of 1-bit data (monochrome) with a width of 22 pixels, each row will be 3 bytes long, having 24 bits per row with 2 bits unused.

Image data compression

PCX image data are compressed using run-length encoding (RLE), a simple lossless compression algorithm that collapses a series of three or more consecutive bytes with identical values into a two-byte pair. The two most-significant bits of a byte are used to determine whether the given data represent a single pixel of a given palette index or color value, or an RLE pair representing a series of several pixels of a single value:

1.  if both bits are 1, the byte is interpreted as the run length. This leaves 6 bits for the actual run length value, i.e. a value range of 0-63
2.  in any other case, the byte is interpreted as a single pixel value. This leaves all value for which bit #7 and bit #8 are not 1 at the same time. This requirement is not met by all values of 192 (binary 11000000) and above.

Compared to the maximum run length of 128, possible with TGA RLE compression, the PCX run-length encoding offers a larger single-pixel value range, while the maximum run length is restricted to 63.

Due to the use of the two most-significant bits as flags, pixel values from 192 to 255 (with their most-significant bit already set) must be stored in an RLE byte pair, even when they only occur one or two pixels in succession, whereas color indexes 0 to 191 can be stored directly _or_ in RLE byte pairs (whichever is more space-efficient); therefore, the actual compression ratio could be optimized with proper sorting of palette entries, though this is not feasible where the file must share its color palette with other images. For example, a palette could be optimized with the most commonly used colors occurring in palette positions 0 to 191 and the least common colors allocated to the remaining quarter of the palette.

Another inefficiency with the RLE algorithm is that it is possible to store chunks with a length of 0, which allows whitespace in the file. This allowed PCX files to be decompressed slightly faster on the processors it was originally intended for. This quirk could be used for steganography.

The PCX compression algorithm requires very little processor power or memory to apply, a significant concern with the computer systems when it was designed. As computers and display hardware grow more sophisticated, the PCX algorithm becomes less space-efficient. Compression algorithms used by newer image formats are more efficient when compressing images such as photographs, and dithered or otherwise complex graphics.

Color palette

A PCX file has space in its header for a 16 color palette. When 256-color VGA hardware became available there was not enough space for the palette in a PCX file; even the 54 unused bytes after the header would not be enough. The solution chosen was to put the palette at the end of the file, along with a marker byte to confirm its existence.

If a PCX file has a 256-color palette, it is found 768 bytes from the end of the file. In this case the value in the byte preceding the palette should be 12 (0x0C). The palette is stored as a sequence of RGB triples; its usable length is defined by the number of colors in the image. Colors values in a PCX palette always use 8 bits, regardless of the bit depth of the image.


References

Category:Graphics file formats Category:Filename extensions

[1]

[2]

[3]

[4]

[5]

[6]

[7]