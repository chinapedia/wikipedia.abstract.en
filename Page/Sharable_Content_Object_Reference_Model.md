SHAREABLE CONTENT OBJECT REFERENCE MODEL (SCORM) is a collection of standards and specifications for web-based electronic educational technology (also called e-learning). It defines communications between client side content and a host system (called "the run-time environment"), which is commonly supported by a learning management system. SCORM also defines how content may be packaged into a transferable ZIP file called "Package Interchange Format."[1]

SCORM is a specification of the Advanced Distributed Learning (ADL) Initiative from the Office of the United States Secretary of Defense.

SCORM 2004 introduced a complex idea called sequencing, which is a set of rules that specifies the order in which a learner may experience content objects. In simple terms, they constrain a learner to a fixed set of paths through the training material, permit the learner to "bookmark" their progress when taking breaks, and assure the acceptability of test scores achieved by the learner. The standard uses XML, and it is based on the results of work done by AICC, IMS Global, IEEE, and Ariadne.


Technology

SCORM was designed to be web-based and utilizes JavaScript to facilitate communication between the client side content and the run-time environment. Each SCORM version specifies the methods that the run-time environment should support and how those methods should behave. Content launched by the run time environment can then call those methods utilizing JavaScript.


Versions

SCORM 1.1

SCORM 1.1 is the first production version. It used a Course Structure Format XML file based on the AICC specifications to describe content structure, but lacked a robust packaging manifest and support for metadata. Quickly abandoned in favor of SCORM 1.2.

SCORM 1.2

This was the first version that was widely used. It is still widely used and is supported by most Learning Management Systems.

SCORM 2004

This is the current version. It is based on new standards for API and content object-to-runtime environment communication, with many ambiguities of previous versions resolved. Includes ability to specify adaptive sequencing of activities that use the content objects. Includes ability to share and use information about the success status for multiple learning objectives or competencies across content objects and across courses for the same learner within the same learning management system. A more robust test suite helps ensure good interoperability.

SCORM 2004 editions

-   3rd Edition (October 2005) – clarification of various conformance requirements and of the interaction between content objects and the runtime environment for sequencing; some new conformance requirements to improve interoperability.
-   4th Edition Released (March 31, 2009) – more stringent interoperability requirements, more flexible data persistence[2]

SCORM 2004 specification books

-   Overview – introduces SCORM and describes how the other books relate
-   Run-Time Environment – describes runtime API and data model used for communication between content objects and learning management systems
-   Sequencing and Navigation – describes how sequencing between learning activities is defined and interpreted
-   Compliance Requirements – detailed list of the conformance requirements that are verified by the ADL SCORM conformance test suite.

Experience API (Tin Can API)

The Experience API (also known as xAPI or Tin Can API) was finalized to version 1.0 in April 2013. The Experience API solves many of the problems inherent with older versions of SCORM.[3] Just like SCORM, ADL is the steward of the Experience API. AICC with their cmi5 planned to use xAPI as their transport standard, but AICC membership decided to dissolve the organization and transferred cmi5 to ADL.[4]

The Experience API (Tin Can API) is a web service that allows software clients to read and write experiential data in the form of “statement” objects. In their simplest form, statements are in the form of “I did this”, or more generally “actor verb object”. More complex statement forms can be used. There is also a built-in query API to help filter recorded statements, and a state API that allows for a sort of “scratch space” for consuming applications. Experience API statements are stored in a data store called a Learning Record Store, which can exist on its own or within a Learning Management System.[5]


SCORM timeline

-   January 1999 — Executive Order 13111 signed tasking the DoD to develop common specifications and standards for e-learning across both federal and private sectors.[6]
-   January 2000 — SCORM Version 1.0
-   January 2001 — SCORM Version 1.1
-   October 2001 — SCORM Version 1.2
-   January 2004 — SCORM 2004 (1st Edition)
-   July 2004 — SCORM 2004 (2nd Edition)
-   June 2006 — Department of Defense Instruction (DoDI) 1322.26 Requiring DoD Use of SCORM
-   October 2006 — SCORM 2004 (3rd Edition)
-   March 2009 — SCORM 2004 (4th Edition)
-   2009 — The first three specification books were adopted as technical reports by ISO/IEC JTC1/SC36, standard number ISO/IEC TR 29163.
-   October 2010 — ADL awards a Broad Agency Announcement to Rustici Software to conduct research and community interviews in an effort to begin the creation of the next generation of SCORM. This is called Project Tin Can.
-   September 2011 — The initial draft of the next generation of SCORM (named the Tin Can API) is released.
-   June 2012 — .9 version of the Tin Can API is released.
-   August 2012 — .95 version of the Tin Can API is released.
-   April 2013 — 1.0.0 version of the Tin Can API is released, project name was changed to "Experience API" or xAPI, but many still refer to it as the Tin Can API.


Compatible software

SERVER SOFTWARE

-   Moodle, multilingual Australian open source software.[7]
-   Sakai, free, community source, educational software platform.[8]

CLIENT INTERFACE (no GUI)

-   Tin Can API

CONTENT EDITING SOFTWARE

-   Adobe Captivate
-   ISpring Suite
-   Articulate Storyline
-   Adapt Learning


See also

-   Authoring tool
-   Computer aided instruction
-   Educational technology
-   LETSI
-   SLOOP Project


References


External links

-

Category:E-learning

[1]

[2]

[3]

[4]  AICC dissolves, transfers cmi5 to ADL

[5]

[6]

[7]

[8]