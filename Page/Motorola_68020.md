The MOTOROLA 68020 ("_sixty-eight-oh-twenty_", "_sixty-eight-oh-two-oh_" or "_six-eight-oh-two-oh_") is a 32-bit microprocessor from Motorola, released in 1984. It is the successor to the Motorola 68010 and is succeeded by the Motorola 68030. A lower cost version was also made available, known as the 68EC020. In keeping with naming practices common to Motorola designs, the 68020 is usually referred to as the "020", pronounced "oh-two-oh" or "oh-twenty".


Description

The 68020 had 32-bit internal and external data and address buses, compared to the early 680x0 models with 16-bit data and 24-bit address buses. The 68020's ALU was also natively 32-bit, so could perform 32-bit operations in one clock, whereas the 68000 took two clocks minimum due to its 16-bit ALU. Newer packaging methods allowed the '020 to feature more external pins without the large size that the earlier dual in-line package method required. The 68EC020 lowered cost through a 24-bit address bus. The 68020 was produced at speeds ranging from 12 MHz to 33 MHz.

Improvements over the 68010

The 68020 added many improvements over the 68010 including a 32-bit arithmetic logic unit (ALU), 32-bit external data and address buses, extra instructions and additional addressing modes. The 68020 (and 68030) had a proper three-stage pipeline. Though the 68010 had a "loop mode", which sped loops through what was effectively a tiny instruction cache, it held only two short instructions and was thus little used. The 68020 replaced this with a proper instruction cache of 256 bytes, the first 68k series processor to feature true on-chip cache memory.

The previous 68000 and 68010 processors could only access word (16-bit) and long word (32-bit) data in memory if it were word-aligned (located at an even address). The 68020 had no alignment restrictions on data access. Naturally, unaligned accesses were slower than aligned accesses because they required an extra memory access.

Coprocessor support

The 68020 has a coprocessor interface supporting up to eight coprocessors. The main CPU recognizes "F-line" instructions (with the four most significant opcode bits all one), and uses special bus cycles to interact with a coprocessor to execute these instructions. Two types of coprocessors were defined: floating point units (MC68881 or MC68882 FPUs) and the paged memory management unit (MC68851 PMMU). Only one PMMU can be used with a CPU. In principle, multiple FPUs could be used with a CPU, but it was not commonly done. The coprocessor interface is asynchronous, so it is possible to run the coprocessors at a different clock rate than the CPU.

Multiprocessing features

Multiprocessing support was implemented externally by the use of a RMC pin[1] to indicate an indivisible read-modify-write cycle in progress. All other processors had to hold off memory accesses until the cycle was complete.[2] Software support for multiprocessing included the TAS, CAS and CAS2 instructions.

In a multiprocessor system, coprocessors could not be shared between CPUs. To avoid problems with returns from coprocessor, bus error, and address error exceptions, it was generally necessary in a multiprocessor system for all CPUs to be the same model, and for all FPUs to be the same model as well.

Instruction set

The new instructions included some minor improvements and extensions to the supervisor state, several instructions for software management of a multiprocessing system (which were removed in the 68060), some support for high-level languages which did not get used much (and was removed from future 680x0 processors), bigger multiply (32×32→64 bits) and divide (64÷32→32 bits quotient and 32 bits remainder) instructions, and bit field manipulations.

While the 68000 had 'supervisor mode', it did not meet the Popek and Goldberg virtualization requirements due to the single instruction 'MOVE from SR' being unprivileged but sensitive. Under the 68010 and later, this was made privileged, to better support virtualization software.

Addressing modes

The new addressing modes added scaled indexing and another level of indirection to many of the pre-existing modes, and added quite a bit of flexibility to various indexing modes and operations. Though it was not intended, these new modes made the 68020 very suitable for page printing; most laser printers in the early 1990s had a 68EC020 at their core.

The 68020 had a small 256-byte direct-mapped instruction cache, arranged as 64 four-byte entries. Although small, it still made a significant difference in the performance of many applications. The resulting decrease in bus traffic was particularly important in systems relying heavily on DMA.


Usage

The 68020 was used in the Apple Macintosh II and Macintosh LC personal computers, Sun 3 workstations, Commodore Amiga 1200, the Hewlett-Packard 8711 Series Network Analyzers and later members of the HP 9000/300 family and the Alpha Microsystems AM-2000. Also the 68020 was an alternative upgrade to the Sinclair QL computer's 68008 in the Super Gold Card interface by Miracle Systems.

The Amiga 2500 and A2500UX was shipped with the A2620 Accelerator using a 68020, a 68881 floating point unit and the 68851 Memory Management Unit. The 2500UX shipped with Amiga Unix, requiring an '020 or '030 processor.

A number of digital oscilloscopes from the mid-80s to the late-90s used the 68020, including the LeCroy 9300 Series[3] (higher end models including "C" suffix models used the more powerful 68EC030;[4] the 9300 models with a 68020 processor can be upgraded to the 68EC030 with a change of the CPU board[5]) and the earlier LeCroy 9400 series (all models[6][7][8][9] excluding the 9400/9400A which used the 68000[10]), along with certain Tektronix TDS Series models.[11]. The HP 54520, 54522, 54540 and 54542 also use the 68020, together with a 68882 math coprocessor.[12]

It is also the processor used on board TGV trains to decode signalling information which is sent to the trains through the rails. It is further being used in the flight control and radar systems of the Eurofighter Typhoon combat aircraft.

The Nortel Networks DMS-100 telephone central office switch also used the 68020 as the first microprocessor of the SuperNode computing core.

For more information on the instructions and architecture see Motorola 68000.


Variant

The 68EC020 is a lower cost version of the Motorola 68020. The main difference between the two is that the 68EC020 only has a 24-bit address bus, rather than the 32-bit address bus of the full 68020, and thus is only able to address 16 MB of memory.

The Commodore Amiga 1200 computer and the Amiga CD32 games console used the cost-reduced 68EC020; the Namco System 22 and Taito F3 arcade boards also used this processor. The Atari Jaguar II prototype also featured this to replace the 68000 of the original Atari Jaguar console. It also found use in laser printers. Apple used it in the LaserWriter IIɴᴛx. Kodak used it in the Ektaplus 7016PS, and Dataproducts used it in the LZR 1260.

In 2014, Rochester Electronics has re-established manufacturing capability for the 68020 microprocessor and it is still available today.


Technical data

+--------------------+--------------------------------------------------------------+
| Formal name        | MC68020[13]                                                  |
+--------------------+--------------------------------------------------------------+
| CPU clock rate     | (minimum 8 MHz, no on-chip clock generation)[14]             |
+--------------------+--------------------------------------------------------------+
| Voltage supply     |                                                              |
+--------------------+--------------------------------------------------------------+
| Maximum power      | [15]                                                         |
+--------------------+--------------------------------------------------------------+
| Production process | HCMOS, 3/8" silicon piece[16]                                |
+--------------------+--------------------------------------------------------------+
| Chip carrier       | PGA 169 (114 pins used) [17] (53 °C/W without heatsink) [18] |
+--------------------+--------------------------------------------------------------+
| Address bus        | 32-bit (4 GB directly linear accessible)[19]                 |
+--------------------+--------------------------------------------------------------+
| Data bus           | 32-bit                                                       |
+--------------------+--------------------------------------------------------------+
| Instruction set    | 101 CISC instructions                                        |
+--------------------+--------------------------------------------------------------+
| Cache              | Icache[20][21]                                               |
+--------------------+--------------------------------------------------------------+
| Register           | -   7 for Address operations (32-bit)[22]                    |
|                    | -   8 for Data operations (32-bit)[23]                       |
+--------------------+--------------------------------------------------------------+
| Branch handling    | Branch prediction:                                           |
|                    |                                                              |
|                    | -   Fixed branch prediction, branch-never-taken approach[24] |
+--------------------+--------------------------------------------------------------+
| Transistors        | [25]                                                         |
+--------------------+--------------------------------------------------------------+
| Performance        | [26]                                                         |
+--------------------+--------------------------------------------------------------+


Bibliography


References


External links

-   68020 images and descriptions at cpu-collection.de

Category:68k microprocessors

[1]

[2]

[3] LeCroy 1996 Test & Measurement Product Catalog, 9300 Series Upgrade Path, p. 66

[4] LeCroy 1998 Test & Measurement Product Catalog, 9300 Series Hardware Options, Mega Waveform Processing, pp. 87–88

[5] LeCroy 1996 Test & Measurement Product Catalog, 9300 Series Hardware Options, Mega Waveform Processing, pp. 66-67

[6] LeCroy 9410 Digital Oscilloscope Service Manual, 9410 Hardware Overview, Section 2.1, December 1991

[7] LeCroy 9424 Digital Oscilloscope Service Manual, 9424 Hardware Overview, Section 2.1, May 1993

[8] LeCroy 9450 Digital Oscilloscope Service Manual, 9450 Hardware Overview, October 1990

[9] LeCroy 9450A Digital Oscilloscope Service Manual, 9450 Hardware Overview, December 1991

[10] LeCroy 9400/9400A Digital Oscilloscope Service Manual, Section 1.1.1.3 Microprocessor, August 1990

[11] Tektronix TDS684A, TDS744A, & TDS784A Digitizing Oscilloscope Service Manual, 070-8992-03, January 1995

[12] Hewlett Packard 54520 and 54540 Series Oscilloscope Service Guide (54542-97015), Chapter 8, Main Assembly Theory, April 1994

[13]

[14]

[15]

[16]

[17]

[18] freescale.com - M68020UM/AD REV.2 Users manual

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]