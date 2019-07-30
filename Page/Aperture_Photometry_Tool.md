_APERTURE PHOTOMETRY TOOL_ (APT) is software with a graphical user interface for computing aperture photometry on astronomical imagery, which is a common research task in astronomy. Image overlays, graphical representations, statistics, models, options and controls for aperture-photometry calculations are brought together into a single package. The software also can be utilized as a FITS-image viewer. APT is executed on desktop and laptop computers, and is free of charge under a license that limits its use to astronomical research and education. The software may be downloaded from its official website, and requires the Java Virtual Machine to be installed on the user's computer.


History

The initial version of APT was released on November 2, 2007. The latest version is APT, v. 2.8.2, released on April 29, 2019. The software was developed by Dr. Russ Laher, a member of the professional staff at the Spitzer Science Center, part of the Infrared Processing and Analysis Center (IPAC) at the California Institute of Technology. A paper on APT was published in July 2012 in the journal _Publications of the Astronomy Society of the Pacific_.[1] A companion paper[2] compares the performance of APT vs. SExtractor,[3] an established command-line software program for aperture photometry.


Aperture and Sky Annulus

Aperture geometry, size, and location in the image are important parameters in aperture photometry. APT allows circular and elliptical shapes for apertures and sky annuli (the latter are used for background estimation). The rotation can be controlled in the case of an ellipse. The sky annulus will have the same shape as the aperture, but with larger inner and outer radii than the aperture. Although there is no hard limitation on the size, it is practically limited by the software's response time in the calculation for a large aperture and sky annulus, and the tool for the user to interactively specify the size parameters includes a subimage that is only about 80 pixels on a side (at this time). The aperture is placed on the desired image location with a mouse click. Options to allow minor adustments of the aperture position via centroiding are available. APT also has pixel-zapping functionality, which can be used to temporarily set the value of select pixels to NaN (not a number), effectively removing them from the aperture-photometry calculations.


Sky Coordinates

For aperture photometry on an astronomical image,it is often useful to know the sky coordinates of an image pixel. APT computes and displays sky coordinates if keywords that define a World Coordinate System (WCS) are present in the header of the FITS-image file. APT handles the commonly used tangent or gnomonic projection (TAN, TPV, and SIP subtypes), as well as the sine (a.k.a. orthographic), Cartesian, and Aitoff projections(the latter is probably only useful for display purposes).

Recent updates to APT include the ability to read FITS image files which use a Pixel Coordinate matrix (PCM), such as that used by the Panoramic Survey Telescope and Rapid Response System.[4]

APT calculates geometric image distortion only for the tangent projection at this time. Two distortion conventions are supported, which are the two major methods employed in modern astronomy. The SIPconvention is applied for images with CTYPE1 = 'RA---TAN-SIP' and CTYPE2 = 'DEC--TAN-SIP'. In the absence of SIP keywords, APT will attempt to read in and apply any PV distortion keywords in the FITS header for images with either CTYPE1 = 'RA---TAN' and CTYPE2 = 'DEC--TAN' or with CTYPE1 = 'RA---TPV' and CTYPE2 = 'DEC--TPV'. APT computes SIP distortion up to ninth polynomial order and PV distortion up to seventh polynomial order.


Java Requirements

APT is written in the Java computing language. The latest APT version was built with the JDK 1.6.0_65 on a Mac laptop running OS X Yosemite 10.10.5. Generally, APT can be executed with JRE versions greater than 1.6, since Java is "forward-compatible"; however, on some machines, later Java versions might give a "Surface not cacheable error", in which case trying a different Java version is the recommended workaround (at this time). On Macs, Java 1.6 (or so-called legacy Java 6) is required for APT to run as a double-click application (and APT might not work as a double-click application on some later versions of OS X), but APT generally works with higher versions of Java on the Mac if the wrapper script APT.csh is executed from a terminal window to start APT running.


References


External links

-

Category:Astronomy Category:Photometry

[1]

[2]

[3]

[4]