in the top left corner is a raster image. When enlarged, individual pixels appear as squares. Enlarging in further, they can be analyzed, with their colors constructed by combining the values for red, green and blue.]]

In computer graphics, a RASTER GRAPHICS or BITMAP image is a dot matrix data structure that represents a generally rectangular grid of pixels (points of colour), viewable via a monitor, paper, or other display medium. Raster images are stored in image files with varying formats.

A bitmap is a rectangular grid of pixels, with each pixel's color being specified by a number of bits.[1] A bitmap might be created for storage in the display's video memory[2] or as a device-independent bitmap file.[3] A raster is technically characterized by the width and height of the image in pixels and by the number of bits per pixel (or color depth, which determines the number of colors it can represent).[4]

The printing and prepress industries know raster graphics as CONTONES (from "continuous tones"). The opposite to contones is "line work", usually implemented as vector graphics in digital systems.[5] Vector images can be rasterized (converted into pixels), and raster images vectorized (raster images converted into vector graphics), by software. In both cases some information is lost, although vectorizing can also restore some information back to machine readability, as happens in optical character recognition.


Etymology

The word "raster" has its origins in the Latin _rastrum_ (a rake), which is derived from _radere_ (to scrape). It originates from the raster scan of cathode ray tube (CRT) video monitors, which paint the image line by line by magnetically steering a focused electron beam.[6] By association, it can also refer to a rectangular grid of pixels. The word rastrum is now used to refer to a device for drawing musical staff lines.


Applications

Computer displays

Most modern computers have BITMAPPED DISPLAYS, where each on-screen pixel directly corresponds to a small number of bits in memory.[7] The screen is refreshed simply by scanning through pixels and coloring them according to each set of bits. The refresh procedure, being speed critical, is often implemented by dedicated circuitry, often as a part of a graphics processing unit. An early scanned display with raster computer graphics was invented in the late 1960s by A. Michael Noll at Bell Labs,[8] but its patent application filed February 5, 1970 was abandoned at the Supreme Court in 1977 over the issue of the patentability of computer software.[9]

Image storage

Most computer images are stored in raster graphics formats or compressed variations, including GIF, JPEG, and PNG, which are popular on the World Wide Web.[10][11]

Three-dimensional voxel raster graphics are employed in video games and are also used in medical imaging such as MRI scanners.[12]

Geographic information systems

GIS data is commonly stored in a raster format to encode geographic data as the pixel values. Georeferencing information can also be associated with pixels.


Resolution

Raster graphics are resolution dependent, meaning they cannot scale up to an arbitrary resolution without loss of apparent quality. This property contrasts with the capabilities of vector graphics, which easily scale up to the quality of the device rendering them. Raster graphics deal more practically than vector graphics with photographs and photo-realistic images, while vector graphics often serve better for typesetting or for graphic design. Modern computer-monitors typically display about 72 to 130 pixels per inch (PPI), and some modern consumer printers can resolve 2400 dots per inch (DPI) or more; determining the most appropriate image resolution for a given printer-resolution can pose difficulties, since printed output may have a greater level of detail than a viewer can discern on a monitor. Typically, a resolution of 150 to 300 PPI works well for 4-color process (CMYK) printing.

However, for printing technologies that perform color mixing through dithering (halftone) rather than through overprinting (virtually all home/office inkjet and laser printers), printer DPI and image PPI have a very different meaning, and this can be misleading. Because, through the dithering process, the printer builds a single image pixel out of several printer dots to increase color depth, the printer's DPI setting must be set far higher than the desired PPI to ensure sufficient color depth without sacrificing image resolution. Thus, for instance, printing an image at 250 PPI may actually require a printer setting of 1200 DPI.[13]


Raster-based image editors

Raster-based image editors, such as PaintShop Pro, Painter, Photoshop, Paint.NET, MS Paint, and GIMP, revolve around editing pixels, unlike vector-based image editors, such as Xfig, CorelDRAW, Adobe Illustrator, or Inkscape, which revolve around editing lines and shapes (vectors). When an image is rendered in a raster-based image editor, the image is composed of millions of pixels. At its core, a raster image editor works by manipulating each individual pixel.[14] Most pixel-based image editors work using the RGB color model, but some also allow the use of other color models such as the CMYK color model.[15]


See also

-   Comparison of raster graphics editors
-   Dither
-   Halftone
-   Raster graphics editor
-   Raster graphics file formats
-   Raster image processor
-   Raster scan
-   Rasterisation
-   Text semigraphics
-   Vector graphics - a contrasting graphics method


References

Raster_graphics Category:Computer graphics data structures Category:Graphics file formats Category:Digital geometry

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