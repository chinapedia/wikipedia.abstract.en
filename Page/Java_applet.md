to visualize 3D files in .pdb format downloaded from a server[1]]] [2]]] .[3]]] (open source) is a second generation applet[4] that makes heavy use of OpenGL and on-demand data downloading to provide a detailed 3D map of the world.]] to the server console at the hardware level with the help of a Java applet]] ]] A JAVA APPLET was a small application written in the Java programming language, or another programming language that compiles to Java bytecode, and delivered to users in the form of Java bytecode. The user launched the Java applet from a web page, and the applet was then executed within a Java virtual machine (JVM) in a process separate from the web browser itself. A Java applet could appear in a frame of the web page, a new application window, Sun's AppletViewer, or a stand-alone tool for testing applets.

Java applets were introduced in the first version of the Java language, which was released in 1995. Java applets were deprecated since Java 9 in 2017 and removed from Java SE 11 (18.9), released in September 2018.[5][6][7][8][9]

Java applets were usually written in Java, but other languages such as Jython, JRuby, Pascal,[10] Scala, or Eiffel (via SmartEiffel) may be used as well.

Java applets run at very fast speeds and until 2011, they were many times faster than JavaScript. Unlike JavaScript, Java applets had access to 3D hardware acceleration, making them well-suited for non-trivial, computation-intensive visualizations. As browsers have gained support for hardware-accelerated graphics thanks to the canvas technology (or specifically WebGL in the case of 3D graphics),[11][12] as well as just-in-time compiled JavaScript,[13] the speed difference has become less noticeable.

Since Java bytecode is cross-platform (or platform independent), Java applets can be executed by browsers (or other clients) for many platforms, including Microsoft Windows, FreeBSD, Unix, macOS and Linux. They cannot be run on modern mobile devices, which do not support Java.


Overview

The Applets are used to provide interactive features to web applications that cannot be provided by HTML alone.They can capture mouse input and also have controls like buttons or check boxes. In response to user actions, an applet can change the provided graphic content. This makes applets well-suited for demonstration, visualization, and teaching. There are online applet collections for studying various subjects, from physics to heart physiology.

An applet can also be a text area only; providing, for instance, a cross-platform command-line interface to some remote system. If needed, an applet can leave the dedicated area and run as a separate window. However, applets have very little control over web page content outside the applet's dedicated area, so they are less useful for improving the site appearance in general, unlike other types of browser extensions (while applets like news tickers or WYSIWYG editors are also known). Applets can also play media in formats that are not natively supported by the browser.

Pages coded in HTML may embed parameters within them that are passed to the applet. Because of this, the same applet may have a different appearance depending on the parameters that were passed.

As applets were available before CSS and DHTML were standard, they were also widely used for trivial effects such as rollover navigation buttons. This approach, which posed major problems for accessibility and misused system resources, is no longer in use and was strongly discouraged even at the time.


Technical information

Java applets are executed in a _sandbox_ by most web browsers, preventing them from accessing local data like the clipboard or file system. The code of the applet is downloaded from a web server, after which the browser either embeds the applet into a web page or opens a new window showing the applet's user interface.

A Java applet extends the class , or in the case of a Swing applet, . The class which must override methods from the applet class to set up a user interface inside itself (Applet) is a descendant of which is a descendant of . As applet inherits from container, it has largely the same user interface possibilities as an ordinary Java application, including regions with user specific visualization.

The first implementations involved downloading an applet class by class. While classes are small files, there are often many of them, so applets got a reputation as slow-loading components. However, since .jars were introduced, an applet is usually delivered as a single file that has a size similar to an image file (hundreds of kilobytes to several megabytes).

The domain from where the applet executable has been downloaded is the only domain to which the usual (unsigned) applet is allowed to communicate. This domain can be different from the domain where the surrounding HTML document is hosted.

Java system libraries and runtimes are backwards-compatible, allowing one to write code that runs both on current and on future versions of the Java virtual machine.

Similar technologies

Many Java developers, blogs and magazines are recommending that the Java Web Start technology be used in place of applets.[14] Java Web Start allows the launching of unmodified applet code, which then runs in a separate window (not inside the invoking browser).

A Java Servlet is sometimes informally compared to be "like" a server-side applet, but it is different in its language, functions, and in each of the characteristics described here about applets.


Embedding into a web page

The applet can be displayed on the web page by making use of the deprecated applet HTML element,[15] or the recommended object element.[16] The embed element can be used[17] with Mozilla family browsers (embed was deprecated in HTML 4 but is included in HTML 5). This specifies the applet's source and location. Both object and embed tags can also download and install Java virtual machine (if required) or at least lead to the plugin page. applet and object tags also support loading of the serialized applets that start in some particular (rather than initial) state. Tags also specify the message that shows up in place of the applet if the browser cannot run it due to any reason.

However, despite object being officially a recommended tag, as of 2010, the support of the object tag was not yet consistent among browsers and Sun kept recommending the older applet tag for deploying in multibrowser environments,[18] as it remained the only tag consistently supported by the most popular browsers. To support multiple browsers, the object tag currently requires JavaScript (that recognizes the browser and adjusts the tag), usage of additional browser-specific tags or delivering adapted output from the server side. Deprecating applet tag has been criticized. Oracle now provides a maintained JavaScript code[19] to launch applets with cross platform workarounds.

The Java browser plug-in relies on NPAPI, which many web browser vendors are deprecating due to its age and security issues. In January 2016, Oracle announced that Java runtime environments based on JDK 9 will discontinue the browser plug-in.[20]


Example

The following example illustrates the use of Java applets through the java.applet package. The example also uses classes from the Java Abstract Window Toolkit (AWT) to produce the message "Hello, world!" as output.

    import java.applet.*;
    import java.awt.*;

    // Applet code for the "Hello, world!" example.
    // This should be saved in a file named as "HelloWorld.java".
    public class HelloWorld extends Applet {
        // Print a message on the screen (x = 20, y = 10).
        public void paint(Graphics g) {
            g.drawString("Hello, world!", 20, 10);

            // Draws a circle on the screen (x = 40, y = 30).
            g.drawArc(40, 30, 20, 20, 0, 360);

            // Draws a rectangle on the screen (x1 = 100, y1 = 100, x2 = 300, y2 = 300).
            g.drawRect(100, 100, 300, 300);

            // Draws a square on the screen (x1 = 100, y1 = 100, x2 = 200, y2 = 200).
            g.drawRect(100, 100, 200, 200);
        }
    }

Simple applets are shared freely on the Internet for customizing applications that support plugins.

After compilation, the resulting .class file can be placed on a web server and invoked within an HTML page by using an or an tag. For example:

    <!DOCTYPE html>
    <html>
    <head>
      <title>HelloWorld_example.html</title>
    </head>
    <body>
      <h1>A Java applet example</h1>
      <p>
        Here it is:
        <applet code="HelloWorld.class" height="40" width="200">
          This is where HelloWorld.class runs.
        </applet>
      </p>
    </body>
    </html>

When the page is accessed it will read as follows:



        A JAVA APPLET EXAMPLE
        Here it is: Hello, world!

To minimize download time, applets can be delivered in the form of a jar file. In the case of this example, if all necessary classes are placed in the compressed archive _example.jar_, the following embedding code could be used instead:

    <p>
      Here it is:
      <applet archive="example.jar" code="HelloWorld" height="40" width="200">
        This is where HelloWorld.class runs.
      </applet>
    </p>

Applet inclusion is described in detail in Sun's official page about the APPLET tag.[21]


Advantages

A Java applet can have any or all of the following advantages:[22]

-   It is simple to make it work on FreeBSD, Linux, Microsoft Windows and macOS that is, to make it cross platform. Applets were supported by most web browsers through the first decade of the 21st century; since then, however, most browsers have dropped applet support for security reasons.
-   The same applet can work on "all" installed versions of Java at the same time, rather than just the latest plug-in version only. However, if an applet requires a later version of the Java Runtime Environment (JRE) the client will be forced to wait during the large download.
-   Most web browsers cache applets so they will be quick to load when returning to a web page. Applets also improve with use: after a first applet is run, the JVM is already running and starts quickly (the JVM will need to restart each time the browser starts afresh). JRE versions 1.5 and greater stop the JVM and restart it when the browser navigates from one HTML page containing an applet to another containing an applet.
-   It can move the work from the server to the client, making a web solution more scalable with the number of users/clients.
-   If a standalone program (like Google Earth) talks to a web server, that server normally needs to support all prior versions for users which have not kept their client software updated. In contrast, a properly configured browser loads (and caches) the latest applet version, so there is no need to support legacy versions.
-   The applet naturally supports the changing user state, such as figure positions on the chessboard.
-   Developers can develop and debug an applet directly simply by creating a main routine (either in the applet's class or in a separate class) and calling init() and start() on the applet, thus allowing for development in their favorite Java SE development environment. All one has to do after that is re-test the applet in the AppletViewer program or a web browser to ensure it conforms to security restrictions.
-   An untrusted applet has no access to the local machine and can only access the server it came from. This makes such an applet much safer to run than a standalone executable that it could replace. However, a signed applet can have full access to the machine it is running on if the user agrees.
-   Java applets are fast—and can even have similar performance to native installed software.


Disadvantages

A Java applet may have any of the following disadvantages compared to other client-side web technologies:

-   Java applets depend on a Java Runtime Environment (JRE), which is a reasonably complex and heavy-weight software package. It also normally requires a plug-in for the web browser. Some organizations only allow software installed by an administrator. As a result, some users can only view applets that are important enough to justify contacting the administrator to request installation of the JRE and plug-in.
-   If an applet requires a newer JRE than available on the system, or a specific JRE, the user running it the first time will need to wait for the large JRE download to complete.
-   Mobile browsers on iOS or Android, do not run Java applets at all.[23] Desktop browsers have phased out Java applet support concurrently with the rise of mobile operating systems.
-   Unlike the older applet tag, the object tag needs workarounds to write a cross-browser HTML document.
-   There is no standard to make the content of applets available to screen readers. Therefore, applets can harm the accessibility of a web site to users with special needs.
-   As with any client-side scripting, security restrictions may make it difficult or even impossible for an untrusted applet to achieve the desired goals. However, simply editing the java.policy file in the JAVA JRE installation, one can grant access to the local filesystem or system clipboard for example, or to other network sources other than the network source that served the applet to the browser.


Compatibility-related lawsuits

Sun has made considerable efforts to ensure compatibility is maintained between Java versions as they evolve, enforcing Java portability by law if required. Oracle seems to be continuing the same strategy.

1997: Sun vs Microsoft

The 1997 lawsuit,[24] was filed after Microsoft created a modified Java Virtual Machine of their own, which shipped with Internet Explorer. Microsoft added about 50 methods and 50 fields[25] into the classes within the _java.awt, java.lang_, and _java.io_ packages. Other modifications included removal of RMI capability and replacement of Java native interface from JNI to RNI, a different standard. RMI was removed because it only easily supports Java to Java communications and competes with Microsoft DCOM technology. Applets that relied on these changes or just inadvertently used them worked only within Microsoft's Java system. Sun sued for breach of trademark, as the point of Java was that there should be no proprietary extensions and that code should work everywhere. Microsoft agreed to pay Sun $20 million, and Sun agreed to grant Microsoft limited license to use Java without modifications only and for a limited time.[26]

2002: Sun vs Microsoft

Microsoft continued to ship its own unmodified Java virtual machine. Over the years it became extremely outdated yet still default for Internet Explorer. A later study revealed that applets of this time often contain their own classes that mirror Swing and other newer features in a limited way.[27] In 2002, Sun filed an antitrust lawsuit, claiming that Microsoft's attempts at illegal monopolization had harmed the Java platform. Sun demanded Microsoft distribute Sun's current, binary implementation of Java technology as part of Windows, distribute it as a recommended update for older Microsoft desktop operating systems and stop the distribution of Microsoft's Virtual Machine (as its licensing time, agreed in the prior lawsuit, had expired).[28] Microsoft paid $700 million for pending antitrust issues, another $900 million for patent issues and a $350 million royalty fee to use Sun's software in the future.[29]

2010: Oracle vs Google

Google has developed its own Android platform that uses Java features and concepts, yet is incompatible with standard libraries. This may be a violation of conditions under which Sun granted OpenJDK patents to use open source Java for all. In 2010, Oracle sued Google[30] for using Java "in a wrong way", claiming that "Google's Android competes with Oracle America's Java" and that "Google has been aware of Sun’s patent portfolio ... since Google hired certain former Sun Java engineers". In May 2012, the jury in this case found that Google did not infringe on Oracle's patents, and the trial judge ruled that the structure of the Java APIs used by Google was not copyrightable.[31][32]


Security

There are two applet types with very different security models: signed applets and unsigned applets.[33] As of Java SE 7 Update 21 (April 2013) applets and Web-Start Apps are encouraged to be signed with a trusted certificate, and warning messages appear when running unsigned applets.[34] Further starting with Java 7 Update 51 unsigned applets are blocked by default; they can be run by creating an exception in the Java Control Panel.[35]

Unsigned

Limits on unsigned applets are understood as "draconian": they have no access to the local filesystem and web access limited to the applet download site; there are also many other important restrictions. For instance, they cannot access all system properties, use their own class loader, call native code, execute external commands on a local system or redefine classes belonging to core packages included as part of a Java release. While they can run in a standalone frame, such frame contains a header, indicating that this is an untrusted applet. Successful initial call of the forbidden method does not automatically create a security hole as an access controller checks the entire stack of the calling code to be sure the call is not coming from an improper location.

As with any complex system, many security problems have been discovered and fixed since Java was first released. Some of these (like the Calendar serialization security bug) persisted for many years with nobody being aware. Others have been discovered in use by malware in the wild.

Some studies mention applets crashing the browser or overusing CPU resources but these are classified as nuisances and not as true security flaws. However, unsigned applets may be involved in combined attacks that exploit a combination of multiple severe configuration errors in other parts of the system. An unsigned applet can also be more dangerous to run directly on the server where it is hosted because while code base allows it to talk with the server, running inside it can bypass the firewall. An applet may also try DoS attacks on the server where it is hosted, but usually people who manage the web site also manage the applet, making this unreasonable. Communities may solve this problem via source code review or running applets on a dedicated domain.

The unsigned applet can also try to download malware hosted on originating server. However it could only store such file into a temporary folder (as it is transient data) and has no means to complete the attack by executing it. There were attempts to use applets for spreading Phoenix and Siberia exploits this way, but these exploits do not use Java internally and were also distributed in several other ways.

Signed

A signed applet[36] contains a signature that the browser should verify through a remotely running, independent certificate authority server. Producing this signature involves specialized tools and interaction with the authority server maintainers. Once the signature is verified, and the user of the current machine also approves, a signed applet can get more rights, becoming equivalent to an ordinary standalone program. The rationale is that the author of the applet is now known and will be responsible for any deliberate damage. This approach allows applets to be used for many tasks that are otherwise not possible by client-side scripting. However, this approach requires more responsibility from the user, deciding whom he or she trusts. The related concerns include a non-responsive authority server, wrong evaluation of the signer identity when issuing certificates, and known applet publishers still doing something that the user would not approve of. Hence signed applets that appeared from Java 1.1 may actually have more security concerns.

Self-signed

Self-signed applets, which are applets signed by the developer themselves, may potentially pose a security risk; java plugins provide a warning when requesting authorization for a self-signed applet, as the function and safety of the applet is guaranteed only by the developer itself, and has not been independently confirmed. Such self-signed certificates are usually only used during development prior to release where third-party confirmation of security is unimportant, but most applet developers will seek third-party signing to ensure that users trust the applet's safety.

Java security problems are not fundamentally different from similar problems of any client-side scripting platform[37]. In particular, all issues related to signed applets also apply to Microsoft ActiveX components.

As of 2014, self-signed and unsigned applets are no longer accepted by the commonly available Java plugins or Java Web Start. Consequently, developers who wish to deploy Java applets have no alternative but to acquire trusted certificates from commercial sources.


Alternatives

Alternative technologies exist (for example, JavaScript) that satisfy all or more of the scope of what is possible with an applet. Of these, JavaScript is not always viewed as a competing replacement; JavaScript can coexist with applets in the same page, assist in launching applets (for instance, in a separate frame or providing platform workarounds) and later be called from the applet code. JavaFX is an extension of the Java platform and may also be viewed as an alternative.


See also

-   ActiveX
-   Curl
-   Java (programming language)
-   Java Servlet
-   Java Web Start
-   JavaFX
-   Rich Internet application several platforms for creating interactive and/or multimedia web sites
-   WebGL


References


External links

-   Latest version of Sun Microsystems' Java Virtual Machine (includes browser plug-ins for running Java applets in most web browsers).
-   Information about writing applets from Oracle
-   Demonstration applets from Sun Microsystems (JDK 1.4 include source code)

Category:Java (programming language) Category:Java platform Category:Web 1.0

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] http://www.oracle.com/technetwork/java/javase/javaclientroadmapupdate2018mar-4414431.pdf

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18] Sun's position on applet and object tags

[19] Java applet launcher from Oracle - Link Broken!

[20]

[21] Java.Sun.com Sun's APPLET tag page

[22] Oracle official overview on Java applet technology

[23]

[24]

[25]

[26]

[27] Kenai.com (2011) Most common problems, found in the code of the reviewed applets.

[28]

[29] Microsoft page devoted to the Sun - Microsoft 2002 lawsuit

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]