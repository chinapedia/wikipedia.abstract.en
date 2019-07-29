RGB_illumination.jpg lights on a white screen shows secondary colors where two overlap; the combination of all three of red, green, and blue in equal intensities makes white.]] Additive_colors.ogv

The RGB COLOR MODEL is an additive color model[1] in which red, green and blue light are added together in various ways to reproduce a broad array of colors. The name of the model comes from the initials of the three additive primary colors, red, green, and blue.

The main purpose of the RGB color model is for the sensing, representation, and display of images in electronic systems, such as televisions and computers, though it has also been used in conventional photography. Before the electronic age, the RGB color model already had a solid theory behind it, based in human perception of colors.

RGB is a _device-dependent_ color model: different devices detect or reproduce a given RGB value differently, since the color elements (such as phosphors or dyes) and their response to the individual R, G, and B levels vary from manufacturer to manufacturer, or even in the same device over time. Thus an RGB value does not define the same _color_ across devices without some kind of color management.

Typical RGB input devices are color TV and video cameras, image scanners, and digital cameras. Typical RGB output devices are TV sets of various technologies (CRT, LCD, plasma, OLED, quantum dots, etc.), computer and mobile phone displays, video projectors, multicolor LED displays and large screens such as Jumbotron. Color printers, on the other hand are not RGB devices, but subtractive color devices (typically CMYK color model).

This article discusses concepts common to all the different color spaces that use the RGB color model, which are used in one implementation or another in color image-producing technology.


Additive colors

AdditiveColor.svg Color_wheel_circle.png, orange, yellow, chartreuse, green, spring, cyan, azure, blue, violet, magenta, and rose]]

To form a color with RGB, three light beams (one red, one green, and one blue) must be superimposed (for example by emission from a black screen or by reflection from a white screen). Each of the three beams is called a _component_ of that color, and each of them can have an arbitrary intensity, from fully off to fully on, in the mixture.

The RGB color model is _additive_ in the sense that the three light beams are added together, and their light spectra add, wavelength for wavelength, to make the final color's spectrum.[2][3] This is essentially opposite to the subtractive color model, particularly the CMY color model, that applies to paints, inks, dyes, and other substances whose color depends on _reflecting_ the light under which we see them. Because of properties, these three colors create white, this is in stark contrast to physical colors, such as dyes which create black when mixed.

Zero intensity for each component gives the darkest color (no light, considered the _black_), and full intensity of each gives a white; the _quality_ of this white depends on the nature of the primary light sources, but if they are properly balanced, the result is a neutral white matching the system's white point. When the intensities for all the components are the same, the result is a shade of gray, darker or lighter depending on the intensity. When the intensities are different, the result is a colorized hue, more or less saturated depending on the difference of the strongest and weakest of the intensities of the primary colors employed.

When one of the components has the strongest intensity, the color is a hue near this primary color (red-ish, green-ish, or blue-ish), and when two components have the same strongest intensity, then the color is a hue of a secondary color (a shade of cyan, magenta or yellow). A secondary color is formed by the sum of two primary colors of equal intensity: cyan is green+blue, magenta is blue+red, and yellow is red+green. Every secondary color is the _complement_ of one primary color; when a primary and its complementary secondary color are added together, the result is white: cyan complements red, magenta complements green, and yellow complements blue.

The RGB color model itself does not define what is meant by _red_, _green_ and _blue_ colorimetrically, and so the results of mixing them are not specified as absolute, but relative to the primary colors. When the exact chromaticities of the red, green, and blue primaries are defined, the color model then becomes an absolute color space, such as sRGB or Adobe RGB; see RGB color spaces for more details.


Physical principles for the choice of red, green, and blue

CIExy1931_sRGB_gamut_D65.png primaries, define a color triangle; only colors within this triangle can be reproduced by mixing the primary colors. Colors outside the color triangle are therefore shown here as gray. The primaries and the D65 white point of sRGB are shown.]] The choice of primary colors is related to the physiology of the human eye; good primaries are stimuli that maximize the difference between the responses of the cone cells of the human retina to light of different wavelengths, and that thereby make a large color triangle.[4]

The normal three kinds of light-sensitive photoreceptor cells in the human eye (cone cells) respond most to yellow (long wavelength or L), green (medium or M), and violet (short or S) light (peak wavelengths near 570 nm, 540 nm and 440 nm, respectively[5]). The difference in the signals received from the three kinds allows the brain to differentiate a wide gamut of different colors, while being most sensitive (overall) to yellowish-green light and to differences between hues in the green-to-orange region.

As an example, suppose that light in the orange range of wavelengths (approximately 577 nm to 597 nm) enters the eye and strikes the retina. Light of these wavelengths would activate both the medium and long wavelength cones of the retina, but not equally—the long-wavelength cells will respond more. The difference in the response can be detected by the brain, and this difference is the basis of our perception of orange. Thus, the orange appearance of an object results from light from the object entering our eye and stimulating the different cones simultaneously but to different degrees.

Use of the three primary colors is not sufficient to reproduce _all_ colors; only colors within the color triangle defined by the chromaticities of the primaries can be reproduced by additive mixing of non-negative amounts of those colors of light.[6] {{-}}


History of RGB color model theory and usage

The RGB color model is based on the Young–Helmholtz theory of trichromatic color vision, developed by Thomas Young and Hermann von Helmholtz in the early to mid-nineteenth century, and on James Clerk Maxwell's color triangle that elaborated that theory (circa 1860).

Photography

The first experiments with RGB in early color photography were made in 1861 by Maxwell himself, and involved the process of combining three color-filtered separate takes.[7] To reproduce the color photograph, three matching projections over a screen in a dark room were necessary.

The additive RGB model and variants such as orange–green–violet were also used in the Autochrome Lumière color plates and other screen-plate technologies such as the Joly color screen and the Paget process in the early twentieth century. Color photography by taking three separate plates was used by other pioneers, such as the Russian Sergey Prokudin-Gorsky in the period 1909 through 1915.[8] Such methods lasted until about 1960 using the expensive and extremely complex tri-color carbro Autotype process.[9]

When employed, the reproduction of prints from three-plate photos was done by dyes or pigments using the complementary CMY model, by simply using the negative plates of the filtered takes: reverse red gives the cyan plate, and so on.

Television

Before the development of practical electronic TV, there were patents on mechanically scanned color systems as early as 1889 in Russia. The color TV pioneer John Logie Baird demonstrated the world's first RGB color transmission in 1928, and also the world's first color broadcast in 1938, in London. In his experiments, scanning and display were done mechanically by spinning colorized wheels.[10][11]

The Columbia Broadcasting System (CBS) began an experimental RGB field-sequential color system in 1940. Images were scanned electrically, but the system still used a moving part: the transparent RGB color wheel rotating at above 1,200 rpm in synchronism with the vertical scan. The camera and the cathode-ray tube (CRT) were both monochromatic. Color was provided by color wheels in the camera and the receiver.[12][13][14] More recently, color wheels have been used in field-sequential projection TV receivers based on the Texas Instruments monochrome DLP imager.

The modern RGB shadow mask technology for color CRT displays was patented by Werner Flechsig in Germany in 1938.[15]

Personal computers

Early personal computers of the late 1970s and early 1980s, such as those from Apple, and Commodore's Commodore VIC-20, used composite video whereas the Commodore 64 and the Atari family used S-Video derivatives. IBM introduced a 16-color scheme (four bits—one bit each for red, green, blue, and intensity) with the Color Graphics Adapter (CGA) for its first IBM PC (1981), later improved with the Enhanced Graphics Adapter (EGA) in 1984. The first manufacturer of a truecolor graphics card for PCs (the TARGA) was Truevision in 1987, but it was not until the arrival of the Video Graphics Array (VGA) in 1987 that RGB became popular, mainly due to the analog signals in the connection between the adapter and the monitor which allowed a very wide range of RGB colors. Actually, it had to wait a few more years because the original VGA cards were palette-driven just like EGA, although with more freedom than VGA, but because the VGA connectors were analog, later variants of VGA (made by various manufacturers under the informal name Super VGA) eventually added true-color. In 1992, magazines heavily advertised true-color Super VGA hardware.


RGB devices

RGB and displays

CRT_color_enhanced.png RGB_color_wheel_10.svg RGB_pixels_on_a_CRT_monitor.jpg dots in a CRT monitor]] RGB_pixels.jpgs in an LCD TV (on the right: an orange and a blue color; on the left: a close-up)]]

One common application of the RGB color model is the display of colors on a cathode ray tube (CRT), liquid-crystal display (LCD), plasma display, or organic light emitting diode (OLED) display such as a television, a computer's monitor, or a large scale screen. Each pixel on the screen is built by driving three small and very close but still separated RGB light sources. At common viewing distance, the separate sources are indistinguishable, which tricks the eye to see a given solid color. All the pixels together arranged in the rectangular screen surface conforms the color image.

During digital image processing each pixel can be represented in the computer memory or interface hardware (for example, a _graphics card_) as binary values for the red, green, and blue color components. When properly managed, these values are converted into intensities or voltages via gamma correction to correct the inherent nonlinearity of some devices, such that the intended intensities are reproduced on the display.

The Quattron released by Sharp uses RGB color and adds yellow as a sub-pixel, supposedly allowing an increase in the number of available colors.

Video electronics

RGB is also the term referring to a type of component video signal used in the video electronics industry. It consists of three signals—red, green, and blue—carried on three separate cables/pins. RGB signal formats are often based on modified versions of the RS-170 and RS-343 standards for monochrome video. This type of video signal is widely used in Europe since it is the best quality signal that can be carried on the standard SCART connector. This signal is known as RGBS (4 BNC/RCA terminated cables exist as well), but it is directly compatible with RGBHV used for computer monitors (usually carried on 15-pin cables terminated with 15-pin D-sub or 5 BNC connectors), which carries separate horizontal and vertical sync signals.

Outside Europe, RGB is not very popular as a video signal format; S-Video takes that spot in most non-European regions. However, almost all computer monitors around the world use RGB.

Video framebuffer

A framebuffer is a digital device for computers which stores data in the so-called _video memory_ (comprising an array of Video RAM or similar chips). This data goes either to three digital-to-analog converters (DACs) (for analog monitors), one per primary color or directly to digital monitors. Driven by software, the CPU (or other specialized chips) write the appropriate bytes into the video memory to define the image. Modern systems encode pixel color values by devoting eight bits to each of the R, G, and B components. RGB information can be either carried directly by the pixel bits themselves or provided by a separate COLOR LOOK-UP TABLE (CLUT) if indexed color graphic modes are used.

A CLUT is a specialized RAM that stores R, G, and B values that define specific colors. Each color has its own address (index)—consider it as a descriptive reference number that provides that specific color when the image needs it. The content of the CLUT is much like a palette of colors. Image data that uses indexed color specifies addresses within the CLUT to provide the required R, G, and B values for each specific pixel, one pixel at a time. Of course, before displaying, the CLUT has to be loaded with R, G, and B values that define the palette of colors required for each image to be rendered. Some video applications store such palettes in PAL files (_Age of Empires_ game, for example, uses over half-a-dozen[16]) and can combine CLUTs on screen.

RGB24 and RGB32

This indirect scheme restricts the number of available colors in an image CLUT—typically 256-cubed (8 bits in three color channels with values of 0–255)—although each color in the RGB24 CLUT table has only 8 bits representing 256 codes for each of the R, G, and B primaries combinatorial math theory says this means that any given color can be one of 16,777,216 possible colors. However, the advantage is that an indexed-color image file can be significantly smaller than it would be with only 8 bits per pixel for each primary.

Modern storage, however, is far less costly, greatly reducing the need to minimize image file size. By using an appropriate combination of red, green, and blue intensities, many colors can be displayed. Current typical display adapters use up to 24-bits of information for each pixel: 8-bit per component multiplied by three components (see the Digital representations section below (24bits = 256³, each primary value of 8 bits with values of 0–255). With this system, 16,777,216 (256³ or 2²⁴) discrete combinations of R, G, and B values are allowed, providing millions of different (though not necessarily distinguishable) hue, saturation and lightness shades. Increased shading has been implemented in various ways, some formats such as .png and .tga files among others using a fourth greyscale color channel as a masking layer, often called RGB32.

For images with a modest range of brightnesses from the darkest to the lightest, eight bits per primary color provides good-quality images, but extreme images require more bits per primary color as well as the advanced display technology. For more information see High Dynamic Range (HDR) imaging.

Nonlinearity

In classic cathode ray tube (CRT) devices, the brightness of a given point over the fluorescent screen due to the impact of accelerated electrons is not proportional to the voltages applied to the electron gun control grids, but to an expansive function of that voltage. The amount of this deviation is known as its gamma value (γ), the argument for a power law function, which closely describes this behavior. A linear response is given by a gamma value of 1.0, but actual CRT nonlinearities have a gamma value around 2.0 to 2.5.

Similarly, the intensity of the output on TV and computer display devices is not directly proportional to the R, G, and B applied electric signals (or file data values which drive them through digital-to-analog converters). On a typical standard 2.2-gamma CRT display, an input intensity RGB value of (0.5, 0.5, 0.5) only outputs about 22% of full brightness (1.0, 1.0, 1.0), instead of 50%.[17] To obtain the correct response, a gamma correction is used in encoding the image data, and possibly further corrections as part of the color calibration process of the device. Gamma affects black-and-white TV as well as color. In standard color TV, broadcast signals are gamma corrected.

RGB and cameras

Bayer_pattern_on_sensor.svg arrangement of color filters on the pixel array of a digital image sensor]]

In color television and video cameras manufactured before the 1990s, the incoming light was separated by prisms and filters into the three RGB primary colors feeding each color into a separate video camera tube (or _pickup tube_). These tubes are a type of cathode ray tube, not to be confused with that of CRT displays.

With the arrival of commercially viable charge-coupled device (CCD) technology in the 1980s, first, the pickup tubes were replaced with this kind of sensor. Later, higher scale integration electronics was applied (mainly by Sony), simplifying and even removing the intermediate optics, thereby reducing the size of home video cameras and eventually leading to the development of full camcorders. Current webcams and mobile phones with cameras are the most miniaturized commercial forms of such technology.

Photographic digital cameras that use a CMOS or CCD image sensor often operate with some variation of the RGB model. In a Bayer filter arrangement, green is given twice as many detectors as red and blue (ratio 1:2:1) in order to achieve higher luminance resolution than chrominance resolution. The sensor has a grid of red, green, and blue detectors arranged so that the first row is RGRGRGRG, the next is GBGBGBGB, and that sequence is repeated in subsequent rows. For every channel, missing pixels are obtained by interpolation in the demosaicing process to build up the complete image. Also, other processes used to be applied in order to map the camera RGB measurements into a standard RGB color space as sRGB.

RGB and scanners

In computing, an image scanner is a device that optically scans images (printed text, handwriting, or an object) and converts it to a digital image which is transferred to a computer. Among other formats, flat, drum and film scanners exist, and most of them support RGB color. They can be considered the successors of early telephotography input devices, which were able to send consecutive scan lines as analog amplitude modulation signals through standard telephonic lines to appropriate receivers; such systems were in use in press since the 1920s to the mid-1990s. Color telephotographs were sent as three separated RGB filtered images consecutively.

Currently available scanners typically use charge-coupled device (CCD) or contact image sensor (CIS) as the image sensor, whereas older drum scanners use a photomultiplier tube as the image sensor. Early color film scanners used a halogen lamp and a three-color filter wheel, so three exposures were needed to scan a single color image. Due to heating problems, the worst of them being the potential destruction of the scanned film, this technology was later replaced by non-heating light sources such as color LEDs.


Numeric representations

RGB_sliders.svg ranges from 0 to 255.]] Palette_of_125_main_colors_with_RGB_components_divisible_by_64.gif A color in the RGB color model is described by indicating how much of each of the red, green, and blue is included. The color is expressed as an RGB triplet (_r_,_g_,_b_), each component of which can vary from zero to a defined maximum value. If all the components are at zero the result is black; if all are at maximum, the result is the brightest representable white.

These ranges may be quantified in several different ways:

-   From 0 to 1, with any fractional value in between. This representation is used in theoretical analyses, and in systems that use floating point representations.
-   Each color component value can also be written as a percentage, from 0% to 100%.
-   In computers, the component values are often stored as integer numbers in the range 0 to 255, the range that a single 8-bit byte can offer. These are often represented as either decimal or hexadecimal numbers.
-   High-end digital image equipment are often able to deal with larger integer ranges for each primary color, such as 0..1023 (10 bits), 0..65535 (16 bits) or even larger, by extending the 24-bits (three 8-bit values) to 32-bit, 48-bit, or 64-bit units (more or less independent from the particular computer's word size).

For example, brightest saturated RED is written in the different RGB notations as:



        {| class="wikitable"

! Notation ! RGB triplet |- | Arithmetic | (1.0, 0.0, 0.0) |- | Percentage | (100%, 0%, 0%) |- | Digital 8-bit per channel | (255, 0, 0) or sometimes
#FF0000 (hexadecimal) |- | Digital 12-bit per channel | (4095, 0, 0) |- | Digital 16-bit per channel | (65535, 0, 0) |- | Digital 24-bit per channel | (16777215, 0, 0) |- | Digital 32-bit per channel | (4294967295, 0, 0) |}

In many environments, the component values within the ranges are not managed as linear (that is, the numbers are nonlinearly related to the intensities that they represent), as in digital cameras and TV broadcasting and receiving due to gamma correction, for example.[18] Linear and nonlinear transformations are often dealt with via digital image processing. Representations with only 8 bits per component are considered sufficient if gamma encoding is used.[19]

Following is the mathematical relationship between RGB space to HSI space (hue, saturation, and intensity: HSI color space):

$\begin{align}
I & = \frac{R+G+B}{3} \\
S & = 1\, -\, \frac{3}{(R+G+B)}\, \min(R,G,B) \\
H & = \cos^{-1} \left(\frac{(R-G)+(R-B)}{2\sqrt {(R-G)^2 + (R-B)(G-B)}}\right) \qquad  \text{assuming  } G > B
\end{align}$

If B > G , then H = 360 − H.

Color depth

The RGB color model is one of the most common ways to encode color in computing, and several different binary digital representations are in use. The main characteristic of all of them is the quantization of the possible values per component (technically a _sample_ ) by using only integer numbers within some range, usually from 0 to some power of two minus one (2^(_n_) − 1) to fit them into some bit groupings. Encodings of 1, 2, 4, 5, 8 and 16 bits per color are commonly found; the total number of bits used for an RGB color is typically called the color depth.


Geometric representation

RGB_color_solid_cube.png

    _See also RGB color space_

Since colors are usually defined by three components, not only in the RGB model, but also in other color models such as CIELAB and Y'UV, among others, then a three-dimensional volume is described by treating the component values as ordinary Cartesian coordinates in a Euclidean space. For the RGB model, this is represented by a cube using non-negative values within a 0–1 range, assigning black to the origin at the vertex (0, 0, 0), and with increasing intensity values running along the three axes up to white at the vertex (1, 1, 1), diagonally opposite black.

An RGB triplet (_r_,_g_,_b_) represents the three-dimensional coordinate of the point of the given color within the cube or its faces or along its edges. This approach allows computations of the color similarity of two given RGB colors by simply calculating the distance between them: the shorter the distance, the higher the similarity. Out-of-gamut computations can also be performed this way.


Colors in web-page design

The RGB color model for HTML was formally adopted as an Internet standard in HTML 3.2,[20] though it had been in use for some time before that. Initially, the limited color depth of most video hardware led to a limited color palette of 216 RGB colors, defined by the Netscape Color Cube. With the predominance of 24-bit displays, the use of the full 16.7 million colors of the HTML RGB color code no longer poses problems for most viewers.

The web-safe color palette consists of the 216 (6³) combinations of red, green, and blue where each color can take one of six values (in hexadecimal): #00, #33, #66, #99, #CC or #FF (based on the 0 to 255 range for each value discussed above). These hexadecimal values = 0, 51, 102, 153, 204, 255 in decimal, which = 0%, 20%, 40%, 60%, 80%, 100% in terms of intensity. This seems fine for splitting up 216 colors into a cube of dimension 6. However, lacking gamma correction, the perceived intensity on a standard 2.5 gamma CRT / LCD is only: 0%, 2%, 10%, 28%, 57%, 100%. See the actual web safe color palette for a visual confirmation that the majority of the colors produced are very dark.[21]

The syntax in CSS is:

rgb(#,#,#)

where # equals the proportion of red, green, and blue respectively. This syntax can be used after such selectors as "background-color:" or (for text) "color:".


Color management

Proper reproduction of colors, especially in professional environments, requires color management of all the devices involved in the production process, many of them using RGB. Color management results in several transparent conversions between device-independent and device-dependent color spaces (RGB and others, as CMYK for color printing) during a typical production cycle, in order to ensure color consistency throughout the process. Along with the creative processing, such interventions on digital images can damage the color accuracy and image detail, especially where the gamut is reduced. Professional digital devices and software tools allow for 48 bpp (bits per pixel) images to be manipulated (16 bits per channel), to minimize any such damage.

ICC-compliant applications, such as Adobe Photoshop, use either the Lab color space or the CIE 1931 color space as a _Profile Connection Space_ when translating between color spaces.[22]


RGB model and luminance–chrominance formats relationship

All luminance–chrominance formats used in the different TV and video standards such as YIQ for NTSC, YUV for PAL, YD_(B)D_(R) for SECAM, and YP_(B)P_(R) for component video use color difference signals, by which RGB color images can be encoded for broadcasting/recording and later decoded into RGB again to display them. These intermediate formats were needed for compatibility with pre-existent black-and-white TV formats. Also, those color difference signals need lower data bandwidth compared to full RGB signals.

Similarly, current high-efficiency digital color image data compression schemes such as JPEG and MPEG store RGB color internally in YC_(B)C_(R) format, a digital luminance-chrominance format based on YP_(B)P_(R). The use of YC_(B)C_(R) also allows computers to perform lossy subsampling with the chroma channels (typically to 4:2:2 or 4:1:1 ratios), which reduces the resultant file size.


See also

-   CMY color model
-   CMYK color model
-   Color theory
-   Colour banding
-   Complementary colours
-   List of color palettes
-   RG color space
-   RGBA color space
-   sRGB
-   scRGB
-   Adobe RGB color space
-   ProPhoto RGB color space


References


External links

-   1
-   RGB to HEX conversion
-   Demonstrative color conversion applet
-   The Difference Between CMYK and RGB in Digital Printing

Category:Color space Category:Trios

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Photographer to the Tsar: Sergei Mikhailovich Prokudin-Gorskii Library of Congress.

[9]

[10] John Logie Baird, Television Apparatus and the Like, U.S. patent, filed in U.K. in 1928.

[11] Baird Television: Crystal Palace Television Studios. Previous color television demonstrations in the U.K. and U.S. had been via closed circuit.

[12]

[13] "CBS Demonstrates Full Color Television," _Wall Street Journal_, Sept. 5, 1940, p. 1.

[14]

[15]

[16] By directory search

[17]

[18]

[19]

[20]

[21] For a side-by-side comparison of proper colors next to their equivalent lacking proper gamma correction, see

[22]