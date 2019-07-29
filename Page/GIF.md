The GRAPHICS INTERCHANGE FORMAT (GIF or ), is a bitmap image format that was developed by a team at the online services provider CompuServe led by American computer scientist Steve Wilhite on June 15, 1987.[1] It has since come into widespread usage on the World Wide Web due to its wide support and portability between many applications and operating systems.

The format supports up to 8 bits per pixel for each image, allowing a single image to reference its own palette of up to 256 different colors chosen from the 24-bit RGB color space. It also supports animations and allows a separate palette of up to 256 colors for each frame. These palette limitations make GIF less suitable for reproducing color photographs and other images with color gradients, but it is well-suited for simpler images such as graphics or logos with solid areas of color.

GIF images are compressed using the Lempel–Ziv–Welch (LZW) lossless data compression technique to reduce the file size without degrading the visual quality. This compression technique was patented in 1985. Controversy over the licensing agreement between the software patent holder, Unisys, and CompuServe in 1994 spurred the development of the Portable Network Graphics (PNG) standard. By 2004 all the relevant patents had expired.


History

CompuServe introduced GIF on June 15, 1987 to provide a color image format for their file downloading areas, replacing their earlier run-length encoding (RLE) format, which was black and white only. GIF became popular because it used LZW data compression, which was more efficient than the run-length encoding that formats such as those used by PCX and MacPaint, and fairly large images could therefore be downloaded in a reasonably short time, even with very slow modems.

The original version of GIF was called 87A.[2] In 1989, CompuServe released an enhanced version, called 89A,[3] which added support for animation delays (multiple images in a stream were already supported in 87a), transparent background colors, and storage of application-specific metadata. The 89a specification also supports incorporating text labels as text (not embedding them in the graphical data), but as there is little control over display fonts, this feature is not widely used. The two versions can be distinguished by looking at the first six bytes of the file (the "magic number" or signature), which, when interpreted as ASCII, read "GIF87a" and "GIF89a", respectively.

CompuServe encouraged the adoption of GIF by providing downloadable conversion utilities for many computers. By December 1987, for example, an Apple IIGS user could view pictures created on an Atari ST or Commodore 64.[4] GIF was one of the first two image formats commonly used on Web sites, the other being the black-and-white XBM.[5]

In September 1995 Netscape Navigator 2.0 added the ability for animated GIFs to loop.

The feature of storing multiple images in one file, accompanied by control data, is used extensively on the Web to produce simple animations. The optional interlacing feature, which stores image scan lines out of order in such a fashion that even a partially downloaded image was somewhat recognizable, also helped GIF's popularity,[6] as a user could abort the download if it was not what was required.

In May 2015 Facebook added support for GIF.[7][8]


Terminology

As a noun, the word _GIF_ is found in the newer editions of many dictionaries. In 2012, the American wing of the Oxford University Press recognized _GIF_ as a verb as well, meaning "to create a GIF file", as in "GIFing was perfect medium for sharing scenes from the Summer Olympics". The press's lexicographers voted it their word of the year, saying that GIFs have evolved into "a tool with serious applications including research and journalism".[9][10]

Pronunciation of GIF

White_House_Tumblr_launch_image.jpg Tumblr suggests pronouncing GIF with the hard "G" sound.]]

The creators of the format pronounced the word as "jif" with a soft "G" as in "gin". Steve Wilhite says that the intended pronunciation deliberately echoes the American peanut butter brand Jif, and CompuServe employees would often say "Choosy developers choose GIF", spoofing this brand's television commercials.[11] The word is now also widely pronounced with a hard "G" as in "gift".[12] In 2017, an informal poll on programming website Stack Overflow showed some numerical preference for hard-"G" pronunciation,[13] especially among respondents in eastern Europe, though both soft-"G" and enunciating each letter individually were found to be popular in Asia and emerging countries.[14]

The _American Heritage Dictionary_[15] cites both, indicating "jif" as the primary pronunciation, while _Cambridge Dictionary of American English_[16] offers only the hard-"G" pronunciation. _Merriam-Webster's Collegiate Dictionary_[17] and the _OED_[18] cite both pronunciations, but place "gif" in the default position ("\ˈgif, ˈjif\"). The _New Oxford American Dictionary_ gave only "jif" in its 2nd edition[19] but updated it to "jif, gif" in its 3rd edition.[20]

The disagreement over the pronunciation led to heated Internet debate. On the occasion of receiving a lifetime achievement award at the 2013 Webby Award ceremony, Wilhite rejected the hard-"G" pronunciation,[21][22][23] and his speech led to 17,000 posts on Twitter and 50 news articles.[24] The White House[25] and TV program _Jeopardy!_[26] also entered the debate during 2013.


Usage

-   GIFs are suitable for sharp-edged line art (such as logos) with a limited number of colors. This takes advantage of the format's lossless compression, which favors flat areas of uniform color with well defined edges.[27]
-   GIFs may be used to store low-color sprite data for games.[28]
-   GIFs can be used for small animations and low-resolution video clips.[29]


File format

Empty_GIF_hex.png in a hex editor]] Conceptually, a GIF file describes a fixed-sized graphical area (the "logical screen") populated with zero or more "images". Many GIF files have a single image that fills the entire logical screen. Others divide the logical screen into separate sub-images. The images may also function as animation frames in an animated GIF file, but again these need not fill the entire logical screen.

GIF files start with a fixed-length header ("GIF87a" or "GIF89a") giving the version, followed by a fixed-length Logical Screen Descriptor giving the pixel dimensions and other characteristics of the logical screen. The screen descriptor may also specify the presence and size of a Global Color Table, which follows next if present.

    00000000  47 49 46 38 39 61 01 00  01 00 80 00 00 00 00 00  |GIF89a..........|
    00000010  ff ff ff 21 f9 04 01 00  00 00 00 2c 00 00 00 00  |...!.......,....|
    00000020  01 00 01 00 00 02 01 44  00 3b                    |.......D.;|
    0000002a

Thereafter, the file is divided into segments, each introduced by a 1-byte sentinel:

-   An image (introduced by 0x2C, an ASCII comma ',')
-   An extension block (introduced by 0x21, an ASCII exclamation point '!')
-   The trailer (a single byte of value 0x3B, an ASCII semicolon ';'), which should be the last byte of the file.

An image starts with a fixed-length Image Descriptor, which may specify the presence and size of a Local Color Table (which follows next if present). The image data follows: one byte giving the bit width of the unencoded symbols (which must be at least 2 bits wide, even for bi-color images), followed by a linked list of sub-blocks containing the LZW-encoded data.

Extension blocks (blocks that "extend" the 87a definition via a mechanism already defined in the 87a spec) consist of the sentinel, an additional byte specifying the type of extension, and a linked list of sub-blocks with the extension data. Extension blocks that modify an image (like the Graphic Control Extension that specifies the optional animation delay time and optional transparent background color) must immediately precede the segment with the image they refer to.

The linked lists used by the image data and the extension blocks consist of series of sub-blocks, each sub-block beginning with a byte giving the number of subsequent data bytes in the sub-block (1 to 255). The series of sub-blocks is terminated by an empty sub-block (a 0 byte).

This structure allows the file to be parsed even if not all parts are understood. A GIF marked 87a may contain extension blocks; the intent is that a decoder can read and display the file without the features covered in extensions it does not understand.

The full detail of the file format is covered in the GIF specification.[30]


Palettes

Sunflower_as_gif_websafe.gif palette and dithered using the Floyd–Steinberg method. Due to the reduced number of colors in the image, there are display issues.]] GIF is palette-based: the colors used in an image (a frame) in the file have their RGB values defined in a palette table that can hold up to 256 entries, and the data for the image refer to the colors by their indices (0–255) in the palette table. The color definitions in the palette can be drawn from a color space of millions of shades (2²⁴ shades, 8 bits for each primary), but the maximum number of colors a frame can use is 256. This limitation seemed reasonable when GIF was developed because few people could afford the hardware to display more colors simultaneously. Simple graphics, line drawings, cartoons, and grey-scale photographs typically need fewer than 256 colors.

Each frame can designate one index as a "transparent background color": any pixel assigned this index takes on the color of the pixel in the same position from the background, which may have been determined by a previous frame of animation.

Many techniques, collectively called dithering, have been developed to approximate a wider range of colors with a small color palette by using pixels of two or more colors to approximate in-between colors. These techniques sacrifice spatial resolution to approximate deeper color resolution. While not part of the GIF specification, dithering can be used in images subsequently encoded as GIF images. This is often not an ideal solution for GIF images, both because the loss of spatial resolution typically makes an image look fuzzy on the screen, and because the dithering patterns often interfere with the compressibility of the image data, working against GIF's main purpose.

In the early days of graphical web browsers, graphics cards with 8-bit buffers (allowing only 256 colors) were common and it was fairly common to make GIF images using the websafe palette. This ensured predictable display, but severely limited the choice of colors. When 24-bit color became the norm palettes could instead be populated with the optimum colors for individual images.

A small color table may suffice for small images, and keeping the color table small allows the file to be downloaded faster. Both the 87a and 89a specifications allow color tables of 2^(_n_) colors for any _n_ from 1 through 8. Most graphics applications will read and display GIF images with any of these table sizes; but some do not support all sizes when _creating_ images. Tables of 2, 16, and 256 colors are widely supported.

True color

SmallFullColourGIF.gif Although GIF is almost never used for true color images, it is possible to do so.[31][32] A GIF image can include multiple image blocks, each of which can have its own 256-color palette, and the blocks can be tiled to create a complete image. Alternatively, the GIF89a specification introduced the idea of a "transparent" color where each image block can include its own palette of 255 visible colors plus one transparent color. A complete image can be created by layering image blocks with the visible portion of each layer showing through the transparent portions of the layers above.

To render a full-color image as a GIF, the original image must be broken down into smaller regions having no more than 255 or 256 different colors. Each of these regions is then stored as a separate image block with its own local palette and when the image blocks are displayed together (either by tiling or by layering partially transparent image blocks) the complete, full-color image appears. For example, breaking an image into tiles of 16 by 16 pixels (256 pixels in total) ensures that no tile has more than the local palette limit of 256 colors, although larger tiles may be used and similar colors merged resulting in some loss of color information.[33]

Since each image block requires its own local color table, a GIF file having lots of image blocks can be very large, limiting the usefulness of full-color GIFs.[34] Additionally, not all GIF rendering programs handle tiled or layered images correctly. Many rendering programs interpret tiles or layers as animation frames and display them in sequence as an endless animation[35] with most web browsers automatically displaying the frames with a delay time of 0.1 seconds or more.[36][37]


Example GIF file

gifSample.gif GIFPAL.png Microsoft Paint saves a small black-and-white image as the following GIF file. Paint does not make optimal use of GIF; due to the unnecessarily large color table (storing a full 256 colors instead of the used 2) and symbol width, this GIF file is not an efficient representation of the 15-pixel image (illustrated enlarged above).

Although the Graphics Control Extension block declares color index 16 (hexadecimal 10) to be transparent, that index is not used in the image. The only color indexes appearing in the image data are decimal 40 and 255, which the Global Color Table maps to black and white, respectively.

Note that the hex numbers in the following tables are in little-endian byte order, as the format specification prescribes.

Image coding

The image pixel data, scanned horizontally from top left, are converted by LZW encoding to codes that are then mapped into bytes for storing in the file. The pixel codes typically don't match the 8-bit size of the bytes, so the codes are packed into bytes by a "little-Endian" scheme: the least significant bit of the first code is stored in the least significant bit of the first byte, higher order bits of the code into higher order bits of the byte, spilling over into the low order bits of the next byte as necessary. Each subsequent code is stored starting at the least significant bit not already used.

This byte stream is stored in the file as a series of "sub-blocks". Each sub-block has a maximum length 255 bytes and is prefixed with a byte indicating the number of data bytes in the sub-block. The series of sub-blocks is terminated by an empty sub-block (a single 0 byte, indicating a sub-block with 0 data bytes).

For the sample image above the reversible mapping between 9-bit codes and bytes is shown below.

+------------+----------+-------+
| 9-bit code | Binary   | Bytes |
| (hex)      |          | (hex) |
+============+==========+=======+
|            | |        | 00    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | 51    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | FC    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | 1B    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | 28    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | 70    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | A0    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | C1    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | |        | 83    |
+------------+----------+-------+
|            | |        | 01    |
+------------+----------+-------+
|            |          |       |
+------------+----------+-------+
|            | 0000000| | 01    |
+------------+----------+-------+

A slight compression is evident: pixel colors defined initially by 15 bytes are exactly represented by 12 code bytes including control codes. The encoding process that produces the 9-bit codes is shown below. A local string accumulates pixel color numbers from the palette, with no output action as long as the local string can be found in a code table. There is special treatment of the first two pixels that arrive before the table grows from its initial size by additions of strings. After each output code, the local string is initialized to the latest pixel color (that could not be included in the output code).

                          Table 9-bit
                     string --> code code Action
                          #0 | 000h               Initialize root table of 9-bit codes
                    palette  |  :
                     colors  |  :
                        #255 | 0FFh
                         clr | 100h
                         end | 101h
                             |            100h     Clear
Pixel          Local         |
color Palette  string        |
BLACK  #40     28            |            028h     1st pixel always to output
WHITE  #255    FF            |                     String found in table
                  28 FF      | 102h                Always add 1st string to table
               FF            |                     Initialize local string
WHITE  #255    FF FF         |                     String not found in table
                             |            0FFh     - output code for previous string
                  FF FF      | 103h                - add latest string to table
               FF            |                     - initialize local string
WHITE  #255    FF FF         |                     String found in table
BLACK  #40     FF FF 28      |                     String not found in table
                             |            103h     - output code for previous string
                  FF FF 28   | 104h                - add latest string to table
               28            |                     - initialize local string
WHITE  #255    28 FF         |                     String found in table
WHITE  #255    28 FF FF      |                     String not found in table
                             |            102h     - output code for previous string
                  28 FF FF   | 105h                - add latest string to table
               FF            |                     - initialize local string
WHITE  #255    FF FF         |                     String found in table
WHITE  #255    FF FF FF      |                     String not found in table
                             |            103h     - output code for previous string
                  FF FF FF   | 106h                - add latest string to table
               FF            |                     - initialize local string
WHITE  #255    FF FF         |                     String found in table
WHITE  #255    FF FF FF      |                     String found in table
WHITE  #255    FF FF FF FF   |                     String not found in table
                             |            106h     - output code for previous string
                  FF FF FF FF| 107h                - add latest string to table
               FF            |                     - initialize local string
WHITE  #255    FF FF         |                     String found in table
WHITE  #255    FF FF FF      |                     String found in table
WHITE  #255    FF FF FF FF   |                     String found in table
                                                   No more pixels
                                          107h     - output code for last string
                                          101h     End

For clarity the table is shown above as being built of strings of increasing length. That scheme can function but the table consumes an unpredictable amount of memory. Memory can be saved in practice by noting that each new string to be stored consists of a previously stored string augmented by one character. It is economical to store at each address only two words: an existing address and one character.

The LZW algorithm requires a search of the table for each pixel. A linear search through up to 4096 addresses would make the coding slow. In practice the codes can be stored in order of numerical value; this allows each search to be done by a SAR (Successive Approximation Register, as used in some ADCs), with only 12 magnitude comparisons. For this efficiency an extra table is needed to convert between codes and actual memory addresses; the extra table upkeeping is needed only when a new code is stored which happens at much less than pixel rate.

Image decoding

Decoding begins by mapping the stored bytes back to 9-bit codes. These are decoded to recover the pixel colors as shown below. A table identical to the one used in the encoder is built by adding strings by this rule:

+--+------------------------------------------------------------------------------+
|  | add string for local code followed by first byte of string for incoming code |
+--+------------------------------------------------------------------------------+
|  | add string for local code followed by copy of its own first byte             |
+--+------------------------------------------------------------------------------+

: Is incoming code found in table?

      shift
9-bit ----> Local Table Pixel
code code code --> string Palette color Action
100h               000h  | #0                       Initialize root table of 9-bit codes
                    :    | palette
                    :    | colors
                   0FFh  | #255
                   100h  | clr
                   101h  | end
028h                     |             #40     Decode 1st pixel
0FFh        028h         |                           Incoming code found in table
                         |             #255     - output string from table
                   102h  | 28 FF                     - add to table
103h        0FFh         |                           Incoming code not found in table
                   103h  | FF FF                     - add to table
                         |                           - output string from table
                         |             #255  
                         |             #255   
102h        103h         |                           Incoming code found in table
                         |                           - output string from table
                         |             #40   
                         |             #255   
                   104h  | FF FF 28                  - add to table
103h        102h         |                           Incoming code found in table
                         |                           - output string from table
                         |             #255   
                         |             #255   
                   105h  | 28 FF FF                  - add to table
106h        103h         |                           Incoming code not found in table
                   106h  | FF FF FF                  - add to table
                         |                           - output string from table
                         |             #255   
                         |             #255   
                         |             #255   
107h        106h         |                           Incoming code not found in table
                   107h  | FF FF FF FF               - add to table
                         |                           - output string from table
                         |             #255   
                         |             #255   
                         |             #255   
                         |             #255   
101h                     |                           End

LZW code lengths

Shorter code lengths can be used for palettes smaller than the 256 colors in the example. If the palette is only 64 colors (so color indexes are 6 bits wide), the symbols can range from 0 to 63, and the symbol width can be taken to be 6 bits, with codes starting at 7 bits. In fact, the symbol width need not match the palette size: as long as the values decoded are always less than the number of colors in the palette, the symbols can be any width from 2 to 8, and the palette size any power of 2 from 2 to 256. For example, if only the first four colors (values 0 to 3) of the palette are used, the symbols can be taken to be 2 bits wide with codes starting at 3 bits.

Conversely, the symbol width could be set at 8, even if only values 0 and 1 are used; these data would only require a 2-color table. Although there would be no point in encoding the file that way, something similar typically happens for bi-color images: the minimum symbol width is 2, even if only values 0 and 1 are used.

The code table initially contains codes that are one bit longer than the symbol size in order to accommodate the two special codes _clr_ and _end_ and codes for strings that are added during the process. When the table is full the code length increases to give space for more strings, up to a maximum code 4095 = FFF(hex). As the decoder builds its table it tracks these increases in code length and it is able to unpack incoming bytes accordingly.

Uncompressed GIF

A 46 x 46 uncompressed GIF with 7-bit symbols (128 colors, 8-bit codes). Click on the image for an explanation of the code. The GIF encoding process can be modified to create a file without LZW compression that is still viewable as a GIF image. This technique was introduced originally as a way to avoid patent infringement. Uncompressed GIF can also be a useful intermediate format for a graphics programmer because individual pixels are accessible for reading or painting. An uncompressed GIF file can be converted to an ordinary GIF file simply by passing it through an image editor.

The modified encoding method ignores building the LZW table and emits only the root palette codes and the codes for CLEAR and STOP. This yields a simpler encoding (a 1-to-1 correspondence between code values and palette codes) but sacrifices all of the compression: each pixel in the image generates an output code indicating its color index. When processing an uncompressed GIF, a standard GIF decoder will not be prevented from writing strings to its dictionary table, but the code width must never increase since that triggers a different packing of bits to bytes.

If the symbol width is , the codes of width fall naturally into two blocks: the lower block of codes for coding single symbols, and the upper block of codes that will be used by the decoder for sequences of length greater than one. Of that upper block, the first two codes are already taken: for CLEAR and for STOP. The decoder must also be prevented from using the last code in the upper block, , because when the decoder fills that slot, it will increase the code width. Thus in the upper block there are codes available to the decoder that won't trigger an increase in code width. Because the decoder is always one step behind in maintaining the table, it does not generate a table entry upon receiving the first code from the encoder, but will generate one for each succeeding code. Thus the encoder can generate codes without triggering an increase in code width. Therefore the encoder must emit extra CLEAR codes at intervals of codes or less to make the decoder reset the coding dictionary. The GIF standard allows such extra CLEAR codes to be inserted in the image data at any time. The composite data stream is partitioned into sub-blocks that each carry from 1 to 255 bytes.

For the sample 3x5 image above, the following 9-bit codes represent "clear" (100) followed by image pixels in scan order and "stop" (101).

9-bit codes: 100 028 0FF 0FF 0FF 028 0FF 0FF 0FF 0FF 0FF 0FF 0FF 0FF 0FF 0FF 101

After the above codes are mapped to bytes, the uncompressed file differs from the compressed file thus:

     :
    320: 14            20            20 bytes uncompressed image data follow
    321: 00 51 FC FB F7 0F C5 BF 7F FF FE FD FB F7 EF DF BF 7F 01 01
    335: 00                          - end
     :


Compression example

The trivial example of a large image of solid color demonstrates the variable-length LZW compression used in GIF files.

+-------+-------------+--------+
| Code  | Pixels      | Notes  |
+=======+=============+========+
| No.   | Value       | Length |
| N_(i) | N_(i) + 256 | (bits) |
+-------+-------------+--------+
| 0     | 100h        | 9      |
+-------+-------------+--------+
| 1     | FFh         | 1      |
+-------+-------------+--------+
| 2     | 102h        | 2      |
+-------+-------------+--------+
| 3     | 103h        | 3      |
| ⋮     | ⋮           | ⋮      |
| 255   | 1FFh        | 255    |
+-------+-------------+--------+
| 256   | 200h        | 10     |
| ⋮     | ⋮           |        |
| 767   | 3FFh        |        |
+-------+-------------+--------+
| 768   | 400h        | 11     |
| ⋮     | ⋮           |        |
| 1791  | 7FFh        |        |
+-------+-------------+--------+
| 1792  | 800h        | 12     |
| ⋮     | ⋮           |        |
| 3839  | FFFh        |        |
+-------+-------------+--------+
| ⋮     | FFFh        | 3839   |
+-------+-------------+--------+
|       | 101h        |        |
+-------+-------------+--------+

The code values shown are packed into bytes which are then packed into blocks of up to 255 bytes. A block of image data begins with a byte that declares the number of bytes to follow. The last block of data for an image is marked by a zero block-length byte.


Interlacing

The GIF Specification allows each image within the logical screen of a GIF file to specify that it is interlaced; i.e., that the order of the raster lines in its data block is not sequential. This allows a partial display of the image that can be recognized before the full image is painted.

An interlaced image is divided from top to bottom into strips 8 pixels high, and the rows of the image are presented in the following order:

-   Pass 1: Line 0 (the top-most line) from each strip.
-   Pass 2: Line 4 from each strip.
-   Pass 3: Lines 2 and 6 from each strip.
-   Pass 4: Lines 1, 3, 5, and 7 from each strip.

The pixels within each line are not interlaced, but presented consecutively from left to right. As with non-interlaced images, there is no break between the data for one line and the data for the next. The indicator that an image is interlaced is a bit set in the image's header block.


Animated GIF

Newtons_cradle_animation_book_2.gif.]] Animated_GIF_cheloVechek.gif

Although GIF was not designed as an animation medium, its ability to store multiple images in one file naturally suggested using the format to store the frames of an animation sequence. To facilitate _displaying_ animations, the GIF89a spec added the Graphics Control Extension (GCE), which allows the images (frames) in the file to be painted with time delays, forming a video clip. Each frame in an animation GIF is introduced by its own GCE specifying the time delay to wait after the frame is drawn. Global information at the start of the file applies by default to all frames. The data is stream-oriented, so the file offset of the start of each GCE depends on the length of preceding data. Within each frame the LZW-coded image data is arranged in sub-blocks of up to 255 bytes; the size of each sub-block is declared by the byte that precedes it.

By default, an animation displays the sequence of frames only once, stopping when the last frame is displayed. To enable an animation to loop, Netscape in the 1990s used the Application Extension block (intended to allow vendors to add application-specific information to the GIF file) to implement the Netscape Application Block (NAB).[38] This block, placed immediately before the sequence of animation frames, specifies the number of times the sequence of frames should be played or that it should repeat continuously. Support for these repeating animations first appeared in Netscape Navigator version 2.0, and then spread to other browsers.[39] Most browsers now recognize and support NAB, though it is not strictly part of the GIF89a specification.

The following example shows the structure of the animation file _Rotating earth (large).gif_ shown (as a thumbnail) at the top of the article.

The animation delay for each frame is specified in the GCE in hundredths of a second. Some economy of data is possible where a frame need only rewrite a portion of the pixels of the display, because the Image Descriptor can define a smaller rectangle to be rescanned instead of the whole image. Browsers or other displays that do not support animated GIFs typically show only the first frame.

The size and color quality of animated GIF files can vary significantly depending on the application used to create them. Strategies for minimizing file size include using a common global color table for all frames (rather than a complete local color table for each frame) and minimizing the number of pixels covered in successive frames (so that only the pixels that change from one frame to the next are included in the latter frame). Simply packing a series of independent frame images into a composite animation tends to yield large file sizes.

Internet Explorer slows down GIFs if the frame-rate is 20 frames per second or higher and Microsoft reports that Google Chrome and Safari also slow down some GIF animations.[40]

Starting in early 1995, the University of Ulm used animated GIF as live video streaming format to show a controllable model railroad.


Metadata

Metadata can be stored in GIF files as a comment block, a plain text block, or an application-specific application extension block. Several graphics editors use unofficial application extension blocks to include the data used to generate the image, so that it can be recovered for further editing.

All of these methods technically require the metadata to be broken into sub-blocks so that applications can navigate the metadata block without knowing its internal structure.

The Extensible Metadata Platform (XMP) metadata standard introduced an unofficial but now widespread "XMP Data" application extension block for including XMP data in GIF files.[41] Since the XMP data is encoded using UTF-8 without NUL characters, there are no 0 bytes in the data. Rather than break the data into formal sub-blocks, the extension block terminates with a "magic trailer" that routes any application treating the data as sub-blocks to a final 0 byte that terminates the sub-block chain.


Unisys and LZW patent enforcement

In 1977 and 1978, Jacob Ziv and Abraham Lempel published a pair of papers on a new class of lossless data-compression algorithms, now collectively referred to as LZ77 and LZ78. In 1983, Terry Welch developed a fast variant of LZ78 which was named Lempel–Ziv–Welch (LZW).[42][43]

Welch filed a patent application for the LZW method in June 1983. The resulting patent, , granted in December 1985, was assigned to Sperry Corporation who subsequently merged with Burroughs Corporation in 1986 and formed Unisys.[44] Further patents were obtained in the United Kingdom, France, Germany, Italy, Japan and Canada.

In addition to the above patents, Welch's 1983 patent also includes citations to several other patents that influenced it, including two 1980 Japanese patents (JP9343880A and JP17790880A) from NEC's Jun Kanatsu, (1974) from John S. Hoerning, (1977) from Klaus E. Holtz, and a 1981 Dutch patent (DE19813118676) from Karl Eckhart Heinz.[45]

In June 1984, an article by Welch was published in the IEEE magazine which publicly described the LZW technique for the first time.[46] LZW became a popular data compression technique and, when the patent was granted, Unisys entered into licensing agreements with over a hundred companies.[47][48]

The popularity of LZW led CompuServe to choose it as the compression technique for their version of GIF, developed in 1987. At the time, CompuServe was not aware of the patent.[49] Unisys became aware that the version of GIF used the LZW compression technique and entered into licensing negotiations with CompuServe in January 1993. The subsequent agreement was announced on 24 December 1994.[50] Unisys stated that they expected all major commercial on-line information services companies employing the LZW patent to license the technology from Unisys at a reasonable rate, but that they would not require licensing, or fees to be paid, for non-commercial, non-profit GIF-based applications, including those for use on the on-line services.[51]

Following this announcement, there was widespread condemnation of CompuServe and Unisys, and many software developers threatened to stop using GIF. The PNG format (see below) was developed in 1995 as an intended replacement.[52][53][54] However, obtaining support from the makers of Web browsers and other software for the PNG format proved difficult and it was not possible to replace GIF, although PNG has gradually increased in popularity.[55] Therefore, GIF variations without LZW compression were developed. For instance the libungif library, based on Eric S. Raymond's giflib, allows creation of GIFs that followed the data format but avoided the compression features, thus avoiding use of the Unisys LZW patent.[56] A 2001 _Dr. Dobb's_ article described another alternative to LZW compression, based on square roots.[57]

In August 1999, Unisys changed the details of their licensing practice, announcing the option for owners of certain non-commercial and private websites to obtain licenses on payment of a one-time license fee of $5000 or $7500.[58] Such licenses were not required for website owners or other GIF users who had used licensed software to generate GIFs. Nevertheless, Unisys was subjected to thousands of online attacks and abusive emails from users believing that they were going to be charged $5000 or sued for using GIFs on their websites.[59] Despite giving free licenses to hundreds of non-profit organizations, schools and governments, Unisys was completely unable to generate any good publicity and continued to be condemned by individuals and organizations such as the League for Programming Freedom who started the "Burn All GIFs" campaign in 1999.[60][61]

The United States LZW patent expired on 20 June 2003.[62] The counterpart patents in the United Kingdom, France, Germany and Italy expired on 18 June 2004, the Japanese patents expired on 20 June 2004, and the Canadian patent expired on 7 July 2004.[63] Consequently, while Unisys has further patents and patent applications relating to improvements to the LZW technique,[64] GIF may now be used freely.[65]


Alternatives

PNG

Portable Network Graphics (PNG) was designed as a replacement for GIF in order to avoid infringement of Unisys' patent on the LZW compression technique.[66] PNG offers better compression and more features than GIF,[67] animation being the only significant exception. PNG is more suitable than GIF in instances where true-color imaging and alpha transparency are required.

Although support for PNG format came slowly, new web browsers generally support PNG. Older versions of Internet Explorer do not support all features of PNG. Versions 6 and earlier do not support alpha channel transparency without using Microsoft-specific HTML extensions.[68] Gamma correction of PNG images was not supported before version 8, and the display of these images in earlier versions may have the wrong tint.[69]

For identical 8-bit (or lower) image data, PNG files are typically smaller than the equivalent GIFs, due to the more efficient compression techniques used in PNG encoding.[70] Complete support for GIF is complicated chiefly by the complex canvas structure it allows, though this is what enables the compact animation features.

Animation formats

MNG ("Multiple-image Network Graphics") was originally developed as a PNG-based solution for animations. MNG reached version 1.0 in 2001, but few applications support it.

In 2006, an extension to the PNG format called APNG ("Animated Portable Network Graphics") was proposed as alternative to the MNG format by Mozilla. APNG provide the ability to animate PNG files, while retaining backwards compatibility in decoders that cannot understand the animation chunk (unlike MNG). Older decoders will simply render the first frame of the animation. The PNG group officially rejected APNG as an official extension on April 20, 2007.[71] There have been several subsequent proposals for a simple animated graphics format based on PNG using several different approaches.[72] Nevertheless, Animated Portable Network Graphics is still under development by Mozilla and is supported in Firefox 3[73][74] while MNG support was dropped.[75][76] APNG is currently supported by most major web browsers including Chrome since version 59.0 and Opera and Firefox.

Embedded Adobe Flash objects and MPEGs are used on some websites to display simple video, but require the use of an additional browser plugin. WebM and WebP are in development and are supported by some web browsers.[77] Other options for web animation include serving individual frames using AJAX, or animating SVG images using JavaScript or SMIL ("Synchronized Multimedia Integration Language").

With the introduction of widespread support of the HTML5

tag in most web browsers, some websites use a looped version of the video tag generated by JavaScript functions. This gives the appearance of a GIF, but with the size and speed advantages of compressed video. Notable examples are Gfycat and Imgur and their GIFV metaformat, which is really a video tag playing a looped MP4 or WebM compressed video.[78]


See also

-   Cinemagraph, a partially animated photograph often in GIF
-   Comparison of graphics file formats
-   Comparison of layout engines (graphics)
-   GIF art, a form of digital art associated with GIF
-   GNU plotutils (supports pseudo-GIF, which uses run-length encoding rather than LZW)
-   Microsoft GIF Animator, a free program to create simple animated GIFs
-   Software patent


References


External links

-   The GIFLIB project
-   spec-gif89a.txt GIF 89a specification on w3.org
-   GIF 89a specification reformatted into HTML
-   LZW and GIF explained
-   Animated GIFs: a 6-minute documentary produced by Off Book (web series)
-   GifCities (The GeoCities Animated GIF Search Engine)

Category:Raster graphics file formats Category:CompuServe Category:Open formats Category:Computer-related introductions in 1987

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

[17]

[18]

[19]

[20]  (part of the Macintosh built-in dictionaries).

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

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]  – archived by League for Programming Freedom

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]  – clarification of 2 September 1999

[59] Unisys Not Suing (most) Webmasters for Using GIFs – Slashdot investigation into the controversy

[60]

[61] Burn All GIFs – A project of the League for Programming Freedom (latest version)

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74] Mozilla Labs » Blog Archive » Better animations in Firefox 3

[75]

[76]

[77]

[78]