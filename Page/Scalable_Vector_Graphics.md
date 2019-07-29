SCALABLE VECTOR GRAPHICS (SVG) is an XML-based vector image format for two-dimensional graphics with support for interactivity and animation. The SVG specification is an open standard developed by the World Wide Web Consortium (W3C) since 1999.

SVG images and their behaviors are defined in XML text files. This means that they can be searched, indexed, scripted, and compressed. As XML files, SVG images can be created and edited with any text editor, as well as with drawing software.

All major modern web browsers—including Mozilla Firefox, Internet Explorer, Google Chrome, Opera, Safari, and Microsoft Edge—have SVG rendering support.


Overview

Bitmap_VS_SVG.svg

SVG has been in development within the World Wide Web Consortium (W3C) since 1999 after six competing proposals for vector graphics languages had been submitted to the consortium during 1998. The early SVG Working Group decided not to develop any of the commercial submissions, but to create a new markup language that was informed by but not really based on any of them.[1]

SVG allows three types of graphic objects: vector graphic shapes such as paths and outlines consisting of straight lines and curves, bitmap images, and text. Graphical objects can be grouped, styled, transformed and composited into previously rendered objects. The feature set includes nested transformations, clipping paths, alpha masks, filter effects and template objects. SVG drawings can be interactive and can include animation, defined in the SVG XML elements or via scripting that accesses the SVG Document Object Model (DOM). SVG uses CSS for styling and JavaScript for scripting. Text, including internationalization and localization, appearing in plain text within the SVG DOM enhances the accessibility of SVG graphics.[2]

The SVG specification was updated to version 1.1 in 2011. There are two 'Mobile SVG Profiles,' SVG Tiny and SVG Basic, meant for mobile devices with reduced computational and display capabilities.[3] Scalable Vector Graphics 2 became a W3C Candidate Recommendation on 15 September 2016. SVG 2 incorporates several new features in addition to those of SVG 1.1 and SVG Tiny 1.2.[4]

Printing

Though the SVG Specification primarily focuses on vector graphics markup language, its design includes the basic capabilities of a page description language like Adobe's PDF. It contains provisions for rich graphics, and is compatible with CSS for styling purposes. SVG has the information needed to place each glyph and image in a chosen location on a printed page.[5]

Scripting and animation

SVG drawings can be dynamic and interactive. Time-based modifications to the elements can be described in SMIL, or can be programmed in a scripting language (e.g. ECMAScript or JavaScript). The W3C explicitly recommends SMIL as the standard for animation in SVG.[6]

A rich set of event handlers such as _onmouseover_ and _onclick_ can be assigned to any SVG graphical object.

Compression

SVG images, being XML, contain many repeated fragments of text, so they are well suited for lossless data compression algorithms. When an SVG image has been compressed with the industry standard gzip algorithm, it is referred to as an "SVGZ" image and uses the corresponding .svgz filename extension. Conforming SVG 1.1 viewers will display compressed images.[7] An SVGZ file is typically 20 to 50 percent of the original size.[8] W3C provides SVGZ files to test for conformance.[9]


Development history

SVG was developed by the W3C SVG Working Group starting in 1998, after six competing vector graphics submissions were received that year:

-   Web Schematics, from CCLRC[10]
-   PGML, from Adobe Systems, IBM, Netscape and Sun Microsystems[11]
-   VML, by Autodesk, Hewlett-Packard, Macromedia, Microsoft, and Vision[12]
-   Hyper Graphics Markup Language (HGML), by Orange UK and PRP[13]
-   WebCGM, from Boeing, InterCAP Graphics Systems, Inso Corporation, CCLRC, and Xerox [14]
-   DrawML, from Excosoft AB[15]

The working group was chaired at the time by Chris Lilley of the W3C.

Version 1.x

-   SVG 1.0 became a W3C Recommendation on 4 September 2001.[16]
-   SVG 1.1 became a W3C Recommendation on 14 January 2003.[17] The SVG 1.1 specification is modularized in order to allow subsets to be defined as profiles. Apart from this, there is very little difference between SVG 1.1 and SVG 1.0.
    -   SVG Tiny and SVG Basic (the Mobile SVG Profiles) became W3C Recommendations on 14 January 2003. These are described as profiles of SVG 1.1.[18]
-   SVG Tiny 1.2 became a W3C Recommendation on 22 December 2008.[19] It was initially drafted as a profile of the planned SVG Full 1.2 (which has since been dropped in favor of SVG 2),[20] but was later refactored as a standalone specification.
-   SVG 1.1 Second Edition, which includes all the errata and clarifications, but no new features to the original SVG 1.1 was released on 16 August 2011.[21]

Version 2.x

SVG 2.0 removes or deprecates some features of SVG 1.1 and incorporates new features from HTML5 and Web Open Font Format:

-   For example, SVG 2.0 removes several font elements such as glyph and altGlyph (replaced by the WOFF font format).
-   The xml:space attribute is deprecated in favor of CSS.
-   HTML5 features such as translate and data-* attributes have been added.

It reached Candidate Recommendation stage on 15 September 2016. The latest draft was released on 13 April 2019.[22]

Mobile profiles

Because of industry demand, two mobile profiles were introduced with SVG 1.1: _SVG Tiny_ (SVGT) and _SVG Basic_ (SVGB).

These are subsets of the full SVG standard, mainly intended for user agents with limited capabilities. In particular, SVG Tiny was defined for highly restricted mobile devices such as cellphones; it does not support styling or scripting.[23] SVG Basic was defined for higher-level mobile devices, such as smartphones.

In 2003, the 3GPP, an international telecommunications standards group, adopted SVG Tiny as the mandatory vector graphics media format for next-generation phones. SVGT is the required vector graphics format and support of SVGB is optional for Multimedia Messaging Service (MMS) and Packet-switched Streaming Service.[24][25][26] It was later added as required format for vector graphics in 3GPP IP Multimedia Subsystem (IMS).[27][28]

Differences from non-mobile SVG

Neither mobile profile includes support for the full Document Object Model (DOM), while only SVG Basic has optional support for scripting, but because they are fully compatible subsets of the full standard, most SVG graphics can still be rendered by devices which only support the mobile profiles.[29]

SVGT 1.2 adds a microDOM (μDOM), styling and scripting.[30]

Related work

The MPEG-4 Part 20 standard - _Lightweight Application Scene Representation (LASeR) and Simple Aggregation Format (SAF)_ is based on SVG Tiny.[31] It was developed by MPEG (ISO/IEC JTC1/SC29/WG11) and published as ISO/IEC 14496-20:2006.[32] SVG capabilities are enhanced in MPEG-4 Part 20 with key features for mobile services, such as dynamic updates, binary encoding, state-of-art font representation.[33] SVG was also accommodated in MPEG-4 Part 11, in the Extensible MPEG-4 Textual (XMT) format - a textual representation of the MPEG-4 multimedia content using XML.[34]


Functionality

The SVG 1.1 specification defines 14 functional areas or feature sets:[35]

Paths
    Simple or compound shape outlines are drawn with curved or straight lines that can be filled in, outlined, or used as a clipping path. Paths have a compact coding.
    For example, M (for “move to”) precedes initial numeric x and y coordinates, and L (for “line to”) precedes a point to which a line should be drawn. Further command letters (C, S, Q, T, and A) precede data that is used to draw various Bézier and elliptical curves. Z is used to close a path.
    In all cases, absolute coordinates follow capital letter commands and relative coordinates are used after the equivalent lower-case letters.[36]

Basic shapes
    Straight-line paths and paths made up of a series of connected straight-line segments (polylines), as well as closed polygons, circles, and ellipses can be drawn. Rectangles and round-cornered rectangles are also standard elements.[37]

Text
    Unicode character text included in an SVG file is expressed as XML character data. Many visual effects are possible, and the SVG specification automatically handles bidirectional text (for composing a combination of English and Arabic text, for example), vertical text (as Chinese was historically written) and characters along a curved path (such as the text around the edge of the Great Seal of the United States).[38]

Painting
    SVG shapes can be filled and/or outlined (painted with a color, a gradient, or a pattern). Fills may be opaque, or have any degree of transparency.
    "Markers" are line-end features, such as arrowheads, or symbols that can appear at the vertices of a polygon.[39]

Color
    Colors can be applied to all visible SVG elements, either directly or via fill, stroke, and other properties. Colors are specified in the same way as in CSS2, i.e. using names like black or blue, in hexadecimal such as #2f0 or #22ff00, in decimal like rgb(255,255,127), or as percentages of the form rgb(100%,100%,50%).[40]

Gradients and patterns
    SVG shapes can be filled or outlined with solid colors as above, or with color gradients or with repeating patterns. Color gradients can be linear or radial (circular), and can involve any number of colors as well as repeats. Opacity gradients can also be specified. Patterns are based on predefined raster or vector graphic objects, which can be repeated in x and/or y directions. Gradients and patterns can be animated and scripted.[41]
    Since 2008, there has been discussion[42][43] among professional users of SVG that either gradient meshes or preferably diffusion curves could usefully be added to the SVG specification. It is said that a "simple representation [using diffusion curves] is capable of representing even very subtle shading effects"[44] and that "Diffusion curve images are comparable both in quality and coding efficiency with gradient meshes, but are simpler to create (according to several artists who have used both tools), and can be captured from bitmaps fully automatically."[45] The current draft of SVG 2 includes gradient meshes.[46]

Clipping, masking and compositing
    Graphic elements, including text, paths, basic shapes and combinations of these, can be used as outlines to define both _inside_ and _outside_ regions that can be painted (with colors, gradients and patterns) independently. Fully opaque _clipping paths_ and semi-transparent _masks_ are _composited_ together to calculate the color and opacity of every pixel of the final image, using alpha blending.[47]

Filter effects[48]


    A filter effect consists of a series of graphics operations that are applied to a given source vector graphic to produce a modified bitmapped result.

Interactivity
    SVG images can interact with users in many ways. In addition to hyperlinks as mentioned below, any part of an SVG image can be made receptive to user interface events such as changes in focus, mouse clicks, scrolling or zooming the image and other pointer, keyboard and document events. Event handlers may start, stop or alter animations as well as trigger scripts in response to such events.[49]

Linking
    SVG images can contain hyperlinks to other documents, using XLink. Through the use of the <view> element or a fragment identifier, URLs can link to SVG files that change the visible area of the document. This allows for creating specific view states that are used to zoom in/out of a specific area or to limit the view to a specific element. This is helpful when creating sprites. XLink support in combination with the <use> element also allow linking to and re-using internal and external elements. This allows coders to do more with less markup and makes for cleaner code.[50]

Scripting
    All aspects of an SVG document can be accessed and manipulated using scripts in a similar way to HTML. The default scripting language is ECMAScript (closely related to JavaScript) and there are defined Document Object Model (DOM) objects for every SVG element and attribute. Scripts are enclosed in
    elements. They can run in response to pointer events, keyboard events and document events as required.[51]

Animation


    SVG content can be animated using the built-in animation elements such as , and . Content can be animated by manipulating the DOM using ECMAScript and the scripting language's built-in timers. SVG animation has been designed to be compatible with current and future versions of Synchronized Multimedia Integration Language (SMIL). Animations can be continuous, they can loop and repeat, and they can respond to user events, as mentioned above.[52]

Fonts
    As with HTML and CSS, text in SVG may reference external font files, such as system fonts. If the required font files do not exist on the machine where the SVG file is rendered, the text may not appear as intended. To overcome this limitation, text can be displayed in an _SVG font_, where the required glyphs are defined in SVG as a font that is then referenced from the element.[53]

Metadata
    In accord with the W3C's Semantic Web initiative, SVG allows authors to provide metadata about SVG content. The main facility is the element, where the document can be described using Dublin Core metadata properties (e.g. title, creator/author, subject, description, etc.). Other metadata schemas may also be used. In addition, SVG defines
    and elements where authors may also provide plain-text descriptive material within an SVG image to help indexing, searching and retrieval by a number of means.[54]

An SVG document can define components including shapes, gradients etc., and use them repeatedly. SVG images can also contain raster graphics, such as PNG and JPEG images, and further SVG images.

Example

Image:SVG example markup grid.svg

This code will produce the shapes shown in the image (excluding the grid and labels):

    <?xml version="1.0" encoding="UTF-8" ?>
    <svg width="391" height="391" viewBox="-70.5 -70.5 391 391" ns="http://www.w3.org/2000/svg">
      <rect x="25" y="25" width="200" height="200" fill="lime" stroke-width="4" stroke="pink" />
      <circle cx="125" cy="125" r="75" fill="orange" />
      <polyline points="50,150 50,200 200,200 200,100" stroke="red" stroke-width="4" fill="none" />
      <line x1="50" y1="50" x2="200" y2="200" stroke="blue" stroke-width="4" />
    </svg>


SVG on the web

Пример_чертежа_в_SVG_формате.svg

The use of SVG on the web was limited by the lack of support in older versions of Internet Explorer (IE). Many web sites that serve SVG images, such as Wikipedia, also provide the images in a raster format, either automatically by HTTP content negotiation or by allowing the user directly to choose the file.

Google announced on 31 August 2010 that it had started to index SVG content on the web, whether it is in standalone files or embedded in HTML, and that users would begin to see such content listed among their search results.[55] It was announced on 8 December 2010 that Google Image Search would also begin indexing SVG files.[56] The site announced an option to restrict image searches to SVG files on 11 February 2011.[57]

Native browser support

Konqueror was the first browser to support SVG in release version 3.2 in February 2004.[58] As of 2011, all major desktop browsers, and many minor ones, have some level of SVG support. Other browsers' implementations are not yet complete; see comparison of layout engines for further details.

Some earlier versions of Firefox (e.g. versions between 1.5 and 3.6[59]), as well as a smattering of other now-outdated web browsers capable of displaying SVG graphics, needed them embedded in or elements to display them integrated as parts of an HTML webpage instead of using the standard way of integrating images with .[60] However, SVG images may be included in XHTML pages using XML namespaces.[61]

Tim Berners-Lee, the inventor of the World Wide Web, has been critical of (earlier versions of) Internet Explorer for its failure to support SVG.[62]

-   Opera (since 8.0) has support for the SVG 1.1 Tiny specification while Opera 9 includes SVG 1.1 Basic support and some of SVG 1.1 Full. Opera 9.5 has partial SVG Tiny 1.2 support. It also supports SVGZ (compressed SVG).
-   Browsers based on the Gecko layout engine (such as Firefox, Flock, Camino, and SeaMonkey) all have had incomplete support for the SVG 1.1 Full specification since 2005. The Mozilla site has an overview of the modules which are supported in Firefox[63] and of the modules which are in progress in the development.[64] Gecko 1.9, included in Firefox 3.0, adds support for more of the SVG specification (including filters).[65]
-   Pale Moon, which uses the Goanna layout engine (a fork of the Gecko engine), supports SVG.
-   Browsers based on WebKit (such as Apple's Safari, Google Chrome, and The Omni Group's OmniWeb) have had incomplete support for the SVG 1.1 Full specification since 2006.[66]
-   Amaya has partial SVG support.
-   Internet Explorer 8 and older versions do not support SVG.[67][68] IE9 (released 14 March 2011) supports the basic SVG feature set.[69] IE10 extended SVG support by adding SVG 1.1 filters.[70]
-   Microsoft Edge supports much of SVG 1.1.[71]
-   The Maxthon Cloud Browser also supports SVG.

There are several advantages to native and full support: plugins are not needed, SVG can be freely mixed with other content in a single document, and rendering and scripting become considerably more reliable.[72]

Plug-in browser support

Internet Explorer, up to and including IE8, was the only major browser not to provide native SVG support. IE8 and older require a plug-in to render SVG content. There are a number of plug-ins available to assist, including:

-   Ample SDK Open-Source JavaScript GUI Framework provides partial support for SVG 1.1, SMIL, DOM and style scripting in Internet Explorer (5.5 - 8.0) too. It is not dependent on any plugins and relies on presence of alternative Vector Graphics format VML in Internet Explorer.
-   Batik, a widely deployed Java plugin[73]
-   Google Chrome Frame from Google can support all web elements supported by WebKit, including SVG 1.0 and partially SVG 1.1. (_discontinued_)
-   GPAC, targets SVGT 1.2[74][75]
-   Adobe SVG Viewer from Adobe Systems plugin supports most of SVG 1.0/1.1.[76][77] (_discontinued_)
-   Corel SVG Viewer[78] (_discontinued_)
-   Raphaël is another JavaScript library that takes advantage of the intersection between VML's and SVG's features to create vector graphics and animate them.
-   Renesis Player for Internet Explorer from examotion GmbH, supports SVG 1.1 on IE 6 and 7 (_discontinued_)[79]
-   SVG Web[80] is a JavaScript library for Web developers, targeted at Internet Explorer and dependent on the presence of an installed Adobe Flash plugin on the client machine. SVG Web provides partial support for SVG 1.1, SVG Animation (SMIL), Fonts, Video and Audio, DOM and style scripting.[81]

On 5 January 2010, a senior manager of the Internet Explorer team at Microsoft announced on his official blog that Microsoft had just requested to join the SVG Working Group of the W3C in order to "take part in ensuring future versions of the SVG spec will meet the needs of developers and end users," although no plans for SVG support in Internet Explorer were mentioned at that time.[82] Internet Explorer 9 beta supported a basic SVG feature set based on the SVG 1.1 W3C recommendation. Functionality has been implemented for most of the SVG document structure, interactivity through scripting and styling inline and through CSS. The presentation elements, attributes and DOM interfaces that have been implemented include basic shapes, colors, filling, gradients, patterns, paths and text.[83]

Mobile support

SVG Tiny (SVGT) 1.1 and 1.2 are mobile profiles for SVG. SVGT 1.2 includes some features not found in SVG 1.1, including non-scaling strokes, which are supported by some SVG 1.1 implementations, such as Opera, Firefox and WebKit. As shared code bases between desktop and mobile browsers increased, the use of SVG 1.1 over SVGT 1.2 also increased.

Support for SVG may be limited to SVGT on older or more limited smart phones or may be primarily limited by their respective operating system. Adobe Flash Lite has optionally supported SVG Tiny since version 1.1. At the SVG Open 2005 conference, Sun demonstrated a mobile implementation of SVG Tiny 1.1 for the Connected Limited Device Configuration (CLDC) platform.[84]

Mobiles that use Opera Mobile, as well as the iPhone's built in browser, also include SVG support. However, even though it used the WebKit engine, the Android built-in browser did not support SVG prior to v3.0 (Honeycomb).[85] Prior to v3.0, Firefox Mobile 4.0b2 (beta) for Android was the first browser running under Android to support SVG by default.[86]

The level of SVG Tiny support available varies from mobile to mobile, depending on the SVG engine installed. Many newer mobile products support additional features beyond SVG Tiny 1.1, like gradient and opacity; this is sometimes referred to as "SVGT 1.1+", though there is no such standard.

RIM's BlackBerry has built-in support for SVG Tiny 1.1 since version 5.0.[87] Support continues for WebKit-based BlackBerry Torch browser in OS 6 and 7.[88]

Nokia's S60 platform has built-in support for SVG. For example, icons are generally rendered using the platform's SVG engine. Nokia has also led the JSR 226: Scalable 2D Vector Graphics API expert group that defines Java ME API for SVG presentation and manipulation. This API has been implemented in S60 Platform 3rd Edition Feature Pack 1 and onward.[89] Some Series 40 phones also support SVG (such as Nokia 6280).

Most Sony Ericsson phones beginning with K700 (by release date) support SVG Tiny 1.1. Phones beginning with K750 also support such features as opacity and gradients. Phones with Sony Ericsson Java Platform-8 have support for JSR 226.

Windows Phone has supported SVG since version 7.5

SVG is also supported on various mobile devices from Motorola, Samsung, LG, and Siemens mobile/BenQ-Siemens. eSVG, an SVG rendering library mainly written for embedded devices, is available on some mobile platforms.[90][91]


Online SVG converters

This is an incomplete list of web applications that can convert SVG files to raster image formats (this process is known as rasterization), or raster images to SVG (this process is known as image tracing or vectorization) - without the need of installing a desktop software or browser plug-in.

-   Autotracer.org.[92] Online raster image vectorizer using the AutoTrace library. BMP, GIF, JPEG, or PNG to DXF, EPS, PDF, or SVG. Upload limit: 1MB.
-   FileFormat.info[93] - Converts SVG to PNG, JPEG, TIFF. Output resolution can be specified. No batch processing. Upload limit: 5MB.
-   Online-Convert[94] - Converts to/from BMP, EPS, GIF, HDR, ICO, JPEG, PNG, SVG, TGA, TIFF, WBMP, WebP. No batch processing. The output (e. g. image size) is customizable; the conversion to SVG is handled by Potrace.[95]
-   SVGConv[96] - Converts SVG to JPEG, PNG, GIF, BMP, TGA, TIFF, PDF, PS, EPS. Allows the user to customize the output (like image size, background color) and has batch processing features (converting multiple files in a single step). Upload limit: 10MB
-   SVG2Android[97] - Converts SVG to an Android VectorDrawable (introduced in API 21)
-   Free Online Converter[98] - Converts most raster images to SVG via tracing. When converting from raster images such as PNG to SVG or JPG to SVG, converter will convert the forms and objects in black-and-white images in vector graphics form. The conversion to SVG is handled by Potrace.[99]
-   iLoveIMG [100] - Converts a single or multiple SVG to JPG online.
-   Photopea[101] - Full online image editor. Converts SVG to/from PSD, PNG, JPEG, GIF, PDF, EMF, WEBP, BMP, PPM, TIFF, ICO, DDS. Also converts to SVG from XCF, Sketch, XD, PXD, CDR, EPS, WMF, IFF, TGA, DNG, NEF, CR2, ARW.


Application support

SVG images can be produced by the use of a vector graphics editor, such as Inkscape, Adobe Illustrator, Adobe Flash Professional, or CorelDRAW, and rendered to common raster image formats such as PNG using the same software. Inkscape uses a (built-in) potrace to import raster image formats.[102][103]

Software can be programmed to render SVG images by using a library such as librsvg used by GNOME since 2000, or Batik. SVG images can also be rendered to any desired popular image format by using ImageMagick, a free command-line utility (which also uses librsvg under the hood).

Other uses for SVG include embedding for use in word processing (e.g. with LibreOffice) and desktop publishing (e.g. Scribus), plotting graphs (e.g. gnuplot), and importing paths (e.g. for use in GIMP or Blender). Microsoft Office 365 and Microsoft Office 2019 support for importing and editing SVG images. The Uniform Type Identifier for SVG used by Apple is public.svg-image and conforms to public.image and public.xml.


DOCTYPE

The DOCTYPE for SVG 1.0[104] is:

    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.0//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">

and that for SVG 1.1 is

    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

but for various reasons, a DOCTYPE should not be included in SVG files.[105]


See also

-   Canvas element
-   Comparison of graphics file formats
-   Comparison of raster-to-vector conversion software
-   Comparison of vector graphics editors
-   Computer graphics
-   Computer Graphics Metafile
-   Image file formats
-   Resolution independence
-   SVG files in MediaWiki on Commons: Help:SVG


References


External links

-   specifications, list of implementations

-   W3C SVG primer W3C Primer (draft) under auspices of SVG Interest Group
-

Category:Articles with example code Category:Computer file formats Category:Graphics file formats Category:HTML5 Category:Open formats Category:Page description markup languages Scalable Vector Graphics Category:Vector graphics markup languages Category:World Wide Web Consortium standards Category:XML markup languages Category:Computer-related introductions in 2001

[1]

[2]

[3]

[4]

[5]

[6]

[7] See which states, "SVG implementations must correctly support gzip-encoded [RFC1952] and deflate-encoded [RFC1951] data streams, for any content type (including SVG, script files, images)."

[8]

[9] For example,

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

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]