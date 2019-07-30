ITANIUM ( ) is a family of 64-bit Intel microprocessors that implement the Intel Itanium architecture (formerly called IA-64). Intel markets the processors for enterprise servers and high-performance computing systems. The Itanium architecture originated at Hewlett-Packard (HP), and was later jointly developed by HP and Intel.

Itanium-based systems have been produced by HP (the HP Integrity Servers line) and several other manufacturers. In 2008, Itanium was the fourth-most deployed microprocessor architecture for enterprise-class systems, behind x86-64, Power ISA, and SPARC.[1]

In February 2017, Intel released the current generation, Kittson, to test customers, and in May began shipping in volume.[2] It is the last processor of the Itanium family.[3][4]

Intel officially announced the end of life and product discontinuance of the Itanium CPU family on January 30th, 2019.[5]


History

Development: 1989–2000

In 1989, HP determined that Reduced Instruction Set Computing (RISC) architectures were approaching a processing limit at one instruction per cycle. HP researchers investigated a new architecture, later named Explicitly Parallel Instruction Computing (EPIC), that allows the processor to execute multiple instructions in each clock cycle. EPIC implements a form of very long instruction word (VLIW) architecture, in which a single instruction word contains multiple instructions. With EPIC, the compiler determines in advance which instructions can be executed at the same time, so the microprocessor simply executes the instructions and does not need elaborate mechanisms to determine which instructions to execute in parallel.[6] The goal of this approach is twofold: to enable deeper inspection of the code at compile time to identify additional opportunities for parallel execution, and to simplify processor design and reduce energy consumption by eliminating the need for runtime scheduling circuitry.

HP believed that it was no longer cost-effective for individual enterprise systems companies such as itself to develop proprietary microprocessors, so it partnered with Intel in 1994 to develop the IA-64 architecture, derived from EPIC. Intel was willing to undertake a very large development effort on IA-64 in the expectation that the resulting microprocessor would be used by the majority of enterprise systems manufacturers. HP and Intel initiated a large joint development effort with a goal of delivering the first product, Merced, in 1998.[7]

During development, Intel, HP, and industry analysts predicted that IA-64 would dominate in servers, workstations, and high-end desktops, and eventually supplant RISC and complex instruction set computing (CISC) architectures for all general-purpose applications.[8][9] Compaq and Silicon Graphics decided to abandon further development of the Alpha and MIPS architectures respectively in favor of migrating to IA-64.[10]

Several groups ported operating systems for the architecture, including Microsoft Windows, OpenVMS, Linux, HP-UX, Solaris,[11][12][13] Tru64 UNIX,[14] and Monterey/64.[15] The latter three were canceled before reaching the market. By 1997, it was apparent that the IA-64 architecture and the compiler were much more difficult to implement than originally thought, and the delivery timeframe of Merced began slipping.[16]

Intel announced the official name of the processor, _Itanium_, on October 4, 1999.[17] Within hours, the name _Itanic_ had been coined on a Usenet newsgroup, a reference to the RMS _Titanic_, the "unsinkable" ocean liner that sank on her maiden voyage in 1912.[18] "Itanic" has since often been used by _The Register_,[19] and others,[20][21][22] to imply that the multibillion-dollar investment in Itanium—and the early hype associated with it—would be followed by its relatively quick demise.

Itanium (Merced): 2001

By the time Itanium was released in June 2001, its performance was not superior to competing RISC and CISC processors.[23] Itanium competed at the low-end (primarily four-CPU and smaller systems) with servers based on x86 processors, and at the high-end with IBM POWER and Sun Microsystems SPARC processors. Intel repositioned Itanium to focus on high-end business and HPC computing, attempting to duplicate x86's successful "horizontal" market (i.e., single architecture, multiple systems vendors). The success of this initial processor version was limited to replacing PA-RISC in HP systems, Alpha in Compaq systems and MIPS in SGI systems, though IBM also delivered a supercomputer based on this processor.[24] POWER and SPARC remained strong, while the 32-bit x86 architecture continued to grow into the enterprise space, building on economies of scale fueled by its enormous installed base.

Only a few thousand systems using the original _Merced_ Itanium processor were sold, due to relatively poor performance, high cost and limited software availability.[25] Recognizing that the lack of software could be a serious problem for the future, Intel made thousands of these early systems available to independent software vendors (ISVs) to stimulate development. HP and Intel brought the next-generation Itanium 2 processor to market a year later.

Itanium 2: 2002–2010

removed)]]

The ITANIUM 2 processor was released in 2002, and was marketed for enterprise servers rather than for the whole gamut of high-end computing. The first Itanium 2, code-named _McKinley_, was jointly developed by HP and Intel. It relieved many of the performance problems of the original Itanium processor, which were mostly caused by an inefficient memory subsystem. _McKinley_ contains 221 million transistors (of which 25 million are for logic), measured 19.5 mm by 21.6 mm (421 mm²) and was fabricated in a 180 nm, bulk CMOS process with six layers of aluminium metallization.[26]

In 2003, AMD released the Opteron CPU, which implements its own 64-bit architecture called AMD64. Opteron gained rapid acceptance in the enterprise server space because it provided an easy upgrade from x86. Under influence by Microsoft, Intel responded by implementing AMD's x86-64 instruction set architecture instead of IA-64 in its Xeon microprocessors in 2004, resulting in a new industry-wide _de facto_ standard.[27]

Intel released a new Itanium 2 family member, codenamed _Madison_, in 2003. Madison used a 130 nm process and was the basis of all new Itanium processors until Montecito was released in June 2006.

In March 2005, Intel announced that it was working on a new Itanium processor, codenamed _Tukwila_, to be released in 2007. Tukwila would have four processor cores and would replace the Itanium bus with a new Common System Interface, which would also be used by a new Xeon processor.[28] Later that year, Intel revised Tukwila's delivery date to late 2008.[29]

In November 2005, the major Itanium server manufacturers joined with Intel and a number of software vendors to form the Itanium Solutions Alliance to promote the architecture and accelerate software porting.[30] The Alliance announced that its members would invest $10 billion in Itanium solutions by the end of the decade.[31]

In 2006, Intel delivered _Montecito_ (marketed as the ITANIUM 2 9000 series), a dual-core processor that roughly doubled performance and decreased energy consumption by about 20 percent.[32]

Intel released the ITANIUM 2 9100 series, codenamed _Montvale_, in November 2007.[33] In May 2009, the schedule for Tukwila, its follow-on, was revised again, with release to OEMs planned for the first quarter of 2010.[34]

Itanium 9300 (Tukwila): 2010

The ITANIUM 9300 series processor, codenamed _Tukwila_, was released on February 8, 2010, with greater performance and memory capacity.[35]

The device uses a 65 nm process, includes two to four cores, up to 24 MB on-die caches, Hyper-Threading technology and integrated memory controllers. It implements double-device data correction, which helps to fix memory errors. Tukwila also implements Intel QuickPath Interconnect (QPI) to replace the Itanium bus-based architecture. It has a peak interprocessor bandwidth of 96 GB/s and a peak memory bandwidth of 34 GB/s. With QuickPath, the processor has integrated memory controllers and interfaces the memory directly, using QPI interfaces to directly connect to other processors and I/O hubs. QuickPath is also used on Intel processors using the _Nehalem_ microarchitecture, which possibly enabled Tukwila and Nehalem to use the same chipsets.[36] Tukwila incorporates four memory controllers, each of which supports multiple DDR3 DIMMs via a separate memory controller,[37] much like the Nehalem-based Xeon processor code-named _Beckton_.[38]

Itanium 9500 (Poulson): 2012

The Itanium 9500 series processor, codenamed _Poulson_, is the follow-on processor to Tukwila and was released on November 8, 2012.[39] According to Intel, it skips the 45 nm process technology and uses a 32 nm process technology. It features eight cores and has a 12-wide issue architecture, multithreading enhancements, and new instructions to take advantage of parallelism, especially in virtualization.[40][41][42] The Poulson L3 cache size is 32 MB. L2 cache size is 6 MB, 512 I KB, 256 D KB per core.[43] Die size is 544 mm², less than its predecessor Tukwila (698.75 mm²).[44][45]

At ISSCC 2011, Intel presented a paper called "A 32nm 3.1 Billion Transistor 12-Wide-Issue Itanium Processor for Mission Critical Servers."[46][47] Given Intel's history of disclosing details about Itanium microprocessors at ISSCC, this paper most likely referred to Poulson. Analyst David Kanter speculated that Poulson would use a new microarchitecture, with a more advanced form of multithreading that uses up to two threads, to improve performance for single threaded and multithreaded workloads.[48] Some information was also released at the Hot Chips conference.[49][50]

Information presented improvements in multithreading, resiliency improvements (Intel Instruction Replay RAS) and few new instructions (thread priority, integer instruction, cache prefetching, and data access hints).

Intel's Product Change Notification (PCN) 111456-01 lists four models of Itanium 9500 series CPU, which was later removed in a revised document.[51] The parts were later listed in Intel's Material Declaration Data Sheets (MDDS) database.[52] Intel later posted Itanium 9500 reference manual.[53]

The models are the following:[54][55]

    {| class="wikitable"

|- !Processor number||Frequency||Cache |- |9520||1.73 GHz||20MB |- |9540||2.13 GHz||24MB |- |9550||2.40 GHz||32MB |- |9560||2.53 GHz||32MB |}

_HP vs. Oracle_

During the 2012 _Hewlett-Packard Co. v. Oracle Corp._ support lawsuit, court documents unsealed by a Santa Clara County Court judge revealed that in 2008, Hewlett-Packard had paid Intel around $440 million to keep producing and updating Itanium microprocessors from 2009 to 2014. In 2010, the two companies signed another $250 million deal, which obliged Intel to continue making Itanium CPUs for HP's machines until 2017. Under the terms of the agreements, HP has to pay for chips it gets from Intel, while Intel launches Tukwila, Poulson, Kittson, and Kittson+ chips in a bid to gradually boost performance of the platform.[56][57]

Itanium 9700 (Kittson): 2017

Rumors of a successor to Poulson (code named _Kittson_) began to circulate in 2012–2013. This was at first associated with a forthcoming 22 nm process shrink, and later revised in the face of declining Itanium sales to a less-ambitious 32 nm node.[58] In April 2015, Intel, although it had not yet confirmed formal specifications, did confirm that it continued to work on the project.[59] Meanwhile, the aggressively multicore Xeon E7 platform displaced Itanium-based solutions in the Intel roadmap.[60]

In July 2016, the HP spin-off Hewlett Packard Enterprise (HPE) announced in Computer World that Kittson would be released mid-2017.[61][62] In February 2017, Intel reported that it was shipping Kittson to test customers, with plans to ship in volume later that year.[63]

Intel officially launched the Itanium 9700 series processor family on May 11, 2017.[64][65] Notably, Kittson has no microarchitecture improvements over Poulson, only higher clock speeds.[66]

Intel has announced that the 9700 series will be the last Itanium chips produced.[67][68]

The models are:[69]

    {| class="wikitable sortable"

|- !Processor number||Cores||Threads||Frequency||Cache |- |9720||4||8||1.73 GHz||20MB |- |9740||8||16||2.13 GHz||24MB |- |9750||4||8||2.53 GHz||32MB |- |9760||8||16||2.66 GHz||32MB |}


Market share

In comparison with its Xeon family of server processors, Itanium has never been a high-volume product for Intel. Intel does not release production numbers. One industry analyst estimated that the production rate was 200,000 processors per year in 2007.[70]

According to Gartner Inc., the total number of Itanium servers (not processors) sold by all vendors in 2007, was about 55,000. (It is unclear whether clustered servers counted as a single server or not.) This compares with 417,000 RISC servers (spread across all RISC vendors) and 8.4 million x86 servers. IDC reports that a total of 184,000 Itanium-based systems were sold from 2001 through 2007. For the combined POWER/SPARC/Itanium systems market, IDC reports that POWER captured 42% of revenue and SPARC captured 32%, while Itanium-based system revenue reached 26% in the second quarter of 2008.[71] According to an IDC analyst, in 2007, HP accounted for perhaps 80% of Itanium systems revenue.[72] According to Gartner, in 2008, HP accounted for 95% of Itanium sales.[73] HP's Itanium system sales were at an annual rate of $4.4Bn at the end of 2008, and declined to $3.5Bn by the end of 2009,[74] compared to a 35% decline in UNIX system revenue for Sun and an 11% drop for IBM, with an x86-64 server revenue increase of 14% during this period.

In December 2012, IDC released a research report stating that Itanium server shipments would remain flat through 2016, with annual shipment of 26,000 systems (a decline of over 50% compared to shipments in 2008).[75]


Hardware support

Systems

  Company   Latest product
  --------- ----------------
  name      from
  HP/HPE    2001
  Compaq    2001
  IBM       2001
  Dell      2001
  Hitachi   2001
  Unisys    2002
  SGI       2001
  Fujitsu   2005
  Bull      2002
  NEC       2002
  Inspur    2010
  Huawei    2012

  : Server manufacturers' Itanium products

By 2006, HP manufactured at least 80% of all Itanium systems, and sold 7,200 in the first quarter of 2006.[76] The bulk of systems sold were enterprise servers and machines for large-scale technical computing, with an average selling price per system in excess of US$200,000. A typical system uses eight or more Itanium processors.

By 2012, only a few manufacturers offered Itanium systems, including HP, Bull, NEC, Inspur and Huawei. In addition, Intel offered a chassis that could be used by system integrators to build Itanium systems.[77]

By 2015, only HP supplied Itanium-based systems.[78] With HP split in late 2015, Itanium systems (branded as Integrity) are handled by Hewlett-Packard Enterprise (HPE), with recent major update in 2017 (Integrity i6, and HP-UX 11i v3 Update 16). HPE also supports a few other operating systems, including Windows up to Server 2008 R2, Linux, OpenVMS and NonStop. Itanium is not affected by Spectre and Meltdown.[79]

Chipsets

The Itanium bus interfaces to the rest of the system via a chipset. Enterprise server manufacturers differentiate their systems by designing and developing chipsets that interface the processor to memory, interconnections, and peripheral controllers. The chipset is the heart of the system-level architecture for each system design. Development of a chipset costs tens of millions of dollars and represents a major commitment to the use of the Itanium. IBM created a chipset in 2003, and Intel in 2002, but neither of them developed chipsets to support newer technologies such as DDR2 or PCI Express.[80] Before "Tukwila" moved away from the FSB, chipsets supporting such technologies were manufactured by all Itanium server vendors, such as HP, Fujitsu, SGI, NEC, and Hitachi.

The "Tukwila" Itanium processor model had been designed to share a common chipset with the Intel Xeon processor EX (Intel's Xeon processor designed for four processor and larger servers). The goal was to streamline system development and reduce costs for server OEMs, many of which develop both Itanium- and Xeon-based servers. However, in 2013, this goal was pushed back to "evaluated for future implementation opportunities".[81]


Software support

Itanium is or was supported (i.e. Windows version can no longer be bought) by the following operating systems:

-   HP-UX 11i; an Intel 64 (x86-64) port was proposed, but later canceled.[82]
-   Windows family
    -   Windows XP 64-Bit Edition (Unsupported; first Windows edition to support)
    -   Windows Server 2003 (Unsupported)
    -   Windows Server 2008 (Extended support until January 14, 2020.[83] Extended support will only receive bug fixes and no new features, including support for future CPUs. This is the last version of Windows still with support for Itanium. Windows Server 2008 and Server 2008 R2 got a security update in middle of 2018.[84])
    -   Windows Server 2008 R2 (This was the last version of Windows to support Itanium.[85])
-   Linux distributions
    -   <!-- moved below to main text: Debian (unsupported

LTS doesn't apply to Itanium: last supported in Debian 7 / Wheezy,[86] development stopped in February 2014[87])-->

-   -   Gentoo[88]
    -   SUSE's SLES (unsupported as of SLES 12; supported by SLES 11 SP4[89])
    -   -   TurboLinux (was the first Linux to support with version 7 in 2001[90] )

-   FreeBSD[91][92] (unsupported; was supported in 10.4[93] (to October 2018 EOL) as: "Tier 2 through FreeBSD 10. Unsupported after."[94])
-   NetBSD (development branch only, but "no formal release is available".[95])
-   OpenVMS I64 ( to 2020[96]); an Intel 64 (x86-64) port is being developed.[97]
-   NonStop OS; an Intel 64 (x86-64) port was developed[98]
-   Bull GCOS 8[99]
-   NEC ACOS-4 [100] (in late September 2012, NEC announced a return from IA-64 to the previous NOAH line of proprietary mainframe processors for ACOS-4 .[101])

Microsoft announced that Windows Server 2008 R2 would be the last version of Windows Server to support the Itanium (support started with XP), and that it would also discontinue development of the Itanium versions of Visual Studio and SQL Server.[102] Likewise, Red Hat Enterprise Linux 5 (first released in March 2007) was the last Itanium edition of Red Hat Enterprise Linux[103] and Debian no longer supports Itanium officially (last release with official support was Debian 7 / Wheezy, and was not covered by Long Term Support (LTS), but unofficial support for newer Debian is still available in limited form via Debian Ports; last available kernel in wheezy-backports is Linux 3.14.0, which was released on March 30, 2014, but it is possible to manually update to latest 3.14.x version, or more recent kernel versions, like 4.17.17 as of September 2018) and in addition Canonical chose to not support Itanium for Ubuntu 10.04 LTS (released in April 2010, now discontinued).[104] HP will not be supporting or certifying Linux on Itanium 9300 (Tukwila) servers.[105]

In late September 2012, NEC announced a return from IA-64 to the previous NOAH line of proprietary mainframe processors, now produced in a quad-core variant on 40 nm, called NOAH-6.[106]

HP sells a virtualization technology for Itanium called Integrity Virtual Machines.

To allow more software to run on the Itanium, Intel supported the development of compilers optimized for the platform, especially its own suite of compilers.[107][108] Starting in November 2010, with the introduction of new product suites, the Intel Itanium Compilers were no longer bundled with the Intel x86 compilers in a single product. Intel offers Itanium tools and Intel x86 tools, including compilers, independently in different product bundles. GCC,[109][110] Open64 and Microsoft Visual Studio 2005 (and later)[111] are also able to produce machine code for Itanium. According to the Itanium Solutions Alliance over 13,000 applications were available for Itanium-based systems in early 2008,[112] though Sun has contested Itanium application counts in the past.[113] The ISA also supported Gelato, an Itanium HPC user group and developer community that ported and supported open-source software for Itanium.[114]

Emulation

Emulation is a technique that allows a computer to execute binary code that was compiled for a different type of computer. Before IBM's acquisition of QuickTransit in 2009, application binary software for IRIX/MIPS and Solaris/SPARC could run via type of emulation called "dynamic binary translation" on Linux/Itanium. Similarly, HP implemented a method to execute PA-RISC/HP-UX on the Itanium/HP-UX via emulation, to simplify migration of its PA-RISC customers to the radically different Itanium instruction set. Itanium processors can also run the mainframe environment GCOS from Groupe Bull and several x86 operating systems via instruction set simulators.


Competition

showing the representation of different families of micro-
processors in the TOP500 ranking list of supercomputer (1993–2015)]]

Itanium is aimed at the enterprise server and high-performance computing (HPC) markets. Other enterprise- and HPC-focused processor lines include Oracle's and Fujitsu's SPARC processors and IBM's POWER microprocessors. Measured by quantity sold, Itanium's most serious competition comes from x86-64 processors including Intel's own Xeon line and AMD's Opteron line. Since 2009, most servers were being shipped with x86-64 processors.[115]

In 2005, Itanium systems accounted for about 14% of HPC systems revenue, but the percentage has declined as the industry shifted to x86-64 clusters for this application.[116]

An October 2008 Gartner report on the Tukwila processor, stated that "...the future roadmap for Itanium looks as strong as that of any RISC peer like Power or SPARC."[117]


Supercomputers and high-performance computing

An Itanium-based computer first appeared on the list of the TOP500 supercomputers in November 2001.[118] The best position ever achieved by an _Itanium 2_ based system in the list was #2, achieved in June 2004, when Thunder (Lawrence Livermore National Laboratory) entered the list with an Rmax of 19.94 Teraflops. In November 2004, Columbia entered the list at #2 with 51.8 Teraflops, and there was at least one Itanium-based computer in the top 10 from then until June 2007. The peak number of Itanium-based machines on the list occurred in the November 2004 list, at 84 systems (16.8%); by June 2012, this had dropped to one system (0.2%),[119] and no Itanium system remained on the list in November 2012.


Processors

Released processors

The Itanium processors show a progression in capability. Merced was a proof of concept. McKinley dramatically improved the memory hierarchy and allowed Itanium to become reasonably competitive. Madison, with the shift to a 130 nm process, allowed for enough cache space to overcome the major performance bottlenecks. Montecito, with a 90 nm process, allowed for a dual-core implementation and a major improvement in performance per watt. Montvale added three new features: core-level lockstep, demand-based switching and front-side bus frequency of up to 667 MHz.

[TABLE]


Market reception

High-end server market

zx6000 system board with dual Itanium 2 processors]]

When first released in 2001, Itanium's performance was disappointing compared to better-established RISC and CISC processors.[120][121] Emulation to run existing x86 applications and operating systems was particularly poor, with one benchmark in 2001 reporting that it was equivalent at best to a 100 MHz Pentium in this mode (1.1 GHz Pentiums were on the market at that time).[122] Itanium failed to make significant inroads against IA-32 or RISC, and suffered further following the arrival of x86-64 systems which offered greater compatibility with older x86 applications.

In a 2009 article on the history of the processor — "How the Itanium Killed the Computer Industry" — journalist John C. Dvorak reported "This continues to be one of the great fiascos of the last 50 years".[123] Tech columnist Ashlee Vance commented that the delays and underperformance "turned the product into a joke in the chip industry ".[124] In an interview, Donald Knuth said "The Itanium approach...was supposed to be so terrific—until it turned out that the wished-for compilers were basically impossible to write."[125]

Both Red Hat and Microsoft announced plans to drop Itanium support in their operating systems due to lack of market interest;[126][127] however, other Linux distributions such as Gentoo and Debian remain available for Itanium. On March 22, 2011, Oracle Corporation announced that it would no longer develop new products for HP-UX on Itanium, although it would continue to provide support for existing products.[128] Following this announcement, HP sued Oracle for breach of contract, arguing that Oracle had violated conditions imposed during settlement over Oracle's hiring of former HP CEO Mark Hurd as its co-CEO, requiring the vendor to support Itanium on its software "until such time as HP discontinues the sales of its Itanium-based servers",[129] and that the breach had harmed its business. In 2012, a court ruled in favor of HP, and ordered Oracle to resume its support for Itanium. In June 2016, Hewlett-Packard Enterprise (the corporate successor to HP's server business) was awarded $3 billion in damages from the lawsuit.[130][131]

A former Intel official reported that the Itanium business had become profitable for Intel in late 2009.[132] By 2009, the chip was almost entirely deployed on servers made by HP, which had over 95% of the Itanium server market share,[133] making the main operating system for Itanium HP-UX. On March 22, 2011, Intel reaffirmed its commitment to Itanium with multiple generations of chips in development and on schedule.[134]

Other markets

zx6000, an Itanium 2-based Unix workstation ]]

Although Itanium did attain limited success in the niche market of high-end computing, Intel had originally hoped it would find broader acceptance as a replacement for the original x86 architecture.[135]

AMD chose a different direction, designing the less radical x86-64, a 64-bit extension to the existing x86 architecture, which Microsoft then supported, forcing Intel to introduce the same extensions in its own x86-based processors.[136] These designs can run existing 32-bit applications at native hardware speed, while offering support for 64-bit memory addressing and other enhancements to new applications.[137] This architecture has now become the predominant 64-bit architecture in the desktop and portable market. Although some Itanium-based workstations were initially introduced by companies such as SGI, they are no longer available.


Timeline

1989

-   HP begins investigating EPIC.[138]

1994

-   June: HP and Intel announce partnership.

1995

-   September: HP, Novell, and SCO announce plans for a "high volume UNIX operating system" to deliver "64-bit networked computing on the HP/Intel architecture".[139]

1996

-   October: Compaq announces it will use IA-64.[140]

1997

-   June: IDC predicts IA-64 systems sales will reach $38bn/yr by 2001.[141]
-   October: Dell announces it will use IA-64.

-   December: Intel and Sun announce joint effort to port Solaris to IA-64.[142][143][144]

1998

-   March: SCO admits HP/SCO Unix alliance is now dead.
-   June: IDC predicts IA-64 systems sales will reach $30bn/yr by 2001.[145]
-   June: Intel announces Merced will be delayed, from second half of 1999 to first half of 2000.[146]
-   September: IBM announces it will build Merced-based machines.[147]
-   October: Project Monterey is formed to create a common UNIX for IA-64.

1999

-   February: Project Trillian is formed to port Linux to IA-64.
-   August: IDC predicts IA-64 systems sales will reach $25bn/yr by 2002.[148]
-   October: Intel announces the _Itanium_ name.
-   October: the term _Itanic_ is first used in _The Register_.[149]

2000

-   February: Project Trillian delivers source code.
-   June: IDC predicts Itanium systems sales will reach $25bn/yr by 2003.[150]
-   July: Sun and Intel drop Solaris-on-Itanium plans.[151]
-   August: AMD releases specification for x86-64, a set of 64-bit extensions to Intel's own x86 architecture intended to compete with IA-64. It will eventually market this under the name "AMD64".

2001

-   June: IDC predicts Itanium systems sales will reach $15bn/yr by 2004.[152]
-   June: Project Monterey dies.
-   July: Itanium is released.
-   October: IDC predicts Itanium systems sales will reach $12bn/yr by the end of 2004.[153]
-   November: IBM's 320-processor Titan NOW Cluster at National Center for Supercomputing Applications is listed on the TOP500 list at position #34.[154]
-   November: Compaq delays Itanium Product release due to problems with processor.[155]
-   December: Gelato is formed.

2002

-   March: IDC predicts Itanium systems sales will reach $5bn/yr by end 2004.[156]
-   June: Itanium 2 is released.

2003

-   April: IDC predicts Itanium systems sales will reach $9bn/yr by end 2007.[157]
-   April: AMD releases Opteron, the first processor with x86-64 extensions.
-   June: Intel releases the "Madison" Itanium 2.

2004

-   February: Intel announces it has been working on its own x86-64 implementation (which it will eventually market under the name "Intel 64").
-   June: Intel releases its first processor with x86-64 extensions, a Xeon processor codenamed "Nocona".
-   June: _Thunder_, a system at LLNL with 4096 Itanium 2 processors, is listed on the TOP500 list at position #2.[158]
-   November: _Columbia_, an SGI Altix 3700 with 10160 Itanium 2 processors at NASA Ames Research Center, is listed on the TOP500 list at position #2.[159]
-   December: Itanium system sales for 2004 reach $1.4bn.

2005

-   January: HP ports OpenVMS to Itanium[160]
-   February: IBM server design drops Itanium support.[161][162]
-   June: An Itanium 2 sets a record SPECfp2000 result of 2,801 in a Hitachi, Ltd. Computing blade.[163]
-   September: Itanium Solutions Alliance is formed.[164]
-   September: Dell exits the Itanium business.[165]
-   October: Itanium server sales reach $619M/quarter in the third quarter.
-   October: Intel announces one-year delays for Montecito, Montvale, and Tukwila.[166]

2006

-   January: Itanium Solutions Alliance announces a $10bn collective investment in Itanium by 2010.
-   February: IDC predicts Itanium systems sales will reach $6.6bn/yr by 2009.[167]
-   June: Intel releases the dual-core "Montecito" Itanium 2 9000 series.[168]

2007

-   April: CentOS (RHEL-clone) places Itanium support on hold for the 5.0 release.[169]
-   October: Intel releases the "Montvale" Itanium 2 9100 series.
-   November: Intel renames the family from _Itanium 2_ back to _Itanium_.

2009

-   December: Red Hat announces that it is dropping support for Itanium in the next release of its enterprise OS, Red Hat Enterprise Linux 6.[170]

2010

-   February: Intel announces the "Tukwila" Itanium 9300 series.[171]
-   April: Microsoft announces phase-out of support for Itanium.[172]
-   October: Intel announces new releases of Intel C++ Compiler and Intel Fortran Compiler for x86/x64, while Itanium support is only available in older versions.[173]

2011

-   March: Oracle Corporation announces that it will stop developing application software, middleware, and Oracle Linux for the Itanium.[174]
-   March: Intel and HP reiterate their support of Itanium.[175][176]
-   April: Huawei and Inspur announce that they will develop Itanium servers.[177]

2012

-   February: Court papers were released from a case between HP and Oracle Corporation that gave insight to the fact that HP was paying Intel $690 million to keep Itanium on life support.[178]
-   SAP discontinues support for Business Objects on Itanium.[179]
-   September: In response to a court ruling, Oracle reinstitutes support for Oracle software on Itanium hardware.[180]

2013

-   January: Intel cancels Kittson as a 22 nm shrink of Poulson, moving it instead to its 32 nm process.[181]
-   November: HP announces that its NonStop servers will start using Intel 64 (x86-64) chips.[182]

2014

-   December: HP announces that their next generation of Superdome X and Nonstop X servers would be equipped with Intel Xeon processors, and not Itanium. While HP continues to sell and offer support for the Itanium-based Integrity portfolio, the introduction of a model based entirely on Xeon chips marks the end of an era.[183]

2017

-   February: Intel ships test versions of Kittson, the first new Itanium chip since 2012.[184]
-   May: Kittson formally ships in volume as the Itanium 9700 series. Intel states that Kittson is the final Itanium generation.[185]

2019

-   January: Intel announces Itanium's end of life with additional orders accepted until January 2020 and last shipments no later than July 2021.[186]


See also

-   List of Intel Itanium microprocessors
-   Advanced load address table


References


External links

-   Intel Itanium home page
-   HP Integrity Servers home page
-   Some undocumented Itanium 2 microarchitectural information
-   -   Itanium Docs at HP
-   Historical background for EPIC instruction set architectures

Category:Computer-related introductions in 2001 Category:Instruction set architectures Category:Intel microprocessors Category:Very long instruction word computing

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

[25]

[26] Naffzinger, Samuel D. et al. (2002). "The implementation of the Itanium 2 microprocessor". _IEEE Journal of Solid-State Circuits_, vol. 37, no. 11, pp. 1448–1460.

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35] New Intel Itanium Offers Greater Performance, Memory Capacity, By: Jeffrey Burt, 2010-02-08, eWeek

[36]

[37]

[38]

[39] New Intel Itanium Offers Greater Performance, Memory Capacity: Itanium 9300 Series Brings New Features (page 2) eweek.com, February 8, 2010

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51] Unreleased Intel Itanium 9500-series CPUs spotted

[52] Spotted 9500-series CPUs confirmed to be "Poulson" Itaniums

[53] Intel publishes Itanium 9500 reference manual

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62] Intel's Itanium to live on as HPE commits to new servers with the chip

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71] IDC World Wide Server Tracker, Q2'08

[72]

[73]

[74]

[75] Intel shifts gears on Itanium, raising questions about the server chip's future

[76]

[77]

[78]

[79]

[80]

[81] "Intel backtracks on 'Kittson' Itanium plans, including shift to 22 nanometers."

[82]

[83] https://support.microsoft.com/en-us/lifecycle/search/12925

[84]

[85] https://support.microsoft.com/en-us/lifecycle/search/14134/

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94] https://www.freebsd.org/platforms/

[95]

[96]

[97]

[98]

[99]

[100] PRODUCT BRIEF Intel® Itanium® Processor 9500 Series

[101] With the new CPU NOAH - 6, the next generation platform i - PX 9800 was born

[102]

[103]

[104]

[105]

[106] ACOS-4 news

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161]

[162]

[163]

[164]

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]

[182]

[183]

[184]

[185]

[186]