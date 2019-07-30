The MOTOROLA 6809 ("_sixty-eight-oh-nine_") is an 8-bit microprocessor CPU with some 16-bit features from Motorola. It was designed by Terry Ritter and Joel Boney and introduced in 1978. It was a major advance over both its predecessor, the Motorola 6800, and the related MOS Technology 6502. Among the systems to use the 6809 are the Dragon home computers, TRS-80 Color Computer, the Vectrex home console, and early 1980s arcade machines including _Defender_, _Robotron: 2084_, _Joust_, and _Gyruss_. More modern systems that utilize a synthesized 6809 core (HDL) are the CoCo3FPGA, Matchbox CoCo, CoCoDEV and Multicomp.

Unlike the 6800 and 6502, the 6809 allowed fully position-independent code and fully reentrant code in a simple and straightforward way, without using difficult programming tricks. Along with the Intel 8086, it was one of the first microprocessors to implement a hardware multiplication instruction, and it features full 16-bit arithmetic and an especially fast interrupt system.


Description

s]] Among the significant enhancements introduced in the 6809 were the use of two 8-bit accumulators (A and B, which could be combined into a single 16-bit register, D), two 16-bit index registers (X, Y) and two 16-bit stack pointers. The index and stack registers allowed advanced addressing modes. Program counter relative addressing allowed for the easy creation of position-independent code, while a user stack pointer (U) facilitated the creation of reentrant code.

The 6809 was assembler source-compatible with the 6800, though the 6800 had 78 instructions to the 6809's 59. Some instructions were replaced by more general ones which the assembler translated into equivalent operations and some were even replaced by addressing modes. The instruction set and register complement were highly orthogonal, making the 6809 easier to program than the 6800 or 6502. Like the 6800, the 6809 included an undocumented address bus test instruction which came to be nicknamed Halt and Catch Fire (HCF).[1]

Unlike contemporary processors that often used a microcoded architecture (such as the 68000 and partly the 8086), the 6809's internal design was more similar to early simple CPU designs (and to some degree also the RISC machines that appeared in the mid 1970s and onwards). Like most 8-bit microprocessors, the 6809 implementation could in large parts be viewed as a register-transfer level (RTL) machine, using a central PLA (less combinational logic) to implement much of the instruction decoding as well as parts of the sequencing.

Just like the 6800 and 6502, the 6809 uses a two-phase clock to gate the latches. This two phase clock cycle is used as a full machine cycle in these processors. Simple instructions could therefore execute in as little as two or three such cycles, although this also means that these cycles must be pretty slow.

As a comparison, the higher resolution state machine of a CPU like the Z80 allowed clock frequencies 3-5 times as high with the same speed memory chips, which was often the limiting factor. This is because the Z80 combines two full (but short) clock cycles into a _relatively_ long memory access period compared to the clock, while the more asynchronous 6809 instead has _relatively_ short memory access times: depending on version and speed grade, approximately 40-60% of a single clock cycle was typically available for memory access in a 6800, 6502 or 6809 (see data sheets).

The 6809 had an internal two-phase clock generator (needing only an external crystal) whereas the 6809E needed an external clock generator. There were also variants such as the 68A09(E) and 68B09(E); the internal letter indicates the processor's rated clock speed.


History

of Motorola 6809]]

Core concepts

A key aspect of the 6809 design is a series of built-in features to allow position-independent code. This came about because the design team believed that future system integrators would look to off-the-shelf code in ROMs to handle common tasks. Libraries of common routines like floating point arithmetic, graphics primitives, Lempel-Ziv (LZ77 and LZ78) and so forth would be available for integrators to license, combine together along with their own code, and burned to ROM. A larger example is found in Motorola's 6809 programming manual,[2] which contains the full listing of _assist09_, a so-called monitor, a miniature operating system intended to be burned in ROM.

In this sort of "pick and place" programming enviornment, there was no way to predict where the code would end up in the ROM. Any instructions that referred to other locations in memory would normally have to be changed to reflect these changes in layout. In contrast, the 6809 allowed code to be placed anywhere in memory without modification. The 6809 design also focused on supporting reentrant code, code that can be called from various different programs concurrently without concern for coordination between them, or that can recursively call itself.[3]

The design team's prediction was, ultimately, incorrect. The market for pre-rolled ROM modules never materialized: Motorola's only released example was the MC6839 floating-point ROM. The industry as a whole solved the problem of integrating code modules from multiple separate sources by using automatic relocating linkers and loaders—which is still the solution used today—instead of using relocatable ROM modules.

However, the decisions made by the design team yielded a very powerful processor and made possible advanced operating systems like OS-9 and UniFlex, which took advantage of the position-independence, re-entrancy orientated nature of the 6809 to create multi-user multitasking operating systems.

The 6809 is sometimes considered to be the conceptual precursor of the Motorola 68000 family of processors, though this is mostly a misunderstanding: the 6809 and 68000 design projects ran partly in parallel, and the two CPUs have quite differing architectures as well as radically different implementation principles. However, there is a certain amount of design philosophy similarity (e.g., considerable orthogonality and flexible addressing modes) and also some assembly language syntax resemblance as well as opcode mnemonic similarity.[4] Notwithstanding the common elements, the 6809 is a derivative of the 6800, whereas the 68000 was a totally new design.

Versions

The Motorola 6809 was originally produced in 1 MHz, 1.5 MHz (68A09) and 2 MHz (68B09) speed ratings. Faster versions were produced later by Hitachi. With little to improve, the 6809 marks the end of the evolution of Motorola's 8-bit processors; Motorola intended that future 8-bit products would be based on an 8-bit data bus version of the 68000 (the 68008). A micro-controller version with a slightly modified instruction set, the 6811, was discontinued as late as the second decade of the 21st century.

The Hitachi 6309 was an enhanced version of the 6809 with extra registers and additional instructions, including block move, additional multiply instructions and hardware-implemented division. It was used in unofficially-upgraded Tandy Color Computer 3 computers and a version of OS-9 was written to take advantages of the 6309's extra features: NitrOS-9.


Use

The 6809 was used in Commodore's dual-CPU SuperPET computer, and, in its 68A09 incarnation, in the unique vector graphics based Vectrex home video game console with built-in screen display, and was also used in the Milton Bradley Expansion (MBX) system (an arcade console for use with the Texas Instruments TI-99/4A home computer). The 6809E was featured in the TRS-80 Color Computer, the Acorn System 2, 3 and 4 computers (as an optional alternative to their standard 6502), the Fujitsu FM-7, the Canon CX-1, the Welsh-made Dragon 32/64 home computers, and the SWTPC, Gimix, Smoke Signal Broadcasting, etc. SS-50 bus bus systems, in addition to several of Motorola's own EXORmacs and EXORset development systems. In France, Thomson micro-informatique produced a series of micro-computers based on the 6809E (TO7, TO7/70, TO8, TO8D, TO9, TO9Plus, MO5, MO6, MO5E and MO5NR).

In addition to home computers and game consoles, the 6809 was also used in a number of arcade games released during the early to mid-1980s. Williams Electronics was an especially prolific user of the processor, which was deployed in arcade hits such as _Defender_, _Joust_, _Sinistar_, and _Robotron: 2084_. The 6809 CPU formed the core of the successful Williams Pinball Controller. The KONAMI-1 was a modified 6809 used by Konami in various arcade games such as _Roc'n Rope_, _Gyruss_, and _The Simpsons_.[5]

The 6809 CPU was also used in traffic signal controllers made in the 1980s by several different manufacturers.[6]

Software development company Microware developed the original OS-9 operating system (not to be confused with the more recent Mac OS 9) for the 6809, later porting it to the 68000 and i386 series of microprocessors. Some years later, enthusiasts developed the NitrOS9 operating system based upon the original Microware OS9.

Series II of the Fairlight CMI (computer musical instrument) used dual 6809 CPUs and OS9, and also used one 6809 CPU per voice card. The 6809 was often employed in music synthesizers from other manufacturers such as Oberheim (Xpander, Matrix 6/12/1000), PPG (Wave 2/2.2/2.3, Waveterm A), and Ensoniq (Mirage sampler, SDP-1, ESQ1, SQ80). The latter used the 6809E as their main CPU. The (E) version was used in order to synchronize the microprocessor's clock to the sound chip (Ensoniq 5503 DOC) in those machines; in the ESQ1 and SQ80 the 68B09E was used, requiring a dedicated arbiter logic in order to ensure 1 MHz bus timing when accessing the DOC chip.

Hitachi produced its own 6809-based machines, the MB6890 and later the S1. These were primarily for the Japanese market, but some were exported to and sold in Australia. There the MB6890 was dubbed the "Peach", probably in ironic reference to the popularity of the Apple II. The S1 was notable in that it contained paging hardware extending the 6809's native 64 kilobyte (64×2¹⁰ byte) addressing range to a full 1 mebibyte (1×2²⁰ byte) in 4 KB pages. It was similar in this to machines produced by SWTPC, Gimix, and several other suppliers. TSC produced a Unix-like operating system uniFlex which ran only on such machines. OS-9 Level II, also took advantage of such memory management facilities. Most other computers of the time with more than 64 KB of memory addressing were limited to bank switching where much if not all the 64 KB was simply swapped for another section of memory, although in the case of the 6809, Motorola offered their own MC6829 MMU design mapping 2 mebibytes (2×2²⁰ byte) in 2 KB pages.[7]

The very first Macintosh prototype, wire-wrapped by Burrell Smith, contained a 6809.[8]

The 6809 was used in the mid-1980s through the early 2000s in Motorola SMARTNET and SMARTZONE Trunked Central Controllers (so dubbed the "6809 Controller"). These controllers were used as the central processors in many of Motorola's trunked two-way radio communications systems.

Australian developer John Kent has synthesized the Motorola 6809 CPU in hardware description language (HDL). This has made possible the use of the 6809 core at much higher clock speeds than were available with the original 6809. Gary Becker's CoCo3FPGA runs the Kent 6809 core at 25 MHz. Roger Taylor's Matchbox CoCo runs at 7.16 MHz. Dave Philipsen's CoCoDEV runs at 25 MHz.


Legacy

Motorola spun off its microprocessor division in 2004. The division changed its name to Freescale and has subsequently been acquired by NXP. In fall 2016, Qualcomm and NXP announced that they would merge. As of spring 2018 the planned merger had yet to occur,[9] and in July 2018, the Chinese merger authority did not approve the acquisition before the deadline set by Qualcomm; it was effectively canceled on 26 July 2018.[10]

Neither Motorola nor Hitachi produce 6809 processors or derivatives anymore. 6809 cores are available in VHDL and can be programmed into an FPGA and used as an embedded processor with speed ratings up to 40 MHz. Some 6809 opcodes also live on in the Freescale embedded processors. In 2015, Freescale authorized Rochester Electronics to start manufacturing the MC6809 once again as a drop-in replacement and copy of the original NMOS device. Freescale supplied Rochester the original GDSII physical design database. At the end of 2016, Rochester's MC6809 (including the MC68A09, and MC68B09) is fully qualified and available in production.

The 6809 CPU core synthesized by Australian VHDL programmer John Kent is freely available to use in FPGA designs.[11]


Notes


References


Further reading

Datasheets and manuals

-   _MC6809 Datasheet_; Motorola; 36 pages; 1983.
-   _MC6809E Datasheet_; Motorola; 34 pages.
-   _Motorola 8-bit Microprocessors Data Book_; Motorola; 1182 pages; 1981.
-   _MC6809-MC6809E Microprocessor Programming Manual_; Motorola; 220 pages; 1981.

Books

-   _6809 Assembly Language Programming_; 1st Ed; Lance Leventhal; 579 pages; 1981; . (archive)
-   _The MC6809 Cookbook_; 1st Ed; Carl Warren; 180 pages; 1980; . (archive)
-   _Advanced 8-bit Microprocessor: MC6809: Its Software, Hardware, Architecture and Interfacing Techniques_; 1st Ed; Robert Simpson; 274 pages; 1998;

Magazines

-   '' A Microprocessor for the Revolution: The 6809''; Terry Ritter & Joel Boney (co-designers of 6809); BYTE magazine; Jan-Feb 1979. (archive)
-   _MC6809 microprocessor_; Ian Powers; Microprocessors, Volume 2, Issue 3; July 1978; page 162; , .

Reference cards

-   _MC6809 Reference Card_; Motorola; 16 pages; 1981. (archive)
-   _6809/6309 Reference Card_; Chris Lomont; 10 pages; 2007. (archive)


External links

Simulators / Emulators

-   6809 Emulation Page – collection of 6809 instructions, emulators, tools, debuggers, disassemblers, assemblers
-   6809 Emulator based on the SWTPC 6809 system

Boards

-   Grant's 6-chip 6809 board
-   6809 microprocessor training board

FPGA

-   System09 6809 CPU core - VHDL source code - OpenCores - project website

Category:Motorola microprocessors

[1]

[2] https://archive.org/details/bitsavers_motorola68_13419254

[3] This means that any number of modules can share any other (reentrant) module in common without synchronization, mutual exclusion controls, or other restrictions on their shared access.

[4] though the assembly language is not a characteristic of the 6809 _per se_, as many assembly languages can be constructed for any given machine language: witness the assembly languages of the Z80 vs. the 8080, or the 8086/88 assembly language vs. the one that NEC developed for the V30/V20 (both cases of companies avoiding Intel's claimed copyrights on its assembly language mnemonics)

[5]

[6]

[7]

[8]

[9]

[10]

[11]