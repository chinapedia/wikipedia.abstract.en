The COMMON DESKTOP ENVIRONMENT (CDE) is a desktop environment for Unix and OpenVMS, based on the Motif widget toolkit. It was part of the UNIX 98 Workstation Product Standard,[1] and was for a long time the "classic" Unix desktop associated with commercial Unix workstations.

After a long history as proprietary software, CDE was released as free software on August 6, 2012, under the GNU Lesser General Public License, version 2 or later.[2] Since its release as free software, CDE has been ported to Linux and BSD derivatives.


History

man pages in CDE]]

Hewlett-Packard, IBM, SunSoft, and USL announced CDE in June 1993 as a joint development within the Common Open Software Environment (COSE) initiative. Each development group contributed its own technology to CDE:[3]

-   HP contributed the primary environment for CDE, which was based on HP's Visual User Environment (VUE). HP VUE was itself derived from the Motif Window Manager.
-   IBM contributed its Common User Access model from OS/2's Workplace Shell.
-   Sun contributed its ToolTalk application interaction framework and a port of its DeskSet productivity tools, including mail and calendar clients, from its OpenWindows environment.
-   USL provided desktop manager components and scalable systems technologies from UNIX System V.

After its release, HP endorsed CDE as the new standard desktop for Unix, and provided documentation and software for migrating HP VUE customizations to CDE.[4]

In March 1994 CDE became the responsibility of the "new OSF", a merger of the Open Software Foundation and Unix International;[5] in September 1995, the merger of Motif and CDE into a single project, CDE/Motif, was announced.[6] OSF became part of the newly formed Open Group in 1996.[7]

In February 1997, the Open Group released their last major version of CDE, version 2.1.[8]

Red Hat Linux was the only Linux distribution that proprietary CDE was ported to. In 1997, Red Hat began offering a version of CDE licensed from TriTeal Corporation. In 1998, Xi Graphics, a company specializing in the X Windowing System, offered a version of CDE bundled with Red Hat Linux, called _Xi Graphics maXimum cde/OS_. These were phased out, and Red Hat moved to the GNOME desktop.

Until about 2000, users of Unix desktops regarded CDE as the _de facto_ standard, but at that time, other desktop environments such as GNOME and K Desktop Environment 2 were quickly becoming mature, and became widespread on Linux systems.

In 2001, Sun Microsystems announced that they would phase out CDE as the standard desktop environment in Solaris in favor of GNOME. Solaris 10, released in early 2005, includes both CDE and the GNOME-based Java Desktop System. The OpenSolaris project, begun around the same time, did not include CDE, and had no intent to make Solaris CDE available as open-source.[9] The original release of Solaris 11 in November 2011 only contained GNOME as standard desktop, though some CDE libraries, such as Motif and ToolTalk, remained for binary compatibility but Oracle Solaris 11.4, released in August 2018, removed support for the CDE runtime environment and background services.[10]

Systems that provided proprietary CDE

C360 displaying the CDE login manager, _dtlogin_]] model 735 running HP-UX with CDE]] model B180L running HP-UX and CDE]]

-   IBM AIX
-   Digital UNIX
-   HP-UX: from version 10.10, released in 1996.[11]
-   IRIX: for a short time CDE was an alternative to IRIX Interactive Desktop.[12]
-   OpenVMS
-   Solaris: available starting with 2.3, standard in 2.6 to 10.
-   Tru64 UNIX
-   UnixWare
-   UXP/DS
-   Red Hat Linux: Two versions ported by Triteal[13] and Xi Graphics[14]


License history

From its launch until 2012, CDE was proprietary software.

Motif, the toolkit on which CDE is built, was released by The Open Group in 2000 as "Open Motif," under a "revenue sharing" license. That license did not meet either the open source or free software definitions. The Open Group had wished to make Motif open source, but did not succeed doing so at that time.[15]

Release under the GNU LGPL

In 2006, a petition was created asking The Open Group to release the source code for CDE and Motif under a free license.[16] On August 6, 2012, CDE was open-sourced under the LGPL free software license.[17][18] The CDE source code was then released to SourceForge.

The free software project OpenCDE had been started in 2010 to reproduce the look and feel, organization, and feature set of CDE.

 In August 2012, when CDE was released as free software, OpenCDE was officially deprecated in favor of CDE.[19]

On October 23, 2012, the Motif widget toolkit was also released under the LGPL v2.1.[20] This allowed CDE to become a completely free and open source desktop environment.

Shortly after CDE was released as free software, a Linux live CD was created based on Debian 6 with CDE 2.2.0c pre-installed, called CDEbian.[21] The live CD has since been discontinued.

The Debian based Linux distribution SparkyLinux [22] offers binary packages of CDE that can be installed with APT.


Development under CDE project

In March 2014, the first stable release of CDE, version 2.2.1, was made since its release as free software.[23]

Beginning with version 2.2.2, released in July 2014, CDE is able to compile under FreeBSD 10 with the default Clang compiler.[24]

Since version 2.3.0, released in July 2018, CDE uses TIRPC on Linux, so that the portmapper rpcbind does not need to be run in insecure mode. It does not use Xprint anymore, and can be compiled on the BSDs without installing first a custom version of Motif. Multihead display support with Xinerama has been improved.

Since its release as free software, CDE has been ported to:[25]

-   Linux distributions including:
    -   Debian GNU/Linux
    -   Red Hat Enterprise Linux[26]
    -   Slackware Linux
    -   Ubuntu
-   FreeBSD
-   NetBSD
-   OpenBSD
-   OpenIndiana
-   Solaris 11 (x86-64)

Future project goals of the CDE project include:

-   Increased portability to more Linux, BSD, and Unix platforms.
-   Further internationalization into other languages.


See also

-   dtlogin
-   IRIX Interactive Desktop
-   Motif


References


External links

-   Open Group – CDE

Category:1993 software Category:Desktop environments Category:Formerly proprietary software Category:Open Group standards Category:OpenVMS Category:Software that uses Motif Category:Sun Microsystems software Category:X window managers

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] TOG Press Release: The Open Group Announces Common Desktop Environment 2.1

[9]

[10]

[11] HP-UX : FAQ

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

[26] Red Hat package