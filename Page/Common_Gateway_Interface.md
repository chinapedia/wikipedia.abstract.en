In computing, COMMON GATEWAY INTERFACE (CGI) offers a standard protocol for web servers to execute programs that execute like console applications (also called command-line interface programs) running on a server that generates web pages dynamically. Such programs are known as _CGI scripts_ or simply as _CGIs_. The specifics of how the script is executed by the server are determined by the server. In the common case, a CGI script executes at the time a request is made and generates HTML.[1]

In brief, an HTTP POST request from the client will send the HTML form data to the CGI program via standard input. Other data, such as URL paths, and HTTP header data, are presented as process environment variables.


History

In 1993 the National Center for Supercomputing Applications (NCSA) team wrote the specification for calling command line executables on the www-talk mailing list.[2][3][4] The other Web server developers adopted it, and it has been a standard for Web servers ever since. A work group chaired by Ken Coar started in November 1997 to get the NCSA definition of CGI more formally defined.[5] This work resulted in RFC 3875, which specified CGI Version 1.1. Specifically mentioned in the RFC are the following contributors:[6]

-   Rob McCool (author of the NCSA HTTPd Web Server)
-   John Franks (author of the GN Web Server)
-   Ari Luotonen (the developer of the CERN httpd Web Server)
-   Tony Sanders (author of the Plexus Web Server)
-   George Phillips (Web server maintainer at the University of British Columbia)

Historically CGI scripts were often written using the C language. RFC 3875 "The Common Gateway Interface (CGI)" partially defines CGI using C,[7] as in saying that environment variables "are accessed by the C library routine getenv() or variable environ".

The name CGI comes from the early days of the web, where users wanted to connect databases to their web servers. The CGI was a program executed by the server that provided a common "gateway" between the web server and the database.


Purpose of the CGI standard

Each web server runs HTTP server software, which responds to requests from web browsers. Generally, the HTTP server has a directory (folder), which is designated as a document collection — files that can be sent to Web browsers connected to this server.[8] For example, if the Web server has the domain name example.com, and its document collection is stored at /usr/local/apache/htdocs in the local file system, then the Web server will respond to a request for http://example.com/index.html by sending to the browser the (pre-written) file /usr/local/apache/htdocs/index.html.

For pages constructed on the fly, the server software may defer requests to separate programs and relay the results to the requesting client (usually, a web browser that displays the page to the end user). In the early days of the web, such programs were usually small and written in a scripting language; hence, they were known as _scripts_.

Such programs usually require some additional information to be specified with the request. For instance, if Wikipedia were implemented as a script, one thing the script would need to know is whether the user is logged in and, if logged in, under which name. The content at the top of a Wikipedia page depends on this information.

HTTP provides ways for browsers to pass such information to the web server, e.g. as part of the URL. The server software must then pass this information through to the script somehow.

Conversely, upon returning, the script must provide all the information required by HTTP for a response to the request: the HTTP status of the request, the document content (if available), the document type (e.g. HTML, PDF, or plain text), et cetera.

Initially, different server software would use different ways to exchange this information with scripts. As a result, it wasn't possible to write scripts that would work unmodified for different server software, even though the information being exchanged was the same. Therefore, it was decided to establish a standard way for exchanging this information: CGI (the _Common Gateway Interface_, as it defines a common way for server software to interface with scripts). Webpage generating programs invoked by server software that operate according to the CGI standard are known as _CGI scripts_.

This standard was quickly adopted and is still supported by all well-known server software, such as Apache, IIS, and (with an extension) node.js-based servers.

An early use of CGI scripts was to process forms. In the beginning of HTML, HTML forms typically had an "action" attribute and a button designated as the "submit" button. When the submit button is pushed the URI specified in the "action" attribute would be sent to the server with the data from the form sent as a query string. If the "action" specifies a CGI script then the CGI script would be executed and it then produces an HTML page.


Using CGI scripts

A web server allows its owner to configure which URLs shall be handled by which CGI scripts.

This is usually done by marking a new directory within the document collection as containing CGI scripts — its name is often cgi-bin. For example, /usr/local/apache/htdocs/cgi-bin could be designated as a CGI directory on the web server. When a Web browser requests a URL that points to a file within the CGI directory (e.g., http://example.com/cgi-bin/printenv.pl/with/additional/path?and=a&query=string), then, instead of simply sending that file (/usr/local/apache/htdocs/cgi-bin/printenv.pl) to the Web browser, the HTTP server runs the specified script and passes the output of the script to the Web browser. That is, anything that the script sends to standard output is passed to the Web client instead of being shown on-screen in a terminal window.

As remarked above, the CGI standard defines how additional information passed with the request is passed to the script. For instance, if a slash and additional directory name(s) are appended to the URL immediately after the name of the script (in this example, /with/additional/path), then that path is stored in the PATH_INFO environment variable before the script is called. If parameters are sent to the script via an HTTP GET request (a question mark appended to the URL, followed by param=value pairs; in the example, ?and=a&query=string), then those parameters are stored in the QUERY_STRING environment variable before the script is called. If parameters are sent to the script via an HTTP POST request, they are passed to the script's standard input. The script can then read these environment variables or data from standard input and adapt to the Web browser's request.[9]


Example

The following Perl program shows all the environment variables passed by the Web server:

    #!/usr/bin/perl

    =head1 DESCRIPTION

    printenv — a CGI program that just prints its environment

    =cut
    print "Content-type: text/plain\n\n";

    for my $var ( sort keys %ENV ) {
     printf "%s = \"%s\"\n", $var, $ENV{$var};
    }

If a Web browser issues a request for the environment variables at http://example.com/cgi-bin/printenv.pl/foo/bar?var1=value1&var2=with%20percent%20encoding, a 64-bit Windows 7 web server running cygwin returns the following information:

COMSPEC="C:\Windows\system32\cmd.exe"
DOCUMENT_ROOT="C:/Program Files (x86)/Apache Software Foundation/Apache2.4/htdocs"
GATEWAY_INTERFACE="CGI/1.1"
HOME="/home/SYSTEM"
HTTP_ACCEPT="text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
HTTP_ACCEPT_CHARSET="ISO-8859-1,utf-8;q=0.7,*;q=0.7"
HTTP_ACCEPT_ENCODING="gzip, deflate, br"
HTTP_ACCEPT_LANGUAGE="en-us,en;q=0.5"
HTTP_CONNECTION="keep-alive"
HTTP_HOST="example.com"
HTTP_USER_AGENT="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0"
PATH="/home/SYSTEM/bin:/bin:/cygdrive/c/progra~2/php:/cygdrive/c/windows/system32:..."
PATHEXT=".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC"
PATH_INFO="/foo/bar"
PATH_TRANSLATED="C:\Program Files (x86)\Apache Software Foundation\Apache2.4\htdocs\foo\bar"
QUERY_STRING="var1=value1&var2=with%20percent%20encoding"
REMOTE_ADDR="127.0.0.1"
REMOTE_PORT="63555"
REQUEST_METHOD="GET"
REQUEST_URI="/cgi-bin/printenv.pl/foo/bar?var1=value1&var2=with%20percent%20encoding"
SCRIPT_FILENAME="C:/Program Files (x86)/Apache Software Foundation/Apache2.4/cgi-bin/printenv.pl"
SCRIPT_NAME="/cgi-bin/printenv.pl"
SERVER_ADDR="127.0.0.1"
SERVER_ADMIN="(server admin's email address)"
SERVER_NAME="127.0.0.1"
SERVER_PORT="80"
SERVER_PROTOCOL="HTTP/1.1"
SERVER_SIGNATURE=""
SERVER_SOFTWARE="Apache/2.4.39 (Win32) PHP/7.3.7"
SYSTEMROOT="C:\Windows"
TERM="cygwin"
WINDIR="C:\Windows"

Some, but not all, of these variables are defined by the CGI standard. Some, such as PATH_INFO, QUERY_STRING, and the ones starting with HTTP_, pass information along from the HTTP request.

From the environment, it can be seen that the Web browser is Firefox running on a Windows 7 PC, the Web server is Apache running on a system that emulates Unix, and the CGI script is named cgi-bin/printenv.pl.

The program could then generate any content, write that to standard output, and the Web server will transmit it to the browser.

The following are environment variables passed to CGI programs:

-   SERVER SPECIFIC VARIABLES:
    -   SERVER_SOFTWARE: name/version of HTTP server.
    -   SERVER_NAME: host name of the server, may be dot-decimal IP address.
    -   GATEWAY_INTERFACE: CGI/version.
-   REQUEST SPECIFIC VARIABLES:
    -   SERVER_PROTOCOL: HTTP/version.
    -   SERVER_PORT: TCP port (decimal).
    -   REQUEST_METHOD: name of HTTP method (see above).
    -   PATH_INFO: path suffix, if appended to URL after program name and a slash.
    -   PATH_TRANSLATED: corresponding full path as supposed by server, if PATH_INFO is present.
    -   SCRIPT_NAME: relative path to the program, like /cgi-bin/script.cgi.
    -   QUERY_STRING: the part of URL after ? character. The query string may be composed of *name=value pairs separated with ampersands (such as var1=val1&var2=val2...) when used to submit form data transferred via GET method as defined by HTML application/x-www-form-urlencoded.
    -   REMOTE_HOST: host name of the client, unset if server did not perform such lookup.
    -   REMOTE_ADDR: IP address of the client (dot-decimal).
    -   AUTH_TYPE: identification type, if applicable.
    -   REMOTE_USER used for certain AUTH_TYPEs.
    -   REMOTE_IDENT: see ident, only if server performed such lookup.
    -   CONTENT_TYPE: Internet media type of input data if PUT or POST method are used, as provided via HTTP header.
    -   CONTENT_LENGTH: similarly, size of input data (decimal, in octets) if provided via HTTP header.
    -   Variables passed by user agent (HTTP_ACCEPT, HTTP_ACCEPT_LANGUAGE, HTTP_USER_AGENT, HTTP_COOKIE and possibly others) contain values of corresponding HTTP headers and therefore have the same sense.

The program returns the result to the Web server in the form of standard output, beginning with a header and a blank line.

The header is encoded in the same way as an HTTP header and must include the MIME type of the document returned.[10] The headers, supplemented by the Web server, are generally forwarded with the response back to the user.

Here is a simple CGI program written in Python 3 along with the HTML that handles a simple addition problem.[11]

    <!DOCTYPE html>
    <html>
     <body>
      <form action="add.cgi" method="POST">
       Enter two numbers to add:<br />
       First Number: <input type="text" name="num1" /><br />
       Second Number: <input type="text" name="num2" /><br />
       <input type="submit" value="Add" />
      </form>
     </body>
    </html>

    #!/usr/bin/env python3

    import cgi
    import cgitb
    cgitb.enable()

    input_data = cgi.FieldStorage()

    print('Content-Type:text/html') # HTML is following
    print()                         # Leave a blank line
    print('<h1>Addition Results</h1>')
    try:
      num1 = int(input_data["num1"].value)
      num2 = int(input_data["num2"].value)
    except:
      print('<p>Sorry, we cannot turn your inputs into numbers (integers).</p>')
      raise SystemExit(1)
    print('<p>{0} + {1} = {2}</p>'.format(num1, num2, num1 + num2))

This Python 3 CGI gets the inputs from the HTML and adds the two numbers together.


Deployment

A Web server that supports CGI can be configured to interpret a URL that it serves as a reference to a CGI script. A common convention is to have a cgi-bin/ directory at the base of the directory tree and treat all executable files within this directory (and no other, for security) as CGI scripts. Another popular convention is to use filename extensions; for instance, if CGI scripts are consistently given the extension .cgi, the web server can be configured to interpret all such files as CGI scripts. While convenient, and required by many prepackaged scripts, it opens the server to attack if a remote user can upload executable code with the proper extension.

In the case of HTTP PUT or POSTs, the user-submitted data are provided to the program via the standard input. The Web server creates a subset of the environment variables passed to it and adds details pertinent to the HTTP environment.


Uses

CGI is often used to process inputs information from the user and produce the appropriate output. An example of a CGI program is one implementing a Wiki. The user agent requests the name of an entry; the Web server executes the CGI; the CGI program retrieves the source of that entry's page (if one exists), transforms it into HTML, and prints the result. The web server receives the input from the CGI and transmits it to the user agent. If the "Edit this page" link is clicked, the CGI populates an HTML textarea or other editing control with the page's contents, and saves it back to the server when the user submits the form in it.


Alternatives

Calling a command generally means the invocation of a newly created process on the server. Starting the process can consume much more time and memory than the actual work of generating the output, especially when the program still needs to be interpreted or compiled. If the command is called often, the resulting workload can quickly overwhelm the server.

The overhead involved in process creation can be reduced by techniques such as FastCGI that "prefork" interpreter processes, or by running the application code entirely within the web server, using extension modules such as mod_perl or mod_php. Another way to reduce the overhead is to use precompiled CGI programs, e.g. by writing them in languages such as C or C++, rather than interpreted or compiled-on-the-fly languages such as Perl or PHP, or by implementing the page generating software as a custom webserver module.

Alternative approaches include:

-   Extensions such as Apache modules, NSAPI plugins, and ISAPI plugins allow third-party software to run on the web server. Web 2.0 allows to transfer data from the client to the server without using HTML forms and without the user noticing.[12]
-   FastCGI reduces overhead by allowing a single, long-running process to handle more than one user request. Unlike converting an application to a web server plug-in, FastCGI applications remain independent of the web server.
-   Simple Common Gateway Interface or SCGI is designed to be easier to implement, yet it reduces latency in some operations compared to CGI.
-   Replacement of the architecture for dynamic websites can also be used. This is the approach taken by Java EE, which runs Java code in a Java servlet container in order to serve dynamic content and optionally static content. This approach replaces the overhead of generating and destroying processes with the much lower overhead of generating and destroying threads, and also exposes the programmer to the library that comes with Java Platform, Standard Edition on which the version of Java EE in use is based.

The optimal configuration for any Web application depends on application-specific details, amount of traffic, and complexity of the transaction; these tradeoffs need to be analyzed to determine the best implementation for a given task and time budget. Web Frameworks offer an alternative to using CGI scripts to interact with user agents.


See also

-   CGI.pm
-   DOS Gateway Interface (DGI)
-   FastCGI
-   Perl Web Server Gateway Interface
-   Rack (web server interface)
-   Server Side Includes
-   Web Server Gateway Interface


References


External links

-   GNU cgicc, a C++ class library for writing CGI applications
-   CGI, a standard Perl module for CGI request parsing and HTML response generation
-   CGI Programming 101: Learn CGI Today!, a CGI tutorial

Category:Servers (computing) Category:Web 1.0 Category:Web technology Category:World Wide Web

[1] RFC3875: The Common Gateway Interface (CGI) Version 1.1

[2]

[3]

[4]

[5]

[6]

[7]

[8] Mapping URLs to Filesystem Locations Apache HTTP Server Version 2.2

[9] Nelson, Anne Fulcher, and Nelson, William Harris Morehead. (2001). Building Electronic Commerce with Web Database Constructions. Boston, MA: Addison Wesley.

[10] CGI Primer (Mirror at citycat.ru)

[11]

[12]