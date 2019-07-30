CLEARTYPE is Microsoft's implementation of subpixel rendering technology in rendering text in a font system. ClearType attempts to improve the appearance of text on certain types of computer display screens by sacrificing color fidelity for additional intensity variation. This trade-off is asserted to work well on LCD flat panel monitors.

ClearType was first announced at the November 1998 COMDEX exhibition. The technology was first introduced in software in January 2000[1] as an always-on feature of Microsoft Reader, which was released to the public in August 2000.

ClearType was significantly changed with the introduction of DirectWrite in Windows 7.[2]

Word 2013 stopped using ClearType, because "There is a problem with ClearType: it depends critically on the color of the background pixels."[3]


Background

Computer displays where the positions of individual pixels are permanently fixed such as most modern flat panel displays can show saw-tooth edges when displaying small, high-contrast graphic elements, such as text. ClearType uses spatial anti-aliasing at the subpixel level to reduce visible artifacts on such displays when text is rendered, making the text appear "smoother" and less jagged. ClearType also uses very heavy font hinting to force the font to fit into the pixel grid. This increases edge contrast and readability of small fonts at the expense of font rendering fidelity and has been criticized by graphic designers for making different fonts look similar.

Like most other types of subpixel rendering, ClearType involves a compromise, sacrificing one aspect of image quality (color or _chrominance_ detail) for another (light and dark or _luminance_ detail). The compromise can improve text appearance when luminance detail is more important than chrominance.

Only user and system applications render the application of ClearType. ClearType does not alter other graphic display elements (including text already in bitmaps). For example, ClearType enhancement renders text on the screen in Microsoft Word, but text placed in a bitmapped image in a program such as Adobe Photoshop is not. In theory, the method (called "RGB Decimation" internally) can enhance the anti-aliasing of any digital image.[4]

ClearType is not used when printing text. Most printers already use such small pixels that aliasing is rarely a problem, and they don't have the addressable fixed subpixels ClearType requires. Nor does ClearType affect text stored in files. ClearType only applies any processing to the text while it is being rendered onto the screen.

ClearType was invented in the Microsoft e-Books team by Bert Keely and Greg Hitchcock. It was then analyzed by researchers in the company, and signal processing expert John Platt designed an improved version of the algorithm.[5] Dick Brass, a Vice President at Microsoft from 1997 to 2004, complained that the company was slow in moving ClearType to market in the portable computing field.[6]


How ClearType works

Normally, the software in a computer treats the computer’s display screen as a rectangular array of square, indivisible pixels, each of which has an intensity and color that are determined by the blending of three primary colors: red, green, and blue. However, actual display hardware usually implements each pixel as a group of three adjacent, independent _subpixels,_ each of which displays a different primary color. Thus, on a real computer display, each pixel is actually composed of separate red, green, and blue subpixels. For example, if a flat-panel display is examined under a magnifying glass, the pixels may appear as follows:

In the illustration above, there are nine pixels but 27 subpixels.

If the computer controlling the display knows the exact position and color of all the subpixels on the screen, it can take advantage of this to improve the apparent resolution in certain situations. If each pixel on the display actually contains three rectangular subpixels of red, green, and blue, in that fixed order, then things on the screen that are smaller than one full pixel in size can be rendered by lighting only one or two of the subpixels. For example, if a diagonal line with a width smaller than a full pixel must be rendered, then this can be done by lighting only the subpixels that the line actually touches. If the line passes through the leftmost portion of the pixel, only the red subpixel is lit; if it passes through the rightmost portion of the pixel, only the blue subpixel is lit. This effectively triples the horizontal resolution of the image at normal viewing distances; the drawback is that the line thus drawn will show color fringes (at some points it might look green, at other points it might look red or blue).

ClearType uses this method to improve the smoothness of text. When the elements of a type character are smaller than a full pixel, ClearType lights only the appropriate subpixels of each full pixel in order to more closely follow the outlines of that character. Text rendered with ClearType looks “smoother” than text rendered without it, provided that the pixel layout of the display screen exactly matches what ClearType expects.

The following picture shows a 4× enlargement of the word _Wikipedia_ rendered using ClearType. The word was originally rendered using a Times New Roman 12 pt font.

In this magnified view, it becomes clear that, while the overall smoothness of the text seems to improve, there is also color fringing of the text.

An extreme close-up of a color display shows (a) text rendered without ClearType and (b) text rendered with ClearType. Note the changes in subpixel intensity that are used to increase effective resolution when ClearType is enabled without ClearType, all sub-pixels of a given pixel have the same intensity.

In the above lines of text, when the orange circle is shown, all the text in the frame is rendered using ClearType (RGB subpixel rendering); when the orange circle is absent all the text is rendered using normal (full pixel greyscale) anti-aliasing.


Human vision and cognition

ClearType and similar technologies work on the theory that variations in intensity are more noticeable than variations in color.

Expert opinion

In a MSDN article, Microsoft acknowledges that "[te]xt that is rendered with ClearType can also appear significantly different when viewed by individuals with varying levels of color sensitivity. Some individuals can detect slight differences in color better than others."[7] This opinion is shared by font designer Thomas Phinney (Vice President of FontLab and formerly with Adobe Systems[8]): "There is also considerable variation between individuals in their sensitivity to color fringing. Some people just notice it and are bothered by it a lot more than others."[9] Software developer Melissa Elliot has written about finding ClearType rendering uncomfortable to read, saying that "instead of seeing black text, I see blue text, and rendered over it but offset by a pixel or two, I see orange text, and someone reached into a bag of purple pixel glitter and just tossed it on...I’m not the only person in the world with this problem, and yet, every time it comes up, people are quick to assure me it works for them as if that’s supposed to make me feel better."[10]

Hinting expert Beat Stamm, who worked on ClearType at Microsoft,[11] agrees that ClearType may look blurry at 96 dpi, which was a typical[12] resolution for LCDs in 2008, but adds that higher resolution displays improve on this aspect: "WPF [Windows Presentation Foundation] uses method C [ClearType with fractional pixel positioning[13]], but few display devices have a sufficiently high resolution to make the potential blur a moot point for everybody. . . . Some people are ok with the blur in Method C, some aren’t. Anecdotal evidence suggests that some people are fine with Method C when reading continuous text at 96 dpi (e.g. Times Reader, etc.) but not in UI scenarios. Many people are fine with the colors of ClearType, even at 96 dpi, but a few aren’t… To my eyes and at 96 dpi, Method C doesn’t read as well as Method A. It reads “blurrily” to me. Conversely, at 144 dpi, I don’t see a problem with Method C. It looks and reads just fine to me."[14] One illustration of the potential problem is the following image:

In the above block of text, the same portion of text is shown in the upper half without and in the lower half with ClearType rendering (as opposed to Standard and ClearType in the previous image). This and the previous example with the orange circle demonstrate the blurring introduced.

Empirical studies

A 2001 study, conducted by researchers from Clemson University and The University of Pennsylvania on "18 users who spent 60 minutes reading fiction from each of three different displays" found that "When reading from an LCD display, users preferred text rendered with ClearType™. ClearType also yielded higher readability judgments and lower ratings of mental fatigue."[15] A 2002 study on 24 users conducted by the same researchers from Clemson University also found that "Participants were significantly more accurate at identifying words with ClearType™ than without ClearType™."

According to a 2006 study, at the University of Texas at Austin by Dillon et al., ClearType "may not be universally beneficial". The study notes that maximum benefit may be seen when the information worker is spending large proportions of their time reading text (which is not necessarily the case for the majority of computer users today). Additionally, over one third of the study participants experienced some disadvantage when using ClearType. Whether ClearType, or other rendering, should be used is very subjective and it must be the choice of the individual, with the report recommending "to allow users to disable [ClearType] if they find it produces effects other than improved performance".[16]

Another 2007 empirical study, found that "while ClearType rendering does not improve text legibility, reading speed or comfort compared to perceptually-tuned grayscale rendering, subjects prefer text with moderate ClearType rendering to text with grayscale or higher-level ClearType contrast."[17]

A 2007 survey, of the literature by Microsoft researcher Kevin Larson presented a different picture: "Peer-reviewed studies have consistently found that using ClearType boosts reading performance compared with other text-rendering systems. In a 2004 study, for instance, Lee Gugerty, a psychology professor at Clemson University, in South Carolina, measured a 17 percent improvement in word recognition accuracy with ClearType. Gugerty’s group also showed, in a sentence comprehension study, that ClearType boosted reading speed by 5 percent and comprehension by 2 percent. Similarly, in a study published in 2007, psychologist Andrew Dillon at the University of Texas at Austin found that when subjects were asked to scan a spreadsheet and pick out certain information, they did those tasks 7 percent faster with ClearType."[18]


Display requirements

ClearType and allied technologies require display hardware with fixed pixels and subpixels. More precisely, the positions of the pixels and subpixels on the screen must be exactly known to the computer to which it is connected. This is the case for flat-panel displays, on which the positions of the pixels are permanently fixed by the design of the screen itself. Almost all flat panels have a perfectly rectangular array of square pixels, each of which contains three rectangular subpixels in the three primary colors, with the normal ordering being red, green, and blue, arranged in vertical bands. ClearType assumes this arrangement of pixels when rendering text.

ClearType does not work properly with flat-panel displays that are operated at resolutions other than their “native” resolutions, since only the native resolution corresponds exactly to the actual positions of pixels on the screen of the display.

If a display does not have the type of fixed pixels that ClearType expects, text rendered with ClearType enabled actually looks worse than type rendered without it. Some flat panels have unusual pixel arrangements, with the colors in a different order, or with the subpixels positioned differently (in three horizontal bands, or in other ways). ClearType needs to be manually tuned for use with such displays (see below).

ClearType will not work as intended on displays that have no fixed pixel positions, such as CRT displays, however it will still have some antialiasing effect and may be preferable to some users as compared to non-anti-aliased type.[19]


Sensitivity to display orientation

Because ClearType utilizes the physical layout of the red, green and blue pigments of the LCD screen, it is sensitive to the orientation of the display.

ClearType in Windows XP currently supports the RGB and BGR sub pixel structures. Rotated displays, in which the subpixels are stacked vertically rather than arranged horizontally, are _not_ currently supported. Using ClearType on these display configurations will actually reduce the display quality. The best option for users of Windows XP having rotated LCD displays (Tablet PCs or swivel-stand LCD displays) is using regular anti-aliasing, or switching off font-smoothing altogether.

The software developer documentation for Windows CE states that ClearType for rotated screens is supported on that platform.[20]

Vertical sub pixel structures are not supported in Windows XP.[21]


Implementations

-   Windows XP (off by default)
-   Windows Vista (on by default)
-   Windows 7 (on by default)
-   Windows 8: Only used in Windows 8 Desktop and all desktop apps[22]
-   Windows 10: Only used in Win32 apps and Win32 system features, not Universal Windows Platform.
-   Internet Explorer 7 and later (on by default)
-   Microsoft Office 2007 and 2010 (on by default)
-   Windows Live Messenger (on by default)
-   Microsoft Reader

ClearType is also an integrated component of the Windows Presentation Foundation text-rendering engine.

ClearType in GDI

ClearType can be globally enabled or disabled for GDI applications. A control panel applet is available to let the users tune the GDI ClearType settings. The GDI implementation of ClearType does not support sub-pixel positioning.[23]

ClearType tuning

Some versions of Microsoft Windows, as supplied, allow ClearType to be turned on or off, with no adjustment; other versions allow tuning of the ClearType parameters. A Microsoft ClearType tuner utility is available for free download for Windows versions lacking this facility.[24] If ClearType is disabled in the operating system, applications with their own ClearType controls can still support it. Microsoft Reader (for e-books) has its own ClearType tuner.

ClearType in WPF

All text in Windows Presentation Foundation is anti-aliased and rendered using ClearType. There are separate ClearType registry settings for GDI and WPF applications, but by default the WPF entries are absent, and the GDI values are used in their absence. WPF registry entries can be tuned using the instructions[25] from the MSDN WPF Text Blog.

ClearType in WPF supports sub-pixel positioning, natural advance widths, Y-direction anti-aliasing and hardware acceleration. WPF supports aggressive caching of pre-rendered ClearType text in video memory.[26] The extent to which this is supported is dependent on the video card. DirectX 10 cards will be able to cache the font glyphs in video memory, then perform the composition (assembling of character glyphs in the correct order, with the correct spacing), alpha blending (application of anti-aliasing), and RGB blending (ClearType's sub-pixel color calculations), entirely in hardware. This means that only the original glyphs need to be stored in video memory once per font (Microsoft estimates that this would require 2 MB of video memory per font), and other operations such as the display of anti-aliased text on top of other graphics including video can also be done with no computation effort on the part of the CPU. DirectX 9 cards will only be able to cache the alpha-blended glyphs in memory, thus requiring the CPU to handle glyph composition and alpha-blending before passing this to the video card. Caching these partially rendered glyphs requires significantly more memory (Microsoft estimates 5 MB per process). Cards that don't support DirectX 9 have no hardware-accelerated text rendering capabilities.

ClearType in DirectWrite

As pixel densities of displays improved and more high DPI screens became available, colored subpixel rendering became less of a necessity according to Microsoft. Also Windows tablet user interfaces evolved to support vertical screen orientations where the LCD color stripes would run horizontally. The original colored ClearType subpixel rendering was tuned to work optimally with horizontal orientation LCD displays where RGB or BGR stripes run vertically. For these reasons, DirectWrite which is the next-generation text rendering API from Microsoft moved away from color-aware ClearType. The font rendering engine in DirectWrite supports a different version of ClearType with only greyscale anti-aliasing [27], not color subpixel rendering, as demonstrated at PDC 2008.[28] This version is sometimes called _Natural ClearType_ but is often referred to simply as DirectWrite rendering (with the term "ClearType" being designated to only the RGB/BGR color subpixel rendering version).[29] The improvements have been confirmed by independent sources, such as Firefox developers;[30] they were particularly noticeable for OpenType fonts in Compact Font Format (CFF).[31][32]

Many Office 2013 apps including Word 2013, Excel 2013, parts of Outlook 2013 stopped using ClearType and switched to this DirectWrite greyscale antialiasing. The reasons invoked are, in the words of Murray Sargent: "There is a problem with ClearType: it depends critically on the color of the background pixels. This isn’t a problem if you know a priori that those pixels are white, which is usually the case for text. But the general case involves calculating what the colors should be for an arbitrary background and that takes time. Meanwhile, Word 2013 enjoys cool animations and smooth zooming. Nothing jumps any more. Even the caret (the blinking vertical line at the text insertion point) glides from one position to the next as you type. Jerking movement just isn’t considered cool any more. Well animations and zooms have to be faster than human response times in order to appear smooth. And that rules out ClearType in animated scenarios at least with present generation hardware. And in future scenarios, screens will have sufficiently high resolution that gray-scale anti-aliasing should suffice."[33]

For the same reasons related to animation performance and vertical screen orientations where the colored RGB/BGR ClearType antialiasing would be a problem, the color-aware version of ClearType was abandoned in Metro-style apps platform of Windows 8 (and Universal Windows Platform of Windows 10).[34][35], including the Start menu and everything not using classic Win32 APIs (GDI/GDI+).


Patents

ClearType is a registered trademark and Microsoft claims protection under the following U.S. patents:[36][37]

-   Subpixel rendering:
    -   – _Method and apparatus for displaying images such as text_

    -   – _Mapping image data samples to pixel sub-components on a striped display device_

    -   – _Weighted mapping of image data samples to pixel sub-components on a display device_

    -   – _Methods and apparatus for performing image rendering and rasterization operations_

-   Complex color filtering:
    -   – _Mapping samples of foreground/background color image data to pixel sub-components_

    -   – _Method and apparatus for detecting and reducing color artifacts in images_

    -   – _Methods apparatus and data structures for enhancing the resolution of images to be rendered on patterned display devices_

    -   – _Filtering image data to obtain samples mapped to pixel sub-components of a display device_

    -   – _Filtering image data to obtain samples mapped to pixel sub-components of a display device_

-   Subpixel font hinting and layout:
    -   – _Methods and apparatus for performing grid fitting and hinting operations_

    -   – _Maintaining advance widths of existing characters that have been resolution enhanced_

-   ClearType tuning:
    -   – _Method and apparatus for improving the quality of displayed images through the use of user reference information_


Other uses of the ClearType brand

The ClearType name was also used to refer to the screens of Microsoft Surface tablets. ClearType HD Display indicates a 1366×768 screen, while ClearType Full HD Display indicates a 1920×1080 screen.[38][39]


See also

-   Font rasterization
-   FreeType
-   CoolType – a similar technology by Adobe
-   Quartz (graphics layer)
-   Retina Display


References


External links

-   Explanation of ClearType at Microsoft Typography
-   Technical Overview of ClearType Filtering from Microsoft Research
-   The Raster Tragedy at Low-Resolution Revisited – Beat Stamm's online book about rasterization, with an emphasis on ClearType
-   Ron Feigenblatt's remarks on Microsoft ClearType
-   John Markoff, "Microsoft's Cleartype Sets Off Debate on Originality", _New York Times_, December 7, 1998
-   Betrisey, C., Blinn, J. F., Dresevic, B., Hill, B., Hitchcock, G., Keely, B., Mitchell, D. P., Platt, J. C., Whitted, T., "Displaced Filtering for Patterned Displays", Proc. Society for Information Display Symposium, pp. 296–299, (2000).
-   http://scien.stanford.edu/jfsite/Papers/ImageRendering/Displays/Farrell_et_al_SID2009.pdf

-   Xu, J., Farrell, J., Matskewich, T., and Wandell, B. “Prediction of preferred Cleartype filters using the S-CIELAB metric”, IEEE International Conference on Image Processing, October 2008.ClearType
-   Steven Sinofsky (23 June 2009) Engineering Changes to ClearType in Windows 7

Category:Windows components Category:Digital typography Category:Computer graphics algorithms

[1]

[2]

[3]

[4] Betrisey et al., "Displaced Filtering for Patterned Displays", Proc. Society for Information Display Symposium, 2000

[5] Platt, J.C., "Optimal Filtering for Patterned Displays", IEEE Signal Processing Letters, 7(7), 2000, pp. 179-180

[6] Microsoft’s Creative Destruction

[7] Windows Presentation Foundation ClearType Registry Settings

[8] http://www.adobe.com/products/type/font-designers/thomas-phinney.html

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Dillon, A., Kleinman, L., Choi, G. O., & Bias, R. (2006). Visual search and reading tasks using ClearType and regular displays: two experiments. CHI ’06: Proceedings of the SIGCHI conference on Human Factors in computing systems, 503-511.

[17]  http://www.pacificu.edu/vpi/publications/documents/ClearTypesub-pixeltextrenderingPreferencelegibilityandreadingperformance.pdf

[18] Kevin Larson (May 2007) "The Technology of Text", _IEEE Spectrum_

[19]

[20] Working with ClearType Fonts

[21] Tablets and cleartype, and a requested feature of Avalon at Brandon Furtwangler blog

[22] ClearType takes a back seat for Windows 8 Metro

[23] Windows Presentation Foundation ClearType Overview

[24]

[25] Tips for improving your WPF text rendering experience

[26] MSDN Library : .NET Development : WPF : ClearType Overview

[27] [Office 2013: Further Evidence of the Demise of ClearType? Office 2013: Further Evidence of the Demise of ClearType?]

[28]

[29] http://blogs.msdn.com/b/e7/archive/2009/02/13/advances-in-typography-and-text-rendering-in-windows-7.aspx

[30] http://www.basschouten.com/blog1.php/font-rendering-gdi-versus-directwrite

[31] https://blog.mozilla.org/nattokirai/2009/10/22/better-postscript-cff-font-rendering-with-directwrite/

[32] http://blog.typekit.com/2010/11/12/microsoft-directwrite-is-coming/

[33] http://blogs.msdn.com/b/murrays/archive/2014/05/31/crisp-text-display.aspx

[34] Color-aware ClearType requires access to fixed background pixels, which is a problem if you don’t know what the background pixels are, or if they aren’t fixed

[35]

[36]

[37]

[38] Inside Microsoft's Surface RT Tablet

[39] Microsoft's Major Announcement in LA - We're There!