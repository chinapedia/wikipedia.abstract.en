The APACHE HTTP SERVER, colloquially called APACHE ( ), is free and open-source cross-platform web server software, released under the terms of Apache License 2.0. Apache is developed and maintained by an open community of developers under the auspices of the Apache Software Foundation.

The vast majority of Apache HTTP Server instances run on a Linux distribution,[1] but current versions also run on Microsoft Windows[2] and a wide variety of Unix-like systems. Past versions also ran on OpenVMS,[3] NetWare, OS/2 and other operating systems.[4]

Originally based on the NCSA HTTPd server, development of Apache began in early 1995 after work on the NCSA code stalled. Apache played a key role in the initial growth of the World Wide Web,[5] quickly overtaking NCSA HTTPd as the dominant HTTP server, and has remained most popular since April 1996. In 2009, it became the first web server software to serve more than 100 million websites.[6] , it was estimated to serve 39% of all active websites and 35% of the top million websites.[7]


Name

A number of explanations for the origin of the Apache name have been offered over the years.

From the inception of the Apache project in 1995 the official documentation stated:[8][9]

In an April 2000 interview, Brian Behlendorf, one of the creators of Apache said:[10]

Since 2013 the Apache Foundation has explained the origin of the name as:[11]

When Apache is running under Unix, its process name is httpd, which is short for "HTTP daemon".[12]


Feature overview

Apache supports a variety of features, many implemented as compiled modules which extend the core functionality. These can range from authentication schemes to supporting server-side programming languages such as Perl, Python, Tcl and PHP. Popular authentication modules include mod_access, mod_auth, mod_digest, and mod_auth_digest, the successor to mod_digest. A sample of other features include Secure Sockets Layer and Transport Layer Security support (mod_ssl), a proxy module (mod_proxy), a URL rewriting module (mod_rewrite), custom log files (mod_log_config), and filtering support (mod_include and mod_ext_filter).

Popular compression methods on Apache include the external extension module, mod_gzip , implemented to help with reduction of the size (weight) of web pages served over HTTP. ModSecurity is an open source intrusion detection and prevention engine for Web applications. Apache logs can be analyzed through a Web browser using free scripts, such as AWStats/W3Perl or Visitors.

Virtual hosting allows one Apache installation to serve many different websites. For example, one computer with one Apache installation could simultaneously serve example.com, example.org, test47.test-server.example.edu, etc.

Apache features configurable error messages, DBMS-based authentication databases, content negotiation and supports several graphical user interfaces (GUIs).

It supports password authentication and digital certificate authentication. Because the source code is freely available, anyone can adapt the server for specific needs, and there is a large public library of Apache add-ons.[13]

A more detailed list of features is provided below:

-   Loadable Dynamic Modules
-   Multiple Request Processing modes (MPMs) including Event-based/Async, Threaded and Prefork.
-   Highly scalable (easily handles more than 10,000 simultaneous connections)
-   Handling of static files, index files, auto-indexing and content negotiation
-   .htaccess per-directory configuration support[14]
-   Reverse proxy with caching[15]
    -   Load balancing[16] with in-band health checks
    -   Multiple load balancing mechanisms
    -   Fault tolerance and Failover with automatic recovery
    -   WebSocket, FastCGI, SCGI, AJP and uWSGI support with caching
    -   Dynamic configuration[17]
-   TLS/SSL with SNI and OCSP stapling support, via OpenSSL or wolfSSL.
-   Name- and IP address-based virtual servers
-   IPv6-compatible
-   HTTP/2 support
-   Fine-grained authentication and authorization access control[18]
-   gzip compression and decompression
-   URL rewriting[19]
-   Headers[20] and content[21][22] rewriting
-   Custom logging with rotation
-   Concurrent connection limiting
-   Request processing rate limiting
-   Bandwidth throttling
-   Server Side Includes[23]
-   IP address-based geolocation
-   User and Session tracking[24]
-   WebDAV
-   Embedded Perl, PHP and Lua scripting
-   CGI support[25]
-   public_html per-user web-pages[26]
-   Generic expression parser[27]
-   Real-time status views[28]
-   XML support[29]
-   FTP support (by a separate module) [30]


Performance

Instead of implementing a single architecture, Apache provides a variety of MultiProcessing Modules (MPMs), which allow it to run in either a process-based mode, a hybrid (process and thread) mode, or an event-hybrid mode, in order to better match the demands of each particular infrastructure. Choice of MPM and configuration is therefore important. Where compromises in performance must be made, Apache is designed to reduce latency and increase throughput relative to simply handling more requests, thus ensuring consistent and reliable processing of requests within reasonable time-frames.

For delivering static pages, Apache 2.2 series was considered significantly slower than nginx and varnish.[31] To address this issue, the Apache developers created the Event MPM, which mixes the use of several processes and several threads per process in an asynchronous event-based loop.[32] This architecture as implemented in the Apache 2.4 series performs at least as well as event-based web servers, according to Jim Jagielski and other independent sources.[33][34][35] However, some independent but significantly outdated benchmarks show that it is still half as fast as nginx, e.g.[36]


Licensing

The Apache HTTP Server codebase was relicensed to the Apache 2.0 License (from the previous 1.1 license) in January 2004,[37] and Apache HTTP Server 1.3.31 and 2.0.49 were the first releases using the new license.[38]

The OpenBSD project did not like the change and continued the use of pre-2.0 Apache versions, effectively forking Apache 1.3.x for its purposes.[39][40][41] They initially replaced it with Nginx, and soon after made their own replacement, OpenBSD Httpd, based on the relayd project.[42][43][44]

Versions

Version 1.1: The Apache License 1.1 was approved by the ASF in 2000: The primary change from the 1.0 license is in the 'advertising clause' (section 3 of the 1.0 license); derived products are no longer required to include attribution in their advertising materials, only in their documentation.

Version 2.0: The ASF adopted the Apache License 2.0 in January 2004. The stated goals of the license included making the license easier for non-ASF projects to use, improving compatibility with GPL-based software, allowing the license to be included by reference instead of listed in every file, clarifying the license on contributions, and requiring a patent license on contributions that necessarily infringe a contributor's own patents.


Development

+---------+-----------------+-------------------------+
| Version | Initial release | Latest release          |
+=========+=================+=========================+
|         | 1998-06-06[45]  | 2010-02-03 (1.3.42)[46] |
+---------+-----------------+-------------------------+
|         | 2002-04-06[47]  | 2013-07-10 (2.0.65)[48] |
+---------+-----------------+-------------------------+
|         | 2005-12-01[49]  | 2017-07-11 (2.2.34)[50] |
+---------+-----------------+-------------------------+
|         | 2012-02-21[51]  | 2019-04-01 (2.4.39)[52] |
+---------+-----------------+-------------------------+
|         |                 |                         |
+---------+-----------------+-------------------------+

The Apache HTTP Server Project is a collaborative software development effort aimed at creating a robust, commercial-grade, feature-rich and freely available source code implementation of an HTTP (Web) server. The project is jointly managed by a group of volunteers located around the world, using the Internet and the Web to communicate, plan, and develop the server and its related documentation. This project is part of the Apache Software Foundation. In addition, hundreds of users have contributed ideas, code, and documentation to the project.[53][54][55]

Apache 2.4 dropped support for BeOS, TPF and even older platforms.[56]


See also

-   .htaccess
-   .htpasswd
-   ApacheBench
-   Comparison of web server software
-   IBM HTTP Server
-   LAMP (software bundle)
-   List of Apache modules
-   POSSE project
-   suEXEC
-   Apache Tomcat - another web server developed by the Apache Software Foundation


References


External links

-

Category:1995 software HTTP Server Apache_Software_Foundation_projects Category:Cross-platform free software Category:Free software programmed in C Category:Free web server software Category:Reverse proxy Category:Software using the Apache license Category:Unix network-related software Category:Web server software for Linux

[1]

[2]

[3]

[4]

[5] Netcraft Market Share for Top Servers Across All Domains August 1995 - today (monthly updated)

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14] {{ cite web | url = https://httpd.apache.org/docs/2.4/howto/htaccess.html | title = Apache HTTP Server Tutorial: .htaccess files }}

[15] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_proxy.html | title = mod_proxy }}

[16] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_proxy_balancer.html | title = mod_proxy_balancer }}

[17] {{ cite web | url = https://httpd.apache.org/docs/trunk/howto/reverse_proxy.html#manager | title = Balancer Manager }}

[18] {{ cite web | url = https://httpd.apache.org/docs/2.4/howto/auth.html | title = Authentication and Authorization }}

[19] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_rewrite.html | title = mod_rewrite }}

[20] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_headers.html | title = mod_headers }}

[21] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_sed.html | title = mod_sed }}

[22] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_substitute.html | title = mod_substitute }}

[23] {{ cite web | url = https://httpd.apache.org/docs/2.4/howto/ssi.html | title = Apache httpd Tutorial: Introduction to Server Side Includes }}

[24] {{ cite web | url = http://httpd.apache.org/docs/2.4/mod/mod_usertrack.html | title = mod_usertrack }}

[25] {{ cite web | url = https://httpd.apache.org/docs/2.4/howto/cgi.html | title = Apache Tutorial: Dynamic Content with CGI }}

[26] {{ cite web | url = https://httpd.apache.org/docs/2.4/howto/public_html.html | title = Per-user web directories }}

[27] {{ cite web | url = https://httpd.apache.org/docs/2.4/expr.html| title = Expressions in Apache HTTP Server }}

[28] {{ cite web | url = https://httpd.apache.org/docs/2.4/mod/mod_status.html | title = mod_status }}

[29] {{ cite web | url = http://httpd.apache.org/docs/2.4/mod/mod_xml2enc.html | title = mod_xml2enc }}

[30]

[31]

[32]

[33] Apache httpd 2.4

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

[51]

[52]

[53]

[54] The Apache HTTP Server Open Source Project on Ohloh. (n.d.). Ohloh, the open source network. Retrieved November 12, 2012

[55]

[56]