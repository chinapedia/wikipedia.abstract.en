The PORTABLE DOCUMENT FORMAT (PDF) (redundantly: PDF format) is a file format developed by Adobe in the 1990s to present documents, including text formatting and images, in a manner independent of application software, hardware, and operating systems.[1][2] Based on the PostScript language, each PDF file encapsulates a complete description of a fixed-layout flat document, including the text, fonts, vector graphics, raster images and other information needed to display it. PDF was standardized as an open format, ISO 32000, in 2008, and no longer requires any royalties for its implementation.[3]

Today, PDF files may contain a variety of content besides flat text and graphics including logical structuring elements, interactive elements such as annotations and form-fields, layers, rich media (including video content) and three dimensional objects using U3D or PRC, and various other data formats. The PDF specification also provides for encryption and digital signatures, file attachments and metadata to enable workflows requiring these features.


History and standardization

Adobe Systems made the PDF specification available free of charge in 1993. In the early years PDF was popular mainly in desktop publishing workflows, and competed with a variety of formats such as DjVu, Envoy, Common Ground Digital Paper, Farallon Replica and even Adobe's own PostScript format.

PDF was a proprietary format controlled by Adobe until it was released as an open standard on July 1, 2008, and published by the International Organization for Standardization as ISO 32000-1:2008,[4][5] at which time control of the specification passed to an ISO Committee of volunteer industry experts. In 2008, Adobe published a Public Patent License to ISO 32000-1 granting royalty-free rights for all patents owned by Adobe that are necessary to make, use, sell, and distribute PDF compliant implementations.[6]

PDF 1.7, the sixth edition of the PDF specification that became ISO 32000-1, includes some proprietary technologies defined only by Adobe, such as Adobe XML Forms Architecture (XFA) and JavaScript extension for Acrobat, which are referenced by ISO 32000-1 as normative and indispensable for the full implementation of the ISO 32000-1 specification. These proprietary technologies are not standardized and their specification is published only on Adobe’s website.[7][8][9][10][11] Many of them are also not supported by popular third-party implementations of PDF.

On July 28, 2017, ISO 32000-2:2017 (PDF 2.0) was published.[12] ISO 32000-2 does not include any proprietary technologies as normative references.[13]


Technical foundations

The PDF combines three technologies:

-   A subset of the PostScript page description programming language, for generating the layout and graphics.
-   A font-embedding/replacement system to allow fonts to travel with the documents.
-   A structured storage system to bundle these elements and any associated content into a single file, with data compression where appropriate.

PostScript

PostScript is a page description language run in an interpreter to generate an image, a process requiring many resources. It can handle graphics and standard features of programming languages such as if and loop commands. PDF is largely based on PostScript but simplified to remove flow control features like these, while graphics commands such as lineto remain.

Often, the PostScript-like PDF code is generated from a source PostScript file. The graphics commands that are output by the PostScript code are collected and tokenized. Any files, graphics, or fonts to which the document refers also are collected. Then, everything is compressed to a single file. Therefore, the entire PostScript world (fonts, layout, measurements) remains intact.

As a document format, PDF has several advantages over PostScript:

-   PDF contains tokenized and interpreted results of the PostScript source code, for direct correspondence between changes to items in the PDF page description and changes to the resulting page appearance.
-   PDF (from version 1.4) supports graphic transparency; PostScript does not.
-   PostScript is an interpreted programming language with an implicit global state, so instructions accompanying the description of one page can affect the appearance of any following page. Therefore, all preceding pages in a PostScript document must be processed to determine the correct appearance of a given page, whereas each page in a PDF document is unaffected by the others. As a result, PDF viewers allow the user to quickly jump to the final pages of a long document, whereas a PostScript viewer needs to process all pages sequentially before being able to display the destination page (unless the optional PostScript Document Structuring Conventions have been carefully complied with).


Technical overview

File structure

A PDF file is a 7-bit ASCII file, except for certain elements that may have binary content. A PDF file starts with a header containing the magic number and the version of the format such as %PDF-1.7. The format is a subset of a COS ("Carousel" Object Structure) format.[14] A COS tree file consists primarily of _objects_, of which there are eight types:[15]

-   Boolean values, representing _true_ or _false_
-   Numbers
-   Strings, enclosed within parentheses ((...)), may contain 8-bit characters.
-   Names, starting with a forward slash (/)
-   Arrays, ordered collections of objects enclosed within square brackets ([...])
-   Dictionaries, collections of objects indexed by Names enclosed within double pointy brackets (<<...>>)
-   Streams, usually containing large amounts of data, which can be compressed and binary
-   The null object

Furthermore, there may be comments, introduced with the percent sign (%). Comments may contain 8-bit characters.

Objects may be either _direct_ (embedded in another object) or _indirect_. Indirect objects are numbered with an _object number_ and a _generation number_ and defined between the obj and endobj keywords. An index table, also called the cross-reference table and marked with the xref keyword, follows the main body and gives the byte offset of each indirect object from the start of the file.[16] This design allows for efficient random access to the objects in the file, and also allows for small changes to be made without rewriting the entire file (_incremental update_). Beginning with PDF version 1.5, indirect objects may also be located in special streams known as _object streams_. This technique reduces the size of files that have large numbers of small indirect objects and is especially useful for _Tagged PDF_.

At the end of a PDF file is a trailer introduced with the trailer keyword. It contains

-   A dictionary
-   An offset to the start of the cross-reference table (the table starting with the xref keyword)
-   And the %%EOF end-of-file marker.

The dictionary contains

-   A reference to the root object of the tree structure, also known as the _catalog_
-   The count of indirect objects in the cross-reference table
-   And other optional information.

There are two layouts to the PDF files: non-linear (not "optimized") and linear ("optimized"). Non-linear PDF files consume less disk space than their linear counterparts, though they are slower to access because portions of the data required to assemble pages of the document are scattered throughout the PDF file. Linear PDF files (also called "optimized" or "web optimized" PDF files) are constructed in a manner that enables them to be read in a Web browser plugin without waiting for the entire file to download, since they are written to disk in a linear (as in page order) fashion.[17] PDF files may be optimized using Adobe Acrobat software or QPDF.

Imaging model

The basic design of how graphics are represented in PDF is very similar to that of PostScript, except for the use of transparency, which was added in PDF 1.4.

PDF graphics use a device-independent Cartesian coordinate system to describe the surface of a page. A PDF page description can use a matrix to scale, rotate, or skew graphical elements. A key concept in PDF is that of the _graphics state_, which is a collection of graphical parameters that may be changed, saved, and restored by a _page description_. PDF has (as of version 1.6) 24 graphics state properties, of which some of the most important are:

-   The _current transformation matrix_ (CTM), which determines the coordinate system
-   The _clipping path_
-   The _color space_
-   The _alpha constant_, which is a key component of transparency

Vector graphics

As in PostScript, vector graphics in PDF are constructed with _paths_. Paths are usually composed of lines and cubic Bézier curves, but can also be constructed from the outlines of text. Unlike PostScript, PDF does not allow a single path to mix text outlines with lines and curves. Paths can be stroked, filled, clipping. Strokes and fills can use any color set in the graphics state, including _patterns_.

PDF supports several types of patterns. The simplest is the _tiling pattern_ in which a piece of artwork is specified to be drawn repeatedly. This may be a _colored tiling pattern_, with the colors specified in the pattern object, or an _uncolored tiling pattern_, which defers color specification to the time the pattern is drawn. Beginning with PDF 1.3 there is also a _shading pattern_, which draws continuously varying colors. There are seven types of shading pattern of which the simplest are the _axial shade_ (Type 2) and _radial shade_ (Type 3).

Raster images

Raster images in PDF (called _Image XObjects_) are represented by dictionaries with an associated stream. The dictionary describes properties of the image, and the stream contains the image data. (Less commonly, a raster image may be embedded directly in a page description as an _inline image_.) Images are typically _filtered_ for compression purposes. Image filters supported in PDF include the general purpose filters

-   ASCII85DECODE a filter used to put the stream into 7-bit ASCII
-   ASCIIHEXDECODE similar to ASCII85Decode but less compact
-   FLATEDECODE a commonly used filter based on the deflate algorithm defined in (deflate is also used in the gzip, PNG, and zip file formats among others); introduced in PDF 1.2; it can use one of two groups of predictor functions for more compact zlib/deflate compression: _Predictor 2_ from the TIFF 6.0 specification and predictors (filters) from the PNG specification ()
-   LZWDECODE a filter based on LZW Compression; it can use one of two groups of predictor functions for more compact LZW compression: _Predictor 2_ from the TIFF 6.0 specification and predictors (filters) from the PNG specification
-   RUNLENGTHDECODE a simple compression method for streams with repetitive data using the run-length encoding algorithm and the image-specific filters
-   DCTDECODE a lossy filter based on the JPEG standard
-   CCITTFAXDECODE a lossless bi-level (black/white) filter based on the Group 3 or Group 4 CCITT (ITU-T) fax compression standard defined in ITU-T T.4 and T.6
-   JBIG2DECODE a lossy or lossless bi-level (black/white) filter based on the JBIG2 standard, introduced in PDF 1.4
-   JPXDECODE a lossy or lossless filter based on the JPEG 2000 standard, introduced in PDF 1.5

Normally all image content in a PDF is embedded in the file. But PDF allows image data to be stored in external files by the use of _external streams_ or _Alternate Images_. Standardized subsets of PDF, including PDF/A and PDF/X, prohibit these features.

Text

Text in PDF is represented by _text elements_ in page content streams. A text element specifies that _characters_ should be drawn at certain positions. The characters are specified using the _encoding_ of a selected _font resource_.

Fonts

A font object in PDF is a description of a digital typeface. It may either describe the characteristics of a typeface, or it may include an embedded _font file_. The latter case is called an _embedded font_ while the former is called an _unembedded font_. The font files that may be embedded are based on widely used standard digital font formats: TYPE 1 (and its compressed variant CFF), TRUETYPE, and (beginning with PDF 1.6) OPENTYPE. Additionally PDF supports the TYPE 3 variant in which the components of the font are described by PDF graphic operators.

Standard Type 1 Fonts (Standard 14 Fonts)

Fourteen typefaces, known as the _standard 14 fonts_, have a special significance in PDF documents:

-   Times (v3) (in regular, italic, bold, and bold italic)
-   Courier (in regular, oblique, bold and bold oblique)
-   Helvetica (v3) (in regular, oblique, bold and bold oblique)
-   Symbol
-   Zapf Dingbats

These fonts are sometimes called the _base fourteen fonts_.[18] These fonts, or suitable substitute fonts with the same metrics, should be available in most PDF readers, but they are not _guaranteed_ to be available in the reader, and may only display correctly if the system has them installed.[19] Fonts may be substituted if they are not embedded in a PDF.

Encodings

Within text strings, characters are shown using _character codes_ (integers) that map to glyphs in the current font using an _encoding_. There are a number of predefined encodings, including _WinAnsi_, _MacRoman_, and a large number of encodings for East Asian languages, and a font can have its own built-in encoding. (Although the WinAnsi and MacRoman encodings are derived from the historical properties of the Windows and Macintosh operating systems, fonts using these encodings work equally well on any platform.) PDF can specify a predefined encoding to use, the font's built-in encoding or provide a lookup table of differences to a predefined or built-in encoding (not recommended with TrueType fonts).[20] The encoding mechanisms in PDF were designed for Type 1 fonts, and the rules for applying them to TrueType fonts are complex.

For large fonts or fonts with non-standard glyphs, the special encodings _Identity-H_ (for horizontal writing) and _Identity-V_ (for vertical) are used. With such fonts it is necessary to provide a _ToUnicode_ table if semantic information about the characters is to be preserved.

Transparency

The original imaging model of PDF was, like PostScript's, _opaque_: each object drawn on the page completely replaced anything previously marked in the same location. In PDF 1.4 the imaging model was extended to allow transparency. When transparency is used, new objects interact with previously marked objects to produce blending effects. The addition of transparency to PDF was done by means of new extensions that were designed to be ignored in products written to the PDF 1.3 and earlier specifications. As a result, files that use a small amount of transparency might view acceptably in older viewers, but files making extensive use of transparency could be viewed incorrectly in an older viewer without warning.

The transparency extensions are based on the key concepts of _transparency groups_, _blending modes_, _shape_, and _alpha_. The model is closely aligned with the features of Adobe Illustrator version 9. The blend modes were based on those used by Adobe Photoshop at the time. When the PDF 1.4 specification was published, the formulas for calculating blend modes were kept secret by Adobe. They have since been published.[21]

The concept of a transparency group in PDF specification is independent of existing notions of "group" or "layer" in applications such as Adobe Illustrator. Those groupings reflect logical relationships among objects that are meaningful when editing those objects, but they are not part of the imaging model.

Interactive elements

PDF files may contain interactive elements such as annotations, form fields, video, 3D and rich media.

RICH MEDIA PDF is a PDF file including interactive content that can be embedded or linked within the file.

INTERACTIVE FORMS is a mechanism to add forms to the PDF file format.

PDF currently supports two different methods for integrating data and PDF forms. Both formats today coexist in the PDF specification:[22][23][24][25]

-   ACROFORMS (also known as ACROBAT FORMS), introduced in the PDF 1.2 format specification and included in all later PDF specifications.
-   Adobe XML Forms Architecture (XFA) forms, introduced in the PDF 1.5 format specification. Adobe XFA Forms are not compatible with AcroForms.[26] XFA was deprecated from PDF with PDF 2.0.

AcroForms

AcroForms were introduced in the PDF 1.2 format. AcroForms permit using objects (_e.g._ text boxes, Radio buttons, _etc._) and some code (_e.g._ JavaScript).

Alongside the standard PDF action types, interactive forms (AcroForms) support submitting, resetting, and importing data. The "submit" action transmits the names and values of selected interactive form fields to a specified uniform resource locator (URL). Interactive form field names and values may be submitted in any of the following formats, (depending on the settings of the action’s ExportFormat, SubmitPDF, and XFDF flags):[27]

-   HTML Form format (HTML 4.01 Specification since PDF 1.5; HTML 2.0 since 1.2)
-   Forms Data Format (FDF)
-   XML Forms Data Format (XFDF) (external XML Forms Data Format Specification, Version 2.0; supported since PDF 1.5; it replaced the "XML" form submission format defined in PDF 1.4)
-   PDF (the entire document can be submitted rather than individual fields and values). (defined in PDF 1.4)

AcroForms can keep form field values in external stand-alone files containing key:value pairs. The external files may use Forms Data Format (FDF) and XML Forms Data Format (XFDF) files.[28][29][30] The usage rights (UR) signatures define rights for import form data files in FDF, XFDF and text (CSV/TSV) formats, and export form data files in FDF and XFDF formats.[31]

Forms Data Format (FDF)

The Forms Data Format (FDF) is based on PDF, it uses the same syntax and has essentially the same file structure, but is much simpler than PDF, since the body of an FDF document consists of only one required object. Forms Data Format is defined in the PDF specification (since PDF 1.2). The Forms Data Format can be used when submitting form data to a server, receiving the response, and incorporating into the interactive form. It can also be used to export form data to stand-alone files that can be imported back into the corresponding PDF interactive form.

XML Forms Data Format (XFDF)

XML Forms Data Format (XFDF) is the XML version of Forms Data Format, but the XFDF implements only a subset of FDF containing forms and annotations. There are not XFDF equivalents for some entries in the FDF dictionary – such as the Status, Encoding, JavaScript, Pages keys, EmbeddedFDFs, Differences and Target. In addition, XFDF does not allow the spawning, or addition, of new pages based on the given data; as can be done when using an FDF file. The XFDF specification is referenced (but not included) in PDF 1.5 specification (and in later versions). It is described separately in _XML Forms Data Format Specification_.[32] The PDF 1.4 specification allowed form submissions in XML format, but this was replaced by submissions in XFDF format in the PDF 1.5 specification. XFDF conforms to the XML standard.

As of December 2016, XFDF 3.0 is an ISO/IEC standard under the formal name _ISO 19444-1:2016 – Document management – XML Forms Data Format – Part 1: Use of ISO 32000-2 (XFDF 3.0)_.[33] This standard is a normative reference of ISO 32000-2.

XFDF can be used in the same way as FDF; e.g., form data is submitted to a server, modifications are made, then sent back and the new form data is imported in an interactive form. It can also be used to export form data to stand-alone files that can be imported back into the corresponding PDF interactive form.

Adobe XML Forms Architecture (XFA)

In PDF 1.5, Adobe Systems introduced a proprietary format for forms; Adobe XML Forms Architecture (XFA). Adobe XFA Forms are not compatible with ISO 32000's AcroForms feature, and most PDF processors do not handle XFA content. The XFA specification is referenced from ISO 32000-1 / PDF 1.7 as an external proprietary specification, and was entirely deprecated from PDF with ISO 32000-2 (PDF 2.0).

Logical structure and accessibility

A "tagged" PDF (see clause 14.8 in ISO 32000) includes document structure and semantics information to enable reliable text extraction and accessibility. Technically speaking, tagged PDF is a stylized use of the format that builds on the logical structure framework introduced in PDF 1.3. Tagged PDF defines a set of standard structure types and attributes that allow page content (text, graphics, and images) to be extracted and reused for other purposes.Duff Johnson, April 22, 2004

What is Tagged PDF?

Tagged PDF is not required in situations where a PDF file is intended only for print. Since the feature is optional, and since the rules for Tagged PDF were relatively vague in ISO 32000-1, support for tagged PDF amongst consuming devices, including assistive technology (AT), is uneven at this time.[34] ISO 32000-2, however, includes an improved discussion of tagged PDF which is anticipated to facilitate

An ISO-standardized subset of PDF specifically targeted at accessibility; PDF/UA, was first published in 2012.

Optional Content Groups (layers of it)

With the introduction of PDF version, 1.5 (2003) came the concept of Layers. Layers, or as they are more formally known Optional Content Groups (OCGs), refer to sections of content in a PDF document that can be selectively viewed or hidden by document authors or consumers. This capability is useful in CAD drawings, layered artwork, maps, multi-language documents etc. Basically, it consists of an Optional Content Properties Dictionary added to the document root. This dictionary contains an array of Optional Content Groups (OCGs), each describing a set of information and each of which may be individually displayed or suppressed, plus a set of Optional Content Configuration Dictionaries, which give the status (Displayed or Suppressed) of the given OCGs.

Security and signatures

A PDF file may be encrypted for security, or digitally signed for authentication. However, since a SHA-1 collision was discovered making use of the PDF format, digital signatures using SHA-1 have been shown to be insecure.[35]

The standard security provided by Acrobat PDF consists of two different methods and two different passwords: a _user password_, which encrypts the file and prevents opening, and an _owner password_, which specifies operations that should be restricted even when the document is decrypted, which can include modifying, printing, or copying text and graphics out of the document, or adding or modifying text notes and AcroForm fields. The user password encrypts the file, while the owner password does not, instead relying on client software to respect these restrictions. An owner password can easily be removed by software, including some free online services.[36] Thus, the use restrictions that a document author places on a PDF document are not secure, and cannot be assured once the file is distributed; this warning is displayed when applying such restrictions using Adobe Acrobat software to create or edit PDF files.

Even without removing the password, most freeware or open source PDF readers ignore the permission "protections" and allow the user to print or make copy of excerpts of the text as if the document were not limited by password protection.[37][38][39]

There are a number of commercial solutions that offer more robust means of information rights management. Not only can they restrict document access but they also reliably enforce permissions in ways that the standard security handler does not.[40]

Usage rights

Beginning with PDF 1.5, Usage rights (UR) signatures are used to enable additional interactive features that are not available by default in a particular PDF viewer application. The signature is used to validate that the permissions have been granted by a bona fide granting authority. For example, it can be used to allow a user:[41]

-   To save the PDF document along with modified form and/or annotation data
-   Import form data files in FDF, XFDF, and text (CSV/TSV) formats
-   Export form data files in FDF and XFDF formats
-   Submit form data
-   Instantiate new pages from named page templates
-   Apply a digital signature to existing digital signature form field
-   Create, delete, modify, copy, import, and export annotations

For example, Adobe Systems grants permissions to enable additional features in Adobe Reader, using public-key cryptography. Adobe Reader verifies that the signature uses a certificate from an Adobe-authorized certificate authority. Any PDF application can use this same mechanism for its own purposes.[42]

File attachments

PDF files can have file attachments which processors may access and open or save to a local filesystem.

Metadata

PDF files can contain two types of metadata.[43] The first is the Document Information Dictionary, a set of key/value fields such as author, title, subject, creation and update dates. This is stored in the optional Info trailer of the file. A small set of fields is defined, and can be extended with additional text values if required. This method is deprecated in PDF 2.0.

In PDF 1.4, support was added for Metadata Streams, using the Extensible Metadata Platform (XMP) to add XML standards-based extensible metadata as used in other file formats. This allows metadata to be attached to any stream in the document, such as information about embedded illustrations, as well as the whole document (attaching to the document catalog), using an extensible schema.

Usage restrictions and monitoring

PDFs may be encrypted so that a password is needed to view or edit the contents. PDF 2.0 defines 256-bit AES encryption as standard for PDF 2.0 files. The PDF Reference also defines ways that third parties can define their own encryption systems for PDF.

PDF files may be digitally signed; complete details on implementing digital signatures in PDF is provided in ISO 32000-2.

PDF files may also contain embedded DRM restrictions that provide further controls that limit copying, editing or printing. These restrictions depend on the reader software to obey them, so the security they provide is limited.

Default display settings

PDF documents can contain display settings, including the page display layout and zoom level. Adobe Reader uses these settings to override the user's default settings when opening the document.[44] The free Adobe Reader cannot remove these settings.


Intellectual property

Anyone may create applications that can read and write PDF files without having to pay royalties to Adobe Systems; Adobe holds patents to PDF, but licenses them for royalty-free use in developing software complying with its PDF specification.[45]


Technical issues

Accessibility

PDF files can be created specifically to be accessible for disabled people.[46][47][48][49][50] PDF file formats in use can include tags, text equivalents, captions, audio descriptions, and more. Some software can automatically produce tagged PDFs, but this feature is not always enabled by default.[51][52] Leading screen readers, including JAWS, Window-Eyes, Hal, and Kurzweil 1000 and 3000 can read tagged PDF.[53][54] Moreover, tagged PDFs can be re-flowed and magnified for readers with visual impairments. Adding tags to older PDFs and those that are generated from scanned documents can present some challenges.

One of the significant challenges with PDF accessibility is that PDF documents have three distinct views, which, depending on the document's creation, can be inconsistent with each other. The three views are (i) the physical view, (ii) the tags view, and (iii) the content view. The physical view is displayed and printed (what most people consider a PDF document). The tags view is what screen readers and other assistive technologies use to deliver a high-quality navigation and reading experience to users with disabilities. The content view is based on the physical order of objects within the PDF's content stream and may be displayed by software that does not fully support the tags view, such as the Reflow feature in Adobe's Reader.

PDF/UA, the International Standard for accessible PDF based on ISO 32000-1 was first published as ISO 14289-1 in 2012, and establishes normative language for accessible PDF technology.

Viruses and exploits

PDF attachments carrying viruses were first discovered in 2001. The virus, named _OUTLOOK.PDFWorm_ or _Peachy_, uses Microsoft Outlook to send itself as an attachment to an Adobe PDF file. It was activated with Adobe Acrobat, but not with Acrobat Reader.[55]

From time to time, new vulnerabilities are discovered in various versions of Adobe Reader,[56] prompting the company to issue security fixes. Other PDF readers are also susceptible. One aggravating factor is that a PDF reader can be configured to start automatically if a web page has an embedded PDF file, providing a vector for attack. If a malicious web page contains an infected PDF file that takes advantage of a vulnerability in the PDF reader, the system may be compromised even if the browser is secure. Some of these vulnerabilities are a result of the PDF standard allowing PDF documents to be scripted with JavaScript. Disabling JavaScript execution in the PDF reader can help mitigate such future exploits, although it does not protect against exploits in other parts of the PDF viewing software. Security experts say that JavaScript is not essential for a PDF reader, and that the security benefit that comes from disabling JavaScript outweighs any compatibility issues caused.[57] One way of avoiding PDF file exploits is to have a local or web service convert files to another format before viewing.

On March 30, 2010 security researcher Didier Stevens reported an Adobe Reader and Foxit Reader exploit that runs a malicious executable if the user allows it to launch when asked.[58]


Content

A PDF file is often a combination of vector graphics, text, and bitmap graphics. The basic types of content in a PDF are:

-   Text stored as content streams (i.e., not encoded in plain text)
-   Vector graphics for illustrations and designs that consist of shapes and lines
-   Raster graphics for photographs and other types of image
-   Multimedia objects in the document

In later PDF revisions, a PDF document can also support links (inside document or web page), forms, JavaScript (initially available as plugin for Acrobat 3.0), or any other types of embedded contents that can be handled using plug-ins.

PDF 1.6 supports interactive 3D documents embedded in the PDF – 3D drawings can be embedded using U3D or PRC and various other data formats.[59][60]

Two PDF files that look similar on a computer screen may be of very different sizes. For example, a high resolution raster image takes more space than a low resolution one. Typically higher resolution is needed for printing documents than for displaying them on screen. Other things that may increase the size of a file is embedding full fonts, especially for Asiatic scripts, and storing text as graphics.


Software

PDF viewers are generally provided free of charge, and many versions are available from a variety of sources.

There are many software options for creating PDFs, including the PDF printing capabilities built into macOS, iOS,[61] and most Linux distributions, LibreOffice, Microsoft Office 2007 (if updated to SP2) and later,[62] WordPerfect 9, Scribus, numerous PDF print drivers for Microsoft Windows, the pdfTeX typesetting system, the DocBook PDF tools, applications developed around Ghostscript and Adobe Acrobat itself as well as Adobe InDesign, Adobe FrameMaker, Adobe Illustrator, Adobe Photoshop. Google's online office suite Google Docs also allows for uploading and saving to PDF.

Raster image processors (RIPs) are used to convert PDF files into a raster format suitable for imaging onto paper and other media in printers, digital production presses and prepress in a process known as rasterisation. RIPs capable of processing PDF directly include the Adobe PDF Print Engine[63] from Adobe Systems and Jaws[64] and the Harlequin RIP from Global Graphics.

Conversions

Documents saved in PDF (Portable Document Format, Portable Document Format for Archiving, Forms Data Format, any printable document) could be converted back and forth from many other formats such as[65]:

-   Microsoft Office formats,
-   Rich Text Format,
-   Open office,
-   WordPerfect,
-   Microsoft Windows Bitmap,
-   Windows Metafile,
-   Enhanced Metafile,
-   Graphics Interchange Format,
-   Microsoft HD Photo File,
-   JPEG File Interchange,
-   JPEG 2000 File Format and Code Stream,
-   Portable Network Graphics,
-   Tagged Image File,
-   HyperText Markup Language,
-   MIME Encapsulation of Aggregate HTML Documents,
-   Scalable Vector Graphics,
-   Microsoft Outlook, Text,
-   XML Paper Specification,
-   Extensible Markup Language,
-   Silverlight XPS Document,
-   Extensible Application Markup Language

etc.

Companies such as Adobe Acrobat provide SDK libraries for developers to add and create PDF features in any software. Besides Adobe PDF Library, companies such as PDFTron Systems, Apache PDFBox, and Foxit Software provide similar SDKs.

Annotation

Adobe Acrobat is one example of proprietary software that allows the user to annotate, highlight, and add notes to already created PDF files. One UNIX application available as free software (under the GNU General Public License) is PDFedit. The freeware Foxit Reader, available for Microsoft Windows, macOS and Linux, allows annotating documents. Tracker Software's PDF-XChange Viewer allows annotations and markups without restrictions in its freeware alternative. Apple's macOS's integrated PDF viewer, Preview, does also enable annotations as does the open source software Skim, with the latter supporting interaction with LaTeX, SyncTeX, and PDFSync and integration with BibDesk reference management software. Freeware Qiqqa can create an annotation report that summarizes all the annotations and notes one has made across their library of PDFs.

There are also web annotation systems that support annotation in pdf and other documents formats. In cases where PDFs are expected to have all of the functionality of paper documents, ink annotation is required.

Other

Examples of PDF software as online services including Scribd for viewing and storing, Pdfvue for online editing, and Thinkfree, Zamzar for conversion.

In 1993 the Jaws raster image processor from Global Graphics became the first shipping prepress RIP that interpreted PDF natively without conversion to another format. The company released an upgrade to their Harlequin RIP with the same capability in 1997.[66]

Agfa-Gevaert introduced and shipped Apogee, the first prepress workflow system based on PDF, in 1997.

Many commercial offset printers have accepted the submission of press-ready PDF files as a print source, specifically the PDF/X-1a subset and variations of the same.[67] The submission of press-ready PDF files are a replacement for the problematic need for receiving collected native working files.

PDF was selected as the "native" metafile format for Mac OS X, replacing the PICT format of the earlier classic Mac OS. The imaging model of the Quartz graphics layer is based on the model common to Display PostScript and PDF, leading to the nickname _Display PDF_. The Preview application can display PDF files, as can version 2.0 and later of the Safari web browser. System-level support for PDF allows Mac OS X applications to create PDF documents automatically, provided they support the OS-standard printing architecture. The files are then exported in PDF 1.3 format according to the file header. When taking a screenshot under Mac OS X versions 10.0 through 10.3, the image was also captured as a PDF; later versions save screen captures as a PNG file, though this behaviour can be set back to PDF if desired.

In 2006 PDF was widely accepted as the standard print job format at the Open Source Development Labs Printing Summit. It is supported as a print job format by the Common Unix Printing System and desktop application projects such as GNOME, KDE, Firefox, Thunderbird, LibreOffice and OpenOffice have switched to emit print jobs in PDF.[68]

Some desktop printers also support direct PDF printing, which can interpret PDF data without external help. Currently, all PDF capable printers also support PostScript, but most PostScript printers do not support direct PDF printing.

The Free Software Foundation once thought of as one of their high priority projects to be "developing a free, high-quality and fully functional set of libraries and programs that implement the PDF file format and associated technologies to the ISO 32000 standard."[69][70] In 2011, however, the GNU PDF project was removed from the list of "high priority projects" due to the maturation of the Poppler library,[71] which has enjoyed wider use in applications such as Evince with the GNOME desktop environment. Poppler is based on Xpdf[72][73] code base. There are also commercial development libraries available as listed in List of PDF software.

The Apache PDFBox project of the Apache Software Foundation is an open source Java library for working with PDF documents. PDFBox is licensed under the Apache License.[74]


See also


Notes


References


Further reading

-

Standards

-   PDF 2.0
-   PDF 1.7 1
-   PDF 1.6 ()
-   PDF 1.4 ()
-   PDF 1.3 ()


External links

-   PDF Association – The PDF Association is the industry association for software developers producing or processing PDF files.
-   Adobe PDF 101: Summary of PDF
-   Adobe: PostScript vs. PDF – Official introductory comparison of PS, EPS vs. PDF.
-   – Information about PDF/E and PDF/UA specification for accessible documents file format (archived by The Wayback Machine)

-   2 the PDF/A-1 ISO standard published by the International Organization for Standardization (chargeable)
-   PDF Reference and Adobe Extensions to the PDF Specification
-   Portable Document Format: An Introduction for Programmers – Introduction to PDF vs. PostScript and PDF internals (up to v1.3)
-   The Camelot Paper – the paper in which John Warnock outlined the project that created PDF
-   Everything you wanted to know about PDF but were afraid to ask – recording of talk by Leonard Rosenthol (Adobe Systems) at TUG 2007

{{-}}

Category:Computer-related introductions in 1993 Category:Adobe Inc. Category:Digital press Category:Electronic documents Category:Graphics file formats Category:ISO standards Category:Office document file formats Category:Open formats Category:Page description languages Category:Vector graphics PDF_software

[1] Adobe Systems Incorporated, PDF Reference, Sixth edition, version 1.23 (30 MB), Nov 2006, p. 33.

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

[15] Adobe Systems, PDF Reference, p. 51.

[16] Adobe Systems, PDF Reference, pp. 39–40.

[17]

[18]

[19] The PDF Font Aquarium

[20]

[21] PDF Blend Modes Addendum

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

[43] Adobe PDF reference version 1.7, section 10.2

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

[55] Adobe Forums, Announcement: PDF Attachment Virus "Peachy", 15 August 2001.

[56]

[57] Steve Gibson – SecurityNow Podcast

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67] Press-Ready PDF Files "For anyone interested in having their graphic project commercially printed directly from digital files or PDFs." (last checked on 2009-02-10).

[68]

[69] On 2014-04-02, a note dated 2009-02-10 referred to Current FSF High Priority Free Software Projects as a source. Content of the latter page, however, changes over time.

[70]

[71]

[72] Poppler homepage "Poppler is a PDF rendering library based on the xpdf-3.0 code base." (last checked on 2009-02-10)

[73] Xpdf license "Xpdf is licensed under the GNU General Public License (GPL), version 2 or 3." (last checked on 2012-09-23).

[74] The Apache PDFBox project . Retrieved 2009-09-19.