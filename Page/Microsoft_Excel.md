MICROSOFT EXCEL is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications. It has been a very widely applied spreadsheet for these platforms, especially since version 5 in 1993, and it has replaced Lotus 1-2-3 as the industry standard for spreadsheets. Excel forms part of the Microsoft Office suite of software.


Features

Basic operation

Microsoft Excel has the basic features of all spreadsheets,[1] using a grid of _cells_ arranged in numbered _rows_ and letter-named _columns_ to organize data manipulations like arithmetic operations. It has a battery of supplied functions to answer statistical, engineering and financial needs. In addition, it can display data as line graphs, histograms and charts, and with a very limited three-dimensional graphical display. It allows sectioning of data to view its dependencies on various factors for different perspectives (using _pivot tables_ and the _scenario manager_).[2] It has a programming aspect, _Visual Basic for Applications_, allowing the user to employ a wide variety of numerical methods, for example, for solving differential equations of mathematical physics,[3][4] and then reporting the results back to the spreadsheet. It also has a variety of interactive features allowing user interfaces that can completely hide the spreadsheet from the user, so the spreadsheet presents itself as a so-called _application_, or _decision support system_ (DSS), via a custom-designed user interface, for example, a stock analyzer,[5] or in general, as a design tool that asks the user questions and provides answers and reports.[6][7][8] In a more elaborate realization, an Excel application can automatically poll external databases and measuring instruments using an update schedule,[9] analyze the results, make a Word report or PowerPoint slide show, and e-mail these presentations on a regular basis to a list of participants. Excel was not designed to be used as a database.

Microsoft allows for a number of optional command-line switches to control the manner in which Excel starts.[10]

Functions

Excel 2016 has 484 functions.[11] Of these, 360 existed prior to Excel 2010. Microsoft classifies these functions in 14 categories. Of the 484 current functions, 386 may be called from VBA as methods of the object "WorksheetFunction"[12] and 44 have the same names as VBA functions.[13]

Macro programming

VBA programming

Functions_in_Excel.PNG Subroutine_in_Excel.PNG

The Windows version of Excel supports programming through Microsoft's Visual Basic for Applications (VBA), which is a dialect of Visual Basic. Programming with VBA allows spreadsheet manipulation that is awkward or impossible with standard spreadsheet techniques. Programmers may write code directly using the Visual Basic Editor (VBE), which includes a window for writing code, debugging code, and code module organization environment. The user can implement numerical methods as well as automating tasks such as formatting or data organization in VBA[14] and guide the calculation using any desired intermediate results reported back to the spreadsheet.

VBA was removed from Mac Excel 2008, as the developers did not believe that a timely release would allow porting the VBA engine natively to Mac OS X. VBA was restored in the next version, Mac Excel 2011,[15] although the build lacks support for ActiveX objects, impacting some high level developer tools.[16]

A common and easy way to generate VBA code is by using the Macro Recorder.[17] The Macro Recorder records actions of the user and generates VBA code in the form of a macro. These actions can then be repeated automatically by running the macro. The macros can also be linked to different trigger types like keyboard shortcuts,[18] a command button or a graphic. The actions in the macro can be executed from these trigger types or from the generic toolbar options. The VBA code of the macro can also be edited in the VBE. Certain features such as loop functions and screen prompt by their own properties, and some graphical display items, cannot be recorded but must be entered into the VBA module directly by the programmer. Advanced users can employ user prompts to create an interactive program, or react to events such as sheets being loaded or changed.

Macro Recorded code may not be compatible with Excel versions. Some code that is used in Excel 2010 cannot be used in Excel 2003. Making a Macro that changes the cell colours and making changes to other aspects of cells may not be backward compatible.

VBA code interacts with the spreadsheet through the Excel _Object Model_,[19] a vocabulary identifying spreadsheet objects, and a set of supplied functions or _methods_ that enable reading and writing to the spreadsheet and interaction with its users (for example, through custom toolbars or _command bars_ and _message boxes_). User-created VBA subroutines execute these actions and operate like macros generated using the macro recorder, but are more flexible and efficient.

History

From its first version Excel supported end user programming of macros (automation of repetitive tasks) and user defined functions (extension of Excel's built-in function library). In early versions of Excel these programs were written in a macro language whose statements had formula syntax and resided in the cells of special purpose macro sheets (stored with file extension .XLM in Windows.) XLM was the default macro language for Excel through Excel 4.0.[20] Beginning with version 5.0 Excel recorded macros in VBA by default but with version 5.0 XLM recording was still allowed as an option. After version 5.0 that option was discontinued. All versions of Excel, including Excel 2010 are capable of running an XLM macro, though Microsoft discourages their use.[21]

Charts

Excel_chart.PNG made using Microsoft Excel]]

Excel supports charts, graphs, or histograms generated from specified groups of cells. The generated graphic component can either be embedded within the current sheet, or added as a separate object.

These displays are dynamically updated if the content of cells change. For example, suppose that the important design requirements are displayed visually; then, in response to a user's change in trial values for parameters, the curves describing the design change shape, and their points of intersection shift, assisting the selection of the best design.

Add-ins

Additional features are available using add-ins. Several are provided with Excel, including:

-   Analysis ToolPak: Provides data analysis tools for statistical and engineering analysis (includes analysis of variance and regression analysis)
-   Analysis ToolPak VBA: VBA functions for Analysis ToolPak
-   Euro Currency Tools: Conversion and formatting for euro currency
-   Solver Add-In: Tools for optimization and equation solving


Data storage and communication

Number of rows and columns

Versions of Excel up to 7.0 had a limitation in the size of their data sets of 16K (2¹⁴ = ) rows. Versions 8.0 through 11.0 could handle 64K (2¹⁶ = ) rows and 256 columns (2⁸ as label 'IV'). Version 12.0 onwards, including the current Version 16.x, can handle over 1M (2²⁰ = ) rows, and (2¹⁴ as label 'XFD') columns.[22]

File formats

Microsoft Excel up until 2007 version used a proprietary binary file format called Excel Binary File Format (.XLS) as its primary format.[23] Excel 2007 uses Office Open XML as its primary file format, an XML-based format that followed after a previous XML-based format called "XML Spreadsheet" ("XMLSS"), first introduced in Excel 2002.[24]

Although supporting and encouraging the use of new XML-based formats as replacements, Excel 2007 remained backwards-compatible with the traditional, binary formats. In addition, most versions of Microsoft Excel can read CSV, DBF, SYLK, DIF, and other legacy formats. Support for some older file formats was removed in Excel 2007.[25] The file formats were mainly from DOS-based programs.

Binary

OpenOffice.org has created documentation of the Excel format.[26] Since then Microsoft made the Excel binary format specification available to freely download.[27]

XML Spreadsheet

The _XML Spreadsheet_ format introduced in Excel 2002[28] is a simple, XML based format missing some more advanced features like storage of VBA macros. Though the intended file extension for this format is _.xml_, the program also correctly handles XML files with _.xls_ extension. This feature is widely used by third-party applications (e.g. _MySQL Query Browser_) to offer "export to Excel" capabilities without implementing binary file format. The following example will be correctly opened by Excel if saved either as _Book1.xml_ or _Book1.xls_:

    <?xml version="1.0"?>
    <Workbook ns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
     <Worksheet ss:Name="Sheet1">
      <Table ss:ExpandedColumnCount="2" ss:ExpandedRowCount="2" x:FullColumns="1" x:FullRows="1">
       <Row>
        <Cell><Data ss:Type="String">Name</Data></Cell>
        <Cell><Data ss:Type="String">Example</Data></Cell>
       </Row>
       <Row>
        <Cell><Data ss:Type="String">Value</Data></Cell>
        <Cell><Data ss:Type="Number">123</Data></Cell>
       </Row>
      </Table>
     </Worksheet>
    </Workbook>

Current file extensions

Microsoft Excel 2007, along with the other products in the Microsoft Office 2007 suite, introduced new file formats. The first of these (.xlsx) is defined in the Office Open XML (OOXML) specification.

  Format                         Extension   Description
  ------------------------------ ----------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Excel Workbook                 .xlsx       The default Excel 2007 and later workbook format. In reality a Zip compressed archive with a directory structure of XML text documents. Functions as the primary replacement for the former binary .xls format, although it does not support Excel macros for security reasons.
  Excel Macro-enabled Workbook   .xlsm       As Excel Workbook, but with macro support.
  Excel Binary Workbook          .xlsb       As Excel Macro-enabled Workbook, but storing information in binary form rather than XML documents for opening and saving documents more quickly and efficiently. Intended especially for very large documents with tens of thousands of rows, and/or several hundreds of columns.
  Excel Macro-enabled Template   .xltm       A template document that forms a basis for actual workbooks, with macro support. The replacement for the old .xlt format.
  Excel Add-in                   .xlam       Excel add-in to add extra functionality and tools. Inherent macro support because of the file purpose.

  : Excel 2007 formats

Old file extensions

  Format         Extension   Description
  -------------- ----------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Spreadsheet    .xls        Main spreadsheet format which holds data in worksheets, charts, and macros
  Add-in (VBA)   .xla        Adds custom functionality; written in VBA
  Toolbar        .xlb        The file extension where Microsoft Excel custom toolbar settings are stored.
  Chart          .xlc        A chart created with data from a Microsoft Excel spreadsheet that only saves the chart. To save the chart and spreadsheet save as .XLS. XLC is not supported in Excel 2007 or in any newer versions of Excel.
  Dialog         .xld        Used in older versions of Excel.
  Archive        .xlk        A backup of an Excel Spreadsheet
  Add-in (DLL)   .xll        Adds custom functionality; written in C++/C, Visual Basic, Fortran, etc. and compiled in to a special dynamic-link library
  Macro          .xlm        A macro is created by the user or pre-installed with Excel.
  Template       .xlt        A pre-formatted spreadsheet created by the user or by Microsoft Excel.
  Module         .xlv        A module is written in VBA (Visual Basic for Applications) for Microsoft Excel
  Library        .DLL        Code written in VBA may access functions in a DLL, typically this is used to access the Windows API
  Workspace      .xlw        Arrangement of the windows of multiple Workbooks

Using other Windows applications

Windows applications such as Microsoft Access and Microsoft Word, as well as Excel can communicate with each other and use each other's capabilities. The most common are Dynamic Data Exchange: although strongly deprecated by Microsoft, this is a common method to send data between applications running on Windows, with official MS publications referring to it as "the protocol from hell".[29] As the name suggests, it allows applications to supply data to others for calculation and display. It is very common in financial markets, being used to connect to important financial data services such as Bloomberg and Reuters.

OLE Object Linking and Embedding: allows a Windows application to control another to enable it to format or calculate data. This may take on the form of "embedding" where an application uses another to handle a task that it is more suited to, for example a PowerPoint presentation may be embedded in an Excel spreadsheet or vice versa.[30][31][32][33]

Using external data

Excel users can access external data sources via Microsoft Office features such as (for example) .odc connections built with the Office Data Connection file format. Excel files themselves may be updated using a Microsoft supplied ODBC driver.

Excel can accept data in real time through several programming interfaces, which allow it to communicate with many data sources such as Bloomberg and Reuters (through addins such as Power Plus Pro).

-   DDE : "Dynamic Data Exchange" uses the message passing mechanism in Windows to allow data to flow between Excel and other applications. Although it is easy for users to create such links, programming such links reliably is so difficult that Microsoft, the creators of the system, officially refer to it as "the protocol from hell".[34] In spite of its many issues DDE remains the most common way for data to reach traders in financial markets.
-   Network DDE Extended the protocol to allow spreadsheets on different computers to exchange data. Starting with Windows Vista, Microsoft no longer supports the facility.[35]
-   Real Time Data : RTD although in many ways technically superior to DDE, has been slow to gain acceptance, since it requires non-trivial programming skills, and when first released was neither adequately documented nor supported by the major data vendors.[36]

Alternatively, Microsoft Query provides ODBC-based browsing within Microsoft Excel.[37][38][39]

Export and migration of spreadsheets

Programmers have produced APIs to open Excel spreadsheets in a variety of applications and environments other than Microsoft Excel. These include opening Excel documents on the web using either ActiveX controls, or plugins like the Adobe Flash Player. The Apache POI opensource project provides Java libraries for reading and writing Excel spreadsheet files. ExcelPackage is another open-source project that provides server-side generation of Microsoft Excel 2007 spreadsheets. PHPExcel is a PHP library that converts Excel5, Excel 2003, and Excel 2007 formats into objects for reading and writing within a web application. Excel Services is a current .NET developer tool that can enhance Excel's capabilities. Excel spreadsheets can be accessed from Python with xlrd and openpyxl. js-xlsx and js-xls can open Excel spreadsheets from JavaScript.

Password protection

Microsoft Excel protection offers several types of passwords:

-   Password to open a document [40]
-   Password to modify a document [41]
-   Password to unprotect worksheet
-   Password to protect workbook
-   Password to protect the sharing workbook [42]

All passwords except _password to open a document_ can be removed instantly regardless of Microsoft Excel version used to create the document. These types of passwords are used primarily for shared work on a document. Such password-protected documents are not encrypted, and a data sources from a set password is saved in a document’s header. _Password to protect workbook_ is an exception – when it is set, a document is encrypted with the standard password “_VelvetSweatshop_”, but since it is known to public, it actually does not add any extra protection to the document. The only type of password that can prevent a trespasser from gaining access to a document is _password to open a document_. The cryptographic strength of this kind of protection depends strongly on the Microsoft Excel version that was used to create the document.

In _Microsoft Excel 95_ and earlier versions, password to open is converted to a 16-bit key that can be instantly cracked. In _Excel 97/2000_ the password is converted to a 40-bit key, which can also be cracked very quickly using modern equipment. As regards services which use rainbow tables (e.g. Password-Find), it takes up to several seconds to remove protection. In addition, password-cracking programs can brute-force attack passwords at a rate of hundreds of thousands of passwords a second, which not only lets them decrypt a document, but also find the original password.

In _Excel 2003/XP_ the encryption is slightly better – a user can choose any encryption algorithm that is available in the system (see Cryptographic Service Provider). Due to the CSP, an _Excel_ file can't be decrypted, and thus the _password to open_ can't be removed, though the brute-force attack speed remains quite high. Nevertheless, the older _Excel 97/2000_ algorithm is set by the default.[43] Therefore, users who do not change the default settings lack reliable protection of their documents.

The situation changed fundamentally in _Excel 2007_, where the modern AES algorithm with a key of 128 bits started being used for decryption, and a 50,000-fold use of the hash function SHA1 reduced the speed of brute-force attacks down to hundreds of passwords per second. In _Excel 2010_, the strength of the protection by the default was increased two times due to the use of a 100,000-fold SHA1 to convert a password to a key.


Microsoft Excel Viewer

Microsoft Excel Viewer was a freeware program for viewing and printing spreadsheet documents created by Excel.[44]. The Microsoft Excel Viewer was retired in April, 2018 in lieu of Excel Online. Excel Viewer is similar to Microsoft Word Viewer in functionality. (There is not a current version for the Mac.) Excel Viewer is available for Microsoft Windows and Windows CE handheld PCs, such as the NEC MobilePro.[45] It is also possible to open Excel files using certain online tools and services. Online excel viewers do not require users to have Microsoft Excel installed.[46]


Quirks

In addition to issues with spreadsheets in general, other problems specific to Excel include numeric precision, misleading statistics functions, mod function errors, date limitations and more.

Numeric precision

Excel_fifteen_figure.PNG

Despite the use of 15-figure precision, Excel can display many more figures (up to thirty) upon user request. But the displayed figures are _not_ those actually used in its computations, and so, for example, the difference of two numbers may differ from the difference of their displayed values. Although such departures are usually beyond the 15th decimal, exceptions do occur, especially for very large or very small numbers. Serious errors can occur if decisions are made based upon automated comparisons of numbers (for example, using the Excel _If_ function), as equality of two numbers can be unpredictable.

In the figure the fraction 1/9000 is displayed in Excel. Although this number has a decimal representation that is an infinite string of ones, Excel displays only the leading 15 figures. In the second line, the number one is added to the fraction, and again Excel displays only 15 figures. In the third line, one is subtracted from the sum using Excel. Because the sum in the second line has only eleven 1's after the decimal, the difference when 1 is subtracted from this displayed value is three 0's followed by a string of eleven 1's. However, the difference reported by Excel in the third line is three 0's followed by a string of _thirteen_ 1's and two extra erroneous digits. This is because Excel calculates with about half a digit more than it displays.

Excel works with a modified 1985 version of the IEEE 754 specification.[47] Excel's implementation involves conversions between binary and decimal representations, leading to accuracy that is on average better than one would expect from simple fifteen digit precision, but that can be worse. See the main article for details.

Besides accuracy in user computations, the question of accuracy in Excel-provided functions may be raised. Particularly in the arena of statistical functions, Excel has been criticized for sacrificing accuracy for speed of calculation.[48][49]

As many calculations in Excel are executed using VBA, an additional issue is the accuracy of VBA, which varies with variable type and user-requested precision.[50]

Statistical functions

The accuracy and convenience of statistical tools in Excel has been criticized,[51][52][53][54][55] as mishandling missing data, as returning incorrect values due to inept handling of round-off and large numbers, as only selectively updating calculations on a spreadsheet when some cell values are changed, and as having a limited set of statistical tools. Microsoft has announced some of these issues are addressed in Excel 2010.[56]

Excel MOD function error

Excel has issues with modulo operations. In the case of excessively large results, Excel will return the error warning _#NUM!_ instead of an answer.[57][58]

Fictional leap day in the year 1900

Excel includes February 29, 1900, incorrectly treating 1900 as a leap year, even though e.g. 2100 is correctly treated as a non-leap year.[59][60] The bug originated from Lotus 1-2-3 (deliberately implemented to save computer memory), and was also purposely implemented in Excel, for the purpose of bug compatibility.[61] This legacy has later been carried over into Office Open XML file format.[62]

Thus a (not necessarily whole) number greater than or equal to 61 interpreted as a date and time is the (real) number of days after December 30, 1899, 0:00, a non-negative number less than 60 is the number of days after December 31, 1899, 0:00, and numbers with whole part 60 represent the fictional day.

Date range

Excel supports dates with years in the range 1900-9999, except that December 31, 1899 can be entered as 0 and is displayed as 0-jan-1900.

Converting a fraction of a day into hours, minutes and days by treating it as a moment on the day January 1, 1900, does not work for a negative fraction.[63]

Conversion problems

Entering text that happens to be in a form that is interpreted as a date, the text can be unintentionally changed to a standard date format. A similar problem occurs when a text happens to be in the form of a floating point notation of a number. In these cases the original exact text cannot be recovered from the result.

This issue has caused a well known problem in the analysis of DNA, for example in bioinformatics. As first reported in 2004,[64] genetic scientists found that Excel automatically and incorrectly converts certain gene names into dates. A follow-up study in 2016[65] found many peer reviewed scientific journal papers had been affected and that "Of the selected journals, the proportion of published articles with Excel files containing gene lists that are affected by gene name errors is 19.6 %." Excel parses the copied and pasted data and sometimes changes them depending on what it thinks they are. For example, MARCH1 (Membrane Associated Ring-CH-type finger 1) gets converted to the date March 1 (1-Mar) and SEPT2 (Septin 2) is converted into September 2 (2-Sep) etc.[66] While some secondary news sources[67] reported this as a fault with Excel, the original authors of the 2016 paper placed the blame with the researchers mis-using Excel.[68][69]

Errors with large strings

The following functions return incorrect results when passed a string longer than 255 characters:[70]

-   "type()" incorrectly returns 16, meaning "Error value"
-   "IsText()", when called as a method of the VBA object "WorksheetFunction" (i.e., "WorksheetFunction.IsText()" in VBA), incorrectly returns "false".

Filenames

Microsoft Excel will not open two documents with the same name and instead will display the following error:

    A document with the name '%s' is already open. You cannot open two documents with the same name, even if the documents are in different folders. To open the second document, either close the document that is currently open, or rename one of the documents.[71]

The reason is for calculation ambiguity with linked cells. If there is a cell ='[Book1.xlsx]Sheet1'!$G$33, and there are two books named "Book1" open, there is no way to tell which one the user means.[72]


Versions

Early history

Microsoft originally marketed a spreadsheet program called Multiplan in 1982. Multiplan became very popular on CP/M systems, but on MS-DOS systems it lost popularity to Lotus 1-2-3. Microsoft released the first version of Excel for the Macintosh on September 30, 1985, and the first Windows version was 2.05 (to synchronize with the Macintosh version 2.2) in November 1987.[73] Lotus was slow to bring 1-2-3 to Windows and by the early 1990s Excel had started to outsell 1-2-3 and helped Microsoft achieve its position as a leading PC software developer. This accomplishment solidified Microsoft as a valid competitor and showed its future of developing GUI software. Microsoft maintained its advantage with regular new releases, every two years or so.

Microsoft Windows

Excel 2.0 is the first version of Excel for the Intel platform. Versions prior to 2.0 were only available on the Apple Macintosh.

Excel 2.0 (1987)

The first Windows version was labeled "2" to correspond to the Mac version. This included a run-time version of Windows.[74]

_BYTE_ in 1989 listed Excel for Windows as among the "Distinction" winners of the BYTE Awards. The magazine stated that the port of the "extraordinary" Macintosh version "shines", with a user interface as good as or better than the original.[75]

Excel 3.0 (1990)

Included toolbars, drawing capabilities, outlining, add-in support, 3D charts, and many more new features.[76]

Excel 4.0 (1992)

Introduced auto-fill.[77]

Also, an easter egg in Excel 4.0 reveals a hidden animation of a dancing set of numbers 1 through 3, representing Lotus 1-2-3, which was then crushed by an Excel logo.[78]

Excel 5.0 (1993)

With version 5.0, Excel has included Visual Basic for Applications (VBA), a programming language based on Visual Basic which adds the ability to automate tasks in Excel and to provide user-defined functions (UDF) for use in worksheets. VBA is a powerful addition to the application and includes a fully featured integrated development environment (IDE). Macro recording can produce VBA code replicating user actions, thus allowing simple automation of regular tasks. VBA allows the creation of forms and in‑worksheet controls to communicate with the user. The language supports use (but not creation) of ActiveX (COM) DLL's; later versions add support for class modules allowing the use of basic object-oriented programming techniques.

The automation functionality provided by VBA made Excel a target for macro viruses. This caused serious problems until antivirus products began to detect these viruses. Microsoft belatedly took steps to prevent the misuse by adding the ability to disable macros completely, to enable macros when opening a workbook or to trust all macros signed using a trusted certificate.

Versions 5.0 to 9.0 of Excel contain various Easter eggs, including a "Hall of Tortured Souls", although since version 10 Microsoft has taken measures to eliminate such undocumented features from their products.[79]

5.0 was released in a 16-bit x86 version for Windows 3.1 and later in a 32-bit version for NT 3.51 (x86/Alpha/PowerPC)

Excel 95 (v7.0)

Screenshot_of_Microsoft_Office_Excel_95,_an_application_part_of_Microsoft_Office_system.png Released in 1995 with Microsoft Office for Windows 95, this is the first major version after Excel 5.0, as there is no Excel 6.0 with all of the Office applications standardizing on the same major version number.

Internal rewrite to 32-bits. Almost no external changes, but faster and more stable.

Excel 97 (v8.0)

Included in Office 97 (for x86 and Alpha). This was a major upgrade that introduced the paper clip office assistant and featured standard VBA used instead of internal Excel Basic. It introduced the now-removed Natural Language labels.

This version of Excel includes a flight simulator as an Easter Egg.

Excel 2000 (v9.0)

FileScreenshot_of_Microsoft_Office_Excel_2000.png Included in Office 2000. This was a minor upgrade, but introduced an upgrade to the clipboard where it can hold multiple objects at once. The Office Assistant, whose frequent unsolicited appearance in Excel 97 had annoyed many users, became less intrusive.

Excel 2002 (v10.0)

Included in Office XP. Very minor enhancements.

Excel 2003 (v11.0)

Included in Office 2003. Minor enhancements, most significant being the new Tables.

Excel 2007 (v12.0)

Microsoft_Office_Excel_2007.png Included in Office 2007. This release was a major upgrade from the previous version. Similar to other updated Office products, Excel in 2007 used the new Ribbon menu system. This was different from what users were used to, and was met with mixed reactions. One study reported fairly good acceptance by users except highly experienced users and users of word processing applications with a classical WIMP interface, but was less convinced in terms of efficiency and organisation.[80] However, an online survey reported that a majority of respondents had a negative opinion of the change, with advanced users being "somewhat more negative" than intermediate users, and users reporting a self-estimated reduction in productivity.[81]

Added functionality included the SmartArt set of editable business diagrams. Also added was an improved management of named variables through the _Name Manager_, and much improved flexibility in formatting graphs, which allow (_x, y_) coordinate labeling and lines of arbitrary weight. Several improvements to pivot tables were introduced.

Also like other office products, the Office Open XML file formats were introduced, including _.xlsm_ for a workbook with macros and _.xlsx_ for a workbook without macros.[82]

Specifically, many of the size limitations of previous versions were greatly increased. To illustrate, the number of rows was now 1,048,576 (2²⁰) and columns was 16,384 (2¹⁴; the far-right column is XFD). This changes what is a valid _A1_ reference versus a named range. This version made more extensive use of multiple cores for the calculation of spreadsheets; however, VBA macros are not handled in parallel and XLL add‑ins were only executed in parallel if they were thread-safe and this was indicated at registration.

Excel 2010 (v14.0)

Excel_2010.png Included in Office 2010, this is the next major version after v12.0, as version number 13 was skipped.

Minor enhancements and 64-bit support,[83] including the following:

-   Multi-threading recalculation (MTR) for commonly used functions
-   Improved pivot tables
-   More conditional formatting options
-   Additional image editing capabilities
-   In-cell charts called _sparklines_
-   Ability to preview before pasting
-   Office 2010 _backstage_ feature for document-related tasks
-   Ability to customize the Ribbon
-   Many new formulas, most highly specialized to improve accuracy[84]

Excel 2013 (v15.0)

Included in Office 2013, along with a lot of new tools included in this release:

-   Improved Multi-threading and Memory Contention
-   FlashFill[85]
-   Power View[86]
-   Power Pivot[87]
-   Timeline Slicer[88]
-   Windows App
-   Inquire[89]
-   50 new functions[90]

Excel 2016 (v16.0)

Included in Office 2016, along with a lot of new tools included in this release:

-   Power Query integration
-   Read-only mode for Excel
-   Keyboard access for Pivot Tables and Slicers in Excel
-   New Chart Types
-   Quick data linking in Visio
-   Excel forecasting functions
-   Support for multi-selection of Slicer items using touch
-   Time grouping and Pivot Chart Drill Down
-   Excel data cards[91]

Apple Macintosh

Microsoft_Excel_for_Mac_2011.png

-   1985 Excel 1.0
-   1988 Excel 1.5
-   1989 Excel 2.2
-   1990 Excel 3.0
-   1992 Excel 4.0
-   1993 Excel 5.0 (part of Office 4.x—Final Motorola 680x0 version[92] and first PowerPC version)
-   1998 Excel 8.0 (part of Office 98)
-   2000 Excel 9.0 (part of Office 2001)
-   2001 Excel 10.0 (part of Office v. X)
-   2004 Excel 11.0 (part of Office 2004)
-   2008 Excel 12.0 (part of Office 2008)
-   2011 Excel 14.0 (part of Office 2011)
-   2015 Excel 15.0 (part of Office 2016— Office 2016 for Mac brings the Mac version much closer to parity with its Windows cousin, harmonizing many of the reporting and high-level developer functions, while bringing the ribbon and styling into line with its PC counterpart.)[93]

OS/2

-   1989 Excel 2.2
-   1990 Excel 2.3
-   1991 Excel 3.0

Summary

+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| Year | Name       | Version | Comments                                                                                                                 |
+======+============+=========+==========================================================================================================================+
| 1987 | Excel 2    |         | Renumbered to 2 to correspond with contemporary Macintosh version                                                        |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 1990 | Excel 3    |         | Added 3D graphing capabilities                                                                                           |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 1992 | Excel 4    |         | Introduced auto-fill feature                                                                                             |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 1993 | Excel 5    |         | Included Visual Basic for Applications (VBA) and various object-oriented options                                         |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 1995 | Excel 95   |         | Renumbered for contemporary Word version. Both programs were packaged in Microsoft Office by this time.                  |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 1997 | Excel 97   |         |                                                                                                                          |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2000 | Excel 2000 |         | Part of Microsoft Office 2000, which was itself part of Windows Millennium (also known as "Windows ME").                 |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2002 | Excel 2002 |         |                                                                                                                          |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2003 | Excel 2003 |         | Released only 1 year later to correspond better with the rest of Microsoft Office (Word, PowerPoint, etc.).              |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2007 | Excel 2007 |         |                                                                                                                          |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2010 | Excel 2010 |         | Due to superstitions surrounding the number 13, Excel 13 was skipped in version counting.                                |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2013 | Excel 2013 |         | Introduced 50 more mathematical functions (available as pre-packaged commands, rather than typing the formula manually). |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+
| 2016 | Excel 2016 |         | Part of Microsoft Office 2016                                                                                            |
+------+------------+---------+--------------------------------------------------------------------------------------------------------------------------+

: Microsoft Excel for Windows release history

+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Year | Name       | Version | Comments                                                                                                                                                                                       |
+======+============+=========+================================================================================================================================================================================================+
| 1985 | Excel 1    |         | Initial version of Excel                                                                                                                                                                       |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1988 | Excel 1.5  |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1989 | Excel 2    |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1990 | Excel 3    |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1992 | Excel 4    |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1993 | Excel 5    |         | Only available on PowerPC-based Macs. First PowerPC version.                                                                                                                                   |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1998 | Excel 98   |         | Excel 6 and Excel 7 were skipped to correspond with the rest of Microsoft Office at the time.                                                                                                  |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2000 | Excel 2000 |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2001 | Excel 2001 |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2004 | Excel 2004 |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2008 | Excel 2008 |         |                                                                                                                                                                                                |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2011 | Excel 2011 |         | As with the Windows version, version 13 was skipped for superstitious reasons.                                                                                                                 |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2016 | Excel 2016 |         | As with the rest of Microsoft Office, so it is for Excel: Future release dates for the Macintosh version are intended to correspond better to those for the Windows version, from 2016 onward. |
+------+------------+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: Microsoft Excel for Macintosh release history

+------+-----------+---------+-----------------------------------------------------------------------------------------------------------------------+
| Year | Name      | Version | Comments                                                                                                              |
+======+===========+=========+=======================================================================================================================+
| 1989 | Excel 2.2 |         | Numbered in between Windows versions at the time                                                                      |
+------+-----------+---------+-----------------------------------------------------------------------------------------------------------------------+
| 1990 | Excel 2.3 |         |                                                                                                                       |
+------+-----------+---------+-----------------------------------------------------------------------------------------------------------------------+
| 1991 | Excel 3   |         | Last OS/2 version. Discontinued subseries of Microsoft Excel, which is otherwise still an actively developed program. |
+------+-----------+---------+-----------------------------------------------------------------------------------------------------------------------+

: Microsoft Excel for OS/2 release history


Impact

Excel offers many user interface tweaks over the earliest electronic spreadsheets; however, the essence remains the same as in the original spreadsheet software, VisiCalc: the program displays cells organized in rows and columns, and each cell may contain data or a formula, with relative or absolute references to other cells.

Excel 2.0 for Windows, which was modeled after its Mac GUI-based counterpart, indirectly expanded the installed base of the then-nascent Windows environment. Excel 2.0 was released a month before Windows 2.0, and the installed base of Windows was so low at that point in 1987 that Microsoft had to bundle a runtime version of Windows 1.0 with Excel 2.0.[94] Unlike Microsoft Word, there never was a DOS version of Excel.

Excel became the first spreadsheet to allow the user to define the appearance of spreadsheets (fonts, character attributes and cell appearance). It also introduced intelligent cell recomputation, where only cells dependent on the cell being modified are updated (previous spreadsheet programs recomputed everything all the time or waited for a specific user command). Excel introduced auto-fill, the ability to drag and expand the selection box to automatically copy cell or row contents to adjacent cells or rows, adjusting the copies intelligently by automatically incrementing cell references or contents. Excel also introduced extensive graphing capabilities.


Security

Because Excel is widely used, it has been attacked by hackers. While Excel is not directly exposed to the Internet, if an attacker can get a victim to open a file in Excel, and there is an appropriate security bug in Excel, then the attacker can get control of the victim's computer.[95] UK's GCHQ has a tool named TORNADO ALLEY with this purpose.[96][97]


See also

-   Comparison of spreadsheet software
-   Comparison of risk analysis Microsoft Excel add-ins
-   Numbers (spreadsheet) - the iWork equivalent
-   Spreadmart


References


Sources

-   -


External links

-   – official site

Category:1985 software Category:Articles with example code Category:Classic Mac OS software Category:Computer-related introductions in 1985 Excel Category:Spreadsheet software for macOS Category:Spreadsheet software for Windows

[1]

[2]

[3]

[4]

[5]

[6]  Excellent examples are developed that show just how applications can be designed.

[7]

[8]

[9] Some form of data acquisition hardware is required. See, for example,

[10]

[11]

[12]

[13]

[14] For example, by converting to Visual Basic the recipes in Code conversion to Basic from Fortran probably is easier than from C++, so the 2nd edition () may be easier to use, or the Basic code implementation of the first edition:

[15]

[16]  Excel Lemon|url = https://www.excellemon.com/view/100-using-excel-pc-or-mac%7Carchive-url = http://webarchive.loc.gov/all/20160921074527/https://www.excellemon.com/view/100-using-excel-pc-or-mac%7Cdead-url = yes|archive-date = September 21, 2016|website = www.excellemon.com|accessdate = July 29, 2015}}

[17] However an increasing proportion of Excel functionality is not captured by the Macro Recorder leading to largely useless macros. Compatibility among multiple versions of Excel is also a downfall of this method. A macro recorder in Excel 2010 may not work in Excel 2003 or older. This is most common when changing colours and formatting of cells.

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

[36] How to set up RTD in Excel

[37]

[38]

[39] Use Microsoft Query to retrieve external data

[40]

[41]

[42]

[43]

[44] _Description of the Excel Viewer_; Microsoft Support; accessed April 2014.

[45] _New Features in Windows CE .NET 4.1_; Microsoft DN; ; accessed April 2014.

[46]

[47] Microsoft's overview is found at:

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56] Function improvements in Excel 2010 Comments are provided from readers that may illuminate some remaining problems.

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