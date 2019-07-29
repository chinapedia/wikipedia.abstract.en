The GOPHER protocol is a TCP/IP application layer protocol designed for distributing, searching, and retrieving documents over the Internet. The Gopher protocol was strongly oriented towards a menu-document design and presented an alternative to the World Wide Web in its early stages, but ultimately Hypertext Transfer Protocol (HTTP) became the dominant protocol. The Gopher ecosystem is often regarded as the effective predecessor of the World Wide Web.[1]

The protocol was invented by a team led by Mark P. McCahill[2] at the University of Minnesota. It offers some features not natively supported by the Web and imposes a much stronger hierarchy on information stored on it. Its text menu interface is well-suited to computing environments that rely heavily on remote text-oriented computer terminals, which were still common at the time of its creation in 1991, and the simplicity of its protocol facilitated a wide variety of client implementations. More recent Gopher revisions and graphical clients added support for multimedia. Gopher was preferred by many network administrators for using fewer network resources than Web services.[3]

Gopher's hierarchical structure provided a platform for the first large-scale electronic library connections.[4] Gopher has been described by some enthusiasts[5] as "faster and more efficient and so much more organized" than today's Web services. The Gopher protocol is still in use by enthusiasts, and although it has been almost entirely supplanted by the Web, a small population of actively-maintained servers remains.


Origins

Gopher system was released in mid-1991 by Mark P. McCahill, Farhad Anklesaria, Paul Lindner, Daniel Torrey, and Bob Alberti of the University of Minnesota[6] in the United States. Its central goals were, as stated in RFC 1436:

-   A file-like hierarchical arrangement that would be familiar to users.
-   A simple syntax.
-   A system that can be created quickly and inexpensively.
-   Extending the file system metaphor, such as searches.

Gopher combines document hierarchies with collections of services, including WAIS, the Archie and Veronica search engines, and gateways to other information systems such as File Transfer Protocol (FTP) and Usenet.

The general interest in Campus-Wide Information Systems (CWISs)[7] in higher education at the time, and the ease with which a Gopher server could be set up to create an instant CWIS with links to other sites' online directories and resources were the factors contributing to Gopher's rapid adoption.

The name was coined by Anklesaria as a play on several meanings of the word "gopher".[8] The University of Minnesota mascot is the gopher,[9] a gofer is an assistant who "goes for" things, and a gopher burrows through the ground to reach a desired location.[10]


Decline

The World Wide Web was in its infancy in 1991, and Gopher services quickly became established. By the late 1990s, Gopher had ceased expanding. Several factors contributed to Gopher's stagnation:

-   In February 1993, the University of Minnesota announced that it would charge licensing fees for the use of its implementation of the Gopher server.[11][12] Users became concerned that fees might also be charged for independent implementations.[13][14] Gopher expansion stagnated, to the advantage of the World Wide Web, to which CERN disclaimed ownership.[15] In September 2000, the University of Minnesota re-licensed its Gopher software under the GNU General Public License.[16]
-   Gopher client functionality was quickly duplicated by the early Mosaic web browser, which subsumed its protocol.
-   Gopher has a more rigid structure than the free-form HTML of the Web. Every Gopher document has a defined format and type, and the typical user navigates through a single server-defined menu system to get to a particular document. This can be quite different from the way a user finds documents on the Web.

Gopher remains in active use by its enthusiasts, and there have been attempts to revive Gopher on modern platforms and mobile devices. One attempt is The Overbite Project, which hosts various browser extensions and modern clients.

Server census

-   , there remained about 160 gopher servers indexed by Veronica-2,[17] reflecting a slow growth from 2007 when there were fewer than 100.[18] They are typically infrequently updated. On these servers Veronica indexed approximately 2.5 million unique selectors. A handful of new servers were being set up every year by hobbyists with over 50 having been set up and added to Floodgap's list since 1999.[19] A snapshot of Gopherspace in 2007 circulated on BitTorrent and was still available in 2010.[20] Due to the simplicity of the Gopher protocol, setting up new servers or adding Gopher support to browsers is often done in a tongue-in-cheek manner, principally on April Fools' Day.[21]

-   In November 2014 Veronica indexed 144 gopher servers,[22] reflecting a small drop from 2012, but within these servers Veronica indexed approximately 3 million unique selectors.

-   In March 2016 Veronica indexed 135 gopher servers,[23] within which it indexed approximately 4 million unique selectors.

-   In March 2017 Veronica indexed 133 gopher servers,[24] within which it indexed approximately 4.9 million unique selectors.

-   In May 2018 Veronica indexed 260 gopher servers,[25] within which it indexed approximately 3.7 million unique selectors.
-   In May 2019 Veronica indexed 320 gopher servers,[26] within which it indexed approximately 4.2 million unique selectors.


Technical details

The conceptualization of knowledge in "Gopher space" or a "cloud" as specific information in a particular file, and the prominence of the FTP, influenced the technology and the resulting functionality of Gopher.

Gopher characteristics

Gopher is designed to function and to appear much like a mountable read-only global network file system (and software, such as gopherfs, is available that can actually mount a Gopher server as a FUSE resource). At a minimum, whatever a person can do with data files on a CD-ROM, one can do on Gopher.

A Gopher system consists of a series of hierarchical hyperlinkable menus. The choice of menu items and titles is controlled by the administrator of the server. | alt2 = | caption2 = ...takes the user to the "Fun and Games" menu. | footer = }}

Similar to a file on a Web server, a file on a Gopher server can be linked to as a menu item from any other Gopher server. Many servers take advantage of this inter-server linking to provide a directory of other servers that the user can access.

Protocol

The Gopher protocol was first described in RFC 1436. IANA has assigned TCP port 70 to the Gopher protocol.

The protocol is simple to negotiate, making it possible to browse without using a client. A standard gopher session may therefore appear as follows:

    /Reference
    1CIA World Factbook     /Archives/mirrors/textfiles.com/politics/CIA    gopher.quux.org 70
    0Jargon 4.2.0   /Reference/Jargon 4.2.0 gopher.quux.org 70      +
    1Online Libraries       /Reference/Online Libraries     gopher.quux.org 70     +
    1RFCs: Internet Standards       /Computers/Standards and Specs/RFC      gopher.quux.org 70
    1U.S. Gazetteer /Reference/U.S. Gazetteer       gopher.quux.org 70      +
    iThis file contains information on United States        fake    (NULL)  0
    icities, counties, and geographical areas.  It has      fake    (NULL)  0
    ilatitude/longitude, population, land and water area,   fake    (NULL)  0
    iand ZIP codes. fake    (NULL)  0
    i       fake    (NULL)  0
    iTo search for a city, enter the city's name.  To search        fake    (NULL) 0
    ifor a county, use the name plus County -- for instance,        fake    (NULL) 0
    iDallas County. fake    (NULL)  0

Here, the client has established a TCP connection with the server on port 70, the standard gopher port. The client then sends a string followed by a carriage return followed by a line feed (a "CR + LF" sequence). This is the selector, which identifies the document to be retrieved. If the item selector were an empty line, the default directory would be selected. The server then replies with the requested item and closes the connection. According to the protocol, before the connection is closed, the server should send a full-stop (i.e., a period character) on a line by itself. However, as is the case here, not all servers conform to this part of the protocol and the server may close the connection without returning the final full-stop.

In this example, the item sent back is a gopher menu, a directory consisting of a sequence of lines each of which describes an item that can be retrieved. Most clients will display these as hypertext links, and so allow the user to navigate through gopherspace by following the links.[27]

All lines in a gopher menu are terminated by "CR + LF", and consist of five fields: the _item type_ as the very first character (see below), the _display string_ (i.e., the description text to display), a _selector_ (i.e., a file-system pathname), _host name_ (i.e., the domain name of the server on which the item resides), and _port_ (i.e., the port number used by that server). The item type and display string are joined without a space; the other fields are separated by the tab character.

Because of the simplicity of the Gopher protocol, tools such as netcat make it possible to download Gopher content easily from the command line:

echo jacks/jack.exe | nc gopher.example.org 70 > jack.exe

The protocol is also supported by cURL as of 7.21.2-DEV.[28]

Source code of a menu

Gopher menu items are defined by lines of tab-separated values in a text file. This file is sometimes called a _gophermap_. As the source code to a gopher menu, a gophermap is roughly analogous to an HTML file for a web page. Each tab-separated line (called a _selector line_) gives the client software a description of the menu item: what it is, what it's called, and where it leads. The client displays the menu items in the order that they appear in the gophermap.

The first character in a selector line indicates the _item type_, which tells the client what kind of file or protocol the menu item points to. This helps the client decide what to do with it. Gopher's item types are a more basic precursor to the media type system used by the Web and email attachments.

The item type is followed by the _user display string_ (a description or label that represents the item in the menu); the selector (a path or other string for the resource on the server); the _hostname_ (the domain name or IP address of the server), and the network port.

For example: The following selector line generates a link to the "/home" directory at the subdomain gopher.floodgap.com, on port 70. The item type of indicates that the resource is a Gopher menu. The string "Floodgap Home" is what the user sees in the menu.

1Floodgap Home /home   gopher.floodgap.com 70

  Item type   User display string   Selector   Hostname              Port
  ----------- --------------------- ---------- --------------------- ------
  1           Floodgap Home         /home      gopher.floodgap.com   70

In addition to selector lines, a gophermap may contain _comment lines_. Comment lines are not for code comments; rather, they are lines of text sent to the client to display alongside the menu items, such as for a menu description or welcome message. A comment line contains no tab characters.

Item types

In a Gopher menu's source code, a one-character code indicates what kind of content the client should expect. This code may either be a digit or a letter of the alphabet; letters are case-sensitive.

The technical specification for Gopher, RFC 1436, defines 14 item types. A one-character code indicates what kind of content the client should expect. Item type is an error code for exception handling. Gopher client authors improvised item types (HTML), (informational message), and (sound file) after the publication of RFC 1436.

+-------------+
| colspan="2" |
+=============+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
|             |
+-------------+
| colspan="2" |
+-------------+
| H           |
+-------------+
| I           |
+-------------+
| S           |
+-------------+

URL links

Historically, to create a link to a Web server, "GET /" was used as a pseudo-selector to emulate an HTTP GET request. John Goerzen created an addition[29] to the Gopher protocol, commonly referred to as "URL links", that allows links to any protocol that supports URLs. For example, to create a link to http://gopher.quux.org/, the item type is , the display string is the title of the link, the item selector is "URL:http://gopher.quux.org/", and the domain and port are that of the originating Gopher server (so that clients that do not support URL links will query the server and receive an HTML redirection page).

Related technology

The master Gopherspace search engine is Veronica. Veronica offers a keyword search of all the public Internet Gopher server menu titles. A Veronica search produces a menu of Gopher items, each of which is a direct pointer to a Gopher data source. Individual Gopher servers may also use localized search engines specific to their content such as Jughead and Jugtail.

GopherVR is a 3D virtual reality variant of the original Gopher system.


Client software

Web browsers

+-----------------------------+------------+-------+
| Browser                     | Version    | Notes |
+=============================+============+=======+
|                             |            |       |
+-----------------------------+------------+-------+
| | Camino                    |            |       |
+-----------------------------+------------+-------+
| | Classilla                 |            |       |
+-----------------------------+------------+-------+
| | cURL                      |            |       |
+-----------------------------+------------+-------+
| | Dooble                    |            |       |
+-----------------------------+------------+-------+
| | ELinks                    | [30]       |       |
+-----------------------------+------------+-------+
| | Epiphany                  |            |       |
+-----------------------------+------------+-------+
| | Falkon                    |            |       |
+-----------------------------+------------+-------+
| | Galeon                    |            |       |
+-----------------------------+------------+-------+
| | Google Chrome             | [31]       |       |
+-----------------------------+------------+-------+
| | Internet Explorer         |            |       |
+-----------------------------+------------+-------+
| | Internet Explorer for Mac |            |       |
+-----------------------------+------------+-------+
| | K-Meleon                  |            |       |
+-----------------------------+------------+-------+
| | Konqueror                 |            |       |
+-----------------------------+------------+-------+
| | libwww                    |            |       |
+-----------------------------+------------+-------+
| | Line Mode Browser         | {{included | 1.1   |
|                             |            | }}    |
+-----------------------------+------------+-------+
| | Lynx                      |            |       |
+-----------------------------+------------+-------+
| | Mosaic                    |            |       |
+-----------------------------+------------+-------+
| | Mozilla Firefox           |            |       |
+-----------------------------+------------+-------+
| | Netscape Navigator        |            |       |
+-----------------------------+------------+-------+
| | NetSurf                   |            |       |
+-----------------------------+------------+-------+
| | OmniWeb                   |            |       |
+-----------------------------+------------+-------+
| | Opera                     |            |       |
+-----------------------------+------------+-------+
| | Pavuk                     |            |       |
+-----------------------------+------------+-------+
| ! | SeaMonkey               |            |       |
+-----------------------------+------------+-------+
| ! | WebPositive             |            |       |
+-----------------------------+------------+-------+

Browsers that do not natively support Gopher can still access servers using one of the available Gopher to HTTP gateways.

Gopher support was disabled in Internet Explorer versions 5.x and 6 for Windows in August 2002 by a patch meant to fix a security vulnerability in the browser's Gopher protocol handler to reduce the attack surface which was included in IE6 SP1; however, it can be re-enabled by editing the Windows registry. In Internet Explorer 7, Gopher support was removed on the WinINET level.[32]

Gopher browser extensions

For Mozilla Firefox and SeaMonkey, Overbite[33] extensions extend Gopher browsing and support the current versions of the browsers (Firefox Quantum v ≥57 and equivalent versions of SeaMonkey):

-   OverbiteWX redirects gopher:// URLs to a proxy;
-   OverbiteNX adds native-like support;
-   for Firefox up to 56.*, and equivalent versions of SeaMonkey, OverbiteFF adds native-like support.

OverbiteWX includes support for accessing Gopher servers not on port 70 using a whitelist and for CSO/ph queries. OverbiteFF always uses port 70.

For Chromium and Google Chrome, Burrow[34] is available. It redirects gopher:// URLs to a proxy. In the past an Overbite proxy-based extension for these browsers was available but is no longer maintained and does not work with the current (>23) releases.[35]

For Konqueror, Kio gopher[36] is available.

Gopher clients for mobile devices

Some have suggested that the bandwidth-sparing simple interface of Gopher would be a good match for mobile phones and personal digital assistants (PDAs),[37] but so far, mobile adaptations of HTML and XML and other simplified content have proven more popular. The PyGopherd server provides a built-in WML front-end to Gopher sites served with it.

The early 2010s saw a renewed interest in native Gopher clients for popular smartphones: Overbite, an open source client for Android 1.5+ was released in alpha stage in 2010.[38] PocketGopher was also released in 2010, along with its source code, for several Java ME compatible devices. Gopher Client was released in 2016 as a proprietary client for iPhone and iPad devices and is currently maintained.1

Other Gopher clients

Gopher popularity was at its height at a time when there were still many equally competing computer architectures and operating systems. As a result, there are several Gopher clients available for Acorn RISC OS, AmigaOS, Atari MiNT, CMS, DOS, classic Mac OS, MVS, NeXT, OS/2 Warp, most UNIX-like operating systems, VMS, Windows 3.x, and Windows 9x. GopherVR was a client designed for 3D visualization, and there is even a Gopher client in MOO.[39][40] The majority of these clients are hard-coded to work on TCP port 70.

Gopher to HTTP gateways

Users of Web browsers that have incomplete or no support for Gopher can access content on Gopher servers via a server gateway or proxy server that converts Gopher menus into HTML; known proxies are the Floodgap Public Gopher proxy and Gopher Proxy. Similarly, certain server packages such as GN and PyGopherd have built-in Gopher to HTTP interfaces. Squid Proxy software gateways any gopher:// URL to HTTP content, enabling any browser or web agent to access gopher content easily.


Server software

Because the protocol is trivial to implement in a basic fashion, there are many server packages still available, and some are still maintained.

+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| Server                  | Developed by            | Latest version | Release date | License                        | Written in             | Notes                                                        |
+=========================+=========================+================+==============+================================+========================+==============================================================+
| | Aftershock            | Rob Linwood             | 1.0.1          | 2004-04-22   | MIT                            | Java                   |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Apache::GopherHandler | Timm Murray             | 0.1            | 2004-03-26   | GPL                            | Perl                   | Apache 2 plugin to run Gopher-Server.                        |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Atua                  | Charles Childers        | 2017.4         | 2017-10-09   | ISC                            | Forth                  |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Bucktooth             | Cameron Kaiser          | 0.2.9          | 2011-05-01   | Floodgap Free Software License | Perl                   |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Flask-Gopher          | Michael Lazar           | 2.1.1          | 2019-04-10   | GPLv3                          | Python                 |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | geomyid               | Quinn Evans             | 0.0.1          | 2015-08-10   | 2-clause BSD                   | Common Lisp            |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Geomyidae             | Christoph Lohmann       | 0.34           | 2019-03-13   | MIT                            | C                      |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | GN                    |                         | 2.25-20020226  | 2002-02-26   | GPL                            |                        |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | GoFish                | Sean MacLennan          | 1.2            | 2010-10-08   | GPLv2                          | C                      |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Gopher Cannon         | Geoff Sevart            | 1.07           | 2013-07-08   | Freeware                       | .NET 3.5 (Win32/Win64) | Version 1.06 of 2010-08-26 is available from gopherspace.de. |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Gopher-Server         | Timm Murray             | 0.1.1          | 2004-03-26   | GPL                            | Perl                   |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Gophernicus           | Kim Holviala and others | 3.0.1          | 2019-07-07   | BSD                            | C                      |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | gophrier              | Guillaume Duhamel       | 0.2.3          | 2012-03-29   | GPL                            | C                      |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | GOPHSERV              |                         | 0.5            | 2012-12-30   | GPLv3                          | FreeBASIC              | Version 0.4 is available from gopherspace.de.                |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Goscher               | Aaron W. Hsu            | 8.0            |              | ISC                            | Scheme                 |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | mgod                  | Mate Nagy               | 1.1            | 2018-01-29   | GPLv3                          | C                      |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Motsognir             | Mateusz Viste           | 1.0.12         | 2019-07-07   | GPLv3                          | C                      |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | PyGopherd             | John Goerzen            | 2.0.18.3       | 2008-08-09   | GPL                            | Python                 |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | PyGS                  | Adam Gurno              | 0.35           |              | GPLv2                          | Python                 | 0.3 & 0.35 released in or before 2007                        |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+
| | Spacecookie           | Lukas Epple             | 0.2.0.1        | 2019-05-23   | GPL                            | Haskell                |                                                              |
+-------------------------+-------------------------+----------------+--------------+--------------------------------+------------------------+--------------------------------------------------------------+


See also


References


External links

-   Public Gopher Proxy @ Floodgap.com — has instructions on how to access Gopherspace using modern browsers
-   List of public Gopher servers (Gopher link) (proxied link)
-   An announcement of Gopher on the Usenet 8 October 1991
-   Why is Gopher Still Relevant? — a position statement on Gopher’s survival
-   The Web may have won, but Gopher tunnels on — an article published by the technology discussion site _Ars Technica_ about the Gopher community of enthusiasts as of 5 November 2009
-   The Gopher Archive — Web-based search engine to locate files and content from archived Gopher sites current and past
-   Gopherpedia — Gopher interface for Wikipedia (Gopher link)
-   History of Gopher — Article in MinnPost

Gopher_(protocol) Category:History of the Internet Category:Internet Standards Category:University of Minnesota software Category:URI schemes

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]  McCahill credits Anklesaria with naming Gopher

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

[19] http://gopher.floodgap.com/1/new

[20]

[21] . The same text appears in the 5.10 release of August 27 2009 further down the page, copied from the 5.9.2 unstable branch. The Floodgap list referred to is at Floodgap: new Gopher servers and does not itself refer to April Fools' Day.

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