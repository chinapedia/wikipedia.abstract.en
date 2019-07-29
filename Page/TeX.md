TEX (, see below), stylized within the system as TeX, is a typesetting system (or a "formatting system") which was designed and mostly written by Donald Knuth[1] and released in 1978. TeX is a popular means of typesetting complex mathematical formulae; it has been noted as one of the most sophisticated digital typographical systems.[2]

TeX is popular in academia, especially in mathematics, computer science, economics, engineering, linguistics, physics, statistics, and quantitative psychology. It has largely displaced Unix troff[3], the other favored formatting system, in many Unix installations which use both for different purposes. It is also used for many other typesetting tasks, especially in the form of LaTeX[4], ConTeXt, and other macro packages.

TeX was designed with two main goals in mind: to allow anybody to produce high-quality books with minimal effort, and to provide a system that would give exactly the same results on all computers, at any point in time (together with the Metafont language for font description and the Computer Modern family of typefaces).[5] TeX is a free software, which made it accessible to a wide range of users.


History

When the first paper volume of Donald Knuth's _The Art of Computer Programming_ was published in 1968,[6] it was typeset using hot metal typesetting set by a Monotype machine. This method, dating back to the 19th century, produced a "classic style" appreciated by Knuth.[7] When the second edition was published, in 1976, the whole book had to be typeset again because the Monotype technology had been largely replaced by phototypesetting, and the original fonts were no longer available. When Knuth received the galley proofs of the new book on 30 March 1977, he found them inferior.

Disappointed by the galley proofs of the second edition of the second volume, he was motivated to design his own typesetting system. Knuth saw for the first time the output of a high-quality digital typesetting system, and became interested in digital typography. On 13 May 1977, he wrote a memo to himself describing the basic features of TeX.[8]

He planned to finish it on his sabbatical in 1978, but as it happened, the language was not "frozen" (ready to use) until 1989, more than ten years later. Guy Steele happened to be at Stanford during the summer of 1978, when Knuth was developing his first version of TeX. When Steele returned to the Massachusetts Institute of Technology that autumn, he rewrote TeX's input/output (I/O) to run under the Incompatible Timesharing System (ITS) operating system. The first version of TeX was written in the SAIL programming language to run on a PDP-10 under Stanford's WAITS operating system.

WEB and literate programming

For later versions of TeX, Knuth invented the concept of literate programming, a way of producing compilable source code and cross-linked documentation typeset in TeX from the same original file. The language used is called WEB and produces programs in DEC PDP-10 Pascal.

TeX82

TeX82, a new version of TeX which is rewritten from scratch, was published in 1982. Among other changes, the original hyphenation algorithm was replaced by a new algorithm written by Frank Liang. TeX82 also uses fixed-point arithmetic instead of floating-point, to ensure reproducibility of the results across different computer hardware,[9] and includes a real, Turing-complete programming language, following intense lobbying by Guy Steele.[10] In 1989, Donald Knuth released new versions of TeX and Metafont.[11] Despite his desire to keep the program stable, Knuth realised that 128 different characters for the text input were not enough to accommodate foreign languages; the main change in version 3.0 of TeX is thus the ability to work with 8-bit inputs, allowing 256 different characters in the text input.

Since version 3, TeX has used an idiosyncratic version numbering system, where updates have been indicated by adding an extra digit at the end of the decimal, so that the version number asymptotically approaches . This is a reflection of the fact that TeX is now very stable, and only minor updates are anticipated. The current version of TeX is 3.14159265; it was last updated on January 12, 2014.[12] The design was frozen after version 3.0, and no new feature or fundamental change will be added, so all newer versions will contain only bug fixes.[13] Even though Donald Knuth himself has suggested a few areas in which TeX could have been improved, he indicated that he firmly believes that having an unchanged system that will produce the same output now and in the future is more important than introducing new features. For this reason, he has stated that the "absolutely final change (to be made after my death)" will be to change the version number to , at which point all remaining bugs will become features.[14] Likewise, versions of METAFONT after 2.0 asymptotically approach [[E_(mathematical_constant)|).[15] The American Mathematical Society tried in the early 1980s to claim a trademark for TeX. This was rejected because at the time "TEX" (all caps) was registered by Honeywell for the "Text EXecutive" text processing system.

XML publication

It is possible to use TeX for automatic generation of sophisticated layout for XML data. The differences in syntax between the two description languages can be overcome with the help of TeXML. In the context of XML publication, TeX can thus be considered an alternative to XSL-FO. TeX allowed scientific papers in mathematical disciplines to be reduced to relatively small files that could be rendered client-side, allowing fully typeset scientific papers to be exchanged over the early Internet and emerging World Wide Web, even when sending large files was difficult. This paved the way for the creation of repositories of scientific papers such as arXiv, through which papers could be 'published' without an intermediary publisher.[16]


Pronunciation and spelling

The name TeX is intended by its developer to be , with the final consonant of _loch_ or _Bach._[17] The letters of the name are meant to represent the capital Greek letters tau, epsilon, and chi, as TeX is an abbreviation of τέχνη (ΤΕΧΝΗ – _technē_), Greek for both "art" and "craft", which is also the root word of _technical_. English speakers often pronounce it , like the first syllable of _technical_. Knuth instructs that it be typeset with the "E" below the baseline and reduced spacing between the letters. This is done, as Knuth mentions in his _TeXbook_, to distinguish TeX from other system names such as TEX, the Text EXecutive processor (developed by Honeywell Information Systems).[18] Fans like to proliferate names from the word "TeX"—such as _TeXnician_ (user of TeX software), _TeXhacker_ (TeX programmer), _TeXmaster_ (competent TeX programmer), _TeXhax_, and _TeXnique_.[19]


Community

Logo_TUG.svg

Notable entities in the TeX community include the TeX Users Group, which publishes TUGboat and _The PracTeX Journal_, covering a wide range of topics in digital typography relevant to TeX. The Deutschsprachige Anwendervereinigung TeX is a large user group in Germany. The TeX Users Group was founded in 1980 for educational and scientific purposes, provides an organization for those who have an interest in typography and font design, and are users of the TeX typesetting system invented by Knuth. The TeX Users Group represents the interests of TeX users worldwide. The TeX Users Group publishes the journal TUGboat three times per year.[20]


Extensions

-   List of TeX extensions


See also

-   Comparison of document markup languages
-   Formula editor
-   List of document markup languages
-   MathTime
-   New Typesetting System – a TeX reimplementation (discontinued)
-   PGF/TikZ
-   PSTricks
-   xdvi – a program for viewing .dvi files
-   LaTeX
-   ConTeXt


Notes


References

Sources

-   -   .

-   . The source code of the book in TeX (and a needed set of macros 1) is available online on CTAN. It is provided only as an example and its use to prepare a book like The TeXbook is not allowed.

-   . The full source code of TeX; also available on CTAN. Being written using literate programming, it contains plenty of human-readable documentation.

-   .

-   . Reprinted as .

-   contains extensive documentation about the algorithms used in TeX.

-   .

-   .

-   .

-   on AMS-TeX.

-   .


External links

-   .

-   -   .

-   .

-   .

-   -   .

-   . Knuth discusses software patenting, structured programming, collaboration and his development of TeX. The oral history discusses the writing of _The Art of Computer Programming_.

-   Eijkhout, Victor. _TeX by Topic_
-   _TeX for the Impatient_
-   Walsh, Norman. _Making TeX Work_
-   TeX Reference Manual via Google Book Search
-   Knuth tells the story of TeX's creation link to the first clip in the series.
-   Knuth lectures on TeX – Filmed in the 1980s, Stanford university.
-   Knuth declares TeX obsolete, unveils successor at TUG 2010
-   What’s new since TEX?

TeX Category:1978 software Category:Desktop publishing software Category:Digital typography Category:Donald Knuth Category:Free TeX software Category:Macro programming languages Category:Typesetting software Category:Typesetting

[1]

[2] Yannis Haralambous. _Fonts & Encodings (Translated by P. Scott Horne)_. Beijing; Sebastopol, Calif: O’Reilly Media, 2007, pp. 235.

[3] Although _troff_ still remains as the default formatter of the UNIX documentation.

[4]

[5]

[6]

[7]

[8]

[9] Knuth and Plass, p. 144

[10] Donald E. Knuth, _Knuth meets NTG members_, NTG: MAPS. 16 (1996), 38–49. Reprinted as _Questions and Answers, III_, chapter 33 of _Digital Typography_, p. 648.

[11] Donald E. Knuth. _The New Versions of TeX and METAFONT_, TUGboat 10 (1989), 325–328; 11 (1990), 12. Reprinted as chapter 29 of _Digital Typography_.

[12]

[13]

[14] Donald E. Knuth. _The future of TeX and METAFONT_, NTG journal MAPS (1990), 489. Reprinted as chapter 30 of _Digital Typography_, p. 571.

[15] Open Source: Technology and Policy by Fadi P. Deek, James A. M. McHugh "Public domain", page 227 (2008)

[16]

[17] Donald E. Knuth, _The TeXbook_, Ch. 1: The Name of the Game, p. 1.

[18] Donald E. Knuth. _The TeX Logo in Various Fonts_, TUGboat 7 (1986), 101. Reprinted as chapter 6 of _Digital Typography_.

[19]

[20]