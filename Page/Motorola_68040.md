    __

KL_Motorola_XC68040.jpgMotorola_68040_die.JPG

The MOTOROLA 68040 ("_sixty-eight-oh-forty_") is a 32-bit microprocessor from Motorola, released in 1990. It is the successor to the 68030 and is followed by the 68060. There was no 68050. In keeping with general Motorola naming, the 68040 is often referred to as simply the '040 (pronounced _oh-four-oh_ or _oh-forty_).

In Apple Macintosh computers, the 68040 was introduced in the Macintosh Quadra, which was named for the chip. The fastest 68040 processor was clocked at 40 MHz and it was used only in the Quadra 840AV. The more expensive models in the (short-lived) Macintosh Centris line also used the 68040, while the cheaper Quadra, Centris and Macintosh Performa used the 68LC040. The 68040 was also used in other personal computers, such as the Amiga 4000 and Amiga 4000T, as well as a number of workstations, Alpha Microsystems servers, the HP 9000/400 series, and later versions of the NeXT computer.

The 68040 was the first 680x0 family member with an on-chip Floating-Point Unit (FPU). It thus included all of the functionality that previously required external chips, namely the FPU and Memory Management Unit (MMU), which was added in the 68030. It also had split instruction and data caches of 4 kilobytes each. It was fully pipelined, with six stages.

Unfortunately, the 68040 ran into the transistor budget limit early in design. While the MMU did not take many transistors—indeed, having it on the same die as the CPU actually saved on transistors—the FPU certainly did. Motorola's 68882 external FPU was known as a very high performance unit and Motorola did not wish to risk integrators using the "LC" version with a 68882 instead of the more profitable full "RC" unit. (For information on Motorola's multiprocessing model with the 680x0 series, see Motorola 68020.) The FPU in the 68040 was thus made incapable of IEEE transcendental functions, which had been supported by both the 68881 and 68882 and were used by the popular fractal generating software of the time and little else. The Motorola floating point support package (FPSP) emulated these instructions in software under interrupt. As this was an exception handler, heavy use of the transcendental functions caused severe performance penalties.

Heat was always a problem throughout the 68040's life. While it delivered over four times the per-clock performance of the 68020 and 68030, the chip's complexity and power requirements came from a large die and large caches. This affected the scaling of the processor and it was never able to run with a clock rate exceeding 40 MHz. A 50 MHz variant was planned, but canceled. Overclocking enthusiasts reported success reaching 50 MHz using a 100 MHz oscillator instead of an 80 MHz part and the then novel technique of adding oversized heat sinks with fans.

The 68040 offered the same features as the Intel 80486, but on a clock-for-clock basis could significantly outperform the Intel chip in integer and floating point instructions.[1][2] However, the 80486 had the ability to be clocked significantly faster without suffering from overheating problems. In late 1991, as the higher-end Macintosh desktop lineup transitioned to the '040, Apple was unable to offer the newer processor in their top-of-the-line PowerBooks until early 1994. With PowerBooks being restricted to 68030s for several years, _Macworld_ reviewers conceded that the best choice for power users was the PC-compatible Texas Instruments 80486 notebook, rather than the top-of-the-line PowerBook 180.

Versions of the 68040 were created for specific market segments, including the 68LC040, which removed the FPU, and the 68EC040, which removed both the FPU and MMU. Motorola had intended the EC variant for embedded use, but embedded processors during the 68040's time did not need the power of the 68040, so EC variants of the 68020 and 68030 continued to be common in designs.

Motorola produced several speed grades. The 16 MHz and 20 MHz parts were never qualified (XC designation) and used as prototyping samples. 25 MHz and 33 MHz grades featured across the whole line, but until around 2000 the 40 MHz grade was only for the "full" 68040. A planned 50 MHz grade was canceled after it exceeded the thermal design envelope.

For more information on the instructions and architecture, see Motorola 68000.


Variants

68EC040

The _68EC040_ is a version of the Motorola 68040 microprocessor, intended for embedded controllers (EC). It differs from the 68040 in that it has neither an FPU nor an MMU. This makes it less expensive and it draws less power. The 68EC040 was used in Cisco switch Supervisor Engine I that is the heart of models 2900, 2948G, 2980G, 4000, 4500, 5000, 5500, 6000, 6500 and 7600.

68LC040

Motorola68040die.jpg The _68LC040_ is a _low cost_ version of the Motorola 68040 microprocessor with no FPU. This makes it less expensive and it draws less power. Although the CPU now fits into a feature chart more like the Motorola 68030, it continues to include the 68040's caches and pipeline and is thus significantly faster than the 68030.

Some mask revisions of the 68LC040 contained a bug that prevents the chip from operating correctly when a software FPU emulator is used. According to Motorola's errata,[3] any chip with a mask set 2E71M or later does not contain the bug. This new mask was introduced in mid-1995 and converted the 68LC040 chip to MC status.[4]

The buggy revisions are typically found in 68LC040-based Apple Macintosh computers. Chips with mask set 2E23G (as used in the LC 475) have been confirmed to be faulty. The fault relates to pending writes being lost when the F-line exception is triggered.[5] The 68040 cannot update its microcode in the manner of modern x86 chips. This means that the only way to use software that requires floating-point functionality is to replace the buggy 68LC040 with a later revision, or a full 68040.

Feature table

+---------+-----+-----+
| Variant | MMU | FPU |
+=========+=====+=====+
| 68040   |     |     |
+---------+-----+-----+
| 68LC040 |     |     |
+---------+-----+-----+
| 68EC040 |     |     |
+---------+-----+-----+


Technical data

+--------------------+-----------------------------+
| CPU clock rate     | 25, 33, 40 MHz              |
+--------------------+-----------------------------+
| Production process | static CMOS , , Freescale   |
+--------------------+-----------------------------+
| Chip carrier       | 179 ceramic PGA and 184 QFP |
+--------------------+-----------------------------+
| Address bus        | 32 bit                      |
+--------------------+-----------------------------+
| Data bus           | 32 bit                      |
+--------------------+-----------------------------+
| Instruction set    | CISC                        |
+--------------------+-----------------------------+
| Transistors        |                             |
+--------------------+-----------------------------+
|                    |                             |
+--------------------+-----------------------------+

ATC = Address Translation Cache


References


Further reading

-


External links

-   MC68040 Product Summary Page
-   MC68040V Third-Generation 32-Bit Low-Power Microprocessor (PDF)
-   M68040 Microprocessors User's Manual (PDF)

Category:68k microprocessors

[1]

[2] 68040 Microprocessor

[3]

[4]

[5]