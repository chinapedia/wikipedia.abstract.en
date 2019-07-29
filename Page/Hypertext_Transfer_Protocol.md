The HYPERTEXT TRANSFER PROTOCOL (HTTP) is an application protocol for distributed, collaborative, hypermedia information systems.[1] HTTP is the foundation of data communication for the World Wide Web, where hypertext documents include hyperlinks to other resources that the user can easily access, for example by a mouse click or by tapping the screen in a web browser. HTTP was developed to facilitate hypertext and the World Wide Web.

Development of HTTP was initiated by Tim Berners-Lee at CERN in 1989. Development of HTTP standards was a coordinated effort by the Internet Engineering Task Force (IETF) and the World Wide Web Consortium (W3C). The efforts culminated into the publication of a series of Requests for Comments (RFCs). The first definition of HTTP/1.1, the version of HTTP still in common use, occurred in in 1997. This version was deprecated by in 1999 which was then also replaced by the family of RFCs in 2014.

A later version, HTTP/2, was standardized in 2015. HTTP/3 is the proposed successor (Internet Draft) that builds on HTTP/2[2][3] and is now supported by major web servers and browsers over Transport Layer Security (TLS) using an Application-Layer Protocol Negotiation (ALPN) extension[4] where TLS 1.2 or newer is required.[5]


Technical overview

Internet1.svg beginning with the HTTP scheme and the WWW domain name label]]

HTTP functions as a request–response protocol in the client–server computing model. A web browser, for example, may be the _client_ and an application running on a computer hosting a website may be the _server_. The client submits an HTTP _request_ message to the server. The server, which provides _resources_ such as HTML files and other content, or performs other functions on behalf of the client, returns a _response_ message to the client. The response contains completion status information about the request and may also contain requested content in its message body.

A web browser is an example of a _user agent_ (UA). Other types of user agent include the indexing software used by search providers (web crawlers), voice browsers, mobile apps, and other software that accesses, consumes, or displays web content.

HTTP is designed to permit intermediate network elements to improve or enable communications between clients and servers. High-traffic websites often benefit from web cache servers that deliver content on behalf of upstream servers to improve response time. Web browsers cache previously accessed web resources and reuse them, when possible, to reduce network traffic. HTTP proxy servers at private network boundaries can facilitate communication for clients without a globally routable address, by relaying messages with external servers.

HTTP is an application layer protocol designed within the framework of the Internet protocol suite. Its definition presumes an underlying and reliable transport layer protocol,[6] and Transmission Control Protocol (TCP) is commonly used. However, HTTP can be adapted to use unreliable protocols such as the User Datagram Protocol (UDP), for example in HTTPU and Simple Service Discovery Protocol (SSDP).

HTTP resources are identified and located on the network by Uniform Resource Locators (URLs), using the Uniform Resource Identifiers (URI's) schemes _http_ and _https_. For example, including all optional components:

            userinfo          host        port
        ┌───────┴───────┐ ┌────┴────────┐ ┌┴┐
 http://john.doe:password@www.example.com:123/forum/questions/?tag=networking&order=newest#top
 └─┬─┘ └───────────┬────────────────────────┘└─┬─────────────┘└────────┬──────────────────┘└┬─┘
 scheme         authority                      path                  query             fragment

URIs are encoded as hyperlinks in HTML documents, so as to form interlinked hypertext documents.

HTTP/1.1 is a revision of the original HTTP (HTTP/1.0). In HTTP/1.0 a separate connection to the same server is made for every resource request. HTTP/1.1 can reuse a connection multiple times to download images, scripts, stylesheets, _etc_ after the page has been delivered. HTTP/1.1 communications therefore experience less latency as the establishment of TCP connections presents considerable overhead.


History

Tim_Berners-Lee_CP_2.jpg ]]

The term hypertext was coined by Ted Nelson in 1965 in the Xanadu Project, which was in turn inspired by Vannevar Bush's 1930s vision of the microfilm-based information retrieval and management "memex" system described in his 1945 essay "As We May Think". Tim Berners-Lee and his team at CERN are credited with inventing the original HTTP, along with HTML and the associated technology for a web server and a text-based web browser. Berners-Lee first proposed the "WorldWideWeb" project in 1989—now known as the World Wide Web. The first version of the protocol had only one method, namely GET, which would request a page from a server.[7] The response from the server was always an HTML page.[8]

The first documented version of HTTP was HTTP V0.9 (1991). Dave Raggett led the HTTP Working Group (HTTP WG) in 1995 and wanted to expand the protocol with extended operations, extended negotiation, richer meta-information, tied with a security protocol which became more efficient by adding additional methods and header fields.[9][10] officially introduced and recognized HTTP V1.0 in 1996.

The HTTP WG planned to publish new standards in December 1995[11] and the support for pre-standard HTTP/1.1 based on the then developing (called HTTP-NG) was rapidly adopted by the major browser developers in early 1996. By March that year, pre-standard HTTP/1.1 was supported in Arena,[12] Netscape 2.0,[13] Netscape Navigator Gold 2.01,[14] Mosaic 2.7, Lynx 2.5, and in Internet Explorer 2.0. End-user adoption of the new browsers was rapid. In March 1996, one web hosting company reported that over 40% of browsers in use on the Internet were HTTP 1.1 compliant. That same web hosting company reported that by June 1996, 65% of all browsers accessing their servers were HTTP/1.1 compliant.[15] The HTTP/1.1 standard as defined in was officially released in January 1997. Improvements and updates to the HTTP/1.1 standard were released under in June 1999.

In 2007, the HTTPBIS WORKING GROUP was formed, in part, to revise and clarify the HTTP/1.1 specification. In June 2014, the WG released an updated six-part specification obsoleting :

-   , _HTTP/1.1: Message Syntax and Routing_

-   , _HTTP/1.1: Semantics and Content_

-   , _HTTP/1.1: Conditional Requests_

-   , _HTTP/1.1: Range Requests_

-   , _HTTP/1.1: Caching_

-   , _HTTP/1.1: Authentication_

HTTP/2 was published as in May 2015.

  Year   HTTP Version
  ------ --------------
  1991   0.9
  1996   1.0
  1997   1.1
  2015   2.0
  2018   3.0


HTTP session

An HTTP session is a sequence of network request-response transactions. An HTTP client initiates a request by establishing a Transmission Control Protocol (TCP) connection to a particular port on a server (typically port 80, occasionally port 8080; see List of TCP and UDP port numbers). An HTTP server listening on that port waits for a client's request message. Upon receiving the request, the server sends back a status line, such as "HTTP/1.1 200 OK", and a message of its own. The body of this message is typically the requested resource, although an error message or other information may also be returned.[16]

Persistent connections

In HTTP/0.9 and 1.0, the connection is closed after a single request/response pair. In HTTP/1.1 a keep-alive-mechanism was introduced, where a connection could be reused for more than one request. Such _persistent connections_ reduce request latency perceptibly, because the client does not need to re-negotiate the TCP 3-Way-Handshake connection after the first request has been sent. Another positive side effect is that, in general, the connection becomes faster with time due to TCP's slow-start-mechanism.

Version 1.1 of the protocol also made bandwidth optimization improvements to HTTP/1.0. For example, HTTP/1.1 introduced chunked transfer encoding to allow content on persistent connections to be streamed rather than buffered. HTTP pipelining further reduces lag time, allowing clients to send multiple requests before waiting for each response. Another addition to the protocol was byte serving, where a server transmits just the portion of a resource explicitly requested by a client.

HTTP session state

HTTP is a stateless protocol. A stateless protocol does not require the HTTP server to retain information or status about each user for the duration of multiple requests. However, some web applications implement states or server side sessions using for instance HTTP cookies or hidden variables within web forms.


HTTP authentication

HTTP provides multiple authentication schemes such as basic access authentication and digest access authentication which operate via a challenge-response mechanism whereby the server identifies and issues a challenge before serving the requested content.

HTTP provides a general framework for access control and authentication, via an extensible set of challenge-response authentication schemes, which can be used by a server to challenge a client request and by a client to provide authentication information.[17]

Authentication realms

The HTTP Authentication specification also provides an arbitrary, implementation-specific construct for further dividing resources common to a given root URI. The realm value string, if present, is combined with the canonical root URI to form the protection space component of the challenge. This in effect allows the server to define separate authentication scopes under one root URI.[18]


Message format

The client sends REQUESTS to the server and the server sends RESPONSES.

Request message

The request message consists of the following:

-   a request line (e.g., _GET /images/logo.png HTTP/1.1_, which requests a resource called from the server.)
-   request header fields (e.g., _Accept-Language: en_).
-   an empty line
-   an optional message body

The request line and other header fields must each end with (that is, a carriage return character followed by a line feed character). The empty line must consist of only and no other whitespace.[19] In the HTTP/1.1 protocol, all header fields except _Host_ are optional.

A request line containing only the path name is accepted by servers to maintain compatibility with HTTP clients before the HTTP/1.0 specification in .[20]

Request methods

Http_request_telnet_ubuntu.png message, response header section, and response body are highlighted.]] HTTP defines methods (sometimes referred to as _verbs_, but nowhere in the specification does it mention _verb_, nor is OPTIONS or HEAD a verb) to indicate the desired action to be performed on the identified resource. What this resource represents, whether pre-existing data or data that is generated dynamically, depends on the implementation of the server. Often, the resource corresponds to a file or the output of an executable residing on the server. The HTTP/1.0 specification[21] defined the GET, HEAD and POST methods and the HTTP/1.1 specification[22] added five new methods: OPTIONS, PUT, DELETE, TRACE and CONNECT. By being specified in these documents, their semantics are well-known and can be depended on. Any client can use any method and the server can be configured to support any combination of methods. If a method is unknown to an intermediate, it will be treated as an unsafe and non-idempotent method. There is no limit to the number of methods that can be defined and this allows for future methods to be specified without breaking existing infrastructure. For example, WebDAV defined 7 new methods and specified the PATCH method.

Method names are case sensitive.[23][24] This is in contrast to HTTP header field names which are case-insensitive.[25]

GET: The GET method requests a representation of the specified resource. Requests using GET should only retrieve data and should have no other effect. (This is also true of some other HTTP methods.)[26] The W3C has published guidance principles on this distinction, saying, "Web application design should be informed by the above principles, but also by the relevant limitations."[27] See safe methods below.
HEAD: The HEAD method asks for a response identical to that of a GET request, but without the response body. This is useful for retrieving meta-information written in response headers, without having to transport the entire content.
POST: The POST method requests that the server accept the entity enclosed in the request as a new subordinate of the web resource identified by the URI. The data POSTed might be, for example, an annotation for existing resources; a message for a bulletin board, newsgroup, mailing list, or comment thread; a block of data that is the result of submitting a web form to a data-handling process; or an item to add to a database.[28]
PUT: The PUT method requests that the enclosed entity be stored under the supplied URI. If the URI refers to an already existing resource, it is modified; if the URI does not point to an existing resource, then the server can create the resource with that URI.[29]
DELETE: The DELETE method deletes the specified resource.
TRACE: The TRACE method echoes the received request so that a client can see what (if any) changes or additions have been made by intermediate servers.
OPTIONS: The OPTIONS method returns the HTTP methods that the server supports for the specified URL. This can be used to check the functionality of a web server by requesting '*' instead of a specific resource.
CONNECT:[30] The CONNECT method converts the request connection to a transparent TCP/IP tunnel, usually to facilitate SSL-encrypted communication (HTTPS) through an unencrypted HTTP proxy.[31][32] See HTTP CONNECT method.
PATCH: The PATCH method applies partial modifications to a resource.[33]

All general-purpose HTTP servers are required to implement at least the GET and HEAD methods, and all other methods are considered optional by the specification.[34]

Safe methods

Some of the methods (for example, GET, HEAD, OPTIONS and TRACE) are, by convention, defined as _safe_, which means they are intended only for information retrieval and should not change the state of the server. In other words, they should not have side effects, beyond relatively harmless effects such as logging, web caching, the serving of banner advertisements or incrementing a web counter. Making arbitrary GET requests without regard to the context of the application's state should therefore be considered safe. However, this is not mandated by the standard, and it is explicitly acknowledged that it cannot be guaranteed.

By contrast, methods such as POST, PUT, DELETE and PATCH are intended for actions that may cause side effects either on the server, or external side effects such as financial transactions or transmission of email. Such methods are therefore not usually used by conforming web robots or web crawlers; some that do not conform tend to make requests without regard to context or consequences.

Despite the prescribed safety of _GET_ requests, in practice their handling by the server is not technically limited in any way. Therefore, careless or deliberate programming can cause non-trivial changes on the server. This is discouraged, because it can cause problems for web caching, search engines and other automated agents, which can make unintended changes on the server. For example, a website might allow deletion of a resource through a URL such as _http://example.com/article/1234/delete_, which, if arbitrarily fetched, even using _GET_, would simply delete the article.[35]

One example of this occurring in practice was during the short-lived Google Web Accelerator beta, which prefetched arbitrary URLs on the page a user was viewing, causing records to be automatically altered or deleted _en masse_. The beta was suspended only weeks after its first release, following widespread criticism.[36][37]

Idempotent methods and web applications

Methods PUT and DELETE are defined to be idempotent, meaning that multiple identical requests should have the same effect as a single request (). Methods GET, HEAD, OPTIONS and TRACE, being prescribed as safe, should also be idempotent, as HTTP is a stateless protocol.[38]

In contrast, the POST method is not necessarily idempotent, and therefore sending an identical POST request multiple times may further affect state or cause further side effects (such as financial transactions). In some cases this may be desirable, but in other cases this could be due to an accident, such as when a user does not realize that their action will result in sending another request, or they did not receive adequate feedback that their first request was successful. While web browsers may show alert dialog boxes to warn users in some cases where reloading a page may re-submit a POST request, it is generally up to the web application to handle cases where a POST request should not be submitted more than once.

Note that whether a method is idempotent is not enforced by the protocol or web server. It is perfectly possible to write a web application in which (for example) a database insert or other non-idempotent action is triggered by a GET or other request. Ignoring this recommendation, however, may result in undesirable consequences, if a user agent assumes that repeating the same request is safe when it is not.

Security

The TRACE method can be used as part of a class of attacks known as cross-site tracing; for that reason, common security advice is for it to be disabled in the server configuration.[39] Microsoft IIS supports a proprietary "TRACK" method, which behaves similarly, and which is likewise recommended to be disabled.[40]

Summary table

+-------------+-----+------------------+-------------------+------+------------+-----------+
| HTTP method | RFC | Request has Body | Response has Body | Safe | Idempotent | Cacheable |
+=============+=====+==================+===================+======+============+===========+
| GET         |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| HEAD        |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| POST        |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| PUT         |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| DELETE      |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| CONNECT     |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| OPTIONS     |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| TRACE       |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+
| PATCH       |     |                  |                   |      |            |           |
+-------------+-----+------------------+-------------------+------+------------+-----------+

Response message

The response message consists of the following:

-   a status line which includes the status code and reason message (e.g., _HTTP/1.1 200 OK_, which indicates that the client's request succeeded.)
-   response header fields (e.g., _Content-Type: text/html_)
-   an empty line
-   an optional message body

The status line and other header fields must all end with . The empty line must consist of only and no other whitespace.[41] This strict requirement for is relaxed somewhat within message bodies for consistent use of other system linebreaks such as or alone.[42]

Status codes

In HTTP/1.0 and since, the first line of the HTTP response is called the _status line_ and includes a numeric _status code_ (such as "404") and a textual _reason phrase_ (such as "Not Found"). The way the user agent handles the response depends primarily on the code, and secondarily on the other response header fields. Custom status codes can be used, for if the user agent encounters a code it does not recognize, it can use the first digit of the code to determine the general class of the response.[43]

The standard _reason phrases_ are only recommendations, and can be replaced with "local equivalents" at the web developer's discretion. If the status code indicated a problem, the user agent might display the _reason phrase_ to the user to provide further information about the nature of the problem. The standard also allows the user agent to attempt to interpret the _reason phrase_, though this might be unwise since the standard explicitly specifies that status codes are machine-readable and _reason phrases_ are human-readable. HTTP status code is primarily divided into five groups for better explanation of request and responses between client and server as named:

-   Informational 1XX
-   Successful 2XX
-   Redirection 3XX
-   Client Error 4XX
-   Server Error 5XX


Encrypted connections

The most popular way of establishing an encrypted HTTP connection is HTTPS.[44] Two other methods for establishing an encrypted HTTP connection also exist: Secure Hypertext Transfer Protocol, and using the HTTP/1.1 Upgrade header to specify an upgrade to TLS. Browser support for these two is, however, nearly non-existent.[45][46][47]


Example session

Below is a sample conversation between an HTTP client and an HTTP server running on www.example.com, port 80.

Client request

    GET / HTTP/1.1
    Host: www.example.com

A client request (consisting in this case of the request line and only one header field) is followed by a blank line, so that the request ends with a double newline, each in the form of a carriage return followed by a line feed. The "Host" field distinguishes between various DNS names sharing a single IP address, allowing name-based virtual hosting. While optional in HTTP/1.0, it is mandatory in HTTP/1.1. (The "/" means /index.html if there is one.)

Server response

    HTTP/1.1 200 OK
    Date: Mon, 23 May 2005 22:38:34 GMT
    Content-Type: text/html; charset=UTF-8
    Content-Length: 138
    Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT
    Server: Apache/1.3.3.7 (Unix) (Red-Hat/Linux)
    ETag: "3f80f-1b6-3e1cb03b"
    Accept-Ranges: bytes
    Connection: close

    <html>
      <head>
        <title>An Example Page</title>
      </head>
      <body>
        <p>Hello World, this is a very simple HTML document.</p>
      </body>
    </html>

The ETag (entity tag) header field is used to determine if a cached version of the requested resource is identical to the current version of the resource on the server. _Content-Type_ specifies the Internet media type of the data conveyed by the HTTP message, while _Content-Length_ indicates its length in bytes. The HTTP/1.1 webserver publishes its ability to respond to requests for certain byte ranges of the document by setting the field _Accept-Ranges: bytes_. This is useful, if the client needs to have only certain portions[48] of a resource sent by the server, which is called byte serving. When _Connection: close_ is sent, it means that the web server will close the TCP connection immediately after the transfer of this response.

Most of the header lines are optional. When _Content-Length_ is missing the length is determined in other ways. Chunked transfer encoding uses a chunk size of 0 to mark the end of the content. _Identity_ encoding without _Content-Length_ reads content until the socket is closed.

A _Content-Encoding_ like _gzip_ can be used to compress the transmitted data.


Similar protocols

The Gopher protocol is a content delivery protocol that was displaced by HTTP in the early 1990s. The SPDY protocol is an alternative to HTTP developed at Google, it is superseded by the new HTTP protocol, HTTP/2.


See also

-   Comparison of file transfer protocols
-   Constrained Application Protocol – a semantically similar protocol to HTTP but used UDP or UDP-like messages targeted for devices with limited processing capability; re-uses HTTP and other internet concepts like Internet media type and web linking (RFC 5988)[49]
-   Content negotiation
-   Curl-loader – HTTP/S loading and testing open-source software
-   Digest access authentication
-   Fiddler (software)
-   HTTP compression
-   HTTP/2 – developed by the IETF's Hypertext Transfer Protocol Bis (httpbis) working group[50]
-   HTTP-MPLEX – A backwards compatible enhancement to HTTP to improve page and web object retrieval time in congested networks proposed by Robert Mattson
-   List of HTTP header fields
-   List of HTTP status codes
-   Representational state transfer (REST)
-   Variant object
-   Web cache
-   WebSocket
-   Wireshark


References


External links

-   A detailed technical history of HTTP.

-   Design Issues by Berners-Lee when he was designing the protocol.

-   list of other classic documents recounting the early protocol history

-   HTTP 0.9 – As Implemented in 1991
-   HTTP/2 Website Online Tester

Hypertext_Transfer_Protocol Category:Application layer protocols Category:Internet protocols Category:Network protocols Category:World Wide Web Category:World Wide Web Consortium standards Category:Computer-related introductions in 1991

[1]

[2]

[3]  ZDNet|last=Cimpanu|first=Catalin|work=ZDNet|access-date=2018-11-19|language=en}}

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

[20]  090502 apacheweek.com

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