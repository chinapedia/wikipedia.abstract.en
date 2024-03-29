SERVER-SIDE SCRIPTING is a technique used in web development which involves employing scripts on a web server which produce a response customized for each user's (client's) request to the website. The alternative is for the web server itself to deliver a static web page. Scripts can be written in any of a number of server-side scripting languages that are available (see below). Server-side scripting is distinguished from client-side scripting where embedded scripts, such as JavaScript, are run client-side in a web browser, but both techniques are often used together.

Server-side scripting is often used to provide a customized interface for the user. These scripts may assemble client characteristics for use in customizing the response based on those characteristics, the user's requirements, access rights, etc. Server-side scripting also enables the website owner to hide the source code that generates the interface, whereas with client-side scripting, the user has access to all the code received by the client. A down-side to the use of server-side scripting is that the client needs to make further requests over the network to the server in order to show new information to the user via the web browser. These requests can slow down the experience for the user, place more load on the server, and prevent use of the application when the user is disconnected from the server.

When the server serves data in a commonly used manner, for example according to the HTTP or FTP protocols, users may have their choice of a number of client programs (most modern web browsers can request and receive data using both of those protocols). In the case of more specialized applications, programmers may write their own server, client, and communications protocol, that can only be used with one another.

Programs that run on a user's local computer without ever sending or receiving data over a network are not considered clients, and so the operations of such programs would not be considered client-side operations.


History

Netscape introduced an implementation of JavaScript for server-side scripting with Netscape Enterprise Server, first released in December, 1994 (soon after releasing JavaScript for browsers).[1][2]

Server-side scripting was later used in early 1995 by Fred DuFresne while developing the first web site for Boston, MA television station WCVB. The technology is described in US patent 5835712. The patent was issued in 1998 and is now owned by Open Invention Network (OIN). In 2010 OIN named Fred DuFresne a "Distinguished Inventor" for his work on server-side scripting.

Today, a variety of services use server-side scripting to deliver results back to a client as a paid or free service. An example would be WolframAlpha, which is a computational knowledge engine that computes results outside the clients environment and returns the computed result back. A more commonly used service is Google's proprietary search engine, which searches millions of cached results related to the user specified keyword and returns an ordered list of links back to the client. Apple's Siri application also employs server-side scripting outside of a web application. The application takes an input, computes a result, and returns the result back to the client.


Explanation

In the earlier days of the web, server-side scripting was almost exclusively performed by using a combination of C programs, Perl scripts, and shell scripts using the Common Gateway Interface (CGI). Those scripts were executed by the operating system, and the results were served back by the web server. Many modern web servers can directly execute on-line scripting languages such as ASP, JSP, Perl, PHP and Ruby either by the web server itself or via extension modules (e.g. mod_perl or mod_php) to the web server. For example, WebDNA includes its own embedded database system. Either form of scripting (i.e., CGI or direct execution) can be used to build up complex multi-page sites, but direct execution usually results in less overhead because of the lower number of calls to external interpreters.

Dynamic websites sometimes use custom web application servers, such as Glassfish, Plack and Python's "Base HTTP Server" library, although some may not consider this to be server-side scripting. When using dynamic web-based scripting techniques, developers must have a keen understanding of the logical, temporal, and physical separation between the client and the server. For a user's action to trigger the execution of server-side code, for example, a developer working with classic ASP must explicitly cause the user's browser to make a request back to the web server. Creating such interactions can easily consume much development time and lead to unreadable code.

Server-side scripts are completely processed by the servers instead of clients. When clients request a page containing server-side scripts, the applicable server processes the scripts and returns an HTML page to the client.


Languages

There are a number of server-side scripting languages available, including:

-   ASP (*.asp)
-   ActiveVFP (*.avfp)
-   ASP.NET (*.aspx)
-   ASP.NET MVC (*.cshtml)
-   ColdFusion Markup Language (*.cfm)
-   Go (*.go)
-   Google Apps Script (*.gs)
-   Hack (*.php)
-   Haskell (*.hs) (example: Yesod)
-   Java (*.jsp) via JavaServer Pages
-   JavaScript using Server-side JavaScript (*.ssjs, *.js) (example: Node.js)
-   Lasso (*.lasso)
-   Lua (*.lp *.op *.lua)
-   Parser (*.p)
-   Perl via the CGI.pm module (*.cgi, *.ipl, *.pl)
-   PHP (*.php, *.php3, *.php4, *.phtml)
-   Python (*.py) (examples: Pyramid, Flask, Django)
-   R (*.rhtml) - (example: rApache)
-   Ruby (*.rb, *.rbw) (example: Ruby on Rails)
-   SMX (*.smx)
-   Tcl (*.tcl)
-   WebDNA (*.dna,*.tpl)
-   Progress WebSpeed (*.r,*.w)
-   Bigwig (*.wig)


See also

-   Client-side scripting
-   Content management system (CMS)
-   Edge Side Includes
-   JSP
-   Node.js
-   Perl/Plack
-   PHP
-   Server Side Includes (SSI)
-   Web development


References


External links

-   ;

Category:Scripting languages

[1]

[2]