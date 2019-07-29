Transclusion_simple.svg

In computer science, TRANSCLUSION is the inclusion of part or all of an electronic document into one or more other documents by hypertext reference. Transclusion is usually performed when the referencing document is displayed, and is normally automatic and transparent to the end user.[1] The result of transclusion is a single integrated document made of parts assembled dynamically from separate sources, possibly stored on different computers in disparate places.

Transclusion facilitates modular design: a resource is stored once and distributed for reuse in multiple documents. Updates or corrections to a resource are then reflected in any referencing documents. Ted Nelson coined the term for his 1980 nonlinear book _Literary Machines_, but the idea of _master copy and occurrences_ was applied 17 years before, in Sketchpad.


Technical considerations

Context neutrality

Transclusion works better when transcluded sections of text are self-contained, so that the meaning and validity of the text is independent of context. For example, formulations like "as explained in the previous section" are problematic, because the transcluded section may appear in a different context, causing confusion. What constitutes "context neutral" text varies, but often includes things like company information or boilerplate.

Parameterization

Under some circumstances, and in some technical contexts, transcluded sections of text may not require strict adherence to the "context neutrality" principle, because the transcluded sections are capable of _parameterization_. Parameterization implies the ability to modify certain portions or subsections of a transcluded text depending on exogenous variables that can be changed independently. This is customarily done by supplying a transcluded text with one or more _substitution placeholders_. These placeholders are then replaced with the corresponding variable values prior to rendering the final transcluded output in context.


History and implementation by Project Xanadu

Ted Nelson, who also originated the words "hypertext" and "hypermedia", coined the term "transclusion" in his 1980 book _Literary Machines_. Part of his proposal was the idea that micropayments could be automatically exacted from the reader for all the text, no matter how many snippets of content are taken from various places.

However, according to Nelson, the concept of transclusion had already formed part of his 1965 description of hypertext.[2] Nelson defines transclusion as, "...the same content knowably in more than one place," setting it apart from more special cases, such as the inclusion of content from a different location (which he calls _transdelivery_) or an explicit quotation that remains connected to its origins, (which he calls _transquotation_).

Some hypertext systems, including Ted Nelson's own Xanadu Project, support transclusion.[3]

Nelson has delivered a demonstration of Web transclusion, the Little Transquoter (programmed to Nelson's specification by Andrew Pam in 2004-2005).[4] It creates a new format built on portion addresses from Web pages; when dereferenced, each portion on the resulting page remains click-connected to its original context.


Implementation on the Web

HTTP, as a transmission protocol, has rudimentary support for transclusion via byte serving: specifying a byte range in an HTTP request message.

Transclusion can occur either before (server-side) or after (client-side) transmission. For example:

-   An HTML document may be pre-composed by the server before delivery to the client using Server-Side Includes or another server-side application.
-   XML Entities or HTML Objects may be parsed by the client, which then requests the corresponding resources separately from the main document.
-   A web browser may cache elements using its own algorithms, which can operate without explicit directives in the document's markup.
-   AngularJS employs transclusion for nested directive operation.[5]

Publishers of web content may object to the transclusion of material from their own web sites into other web sites, or they may require an agreement to do so. Critics of the practice may refer to various forms of inline linking as bandwidth theft or leeching.

Other publishers may seek specifically to have their materials transcluded into other web sites, as in the form of web advertising, or as widgets like a hit counter or web bug.

Mashups make use of transclusion to assemble resources or data into a new application, as by placing geo-tagged photos on an interactive map, or by displaying business metrics in an interactive dashboard.

Client-side HTML

HTML defines elements for client-side transclusion of images, scripts, stylesheets, other documents, and other types of media. HTML has relied heavily on client-side transclusion from the earliest days of the Web (so web pages could be displayed more quickly before multimedia elements finished loading), rather than embedding the raw data for such objects inline into a web page's markup.

Through techniques such as Ajax, scripts associated with an HTML document can instruct a web browser to modify the document in-place, as opposed to the earlier technique of having to pull an entirely new version of the page from the web server. Such scripts may transclude elements or documents from a server after the web browser has rendered the page, in response to user input or changing conditions, for example.

Future versions of HTML may support deeper transclusion of portions of documents using XML technologies such as entities, XPointer document referencing, and XSLT manipulations. XPointer is patented but is licensed under royalty-free terms[6].

Proxy servers may employ transclusion to reduce redundant transmissions of commonly requested resources.

A popular Front End Framework known as AngularJS developed and maintained by Google has a directive callend ng-transclude that marks the insertion point for the transcluded DOM of the nearest parent directive that uses transclusion.

Server-side transclusion

Transclusion can be accomplished on the server side, as through Server Side Includes and markup entity references resolved by the server software. It is a feature of substitution templates.

Transclusion of source code

Transclusion of source code into software design or reference materials lets source code be presented within the document, but not interpreted as part of the document, preserving the semantic consistency of the inserted code in relation to its source codebase.


See also

-   Compound document
-   Cross-reference
-   Darwin Information Typing Architecture (DITA) and _content reuse_
-   Macro (computer science)
-   Object Linking and Embedding (OLE)
-   Publish and Subscribe (Mac OS)
-   Single source publishing
-   Subroutine
-   Include directive


References


Further reading

-   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   Ted Nelson: _Transclusion: Fixing Electronic Literature_—on Google Tech Talks, 29 January 2007.

Category:HTML Category:Hypertext Category:Metadata Category:Ted Nelson

[1]

[2] Theodor H. Nelson, "A File Structure for the Complex, the Changing and the Indeterminate." Proceedings of the ACM 20th National Conference (1965), pp. 84-100

[3]

[4] The Little Transquoter Xanadu.com.au

[5]

[6] "XPointer Patent Statements". World Wide Web Consortium.