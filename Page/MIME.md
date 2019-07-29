MULTIPURPOSE INTERNET MAIL EXTENSIONS (MIME) is an Internet standard that extends the format of email to support:

-   Text in character sets other than ASCII
-   Non-text attachments: audio, video, images, application programs etc.
-   Message bodies with multiple parts
-   Header information in non-ASCII character sets

Virtually all human-written Internet email and a fairly large proportion of automated email is transmitted via SMTP in MIME format.

MIME is specified in six linked RFC memoranda: , , , , and ; with the integration with SMTP email specified in detail in and .

Although MIME was designed mainly for SMTP, the content types defined by MIME standards are also of importance in communication protocols outside of email, such as HTTP for the World Wide Web. Servers insert the MIME header at the beginning of any Web transmission. Clients use this content type or media type header to select an appropriate viewer application for the type of data the header indicates. Some of these viewers are built into the Web client or browser (for example, almost all browsers come with GIF and JPEG image viewers as well as the ability to handle HTML files).


MIME headers

MIME-Version

The presence of this header indicates the message is MIME-formatted. The value is typically "1.0" so this header appears as

MIME-Version: 1.0

According to MIME co-creator Nathaniel Borenstein, the intention was to allow MIME to change, to advance to version 2.0 and so forth, but this decision led to the opposite outcome, making it nearly impossible to create a new version of the standard.

"We did not adequately specify how to handle a future MIME version," Borenstein said. "So if you write something that knows 1.0, what should you do if you encounter 2.0 or 1.1? I sort of thought it was obvious but it turned out everyone implemented that in different ways. And the result is that it would be just about impossible for the Internet to ever define a 2.0 or a 1.1."[1]

Content-Type

This header indicates the media type of the message content, consisting of a _type_ and _subtype_, for example

Content-Type: text/plain

Through the use of the _multipart_ type, MIME allows mail messages to have parts arranged in a tree structure where the leaf nodes are any non-multipart content type and the non-leaf nodes are any of a variety of multipart types. This mechanism supports:

-   SIMPLE TEXT MESSAGES USING _TEXT/PLAIN_ (the default value for "Content-Type: ")
-   text plus attachments (_multipart/mixed_ with a _text/plain_ part and other non-text parts). A MIME message including an attached file generally indicates the file's original name with the "Content-disposition:" header, so the type of file is indicated both by the MIME content-type and the (usually OS-specific) filename extension
-   reply with original attached (_multipart/mixed_ with a _text/plain_ part and the original message as a _message/rfc822_ part)
-   alternative content, such as a message sent in both plain text and another format such as HTML (_multipart/alternative_ with the same content in _text/plain_ and _text/html_ forms)
-   image, audio, video and application (for example, _image/jpeg_, _audio/mp3_, _video/mp4_, and _application/msword_ and so on)
-   many other message constructs

Content-Disposition

The original MIME specifications only described the structure of mail messages. They did not address the issue of presentation styles. The content-disposition header field was added in RFC 2183 to specify the presentation style. A MIME part can have:

-   an _inline_ content-disposition, which means that it should be automatically displayed when the message is displayed, or
-   an _attachment_ content-disposition, in which case it is not displayed automatically and requires some form of action from the user to open it.

In addition to the presentation style, the content-disposition header also provides fields for specifying the name of the file, the creation date and modification date, which can be used by the reader's mail user agent to store the attachment.

The following example is taken from RFC 2183, where the header is defined

Content-Disposition: attachment; filename=genome.jpeg;
  modification-date="Wed, 12 Feb 1997 16:29:51 -0500";

The filename may be encoded as defined by RFC 2231.

As of 2010, a good majority of mail user agents do not follow this prescription fully. The widely used Mozilla Thunderbird mail client makes its own decisions about which MIME parts should be automatically displayed, ignoring the _content-disposition_ headers in the messages. Thunderbird prior to version 3 also sends out newly composed messages with _inline_ content-disposition for all MIME parts. Most users are unaware of how to set the content-disposition to _attachment_.[2] Many mail user agents also send messages with the file name in the _name_ parameter of the _content-type_ header instead of the _filename_ parameter of the _content-disposition_ header. This practice is discouraged – the file name should be specified either through just the _filename_ parameter, or through both the _filename_ and the _name_ parameters.[3]

In HTTP, the Content-Disposition: attachment response header is usually used to hint to the client to present the response body as a downloadable file. Typically, when receiving such a response, a Web browser will prompt the user to save its content as a file instead of displaying it as a page in a browser window, with the _filename_ parameter suggesting the default file name (this is useful for dynamically generated content, where deriving the filename from the URL may be meaningless or confusing to the user).

Content-Transfer-Encoding

In June 1992, MIME (RFC 1341, since made obsolete by RFC 2045) defined a set of methods for representing binary data in formats other than ASCII text format. The _content-transfer-encoding:_ MIME header has 2-sided significance:

-   It indicates whether or not a binary-to-text encoding scheme has been used on top of the original encoding as specified within the Content-Type header:

1.  If such a binary-to-text encoding method has been used, it states which one.
2.  If not, it provides a descriptive label for the format of content, with respect to the presence of 8-bit or binary content.

The RFC and the IANA's list of transfer encodings define the values shown below, which are not case sensitive. Note that '7bit', '8bit', and 'binary' mean that no binary-to-text encoding on top of the original encoding was used. In these cases, the header is actually redundant for the email client to decode the message body, but it may still be useful as an indicator of what type of object is being sent. Values 'quoted-printable' and 'base64' tell the email client that a binary-to-text encoding scheme was used and that appropriate initial decoding is necessary before the message can be read with its original encoding (e.g. UTF-8).

-   Suitable for use with normal SMTP:
    -   7BIT – up to 998 octets per line of the code range 1..127 with CR and LF (codes 13 and 10 respectively) only allowed to appear as part of a CRLF line ending. This is the default value.
    -   QUOTED-PRINTABLE – used to encode arbitrary octet sequences into a form that satisfies the rules of 7bit. Designed to be efficient and mostly human readable when used for text data consisting primarily of US-ASCII characters but also containing a small proportion of bytes with values outside that range.
    -   BASE64 – used to encode arbitrary octet sequences into a form that satisfies the rules of 7bit. Designed to be efficient for non-text 8 bit and binary data. Sometimes used for text data that frequently uses non-US-ASCII characters.
-   Suitable for use with SMTP servers that support the 8BITMIME SMTP extension (RFC 6152):
    -   8BIT – up to 998 octets per line with CR and LF (codes 13 and 10 respectively) only allowed to appear as part of a CRLF line ending.
-   Suitable for use with SMTP servers that support the BINARYMIME SMTP extension (RFC 3030):
    -   BINARY – any sequence of octets.

There is no encoding defined which is explicitly designed for sending arbitrary binary data through SMTP transports with the 8BITMIME extension. Thus, if BINARYMIME isn't supported, base64 or quoted-printable (with their associated inefficiency) are sometimes still useful. This restriction does not apply to other uses of MIME such as Web Services with MIME attachments or MTOM.


Encoded-Word

Since RFC 2822, conforming message header names and values should be ASCII characters; values that contain non-ASCII data should use the MIME ENCODED-WORD syntax (RFC 2047) instead of a literal string. This syntax uses a string of ASCII characters indicating both the original character encoding (the "_charset_") and the content-transfer-encoding used to map the bytes of the charset into ASCII characters.

The form is: "=?_charset_?_encoding_?_encoded text_?=".

-   _charset_ may be any character set registered with IANA. Typically it would be the same charset as the message body.
-   _encoding_ can be either "Q" denoting Q-encoding that is similar to the quoted-printable encoding, or "B" denoting base64 encoding.
-   _encoded text_ is the Q-encoded or base64-encoded text.
-   An _encoded-word_ may not be more than 75 characters long, including _charset_, _encoding_, _encoded text_, and delimiters. If it is desirable to encode more text than will fit in an _encoded-word_ of 75 characters, multiple _encoded-word_s (separated by CRLF SPACE) may be used.

Difference between Q-encoding and quoted-printable

The ASCII codes for the question mark ("?") and equals sign ("=") may not be represented directly as they are used to delimit the encoded-word. The ASCII code for space may not be represented directly because it could cause older parsers to split up the encoded word undesirably. To make the encoding smaller and easier to read the underscore is used to represent the ASCII code for space creating the side effect that underscore cannot be represented directly. Use of encoded words in certain parts of headers imposes further restrictions on which characters may be represented directly.

For example,

Subject: =?iso-8859-1?Q?=A1Hola,_se=F1or!?=

is interpreted as "Subject: ¡Hola, señor!".

The encoded-word format is not used for the names of the headers (for example Subject). These header names are always in English in the raw message. When viewing a message with a non-English email client, the header names are usually translated by the client.


Multipart messages

The MIME multipart message contains a boundary in the "Content-Type: " header; this boundary, which must not occur in any of the parts, is placed between the parts, and at the beginning and end of the body of the message, as follows:

    MIME-Version: 1.0
    Content-Type: multipart/mixed; boundary=frontier

    This is a message with multiple parts in MIME format.
    --frontier
    Content-Type: text/plain

    This is the body of the message.
    --frontier
    Content-Type: application/octet-stream
    Content-Transfer-Encoding: base64

    PGh0bWw+CiAgPGhlYWQ+CiAgPC9oZWFkPgogIDxib2R5PgogICAgPHA+VGhpcyBpcyB0aGUg
    Ym9keSBvZiB0aGUgbWVzc2FnZS48L3A+CiAgPC9ib2R5Pgo8L2h0bWw+Cg==
    --frontier--

Each part consists of its own content header (zero or more _Content-_ header fields) and a body. Multipart content can be nested. The content-transfer-encoding of a multipart type must always be "7bit", "8bit" or "binary" to avoid the complications that would be posed by multiple levels of decoding. The multipart block as a whole does not have a charset; non-ASCII characters in the part headers are handled by the Encoded-Word system, and the part bodies can have charsets specified if appropriate for their content-type.

Notes:

-   Before the first boundary is an area that is ignored by MIME-compliant clients. This area is generally used to put a message to users of old non-MIME clients.
-   It is up to the sending mail client to choose a boundary string that doesn't clash with the body text. Typically this is done by inserting a long random string.
-   The last boundary must have two hyphens at the end.

Multipart subtypes

The MIME standard defines various multipart-message subtypes, which specify the nature of the message parts and their relationship to one another. The subtype is specified in the "Content-Type" header of the overall message. For example, a multipart MIME message using the digest subtype would have its Content-Type set as "multipart/digest".

The RFC initially defined 4 subtypes: mixed, digest, alternative and parallel. A minimally compliant application must support mixed and digest; other subtypes are optional. Applications must treat unrecognized subtypes as "multipart/mixed". Additional subtypes, such as signed and form-data, have since been separately defined in other RFCs.

The following is a list of the most commonly used subtypes; it is not intended to be a comprehensive list.

Mixed

Multipart/mixed is used for sending files with different "Content-Type" headers inline (or as attachments). If sending pictures or other easily readable files, most mail clients will display them inline (unless otherwise specified with the "Content-disposition" header). Otherwise it will offer them as attachments. The default content-type for each part is "text/plain".

Defined in RFC 2046, Section 5.1.3

Digest

Multipart/digest is a simple way to send multiple text messages. The default content-type for each part is "message/rfc822".

Defined in RFC 2046, Section 5.1.5

Alternative

The multipart/alternative subtype indicates that each part is an "alternative" version of the same (or similar) content, each in a different format denoted by its "Content-Type" header. The order of the parts is significant. RFC1341 states that: _In general, user agents that compose multipart/alternative entities should place the body parts in increasing order of preference, that is, with the preferred format last._[4]

Systems can then choose the "best" representation they are capable of processing; in general, this will be the last part that the system can understand, although other factors may affect this.

Since a client is unlikely to want to send a version that is less faithful than the plain text version, this structure places the plain text version (if present) first. This makes life easier for users of clients that do not understand multipart messages.

Most commonly, multipart/alternative is used for email with two parts, one plain text (text/plain) and one HTML (text/html). The plain text part provides backwards compatibility while the HTML part allows use of formatting and hyperlinks. Most email clients offer a user option to prefer plain text over HTML; this is an example of how local factors may affect how an application chooses which "best" part of the message to display.

While it is intended that each part of the message represent the same content, the standard does not require this to be enforced in any way. At one time, anti-spam filters would only examine the text/plain part of a message, because it is easier to parse than the text/html part. But spammers eventually took advantage of this, creating messages with an innocuous-looking text/plain part and advertising in the text/html part. Anti-spam software eventually caught up on this trick, penalizing messages with very different text in a multipart/alternative message.

Defined in RFC 2046, Section 5.1.4

Related

A multipart/related is used to indicate that each message part is a component of an aggregate whole. It is for compound objects consisting of several inter-related components - proper display cannot be achieved by individually displaying the constituent parts. The message consists of a root part (by default, the first) which reference other parts inline, which may in turn reference other parts. Message parts are commonly referenced by the "Content-ID" part header. The syntax of a reference is unspecified and is instead dictated by the encoding or protocol used in the part.

One common usage of this subtype is to send a web page complete with images in a single message. The root part would contain the HTML document, and use image tags to reference images stored in the latter parts.

Defined in RFC 2387

Report

_Multipart/report_ is a message type that contains data formatted for a mail server to read. It is split between a text/plain (or some other content/type easily readable) and a message/delivery-status, which contains the data formatted for the mail server to read.

Defined in RFC 6522

Signed

A multipart/signed message is used to attach a digital signature to a message. It has exactly two body parts, a body part and a signature part. The whole of the body part, including mime headers, is used to create the signature part. Many signature types are possible, like "application/pgp-signature" (RFC 3156) and "application/pkcs7-signature" (S/MIME).

Defined in RFC 1847, Section 2.1

Encrypted

A multipart/encrypted message has two parts. The first part has control information that is needed to decrypt the application/octet-stream second part. Similar to signed messages, there are different implementations which are identified by their separate content types for the control part. The most common types are "application/pgp-encrypted" (RFC 3156) and "application/pkcs7-mime" (S/MIME).

Defined in RFC 1847, Section 2.2

Form-Data

As its name implies, multipart/form-data is used to express values submitted through a form. Originally defined as part of HTML 4.0, it is most commonly used for submitting files via HTTP.

Defined in RFC 7578 (previously RFC 2388)

Mixed-Replace

The content type multipart/x-mixed-replace was developed as part of a technology to emulate server push and streaming over HTTP.

All parts of a mixed-replace message have the same semantic meaning. However, each part invalidates - "replaces" - the previous parts as soon as it is received completely. Clients should process the individual parts as soon as they arrive and should not wait for the whole message to finish.

Originally developed by Netscape,[5] it is still supported by Mozilla, Firefox, Safari, and Opera. It is commonly used in IP cameras as the MIME type for MJPEG streams.[6] It was supported by Chrome for main resources until 2013 (images can still be displayed using this content type).[7]

Byteranges

The multipart/byterange is used to represent noncontiguous byte ranges of a single message. It is used by HTTP when a server returns multiple byte ranges and is defined in RFC 2616.


See also

-   8BITMIME
-   Unicode and email
-   Binary-to-text encoding
-   Direct Internet Message Encapsulation (DIME)– a now superseded Microsoft-proposed protocol intended as a streamlined MIME, primarily for use in web services.
-   Extended SMTP (ESMTP)
-   Mailcap
-   mime.types
-   Object Linking and Embedding (OLE)
-   S/MIME
-   SOAP with Attachments
-   Uuencoding
-   VPIM


References

Citations

Sources

RFC 1426 : SMTP Service Extension for 8bit-MIMEtransport. J. Klensin, N. Freed, M. Rose, E. Stefferud, D. Crocker. February 1993.
RFC 1847 : Security Multiparts for MIME: Multipart/Signed and Multipart/Encrypted
RFC 3156 : MIME Security with OpenPGP
RFC 2045 : MIME Part One: Format of Internet Message Bodies.
RFC 2046 : MIME Part Two: Media Types. N. Freed, Nathaniel Borenstein. November 1996.
RFC 2047 : MIME Part Three: Message Header Extensions for Non-ASCII Text. Keith Moore. November 1996.
RFC 4288 : MIME Part Four: Media Type Specifications and Registration Procedures.
RFC 4289 : MIME Part Four: Registration Procedures. N. Freed, J. Klensin. December 2005.
RFC 2049 : MIME Part Five: Conformance Criteria and Examples. N. Freed, N. Borenstein. November 1996.
RFC 2183 : Communicating Presentation Information in Internet Messages: The Content-Disposition Header. Troost, R., Dorner, S. and K. Moore. August 1997.
RFC 2231 : MIME Parameter Value and Encoded Word Extensions: Character Sets, Languages, and Continuations. N. Freed, K. Moore. November 1997.
RFC 2387 : The MIME Multipart/Related Content-type
RFC 1521 : Mechanisms for Specifying and Describing the Format of Internet Message Bodies


Further reading

-   -   -   -   -


External links

-   MIME Media Types - comprising a list of directories of content types and subtypes, maintained by Internet Assigned Numbers Authority.
-   List of Character Sets
-   Properly Configuring Server MIME Types
-   An easy to follow description of multipart messages from MH & nmh
-   -   Free Online PHP MIME checker
-   Free Online MIME Email Validator

Category:MIME

[1]

[2]

[3]

[4]

[5]

[6]

[7]