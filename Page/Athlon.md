ATHLON is the brand name applied to a series of x86-compatible microprocessors designed and manufactured by Advanced Micro Devices (AMD). The original Athlon (now called _Athlon Classic_) was the first seventh-generation x86 processor and was the first desktop processor to reach speeds of one gigahertz (GHz). It made its debut on June 23, 1999.

AMD has continued using the _Athlon_ name with the 64-bit Athlon 64 architecture, the Athlon II, and Accelerated Processing Unit (APU) chips targeting the Socket AM1 desktop SoC architecture, and Socket AM4 Zen microarchitecture.[1]

Athlon comes from the Ancient Greek (_athlon_) meaning "(sport) contest", or "prize of a contest", or "place of a contest; arena".


Background

AMD founder (and then-CEO) Jerry Sanders aggressively pursued strategic partnerships and engineering talent in the late 1990s, to build on earlier successes in the PC market with the AMD K6 line of processors. One major partnership announced in 1998 paired AMD with semiconductor giant Motorola[2] to co-develop copper-based semiconductor technology, and resulted with the K7 project being the first commercial processor to utilize copper fabrication technology. In the announcement, Sanders referred to the partnership as creating a "virtual gorilla" that would enable AMD to compete with Intel on fabrication capacity while limiting AMD's financial outlay for new facilities.

The K7 design team was led by Dirk Meyer, who had worked as a lead engineer at DEC on multiple Alpha microprocessors during his employment at DEC. When DEC was sold to Compaq in 1998, the company discontinued Alpha processor development. Sanders approached many of the Alpha engineering staff as Compaq/DEC wound down their semiconductor business, and was able to bring in nearly all of the Alpha design team. The K7 engineering design team was thus now consisted of both the previously acquired NexGen K6 team (already including engineers such as Vinod Dham) and the nearly complete Alpha design team.

In August 1999, AMD released the Athlon (K7) processor.

By working with Motorola, AMD was able to refine copper interconnect manufacturing to the production stage about one year before Intel. The revised process permitted 180-nanometer processor production. The accompanying die-shrink resulted in lower power consumption, permitting AMD to increase Athlon clock speeds to the 1 GHz range.[3] Yields on the new process exceeded expectations, permitting AMD to deliver high speed chips in volume in March 2000.

The Athlon architecture also used the EV6 bus licensed from DEC as its main system bus. Intel required licensing to use the GTL+ bus used by its Slot 1 Pentium II and later processors. By licensing the EV6 bus used by the Alpha line of processors from DEC, AMD was able to develop its own chipsets and motherboards, and avoid being dependent on licensing from its direct competitor.


General architecture

Athlon_arch.png

Internally, the Athlon is a fully seventh generation x86 processor, the first of its kind. Like the AMD K5 and K6, the Athlon dynamically buffers internal micro-instructions at runtime resulting from parallel x86 instruction decoding. The CPU is an out-of-order design, again like previous post-5x86 AMD CPUs. The Athlon utilizes the Alpha 21264's EV6 bus architecture with double data rate (DDR) technology. This means that at 100 MHz, the Athlon front side bus actually transfers at a rate similar to a 200 MHz single data rate bus (referred to as 200 MT/s), which was superior to the method used on Intel's Pentium III (with SDR bus speeds of 100 MHz and 133 MHz).

AMD designed the CPU with more robust x86 instruction decoding capabilities than that of K6, to enhance its ability to keep more data in-flight at once. The Athlon's three decoders could potentially decode three x86 instructions to six microinstructions per clock, although this was somewhat unlikely in real-world use.[4] The critical branch predictor unit, essential to keeping the pipeline busy, was enhanced compared to what was on board the K6. Deeper pipelining with more stages allowed higher clock speeds to be attained.[5] Whereas the AMD K6-III+ topped out at 570 MHz due to its short pipeline, even when built on the 180 nm process, the Athlon was capable of clocking much higher.

AMD ended its long-time handicap with floating point x87 performance by designing a super-pipelined, out-of-order, triple-issue floating point unit.[6] Each of its three units was tailored to be able to calculate an optimal type of instructions with some redundancy. By having separate units, it was possible to operate on more than one floating point instruction at once.[7] This FPU was a huge step forward for AMD. While the K6 FPU had looked anemic compared to the Intel P6 FPU, with Athlon this was no longer the case.[8]

The 3DNow! floating point SIMD technology, again present, received some revisions and a name change to "Enhanced 3DNow!". Additions included DSP instructions and an implementation of the extended MMX subset of Intel SSE.[9]

The Athlon's CPU cache consisted of the typical two levels. Athlon was the first x86 processor with a 128 kB[10] split level 1 cache; a 2-way associative cache separated into 2×64 kB for data and instructions (a concept from Harvard architecture).[11] This cache was double the size of K6's already large 2×32 kB cache, and quadruple the size of Pentium II and III's 2×16 kB L1 cache. The initial Athlon (Slot A, later called Athlon Classic) used 512 kB of level 2 cache separate from the CPU, on the processor cartridge board, running at 50% to 33% of core speed. This was done because the 250 nm manufacturing process was too large to allow for on-die cache while maintaining cost-effective die size. Later Athlon CPUs, afforded greater transistor budgets by smaller 180 nm and 130 nm process nodes, moved to on-die L2 cache at full CPU clock speed.

Athlon "Classic"

Argonathlon.jpg Amd_athlon_classic.jpg Slot-A_Athlon.jpg

The AMD Athlon processor launched on June 23, 1999, with general availability by August '99.[12] It launched at 500 MHz and was, on average, 10% faster than the Pentium III at the same clock for Business applications, and even faster (~20%) for gaming workloads.[13]

The Athlon Classic is a cartridge-based processor, named Slot A and similar to Intel's cartridge Slot 1 used for Pentium II and Pentium III. It used the same, commonly available, physical 242 pin connector used by Intel Slot 1 processors but rotated by 180 degrees to connect the processor to the motherboard. The reversal served to make the slot keyed to prevent installation of the wrong CPU, as the Athlon and Intel processors used fundamentally different (and incompatible) signaling standards for their front-side bus. The cartridge assembly allowed the use of higher speed cache memory modules than could be put on (or reasonably bundled with) motherboards at the time. Similar to the Pentium II and the Katmai-based Pentium III, the Athlon Classic contained 512 kB of L2 cache. This high-speed SRAM cache was run at a divisor of the processor clock and was accessed via its own 64-bit bus, known as a "back-side bus" allowing the processor to both service system front side bus requests (the rest of the system) and cache accesses simultaneously versus the traditional approach of pushing _everything_ through the front-side bus.[14]

One limitation (also afflicting the Intel Pentium III) is that SRAM cache designs at the time were incapable of keeping up with the Athlon's clock scalability, due both to manufacturing limitations of the cache chips and the difficulty of routing electrical connections to the cache chips themselves. It became increasingly difficult to reliably run an external processor cache to match the processor speeds being released—and in fact it became impossible. Thus initially the Level 2 cache ran at half of the CPU clock speed up to 700 MHz (350 MHz cache). Faster Slot-A processors had to compromise further and run at 2/5 (up to 850 MHz, 340 MHz cache) or 1/3 (up to 1 GHz, 333 MHz cache).[15] This later race to 1 GHz (1000 MHz) by AMD and Intel further exacerbated this bottleneck as ever higher speed processors demonstrated decreasing gains in overall performance—stagnant SRAM cache memory speeds choked further improvements in overall speed. This directly lead to the development of integrating L2 cache onto the processor itself and remove the dependence on external cache chips. AMD's integration of the cache onto the Athlon processor itself would later result in the Athlon Thunderbird.

The Slot-A Athlons were the first multiplier-locked CPUs from AMD. This was partly done to hinder CPU remarking being done by questionable resellers around the globe. AMD's older CPUs could simply be set to run at whatever clock speed the user chose on the motherboard, making it trivial to relabel a CPU and sell it as a faster grade than it was originally intended. These relabeled CPUs were not always stable, being overclocked and not tested properly, and this was damaging to AMD's reputation. Although the Athlon was multiplier locked, crafty enthusiasts eventually discovered that a connector on the PCB of the cartridge could control the multiplier. Eventually a product called the "Goldfingers device" was created that could unlock the CPU, named after the gold connector pads on the processor board that it attached to.[16]

In commercial terms, the Athlon "Classic" was an enormous success—not just because of its own merits, but also because Intel endured a series of major production, design, and quality control issues at this time. In particular, Intel's transition to the 180 nm production process, starting in late 1999 and running through to mid-2000, suffered delays. There was a shortage of Pentium III parts. In contrast, AMD enjoyed a remarkably smooth process transition and had ample supplies available, causing Athlon sales to become quite strong.

The Argon-based Athlon contained 22 million transistors and measured 184 mm². It was fabricated by AMD in a slightly modified version of their CS44E process, a 0.25 µm complementary metal–oxide–semiconductor (CMOS) process with six levels of aluminium interconnect.[17][18] "Pluto" and "Orion" Athlons were fabricated in a 0.18 µm process.

Specifications

-   L1-Cache: 64 + 64 kB (Data + Instructions)
-   L2-Cache: 512 kB, external chips on CPU module with 50%, 40% or 33% of CPU speed
-   MMX, 3DNow!
-   Slot A (EV6)
-   Front-side bus: 200 MT/s (100 MHz double-pumped)
-   VCore: 1.6 V (K7), 1.6–1.8 V (K75)
-   First release: June 23, 1999 (K7), November 29, 1999 (K75)
-   Clockrate: 500–700 MHz (K7), 550–1000 MHz (K75)

Thunderbird (T-Bird)

KL_AMD_Athlon_XP_Thunderbird.jpg Athlon_Tbird_900_slot_A.jpg AMD_Athlon_Pencil_Trick.jpg

The second generation Athlon, the _Thunderbird_, debuted on June 5, 2000. This version of the Athlon shipped in a more traditional pin-grid array (PGA) format that plugged into a socket ("Socket A") on the motherboard (it also shipped in the slot A package). It was sold at speeds ranging from 600 MHz to 1.4 GHz (Athlon Classics using the Slot A package could clock up to 1 GHz). The major difference, however, was cache design. Just as Intel had done when they replaced the old Katmai-based Pentium III with the much faster Coppermine-based Pentium III, AMD replaced the 512 kB external reduced-speed cache of the Athlon Classic with 256 kB of on-chip, full-speed exclusive cache. As a general rule, more cache improves performance, but faster cache improves it further still.[19]

AMD changed cache design significantly with the Thunderbird core. With the older Athlon CPUs, the CPU caching was of an inclusive design where data from the L1 is duplicated in the L2 cache. Thunderbird moved to an exclusive design where the L1 cache's contents are not duplicated in the L2. This increases total cache size of the processor and effectively makes caching behave as if there is a very large L1 cache with a slower region (the L2) and a very fast region (the L1).[20] Because of Athlon's very large L1 cache and the exclusive design, which turns the L2 cache into basically a "victim cache", the need for high L2 performance and size was lessened. AMD kept the 64-bit L2 cache data bus from the older Athlons, as a result, and allowed it to have a relatively high latency. A simpler L2 cache reduced the possibility of the L2 cache causing clock scaling and yield issues. Still, instead of the 2-way associative scheme used in older Athlons, Thunderbird did move to a more efficient 16-way associative layout.[21]

The Thunderbird was AMD's most successful product since the Am386DX-40 ten years earlier. Mainboard designs had improved considerably by this time, and the initial trickle of Athlon mainboard makers had swollen to include every major manufacturer. AMD's new fab in Dresden came online, allowing further production increases, and the process technology was improved by a switch to copper interconnects. In October 2000, the Athlon "C" was introduced, raising the mainboard front-side bus speed from 100 MHz to 133 MHz (266 MT/s) and providing roughly 10% extra performance per clock over the "B" model Thunderbird.

Specifications

-   L1-Cache: 64 + 64 kB (Data + Instructions)
-   L2-Cache: 256 kB, full speed
-   MMX, 3DNow!
-   Slot A & Socket A (EV6)
-   Front-side bus: 100 MHz (Slot-A, B-models), 133 MHz (C-models) (200 MT/s, 266 MT/s)
-   VCore: 1.70–1.75 V
-   First release: June 5, 2000
-   Transistor count: 37 million
-   Manufacturing Process: 0.18 µm/180 nm
-   Clockrate:
    -   Slot A: 650–1000 MHz
    -   Socket A, 100 MHz FSB (B-models): 600–1400 MHz
    -   Socket A, 133 MHz FSB (C-models): 1000–1400 MHz


Athlon XP/MP

AMD_Athlon_XP_Logo.jpg

Palomino

KL_AMD_Athlon_XP_Palomino.jpg

AMD released the third-generation Athlon, code-named "Palomino", on October 9, 2001 as the _Athlon XP_. The "XP" suffix is interpreted to mean _extended performance_ and also as an unofficial reference to Microsoft Windows XP.[22] The _Athlon XP_ was marketed using a PR system, which compared its relative performance to an Athlon utilizing the earlier "Thunderbird" core. _Athlon XP_ launched at speeds between 1.33 GHz (PR1500+) and 1.53 GHz (PR1800+), giving AMD the x86 performance lead with the 1800+ model. Less than a month later, it enhanced that lead with the release of the 1600 MHz 1900+,[23] and subsequent 1.67 GHz Athlon XP 2000+ in January 2002.

Palomino was the first K7 core to include the full SSE instruction set from the Intel Pentium III, as well as AMD's 3DNow! Professional. It is roughly 10% faster than Thunderbird at the same clock speed, thanks in part to the new SIMD functionality and to several additional improvements. The core has enhancements to the K7's TLB architecture and added a hardware data prefetch mechanism to take better advantage of available memory bandwidth.[24] Palomino was also the first socketed Athlon officially supporting dual processing, with chips certified for that purpose branded as the ATHLON MP.[25] According to articles posted on HardwareZone, it was possible to mod the Athlon XP to function as an MP by connecting some fuses on the OPGA, although results varied with the motherboard used.[26][27]

Changes in core layout also resulted in Palomino being more frugal with its electrical demands, consuming approximately 20% less power than its predecessor, and thus reducing heat output comparatively as well.[28] While the preceding Athlon "Thunderbird" was capable of clock speeds exceeding 1400 MHz, the power and thermal considerations required to reach those speeds would have made it increasingly impractical as a marketable product. Thus, Palomino's goals of lowered power consumption (and resultant heat produced) allowed AMD to increase performance within a reasonable power envelope. Palomino's design also allowed AMD to continue using the same 180 nm manufacturing process node and core voltages as Thunderbird.

The Palomino core debuted earlier in the mobile market—branded as MOBILE ATHLON 4 with the codename "Corvette". It distinctively used a ceramic interposer much like the Thunderbird instead of the organic pin grid array package used on all later Palomino processors.[29]

Specifications

-   L1-Cache: 64 + 64 kB (Data + Instructions)
-   L2-Cache: 256 kB, full speed
-   MMX, 3DNow!, SSE
-   Socket A (EV6)
-   Front-side bus: 133 MHz (266 MT/s)
-   VCore: 1.50 to 1.75 V
-   Power consumption: 68 W
-   First release: October 9, 2001
-   Clockrate:
    -   Athlon 4: 850–1400 MHz
    -   Athlon XP: 1333–1733 MHz (1500+ to 2100+)
    -   Athlon MP: 1000–1733 MHz

Thoroughbred (T-Bred)

KL_AMD_Athlon_XP_Thoroughbred.jpg

The fourth-generation Athlon _Thoroughbred_ was released on June 10, 2002 at 1.8 GHz (Athlon XP PR2200+). The "Thoroughbred" core marked AMD's first production 130 nm silicon, resulting in a significant reduction in die size compared to its 180 nm predecessor.

There came to be two steppings (revisions) of this core commonly referred to as Tbred-A (cpuid:6 8 0) and Tbred-B (cpuid:6 8 1).[30] The initial version (later known as A) was simply a direct die shrink of the Palomino, and demonstrated that AMD had successfully transitioned to a 130 nm process. While successful in reducing the production cost per processor, the unmodified Palomino design did not demonstrate the expected reduction in heat and clock scalability usually seen when a design is shrunk to a smaller process. As a result, AMD was not able to increase Thoroughbred-A clock speeds much above those of the Palomino it was to replace. Tbred-A was only sold in versions from 1333 MHz to 1800 MHz, and was only able to displace the more production-costly Palomino from AMD's lineup.

AMD thus reworked the Thoroughbred's design to better match the process node on which it was produced, in turn creating the Thoroughbred-B. A significant aspect of this redesign was the addition of another ninth "metal layer" to the already quite complex eight-layered Thoroughbred-A. For comparison, the competing Pentium 4 Northwood only utilized six, and its successor Prescott seven layers. While the addition of more layers itself does not improve performance, it gives more flexibility for chip designers routing electrical pathways within a chip, and importantly for the Thoroughbred core, more flexibility in working around electrical bottlenecks that prevented the processor from attaining higher clock speeds. The Tbred-B offered a startling improvement in headroom over the Tbred-A, which made it very popular for overclocking. The Tbred-A often struggled to reach clock speeds above 1.9 GHz, while the Tbred-B often could easily reach 2.3 GHz and above.[31]

The Thoroughbred line received an increased front side bus clock during its lifetime, from 133 MHz (266 MT/s) to 166 MHz (333 MT/s) improving the processor's ability to access memory and I/O efficiency, and resulted in improved per-clock performance. AMD shifted their PR rating scheme accordingly, making lower clock speeds equate to higher PR ratings.

The Thoroughbred-B was the _direct_ basis for its successor—the Tbred-B with an _additional_ 256 kB of L2 cache (for 512 kB total) became the Barton core.

Specifications

-   L1-Cache: 64 + 64 kB (Data + Instructions)
-   L2-Cache: 256 kB, full speed
-   MMX, 3DNow!, SSE
-   Socket A (EV6)
-   Front-side bus: 133/166 MHz (266/333 MT/s)
-   VCore: 1.50–1.65 V
-   First release: June 10, 2002 (A), August 21, 2002 (B)
-   Clockrate:
    -   Thoroughbred "A": 1400–1800 MHz (1600+ to 2200+)
    -   Thoroughbred "B": 1400–2250 MHz (1600+ to 2800+)
    -   133 MHz FSB: 1400–2133 MHz (1600+ to 2600+)
    -   166 MHz FSB: 2083–2250 MHz (2600+ to 2800+)

Barton and Thorton

KL_AMD_Athlon_XP_Barton.jpg

Fifth-generation Athlon _Barton_-core processors released in early 2003 with PR of 2500+, 2600+, 2800+, 3000+, and 3200+. While not operating at higher clock rates than _Thoroughbred_-core processors, they were marked with higher PR by featuring an increased 512 kB L2 cache; later models additionally supported an increased 200 MHz (400 MT/s) front side bus.[32] The _Thorton_ core was a later variant of the _Barton_ with half of the L2 cache disabled, and thus was functionally identical to the _Thoroughbred-B_ core. The name _Thorton_ is a portmanteau of _Thoroughbred_ and _Barton_.

By the time of Barton's release, the _Northwood_-based Pentium 4 had become more than competitive with AMD's processors.[33] Unfortunately for AMD, a simple increase in size of the L2 cache to 512 kB did not have nearly the same impact as it did for Intel's Pentium 4 line, as the Athlon architecture was not nearly as cache-constrained as the Pentium 4. The Athlon's exclusive-cache architecture and shorter pipeline made it less sensitive to L2 cache size, and the Barton only saw an increase of several percent gained in per-clock performance over the Thoroughbred-B it was derived from.[34] While the increased performance was welcome, it was not sufficient to overtake the Pentium 4 line in overall performance. The PR also became somewhat inaccurate because some Barton models with lower clock rates were being given higher PR than higher-clocked Thoroughbred processors. Instances where a computational task did not benefit more from the additional cache to make up for the loss in raw clock speed created situations where a lower rated (but faster clocked) Thoroughbred would outperform a higher-rated (but lower clocked) Barton.[35]

The Barton was also used to officially introduce a higher 400 MT/s bus clock for the Socket A platform, which was used to gain some Barton models more efficiency (and increased PR). However, it was clear by this time that Intel's quad-pumped bus was scaling well above AMD's double-pumped EV6 bus. The 800 MT/s bus used by many later Pentium 4 processors was well out of the Athlon XP's reach. In order to reach the same bandwidth levels, the Athlon XP's bus would have to be clocked at levels simply unreachable.[36]

By this point, the four-year-old Athlon EV6 bus architecture had scaled to its limit. To maintain or exceed the performance of Intel's newer processors would require a significant redesign.[37] The K7 derived Athlons were replaced in September 2003 by the Athlon 64 family, which featured an on-chip memory controller and a completely new HyperTransport bus to replace EV6.

Specifications:

_Barton (130 nm)_

-   L1-Cache: 64 + 64 kB (Data + Instructions)
-   L2-Cache: 512 kB, full speed
-   MMX, 3DNow!, SSE
-   Socket A (EV6)
-   Front-side bus: 166/200 MHz (333/400 MT/s)
-   VCore: 1.65 V
-   First release: February 10, 2003
-   Clockrate: 1833–2333 MHz (2500+ to 3200+)
    -   166 MHz FSB: 1833–2333 MHz (2500+ to 3200+)
    -   200 MHz FSB: 2100, 2200 MHz (3000+, 3200+)

_Thorton (130 nm)_

-   L1-Cache: 64 + 64 kB (Data + Instructions)
-   L2-Cache: 256 kB, full speed
-   MMX, 3DNow!, SSE
-   Socket A (EV6)
-   Front-side bus: 133/166/200 MHz (266/333/400 MT/s)
-   VCore: 1.50–1.65 V
-   First release: September 2003
-   Clockrate: 1667–2200 MHz (2000+ to 3100+)
    -   133 MHz FSB: 1600–2133 MHz (2000+ to 2600+)
    -   166 MHz FSB: 2083 MHz (2600+)
    -   200 MHz FSB: 2200 MHz (3100+)

Mobile Athlon XP

Athlon_XPM_2400l.jpg

A Mobile Athlon XPs (_Athlon XP-M_) using a given core is physically identical to the equivalent desktop Athlon XPs counterpart, only differing by the configuration used to achieve a given performance level. Processors are usually binned and selected to become a mobile processor by their ability run a given processor speed while supplied with a lower (than desktop) voltage. This results in lower power consumption, longer battery life, and reduced heat over using a normal desktop part. Additionally Mobile XPs feature not being multiplier-locked and generally higher-rated maximum operating temperatures, requirements intended for better operation within the tight thermal constraints within a notebook PC—but also making them attractive for overclocking.

The Athlon XP-M replaced the older Mobile Athlon 4 based on the _Palomino_ core, with the Athlon XP-M using the newer _Thoroughbred_ and _Barton_ cores. The Athlon XP-M was also offered in a compact microPGA socket 563 version for space constrained applications as an alternative to the larger Socket A.

Like their mobile K6-2+/III+ predecessors, the CPUs were capable of dynamic clock adjustment for power optimization, and also was the reason for the unlocked multiplier. When the system is idle, the CPU clocks itself down via lower bus multiplier and selects a lower voltage. When a program demands more computational resources, the CPU quickly (there is some latency) returns to an intermediate or maximum speed with appropriate voltage to meet the demand. This technology was marketed as "PowerNow!" and was similar to Intel's SpeedStep power saving technique. The feature was controlled by the CPU, motherboard BIOS, and operating system. AMD later renamed the technology to Cool'n'Quiet on their K8-based CPUs (Athlon 64, etc.), and introduced it for use on desktop PCs as well.

Athlon XP-Ms were popular with desktop overclockers, as well as underclockers. The lower voltage requirement and higher heat rating selected CPUs that were essentially "cherry picked" from the manufacturing line. Being some of the best cores "off the line", these CPUs typically overclocked more reliably than their desktop-headed counterparts. Also, the fact that they were not locked to a single multiplier was a significant simplification in the overclocking process. Some _Barton_ core Athlon XP-Ms have been successfully overclocked as high as 3.1 GHz.

The chips were also liked for their undervolting ability. Undervolting is a process of determining the lowest voltage at which a CPU can remain stable at a given clock speed. As Athlon XP-M CPUs were already rated running lower voltages than their desktop siblings, it was a better starting point for lowering voltage even further. A popular application was use in home theater PC systems due to high performance and low heat output resultant from low Vcore settings.

Besides not being multiplier locked, XP-Ms curiously were not disabled from multi processor operation. Thus they could be used in place of the more expensive Athlon MP in dual socket A motherboards. Since those boards generally lacked multiplier and voltage adjustment, and normally only supported 133 MHz FSB, adjustments would still be needed for full speed operation. One method of modification known as wire-modding involves connecting the appropriate CPU pins on the CPU socket with small lengths of wire to select the appropriate multiplier. A typical overclock of a mobile 2500+ CPU to 2.26 GHz with 17x multiplier would result in being faster than highest official 2800+ MP CPU running at 2.13 GHz.


Athlon competitors

-   Intel Pentium III, Pentium 4, and Celeron
-   VIA C3 and C7
-   Transmeta Efficeon


Supercomputers

The fastest supercomputers based on AthlonMP:

-   Rutgers University, Department of Physics & Astronomy. Machine: NOW Cluster—AMD Athlon. CPU: 512 AthlonMP (1.65 GHz). Rmax: 794 GFLOPS.


See also

-   List of AMD microprocessors
-   List of AMD Athlon microprocessors
-   List of AMD Duron microprocessors
-   List of AMD Athlon XP microprocessors
-   List of AMD Athlon 64 microprocessors
-   List of AMD Athlon X2 microprocessors
-   List of AMD Phenom microprocessors
-   List of AMD Opteron microprocessors
-   List of AMD Sempron microprocessors
-   List of Intel microprocessors


References


External links

-   cpu-collection.de AMD Athlon processor images and descriptions
-   amdboard.com AMD Athlon/Duron/Sempron CPU identification and OPN breakdown
-   AMD's Technical Specifications for 7th generation CPUs (.pdf)
-   Easy identification with Interactive AMD product ID
-   Xbit Labs EV6 vs GTL+ System Bus
-   motherboards.org Unlocking the Duron and Athlon Using the Pencil Trick

Category:Computer-related introductions in 1999 Category:Advanced Micro Devices x86 microprocessors Category:Advanced Micro Devices microarchitectures Category:Superscalar microprocessors

[1]

[2]

[3]

[4]

[5] De Gelas, Johan. The Secrets of High Performance CPUs, Part 1, Ace's Hardware, September 29, 1999.

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

[26] Modding the Athlon XP into an MP

[27] Modding the Barton XP to a Barton MP

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