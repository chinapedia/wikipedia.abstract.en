MOS TECHNOLOGY, INC. ("MOS" being short for Metal Oxide Semiconductor, stylized as ⦀●≡), also known as CSG (COMMODORE SEMICONDUCTOR GROUP), was a semiconductor design and fabrication company based in Norristown, Pennsylvania, in the United States. It is most famous for its 6502 microprocessor and various designs for Commodore International's range of home computers.


History

MOS Technology, Inc. was originally started in 1969 by Allen-Bradley to provide a second source for electronic calculators and their chips designed by Texas Instruments (TI). In the early 1970s TI decided to release their own line of calculators, instead of selling just the chips inside them, and introduced them at a price that was lower than the price of the chipset alone. Many early chip companies were wiped out in the aftermath; those that survived did so by finding other chips to produce. MOS became a supplier to Atari, producing a custom single-chip _Pong_ system.

Things changed dramatically in 1975. Several of the designers of the Motorola 6800 left Motorola shortly after its release, after management told them to stop working on a low-cost version of the design. At the time there was no such thing as a pure-play semiconductor foundry, so they had to join a chip-building company to produce their new CPU. MOS was a small firm with good credentials in the right area, the east coast of the USA. The team of four design engineers was headed by Chuck Peddle and included Bill Mensch. At MOS they set about building a new CPU that would outperform the 6800 while being similar to it in purpose. The resulting 6501 design was somewhat similar to the 6800, but by using several simplifications in the design, the 6501 would be up to 4 times faster.

Mask fixing

In addition to a good design, MOS had a secret weapon: the ability to "fix" its masks.[1] Masks are the large drawings of the chip that are photo-reduced to make the pattern from which chips are made—a process similar to photocopying. All masks end up with flaws, both as a result of design problems in the chip itself, as well as side effects from the photo-reduction process. When a chip is made with this mask there is a chance that some of these flaws will end up expressed on the chip. If too many of them are expressed, that particular chip will not work.

If a chip design with five design flaws results in a mask with ten flaws in total, there is no point in making another mask because it will have the same five design flaws plus some other set of five copying flaws. So companies simply built chips with known-bad masks, and threw away broken chips. In the 1970s, this meant throwing away 70 percent or more of the completed chips. The price of a chip is largely defined by the _yield_, the measure of how many work for a given number produced, so improving this number can lower the price and raise the gross profit dramatically.

MOS's engineers had learned the trick of fixing their masks _after_ they were made. This allowed them to correct the major flaws in a series of small fixes, eventually producing a mask with a very low flaw rate. The company's production lines typically reversed the numbers others were achieving; even the early runs of a new CPU design—what would become the 6502—were achieving a success rate of 70 percent or better. This meant that not only were its designs faster, they cost much less as well.

6502 family

When the 6501 was announced, Motorola launched a lawsuit almost immediately. Although the 6501 instruction set was not compatible with the 6800, it could nevertheless be plugged into existing motherboard designs because it had the same functional pin arrangement and IC package footprint. That was enough to allow Motorola to sue. Sales of the 6501 basically stopped, and the lawsuit would drag on for many years before MOS was eventually forced to pay $200,000 USD in fines.

In the meantime MOS had started selling the 6502, a chip capable of operating at 1 MHz in September 1975 for a mere $25 USD. It was nearly identical to the 6501, with only a few minor differences: an added on-chip clock oscillator, a different functional pinout arrangement, generation of the SYNC signal (supporting single-instruction stepping), and removal of data bus enablement control signals (DBE and BA, with the former directly connected to the phase 2 clock instead).[2] It outperformed the more-complex 6800 and Intel 8080, but cost much less and was easier to work with. Although it did not have the 6501's advantage of being able to be used in place of the Motorola 6800 in existing hardware, it was so inexpensive that it quickly became more popular than the 6800, making that a moot point.

showing some important MOS Technology circuits: the 6510 CPU (long chip, lower left) and the 6581 SID (right). The production week/year (WWYY) of each chip is given below its name.]]

The 6502 was so cheap that many people believed it was a scam when MOS first showed[3] it at a 1975 trade show. They were not aware of MOS's masking techniques and when they calculated the price per chip at the current industry yield rates, it did not add up. But any hesitation to buy it evaporated when both Motorola and Intel dropped the prices on their own designs from $179 to $69 at the same show in order to compete. Their moves legitimized the 6502, and by the show's end, the wooden barrel full of samples was empty.

The 6502 would quickly go on to be one of the most popular chips of its day. A number of companies licensed the 650x line from MOS, including Rockwell International, GTE, Synertek, and Western Design Center (WDC).

A number of different versions of the basic CPU, known as the 6503 through 6507, were offered in 28-pin packages for lower cost. The various models removed signal or address pins. Far and away the most popular of these was the 6507, which was used in the Atari 2600 and Atari disk drives. The 6504 was sometimes used in printers. MOS also released a series of similar CPUs using external clocks, which added a "1" to the name in the third digit, as the 6512 through 6515. These were useful in systems where the clock support was already being provided on the motherboard by some other source. The final addition was the "crossover" 6510, used in the Commodore 64, with additional I/O ports.

Commodore Semiconductor Group

However successful the 6502 was, the company itself was having problems. At about the same time the 6502 was being released, MOS's entire calculator IC market collapsed, and its prior existing products stopped shipping. Soon they were in serious financial trouble. Another company, Commodore Business Machines (CBM), had invested heavily in the calculator market and was also nearly wiped out by TI's entry into the market. A fresh injection of capital saved CBM, and allowed it to invest in company suppliers in order to help ensure their IC supply would not be upset in this fashion again. Among the several companies were LED display manufacturers, power controllers, and suppliers of the driver chips, including MOS.

In late 1976, CBM, quoted at 60 million USD on the NYSE, purchased MOS, valued at around 12 million USD, in exchange for a 9.4 percent equity stake in CBM[4] in an outright buy[5][6] on the condition that Chuck Peddle would join Commodore as chief engineer. The deal went through, and while the firm basically became Commodore's production arm, they continued using the name MOS for some time so that manuals would not have to be reprinted. After a while MOS became the COMMODORE SEMICONDUCTOR GROUP (CSG). Despite being renamed to CSG, all chips produced were still stamped with the old "MOS" logo until 1989.

MOS had previously designed a simple computer kit called the KIM-1, primarily to "show off" the 6502 chip. At Commodore, Peddle convinced the owner, Jack Tramiel, that calculators were a dead end, and that home computers would soon be huge.

However, the original design group appeared to be even less interested in working for Jack Tramiel than it had for Motorola, and the team quickly started breaking up. One result was that the newly completed 6522 (VIA) chip was left undocumented for years.

Bill Mensch left MOS even before the Commodore takeover, and moved home to Mesa, AZ from MOS's Norristown, PA. After a short stint consulting for a local company called ICE, he set up the Western Design Center (WDC) in 1978. As a licensee of the 6502 line, their first products were bug-fixed, power-efficient CMOS versions of the 6502 (the 65C02, both as a separate chip and embedded inside a microcontroller called the 65C150). But then they expanded the line greatly with the introduction of the 65816, a fairly straightforward 16-bit upgrade of the original 65C02 that could also run in 8-bit mode for compatibility. Since then WDC moved much of the original MOS catalog to CMOS, and the 6502 continued to be a popular CPU for the embedded systems market, like medical equipment and car dashboard controllers.

GMT Microelectronics

After Commodore's bankruptcy in 1994, Commodore Semiconductor Group, MOS's successor, was bought by its former management for about $4.3 million, plus an additional $1 million to cover miscellaneous expenses including EPA license. Dennis Peasenell became CEO. In December 1994, they entered into a Prospective Purchase Agreement (limiting the company's liability in exchange for sharing the costs of cleanup) with GMT Microelectronics.

In 1994, the company, operating under the name GMT MICROELECTRONICS (_Great Mixed-signal Technologies_), reopened MOS Technologies' original, circa-1970 one-micrometre fab in Norristown, Montgomery County, Pennsylvania that Commodore had closed in 1993. [7] GMT would have provided foundry services based on TelCom's Bipolar and SiCr Thin Film Resistor processes and would have been licensed alternate sources for TelCom's Bipolar based products.[8], with production running at 10 thousand 5-inch wafers per month, producing CMOS, BiCMOS, NMOS, bipolar and SOI devices.

The plant had been on the EPA's National Priorities List of hazardous waste sites since October 4, 1989.[9] This was due to a 1974 leak of TCE from an underground 250-gallon underground concrete storage tank used by Commodore Business Machines in the semiconductor cleaning process[10]. Leaks from tank had caused the local groundwater to become contaminated with trichloroethylene (TCE) and other volatile organic compounds (VOCs) in 1978.[11] By 1999 GMT Microelectronics had $21 million in revenues and 183 employees working on the site. In 2000, GMT Microelectronics discontinued operations and abandoned all it assets at the Commodore Semiconductor Group superfund site.[12]


Chip naming convention

Most of the MOS chips are named according to following rules, which shows used technology (logic gate design):[13]

-   NMOS (M65xx)
-   CMOS (M65Cxx)
-   HMOS (M75xx)
-   HMOS-2 (M85xx)


Products

-   KIM-1 – single board computer (kit)/CPU evaluation board, based on 6502
-   4510 – CPU (CSG 65CE02) with two CIAs on-chip; 3.45 MHz
-   5719 – Gary Gate Array
-   2523 – 8-digit calculator chip[14][15]
-   2529 – Single chip scientific calculator array[16]
-   6501 – CPU pin-compatible with Motorola 6800
-   6502 – CPU equal to 6501 except no 6800-pin-compatibility
-   65CE02 – CPU derived from the 6502
-   6503 – CPU with 12 address pins, NMI pin and IRQ pin
-   6504 – CPU with 13 address pins and IRQ pin
-   6505 – CPU with 12 address pins, IRQ pin and RDY pin.
-   6507 – CPU with 13 address pins
-   6508 – CPU with 256 B RAM and 8 I/O pins
-   6509 – CPU with 20 address pins
-   6510 – CPU with clock pins and I/O ports,
-   6520 – PIA Peripheral Interface Adapter
-   6522 – VIA Versatile Interface Adapter
-   6523/6525 – TPI Tri-Port Interface
-   6526/8520/8521 – CIA Complex Interface Adapter
-   6529 – SPI/SPIA Single Port Interface Adapter
-   6530 – RRIOT ROM-RAM-I/O Timer
-   6532 – RIOT RAM-I/O Timer

-   6545 – CRTC CRT Controller
-   6551 – ACIA Asynchronous Communications Interface Adapter
-   6560 – VIC Video Interface Chip, (NTSC)
-   6561 – VIC Video Interface Chip, (PAL) Revision: -101 / E
-   6562 – VIC Video Interface Chip, (NTSC) (6561 supporting 40-column)
-   6564 – 80-column video (intended for Colour PET, part of its design used in the MOS 6560/6561)
-   6566 – VIC-II (MaxMachine)
-   6567 – VIC-II (NTSC) Revision: R56A/R7/R8/R9
-   6569 – VIC-II (PAL) Revision: R1/R3/R4/R5 (R1 = only 5 lumas)
-   6570 – 6500/1 microcontroller on keyboard PCB in Amiga 500 revision: -036
-   6572 – VIC-II (PAL-N)
-   6573 – VIC-II (PAL-M)
-   6581/6582/8580 – SID Sound Interface Device
-   7360/8360 – TED Text Editing Device (HMOS-I/II)
-   7501 – CPU HMOS-I 6502 with 7-bit I/O port
-   8361 – AGNUS Address Generator Unit (NTSC)
-   8362 – DENISE Display Encoder
-   8364 – PAULA Port Audio UART and Logic
-   8367 – AGNUS Address Generator Unit (PAL)
-   8370 – "Fat" AGNUS Address Generator Unit (NTSC)
-   8371 – "Fat" AGNUS Address Generator Unit (PAL)
-   8372 – ECS AGNUS Address Generator Unit
-   8373 – ECS DENISE Display Encoder
-   8374 – AGA ALICE Address Generator Unit
-   8375 – ECS AGNUS Address Generator Unit
-   8500 – CPU HMOS-II Version of 6510
-   8501 – CPU HMOS-II 6502 with 7-bit I/O port
-   8502 – CPU compatible with 6510 but able to run at 2 MHz
-   8520 – CIA (Complex Interface Adapter) 1 MHz 8520 or 2 MHz 8520A-1 in Amiga
-   8551 – ACIA Asynchronous Communications Interface Adapter, HMOS-II variant of the 6551
-   8562 – VIC-II (NTSC)
-   8563 – VDC Video Display Controller
-   8564 – VIC-II (NTSC)
-   8565 – VIC-II (PAL)
-   8566 – VIC-II (PAL)
-   8568 – VDC with composite HSYNC, VSYNC, and RDY interrupt
-   8701 – clock generator
-   8721 – PLA
-   8722 – MMU Memory Management Unit
-   8726 – REC RAM Expansion Controller
-   8727 – DMA Direct Memory Access


References


External links

-   Information on MOS' chips and their use in CBM's computers – By Ronald van Dijk
-   Documentation for various chips used in Commodore computers
-   EPA page on former MOS/CSG/GMT fabrication facility - link validated November 30, 2016.
-   On the Edge: The Spectacular Rise and Fall of Commodore (2005), Variant Press. Covers Chuck Peddle, the formation of MOS Technology and corporate history, and the design and promotion of the 6502.

Category:Defunct semiconductor companies of the United States Category:Electronics companies of the United States Category:Manufacturing companies based in Pennsylvania Category:Companies based in Montgomery County, Pennsylvania Category:Superfund sites in Pennsylvania Category:Electronics companies established in 1969 Category:Manufacturing companies disestablished in 2001 Category:Commodore International Category:Defunct companies based in Pennsylvania

[1]

[2] MOS MCS6500 Microcomputer Family Hardware Manual (Publication Number 6500-10A), January 1976, p. 41. (http://www.6502.org/documents/books/mcs6500_family_hardware_manual.pdf)

[3] see: Introducing the 6501 and 6502

[4]

[5] https://books.google.com/books?id=xUAV0VcszIQC&pg=PA541, Calculator Maker Integrates Downwards, New Scientist, 9 September 1976, Volume 71, Issue 1017, page 541

[6] "Commodore Buys MOS Technology", _New Scientist_, September 1976

[7]

[8]

[9]

[10]

[11]

[12]

[13] http://docs2.minhateca.com.br/767372,BR,0,0,m6502.txt

[14]

[15]

[16]