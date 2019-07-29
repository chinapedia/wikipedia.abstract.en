HTML (Hypertext Markup Language) has been in use since 1991, but HTML 4.0 (December 1997) was the first standardized version where international characters were given reasonably complete treatment. When an HTML document includes special characters outside the range of seven-bit ASCII, two goals are worth considering: the information's integrity, and universal browser display.


Specifying the document's character encoding

There are several ways to specify which character encoding is used in the document. First, the web server can include the character encoding or "charset" in the Hypertext Transfer Protocol (HTTP) Content-Type header, which would typically look like this:[1]

Content-Type: text/html; charset=ISO-8859-4

This method gives the HTTP server a convenient way to alter document's encoding according to content negotiation; certain HTTP server software can do it, for example Apache with the module mod_charset_lite.[2]

For HTML it is possible to include this information inside the head element near the top of the document:[3]

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

HTML5 also allows the following syntax to mean exactly the same:[4]

    <meta charset="utf-8">

XHTML documents have a third option: to express the character encoding via XML declaration, as follows:[5]

    <?xml version="1.0" encoding="ISO-8859-1"?>

Note that as the character encoding cannot be known until this declaration is parsed, there can be a problem knowing which encoding is used for the declaration itself. The main principle is that the declaration shall be encoded in pure ASCII, and therefore (if the declaration is inside the file) the encoding needs to be an ASCII extension. In order to allow encodings not backwards compatible with ASCII, browsers must be able to parse declarations in such encodings. Examples of such encodings are UTF-16BE and UTF-16LE.

As of HTML5 the recommended charset is UTF-8.[6] An "encoding sniffing algorithm" is defined in the specification to determine the character encoding of the document based on multiple sources of input, including:

1.  Explicit user instruction
2.  An explicit meta tag within the first 1024 bytes of the document
3.  A Byte order mark within the first three bytes of the document
4.  The HTTP Content-Type or other transport layer information
5.  Analysis of the document bytes looking for specific sequences or ranges of byte values,[7] and other tentative detection mechanisms.

For ASCII-compatible character encodings the consequence of choosing incorrectly is that characters outside the printable ASCII range (32 to 126) usually appear incorrectly. This presents few problems for English-speaking users, but other languages regularly—in some cases, always—require characters outside that range. In CJK environments where there are several different multi-byte encodings in use, auto-detection is also often employed. Finally, browsers usually permit the user to override _incorrect_ charset label manually as well.

It is increasingly common for multilingual websites and websites in non-Western languages to use UTF-8, which allows use of the same encoding for all languages. UTF-16 or UTF-32, which can be used for all languages as well, are less widely used because they can be harder to handle in programming languages that assume a byte-oriented ASCII superset encoding, and they are less efficient for text with a high frequency of ASCII characters, which is usually the case for HTML documents.

Successful viewing of a page is not necessarily an indication that its encoding is specified correctly. If the page's creator and reader are both assuming some platform-specific character encoding, and the server does not send any identifying information, then the reader will nonetheless see the page as the creator intended, but other readers on different platforms or with different native languages will not see the page as intended.


Character references

In addition to native character encodings, characters can also be encoded as _character references_, which can be _numeric character references_ (decimal or hexadecimal) or _character entity references_. Character entity references are also sometimes referred to as _named entities_, or _HTML entities_ for HTML. HTML's usage of character references derives from SGML.

HTML character references

A _numeric character reference_ in HTML refers to a character by its Universal Character Set/Unicode _code point_, and uses the format

    &#_nnnn_;

or

    &#x_hhhh_;

where _nnnn_ is the code point in decimal form, and _hhhh_ is the code point in hexadecimal form. The _x_ must be lowercase in XML documents. The _nnnn_ or _hhhh_ may be any number of digits and may include leading zeros. The _hhhh_ may mix uppercase and lowercase, though uppercase is the usual style.

Not all web browsers or email clients used by receivers of HTML documents, or text editors used by authors of HTML documents, will be able to render all HTML characters. Most modern software is able to display most or all of the characters for the user's language, and will draw a box or other clear indicator for characters they cannot render.

For codes from 0 to 127, the original 7-bit ASCII standard set, most of these characters can be used without a character reference. Codes from 160 to 255 can all be created using character entity names. Only a few higher-numbered codes can be created using entity names, but all can be created by decimal number character reference.

Character entity references can also have the format &_name_; where _name_ is a case-sensitive alphanumeric string. For example, "λ" can also be encoded as λ in an HTML document. The character entity references <, >, " and & are predefined in HTML and SGML, because <, >, " and & are already used to delimit markup. This notably does not include XML's ' (') entity. For a list of all named HTML character entity references (about 250), see List of XML and HTML character entity references.

Unnecessary use of HTML character references may significantly reduce HTML readability. If the character encoding for a web page is chosen appropriately, then HTML character references are usually only required for markup delimiting characters as mentioned above, and for a few special characters (or none at all if a native Unicode encoding like UTF-8 is used). Incorrect HTML entity escaping may also open up security vulnerabilities for injection attacks such as cross-site scripting. If HTML attributes are left unquoted, certain characters, most importantly whitespace, such as space and tab, must be escaped using entities. Other languages related to HTML have their own methods of escaping characters.

XML character references

Unlike traditional HTML with its large range of character entity references, in XML there are only five predefined character entity references. These are used to escape characters that are markup sensitive in certain contexts:[8]

-   & → & (ampersand, U+0026)
-   < → < (less-than sign, U+003C)
-   > → > (greater-than sign, U+003E)
-   " → " (quotation mark, U+0022)
-   ' → ' (apostrophe, U+0027)

All other character entity references have to be defined before they can be used. For example, use of é (which gives é, Latin lower-case E with acute accent, U+00E9 in Unicode) in an XML document will generate an error unless the entity has already been defined. XML also requires that the x in hexadecimal numeric references be in lowercase: for example &#xA1b rather than &#XA1b. XHTML, which is an XML application, supports the HTML entity set, along with XML's predefined entities.


See also

-   Charset sniffing – used by many browsers when character encoding metadata is not available
-   Unicode and HTML
-   Language code
-   List of XML and HTML character entity references


References


External links

-   Character entity references in HTML4
-   The Definitive Guide to Web Character Encoding
-   HTML Entity Encoding chapter of Browser Security Handbook - more information about current browsers and their entity handling
-   The Open Web Application Security Project's wiki article on cross-site scripting (XSS)

Category:HTML Category:World Wide Web Consortium standards

[1]

[2] Apache Module mod_charset_lite

[3]

[4]

[5]

[6]

[7] HTML5 prescan a byte stream to determine its encoding

[8]