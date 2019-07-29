The RICH TEXT FORMAT (often abbreviated RTF) is a proprietary[1][2][3] document file format with published specification developed by Microsoft Corporation from 1987 until 2008 for cross-platform document interchange with Microsoft products. Prior to 2008, Microsoft published updated specifications for RTF with major revisions of Microsoft Word and Office versions.

Most word processors are able to read and write some versions of RTF.[4] There are several different revisions of RTF specification and portability of files will depend on what version of RTF is being used.[5][6]

It should not be confused with enriched text (media type "text/enriched" of RFC 1896) or its predecessor Rich Text (media type "text/richtext" of RFC 1341 and 1521), nor with IBM's RFT-DCA (Revisable Format Text-Document Content Architecture); these are completely different specifications.


History

Richard Brodie, Charles Simonyi, and David Luebbert, members of the Microsoft Word development team, developed the original RTF in the middle to late 1980s. Its syntax was influenced by the TeX typesetting language. The first RTF reader and writer shipped in 1987 as part of Microsoft Word 3.0 for Macintosh, which implemented the RTF version 1.0 specification. All subsequent releases of Microsoft Word for the Macintosh and all versions for Windows can read and write files in RTF format.

Microsoft maintains the format. The final version was 1.9.1 in 2008, implementing features of Office 2007. Microsoft has discontinued enhancements to the RTF specification. New features in Word 2010 and later versions will not save properly to the RTF format.[7] Microsoft anticipates no further updates to RTF, but has stated willingness to consider editorial and other non-substantive modifications of the RTF Specification during an associated ISO/IEC 29500 balloting period.[8]

For some time, RTF files were used to produce Windows .HLP help files, though this use has been superseded by Microsoft Compiled HTML Help files.

+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| | RTF version | | Publication date                        | | Microsoft Word version    | | MS Word release date | Notes                                                                                                                                                                                                                                                                                                                                                      |
+===============+===========================================+=============================+========================+============================================================================================================================================================================================================================================================================================================================================================+
| 1.0           | 1987                                      | Microsoft Word 3            | 1987                   | latest revision 6/92;[11][12] the 1992 revision defines support for Microsoft Object Linking and Embedding (OLE) objects and Macintosh Edition Manager subscriber objects; supported inclusion of WMF, PICT, Windows Device-dependent bitmap, Windows Device Independent bitmap and OS/2 Metafile picture types in a RTF file                              |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.1           |                                           | Microsoft Word 4            | 1989                   | font embedding – font data may be located inside the file                                                                                                                                                                                                                                                                                                  |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.2           | 1993                                      | Microsoft Word 5            | 1991                   | [13][14]                                                                                                                                                                                                                                                                                                                                                   |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.3           | January 1994                              | Microsoft Word 6            | 1993                   | 1/94 GC0165; discouraged use of Windows Device-independent bitmaps and Windows Device-dependent bitmaps for device-independence and interoperability. Rather, bitmaps should be embedded within Windows Metafiles[15][16]                                                                                                                                  |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.4           | September 1995                            | Microsoft Word 95/Word 7    | 1995                   | [17]                                                                                                                                                                                                                                                                                                                                                       |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.5           | April 1997                                | Microsoft Word 97/Word 8    | 1997                   | Unicode RTF – supports 16-bit Unicode character encoding scheme; defined inclusion of PNG, JPEG and EMF picture types in hexadecimal (the default) or binary format in a RTF file[18] Also contains a Japanese local RTF specification for the Japanese version of Word, called RTF-J, that is somewhat different from the standard RTF specification.[19] |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.6           | May 1999                                  | Microsoft Word 2000/Word 9  | 1999                   | Also includes Pocket Word and Exchange (used in RTF-HTML conversions).[20]                                                                                                                                                                                                                                                                                 |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.7           | August 2001                               | Microsoft Word 2002/Word 10 | 2001                   | 8/2001– Word 2002 RTF Specification[21][22][23]                                                                                                                                                                                                                                                                                                            |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.8           | April 2004                                | Microsoft Word 2003/Word 11 | 2003                   | 10/2003– Word 2003 RTF Specification[24]                                                                                                                                                                                                                                                                                                                   |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.9.1         | 19. March 2008                            | Microsoft Word 2007/Word 12 | 2006                   | use of XML markup – Custom XML Tags, SmartTags, Math elements in an RTF document, password protection, elements corresponding to Office Open XML Ecma-376 Part 4[26]                                                                                                                                                                                       |
|               | (RTF 1.9 – published in January 2007)[25] |                             |                        |                                                                                                                                                                                                                                                                                                                                                            |
+---------------+-------------------------------------------+-----------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: RTF specifications for Microsoft Word[9][10]


Code syntax

RTF is programmed by using groups, a backslash, a control word and a delimiter. Groups are contained within braces ({}), with the opening brace and closing brace indicating the start of the group and end of the group respectively. Groups are used to indicate what type of attributes to apply to certain text. The backslash (\) indicates that a control word is going to be used. Control words are specifically programmed commands for RTF. They can have certain states in which they're active. Their state is represented by a number. For example,

 : indicates that the Bold text is off
 : indicates that the Bold text is on

A delimiter is one of three things:

1.  A space
2.  A digit or hyphen (i.e. -23, 23, 275)
3.  A character other than a digit or letter i.e.(\, /, }) [27]

As an example, the following RTF code:

     {\rtf1\ansi{\fonttbl\f0\fswiss Helvetica;}\f0\pard
     This is some {\b bold} text.\par
     }

is a document which would be rendered like this when read by a program that supports RTF:

  This is some BOLD text.


Character encoding

A standard RTF file can consist of only 7-bit ASCII characters, but can encode characters beyond ASCII by escape sequences.[28] The character escapes are of two types: code page escapes and, starting with RTF 1.5, Unicode escapes. In a code page escape, two hexadecimal digits following a backslash and typewriter apostrophe are used for denoting a character taken from a Windows code page. For example, if the code page is set to Windows-1256 , the sequence \'c8 will encode the Arabic letter bāʼ (ب).

For a Unicode escape the control word \u is used, followed by a 16-bit signed decimal integer giving the Unicode UTF-16 code unit number. For the benefit of programs without Unicode support, this must be followed by the nearest representation of this character in the specified code page. For example, \u1576? would give the Arabic letter _bāʼ_ ب, specifying that older programs which do not have Unicode support should render it as a question mark instead.

The control word \uc0 can be used to indicate that subsequent Unicode escape sequences within the current group do not specify the substitution character.

Until RTF specification version 1.5 release in 1997, RTF has only handled 7-bit characters directly and 8-bit characters encoded as hexadecimal (using \'xx). RTF control words (since RTF 1.5) generally accept signed 16-bit numbers as arguments. Unicode values greater than 32767 must be expressed as negative numbers.[29] If a Unicode character is outside BMP, it is encoded with a surrogate pair. Support for Unicode was made due to text handling changes in Microsoft Word – Microsoft Word 97 is a partially Unicode-enabled application and it handles text using the 16-bit Unicode character encoding scheme.[30] Microsoft Word 2000 and later versions are Unicode-enabled applications that handle text using the 16-bit Unicode character encoding scheme.[31]

RTF files are usually 7-bit ASCII plain text. RTF consists of control words, control symbols, and groups. RTF files can be easily transmitted between PC based operating systems because they are encoded as a text file with 7-bit graphic ASCII characters. Converters that communicate with Microsoft Word for MS Windows or Macintosh should expect data transfer as 8-bit characters and binary data can contain any 8-bit values.[32]


Human readability

RTF is a data format for saving and sharing documents, not a markup language; it is not intended for intuitive and easy typing by a human.[33][34] Nonetheless, unlike many word processing formats, RTF code can be human-readable: when an RTF file containing mostly latin characters without diacritics is viewed as a plain text file, the underlying ASCII text is readable, provided that the author has kept formatting concise – otherwise, the formatting code can impede readability.

When RTF was released, most word processors used binary file formats (Microsoft Word used the .doc file format); RTF was unique in its simple formatting control which allows for a non-RTF aware program (e.g. Notepad) to open and provide a readable file. Today, the majority of these programs have changed to a XML-based file format (Word has switched to the .docx file format). Regardless, these files contain large amounts of formatting code. As such, they are ten or more times larger than the corresponding plain text.[35][36]

To be standard-compliant RTF, non-ASCII characters must be escaped. Thus, even with concise formatting, text that uses certain dashes and quotation marks is less legible. Latin languages that make heavy use of characters with diacritics, such as \'f1 for ñ and \'e9 for é are particularly difficult to read in RTF. Non-Latin scripts, consisting of characters such as \u21563 for 吻, are illegible in RTF. In addition, from its beginnings, RTF has supported Microsoft OLE embedded objects and Macintosh Edition Manager subscriber objects, which are not human-readable.


Common uses and interoperability

Most word processing software supports RTF format importing and exporting (following some version of RTF specification), and/or direct editing, often making it a "common" format between otherwise incompatible word processing software and operating systems. These factors contribute to its interoperability, but it will depend on what version of RTF is being used.[37] There are several consciously designed or accidentally born RTF dialects.[38] Most applications that read RTF files silently ignore unknown RTF control words.[39]

RTF is the internal markup language used by Microsoft Word.[40] Overall, since 1987, RTF files may be transferred back and forth between many old and new computer systems (and now over the Internet) despite differences between operating systems and their versions. (But there are incompatibilities, e.g. between RTF 1.0 1987 and later specifications, or between RTF 1.0-1.4 and RTF 1.5+ in use of Unicode characters.)[41][42][43] This makes it a useful format for basic formatted text documents such as instruction manuals, résumés, letters, and modest information documents. These documents at minimum support bold, italic, and underline text formatting. Also typically supported are left-, center-, and right-aligned text, font specification and document margins.

Font and margin defaults, as well as style presets and other functions vary according to program defaults. There may also be subtle differences perhaps between different versions of the RTF specification implemented in differing programs and program versions. Nevertheless, the RTF format is consistent enough from computer to computer to be considered highly portable and acceptable for cross-platform use. The format supports metadata such as title, author, etc. but not all implementations support this.

Objects

Use of Microsoft Object Linking and Embedding (OLE) objects or Macintosh Edition Manager subscriber objects limits the interoperability, because these objects are not widely supported in programs for viewing or editing RTF files (e.g. embedding of other files inside the RTF, such as tables or charts from spreadsheet application).[44][45][46][47][48] If a software that understands an OLE object is not available, the object is usually replaced by a picture (bitmap representation of the object) or not displayed at all.[49][50]

Pictures

RTF supports inclusion of JPEG, Portable Network Graphics (PNG), Enhanced Metafile (EMF), Windows Metafile (WMF), Apple PICT, Windows Device-dependent bitmap, Windows Device Independent bitmap and OS/2 Metafile picture types in hexadecimal (the default) or binary format in a RTF file. Not all of these picture types are supported in all RTF readers. When a RTF document is opened in software that does not support the picture type of an inserted picture, such picture is not displayed at all.

RTF writers usually convert inserted pictures from an unsupported picture types (e.g. BMP, TIFF, GIF, etc.) to one of supported picture types (PNG, WMF) or they do not include pictures at all.

For better compatibility with Microsoft products, some RTF writers include the same picture in two different picture types in one RTF file:[51]

-   one of the supported picture types (e.g. JPG or PNG) – it uses either the original format of the inserted graphics file (if this graphics file uses one of RTF-supported formats – such as PNG, JPG) or a RTF-supported picture type created by RTF writer in conversion from RTF-unsupported graphics file (e.g. conversion from BMP or GIF to PNG)
-   a Windows Metafile (WMF) copy of the original picture – for better compatibility with some Microsoft applications (e.g. Wordpad). The Windows Metafile copy is included without any compression.

This method increases the RTF file size rapidly. The RTF specification does not require this method and there are various implementations that include pictures without the WMF copy (e.g. Abiword or Ted).

For Microsoft Word it is also possible to set a specific registry value ("ExportPictureWithMetafile=0") in order to prevent Word from saving the WMF copy (see link "Document file size increases with EMF, PNG, GIF, or JPEG graphics in Word" at the beginning).

Fonts

RTF supports embedding of fonts used in the document, but this feature is not widely supported in software implementations.[52][53][54]

RTF also supports generic font family names used for font substitution: _roman_ (serif), _swiss_ (sans-serif), _modern_ (monospace), _script_, _decorative_, _technical_.[55] This feature is not widely supported for font substitution, e.g. in OpenOffice.org or Abiword.

Annotations

RTF specification supports annotations (comments in documents) since version 1.0.[56] RTF 1.7 specification defined some new features for annotations: date stamp (there was previously only "time stamp") and parents of annotations.[57] When a RTF document with annotations is opened in an application that does not support RTF annotations, they are not displayed at all. Similarly, when a document with annotations is saved as RTF in an application that does not support RTF annotations, annotations are not preserved in the RTF file. Some implementations may hide annotations by default or require some user action to display them – e.g. in Abiword since version 2.8 or in IBM Lotus Symphony (up to version 1.3).

Microsoft products do not support comments within footers, footnotes or headers. Inserting a comment within headers, footers, or footnotes may result in a corrupted RTF document.[58]

The RTF specification also supports footnotes (not to be confused with annotations), which are widely supported in RTF implementations (e.g. in OpenOffice.org, Abiword, KWord, Ted, but not in Wordpad). Endnotes are implemented as a variation on footnotes such that applications that support footnotes and not endnotes will render endnotes in an RTF document as footnotes. Similar to annotations, due to Microsoft products not supporting footnotes in headers, footers, or comments, including footnotes within those contexts in an RTF document may result in a corrupted document.[59]

Drawing objects

RTF 1.2 specification defined use of drawing objects such as rectangles, ellipses, lines, arrows, polygons and various other shapes. RTF 1.5 specification introduced many new control words for drawing objects. RTF drawing objects are also called "shapes" since RTF 1.5.[60]

However, RTF drawing objects are not supported in many RTF implementations, such as Apache OpenOffice[61] (though they are supported in LibreOffice 4.0 on[62]) or Abiword.[63] When an RTF document with drawing objects is opened in an application that does not support RTF drawing objects, they are not displayed at all. Some implementations will also not display any text inside drawing objects.[64][65] Similarly, when a document with drawing objects is saved as RTF in an application that does not support RTF drawing objects, these are not preserved in the RTF file.

Security concerns

Unlike Microsoft Word's DOC format, as well as the newer Office Open XML and OpenDocument formats, RTF does not support macros. For this reason, RTF was often recommended over those formats when the spread of computer viruses through macros was a concern. However, having the .RTF extension does not guarantee that a file is safe, since Microsoft Word will open standard DOC files renamed with an RTF extension and run any contained macros as usual. Manual examination of a file in a plain text editor such as Notepad, or use of the file command in UNIX-like systems, is required to determine whether or not a suspect file is really RTF.[66][67] Enabling Word's "Confirm file format conversion on open" option (not enabled by default in any version of Word) can also assist by warning a document being opened is in a format that does not match the format implied by the file's extension, and giving the option to abort opening that file.

RTF files can carry malware; sometimes malicious files in RTF format are renamed with the .DOC extension. One exploit attacking a vulnerability was patched in Microsoft Word in April 2015.[68]

Since 2014 there have been malware RTF files embedding OpenXML exploits (.DOCX file with ZIP header, renamed with RTF extension) "to create a multi-exploit master key to cover a number of recent patched exploits in one RTF with low AV detection".[69]


Implementations

Each RTF implementation usually implements only some versions or subsets of the RTF specification.[70] Many of the available RTF converters cannot understand all new features in the latest RTF specifications.[71][72]

The WordPad editor in Microsoft Windows creates RTF files by default. It once defaulted to the Microsoft Word 6.0 file format, but write support for Word documents (.doc) was dropped in a security update. Read support was also dropped in Windows 7. WordPad does not support some RTF features, such as headers and footers.[73] However, WordPad can read and save many RTF features that it cannot create such as: tables, strikeout, superscript, subscript, "extra" colors, text background colors, numbered lists, right or left indent, quasi-hypertext and URL linking, and various line spacings. RTF is also the data format for "rich text controls" in MS Windows APIs.[74]

The default text editor for Mac OS X, TextEdit, can also view, edit and save RTF files as well as RTFD files. TextEdit currently (as of July 2009) has limited ability to edit RTF document margins. Much older Mac word processing application programs such as MacWrite and WriteNow were able to view, edit, and save RTF files as well.

The free and open-source word processors AbiWord, Apache OpenOffice, Bean, Calligra, KWord, LibreOffice and NeoOffice can view, edit and save RTF files. RTF format is also used in the Ted word processor.

Scrivener uses individual RTF files for all the text files that make up a given "project".

SIL International’s Toolbox freeware application for developing and publishing dictionaries uses RTF as its most common form of document output. RTF files produced by Toolbox are designed to be used in Microsoft Word, but can also be used by other RTF-aware word processors.

RTF can be used on some ebook readers because of its interoperability,[75] simplicity, and low CPU processing requirements.

Libraries and converters

The open-source script rtf2xml can partially convert RTF to XML.[76][77]

GNU UnRTF is an open-source program to convert RTF into HTML, LaTeX, troff macros and other formats. pyth is a Python library to create and convert documents in RTF, XHTML and PDF format. Ruby RTF is a project to create Rich Text content via Ruby. RaTFink is a library of Tcl routines, free software, to generate RTF output, and a Cost script to convert SGML to RTF. [https://metacpan.org/module/RTF::Writer RTF::Writer] is a Perl module for generating RTF documents. PHPRtfLite is an API enabling developers to create RTF documents with PHP. Pandoc is an open source document converter with multiple output formats, including RTF. RTFGen is a project to create RTF documents via pure PHP. rtf.js is a JavaScript based library to render RTF documents in HTML.

The Mac OS X command line tool textutil enables files to be converted between rtf, rtfd, text, doc, docx, wordml, odt, and webarchive.[78]


Criticism

The Rich Text Format was the standard file format for text-based documents in applications developed for Microsoft Windows. Microsoft did not initially make the RTF specification publicly available, making it difficult for competitors to develop document conversion features in their applications. Because Microsoft's developers had access to the specification, Microsoft's applications had better compatibility with the format. Also, every time Microsoft changed the RTF specification, Microsoft's own applications had a lead in time-to-market, because competitors had to redevelop their applications after studying the newer version of the format.

Novell alleged that Microsoft's practices were anticompetitive in its 2004 antitrust complaint against Microsoft.[79][80] The RTF specifications lack some of the semantic definitions necessary to read, write, and modify documents.[81]


See also

-   Rich Text Format Directory (_.rtfd_ file type)
-   Enriched text format
-   List of document markup languages
-   Comparison of document markup languages
-   Revisable-Form Text (RFT), part of IBM's Document Content Architecture (DCA)
-   TNEF, Transport Neutral Encapsulation Format, the Microsoft Outlook default message format


References


External links

-   RTF 1.9.1 specification, March 2008, from Microsoft
-   RTF 1.8 specification, April 2004, from Microsoft
-   [http://msdn2.microsoft.com/en-us/library/aa140277(office.10).aspx RTF 1.6 specification], May 1999, from Microsoft
-   RTF 1.5 specification, April 1997, from biblioscape.com
-   RTF 1.0, 1.2, 1.3, 1.5 and 1.7 specifications, from the RTF Tools open-source project
-   RTF 1.0 specification, June 1992, from the latex2rtf open-source project
-   _RTF Pocket Guide_, book homepage

Category:Computer file formats Category:Technical communication Category:Office document file formats Category:Text file formats

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