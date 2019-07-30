GDDR}}

DOUBLE DATA RATE SYNCHRONOUS DYNAMIC RANDOM-ACCESS MEMORY, officially abbreviated as DDR SDRAM, is a double data rate (DDR) synchronous dynamic random-access memory (SDRAM) class of memory integrated circuits used in computers. DDR SDRAM, also retroactively called DDR1 SDRAM, has been superseded by DDR2 SDRAM, DDR3 SDRAM and DDR4 SDRAM. None of its successors are forward or backward compatible with DDR1 SDRAM, meaning DDR2, DDR3, and DDR4 memory modules will not work in DDR1-equipped motherboards, and vice versa.

Compared to single data rate (SDR) SDRAM, the DDR SDRAM interface makes higher transfer rates possible by more strict control of the timing of the electrical data and clock signals. Implementations often have to use schemes such as phase-locked loops and self-calibration to reach the required timing accuracy.[1][2] The interface uses double pumping (transferring data on both the rising and falling edges of the clock signal) to double data bus bandwidth without a corresponding increase in clock frequency. One advantage of keeping the clock frequency down is that it reduces the signal integrity requirements on the circuit board connecting the memory to the controller. The name "double data rate" refers to the fact that a DDR SDRAM with a certain clock frequency achieves nearly twice the bandwidth of a SDR SDRAM running at the same clock frequency, due to this double pumping.

With data being transferred 64 bits at a time, DDR SDRAM gives a transfer rate (in bytes/s) of (memory bus clock rate) × 2 (for dual rate) × 64 (number of bits transferred) / 8 (number of bits/byte). Thus, with a bus frequency of 100 MHz, DDR SDRAM gives a maximum transfer rate of 1600 MB/s.


Specification standards

).]]

Chips and modules

+---------------+-----------------------+---------------+---------------+-----------+---------+-------------+--------------------+---------------+
| Standard name | DRAM cell array clock | Cycle time[3] | I/O bus clock | Data rate | V_(DDQ) | Module name | Peak transfer rate | Timings       |
|               | (MHz)                 | (ns)          | (MHz)         | (MT/s)    | (V)     |             | (MB/s)             | (CL-tRCD-tRP) |
+===============+=======================+===============+===============+===========+=========+=============+====================+===============+
| DDR-200       | 100                   | 10            | 100           | 200       | 2.5±0.2 | PC-1600     | 1600               |               |
+---------------+-----------------------+---------------+---------------+-----------+---------+-------------+--------------------+---------------+
| DDR-266       | 133.33                | 7.5           | 133.33        | 266.67    | PC-2100 | 2133.33     | 2.5-3-3            |               |
+---------------+-----------------------+---------------+---------------+-----------+---------+-------------+--------------------+---------------+
| DDR-333       | 166.67                | 6             | 166.67        | 333.33    | PC-2700 | 2666.67     |                    |               |
+---------------+-----------------------+---------------+---------------+-----------+---------+-------------+--------------------+---------------+
| DDR-400A      | 200                   | 5             | 200           | 400       | 2.6±0.1 | PC-3200     | 3200               | 2.5-3-3       |
| DDR-400B      |                       |               |               |           |         |             |                    | 3-3-3         |
| DDR-400C      |                       |               |               |           |         |             |                    | 3-4-4         |
+---------------+-----------------------+---------------+---------------+-----------+---------+-------------+--------------------+---------------+

: Comparison of DDR SDRAM standards

NOTE: All above listed are specified by JEDEC as JESD79F.[4] All RAM data rates in-between or above these listed specifications are not standardized by JEDEC—often they are simply manufacturer optimizations using tighter-tolerance or overvolted chips.

The package sizes in which DDR SDRAM is manufactured are also standardized by JEDEC.

There is no architectural difference between DDR SDRAM designed for different clock frequencies, for example, PC-1600, designed to run at 100 MHz, and PC-2100, designed to run at 133 MHz. The number simply designates the data rate at which the chip is guaranteed to perform, hence DDR SDRAM is guaranteed to run at lower (_underclocking_) and can possibly run at higher (_overclocking_) clock rates than those for which it was made.[5]

DDR SDRAM modules for desktop computers, dual in-line memory modules (DIMMs), have 184 pins (as opposed to 168 pins on SDRAM, or 240 pins on DDR2 SDRAM), and can be differentiated from SDRAM DIMMs by the number of notches (DDR SDRAM has one, SDRAM has two). DDR SDRAM for notebook computers, SO-DIMMs, have 200 pins, which is the same number of pins as DDR2 SO-DIMMs. These two specifications are notched very similarly and care must be taken during insertion if unsure of a correct match. Most DDR SDRAM operates at a voltage of 2.5 V, compared to 3.3 V for SDRAM. This can significantly reduce power consumption. Chips and modules with DDR-400/PC-3200 standard have a nominal voltage of 2.6 V.

JEDEC Standard No. 21–C defines three possible operating voltages for 184 pin DDR, as identified by the key notch position relative to its centreline. Page 4.5.10-7 defines 2.5V (left), 1.8V (centre), TBD (right), while page 4.20.5–40 nominates 3.3V for the right notch position. The orientation of the module for determining the key notch position is with 52 contact positions to the left and 40 contact positions to the right.

Increasing operating voltage slightly can increase maximum speed, at the cost of higher power dissipation and heating, and at the risk of malfunctioning or damage.

Many new chipsets use these memory types in multi-channel configurations.

Chip characteristics

DRAM density: Size of the chip is measured in megabits. Most motherboards recognize only 1 GB modules if they contain _64M×8_ chips _(low density)._ If _128M×4 (high density)_ 1 GB modules are used, they most likely will not work. The JEDEC standard allows _128M×4_ only for slower buffered/registered modules designed specifically for some servers, but some generic manufacturers do not comply.[6]
Organization: The notation like _64M×4_ means that the memory matrix has 64 million (the product of _banks_ x _rows_ x _columns_) 4-bit storage locations. There are _×4, ×8,_ and _×16_ DDR chips. The _×4_ chips allow the use of advanced error correction features like Chipkill, memory scrubbing and Intel SDDC in server environments, while the _×8_ and _×16_ chips are somewhat less expensive. _x8_ chips are mainly used in desktops/notebooks but are making entry into the server market. There are normally 4 banks and only one row can be active in each bank.

Module characteristics

Ranks:

To increase memory capacity and bandwidth, chips are combined on a module. For instance, the 64-bit data bus for DIMM requires eight 8-bit chips, addressed in parallel. Multiple chips with the common address lines are called a memory rank. The term was introduced to avoid confusion with chip internal ROWS and BANKS. A memory module may bear more than one rank. The term SIDES would also be confusing because it incorrectly suggests the physical placement of chips on the module.

All ranks are connected to the same memory bus (address + data). The Chip Select signal is used to issue commands to specific rank.

Adding modules to the single memory bus creates additional electrical load on its drivers. To mitigate the resulting bus signaling rate drop and overcome the memory bottleneck, new chipsets employ the multi-channel architecture.

Capacity
Number of DRAM devices: The number of chips is a multiple of 8 for non-ECC modules and a multiple of 9 for ECC modules. Chips can occupy one side (_single sided_) or both sides (_dual sided_) of the module. The maximal number of chips per DDR module is 36 (9×4) for ECC and 32 (8x4) for non-ECC.
ECC vs non-ECC: Modules that have error-correcting code are labeled as ECC. Modules without error correcting code are labeled NON-ECC.
Timings: CAS latency (CL), clock cycle time (t_(CK)), row cycle time (t_(RC)), refresh row cycle time (t_(RFC)), row active time (t_(RAS)).
Buffering: registered (or buffered) vs unbuffered.
Packaging: Typically DIMM or SO-DIMM.
Power consumption: A test with DDR and DDR2 RAM in 2005 found that average power consumption appeared to be of the order of 1–3 W per 512 MB module; this increases with clock rate and when in use rather than idling.[7] A manufacturer has produced calculators to estimate the power used by various types of RAM.[8]

Module and chip characteristics are inherently linked.

Total module capacity is a product of one chip's capacity and the number of chips. ECC modules multiply it by 8/9 because they use 1 bit per byte (8 bits) for error correction. A module of any particular size can therefore be assembled either from 32 small chips (36 for ECC memory), or 16(18) or 8(9) bigger ones.

DDR memory bus width per channel is 64 bits (72 for ECC memory). Total module bit width is a product of bits per chip and number of chips. It also equals number of ranks (rows) multiplied by DDR memory bus width. Consequently, a module with a greater number of chips or using ×8 chips instead of ×4 will have more ranks.

  Module size (GB)   Number of chips   Chip size (Mbit)   Chip organization   Number of ranks
  ------------------ ----------------- ------------------ ------------------- -----------------
  1                  36                256                64M×4               2
  1                  18                512                64M×8               2
  1                  18                512                128M×4              1 |+

  : Example: Variations of 1 GB PC2100 registered DDR SDRAM module with ECC

This example compares different real-world server memory modules with a common size of 1 GB. One should definitely be careful buying 1 GB memory modules, because all these variations can be sold under one price position without stating whether they are ×4 or ×8, single- or dual-ranked.

There is a common belief that number of module ranks equals number of sides. As above data shows, this is not true. One can also find 2-side/1-rank modules. One can even think of a 1-side/2-rank memory module having 16(18) chips on single side ×8 each, but it's unlikely such a module was ever produced.

History

Samsung demonstrated the first DDR memory prototype in 1997,[9] and released the first commercial DDR SDRAM chip (64Mb) in June 1998,[10][11][12] followed soon after by Hyundai Electronics (now SK Hynix) the same year.[13] The development of DDR began in 1996, before its specification was finalized by JEDEC in June 2000 (JESD79).[14] JEDEC has set standards for data rates of DDR SDRAM, divided into two parts. The first specification is for memory chips, and the second is for memory modules. The first retail PC motherboard using DDR SDRAM was released in August 2000.[15]

Double data rate (DDR) SDRAM specification

From Ballot JCB-99-70, and modified by numerous other Board Ballots, formulated under the cognizance of Committee JC-42.3 on DRAM Parametrics.

Standard No. 79 Revision Log:

-   Release 1, June 2000
-   Release 2, May 2002
-   Release C, March 2003 – JEDEC Standard No. 79C.[16]

"This comprehensive standard defines all required aspects of 64Mb through 1Gb DDR SDRAMs with X4/X8/X16 data interfaces, including features, functionality, ac and dc parametrics, packages and pin assignments. This scope will subsequently be expanded to formally apply to x32 devices, and higher density devices as well."

Organization

PC3200 is DDR SDRAM designed to operate at 200 MHz using DDR-400 chips with a bandwidth of 3,200 MB/s. Because PC3200 memory transfers data on both the rising and falling clock edges, its effective clock rate is 400 MHz.

1 GB PC3200 non-ECC modules are usually made with 16 512 Mbit chips, 8 on each side (512 Mbits × 16 chips) / (8 bits (per byte)) = 1,024 MB. The individual chips making up a 1 GB memory module are usually organized as 2²⁶ 8-bit words, commonly expressed as 64M×8. Memory manufactured in this way is low-density RAM and is usually compatible with any motherboard specifying PC3200 DDR-400 memory.[17]

High-density RAM

In the context of the 1 GB non-ECC PC3200 SDRAM module, there is very little visually to differentiate low-density from high-density RAM. High-density DDR RAM modules will, like their low-density counterparts, usually be double-sided with eight 512 Mbit chips per side. The difference is that each chip, instead of being organized as 64M×8, is organized as 2²⁷ 4-bit words, or 128M×4.

High-density memory modules are assembled using chips from multiple manufacturers. These chips come in both the familiar 22 × 10 mm (approx.) TSOP2 and smaller squarer 12 × 9 mm (approx.) FBGA package sizes. High-density chips can be identified by the numbers on each chip.

High-density RAM devices were designed to be used in registered memory modules for servers. JEDEC standards do not apply to high-density DDR RAM in desktop implementations. JEDEC's technical documentation, however, supports 128M×4 semiconductors . As such, _high density_ is a relative term, which can be used to describe memory that is not supported by a particular motherboard's memory controller.


Generations

DDR (DDR1) was superseded by DDR2 SDRAM, which had modifications for higher clock frequency and again doubled throughput, but operates on the same principle as DDR. Competing with DDR2 was Rambus XDR DRAM. DDR2 dominated due to cost and support factors. DDR2 was in turn superseded by DDR3 SDRAM, which offered higher performance for increased bus speeds and new features. DDR3 has been superseded by DDR4 SDRAM, which was first produced in 2011 and whose standards were still in flux (2012) with significant architectural changes.

DDR's prefetch buffer depth is 2 (bits), while DDR2 uses 4. Although the effective clock rates of DDR2 are higher than DDR, the overall performance was not greater in the early implementations, primarily due to the high latencies of the first DDR2 modules. DDR2 started to be effective by the end of 2004, as modules with lower latencies became available.[18]

Memory manufacturers stated that it was impractical to mass-produce DDR1 memory with effective transfer rates in excess of 400 MHz (i.e. 400 MT/s and 200 MHz external clock) due to internal speed limitations. DDR2 picks up where DDR1 leaves off, utilizing internal clock rates similar to DDR1, but is available at effective transfer rates of 400 MHz and higher. DDR3 advances extended the ability to preserve internal clock rates while providing higher effective transfer rates by again doubling the prefetch depth.

The DDR4 SDRAM is a high-speed dynamic random-access memory internally configured as 16 banks, 4 bank groups with 4 banks for each bank group for x4/x8 and 8 banks, 2 bank groups with 4 banks for each bank group for x16 DRAM. The DDR4 SDRAM uses a 8n prefetch architecture to achieve high-speed operation. The 8n prefetch architecture is combined with an interface designed to transfer two data words per clock cycle at the I/O pins. A single read or write operation for the DDR4 SDRAM consists of a single 8_n_-bit-wide 4-clock data transfer at the internal DRAM core and 8 corresponding _n_-bit-wide half-clock-cycle data transfers at the I/O pins.[19]

RDRAM was a particularly expensive alternative to DDR SDRAM, and most manufacturers dropped its support from their chipsets. DDR1 memory's prices substantially increased since Q2 2008, while DDR2 prices declined. In January 2009, 1 GB DDR1 was 2–3 times more expensive than 1 GB DDR2. High-density DDR RAM suit about 10% of PC motherboards on the market, while low-density suit almost all motherboards on the PC Desktop market.

  Name         Release year   Chip               Bus               Voltage (V)   Pins
  ------------ -------------- ------------------ ----------------- ------------- ------------------
  Generation   Standard       Clock rate (MHz)   Cycle time (ns)   Prefetch      Clock rate (MHz)
  DDR          DDR-200        2000               100               10            2n
  DDR-266      133            7.5                133               266           2133
  DDR-333      166⅔           6                  166⅔              333           2666⅔
  DDR-400      200            5                  200               400           3200
  DDR2         DDR2-400       2003               100               10            4n
  DDR2-533     133⅓           7.5                266⅔              533⅓          4266⅔
  DDR2-667     166⅔           6                  333⅓              666⅔          5333⅓
  DDR2-800     200            5                  400               800           6400
  DDR2-1066    266⅔           3.75               533⅓              1066⅔         8533⅓
  DDR3         DDR3-800       2007               100               10            8n
  DDR3-1066    133⅓           7.5                533⅓              1066⅔         8533⅓
  DDR3-1333    166⅔           6                  666⅔              1333⅓         10666⅔
  DDR3-1600    200            5                  800               1600          12800
  DDR3-1866    233⅓           4.29               933⅓              1866⅔         14933⅓
  DDR3-2133    266⅔           3.75               1066⅔             2133⅓         17066⅔
  DDR4         DDR4-1600      2014               200               5             8n
  DDR4-1866    233⅓           4.29               933⅓              1866⅔         14933⅓
  DDR4-2133    266⅔           3.75               1066⅔             2133⅓         17066⅔
  DDR4-2400    300            3⅓                 1200              2400          19200
  DDR4-2666    333⅓           3                  1333⅓             2666⅔         21333⅓
  DDR4-2933    366⅔           2.73               1466⅔             2933⅓         23466⅔
  DDR4-3200    400            2.5                1600              3200          25600

  : Comparison of DDR SDRAM generations

Mobile DDR

MDDR is an acronym that some enterprises use for Mobile DDR SDRAM, a type of memory used in some portable electronic devices, like mobile phones, handhelds, and digital audio players. Through techniques including reduced voltage supply and advanced refresh options, Mobile DDR can achieve greater power efficiency.


See also

-   Serial presence detect
-   Fully buffered DIMM
-   List of device bandwidths


References


External links

-   Official JEDEC website

el:Μνήμη τυχαίας προσπέλασης#Τύποι μνήμης RAM fi:DRAM#DDR SDRAM

Category:SDRAM Category:JEDEC standards

[1] Northwest Logic DDR Phy datasheet

[2]

[3] Cycle time is the inverse of the I/O bus clock frequency; e.g., 1/(100 MHz) = 10 ns per clock cycle.

[4]

[5]

[6]

[7] Mike Chin: Power Distribution within Six PCs.

[8] Micron: System Power Calculators

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] http://www.jedec.org/download/search/JESD79F.pdf DOUBLE DATA RATE (DDR) SDRAM SPECIFICATION (Release F)

[17]

[18] DDR2 vs. DDR: Revenge Gained

[19]