The MOS TECHNOLOGY 6502 (typically _"sixty-five-oh-two"_ or _"six-five-oh-two"_)[1] is an 8-bit microprocessor that was designed by a small team led by Chuck Peddle for MOS Technology. When it was introduced in 1975, the 6502 was, by a considerable margin, the least expensive microprocessor on the market. It initially sold for less than one-sixth the cost of competing designs from larger companies, such as Motorola and Intel, and caused rapid decreases in pricing across the entire processor market. Along with the Zilog Z80, it sparked a series of projects that resulted in the home computer revolution of the early 1980s.

Popular home video game consoles and computers, such as the Atari 2600, Atari 8-bit family, Apple II, Nintendo Entertainment System, Commodore 64, Atari Lynx, BBC Micro and others, used the 6502 or variations of the basic design. Soon after the 6502's introduction, MOS Technology was purchased outright by Commodore International, who continued to sell the microprocessor and licenses to other manufacturers. In the early days of the 6502, it was second-sourced by Rockwell and Synertek, and later licensed to other companies. In its CMOS form, which was developed by the Western Design Center, the 6502 family continues to be widely used in embedded systems, with estimated production volumes in the hundreds of millions.[2]


History and use

Origins at Motorola

The 6502 was designed by many of the same engineers that had designed the Motorola 6800 microprocessor family.[3] Motorola started the 6800 microprocessor project in 1971 with Tom Bennett as the main architect. The chip layout began in late 1972, the first 6800 chips were fabricated in February 1974 and the full family was officially released in November 1974.[4][5] John Buchanan was the designer of the 6800 chip[6][7] and Rod Orgill, who later did the 6501, assisted Buchanan with circuit analyses and chip layout.[8] Bill Mensch joined Motorola in June 1971 after graduating from the University of Arizona (at age 26).[9] His first assignment was helping define the peripheral ICs for the 6800 family and later he was the principal designer of the 6820 Peripheral Interface Adapter (PIA).[10] Motorola's engineers could run analog and digital simulations on an IBM 370-165 mainframe computer.[11] Bennett hired Chuck Peddle in 1973 to do architectural support work on the 6800 family products already in progress.[12] He contributed in many areas, including the design of the 6850 ACIA (serial interface).[13]

Motorola's target customers were established electronics companies such as Hewlett-Packard, Tektronix, TRW, and Chrysler.[14] In May 1972, Motorola's engineers began visiting select customers and sharing the details of their proposed 8-bit microprocessor system with ROM, RAM, parallel and serial interfaces.[15] In early 1974, they provided engineering samples of the chips so that customers could prototype their designs. Motorola's "total product family" strategy did not focus on the price of the microprocessor, but on reducing the customer's total design cost. They offered development software on a timeshare computer, the "EXORciser" debugging system, onsite training and field application engineer support.[16][17] Both Intel and Motorola had initially announced a $360 price for a single microprocessor.[18][19] The actual price for production quantities was much less. Motorola offered a design kit containing the 6800 with six support chips for $300.[20]

Peddle, who would accompany the sales people on customer visits, found that customers were put off by the high cost of the microprocessor chips. To lower the price, the IC chip size would have to shrink so that more chips could be produced on each silicon wafer. This could be done by removing inessential features in the 6800 and using a newer fabrication technology, "depletion-mode" MOS transistors. Peddle and other team members started outlining the design of an improved feature, reduced size microprocessor. At that time, Motorola's new semiconductor fabrication facility in Austin, Texas, was having difficulty producing MOS chips, and mid-1974 was the beginning of a year-long recession in the semiconductor industry. Also, many of the Mesa, Arizona, employees were displeased with the upcoming relocation to Austin.[21]

Motorola's Semiconductor Products Division management was overwhelmed with problems and showed no interest in Peddle's low-cost microprocessor proposal. Chuck Peddle was frustrated with Motorola's management for missing this new opportunity. In a November 1975 interview, Motorola's Chairman, Robert Galvin, agreed. He said, "We did not choose the right leaders in the Semiconductor Products division." The division was reorganized and the management replaced. New group vice-president John Welty said, "The semiconductor sales organization lost its sensitivity to customer needs and couldn't make speedy decisions."[22]

Peddle began looking outside Motorola for a source of funding for this new project and found a small semiconductor company in Pennsylvania. In August 1974, Chuck Peddle, Bill Mensch, Rod Orgill, Harry Bawcom, Ray Hirt, Terry Holdt and Wil Mathys left Motorola to join MOS Technology. (Mike James joined later.) Of the seventeen chip designers and layout people on the 6800 team, seven left. There were 30 to 40 other marketers, application engineers and system engineers on the 6800 team.[23] That December, Gary Daniels transferred into the 6800 microprocessor group. Tom Bennett did not want to leave the Phoenix area so Daniels took over the microprocessor development in Austin. His first project was a "depletion-mode" version of the 6800; this cut the chip area nearly in half and doubled the speed. The faster parts were available in July 1976.[24] This was followed by the 6802 which added 128 bytes of RAM and an on-chip clock oscillator circuit.[25]

Moving to MOS Technology

MOS Technology was formed in 1969 by three executives from General Instrument, Mort Jaffe, Don McLaughlin, and John Paivinen, to produce metal-oxide-semiconductor (MOS) integrated circuits. Allen-Bradley, a supplier of electronic components and industrial controls, acquired a majority interest in 1970.[26] The company designed and fabricated custom ICs for customers and had developed a line of calculator chips.[27]

On August 19, 1974, the former Motorola employees moved into MOS Technology's headquarters at Valley Forge, Pennsylvania. The goal was to design and produce a low cost microprocessor for embedded applications and to target as wide as possible a customer base. This would be possible only if the microprocessor was low cost—and in the semiconductor business, chip size determined cost. The size goal required n-channel "depletion-load" MOS transistors, a more advanced process than MOS Technology's calculator chips used. John Paivinen was able to have the fabrication process ready by June 1975.[28] Chuck Peddle, Rod Orgill, and Wil Mathys designed the initial architecture of the new processors. There would be two microprocessors: the 6501 would plug into the same socket as the Motorola 6800, while the 6502 would work with 6800 family peripherals and have an on-chip clock oscillator. These processors would not run 6800 software because they had a different instruction set, different registers, and mostly different addressing modes.[29] A September 1975 article in EDN magazine gives this summary of the design:

  The MOS Technology 650X family represents a conscious attempt of eight former Motorola employees who worked on the development of the 6800 system to put out a part that would replace and outperform the 6800, yet undersell it. With the benefit of hindsight gained on the 6800 project, the MOS Technology team headed by Chuck Peddle, made the following architectural changes in the Motorola CPU…[30]

The second "B" accumulator was omitted. The 16-bit 6800 index register with an 8-bit offset in the instruction was replaced with two 8-bit index registers with an 8-bit or 16-bit offset. Three-state control was eliminated from the address bus outputs. A clock generator was included on the chip. The address bus was always active so the VMA (valid-memory address) output was eliminated. An "8080-type" RDY signal for single-cycle stepping was added.

The chip high level design had to be turned into drawings of transistors and interconnects. At MOS Technology, the "layout" was a very manual process done with color pencils and vellum paper. The layout consisted of thousands of polygon shapes on six different drawings; one for each layer of the semiconductor fabrication process. Rod Orgill was responsible for the 6501 design; he had assisted John Buchanan at Motorola on the 6800. Bill Mensch did the 6502; he was the designer of the 6820 Peripheral Interface Adapter (PIA) at Motorola. Harry Bawcom, Mike James and Sydney-Anne Holt helped with the layout.

The size goal for the 6502 chip was 153 x 168 mils (3.9 x 4.3 mm) or an area of 16.6 mm².[31] At that time the technical literature would state the length and width of each chip in "mils" (0.001 inch). A smaller chip area means more chips per silicon wafer and greater yield as defects are generally randomly but uniformly scattered across the wafer area. So the more chips per wafer, the smaller the ratio of defective chips to total wafer chips. The original 6800 chips were intended to be 180 x 180 mils but layout was completed at 212 x 212 mils (5.4 x 5.4 mm) or an area of 29.0 mm².[32] The first 6502 chips were 168 x 183 mils (4.3 x 4.7 mm) or an area of 19.8 mm². The Rotate Right instruction (ROR) did not work in the first silicon, so the instruction was temporarily omitted from the published documents, but the next iteration of the design shrank the chip and fixed the Rotate Right instruction, which was then included in revised documentation.[33]

Introducing the 6501 and 6502

MOS Technology's microprocessor introduction was quite different from the traditional months-long product launch. The first run of a new integrated circuit is normally used for internal testing and shared with select customers as "engineering samples". These chips often have a minor design defect or two that will be corrected before production begins. Chuck Peddle's goal was to sell the first run 6501 and 6502 chips to the attendees at the Wescon trade show in San Francisco beginning on September 16, 1975. Peddle was a very effective spokesman and the MOS Technology microprocessors were extensively covered in the trade press. One of the earliest was a full-page story on the MCS6501 and MCS6502 microprocessors in the July 24, 1975 issue of _Electronics_ magazine.[34] Stories also ran in _EE Times_ (August 24, 1975),[35] _EDN_ (September 20, 1975), _Electronic News_ (November 3, 1975), _Byte_ (November 1975)[36] and _Microcomputer Digest_ (November 1975).[37] Advertisements for the 6501 appeared in several publications the first week of August 1975. The 6501 would be for sale at Wescon for $20 each.[38] In September 1975, the advertisements included both the 6501 and the 6502 microprocessors. The 6502 would cost only $25.[39]

When MOS Technology arrived at Wescon, they found that exhibitors could not sell anything on the show floor. They rented the MacArthur Suite at the St. Francis Hotel and directed customers there to purchase the processors. At the suite, the processors were stored in large jars to imply that the chips were in production and readily available. The customers did not know the bottom half of each jar contained non-functional chips.[40] The chips were $20 and $25 while the documentation package was an additional $10. Users were encouraged to make copies of the documents, an inexpensive way for MOS Technology to distribute product information. The processors were supposed to have 56 instructions, but the Rotate Right (ROR) instruction did not work correctly on these chips, so the preliminary data sheets listed just 55 instructions. The reviews in _Byte_ and _EDN_ noted the lack of the ROR instruction. The next revision of the layout fixed this problem and the May 1976 datasheet listed 56 instructions. Peddle wanted every interested engineer and hobbyist to have access to the chips and documentation; other semiconductor companies only wanted to deal with "serious" customers. For example, Signetics was introducing the 2650 microprocessor and its advertisements asked readers to write for information on their company letterhead.[41]

  Pin   6800                   6501                   6502
  ----- ---------------------- ---------------------- -------------------
  2     Halt                   Ready                  Ready
  3     ∅1 (in)                ∅1 (in)                ∅1 (out)
  5     Valid Memory Address   Valid Memory Address   N.C.
  7     Bus Available          Bus Available          SYNC
  36    Data Bus Enable        Data Bus Enable        N.C.
  37    ∅2 (in)                ∅2 (in)                ∅0 (in)
  38    N.C.                   N.C.                   Set Overflow Flag
  39    Three-State Control    N.C.                   ∅2 (out)

  : Pinout differences

Motorola lawsuit

version.]] The 6501/6502 introduction in print and at Wescon was an enormous success. The downside was that the extensive press coverage got Motorola's attention. In October 1975, Motorola reduced the price of a single 6800 microprocessor from $175 to $69. The $300 system design kit was reduced to $150 and it now came with a printed circuit board.[42] On November 3, 1975, Motorola sought an injunction in Federal Court to stop MOS Technology from making and selling microprocessor products. They also filed a lawsuit claiming patent infringement and misappropriation of trade secrets. Motorola claimed that seven former employees joined MOS Technology to create that company's microprocessor products.[43]

Motorola was a billion-dollar company with a plausible case and lawyers. On October 30, 1974, Motorola had filed numerous patent applications on the microprocessor family and was granted twenty-five patents. The first was in June 1976 and the second was to Bill Mensch on July 6, 1976, for the 6820 PIA chip layout. These patents covered the 6800 bus and how the peripheral chips interfaced with the microprocessor.[44] Motorola began making transistors in 1950 and had a portfolio of semiconductor patents. Allen-Bradley decided not to fight this case and sold their interest in MOS Technology back to the founders. Four of the former Motorola engineers were named in the suit: Chuck Peddle, Will Mathys, Bill Mensch and Rod Orgill. All were named inventors in the 6800 patent applications. During the discovery process, Motorola found that one engineer, Mike James, had ignored Peddle's instructions and brought his 6800 design documents to MOS Technology.[45] In March 1976, the now independent MOS Technology was running out of money and had to settle the case. They agreed to drop the 6501 processor, pay Motorola $200,000 and return the documents that Motorola contended were confidential. Both companies agreed to cross-license microprocessor patents.[46] That May, Motorola dropped the price of a single 6800 microprocessor to $35. By November, Commodore had acquired MOS Technology.[47][48]

Computers and games

With legal troubles behind them, MOS was still left with the problem of getting developers to try their processor, prompting Chuck Peddle to design the MDT-650 ("microcomputer development terminal") single-board computer. Another group inside the company designed the KIM-1, which was sold semi-complete and could be turned into a usable system with the addition of a 3rd party computer terminal and compact cassette drive. Much to their amazement, the KIM-1 sold well to hobbyists and tinkerers, as well as to the engineers to which it had been targeted. The related Rockwell AIM 65 control/training/development system also did well. The software in the AIM 65 was based on that in the MDT. Another roughly similar product was the Synertek SYM-1.

One of the first "public" uses for the design was the Apple I microcomputer, introduced in 1976. The 6502 was next used in the Commodore PET and the Apple II,[49] both released in 1977. It was later used in the Atari 8-bit family and Acorn Atom home computers, the BBC Micro,[50] Commodore VIC-20 and other designs both for home computers and business, such as Ohio Scientific and Oric. The 6510, a direct successor of the 6502 with a digital I/O port and a tri-state address bus, was the CPU utilized in the best-selling[51][52] Commodore 64 home computer. Commodore's floppy disk drive, the 1541, had a processor of its own—it too was a 6502.

Another important use of the 6500 family was in video games. The first to make use of the processor design was the Atari VCS, later renamed the Atari 2600. The VCS used an offshoot of the 6502 called the 6507, which had fewer pins and, as a result, could address only 8 KB of memory. Millions of the Atari consoles would be sold, each with a MOS processor. Another significant use was by the Nintendo Entertainment System and Famicom. The 6502 used in the NES was a second source version by Ricoh, a partial system-on-a-chip, that lacked the binary-coded decimal mode but added 22 memory-mapped registers and on-die hardware for sound generation, joypad reading, and sprite list DMA. Called 2A03 in NTSC consoles and 2A07 in PAL consoles (the difference being the memory divider ratio and a lookup table for audio sample rates), this processor was produced exclusively for Nintendo. The Atari Lynx used a 4 MHz version of the chip, the 65SC02.

In the 1980s, a popular electronics magazine Elektor/Elektuur used the processor in its microprocessor development board Junior Computer.

File:Apple iieb.jpg|Apple IIe File:Commodore 2001 Series-IMG 0448b.jpg|Commodore PET File:BBC Micro Front Restored.jpg|BBC Micro File:Atari-2600-Console.jpg|Atari 2600 File:Atari-800-Computer-FL.jpg|Atari 800 File:Commodore-VIC-20-FL.jpg|Commodore VIC-20 File:C64c_system.jpg|Commodore 64 File:Nintendo-Famicom-Console-Set-FL.jpg|Family Computer File:OSI Challenger 4P.jpg|Ohio Scientific Challenger 4P File:Tamagotchi_0124_ubt.jpeg|Tamagotchi digital pet[53] File:Atari-Lynx-I-Handheld.jpg|Atari Lynx


Technical description

)]]

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| _MOS 6502 registers_                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
|   ------------------------ ----------------- --------------- ---- ---- ---- ---- ---- ---- ------------------- ---- ---- ---- ---- ---- ---- ------------------ |
|   ¹₅                       ¹₄                ¹₃              ¹₂   ¹₁   ¹₀   ⁰₉   ⁰₈   ⁰₇   ⁰₆                  ⁰₅   ⁰₄   ⁰₃   ⁰₂   ⁰₁   ⁰₀   _(bit position)_   |
|   MAIN REGISTERS                                                                                                                                                |
|                            A                 Accumulator                                                                                                        |
|   INDEX REGISTERS                                                                                                                                               |
|                            X                 X index                                                                                                            |
|                            Y                 Y index                                                                                                            |
|   0  0  0  0  0  0  0  1   SP                Stack Pointer                                                                                                      |
|   PROGRAM COUNTER                                                                                                                                               |
|   PC                       Program Counter                                                                                                                      |
|   STATUS REGISTER                                                                                                                                               |
|                            N                 V               -    B    D    I    Z    C    P Processor flags                                                    |
|   ------------------------ ----------------- --------------- ---- ---- ---- ---- ---- ---- ------------------- ---- ---- ---- ---- ---- ---- ------------------ |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

The 6502 is a little-endian 8-bit processor with a 16-bit address bus. The original versions were fabricated using an [54] process technology chip with an advertised die size of (), or an area of 16.6 mm².[55]

The internal logic runs at the same speed as the external clock rate, but despite the low clock speeds (typically in the neighborhood of 1 to 2 MHz), the 6502's performance was competitive with other contemporary CPUs using significantly faster clocks. This is partly due to a simple state machine implemented by combinational (clockless) logic to a greater extent than in many other designs; the two-phase clock (supplying two synchronizations per cycle) can thereby control the whole _machine_-cycle directly. Typical instructions might take half as many cycles to complete on the 6502 than contemporary designs. Like most simple CPUs of the era, the dynamic NMOS 6502 chip is not sequenced by a microcode ROM but uses a PLA (which occupied about 15% of the chip area) for instruction decoding and sequencing. As in most 8-bit microprocessors, the chip does some limited overlapping of fetching and execution.

The low clock frequency moderated the speed requirement of memory and peripherals attached to the CPU, as only about 50% of the clock cycle was available for memory access (due to the asynchronous design, this fraction varied strongly among chip versions). This was critical at a time when affordable memory had access times in the range . The original NMOS 6502 was minimalistically engineered and efficiently manufactured, and therefore cheap—an important factor in getting design wins in the very price-sensitive game-console and home-computer markets.

Registers

Like its precursor, the 6800, the 6502 has very few registers. The 6502's registers include one 8-bit accumulator register (A), two 8-bit index registers (X and Y), 7 processor status flag bits (P), an 8-bit stack pointer (S), and a 16-bit program counter (PC). This compares to a typical design of the same era, the Z80, which has eight general-purpose 8-bit registers, which can be combined into four 16-bit ones.

In order to make up somewhat for the lack of registers, the 6502 included a _zero-page_ addressing mode that uses one address byte in the instruction instead of the two needed to address the full 64 KB of memory. This provides fast access to the first 256 bytes of RAM by using shorter instructions. Chuck Peddle has said in interviews that the specific intention was to allow these first 256 bytes of RAM to be used like registers.

The stack address space is hardwired to memory page $01, i.e. the address range $0100–$01FF (256–511). Software access to the stack is done via four implied addressing mode instructions, whose functions are to push or pop (pull) the accumulator or the processor status register. The same stack is also used for subroutine calls via the JSR (jump to subroutine) and RTS (return from subroutine) instructions and for interrupt handling.

Addressing

The chip uses the index and stack registers effectively with several addressing modes, including a fast "direct page" or "zero page" mode, similar to that found on the PDP-8, that accesses memory locations from addresses 0 to 255 with a single 8-bit address (saving the cycle normally required to fetch the high-order byte of the address)—code for the 6502 uses the zero page much as code for other processors would use registers. On some 6502-based microcomputers with an operating system, the OS uses most of zero page, leaving only a handful of locations for the user.

Addressing modes also include _implied_ (1-byte instructions); _absolute_ (3 bytes); _indexed absolute_ (3 bytes); _indexed zero-page_ (2 bytes); _relative_ (2 bytes); _accumulator_ (1); _indirect,x_ and _indirect,y_ (2); and _immediate_ (2). Absolute mode is a general-purpose mode. Branch instructions use a signed 8-bit offset relative to the instruction after the branch; the numerical range −128..127 therefore translates to 128 bytes backward and 127 bytes forward from the instruction following the branch (which is 126 bytes backward and 129 bytes forward from the start of the branch instruction). Accumulator mode uses the accumulator as an effective address and does not need any operand data. Immediate mode uses an 8-bit literal operand.

Indirect addressing

The indirect modes are useful for array processing and other looping. With the 5/6 cycle "(indirect),y" mode, the 8-bit Y register is added to a 16-bit base address read from zero page, which is located by a single byte following the opcode. The Y register is therefore an _index_ register in the sense that it is used to hold an actual _index_ (as opposed to the X register in the 6800, where a base address was directly stored and to which an immediate offset could be added). Incrementing the index register to walk the array byte-wise takes only two additional cycles. With the less frequently used "(indirect,x)" mode the effective address for the operation is found at the zero page address formed by adding the second byte of the instruction to the contents of the X register. Using the indexed modes, the zero page effectively acts as a set of up to 128 additional (though very slow) address registers.

The 6502 is capable of performing addition and subtraction in binary or binary-coded decimal. Placing the CPU into BCD mode with the SED (set D flag) instruction results in decimal arithmetic, in which $99 + $01 would result in $00 and the carry (C) flag being set. In binary mode (CLD, clear D flag), the same operation would result in $9A and the carry flag being cleared. Other than Atari BASIC, BCD mode was seldom used in home-computer applications.

See the Hello world! article for a simple but characteristic example of 6502 assembly language.

Instructions and opcodes

6502 instruction operation codes (_opcodes_) are eight-bits long and have the general form aaabbbcc, where aaa and cc define the opcode, and bbb defines the addressing mode.[56]

For instance, consider the ORA instruction, which performs a bitwise OR on the bits in the accumulator with another value. The instruction opcode is of the form 000bbb01, where bbb may be 010 for an immediate mode value (constant), 001 for zero page fixed address, 011 for an absolute address, and so on.[57]

This pattern is not absolute and there are a number of exceptions. However, where it does apply it allows one to easily deconstruct opcode values back to assembler mnemonics for the majority of instructions, handling the edge cases with special-purpose code.[58]

Of the 256 possible opcodes available using an 8-bit pattern, the original 6502 uses 151 of them, organized into 56 instructions with (possibly) multiple addressing modes. Depending on the instruction and addressing mode, the opcode may require zero, one or two additional bytes for operands. Hence 6502 machine instructions vary in length from one to three bytes.[59][60] The operand is stored in the 6502's customary little-endian format.

The 65C816, the 16-bit CMOS version of the 6502, also supports 24-bit addressing, which results in instructions being assembled with three-byte operands, also arranged in little-endian format.

The remaining 105 opcodes are undefined. In the original design, instructions where the low-order 4-bits (_nibble_) were 3, 7, B or F were not used, providing room for future expansion. Likewise, the $2xxx column had only a single entry, LDX #_constant_. The remaining 25 empty slots were distributed. Some of the empty slots were used in the 65C02 to provide both new instructions as well as variations on existing ones with new addressing modes. The $Fxxx instructions were initially left free to allow 3rd party vendors to add their own instructions, but later versions of the 65C02 standardized a set of bit fiddling instructions developed by Rockwell Semiconductor.

Assembly language

A 6502 assembly language statement consists of a three-character instruction mnemonic, followed by any operands. Instructions that do not take a separate operand but target a single register based on the addressing mode combine the target register in the instruction mnemonic, so the assembler uses INX as opposed to INC X to increment the X register.

Instruction table

  Opcode matrix for the 6502 instruction set
  -------------------------------------------------------------------------------------------------------------------------
  Addressing modes: {{font color
  High nibble
  0
  0
  1
  2
  3
  4
  5
  6
  7
  8
  9
  A
  B
  C
  D
  E
  F
  Blank opcodes (e.g., F2) and all opcodes whose low nibbles are 3, 7, B and F are undefined in the 6502 instruction set.


Detailed behavior

The processor's non-maskable interrupt (NMI) input is edge sensitive, which means that the interrupt is triggered by the falling edge of the signal rather than its level. The implication of this feature is that a wired-OR interrupt circuit is not readily supported. However, this also prevents nested NMI interrupts from occurring until the hardware makes the NMI input inactive again, often under control of the NMI interrupt handler.

The simultaneous assertion of the NMI and IRQ (maskable) hardware interrupt lines causes IRQ to be ignored. However, if the IRQ line remains asserted after the servicing of the NMI, the processor will immediately respond to IRQ, as IRQ is level sensitive. Thus a sort of built-in interrupt priority was established in the 6502 design.

The "Break" flag of the processor is very different from the other flag bits. It has no flag setting, resetting, or testing instructions of its own, and is not affected by the PHP and PLP instructions. It exists only on the stack, where BRK and PHP always write a 1, while IRQ and NMI always write a 0.

The "SO" input pin, when asserted, will set the processor's overflow status bit (deasserting it does not clear the overflow bit, however). This can be used by a high-speed polling device driver, which can poll the hardware once in only three cycles by using a Branch-on-oVerflow-Clear (BVC) instruction that branches to itself. For example, the Commodore 1541 and other Commodore floppy disk drives use this technique to detect without delay whether the serializer is ready to accept or provide another byte of disk data. Obviously great care must be used in the device driver and the associated system design, as spurious assertion of the overflow bit could ruin arithmetic processing.


Variations and derivatives

There were several variants of the NMOS 6502:

-   The MOS Technology 6503 had reduced memory addressing capability (4 KB) and no RDY input, in a 28-pin DIP package (with the phase 1 (OUT), SYNC, redundant Vss, and SO pins of the 6502 also omitted).[61]
-   The MOS Technology 6504 had reduced memory addressing capability (8 KB), no NMI, and no RDY input, in a 28-pin DIP package (with the phase 1 (OUT), SYNC, redundant Vss, and SO pins of the 6502 also omitted).[62]
-   The MOS Technology 6505 had reduced memory addressing capability (4 KB) and no NMI, in a 28-pin DIP package (with the phase 1 (OUT), SYNC, redundant Vss, and SO pins of the 6502 also omitted).[63]
-   The MOS Technology 6506 had reduced memory addressing capability (4 KB), no NMI, and no RDY input, but all 3 clock pins of the 6502 (i.e. a 2-phase output clock), in a 28-pin DIP package (with the SYNC, redundant Vss, and SO pins of the 6502 also omitted).[64]
-   The MOS Technology 6507 had reduced memory addressing capability (8 KB) and no interrupts, in a 28-pin DIP package (with the phase 1 (OUT), SYNC, redundant Vss, and SO pins of the 6502 also omitted).[65] This chip was used in the Atari 2600 video game system.
-   The MOS Technology 6508 has a built-in 8-bit input/output port and 256 bytes of internal static RAM.
-   The MOS Technology 6509 could address up to 1 MB of RAM as 16 banks of 64 kB and was used in the Commodore CBM-II series.
-   The MOS Technology 6510 has a built-in 6-bit programmable input/output port and was used in the Commodore 64.
-   The MOS Technology 6512 was a 6502 with a 2-phase clock input for an external clock oscillator, instead of an on-board clock oscillator.[66]
-   The MOS Technology 6513 was a 6503 with a 2-phase clock input like the 6512.[67]
-   The MOS Technology 6514 was a 6504 with a 2-phase clock input like the 6512.[68]
-   The MOS Technology 6515 was a 6505 with a 2-phase clock input like the 6512.[69]
-   The Ricoh 2A03 was a 6502 variant including an audio processing unit and lacking the BCD mode, used in the Nintendo Entertainment System.
-   The 6502A was a 1.5 MHz chip featured in Asteroids Deluxe.
-   The 6502B was a version of the 6502. Stable of running at a maximum speed of 2 MHz instead of 1. The B was used in the Apple III, BBC Micro and, clocked at 1.79 MHz, early Atari 8-bit computers
-   The “official” 6502C was a version the original 6502 able to run at up to 4 MHz.
-   The Sally, also referred to the 6502C, was a customized 6502 chip used in later Atari 8-bit computers. It has a HALT signal on pin 35 and a second R/W on pin 36 (these pin are not connected (N/C) on a standard 6502s). Pulling HALT low latches the clock, pausing the processor. This was used to sync the CPU with the video circuitry.
-   The 65C02 is a CMOS version of the NMOS 6502 that was designed by Bill Mensch of the Western Design Center, featuring reduced power consumption, support for much higher clock speeds, new instructions, new addressing modes for some existing instructions, and correction of NMOS errata, such as the JMP ($xxFF) bug.
-   CSG 65CE02 was a CMOS derivative developed by the Commodore Semiconductor Group (CSG), formerly MOS Technology.
-   The Rockwell R65F11 (introduced in 1983) and the later R65F12 are enhanced versions of the 6502-based processor, also including on-chip zero-page RAM, on-chip Forth kernel ROM, a UART, etc.

Randy M. Dumse. "The R65F11 and F68K Single-Chip Forth Computers". 1 2 1984. [70][71][72]

-   The GTE G65SC102 is software compatible with the 65C02, but has a slightly different pinout and oscillator circuit. The BBC Master Turbo included the 4 MHz version of this CPU on a coprocessor card, which could also be bought separately and added to the Master 128.
-   The Rockwell R65C00, R65C21, and R65C29 featured two enhanced CMOS 6502s in a single chip, and the R65C00 and R65C21 additionally contained 2 kB of mask-programmable ROM.[73][74]

6512, 6513, 6514, & 6515

The MOS Technology 6512, 6513, 6514, and 6515 each rely on an external clock, instead of using an internal clock generator like the 650x (e.g. 6502). This was used to advantage in some designs where the clocks could be run asymmetrically, increasing overall CPU performance.

The 6512 was used in the BBC Micro B+64.

16-bit derivatives

The Western Design Center designed and currently produces the W65C816S processor, a 16-bit, static-core successor to the 65C02, with greatly enhanced features. The W65C816S is a newer variant of the 65C816, which was the core of the Apple IIGS computer and was the basis of the Ricoh 5A22 processor that powered the popular Super Nintendo Entertainment System. The W65C816S incorporates minor improvements over the 65C816 that make the newer chip not an exact hardware-compatible replacement for the earlier one. Currently available through electronics distributors as of November 2017, the W65C816S is rated for 14 MHz operation.

The Western Design Center also designed and produced the 65C802, which was a 65C816 core with a 64 KB address space in a 65(C)02 pin-compatible package. The 65C802 could be retrofitted to a 6502 board and would function as a 65C02 on power-up, operating in "emulation mode." As with the 65C816, a two-instruction sequence would switch the 65C802 to "native mode" operation, exposing its 16 bit accumulator and index registers, as well as other 65C816 enhanced features. The 65C802 was not widely used: new designs almost always were built around the 65C816, resulting in 65C802 production being discontinued.


Example code

The following 6502 assembly language source code is for a subroutine named TOLOWER, which copies a null-terminated character string from one location to another, converting upper-case letter characters to lower-case letters. The string being copied is the "source", and the string into which the converted source is stored is the "destination".

+-----------------+-----------------------------------------------------------------------------+
|                 |     ; TOLOWER:                                                              |
|     0080        |     ;                                                                       |
|                 |     ;   Convert a null-terminated character string to all lower case.       |
|     0080  00 04 |     ;   Maximum string length is 255 characters, plus the null term-        |
|     0082  00 05 |     ;   inator.                                                             |
|                 |     ;                                                                       |
|     0600        |     ; Parameters:                                                           |
|                 |     ;                                                                       |
|     0600  A0 00 |     ;   SRC - Source string address                                         |
|                 |     ;   DST - Destination string address                                    |
|     0602  B1 80 |     ;                                                                       |
|     0604  F0 11 |             ORG $0080                                                       |
|                 |     ;                                                                       |
|     0606  C9 41 |     SRC     .WORD $0400     ;source string pointer ($40)                    |
|     0608  90 06 |     DST     .WORD $0500     ;destination string pointer ($42)               |
|                 |     ;                                                                       |
|     060A  C9 5B |             ORG $0600       ;execution start address                        |
|     060C  B0 02 |     ;                                                                       |
|                 |     TOLOWER LDY #$00        ;starting index                                 |
|     060E  09 20 |     ;                                                                       |
|                 |     LOOP    LDA (SRC),Y     ;get from source string                         |
|     0610  91 82 |             BEQ DONE        ;end of string                                  |
|     0612  C8    |     ;                                                                       |
|     0613  D0 ED |             CMP #'A'        ;if lower than UC alphabet...                   |
|                 |             BCC SKIP        ;copy unchanged                                 |
|     0615  38    |     ;                                                                       |
|     0616  60    |             CMP #'Z'+1      ;if greater than UC alphabet...                 |
|                 |             BCS SKIP        ;copy unchanged                                 |
|     0617  91 82 |     ;                                                                       |
|     0618  18    |             ORA #%00100000  ;convert to lower case                          |
|     0619  60    |     ;                                                                       |
|                 |     SKIP    STA (DST),Y     ;store to destination string                    |
|     061A        |             INY             ;bump index                                     |
|                 |             BNE LOOP        ;next character                                 |
|                 |     ;                                                                       |
|                 |     ; NOTE: If .Y wraps the destination string will be left in an undefined |
|                 |     ;  state.  We set carry to indicate this to the calling function.       |
|                 |     ;                                                                       |
|                 |             SEC             ;report string too long error &...              |
|                 |             RTS             ;return to caller                               |
|                 |     ;                                                                       |
|                 |     DONE    STA (DST),Y     ;terminate destination string                   |
|                 |             CLC             ;report conversion completed &...               |
|                 |             RTS             ;return to caller                               |
|                 |     ;                                                                       |
|                 |             .END                                                            |
+-----------------+-----------------------------------------------------------------------------+


Bugs and quirks

The 6502 had several bugs and quirks, which had to be accounted for when programming it.

-   The earliest revisions of the 6502, such as those shipped with some KIM-1 computers, had a severe bug in the ROR (rotate right memory or accumulator) instruction. The operation of ROR in these chips is effectively an ASL (arithmetic shift left) instruction that does not affect the carry bit in the status register. MOS left the instruction out of chip documentation entirely because of the defect, promising that ROR would appear on 6502 chips starting in 1976.[75] The vast majority of 6502 chips in existence today do not exhibit this bug.
-   The NMOS 6502 family has a variety of undocumented instructions, which vary from one chip manufacturer to another. The 6502 instruction decoding is implemented in a hardwired logic array (similar to a programmable logic array) that is only defined for 151 of the 256 available opcodes. The remaining 105 trigger strange and occasionally hard-to-predict actions, such as crashing the processor, performing two valid instructions consecutively, performing strange mixtures of two instructions, or simply doing nothing at all. Eastern House Software developed the "Trap65", a device that plugged between the processor and its socket to convert (trap) unimplemented opcodes into BRK (software interrupt) instructions. Some programmers utilized this feature to extend the 6502 instruction set by providing functionality for the unimplemented opcodes with specially written software intercepted at the BRK instruction's 0xFFFE vector.[76][77] All of the undefined opcodes have been replaced with NOP instructions in the 65C02, an enhanced CMOS version of the 6502, although with varying byte sizes and execution times. In the 65C802/65C816, all 256 opcodes perform defined operations.
-   The 6502's memory indirect jump instruction, JMP (
    ), is partly broken. If

    is hex xxFF (i.e., any word ending in FF), the processor will not jump to the address stored in xxFF and xxFF+1 as expected, but rather the one defined by xxFF and xx00 (for example, JMP ($10FF) would jump to the address stored in 10FF and 1000, instead of the one stored in 10FF and 1100). This defect continued through the entire NMOS line, but was corrected in the CMOS derivatives.

-   The NMOS 6502 indexed addressing across page boundaries will do an extra read of an invalid address. This characteristic may cause random issues by accessing hardware that acts on a read, such as clearing timer or IRQ flags, sending an I/O handshake, etc. This defect continued through the entire NMOS line, but was corrected in the CMOS derivatives, in which the processor does an extra read of the last instruction byte.
-   The 6502 read-modify-write instructions perform one read and two write cycles. First, the unmodified data that was read is written back, and then the modified data is written. This characteristic may cause issues by twice accessing hardware that acts on a write. This anomaly continued through the entire NMOS line, but was fixed in the CMOS derivatives, in which the processor will do two reads and one write cycle. Defensive programming practice will generally avoid this problem by not executing read/modify/write instructions on hardware registers.
-   The N (result negative), V (sign bit overflow) and Z (result zero) status flags are generally meaningless when performing arithmetic operations while the processor is in BCD mode, as these flags reflect the binary, not BCD, result. This limitation was removed in the CMOS derivatives. Therefore, this feature may be used to distinguish a CMOS processor from an NMOS version.[78]
-   If the processor happens to be in BCD mode when a hardware interrupt occurs, it will not revert to binary mode. This characteristic could result in obscure bugs in the interrupt service routine if it fails to clear BCD mode before performing any arithmetic operations. For example, the Commodore 64's KERNAL did not correctly handle this processor characteristic, requiring that IRQs be disabled or re-vectored during BCD math operations. This issue was addressed in the CMOS derivatives as well.
-   The 6502 instruction set includes BRK (opcode $00), which is technically a software interrupt (similar in spirit to the SWI mnemonic of the Motorola 6800 and ARM processors). BRK is most often used to interrupt program execution and start a machine language monitor for testing and debugging during software development. BRK could also be used to route program execution using a simple jump table (analogous to the manner in which the Intel 8086 and derivatives handle software interrupts by number). Unfortunately, if a hardware interrupt occurs when the processor is fetching a BRK instruction, the NMOS version of the processor will fail to execute BRK and instead proceed as if only a hardware interrupt had occurred. This fault was corrected in the CMOS implementation of the processor.
-   When executing JSR (jump to subroutine) and RTS (return from subroutine) instructions, the return address pushed to the stack by JSR is that of the last byte of the JSR operand (that is, the most significant byte of the subroutine address), rather than the address of the following instruction. This is because the actual copy (from program counter to stack and then conversely) takes place before the automatic increment of the program counter that occurs at the end of every instruction.[79] This characteristic would go unnoticed unless the code examined the return address in order to retrieve parameters in the code stream (a 6502 programming idiom documented in the _ProDOS 8 Technical Reference Manual_). It remains a characteristic of 6502 derivatives to this day.


See also

-   List of 6502 assemblers
-   MOS Technology 6502-based home computers
-   Interrupts in 65xx processors
-   Transistor count
-   Apple II accelerators


Works cited

-   -   "Motorola 6800 Oral History Panel" Thomas H. Bennett, John Ekiss, William (Bill) Lattin, Jeff Lavell. Computer History Museum, March 28, 2008, moderator: David Laws.
-   Interview with William Mensch Stanford and the Silicon Valley Project, October 9, 1995. Transcript


References


Further reading

Datasheets and manuals

-   _6500 Series Datasheet_; MOS Technology; 12 pages; 1976.
-   _6500 Series Hardware Manual_; 2nd Ed; MOS Technology; 182 pages; 1976.
-   _6500 Series Programming Manual_; 2nd Ed; MOS Technology; 262 pages; 1976.

Books

-   _6502 Applications Book_; 1st Ed; Rodnay Zaks; Sybex; 281 pages; 1979; . (archive)
-   _6502 Assembly Language Programming_; 2nd Ed; Lance Leventhal; Osborne/McGraw-Hill; 650 pages; 1986; . (archive)
-   _6502 Assembly Language Subroutines_; 1st Ed; Lance Leventhal and Winthrop Saville; Osborne/McGraw-Hill; 550 pages; 1982; . (archive)
-   _6502 Games_; 1st Ed; Rodnay Zaks; Sybex; 292 pages; 1980; . (archive)
-   _6502 User's Manual_; 1st Ed; Joseph Carr; Reston; 288 pages; 1984; . (archive)
-   _Advanced 6502 Programming_; 1st Ed; Rodnay Zaks; John Wiley & Sons; 292 pages; 1982; . (archive)
-   _Machine Language For Beginners - Personal Computer Machine Language Programming For Atari, VIC, Apple, C64, and PET Computers_; 1st Ed; Richard Mansfield; Compute! Publications; 350 pages; 1983; . (archive)
-   _Programming the 6502_; 4th Ed; Rodnay Zaks; Sybex; 408 pages; 1983; . (archive)
-   _Programming the 65816 - including the 6502, 65C02, 65802_; 1st Ed; David Eyes and Ron Lichty; Prentice Hall; 636 pages; 1986; . (archive)

Reference cards

-   _6502 Microprocessor Instant Reference Card_; James Lewis; Micro Logic; 2 pages; 1980. (archive)


External links

-   6502.org - the 6502 microprocessor resource – repository
-   The Rise of MOS Technology & The 6502 - Commodore archive
-   650x information – Concise description, photos of MOS and second source chips; at cpu-collection.de
-   mdfs.net – 6502 instruction set
-   -

Simulators / Emulators

-   Online 6502 compatible assembler and emulator, written in JavaScript
-   List of 6502 software emulators – Zophar's Domain
-   6502 simulator for Windows – Atari Gaming Headquarters
-   Visual Transistor-level Simulation of 6502 CPU

Boards

-   Grant's 7/8-chip 6502 board
-   6502 microprocessor training board
-   Build your own KIM-1 training board - see KIM-1
-   6502 home computer

FPGA

-   cpu6502_tc 6502 CPU core - VHDL source code - OpenCores
-   ag_6502 6502 CPU core - Verilog source code - OpenCores
-   M65C02 65C02 CPU core - Verilog source code - OpenCores

Category:MOS microprocessors Category:65xx microprocessors Category:Computer-related introductions in 1975

[1]  William Mensch and the moderator both pronounce the 6502 microprocessor as _"sixty-five-oh-two"_.

[2]

[3]

[4]

[5] Motorola 6800 Oral History (2008), p. 9

[6] Buchanan, John K., "MOS DC Voltage booster circuit", US Patent 3942047, issued March 2, 1976.

[7] Buchanan, John K., "Chip topography for MOS integrated circuitry microprocessor chip", US Patent 3987418, issued October 19, 1976.

[8] Motorola 6800 Oral History (2008), p. 8

[9] Mensch Oral History (1995) Mensch earned an Associate degree from Temple University in 1966 and then worked at Philco Ford as an electronics technician before attending the University of Arizona.

[10] Mensch, William D., "Chip topography for MOS interface circuit", US Patent 3968478, issued July 6, 1976.

[11]  All of the authors were with Motorola's Semiconductor Products Division.

[12]  Page 30. Bennett already was at work on what became the 6800. "He hired me," Peddle says of Bennett, "to do the architectural support work for the product he'd already started." … Peddle says. "Motorola tried to kill it several times. Without Bennett, the 6800 would not have happened, and a lot of the industry would not have happened, either."

[13] Hepworth, Edward C., Rodney J. Means, Charles I. Peddle, "Asynchronous Communication Interface Adaptor", Patent 3975712, issued August 17, 1976. Note: Motorola typically listed inventors in alphabetical order.

[14]  Advertisement showing three embedded applications from TRW, HP and RUSCO.

[15] Motorola 6800 Oral History (2008), p. 89

[16]  Motorola advertisement emphasizing their complete set of peripheral chips and development tools. This shorten the customers product design cycle.

[17] Motorola 6800 Oral History (2008) p. 18

[18]  MC6800 microprocessor price was $360. The MC6850 asynchronous communications interface adaptor (ACIA) was slated for first quarter 1975 introduction.

[19]  "Shima implemented the 8080 in about a year and the new device was introduced in April 1974 for $360."

[20]  "Distributors are being stocked with the M6800 family, and the division is also offering an introductory kit that includes the family's six initial parts, plus applications and programming manuals, for $300."

[21] Bagnall (2010), p. 11. Peddle's new offer came at an opportune time for the 6800 developers. "They didn't want to go to Austin, Texas," explains Mensch.

[22]  Summary: Semiconductor Products split into two parts, integrated circuits and discrete components. Semiconductor losses for the last four quarters exceeded $30 million. The sales organization lost its sensitivity to customer needs, "delays in responding to price cuts meant that customers bought elsewhere." Technical problems plagued IC production. The troubles are "not in design, but in chip and die yields." Problems have been solved. The MC6800 microprocessor "arrived in November 1974."

[23] Motorola 6800 Oral History (2008), p. 13

[24]

[25]  Daniels, "My first assignment was to lead a small team to redesign the 6800 MPU to make it more manufacturable and so that higher speed versions could be selected."

[26] Bagnall (2010), p. 13.

[27]

[28] Bagnall (2010), p. 19 "Paivinen promised Peddle he would have the n-channel process ready. He was true to his word."

[29] Stanford University, Silicon Genesis project: videotaped oral history interview of Willam Mensch

[30] "

[31]

[32] Motorola 6800 Oral History (2008), p. 10

[33] The August 1975 datasheet had 55 instructions with no ROR, the May 1976 datasheet had the ROR and 56 instructions. :File:MCS650x Instruction Set.jpg

[34]  The article covers the 6501 and 6502 plus the 28 pin versions that would only address 4K of memory. It also covered future devices such as "a design that Peddle calls a pseudo 16".

[35]

[36]  Comparison of the 6502 and the 6800 microprocessors. Author visited MOS Technology in August 1975.

[37]

[38]

[39]

[40] Bagnall (2010), pp. 33-35

[41]

[42]  The quantity one price for the MC6800 was reduced from $175 to $69. The previous price for 50 to 99 units was $125.

[43] "Motorola said last week it would seek an immediate injunction to stop MOS Technology Inc., Norristown, Pa., from making and selling microprocessor products, including its MCS6500." (This issue was published on November 7.)

[44] Motorola was awarded the following US Patents on the 6800 microprocessor family: 3962682, 3968478, 3975712, 3979730, 3979732, 3987418, 4003028, 4004281, 4004283, 4006457, 4010448, 4016546, 4020472, 4030079, 4032896, 4037204, 4040035, 4069510, 4071887, 4086627, 4087855, 4090236, 4145751, 4218740, 4263650.

[45] Bagnall (2010), p. 53–54. "He [Mike James] had all his original work from the 6800 and hid it from Motorola…

[46]  "MOS Technology Inc. of Norristown, Pa. has agreed to withdraw its MCS6501 microprocessor from the market and to pay Motorola Inc. $200000 ..." "MOS Technology and eight former Motorola employees have given back, under court order documents that Motorola contends are confidential." "…both companies have agreed to a cross license relating to patents in the microprocessor field."

[47] Bagnall (2010), pp. 55-56

[48] " Commodore International … is buying MOS Technology (Norristown, PA). This saves the six-year-old semiconductor house from impending disaster."

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59] 6502 Instruction Set.

[60] NMOS 6502 Opcodes.

[61] 1982 MOS Technology Data Catalog (pdf obtained from bitsavers.org)

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70] Ed Schmauch. "A Computerized Corrosion Monitoring System". 1986.

[71] Lawrence P. Forsley. "Embedded systems: 1990 Rochester Forth Conference : June 12 - 16th, 1990 University of Rochester". p. 51.

[72] Rockwell. "RSC-Forth User's Manual". 1983.

[73]

[74]

[75]

[76]

[77]

[78]

[79]