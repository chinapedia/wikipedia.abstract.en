MINIX (from "mini-Unix") is a POSIX-compliant (since version 2.0),[1][2] Unix-like operating system based on a microkernel architecture.

Early versions of MINIX were created by Andrew S. Tanenbaum for educational purposes. Starting with MINIX 3, the primary aim of development shifted from education to the creation of a highly reliable and self-healing microkernel OS. MINIX is now developed as open-source software.

MINIX was first released in 1987, with its complete source code made available to universities for study in courses and research. It has been free and open-source software since it was re-licensed under the BSD license in April 2000.[3]


Implementation

MINIX 1.0

Andrew S. Tanenbaum created MINIX at Vrije Universiteit in Amsterdam to exemplify the principles conveyed in his textbook, _Operating Systems: Design and Implementation_ (1987).

An abridged 12,000 lines of the C source code of the kernel, memory manager, and file system of MINIX 1.0 are printed in the book. Prentice-Hall also released MINIX source code and binaries on floppy disk with a reference manual. MINIX 1 was system-call compatible with Seventh Edition Unix.[4]

Tanenbaum originally developed MINIX for compatibility with the IBM PC and IBM PC/AT microcomputers available at the time.

MINIX 1.5

MINIX 1.5, released in 1991, included support for MicroChannel IBM PS/2 systems and was also ported to the Motorola 68000 and SPARC architectures, supporting the Atari ST, Commodore Amiga, Apple Macintosh[5] and Sun SPARCstation computer platforms. There were also unofficial ports to Intel 386 PC compatibles (in 32-bit protected mode), National Semiconductor NS32532, ARM and Inmos transputer processors. Meiko Scientific used an early version of MINIX as the basis for the MeikOS operating system for its transputer-based Computing Surface parallel computers. A version of MINIX running as a user process under SunOS and Solaris was also available, a simulator named SMX.[6][7]

MINIX 2.0

interaction]]

Demand for the 68k-based architectures waned, however, and MINIX 2.0, released in 1997, was only available for the x86 and Solaris-hosted SPARC architectures. It was the subject of the second edition of Tanenbaum's textbook, cowritten with Albert Woodhull and was distributed on a CD-ROM included with the book. MINIX 2.0 added POSIX.1 compliance, support for 386 and later processors in 32-bit mode and replaced the Amoeba network protocols included in MINIX 1.5 with a TCP/IP stack.

Minix-vmd

Minix-vmd is a variant of MINIX 2 for Intel IA-32-compatible processors, created by two Vrije Universiteit researchers, which adds virtual memory and support for the X Window System.

MINIX 3

" system monitoring command]] with the twm window manager]]

MINIX 3 was publicly announced on 24 October 2005 by Andrew Tanenbaum during his keynote speech at the Association for Computing Machinery (ACM) Symposium on Operating Systems Principles (SOSP). Although it still serves as an example for the new edition of Tanenbaum and Woodhull's textbook, it is comprehensively redesigned to be "usable as a serious system on resource-limited and embedded computers and for applications requiring high reliability."[8]

MINIX 3 currently supports IA-32 and ARM architecture systems. It is available in a Live CD format that allows it to be used on a computer without installing it on the hard drive, and in versions compatible with hardware emulating and virtualizing systems, including Bochs, QEMU, VMware Workstation/Fusion, VirtualBox, and Microsoft Virtual PC.

Version 3.1.5 was released 5 November 2009. It contains X11, emacs, vi, cc, gcc, perl, python, ash, bash, zsh, ftp, ssh, telnet, pine, and over 400 other common Unix utility programs. With the addition of X11, this version marks the transition away from a text-only system. It can also withstand driver crashes. In many cases it can automatically restart drivers without affecting running processes. In this way, MINIX is self-healing and can be used in applications demanding high reliability. MINIX 3 also has support for virtual memory management, making it suitable for desktop OS use.[9] Desktop applications such as Firefox and OpenOffice.org are not yet available for MINIX 3 however.

As of version 3.2.0, the userland was mostly replaced by that of NetBSD and support from pkgsrc became possible, increasing the available software applications that MINIX can use. Clang replaced the prior compiler (with GCC optionally supported), and GDB, the GNU debugger, was ported.[10][11]

MINIX 3.3.0, released in September 2014, brought ARM support.

MINIX 3.4.0RC, Release Candidates became available in January 2016,[12] however a stable release of MINIX 3.4.0 is yet to be announced.

MINIX supports many programming languages, including C, C++, FORTRAN, Modula-2, Pascal, Perl, Python, and Tcl.

MINIX 3 still has an active development community with over 50 people attending MINIXCon 2016, a conference to discuss the history and future of MINIX.[13]

All Intel chipsets post-2015 are running MINIX 3 internally as the software component of the Intel Management Engine.[14][15]


Relationship with Linux

Early influence

Torvalds used and appreciated MINIX,[16] but his design deviated from the MINIX architecture in significant ways, most notably by employing a monolithic kernel instead of a microkernel. This was disapproved of by Tanenbaum in the Tanenbaum–Torvalds debate. Tanenbaum explained again his rationale for using a microkernel in May 2006.[17]

Early Linux kernel development was done on a MINIX host system, which led to Linux inheriting various features from MINIX, such as the MINIX file system.

_Samizdat_ claims

In May 2004, Kenneth Brown of the Alexis de Tocqueville Institution made the accusation that major parts of the Linux kernel had been copied from the MINIX codebase, in a book named _Samizdat_.[18] These accusations were rebutted universally—most prominently by Andrew Tanenbaum, who strongly criticised Kenneth Brown and published a long rebuttal on his own personal Web site, also claiming that Brown was funded by Microsoft.[19][20]


Licensing

At the time of MINIX's original development, its license was relatively liberal. Its licensing fee was very small ($69) relative to those of other operating systems. Tanenbaum wished for MINIX to be as accessible as possible to students, but his publisher was unwilling to offer material (such as the source code) that could be copied freely, so a restrictive license requiring a nominal fee (included in the price of Tanenbaum's book) was applied as a compromise. This prevented the use of MINIX as the basis for a freely distributed software system.

When free and open-source Unix-like operating systems such as Linux and 386BSD became available in the early 1990s, many volunteer software developers abandoned MINIX in favor of these. In April 2000, MINIX became free and open-source software under a permissive free software license,[21] but by this time other operating systems had surpassed its capabilities, and it remained primarily an operating system for students and hobbyists.


See also

-   MINIX file system
-   Minix-vmd
-   MINIX 3
-   Redox —an operating system in Rust using a Minix-like kernel


References


External links

-   -   -   History of MINIX from Andrew Tanenbaum
-

Category:1987 software Category:ARM operating systems Category:Computer science in the Netherlands Category:Dutch inventions Category:Educational operating systems Category:Free software operating systems Category:Information technology in the Netherlands Category:Lightweight Unix-like systems Category:Microkernel-based operating systems Category:Microkernels Category:MINIX Category:Operating system distributions bootable from read-only media Category:Unix variants Category:Software using the BSD license

[1]

[2]

[3] "MINIX is now available under the BSD license", Apr 9 2000, minix1.woodhull.com

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11] MINIX 3.2: A microkernel with NetBSD applications [LWN.net]

[12]

[13]

[14]

[15] MINIX: Intel's hidden in-chip operating system

[16]

[17]

[18]

[19]

[20]

[21]