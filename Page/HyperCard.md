HYPERCARD is a software application and development kit for Apple Macintosh and Apple IIGS computers. It is among the first successful hypermedia systems predating the World Wide Web.

HyperCard combines a flat-file database with a graphical, flexible, user-modifiable interface.[1] HyperCard includes a built-in programming language called HyperTalk for manipulating data and the user interface.

This combination of features – a database with simple form layout, flexible support for graphics, and ease of programming – suits HyperCard for many different projects such as rapid application development of applications and databases, interactive applications with no database requirements, command and control systems, and many examples in the demoscene.

HyperCard was originally released in 1987 for $49.95 and was included for free with all new Macs sold then.[2] It was withdrawn from sale in March 2004, having received its final update in 1998 upon the return of Steve Jobs to Apple. HyperCard runs in the Classic Environment, but was not ported to Mac OS X.


Overview

Design

HyperCard is based on the concept of a "stack" of virtual "cards".[3] Cards hold data, just as they would in a Rolodex card-filing device. Each card contains a set of interactive objects, including text fields, check boxes, buttons, and similar common graphical user interface (GUI) elements. Users browse the stack by navigating from card to card, using built-in navigation features, a powerful search mechanism, or through user-created scripts.[4]

Users build or modify stacks by adding new cards. They place GUI objects on the cards using an interactive layout engine based on a simple drag-and-drop interface.[5] Also, HyperCard includes prototype or template cards called backgrounds; when new cards are created they can refer to one of these background cards, which causes all of the objects on the background to be copied onto the new card. This way, a stack of cards with a common layout and functionality can be created. The layout engine is similar in concept to a form as used in most rapid application development (RAD) environments such as Borland Delphi, and Microsoft Visual Basic and Visual Studio.

The database features of the HyperCard system are based on the storage of the state of all of the objects on the cards in the physical file representing the stack. The database does not exist as a separate system within the HyperCard stack; no database engine or similar construct exists. Instead, the state of any object in the system is considered to be live and editable at any time. From the HyperCard runtime's perspective, there is no difference between moving a text field on the card and typing into it, both operations simply change the state of the target object within the stack. Such changes are immediately saved when complete, so typing into a field causes that text to be stored to the stack's physical file. The system operates in a largely stateless fashion, with no need to save during operation. This is in common with many database-oriented systems, although somewhat different from document-based applications.

The final key element in HyperCard is the script, a single code-carrying element of every object within the stack. The script is a text field whose contents are interpreted in the HyperTalk language.[6] Like any other property, the script of any object can be edited at any time and changes are saved as soon as they were complete. When the user invokes actions in the GUI, like clicking on a button or typing into a field, these actions are translated into events by the HyperCard runtime. The runtime then examines the script of the object that is the target of the event, like a button, to see if its script object contains the event's code, called a handler. If it does, the HyperTalk engine runs the handler; if it does not, the runtime examines other objects in the visual hierarchy.

These concepts make up the majority of the HyperCard system; stacks, backgrounds and cards provide a form-like GUI system, the stack file provides object persistence and database-like functionality, and HyperTalk allows handlers to be written for GUI events. Unlike the majority of RAD or database systems of the era, however, HyperCard combines all of these features, both user-facing and developer-facing, in a single application. This allows rapid turnaround and immediate prototyping, possibly without any coding, allowing users to author custom solutions to problems with their own personalized interface. "Empowerment" became a catchword as this possibility was embraced by the Macintosh community, as was the phrase "programming for the rest of us",[7][8] that is, anyone, not just professional programmers.

It is this combination of features that also makes HyperCard a powerful hypermedia system. Users can build backgrounds to suit the needs of some system, say a rolodex, and use simple HyperTalk commands to provide buttons to move from place to place within the stack, or provide the same navigation system within the data elements of the UI, like text fields. Using these features, it is easy to build linked systems similar to hypertext links on the Web.[9] Unlike the Web, programming, placement, and browsing were all the same tool. Similar systems have been created for HTML but traditional Web services are considerably more heavyweight.

HyperTalk

HyperCard contains an object oriented scripting language called HyperTalk. HyperTalk object classes are predetermined by the HyperCard environment, although others can be added by the use of externals. The weakly typed HyperTalk supports most standard programming structures such as "if-then" and "repeat". HyperTalk is verbose, hence its ease of use and readability.[10] HyperTalk code segments are referred to as "scripts", a term that is considered less daunting to beginning programmers.

Externals

HyperCard can be extended significantly through the use of _external command_ (XCMD) and _external function_ (XFCN) modules. These are code libraries packaged in a resource fork that integrate into either the system generally or the HyperTalk language specifically; this is an early example of the plug-in concept. Unlike conventional plug-ins, these do not require separate installation before they are available for use; they can be included in a stack, where they are directly available to scripts in that stack.

During HyperCard's peak popularity in the late 1980s, a whole ecosystem of vendors offered thousands of these externals such as HyperTalk compilers, graphing systems, database access, Internet connectivity, and animation. Oracle offered an XCMD that allows HyperCard to directly query Oracle databases on any platform, superseded by Oracle Card. BeeHive Technologies offered a hardware interface that allows the computer to control external devices. Connected via the Apple Desktop Bus (ADB), this instrument can read the state of connected external switches or write digital outputs to a multitude of devices.

Externals allow access to the Macintosh Toolbox, which contains many lower-level commands and functions not native to HyperTalk, such as control of the serial and ADB ports.


History

Development

HyperCard was created by Bill Atkinson following an LSD trip.[11] Work for it began in March 1985 under the name of WildCard (hence its creator code of WILD). In 1986, Dan Winkler began work on HyperTalk and the name was changed to HyperCard for trademark reasons. It was initially released in August 1987, with the understanding that Atkinson would give HyperCard to Apple only if the company promised to release it for free on all Macs. Apple timed its release to coincide with the MacWorld Conference & Expo in Boston, Massachusetts to guarantee maximum publicity.

Launch

HyperCard was successful almost instantly. The Apple Programmer's and Developer's Association (APDA) said, "HyperCard has been an informational feeding frenzy. From August [1987, when it was announced] to October our phones never stopped ringing. It was a zoo." Within a few months of release, there were multiple HyperCard books and a 50 disk set of public domain stacks.[12] Apple's project managers found HyperCard was being used by a huge number of people, internally and externally. Bug reports and upgrade suggestions continued to flow in, demonstrating its wide variety of users. Since it was also free, it was difficult to justify dedicating engineering resources to improvements in the software. Apple and its mainstream developers understood that HyperCard's user empowerment could reduce the sales of ordinary shrink-wrapped products.[13] Stewart Alsop II speculated that HyperCard might replace Finder as the Macintosh graphical user interface.[14]

HyperCard 2.0

In late 1989, Kevin Calhoun, then a HyperCard engineer at Apple, led an effort to upgrade the program. This resulted in HyperCard 2.0, released in 1990. The new version included an on-the-fly compiler that greatly increased performance of computationally intensive code, a new debugger and many improvements to the underlying HyperTalk language.

At the same time HyperCard 2.0 was being developed, a separate group within Apple developed and in 1991 released HyperCard IIGS, a version of HyperCard for the Apple IIGS system. Aimed mainly at the education market, HyperCard IIGS has roughly the same feature set as the 1.x versions of Macintosh HyperCard, while adding support for the color graphics abilities of the IIGS. Although _stacks_ (HyperCard program documents) are not binary-compatible, a translator program (another HyperCard stack) allows them to be moved from one platform to the other.

Then, Apple decided that most of its application software packages, including HyperCard, would be the property of a wholly owned subsidiary called Claris. Many of the HyperCard developers chose to stay at Apple rather than move to Claris, causing the development team to be split. Claris attempted to create a business model where HyperCard could also generate revenues. At first the freely-distributed versions of HyperCard shipped with authoring disabled. Early versions of Claris HyperCard contain an Easter Egg: typing "magic" into the message box converts the player into a full HyperCard authoring environment.[15] When this trick became nearly universal, they wrote a new version, HyperCard Player, which Apple distributed with the Macintosh operating system, while Claris sold the full version commercially. Many users were upset that they had to pay to use software that had traditionally been supplied free and which many considered a basic part of the Mac.

Even after HyperCard was generating revenue, Claris did little to market it. Development continued with minor upgrades, and the first failed attempt to create a third generation of HyperCard. During this period, HyperCard began losing market share. Without several important, basic features, HyperCard authors began moving to systems such as SuperCard and Macromedia Authorware. Nonetheless, HyperCard continued to be popular and used for a widening range of applications, from the game _The Manhole_, an earlier effort by the creators of _Myst_, to corporate information services.

Apple eventually folded Claris back into the parent company, returning HyperCard to Apple's core engineering group. In 1992, Apple released the eagerly anticipated upgrade of HyperCard 2.2 and included licensed versions of Color Tools and Addmotion II, adding support for color pictures and animations. However, these tools are limited and often cumbersome to use because HyperCard 2.0 lacks true, internal color support.

HyperCard 3.0

Several attempts were made to restart HyperCard development once it returned to Apple. Because of the product's widespread use as a multimedia-authoring tool it was rolled into the QuickTime group. A new effort to allow HyperCard to create QuickTime interactive (QTi) movies started, once again under the direction of Kevin Calhoun. QTi extended QuickTime's core multimedia playback features to provide true interactive facilities and a low-level programming language based on 68000 assembly language. The resulting HyperCard 3.0 was first presented in 1996 when an alpha-quality version was shown to developers at Apple's annual Apple Worldwide Developers Conference (WWDC).[16] Under the leadership of Dan Crow development continued through the late 1990s, with public demos showing many popular features such as color support, Internet connectivity, and the ability to play HyperCard stacks (which were now special QuickTime movies) in a web browser. Development upon HyperCard 3.0 stalled when the QuickTime team was focused away from developing QuickTime interactive to the streaming features of QuickTime 4.0. in 1998[17] Steve Jobs disliked the software because Atkinson had chosen to stay at Apple to finish it instead of joining Jobs at NeXT, and (according to Atkinson) "it had Sculley's stink all over it".[18] In 2000, the HyperCard engineering team was reassigned to other tasks after Jobs decided to abandon the product. Calhoun and Crow both left Apple shortly after, in 2001.

Its final release was in 1998, and it was totally discontinued in March 2004.[19]

HyperCard runs natively only in the classic Mac OS, but it can still be used in Mac OS X's Classic mode on PowerPC based machines (G5 and earlier). The last functional native HyperCard authoring environment is Classic mode in Mac OS X 10.4 (Tiger) on PowerPC-based machines.

Applications

HyperCard has been used for a range of hypertext and artistic purposes. Before the advent of PowerPoint, HyperCard was often used as a general-purpose presentation program. Examples of HyperCard applications include simple databases, "choose your own adventure"-type games, and educational teaching aids.

Due to its rapid application design facilities, HyperCard was also often used for prototyping applications and sometimes even for version 1.0 implementations. Inside Apple, the QuickTime team was one of HyperCard's biggest customers.

HyperCard has lower hardware requirements than Macromedia Director. Several commercial software products were created in HyperCard, most notably the original version of the interactive game narrative _Myst_,[20] the Voyager Company's Expanded Books, multimedia CD-ROMs of Beethoven's Ninth Symphony CD-ROM, _A Hard Day's Night_ by the Beatles, and the Voyager _MacBeth_. An early electronic edition of the _Whole Earth Catalog_ was implemented in HyperCard.[21] and stored on CD-ROM.[22]

The prototype and demo of the popular game _You Don't Know Jack_ was written in HyperCard.[23][24] Renault, the French auto manufacturer, used it to control their inventory system.[25][26]

In Quebec, Canada, HyperCard was used to control a robot arm used to insert and retrieve video disks at the National Film Board CinéRobothèque.

HyperCard was used to prototype a fully functional prototype of SIDOCI (one of the very first experiments in the world to develop an integrated electronic patient record system) and was heavily used by Montréal Consulting firm DMR to demonstrate how "a typical day in the life of a patient about to get surgery" would look like in a paperless age.

Activision, which was until then mainly a game company, saw HyperCard as an entry point into the business market. Changing its name to Mediagenic, it published several major HyperCard-based applications, most notably Danny Goodman's Focal Point,[27] a personal information manager, and Reports For HyperCard, a program by Nine To Five Software that allows users to treat HyperCard as a full database system with robust information viewing and printing features.

The HyperCard-inspired SuperCard for a while included the _Roadster_ plug-in that allowed stacks to be placed inside web pages and viewed by web browsers with an appropriate browser plug-in. There was even a Windows version of this plug-in allowing computers other than Macintoshes to use the plug-in.

Exploits

The first HyperCard virus was discovered in Belgium and the Netherlands in April 1991.[28]

Because HyperCard executed scripts in stacks immediately on opening, it was also one of the first applications susceptible to macro viruses. The Merryxmas virus was discovered in early 1993[29] by Ken Dunham, two years before the _Concept_ virus.[30] Very few viruses were based on HyperCard, and their overall impact was minimal.


Reception

_Compute!'s Apple Applications_ in 1987 stated that HyperCard "may make Macintosh the personal computer of choice". While noting that its large memory requirement made it best suited for computers with 2 MB of memory and hard drives, the magazine predicted that "the smallest programming shop should be able to turn out stackware", especially for using CD-ROMs.[31] _Compute!_ predicted in 1988 that most future Mac software would be developed using HyperCard, if only because using it was so addictive that developers "won't be able to tear themselves away from it long enough to create anything else".[32] _Byte_ in 1989 listed it as among the "Excellence" winners of the Byte Awards. While stating that "like any first entry, it has some flaws", the magazine wrote that "HyperCard opened up a new category of software", and praised Apple for bundling it with every Mac.[33] In 2001 Steve Wozniak called HyperCard "the best program ever written".[34]


Legacy

HyperCard is one of the first products that made use of and popularized the hypertext concept to a large popular base of users.

Jakob Nielsen has pointed out that HyperCard was really only a hypermedia program since its links started from regions on a card, not text objects; actual HTML-style text hyperlinks were possible in later versions, but were awkward to implement and seldom used.[35] Deena Larsen programmed links into HyperCard for Marble Springs. Bill Atkinson later lamented that if he had only realized the power of network-oriented stacks, instead of focusing on local stacks on a single machine, HyperCard could have become the first Web browser.[36]

HyperCard saw a loss in popularity with the growth of the World Wide Web, since the Web could handle and deliver data in much the same way as HyperCard without being limited to files on a local hard disk. HyperCard had a significant impact on the web as it inspired the creation of both HTTP (through its influence on Tim Berners-Lee's colleague Robert Cailliau),[37] and JavaScript (whose creator, Brendan Eich, was inspired by HyperTalk[38]). It was also a key inspiration for ViolaWWW, an early web browser.[39]

The pointing-finger cursor used for navigating stacks was later used in the first web browsers, as the hyperlink cursor.[40]

The _Myst_ computer game franchise, initially released as a HyperCard stack and included bundled with some Macs (for example the Performa 5300), still lives on, making HyperCard a facilitating technology for starting one of the best-selling computer games of all time.[41]

According to Ward Cunningham, the inventor of Wiki, the wiki concept can be traced back to a HyperCard stack he wrote in the late 1980s.[42][43][44]

In 2017 the Internet Archive established a project to preserve and emulate HyperCard stacks, allowing users to upload their own.[45]

The GUI of the prototype Apple Wizzy Active Lifestyle Telephone was based on HyperCard.[46]

World Wide Web

HyperCard influenced the development of the Web in late 1990 through its influence on Robert Cailliau, who assisted in developing Tim Berners-Lee's first Web browser.[47] Javascript was inspired by HyperTalk.[48]

Although HyperCard stacks do not operate over the Internet, by 1988, at least 300 stacks were publicly available for download from the commercial CompuServe network (which was not connected to the official Internet yet). The system can link phone numbers on a user's computer together and enable them to dial numbers without a modem, using a less expensive piece of hardware, the Hyperdialer.[49]

In this sense, like the Web, it does form an association-based experience of information browsing via links, though not operating remotely over the TCP/IP protocol then. Like the Web, it also allows for the connections of many different kinds of media.

Similar systems

Other companies have offered their own versions. , four products are available which offer HyperCard-like abilities:

-   HyperNext is a software development system that uses many ideas from HyperCard and can create both standalone applications and stacks that run on the freeware Hypernext Player. HyperNext is available for Mac OS 9 & X, and Windows XP & Vista.
-   HyperStudio, one of the first HyperCard clones, is , developed and published by Software MacKiev.[50]
-   LiveCode, published by LiveCode, Ltd., expands greatly on HyperCard's feature set[51] and offers color and a GUI toolkit which can be deployed on many popular platforms (Android, iOS, Classic Macintosh system software, Mac OS X, Windows 98 through 10, and GNU Linux/Unix). LiveCode directly imports extant HyperCard stacks and provides a migration path for stacks still in use.
-   SuperCard, the first HyperCard clone, is similar to HyperCard, but with many added features such as: full color support, pixel and vector graphics, a full GUI toolkit, and support for many modern Mac OS X features. It can create both standalone applications and projects that run on the freeware SuperCard Player. SuperCard can also convert extant HyperCard stacks into SuperCard projects. It runs only on Macs.

Past products include:

-   SK8 was a "HyperCard killer" developed within Apple but never released. It extends HyperTalk to allow arbitrary objects which allowed it to build complete Mac-like applications (instead of stacks). The project was never released, although the source code was placed in the public domain.
-   Hyper DA by Symmetry was a Desk Accessory for classic single-tasked Mac OS that allows viewing HyperCard 1.x stacks as added windows in any extant application, and is also embedded into many Claris products (like MacDraw II) to display their user documentation.
-   HyperPad from Brightbill-Roberts is a clone of HyperCard, written for DOS. It makes use of ASCII linedrawing to create the graphics of cards and buttons.
-   Plus, later renamed WinPlus, is similar to HyperCard, for Windows and Macintosh.
-   Oracle purchased Plus and created a cross-platform version as Oracle Card, later renamed Oracle Media Objects, used as a 4GL for database access.
-   Asymetrix's Windows application ToolBook resembles HyperCard, and later included an external converter to read HyperCard stacks (the first was a third-party product from Heizer software).
-   TileStack is an attempt to create a web based version of HyperCard that is compatible with the original HyperCard files.[52] The site closed down January 24, 2011.[53][54]

In addition, many of the basic concepts of the original system were later re-used in other forms. Apple built its system-wide scripting engine AppleScript on a language similar to HyperTalk; it is often used for desktop publishing (DTP) workflow automation needs. In the 1990s FaceSpan provided a third-party graphical interface. AppleScript also has a native graphical programming front-end called Automator, released with Mac OS X Tiger in April 2005. One of HyperCard's strengths was its handling of multimedia, and many multimedia systems like Macromedia Authorware and Macromedia Director are based on concepts originating in HyperCard.[55]

AppWare, originally named Serius Developer, is sometimes seen to be similar to HyperCard, as both are rapid application development (RAD) systems. AppWare was sold in the early 90s and worked on both Mac and Windows systems.


See also

-   Apple Media Tool
-   MetaCard
-   Morphic (software)
-   mTropolis
-   NoteCards
-   Stagecast Creator


References

Bibliography

-


External links

-   -   Collection of emulated HyperCard stacks via the Internet Archive
-   -   -   -   -   ; HyperCard conversion utility

-

Category:1987 software Category:Domain-specific programming languages Category:Hypertext Category:HyperCard products Category:Classic Mac OS-only software made by Apple Inc. Category:Classic Mac OS programming tools

[1]

[2]

[3]

[4] "A Hypercard Primer", _InfoWorld_, November 6, 1989, p. S3 (sidebar)

[5]

[6]

[7]

[8]

[9]

[10]

[11]  (link)

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21] _HyperCard Mania!_. Computer Chronicles, 1987. Stewart Cheifet Productions (archive.org)

[22] _A Brief History of The Whole Earth Catalog_, Whole Earth

[23]

[24]

[25]

[26]

[27]

[28]

[29]  includes/mac/util/virus/merryxmaskiller.sit.hqx 8 4/27/93 BinHex4.0,StuffIt3.50 Eliminate a script-based virus called "merryxmas." Requires HyperCard 2.0.

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]  (on the WWW proposal).

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47] People involved in the WorldWideWeb project

[48] Dr. Axel Rauschmayer, Speaking JavaScript: An In-Depth Guide for Programmers (O'Reilly, 2014)

[49] HyperCard:The First Eight Months, InfoWorld, 11 Apr 1988, page 37

[50]

[51]

[52]

[53]

[54]

[55]