The MOTOROLA 68060 ("_sixty-eight-oh-sixty_") is a 32-bit microprocessor from Motorola released in 1994.[1] It is the successor to the Motorola 68040 and is the highest performing member of the 68000 series. Two derivatives were produced, the 68LC060 and the 68EC060.


Architecture

There is an LC (Low-Cost) version, without an FPU[2] and EC (Embedded Controller), without MMU and FPU. The 68060 design was led by Joe Circello.

The 68060 shares most architectural features with the P5 Pentium. Both have a very similar superscalar in-order dual instruction pipeline configuration,[3] and an instruction decoder which breaks down complex instructions into simpler ones before execution. However, a significant difference is that the 68060 FPU is not pipelined and is therefore up to three times slower than the Pentium in floating point applications. In contrast to that, integer multiplications and bit shifting instructions are significantly faster on the 68060. The 68060 has the ability to execute simple instructions in the address generation unit (AGU) and thereby supply the result two cycles before the ALU. In the development of the 68060, large amounts of commercial compiled code were analyzed for clues as to which instructions would be the best candidates for performance optimization.

Against the Pentium, the 68060 can perform better on mixed code; Pentium's decoder cannot issue an FP instruction every opportunity and hence the FPU is not superscalar as the ALUs were. If the 68060's non-pipelined FPU can accept an instruction, it can be issued one by the decoder. This means that optimizing for the 68060 is easier: no rules prevent FP instructions from being issued whenever was convenient for the programmer other than well understood instruction latencies. However, with properly optimized and scheduled code, the Pentium's FPU is capable of double the clock for clock throughput of the 68060's FPU.

The 68060 is the last development of the 68000 family for general purpose use, abandoned in favor of the PowerPC chips. It saw use in some late-model Amiga machines and Amiga accelerator cards as well as some Atari ST clones and Falcon accelerator board (CT60/CT63/CT60e, the latter of which was created in 2015), and very late models of the Alpha Microsystems multiuser computers before their migration to x86, but Apple Inc. and the Unix world had moved onto various RISC platforms by the time the 68060 was available. The 68060 was introduced at 50 MHz on Motorola's 0.6 µm manufacturing process. A few years later it was shrunk to 0.42 µm and clock speed raised to 66 MHz and 75 MHz.

Developments of the basic core continue, intended for embedded systems. Here they are combined with a number of peripheral interfaces to reduce the overall complexity and power requirements of a design. A number of chips, each with different sets of interfaces, are sold under the names ColdFire and DragonBall.


History

Model numbers with even second-to-last digit (68000, 68020, 68040, 68060) were reserved for major revisions to the 680x0 core architecture. Model numbers with odd second-to-last digit (68010, 68030) were reserved for upgrades to the architecture of the previous chip. No 68050[4] or 68070 was ever produced by Motorola.

For example, the Motorola 68010 (and the obscure 68012) is a 68000 with improvements to the loop instruction and the ability to suspend then continue an instruction in the event of a page fault, enabling the use of virtual memory with the appropriate MMU hardware. There were, however, no major overhauls of the core architecture. Similarly, the Motorola 68030 represents a process improvement on the 68020 with the MMU and a small data cache (256 bytes) moved on-chip. The 68030 was released in speed ratings up to 50 MHz.

The jump from the 68000/68010 to the 68020/68030, however, represents a major overhaul, with innumerable individual changes.

By the time the 68060 was in production, Motorola had abandoned development of the 68000 family in favor of the PowerPC. The 68060 is the last 68000 family processor from Motorola.

Signetics (Philips) produced a 68000-based variant that they somewhat confusingly named the 68070. It contains a modestly-improved 68000 CPU, a simple on-chip MMU and an I²C bus controller. It came out long before the 68060 and was used principally as an embedded processor in some consumer electronics items, notably CD-i consoles.


Usage

The 68060 has a history in American broadcast television graphics. Chyron's , Max!, and Maxine! series of television character generators use the 68060 as the main processor. These character generators were a fixture on many American television networks' affiliate stations.[5]

In desktops, the 68060 is used in some variants of the Amiga 4000T produced by Amiga Technologies,[6] and available as a third party upgrade for other Amiga models. It is also used in the Amiga clone DraCo non-linear video system.[7]

The Q60 extended the Sinclair QL design similarly from the slowest start to the ultimate pace of the 68K architecture's capabilities; these 68060-based motherboards[8]—at 66 MHz for the full 68060 or a non-FPU 68LC060 option overclocked to 80 MHz—are more than 100 times faster than the Sinclair QL while running the same operating systems.[9][10][11]

The 68060 was used in Nortel Meridian 1 Option 51, 61 and 81 large office PBX systems, powering the CP3 and CP4 core processor boards. A pair of these boards each sporting a 68060 could be used to make the PBX fault tolerant. This was a logical application as previous Meridian 1 cores used other Motorola chips. Nortel later changed the architecture to use Intel processors.

The Motorola Vanguard 6560 multiprotocol router uses a 50 MHz 68EC060 processor.

Motorola MVME-17x and Force Computer SYS68K VMEbus systems use a 68060 CPU.


Variants

68EC060

The 68EC060 is a version of the Motorola 68060 microprocessor, intended for embedded controllers (EC). It differs from the 68060 in that it has neither an FPU nor an MMU. This makes it less expensive and it draws less power.

68LC060

The 68LC060 is a low cost version of the Motorola 68060 microprocessor with no FPU. This makes it less expensive and it draws less power.

Feature table

+---------+-----+-----+---------------+
| Variant | MMU | FPU | Max Frequency |
+=========+=====+=====+===============+
| 68060   |     |     | 75 MHz        |
+---------+-----+-----+---------------+
| 68LC060 |     |     | 75 MHz        |
+---------+-----+-----+---------------+
| 68EC060 |     |     | 75 MHz        |
+---------+-----+-----+---------------+


Technical data

+--------------------+----------------------------------------------------------+
| CPU clock rate     | 50, 60, 66, 75 MHz                                       |
+--------------------+----------------------------------------------------------+
| Voltage supply     | -   Vcore 3.3 V                                          |
|                    | -   I/O 5 V                                              |
+--------------------+----------------------------------------------------------+
| Temperature        | ( with the current mask)                                 |
+--------------------+----------------------------------------------------------+
| Logic family       | Static CMOS                                              |
+--------------------+----------------------------------------------------------+
| Production process | CMOS and later                                           |
+--------------------+----------------------------------------------------------+
| Chip carrier       | PGA 206 (compatible with 68040), TBGA 304 31*31*1.7P1.27 |
+--------------------+----------------------------------------------------------+
| Address bus        | 32 bit                                                   |
+--------------------+----------------------------------------------------------+
| Data bus           | 32 bit                                                   |
+--------------------+----------------------------------------------------------+
| Instruction set    | CISC                                                     |
+--------------------+----------------------------------------------------------+
| Cache              | -   DCache ()                                            |
|                    |                                                          |
|                    | -   ICache ()                                            |
|                    |                                                          |
|                    | -   FIFO Instruction Buffer                              |
|                    |                                                          |
|                    | -   256 Entry Branch Cache                               |
|                    | -   64 Entry ATC* MMU Buffer (4-way associative)         |
+--------------------+----------------------------------------------------------+
| Register           | -   8 for Address operations                             |
|                    | -   8 for Data operations                                |
+--------------------+----------------------------------------------------------+
| Transistors        |                                                          |
+--------------------+----------------------------------------------------------+
| Performance        | -   ~88 MIPS @ 66 MHz                                    |
|                    | -   ~110 MIPS @ 75 MHz                                   |
|                    | -   ~36 MFlops @ 66 MHz                                  |
+--------------------+----------------------------------------------------------+

ATC = Address Translation Cache


Notes


References

-


External links

-   A paper describing the 68060 architecture
-

Category:68k microprocessors Category:Superscalar microprocessors

[1]

[2] motorola.com.cn - Motorola, Standard Embedded Controller Selector Guide, Quarter 4 2001

[3]

[4]

[5]

[6] amiga.resource.cx - Amiga Hardware Database, Amiga 4000T

[7] amiga.resource.cx - Amiga Hardware Database, DraCo (68060@50/66 ≤128M)

[8] 68060-based motherboards for Linux and Qdos

[9] Qdos Classic

[10] Q60 Linux port

[11] Qdos for Amiga 68000..68060