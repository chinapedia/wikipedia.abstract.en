Pixel-example.png Closeup_of_pixels.JPG screen]]

In digital imaging, a PIXEL, PEL,[1] or PICTURE ELEMENT[2] is a physical point in a raster image, or the smallest addressable element in an all points addressable display device; so it is the smallest controllable element of a picture represented on the screen.

Each pixel is a sample of an original image; more samples typically provide more accurate representations of the original. The intensity of each pixel is variable. In color imaging systems, a color is typically represented by three or four component intensities such as red, green, and blue, or cyan, magenta, yellow, and black.

In some contexts (such as descriptions of camera sensors), _pixel_ refers to a single scalar element of a multi-component representation (called a _photosite_ in the camera sensor context, although _sensel_ is sometimes used),[3] while in yet other contexts it may refer to the set of component intensities for a spatial position.

The word _pixel_ is a portmanteau of _pix_ (from "pictures", shortened to "pics") and _el_ (for "element"); similar formations with '_el_' include the words _voxel_[4] and _texel_.[5]


Etymology

The word "pixel" was first published in 1965 by Frederic C. Billingsley of JPL, to describe the picture elements of video images from space probes to the Moon and Mars.[6] Billingsley had learned the word from Keith E. McFarland, at the Link Division of General Precision in Palo Alto, who in turn said he did not know where it originated. McFarland said simply it was "in use at the time" (circa 1963).[7]

The word is a combination of _pix_, for picture, and _element_. The word _pix_ appeared in _Variety_ magazine headlines in 1932, as an abbreviation for the word _pictures_, in reference to movies.[8] By 1938, "pix" was being used in reference to still pictures by photojournalists.[9]

The concept of a "picture element" dates to the earliest days of television, for example as "_Bildpunkt_" (the German word for _pixel_, literally 'picture point') in the 1888 German patent of Paul Nipkow. According to various etymologies, the earliest publication of the term _picture element_ itself was in _Wireless World_ magazine in 1927,[10] though it had been used earlier in various U.S. patents filed as early as 1911.[11]

Some authors explain _pixel_ as _picture cell,_ as early as 1972.[12] In graphics and in image and video processing, _pel_ is often used instead of _pixel_.[13] For example, IBM used it in their Technical Reference for the original PC.

Pixels, abbreviated as "px", are also a unit of measurement commonly used in graphic and web design, equivalent to roughly . This measurement is used to make sure a given element will display as the same size no matter what screen resolution views it.[14]

Pixilation, spelled with a second _i_, is an unrelated filmmaking technique that dates to the beginnings of cinema, in which live actors are posed frame by frame and photographed to create stop-motion animation. An archaic British word meaning "possession by spirits (pixies)", the term has been used to describe the animation process since the early 1950s; various animators, including Norman McLaren and Grant Munro, are credited with popularizing it.[15]


Technical

ReconstructionsFromPixels.png

thought of as the smallest single component of a digital image. However, the definition is highly context-sensitive. For example, there can be "printed pixels" in a page, or pixels carried by electronic signals, or represented by digital values, or pixels on a display device, or pixels in a digital camera (photosensor elements). This list is not exhaustive and, depending on context, synonyms include pel, sample, byte, bit, dot, and spot. _Pixels_ can be used as a unit of measure such as: 2400 pixels per inch, 640 pixels per line, or spaced 10 pixels apart.

The measures dots per inch (dpi) and pixels per inch (ppi) are sometimes used interchangeably, but have distinct meanings, especially for printer devices, where dpi is a measure of the printer's density of dot (e.g. ink droplet) placement.[16] For example, a high-quality photographic image may be printed with 600 ppi on a 1200 dpi inkjet printer.[17] Even higher dpi numbers, such as the 4800 dpi quoted by printer manufacturers since 2002, do not mean much in terms of achievable resolution.[18]

The more pixels used to represent an image, the closer the result can resemble the original. The number of pixels in an image is sometimes called the resolution, though resolution has a more specific definition. Pixel counts can be expressed as a single number, as in a "three-megapixel" digital camera, which has a nominal three million pixels, or as a pair of numbers, as in a "640 by 480 display", which has 640 pixels from side to side and 480 from top to bottom (as in a VGA display), and therefore has a total number of 640×480 = 307,200 pixels or 0.3 megapixels.

The pixels, or color samples, that form a digitized image (such as a JPEG file used on a web page) may or may not be in one-to-one correspondence with screen pixels, depending on how a computer displays an image. In computing, an image composed of pixels is known as a _bitmapped image_ or a _raster image_. The word _raster_ originates from television scanning patterns, and has been widely used to describe similar halftone printing and storage techniques.

Sampling patterns

For convenience, pixels are normally arranged in a regular two-dimensional grid. By using this arrangement, many common operations can be implemented by uniformly applying the same operation to each pixel independently. Other arrangements of pixels are possible, with some sampling patterns even changing the shape (or kernel) of each pixel across the image. For this reason, care must be taken when acquiring an image on one device and displaying it on another, or when converting image data from one pixel format to another.

For example: Wikipedia_ClearType.png using subpixels]]

-   LCD screens typically use a staggered grid, where the red, green, and blue components are sampled at slightly different locations. Subpixel rendering is a technology which takes advantage of these differences to improve the rendering of text on LCD screens.
-   The vast majority of color digital cameras use a Bayer filter, resulting in a regular grid of pixels where the _color_ of each pixel depends on its position on the grid.
-   A clipmap uses a hierarchical sampling pattern, where the size of the support of each pixel depends on its location within the hierarchy.
-   Warped grids are used when the underlying geometry is non-planar, such as images of the earth from space.[19]
-   The use of non-uniform grids is an active research area, attempting to bypass the traditional Nyquist limit.[20]
-   Pixels on computer monitors are normally "square" (that is, have equal horizontal and vertical sampling pitch); pixels in other systems are often "rectangular" (that is, have unequal horizontal and vertical sampling pitch – oblong in shape), as are digital video formats with diverse aspect ratios, such as the anamorphic widescreen formats of the Rec. 601 digital video standard.

Resolution of computer monitors

Computers can use pixels to display an image, often an abstract image that represents a GUI. The resolution of this image is called the display resolution and is determined by the video card of the computer. LCD monitors also use pixels to display an image, and have a native resolution. Each pixel is made up of triads, with the number of these triads determining the native resolution. On some CRT monitors, the beam sweep rate may be fixed, resulting in a fixed native resolution. Most CRT monitors do not have a fixed beam sweep rate, meaning they do not have a native resolution at all - instead they have a set of resolutions that are equally well supported. To produce the sharpest images possible on an LCD, the user must ensure the display resolution of the computer matches the native resolution of the monitor.

Resolution of telescopes

The pixel scale used in astronomy is the angular distance between two objects on the sky that fall one pixel apart on the detector (CCD or infrared chip). The scale _s_ measured in radians is the ratio of the pixel spacing _p_ and focal length _f_ of the preceding optics, _s_=_p/f_. (The focal length is the product of the focal ratio by the diameter of the associated lens or mirror.) Because _p_ is usually expressed in units of arcseconds per pixel, because 1 radian equals _180/π*3600≈206,265_ arcseconds, and because diameters are often given in millimeters and pixel sizes in micrometers which yields another factor of 1,000, the formula is often quoted as _s=206p/f_.

Bits per pixel

The number of distinct colors that can be represented by a pixel depends on the number of bits per pixel (bpp). A 1 bpp image uses 1-bit for each pixel, so each pixel can be either on or off. Each additional bit doubles the number of colors available, so a 2 bpp image can have 4 colors, and a 3 bpp image can have 8 colors:

-   1 bpp, 2¹ = 2 colors (monochrome)
-   2 bpp, 2² = 4 colors
-   3 bpp, 2³ = 8 colors
-   …
-   8 bpp, 2⁸ = 256 colors
-   16 bpp, 2¹⁶ = 65,536 colors ("Highcolor" )
-   24 bpp, 2²⁴ = 16,777,216 colors ("Truecolor")

For color depths of 15 or more bits per pixel, the depth is normally the sum of the bits allocated to each of the red, green, and blue components. Highcolor, usually meaning 16 bpp, normally has five bits for red and blue each, and six bits for green, as the human eye is more sensitive to errors in green than in the other two primary colors. For applications involving transparency, the 16 bits may be divided into five bits each of red, green, and blue, with one bit left for transparency. A 24-bit depth allows 8 bits per component. On some systems, 32-bit depth is available: this means that each 24-bit pixel has an extra 8 bits to describe its opacity (for purposes of combining with another image).

Subpixels

Pixel_geometry_01_Pengo.jpg dots in the color display of CRTs (top row) bear no relation to pixels or subpixels.]]

Many display and image-acquisition systems are not capable of displaying or sensing the different color channels at the same site. Therefore, the pixel grid is divided into single-color regions that contribute to the displayed or sensed color when viewed at a distance. In some displays, such as LCD, LED, and plasma displays, these single-color regions are separately addressable elements, which have come to be known as SUBPIXELS.[21] For example, LCDs typically divide each pixel vertically into three subpixels. When the square pixel is divided into three subpixels, each subpixel is necessarily rectangular. In display industry terminology, subpixels are often referred to as _pixels_, as they are the basic addressable elements in a viewpoint of hardware, and hence _pixel circuits_ rather than _subpixel circuits_ is used.

Most digital camera image sensors use single-color sensor regions, for example using the Bayer filter pattern, and in the camera industry these are known as _pixels_ just like in the display industry, not _subpixels_.

For systems with subpixels, two different approaches can be taken:

-   The subpixels can be ignored, with full-color pixels being treated as the smallest addressable imaging element; or
-   The subpixels can be included in rendering calculations, which requires more analysis and processing time, but can produce apparently superior images in some cases.

This latter approach, referred to as subpixel rendering, uses knowledge of pixel geometry to manipulate the three colored subpixels separately, producing an increase in the apparent resolution of color displays. While CRT displays use red-green-blue-masked phosphor areas, dictated by a mesh grid called the shadow mask, it would require a difficult calibration step to be aligned with the displayed pixel raster, and so CRTs do not currently use subpixel rendering.

The concept of subpixels is related to samples.


Megapixel

Sensorauflösungen.svgA MEGAPIXEL (MP) is a million pixels; the term is used not only for the number of pixels in an image, but also to express the number of image sensor elements of digital cameras or the number of display elements of digital displays. For example, a camera that makes a 2048×1536 pixel image (3,145,728 finished image pixels) typically uses a few extra rows and columns of sensor elements and is commonly said to have "3.2 megapixels" or "3.4 megapixels", depending on whether the number reported is the "effective" or the "total" pixel count.[22]

Digital cameras use photosensitive electronics, either charge-coupled device (CCD) or complementary metal–oxide–semiconductor (CMOS) image sensors, consisting of a large number of single sensor elements, each of which records a measured intensity level. In most digital cameras, the sensor array is covered with a patterned color filter mosaic having red, green, and blue regions in the Bayer filter arrangement, so that each sensor element can record the intensity of a single primary color of light. The camera interpolates the color information of neighboring sensor elements, through a process called demosaicing, to create the final image. These sensor elements are often called "pixels", even though they only record 1 channel (only red, or green, or blue) of the final color image. Thus, two of the three color channels for each sensor must be interpolated and a so-called _N-megapixel_ camera that produces an N-megapixel image provides only one-third of the information that an image of the same size could get from a scanner. Thus, certain color contrasts may look fuzzier than others, depending on the allocation of the primary colors (green has twice as many elements as red or blue in the Bayer arrangement).

DxO Labs invented the Perceptual MegaPixel (P-MPix) to measure the sharpness that a camera produces when paired to a particular lens – as opposed to the MP a manufacturer states for a camera product which is based only on the camera's sensor. The new P-MPix claims to be a more accurate and relevant value for photographers to consider when weighing-up camera sharpness.[23] As of mid-2013, the Sigma 35 mm f/1.4 DG HSM lens mounted on a Nikon D800 has the highest measured P-MPix. However, with a value of 23 MP, it still wipes-off more than one-third of the D800's 36.3 MP sensor.[24]

One new method to add megapixels has been introduced in a Micro Four Thirds System camera which only uses a 16 MP sensor, but can produce a 64 MP RAW (40 MP JPEG) image by making two exposures, shifting the sensor by a half pixel between them. Using a tripod to take level multi-shots within an instance, the multiple 16 MP images are then generated into a unified 64 MP image.[25]


See also

-   Computer display standard
-   Dexel
-   Gigapixel image
-   Image resolution
-   Intrapixel and Interpixel processing
-   LCD crosstalk
-   PenTile matrix family
-   Pixel advertising
-   Pixel art
-   Pixel art scaling algorithms
-   Pixel aspect ratio
-   Point (typography)
-   Glossary of video terms
-   Voxel


References


External links

-   A Pixel Is Not A Little Square: Microsoft Memo by computer graphics pioneer Alvy Ray Smith.
-   Video of Lyon's talk on pixel history at the Computer History Museum
-   Square and non-Square Pixels: Technical info on pixel aspect ratios of modern video standards (480i, 576i, 1080i, 720p), plus software implications.
-   120 Megapixel is here now: A lot of information about MegaPixel and Gigapixel.
-   How a TV Works in Slow Motion - The Slow Mo Guys – YouTube video by The Slow Mo Guys

Category:Computer graphics data structures Category:Digital geometry Category:Digital imaging Category:Digital photography Category:Display technology Category:Image processing Category:Television technology

[1]

[2]

[3]

[4]

[5]

[6] Fred C. Billingsley, "Processing Ranger and Mariner Photography," in _Computerized Imaging Techniques, Proceedings of SPIE_, Vol. 0010, pp. XV-1–19, Jan. 1967 (Aug. 1965, San Francisco).

[7] Lyon, Richard F. (2006). A brief history of 'pixel' . IS&T/SPIE Symposium on Electronic Imaging.

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

[20]

[21]

[22]

[23]

[24]

[25]