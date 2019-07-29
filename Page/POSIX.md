The PORTABLE OPERATING SYSTEM INTERFACE (POSIX)[1] is a family of standards specified by the IEEE Computer Society for maintaining compatibility between operating systems. POSIX defines the application programming interface (API), along with command line shells and utility interfaces, for software compatibility with variants of Unix and other operating systems.[2][3]


Name

Originally, the name "POSIX" referred to IEEE Std 1003.1-1988, released in 1988. The family of POSIX standards is formally designated as IEEE 1003 and the international standard name is ISO/IEC 9945.

The standards emerged from a project that began circa 1985. Richard Stallman suggested the name _POSIX_ to the IEEE instead of former _IEEE-IX_. The committee found it more easily pronounceable and memorable, and thus adopted it.[4][5]


Overview

Unix was selected as the basis for a standard system interface partly because it was "manufacturer-neutral". However, several major versions of Unix existed—so there was a need to develop a common denominator system. The POSIX specifications for Unix-like operating systems originally consisted of a single document for the core programming interface, but eventually grew to 19 separate documents (POSIX.1, POSIX.2, etc.).[6] The standardized user command line and scripting interface were based on the UNIX System V shell.[7] Many user-level programs, services, and utilities (including awk, echo, ed) were also standardized, along with required program-level services (including basic I/O: file, terminal, and network). POSIX also defines a standard threading library API which is supported by most modern operating systems. In 2008, most parts of POSIX were combined into a single standard _(IEEE Std 1003.1-2008_, also known as _POSIX.1-2008)._

, POSIX documentation is divided into two parts:

-   POSIX.1, 2013 Edition: POSIX Base Definitions, System Interfaces, and Commands and Utilities (which include POSIX.1, extensions for POSIX.1, Real-time Services, Threads Interface, Real-time Extensions, Security Interface, Network File Access and Network Process-to-Process Communications, User Portability Extensions, Corrections and Extensions, Protection and Control Utilities and Batch System Utilities. This is POSIX 1003.1-2008 with Technical Corrigendum 1.)
-   POSIX Conformance Testing: A test suite for POSIX accompanies the standard: VSX-PCTS or the VSX POSIX CONFORMANCE TEST SUITE.[8]

The development of the POSIX standard takes place in the Austin Group (a joint working group linking the IEEE, The Open Group and the ISO/IEC JTC 1 organizations).


Versions

Parts before 1997

Before 1997, POSIX comprised several standards:

-   POSIX.1: Core Services (incorporates Standard ANSI C) (IEEE Std 1003.1-1988)
    -   Process Creation and Control
    -   Signals
        -   Floating Point Exceptions
        -   Segmentation / Memory Violations
        -   Illegal Instructions
        -   Bus Errors
        -   Timers
    -   File and Directory Operations
    -   Pipes
    -   C Library (Standard C)
    -   I/O Port Interface and Control
    -   Process Triggers
-   POSIX.1B: Real-time extensions (IEEE Std 1003.1b-1993, later appearing as librt—the Realtime Extensions library)

)

-   -   Priority Scheduling
    -   Real-Time Signals
    -   Clocks and Timers
    -   Semaphores
    -   Message Passing
    -   Shared Memory
    -   Asynchronous and Synchronous I/O
    -   Memory Locking Interface

-   POSIX.1C: Threads extensions (IEEE Std 1003.1c-1995)
    -   Thread Creation, Control, and Cleanup
    -   Thread Scheduling
    -   Thread Synchronization
    -   Signal Handling
-   POSIX.2: Shell and Utilities (IEEE Std 1003.2-1992)
    -   Command Interpreter
    -   Utility Programs

Versions after 1997

After 1997, the Austin Group developed the POSIX revisions. The specifications are known under the name Single UNIX Specification, before they become a POSIX standard when formally approved by the ISO.

POSIX.1-2001

_POSIX.1-2001_ (or IEEE Std 1003.1-2001) equates to the _Single UNIX Specification version 3._[9]

This standard consisted of:

-   the Base Definitions, Issue 6,
-   the System Interfaces and Headers, Issue 6,
-   the Commands and Utilities, Issue 6.

POSIX.1-2004 (with two TCs)

IEEE Std 1003.1-2004 involved a minor update of POSIX.1-2001. It incorporated two minor updates or errata referred to as _Technical Corrigenda_ (TCs).[10] Its contents are available on the web.[11]

POSIX.1-2008 (with two TCs)

_Base Specifications, Issue 7_ (or _IEEE Std 1003.1-2008_, 2016 Edition) is similar to the current 2017 version (as of 22.7.2018).[12][13] A free online copy may still be available.[14]

This standard consists of:

-   the Base Definitions, Issue 7,
-   the System Interfaces and Headers, Issue 7,
-   the Commands and Utilities, Issue 7,
-   the Rationale volume.

POSIX.1-2017

IEEE Std 1003.1-2017 (Revision of IEEE Std 1003.1-2008) - IEEE Standard for Information Technology--Portable Operating System Interface (POSIX(R)) Base Specifications, Issue 7 is available from either The Open Group or IEEE and is, as of 22.7.2018, the current standard.


Controversies

512- vs 1024-byte blocks

POSIX mandates 512-byte default block sizes for the df and du utilities, reflecting the typical size of blocks on disks. When Richard Stallman and the GNU team were implementing POSIX for the GNU operating system, they objected to this on the grounds that most people think in terms of 1024 byte (or 1 KiB) blocks. The environment variable was introduced to allow the user to force the standards-compliant behaviour.[15] The variable name was later changed to .[16] This variable is now also used for a number of other behaviour quirks, where "POSIX and common sense disagree".


POSIX-oriented operating systems

Depending upon the degree of compliance with the standards, one can classify operating systems as fully or partly POSIX compatible. Certified products can be found at the IEEE's website.[17]

POSIX-certified

Some versions of the following operating systems have been certified to conform to one or more of the various POSIX standards. This means that they passed the automated conformance tests.[18]

-   AIX[19]
-   HP-UX[20]
-   IRIX[21]
-   EulerOS[22]
-   macOS (since 10.5 Leopard)[23][24]
-   Solaris[25]
-   Tru64[26]
-   UnixWare[27]
-   QNX Neutrino[28]
-   Inspur K-UX[29]
-   INTEGRITY[30]

Mostly POSIX-compliant

The following, while not officially certified as POSIX compatible, comply in large part:

-   Android (Available through Android NDK)
-   BeOS (and subsequently Haiku)
-   Contiki
-   Darwin (core of OS X/macOS and iOS)
-   FreeBSD[31]
-   illumos
-   Linux (most distributions — see Linux Standard Base)
-   LynxOS
-   MINIX (now MINIX3)
-   MPE/iX[32]
-   NetBSD
-   Nucleus RTOS
-   NuttX
-   OpenBSD
-   OpenSolaris[33]
-   PikeOS RTOS for embedded systems with optional PSE51 and PSE52 partitions; see partition (mainframe)
-   Redox
-   RTEMS – POSIX API support designed to IEEE Std. 1003.13-2003 PSE52
-   SkyOS
-   Syllable
-   VSTa
-   VMware ESXi
-   VxWorks ()
-   Xenix

POSIX for Microsoft Windows

-   Cygwin provides a largely POSIX-compliant development and run-time environment for Microsoft Windows.
-   MinGW, a fork of Cygwin, provides a less POSIX-compliant development environment and supports compatible C-programmed applications via Msvcrt, Microsoft's old Visual C runtime library.
-   Microsoft POSIX subsystem, an optional Windows subsystem included in Windows NT-based operating systems up to Windows 2000. POSIX-1 as it stood in 1990 revision, without threads or sockets.
-   Interix, originally OpenNT by Softway Systems, Inc., is an upgrade and replacement for Microsoft POSIX subsystem that was purchased by Microsoft in 1999. It was initially marketed as a stand-alone add-on product and then later included it as a component in Windows Services for UNIX (SFU) and finally incorporated it as a component in Windows Server 2003 R2 and later Windows OS releases under the name "Subsystem for UNIX-based Applications" (SUA); later made deprecated in 2012 (Windows 8)[34] and dropped in 2013 (2012 R2, 8.1). It enables full POSIX compliance for certain Microsoft Windows products.
-   Windows Subsystem for Linux, also known as WSL, is a compatibility layer for running Linux binary executables natively on Windows 10 using a Linux image such as Ubuntu, Debian, or OpenSUSE among others, acting as an upgrade and replacement for Windows Services for UNIX. It was released in beta in April 2016. The first distribution available was Ubuntu.
-   UWIN from AT&T Research implements a POSIX layer on top of the Win32 APIs.
-   MKS Toolkit, originally created for MS-DOS, is a software package produced and maintained by MKS Inc. that provides a Unix-like environment for scripting, connectivity and porting Unix and Linux software to both 32- and 64-bit Microsoft Windows systems. A subset of it was included in the first release of Windows Services for UNIX (SFU) in 1998.[35]
-   Windows C Runtime Library and Windows Sockets API implement commonly used POSIX API functions for file, time, environment, and socket access,[36] although the support remains largely incomplete and not fully interoperable with POSIX-compliant implementations.[37][38]

POSIX for OS/2

Mostly POSIX compliant environments for OS/2:

-   emx+gcc – largely POSIX compliant

POSIX for DOS

Partially POSIX compliant environments for DOS include:

-   emx+gcc – largely POSIX compliant
-   DJGPP – partially POSIX compliant
-   DR-DOS multitasking core via EMM386 /MULTI – a POSIX threads frontend API extension is available

Compliant via compatibility feature

The following are not officially certified as POSIX compatible, but they conform in large part to the standards by implementing POSIX support via some sort of compatibility feature (usually translation libraries, or a layer atop the kernel). Without these features, they are usually noncompliant.

-   eCos – POSIX is part of standard distribution, and used by many applications. 'external links' section below has more information.
-   MorphOS (through the built-in ixemul library)
-   OpenVMS (through optional POSIX package)
-   Plan 9 from Bell Labs APE - ANSI/POSIX Environment[39]
-   RIOT (through optional POSIX module)
-   Symbian OS with PIPS (PIPS Is POSIX on Symbian)
-   Windows NT kernel when using Microsoft SFU 3.5 or SUA
    -   Windows 2000 Server or Professional with Service Pack 3 or later. To be POSIX compliant, one must activate optional features of Windows NT and Windows 2000 Server.[40]
    -   Windows XP Professional with Service Pack 1 or later
    -   Windows Server 2003
    -   Windows Server 2008 and Ultimate and Enterprise versions of Windows Vista
    -   Windows Server 2008 R2 and Ultimate and Enterprise versions of Windows 7
    -   albeit deprecated, still available for Windows Server 2012 and Enterprise version of Windows 8
-   UNIX System Services that runs on z/OS (certified as compliant)


See also

-   POSIX signal
-   POSIX Threads
-   POSIX sockets are basically Berkeley sockets
-   TRON project – alternative OS standards to POSIX
-   Common User Access – User interface standard
-   Interix – a full-featured POSIX and Unix environment subsystem for Microsoft's Windows NT-based operating systems
-   C POSIX library
-   Real-time operating system
-   Portable character set, set of 103 characters which should be supported in any POSIX-compliant character set locale


References


External links

-

Category:Application programming interfaces Category:Open Group standards Category:IEC standards Category:IEEE standards Category:ISO standards *

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

[11] .

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

[34] Features Removed or Deprecated in Windows Server 2012

[35] Windows NT Services for UNIX Add-On Pack for NT 4; see also the November '98 press release for MKS toolkit 6.1, also archived elsewhere

[36]

[37]

[38]

[39]

[40]