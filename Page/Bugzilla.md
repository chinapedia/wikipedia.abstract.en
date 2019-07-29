BUGZILLA is a web-based general-purpose bugtracker and testing tool originally developed and used by the Mozilla project, and licensed under the Mozilla Public License.

Released as open-source software by Netscape Communications in 1998, it has been adopted by a variety of organizations for use as a bug tracking system for both free and open-source software and proprietary projects and products. Bugzilla is used, among others, by the Mozilla Foundation, WebKit, Linux kernel, FreeBSD,[1] GNOME, KDE, Apache, Red Hat, Eclipse and LibreOffice.[2] It is also self-hosting.[3]


History

Bugzilla was originally devised by Terry Weissman in 1998 for the nascent Mozilla.org project, as an open source application to replace the in-house system then in use at Netscape Communications for tracking defects in the Netscape Communicator suite. Bugzilla was originally written in Tcl, but Weissman decided to port it to Perl before its release as part of Netscape's early open source code drops, in the hope that more people would be able to contribute to it, given that Perl seemed to be a more popular language at the time.[4]

Bugzilla 2.0 was the result of that port to Perl, and the first version was released to the public via anonymous CVS. In April 2000, Weissman handed over control of the Bugzilla project to Tara Hernandez. Under her leadership, some of the regular contributors were coerced into taking more responsibility, and Bugzilla development became more community-driven. In July 2001, facing distraction from her other responsibilities in Netscape, Hernandez handed control to Dave Miller, who was still in charge .[5]

Bugzilla 3.0 was released on May 10, 2007 and brought refreshed UI, XML-RPC interface, custom fields and resolutions, mod_perl support, shared saved searches, and improved UTF-8 support, along with other changes.

Bugzilla 4.0 was released on February 15, 2011 and Bugzilla 5.0 was released in July 2015.

Timeline

Bugzilla's release timeline:[6]

Define $now = 15/05/2019 Define $width = 556 Define $warning = 436 # $width – 120 ImageSize = width:800 height:500 PlotArea = left:40 right:10 bottom:100 top:10 DateFormat = dd/mm/yyyy Period = from:01/01/1998 till:$now TimeAxis = orientation:hor Alignbars = justify Legend = orientation:vertical position:bottom columns:1

1.  1.

2.  Color definitions #
    1.  1.

Colors =

 id:col2.0     value:orange         Legend:Bugzilla_2.0-2.12
 id:col2.14    value:blue           Legend:Bugzilla_2.14
 id:col2.16    value:green          Legend:Bugzilla_2.16
 id:col2.18    value:magenta        Legend:Bugzilla_2.18
 id:col2.20    value:teal           Legend:Bugzilla_2.20
 id:col2.22    value:orange         Legend:Bugzilla_2.22
 id:col3.0     value:blue           Legend:Bugzilla_3.0
 id:col3.2     value:green          Legend:Bugzilla_3.2
 id:col3.4     value:magenta        Legend:Bugzilla_3.4
 id:col3.6     value:teal           Legend:Bugzilla_3.6
 id:col4.0     value:orange         Legend:Bugzilla_4.0
 id:col4.2     value:blue           Legend:Bugzilla_4.2
 id:col4.4     value:green          Legend:Bugzilla_4.4
 id:col5.0     value:magenta        Legend:Bugzilla_5.0
 id:col2.0-l1  value:gray(0.2)
 id:col2.0-l2  value:gray(0.3)
 id:colbg      value:gray(0.98)
 id:colgrmaj   value:gray(0.5)
 id:colgrmin   value:gray(0.8)
 id:lighttext  value:rgb(0.5,0.5,0.5)

ScaleMajor = gridcolor:colgrmaj unit:year increment:1 start:01/01/1998 ScaleMinor = gridcolor:colgrmin unit:month increment:3 start:01/01/1998 BackgroundColors = canvas:colbg

PlotData=

 ##################################################
 # 2.0 filled bar                                 #
 ##################################################
 bar:2.0 width:35 from:26/08/1998 till:27/04/2001 color:col2.0 mark:(line,col2.0)

 ##################################################
 # 2.0 line & text for first version every year   #
 ##################################################
 bar:2.0 mark:(line,col2.0-l1) align:center fontsize:S
 at:26/08/1998 text:"2.0" shift:(0,-15)
 at:20/01/1999 text:"2.2"
 at:09/05/2000 text:"2.10"
 at:27/04/2001 text:"2.12" shift:(0,5)

 ##################################################
 # 2.0 line for all other versions                #
 ##################################################
 bar:2.0 mark:(line,col2.0-l2)
 at: 30/04/1999 # 2.4
 at: 30/08/1999 # 2.6
 at: 19/11/1999 # 2.8

 ##################################################
 # 2.14 filled bar                                #
 ##################################################
 bar:2.14 width:35 from:29/08/2001 till:02/01/2003 color:col2.14 mark:(line,col2.14)

 ##################################################
 # 2.14 line & text for first version every year  #
 ##################################################
 bar:2.14 mark:(line,col2.0-l1) align:center fontsize:S
 at:29/08/2001 text:"2.14" shift:(0,-15)
 at:05/01/2002 text:"2.14.1"
 at:02/01/2003 text:"2.14.5" shift:(0,5)

 ##################################################
 # 2.14 line for all other versions               #
 ##################################################
 bar:2.14 mark:(line,col2.0-l2)
 at: 07/06/2002 # 2.14.2
 at: 28/07/2002 # 2.14.3
 at: 30/09/2002 # 2.14.4

 ##################################################
 # 2.16 filled bar                                #
 ##################################################
 bar:2.16 width:35 from:28/07/2002 till:20/02/2006 color:col2.16 mark:(line,col2.16)

 ##################################################
 # 2.16 line & text for first version every year  #
 ##################################################
 bar:2.16 mark:(line,col2.0-l1) align:center fontsize:S
 at:28/07/2002 text:"2.16" shift:(0,-15)
 at:02/01/2003 text:"2.16.2"
 at:03/05/2004 text:"2.16.5"
 at:15/01/2005 text:"2.16.8"
 at:20/02/2006 text:"2.16.11" shift:(0,5)

 ##################################################
 # 2.16 line for all other versions               #
 ##################################################
 bar:2.16 mark:(line,col2.0-l2)
 at: 30/09/2002 # 2.16.1
 at: 25/04/2003 # 2.16.3
 at: 03/11/2003 # 2.16.4
 at: 10/07/2004 # 2.16.6
 at: 24/10/2004 # 2.16.7
 at: 11/05/2005 # 2.16.9
 at: 18/05/2005 # 2.16.10

 ##################################################
 # 2.18 filled bar                                #
 ##################################################
 bar:2.18 width:35 from:15/01/2005 till:15/10/2006 color:col2.18 mark:(line,col2.18)

 ##################################################
 # 2.18 line & text for first version every year  #
 ##################################################
 bar:2.18 mark:(line,col2.0-l1) align:center fontsize:S
 at: 15/01/2005 text:"2.18" shift:(0,-15)
 at: 20/02/2006 text:"2.18.5"
 at: 15/10/2006 text:"2.18.6" shift:(0,5)

 ##################################################
 # 2.18 line for all other versions               #
 ##################################################
 bar:2.18 mark:(line,col2.0-l2)
 at: 11/05/2005 # 2.18.1
 at: 07/07/2005 # 2.18.2
 at: 09/07/2005 # 2.18.3
 at: 30/09/2005 # 2.18.4

 ##################################################
 # 2.20 filled bar                                #
 ##################################################
 bar:2.20 width:35 from:30/09/2005 till:06/11/2008 color:col2.20 mark:(line,col2.20)

 ##################################################
 # 2.20 line & text for first version every year  #
 ##################################################
 bar:2.20 mark:(line,col2.0-l1) align:center fontsize:S
 at: 30/09/2005 text:"2.20" shift:(0,-15)
 at: 20/02/2006 text:"2.20.1"
 at: 02/02/2007 text:"2.20.4"
 at: 04/05/2008 text:"2.20.6"
 at: 06/11/2008 text:"2.20.7" shift:(0,5)

 ##################################################
 # 2.20 line for all other versions               #
 ##################################################
 bar:2.20 mark:(line,col2.0-l2)
 at: 22/04/2006 # 2.18.2
 at: 15/10/2006 # 2.18.3
 at: 23/08/2007 # 2.18.5

 ##################################################
 # 2.22 filled bar                                #
 ##################################################
 bar:2.22 width:35 from:22/04/2006 till:02/02/2009 color:col2.22 mark:(line,col2.22)

 ##################################################
 # 2.22 line & text for first version every year  #
 ##################################################
 bar:2.22 mark:(line,col2.0-l1) align:center fontsize:S
 at: 22/04/2006 text:"2.22" shift:(0,-15)
 at: 02/02/2007 text:"2.22.2"
 at: 04/05/2008 text:"2.22.4"
 at: 02/02/2009 text:"2.22.7" shift:(0,5)

 ##################################################
 # 2.22 line for all other versions               #
 ##################################################
 bar:2.22 mark:(line,col2.0-l2)
 at: 23/08/2007 # 2.18.3
 at: 12/08/2008 # 2.18.5
 at: 06/11/2008 # 2.18.6

 ##################################################
 # 3.0 filled bar                                 #
 ##################################################
 bar:3.0 width:35 from:09/05/2007 till:31/01/2010 color:col3.0 mark:(line,col3.0)

 ##################################################
 # 3.0 line & text for first version every year   #
 ##################################################
 bar:3.0 mark:(line,col2.0-l1) align:center fontsize:S
 at: 09/05/2007 text:"3.0" shift:(0,-15)
 at: 08/01/2008 text:"3.0.3"
 at: 02/02/2009 text:"3.0.7"
 at: 31/01/2010 text:"3.0.11" shift:(0,5)

 ##################################################
 # 3.0 line for all other versions                #
 ##################################################
 bar:3.0 mark:(line,col2.0-l2)
 at: 23/08/2007 # 3.0.1
 at: 18/09/2007 # 3.0.2
 at: 04/05/2008 # 3.0.4
 at: 12/08/2008 # 3.0.5
 at: 06/11/2008 # 3.0.6
 at: 03/02/2009 # 3.0.8
 at: 11/09/2009 # 3.0.9
 at: 05/11/2009 # 3.0.10

 ##################################################
 # 3.2 filled bar                                 #
 ##################################################
 bar:3.2 width:35 from:29/11/2008 till:24/01/2011 color:col3.2 mark:(line,col3.2)

 ##################################################
 # 3.2 line & text for first version every year   #
 ##################################################
 bar:3.2 mark:(line,col2.0-l1) align:center fontsize:S
 at: 29/11/2008 text:"3.2" shift:(0,-15)
 at: 02/02/2009 text:"3.2.1"
 at: 31/01/2010 text:"3.2.6"
 at: 24/01/2011 text:"3.2.10" shift:(0,5)

 ##################################################
 # 3.2 line for all other versions                #
 ##################################################
 bar:3.2 mark:(line,col2.0-l2)
 at: 03/02/2009 # 3.2.2
 at: 30/03/2009 # 3.2.3
 at: 08/07/2009 # 3.2.4
 at: 11/09/2009 # 3.2.5
 at: 24/06/2010 # 3.2.7
 at: 05/08/2010 # 3.2.8
 at: 02/11/2010 # 3.2.9

 ##################################################
 # 3.4 filled bar                                 #
 ##################################################
 bar:3.4 width:35 from:28/07/2009 till:31/01/2012 color:col3.4 mark:(line,col3.4)

 ##################################################
 # 3.4 line & text for first version every year   #
 ##################################################
 bar:3.4 mark:(line,col2.0-l1) align:center fontsize:S
 at: 28/07/2009 text:"3.4" shift:(0,-15)
 at: 31/01/2010 text:"3.4.5"
 at: 24/01/2011 text:"3.4.10"
 at: 31/01/2012 text:"3.4.14" shift:(0,5)

 ##################################################
 # 3.4 line for all other versions                #
 ##################################################
 bar:3.4 mark:(line,col2.0-l2)
 at: 01/08/2009 # 3.4.1
 at: 11/09/2009 # 3.4.2
 at: 05/11/2009 # 3.4.3
 at: 18/11/2009 # 3.4.4
 at: 08/03/2010 # 3.4.6
 at: 24/06/2010 # 3.4.7
 at: 05/08/2010 # 3.4.8
 at: 02/11/2010 # 3.4.9
 at: 27/04/2011 # 3.4.11
 at: 04/08/2011 # 3.4.12
 at: 28/12/2011 # 3.4.13

 ##################################################
 # 3.6 filled bar                                 #
 ##################################################
 bar:3.6 width:35 from:13/04/2010 till:24/05/2013 color:col3.6 mark:(line,col3.6)

 ##################################################
 # 3.6 line & text for first version every year   #
 ##################################################
 bar:3.6 mark:(line,col2.0-l1) align:center fontsize:S
 at: 13/04/2010 text:"3.6" shift:(0,-15)
 at: 24/01/2011 text:"3.6.4"
 at: 31/01/2012 text:"3.6.8"
 at: 31/01/2013 text:"3.6.13"

 ##################################################
 # 3.6 line for all other versions                #
 ##################################################
 bar:3.6 mark:(line,col2.0-l2)
 at: 24/06/2010 # 3.6.1
 at: 05/08/2010 # 3.6.2
 at: 02/11/2010 # 3.6.3
 at: 27/04/2011 # 3.6.5
 at: 04/08/2011 # 3.6.6
 at: 28/12/2011 # 3.6.7
 at: 18/04/2012 # 3.6.9
 at: 26/07/2012 # 3.6.10
 at: 30/08/2012 # 3.6.11
 at: 19/02/2013 # 3.6.12

 ##################################################
 # 4.0 filled bar                                 #
 ##################################################
 bar:4.0 width:35 from:15/02/2011 till:07/07/2015 color:col4.0 mark:(line,col4.0)

 ##################################################
 # 4.0 line & text for first version every year   #
 ##################################################
 bar:4.0 mark:(line,col2.0-l1)
 at: 15/02/2011 text:"4.0" shift:(0,-15) # 4.0
 at: 31/01/2012 text:"4.0.4"
 at: 19/02/2013 text:"4.0.10"
 at: 17/04/2014 text:"4.0.12"
 at: 21/01/2015 text:"4.0.16"

 ##################################################
 # 4.0 line for all other versions                #
 ##################################################
 bar:4.0 mark:(line,col2.0-l2)
 at: 27/04/2011 # 4.0.1
 at: 04/08/2011 # 4.0.2
 at: 28/12/2011 # 4.0.3
 at: 22/02/2012 # 4.0.5
 at: 18/04/2012 # 4.0.6
 at: 26/07/2012 # 4.0.7
 at: 30/08/2012 # 4.0.8
 at: 13/11/2012 # 4.0.9
 at: 16/10/2013 # 4.0.11
 at: 18/04/2014 # 4.0.13
 at: 24/07/2014 # 4.0.14
 at: 06/10/2014 # 4.0.15
 at: 27/01/2015 # 4.0.17
 at: 15/04/2015 # 4.0.18

 ##################################################
 # 4.2 filled bar                                 #
 ##################################################
 bar:4.2 width:35 from:22/02/2012 till:22/12/2015 color:col4.2 mark:(line,col4.2)

 ##################################################
 # 4.2 line & text for first version every year   #
 ##################################################
 bar:4.2 mark:(line,col2.0-l1)
 at: 22/02/2012 text:"4.2" shift:(0,-15) # 4.2
 at: 19/02/2013 text:"4.2.5"
 at: 17/04/2014 text:"4.2.8"
 at: 21/01/2015 text:"4.2.12"

 ##################################################
 # 4.2 line for all other versions                #
 ##################################################
 bar:4.2 mark:(line,col2.0-l2)
 at: 18/04/2012 # 4.2.1
 at: 26/07/2012 # 4.2.2
 at: 30/08/2012 # 4.2.3
 at: 13/11/2012 # 4.2.4
 at: 24/05/2013 # 4.2.6
 at: 16/10/2013 # 4.2.7
 at: 18/04/2014 # 4.2.9
 at: 24/07/2014 # 4.2.10
 at: 06/10/2014 # 4.2.11
 at: 27/01/2015 # 4.2.13
 at: 15/04/2015 # 4.2.14
 at: 10/09/2015 # 4.2.15
 at: 22/12/2015 # 4.2.16

 ##################################################
 # 4.4 filled bar                                 #
 ##################################################
 bar:4.4 width:35 from:24/05/2013 till:$now color:col4.4 mark:(line,col4.4)

 ##################################################
 # 4.4 line & text for first version every year   #
 ##################################################
 bar:4.4 mark:(line,col2.0-l1)
 at: 24/05/2013 text:"4.4" shift:(0,-15)
 at: 27/01/2014 text:"4.4.2"
 at: 21/01/2015 text:"4.4.7"
 at: 16/05/2016 text:"4.4.12"
 at: 16/02/2018 text:"4.4.13"

 ##################################################
 # 4.4 line for all other versions                #
 ##################################################
 bar:4.4 mark:(line,col2.0-l2)
 at: 16/10/2013 # 4.4.1
 at: 17/04/2014 # 4.4.3
 at: 18/04/2014 # 4.4.4
 at: 24/07/2014 # 4.4.5
 at: 06/10/2014 # 4.4.6
 at: 27/01/2015 # 4.4.8
 at: 15/04/2015 # 4.4.9
 at: 10/09/2015 # 4.4.10
 at: 22/12/2015 # 4.4.11

 ##################################################
 # 5.0 filled bar                                 #
 ##################################################
 bar:5.0 width:35 from:07/07/2015 till:$now color:col5.0 mark:(line,col5.0)

 ##################################################
 # 5.0 line & text for first version every year   #
 ##################################################
 bar:5.0 mark:(line,col2.0-l1) align:center fontsize:S
 at: 07/07/2015 text:"5.0" shift:(0,-15)
 at: 16/05/2016 text:"5.0.3"
 at: 16/02/2018 text:"5.0.4"
 at: 30/01/2019 text:"5.0.5"

 ##################################################
 # 5.0 line for all other versions                #
 ##################################################
 bar:5.0 mark:(line,col2.0-l2)
 at: 10/09/2015 # 5.0.1
 at: 22/12/2015 # 5.0.2
 at: 09/02/2019 # 5.0.6

TextData =

 fontsize:S
 textcolor:lighttext
 pos:($warning, 80)
 text:Updated on $now.


Requirements

Bugzilla's system requirements include:

-   A compatible database management system
-   A suitable release of Perl 5
-   An assortment of Perl modules
-   A compatible web server
-   A suitable mail transfer agent, or any SMTP server

Currently supported database systems are MySQL, PostgreSQL, Oracle, and SQLite. Bugzilla is usually installed on Linux using the Apache HTTP Server, but any web server that supports CGI such as Lighttpd, Hiawatha, Cherokee can be used. Bugzilla's installation process is command line driven and runs through a series of stages where system requirements and software capabilities are checked.


Design

Bugzilla_Lifecycle_color-aqua.svg

While the potential exists in the code to turn Bugzilla into a technical support ticket system, task management tool, or project management tool, Bugzilla's developers have chosen to focus on the task of designing a system to track software defects. Mandated design requirements include:[7]

-   The ability to run on freely available, open-source tools. While Bugzilla development includes work to support commercial databases, tools, and operating systems.
-   The maintenance of speed and efficiency at all costs. One of Bugzilla's major attractions to developers is its lightweight implementation and speed, so calls into the database are minimized whenever possible, data fetching is kept as light as possible, and generation of heavy HTML is avoided.
-   Tickets. For instance, Mozilla.org uses it to track feature requests as well. In this case items (called bugs) can be submitted by anybody, and will be assigned to a particular developer. Various status updates for each bug are allowed, together with user notes and bug examples.

In practice, most Bugzilla projects allowing the public to file bugs—such as the Bugzilla bug database for Bugzilla itself—assign all bugs to a gatekeeper, whose job it is to assign responsibility and priority level.


Zarro Boogs

By design, Bugzilla is programmed to return the string "zarro boogs found" instead of "0 bugs found" when a search for bugs returns no results.[8] "Zarro Boogs" is a meta-statement about the nature of software debugging. Bug tracking systems like Bugzilla readily describe how many _known_ bugs are outstanding. The response "zarro boogs",[9] is intended as a buggy statement itself (a misspelling of "zero bugs"), implying that even when no bugs have been identified, software is still likely to contain bugs that have not yet been identified.[10]

The following comment is provided in the Bugzilla source code to developers who may be confused by this behaviour:

    _ZARRO BOOGS FOUND_
    This is just a goofy way of saying that there were no bugs found matching your query. When asked to explain this message, Terry Weissman (an early Bugzilla developer) had the following to say:

    I've been asked to explain this ... way back when, when Netscape released version 4.0 of its browser, we had a release party. Naturally, there had been a big push to try and fix every known bug before the release. Naturally, that hadn't actually happened. (This is not unique to Netscape or to 4.0; the same thing has happened with every software project I've ever seen.) Anyway, at the release party, T-shirts were handed out that said something like "Netscape 4.0: Zarro Boogs". Just like the software, the T-shirt had no known bugs. Uh-huh. So, when you query for a list of bugs, and it gets no results, you can think of this as a friendly reminder. Of *course* there are bugs matching your query, they just aren't in the bugsystem yet...
    — Terry Weissman
    _From The Bugzilla Guide – 2.16.10 Release: Glossary_[11]


WONTFIX

WONTFIX is used as a label on issues in Bugzilla and other systems.[12] It indicates that a verified issue will not be addressed for one of several possible reasons including fixing would be too expensive, complicated or risky.[13][14]


See also

-   Comparison of issue-tracking systems
-   List of computing mascots
-   :Category:Computing mascots


References


External links

-

Category:Articles which contain graphical timelines Category:Bug and issue tracking software Category:Cross-platform free software Category:Free project management software Category:Free software programmed in Perl Category:Mozilla Category:Software using the Mozilla license

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] Coined by Michael Toy as explained by Tara Hernandez in the PBS documentary

[10]

[11]

[12]

[13]

[14]