decsystem.svg PDP-10_1090.jpg and 6 Memory Modules]] Arpanet_logical_map,_march_1977_PDP-10.png DECSystem10-KI10.JPG Digital Equipment Corporation's PDP-10, later marketed as the DECSYSTEM-10, was a mainframe computer family[1] manufactured beginning in 1966;[2] it was discontinued in 1983.[3][4][5] 1970s models and beyond were marketed under the DECsystem-10 name, especially as the TOPS-10 operating system became widely used.[6]

The PDP-10's architecture is almost identical to that of DEC's earlier PDP-6, sharing the same 36-bit word length and slightly extending the instruction set (but with improved hardware implementation). Some aspects of the instruction set are unusual, most notably the _byte_ instructions, which operated on bit fields of any size from 1 to 36 bits inclusive, according to the general definition of a byte as _a contiguous sequence of a fixed number of bits_.

The PDP-10 is the machine that made time-sharing common, and this and other features made it a common fixture in many university computing facilities and research labs during the 1970s, the most notable being Harvard University's Aiken Lab,[7] MIT's AI Lab and Project MAC, Stanford's SAIL, Computer Center Corporation (CCC), ETH (ZIR), and Carnegie Mellon University. Its main operating systems, TOPS-10 and TENEX, were used to build out the early ARPANET. For these reasons, the PDP-10 looms large in early hacker folklore.

Projects to extend the PDP-10 line were eclipsed by the success of the unrelated VAX superminicomputer, and the cancellation of the PDP-10 line was announced in 1983.


Models and technical evolution

KA10_mod_end.jpg from a DEC KA10, containing 9 transistors, 1971]] DEC-10_Memory_Bus_Terminator_H866_top_view.jpg KL10-backplane.jpg

The original PDP-10 processor is the KA10, introduced in 1968[8]. It uses discrete transistors packaged in DEC's Flip-Chip technology, with backplanes wire wrapped via a semi-automated manufacturing process. Its cycle time is 1 μs and its add time 2.1 μs.[9] In 1973, the KA10 was replaced by the KI10, which uses transistor–transistor logic (TTL) SSI. This was joined in 1975 by the higher-performance KL10 (later faster variants), which is built from emitter-coupled logic (ECL), microprogrammed, and has cache memory. The KL10's performance was about 1 megaflops using 36-bit floating point numbers on matrix row reduction. It was slightly faster than the newer VAX-11/750, although more limited in memory.

A smaller, less expensive model, the KS10, was introduced in 1978, using TTL and Am2901 bit-slice components and including the PDP-11 Unibus to connect peripherals. The KS was marketed as the DECsystem-2020, DEC's entry in the distributed processing arena, and it was introduced as "the world's lowest cost mainframe computer system."[10]

KA10

The KA10 has a maximum main memory capacity (both virtual and physical) of 256 kilowords (equivalent to 1152 kilobytes). As supplied by DEC, it did not include paging hardware; memory management consisted of two sets of protection and relocation registers, called _base and bounds_ registers. This allows each half of a user's address space to be limited to a set section of main memory, designated by the base physical address and size. This allows the model of separate read-only shareable code segment (normally the high segment) and read-write data/stack segment (normally the low segment) used by TOPS-10 and later adopted by Unix. Some KA10 machines, first at MIT, and later at Bolt, Beranek and Newman (BBN), were modified to add virtual memory[11] and support for demand paging, [12][13] and more physical memory.

KA10 weighed about .[14]

The 10/50 was the top-of-the-line Uni-processor KA machine[15] at the time when the _PA1050_ software package was introduced. Two other KA10 models were the uniprocessor 10/40, and the dual-processor 10/55.[16][17]

KI10 and KL10

The KI10 and later processors offer paged memory management, and also support a larger physical address space of 4 megawords. KI10 models include 1060, 1070 and 1077, the latter incorporating two CPUs.

KS10-open.jpg The original KL10 PDP-10 (also marketed as DECsystem-10) models (1080, 1088, etc.) use the original PDP-10 memory bus, with external memory modules. Module in this context meant a cabinet, dimensions roughly (WxHxD) 30 x 75 x 30 in. with a capacity of 32 to 256 kWords of magnetic core memory (the picture on the right hand side of the introduction shows six of these cabinets). The processors used in the DECSYSTEM-20 (2040, 2050, 2060, 2065), commonly but incorrectly called "KL20", use internal memory, mounted in the same cabinet as the CPU. The 10xx models also have different packaging; they come in the original tall PDP-10 cabinets, rather than the short ones used later on for the DECSYSTEM-20. The differences between the 10xx and 20xx models are more cosmetic than real; some 10xx systems have "20-style" internal memory and I/O, and some 20xx systems have "10-style" external memory and an I/O bus. In particular, all ARPAnet TOPS-20 systems had an I/O bus because the AN20 IMP interface was an I/O bus device. Both could run either TOPS-10 or TOPS-20 microcode and thus the corresponding operating system.

Model B

Later, the "Model B" version of the 2060 processors removed the 256 kiloword limit on the virtual address space, by allowing the use of up to 32 "sections" of up to 256 kilowords each, along with substantial changes to the instruction set. "Model A" and "Model B" KL10 processors can be thought of as being different CPUs. The first operating system that took advantage of the Model B's capabilities was TOPS-20 release 3, and user mode extended addressing was offered in TOPS-20 release 4. TOPS-20 versions after release 4.1 would only run on a Model B.

TOPS-10 versions 7.02 and 7.03 also use extended addressing when run on a 1090 (or 1091) Model B processor running TOPS-20 microcode.

MCA25

The final upgrade to the KL10 was the MCA25 upgrade of a 2060 to 2065 (or a 1091 to 1095), which gave some performance increases for programs which run in multiple sections.

KS10

The KS10 design was crippled to be a Model A even though most of the necessary data paths needed to support the Model B architecture were present. This was no doubt intended to segment the market, but it greatly shortened the KS10's product life.

Frontend systems

KL10-front-end.jpg Frontend processors are computers that extend the functionality of the systems to which they are connected.[18]

KL frontends

The KL class machines cannot be started without the assistance of a PDP-11/40 frontend computer installed in every system. The PDP-11 is booted from a dual-ported RP06 disk drive (or alternatively from an 8" floppy disk drive or DECtape), and then commands can be given to the PDP-11 to start the main processor, which is typically booted from the same RP06 disk drive as the PDP-11. The PDP-11 performs watchdog functions once the main processor is running.

Networking[19] and Remote Job Entry (RJE) were accomplished via a PDP-11/34a frontend, for which was DEC used the terms DN60 and D60SPL[20]

KS frontends

The KS system uses a similar boot procedure. An 8080 CPU loads the microcode from an RM03, RM80, or RP06 disk or magnetic tape and then starts the main processor. The 8080 switches modes after the operating system boots and controls the console and remote diagnostic serial ports.

MASSbus

The I/O architecture of the 20xx series KL machines is based on a DEC bus design called the MASSbus. While many attributed the success of the PDP-11 to DEC's decision to make the PDP-11 Unibus an open architecture, DEC reverted to prior philosophy with the KL, making MASSbus both unique and proprietary. Consequently, there were no aftermarket peripheral manufacturers who made devices for the MASSbus, and DEC chose to price their own MASSbus devices, notably the RP06 disk drive, at a substantial premium above comparable IBM-compatible devices. CompuServe for one, designed its own alternative disk controller that could operate on the MASSbus, but connect to IBM style 3330 disk subsystems.

Magnetic tape drives

Two models of tape drives were supported by the TM10 Magnetic Tape Control subsystem:

-   TU20 Magnetic Tape Transport – 45 ips (inches/second)
-   TU30 Magnetic Tape Transport – 75 ips (inches/second)

A mix of up to eight of these could be supported, providing seven-track &/or nine-track devices. The TU20 and TU30 each came in A (9 track) and B (7 track) versions, and all of the aforementioned tape drives could read/write from/to 200 BPI, 556 BPI and 800 BPI IBM-compatible tapes.

The TM10 Magtape controller was available in two submodels:

-   TM10A did cycle-stealing to/from PDP-10 memory using the KA10 Arithmetic Processor
-   TM10B accessed PDP-10 memory using a DF10 Data Channel, without "cycle stealing" from the KA10 Arithmetic Processor[21]


Instruction set architecture

+:-----------------------------------------------------------------------------------------------------------------:+
| _DEC PDP-10 registers_                                                                                            |
+-------------------------------------------------------------------------------------------------------------------+
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| | ⁰₀                               | . . .      | ¹₇          | ¹₈              | . . . | ³₅ | _(bit position)_ | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| | GENERAL REGISTERS                |            |             |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | Register 0 |             |                 |       |    |                  | |
| |                                  |            |             |                 |       |    |                  | |
| | AC0                              |            |             |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC1        | Register 1  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC2        | Register 2  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC3        | Register 3  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC4        | Register 4  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC5        | Register 5  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC6        | Register 6  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC7        | Register 7  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC10       | Register 8  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC11       | Register 9  |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC12       | Register 10 |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC13       | Register 11 |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC14       | Register 12 |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC15       | Register 13 |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC16       | Register 14 |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| |                                  | AC17       | Register 15 |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| | PROGRAM COUNTER AND STATUS FLAGS |            |             |                 |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
| | Program Flags                    | 00000      | PC          | Program Counter |       |    |                  | |
| +----------------------------------+------------+-------------+-----------------+-------+----+------------------+ |
|                                                                                                                   |
| Note that the bit numbering order is different from some other DEC processors, and many newer processors.         |
+-------------------------------------------------------------------------------------------------------------------+

From the first PDP-6s to the Model A KL-10s, the user-mode instruction set architecture is largely the same. This section covers that architecture. (Multi-section extended addressing is covered in the _DECsystem-10/DECSYSTEM-20 Processor Reference Manual_.)[22]

Addressing

The PDP-10 has 36-bit words and 18-bit word addresses. In supervisor mode, instruction addresses correspond directly to physical memory. In user mode, addresses are translated to physical memory. Earlier models give a user process a "high" and a "low" memory: addresses with a 0 top bit used one base register, and higher addresses used another. Each segment is contiguous. Later architectures have paged memory access, allowing non-contiguous address spaces. The CPU's general-purpose registers can also be addressed as memory locations 0-15.

Registers

There are 16 general-purpose, 36-bit registers. The right half of these registers (other than register 0) may be used for indexing. A few instructions operate on pairs of registers. The "PC Word" consists of a 13-bit condition register (plus 5 always zero bits) in the left half and an 18-bit Program Counter in the right half. The condition register, which records extra bits from the results of arithmetic operations (_e.g._ overflow), can be accessed by only a few instructions.

Supervisor mode

There are two operational modes, supervisor and user mode. Besides the difference in memory referencing described above, supervisor-mode programs can execute input/output operations.

Communication from user-mode to supervisor-mode is done through Unimplemented User Operations (UUOs): instructions which are not defined by the hardware, and are trapped by the supervisor. This mechanism is also used to emulate operations which may not have hardware implementations in cheaper models.

Data types

The major datatypes which are directly supported by the architecture are two's complement 36-bit integer arithmetic (including bitwise operations), 36-bit floating-point, and halfwords. Extended, 72-bit, floating point is supported through special instructions designed to be used in multi-instruction sequences. Byte pointers are supported by special instructions. A word structured as a "count" half and a "pointer" half facilitates the use of bounded regions of memory, notably stacks.

Instructions

The instruction set is very symmetrical. Every instruction consists of a 9-bit opcode, a 4-bit register code, and a 23-bit effective address field, which consists in turn of a 1-bit indirect bit, a 4-bit register code, and an 18-bit offset. Instruction execution begins by calculating the effective address. It adds the contents of the given register (if non-zero) to the offset; then, if the indirect bit is 1, fetches the word at the calculated address and repeats the effective address calculation until an effective address with a zero indirect bit is reached. The resulting effective address can be used by the instruction either to fetch memory contents, or simply as a constant. Thus, for example, MOVEI A,3(C) adds 3 to the 18 lower bits of register C and puts the result in register A, without touching memory.

There are three main classes of instruction: arithmetic, logical, and move; conditional jump; conditional skip (which may have side effects). There are also several smaller classes.

The arithmetic, logical, and move operations include variants which operate immediate-to-register, memory-to-register, register-to-memory, register-and-memory-to-both or memory-to-memory. Since registers may be addressed as part of memory, register-to-register operations are also defined. (Not all variants are useful, though they are well-defined.) For example, the ADD operation has as variants ADDI (add an 18-bit _I_mmediate constant to a register), ADDM (add register contents to a _M_emory location), ADDB (add to _B_oth, that is, add register contents to memory and also put the result in the register). A more elaborate example is HLROM (_H_alf _L_eft to _R_ight, _O_nes to _M_emory), which takes the Left half of the register contents, places them in the Right half of the memory location, and replaces the left half of the memory location with Ones. Halfword instructions are also used for linked lists: HLRZ is the Lisp CAR operator; HRRZ is CDR.

The conditional jump operations examine register contents and jump to a given location depending on the result of the comparison. The mnemonics for these instructions all start with JUMP, JUMPA meaning "jump always" and JUMP meaning "jump never" – as a consequence of the symmetric design of the instruction set, it contains several no-ops such as JUMP. For example, JUMPN A,LOC jumps to the address LOC if the contents of register A is non-zero. There are also conditional jumps based on the processor's condition register using the JRST instruction. On the KA10 and KI10, JRST is faster than JUMPA, so the standard unconditional jump is JRST.

The conditional skip operations compare register and memory contents and skip the next instruction (which is often an unconditional jump) depending on the result of the comparison. A simple example is CAMN A,LOC which compares the contents of register A with the contents of location LOC and skips the next instruction if they are not equal. A more elaborate example is TLCE A,LOC (read "Test Left Complement, skip if Equal"), which using the contents of LOC as a mask, selects the corresponding bits in the left half of register A. If all those bits are _E_qual to zero, skip the next instruction; and in any case, replace those bits by their boolean complement.

Some smaller instruction classes include the shift/rotate instructions and the procedure call instructions. Particularly notable are the stack instructions PUSH and POP, and the corresponding stack call instructions PUSHJ and POPJ. The byte instructions use a special format of indirect word to extract and store arbitrary-sized bit fields, possibly advancing a pointer to the next unit.


Software

The original PDP-10 operating system was simply called "Monitor", but was later renamed TOPS-10. Eventually the PDP-10 system itself was renamed the DECsystem-10. Early versions of Monitor and TOPS-10 formed the basis of Stanford's WAITS operating system and the CompuServe time-sharing system.

Over time, some PDP-10 operators began running operating systems assembled from major components developed outside DEC. For example, the main Scheduler might come from one university, the Disk Service from another, and so on. The commercial timesharing services such as CompuServe, On-Line Systems (OLS), and Rapidata maintained sophisticated inhouse systems programming groups so that they could modify the operating system as needed for their own businesses without being dependent on DEC or others. There are also strong user communities such as DECUS through which users can share software that they have developed.

BBN developed their own alternative operating system, TENEX, which fairly quickly became the de facto standard in the research community. DEC later ported TENEX to the KL10, enhanced it considerably, and named it TOPS-20, forming the DECSYSTEM-20 line.

MIT, which had developed CTSS, Compatible Time-Sharing System to run on their IBM 709 (and later a modified IBM 7094 system), also developed ITS, Incompatible Timesharing System[23] to run on their PDP-6 (and later a modified PDP-10);[24] the naming was related, since the IBM and the DEC/PDP hardware were different, i.e. "incompatible" (despite each having a 36-bit CPU).

The ITS name, selected by Tom Knight, "was a play on" the CTSS name.[25]

Tymshare developed TYMCOM-X,[26] derived from TOPS-10 but using a page-based file system like TOPS-20.[27]


Clones

In 1971 to 1972, researchers at Xerox PARC were frustrated by top company management's refusal to let them buy a PDP-10. Xerox had just bought Scientific Data Systems (SDS) in 1969, and wanted PARC to use an SDS machine. Instead, a group led by Charles P. Thacker designed and constructed two PDP-10 clone systems named MAXC (pronounced as Max, in honour of Max Palevsky, who had sold SDS to Xerox) for their own use. MAXC was also a backronym for Multiple Access Xerox Computer. MAXC ran a modified version of TENEX.[28]

Third-party attempts to sell PDP-10 clones were relatively unsuccessful; see Foonly, Systems Concepts, and XKL.


Use by CompuServe

One of the largest collections of DECsystem-10 architecture systems ever assembled was at CompuServe, which, at its peak, operated over 200 loosely coupled systems in three data centers in Columbus, Ohio. CompuServe used these systems as 'hosts', providing access to commercial applications, and the CompuServe Information Service. While the first such systems were bought from DEC, when DEC abandoned the PDP-10 architecture in favor of the VAX, CompuServe and other PDP-10 customers began buying plug compatible computers from Systems Concepts. As of January 2007, CompuServe was operating a small number of PDP-10 architecture machines to perform some billing and routing functions.

The main power supplies used in the KL-series machines were so inefficient that CompuServe engineers designed a replacement supply that used about half the energy. CompuServe offered to license the design for its KL supply to DEC for free if DEC would promise that any new KL bought by CompuServe would have the more efficient supply installed. DEC declined the offer. MF10-Panel.jpg]]

Another modification made to the PDP-10 by CompuServe engineers was replacing the hundreds of incandescent indicator lamps on the KI10 processor cabinet with LED lamp modules. The cost of conversion was easily offset by cost savings in electricity use, reduced heat, and labor needed to replace burned-out lamps. Digital followed this step all over the world. The picture on the right hand side shows the light panel of the MF10 memory which is contemporary with the KI10 CPU. This item is part of a computer museum, and was populated with LEDs in 2008 for demonstration purposes only. There were no similar banks of indicator lamps on KL and KS processors.


Cancellation and influence

The PDP-10 was eventually eclipsed by the VAX superminicomputer machines (descendants of the PDP-11) when DEC recognized that the PDP-10 and VAX product lines were competing with each other and decided to concentrate its software development effort on the more profitable VAX. The PDP-10 product line cancellation was announced in 1983, including cancelling the ongoing Jupiter project to produce a new high-end PDP-10 processor (despite that project being in good shape at the time of the cancellation) and the Minnow project to produce a desktop PDP-10, which may then have been at the prototyping stage.[29]

This event spelled the doom of ITS and the technical cultures that had spawned the original jargon file, but by the 1990s it had become something of a badge of honor among old-time hackers to have cut one's teeth on a PDP-10.

The PDP-10 assembly language instructions LDB and DPB (load/deposit byte) live on as functions in the programming language Common Lisp. See the "References" section on the LISP article. The 36-bit word size of the PDP-6 and PDP-10 was influenced by the programming convenience of having 2 LISP pointers, each 18 bits, in one word.

Will Crowther created _Adventure_, the prototypical computer adventure game, for a PDP-10. Don Daglow created the first computer baseball game (1971) and _Dungeon_ (1975), the first role-playing video game on a PDP-10. Walter Bright originally created _Empire_ for the PDP-10. Roy Trubshaw and Richard Bartle created the first MUD on a PDP-10. _Zork_ was written on the PDP-10. Infocom used PDP-10s for game development and testing.[30]

Bill Gates and Paul Allen originally wrote Altair BASIC using an Intel 8080 emulator running on a PDP-10 at Harvard University. They founded Microsoft shortly after.


Emulation or simulation

The software for simulation of historical computers SIMH contains a module to emulate the KS10 CPU on a Windows or Unix-based machine. Copies of DEC's original distribution tapes are available as downloads from the Internet so that a running TOPS-10 or TOPS-20 system may be established. ITS is also available for SIMH.

Ken Harrenstien's KLH10 software for Unix-like systems emulates a KL10B processor with extended addressing and 4 MW of memory or a KS10 processor with 512 KW of memory. The KL10 emulation supports v.442 of the KL10 microcode, which enables it to run the final versions of both TOPS-10 and TOPS-20. The KS10 emulation supports both ITS v.262 microcode for the final version of KS10 ITS and DEC v.130 microcode for the final versions of KS TOPS-10 and TOPS-20.[31]


In popular culture

-   _Swordfish_ – Hugh Jackman's character accesses "The only PDP10 active and on the internet" which is in the basement of a Caltech building where he hides his worm creation program.
-   _The Americans_ season 2, episode 7 ("Arpanet") – Kate relays orders for Philip to bug the PDP10 based ARPANET, which he accomplishes with the help of Duluth.


See also

-   ITS
-   TOPS-10
-   TOPS-20
-   WAITS


References

Notes

-   _DECsystem10 System Reference Manual_ (DEC, 1968, 1971, 1974)
-   _DECsystem-10/DECSYSTEM-20 Processor Reference Manual_ (DEC, 1982)
-


Further reading

-   C. Gordon Bell, Alan Kotok, Thomas N. Hastings, Richard Hill, _The Evolution of the DECsystem-10_, in C. Gordon Bell, J. Craig Mudge, John E. McNamara, _Computer Engineering: A DEC View of Hardware Systems Design_ (Digital, Bedford, 1979)


External links

-   36 Bits Forever!
-   PDP-10 stuff
-   PDP10 Miscellany Page
-   Life in the Fast AC's
-   Columbia University DEC PDP-10 page
-   Panda Programming TOPS-20 page
-   Living Computers: Museum + Labs, a portal into the Paul Allen collection of timesharing and interactive computers, including an operational PDP-10 (KL-10). Request a login.
-   Empire for the PDP-10 (zip file of FORTRAN-10 source code download) from Classic Empire
-   PDP-10 software archive at Trailing Edge
-   The Personal Mainframe ad
-   Computer World ad for Personal Mainframe
-   PDP-10 documentation at Bitsavers

Newsgroups

-   alt.sys.pdp10

Category:DEC hardware Category:DEC mainframe computers Category:Instruction set architectures Category:36-bit computers Category:Computer-related introductions in 1966

[1] Ceruzzi, p. 208, "It was large—even DEC's own literature called [the PDP-10] a mainframe."

[2] Ceruzzi, p. 139

[3]

[4]

[5]

[6] The TOPS-10 name was announced 1970

[7] https://www.seas.harvard.edu/about-seas/map-directions/buildings identifies Maxwell Dworkin Laborary, located at 33 Oxford Street, as having been named after the mothers of Microsoft's Bill Gates (Maxwell) and Steve Balmer (Dworkin), with the word Laboratory added "in recognition of the former Aiken Lab."

[8]

[9] Digital Equipment Corporation, _The digital small computer handbook_, p. 376

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] also marketed as 1040, 1050, 1055, as per the KI/KL models as 1060, 1070, etc.

[18] see https://www.pcmag.com/encyclopedia/term/43514/front-end-processor

[19] http://www.inwap.com/pdp10/usenet/decnet

[20] The spooler was named D60SPL; see http://pdp-10.trailing-edge.com/bb-d868b-bm_tops20_v3a_2020_dist/01/3a-sources/d60spl.mac.html (The name D60SPL came from LPTSPL)

[21]

[22]

[23]

[24]

[25]

[26] "Tymnet operations formed a strategic alliance with the Tymshare PDP-10 TYMCOM-X operating systems group to assist them in developing new network management tools."

[27]

[28]

[29] "DEC 36-bit Computers" Retrieved on April 4, 2009.

[30]

[31] Tim Shoppa "Announcing KLH10", November 10, 2001. Retrieved April 4, 2009.