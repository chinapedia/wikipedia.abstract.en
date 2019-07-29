SUNOS is a Unix-branded operating system developed by Sun Microsystems for their workstation and server computer systems. The _SunOS_ name is usually only used to refer to versions 1.0 to 4.1.4, which were based on BSD, while versions 5.0 and later are based on UNIX System V Release 4, and are marketed under the brand name _Solaris_.


History

  SUNOS VERSION         RELEASE DATE                                                                                                              CODEBASE                                                                             Description
  --------------------- ------------------------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  SUN UNIX 0.7          1982                                                                                                                      UniSoft UNIX v7{{cite book                                                           title=A Quarter Century of Unix
  SUNOS 1.0{{cite web   url = http://bitsavers.trailing-edge.com/pdf/sun/sunos/1.0/800-1087-01_Beginners_Guide_to_the_Sun_Workstation_Nov83.pdf   title = Beginners Guide to the Sun Workstation, p 82                                 accessdate = 2016-04-06 }} Beginners Guide to the Sun Workstation
  SUNOS 1.1{{cite web   url = http://www.operating-system.org/betriebssystem/_english/bs-solaris.htm                                              title = Solaris Operating System (Unix)                                              accessdate = 2006-12-14
  SUNOS 1.2[1]          Jan 1985
  SUNOS 2.0             May 1985[2]                                                                                                               4.2BSD                                                                               Introduced the NFS protocol, Yellow Pages (YP) distributed network information system, Remote Procedure Call (RPC) / eXternal Data Representation (XDR) and virtual file system (VFS) layer using vnodes. Coincided with release of 68020-based Sun-3 hardware.
  SUNOS 3.0             Feb 1986[3]                                                                                                               4.2BSD + System V IPC                                                                Optional System V tape offered utilities and development libraries.
  SUNOS 3.2             Sep 1986[4]                                                                                                               rowspan = "2" | Same as 3.0, plus some 4.3BSD                                        First support for Sun-4 series
  SUNOS 3.5             Jan 1988
  SUNOS 4.0             Dec 1988                                                                                                                  rowspan = "17" | 4.3BSD with System V IPC                                            New virtual memory system, dynamic linking, automounter, System V STREAMS I/O. Sun386i support.
  SUNOS 4.0.1           Dec 1988
  SUNOS 4.0.2           Sep 1989                                                                                                                  Sun386i only
  SUNOS 4.0.3           May 1989
  SUNOS 4.0.3C          Jun 1989                                                                                                                  SPARCstation 1 (Sun-4c) only
  SUNOS 4.1             Mar 1990
  SUNOS 4.1E            Apr 1991                                                                                                                  Sun-4e only
  SUNOS 4.1.1           Mar 1990                                                                                                                  Bundled with OpenWindows 2.0
  SUNOS 4.1.1B          Feb 1991
  SUNOS 4.1.1.1         Jul 1991
  SUNOS 4.1.1_U1        Nov 1991                                                                                                                  Sun-3/3x only
  SUNOS 4.1.2           Dec 1991                                                                                                                  Support for multiprocessor (SPARCserver 600MP) systems; first CD-ROM-only release.
  SUNOS 4.1.3           Aug 1992
  SUNOS 4.1.3C          Nov 1993                                                                                                                  SPARCclassic/SPARCstation LX only
  SUNOS 4.1.3_U1        Dec 1993
  SUNOS 4.1.3_U1B       Feb 1994                                                                                                                  Earliest release for which Y2K compliance patches were available.
  SUNOS 4.1.4           Nov 1994                                                                                                                  Last release of SunOS 4
  SUNOS 5._X_           Jun 1992                                                                                                                  SVR4                                                                                 See Solaris article.

SunOS 1 only supported the Sun-2 series systems, including Sun-1 systems upgraded with Sun-2 (68010) CPU boards. SunOS 2 supported Sun-2 and Sun-3 (68020) series systems. SunOS 4 supported Sun-2 (until release 4.0.3), Sun-3 (until 4.1.1), Sun386i (4.0, 4.0.1 and 4.0.2 only) and Sun-4 (SPARC) architectures. Although SunOS 4 was intended to be the first release to fully support Sun's new SPARC processor, there was also a SunOS 3.2 release with preliminary support for Sun-4 systems.

SunOS 4.1.2 introduced support for Sun's first sun4m-architecture multiprocessor machines (the SPARCserver 600MP series); since it had only a single lock for the kernel, only one CPU at a time could execute in the kernel.

The last release of SunOS 4 was 4.1.4 (Solaris 1.1.2) in 1994. The sun4, sun4c and sun4m architectures were supported in 4.1.4; sun4d was not supported.

Sun continued to ship SunOS 4.1.3 and 4.1.4 until December 27, 1998; they were supported until September 30, 2003.


"SunOS" and "Solaris"

SunOS_4.1.1_P1270750.jpg In 1987, AT&T Corporation and Sun announced that they were collaborating on a project to merge the most popular Unix flavors on the market at that time: BSD (including many of the features then unique to SunOS), System V, and Xenix. This would become System V Release 4 (SVR4).[5]

On September 4, 1991, Sun announced that its next major OS release would switch from its BSD-derived source base to one based on SVR4. Although the internal designation of this release would be _SunOS 5_, from this point Sun began using the marketing name _Solaris_. The justification for this new "overbrand" was that it encompassed not only SunOS, but also the OpenWindows desktop environment and Open Network Computing (ONC) functionality.

Even though the new SVR4-based OS was not expected to ship in volume until the following year, Sun immediately began using the new _Solaris_ name to refer to the currently shipping SunOS 4 release (also including OpenWindows). Thus SunOS 4.1.1 was rebranded _Solaris 1.0_; SunOS 5.0 would be considered a part of Solaris 2.0. SunOS 4.1._x_ micro versions continued to be released through 1994, and each of these was also given a _Solaris 1._x equivalent name. In practice, these were often still referred to by customers and even Sun personnel by their SunOS release names. Matching the version numbers was not straightforward:

+---------------+--------------------+---------------------+
| SunOS Version | Solaris version    | OpenWindows version |
+===============+====================+=====================+
| 4.1.1         | 1.0                | 2.0                 |
| 4.1.1B        |                    |                     |
| 4.1.1.1       |                    |                     |
+---------------+--------------------+---------------------+
| 4.1.2         | 1.0.1              | 2.0                 |
+---------------+--------------------+---------------------+
| 4.1.3         | 1.1 SMCC Version A | 3.0                 |
+---------------+--------------------+---------------------+
| 4.1.3C        | 1.1C               | 3.0                 |
+---------------+--------------------+---------------------+
| 4.1.3_U1      | 1.1.1              | 3.0_U1              |
+---------------+--------------------+---------------------+
| 4.1.3_U1B     | 1.1.1B             | 3.0_U1B             |
+---------------+--------------------+---------------------+
| 4.1.4         | 1.1.2              | 3.0_414             |
+---------------+--------------------+---------------------+

: SUNOS 4.1._X_ / SOLARIS 1._X_ / OPENWINDOWS RELEASES

Today, SunOS 5 is universally known as _Solaris_, although the _SunOS_ name is still visible within the OS itself in the startup banner, the output of the uname command, and man page footers, among other places.

Matching a SunOS 5.x release to its corresponding Solaris marketing name is simple: each Solaris release name includes its corresponding SunOS 5 minor version number. For example, Solaris 2.4 incorporated SunOS 5.4. There is one small twist: after Solaris 2.6, the "2." was dropped from the Solaris name and the SunOS minor number appears by itself. The latest Solaris release is named _Solaris 11_ and incorporates SunOS 5.11.


User interface

GUI environments bundled with earlier versions of SunOS included SunTools (later SunView) and NeWS. In 1989, Sun released OpenWindows, an OPEN LOOK-compliant X11-based environment which also supported SunView and NeWS applications. This became the default SunOS GUI in SunOS 4.1.1.


See also

-   Solaris (operating system)
-   OpenSolaris
-   OpenIndiana
-   Illumos
-   Comparison of BSD operating systems
-   Comparison of operating systems
-   Unix wars


References


External links

-   The Sun Hardware Reference (Overview)
-   -   _An Introduction to Solaris_ – a sample chapter from _Solaris Internals: Core Kernel Architecture_ by Jim Mauro & Richard McDougall, Prentice-Hall, 2000. (PDF)
-   Info on SunOS from OSdata (last updated February 17, 2002)
-   Initial Solaris announcement

Category:Berkeley Software Distribution Category:Discontinued operating systems Category:Sun Microsystems software Category:UNIX System V

[1]

[2]

[3]

[4]

[5]