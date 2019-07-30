displaying a list of installed plug-ins]] In computing, a PLUG-IN (or PLUGIN, ADD-IN, ADDIN, ADD-ON, or ADDON) is a software component that adds a specific feature to an existing computer program. When a program supports plug-ins, it enables customization.

Web browsers have historically allowed executables as plug-ins, though they are now mostly deprecated. (These are a different type of software module than browser extensions.) Two plug-in examples are the Adobe Flash Player for playing videos and a Java virtual machine for running applets.

A theme or skin is a preset package containing additional or changed graphical appearance details, achieved by the use of a graphical user interface (GUI) that can be applied to specific software and websites to suit the purpose, topic, or tastes of different users to customize the look and feel of a piece of computer software or an operating system front-end GUI (and window managers).


Purpose and examples

Applications support plug-ins for many reasons. Some of the main reasons include:

-   to enable third-party developers to create abilities which extend an application
-   to support easily adding new features
-   to reduce the size of an application
-   to separate source code from an application because of incompatible software licenses.

Types of applications and why they use plug-ins:

-   Audio editors use plug-ins to generate, process or analyze sound. Ardour and Audacity are examples of such editors.
-   Digital audio workstations (DAWs) use plug-ins to generate sound or process it. Examples include Logic Pro X and ProTools.
-   Email clients use plug-ins to decrypt and encrypt email. Pretty Good Privacy is an example of such plug-ins.
-   Video game console emulators often use plug-ins to modularize the separate subsystems of the devices they seek to emulate.[1][2][3][4][5][6][7][8][9][10] For example, the PCSX2 emulator makes use of video, audio, optical, etc. plug-ins for those respective components of the PlayStation 2.
-   Graphics software use plug-ins to support file formats and process images. (_c.f._ Photoshop plugin)
-   Media players use plug-ins to support file formats and apply filters. foobar2000, GStreamer, Quintessential, VST, Winamp, XMMS are examples of such media players.
-   Packet sniffers use plug-ins to decode packet formats. OmniPeek is an example of such packet sniffers.
-   Remote sensing applications use plug-ins to process data from different sensor types; _e.g._, Opticks.
-   Text editors and Integrated development environments use plug-ins to support programming languages or enhance development process _e.g._, Visual Studio, RAD Studio, Eclipse, IntelliJ IDEA, jEdit and MonoDevelop support plug-ins. Visual Studio itself can be plugged into other applications via Visual Studio Tools for Office and Visual Studio Tools for Applications.
-   Web browsers have historically used executables as plug-ins, though they are now mostly deprecated. Examples include Adobe Flash Player, Java SE, QuickTime, Microsoft Silverlight and Unity. (Contrast this with browser extensions, which are a separate type of installable module still widely in use.)


Mechanism

The host application provides services which the plug-in can use, including a way for plug-ins to register themselves with the host application and a protocol for the exchange of data with plug-ins. Plug-ins depend on the services provided by the host application and do not usually work by themselves. Conversely, the host application operates independently of the plug-ins, making it possible for end-users to add and update plug-ins dynamically without needing to make changes to the host application.[11][12]

Programmers typically implement plug-in functionality using shared libraries, which get dynamically loaded at run time, installed in a place prescribed by the host application. HyperCard supported a similar facility, but more commonly included the plug-in code in the HyperCard documents (called _stacks_) themselves. Thus the HyperCard stack became a self-contained application in its own right, distributable as a single entity that end-users could run without the need for additional installation-steps. Programs may also implement plugins by loading a directory of simple script files written in a scripting language like Python or Lua. ‡


Mozilla definition

In Mozilla Foundation definitions, the words "add-on", "extension" and "plug-in" are not synonyms. "Add-on" can refer to anything that extends the functions of a Mozilla application. Extensions comprise a subtype, albeit the most common and the most powerful one. Mozilla applications come with integrated add-on managers that, similar to package managers, install, update and manage extensions. The term, "Plug-in", however, strictly refers to NPAPI-based web content renderers. Plug-ins are being deprecated.[13]


History

Plug-ins appeared as early as the mid 1970s, when the EDT text editor running on the Unisys VS/9 operating system using the UNIVAC Series 90 mainframe computers provided the ability to run a program from the editor and to allow such a program to access the editor buffer, thus allowing an external program to access an edit session in memory.[14] The plug-in program could make calls to the editor to have it perform text-editing services upon the buffer that the editor shared with the plug-in. The Waterloo Fortran compiler used this feature to allow interactive compilation of Fortran programs edited by EDT.

Very early PC software applications to incorporate plug-in functionality included HyperCard and QuarkXPress on the Macintosh, both released in 1987. In 1988, Silicon Beach Software included plug-in functionality in Digital Darkroom and SuperPaint, and Ed Bomke coined the term _plug-in_.


See also

-   Applet
-   Browser extension


References

Category:Application programming interfaces Category:Software add-ons Category:Technology neologisms

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]  PSX-Place|website=www.psx-place.com|language=en-US|access-date=2018-06-10}}

[11] Mozilla Firefox plugins – Description of the difference between Mozilla Firefox plugins and extensions under the general term _add-on_.

[12] Wordpress Plug-in API – Description of the Wordpress Plug-in architecture.

[13]

[14] _EDT Text Editor Reference Manual_, Cinnaminson, New Jersey: Unisys Corporation, 1975