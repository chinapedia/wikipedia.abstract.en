UltraSPARC, a RISC microprocessor]] A REDUCED INSTRUCTION SET COMPUTER, or RISC (), is one whose instruction set architecture (ISA) allows it to have fewer cycles per instruction (CPI) than a complex instruction set computer (CISC).[1] Various suggestions have been made regarding a precise definition of RISC, but the general concept is that such a computer has a small set of simple and general instructions, rather than a large set of complex and specialized instructions. Another common RISC trait is their load/store architecture,[2] in which memory is accessed through specific instructions rather than as a part of most instructions.

Although a number of computers from the 1960s and 1970s have been identified as forerunners of RISCs, the modern concept dates to the 1980s. In particular, two projects at Stanford University and the University of California, Berkeley are most associated with the popularization of this concept. Stanford's MIPS would go on to be commercialized as the successful MIPS architecture, while Berkeley's RISC gave its name to the entire concept and was commercialized as the SPARC. Another success from this era was IBM's effort that eventually led to the IBM POWER instruction set architecture, PowerPC, and Power ISA. As these projects matured, a wide variety of similar designs flourished in the late 1980s and especially the early 1990s, representing a major force in the Unix workstation market as well as for embedded processors in laser printers, routers and similar products.

The many varieties of RISC designs include ARC, Alpha, Am29000, ARM, Atmel AVR, Blackfin, i860, i960, M88000, MIPS, PA-RISC, Power ISA (including PowerPC), RISC-V, SuperH, and SPARC. The use of ARM architecture processors in smartphones and tablet computers such as the iPad and Android devices provided a wide user base for RISC-based systems. RISC processors are also used in supercomputers such as Summit, which, , is the world's fastest supercomputer as ranked by the TOP500 project.[3]


History and development

Alan Turing's 1946 Automatic Computing Engine (ACE) design had many of the characteristics of a RISC architecture.[4] A number of systems, going back to the 1960s, have been credited as the first RISC architecture, partly based on their use of load/store approach.[5] The term RISC was coined by David Patterson of the Berkeley RISC project, although somewhat similar concepts had appeared before.[6]

The CDC 6600 designed by Seymour Cray in 1964 used a load/store architecture with only two addressing modes (register+register, and register+immediate constant) and 74 operation codes, with the basic clock cycle being 10 times faster than the memory access time.[7] Partly due to the optimized load/store architecture of the CDC 6600, Jack Dongarra says that it can be considered a forerunner of modern RISC systems, although a number of other technical barriers needed to be overcome for the development of a modern RISC system.[8]

RISC microprocessor]] Michael J. Flynn views the first RISC system as the IBM 801 design, which began in 1975 by John Cocke and was completed in 1980.[9] The 801 was eventually produced in a single-chip form as the IBM ROMP in 1981, which stood for 'Research OPD [Office Products Division] Micro Processor'.[10] As the name implies, this CPU was designed for "mini" tasks, and was also used in the IBM RT PC in 1986, which turned out to be a commercial failure.[11] But the 801 inspired several research projects, including new ones at IBM that would eventually lead to the IBM POWER instruction set architecture.[12][13]

The most public RISC designs, however, were the results of university research programs run with funding from the DARPA VLSI Program. The VLSI Program, practically unknown today, led to a huge number of advances in chip design, fabrication, and even computer graphics. The Berkeley RISC project started in 1980 under the direction of David Patterson and Carlo H. Sequin.[14][15][16]

Berkeley RISC was based on gaining performance through the use of pipelining and an aggressive use of a technique known as register windowing.[17][18] In a traditional CPU, one has a small number of registers, and a program can use any register at any time. In a CPU with register windows, there are a huge number of registers, e.g. 128, but programs can only use a small number of them, e.g. eight, at any one time. A program that limits itself to eight registers per procedure can make very fast procedure calls: The call simply moves the window "down" by eight, to the set of eight registers used by that procedure, and the return moves the window back.[19] The Berkeley RISC project delivered the RISC-I processor in 1982. Consisting of only 44,420 transistors (compared with averages of about 100,000 in newer CISC designs of the era) RISC-I had only 32 instructions, and yet completely outperformed any other single-chip design. They followed this up with the 40,760 transistor, 39 instruction RISC-II in 1983, which ran over three times as fast as RISC-I.[20]

The MIPS project grew out of a graduate course by John L. Hennessy at Stanford University in 1981, resulted in a functioning system in 1983, and could run simple programs by 1984.[21] The MIPS approach emphasized an aggressive clock cycle and the use of the pipeline, making sure it could be run as "full" as possible.[22] The MIPS system was followed by the MIPS-X and in 1984 Hennessy and his colleagues formed MIPS Computer Systems.[23][24] The commercial venture resulted in a new architecture that was also called MIPS and the R2000 microprocessor in 1985.[25]

In the early 1980s, significant uncertainties surrounded the RISC concept, and it was uncertain if it could have a commercial future, but by the mid-1980s the concepts had matured enough to be seen as commercially viable.[26][27] In 1986 Hewlett Packard started using an early implementation of their PA-RISC in some of their computers.[28] In the meantime, the Berkeley RISC effort had become so well known that it eventually became the name for the entire concept and in 1987 Sun Microsystems began shipping systems with the SPARC processor, directly based on the Berkeley RISC-II system.[29][30]

The US government Committee on Innovations in Computing and Communications credits the acceptance of the viability of the RISC concept to the success of the SPARC system.[31] The success of SPARC renewed interest within IBM, which released new RISC systems by 1990 and by 1995 RISC processors were the foundation of a $15 billion server industry.[32]

Since 2010 a new open source instruction set architecture (ISA), RISC-V, has been under development at the University of California, Berkeley, for research purposes and as a free alternative to proprietary ISAs. As of 2014, version 2 of the user space ISA is fixed.[33] The ISA is designed to be extensible from a barebones core sufficient for a small embedded processor to supercomputer and cloud computing use with standard and chip designer defined extensions and coprocessors. It has been tested in silicon design with the ROCKET SoC which is also available as an open source processor generator in the CHISEL language.


Characteristics and design philosophy

Instruction set philosophy

A common misunderstanding of the phrase "reduced instruction set computer" is the mistaken idea that instructions are simply eliminated, resulting in a smaller set of instructions.[34] In fact, over the years, RISC instruction sets have grown in size, and today many of them have a larger set of instructions than many CISC CPUs.[35][36] Some RISC processors such as the PowerPC have instruction sets as large as the CISC IBM System/370, for example; conversely, the DEC PDP-8—clearly a CISC CPU because many of its instructions involve multiple memory accesses—has only 8 basic instructions and a few extended instructions.

The term "reduced" in that phrase was intended to describe the fact that the amount of work any single instruction accomplishes is reduced—at most a single data memory cycle—compared to the "complex instructions" of CISC CPUs that may require dozens of data memory cycles in order to execute a single instruction.[37] In particular, RISC processors typically have separate instructions for I/O and data processing.

The term load/store architecture is sometimes preferred.

Instruction format

Most RISC architectures have fixed-length instructions (commonly 32 bits) and a simple encoding, which simplifies fetch, decode, and issue logic considerably. One drawback of 32-bit instructions is reduced code density, which is more adverse a characteristic in embedded computing than it is in the workstation and server markets RISC architectures were originally designed to serve. To address this problem, several architectures, such as ARM, Power ISA, MIPS, RISC-V, and the Adapteva Epiphany, have an optional short feature-reduced instruction format or instruction compression feature. The SH5 also follows this pattern, albeit having evolved in the opposite direction, having added longer media instructions to an original 16-bit encoding.

Hardware utilization

For any given level of general performance, a RISC chip will typically have far fewer transistors dedicated to the core logic which originally allowed designers to increase the size of the register set and increase internal parallelism.

Other features that are typically found in RISC architectures are:

-   Processor average throughput nears 1 instruction per cycle
-   Uniform instruction format, using single word with the opcode in the same bit positions for simpler decoding
-   All general purpose registers can be used equally as source/destination in all instructions, simplifying compiler design (floating point registers are often kept separate)
-   Simple addressing modes with complex addressing performed by instruction sequences
-   Few data types in hardware (no byte string or BCD, for example)

RISC designs are also more likely to feature a Harvard memory model, where the instruction stream and the data stream are conceptually separated; this means that modifying the memory where code is held might not have any effect on the instructions executed by the processor (because the CPU has a separate instruction and data cache), at least until a special synchronization instruction is issued. On the upside, this allows both caches to be accessed simultaneously, which can often improve performance.

Many early RISC designs also shared the characteristic of having a branch delay slot. A branch delay slot is an instruction space immediately following a jump or branch. The instruction in this space is executed, whether or not the branch is taken (in other words the effect of the branch is delayed). This instruction keeps the ALU of the CPU busy for the extra time normally needed to perform a branch. Nowadays the branch delay slot is considered an unfortunate side effect of a particular strategy for implementing some RISC designs, and modern RISC designs generally do away with it (such as PowerPC and more recent versions of SPARC and MIPS).

Some aspects attributed to the first RISC-_labeled_ designs around 1975 include the observations that the memory-restricted compilers of the time were often unable to take advantage of features intended to facilitate _manual_ assembly coding, and that complex addressing modes take many cycles to perform due to the required additional memory accesses. It was argued that such functions would be better performed by sequences of simpler instructions if this could yield implementations small enough to leave room for many registers, reducing the number of slow memory accesses. In these simple designs, most instructions are of uniform length and similar structure, arithmetic operations are restricted to CPU registers and only separate _load_ and _store_ instructions access memory. These properties enable a better balancing of pipeline stages than before, making RISC pipelines significantly more efficient and allowing higher clock frequencies.

In the early days of the computer industry, programming was done in assembly language or machine code, which encouraged powerful and easy-to-use instructions. CPU designers therefore tried to make instructions that would do as much work as feasible. With the advent of higher level languages, computer architects also started to create dedicated instructions to directly implement certain central mechanisms of such languages. Another general goal was to provide every possible addressing mode for every instruction, known as orthogonality, to ease compiler implementation. Arithmetic operations could therefore often have results as well as operands directly in memory (in addition to register or immediate).

The attitude at the time was that hardware design was more mature than compiler design so this was in itself also a reason to implement parts of the functionality in hardware or microcode rather than in a memory constrained compiler (or its generated code) alone. After the advent of RISC, this philosophy became retroactively known as complex instruction set computing, or CISC.

CPUs also had relatively few registers, for several reasons:

-   More registers also implies more time-consuming saving and restoring of register contents on the machine stack.
-   A large number of registers requires a large number of instruction bits as register specifiers, meaning less dense code (see below).
-   CPU registers are more expensive than external memory locations; large register sets were cumbersome with limited circuit boards or chip integration.

An important force encouraging complexity was very limited main memories (on the order of kilobytes). It was therefore advantageous for the code density—the density of information held in computer programs—to be high, leading to features such as highly encoded, variable length instructions, doing data loading as well as calculation (as mentioned above). These issues were of higher priority than the ease of decoding such instructions.

An equally important reason was that main memories were quite slow (a common type was ferrite core memory); by using dense information packing, one could reduce the frequency with which the CPU had to access this slow resource. Modern computers face similar limiting factors: main memories are slow compared to the CPU and the fast cache memories employed to overcome this are limited in size. This may partly explain why highly encoded instruction sets have proven to be as useful as RISC designs in modern computers.

RISC was developed as an alternative to what is now known as CISC. Over the years, other strategies have been implemented as alternatives to RISC and CISC. Some examples are very long instruction word (VLIW) and minimal instruction set computer (MISC).

In the mid-1970s, researchers (particularly John Cocke) at IBM (and similar projects elsewhere) demonstrated that the majority of combinations of these orthogonal addressing modes and instructions were not used by most programs generated by compilers available at the time. It proved difficult in many cases to write a compiler with more than limited ability to take advantage of the features provided by conventional CPUs.

It was also discovered that, on microcoded implementations of certain architectures, complex operations tended to be _slower_ than a sequence of simpler operations doing the same thing. This was in part an effect of the fact that many designs were rushed, with little time to optimize or tune every instruction; only those used most often were optimized, and a sequence of those instructions could be faster than a less-tuned instruction performing an equivalent operation as that sequence. One infamous example was the VAX's INDEX instruction.[38]

As mentioned elsewhere, core memory had long since been slower than many CPU designs. The advent of semiconductor memory reduced this difference, but it was still apparent that more registers (and later caches) would allow higher CPU operating frequencies. Additional registers would require sizeable chip or board areas which, at the time (1975), could be made available if the complexity of the CPU logic was reduced.

Yet another impetus of both RISC and other designs came from practical measurements on real-world programs. Andrew Tanenbaum summed up many of these, demonstrating that processors often had oversized immediates. For instance, he showed that 98% of all the constants in a program would fit in 13 bits, yet many CPU designs dedicated 16 or 32 bits to store them. This suggests that, to reduce the number of memory accesses, a fixed length machine could store constants in unused bits of the instruction word itself, so that they would be immediately ready when the CPU needs them (much like immediate addressing in a conventional design). This required small opcodes in order to leave room for a reasonably sized constant in a 32-bit instruction word.

Since many real-world programs spend most of their time executing simple operations, some researchers decided to focus on making those operations as fast as possible. The clock rate of a CPU is limited by the time it takes to execute the slowest _sub-operation_ of any instruction; decreasing that cycle-time often accelerates the execution of other instructions.[39] The focus on "reduced instructions" led to the resulting machine being called a "reduced instruction set computer" (RISC). The goal was to make instructions so simple that they could _easily_ be pipelined, in order to achieve a _single clock_ throughput at _high frequencies_.

Later, it was noted that one of the most significant characteristics of RISC processors was that external memory was only accessible by a _load_ or _store_ instruction. All other instructions were limited to internal registers. This simplified many aspects of processor design: allowing instructions to be fixed-length, simplifying pipelines, and isolating the logic for dealing with the delay in completing a memory access (cache miss, etc.) to only two instructions. This led to RISC designs being referred to as _load/store_ architectures.[40]

One more issue is that some complex instructions are difficult to restart, e.g. following a page fault. In some cases, restarting from the beginning will work (although wasteful), but in many cases this would give incorrect results. Therefore, the machine needs to have some hidden state to remember which parts went through and what remains to be done. With a load/store machine, the program counter is sufficient to describe the state of the machine.

The main distinguishing feature of RISC is that the instruction set is optimized for a highly regular instruction pipeline flow.[41] All the other features associated with RISC—branch delay slots, separate instruction and data caches, load/store architecture, large register set, etc.—may seem to be a random assortment of unrelated features, but each of them is helpful in maintaining a regular pipeline flow that completes an instruction every clock cycle.


Comparison to other architectures

Some CPUs have been specifically designed to have a very small set of instructions – but these designs are very different from classic RISC designs, so they have been given other names such as minimal instruction set computer (MISC), or transport triggered architecture (TTA), etc.

RISC architectures have traditionally had few successes in the desktop PC and commodity server markets, where the x86 based platforms remain the dominant processor architecture. However, this may change, as ARM architecture based processors are being developed for higher performance systems.[42] Manufacturers including Cavium, AMD, and Qualcomm have released ARM architecture based server processors.[43][44] ARM is further partnered with Cray in 2017 to produce an ARM architecture based supercomputer.[45] On the desktop, Microsoft announced that as part of a partnership with Qualcomm it planned to support the PC version of Windows 10 on Qualcomm Snapdragon-based devices in 2017. These devices will support x86 based Win32 software via an x86 processor emulator.[46]

Outside of the desktop arena, however, the ARM architecture (RISC) is in widespread use in smartphones, tablets and many forms of embedded device. It is also the case that since the Pentium Pro (P6) Intel has been using an internal RISC processor core for its processors.[47]

While early RISC designs differed significantly from contemporary CISC designs, by 2000 the highest performing CPUs in the RISC line were almost indistinguishable from the highest performing CPUs in the CISC line.[48][49][50]


Use of RISC architectures

RISC architectures are now used across a wide range of platforms, from cellular telephones and tablet computers to some of the world's fastest supercomputers such as Summit, the fastest on the TOP500 list .[51]

Low end and mobile systems

By the beginning of the 21st century, the majority of low end and mobile systems relied on RISC architectures.[52] Examples include:

-   The ARM architecture dominates the market for low power and low cost embedded systems (typically 200–1800 MHz in 2014). It is used in a number of systems such as most Android-based systems, the Apple iPhone and iPad, Microsoft Windows Phone (former Windows Mobile), RIM devices, Nintendo Game Boy Advance, DS, 3DS and Switch, Raspberry Pi, etc.
-   IBM's PowerPC, today found in the GameCube, Wii, PlayStation 3, Xbox 360 and Wii U gaming consoles.
-   The MIPS line, (at one point used in many SGI computers) and now in the PlayStation, PlayStation 2, Nintendo 64, PlayStation Portable game consoles, and residential gateways like Linksys WRT54G series.
-   Hitachi's SuperH, originally in wide use in the Sega Super 32X, Saturn and Dreamcast, now developed and sold by Renesas as the SH4
-   Atmel AVR used in a variety of products ranging from Xbox handheld controllers to BMW cars.
-   RISC-V, the open source fifth Berkeley RISC ISA, with 32 or 64 bit address spaces, a small core integer instruction set, and an experimental "Compressed" ISA for code density and designed for standard and special purpose extensions.

Workstations, servers, and supercomputers

-   MIPS, by Silicon Graphics (ceased making MIPS-based systems in 2006).
-   SPARC, by Oracle (previously Sun Microsystems), and Fujitsu.
-   IBM's IBM POWER instruction set architecture, PowerPC, and Power ISA, most famously known for its use on many Macintosh computer models until late 2005, and in many of IBM's supercomputers, midrange servers and workstations.
-   Hewlett-Packard's PA-RISC, also known as HP-PA (discontinued at the end of 2008).
-   Alpha, used in single-board computers, workstations, servers and supercomputers from Digital Equipment Corporation, then Compaq and finally HP (discontinued as of 2007).
-   RISC-V, the open source fifth Berkeley RISC ISA, with 64 or 128-bit address spaces, and the integer core extended with floating point, atomics and vector processing, and designed to be extended with instructions for networking, IO, data processing etc. A 64-bit superscalar design, "Rocket", is available for download.


See also

-   Addressing mode
-   Classic RISC pipeline
-   Complex instruction set computer
-   Computer architecture
-   Instruction set architecture
-   Microprocessor
-   Minimal instruction set computer


References


External links

-   -   -   -

Category:Classes of computers Reduced instruction set computer

[1]

[2]

[3]

[4]

[5]

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

[16]  As PDF

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26] _Funding a Revolution: Government Support for Computing Research_ by Committee on Innovations in Computing and Communications 1999 page 239

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35] [

[36]

[37]

[38]

[39] "Microprocessors From the Programmer's Perspective" by Andrew Schulman 1990

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]