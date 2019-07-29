The first Pentium microprocessor was introduced by Intel on March 22, 1993.[1][2] Dubbed P5, its microarchitecture was the fifth generation for Intel, and the first superscalar IA-32 microarchitecture. As a direct extension of the 80486 architecture, it included dual integer pipelines, a faster floating-point unit, wider data bus, separate code and data caches and features for further reduced address calculation latency. In 1996, the _Pentium with MMX Technology_ (often simply referred to as _Pentium MMX_) was introduced with the same basic microarchitecture complemented with an MMX instruction set, larger caches, and some other enhancements.

Intel_Pentium_A80501_66_SX950.JPG

The P5 Pentium competitors included the Motorola 68060 and the PowerPC 601 as well as the SPARC, MIPS, and Alpha microprocessor families, most of which also used a superscalar in-order dual instruction pipeline configuration at some time.

Intel's Larrabee multicore architecture project uses a processor core derived from a P5 core (P54C), augmented by multithreading, 64-bit instructions, and a 16-wide vector processing unit.[3] Intel's low-powered Bonnell microarchitecture employed in early Atom processor cores also uses an in-order dual pipeline similar to P5.[4]

Intel discontinued the P5 Pentium processors (which had been downgraded to an entry-level product since the Pentium II debuted in 1997) in 1999 in favor of the Celeron processor which also replaced the 80486 brand.


Development

The P5 microarchitecture was designed by the same Santa Clara team which designed the 386 and 486.[5] Design work started in 1989;[6] the team decided to use a superscalar architecture, with on-chip cache, floating-point, and branch prediction. The preliminary design was first successfully simulated in 1990, followed by the laying-out of the design. By this time, the team had several dozen engineers. The design was taped out, or transferred to silicon, in April 1992, at which point beta-testing began.[7] By mid-1992, the P5 team had 200 engineers.[8] Intel at first planned to demonstrate the P5 in June 1992 at the trade show PC Expo, and to formally announce the processor in September 1992,[9] but design problems forced the demo to be cancelled, and the official introduction of the chip was delayed until the spring of 1993.[10][11]

John H. Crawford, chief architect of the original 386, co-managed the design of the P5,[12] along with Donald Alpert, who managed the architectural team. Dror Avnon managed the design of the FPU.[13] Vinod K. Dham was general manager of the P5 group.[14]

Major improvements over the 80486 microarchitecture

The P5 microarchitecture brings several important advancements over the preceding i486 architecture.

-   _Performance_:
    -   Superscalar architecture — The Pentium has two datapaths (pipelines) that allow it to complete two instructions per clock cycle in many cases. The main pipe (U) can handle any instruction, while the other (V) can handle the most common simple instructions. Some RISC proponents had argued that the "complicated" x86 instruction set would probably never be implemented by a tightly pipelined microarchitecture, much less by a dual-pipeline design. The 486 and the Pentium demonstrated that this was indeed possible and feasible.
    -   64-bit external databus doubles the amount of information possible to read or write on each memory access and therefore allows the Pentium to load its code cache faster than the 80486; it also allows faster access and storage of 64-bit and 80-bit x87 FPU data.
    -   Separation of code and data caches lessens the fetch and operand read/write conflicts compared to the 486. To reduce access time and implementation cost, both of them are 2-way associative, instead of the single 4-way cache of the 486. A related enhancement in the Pentium is the ability to read a contiguous block from the code cache even when it is split between two cache lines (at least 17 bytes in worst case).
    -   Much faster floating-point unit. Some instructions showed an enormous improvement, most notably FMUL, with up to 15 times higher throughput than in the 80486 FPU. The Pentium is also able to execute a FXCH ST(x) instruction in parallel with an ordinary (arithmetical or load/store) FPU instruction.
    -   Four-input address adders enables the Pentium to further reduce the address calculation latency compared to the 80486. The Pentium can calculate full addressing modes with _segment-base_ + _base-register_ + _scaled register_ + _immediate offset_ in a single cycle; the 486 has a three-input address adder only, and must therefore divide such calculations between two cycles.
    -   The microcode can employ both pipelines to enable auto-repeating instructions such as REP MOVSW perform one iteration every clock cycle, while the 80486 needed three clocks per iteration (and the earliest x86 chips significantly more than the 486). Also, optimization of the access to the first microcode words during the decode stages helps in making several frequent instructions execute significantly more quickly, especially in their most common forms and in typical cases. Some examples are (486→Pentium, in clock cycles): CALL (3→1), RET (5→2), shifts/rotates (2–3→1).
    -   A faster, fully hardware-based multiplier makes instructions such as MUL and IMUL several times faster (and more predictable) than in the 80486; the execution time is reduced from 13–42 clock cycles down to 10–11 for 32-bit operands.
    -   Virtualized interrupt to speed up virtual 8086 mode.
-   _Other features_:
    -   Enhanced debug features with the introduction of the Processor-based debug port (see _Pentium Processor Debugging_ in the Developers Manual, Vol 1).
    -   Enhanced self-test features like the L1 cache parity check (see _Cache Structure_ in the Developers Manual, Vol 1).
    -   New instructions: CPUID, CMPXCHG8B, RDTSC, RDMSR, WRMSR, RSM.
    -   Test registers TR0–TR7 and MOV instructions for access to them were eliminated.
-   The later PENTIUM MMX also added the MMX instruction set, a basic integer SIMD instruction set extension marketed for use in multimedia applications. MMX could not be used simultaneously with the x87 FPU instructions because the registers were reused (to allow fast context switches). More important enhancements were the doubling of the instruction and data cache sizes and a few microarchitectural changes for better performance.

The Pentium was designed to execute over 100 million instructions per second (MIPS),[15] and the 75 MHz model was able to reach 126.5 MIPS in certain benchmarks.[16] The Pentium architecture typically offered just under twice the performance of a 486 processor per clock cycle in common benchmarks. The fastest 80486 parts (with slightly improved microarchitecture and 100 MHz operation) were almost as powerful as the first-generation Pentiums, and the AMD Am5x86 was roughly equal to the Pentium 75 regarding pure ALU performance.

Bugs and problems

The early versions of 60–100 MHz P5 Pentiums had a problem in the floating-point unit that resulted in incorrect (but predictable) results from some division operations. This bug, discovered in 1994 by professor Thomas Nicely at Lynchburg College, Virginia, became known as the Pentium FDIV bug and caused embarrassment for Intel, which created an exchange program to replace the faulty processors. Soon afterwards was discovered a bug that could allow a malicious program to crash a system without any special privileges (the "F00F bug"); fortunately, operating systems were able to implement workarounds to prevent crashes.

The 60 and 66 MHz 0.8 µm versions of the P5 Pentium processors also had (for the time) high heat production due to their 5 V operation. The P54C used 3.3 V and had significantly lower power draw, by about 51% (a quadratic relationship). P5 Pentiums used Socket 4, while P54C started out on Socket 5 before moving to Socket 7 in later revisions. All desktop Pentiums from P54CS onwards used Socket 7.


Cores and steppings

The Pentium was Intel's primary microprocessor for personal computers during the mid-1990s. The original design was reimplemented in newer processes and new features were added to maintain its competitiveness as well as to address specific markets such as portable computers. As a result, there were several variants of the P5 microarchitecture.

P5

Intel_Pentium_arch.svg The first Pentium microprocessor core was code-named "P5". Its product code was 80501 (80500 for the earliest steppings Q0399). There were two versions, specified to operate at 60 MHz and 66 MHz respectively. This first implementation of the Pentium used a traditional 5-volt power supply (descended from the usual TTL logic compatibility requirements). It contained 3.1 million transistors and measured 16.7 mm by 17.6 mm for an area of 293.92 mm².[17] It was fabricated in a 0.8 µm BiCMOS process.[18] The 5-volt design resulted in relatively high energy consumption for its operating frequency, when compared to the later models.

P54C

Intel_Pentium_P54C_die.jpg The P5 was followed by the P54C (80502), also known as PENTIUM-S; there were versions specified to operate at 75, 90, or 100 MHz using a 3.3 volt power supply. This was the first Pentium processor to operate at 3.3 volts, reducing energy consumption. It employed an internal clock multiplier to let the internal circuitry work at a higher frequency than the external address and data buses, as it is more complicated and cumbersome to increase the external frequency, due to physical constraints. It also allowed two-way multiprocessing and had an integrated local APIC as well as new power management features. It contained 3.3 million transistors and measured 163 mm².[19] It was fabricated in a BiCMOS process which has been described as both 0.5 µm and 0.6 µm due to differing definitions.[20]

P54CQS

The P54C was followed by the P54CQS which operated at 120 MHz. It was fabricated in a 0.35 µm BiCMOS process and was the first commercial microprocessor to be fabricated in a 0.35 µm process.[21] Its transistor count is identical to the P54C and, despite the newer process, it had an identical die area as well. The chip was connected to the package using wire bonding, which only allows connections along the edges of the chip. A smaller chip would have required a redesign of the package, as there is a limit on the length of the wires and the edges of the chip would be further away from the pads on the package. The solution was to keep the chip the same size, retain the existing pad-ring, and only reduce the size of the Pentium's logic circuitry to enable it to achieve higher clock frequencies.[22]

P54CS

The P54CQS was followed by the P54CS, which operated at 133, 150, 166 and 200 MHz. It contained 3.3 million transistors, measured 90 mm² and was fabricated in a 0.35 µm BiCMOS process with four levels of interconnect.

P24T

The P24T Pentium OverDrive for 486 systems were released in 1995, which were based on 3.3 V 0.6 µm versions using a 63 or 83 MHz clock. Since these used Socket 2/3, some modifications had to be made to compensate for the 32-bit data bus and slower on-board L2 cache of 486 motherboards. They were therefore equipped with a 32 KB L1 cache (double that of pre-P55C Pentium CPUs).

P55C

Intel_Pentium_MMX_Processor_Logo.svg enhancement (1993–1999)]] Intel_Pentium_MMX_arch.svg P-MMX.JPG The P55C (or 80503) was developed by Intel's Research & Development Center in Haifa, Israel. It was sold as PENTIUM WITH MMX TECHNOLOGY (usually just called PENTIUM MMX); although it was based on the P5 core, it featured a new set of 57 "MMX" instructions intended to improve performance on multimedia tasks, such as encoding and decoding digital media data. The Pentium MMX line was introduced on October 22, 1996.[23]

The new instructions worked on new data types: 64-bit packed vectors of either eight 8-bit integers, four 16-bit integers, two 32-bit integers, or one 64-bit integer. So, for example, the PADDUSB (Packed ADD Unsigned Saturated Byte) instruction adds two vectors, each containing eight 8-bit unsigned integers together, elementwise; each addition that would overflow _saturates_, yielding 255, the maximal unsigned value that can be represented in a byte. These rather specialized instructions generally require special coding by the programmer for them to be used.

Other changes to the core include a 6-stage pipeline (vs. 5 on P5) with a return stack (first done on Cyrix 6x86) and better parallelism, an improved instruction decoder, 32 KB L1 cache with 4-way associativity (vs. 16 KB with 2-way on P5), 4 write buffers that could now be used by either pipeline (vs. one corresponding to each pipeline on P5) and an improved branch predictor taken from the Pentium Pro[24][25], with a 512-entry buffer (vs. 256 on P5).[26]

It contained 4.5 million transistors and had an area of 140 mm². It was fabricated in a 0.28 µm CMOS process with the same metal pitches as the previous 0.35 µm BiCMOS process, so Intel described it as "0.35 µm" because of its similar transistor density.[27] The process has four levels of interconnect.[28]

While the P55C is compatible with the common Socket 7 motherboard configuration, the voltage requirements for powering the chip differ from the standard Socket 7 specifications. Most motherboards manufactured for Socket 7 prior to the establishment of the P55C standard are not compliant with the dual intensity required for proper operation of this chip. Intel temporarily manufactured an upgrade kit called the OverDrive that was designed to correct this lack of planning on the motherboard makers' part.

Tillamook

Pentium MMX notebook CPUs used a "mobile module" that held the CPU. This module was a PCB with the CPU directly attached to it in a smaller form factor. The module snapped to the notebook motherboard, and typically a heat spreader was installed and made contact with the module. However, with the 0.25 µm _Tillamook_ Mobile Pentium MMX (named after a city in Oregon), the module also held the 430TX chipset along with the system's 512 KB SRAM cache memory.


Models and variants

                                                                                                                        KL_Intel_Pentium_P5.jpg Pentium_60_SX948_gold_front.jpg   KL_Intel_Pentium_75.jpg Pentium_Front.jpg Pentium_tt80502-75_sk089_observe.png   Intel_Pentium_133.jpg KL_Intel_Pentium_P54C_200.jpg Ic-photo-Intel--TT80502133--(PP133)--(Mobile-Pentium-CPU).JPG   KL_Intel_Pentium_MMX.jpg Intel_Pentium_MMX_166_PGA_Front.jpg Ic-photo-Intel--TT80503166--(Pentium-MMX-Mobile-CPU).JPG   KL_Intel_Pentium_Mobile.jpg
  --------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------- -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------
  Code name                                                                                                             P5                                                        P54C                                                                             P54C/P54CQS                                                                                                         P54CS                                                                                                                   P55C
  Product code                                                                                                          80501                                                     80502                                                                            80503
  Process size (µm)                                                                                                     0.80                                                      0.60 or 0.35*                                                                    0.35                                                                                                                0.35 (later 0.28)                                                                                                       0.25
  Die area (mm²)                                                                                                        293.92 (16.7 x 17.6 mm)                                   148 @ 0,6 µm / 91 (later 83) @ 0,35 µm                                           91 (later 83)                                                                                                       141 @ 0,35 µm / 128 @ 0,28 µm                                                                                           94.47 (9.06272 x 10.42416 mm)
  Number of transistors (millions)                                                                                      3.10                                                      3.20                                                                             3.30                                                                                                                4.50
  Socket                                                                                                                Socket 4                                                  Socket 5/7                                                                       Socket 7
  Package                                                                                                               CPGA/CPGA+IHS                                             CPGA/CPGA+IHS/TCP*                                                               CPGA/TCP*                                                                                                           CPGA/TCP*                                                                                                               CPGA/PPGA
  Clock speed (MHz)                                                                                                     60                                                        66                                                                               75                                                                                                                  90                                                                                                                      100
  Bus speed (MHz)                                                                                                       60                                                        66                                                                               50                                                                                                                  60                                                                                                                      50
  Core Voltage                                                                                                          5.0                                                       5.15                                                                             3.3 2,9*                                                                                                            3.3 2.9*                                                                                                                3.3 3.1* 2.9*
  I/O Voltage                                                                                                           5.0                                                       5.15                                                                             3.3                                                                                                                 3.3                                                                                                                     3.3
  TDP (max. W)                                                                                                          14.6 (15.3)                                               16.0 (17.3)                                                                      8.0 (9.5) 6.0* (7.3*)                                                                                               9.0 (10.6) 7.3* (8.8*)                                                                                                  10.1 (11.7) 8.0 at 0.6μ* (9.8 at 0.6μ*) 5.9 at 0.35μ* (7.6 at 0.35μ*)
  Introduced                                                                                                            1993-03-22                                                1994-10-10                                                                       1994-03-07                                                                                                          1995-03-27                                                                                                              1995-06-12
  _* An asterisk indicates that these were only available as Mobile Pentium or Mobile Pentium MMX chips for laptops._

  : Pentium and Pentium with MMX Technology

                      KL_Intel_Pentium_MMX_Overdrive_A.jpg
  ------------------- -----------------------------------------------
  Code name           P54CTB
  Product code        PODPMT60X150
  Process size (µm)   0.35
  Socket              Socket 5/7
  Package             CPGA with heatsink, fan and voltage regulator
  Clock speed (MHz)   125
  Bus speed (MHz)     50
  Upgrade for         Pentium 75
  TDP (max. W)        15.6
  Voltage             3.3

  : Pentium OverDrive with MMX Technology

                      KL_Intel_Pentium_MMX_embedded_Top.jpg   KL_Intel_Embedded_Pentium_MMX_PGA_Bottom.jpg
  ------------------- --------------------------------------- ----------------------------------------------
  Code name           P55C                                    _Tillamook_
  Product code        FV8050366200                            FV8050366233
  Process size (µm)   0.35                                    0.25
  Clock speed (MHz)   200                                     233
  Bus speed (MHz)     66                                      66
  Package             PPGA                                    PPGA
  TDP (max. W)        15.7                                    17
  Voltage             2.8                                     2.8

  : Embedded versions of Pentium with MMX Technology


Competitors

After the introduction of the Pentium, competitors such as Nexgen,[29] AMD, Cyrix, and Texas Instruments announced Pentium-compatible processors in 1994.[30] _CIO magazine_ identified NexGen's Nx586 as the first Pentium-compatible CPU,[31] while _PC Magazine_ described the Cyrix 6x86 as the first. These were followed by the AMD K5, which was delayed due to design difficulties. AMD later bought NexGen in order to help design the AMD K6, and Cyrix was purchased by National Semiconductor.[32] Later processors from AMD and Intel retain compatibility with the original Pentium.


See also

-   List of Intel CPU microarchitectures
-   List of Intel Pentium microprocessors
-   COASt (Cache On A Stick), L2 cache modules for Pentium
-   IA-32 instruction set architecture (ISA)
-   Intel 82497 Cache Controller

Competitors

-   AMD K5, AMD K6
-   Cyrix 6x86
-   WinChip C6
-   NexGen Nx586
-   Rise mP6


References


External links

-   CPU-Collection.de - Intel Pentium images and descriptions
-   Plasma Online Intel CPU Identification
-   The Pentium Timeline Project The Pentium Timeline Project maps oldest and youngest chip known of every s-spec made. Data are shown in an interactive timeline.

Intel datasheets

-   Pentium (P5)
-   Pentium (P54)
-   Pentium MMX (P55C)
-   Mobile Pentium MMX (P55C)
-   Mobile Pentium MMX (Tillamook)

Intel manuals

These Manuals do provide an overview of the Pentium Processor and its features:

-   Pentium Processor Family Developer’s Manual Pentium Processor (Volume 1) (Intel Order Number 241428)
-   Pentium Processor Family Developer’s Manual Volume 2: Instruction Set Reference (Intel Order Number 243191)
-   Pentium Processor Family Developer’s Manual Volume 3: Architecture and Programming Manual (Intel Order Number 241430)

Category:Computer-related introductions in 1993 Category:Intel x86 microprocessors Category:Intel microarchitectures Category:Superscalar microprocessors

[1]

[2]

[3] §3 of

[4]

[5] p. 1, _The Pentium Chronicles: The People, Passion, and Politics Behind Intel's Landmark Chips_, Robert P. Colwell, Wiley, 2006, .

[6] p. 88, "Inside Intel", _Business Week_, #3268, June 1, 1992.

[7] "The hot new star of microchips", Monica Horten, _New Scientist_, #1871, pp. 31 ff., May 1, 1993. Accessed on line June 9, 2009.

[8] p. 89, "Inside Intel", _Business Week_, #3268, June 1, 1992.

[9] p. 8, "Intel to offer a peek at its `586' chip", Tom Quinlan, _InfoWorld_, March 16, 1992.

[10] p. 1, "Design woes force Intel to cancel 586 chip demo", Tom Quinlan and Cate Corcoran, _InfoWorld_ 14, #24, June 15, 1992.

[11] pp. 1, 103, "P5 chip delay won't alter rivals' plans", Tom Quinlan, _InfoWorld_ 14, #30, July 27, 1992.

[12] p. 54, "Intel Turns 35: Now What?", David L. Margulius, _InfoWorld_, July 21, 2003, ISSN 0199-6649.

[13] p. 21, "Architecture of the Pentium microprocessor", D. Alpert and D. Avnon, _IEEE Micro_, 13, #3 (June 1993), pp. 11–21, .

[14] p. 90, "Inside Intel", _Business Week_, #3268, June 1, 1992.

[15]

[16] http://www.islandnet.com/~kpolsson/micropro/proc1994.htm

[17] Case, Brian (March 29, 1993). "Intel Reveals Pentium Implementation Details". _Microprocessor Report_.

[18] Intel Pentium processor (510\60, 567\66). Nov 1994

[19]

[20]

[21] Gwennap, Linley (March 27, 1995). "Pentium is First CPU to Reach 0.35 Micron". _Microprocessor Report_.

[22]

[23]

[24]

[25]

[26]

[27] Slater, Michael (March 5, 1996). "Intel's Long-Awaited P55C Disclosed". _Microprocessor Report_.

[28]

[29]

[30]

[31]

[32]