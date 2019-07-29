Motorola_68030_32-bit_microprocessor.jpg The MOTOROLA 68030 ("_sixty-eight-oh-thirty_") is a 32-bit microprocessor in the Motorola 68000 family. It was released in 1987. The 68030 was the successor to the Motorola 68020, and was followed by the Motorola 68040. In keeping with general Motorola naming, this CPU is often referred to as the 030 (pronounced _oh-three-oh_ or _oh-thirty_).

The 68030 features 273,000 transistors with on-chip instruction and data caches of 256 bytes each. It also has an on-chip memory management unit (MMU) but does not have a built in floating-point unit (FPU). The 68881 and the faster 68882 floating point unit chips could be used with the 68030. A lower cost version of the 68030, the Motorola 68EC030, was also released, lacking the on-chip MMU. It was commonly available in both 132 pin QFP and 128 pin PGA packages. The poorer thermal characteristics of the QFP package limited the full 68030 QFP variant to 33 MHz; the PGA 68030s included 40 MHz and 50 MHz versions. There was also a small supply of QFP packaged EC variants.

Motorola_MC68030RC33B.JPG

As a microarchitecture, the 68030 is basically a 68020 core with an additional 256 byte data cache and a process shrink and an added burst mode for the caches, where four longwords can be placed in the cache without further CPU intervention. Motorola used the process shrink to pack more hardware on the die; in this case it was the MMU, which mostly (but not completely[1]) compatible with the external 68851. The integration of the MMU made it more cost-effective than the 68020 with an external MMU; it also allowed the 68030 to access memory one cycle faster than a 68020/68851 combo. However, the 68030 can switch between synchronous and asynchronous buses without a reset. The 68030 also lacks some of the 68020's instructions, but it increases performance by ≈5% while reducing power draw by ≈25% compared to the 68020.

The 68030 can be used with the 68020 bus, in which case its performance is similar to 68020 that it was derived from. However, the 68030 provides an additional synchronous bus interface which, if used, accelerates memory accesses up to 33% compared to an equally clocked 68020. The finer manufacturing process allowed Motorola to scale the full-version processor to 50 MHz. The EC variety topped out at 40 MHz.


Applications

The 68030 was used in many models of the Apple Macintosh II and Commodore Amiga series of personal computers, NeXT Cube, later Alpha Microsystems multiuser systems, and some descendants of the Atari ST line such as the Atari TT and the Atari Falcon. It was also used in Unix workstations such as the Sun Microsystems Sun-3x line of desktop workstations (the earlier "sun3" used a 68020), laser printers and the Nortel Networks DMS-100 telephone central office switch. More recently, the 68030 core has also been adapted by Freescale into a microcontroller for embedded applications.

LeCroy has used the 68EC030 in certain models of their 9300 Series digital oscilloscopes including “C” suffix models and high performance 9300 Series models,[2] along with the Mega Waveform Processing hardware option for 68020-based 9300 Series models.[3]


Variants

The 68EC030 is a low cost version of the 68030, the difference between the two being that the 68EC030 omits the on-chip memory management unit (MMU) and is thus essentially an upgraded 68020.

The 68EC030 was used as the CPU for the low-cost model of the Amiga 4000, and on a number of CPU accelerator cards for the Commodore Amiga line of computers. It was also used in the Cisco Systems 2500 Series router, a small-to-medium enterprise computer internetworking appliance.

The 50 MHz speed is exclusive to the ceramic PGA package, the plastic '030 stopped at 40 MHz.


Technical data

  ---------------- ----------------------------------------------------------------------------- ------
  CPU clock rate   16, 20, 25, 33, 40, 50 MHz, except for MC68EC030 available in 25 and 40 MHz   [4]
                   Internal Harvard architecture                                                 [5]
  Address bus      32 bit                                                                        [6]
  Data bus         32 bit                                                                        [7]
  Cache            256 bytes for instruction and data                                            [8]
                   Dynamic Bus Sizing                                                            [9]
                   Burst Memory Interface                                                        [10]
  Performance      18 MIPS @ 50 MHz                                                              [11]
  ---------------- ----------------------------------------------------------------------------- ------


Bibliography


References


External links

-   68030 images and descriptions at cpu-collection.de
-   Official information about the Freescale MC68030 microcontroller
-   Motorola 68k family data sheets at bitsavers.org

Category:68k microprocessors

[1]

[2] LeCroy 1996 Test & Measurement Product Catalog, 9300 Series Hardware Options, Mega Waveform Processing, Pages 66-67

[3]

[4]

[5] freescale.com - MC68030 Product Summary Page 2012

[6] cpu-world.com - Motorola 68030 (MC68030) microprocessor family, 2012-11-17

[7]

[8]

[9]

[10]

[11]