The SINCLAIR QL (for _Quantum leap_), is a personal computer launched by Sinclair Research in 1984, as an upper-end counterpart to the Sinclair ZX Spectrum. The QL was aimed at the serious home user and professional and executive users markets from small to large businesses and higher educational establishments, but failed to achieve commercial success.


Description

Based on a Motorola 68008 processor clocked at 7.5 MHz, the QL included 128 KB of RAM, which was officially expandable to 640 KB and in practice, 896 KB. It could be connected to a monitor or TV for display. Two built-in Microdrive tape-loop cartridge drives provided mass storage, in place of the more expensive floppy disk drives found on similar systems of the era. Microdrives had been introduced for the Sinclair ZX Spectrum in July 1983, although the QL used a different logical tape format. Interfaces included an expansion slot, ROM cartridge socket, dual RS-232 ports, proprietary QLAN local area network ports, dual joystick ports and an external Microdrive bus. Two video modes were available, 256×256 pixels with 8 RGB colours and per-pixel flashing, or 512×256 pixels with four colours: black, red, green and white. The supported colours could be stippled in 2×2 blocks to simulate up to 256 colours, an effect which did not copy reliably on a TV, especially over an RF connection. Both screen modes used a 32 KB framebuffer in main memory. The hardware was capable of switching between two different areas of memory for the frame buffer, thus allowing double buffering. However, this would have used 64 KB of the standard machine's 128 KB of RAM and there was no support for this feature in the QL's original firmware. The alternative and much improved operating system Minerva does provide full support for the second frame buffer. When connected to a normally-adjusted TV or monitor, the QL's video output would overscan horizontally. This was reputed to have been due to the timing constants in the ZX8301 chip being optimised for the flat-screen CRT display originally intended for the QL.[1]

  256×256   512×256
  --------- ---------
  black     black
  blue
  red       red
  magenta
  green     green
  cyan
  yellow    white
  white

  : Sinclair QL color palette

Internally, the QL comprised the CPU, two ULAs, (ZX8301 and ZX8302) and an Intel 8049 microcontroller known as the IPC, or "Intelligent Peripheral Controller". The ZX8301 or "Master Chip" implemented the video display generator and also provided DRAM refresh. The ZX8302, or "Peripheral Chip", interfaced to the RS-232 ports (transmit only) Microdrives, QLAN ports, real-time clock and the 8049 via a synchronous serial link. The 8049 included at late stage in the QL's design, the ZX8302 originally being intended to perform its functions[2] ran at 11 MHz and acted as a keyboard/joystick interface, RS-232 receive buffer and audio generator.[3]

The first pre-emptive multitasking operating system for a microcomputer, _QDOS_, primarily designed by Tony Tebby, was included on ROM, as was an advanced structured BASIC interpreter, named SuperBASIC designed by Jan Jones, that was also used as the command-line interpreter. The QL was bundled with an office suite, consisting of a word processor, spreadsheet, database, and business graphics written by Psion.

Physically, the QL was the same black colour as the preceding ZX81 and Sinclair ZX Spectrum models, but introduced a new angular styling theme and keyboard design which would later be seen in the ZX Spectrum+.

The QL used British Telecom type 631W plugs of similar design to British telephone sockets for serial cables except for QLs built by Samsung for export markets, which had DE-9 sockets. Joysticks connected to the QL with similar type 630W plugs.


History

The QL was originally conceived in 1981 under the code-name _ZX83_, as a portable computer for business users, with a built-in ultra-thin flat-screen CRT display similar to the later TV80 pocket TV, printer and modem. As development progressed it eventually became clear that the portability features were over-ambitious and the specification was reduced to a conventional desktop configuration.[4][5] The electronics were primarily designed by David Karlin, who joined Sinclair Research in summer 1982. The industrial design was done by Rick Dickinson, who already designed the ZX81 and ZX Spectrum range of products. Sinclair had commissioned GST Computer Systems to produce the operating system for the machine, but switched to Domesdos, developed by Tony Tebby as an in-house alternative, before launch. GST's OS, designed by Tim Ward, was later made available as 68K/OS, in the form of an add-on ROM card.[6] [7] The tools developed by GST for the QL would later be used on the Atari ST, where GST object format became standard.

The QL was designed to be more powerful than the IBM Personal Computer, and comparable to Apple's Macintosh.[8] The QL was the first mass-market personal computer based on the Motorola 68000-series processor family. Rushed into production, the QL beat the Apple Macintosh by a month (effectively becoming the first home computer to feature a GUI), the Atari ST by a year and the Commodore Amiga by a year and 2 months. While clock speeds were comparable, the 8-bit databus and cycle stealing of the ZX8301 gate array limited the QL's performance. However, at the time of launch, on January 12, 1984, the QL was far from being ready for production, there being no complete working prototype in existence. Although Sinclair started taking orders immediately, promising delivery within 28 days, first customer deliveries only started, slowly, in April. This provoked much criticism of the company and the attention of the Advertising Standards Authority.[9]

Due to its premature launch, the QL was plagued by a number of problems from the start. Early production QLs were shipped with preliminary versions of firmware containing numerous bugs, mainly in SuperBASIC. Part of the firmware was held on an external 16 KB ROM cartridge also known as the "kludge" or "dongle", until the QL was redesigned to accommodate the necessary 48 KB of ROM internally, instead of the 32 KB initially specified.[10] The QL also suffered from reliability problems of its Microdrives. These problems were later rectified, by Sinclair engineers, especially on Samsung produced models, as well as by aftermarket firms such as Adman Services and TF Services, to the point where several QL users report the Samsung Microdrives in particular working perfectly even after almost 17 years of service; but in any case much too late to redeem the negative image they had already created.

Although the computer was hyped as being advanced for its time, and relatively cheap, it failed to sell well, and UK production was suspended in 1985, due to lack of demand. After Amstrad acquired Sinclair's computer products lines in April 1986, the QL was officially discontinued. Apart from its reliability issues, the target business market was becoming wedded to the IBM PC platform, whilst the majority of ZX Spectrum owners were uninterested in upgrading to a machine which had a minimal library of games. Sinclair's persistence with the non-standard Microdrive and uncomfortable keyboard did not endear it to the business market; coupled with the machine's resemblance to a ZX Spectrum+, they led many to perceive the QL as something akin to a toy. Software publishers were also reluctant to support the QL due to the necessity of using Microdrive cartridges as a distribution medium.

Linus Torvalds has attributed his eventually inventing and developing the Linux kernel, likewise having pre-emptive multitasking, in part to his having owned a Sinclair QL in the 1980s. Because of the commercial failure of the machine and lack of support, particularly in Finland, Torvalds became used to having to write his own software rather than relying on programs written by others.[11] His frustration with the Sinclair would also lead to his purchasing a more standard PC in later years on which he would develop Linux.


ICL One Per Desk

The QL's CPU, ZX8301 and ZX8302 ASICs and Microdrives also formed the basis of International Computers Limited's (ICL's) One Per Desk (OPD) - also marketed by British Telecom as the Merlin Tonto and by Telecom Australia as the Computerphone. The result of a three-year collaboration between Sinclair Research, ICL and British Telecom, the OPD had the intriguing addition of a telephone handset on one end of the keyboard, and rudimentary Computer-Telephony Integration (CTI) software.[12] This curious machine interested a number of high-profile business customers, including certain divisions of the former UK Customs and Excise Department, but its success was generally limited. In the late eighties they were used in bingo halls to allow a country wide networked bingo game.[13]


Clone systems

Hardware

After Amstrad abandoned the QL in 1986, several companies previously involved in the QL peripherals market stepped in to fill the void. These included CST and DanSoft, creators of the Thor line of compatible systems; Miracle Systems, creator of the Gold Card and Super Gold Card processor/memory upgrade cards and the QXL PC-based hardware emulator; and Qubbesoft, with the Aurora, the first replacement QL mainboard, featuring enhanced graphics modes.[14]

In the late 1990s, two partly QL-compatible motherboards named Q40 and Q60 (collectively referred to as Qx0) were designed by Peter Graf and marketed by D&D Systems. The Q40 and Q60, based on the 68040 and 68060 CPUs respectively, were much more powerful than the original QL and have the ability among other things (such as multimedia, high resolution graphics, Ethernet networking etc.) to run the Linux operating system.[15]

Hardware add-ons are still being produced for the original QL by Sandy Electronics. RWAP Software supplies various hardware and software upgrades.[16]

Software

A few patched versions of QDOS were produced, most notably Minerva which gradually evolved into a completely rewritten operating system, offering improved speed, with multitasking SuperBASIC interpreters. Tony Tebby went on to produce another updated operating system, SMSQ/E, which has continued to be developed for the Sinclair QL and emulators, offering many more features.[17]


See also

-   Sinclair QL Software


References


External links

-   Dilwyn Jones's QL pages – Well maintained site with comprehensive QL related information and a huge software download library.
-   THE REPOSITORY of the Sinclair QL Preservation Project – Well maintained project with valuable Sinclair QL related information and software.
-

Category:Computer-related introductions in 1984 Category:Home computers Category:68000-based home computers Category:British computers Category:Personal computers QL

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

[11] Torvalds, Linux. Presentation: "The Origins of Linux," 19 Sept. 2001. https://www.youtube.com/watch?v=WVTWCPoUt8w&t=9m13s

[12]

[13]

[14]

[15]

[16]

[17]