AUTOCAD DXF (Drawing Interchange Format, or Drawing Exchange Format) is a CAD data file format developed by Autodesk[1] for enabling data interoperability between AutoCAD and other programs.

DXF was originally introduced in December 1982 as part of AutoCAD 1.0, and was intended to provide an exact representation of the data in the AutoCAD native file format, DWG (Drawing), for which Autodesk for many years did not publish specifications. Because of this, correct imports of DXF files have been difficult. Autodesk now publishes the DXF specifications as a PDF[2] on its website.

Versions of AutoCAD from Release 10 (October 1988) and up support both ASCII and binary forms of DXF. Earlier versions support only ASCII.

As AutoCAD has become more powerful, supporting more complex object types, DXF has become less useful. Certain object types, including ACIS solids and regions, are not documented. Other object types, including AutoCAD 2006's dynamic blocks, and all of the objects specific to the vertical market versions of AutoCAD, are partially documented, but not well enough to allow other developers to support them. For these reasons many CAD applications use the DWG format which can be licensed from Autodesk or non-natively from the Open Design Alliance.

DXF coordinates are always without dimensions so that the reader or user needs to know the drawing unit or has to extract it from the textual comments in the sheets.


File structure

ASCII versions of DXF can be read with any text editor. The basic organization of a DXF file is as follows:[3]

-   HEADER section – General information about the drawing. Each parameter has a variable name and an associated value.
-   CLASSES section – Holds the information for application-defined classes whose instances appear in the BLOCKS, ENTITIES, and OBJECTS sections of the database. Generally does not provide sufficient information to allow interoperability with other programs.
-   TABLES section – This section contains definitions of named items.

    Application ID (APPID) table
    Block Record (BLOCK_RECORD) table
    Dimension Style (DIMSTYLE) table
    Layer (LAYER) table
    Linetype (LTYPE) table
    Text style (STYLE) table
    User Coordinate System (UCS) table
    View (VIEW) table
    Viewport configuration (VPORT) table

-   BLOCKS section – This section contains Block Definition entities describing the entities comprising each Block in the drawing.
-   ENTITIES section – This section contains the drawing entities, including any Block References.
-   OBJECTS section – Contains the data that apply to nongraphical objects, used by AutoLISP and ObjectARX applications.
-   THUMBNAILIMAGE section – Contains the preview image for the DXF file.
-   END OF FILE

The data format of a DXF is called a "tagged data" format which "means that each data element in the file is preceded by an integer number that is called a group code. A group code's value indicates what type of data element follows. This value also indicates the meaning of a data element for a given object (or record) type. Virtually all user-specified information in a drawing file can be represented in DXF format."[4]


See also

-   .dwg (DWG)
-   Design Web Format (DWF)
-   QCad, an open source CAD application that uses the DXF file format internally and to save and import files
    -   LibreCAD, a version of QCAD Community Edition ported to Qt4
-   Open Design Alliance (originally called OpenDWG)
-   ShareCAD, a free online CAD viewer that supports DXF, among other formats


References


External links

-   DXF Reference from Autodesk Developer Network. Menu of documentation for chronological versions of DXF back to 1994.
-   AutoCAD DXF Reference (from Release 14, 1998) (PDF version from 2012)
-   AutoCAD DXF File Format Summary.
-   Annotated example DXF file
-   -   AutoDesk Online DXF File Viewer.

DXF Category:Autodesk D

[1] FAQS.org

[2]

[3] DXF File Structure

[4] "Chapter 1 -- DXF Format" Autodesk.com