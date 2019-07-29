LATEX ( or ;[1] a shortening of Lamport TeX) is a document preparation system.[2] When writing, the writer uses plain text as opposed to the formatted text found in WYSIWYG ("what you see is what you get") word processors like Microsoft Word, LibreOffice Writer and Apple Pages. The writer uses markup tagging conventions to define the general structure of a document (such as article, book, and letter), to stylise text throughout a document (such as bold and italics), and to add citations and cross-references. A TeX distribution such as TeX Live or MikTeX is used to produce an output file (such as PDF or DVI) suitable for printing or digital distribution. Within the typesetting system, its name is stylised as LaTeX.

LaTeX is widely used in academia[3][4] for the communication and publication of scientific documents in many fields, including mathematics, statistics, computer science, engineering, chemistry, physics, economics, linguistics, quantitative psychology, philosophy, and political science. It also has a prominent role in the preparation and publication of books and articles that contain complex multilingual materials, such as Sanskrit and Greek.[5] LaTeX uses the TeX typesetting program for formatting its output, and is itself written in the TeX macro language.

LaTeX can be used as a standalone document preparation system, or as an intermediate format. In the latter role, for example, it is sometimes used as part of a pipeline for translating DocBook and other XML-based formats to PDF. The typesetting system offers programmable desktop publishing features and extensive facilities for automating most aspects of typesetting and desktop publishing, including numbering and cross-referencing of tables and figures, chapter and section headings, the inclusion of graphics, page layout, indexing and bibliographies.[6]

Like TeX, LaTeX started as a writing tool for mathematicians and computer scientists, but even from early in its development, it has also been taken up by scholars who needed to write documents that include complex math expressions or non-Latin scripts, such as Arabic, Sanskrit and Chinese.[7]

LaTeX is intended to provide a high-level, descriptive markup language that accesses the power of TeX in an easier way for writers. In essence, TeX handles the layout side, while LaTeX handles the content side for document processing. LaTeX comprises a collection of TeX macros and a program to process LaTeX documents, and because the plain TeX formatting commands are elementary, it provides authors with ready-made commands for formatting and layout requirements such as chapter headings, footnotes, cross-references and bibliographies.

LaTeX was originally written in the early 1980s by Leslie Lamport at SRI International.[8] The current version is LaTeX2e (stylised as LaTeX2ε). LaTeX is free software and is distributed under the LaTeX Project Public License (LPPL).[9]


Typesetting system

LaTeX follows the design philosophy of separating presentation from content, so that authors can focus on the content of what they are writing without attending simultaneously to its visual appearance. In preparing a LaTeX document, the author specifies the logical structure using simple, familiar concepts such as _chapter_, _section_, _table_, _figure_, etc., and lets the LaTeX system handle the formatting and layout of these structures. As a result, it encourages the separation of the layout from the content — while still allowing manual typesetting adjustments whenever needed. This concept is similar to the mechanism by which many word processors allow styles to be defined globally for an entire document, or the use of Cascading Style Sheets in styling HTML documents.

The LaTeX system is a markup language that handles typesetting and rendering[10], and can be arbitrarily extended by using the underlying macro language to develop custom macros such as new environments and commands. Such macros are often collected into _packages,_ which could then be made available to address some specific typesetting needs such as the formatting of complex mathematical expressions or graphics[11] (e.g., the use of the align environment provided by the amsmath package to produce aligned equations [12]).

In order to create a document in LaTeX, you first write a file, say document.tex, using your preferred text editor. Then you give your document.tex file as input to the TeX program (with the LaTeX macros loaded), which prompts TeX to write out a file suitable for onscreen viewing or printing.[13] This write-format-preview cycle is one of the chief ways in which working with LaTeX differs from the What-You-See-Is-What-You-Get (WYSIWYG) style of document editing. It is similar to the code-compile-execute cycle known to the computer programmers. Today, many LaTeX-aware editing programs make this cycle a simple matter through the pressing a single key, while showing the output preview on the screen beside the input window. Some online LaTeX editors even automatically refresh the preview,[14][15][16] while other online tools provide incremental editing in-place, mixed in with the preview in a streamlined single window.[17]


Example

The example below shows the LaTeX input and corresponding output:

+----------------------------------------------------------+------------------------+
| Input                                                    | Output                 |
+==========================================================+========================+
|     \documentclass{article}                              | File:LaTeX example.svg |
|     \usepackage{amsmath}                                 |                        |
|     \title{\LaTeX}                                       |                        |
|                                                          |                        |
|     \begin{document}                                     |                        |
|       \maketitle                                         |                        |
|       \LaTeX{} is a document preparation system for      |                        |
|       the \TeX{} typesetting program. It offers          |                        |
|       programmable desktop publishing features and       |                        |
|       extensive facilities for automating most           |                        |
|       aspects of typesetting and desktop publishing,     |                        |
|       including numbering and  cross-referencing,        |                        |
|       tables and figures, page layout,                   |                        |
|       bibliographies, and much more. \LaTeX{} was        |                        |
|       originally written in 1984 by Leslie Lamport       |                        |
|       and has become the  dominant method for using      |                        |
|       \TeX; few people write in plain \TeX{} anymore.    |                        |
|       The current version is \LaTeXe.                    |                        |
|                                                          |                        |
|       % This is a comment, not shown in final output.    |                        |
|       % The following shows typesetting  power of LaTeX: |                        |
|       \begin{align}                                      |                        |
|         E_0 &= mc^2 \\                                   |                        |
|         E &= \frac{mc^2}{\sqrt{1-\frac{v^2}{c^2}}}       |                        |
|       \end{align}                                        |                        |
|     \end{document}                                       |                        |
+----------------------------------------------------------+------------------------+

Note how the equation for E (highlighted in the example code) was typeset by the markup:

    E &= \frac{mc^2}{\sqrt{1-\frac{v^2}{c^2}}}

where the square root is denoted by "\sqrt{_argument_}", and the fractions by "\frac{_numerator_}{_denominator_}".


Pronouncing and writing "LaTeX"

The final consonant of TeX (on which LaTeX is based) is intended by its developer to be pronounced similar to 'loch' or 'Bach'. However, English speakers often pronounce it /ˈtɛk/, like the first syllable of technical.

The characters T, E, X in the name come from the Greek capital letters tau, epsilon, and chi, as the name of TeX derives from the (skill, art, technique); for this reason, TeX's creator Donald Knuth promotes a pronunciation of ()[18] (that is, with a voiceless velar fricative as in Modern Greek, similar to the ch in loch). On the other hand, Lamport remarks that "TeX is usually pronounced _tech_, making _lah_-teck, lah-_teck_, and _lay_-teck the logical choices; but language is not always logical, so _lay-tecks_ is also possible."[19]

The name is traditionally printed in running text with a special typographical logo: LaTeX. In media where the logo cannot be precisely reproduced in running text, the word is typically given the unique capitalization _LaTeX_. Alternatively, the TeX, LaTeX[20] and XeTeX[21] logos can also be rendered via pure CSS and XHTML for use in graphical web browsers — by following the specifications of the internal \LaTeX macro.[22]


Licensing

LaTeX is typically distributed along with plain TeX under a free software license: the LaTeX Project Public License (LPPL).[23] The LPPL is not compatible with the GNU General Public License, as it requires that modified files must be clearly differentiable from their originals (usually by changing the filename); this was done to ensure that files that depend on other files will produce the expected behavior and avoid dependency hell. The LPPL is DFSG compliant as of version 1.3. As free software, LaTeX is available on most operating systems, which include UNIX (Solaris, HP-UX, AIX), BSD (FreeBSD, macOS, NetBSD, OpenBSD), Linux (Red Hat, Debian, Arch, Gentoo), Windows, DOS, RISC OS, AmigaOS and Plan9.


Related software

As a macro package, LaTeX provides a set of macros for TeX to interpret. There are many other macro packages for TeX, including Plain TeX, GNU Texinfo, AMSTeX, and ConTeXt.

When TeX "compiles" a document, it follows (from the user's point of view) the following processing sequence: Macros → TeX → Driver → Output. Different implementations of each of these steps are typically available in TeX distributions. Traditional TeX will output a DVI file, which is usually converted to a PostScript file. More recently, Hàn Thế Thành and others have written a new implementation of TeX called pdfTeX, which also outputs to PDF and takes advantage of features available in that format[24]. The XeTeX engine developed by Jonathan Kew, on the other hand, merges modern font technologies and Unicode with TeX.[25]

The default font for LaTeX is Knuth's Computer Modern, which gives default documents created with LaTeX the same distinctive look as those created with plain TeX. XeTeX allows the use of OpenType and TrueType (that is, outlined) fonts for output files.

There are also many editors for LaTeX, some of which are offline, source-code-based while others are online, partial-WYSIWYG-based. For more, see Comparison of TeX editors.


Versions

LaTeX2e is the current version of LaTeX, since it replaced LaTeX 2.09 in 1994[26]. , LaTeX3, which started in the early 1990s, is under a long-term development project.[27] Planned features include improved syntax, hyperlink support, a new user interface, access to arbitrary fonts and a new documentation.[28]

There are numerous commercial implementations of the entire TeX system. System vendors may add extra features like additional typefaces and telephone support. LyX is a free, WYSIWYM visual document processor that uses LaTeX for a back-end.[29] TeXmacs is a free, WYSIWYG editor with similar functionalities as LaTeX, but with a different typesetting engine.[30] Other WYSIWYG editors that produce LaTeX include Scientific Word on MS Windows., and BaKoMa TeX on Windows, Mac and Linux.

A number of community-supported TeX distributions are available, including TeX Live (multi-platform), teTeX (deprecated in favor of TeX Live, UNIX), fpTeX (deprecated), MiKTeX (Windows), proTeXt (Windows), MacTeX (TeX Live with the addition of Mac specific programs), gwTeX (Mac OS X), OzTeX (Mac OS Classic), AmigaTeX (no longer available), PasTeX (AmigaOS, available on the Aminet repository), and Auto-Latex Equations (Google Docs add-on that supports MathJax LaTeX commands).


Compatibility and converters

LaTeX documents (*.tex) can be opened with any text editor. They consist of plain text and do not contain hidden formatting codes or binary instructions. Additionally, TeX documents can be shared by rendering the LaTeX file to Rich Text Format (*.rtf) or XML. This can be done using the free software programs LaTeX2RTF or TeX4ht. LaTeX can also be rendered to PDF files using the LaTeX extension pdfLaTeX. LaTeX files containing Unicode text can be processed into PDFs with the inputenc package, or by the TeX extensions XeLaTeX and LuaLaTeX.

HEVEA is a converter written in Ocaml that converts LaTeX documents to HTML5. It is licensed under the Q Public License.[31]

LATEX2HTML is a converter written in Perl that converts LaTeX documents to HTML. This way, e.g., scientific papers—primarily typeset for printing—can be placed on the Web for online viewing. It is licensed under GNU GPL v2.[32] The latest updates are available from CTAN.[33]

LATEXML is a free, public domain software, written in Perl, which converts LaTeX documents to a variety of structured formats, including HTML5, epub, jats, tei.[34]

PANDOC is a 'universal document converter' able to transform LaTeX into many different file formats, including HTML5, epub, rtf and docx. It is licensed under GNU GPL v2.[35]


History

LaTeX was created in 1983 by Leslie Lamport, when he was working at SRI. He needed to write TeX macros for his own use, and thought that with a little extra effort he could make a general package usable by others. Peter Gordon, an editor at Addison-Wesley, convinced him to write a LaTeX user's manual for publication (Lamport was initially skeptical that anyone would pay money for it);[36] it came out in 1986[37] and sold hundreds of thousands of copies.[38] Lamport released versions of his LaTeX macros in 1984 and 1985. On 21 August 1989, at a TeX Users Group (TUG) meeting at Stanford, Lamport agreed to turn over maintenance and development of LaTeX to Frank Mittelbach. Mittelbach, along with Chris Rowley and Rainer Schöpf, formed the LaTeX3 team; in 1994, they released LaTeX 2e, the current standard version, and continue working on LaTeX3.[39]


See also

-   Auto-Latex Equations – A Google Docs add-on that provides mathematical LaTeX typesetting (MathJax supported).
-   List of TeX extensions
-   AMS-LaTeX – American Mathematical Society extension for LaTeX
-   xdvi – software for viewing DVI files while using Unix
-   BibTeX – reference management software typically used with LaTeX
-   Comparison of TeX editors
-   List of document markup languages
-   REVTeX – Publication Styles of the American Physical Society
-   Formula editor


Notes


References


Further reading

-   -   -   -   -


External links

-   -   -   LaTeX Vs. Word Comparsion
-   How to Write an Article in Word and Convert It to LaTeX Format
-   MOEDITOR A LaTeX editor available in Windows, Mac and Ubuntu.
-   Google Colaboratory A Jupyter notebook environment that can handle LaTeX and Python.

Category:1983 software Category:Declarative markup languages Category:Free TeX software Category:Free text editors Category:Free typesetting software Software Typesetting Category:Open formats Category:Software using the LPPL license Category:SRI International software Category:Formula editors

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] The design of LaTeX owes something to earlier markup systems such as Scribe.

[11]

[12]

[13] PDF output is common, but TeX can output other formats such as DVI ("Device independent" format). See below for more detail about outputs.

[14]

[15]

[16]

[17]

[18] Donald E. Knuth, _The TeXbook_, Addison–Wesley, Boston, 1986, p. 1.

[19] Lamport (1994), p 5

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]  What is LyX?|website=www.lyx.org|access-date=2019-07-20}}

[30]

[31] Website http://hevea.inria.fr/

[32] According to LICENSE file in the source repository.

[33]

[34]

[35]

[36]

[37]

[38]

[39]