In computing, an APPLET is any small application that performs one specific task that runs within the scope of a dedicated widget engine or a larger program, often as a plug-in.[1] The term is frequently used to refer to a Java applet, a program written in the Java programming language that is designed to be placed on a web page. Applets are typical examples of transient and auxiliary applications that don't monopolize the user's attention. Applets are not full-featured application programs, and are intended to be easily accessible.


History

The word _applet_ was first used in 1990 in PC Magazine.[2] However, the concept of an applet, or more broadly a small interpreted program downloaded and executed by the user, dates at least to RFC 5 (1969) by Jeff Rulifson, which described the Decode-Encode Language (DEL), which was designed to allow remote use of the oN-Line System (NLS) over ARPANET, by downloading small programs to enhance the interaction.[3] This has been specifically credited as a forerunner of Java's downloadable programs in RFC 2555.[4] Applet is an event driven program .


Applet as an extension of other software

In some cases, an applet does not run independently. These applets must run either in a container provided by a host program, through a plugin, or a variety of other applications including mobile devices that support the applet programming model.

Web-based Applets

Applets were used to provide interactive features to web applications that historically could not be provided by HTML alone. They could capture mouse input and also had controls like buttons or check boxes. In response to the user action an applet could change the provided graphic content. This made applets well suitable for demonstration, visualization, and teaching. There were online applet collections for studying various subjects, from physics to heart physiology. Applets were also used to create online game collections that allowed players to compete against live opponents in real-time.

An applet could also be a text area only, providing, for instance, a cross platform command-line interface to some remote system. If needed, an applet could leave the dedicated area and run as a separate window. However, applets had very little control over web page content outside the applet dedicated area, so they were less useful for improving the site appearance in general (while applets like news tickers or WYSIWYG editors are also known). Applets could also play media in formats that are not natively supported by the browser.

HTML pages could embed parameters that were passed to the applet. Hence the same applet could appear differently depending on the parameters that were passed.

Examples of Web-based Applets include:

-   QuickTime movies
-   Flash movies
-   Windows Media Player applets, used to display embedded video files in Internet Explorer (and other browsers that supported the plugin)
-   3D modeling display applets, used to rotate and zoom a model
-   Browser games that were applet-based, though some developed into fully functional applications that required installation.

Applet Vs. Subroutine

A larger application distinguishes its applets through several features:

-   Applets execute only on the "client" platform environment of a system, as contrasted from "servlet". As such, an applet provides functionality or performance beyond the default capabilities of its container (the browser).
-   The container restricts applets' capabilities.
-   Applets are written in a language different from the scripting or HTML language that invokes it. The applet is written in a compiled language, whereas the scripting language of the container is an interpreted language, hence the greater performance or functionality of the applet. Unlike a subroutine, a complete web component can be implemented as an applet.


Java Applet

A Java Applet is a java program that is launched from HTML and run in a web browser. It can provide web applications with interactive features that cannot be provided by HTML. Since Java's bytecode is platform-independent, Java applets can be executed by browsers running under many platforms, including Windows, Unix, macOS, and Linux. When a Java technology-enabled web browser processes a page that contains an applet, the applet's code is transferred to the client's system and executed by the browser's Java Virtual Machine (JVM).[5] An HTML page references an applet either via the deprecated tag or via its replacement, the tag.[6]


Security

Recent developments in the coding of applications including mobile and embedded systems have led to the awareness of the security of applets.

Open Platform Applets

Applets in an open platform environment should provide secure interactions between different applications. A compositional approach can be used to provide security for open platform applets.[7] Advanced compositional verification methods have been developed for secure applet interactions.[8]

Java Applets

A Java applet contains different security models: unsigned Java applet security, signed Java applet security, and self signed Java applet security.

Web-based Applets

In an applet-enabled web browser, many methods can be used to provide applet security for malicious applets. A malicious applet can infect a computer system in many ways, including denial of service, invasion of privacy, and annoyance.[9] A typical solution for malicious applets is to make the web browser to monitor applets' activities. This will result in a web browser that will enable the manual or automatic stopping of malicious applets. To illustrate this method, AppletGuard was used to observe and control any applet in a browser successfully.[10]


See also

-   Application posture
-   Bookmarklet
-   Java applet
-   Widget engine
-   Abstract Window Toolkit


References


External links

Category:Technology neologisms Category:Component-based software engineering Category:Java (programming language) libraries

[1] "AskOxford: applet", Oxford Dictionaries. Accessed on July 21, 2009

[2]

[3]

[4]

[5] "Applets", Sun Developer Network. Accessed on July 21, 2009

[6] "HTML applet tag", W3Schools. Access on July 21, 2009

[7]

[8]

[9]

[10]