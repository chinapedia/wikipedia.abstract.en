Strongarm}}

The STRONGARM is a family of computer microprocessors developed by Digital Equipment Corporation and manufactured in the late 1990s which implemented the ARM v4 instruction set architecture. It was later sold to Intel in 1997, who continued to manufacture it before replacing it with the XScale in the early 2000s.


History

The StrongARM was a collaborative project between DEC and Advanced RISC Machines to create a faster ARM microprocessor. The StrongARM was designed to address the upper-end of the low-power embedded market, where users needed more performance than the ARM could deliver while being able to accept more external support. Targets were devices such as newer personal digital assistants and set-top boxes.[1][2]

Traditionally, the semiconductor division of DEC was located in Massachusetts. In order to gain access to the design talent in Silicon Valley, DEC opened a design center in Palo Alto, California. This design center was led by Dan Dobberpuhl and was the main design site for the StrongARM project. Another design site which worked on the project was in Austin, Texas that was created by some ex-DEC designers returning from Apple Computer and Motorola. The project was set up in 1995, and quickly delivered their first design, the SA-110.

DEC agreed to sell StrongARM to Intel as part of a lawsuit settlement in 1997.[3] Intel used the StrongARM to replace their ailing line of RISC processors, the i860 and i960.

When the semiconductor division of DEC was sold to Intel, many engineers from the Palo Alto design group moved to SiByte, a start-up company designing MIPS system-on-a-chip (SoC) products for the networking market. The Austin design group spun off to become Alchemy Semiconductor, another start-up company designing MIPS SoCs for the hand-held market. A new StrongARM core was developed by Intel and introduced in 2000 as the XScale.[4]


SA-110

The SA-110 was the first microprocessor in the StrongARM family. The first versions, operating at 100, 160, and 200 MHz, were announced on 5 February 1996.[5] When announced, samples of these versions were available, with volume production slated for mid-1996. Faster 166 and 233 MHz versions were announced on 12 September 1996.[6] Samples of these versions were available at announcement, with volume production slated for December 1996. Throughout 1996, the SA-110 was the highest performing microprocessor for portable devices.[7] Towards the end of 1996 it was a leading CPU for internet/intranet appliances and thin client systems.[8] The SA-110's first design win was the Apple MessagePad 2000.[9] It was also used in a number of products including the Acorn Computers Risc PC and Eidos Optima video editing system. The SA-110's lead designers were Daniel W. Dobberpuhl, Gregory W. Hoeppner, Liam Madden, and Richard T. Witek.[10]

Description

The SA-110 had a simple microarchitecture. It was a scalar design that executed instructions in-order with a five-stage classic RISC pipeline. The microprocessor was partitioned into several blocks, the IBOX, EBOX, IMMU, DMMU, BIU, WB and PLL. The IBOX contained hardware that operated in the first two stages of the pipeline such as the program counter. It fetched, decoded and issued instructions. Instruction fetch occurs during the first stage, decode and issue during the second. The IBOX decodes the more complex instructions in the ARM instruction set by translating them into sequences of simpler instructions. The IBOX also handled branch instructions. The SA-110 did not have branch prediction hardware, but had mechanisms for their speedy processing.

Execution starts at stage three. The hardware that operates during this stage is contained in the EBOX, which comprises the register file, arithmetic logic unit (ALU), barrel shifter, multiplier and condition code logic. The register file had three read ports and two write ports. The ALU and barrel shifter executed instructions in a single cycle. The multiplier is not pipelined and has a latency of multiple cycles.

The IMMU and DMMU are memory management units for instructions and data, respectively. Each MMU contained a 32-entry fully associative translation lookaside buffer (TLB) that can map 4 KB, 64 KB or 1 MB pages. The write buffer (WB) has eight 16-byte entries. It enables the pipelining of stores. The bus interface unit (BIU) provided the SA-110 with an external interface.

The PLL generates the internal clock signal from an external 3.68 MHz clock signal. It was not designed by DEC, but was contracted to the Centre Suisse d'Electronique et de Microtechnique (CSEM) located in Neuchâtel, Switzerland.

The instruction cache and data cache each have a capacity of 16 KB and are 32-way set-associative and virtually addressed. The SA-110 was designed to be used with slow (and therefore low-cost) memory and therefore the high set associativity allows a higher hit rate than competing designs, and the use of virtual addresses allows memory to be simultaneously cached and uncached. The caches are responsible for most of the transistor count and they take up half the die area.

The SA-110 contained 2.5 million transistors and is 7.8 mm by 6.4 mm large (49.92 mm²). It was fabricated by DEC in its proprietary CMOS-6 process at its Fab 6 fab in Hudson, Massachusetts. CMOS-6 was DEC's sixth-generation complementary metal–oxide–semiconductor (CMOS) process. CMOS-6 has a 0.35 µm feature size, a 0.25 µm effective channel length but for use with the SA-110, only three levels of aluminium interconnect. It used a power supply with a variable voltage of 1.2 to 2.2 volts (V) to enable designs to find a balance between power consumption and performance (higher voltages enable higher clock rates). The SA-110 was packaged in a 144-pin thin quad flat pack (TQFP).


SA-1100

The SA-1100 was a derivative of the SA-110 developed by DEC. Announced in 1997, the SA-1100 was targeted for portable applications such as PDAs and differs from the SA-110 by providing a number of features that are desirable for such applications. To accommodate these features, the data cache was reduced in size to 8 KB.

The extra features are integrated memory, PCMCIA, and color LCD controllers connected to an on-die system bus, and five serial I/O channels that are connected to a peripheral bus attached to the system bus. The memory controller supported FPM and EDO DRAM, SRAM, flash, and ROM. The PCMCIA controller supports two slots. The memory address and data bus is shared with the PCMCIA interface. Glue logic is required. The serial I/O channels implement a slave USB interface, a SDLC, two UARTs, an IrDA interface, a MCP, and a synchronous serial port.

The SA-1100 had a companion chip, the SA-1101. It was introduced by Intel on 7 October 1998.[11] The SA-1101 provided additional peripherals to complement those integrated on the SA-1100 such as a video output port, two PS/2 ports, a USB controller and a PCMCIA controller that replaces that on the SA-1100. Design of the device started by DEC, but was only partially complete when acquired by Intel, who had to finish the design. It was fabricated at DEC's former Hudson, Massachusetts fabrication plant, which was also sold to Intel.[12]

The SA-1100 contained 2.5 million transistors and measured 8.24 mm by 9.12 mm (75.15 mm²). It was fabricated in a 0.35 μm CMOS process with three levels of aluminium interconnect and was packaged in a 208-pin TQFP.[13]

One of the early recipients of this processor was-ill-fated Psion netBook and its more consumer oriented sibling Psion Series 7.


SA-1110

The SA-1110 was a derivative of the SA-110 developed by Intel. It was announced on 31 March 1999, positioned as an alternative to the SA-1100.[14] At announcement, samples were set for June 1999 and volume later that year. Intel discontinued the SA-1110 in early 2003.[15] The SA-1110 was available in 133 or 206 MHz versions. It differed from the SA-1100 by featuring support for 66 MHz (133 MHz version only) or 103 MHz (206 MHz version only) SDRAM.[16] Its companion chip, which provided additional support for peripherals, was the SA-1111. The SA-1110 was packaged in a 256-pin micro ball grid array. It was used in mobile phones, personal data assistants (PDAs) such as the Compaq (later HP) iPAQ and HP Jornada, the Sharp SL-5x00 Linux Based Platforms and the Simputer.[17] It was also used to run the Intel Web Tablet, a tablet device that is considered potentially the first to introduce large screen, portable web browsing. Intel dropped the product just prior to launch in 2001.


SA-1500

The SA-1500 was a derivative of the SA-110 developed by DEC initially targeted for set-top boxes.[18][19] It was designed and manufactured in low volumes by DEC but was never put into production by Intel. The SA-1500 was available at 200 to 300 MHz. The SA-1500 featured an enhanced SA-110 core, an on-chip coprocessor called the _Attached Media Processor_ (AMP), and an on-chip SDRAM and I/O bus controller. The SDRAM controller supported 100 MHz SDRAM, and the I/O controller implemented a 32-bit I/O bus that may run at frequencies up to 50 MHz for connecting to peripherals and the SA-1501 companion chip.

The AMP implemented a long instruction word instruction set containing instructions designed for multimedia, such as integer and floating-point multiply–accumulate and SIMD arithmetic. Each long instruction word is 64 bits wide and specifies an arithmetic operation and a branch or a load/store. Instructions operate on operands from a 64-entry 36-bit register file, and on a set of control registers. The AMP communicates with the SA-110 core via an on-chip bus and it shares the data cache with the SA-110. The AMP contained an ALU with a shifter, a branch unit, a load/store unit, a multiply–accumulate unit, and a single-precision floating-point unit. The AMP supported user-defined instructions via a 512-entry writable control store.

The SA-1501 companion chip provided additional video and audio processing capabilities and various I/O functions such as PS/2 ports, a parallel port, and interfaces for various peripherals.

The SA-1500 contains 3.3 million transistors and measures 60 mm². It was fabricated in a 0.28 µm CMOS process. It used a 1.5 to 2.0 V internal power supply and 3.3 V I/O, consuming less than 0.5 W at 100 MHz and 2.5 W at 300 MHz. It was packaged in a 240-pin metal quad flat package or a 256-ball plastic ball grid array.


References


Further reading

-   "StrongARM-1500 Grapples With MPEG-2". (8 December 1997). _Microprocessor Report_.
-   Halfhill, Tom R. (19 April 1999). "Intel Flexes StrongArm With New Chips". _Microprocessor Report_.
-   Litch, Tim; Slaton, Jeff (March/April) 1998). "StrongARMing Portable Communications". _IEEE Micro_. pp. 48–55.
-   Santhanam, S. et al. (November 1998). "A low-cost, 300-MHz, RISC CPU with attached media processor". _IEEE Journal of Solid-State Circuits_, vol. 33, no. 11. pp. 1829–1839.
-   Turley, Jim (13 November 1995). "StrongArm Punches Up ARM Performance". _Microprocessor Report_.
-   Turley, Jim (15 September 1997). "SA-1100 Puts PDA on a Chip". _Microprocessor Report_.
-   Witek, Rich; Montanaro, James (1996). "StrongARM: A high-performance ARM processor". _Proceedings of COMPCON '96_, pp. 188–191.

Category:DEC microprocessors Category:Intel microprocessors Category:ARM architecture

[1] Montanaro, James et al. (1997). "A 160-MHz, 32-b, 0.5-W CMOS RISC Microprocessor". _Digital Technical Journal_, vol. 9, no. 1. pp. 49–62.

[2]

[3]

[4]

[5] Digital Equipment Corporation (5 February 1996). "Digital Targets Supercharged StrongARM Chip At Consumer Electronics Market". Press release.

[6] Digital Equipment Corporation (12 September 1996). "Digital's StrongARM Chips Pull Away in Embedded Race". Press release.

[7] Turley, Jim (27 January 1997). "Embedded Vendors Seek Differentiation". _Microprocessor Report_, pp. 16–21.

[8]

[9] Turley, Jim (18 November 1996). "Newton First Design Win for StrongARM". _Microprocessor Report_, p. 5.

[10]

[11] Intel Corporation (7 October 1998). "Intel Introduces StrongARM Products for PC Companions". Press release.

[12]

[13] Stephany, R. et al. (1998). "A 200MHz 32b 0.5W CMOS RISC Microprocessor". _ISSCC Digest of Technical Papers_, pp. 238–239, 443.

[14] Intel Corporation (31 March 1999). "Intel StrongARM Processor, Companion Chip Optimized For Handheld Computing Devices". Press release.

[15] Martyn Williams (14 February 2003). "Intel puts StrongArm on death row". InfoWorld.

[16]

[17]

[18] Rick Boyd-Merrit; Peter Clarke (24 July 1998). "Intel to reveal details on StrongARM chip". EE Times.

[19] Prashant P. Gandhi (18 August 1998). "SA-1500: A 300 MHz RISC CPU with Attached Media Processor" . Hot Chips 10.