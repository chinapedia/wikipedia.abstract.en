Pdp-11-40.jpg drive is installed above it.]] The PDP-11 is a series of 16-bit minicomputers sold by Digital Equipment Corporation (DEC) from 1970 into the 1990s, one of a succession of products in the PDP series. In total, around 600,000 PDP-11s of all models were sold, making it one of DEC's most successful product lines. The PDP-11 is considered by some experts[1][2][3] to be the most popular minicomputer ever.

The PDP-11 included a number of innovative features in its instruction set and additional general-purpose registers that made it much easier to program than earlier models in the series. Additionally, the innovative Unibus system allowed external devices to be easily interfaced to the system using direct memory access, opening the system to a wide variety of peripherals. The PDP-11 replaced the PDP-8 in many real-time applications, although both product lines lived in parallel for more than 10 years. The ease of programming of the PDP-11 made it very popular for general purpose computing uses as well.

The design of the PDP-11 inspired the design of late-1970s microprocessors including the Intel x86[4] and the Motorola 68000. Design features of PDP-11 operating systems, as well as other operating systems from Digital Equipment, influenced the design of other operating systems such as CP/M and hence also MS-DOS. The first officially named version of Unix ran on the PDP-11/20 in 1970. It is commonly stated that the C programming language took advantage of several low-level PDP-11–dependent programming features,[5] albeit not originally by design.[6]

An effort to expand the PDP-11 from 16 to 32-bit addressing led to the VAX-11 design, which took part of its name from the PDP-11.


History

Previous machines

In 1963, DEC introduced what is considered to be the first commercial minicomputer in the form of the PDP-5. This was a 12-bit design adapted from the 1962 LINC machine that was intended to be used in a lab setting. DEC slightly simplified the LINC system and instruction set, aiming the PDP-5 at smaller settings that did not need the power of their larger 18-bit PDP-4. The PDP-5 was a success, ultimately selling about 50,000 examples.

During this period, the computer market was moving from computer word lengths based on units of 6-bits to units of 8-bits, following the introduction of the 7-bit ASCII standard. In 1967–68, DEC engineers designed a 16-bit machine, the PDP-X,[7] but management ultimately cancelled the project.

Several of the engineers from the PDP-X left DEC and formed Data General. The next year they introduced the 16-bit Data General Nova.[8] The Nova was a major success, selling tens of thousands of units and launching what would become one of DEC's major competitors through the 1970s and 80s.

Release

A subsequent effort, code-named "Desk Calculator", looked at a variety of options before choosing what became the 16-bit PDP-11;[9] The PDP-11 family was announced in January 1970 and shipments began early that year. DEC sold over 170,000 PDP-11s in the 1970s.[10]

Initially manufactured of small-scale transistor–transistor logic, a single-board large scale integration version of the processor was developed in 1975. A two-or-three-chip processor, the J-11 was developed in 1979. The last models of the PDP-11 line were the PDP-11/94 and -11/93 introduced in 1990.[11]


Innovative features

Instruction set orthogonality

The PDP-11 processor architecture has a mostly orthogonal instruction set. For example, instead of instructions such as _load_ and _store_, the PDP-11 has a _move_ instruction for which either operand (source and destination) can be memory or register. There are no specific _input_ or _output_ instructions; the PDP-11 uses memory-mapped I/O and so the same _move_ instruction is used; orthogonality even enables moving data directly from an input device to an output device. More complex instructions such as _add_ likewise can have memory, register, input, or output as source or destination.

Most operands can apply any of eight addressing modes to eight registers. The addressing modes provide register, immediate, absolute, relative, deferred (indirect), and indexed addressing, and can specify autoincrementation and autodecrementation of a register by one (byte instructions) or two (word instructions). Use of relative addressing lets a machine-language program be position-independent.

No dedicated I/O instructions

Early models of the PDP-11 had no dedicated bus for input/output, but only a system bus called the Unibus, as input and output devices were mapped to memory addresses.

An input/output device determined the memory addresses to which it would respond, and specified its own interrupt vector and interrupt priority. This flexible framework provided by the processor architecture made it unusually easy to invent new bus devices, including devices to control hardware that had not been contemplated when the processor was originally designed. DEC openly published the basic Unibus specifications, even offering prototyping bus interface circuit boards, and encouraging customers to develop their own Unibus-compatible hardware.

The Unibus made the PDP-11 suitable for custom peripherals. One of the predecessors of Alcatel-Lucent, the Bell Telephone Manufacturing Company, developed the BTMC DPS-1500 packet-switching (X.25) network and used PDP-11s in the regional and national network management system, with the Unibus directly connected to the DPS-1500 hardware.

Higher-performance members of the PDP-11 family, starting with the PDP-11/45 Unibus and 11/83 Q-bus systems, departed from the single-bus approach. Instead, memory was interfaced by dedicated circuitry and space in the CPU cabinet, while the Unibus continued to be used for I/O only. In the PDP-11/70, this was taken a step further, with the addition of a dedicated interface between disks and tapes and memory, via the Massbus. Although input/output devices continued to be mapped into memory addresses, some additional programming was necessary to set up the added bus interfaces.

Interrupts

The PDP-11 supports hardware interrupts at four priority levels. Interrupts are serviced by software service routines, which could specify whether they themselves could be interrupted (achieving interrupt nesting). The event that causes the interrupt is indicated by the device itself, as it informs the processor of the address of its own interrupt vector.

Interrupt vectors are blocks of two 16-bit words in low kernel address space (which normally corresponded to low physical memory) between 0 and 776. The first word of the interrupt vector contains the address of the interrupt service routine and the second word the value to be loaded into the PSW (priority level) on entry to the service routine.

The article on PDP-11 architecture provides more details on interrupts.

Designed for mass production

The PDP-11 was designed for ease of manufacture by semiskilled labor. The dimensions of its pieces were relatively non-critical. It used a wire-wrapped backplane. That is, the printed circuit boards plugged into a backplane connector. The backplane connectors had square pins that could be connected to by wrapping wires around them. The corners of the pins would bite into the wire to form a gas-tight (i.e. corrosion-proof, therefore reliable) connection.


LSI-11

PDP-11-M7270.jpg KL_DEC_F11.jpg KL_DEC_J11.jpg

The LSI-11 (PDP-11/03), introduced in February 1975[12] is the first PDP-11 model produced using large-scale integration; the entire CPU is contained on four LSI chips made by Western Digital (the MCP-1600 chip set; a fifth chip can be added to extend the instruction set, as pictured on the right). It uses a bus which is a close variant of the Unibus called the LSI Bus or Q-Bus; it differs from the Unibus primarily in that addresses and data are multiplexed onto a shared set of wires rather than having separate sets of wires. It also differs slightly in how it addresses I/O devices and it eventually allowed a 22-bit physical address (whereas the Unibus only allows an 18-bit physical address) and block-mode operations for significantly improved bandwidth (which the Unibus does not support).

The CPU microcode includes a debugger: firmware with a direct serial interface (RS-232 or current loop) to a terminal. This lets the operator do debugging by typing commands and reading octal numbers, rather than operating switches and reading lights, the typical debugging method at the time. The operator can thus examine and modify the computer's registers, memory, and input/output devices, diagnosing and perhaps correcting failures in software and peripherals (unless a failure disables the microcode itself). The operator can also specify which disk to boot from.

Both innovations increased the reliability and decreased the cost of the LSI-11.

Later Q-Bus based systems such as the LSI-11/23, /73, and /83 are based upon chip sets designed in house by Digital Equipment Corporation. Later PDP-11 Unibus systems were designed to use similar Q-Bus processor cards, using a Unibus adapter to support existing Unibus peripherals, sometimes with a special memory bus for improved speed.

There were other significant innovations in the Q-Bus lineup. For example, a system variant of the PDP-11/03 introduced full system power-on self-test (POST).


Decline

The basic design of the PDP-11 was flexible, and was continually updated to use newer technologies. However, the limited throughput of the Unibus and Q-bus started to become a system-performance bottleneck, and the 16-bit logical address limitation hampered the development of larger software applications. The article on PDP-11 architecture describes the hardware and software techniques used to work around address-space limitations.

DEC's 32-bit successor to the PDP-11, the VAX (for "Virtual Address eXtension") overcame the 16-bit limitation, but was initially a superminicomputer aimed at the high-end time-sharing market. The early VAX CPUs provided a PDP-11 compatibility mode under which much existing software could be immediately used, in parallel with newer 32-bit software, but this capability was dropped with the first MicroVAX.

For a decade the PDP-11 was the smallest system that could run Unix,[13] but in the 1980s, the IBM PC and its clones largely took over the small computer market; _BYTE_ in 1984 reported that the PC's Intel 8088 microprocessor outperformed the PDP-11/23 when running Unix. Newer microprocessors such as the Motorola 68000 (1979) and Intel 80386 (1985) also included 32-bit logical addressing. The 68000, running with custom hardware that provided protected memory, was used in the Apple Lisa, a machine that was able to run Microsoft's Xenix in 1984, with up to 2 MB of installed RAM. The mass-production of those chips eliminated any cost advantage for the 16-bit PDP-11. A line of personal computers based on the PDP-11, the DEC Professional series, failed commercially, along with other non-PDP-11 PC offerings from DEC.

In 1994 DEC[14] sold the PDP-11 system-software rights to Mentec Inc., an Irish producer of LSI-11 based boards for Q-Bus and ISA architecture personal computers, and in 1997 discontinued PDP-11 production. For several years, Mentec produced new PDP-11 processors. Other companies found a niche market for replacements for legacy PDP-11 processors, disk subsystems, etc.

By the late 1990s, not only DEC but most of the New England computer industry which had been built around minicomputers similar to the PDP-11 collapsed in the face of microcomputer-based workstations and servers.


Models

The PDP-11 processors tend to fall into several natural groups depending on the original design upon which they are based and which I/O bus they use. Within each group, most models were offered in two versions, one intended for OEMs and one intended for end-users. Although all models share the same instruction set, later models added new instructions and interpreted certain instructions slightly differently. As the architecture evolved, there were also variations in handling of some processor status and control registers.

Unibus models

Digital_PDP11-IMG_1498_cropped.jpg Pdp-11-70-panel.jpg PDP-11-70-DDS570.jpg

The following models use the Unibus as their principal bus:

-   PDP-11/20 and PDP-11/15 — The original, non-microprogrammed processor; designed by Jim O'Loughlin. Floating point is supported by peripheral options using various data formats. The 11/20 lacks any kind of memory protection hardware unless retrofitted with a KS-11 memory mapping add-on.[15]
-   PDP-11/45, PDP-11/50, and PDP-11/55 – A much faster microprogrammed processor that can use up to 256 kB of semiconductor memory instead of or in addition to core memory; support memory mapping and protection. First model to support an optional FP11 floating-point coprocessor, which established the format used in later models.
-   PDP-11/35 and PDP-11/40 – Microprogrammed successors to the PDP-11/20; the design team was led by Jim O'Loughlin.
-   PDP-11/05 and PDP-11/10 – A cost-reduced successor to the PDP-11/20.
-   PDP-11/70 – The 11/45 architecture expanded to allow 4 MB of physical memory segregated onto a private memory bus, 2 kB of cache memory, and much faster I/O devices connected via the Massbus.
-   PDP-11/34 and PDP-11/04 – Cost-reduced follow-on products to the 11/35 and 11/05; the PDP-11/34 concept was created by Bob Armstrong. The 11/34 supports up to 256 kB of Unibus memory. The PDP-11/34a supports a fast floating-point option, and the 11/34c supported a cache memory option.
-   PDP-11/60 – A PDP-11 with user-writable microcontrol store; this was designed by another team led by Jim O'Loughlin.
-   PDP-11/44 – A replacement for the 11/45 and 11/70, introduced in 1980, that supports optional (though apparently always included) cache memory, FP-11 floating-point processor (one circuit board, using sixteen AMD Am2901 bit slice processors), and commercial instruction set (CIS, two boards). It includes a sophisticated serial console interface and support for 4 MB of physical memory. The design team was managed by John Sofio. This was the last PDP-11 processor to be constructed using discrete logic gates; later models were all microprocessor-based. It was also the last PDP-11 architecture created by Digital Equipment Corporation, later models were VLSI chip realizations of the existing system architectures.
-   PDP-11/24 – First VLSI PDP-11 for Unibus, using the "Fonz-11" (F11) chip set with a Unibus adapter.
-   PDP-11/84 – Using the VLSI "Jaws-11" (J11) chip set with a Unibus adapter.
-   PDP-11/94 – J11-based, faster than 11/84.

Q-bus models

DEC_LSI11-23.jpg is also missing.]]

The following models use the Q-Bus as their principal bus:

-   PDP-11/03 (also known as the LSI-11/03) – The first PDP-11 implemented with large-scale integration ICs, this system uses a four-package MCP-1600 chipset from Western Digital and supports 60 kB of memory.
-   PDP-11/23 – Second generation of LSI (F-11). Early units supported only 248 kB of memory.
-   PDP-11/23+/MicroPDP-11/23 – Improved 11/23 with more functions on the (larger) processor card.
-   MicroPDP-11/73 – The third generation LSI-11, this system uses the faster "Jaws-11" (J-11) chip set and supports up to 4 MB of memory.
-   MicroPDP-11/53 – Slower 11/73 with on-board memory.
-   MicroPDP-11/83 – Faster 11/73 with PMI (private memory interconnect).
-   MicroPDP-11/93 – Faster 11/83; final DEC Q-Bus PDP-11 model.
-   KXJ11 – QBUS card (M7616) with PDP-11 based peripheral processor and DMA controller. Based on a J11 CPU equipped with 512 kB of RAM, 64 kB of ROM, and parallel and serial interfaces.
-   Mentec M100 – Mentec redesign of the 11/93, with J-11 chipset at 19.66 MHz, four on-board serial ports, 1-4 MB of on-board memory, and optional FPU.
-   Mentec M11 – Processor upgrade board; microcode implementation of PDP-11 instruction set by Mentec, using the TI 8832 ALU and TI 8818 microsequencer from Texas Instruments.
-   Mentec M1 – Processor upgrade board; microcode implementation of PDP-11 instruction set by Mentec, using Atmel 0.35 μm ASIC.[16]
-   Quickware QED-993 – High performance PDP-11/93 processor upgrade board.
-   DECserver 500 and 550 LAT terminal servers DSRVS-BA using the KDJ11-SB chipset

Models without standard bus

DEC-PDT-11-150.jpg

-   PDT-11/110
-   PDT-11/130
-   PDT-11/150

The PDT series were desktop systems marketed as "smart terminals". The /110 and /130 were housed in a VT100 terminal enclosure. The /150 was housed in a table-top unit which included two 8-inch floppy drives, three asynchronous serial ports, one printer port, one modem port and one synchronous serial port and required an external terminal. All three employed the same chipset as used on the LSI-11/03 and LSI-11/2 in four "microm"s. There is an option which combines two of the microms into one dual carrier, freeing one socket for an EIS/FIS chip. The /150 in combination with a VT105 terminal was also sold as MiniMINC, a budget version of the MINC-11.

-   PRO-325
-   PRO-350
-   PRO-380

The DEC Professional series are desktop PCs intended to compete with IBM's earlier 8088 and 80286 based personal computers. The models are equipped with 5¼ inch floppy disk drives and hard disks, except the 325 which has no hard disk. The original operating system was P/OS, which was essentially RSX-11M+ with a menu system on top. As the design was intended to avoid software exchange with existing PDP-11 models, their ill fate in the market was no surprise for anyone except DEC. The RT-11 operating system was eventually ported to the PRO series. A port of RSTS/E to the PRO series was also done internal to DEC, but it was not released. The PRO-325 and -350 units are based on the DCF-11 ("Fonz") chipset, the same as found in the 11/23, 11/23+ and 11/24. The PRO-380 is based on the DCJ-11 ("Jaws") chipset, the same as found in the 11/53,73,83 and others, though running only at 10 MHz because of limitations in the support chipset.

Models that were planned but never introduced

-   PDP-11/27 – A Jaws-11 implementation that would have used the VAXBI Bus as its principal I/O bus.
-   PDP-11/68 – A follow-on to the PDP-11/60 that would have supported 4 MB of physical memory.
-   PDP-11/74 – A PDP-11/70 that was extended to contain multiprocessing features. Up to four processors could be interconnected, although the physical cable management became unwieldy. Another variation on the 11/74 contained both the multiprocessing features and the Commercial Instruction Set. A substantial number of prototype 11/74s (of various types) were built and at least two multiprocessor systems were sent to customers for beta testing, but no systems were ever officially sold. A four processor system was maintained by the RSX-11 operating system development team for testing and a uniprocessor system served PDP-11 engineering for general purpose timesharing. The 11/74 was due to be introduced around the same time as the announcement of the new 32-bit product line and the first model: the VAX 11/780. The 11/74 was cancelled because of concern for its field maintainability,[17] though employees believed the real reason was that it outperformed the 11/780[18] and would inhibit its sales. In any case, DEC never entirely migrated its PDP-11 customer base to the VAX. The primary reason was not performance, but the PDP-11's superior real-time responsiveness.

Special purpose versions

GT40_Lunar_Lander.jpg'']] DEC-MINC-23.jpg

-   GT40 – VT11 vector graphics terminal using a PDP-11/05.
-   GT42 – VT11 vector graphics terminal using a PDP-11/10.
-   GT44 – VT11 vector graphics terminal using a PDP-11/40.
-   GT62 – VS60 vector graphics workstation using a PDP-11/34a and VT48 graphics processor.
-   H11 – Heathkit OEM version of the LSI-11/03.
-   VT20 – Terminal with PDP-11/05 with direct mapped character display for text editing and typesetting (predecessor of the VT71)
-   VT71 – Terminal with LSI-11/03 and QBUS backplane with direct mapped character display for text editing and typesetting.
-   VT103 – VT100 with backplane to host an LSI-11.
-   VT173 – A high-end editing terminal containing an 11/03, which loaded its editing software over a serial connection to a host minicomputer. Used in various publishing environments, it was also offered with DECset, Digital's VAX/VMS 3.x native mode OEM version of the Datalogics Pager automated batch composition engine. When VT173 inventory was exhausted in 1985, Digital discontinued DECset and transferred its customer agreements to Datalogics. (HP now uses the name HP DECset for a software development toolset product.)

-   MINC-11 – Laboratory system based on 11/03 or 11/23;[19] when based on the 11/23, it was sold as a 'MINC-23', but many MINC-11 machines were field-upgraded with the 11/23 processor. Early versions of the MINC-specific software package would not run on the 11/23 processor because of subtle changes in the instruction set; MINC 1.2 is documented as compatible with the later processor.
-   C.mmp – Multiprocessor system from Carnegie Mellon University.

Unimation_controller_internals.jpg robot arm controller.]]

-   The Unimation robot arm controllers used Q-Bus LSI-11/73 systems with a DEC M8192 / KDJ11-A processor board and two DEC DLV11-J (M8043) async serial interface boards.
-   SBC 11/21 (boardname KXT11) Falcon and Falcon Plus – single board computer on a Qbus card implementing the basic PDP-11 instruction set, based on T11 chipset containing 32 KB static RAM, two ROM sockets, three serial lines, 20 bit parallel I/O, three interval timers and a two-channel DMA controller. Up to 14 Falcons could be placed into one Qbus system.
-   KXJ11 – QBUS card (M7616) with PDP-11 based peripheral processor and DMA controller. Based on a J11 CPU equipped with 512 kB RAM, 64 kB ROM and parallel and serial interfaces.
-   HSC high end CI disk controllers used backplane mounted J11 and F11 processor cards to run their CHRONIC operating system.[20]
-   VAX Console – The DEC Professional Series PC-38N with a real-time interface (RTI) was used as the console for the VAX 8500 and 8550. The RTI has two serial line units: one connects to the VAX environmental monitoring module (EMM) and the other is a spare that could be used for data transfer. The RTI also has a programmable peripheral interface (PPI) consisting of three 8-bit ports for transferring data, address, and control signals between console and the VAX console interface.[21]

Unlicensed clones

The PDP-11 was sufficiently popular that many unlicensed PDP-11-compatible minicomputers and microcomputers were produced in Eastern Bloc countries. Some were pin-compatible with the PDP-11 and could use its peripherals and system software. These include:

-   SM-4, SM-1420, SM-1600, Electronika 100-25, Electronika BK series, Electronika 60, Electronika 85, DVK and UKNC (in the Soviet Union).
-   SM-4, SM-1420, IZOT-1016 and peripherals (in Bulgaria).
-   MERA-60 in Poland.
-   SM-1620, SM-1630 (in East Germany).
-   SM-4, TPA-1140,[22] TPA-1148,[23] TPA-11/440[24] (in Hungary).
-   SM-4/20, SM 52-11, JPR-12R (in Czechoslovakia)
-   CalData – Made in U.S., ran all DEC OS's[25]
-   the CORAL series (made at ICE Felix in Bucharest) and the INDEPENDENT series (made at ITC Timișoara)[26] running the RSX-11M operating system (in Romania). The CORAL series had several models: the CORAL 4001 was roughly equivalent to the PDP-11/04, the CORAL 4011 was a PDP 11/34 clone, while the CORAL 4030 was as PDP-11/44 clone.[27] These were used in public universities, originally operated with punched cards, later through video terminals like the Romanian DAF-2020, to teach FORTRAN and Pascal, until replaced by IBM PC compatibles, starting in 1991.


Operating systems

Several operating systems were available for the PDP-11

From Digital

-   BATCH-11/DOS-11
-   CAPS-11 (CAssette Based Programme development System)[28]
-   CHRONIC Hierarchical Storage Controller executive[29]
-   GAMMA-11[30]
-   DSM-11
-   IAS

-   P/OS
-   RSTS/E
-   RSX-11
-   RT-11
-   Ultrix-11

From third parties

-   ANDOS
-   CSI-DOS
-   DEMOS (Soviet Union)
-   Duress (University of Illinois at Urbana–Champaign/Datalogics)[31]
-   Fuzzball
-   MERT[32]
-   Micropower Pascal[33]
-   MK-DOS
-   MONECS
-   MTS (Multi-Tasking System written in RTL/2 by SPL)[34]
-   MUMPS
-   PC11 (Decus 11-501/Pilkington)[35]

-   polyForth, Forth Inc.'s Forth for the PDP-11
-   ROSTTP (Realtime Operating System for Terminal Teletype Processing/Simpact)
-   SHAREeleven, SHAREplus
-   Solo by Per Brinch Hansen[36]
-   Sphere (Infosphere – Portland Oregon 1981–87)[37]
-   Softech Microsystems UCSD System with UCSD Pascal[38]
-   TRAX (Transaction Processing system)[39]
-   TRIPOS
-   TSX-Plus
-   Unix[40] (many versions, including Version 6 Unix, Version 7 Unix, UNIX System III, and 2BSD)
-   Xinu OS for instructional purposes
-   Venix (implementation/port of Unix developed by VenturCom)[41][42]


Communications

The DECSA communications server was a communications platform developed by DEC based on a PDP-11/24, with the provision for user installable I/O cards including asynchronous and synchronous modules.[43] This product was used as one of the earliest commercial platforms upon which networking products could be built, including X.25 gateways, SNA gateways, routers, and terminal servers.


Peripherals

DEC_TU10_tape_drive.jpg drive.]] A wide range of peripherals were available; some of them were also used in other DEC systems like the PDP-8 or PDP-10. The following are some of the more common PDP-11 peripherals.

-   CR11 – punched card reader
-   DL11 – single serial line for either RS-232 or current loop
-   LA30/LA36 – DECwriter dot-matrix printing keyboard terminal
-   LP11 – high speed line printer
-   PC11 – high speed papertape reader/punch
-   RA,RD series – fixed platter hard disk
-   RK series – hard disk with exchangeable platter
-   RL01/RL02 – hard disk with exchangeable platter
-   RM,RP series – exchangeable multi-platter hard disk
-   RX01/RX02 – 8-inch floppy disk
-   TU11 – 9 track tape drive
-   TU56 – DECtape block-addressed tape system
-   VT05/VT50/VT52/VT100 – video display terminal


Use

The PDP-11 family of computers was used for many purposes. It was used as a standard minicomputer for general-purpose computing, such as timesharing, scientific, educational, medical, or business computing. Another common application was real-time process control and factory automation.

Some OEM models were also frequently used as embedded systems to control complex systems like traffic-light systems, medical systems, numerical controlled machining, or for network-management. An example of such use of PDP-11s was the management of the packet switched network Datanet 1. In the 1980s, the UK's air traffic control radar processing was conducted on a PDP 11/34 system known as PRDS – Processed Radar Display System at RAF West Drayton. The software for the Therac-25 medical linear particle accelerator also ran on a 32K PDP 11/23.[44] In 2013, it was reported that PDP-11 programmers would be needed to control nuclear power plants through 2050.[45]

Another use was for storage of test programs for Teradyne ATE equipment, in a system known as the TSD (Test System Director). As such, they were in use until their software was rendered inoperable by the Year 2000 problem. The U.S. Navy used a PDP-11/34 to control its Multi-station Spatial Disorientation Device, a simulator used in pilot training, until 2007, when it was replaced by a PC-based emulator that could run the original PDP-11 software and interface with custom Unibus controller cards.[46]

A PDP-11/45 was used for the experiment that discovered the J/ψ meson at the Brookhaven National Laboratory.[47] In 1976, Samuel C. C. Ting received the Nobel Prize for this discovery.


Emulators

Ersatz-11

Ersatz-11, a product of D Bit,[48] emulates the PDP-11 instruction set running under DOS, OS/2, Windows, Linux or stand-alone (no OS). It can be used to run RSTS or other PDP-11 operating systems.

SimH

SimH is an emulator that compiles and runs on a number of platforms (including Linux) and supports hardware emulation for the DEC PDP-1, PDP-8, PDP-10, PDP-11, VAX, AltairZ80, several IBM mainframes, and other minicomputers.


See also

-   Heathkit H11, a 1977 Heathkit personal computer based on the PDP-11
-   MACRO-11, the PDP-11's native assembly language
-   PL-11, a high-level assembler for the PDP-11 written at CERN
-   SIMH, a multiple minicomputer architecture emulator written in portable C


Notes


References

-   -


Further reading

-   -   Michael Singer, _PDP-11. Assembler Language Programming and Machine Organization_, John Wiley & Sons, NY: 1980.


External links

-   http://archive.computerhistory.org/resources/text/DEC/pdp-11/
-   The PDP-11 FAQ
-   Preserving the PDP-11 Series of 16-bit minicomputers
-   Gordon Bell, Bill Strecker What We Learned From the PDP-11 1975
-   Gordon Bell's CyberMuseum for Digital Equipment Corp (DEC)
-   The Fuzzball
-   Digital PDP11 1969 vintagecomputer.net
-   Günter Dotzel. On LSI-11, RT-11, Megabytes of Memory and Modula-2/VRS, _DEC Professional: the magazine for DEC users_, Professional Press, Spring House, PA. U.S.A., January 1986.
-   "how to program a PDP-11/10" video
-   Russian versions of PDP-11 computers
-   PDP-11/70 CPU core and SoC _a complete PDP-11 system: a 11/70 CPU with memory management unit, but without floating point unit, a basic set of UNIBUS peripherals (DL11, LP11, PC11, RK11/RK05), a cache and memory controllers for SRAM and PSRAM_ on FPGA
-   PDP virtualization
-   Ersatz-11, a PDP-11 emulator for DOS, OS/2, Windows and Linux
-   PDP-11 / VAX / Alpha Software archive
-   PiDP-11, a modern-day PDP-11/70 replica

Category:DEC hardware Category:Minicomputers Category:PDP-11 Category:Computer-related introductions in 1970

[1]

[2]

[3] Frank Rose. "Into the Heart of the Mind: An American Quest for Artificial Intelligence". 1985. p. 37.

[4]

[5] Bakyo, John. "DEC PDP-11, benchmark for the first 16/32 bit generation. (1970)" in _Great Microprocessors of the Past and Present (V 13.4.0)_, Section Three, Part I. Accessed 2011-03-04

[6] "The Development of the C Language" in section _More History_, by Dennis M. Ritchie. Accessed August 5, 2011.

[7]

[8]

[9]

[10] Paul Cerruzi, _A History of Modern Computing_, MIT Press, 2003, , page 199

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

[22] TPA-1140,

[23]

[24]

[25]

[26]

[27] http://uknc.narod.ru/Doc/rt11book.txt

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

[44] Leveson, Nancy G., and Clark S. Turner. "An Investigation of the Therac-25 Accidents." _Computer_ July 1993: 18-41.

[45]

[46]

[47]

[48] D Bit