The 6800 ("_sixty-eight hundred_") is an 8-bit microprocessor designed and first manufactured by Motorola in 1974. The MC6800 microprocessor was part of the M6800 Microcomputer System that also included serial and parallel interface ICs, RAM, ROM and other support chips. A significant design feature was that the M6800 family of ICs required only a single five-volt power supply at a time when most other microprocessors required three voltages. The M6800 Microcomputer System was announced in March 1974 and was in full production by the end of that year.[1][2]

The 6800 has a 16-bit address bus that can directly access 64 kB of memory and an 8-bit bi-directional data bus. It has 72 instructions with seven addressing modes for a total of 197 opcodes. The original MC6800 could have a clock frequency of up to 1 MHz. Later versions had a maximum clock frequency of 2 MHz.[3][4]

In addition to the ICs, Motorola also provided a complete assembly language development system. The customer could use the software on a remote timeshare computer or on an in-house minicomputer system. The Motorola EXORciser was a desktop computer built with the M6800 ICs that could be used for prototyping and debugging new designs. An expansive documentation package included datasheets on all ICs, two assembly language programming manuals, and a 700-page application manual that showed how to design a point-of-sale computer terminal.[5]

The 6800 was popular in computer peripherals, test equipment applications and point-of-sale terminals. It also found use in arcade games[6] and pinball machines.[7] The MC6802, introduced in 1977, included 128 bytes of RAM and an internal clock oscillator on chip. The MC6801 and MC6805 included RAM, ROM and I/O on a single chip and were popular in automotive applications.


History

Motorola's history in semiconductors

Galvin Manufacturing Corporation was founded in 1928; the company name was changed to Motorola in 1947. They began commercial production of transistors at a new US$1.5 million facility in Phoenix in 1955.[8]

Motorola's transistors and integrated circuits were used in-house for their communication, military, automotive and consumer products and they were also sold to other companies. By 1973 the Semiconductor Products Division (SPD) had sales of $419 million and was the second largest semiconductor company after Texas Instruments.[9]

In the early 1970s Motorola started a project that developed their first microprocessor, the MC6800. This was followed by single-chip microcontrollers such as the MC6801 and MC6805.

Development team

Motorola did not chronicle the development of the 6800 microprocessor the way that Intel did for their microprocessors. In 2008 the Computer History Museum interviewed four members of the 6800 microprocessor design team. Their recollections can be confirmed and expanded by magazine and journal articles written at the time.

The Motorola microprocessor project began in 1971 with a team composed of designer Tom Bennett, engineering director Jeff LaVell, product marketer Link Young and systems designers Mike Wiles, Gene Schriber and Doug Powell.[10] They were all located in Mesa, Arizona. By the time the project was finished, Bennett had 17 chip designers and layout people working on five chips. LaVell had 15 to 20 system engineers and there was another applications engineering group of similar size.[11]

Tom Bennett had a background in industrial controls and had worked for Victor Comptometer in the 1960s designing the first electronic calculator to use MOS ICs, the Victor 3900.[12] In May 1969 Ted Hoff showed Bennett early diagrams of the Intel 4004 to see if it would meet their calculator needs. Bennett joined Motorola in 1971 to design calculator ICs. He was soon assigned as the chief architect of the microprocessor project that produced the 6800.[13] Others have taken credit for designing the 6800. In September 1975 Robert H. Cushman, _EDN_ magazine's microprocessor editor, interviewed Chuck Peddle about MOS Technology's new 6502 microprocessor. Cushman then asked "Tom Bennett, master architect of the 6800", to comment about this new competitor.[14] After the 6800 project Bennett worked on automotive applications and Motorola became a major supplier of microprocessors used in automobiles.

Jeff LaVell joined Motorola in 1966 and worked in the computer industry marketing organization. Jeff had previously worked for Collins Radio on their C8500 computer that was built with small scale ECL ICs. In 1971, he led a group that examined the needs of their existing customers such as Hewlett-Packard, National Cash Register, Control Data Corporation (CDC), and Digital Equipment Corporation (DEC). They would study the customer's products and try to identify functions that could be implemented in larger integrated circuits at a lower cost. The result of the survey was a family of 15 building blocks; each could be implemented in an integrated circuit.[15] Some of these blocks were implemented in the initial M6800 release and more were added over the next few years. To evaluate the 6800 architecture while the chip was being designed, Jeff's team built an equivalent circuit using 451 small scale TTL ICs on five 10 by 10 inch (25 by 25 cm) circuit boards. Later they reduced this to 114 ICs on one board by using ROMs and MSI (medium scale integration) logic devices.[16]

John Buchanan was a memory designer at Motorola when Bennett asked him to design a voltage doubler for the 6800. Typical n-channel MOS IC's required three power supplies: -5 volts, +5 volts and +12 volts. The M6800 family was to use only one, +5 volts. It was easy to eliminate the -5 volt supply but the MOS transistors needed a supply of 10 to 12 volts. This on-chip voltage doubler would supply the higher voltage and Buchanan did the circuit design, analysis and layout for the 6800 microprocessor. He received patents on the voltage doubler and the 6800 chip layout.[17][18] Rod Orgill assisted Buchanan with analyses and 6800 chip layout. Later Orgill would design the MOS Technology 6501 microprocessor that was socket compatible with the 6800.

Bill Lattin joined Motorola in 1969 and his group provided the computer simulation tools for characterizing the new MOS circuits in the 6800. Lattin and Frank Jenkins had both attended UC Berkeley and studied computer circuit simulators under Donald Pederson, the designer of the SPICE circuit simulator.[19] Motorola's simulator, MTIME, was an advanced version of the TIME circuit simulator that Jenkins had developed at Berkeley. The group published a technical paper, "MOS-device modeling for computer implementation" in 1973 describing a "5-V single-supply n-channel technology" operating at 1 MHz. They could simulate a 50 MOSFET circuit on an IBM 370/165 mainframe computer.[20] In November 1975, Lattin joined Intel to work on their next generation microprocessor.[21]

Bill Mensch joined Motorola in 1971 after graduating from the University of Arizona. He had worked several years as an electronics technician before earning his BSEE degree. The first year at Motorola was a series of three-month rotations through four different areas. Mensch did a flowchart for a modem that would become the 6860. He also worked the application group that was defining the M6800 system. After this training year, he was assigned to the 6820 Peripheral Interface Adapter (PIA) development team. Mensch was a major contributor to the design of this chip and received a patent on the IC layout[22] and was named as a co-inventor of seven other M6800 system patents.[23] Later Mensch would design the MOS Technology 6502 microprocessor.

Mike Wiles was a design engineer in Jeff LaVell's group and made numerous customer visits with Tom Bennett during 6800 product definition phase. He is listed as an inventor on eighteen 6800 patents but is best known for a computer program, MIKBUG.[24] This was a monitor for a 6800 computer system that allowed the user to examine the contents of RAM and to save or load programs to tape. This 512 byte program occupied half of an MCM6830 ROM.[25] This ROM was used in the Motorola MEK6800 design evaluation kit and early hobby computer kits.[26] Wiles stayed with Motorola, moved to Austin and helped design the MC6801 microcontroller that was released in 1978.[27]

Chuck Peddle joined the design team in 1973 after the 6800 processor design was done but he contributed to overall system design and to several peripheral chips, particularly the 6820 (PIA) parallel interface.[28] Peddle is listed as an inventor on sixteen Motorola patents, most have six or more co-inventors.[29] Like the other engineers on the team, Peddle visited potential customers and solicited their feedback. Peddle and John Buchanan built one of the earliest 6800 demonstration boards.[30] In August 1974 Chuck Peddle left Motorola and joined a small semiconductor company in Pennsylvania, MOS Technology. There he led the team that designed the 6500 microprocessor family.

MC6800 microprocessor design

+----------------------------------------------------------------------------------------------------------------------------------------------+
| _Motorola 6800 registers_                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------+
|   ----------------- ----------------- --------------- ---- ---- ---- ---- ---- ---- ------- ---- ---- ---- ---- ---- ---- ------------------ |
|   ¹₅                ¹₄                ¹₃              ¹₂   ¹₁   ¹₀   ⁰₉   ⁰₈   ⁰₇   ⁰₆      ⁰₅   ⁰₄   ⁰₃   ⁰₂   ⁰₁   ⁰₀   _(bit position)_   |
|   MAIN REGISTERS                                                                                                                             |
|                     A                 A accumulator                                                                                          |
|                     B                 B accumulator                                                                                          |
|   INDEX REGISTERS                                                                                                                            |
|   IX                Index register                                                                                                           |
|   SP                Stack Pointer                                                                                                            |
|   PROGRAM COUNTER                                                                                                                            |
|   PC                Program Counter                                                                                                          |
|   STATUS REGISTER                                                                                                                            |
|                     1                 1               H    I    N    Z    V    C    Flags                                                    |
|   ----------------- ----------------- --------------- ---- ---- ---- ---- ---- ---- ------- ---- ---- ---- ---- ---- ---- ------------------ |
+----------------------------------------------------------------------------------------------------------------------------------------------+

The Motorola 6800 and the Intel 8080 were designed at the same time and were similar in function. The 8080 was an extension and enhancement of the Intel 8008, which in turn was an LSI implementation of the TTL-based CPU design used in the Datapoint 2200. The 6800 architecture was modeled after the DEC PDP-11 processor.[31] Both the 8080 and the 6800 were TTL compatible, had an 8-bit bidirectional data bus, a 16-bit stack pointer, a 16-bit address bus that could address 64 kB of memory, and came in a 40-pin DIP package. The 6800 had two accumulators and a 16-bit index register. The direct addressing mode allowed fast access to the first 256 bytes of memory. I/O devices were addressed as memory so there were no special I/O instructions. The 8080 had more internal registers and instructions for dedicated I/O ports. When the 8080 was reset, the program counter was cleared and the processor started at memory location 0000. The 6800 loaded the program counter from the highest address and started at the memory location stored there.[32] The 6800 had a three-state control that would disable the address bus to allow another device direct memory access. A disk controller could therefore transfer data into memory with no load on the processor. It was even possible to have two 6800 processors access the same memory.[33] However, in practice systems of such complexity usually required the use of external bus transceivers to drive the system bus; in such circuits the on-processor bus control was disabled entirely in favor of using the similar capabilities of the bus transceiver.[34] In contrast, the 6802 dispensed with this on-chip control entirely in order to free up pins for other functions in the same 40-pin package as the 6800, but this functionality could still be achieved using an external bus transceiver.

MOS ICs typically used dual clock signals (a two-phase clock) in the 1970s. These were generated externally for both the 6800 and the 8080.[35] The next generation of microprocessors incorporated the clock generation on chip. The 8080 had a 2 MHz clock but the processing throughput was similar to the 1 MHz 6800, since the 8080 required more clock cycles to execute a processor instruction than the 6800. The 6800 had a minimum clock rate of 100 kHz, while the 8080 had no lower limit and could be halted (effectively a 0 Hz clock speed). Higher-speed versions of both microprocessors were released by 1976.[36]

Other divisions in Motorola developed components for the M6800 family. The Components Products Department designed the MC6870 two-phase clock IC, and the Memory Products group provided a full line of ROMs and RAMs. The CMOS group's MC14411 Bit Rate Generator provided a 75 to 9600 baud clock for the MC6850 serial interface. The buffers for address and data buses were standard Motorola products. Motorola could supply every IC, transistor, and diode necessary to build an MC6800-based computer.

MOS ICs

The first-generation metal–oxide–semiconductor (MOS) chips used p-channel field-effect transistors, known as p-channel MOSFETs (p-channel describes the configuration of the transistor). These ICs were used in calculators and in the first microprocessor, the Intel 4004. They were easy to produce but were slow and difficult to interface to the popular TTL digital logic ICs. An n-channel MOS integrated circuit could operate two or three times faster and was compatible with TTL. They were much more difficult to produce because of an increased sensitivity to contamination that required an ultra clean production line and meticulous process control.[37] Motorola did not have an n-channel MOS production capability and had to develop one for the 6800 family.

Motorola's n-channel MOS test integrated circuits were complete in late 1971 and these indicated the clock rate would be limited to 1 MHz. These used "enhancement-mode" MOS transistors. There was a newer fabrication technology that used "depletion-mode" MOS transistors as loads, which would allow smaller and faster circuits (this was also known as depletion-load nMOS). The "depletion-mode" processing required extra steps so Motorola decided to stay with "enhancement-mode" for the new single-supply-voltage design. The 1 MHz clock rate meant the chip designers would have to come up with several architectural innovations to speed up the microprocessor throughput.[38] These resulting circuits were faster but required more area on the chip.[39]

In the 1970s, semiconductors were fabricated on 3 inch (75 mm) diameter silicon wafers. Each wafer could produce 100 to 200 integrated circuit chips or dies. The technical literature would state the length and width of each chip in "mils" (0.001 inch). The Intel 8080 microprocessor chip size was 164 mils x 191 mils (4.1 mm by 4.9 mm).[40] The current industry practice is to state the chip area so the size of the 8080 chip would be 19.7 mm².

Processing wafers required multiple steps and flaws would appear at various locations on the wafer during each step. The larger the chip the more likely it would encounter a defect. The percentage of working chips, or yield, began to decline for chips larger than 160 mils (4 mm) on a side. The target size for the 6800 was 180 mils (4.6 mm) on each side but the final size was 212 mils (5.4 mm ) with an area of (29.0 mm²). At 180 mils, a wafer will hold about 190 chips, 212 mils reduces that to 140 chips. At this size the yield may be 20% or 28 chips per wafer.[41][42] The Motorola 1975 annual report highlights the new MC6800 microprocessor but has several paragraphs on the "MOS yield problems."[43] The yield problem was solved with a design revision started in 1975 to use depletion mode in the M6800 family devices. The 6800 die size was reduced to 160 mils (4 mm) per side with an area of 16.5 mm². This also allowed faster clock speeds, the MC68A00 would operate at 1.5 MHz and the MC68B00 at 2.0 MHz. The new parts were available in July 1976.[44][45]

M6800 family introduction

The March 7, 1974 issue of _Electronics_ had a two-page story on the Motorola MC6800 microprocessor along with the MC6820 Peripheral Interface Adapter, the MC6850 communications interface adapter, the MCM6810 128 byte RAM and the MCM6830 1024 byte ROM.[46] This was followed by an eight-page article in the April 18, 1974 issue, written by the Motorola design team.[47] This issue also had an article introducing the Intel 8080.[48]

Both the Intel 8080 and the Motorola MC6800 processors began layout around December 1972. The first working 8080 chips were produced January 1974[49] and the first public announcement was in February 1974.[50] The 8080 used same three voltage N-channel MOS process as Intel's existing memory chips allowing full production to begin that April.

The first working MC6800 chips were produced in February 1974 and engineering samples were given to select customers. Hewlett-Packard in Loveland, Colorado wanted the MC6800 for a new desktop calculator and had a prototype system working by June.[51][52] The MC6800 used a new single-voltage N-channel MOS process that proved to be very difficult to implement. The M6800 microcomputer system was finally in production by November 1974. Motorola matched Intel's price for single microprocessor, $360.[53][54] (The IBM System/360 was a well-known computer at this time.) In April 1975 the MEK6800D1 microcomputer design kit was offered for $300. The kit included all six chips in the M6800 family plus application and programming manuals.[55] The price of a single MC6800 microprocessor was $175.

Link Young was the product marketer that developed the total system approach for the M6800 family release. In addition to releasing a full set of support chips with the 6800 microprocessor, Motorola offered a software and hardware development system. The software development tools were available on remote time-sharing computers or the source code was available so the customer could use an in-house computer system. The software that would run on a microprocessor system was typically written in assembly language. The development system consisted of a text editor, assembler and a simulator.[56] This allowed the developer to test the software before the target system was complete. The hardware development was a desktop computer built with M6800 family CPU and peripherals known as the EXORcisor.[57] Motorola offered a three- to five-day microprocessor design course for the 6800 hardware and software.[58] This systems-oriented approach became the standard way new microprocessor were introduced.[59]

Design team breakup

The principal design effort on the M6800 family was complete in mid-1974, and many engineers left the group or the company. Several factors led to the break-up of the design group.

Motorola had opened a new MOS semiconductor facility in Austin, Texas. The entire engineering team was scheduled to relocate there in 1975.[60] Many of the employees liked living in the Phoenix suburb of Mesa and were very wary about moving to Austin. The team leaders were unsuccessful with their pleas to senior management on deferring the move.[61]

A recession hit the semiconductor industry in mid-1974 resulting in thousands of layoffs. A November 1974 issue of _Electronics_ magazine reports that Motorola had laid off 4,500 employees, Texas Instruments 7,000 and Signetics 4,000.[62] Motorola's Semiconductor Products Division would lose thirty million dollars in the next 12 months and there were rumors that the IC group would be sold off. Motorola did not sell the division but they did change the management and organization.[63] By the end of 1974 Intel fired almost a third of its 3,500 employees.[64] The MOS IC business rebounded but job security was not taken for granted in 1974 and 1975.

Chuck Peddle (and other Motorola engineers) had been visiting customers to explain the benefits of microprocessors. Both Intel and Motorola had initially set the price of a single microprocessor at $360. Many customers were hesitant to adopt this new microprocessor technology with such a high price tag. (The actual price for production quantities was much lower.) In mid-1974 Peddle proposed a simplified microprocessor that could be sold at a much lower price. Motorola's "total product family" strategy did not focus on the price of MPU but on reducing the customer's total design cost.[65][66] Their immediate goal was to get their completed system into production and they would work on improvements in 1975.

Peddle continued working for Motorola while looking for investors for his new microprocessor concept.[67] In August 1974 Chuck Peddle left Motorola and joined a small semiconductor company in Pennsylvania, MOS Technology. He was followed by seven other Motorola engineers: Harry Bawcum, Ray Hirt, Terry Holdt, Mike James, Will Mathis, Bill Mensch and Rod Orgill.[68] Peddle's group at MOS Technology developed two new microprocessors that were compatible with the Motorola peripheral chips like the 6820 PIA. Rod Orgill designed the MCS6501 processor that would plug into a MC6800 socket and Bill Mensch did the MCS6502 that had the clock generation circuit on chip. These microprocessors would not run 6800 programs because they had a different architecture and instruction set. The major goal was a microprocessor that would sell for under $25. This would be done by removing non-essential features to reduce the chip size. An 8-bit stack pointer was used instead of a 16-bit one. The second accumulator was omitted. The address buffers did not have a three-state mode for Direct Memory Access (DMA) data transfers.[69] The goal was to get the chip size down to 153 mils x 168 mils (3.9 mm x 4.3 mm).[70]

Chuck Peddle was a very effective spokesman and the MOS Technology microprocessors were extensively covered in the trade press. One of the earliest was a full-page story on the MCS6501 and MCS6502 microprocessors in the July 24, 1975 issue of _Electronics_ magazine.[71] Stories also ran in _EE Times_ (August 24, 1975),[72] _EDN_ (September 20, 1975), _Electronic News_ (November 3, 1975) and _Byte_ (November 1975). Advertisements for the 6501 appeared in several publications the first week of August 1975. The 6501 would be for sale at the WESCON trade show in San Francisco, September 16–19, 1975, for $20 each.[73] In September 1975 the advertisements included both the 6501 and the 6502 microprocessors. The 6502 would only cost $25.[74]

Motorola responded to MOS Technology's $20 microprocessor by immediately reducing the single-unit price of the 6800 microprocessor from $175 to $69[75] and then suing MOS Technology in November 1975.[76] Motorola claimed that the eight former Motorola engineers used technical information developed at Motorola in the design of the 6501 and 6502 microprocessors. MOS Technology's other business, calculator chips, was declining due to a price war with Texas Instruments so their financial backer, Allen-Bradley, decided to limit the possible losses and sold the assets of MOS Technology back to the founders.[77] The lawsuit was settled in April 1976 with MOS Technology dropping the 6501 chip that would plug into a Motorola 6800 socket and licensing Motorola's peripheral chips.[78][79] Motorola reduced the single-unit price of the 6800 to $35.[80][81]

The MOS Technology vs. Motorola lawsuit has developed a David and Goliath narrative over the years. One point was that Motorola did not have patents on the technology. This was technically true when the lawsuit was filed in late 1975. On October 30, 1974, before the 6800 was released, Motorola filed numerous patents applications on the microprocessor family, and over twenty patents were subsequently granted. The first was to Tom Bennett on June 8, 1976 for the 6800 internal address bus.[82] The second was to Bill Mensch on July 6, 1976 for the 6820 chip layout.[83] Many of these patents named several of the departing engineers as co-inventors. These patents covered the 6800 bus and how the peripheral chips interfaced with the microprocessor.[84] (Intel had a similar incident: Federico Faggin, who had led the development of the Intel 4004 and 8080 CPUs, grew restless at Intel and left with another engineer, Ralph Ungermann, to start Zilog in November 1974. Masatoshi Shima, the designer of the 8080, joined Zilog in February 1975, and they obtained funding from Exxon's venture capital group in June 1975. Zilog made a superset of the Intel 8080 with features from the 6800 and others: the Z80.[85][86][87][88])

Move to Austin

Gary Daniels was designing ICs for electronic wristwatches when Motorola shut down their Timepiece Electronics Unit. Tom Bennett offered him a job in the microprocessor group in November 1974. Bennett did not want to leave the Phoenix area so Gary Daniels managed the microprocessor development in Austin. (Daniels was the microprocessor design manager for the next ten years before he was promoted to a vice president.)

The first task was to redesign the 6800 MPU to improve the manufacturing yield and to operate at a faster clock. This design used depletion-mode technology and was known internally as the MC6800D. The transistor count went from 4000 to 5000 but the die area was reduced from 29.0 mm² to 16.5 mm². The maximum clock rate for selected parts doubled to 2 MHz. The other chips in the M6800 family were also redesigned to use depletion-mode technology. The Peripheral Interface Adapter had a slight change in the electrical characteristics of the I/O pins so the MC6820 became the MC6821.[89] These new IC were completed in July 1976.

A new low-cost clock generator chip, the MC6875, was released in 1977. It replaced the $35 MC6870 hybrid IC. The MC6875 came in a 16-pin dip package and could use quartz crystal or a resistor capacitor network.[90]

Another project was incorporating 128 bytes of RAM and the clock generator on a single 11,000-transistor chip. The MC6802 microprocessor was released in March 1977. The companion MC6846 chip had 2048 byte ROM, an 8-bit bidirectional port and a programmable timer. This was a two-chip microcomputer. The 6802 has an on-chip oscillator that uses an external 4 MHz quartz crystal to produce the two-phase 1 MHz clock. The internal 128 byte RAM could be disabled by grounding a pin and devices with defective RAM were sold as a MC6808.[91]

A series of peripheral chip were introduced by 1978. The MC6840 programmable counter had three 16-bit binary counters that could be used for frequency measurement, event counting, or interval measurement. The MC6844 Direct Memory Access Controller could transfer data from an I/O controller to RAM without loading down the MC6800 microprocessor. The MC6845 CRT Controller (CRTC) provided the control logic for a character based computer terminal. The 6845 had support for a light pen, an alternative to a computer mouse.

The MC6845 was a very popular chip: it was even used in the original Monochrome Display Adapter and the original IBM Color Graphics Adapter for the IBM PC and successors, where the 6845 was used with an Intel 8088 CPU[92]. The later IBM Enhanced Graphics Adapter (EGA) card contained a custom IBM chip (the EGA CRTC) that replaced the Motorola 6845, adding many enhancements, in a mostly-compatible way. The IBM Video Graphics Array (VGA), which became ubiquitous (to the point that it is still emulated as the baseline functionality of most modern PC video adapter chips) incorporates a compatible near-superset of the EGA CRTC, still mostly-compatible with the MC6845 (but by this point without the light pen support, which the EGA CRTC retained).

The MC6801 was a single-chip microcomputer (that today would also be called a microcontroller) incorporating a 6802 CPU with 128 bytes of RAM, a 2 kB ROM, a 16-bit timer, 31 programmable parallel I/O lines, and a serial port. It could also use the I/O lines as data and address buses to connect to standard M6800 peripherals. The 6801 would execute 6800 code, but it had ten additional instructions, and the execution time of key instructions was reduced. The two 8-bit accumulators could act as a single 16-bit accumulator for double precision addition, subtraction and multiplication.[93] It was initially designed for automotive use, with General Motors as the lead customer. The first application was a trip computer for the 1978 Cadillac Seville.[94] This 35,000 transistor chip was too expensive for wide-scale adoption in automobiles, so a reduced function MC6805 single-chip microcomputer was designed.

The MC6809 was the most advanced 8-bit microprocessor Motorola produced. It had a new instruction set that was similar to the 6800 but abandoned op-code compatibility for improved performance and high-level language support; the 6809 and 6800 were software compatible in that assemblers could (and generally did) generate code which was equivalent to 6800 opcodes that the 6809 did not directly emulate. In that sense, the 6809 was upward compatible with the 6800. The 6809 had two 16-bit index registers, two 16-bit stack pointers, and many instructions to perform 16-bit operations, including the first 8-bit multiply instruction (generating a 16 bit product) in a microprocessor. Other key points of the 6809 design were full support for both position independent code (object code that can run wherever it is loaded in memory) and reentrant code (object code that can be re-invoked when interrupted or by calling itself recursively[95]), features previously seen only in much larger machines such as IBM 360 mainframes.[96]

Motorola spin-off companies

In 1999 Motorola spun off their analog IC, digital IC and transistor business as ON Semiconductor based in Phoenix, Arizona.

In 2004 they spun off their microprocessor business as Freescale Semiconductor based in Austin, Texas.


Use in personal computers

The MITS Altair 8800, the first successful personal computer, used the Intel 8080 microprocessor and was featured on the January 1975 cover of _Popular Electronics_.[97] The first personal computers using the Motorola 6800 were introduced in late 1975. Sphere Corporation of Bountiful, Utah ran a quarter-page advertisement in the July 1975 issue of _Radio-Electronics_ for a computer kit with a 6800 microprocessor, of RAM, a video board and a keyboard. This would display 16 lines of 32 characters on a TV or monitor.[98] The Sphere computer kits began shipping in November 1975.[99] Southwest Technical Products Corporation of San Antonio, Texas, officially announced their SWTPC 6800 Computer System in November 1975. Wayne Green visited SWTPC in August 1975 and described the SWTPC computer kit complete with photos of a working system in the October 1975 issue of _73_. The SWTPC 6800 was based on the Motorola MEK6800 design evaluation kit chip set and used the MIKBUG ROM Software.[100] The MITS Altair 680 was on the cover of the November 1975 issue of _Popular Electronics_. The Altair 680 used a 6800 microprocessor and, unlike the SWTPC machine, also had a front panel with toggle switches and LEDs. The initial design had to be revised and first deliveries of the Altair 680B were in April 1976.[101]

Sphere was a small startup company and had difficulties delivering all of the products they announced. They filed for a Chapter 11 bankruptcy in April 1977.[102] The Altair 680B was popular but MITS focused most of the resources on their Altair 8800 computer system and they exited the hobby market in 1978. The Southwest Technical Products computer was the most successful 6800 based personal computer.[103][104] Other companies, for instance, Smoke Signal Broadcasting (California), Gimix (Chicago), Midwest Scientific (Olathe, Kansas), and Helix Systems (Hazelwood, Missouri), started producing SWTPC 6800 bus compatible boards and complete systems. Technical Systems Consultants of West Lafayette, Indiana, supplied tape based software for the 6800 (and later 6809) based computers and, after disk systems became available, operating systems and disk software as well. The 8080 systems were far more popular than the 6800 ones.[105]

The Tektronix 4051 Graphics Computing System was introduced in October 1975. This was a professional desktop computer that had a 6800 microprocessor with up to 32 kB of user RAM, 300 kB magnetic tape storage, BASIC in ROM and a 1024 by 780 graphics display. The Tektronix 4051 sold for $7000, rather higher than the personal computers using the 6800.[106]

The 6800 processor was also used in the APF MP1000 game console.

The architecture and instruction set of the 6800 were easy for beginners to understand and Heathkit developed a microprocessor course and the ET3400 6800 trainer. The course and trainer proved popular with individuals and schools.[107]

Motorola's next generation 8-bit microprocessor architecture, the MC6809 (1979), was not binary code compatible with the 6800, but nearly all assembly code would assemble and run on the 6809; 6800 family peripheral chips worked as a matter of course.


Example code

The following 6800 assembler source code is for a subroutine named memcpy that copies a block of data bytes of a given size from one location to another. The data block is copied one byte at a time, from lowest address to highest.

            ; memcpy --
            ; Copy a block of memory from one location to another.
            ; Called as a subroutine, note return to saved PC addr on exit
            ; Entry parameters
            ;      cnt - Number of bytes to copy
            ;      src - Address of source data block
            ;      dst - Address of target data block

            cnt         dw      $0000       ; sets aside space for memory addr
            src         dw      $0000       ; sets aside space for memory addr
            dst         dw      $0000       ; sets aside space for memory addr

            memcpy      public
                        ldab    cnt+1       ;Set B = cnt.L
                        beq     check       ;If cnt.L=0, goto check
            loop        ldx     src         ;Set IX = src
                        ldaa    ix          ;Load A from (src)
                        inx                 ;Set src = src+1
                        stx     src
                        ldx     dst         ;Set IX = dst
                        staa    ix          ;Store A to (dst)
                        inx                 ;Set dst = dst+1
                        stx     dst
                        decb                ;Decr B
                        bne     loop        ;Repeat the loop
                        stab    cnt+1       ;Set cnt.L = 0
            check       tst     cnt+0       ;If cnt.H=0,
                        beq     done        ;Then quit
                        dec     cnt+0       ;Decr cnt.H
                        ; loop back and do 256*(cnt.H+1) more copies (B=0)
                        bra     loop        ;Repeat the loop
            done        rts                 ;Return

This example illustrates well the crippling effect that the processor’s lack of a sufficient number of registers has on performance. Indeed, this processor architecture presents an extreme example of this weakness. Because of this problem and the fact that this routine needs to update two active memory addresses, a dominant part of the code’s time is dealing with shuffling values between registers and memory.


Peripherals

List from "Motorola Microcomputer Components", November 1978

  Part      Description                                           Image
  --------- ----------------------------------------------------- ---------------
  MC6810    128 byte static RAM                                   Brochure
  MC6820    Peripheral Interface Adapter (PIA)                    Brochure
  MC6821    Peripheral Interface Adapter (PIA)                    Brochure
  MC6828    Priority Interrupt Controller (PIC)                   Brochure
  MCM6830   1024 byte ROM                                         Brochure
  MC6840    Programmable Timer Module (PTM)                       Brochure
  MC6843    Floppy Disk Controller (FDC)                          Brochure
  MC6844    Direct Memory Access Controller (DMAC)                Brochure
  MC6845    CRT Controller (CRTC)                                 Brochure
  MC6846    ROM-I/O-Timer                                         Brochure
  MC68488   General Purpose Interface Adapter (GPIB) IEEE488      Brochure
  MC6850    Asynchronous Communication Interface Adapter (ACIA)   Brochure
  MC6852    Synchronous Serial Data Adapter (SDAA)                Brochure
  MC6854    Advanced Data Link Controller (ADLC)                  Brochure
  MC6860    0-600 bit/s Digital Modem                             Brochure
  MC6862    2400 bit/s Modulator                                  Brochure
  MC6870    Two Phase Microprocessor Clock                        Advertisement
  MC6875    Clock Generator                                       Brochure



Second sources

A common requirement for manufacturing companies was to require two or more sources for every part in the products they made. This ensured they could get parts if a supplier had financial problems or a disaster. Initially Motorola selected American Microsystems Inc (AMI) (ironically since 2008 part of ON Semiconductor, Motorola's Semiconductor Components Group business which was spun off in 1999) as a second source for the M6800 family. Hitachi, Fujitsu, Fairchild, Rockwell and Thomson Semiconductors were added later.

Rochester Electronics was Authorized by Freescale/Motorola in 2014 to continue manufacturing any of the 8-bit peripherals and 8-bit processors of this era. Rochester specializes in fully authorized device duplication. Freescale has provided all the source design archives to enable Rochester Electronics for this product and others. At the end of 2016, Rochester was fully qualified and shipping the MC6802 processor, the MC6840 PTM, and the MC6809 processor (including the MC68A09, and MC68B09 versions) and can still be bought today.

File:KL AMI S6800 Black Background.jpg | AMI S6800 MPU File:Atari 90 6001 1.jpg|Atari 90-6001 File:Fairchild 6802 AMI 6820.jpg | Fairchild F6802P and an AMI S6820 PIA File:Hitach HD46800 1.jpg | Hitachi HD46800


Oral histories

-   "Intel 8080 Microprocessor Oral History Panel" Steve Bisset, Federico Faggin, Hal Feeney, Edward Gelbach, Ted Hoff, Stan Mazor, Masatoshi Shima, Computer History Museum, April 26, 2007, moderator: David House.
-   "Zilog Z80 Microprocessor Oral History Panel" Federico Faggin, Masatoshi Shima, Ralph Ungermann, Ralph Ungermann. Computer History Museum, April 27, 2007, moderator: Michael Slater.
-   "Motorola 6800 Oral History Panel" Thomas H. Bennett, John Ekiss, William (Bill) Lattin, Jeff Lavell. Computer History Museum, March 28, 2008, moderator: David Laws.
-   Interview with William Mensch Stanford and the Silicon Valley Project, October 9, 1995. Transcript


See also

-   EXORmacs, a follow-up system for M68000 processors


References


Further reading

-   _6800 Assembly Language Programming_; 1st Ed; Lance Leventhal; Osborne/McGraw-Hill; 484 pages; 1978; . (archive)
-   _Microprocessor Interfacing Techniques_; 3rd Ed; Rodnay Zaks and Austin Lesea; Sybex; 466 pages; 1979; . (archive)


External links

-   MC6800 applications manual from 1975- lots of information
-   MDOS User's Manual
-   Motorola Exorciser Emulator for Windows
-   Open source Motorola Exorciser and SWTPC emulator for Linux/Cygwin
-   MIKBUG
-   680x images and descriptions at cpu-collection.de
-   Instruction set summary
-   Java Applet Simulator of a simplified M6800 Microprocessor
-   Visual 6800 in JavaScript - transistor level graphical simulator

Category:Motorola microprocessors Category:Computer-related introductions in 1974

[1]

[2]  "Motorola's M6800 microcomputer system, which can operate from a single 5-volt supply, is moving out of the sampling stage and into full production." The small-quantity price of the MC6800 is $360. The MC6820 PIA cost $28.

[3]

[4]  "… MC6800, which was introduced in 1974. The device was built in six-micron NMOS technology with about 4000 transistors."

[5]

[6]

[7]

[8]

[9]

[10]

[11] Motorola 6800 Oral History (2008)

[12]

[13] Bennett, Thomas H., "Split low order internal address bus for microprocessor", US Patent 3962682, issued June 8, 1976. Bennett is listed as an inventor on 18 M6800 family patents.

[14]

[15]

[16] _Electronics_ April 18, 1974. Photo of boards on page 82, description of circuit on page 93.

[17] Buchanan, John K., "MOS DC Voltage booster circuit", US Patent 3942047, issued March 2, 1976.

[18] Buchanan, John K., "Chip topography for MOS integrated circuitry microprocessor chip", US Patent 3987418, issued October 19, 1976.

[19]

[20]  All of the authors were with Motorola's Semiconductor Products Division.

[21]  Bill Lattin leaves Motorola to join Intel.

[22] Mensch, William D., "Chip topography for MOS interface circuit", US Patent 3968478, issued July 6, 1976.

[23] Bill Memsch's is listed as an inventor on the following M6800 patents : 3979730, 4020472, 4086627, 4087855, 4145751, 4218740, 4263650

[24] Michael F. Wiles is listed as an inventor on the following US Patents on the Motorola 6800 system: 3979730, 4003028, 4004281, 4004283, 4010448, 4016546, 4020472, 4030079, 4032896, 4037204, 4040035, 4069510, 4086627, 4087855, 4090236, 4145751, 4218740, 4263650

[25]

[26]  First advertisement for the SWTPC 6800 computer.

[27]

[28]  Chapters 1 and 2 cover Chuck Peddle's early life, his time at Motorola and the genesis of the 6501/6502 microprocessors.

[29] Charles Peddle is listed as an inventor on the following US Patents on the Motorola 6800 system: 3975712, 3979730, 4004283, 4006457, 4016546, 4020472, 4030079, 4032896, 4037204, 4040035, 4086627, 4087855, 4090236, 4145751, 4218740, 4263650. Most of these patents have six or more co-inventors.

[30]  Gift from Thomas H. Bennett, designer of the 6800 microprocessor. This 6800 prototype board was constructed by Chuck Peddle and John Buchanan.

[31]  "The microprocessor phenomenon passed the PDP-11 by, even though elements of its architecture turned up in microprocessor designs (especially the Motorola 6800)." - Author interviewed Gordon Bell, designer of the PDP-11

[32]  This was Electronics magazine annual microprocessor special edition

[33] Motorola 6800 Oral History (2008) pp. 15-16

[34]

[35]  Motorola's Component Products Department sold hybrid ICs that included a quartz oscillator. These ICs produced the two-phase non-overlapping waveforms that the 6800 and 8080 required. Later, Intel produced the 8224 clock generator and Motorola produced the MC6875. The Intel 8085 and the Motorola 6802 processors included this circuitry on chip.

[36]

[37]

[38]

[39] Motorola 6800 Oral History (2008), p. 27

[40]  Table 2 on page 229 gives the 8080 chip size as 164 x 191 mils. The 8008 was 124 x 173 mils

[41]  This paper describes the Electronic Arrays EA9002 microprocessor that was 200 by 200 mils and fabricated on a 3 inch silicon wafer.

[42]  A 3-inch wafer can hold 200 dies of 160 by 160 mils. Total yield is Wafer yield x Assembly yield x Final test yield. In 1976 this was 40% x 80% x 85% or 26%. A 3 inch wafer with 200 die would yield 54 working microprocessors.

[43]

[44]  Daniels, "My first assignment was to lead a small team to redesign the 6800 MPU to make it more manufacturable and so that higher speed versions could be selected."

[45]

[46] The article used MC6830 for 128 byte RAM and MC6816 for the 1024 byte ROM. Motorola memory chips used MCM as a prefix.

[47]

[48]

[49]

[50]

[51] Motorola 6800 Oral History (2008) pp. 9, 15

[52]  "The instrument is a companion to the firm's new 9815A calculator which uses a Motorola M6800 microcomputer and is priced at $2900."

[53]  MC6800 microprocessor price was $360. The MC6850 asynchronous communications interface adaptor (ACIA) was slated for first quarter 1975 introduction.

[54]  "Shima implemented the 8080 in about a year and the new device was introduced in April 1974 for $360."

[55]  "Distributors are being stocked with the M6800 family, and the division is also offering an introductory kit that includes the family's six initial parts, plus applications and programming manuals, for $300."

[56]  This book was the instruction manual for the development software. Some of the software listing examples have dates from 1973 and 1974.

[57]

[58]  The three-day design course cost $375 and included a copy of all the training materials. A company could schedule a course for 20 engineers at their own facility for $4000.

[59]  "Motorola also introduced a development system and four peripheral chips mated to the 6800. Motorola's systems-oriented approach influenced the industry; henceforth CPUs would be introduced with full support available rather than on a trailing schedule."

[60]  Motorola's Austin MOS plant already in operation. "However, engineering and marketing won't move until 1975."

[61]

[62]

[63]  Summary: Semiconductor Products split into two parts, integrated circuits and discrete components. Semiconductor losses for the last four quarters exceeded $30 million. The sales organization lost its sensitivity to customer needs, "delays in responding to price cuts meant that customers bought elsewhere." Technical problems plagued IC production. The troubles are "not in design, but in chip and die yields." Problems have been solved. The MC6800 microprocessor "arrived in November 1974."

[64]  "By the end of the year [1974], Intel had fired fully 30 percent of its thirty-five hundred employees."

[65]  Motorola advertisement emphasizing their complete set of peripheral chips and development tools. This shorten the customers product design cycle.

[66] Motorola 6800 Oral History (2008) p. 18

[67] Bagnall (2006), "On the Edge". Page 10, "While still employed at Motorola, Peddle tried raising money to fund his new microprocessor.

[68]

[69]  Comparison of the 6502 and the 6800 microprocessors. Author visited MOS Technology in August 1975.

[70]  About the MOS Technology 6502 on page 40. "It measures just 168x183 mils now and will be shrunk 10% to 153x168 mils soon."

[71]  The article covers the 6501 and 6502 plus the 28 pin versions that would only address 4K of memory. It also covered future devices such as "a design that Peddle calls a pseudo 16."

[72]

[73]

[74]

[75]  The quantity one price for the MC6800 was reduced from $175 to $69. The previous price for 50 to 99 units was $125.

[76]

[77]

[78]

[79] "So Motorola sued and just recently won an out-of-court settlement that has MOS Technology paying $200,000 and stopping production on the 6501."

[80]

[81]  The new prices for the Motorola 6800 were $35 for 1–9 units, $32.50 for 10–49 and $29.25 for 50–99.

[82]

[83]

[84] Motorola was awarded the following US Patents on the 6800 microprocessor family: 3962682, 3968478, 3975712, 3979730, 3979732, 3987418, 4003028, 4004281, 4004283, 4006457, 4010448, 4016546, 4020472, 4030079, 4032896, 4037204, 4040035, 4050096, 4069510, 4071887, 4086627, 4087855, 4090236, 4106091, 4145751, 4218740, 4263650

[85]

[86]

[87]

[88]

[89]  The MC6820 became the MC6821 because the electrical characteristic of PA0–7 and PB0–7 pins changed slightly. The typical Input High Current went from -250 μAdc to -400 μAdc and the Input Low Current went from 1.0 mAdc to 1.3 mAdc.

[90]  Requiring only a 5 V supply and a quartz crystal or an RC network, the MC6875 provides buffered 2 phase clock outputs… $3.75 in 1000 piece quantities from Motorola Linear Products

[91]  MC6802 microprocessor has oscillator and 128 byte RAM. MC6846 has ROM Timer and I/O. Samples later this month.

[92] The MDA (i.e. MDPA) and CGA were both introduced by IBM simultaneously with the IBM PC in April 1981, as options for the PC and later for the PC XT and the PC AT.

[93] .

[94] Motorola 6800 Oral History (2008) pp. 21-22

[95] without the restriction that invocations must complete in the opposite of their order of initiation

[96] .

[97]

[98]

[99]

[100]

[101]

[102]

[103]  Interview with Daniel Meyer at the "Personal Computing 77" conference at Atlantic City NJ in August 1977

[104]

[105]

[106]  Ad for Tektronix 4051 in _Electronics_ April 1976

[107]