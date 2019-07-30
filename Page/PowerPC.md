POWERPC (with the backronym PERFORMANCE OPTIMIZATION WITH ENHANCED RISC – PERFORMANCE COMPUTING, sometimes abbreviated as PPC) is a reduced instruction set computer (RISC) instruction set architecture (ISA) created by the 1991 Apple–IBM–Motorola alliance, known as _AIM_. PowerPC, as an evolving instruction set, has since 2006 been named Power ISA, while the old name lives on as a trademark for some implementations of Power Architecture-based processors.

PowerPC was the cornerstone of AIM's PReP and Common Hardware Reference Platform initiatives in the 1990s. Originally intended for personal computers, the architecture is well known for being used by Apple's Power Macintosh, PowerBook, iMac, iBook, and Xserve lines from 1994 until 2006, when Apple migrated to Intel's x86. It has since become a niche in personal computers, but remains popular for embedded and high-performance processors. Its use in 7th generation of video game consoles and embedded applications provided an array of uses. In addition, PowerPC CPUs are still used in AmigaOne and third party AmigaOS 4 personal computers.

PowerPC is largely based on IBM's earlier POWER instruction set architecture, and retains a high level of compatibility with it; the architectures have remained close enough that the same programs and operating systems will run on both if some care is taken in preparation; newer chips in the POWER series use the Power ISA.


History

The history of RISC began with IBM's 801 research project, on which John Cocke was the lead developer, where he developed the concepts of RISC in 1975–78. 801-based microprocessors were used in a number of IBM embedded products, eventually becoming the 16-register IBM ROMP processor used in the IBM RT PC. The RT PC was a rapid design implementing the RISC architecture. Between the years of 1982–1984, IBM started a project to build the fastest microprocessor on the market; this new 32-bit architecture became referred to as the _America Project_ throughout its development cycle, which lasted for approximately 5–6 years. The result is the POWER instruction set architecture, introduced with the RISC System/6000 in early 1990.

The original POWER microprocessor, one of the first superscalar RISC implementations, is a high performance, multi-chip design. IBM soon realized that a single-chip microprocessor was needed in order to scale its RS/6000 line from lower-end to high-end machines. Work began on a one-chip POWER microprocessor, designated the RSC (RISC Single Chip). In early 1991, IBM realized its design could potentially become a high-volume microprocessor used across the industry.

Apple and Motorola involvement

Apple had already realized the limitations and risks of its dependency upon a single CPU vendor at a time when Motorola was falling behind on delivering the 68040 CPU. Furthermore, Apple had conducted its own research and made an experimental quad-core CPU design called Aquarius,[1] which convinced the company's technology leadership that the future of computing was in the RISC methodology.[2] IBM approached Apple with the goal of collaborating on the development of a family of single-chip microprocessors based on the POWER architecture. Soon after, Apple, being one of Motorola's largest customers of desktop-class microprocessors,[3] asked Motorola to join the discussions due to their long relationship, Motorola having had more extensive experience with manufacturing high-volume microprocessors than IBM, and to form a second source for the microprocessors. This three-way collaboration between Apple, IBM, and Motorola became known as the AIM alliance.

In 1991, the PowerPC was just one facet of a larger alliance among these three companies. At the time, most of the personal computer industry was shipping systems based on the Intel 80386 and 80486 chips, which have a complex instruction set computer (CISC) architecture, and development of the Pentium processor was well underway. The PowerPC chip was one of several joint ventures involving the three alliance members, in their efforts to counter the growing Microsoft-Intel dominance of personal computing.

For Motorola, POWER looked like an unbelievable deal. It allowed the company to sell a widely tested and powerful RISC CPU for little design cash on its own part. It also maintained ties with an important customer, Apple, and seemed to offer the possibility of adding IBM too, which might buy smaller versions from Motorola instead of making its own.

At this point Motorola already had its own RISC design in the form of the 88000, which was doing poorly in the market. Motorola was doing well with its 68000 family and the majority of the funding was focused on this. The 88000 effort was somewhat starved for resources.

The 88000 was already in production, however; Data General was shipping 88000 machines and Apple already had 88000 prototype machines running. The 88000 had also achieved a number of embedded design wins in telecom applications. If the new POWER one-chip version could be made bus-compatible at a hardware level with the 88000, that would allow both Apple and Motorola to bring machines to market far faster since they would not have to redesign their board architecture.

The result of these various requirements is the PowerPC (_performance computing_) specification. The differences between the earlier POWER instruction set and that of PowerPC is outlined in Appendix E of the manual for PowerPC ISA v.2.02.[4]

Operating systems

Since 1991, IBM had a long-standing desire for a unifying operating system that would simultaneously host all existing operating systems as personalities upon one microkernel. From 1991 to 1995, the company designed and aggressively evangelized what would become Workplace OS, primarily targeting PowerPC.[5]

When the first PowerPC products reached the market, they were met with enthusiasm. In addition to Apple, both IBM and the Motorola Computer Group offered systems built around the processors. Microsoft released Windows NT 3.51 for the architecture, which was used in Motorola's PowerPC servers, and Sun Microsystems offered a version of its Solaris OS. IBM ported its AIX Unix. Workplace OS featured a new port of OS/2 (with Intel emulation for application compatibility), pending a successful launch of the PowerPC 620. Throughout the mid-1990s, PowerPC processors achieved benchmark test scores that matched or exceeded those of the fastest x86 CPUs.

Ultimately, demand for the new architecture on the desktop never truly materialized. Windows, OS/2, and Sun customers, faced with the lack of application software for the PowerPC, almost universally ignored the chip. IBM's Workplace OS platform (and thus, OS/2 for PowerPC) was summarily canceled upon its first developers' release in December 1995 due to the simultaneous buggy launch of the PowerPC 620. The PowerPC versions of Solaris and Windows were discontinued after only a brief period on the market. Only on the Macintosh, due to Apple's persistence, did the PowerPC gain traction. To Apple, the performance of the PowerPC was a bright spot in the face of increased competition from Windows 95 and Windows NT-based PCs.

With the cancellation of Workplace OS, the general PowerPC platform (especially AIM's Common Hardware Reference Platform) was instead seen as a hardware-only compromise to run many operating systems one at a time upon a single unifying vendor-neutral hardware platform.[6]

In parallel with the alliance between IBM and Motorola, both companies had development efforts underway internally. The PowerQUICC line was the result of this work inside Motorola. The 4xx series of embedded processors was underway inside IBM. The IBM embedded processor business grew to nearly US$100 million in revenue and attracted hundreds of customers.

Breakup of AIM

Toward the close of the decade, manufacturing issues began plaguing the AIM alliance in much the same way they did Motorola, which consistently pushed back deployments of new processors for Apple and other vendors: first from Motorola in the 1990s with the PowerPC 7xx and 74xx processors, and IBM with the 64-bit PowerPC 970 processor in 2003. In 2004, Motorola exited the chip manufacturing business by spinning off its semiconductor business as an independent company called Freescale Semiconductor. Around the same time, IBM exited the 32-bit embedded processor market by selling its line of PowerPC products to Applied Micro Circuits Corporation (AMCC) and focusing on 64-bit chip designs, while maintaining its commitment of PowerPC CPUs toward game console makers such as Nintendo's GameCube and Wii, Sony's PlayStation 3 and Microsoft's Xbox 360, of which the latter two both use 64-bit processors. In 2005, Apple announced they would no longer use PowerPC processors in their Apple Macintosh computers, favoring Intel-produced processors instead, citing the performance limitations of the chip for future personal computer hardware specifically related to heat generation and energy usage, as well as the inability of IBM to move the 970 processor to the 3 GHz range. The IBM-Freescale alliance was replaced by an open standards body called Power.org. Power.org operates under the governance of the IEEE with IBM continuing to use and evolve the PowerPC processor on game consoles and Freescale Semiconductor focusing solely on embedded devices.

, PowerPC and Power ISAs]] IBM continues to develop PowerPC microprocessor cores for use in their application-specific integrated circuit (ASIC) offerings. Many high volume applications embed PowerPC cores.

The PowerPC specification is now handled by Power.org where IBM, Freescale, and AMCC are members. PowerPC, Cell and POWER processors are now jointly marketed as the Power Architecture. Power.org released a unified ISA, combining POWER and PowerPC ISAs into the new Power ISA v.2.03 specification and a new reference platform for servers called PAPR (Power Architecture Platform Reference).

, IBM's POWER microprocessors, which implement the Power ISA, are used by IBM in their IBM Power Systems, running IBM i, AIX, and Linux.

Generations

Many PowerPC designs are named and labeled by their apparent technology generation. That began with the "G3", which was an internal project name inside AIM for the development of what would become the PowerPC 750 family.[7] Apple popularized the term "G3" when they introduced Power Mac G3 and PowerBook G3 at an event at 10 November 1997. Motorola and Apple liked the moniker and used the term "G4" for the 7400 family introduced in 1998[8][9] and the Power Mac G4 in 1999.

At the time the G4 was launched, Motorola categorized all their PowerPC models (former, current and future) according to what generation they adhered to, even renaming the older 603e core "G2". Motorola had a G5 project that never came to fruition, but the name stuck and Apple reused it when the 970 family launched in 2003 even if those were designed and built by IBM.

PowerPC generations according to Motorola, ca 2000.[10]
    G1 - The 601, 500 and 800 family processors
    G2 - The 602, 603, 604, 620, 8200 and 5000 families
    G3 - The 750 and 8300 families
    G4 - The 7400 and 8400* families
    G5 - The 7500* and 8500 families (Motorola didn't use the G5 moniker after Apple usurped the name)
    G6 - The 7600*
    _(*) These designs didn't become real products._


Design features

The PowerPC is designed along RISC principles, and allows for a superscalar implementation. Versions of the design exist in both 32-bit and 64-bit implementations. Starting with the basic POWER specification, the PowerPC added:

-   Support for operation in both big-endian and little-endian modes; the PowerPC can switch from one mode to the other at run-time (see below). This feature is not supported in the PowerPC 970.
-   Single-precision forms of some floating point instructions, in addition to double-precision forms
-   Additional floating point instructions at the behest of Apple
-   A complete 64-bit specification that is backward compatible with the 32-bit mode
-   A fused multiply–add
-   A paged memory management architecture that is used extensively in server and PC systems.
-   Addition of a new memory management architecture called Book-E, replacing the conventional paged memory management architecture for embedded applications. Book-E is application software compatible with existing PowerPC implementations, but needs minor changes to the operating system.

Some instructions present in the POWER instruction set were deemed too complex and were removed in the PowerPC architecture. Some removed instructions could be emulated by the operating system if necessary. The removed instructions are:

-   Conditional moves
-   Load and store instructions for the quad-precision floating-point data type
-   String instructions.

Endian modes

Most PowerPC chips switch endianness via a bit in the MSR (machine state register), with a second bit provided to allow the OS to run with a different endianness. Accesses to the "inverted page table" (a hash table that functions as a TLB with off-chip storage) are always done in big-endian mode. The processor starts in big-endian mode.

In little-endian mode, the three lowest-order bits of the effective address are exclusive-ORed with a three bit value selected by the length of the operand. This is enough to appear fully little-endian to normal software. An operating system will see a warped view of the world when it accesses external chips such as video and network hardware. Fixing this warped view requires that the motherboard perform an unconditional 64-bit byte swap on all data entering or leaving the processor. Endianness thus becomes a property of the motherboard. An OS that operates in little-endian mode on a big-endian motherboard must both swap bytes and undo the exclusive-OR when accessing little-endian chips.

AltiVec operations, despite being 128-bit, are treated as if they were 64-bit. This allows for compatibility with little-endian motherboards that were designed prior to AltiVec.

An interesting side effect of this implementation is that a program can store a 64-bit value (the longest operand format) to memory while in one endian mode, switch modes, and read back the same 64-bit value without seeing a change of byte order. This will not be the case if the motherboard is switched at the same time.

Mercury Systems and Matrox ran the PowerPC in little-endian mode. This was done so that PowerPC devices serving as co-processors on PCI boards could share data structures with host computers based on x86. Both PCI and x86 are little-endian. OS/2 and Windows NT for PowerPC ran the processor in little-endian mode while Solaris, AIX and Linux ran in big endian.[11]

Some of IBM's embedded PowerPC chips use a per-page endianness bit. None of the previous applies to them.


Implementations

200 MHz]] video game console]] SunFire V20z]]

The first implementation of the architecture was the PowerPC 601, released in 1992, based on the RSC, implementing a hybrid of the POWER1 and PowerPC instructions. This allowed the chip to be used by IBM in their existing POWER1-based platforms, although it also meant some slight pain when switching to the 2nd generation "pure" PowerPC designs. Apple continued work on a new line of Macintosh computers based on the chip, and eventually released them as the 601-based _Power Macintosh_ on March 14, 1994.

IBM also had a full line of PowerPC based desktops built and ready to ship; unfortunately, the operating system that IBM had intended to run on these desktops—Microsoft Windows NT—was not complete by early 1993, when the machines were ready for marketing. Accordingly, and further because IBM had developed animosity toward Microsoft, IBM decided to port OS/2 to the PowerPC in the form of Workplace OS. This new software platform spent three years (1992 to 1995) in development and was canceled with the December 1995 developer release, because of the disappointing launch of the PowerPC 620. For this reason, the IBM PowerPC desktops did not ship, although the reference design (codenamed Sandalbow) based on the PowerPC 601 CPU was released as an RS/6000 model (_Byte_{{'}}s April 1994 issue included an extensive article about the Apple and IBM PowerPC desktops).

Apple, which also lacked a PowerPC based OS, took a different route. Utilizing the portability platform yielded by the secret Star Trek project, the company ported the essential pieces of their Mac OS operating system to the PowerPC architecture, and further wrote a 68k emulator that could run 68k based applications and the parts of the OS that had not been rewritten.

The second generation was "pure" and includes the "low end" PowerPC 603 and "high end" PowerPC 604. The 603 is notable due to its very low cost and power consumption. This was a deliberate design goal on Motorola's part, who used the 603 project to build the basic core for all future generations of PPC chips. Apple tried to use the 603 in a new laptop design but was unable due to the small 8 KiB level 1 cache. The 68000 emulator in the Mac OS could not fit in 8 KiB and thus slowed the computer drastically.[12][13] The 603e solved this problem by having a 16 KiB L1 cache, which allowed the emulator to run efficiently.

In 1993, developers at IBM's Essex Junction, Burlington, Vermont facility started to work on a version of the PowerPC that would support the Intel x86 instruction set directly on the CPU. While this was just one of several concurrent power architecture projects that IBM was working on, this chip began to be known inside IBM and by the media as the PowerPC 615. Profitability concerns and rumors of performance issues in the switching between the x86 and native PowerPC instruction sets resulted in the project being canceled in 1995 after only a limited number of chips were produced for in-house testing. Aside the rumors, the switching process took only 5 cycles, or the amount of time needed for the processor to empty its instruction pipeline. Microsoft also aided the processor's demise by refusing to support the PowerPC mode.[14]

The first 64-bit implementation is the PowerPC 620, but it appears to have seen little use because Apple didn't want to buy it and because, with its large die area, it was too costly for the embedded market. It was later and slower than promised, and IBM used their own POWER3 design instead, offering no 64-bit "small" version until the late-2002 introduction of the PowerPC 970. The 970 is a 64-bit processor derived from the POWER4 server processor. To create it, the POWER4 core was modified to be backward-compatible with 32-bit PowerPC processors, and a vector unit (similar to the AltiVec extensions in Motorola's 74xx series) was added.

IBM's RS64 processors are a family of chips implementing the "Amazon" variant of the PowerPC architecture. These processors are used in the RS/6000 and AS/400 computer families; the Amazon architecture includes proprietary extensions used by AS/400.[15] The POWER4 and later POWER processors implement the Amazon architecture and replaced the RS64 chips in the RS/6000 and AS/400 families.

IBM developed a separate product line called the "4xx" line focused on the embedded market. These designs included the 401, 403, 405, 440, and 460. In 2004, IBM sold their 4xx product line to Applied Micro Circuits Corporation (AMCC). AMCC continues to develop new high performance products, partly based on IBM's technology, along with technology that was developed within AMCC. These products focus on a variety of applications including networking, wireless, storage, printing/imaging and industrial automation.

Numerically, the PowerPC is mostly found in controllers in cars. For the automotive market, Freescale Semiconductor initially offered many variations called the MPC5xx family such as the MPC555, built on a variation of the 601 core called the 8xx and designed in Israel by MSIL (Motorola Silicon Israel Limited). The 601 core is single issue, meaning it can only issue one instruction in a clock cycle. To this they add various bits of custom hardware, to allow for I/O on the one chip. In 2004, the next-generation four-digit 55xx devices were launched for the automotive market. These use the newer e200 series of PowerPC cores.

Networking is another area where embedded PowerPC processors are found in large numbers. MSIL took the QUICC engine from the MC68302 and made the PowerQUICC MPC860. This was a very famous processor used in many Cisco edge routers in the late 1990s. Variants of the PowerQUICC include the MPC850, and the MPC823/MPC823e. All variants include a separate RISC microengine called the CPM that offloads communications processing tasks from the central processor and has functions for DMA. The follow-on chip from this family, the MPC8260, has a 603e-based core and a different CPM.

Honda also uses PowerPC processors for ASIMO.[16]

In 2003, BAE SYSTEMS Platform Solutions delivered the Vehicle-Management Computer for the F-35 fighter jet. This platform consists of dual PowerPCs made by Freescale in a triple redundant setup.[17]


Operating systems

Operating systems that work on the PowerPC architecture are generally divided into those that are oriented toward the general-purpose PowerPC systems, and those oriented toward the embedded PowerPC systems.

Operating systems with native support

-   AmigaOS 4
-   Apple classic Mac OS starting with System 7.1.2; and Copland, the original and canceled attempt at Mac OS 8
-   BeOS R5 Pro (BeBox, Macintosh and clones)
    -   Haiku, experimental[18]
-   IBM i; formerly named i5/OS, originally OS/400
-   MorphOS
-   Plan 9
-   Inferno; from Bell Labs and maintained by Vita Nuova Holdings
-   POSIX: Unix, Unix-like
    -   Apple Mac OS X through Mac OS X Leopard 10.5.8
    -   AIX
    -   Workplace OS, including a port of OS/2
    -   FreeBSD, 32-bit and 64-bit ports[19]
    -   NetBSD, port designations for PowerPC systems
        -   _ofppc_ released[20]
        -   _macppc_ released[21]
        -   _evbppc_ released[22]
        -   _prep_ released[23]
        -   _mvmeppc_ released[24]
        -   _bebox_ experimental[25]
        -   _amigappc_ very experimental[26]
    -   OpenBSD, 32-bit _macppc_ released port[27]
    -   Linux
        -   CRUX PPC, with 32/64-bit releases[28] supported through release 2.0.1.1. Support was dropped from subsequent releases.
        -   Debian:
            -   32-bit _powerpc_ a released port since _potato_[29] Support has been removed from Debian 9 Stretch[30]
            -   64-bit big-endian _ppc64_[31] in mostly stalled development
            -   64-bit little-endian _ppc64le_ a released port since _jessie_
        -   Fedora with 32/64-bit ppc releases[32] up to version 12. PowerPC is a Fedora secondary architecture from Fedora 16 onwards.
        -   Gentoo Linux, with 32-bit _ppc_ releases and 64-bit _ppc64_ releases[33]
        -   MintPPC, support for Old World and New World 32/64-bit Macs based on Linux Mint LXDE and Debian[34]
        -   MkLinux, Mach-kernel based distribution for older Macs, officially launched by Apple
        -   OpenSUSE, Full support for Old World and New World PowerMacs (32/64-bit), PS3 Cell, IBM POWER systems through the release of 11.1. Support was dropped from subsequent releases.
        -   Red Hat Enterprise Linux, 32-bit _ppc_ support was dropped following release of 5.11. Maintaining full support for 64-bit _ppc64_ in subsequent releases[35]
        -   SUSE Linux Enterprise Server
        -   Ubuntu, community supported for versions released after 6.10[36]
        -   Yellow Dog Linux, full support for 32/64-bit; PS3
    -   Solaris 2.5.1 PowerPC edition on the PReP platform
        -   OpenSolaris, experimental[37][38]
-   Windows NT 3.51 and 4.0
-   ReactOS, PowerPC port no longer under active development[39]
-   CellOS for PlayStation 3

Embedded

-   VxWorks
-   VxWorks 653
-   Nucleus RTOS
-   LiveDevices RTA-OSEKLive
-   Microware OS-9
-   MontaVista Linux
-   Wind River Linux
-   QNX
-   Cisco IOS
-   Cisco AireOS
-   LynxOS
-   PikeOS RTOS and virtualization platform from SYSGO
-   ELinOS embedded Linux
-   eCos
-   RTEMS
-   BlueCat embedded Linux from LynuxWorks
-   Operating System Embedded (OSE) from ENEA AB
-   Integrity
-   Juniper Networks Junos router and switch OS
-   FreeRTOS
-   Deos[40]
-   SCIOPTA[41] RTOS, certified according IEC61508, EN50128 and ISO26262
-   Embedded PowerPC Operating System by IBM[42]


Licensees

Companies that have licensed the 64-bit POWER or 32-bit PowerPC from IBM include:

32-bit PowerPC

-   Altera, field-programmable gate array (FPGA) manufacturer now Intel
-   Apple ('A' in original AIM alliance), has switched to Intel in early 2006
-   Applied Micro Circuits Corporation (AMCC)
-   Avago Technologies
-   BAE Systems for RAD750 processor, used in spacecraft and planetary landers
-   Cisco Systems for routers
-   Culturecom for V-Dragon CPU
-   Exponential Technology
-   Kumyoung used in karaoke player CPU (Muzen and Vivaus series)
-   LSI Logic
-   Motorola (was Freescale Semiconductor now NXP), as part of the original AIM alliance
-   Rapport for Kilocore 1025 core CPU
-   Samsung
-   STMicroelectronics for the SPC5xx series
-   Xilinx, FPGA maker, embedded PowerPC in the Virtex-II Pro, Virtex-4, and Virtex-5 FPGAs

64-bit PowerPC

-   P.A. Semi
-   Microsoft
-   Hindustan Computers Ltd.
-   Sony
-   Freescale Semiconductor
-   Toshiba

Game consoles

PowerPC processors were used in a number of now-discontinued video game consoles:

-   Bandai for its Bandai Pippin, designed by Apple Computer (1995)
-   Microsoft, for the Xbox 360 processor, Xenon[43]
-   Nintendo for the GameCube,[44] Wii, and Wii U processors
-   Sony and Toshiba, for the Cell processor (inside the PlayStation 3 and other devices)[45]

Desktop computers

The Power architecture is currently used in the following desktop computers:

-   Sam440ep, Sam440epFlex, based on an AMCC 440ep SoC, built by ACube Systems
-   Sam460ex, based on an AMCC 460ex SoC, built by ACube Systems
-   Nemo motherboard based around PA6T-1682M found in the AmigaOne X1000 from A-EON Technology
-   Cyrus motherboard based around Freescale Qoriq P5020 found in the AmigaOne X5000 from A-EON Technology
-   Tabor motherboard based around Freescale QorIQ P1022 found in the forthcoming AmigaOne A1222 from A-EON Technology
-   Talos II and Blackbird mainboards/workstations, based around the IBM Power9 Sforza architecture, built by Raptor Computing Systems

Embedded applications

The Power architecture is currently used in the following embedded applications:

-   National Instruments Smart Cameras for machine vision
-   Mars rover Curiosity


See also

-   Common Hardware Reference Platform (CHRP)
-   List of PowerPC processors
-   Power Architecture
-   Power Architecture Platform Reference (PAPR)
-   PowerOpen Environment
-   PowerPC Reference Platform (PReP)
-   RTEMS real-time operating system
-   Vasm, a free assembler


References


Further reading

-   -   -   Hoxey, Steve (editor) et al. _The PowerPC Compiler Writer's Guide_. Warthman Associates. .
-   Motorola. _Programming Environments Manual for 32-bit Implementations of the PowerPC Architecture_, a 640-page PDF manual. P/N MPCFPE32B/AD.
-   IBM (2000). _Book E: Enhanced PowerPC Architecture_ (3rd ed.)
-   -   _PowerPC Architecture_, an IBM article giving POWER and PowerPC history
-


External links

-   PPC Overview - an overview of PowerPC processors
-   OS/2 Warp, PowerPC Edition review by Michal Necasek
-   PowerPC Architecture History Diagram

Category:Computer-related introductions in 1991 Category:Instruction set architectures PowerPC_microprocessors

[1]

[2]

[3]

[4] PowerPC User Instruction Set Architecture Book I, version 2.02

[5]

[6]

[7] A G3 PowerPC superscalar low-power microprocessor

[8] G4 Is First PowerPC With AltiVec - Due Mid-1999, Motorola’s Next Chip Aims at Macintosh, Networking

[9] PowerPC G4 Architecture White Paper

[10] Fact Sheet - Motorola PowerPC Processor

[11] OS/2 for PowerPC Tidbits

[12]

[13]

[14]

[15]

[16]

[17]

[18] Haiku-files.org

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