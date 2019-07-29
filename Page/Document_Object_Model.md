The DOCUMENT OBJECT MODEL (DOM) is a cross-platform and language-independent interface that treats an XML or HTML document as a tree structure wherein each node is an object representing a part of the document. The DOM represents a document with a logical tree. Each branch of the tree ends in a node, and each node contains objects. DOM methods allow programmatic access to the tree; with them one can change the structure, style or content of a document. Nodes can have event handlers attached to them. Once an event is triggered, the event handlers get executed.[1]

The principal standardization of the DOM was handled by the World Wide Web Consortium, which last developed a recommendation in 2004. WHATWG took over development of the standard, publishing it as a living document. The W3C now publishes stable snapshots of the WHATWG standard.


History

The history of the Document Object Model is intertwined with the history of the "browser wars" of the late 1990s between Netscape Navigator and Microsoft Internet Explorer, as well as with that of JavaScript and JScript, the first scripting languages to be widely implemented in the JavaScript engines of web browsers.

JavaScript was released by Netscape Communications in 1995 within Netscape Navigator 2.0. Netscape's competitor, Microsoft, released Internet Explorer 3.0 the following year with a reimplementation of JavaScript called JScript. JavaScript and JScript let web developers create web pages with client-side interactivity. The limited facilities for detecting user-generated events and modifying the HTML document in the first generation of these languages eventually became known as "DOM Level 0" or "Legacy DOM." No independent standard was developed for DOM Level 0, but it was partly described in the specifications for HTML 4.

Legacy DOM was limited in the kinds of elements that could be accessed. Form, link and image elements could be referenced with a hierarchical name that began with the root document object. A hierarchical name could make use of either the names or the sequential index of the traversed elements. For example, a form input element could be accessed as either document.formName.inputName or document.forms[0].elements[0].

The Legacy DOM enabled client-side form validation and the popular "rollover" effect.

In 1997, Netscape and Microsoft released version 4.0 of Netscape Navigator and Internet Explorer respectively, adding support for Dynamic HTML (DHTML) functionality enabling changes to a loaded HTML document. DHTML required extensions to the rudimentary document object that was available in the Legacy DOM implementations. Although the Legacy DOM implementations were largely compatible since JScript was based on JavaScript, the DHTML DOM extensions were developed in parallel by each browser maker and remained incompatible. These versions of the DOM became known as the "Intermediate DOM."

After the standardization of ECMAScript, the W3C DOM Working Group began drafting a standard DOM specification. The completed specification, known as "DOM Level 1", became a W3C Recommendation in late 1998. By 2005, large parts of W3C DOM were well-supported by common ECMAScript-enabled browsers, including Microsoft Internet Explorer version 6 (from 2001), Opera, Safari and Gecko-based browsers (like Mozilla, Firefox, SeaMonkey and Camino).


Standards

The W3C DOM Working Group published its final recommendation and subsequently disbanded in 2004. Development efforts migrated to the WHATWG, which continues to maintain a living standard.[2] In 2009, the Web Applications group reorganized DOM activities at the W3C.[3] In 2013, due to a lack of progress and the impending release of HTML5, the DOM Level 4 specification was reassigned to the HTML Working Group to expedite its completion.[4] Meanwhile, in 2015, the Web Applications group was disbanded and DOM stewardship passed to the Web Platform group.[5] Beginning with the publication of DOM Level 4 in 2015, the W3C creates new recommendations based on snapshots of the WHATWG standard.

-   DOM Level 1 provided a complete model for an entire HTML or XML document, including the means to change any portion of the document.
-   DOM Level 2 was published in late 2000. It introduced the getElementById function as well as an event model and support for XML namespaces and CSS.
-   DOM Level 3, published in April 2004, added support for XPath and keyboard event handling, as well as an interface for serializing documents as XML.
-   DOM Level 4 was published in 2015. It is a snapshot of the WHATWG living standard.[6]


Applications

Web browsers

To render a document such as a HTML page, most web browsers use an internal model similar to the DOM. The nodes of every document are organized in a tree structure, called the _DOM tree_, with the topmost node named as "Document object". When an HTML page is rendered in browsers, the browser downloads the HTML into local memory and automatically parses it to display the page on screen.[7]

JavaScript

When a web page is loaded, the browser creates a Document Object Model of the page, which is an object oriented representation of an HTML document, that acts as an interface between JavaScript and the document itself and allows the creation of dynamic web pages:[8]

-   JavaScript can add, change, and remove all of the HTML elements and attributes in the page.
-   JavaScript can change all of the CSS styles in the page.
-   JavaScript can react to all the existing events in the page.
-   JavaScript can create new events within the page.


Implementations

Because the DOM supports navigation in any direction (e.g., parent and previous sibling) and allows for arbitrary modifications, an implementation must at least buffer the document that has been read so far (or some parsed form of it).

Layout engines

Web browsers rely on layout engines to parse HTML into a DOM. Some layout engines, such as Trident/MSHTML, are associated primarily or exclusively with a particular browser, such as Internet Explorer. Others, including Blink, WebKit, and Gecko, are shared by a number of browsers, such as Google Chrome, Opera, Safari, and Firefox. The different layout engines implement the DOM standards to varying degrees of compliance.

Libraries

DOM implementations:

-   libxml2
-   MSXML
-   Xerces is a collection of DOM implementations written in C++, Java and Perl
-   XML for
    is a JavaScript-based DOM implementation[9]

-   PHP.Gt DOM is based on libxml2 and brings DOM level 4 compatibility[10] to the PHP programming language
-   Domino is a Server-side (Node.js) DOM implementation based on Mozilla's dom.js. Domino is used in the MediaWiki stack with Visual Editor.

APIs that expose DOM implementations:

-   JAXP (Java API for XML Processing) is an API for accessing DOM providers
-   Lazarus (Free Pascal IDE) contains two variants of the DOM - with UTF-8 and ANSI format

Inspection tools:

-   DOM Inspector is a web developer tool


References


Sources

-   -   -   -


External links

-   DOM Living Standard by the WHATWG
-   Original W3C DOM hub by the W3C DOM Working Group (outdated)
-   Web Platform Working Group (current steward of W3C DOM)

Category:Application programming interfaces Category:HTML Category:Object models Category:World Wide Web Consortium standards Category:XML-based standards

[1]

[2]

[3]

[4]

[5]

[6]

[7] "A Survey of Techniques for Improving Efficiency of Mobile Web Browsing", Concurrency and Computation, 2018

[8]

[9]

[10]