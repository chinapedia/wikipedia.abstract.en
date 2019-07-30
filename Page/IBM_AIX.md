AIX (ADVANCED INTERACTIVE EXECUTIVE, pronounced [1]) is a series of proprietary Unix operating systems developed and sold by IBM for several of its computer platforms. Originally released for the IBM RT PC RISC workstation, AIX now supports or has supported a wide variety of hardware platforms, including the IBM RS/6000 series and later POWER and PowerPC-based systems, IBM System i, System/370 mainframes, PS/2 personal computers, and the Apple Network Server.

AIX is based on UNIX System V with 4.3BSD-compatible extensions. It is one of six commercial operating systems that have versions certified to The Open Group's UNIX 03 standard (the others being macOS, Solaris, Inspur K-UX, HP-UX, and eulerOS).[2]

The AIX family of operating systems debuted in 1986, became the standard operating system for the RS/6000 series on its launch in 1990, and is still actively developed by IBM. It is currently supported on IBM Power Systems alongside IBM i and Linux.

AIX was the first operating system to have a journaling file system, and IBM has continuously enhanced the software with features such as processor, disk and network virtualization, dynamic hardware resource allocation (including fractional processor units), and reliability engineering ported from its mainframe designs.[3]


History

RS/6000 AIX file servers used for _ibm.com_ in the 1990s]]

Unix started life at AT&T's Bell Labs research center in the early 1970s, running on DEC minicomputers. By 1976, the operating system was in use at various academic institutions, including Princeton, where Tom Lyon and others ported it to the S/370, to run as a guest OS under VM/370.[4] This port would later grow out to become UTS,[5] a mainframe Unix offering by IBM's competitor Amdahl Corporation.[6] IBM's own involvement in Unix can be dated to 1979, when it assisted Bell Labs in doing its own Unix port to the 370 (to be used as a build host for the 5ESS switch's software). In the process, IBM made modifications to the TSS/370 hypervisor to better support Unix.[7]

It took until 1985 for IBM to offer its own Unix on the S/370 platform, IX/370, which was developed by Interactive Systems Corporation and intended by IBM to compete with Amdahl UTS.[8] The operating system offered special facilities for interoperating with PC/IX, Interactive/IBM's version of Unix for IBM PC compatible hardware, and was licensed at $10,000 per sixteen concurrent users.[9]

AIX Version 1, introduced in 1986 for the IBM RT PC workstation, was based on UNIX System V Releases 1 and 2. In developing AIX, IBM and Interactive Systems Corporation (whom IBM contracted) also incorporated source code from 4.2 and 4.3 BSD UNIX.

Among other variants, IBM later produced AIX Version 3 (also known as AIX/6000), based on System V Release 3, for their POWER-based RS/6000 platform. Since 1990, AIX has served as the primary operating system for the RS/6000 series (later renamed _IBM eServer pSeries_, then _IBM System p_, and now _IBM Power Systems_). AIX Version 4, introduced in 1994, added symmetric multiprocessing with the introduction of the first RS/6000 SMP servers and continued to evolve through the 1990s, culminating with AIX 4.3.3 in 1999. Version 4.1, in a slightly modified form, was also the standard operating system for the Apple Network Server systems sold by Apple Computer to complement the Macintosh line.

In the late 1990s, under Project Monterey, IBM and the Santa Cruz Operation planned to integrate AIX and UnixWare into a single 32-bit/64-bit multiplatform UNIX with particular emphasis on running on Intel IA-64 (Itanium) architecture CPUs. A beta test version of AIX 5L for IA-64 systems was released, but according to documents released in the _SCO v. IBM_ lawsuit, less than forty licenses for the finished Monterey Unix were ever sold before the project was terminated in 2002.[10] In 2003, the SCO Group alleged that (among other infractions) IBM had misappropriated licensed source code from UNIX System V Release 4 for incorporation into AIX; SCO subsequently withdrew IBM's license to develop and distribute AIX. IBM maintains that their license was irrevocable, and continued to sell and support the product until the litigation was adjudicated.

AIX was a component of the 2003 _SCO v. IBM_ lawsuit, in which the SCO Group filed a lawsuit against IBM, alleging IBM contributed SCO's intellectual property to the Linux codebase. The SCO Group, who argued they were the rightful owners of the copyrights covering the Unix operating system, attempted to revoke IBM's license to sell or distribute the AIX operating system. In March 2010, a jury returned a verdict finding that Novell, not the SCO Group, owns the rights to Unix.[11]

AIX 6 was announced in May 2007, and it ran as an open beta from June 2007 until the general availability (GA) of AIX 6.1 on November 9, 2007. Major new features in AIX 6.1 included full role-based access control, workload partitions (which enable application mobility), enhanced security (Addition of AES encryption type for NFS v3 and v4), and Live Partition Mobility on the POWER6 hardware.

AIX 7.1 was announced in April 2010, and an open beta ran until general availability of AIX 7.1 in September 2010. Several new features, including better scalability, enhanced clustering and management capabilities were added. AIX 7.1 includes a new built-in clustering capability called Cluster Aware AIX. AIX is able to organize multiple LPARs through the multipath communications channel to neighboring CPUs, enabling very high-speed communication between processors. This enables multi-terabyte memory address range and page table access to support global petabyte shared memory space for AIX POWER7 clusters so that software developers can program a cluster as if it were a single system, without using message passing (i.e. semaphore-controlled Inter-process Communication). AIX administrators can use this new capability to cluster a pool of AIX nodes. By default, AIX V7.1 pins kernel memory and includes support to allow applications to pin their kernel stack. Pinning kernel memory and the kernel stack for applications with real-time requirements can provide performance improvements by ensuring that the kernel memory and kernel stack for an application is not paged out.[12]

AIX 7.2[13] was announced in October 2015, and released in December 2015. AIX 7.2 principal feature is the Live Kernel Update capability which allows OS fixes to replace the entire AIX kernel with no impact to applications, by live migrating workloads to a temporary surrogate AIX OS partition while the original OS partition is patched. AIX 7.2 was also restructured to remove obsolete components. The networking component, bos.net.tcp.client was repackaged to allow additional installation flexibility. Unlike AIX 7.1, AIX 7.2 is only supported on systems based on POWER7 or later processors.


Supported hardware platforms

IBM RT PC

The original AIX (sometimes called AIX/RT) was developed for the IBM RT PC workstation by IBM in conjunction with Interactive Systems Corporation, who had previously ported UNIX System III to the IBM PC for IBM as PC/IX.[14] According to its developers, the AIX source (for this initial version) consisted of one million lines of code.[15] Installation media consisted of eight 1.2M floppy disks. The RT was based on the IBM ROMP microprocessor, the first commercial RISC chip. This was based on a design pioneered at IBM Research (the IBM 801) .

One of the novel aspects of the RT design was the use of a microkernel, called Virtual Resource Manager (VRM). The keyboard, mouse, display, disk drives and network were all controlled by a microkernel. One could "hotkey" from one operating system to the next using the Alt-Tab key combination. Each OS in turn would get possession of the keyboard, mouse and display. Besides AIX v2, the PICK OS also included this microkernel.

Much of the AIX v2 kernel was written in the PL/8 programming language, which proved troublesome during the migration to AIX v3. AIX v2 included full TCP/IP networking, as well as SNA and two networking file systems: NFS, licensed from Sun Microsystems, and Distributed Services (DS). DS had the distinction of being built on top of SNA, and thereby being fully compatible with DS on the IBM midrange AS/400 and mainframe systems. For the graphical user interfaces, AIX v2 came with the X10R3 and later the X10R4 and X11 versions of the X Window System from MIT, together with the Athena widget set. Compilers for Fortran and C were available.

IBM PS/2 series

AIX PS/2 (also known as AIX/386) was developed by Locus Computing Corporation under contract to IBM.[16] AIX PS/2, first released in October 1988,[17] ran on IBM PS/2 personal computers with Intel 386 and compatible processors.

The product was announced in September 1988 with a baseline tag price of $595, although some utilities like uucp were included in a separate Extension package priced at $250. nroff and troff for AIX were also sold separately in a Text Formatting System package priced at $200. The TCP/IP stack for AIX PS/2 retailed for another $300. The X Window package was priced at $195, while the C and FORTRAN compilers each had a price tag of $275. Locus also made available their DOS Merge virtual machine environment for AIX, which could run MS DOS 3.3 applications inside AIX; DOS Merge was sold separately for another $250.[18] IBM also offered a $150 AIX PS/2 DOS Server Program, which provided file server and print server services for client computers running PC DOS 3.3.[19]

The last version of PS/2 AIX is 1.3. It was released in 1992 and announced to add support for non-IBM (non-microchannel) computers as well.[20] Support for PS/2 AIX ended in March 1995.[21]

IBM mainframes

In 1988, IBM announced AIX/370, also developed by Locus Computing. AIX/370 was IBM's fourth attempt to offer Unix-like functionality for their mainframe line, specifically the System/370 (the prior versions were a TSS/370-based Unix system developed jointly with AT&T c.1980,[22] a VM/370-based system named VM/IX developed jointly with Interactive Systems Corporation c.1984, and a VM/370-based version of TSS/370 named IX/370 which was upgraded to be compatible with Unix System V). AIX/370 was released in 1990 with functional equivalence to System V Release 2 and 4.3BSD as well as IBM enhancements. With the introduction of the ESA/390 architecture, AIX/370 was replaced by AIX/ESA in 1991, which was based on OSF/1, and also ran on the System/390 platform. This development effort was made partly to allow IBM to compete with Amdahl UTS. Unlike AIX/370, AIX/ESA ran both natively as the host operating system, and as a guest under VM. AIX/ESA, while technically advanced, had little commercial success, partially because UNIX functionality was added as an option to the existing mainframe operating system, MVS, which became MVS/ESA OpenEdition in 1999.

IA-64 systems

As part of Project Monterey, IBM released a beta test version of AIX 5L for the IA-64 (Itanium) architecture in 2001, but this never became an official product due to lack of interest.[23]

Apple Network Servers

The Apple Network Server (ANS) systems were PowerPC-based systems designed by Apple Computer to have numerous high-end features that standard Apple hardware did not have, including swappable hard drives, redundant power supplies, and external monitoring capability. These systems were more or less based on the Power Macintosh hardware available at the time but were designed to use AIX (versions 4.1.4 or 4.1.5) as their native operating system in a specialized version specific to the ANS called AIX for Apple Network Servers.

AIX was only compatible with the Network Servers and was not ported to standard Power Macintosh hardware. It should not be confused with A/UX, Apple's earlier version of Unix for 68k-based Macintoshes.

POWER ISA/PowerPC/Power ISA-based systems

servers running _ibm.com_ in early 1998]] servers running _ibm.com_ in early 1998]]

The release of AIX version 3 (sometimes called AIX/6000) coincided with the announcement of the first POWER1-based IBM RS/6000 models in 1990.

AIX v3 innovated in several ways on the software side. It was the first operating system to introduce the idea of a journaling file system, JFS, which allowed for fast boot times by avoiding the need to ensure the consistency of the file systems on disks (see fsck) on every reboot. Another innovation was shared libraries which avoid the need for static linking from an application to the libraries it used. The resulting smaller binaries used less of the hardware RAM to run, and used less disk space to install. Besides improving performance, it was a boon to developers: executable binaries could be in the tens of kilobytes instead of a megabyte for an executable statically linked to the C library. AIX v3 also scrapped the microkernel of AIX v2, a contentious move that resulted in v3 containing no PL/I code and being somewhat more "pure" than v2.

Other notable subsystems included:

-   IRIS GL, a 3D rendering library, the progenitor of OpenGL. IRIS GL was licensed by IBM from SGI in 1987, then still a fairly small company, which had sold only a few thousand machines at the time. SGI also provided the low-end graphics card for the RS/6000, capable of drawing 20,000 gouraud-shaded triangles per second. The high-end graphics card was designed by IBM, a follow-on to the mainframe-based IBM 5080, capable of rendering 990,000 vectors per second.
-   PHIGS, another 3D rendering API, popular in automotive CAD/CAM circles, and at the core of CATIA.
-   Full implementation of version 11 of the X Window System, together with Motif as the recommended widget collection and window manager.
-   Network file systems: NFS from Sun; AFS, the Andrew File System; and DFS, the Distributed File System.
-   NCS, the Network Computing System, licensed from Apollo Computer (later acquired by HP).
-   DPS on-screen display system. This was notable as a "plan B" in case the X11+Motif combination failed in the marketplace. However, it was highly proprietary, supported only by Sun, NeXT, and IBM. This cemented its failure in the marketplace in the face of the open systems challenge of X11+Motif and its lack of 3D capability.

, AIX runs on IBM Power, System p, System i, System p5, System i5, eServer p5, eServer pSeries and eServer i5 server product lines, as well as IBM BladeCenter blades[24] and IBM PureFlex compute nodes.

POWER7 AIX features

AIX 7.1 fully exploits systems based on POWER7 processors include the Active Memory Expansion (AME) feature, which increases system flexibility where system administrators can configure logical partitions (LPARs) to use less physical memory. For example, an LPAR running AIX appears to the OS applications to be configured with 80 GB of physical memory but the hardware actually only consumes 60 GB of physical memory. Active Memory Expansion is a virtual memory compression system which employs memory compression technology to transparently compress in-memory data, allowing more data to be placed into memory and thus expanding the memory capacity of POWER7 systems. Using Active Memory Expansion can improve system utilization and increase a system’s throughput. AIX 7 automatically manages the size of memory pages used to automatically use 4 KB, 64 KB or a combination of those page sizes. This self-tuning feature results in optimized performance without administrative effort.

POWER8 AIX features

AIX 7.2 exploits POWER8 hardware features including accelerators and eight-way hardware multithreading.


Versions

Version history

+---------+------------------+-------------------------+
| Version | Release date[25] | End of support date[26] |
+=========+==================+=========================+
|         |                  | 2012-04-30              |
+---------+------------------+-------------------------+
|         |                  |                         |
+---------+------------------+-------------------------+
|         |                  | 2017-04-30              |
+---------+------------------+-------------------------+
|         |                  | 2022-04-30              |
+---------+------------------+-------------------------+
|         |                  |                         |
+---------+------------------+-------------------------+
|         |                  |                         |
+---------+------------------+-------------------------+

POWER/PowerPC releases

-   AIX V7.2, October 5, 2015[27]
    -   Live update for Interim Fixes, Service Packs and Technology Levels replaces the entire AIX kernel without impacting applications
    -   Flash based filesystem caching
    -   Cluster Aware AIX automation with repository replacement mechanism
    -   SRIOV-backed VNIC, or dedicated VNIC virtualized network adapter support
    -   RDSv3 over RoCE adds support of the Oracle RDSv3 protocol over the Mellanox Connect RoCE adapters
    -   Requires POWER7 or newer CPUs
-   AIX V7.1, September 10, 2010[28]
    -   Support for 256 cores / 1024 threads in a single LPAR
    -   The ability to run AIX V5.2 or V5.3 inside of a Workload Partition
    -   An XML profile based system configuration management utility
    -   Support for export of Fibre Channel adapters to WPARs
    -   VIOS disk support in a WPAR
    -   Cluster Aware AIX
    -   AIX Event infrastructure
    -   Role-based access control (RBAC) with domain support for multi-tenant environments
-   AIX V6.1, November 9, 2007[29]
    -   Workload Partitions (WPARs) operating system-level virtualization
    -   Live Application Mobility
    -   Live Partition Mobility
    -   Security
        -   Role Based Access Control RBAC
        -   AIX Security Expert a system and network security hardening tool
        -   Encrypting JFS2 filesystem
        -   Trusted AIX
        -   Trusted Execution
    -   Integrated Electronic Service Agent for auto error reporting
    -   Concurrent Kernel Maintenance
    -   Kernel exploitation of POWER6 storage keys
    -   ProbeVue dynamic tracing
    -   Systems Director Console for AIX
    -   Integrated filesystem snapshot
    -   Requires POWER4 or newer CPUs
    -   AIX 6 withdrawn from Marketing effective April 2016 and from Support effective April, 2017[30]
-   AIX 5L 5.3, August 13, 2004,[31] end of support April 30, 2012
    -   NFS Version 4
    -   Advanced Accounting
    -   Virtual SCSI
    -   Virtual Ethernet
    -   Exploitation of Simultaneous multithreading (SMT)
    -   Micro-Partitioning enablement
    -   POWER5 exploitation
    -   JFS2 quotas
    -   Ability to shrink a JFS2 filesystem
    -   Kernel scheduler has been enhanced to dynamically increase and decrease the use of virtual processors.
-   AIX 5L 5.2, October 18, 2002,[32] end of support April 30, 2009[33]
    -   Ability to run on the IBM BladeCenter JS20 with the PowerPC 970
    -   Minimum level required for POWER5 hardware
    -   MPIO for Fibre Channel disks
    -   iSCSI Initiator software
    -   Participation in Dynamic LPAR
    -   Concurrent I/O (CIO) feature introduced for JFS2 released in Maintenance Level 01 in May 2003[34]
-   AIX 5L 5.1, May 4, 2001, end of support April 1, 2006[35]
    -   Ability to run on an IA-64 architecture processor, although this never went beyond beta.[36]
    -   Minimum level required for POWER4 hardware and the last release that worked on the Micro Channel architecture
    -   64-bit kernel, installed but not activated by default
    -   JFS2
    -   Ability to run in a Logical Partition on POWER4
    -   The L stands for Linux affinity
    -   Trusted Computing Base (TCB)
    -   Support for mirroring with striping
-   AIX 4.3.3, September 17, 1999
    -   Online backup function
    -   Workload Manager (WLM)
    -   Introduction of topas utility
-   AIX 4.3.2, October 23, 1998
-   AIX 4.3.1, April 24, 1998
    -   First TCSEC security evaluation, completed December 18, 1998[37]
-   AIX 4.3, October 31, 1997
    -   Ability to run on 64-bit architecture CPUs
    -   IPv6
    -   Web-based System Manager
-   AIX 4.2.1, April 25, 1997
    -   NFS Version 3
    -   Y2K-compliant
-   AIX 4.2, May 17, 1996
-   AIX 4.1.5, November 8, 1996
-   AIX 4.1.4, October 20, 1995
-   AIX 4.1.3, July 7, 1995
    -   CDE 1.0 became the default GUI environment, replacing Motif Window Manager.
-   AIX 4.1.1, October 28, 1994
-   AIX 4.1, August 12, 1994
    -   AIX Ultimedia Services introduced (multimedia drivers and applications)
-   AIX 4.0, 1994
    -   Run on RS/6000 systems with PowerPC processors and PCI busses.
-   AIX 3.2 1992
-   AIX 3.1, (General Availability) February 1990
    -   Journaled File System (JFS) filesystem type
-   AIX 3.0 1989 (Early Access)
    -   LVM (Logical Volume Manager) was incorporated into OSF/1, and in 1995 for HP-UX,[38] and the Linux LVM implementation is similar to the HP-UX LVM implementation.[39]
    -   SMIT was introduced.

IBM System/370 releases

IBM PS/2 releases

-   AIX PS/2 v1.3, October 1992
    -   Withdrawn from sale in US, March 1995
    -   Patches supporting IBM ThinkPad 750C family of notebook computers, 1994
    -   Patches supporting non PS/2 hardware and systems, 1993
-   AIX PS/2 v1.2.1, May 1991
-   AIX PS/2 v1.2, March 1990
-   AIX PS/2 v1.1, March 1989

 AIX PS/2 (1-16 User Option)               $ 795
 AIX PS/2 (1-2 User Option)                  595
 AIX PS/2 Extensions                         275
 AIX PS/2 DOS Merge                          275
 AIX PS/2 Usability Services                 275
 AIX PS/2 Text Formatting System             220
 AIX PS/2 X-Windows                          214
 AIX PS/2 VS FORTRAN                         302
 AIX PS/2 VS Pascal                          302
 AIX PS/2 C Language                         302
 AIX PS/2 Application
   Development Toolkit                       192
 AIX PS/2 Workstation
   Host Interface Program                    441
 AIX PS/2 Transmission Control
   Protocol/Internet Protocol (TCP/IP)       330
 AIX PS/2 INmail (1)/INed (2)/INnet (1)/FTP  275
 AIX Access for DOS Users                    164
 X-Windows for IBM DOS                       214

IBM RT releases

-   AIX RT v2.2.1, March 1991
-   AIX RT v2.2, March 1990
-   AIX RT v2.1, March 1989
    -   X-Windows included on installation media
-   AIX RT v1.1, 1986


User interfaces

, AIX's default graphical user interface ]]

The default shell was Bourne shell up to AIX version 3, but was changed to KornShell (ksh88) in version 4 in view of XPG4 and POSIX compliance.[40]

Graphical

The Common Desktop Environment (CDE) is AIX's default graphical user interface. As part of Linux Affinity and the free AIX Toolbox for Linux Applications (ATLA), open-source KDE Plasma Workspaces and GNOME desktop are also available.

System Management Interface Tool

SMIT is the System Management Interface Tool for AIX. It allows a user to navigate a menu hierarchy of commands, rather than using the command line. Invocation is typically achieved with the command smit. Experienced system administrators make use of the F6 function key which generates the command line that SMIT will invoke to complete it. SMIT also generates a log of commands that are performed in the smit.script file. The smit.script file automatically records the commands with the command flags and parameters used. The smit.script file can be used as an executable shell script to rerun system configuration tasks. SMIT also creates the smit.log file, which contains additional detailed information that can be used by programmers in extending the SMIT system.

smit and smitty refer to the same program, though smitty invokes the text-based version, while smit will invoke an X Window System based interface if possible; however, if smit determines that X Window System capabilities are not present, it will present the text-based version instead of failing. Determination of X Window System capabilities is typically performed by checking for the existence of the DISPLAY variable.


Database

OBJECT DATA MANAGER (ODM) is a database of system information integrated into AIX,[41][42] analogous to the registry in Microsoft Windows.[43] A good understanding of the ODM is essential for managing AIX systems.[44]

Data managed in ODM is stored and maintained as objects with associated attributes.[45] Interaction with ODM is possible via application programming interface (API) library for programs, and command-line utilities such us _odmshow_, _odmget_, _odmadd_, _odmchange_ and _odmdelete_ for shell scripts and users. SMIT and its associated AIX commands can also be used to query and modify information in the ODM.[46]

Example of information stored in the ODM database are:

-   Network configuration
-   Logical volume management configuration
-   Installed software information
-   Information for logical devices or software drivers
-   List of all AIX supported devices
-   Physical hardware devices installed and their configuration
-   Menus, screens and commands that SMIT uses


See also

-   AOS, IBM's educational-market port of 4.3BSD
-   IBM PowerHA SystemMirror (formerly HACMP)
-   List of Unix systems
-   nmon
-   Operating systems timeline
-   Service Update Management Assistant
-   Vital Product Data (VPD)


References


External links

-   IBM AIX
-   AIX TL and SP roadmap
-   IBM AIX version comparison chart
-   AIX Release Life Cycle View
-   AIX support lifecycle information
-   AIX Strength to Strength, summary of new functional enhancements in AIX and related products.
-   AIX Service and support best practices
-   AIX Linkedin group
-   AIX Fix Central
-   AIX User Groups
-   Submit AIX Request for Enhancements
-   AIX Toolbox for Linux Applications
-   AIX version 7.2 Knowledge Center
-   AIX version 7.1 knowledge center
-   AIX version 6.1 information center
-   AIX version 5.3 Documentation
-   AIX Virtual User Group
-   AIX/ESA V2R2 General Information
-   IBM Systems AIX Magazine
-   IBM Electronic Service Agent
-   AIX Health Check
-   Rootvg.net - Independent Portal for AIX & POWER
-   AIX shell accounts
-   AIX Commands, Tools, Scripts and Explanations
-   80-page marketing booklet from 1989 explaining IBM's AIX vision at the time
-   ODM programming documentation at IBM
-   Object Data Manager (ODM) in AIX 6.1

Category:IBM operating systems Category:Power ISA operating systems Category:PowerPC operating systems IBM Aix Category:Object-oriented database management systems

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

[25] https://www-01.ibm.com/support/docview.wss?uid=isg3T1012517 AIX support lifecycle information

[26] https://www-01.ibm.com/software/support/lifecycleapp/PLCSearch.wss?q=aix&ibm-search=Search AIX Software lifecycle

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35] IBM Software Support Lifecycle (XML)

[36]

[37]

[38]

[39] http://www.usenix.org/events/usenix01/freenix01/full_papers/teigland/teigland_html/index.html

[40]

[41]

[42]

[43]

[44]

[45]

[46]