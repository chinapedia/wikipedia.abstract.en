The SINGLE UNIX SPECIFICATION (SUS) is the collective name of a family of standards for computer operating systems, compliance with which is required to qualify for using the "UNIX" trademark. The core specifications of the SUS are developed and maintained by the Austin Group, which is a joint working group of IEEE, ISO JTC 1 SC22 and The Open Group. If an operating system is submitted to The Open Group for certification, and passes conformance tests, then it is deemed to be compliant with a UNIX standard such as UNIX 98 or UNIX 03.

Very few BSD and Linux-based operating systems are submitted for compliance with the Single UNIX Specification, although system developers generally aim for compliance with POSIX standards, which form the core of the Single UNIX Specification.


History

1980s: Motivation

The SUS emerged from a mid-1980s project to standardize operating system interfaces for software designed for variants of the Unix operating system. The need for standardization arose because enterprises using computers wanted to be able to develop programs that could be used on the computer systems of different manufacturers without reimplementing the programs. Unix was selected as the basis for a standard system interface partly because it was manufacturer-neutral.

1988: POSIX

In 1988, these standards became IEEE 1003 (also registered as ISO/IEC 9945), or POSIX, which loosely stands for PORTABLE OPERATING SYSTEM INTERFACE.

1990s: Spec 1170

In the early 1990s, a separate effort known as the Common API Specification or Spec 1170 was initiated by several major vendors, who formed the COSE alliance in the wake of the Unix wars. This specification became more popular because it was available at no cost, whereas the IEEE charged a substantial fee for access to the POSIX specification. Management over these specifications was assigned to X/Open who also received the Unix trademark from Novell in 1993. Unix International (UI) merged into Open Software Foundation (OSF) in 1994 only to merge with X/Open to form The Open Group in 1996.

1994: Single UNIX Specification

This was a repackaging of the X/Open Portability Guide (XPG), Issue 4, Version 2.

1995 Edition

In 1995, the Open Group released the SINGLE UNIX SPECIFICATION VERSION 1, 1995 EDITION.[1]

This specification consisted of:

-   System Interface Definitions, Issue 4, Version 2,
-   System Interfaces and Headers, Issue 4, Version 2,
-   Commands and Utilities, Issue 4, Version 2,
-   X/Open Curses, Issue 4 Version 2,
-   Networking Services, Issue 4,

and was at the core of the UNIX 95 brand.[2]

1997: Single UNIX Specification version 2

In 1997, the Open Group released the SINGLE UNIX SPECIFICATION VERSION 2.[3][4]

This specification consisted of:

-   the Base Definitions, Issue 5,
-   the System Interfaces and Headers, Issue 5,
-   the Commands and Utilities, Issue 5,
-   the Networking Services, Issue 5,
-   the X/Open Curses, Issue 4, Version 2,

and was at the core of the UNIX 98 brand.[5]

2001: Single UNIX Specification version 3, POSIX:2001

Beginning in 1998, a joint working group known as the Austin Group began to develop the combined standard that would be known as the SINGLE UNIX SPECIFICATION VERSION 3 and as POSIX:2001 (formally: IEEE Std 1003.1-2001). It was released on January 30, 2002.[6]

This standard consisted of:

-   the Base Definitions, Issue 6,
-   the System Interfaces and Headers, Issue 6,
-   the Commands and Utilities, Issue 6,

and is at the core of the UNIX 03 brand.[7]

2004: POSIX:2004

In 2004, a new edition of the POSIX:2001 standard was released, incorporating two technical corrigenda. It is called POSIX:2004 (formally: IEEE Std 1003.1-2004).[8][9]

2008: Single UNIX Specification version 4, POSIX:2008

In December 2008, the Austin Group published a new major revision, known as POSIX:2008 (formally: IEEE Std 1003.1-2008).[10][11][12] This is the core of the Single UNIX Specification, Version 4 (SUSv4).[13]

This standard consists of:

-   the Base Definitions, Issue 7,
-   the System Interfaces and Headers, Issue 7,
-   the Commands and Utilities, Issue 7.

2013 Edition

The Technical Corrigendum 1 is mostly targeting internationalization and it introduces a role-based access model. It was published in 2012 for the Unix Base specification and it is registered as the 2013 Edition of POSIX 2008. A trademark _UNIX V7_ (not to be confused with V7 UNIX, the version of Research Unix from 1979) has been created to mark compliance with SUS Version 4.[14]

2016 Edition

The Technical Corrigendum 2 has been published in September 2016, leading into _IEEE Std 1003.1-2008, 2016 Edition_ and _Single UNIX Specification, Version 4, 2016 Edition_.

2018 Edition

In January 2018 an "administrative rollup" edition, susv4-2018, was released. It incorporates Single UNIX Specification version 4 TC1 and TC2, and is technically identical to the 2016 edition.[15]


Specification

SUSv3 totals some 3700 pages, which are thematically divided into four main parts:

-   BASE DEFINITIONS (XBD) - a list of definitions and conventions used in the specifications and a list of C header files which must be provided by compliant systems. 84 header files in total are provided.
-   SHELL AND UTILITIES (XCU) - a list of utilities and a description of the shell, sh. 160 utilities in total are specified.
-   SYSTEM INTERFACES (XSH) - contains the specification of various functions which are implemented as system calls or library functions. 1123 system interfaces in total are specified.
-   RATIONALE (XRAT) - the explanation behind the standard.

The standard user command line and scripting interface is the POSIX shell, an extension of the Bourne Shell based on an early version of the Korn Shell. Other user-level programs, services and utilities include awk, echo, ed, vi, and hundreds of others. Required program-level services include basic I/O (file, terminal, and network) services. A test suite accompanies the standard. It is called PCTS or the POSIX CERTIFICATION TEST SUITE.

Additionally, SUS includes CURSES (XCURSES) specification, which specifies 372 functions and 3 header files. All in all, SUSv3 specifies 1742 interfaces.

Note that a system need not include source code derived in any way from AT&T Unix to meet the specification. For instance, IBM OS/390, now z/OS, qualifies as a "Unix" despite having no code in common.


Marks for compliant systems

There are three official marks for conforming systems

-   UNIX 98 - the mark for systems conforming to version 2 of the SUS (partial compliance)
-   UNIX 03 - the mark for systems conforming to version 3 of the SUS (full compliance)
-   UNIX V7 - the mark for systems conforming to version 4 of the SUS (including Corrigenda)[16]

Older UNIX standards (superseded)

-   UNIX 93 (completely superseded)
-   UNIX 95 (compliance still acceptable for some simpler software subsystems)


Compliance

+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| Product               | Vendor                        | Architecture         | UNIX V7 | UNIX 03 | UNIX 98 | UNIX 95 | UNIX 93 |
+=======================+===============================+======================+=========+=========+=========+=========+=========+
| AIX                   | IBM Corporation               | PowerPC              |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| FTX                   | Cemprus LLC                   | PA-RISC              |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| EulerOS               | Huawei                        | x86-64               |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| HP-UX                 | Hewlett Packard Enterprise    | IA-64, PA-RISC       |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| IRIX                  | Silicon Graphics, Inc.        | MIPS                 |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| K-UX                  | Inspur                        | x86-64               |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| macOS (formerly OS X) | Apple                         | x86-64               |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| OpenServer            | Xinuos                        | IA-32                |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| Solaris               | Oracle Corporation            | IA-32, x86-64, SPARC |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| Tru64 UNIX            | Digital Equipment Corporation | Alpha                |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| UnixWare              | Xinuos                        | IA-32                |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+
| z/OS USS              | IBM Corporation               | z/Architecture       |         |         |         |         |         |
+-----------------------+-------------------------------+----------------------+---------+---------+---------+---------+---------+

Currently registered UNIX systems

AIX

AIX 5L V5.2 with some updates, AIX 5L V5.3 and AIX 6.1, are registered as UNIX 03 compliant. AIX 5L V5.2 is registered as UNIX 98 compliant.

EulerOS

EulerOS 2.0 for the x86-64 architecture was certified as UNIX 03 compliant.[17] The UNIX 03 conformance statement shows that the standard C compiler is from the GNU Compiler Collection (gcc), and that the system is a Linux distribution of the Red Hat family.[18]

HP-UX

HP-UX 11i V3 Release B.11.31 is registered as UNIX 03 compliant. Previous releases are registered as UNIX 95.[19]

HP-UX 11i features also provide partial conformance to the UNIX 98 specification.[20]

Inspur K-UX

Inspur K-UX 2.0 and 3.0 for the x86-64 architecture were certified as UNIX 03 compliant.[21][22] The UNIX 03 conformance statement for Inspur K-UX 2.0 and 3.0 shows that the standard C compiler is from the GNU Compiler Collection (gcc), and that the system is a Linux distribution of the Red Hat family.[23]

macOS

Apple's macOS (previously known as OS X) is a UNIX 03 registered product,[24] first becoming registered with Mac OS X 10.5 "Leopard" on October 26, 2007 (when run on Macs with Intel processors).[25][26] All newer versions of macOS (except Mac OS X 10.7 "Lion") have been registered.[27]

Solaris

Solaris 11 complies with the Single UNIX Specification.[28] Solaris 10 is registered as UNIX 03 compliant on 32-bit and 64-bit x86 (X86-64) and SPARC systems. Solaris 8 and 9 are registered as UNIX 98 compliant on 32-bit x86 and SPARC systems; 64-bit x86 systems are not supported.

Solaris 2.5.1 was also registered as UNIX 95 compliant on the PReP PowerPC platform in 1996, but the product was withdrawn before more than a few dozen copies had been sold.[29]

z/OS

IBM z/OS 1.2 and higher is registered as UNIX 95 compliant. z/OS 1.9, released on September 28, 2007, and subsequent releases "better align" with UNIX 03.[30]

Previously registered UNIX systems

Reliant UNIX

The last Reliant UNIX versions were registered as UNIX 95 compliant (XPG4 hard branding).

Xinuos

UnixWare 7.1.3 is registered as UNIX 95 compliant. SCO OpenServer 5 is registered as UNIX 93 compliant.

Tru64 UNIX

Tru64 UNIX V5.1A and later are registered as UNIX 98 compliant.

Other

Other operating systems registered as UNIX 95 or UNIX 93 compliant:

-   NCR UNIX SVR4
-   NEC UX/4800
-   SGI IRIX 6.5[31]

Non-registered Unix-like systems

Developers and vendors of Unix-like operating systems such as Linux, FreeBSD, and MINIX, typically do not certify their distributions and do not install full POSIX utilities by default.[32][33] Sometimes, SUS compliance can be improved by installing additional packages, but very few Linux systems can be configured to be completely conformant.

Darwin, the open source subset of macOS, has behavior that can be set to comply with UNIX 03.[34][35]

FreeBSD previously had a "C99 and POSIX Conformance Project" which aimed for compliance with a subset of the Single UNIX Specification, and documentation where there were differences.[36]

For Linux, the Linux Standard Base was formed in 2001 as an attempt to standardize the internal structures of Linux-based systems for increased compatibility. It is based on the POSIX specifications, the Single UNIX Specification, and other open standards, and also extends them in several areas; but there are some conflicts between the LSB and The POSIX standards.[37] However, although these standards are commonly accepted, few Linux distributions actually go through certification as LSB compliant.[38]


See also

-   List of Unix commands
-   Unix wars
-   Functional specification
-   UNIX manual
-   Open system (computing)
-   Open standard
-   POSIX


References


Sources

-


External links

-   The Single UNIX Specification

Category:IEEE standards Category:Open Group standards Category:POSIX Category:Unix standards

[1] https://www2.opengroup.org/ogsys/catalog/T907

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

[13] Single UNIX Specification Version 4

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

[29] Solaris 2.5.1

[30]

[31]

[32] For example pax and sccs are usually not installed on Linux, as they are not commonly used.

[33] Ubuntu bug tracker: No UNIX compatible pax implementation

[34]

[35]

[36]

[37]

[38]