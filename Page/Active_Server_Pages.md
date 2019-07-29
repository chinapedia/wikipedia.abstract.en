{{ multiple issues| }} ACTIVE SERVER PAGES (ASP), later known as CLASSIC ASP or ASP CLASSIC, is Microsoft's first server-side script engine for dynamically generated web pages.

It was first released in December 1996, before being superseded in January 2002 by ASP.NET.


History

Initially released as an add-on to Internet Information Services (IIS) via the Windows NT 4.0 Option Pack (ca. 1996), it is included as a component of Windows Server (since the initial release of Windows 2000 Server). There have been three versions of ASP, each introduced with different versions of IIS:

-   ASP 1.0 was released on December 1996 as part of IIS 3.0
-   ASP 2.0 was released on September 1997 as part of IIS 4.0
-   ASP 3.0 was released on November 2000 as part of IIS 5.0

ASP 2.0 provides six built-in objects: Application, ASPError, Request, Response, Server, and Session. Session object, for example, represents a session that maintains the state of variables from page to page.[1] The Active Scripting engine's support of the Component Object Model (COM) enables ASP websites to access functionality in compiled libraries such as DLLs.

ASP 3.0 does not differ greatly from ASP 2.0 but it does offer some additional enhancements such as Server.Transfer method, Server.Execute method, and an enhanced ASPError object. ASP 3.0 also enables buffering by default and optimized the engine for better performance.

ASP remains supported until 14 January 2020 on Windows 7.[2] The use of ASP pages will be supported on Windows 8 for a minimum of 10 years from the Windows 8 release date.[3]


Architecture

ASP uses server-side scripting to generate content that is sent to the client's web browser. The ASP interpreter reads and executes all script code between <% and %> tags, the result of which is content generation. These scripts were written using VBScript, JScript, or PerlScript. The @Language directive, the syntax or server configuration can be used to select the language. In the example below, Response.Write Now() is in an HTML page; it would be dynamically replaced by the current time of the server.

+--------------------------------+--------------------------------+
| Server side                    | What client receives           |
+================================+================================+
|     The server's current time: |     The server's current time: |
|     <%                         |     8/11/2015 6:24:45 PM       |
|     Response.Write Now()       |                                |
|     %>                         |                                |
+--------------------------------+--------------------------------+

Web pages with the _.asp_ filename extension use ASP, although some web sites disguise their choice of scripting language for security purposes by using the more common _.htm_ or _.html_ extensions. Pages with the _.aspx_ extension use compiled ASP.NET; however, ASP.NET pages may still include some ASP scripting. The introduction of ASP.NET led to use of the term _Classic ASP_ for the original technology.

Sun Java System ASP (formerly ChiliSoft ASP) was a popular and reportedly complete emulator,[4] but it has been discontinued.

The Response object

Can send information to the client, such as the writing of the text on a page or HTTP Cookie.

    <%
    If Len(Request.QueryString("name")) > 0 Then
         Response.Cookies("name") = Request.QueryString("name")
    End If

    Response.Write "Welcome " & Server.HTMLEncode(Response.Cookies("name")) & "!"
    %>

The Server object

Allows connections to databases (ADO), filesystem, and use of components installed on the server.

    <%
    Dim oAdoCon, oAdoRec, oAdoStm, oCdoCon, oCdoMsg, oSciDic, oSciFsm, oMswAdr

    Set oAdoCon = Server.CreateObject("ADODB.Connection")
    Set oAdoRec = Server.CreateObject("ADODB.Recordset")
    Set oAdoStm = Server.CreateObject("ADODB.Stream")
    Set oCdoCon = Server.CreateObject("CDO.Configuration")
    Set oCdoMsg = Server.CreateObject("CDO.Message")
    Set oSciDic = Server.CreateObject("Scripting.Dictionary")
    Set oSciFsm = Server.CreateObject("Scripting.FileSystemObject")
    Set oMswAdr = Server.CreateObject("MSWC.Swingbridge")
    %>

The Application object

Stores global variables.

    <%
    Application("Ali") = "My ASP Application"
    Response.Write "Welcome to " & Server.HTMLEncode(Application("Ali")) & "!"
    %>

The Session object

Stores variables accessible only to a single visitor.

    <%
    If Len(Request.QueryString("name")) > 0 Then
         Session("name") = Request.QueryString("name")
    End If

    Response.Write "Welcome " & Server.HTMLEncode(Session("name")) & "!"
    %>

The Err object

Allows the management of errors.

    <%
    On Error Resume Next

    Response.Write 1 / 0 ' Division by zero

    If Err.Number <> 0 Then
         Response.Write "Error Code: " & Server.HTMLEncode(Err.Number) & "<br />"
         Response.Write "Error Source: " & Server.HTMLEncode(Err.Source) & "<br />"
         Response.Write "Error Description: " & Server.HTMLEncode(Err.Description) & "<br />"
         Err.Clear
    End If
    %>


See also

-   ASP.NET
-   Template processor
-   Comparison of web template engines
-   Comparison of web frameworks
-   C Sharp (programming language)
-   JavaServer Pages
-   PHP
-   Common Gateway Interface


References


External links

-   ASP on MSDN
-   Microsoft Support for ASP on Windows
-   Classic ASP Applications on IIS 7.0 and IIS 7.5 Overview
-   W3Schools ASP Programming Tutorial
-   4GuysFromRolla.com ASP Programming FAQs
-   Primitive Classic ASP Framework (XML, JSON, BENCODE)

Category:Microsoft server technology

[1] The session data is kept server-side, the ID is saved as a HTTP Cookie. Source: ASP and Web Session Management, Microsoft

[2]

[3]

[4]