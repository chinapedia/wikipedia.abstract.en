, PDF and Rich Text Format using a programming language or XSL.]] In computer text processing, a MARKUP LANGUAGE is a system for annotating a document in a way that is syntactically distinguishable from the text.[1] The idea and terminology evolved from the "marking up" of paper manuscripts (i.e., the revision instructions by editors), which is traditionally written with a red or blue pencil on authors' manuscripts.[2] In digital media, this "blue pencil instruction text" was replaced by tags, which indicate what the parts of the document _are_, rather than details of how they might be shown on some display. This lets authors avoid formatting every instance of the same kind of thing redundantly (and possibly inconsistently). It also avoids the specification of fonts and dimensions which may not apply to many users (such as those with varying-size displays, impaired vision and screen-reading software).

Early markup system typically included typesetting instructions, as troff, TeX and LaTeX do, while Scribe and most modern markup systems name components, and later process those names to apply formatting or other processing, as in the case of XML.

Some markup languages, such as the widely used HTML, have pre-defined presentation semantics—meaning that their specification prescribes generally how to present the structured data on particular media. Others, such as XML and its predecessor SGML, allow but do not impose such prescriptions — all of the while allowing users to define any custom document components as they wish.

HyperText Markup Language (HTML), one of the document formats of the World Wide Web, is an application of SGML and XML. Other applications, such as DocBook, Open eBook, JATS and others, are heavily used in the communication of work between authors, editors, and printers.


Etymology

The term _markup_ is derived from the traditional publishing practice of _"marking up"_ a manuscript[3], which involves adding handwritten annotations in the form of conventional symbolic printer's instructions — in the margins and the text of a paper or a printed manuscript. It is a jargon used in coding proof. For centuries, this task was done primarily by skilled typographers known as "markup men"[4] or "d markers"[5] who marked up text to indicate what typeface, style, and size should be applied to each part, and then passed the manuscript to others for typesetting by hand or machine. Markup was also commonly applied by editors, proofreaders, publishers, and graphic designers, and indeed by document authors, all of whom might also mark other things, such as corrections, changes, etc.


Types of markup language

There are three main general categories of electronic markup, articulated in Coombs, et al. (1987),[6] and Bray (2003)[7].

Presentational markup
    The kind of markup used by traditional word-processing systems: binary codes embedded within document text that produce the WYSIWYG ("WHAT YOU SEE IS WHAT YOU GET") effect. Such a markup is usually hidden from the human users, even the authors and the editors. Properly speaking, such systems use procedural and/or descriptive markup underneath, but convert it to "present" to the user as geometric arrangements type.

Procedural markup
    Markup is embedded in text, which then provides instructions for programs to process the text. Well-known examples include troff, TeX, and PostScript. It is expected that the processor will run through the text from beginning to end, following the instructions as encountered. Text with such markups is often edited with the markups visible and directly manipulated by the author. Popular procedural-markup systems usually include programming constructs so macros or subroutines can be defined and invoked by name.

Descriptive markup
    Markup is used to label parts of the document rather than to provide specific instructions as to how they should be processed. Well-known examples include LaTeX, HTML, and XML. The objective is to decouple the inherent structure of the document from any particular treatment or rendition of it. Such markups are often described as "semantic". An example of a descriptive markup would be HTML's tag, which is used to label a citation. Descriptive markup — sometimes called _logical markup_ or _conceptual markup_ — encourages authors to write in a way that describes the material conceptually, rather than visually.

Michael Downes. "TEX and LATEX 2e"

There is considerable blurring of the lines between the types of markup. In modern word-processing systems, presentational markup is often saved in descriptive-markup-oriented systems such as XML, and then processed procedurally by implementations. The programming in procedural-markup systems, such as TeX, may be used to create higher-level markup systems that are more descriptive in nature, such as LaTeX.

In the recent years, a number of small and largely unstandardized markup languages have been developed to allow authors to create formatted text via web browsers, such as the ones used in wikis and in web forums. These are sometimes called lightweight markup languages. Markdown and the markup language used by Wikipedia are examples of such wiki markup.


History of markup languages

GenCode

The first well-known public presentation of markup languages in computer text processing was made by William W. Tunnicliffe at a conference in 1967, although he preferred to call it _generic coding._ It can be seen as a response to the emergence of programs such as RUNOFF that each used their own control notations, often specific to the target typesetting device. In the 1970s, Tunnicliffe led the development of a standard called GenCode for the publishing industry and later was the first chair of the International Organization for Standardization committee that created SGML, the first standard descriptive markup language. Book designer Stanley Rice published speculation along similar lines in 1970.[8]

Brian Reid, in his 1980 dissertation at Carnegie Mellon University, developed the theory and a working implementation of descriptive markup in actual use. However, IBM researcher Charles Goldfarb is more commonly seen today as the "father" of markup languages. Goldfarb hit upon the basic idea while working on a primitive document management system intended for law firms in 1969, and helped invent IBM GML later that same year. GML was first publicly disclosed in 1973.

In 1975, Goldfarb moved from Cambridge, Massachusetts to Silicon Valley and became a product planner at the IBM Almaden Research Center. There, he convinced IBM's executives to deploy GML commercially in 1978 as part of IBM's Document Composition Facility product, and it was widely used in business within a few years.

SGML, which was based on both GML and GenCode, was an ISO project worked on by Goldfarb beginning in 1974.[9] Goldfarb eventually became chair of the SGML committee. SGML was first released by ISO as the ISO 8879 standard in October 1986.

troff and nroff

Some early examples of computer markup languages available outside the publishing industry can be found in typesetting tools on Unix systems such as troff and nroff. In these systems, formatting commands were inserted into the document text so that typesetting software could format the text according to the editor's specifications. It was a trial and error iterative process to get a document printed correctly.[10] Availability of WYSIWYG ("what you see is what you get") publishing software supplanted much use of these languages among casual users, though serious publishing work still uses markup to specify the non-visual structure of texts, and WYSIWYG editors now usually save documents in a markup-language-based format.

TeX

Another major publishing standard is TeX, created and refined by Donald Knuth in the 1970s and '80s. TeX concentrated on detailed layout of text and font descriptions to typeset mathematical books. This required Knuth to spend considerable time investigating the art of typesetting. TeX is mainly used in academia, where it is a _de facto_ standard in many scientific disciplines. A TeX macro package known as LaTeX provides a descriptive markup system on top of TeX, and is widely used both among the scientific community and the publishing industry.[11]

Scribe, GML and SGML

The first language to make a clean distinction between structure and presentation was Scribe, developed by Brian Reid and described in his doctoral thesis in 1980.[12] Scribe was revolutionary in a number of ways, not least that it introduced the idea of styles separated from the marked up document, and of a grammar controlling the usage of descriptive elements. Scribe influenced the development of Generalized Markup Language (later SGML)[13], and is a direct ancestor to HTML and LaTeX[14].

In the early 1980s, the idea that markup should focus on the structural aspects of a document and leave the visual presentation of that structure to the interpreter led to the creation of SGML. The language was developed by a committee chaired by Goldfarb. It incorporated ideas from many different sources, including Tunnicliffe's project, GenCode. Sharon Adler, Anders Berglund, and James A. Marke were also key members of the SGML committee.

SGML specified a syntax for including the markup in documents, as well as one for separately describing _what_ tags were allowed, and _where_ (the Document Type Definition (DTD), later known as a schema). This allowed authors to create and use any markup they wished, selecting tags that made the most sense to them and were named in their own natural languages, while also allowing automated verification. Thus, SGML is properly a meta-language, and many particular markup languages are derived from it. From the late '80s onward, most substantial new markup languages have been based on the SGML system, including for example TEI and DocBook. SGML was promulgated as an International Standard by International Organization for Standardization, ISO 8879, in 1986.[15]

SGML found wide acceptance and use in fields with very large-scale documentation requirements. However, many found it cumbersome and difficult to learn — a side effect of its design attempting to do too much and to be too flexible. For example, SGML made end tags (or start-tags, or even both) optional in certain contexts, because its developers thought markup would be done manually by overworked support staff who would appreciate saving keystrokes.

HTML

In 1989, computer scientist Sir Tim Berners-Lee wrote a memo proposing an Internet-based hypertext system,[16] then specified HTML and wrote the browser and server software in the last part of 1990. The first publicly available description of HTML was a document called "HTML Tags", first mentioned on the Internet by Berners-Lee in late 1991.[17][18] It describes 18 elements comprising the initial, relatively simple design of HTML. Except for the hyperlink tag, these were strongly influenced by SGMLguid, an in-house SGML-based documentation format at CERN, and very similar to the sample schema in the SGML standard. Eleven of these elements still exist in HTML 4.[19]

Berners-Lee considered HTML an SGML application. The Internet Engineering Task Force (IETF) formally defined it as such with the mid-1993 publication of the first proposal for an HTML specification: "Hypertext Markup Language (HTML)" Internet-Draft by Berners-Lee and Dan Connolly, which included an SGML Document Type Definition to define the grammar.[20] Many of the HTML text elements are found in the 1988 ISO technical report TR 9537 _Techniques for using SGML_, which in turn covers the features of early text formatting languages such as that used by the RUNOFF command developed in the early 1960s for the CTSS (Compatible Time-Sharing System) operating system. These formatting commands were derived from those used by typesetters to manually format documents. Steven DeRose[21] argues that HTML's use of descriptive markup (and influence of SGML in particular) was a major factor in the success of the Web, because of the flexibility and extensibility that it enabled. HTML became the main markup language for creating web pages and other information that can be displayed in a web browser, and is quite likely the most used markup language in the world today.

XML

XML (Extensible Markup Language) is a meta markup language that is now widely used. XML was developed by the World Wide Web Consortium, in a committee created and chaired by Jon Bosak. The main purpose of XML was to simplify SGML by focusing on a particular problem — documents on the Internet.[22] XML remains a meta-language like SGML, allowing users to create any tags needed (hence "extensible") and then describing those tags and their permitted uses.

XML adoption was helped because every XML document can be written in such a way that it is also an SGML document, and existing SGML users and software could switch to XML fairly easily. However, XML eliminated many of the more complex features of SGML to simplify implementation environments such as documents and publications. It appeared to strike a happy medium between simplicity and flexibility, and was rapidly adopted for many other uses. XML is now widely used for communicating data between applications, for serializing program data, and many other uses as well as documents.

XHTML

Since January 2000, all W3C Recommendations for HTML have been based on XML rather than SGML, using the abbreviation XHTML (EXtensible HyperText Markup Language). The language specification requires that XHTML Web documents must be _well-formed_ XML documents. This allows for more rigorous and robust documents while using tags familiar from HTML.

One of the most noticeable differences between HTML and XHTML is the rule that _all tags must be closed_: empty HTML tags such as <br> must either be _closed_ with a regular end-tag, or replaced by a special form: (the space before the '/' on the end tag is optional, but frequently used because it enables some pre-XML Web browsers, and SGML parsers, to accept the tag). Another is that all attribute values in tags must be quoted. Finally, all tag and attribute names within the XHTML namespace must be lowercase to be valid. HTML, on the other hand, was case-insensitive.

Other XML-based applications

Many XML-based applications now exist, including the Resource Description Framework as RDF/XML, XForms, DocBook, SOAP, and the Web Ontology Language (OWL). For a partial list of these, see List of XML markup languages.


Features of markup languages

A common feature of many markup languages is that they intermix the text of a document with markup instructions in the same data stream or file. This is not necessary; it is possible to isolate markup from text content, using pointers, offsets, IDs, or other methods to co-ordinate the two. Such "standoff markup" is typical for the internal representations that programs use to work with marked-up documents. However, embedded or "inline" markup is much more common elsewhere. Here, for example, is a small section of text marked up in HTML:

    <h1>Anatidae</h1>
    <p>
    The family <i>Anatidae</i> includes ducks, geese, and swans,
    but <em>not</em> the closely related screamers.
    </p>

The codes enclosed in angle-brackets are markup instructions (known as tags), while the text between these instructions is the actual text of the document. The codes h1, p, and em are examples of _semantic_ markup, in that they describe the intended purpose or the meaning of the text they include. Specifically, h1 means "this is a first-level heading", p means "this is a paragraph", and em means "this is an emphasized word or phrase". A program interpreting such structural markup may apply its own rules or styles for presenting the various pieces of text, using different typefaces, boldness, font size, indentation, colour, or other styles, as desired. For example, a tag such as "h1" (header level 1) might be presented in a large bold sans-serif typeface in an article, or it might be underscored in a monospaced (typewriter-style) document – or it might simply not change the presentation at all.

In contrast, the i tag in HTML is an example of _presentational_ markup; it is generally used to specify a particular characteristic of the text (in this case, the use of an italic typeface) — without specifying the reason for that appearance.

The Text Encoding Initiative (TEI) has published extensive guidelines[23] for how to encode texts of interest in the humanities and social sciences, developed through years of international cooperative work. These guidelines are used by projects encoding historical documents, the works of particular scholars, periods, or genres, and so on.


Alternative usages

While the idea of markup language originated with text documents, there is increasing use of markup languages in the presentation of other types of information, including playlists, vector graphics, web services, content syndication, and user interfaces. Most of these are XML applications, because XML is a well-defined and extensible language.

The use of XML has also led to the possibility of combining multiple markup languages into a single profile, like XHTML+SMIL and XHTML+MathML+SVG.[24]

Because markup languages, and more generally data description languages (not necessarily textual markup), are not programming languages[25] (they are data without instructions), they are more easily manipulated than programming languages—for example, web pages are presented as HTML documents, not C code, and thus can be embedded within other web pages, displayed when only partially received, and so forth. This leads to the web design principle of the rule of least power, which advocates using the _least_ (computationally) powerful language that satisfies a task to facilitate such manipulation and reuse.[26]


See also

-   Comparison of document markup languages
-   Curl (programming language)
-   HTML
-   LaTeX
-   List of markup languages
-   Markdown
-   ReStructuredText
-   Programming language
-   Style language
-   XML


References


External links

Markup_languages Category:Formal languages Category:American inventions

[1]

[2]

[3]

[4] Allan Woods, _Modern Newspaper Production_ (New York: Harper & Row, 1963), 85; Stewart Harral, _Profitable Public Relations for Newspapers_ (Ann Arbor: J.W. Edwards, 1957), 76; and _Chiarella v. United States_, .

[5] _From the Notebooks of H.J.H & D.H.A on Composition_, Kingsport Press Inc., undated (1960s).

[6]

[7]

[8] Rice, Stanley. “Editorial Text Structures (with some relations to information structures and format controls in computerized composition).” American National Standards Institute, March 17, 1970.

[9]

[10] Daniel Gilly. _Unix in a nutshell: Chapter 12. Nroff and Troff_. O'Reilly Books, 1992.

[11]

[12] Reid, Brian. "Scribe: A Document Specification Language and its Compiler." Ph.D. thesis, Carnegie-Mellon University, Pittsburgh PA. Also available as Technical Report CMU-CS-81-100.

[13]

[14] HTML is a particular instance of SGML, whereas LaTeX is designed with the separation-between-content-and-design philosophy of Scribe in mind.

[15]

[16] Tim Berners-Lee, "Information Management: A Proposal." CERN (March 1989, May 1990). W3.org

[17]

[18]

[19]

[20]

[21] DeRose, Steven J. "The SGML FAQ Book." Boston: Kluwer Academic Publishers, 1997.

[22]

[23]

[24] An XHTML + MathML + SVG Profile". W3C, August 9, 2002. Retrieved on 17 March 2007.

[25]

[26]