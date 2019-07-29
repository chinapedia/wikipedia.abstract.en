META ELEMENTS are tags used in HTML and XHTML documents to provide structured metadata about a Web page. They are part of a web page's head section. Multiple Meta elements with different attributes can be used on the same page. Meta elements can be used to specify page description, keywords and any other metadata not provided through the other head elements and attributes.

The meta element has two uses: either to emulate the use of an HTTP response header field, or to embed additional metadata within the HTML document.

With HTML up to and including HTML 4.01 and XHTML, there were four valid attributes: content, http-equiv, name and scheme. Under HTML 5 there are now five valid attributes, charset having been added. http-equiv is used to emulate an HTTP header, and name to embed metadata. The value of the statement, in either case, is contained in the content attribute, which is the only required attribute unless charset is given. charset is used to indicate the character set of the document, and is available in HTML5.

Such elements must be placed as tags in the head section of an HTML or XHTML document.

The two distinct parts of the elements are:

-   Title tags
-   Meta description


Examples of the meta element

meta elements can specify HTTP headers which should be sent before the actual content when the HTML page is served from the web server to the client. For example:

    <meta charset="utf-8">

as an alternative to the response header Content-Type: to indicate the media type and, more commonly needed, the UTF-8 character encoding.

Meta tags can be used to describe the contents of the page:

    <meta name="description" content="The Federal Aviation Administration is an operating mode of the U.S. Department of Transportation.">

In this example, the meta element describes the contents of a web page.


Meta element used in search engine optimization

Meta elements provide information about the web page, which can be used by search engines to help categorize the page correctly.

They have been the focus of a field of marketing research known as search engine optimization (SEO), where different methods are used to provide a user's website with a higher ranking on search engines. Prior to the rise of content-analysis by search engines in the mid-1990s (most notably Google), search engines were reliant on metadata to correctly classify a Web page and webmasters quickly learned the commercial significance of having the right meta element. The search engine community is now divided as to the value of meta tags. Some claim they have no value, others that they are central, while many simply conclude there is no clear answer but, since they do no harm, they use them just in case. Google[1] states they do support the meta tags "content", "robots", "google", "google-site-verification", "content-type", "refresh" and "google-bot".

Major search engine robots look at many factors when determining how to rank a page of which meta tags will only form a portion. Furthermore, most search engines change their ranking rules frequently. Google have stated they update their ranking rules every 48 hours. Under such circumstances, a definitive understanding of the role of meta tags in SEO is unlikely.

The keywords attribute

The keywords attribute was popularized by search engines such as Infoseek and AltaVista in 1995, and its popularity quickly grew until it became one of the most commonly used meta elements.[2]

No consensus exists whether or not the keywords attribute has any effect on ranking at any of the major search engines today. It is speculated that it does if the keywords used in the meta can also be found in the page copy itself. With respect to Google, thirty-seven leaders in search engine optimization concluded in April 2007 that the relevance of having keywords in the meta-attribute keywords is little to none[3] and in September 2009 Matt Cutts of Google announced that they were no longer taking keywords into account whatsoever.[4] However, both these articles suggest that Yahoo! still makes use of the keywords meta tag in some of its rankings. Yahoo! itself claims support for the keywords meta tag in conjunction with other factors for improving search rankings.[5] In October 2009 Search Engine Round Table announced that "Yahoo Drops The Meta Keywords Tag Also"[6] but later reported that the announcement made by Yahoo!'s Senior Director of Search was incorrect.[7] In the corrected statement Yahoo! Senior Director of Search states that "…What changed with Yahoo's ranking algorithms is that while we still index the meta keyword tag, the ranking importance given to meta keyword tags receives the lowest ranking signal in our system … it will actually have less effect than introducing those same words in the body of the document, or any other section."[8] In Sept 2012, Google[9] announced that they will consider Keyword Meta tag for news publishers. Google said that this may help worthy content to get noticed. The syntax of the news meta keyword has subtle difference from custom keyword meta tag; it is denoted by "news_keywords", while the custom keyword meta tag is denoted by "keywords".

The Title attribute

According to Moz, "Title tags are the second most important on-page factor for SEO, after content".[10] They convey to the search engines what a given page is all about. It used to be standard SEO practice to include the primary and the secondary keywords in the title for better ranking.

Regardless, the title tags still hold importance in three different ways.

-   They are displayed as page title in search results (and influence user behavior with respect to clicking on particular results).
-   Web browsers display them in naming open tabs; since the title is visible on hover, this is especially useful when too many tabs are open and only the favicon for each page (if available) is visible.
-   As in search results, titles are visible when page links are posted on social media and this, too, conveys to the users what the link is about.

The description attribute

Unlike the keywords attribute, the description attribute is supported by most major search engines, like Yahoo! and Bing, while Google will fall back on this tag when information about the page itself is requested (e.g. using the related: query). The description attribute provides a concise explanation of a Web page's content. This allows the Web page authors to give a more meaningful description for listings than might be displayed if the search engine was unable to automatically create its own description based on the page content. The description is often, but not always, displayed on search engine results pages, so it can affect click-through rates. While clicks for a result can be a positive sign of effective title and description writing, Google does not recognize this meta element as a ranking factor, so using target keyword phrases in that element will not help a site rank better. W3C doesn't specify the size of this description meta tag, but almost all search engines recommend it to be shorter than 155 characters of plain text.

The language attribute

The language attribute tells search engines what natural language the website is written in (e.g. English, Spanish or French), as opposed to the coding language (e.g. HTML). It is normally an IETF language tag for the language name. It is of most use when a website is written in multiple languages and can be included on each page to tell search engines in which language a particular page is written.[11]

The robots attribute

The robots attribute, supported by several major search engines,[12] controls whether search engine spiders are allowed to index a page, or not, and whether they should follow links from a page, or not. The attribute can contain one or more comma-separate values. The noindex value prevents a page from being indexed, and nofollow prevents links from being crawled. Other values recognized by one or more search engines can influence how the engine indexes pages, and how those pages appear on the search results. These include noarchive, which instructs a search engine not to store an archived copy of the page, and nosnippet, which asks that the search engine not include a snippet from the page along with the page's listing in search results.[13]

Meta tags are one of the best options for preventing search engines from indexing content of a website.[14]

Additional attributes for search engines

NOODP

The search engines Google, Yahoo! and MSN use in some cases the title and abstract of the DMOZ (aka Open Directory Project) listing of a website for the title and/or description (also called snippet or abstract) in the search engine results pages (SERP). To give webmasters the option to specify that the Open Directory Project content should not be used for listings of their website, Microsoft introduced in May 2006 the new "NOODP" value for the "robots" element of the meta tags.[15] Google followed in July 2006[16] and Yahoo! in October 2006.[17]

The syntax is the same for all search engines who support the tag.

    <meta name="robots" content="noodp" >

Webmasters can decide if they want to disallow the use of their ODP listing on a per search engine basis

Google:

    <meta name="googlebot" content="noodp" >

Yahoo!

    <meta name="Slurp" content="noodp" >

MSN and Live Search (via bingbot, previously msnbot):

    <meta name="bingbot" content="noodp" >

NOYDIR

Yahoo! puts content from their own Yahoo! directory next to the ODP listing. In 2007 they introduced a meta tag that lets web designers opt-out of this.[18]

Adding the NOYDIR tag to a page will prevent Yahoo! from displaying Yahoo! Directory titles and abstracts.

    <meta name="robots" content="noydir" >
    <meta name="Slurp" content="noydir" >

Static HTML from Ajax hash fragment URLs

    <meta name="fragment" content="!" >

For dynamically created web pages, Google proposes the above meta tag which causes fragment URLs (ones that look like "http://www.url.com/#xyz" ) to be rewritten and recrawled as "ugly URLs" (i.e. ones looking like "http://www.url.com/?_escaped_fragment_=xyz" ). See [19] for more details about the rewriting process. This rewrite step is a signal to the web site to please provide a simple and full HTML web page that is the result of executing the AJAX or other scripting on the page. This allows Google and other search engines to collect and index static web pages even when a web page is dynamically created and updated by the browser.

Robots-NoContent

Yahoo! also introduced in May 2007 the attribute value: class="robots-nocontent".[20] This is not a meta tag, but an attribute and value, which can be used throughout Web page tags where needed. Content of the page where this attribute is being used will be ignored by the Yahoo! crawler and not included in the search engine's index.

Examples for the use of the robots-nocontent tag:

    <div class="robots-nocontent">excluded content</div>
    <span class="robots-nocontent">excluded content</span>
    <p class="robots-nocontent">excluded content</p>

Academic studies

Google does not use HTML keyword or meta tag elements for indexing. The Director of Research at Google, Monika Henzinger, was quoted (in 2002) as saying, "Currently we don't trust metadata because we are afraid of being manipulated." [21] Other search engines developed techniques to penalize Web sites considered to be "cheating the system". For example, a Web site repeating the same meta keyword several times may have its ranking _decreased_ by a search engine trying to eliminate this practice, though that is unlikely. It is more likely that a search engine will ignore the meta keyword element completely, and most do regardless of how many words are used in the element.

Google does, however, use meta tag elements for displaying site links. The title tags are used to create the link in search results:

    <title>Site name - Page title - Keyword description</title>

The meta description often appears in Google search results to describe the link:

    <meta name="description" content="A blurb to describe the content of the page appears here" >

Additionally, enterprise search startup Swiftype considers meta tags as a mechanism for signaling relevancy for their web site search engines, even introducing their own extension called Meta Tags 2.[22]


Redirects

Meta refresh elements can be used to instruct a Web browser to automatically refresh a Web page after a given time interval. It is also possible to specify an alternative URL and use this technique in order to redirect the user to a different location. Auto refreshing via a META element has been deprecated for more than ten years,[23] and recognized as problematic before that.[24]

The W3C suggests that user agents should allow users to disable it, otherwise META refresh should not be used by web pages. For Internet Explorer's security settings, under the miscellaneous category, meta refresh can be turned off by the user, thereby disabling its redirect ability. In Mozilla Firefox it can be disabled in the configuration file under the key name "accessibility.blockautorefresh".[25]

Many web design tutorials also point out that client-side redirecting tends to interfere with the normal functioning of a Web browser's "back" button. After being redirected, clicking the back button will cause the user to go back to the redirect page, which redirects them again. Some modern browsers seem to overcome this problem however, including Safari, Mozilla Firefox and Opera.

Auto-redirects via markup (versus server-side redirects) are not in compliance with the W3C's - Web Content Accessibility Guidelines (WCAG) 1.0 (guideline 7.5).[26]


HTTP message headers

Meta elements of the form

can be used as alternatives to HTTP headers. For example,

would tell the browser that the page "expires" on June 21, 2006 at 14:25:27 GMT and that it may safely cache the page until then. The HTML 4.01 specification optionally allows this tag to be parsed by HTTP servers and set as part of the HTTP response headers,[27] but no web servers currently implement this behavior.[28] Instead, the user agent emulates the behavior for some HTTP headers as if they had been sent in the response header itself.


Alternative to meta elements

Some HTML elements and attributes already handle certain pieces of meta data and may be used by authors instead of META to specify those pieces: the TITLE element, the ADDRESS element, the INS and DEL elements, the title attribute, and the cite attribute.[29]

An alternative to meta elements for enhanced subject access within a website is the use of a back-of-book-style index for the website. See the American Society of Indexers website for an example.

In 1994, ALIWEB, also used an index file to provide the type of information commonly found in meta keywords attributes.

In cases where the content attribute's value is a URL, many authors decide to use a link element with a proper value for its rel attribute as well.[30]

For a comparison on when it is best to use HTTP-headers, meta-elements, or attributes in the case of language specification: see here.


See also

-   Meta refresh, a deprecated meta element
-   RDFa, attribute level extensions to XHTML, for embedding metadata
-   Resource Description Framework (RDF)


References


External links

-   The element from the latest published version of HTML, W3C Recommendation

Category:HTML tags Category:HTML Category:Search engine optimization

[1]

[2] Statistic (June 4, 1997), META attributes by count, _Vancouver Webpages_, retrieved June 3, 2007

[3] "In 2007, 37 leaders in search engine optimisation concluded that having keywords in the keywords attribute is little to none." Sanger.nu blog, September 9 2008, Retrieved August 2 2011

[4] "Google does not use the keywords meta tag in web ranking" Google Webmaster Central Blog, September 21, 2009, Retrieved September 21, 2009

[5] Yahoo! FAQs, How do I improve the ranking of my web site in the search results?, _Yahoo.com_, retrieved November 12, 2008

[6] "Yahoo Drops The Meta Keywords Tag Also" SEO Roundtable, October 8, 2009, Retrieved April 22, 2011

[7] "Yahoo's Senior Director of Search Got It Wrong, Yahoo Uses Meta Keywords Still" SEO Roundtable, October 16, 2009, Retrieved April 22, 2011

[8]

[9]

[10]

[11] 1 Website Designer Using language metatags in websites February 19, 2008

[12] Vanessa Fox, Using the robots meta tag, Official Google Webmaster Central Blog, 3/05/2007

[13] Danny Sullivan (March 5, 2007),Meta Robots Tag 101: Blocking Spiders, Cached Pages & More, _SearchEngineLand.com_, retrieved June 3, 2007

[14] If I block Google from crawling a page using a robots.txt disallow directive, will it disappear from search results?, _developers.google.com_, retrieved July 26, 2013

[15] Betsy Aoki (May 22, 2006), Opting Out of Open Directory Listings for Webmasters, _Live Search Blog_, retrieved June 3, 2007

[16] Vanessa Fox (July 13, 2006), More control over page snippets, _Inside Google Sitemaps_, retrieved June 3, 2007

[17] Yahoo! Search (October 24, 2006), Yahoo! Search Weather Update and Support for 'NOODP', _Yahoo! Search Blog_, retrieved June 3, 2007

[18] Yahoo! Search (February 28, 2007), Yahoo! Search Support for 'NOYDIR' Meta Tags and Weather Update, _Yahoo! Search Blog_, retrieved June 3, 2007

[19]  AJAX Crawling (Deprecated)|website=Google Developers|language=en|access-date=2018-10-15}}

[20] Yahoo! Search (May 02, 2007), Introducing Robots-Nocontent for Page Sections, _Yahoo! Search Blog_, retrieved March 23, 2013

[21] Greta de Groat (2002). "Perspectives on the Web and Google: Monika Henzinger, Director of Research, Google", _Journal of Internet Cataloging_, Vol. 5(1), pp. 17-28, 2002.

[22]

[23]

[24]

[25] Accessibility.blockautorefresh mozillaZine, archived June 2, 2009 from the original

[26] W3C Recommendation (May 5, 1999), Web Content Accessibility Guidelines 1.0 - Guideline 7. _W3.org_, retrieved September 28, 2007

[27] W3C Recommendation (December 24, 1999), HTML 4.01 Specification. ''W3.org', retrieved July 24, 2012

[28] Stack Overflow, meta http-equiv - is it sent as part of an HTTP header, or does the client parse the body for meta tags?, from a London Web Standards tech talk.

[29]

[30]