IMAGE AND SCANNER INTERFACE SPECIFICATION (ISIS) is an industry standard interface for image scanning technologies, developed by Pixel Translations in 1990 (which became EMC Corporation's Captiva Software and later acquired by OpenText).

ISIS is an open standard for scanner control and a complete image-processing framework. It is currently supported by a number of application and scanner vendors.


Functions

The modular design allows the scanner to be accessed both directly or with built-in routines to handle most situations automatically.

A message-based interface with tags is used so that features, operations, and formats not yet supported by ISIS can be added as desired without waiting for a new version of the specification.

The standard addresses all of the issues that an application using a scanner needs to be concerned with. Functions include but are not limited to selecting, installing, and configuring a new scanner; setting scanner-specific parameters; scanning, reading and writing files, and fast image scaling, rotating, displaying, and printing. Drivers have been written to dynamically process data for operations such as converting grayscale to binary image data.

An ISIS interface can run scanners at or above their rated speed by linking drivers together in a pipe so that data flows from a scanner driver to compression driver, to packaging driver, to a file, viewer, or printer in a continuous stream, usually without the need to buffer more than a small portion of the full image. As a result of using the piping method, each driver can be optimised to perform one function well. Drivers are typically small and modular in order to make it simple to add new functionality to an existing application.


SDKs

-   EMC Captiva PixTools - imaging SDKs for C++/.NET
-   Atalasoft DotImage - imaging SDK for .NET


See also

-   Scanner Access Now Easy (SANE)
-   TWAIN
-   Windows Image Acquisition (WIA)


External links

-   EMC Captiva
-   Official portal for ISIS developers

Category:Image scanning Category:Standards