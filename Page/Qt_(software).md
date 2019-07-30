QT (pronounced "cute"[1][2][3]) is a free and open-source widget toolkit for creating graphical user interfaces as well as cross-platform applications that run on various software and hardware platforms such as Linux, Windows, macOS, Android or embedded systems with little or no change in the underlying codebase while still being a native application with native capabilities and speed. Qt is currently being developed by The Qt Company, a publicly listed company, and the Qt Project under open-source governance, involving individual developers and organizations working to advance Qt.[4][5][6] Qt is available under both commercial licenses[7] and open source[8] GPL 2.0, GPL 3.0, and LGPL 3.0 licenses.[9][10]


Purposes and abilities

Qt is used for developing graphical user interfaces (GUIs) and multi-platform applications that run on all major desktop platforms and most mobile or embedded platforms. Most GUI programs created with Qt have a native-looking interface, in which case Qt is classified as a _widget toolkit_. Also non-GUI programs can be developed, such as command-line tools and consoles for servers. An example of such a non-GUI program using Qt is the Cutelyst web framework.[11]

Qt supports various compilers, including the GCC C++ compiler and the Visual Studio suite and has extensive internationalization support. Qt also provides Qt Quick, that includes a declarative scripting language called QML that allows using JavaScript to provide the logic. With Qt Quick, rapid application development for mobile devices became possible, while logic can still be written with native code as well to achieve the best possible performance.

Other features include SQL database access, XML parsing, JSON parsing, thread management and network support.


Qt releases

The latest version is Qt 5.12 LTS, which was released on 6 December 2018.[12] It comes with several new features including Technology Preview of Qt for Python and of Qt for WebAssembly.

The current LTS version is Qt 5.12 LTS. It was released on 6 December 2018 and will be supported for 3 years.[13]

The initial release of Qt software was on 20 May 1995.


Qt in use

In 2017, the Qt Company estimated a community of about 1 million developers worldwide[14] in over 70 industries.[15]

Desktop UIs

showing his Qt heart]] Graphical user-interfaces and desktop environments that utilize Qt/QML as widget toolkit:

-   KDE Plasma, a libre desktop environment for computers and tablets[16]
-   DDE (Deepin Desktop Environment) of Deepin Linux[17][18]
-   LXQt (Lightweight X11 Desktop Environment)
-   Lumina, a desktop environment designed for BSD-based TrueOS[19]
-   Unity8,[20] a Ubports maintained convergent desktop environment started by Canonical[21]
-   Trinity DE, a continuously developed fork based on KDE3[22]
-   NX-Desktop, a desktop-shell based on Plasma[23]
-   Be-shell, a simple shell based on KDE Frameworks[24]
-   Liquidshell, a shell based on QtWidgets[25]
-   LiriOS, a workspace shell built with Qt/QML[26]
-   SDDM, a display manager that is X11 and Wayland compatible written in QML
-   theShell, a desktop shell written in Qt[27]

Embedded and mobile UIs

-   Actively developed or maintained
    -   AsteroidOS, an open source operating system designed for smartwatches
    -   Avionics, Panasonic's in-flight entertainment system[28][29]
    -   Blackberry 10, a touchscreen-based mobile OS by Blackberry Ltd.
    -   Sailfish OS, a mobile operating system developed by Jolla
    -   Glacier-, the Nemo Mobile UX-successor of MeeGo, based on Qt5 and Wayland[30]
    -   Plasma Mobile, a touch-based GUI developed by KDE
    -   LuneOS, community-driven successor for Palm/HP webOS
    -   Ubuntu Touch, a phone UI developed by Ubports, originally by Canonical
    -   Tesla Model S in-car UI[31]
    -   webOS, a multitask operating system from LG for smart devices like TVs and smartwatches
    -   Sky Q, the home entertainment system of Sky plc[32]
-   Available, but inactive
    -   MeeGo handset & tablet UX
    -   OPIE, a GUI for the Sharp Zaurus
    -   Qtopia, a system by Nokia for embedded and mobile devices
    -   Ultrahaptics,[33] haptic interface developer for a wide range of applications

Applications using Qt

Many notable open-source or proprietary cross-platform software are using Qt or QML:

-   Adobe Photoshop Album[34]
-   Adobe Photoshop Elements[35]
-   AMD's Radeon Software Crimson Edition driver tool application.[36]
-   Autodesk Maya[37]
-   Autodesk 3ds Max[38]
-   Bitcoin Core, a bitcoin client
-   Bitcoin ABC, a bitcoin cash client
-   CryEngine V editor[39]
-   Dolphin (emulator), an emulator for the Nintendo Wii and Nintendo GameCube systems.
-   Dorico notation software
-   Dragonframe[40] stop motion animation software
-   EAGLE by CadSoft Computer / Autodesk, an EDA application with schematic capture, PCB layout, auto-router and CAM features
-   FreeMat free open source numerical computing environment
-   Google Earth[41]
-   Krita graphics editing and digital painting software[42]
-   Mathematica, a mathematical symbolic computation program, sometimes termed a computer algebra system or program, used in many scientific, engineering, mathematical, and computing fields.[43]
-   OBS, a libre cross-platform screencast software
-   Orange data mining suite[44]
-   QGIS geographic information system[45]
-   QuiteRSS Feed Reader
-   Scribus desktop publishing software[46]
-   Sibelius music composition and notation software[47]
-   Source 2 engine tools[48] a 3D video game engine developed by Valve Corporation
-   Stellarium, a planetarium program
-   Subsurface, a software for logging and planning scuba dives initially designed and developed by Linus Torvalds[49]
-   Teamviewer, a computer software package for remote control, desktop sharing, online meetings, web conferencing and file transfer between computers[50]
-   Telegram, a messaging client available for Windows, Mac and Linux[51]
-   VirtualBox OS virtualization software[52]
-   VLC media player[53]
-   WPS Office[54]
-   XnView MP[55]

Software that was ported to Qt

There are cases where applications have ported their user interface code from another cross-platform toolkit to Qt to solve the problems they had with them:

Examples

-   Audacious -- free and open-source audio player software
-   Wireshark -- network packet analyzer
-   LXQt -- desktop environment
-   VLC media player
-   Rosegarden -- Digital Audio Workstation
-   Dolphin -- video game console emulator for GameCube and Wii

Organizations using Qt

Qt is utilized by a wide range of companies and organizations such as

-   AMD[56]
-   Blizzard Entertainment[57]
-   BMW[58]
-   Crytek
-   Daimler AG[59][60]
-   Electronic Arts[61]
-   European Space Agency[62]
-   DreamWorks[63][64]
-   Danaher Corporation
-   GE Aviation
-   John Deere
-   Lucasfilm[65][66]
-   Luxoft
-   Microsoft[67]
-   Panasonic[68]
-   Philips[69]
-   Robert Bosch GmbH[70]
-   Samsung[71]
-   Siemens[72]
-   Tesla
-   Tomtom[73]
-   Volvo[74]
-   German Air Traffic Control[75]
-   HP[76]
-   Walt Disney Animation Studios[77]
-   Valve Corporation.[78]


Qt software architecture

Qt concepts

Qt is built on these key concepts:

Complete abstraction of the GUI: When first released, Qt used its own paint engine and controls, emulating the look of the different platforms it runs on when it drew its widgets. This made the porting work easier because very few classes in Qt depended really on the target platform; however, this occasionally led to slight discrepancies where that emulation was imperfect. Recent versions of Qt use the native style APIs of the different platforms, on platforms that have a native widget set, to query metrics and draw most controls, and do not suffer from such issues as often.[79] On some platforms (such as MeeGo and KDE) Qt _is_ the native API. Some other portable graphical toolkits have made different design decisions; for example, wxWidgets uses the toolkits of the target platform for its implementations.
Signals and slots: A language construct introduced in Qt for communication between objects[80] which makes it easy to implement the observer pattern while avoiding boilerplate code. The concept is that GUI widgets can send signals containing event information which can be received by other controls using special functions known as slots.
Metaobject compiler: The metaobject compiler, termed _moc_, is a tool that is run on the sources of a Qt program. It interprets certain macros from the C++ code as annotations, and uses them to generate added C++ code with meta information about the classes used in the program. This meta information is used by Qt to provide programming features not available natively in C++: signals and slots, introspection and asynchronous function calls.
Language bindings:Qt can be used in several other programming languages like Python, Javascript, C# or Rust[81] via language bindings, see

Qt modules

Starting with Qt 4.0 the framework was split into individual modules.[82][83] With Qt 5.0 the architecture was modularized even further.[84][85] Qt is now split into _essential_ and _add-on_ modules.[86]

Qt essentials

  Module                  Description
  ----------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  QT CORE                 The only required Qt module, containing classes used by other modules, including the meta-object system, concurrency and threading, containers, event system, plugins and I/O facilities.
  QT GUI                  The central GUI module. In Qt 5 this module now depends on OpenGL, but no longer contains any widget classes.
  QT WIDGETS              Contains classes for classic widget based GUI applications and the QSceneGraph classes. Was split off from QTGUI in Qt 5.
  QT QML                  Module for QML and JavaScript languages.
  QT QUICK                The module for GUI application written using QML2.
  QT QUICK CONTROLS       Widget like controls for QT QUICK intended mainly for desktop applications.
  QT QUICK LAYOUTS        Layouts for arranging items in QT QUICK.
  QT NETWORK              Network abstraction layer. Complete with TCP, UDP, HTTP, SSL and since Qt 5.3 SPDY support.
  QT MULTIMEDIA           Classes for audio, video, radio and camera functionality.
  QT MULTIMEDIA WIDGETS   The widgets from QT MULTIMEDIA.
  QT SQL                  Contains classes for database integration using SQL.
  QT WEBENGINE            A new set of Qt Widget and QML webview APIs based on Chromium.
  QT TEST                 Classes for unit testing Qt applications and libraries.

Qt add-ons

  Module              Description
  ------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ACTIVE QT           Classes for applications which use ActiveX.
  QT BLUETOOTH        Classes accessing Bluetooth hardware.
  QT D-BUS            Classes for IPC using the D-Bus protocol.
  QT NFC              Classes accessing NFC hardware. Only officially supported on BlackBerry hardware so far (or N9 in the MeeGo port).
  QT OPENGL           Legacy module containing the OpenGL classes from Qt 4. In Qt 5 the similar functionality in QT GUI is recommended.
  QT LOCATION         Classes for accessing GPS and other location services and for mapping and navigation. Split off from the Qt 4 Mobility module of QT LOCATION. Supported on Android, BlackBerry, iOS, Linux (using GeoClue), Windows and Sailfish OS.
  QT SCRIPT           Legacy module for scripting Qt application using ECMAScript/JavaScript. In Qt 5, using similar classes in QT QML is recommended.
  QT SENSORS          Classes for accessing various mobile hardware sensors. Used to be part of Qt Mobile in Qt 4. Supported on Android, BlackBerry, iOS, WinRT, Mer and Linux.
  QT SERIAL PORT      Classes for access to hardware and virtual serial ports. Supported on Windows, Linux and macOS.
  QT WEBCHANNEL       Provides access to Qt objects to HTML/Js over WebSockets.
  QT WEBKIT           Qt's WebKit implementation and API.
  QT WEBKIT WIDGETS   The widget API for QT WEBKIT
  QT WEBSOCKETS       Provides a WebSocket implementation.
  QT XML              Legacy module containing classes for SAX and DOM style XML APIs. Replaced with QXmlStreamReader and QXmlStreamWriter classes in QT CORE.
  QT XML PATTERNS     Support for XPath, XQuery, XSLT and XML Schema validation.

Editions

There are four editions of Qt available: _Community_, _Indie Mobile_, _Professional_ and _Enterprise_.[87] The Community version is under the open source licenses, while the Indie Mobile, Professional and Enterprise versions, which contain additional functionality and libraries, e.g. Enterprise Controls[88] are commercially sold by The Qt Company.

Supported platforms

Qt works on many different platforms; the following are officially supported:

  Platform                   Description
  -------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  LINUX/UNIX
  '''X11 '''                 Qt for X Window System (Linux, *BSD, HP-UX, Solaris, AIX, etc.)[89]
  WAYLAND                    Qt for Wayland.[90] Qt applications can switch between graphical backends like X and Wayland at load time with the -platform command line option.{{cite web
  ANDROID                    Qt for Android[91] (formerly known as Necessitas)[92].
  SAILFISH OS                Qt for SailfishOS, which uses Wayland.
  EMBEDDED LINUX             Qt for embedded platforms: personal digital assistant, smartphone, etc.[93] Exists as multiple platforms depending on display technology. DirectFB, LinuxFB and EGLFS (EGL Full Screen).
  MICROSOFT PLATFORMS
  WINDOWS                    Qt for Microsoft Windows XP, Vista, 7,[94] 8 and 10[95]
  WINDOWS PHONE              Support for Windows Phone 8[96] With 5.4 minimum supported version: Windows Phone 8.1[97]
  WINDOWS RT                 Support for WinRT-based Windows 10 Mobile apps and Windows 10 IoT[98]
  WINDOWS CE                 Qt for Windows CE 6 and Windows Embedded Compact 7.[99]
  APPLE PLATFORMS
  MACOS                      Qt for Apple macOS; supports applications on Cocoa[100]
  IOS                        Qt for iOS platforms (iPhone, iPad)[101]
  OTHER EMBEDDED PLATFORMS
  INTEGRITY                  Qt for Integrity[102]
  QNX                        Qt for QNX[103][104]
  VXWORKS                    Qt for VxWorks.[105][106]

After Nokia opened the Qt source code to the community on Gitorious various ports appeared. There are also some ports of Qt that may be available, but are not supported anymore. These platforms are listed in List of platforms supported by Qt.

Licensing

Qt is available under the following free software licenses:[107] GPL 2.0, GPL 3.0, LGPL 3.0 and LGPL 2.1 (with Qt special exception).[108][109] Note that some modules are only available under a GPL license, which means that applications which statically link to these modules need to comply with that license.[110][111]

In addition, Qt has always been available under a commercial license, like the Qt Commercial License,[112] that allows developing proprietary applications with no restrictions on licensing.

Qt tools

Qt comes with its own set of tools to ease cross-platform development, which can otherwise be cumbersome due to different set of development tools.

Qt Creator is a cross-platform IDE for C++ and QML. Qt Designer's GUI layout/design functionality is integrated into the IDE, although Qt Designer can still be started as a standalone tool.

In addition to Qt Creator, Qt provides qmake, a cross-platform build script generation tool that automates the generation of Makefiles for development projects across different platforms. There are other tools available in Qt, including the Qt Designer interface builder and the Qt Assistant help browser (which are both embedded in Qt Creator), the Qt Linguist translation tool, uic (user interface compiler), and moc (Meta-Object Compiler).


History of Qt

Early developments

In the summer of 1990, Haavard Nord and Eirik Chambe-Eng (the original developers of Qt and the CEO and President, respectively, of Trolltech) were working together on a database application for ultrasound images written in C++ and running on Mac OS, Unix, and Windows.[113][114] They began development of "Qt" in 1991, three years before the company was incorporated as Quasar Technologies, then changed the name to Troll Tech and then to Trolltech.[115]

The toolkit was called Qt because the letter Q looked appealing in Haavard's Emacs typeface, and "t" was inspired by Xt, the X toolkit.[116]

The first two versions of Qt had only two flavors: Qt/X11 for Unix and Qt/Windows for Windows.

On 20 May 1995 Troll Tech publicly released Qt 0.90 for X11/Linux with the source code under the _Qt Free Edition License_.[117][118][119] This license was viewed as not compliant with the free software definition by Free Software Foundation because, while the source was available, it did not allow the redistribution of modified versions. Trolltech used this license until version 1.45. Controversy erupted around 1998 when it became clear that the K Desktop Environment was going to become one of the leading desktop environments for Linux. As it was based on Qt, many people in the free software movement worried that an essential piece of one of their major operating systems would be proprietary.

The Windows platform was only available under a proprietary license, which meant free/open source applications written in Qt for X11 could not be ported to Windows without purchasing the proprietary edition.

Becoming free software–friendly

With the release of version 2.0 of the toolkit, the license was changed to the Q Public License (QPL), a free software license, but one regarded by the Free Software Foundation as incompatible with the GPL. Compromises were sought between KDE and Trolltech whereby Qt would not be able to fall under a more restrictive license than the QPL, even if Trolltech was bought out or went bankrupt. This led to the creation of the KDE Free Qt foundation,[120] which guarantees that Qt would fall under a BSD-style license should no free/open source version of Qt be released during 12 months.[121][122]

In 2000, Qt/X11 2.2 was released under the GPL v2,[123] ending all controversy regarding GPL compatibility.

At the end of 2001, Trolltech released Qt 3.0, which added support for Mac OS X. The Mac OS X support was available only in the proprietary license until June 2003, when Trolltech released Qt 3.2 with Mac OS X support available under the GPL.

In 2002, members of the KDE on Cygwin project began porting the GPL licensed Qt/X11 code base to Windows.[124] This was in response to Trolltech's refusal to license Qt/Windows under the GPL on the grounds that Windows was not a free/open source software platform.[125][126] The project achieved reasonable success although it never reached production quality.

This was resolved when Trolltech released Qt 4.0 also for Windows under the GPL in June 2005.[127] Qt 4 supported the same set of platforms in the free software/open source editions as in the proprietary edition, so it is possible, with Qt 4.0 and later releases, to create GPL-licensed free/open source applications using Qt on all supported platforms. The GPL v3 with special exception[128] was later added as an added licensing option. The GPL exception allows the final application to be licensed under various GPL-incompatible free software/open source licenses such as the Mozilla Public License 1.1.

Acquisition by Nokia

Nokia acquired Trolltech ASA on 17 June 2008 and changed the name first to Qt Software, then to Qt Development Frameworks.

Nokia focused on turning Qt into the main development platform for its devices, including a port to the Symbian S60 platform. Version 1.0 of the Nokia Qt SDK was released on 23 June 2010.[129] The source code was made available over Gitorious, a community oriented git source code repository, with a goal of creating a broader community using and improving Qt.

On 14 January 2009, Qt version 4.5 added another option, the LGPL,[130] to make Qt more attractive for both non-GPL open source projects and closed applications.[131]

In February 2011, Nokia announced its decision to drop Symbian technologies and base their future smartphones on the Windows Phone platform instead.[132] One month later, Nokia announced the sale of Qt's commercial licensing and professional services to Digia, with the immediate goal of taking Qt support to Android, iOS and Windows 8 platforms, and to continue focusing on desktop and embedded development, although Nokia was to remain the main development force behind the framework at that time.

Merging and demerging with Digia

In March 2011, Nokia sold the commercial licensing part of Qt to Digia creating Qt Commercial.[133] In August 2012, Digia announced that it would acquire Qt from Nokia.[134] The Qt team at Digia started their work in September 2012.[135] They released Qt 5.0 within a month and newer versions every 6 months with new features and additional supported platforms.

In September 2014, Digia transferred the Qt business and copyrights to their wholly owned subsidiary, The Qt Company, which owns 25 brands[136] related to Qt. In May 2016, Digia and Qt demerged completely into two independent companies.[137]

The Qt Project and open governance

Qt 5 was officially released on 19 December 2012. This new version marked a major change in the platform, with hardware-accelerated graphics, QML and JavaScript playing a major role. The traditional C++-only QWidgets continued to be supported, but did not benefit from the performance improvements available through the new architecture.[138] Qt 5 brings significant improvements to the speed and ease of developing user interfaces.[139]

Framework development of Qt 5 moved to open governance at qt-project.org, which made it possible for developers outside Digia to submit patches for review.[140]

Qt contributors

Aside from The Qt Company, many organizations and individuals using Qt as their development platform participate in the open development of Qt via the Qt Project.[141]

One such Qt contributor is Klarälvdalens Datakonsult AB, a Swedish Qt consulting company.[142] KDAB is involved in many areas, including maintenance of several components.[143][144]

Together with RIM/BlackBerry, KDAB is maintaining the QNX and BlackBerry 10 ports of Qt.[145][146]

Another participator is Intel, contributing for example Wayland support.[147] AudioCodes maintains IBM ClearCase support in Qt Creator.[148]

As a heavy user of Qt, the KDE project submits many patches and features from its developer library KDE Frameworks back to Qt.[149]


See also

-   List of widget toolkits
-   Android software development
-   iOS SDK


Bibliography

Qt Wiki provides a comprehensive list of English books about Qt.[150] This is a list of notable books:

-   -   -   -   -   -   -   -   -


References


External links

-

Qt_(software) Category:1992 software Category:Application programming interfaces Category:Articles with example C++ code Category:C++ libraries Category:Cross-platform software Category:Formerly proprietary software Category:Free computer libraries Category:Free software programmed in C++ Category:KDE Category:Software using the LGPL license Category:Widget toolkits Category:X-based libraries

[1]

[2]

[3]

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

[20]

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

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]  Qt 5.10}}

[105]

[106]  Qt 5.10}}

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125] E-mail to the kde-cygwin mailing list by Chris January, 4 February 2003

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]