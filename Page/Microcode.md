MICROCODE is a computer hardware technique that interposes a layer of organisation between the CPU hardware and the programmer-visible instruction set architecture of the computer.[1] As such, the microcode is a layer of hardware-level instructions that implement higher-level machine code instructions or internal state machine sequencing in many digital processing elements. Microcode is used in general-purpose central processing units, although in current desktop CPUs it is only a fallback path for cases that the faster hardwired control unit cannot handle.[2]

Microcode typically resides in special high-speed memory and translates machine instructions, state machine data or other input into sequences of detailed circuit-level operations. It separates the machine instructions from the underlying electronics so that instructions can be designed and altered more freely. It also facilitates the building of complex multi-step instructions, while reducing the complexity of computer circuits. Writing microcode is often called MICROPROGRAMMING and the microcode in a particular processor implementation is sometimes called a MICROPROGRAM.

More extensive microcoding allows small and simple microarchitectures to emulate more powerful architectures with wider word length, more execution units and so on, which is a relatively simple way to achieve software compatibility between different products in a processor family.

Some hardware vendors, especially IBM, use the term _microcode_ as a synonym for _firmware_. In that way, all code within a device is termed _microcode_ regardless of it being microcode or machine code; for example, hard disk drives are said to have their microcode updated, though they typically contain both microcode and firmware.[3]


Overview

The lowest layer in a computer's software stack is traditionally raw binary machine code instructions for the processor. Microcode sits one level below this. To avoid confusion, each microprogram-related element is differentiated by the _micro_ prefix: microinstruction, microassembler, microprogrammer, microarchitecture, etc.

Engineers normally write the microcode during the design phase of a processor, storing it in a read-only memory (ROM) or programmable logic array (PLA)[4] structure, or in a combination of both.[5] However, machines also exist that have some or all microcode stored in SRAM or flash memory. This is traditionally denoted as _writeable control store_ in the context of computers, which can be either read-only or read-write memory. In the latter case, the CPU initialization process loads microcode into the control store from another storage medium, with the possibility of altering the microcode to correct bugs in the instruction set, or to implement new machine instructions.

Complex digital processors may also employ more than one (possibly microcode-based) control unit in order to delegate sub-tasks that must be performed essentially asynchronously in parallel. A high-level programmer, or even an assembly programmer, does not normally see or change microcode. Unlike machine code, which often retains some backward compatibility among different processors in a family, microcode only runs on the exact electronic circuitry for which it is designed, as it constitutes an inherent part of the particular processor design itself.

Microprograms consist of series of microinstructions, which control the CPU at a very fundamental level of hardware circuitry. For example, a single typical _horizontal_ microinstruction might specify the following operations:

-   Connect register 1 to the _A_ side of the ALU
-   Connect register 7 to the _B_ side of the ALU
-   Set the ALU to perform two's-complement addition
-   Set the ALU's carry input to zero
-   Store the result value in register 8
-   Update the condition codes from the ALU status flags (_negative_, _zero_, _overflow_, and _carry_)
-   Microjump to microPC nnn for the next microinstruction

To simultaneously control all processor's features in one cycle, the microinstruction is often wider than 50 bits; e.g., 128 bits on a 360/85 with an emulator feature. Microprograms are carefully designed and optimized for the fastest possible execution, as a slow microprogram would result in a slow machine instruction and degraded performance for related application programs that use such instructions.


Justification

Microcode was originally developed as a simpler method of developing the control logic for a computer. Initially, CPU instruction sets were hardwired. Each step needed to fetch, decode, and execute the machine instructions (including any operand address calculations, reads, and writes) was controlled directly by combinational logic and rather minimal sequential state machine circuitry. While very efficient, the need for powerful instruction sets with multi-step addressing and complex operations (_see below_) made such hard-wired processors difficult to design and debug; highly encoded and varied-length instructions can contribute to this as well, especially when very irregular encodings are used.

Microcode simplified the job by allowing much of the processor's behaviour and programming model to be defined via microprogram routines rather than by dedicated circuitry. Even late in the design process, microcode could easily be changed, whereas hard-wired CPU designs were very cumbersome to change. Thus, this greatly facilitated CPU design.

From the 1940s to the late 1970s, a large portion of programming was done in assembly language; higher-level instructions mean greater programmer productivity, so an important advantage of microcode was the relative ease by which powerful machine instructions can be defined. The ultimate extension of this are "Directly Executable High Level Language" designs, in which each statement of a high-level language such as PL/I is entirely and directly executed by microcode, without compilation. The IBM Future Systems project and Data General Fountainhead Processor are examples of this. During the 1970s, CPU speeds grew more quickly than memory speeds and numerous techniques such as memory block transfer, memory pre-fetch and multi-level caches were used to alleviate this. High-level machine instructions, made possible by microcode, helped further, as fewer more complex machine instructions require less memory bandwidth. For example, an operation on a character string can be done as a single machine instruction, thus avoiding multiple instruction fetches.

Architectures with instruction sets implemented by complex microprograms included the IBM System/360 and Digital Equipment Corporation VAX. The approach of increasingly complex microcode-implemented instruction sets was later called CISC. An alternate approach, used in many microprocessors, is to use PLAs or ROMs (instead of combinational logic) mainly for instruction decoding, and let a simple state machine (without much, or any, microcode) do most of the sequencing. The MOS Technology 6502 is an example of a microprocessor using a PLA for instruction decode and sequencing. The PLA is visible in photomicrographs of the chip,[6] and its operation can be seen in the transistor-level simulation.

Microprogramming is still used in modern CPU designs. In some cases, after the microcode is debugged in simulation, logic functions are substituted for the control store. Logic functions are often faster and less expensive than the equivalent microprogram memory.

Benefits

A processor's microprograms operate on a more primitive, totally different, and much more hardware-oriented architecture than the assembly instructions visible to normal programmers. In coordination with the hardware, the microcode implements the programmer-visible architecture. The underlying hardware need not have a fixed relationship to the visible architecture. This makes it easier to implement a given instruction set architecture on a wide variety of underlying hardware micro-architectures.

The IBM System/360 has a 32-bit architecture with 16 general-purpose registers, but most of the System/360 implementations actually use hardware that implemented a much simpler underlying microarchitecture; for example, the System/360 Model 30 has 8-bit data paths to the arithmetic logic unit (ALU) and main memory and implemented the general-purpose registers in a special unit of higher-speed core memory, and the System/360 Model 40 has 8-bit data paths to the ALU and 16-bit data paths to main memory and also implemented the general-purpose registers in a special unit of higher-speed core memory. The Model 50 has full 32-bit data paths and implements the general-purpose registers in a special unit of higher-speed core memory.[7] The Model 65 through the Model 195 have larger data paths and implement the general-purpose registers in faster transistor circuits. In this way, microprogramming enabled IBM to design many System/360 models with substantially different hardware and spanning a wide range of cost and performance, while making them all architecturally compatible. This dramatically reduces the number of unique system software programs that must be written for each model.

A similar approach was used by Digital Equipment Corporation (DEC) in their VAX family of computers. As a result, different VAX processors use different microarchitectures, yet the programmer-visible architecture does not change.

Microprogramming also reduces the cost of field changes to correct defects (bugs) in the processor; a bug can often be fixed by replacing a portion of the microprogram rather than by changes being made to hardware logic and wiring.


History

In 1947, the design of the MIT Whirlwind introduced the concept of a control store as a way to simplify computer design and move beyond _ad hoc_ methods. The control store is a diode matrix: a two-dimensional lattice, where one dimension accepts "control time pulses" from the CPU's internal clock, and the other connects to control signals on gates and other circuits. A "pulse distributor" takes the pulses generated by the CPU clock and breaks them up into eight separate time pulses, each of which activates a different row of the lattice. When the row is activated, it activates the control signals connected to it.[8]

Described another way, the signals transmitted by the control store are being played much like a player piano roll. That is, they are controlled by a sequence of very wide words constructed of bits, and they are "played" sequentially. In a control store, however, the "song" is short and repeated continuously.

In 1951, Maurice Wilkes enhanced this concept by adding _conditional execution_, a concept akin to a conditional in computer software. His initial implementation consisted of a pair of matrices: the first one generated signals in the manner of the Whirlwind control store, while the second matrix selected which row of signals (the microprogram instruction word, so to speak) to invoke on the next cycle. Conditionals were implemented by providing a way that a single line in the control store could choose from alternatives in the second matrix. This made the control signals conditional on the detected internal signal. Wilkes coined the term MICROPROGRAMMING to describe this feature and distinguish it from a simple control store.


Examples

-   The EMIDEC 1100[9] reputedly uses a hard-wired control store consisting of wires threaded through ferrite cores, known as "the laces".
-   Most models of the IBM System/360 series are microprogrammed:
    -   The Model 25 is unique among System/360 models in using the top 16 K bytes of core storage to hold the control storage for the microprogram. The 2025 uses a 16-bit microarchitecture with seven control words (or microinstructions). At power up, or full system reset, the microcode is loaded from the card reader. The IBM 1410 emulation for this model is loaded this way.
    -   The Model 30 uses an 8-bit microarchitecture with only a few hardware registers; everything that the programmer saw is emulated by the microprogram. The microcode for this model is also held on special punched cards, which are stored inside the machine in a dedicated reader per card, called "CROS" units (Capacitor Read-Only Storage). A second CROS reader is installed for machines ordered with 1620 emulation.
    -   The Model 40 uses 56-bit control words. The 2040 box implements both the System/360 main processor and the multiplex channel (the I/O processor). This model uses "TROS" dedicated readers similar to "CROS" units, but with an inductive pickup (Transformer Read-only Store).
    -   The Model 50 has two internal datapaths which operated in parallel: a 32-bit datapath used for arithmetic operations, and an 8-bit data path used in some logical operations. The control store uses 90-bit microinstructions.
    -   The Model 85 has separate instruction fetch (I-unit) and execution (E-unit) to provide high performance. The I-unit is hardware controlled. The E-unit is microprogrammed; the control words are 108 bits wide on a basic 360/85 and wider if an emulator feature is installed.
-   The NCR 315 is microprogrammed with hand wired ferrite cores (a ROM) pulsed by a sequencer with conditional execution. Wires routed through the cores are enabled for various data and logic elements in the processor.
-   The Digital Equipment Corporation PDP-11 processors, with the exception of the PDP-11/20, are microprogrammed.[10]
-   Most Data General Eclipse minicomputers are microprogrammed. The task of writing microcode for the Eclipse MV/8000 is detailed in the Pulitzer Prize-winning book titled _The Soul of a New Machine_.
-   Many systems from Burroughs are microprogrammed:

:* The B700 "microprocessor" execute application-level opcodes using sequences of 16-bit microinstructions stored in main memory; each of these is either a register-load operation or mapped to a single 56-bit "nanocode" instruction stored in read-only memory. This allows comparatively simple hardware to act either as a mainframe peripheral controller or to be packaged as a standalone computer.

:* The B1700 is implemented with radically different hardware including bit-addressable main memory but has a similar multi-layer organisation. The operating system preloads the interpreter for whatever language is required. These interpreters present different virtual machines for COBOL, Fortran, etc.

-   Microdata produced computers in which the microcode is accessible to the user; this allows the creation of custom assembler level instructions. Microdata's Reality operating system design makes extensive use of this capability.
-   The Xerox Alto workstation used a microcoded design but, unlike many computers, the microcode engine is not hidden from the programmer in a layered design. Applications take advantage of this to accelerate performance.
-   The Nintendo 64's Reality Coprocessor (RCP), which serves as the console's graphics processing unit and audio processor, utilizes microcode; it is possible to implement new effects or tweak the processor to achieve the desired output. Some notable examples of custom RCP microcode include the high-resolution graphics, particle engines, and unlimited draw distances found in Factor 5's _Indiana Jones and the Infernal Machine_, _Star Wars: Rogue Squadron_, and _Star Wars: Battle for Naboo_;[11][12] and the full motion video playback found in Angel Studios' _Resident Evil 2_.[13]

-   The VU0 and VU1 vector units in the Sony PlayStation 2 are microprogrammable; in fact, VU1 is only accessible via microcode for the first several generations of the SDK.
-   The MicroCore Labs MCL86 , MCL51 and MCL65 are examples of highly encoded "vertical" microsequencer implementations of the Intel 8086/8088, 8051, and MOS 6502.


Implementation

Each microinstruction in a microprogram provides the bits that control the functional elements that internally compose a CPU. The advantage over a hard-wired CPU is that internal CPU control becomes a specialized form of a computer program. Microcode thus transforms a complex electronic design challenge (the control of a CPU) into a less complex programming challenge. To take advantage of this, a CPU is divided into several parts:

-   A microsequencer picks the next word of the control store. A sequencer is mostly a counter, but usually also has some way to jump to a different part of the control store depending on some data, usually data from the instruction register and always some part of the control store. The simplest sequencer is just a register loaded from a few bits of the control store.
-   A register set is a fast memory containing the data of the central processing unit. It may include the program counter, stack pointer, and other numbers that are not easily accessible to the application programmer. Often the register set is a triple-ported register file; that is, two registers can be read, and a third written at the same time.
-   An arithmetic and logic unit performs calculations, usually addition, logical negation, a right shift, and logical AND. It often performs other functions, as well.

There may also be a memory address register and a memory data register, used to access the main computer storage. Together, these elements form an "execution unit". Most modern CPUs have several execution units. Even simple computers usually have one unit to read and write memory, and another to execute user code. These elements could often be brought together as a single chip. This chip comes in a fixed width that would form a "slice" through the execution unit. These are known as "bit slice" chips. The AMD Am2900 family is one of the best known examples of bit slice elements. The parts of the execution units and the execution units themselves are interconnected by a bundle of wires called a bus.

Programmers develop microprograms, using basic software tools. A microassembler allows a programmer to define the table of bits symbolically. Because of its close relationship to the underlying architecture, "microcode has several properties that make it difficult to generate using a compiler."[14] A simulator program is intended to execute the bits in the same way as the electronics, and allows much more freedom to debug the microprogram. After the microprogram is finalized, and extensively tested, it is sometimes used as the input to a computer program that constructs logic to produce the same data. This program is similar to those used to optimize a programmable logic array. Even without fully optimal logic, heuristically optimized logic can vastly reduce the number of transistors from the number required for a ROM control store. This reduces the cost of producing, and the electricity consumed by, a CPU.

Microcode can be characterized as _horizontal_ or _vertical_, referring primarily to whether each microinstruction controls CPU elements with little or no decoding (horizontal microcode) or requires extensive decoding by combinatorial logic before doing so (vertical microcode). Consequently, each horizontal microinstruction is wider (contains more bits) and occupies more storage space than a vertical microinstruction.

Horizontal microcode

"Horizontal microcode has several discrete micro-operations that are combined in a single microinstruction for simultaneous operation."[15] Horizontal microcode is typically contained in a fairly wide control store; it is not uncommon for each word to be 108 bits or more. On each tick of a sequencer clock a microcode word is read, decoded, and used to control the functional elements that make up the CPU.

In a typical implementation a horizontal microprogram word comprises fairly tightly defined groups of bits. For example, one simple arrangement might be:

  ------------------- ------------------- ---------------------- ------------------------------------- -------------- --------------
  Register source A   Register source B   Destination register   Arithmetic and logic unit operation   Type of jump   Jump address
  ------------------- ------------------- ---------------------- ------------------------------------- -------------- --------------

For this type of micromachine to implement a JUMP instruction with the address following the opcode, the microcode might require two clock ticks. The engineer designing it would write microassembler source code looking something like this:

   # Any line starting with a number-sign is a comment
   # This is just a label, the ordinary way assemblers symbolically represent a 
   # memory address.
InstructionJUMP:
      # To prepare for the next instruction, the instruction-decode microcode has already
      # moved the program counter to the memory address register. This instruction fetches
      # the target address of the jump instruction from the memory word following the
      # jump opcode, by copying from the memory data register to the memory address register.
      # This gives the memory system two clock ticks to fetch the next 
      # instruction to the memory data register for use by the instruction decode.
      # The sequencer instruction "next" means just add 1 to the control word address.
   MDR, NONE, MAR,  COPY, NEXT, NONE
      # This places the address of the next instruction into the PC.
      # This gives the memory system a clock tick to finish the fetch started on the
      # previous microinstruction.
      # The sequencer instruction is to jump to the start of the instruction decode.
   MAR, 1, PC, ADD,  JMP,  InstructionDecode
      # The instruction decode is not shown, because it is usually a mess, very particular
      # to the exact processor being emulated. Even this example is simplified.
      # Many CPUs have several ways to calculate the address, rather than just fetching
      # it from the word following the op-code. Therefore, rather than just one
      # jump instruction, those CPUs have a family of related jump instructions.

For each tick it is common to find that only some portions of the CPU are used, with the remaining groups of bits in the microinstruction being no-ops. With careful design of hardware and microcode, this property can be exploited to parallelise operations that use different areas of the CPU; for example, in the case above, the ALU is not required during the first tick, so it could potentially be used to complete an earlier arithmetic instruction.

Vertical microcode

In vertical microcode, each microinstruction is significantly encoded that is, the bit fields generally pass through intermediate combinatory logic that, in turn, generates the actual control and sequencing signals for internal CPU elements (ALU, registers, etc.). This is in contrast with horizontal microcode, in which the bit fields themselves either directly produce the control and sequencing signals or are only minimally encoded. Consequently, vertical microcode requires smaller instruction lengths and less storage, but requires more time to decode, resulting in a slower CPU clock.[16]

Some vertical microcode is just the assembly language of a simple conventional computer that is emulating a more complex computer. Some processors, such as DEC Alpha processors and the CMOS microprocessors on later IBM System/390 mainframes and z/Architecture mainframes, have PALcode (the term used on Alpha processors) or millicode (the term used on IBM mainframe microprocessors). This is a form of machine code, with access to special registers and other hardware resources not available to regular machine code, used to implement some instructions and other functions, such as page table walks on Alpha processors.[17][18][19]

Another form of vertical microcode has two fields:

  -------------- -------------
  Field select   Field value
  -------------- -------------

The _field select_ selects which part of the CPU will be controlled by this word of the control store. The _field value_ actually controls that part of the CPU. With this type of microcode, a designer explicitly chooses to make a slower CPU to save money by reducing the unused bits in the control store; however, the reduced complexity may increase the CPU's clock frequency, which lessens the effect of an increased number of cycles per instruction.

As transistors became cheaper, horizontal microcode came to dominate the design of CPUs using microcode, with vertical microcode being used less often.

When both vertical and horizontal microcode are used, the horizontal microcode may be referred to as _nanocode_ or _picocode_.[20]


Writable control store

A few computers were built using "writable microcode". In this design, rather than storing the microcode in ROM or hard-wired logic, the microcode is stored in a RAM called a _writable control store_ or _WCS_. Such a computer is sometimes called a _writable instruction set computer_ or _WISC_.[21]

Many experimental prototype computers use writable control stores; there are also commercial machines that use writable microcode, such as the Burroughs Small Systems, early Xerox workstations, the DEC VAX 8800 ("Nautilus") family, the Symbolics L- and G-machines, a number of IBM System/360 and System/370 implementations, some DEC PDP-10 machines,[22] and the Data General Eclipse MV/8000.[23]

Many more machines offer user-programmable writable control stores as an option, including the HP 2100, DEC PDP-11/60 and Varian Data Machines V-70 series minicomputers. The IBM System/370 includes a facility called _Initial-Microprogram Load_ (_IML_ or _IMPL_)[24] that can be invoked from the console, as part of _power-on reset_ (_POR_) or from another processor in a tightly coupled multiprocessor complex.

Some commercial machines, for example IBM 360/85,[25][26] have both a read-only storage and a writable control store for microcode.

WCS offers several advantages including the ease of patching the microprogram and, for certain hardware generations, faster access than ROMs can provide. User-programmable WCS allows the user to optimize the machine for specific purposes.

Starting with the Pentium Pro in 1995, several x86 CPUs have writable Intel Microcode.[27][28] This, for example, has allowed bugs in the Intel Core 2 and Intel Xeon microcodes to be fixed by patching their microprograms, rather than requiring the entire chips to be replaced. A second prominent example is the set of microcode patches that Intel offered for some of their processor architectures of up to 10 years in age, in a bid to counter the security vulnerabilities discovered in their designs - Spectre and Meltdown - which went public at the start of 2018.[29][30] A microcode update can be installed by Linux,[31] FreeBSD,[32] Microsoft Windows,[33] or the motherboard BIOS.[34]


Comparison to VLIW and RISC

The design trend toward heavily microcoded processors with complex instructions began in the early 1960s and continued until roughly the mid-1980s. At that point the RISC design philosophy started becoming more prominent.

A CPU that uses microcode generally takes several clock cycles to execute a single instruction, one clock cycle for each step in the microprogram for that instruction. Some CISC processors include instructions that can take a very long time to execute. Such variations interfere with both interrupt latency and, what is far more important in modern systems, pipelining.

When designing a new processor, a hardwired control RISC has the following advantages over microcoded CISC:

-   Programming has largely moved away from assembly level, so it's no longer worthwhile to provide complex instructions for productivity reasons.
-   Simpler instruction sets allow direct execution by hardware, avoiding the performance penalty of microcoded execution.
-   Analysis shows complex instructions are rarely used, hence the machine resources devoted to them are largely wasted.
-   The machine resources devoted to rarely used complex instructions are better used for expediting performance of simpler, commonly used instructions.
-   Complex microcoded instructions may require many clock cycles that vary, and are difficult to pipeline for increased performance.

There are counterpoints as well:

-   The complex instructions in heavily microcoded implementations may not take much extra machine resources, except for microcode space. For instance, the same ALU is often used to calculate an effective address as well as computing the result from the actual operands (e.g., the original Z80, 8086, and others).
-   The simpler non-RISC instructions (i.e., involving direct memory operands) are frequently used by modern compilers. Even immediate to stack (i.e., memory result) arithmetic operations are commonly employed. Although such memory operations, often with varying length encodings, are more difficult to pipeline, it is still fully feasible to do so - clearly exemplified by the i486, AMD K5, Cyrix 6x86, Motorola 68040, etc.
-   Non-RISC instructions inherently perform more work per instruction (on average), and are also normally highly encoded, so they enable smaller overall size of the same program, and thus better use of limited cache memories.

Many RISC and VLIW processors are designed to execute every instruction (as long as it is in the cache) in a single cycle. This is very similar to the way CPUs with microcode execute one microinstruction per cycle. VLIW processors have instructions that behave similarly to very wide horizontal microcode, although typically without such fine-grained control over the hardware as provided by microcode. RISC instructions are sometimes similar to the narrow vertical microcode.

Microcoding has been popular in application-specific processors such as network processors, microcontrollers, digital signal processors, channel controllers, disk controllers, network interface controllers, graphics processing units, and in other hardware.


Micro Ops

Modern CISC implementations, such as the x86 family, decode instructions into dynamically buffered micro-operations ("μops") with an instruction encoding similar to RISC or traditional microcode. A hardwired instruction decode unit directly emits μops for common x86 instructions, but falls back to a more traditional microcode ROM for more complex or rarely used instructions.[35]

For example, an x86 might look up μops from microcode to handle complex multistep operations such as loop or string instructions, floating point unit transcendental functions or unusual values such as denormal numbers, and special purpose instructions such as CPUID.


See also

-   Address generation unit (AGU)
-   CPU design
-   Finite-state machine (FSM)
-   Firmware
-   Floating-point unit (FPU)
-   Instruction pipeline
-   MikroSim
-   Millicode
-   Superscalar


Notes


References


Further reading

-   -   -   -   -   -


External links

-   Writable Instruction Set Computer
-   Capacitor Read-only Store
-   Transformer Read-only Store
-   A Brief History of Microprogramming
-   Intel processor microcode security update (fixes the issues when running 32-bit virtual machines in PAE mode)
-   Notes on Intel Microcode Updates, March 2013, by Ben Hawkes, archived from the original on September 7, 2015
-   Hole seen in Intel's bug-busting feature, _EE Times_, 2002, by Alexander Wolfe, archived from the original on March 9, 2003
-   Opteron Exposed: Reverse Engineering AMD K8 Microcode Updates, July 26, 2004

Category:Instruction processing Category:Firmware Category:Central processing unit

[1]

[2]

[3]

[4]

[5] Often denoted a ROM/PLA control store in the context of usage in a CPU;

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

[21] "Writable instruction set, stack oriented computers: The WISC Concept" article by Philip Koopman Jr. 1987

[22]

[23]

[24]

[25]

[26]

[27]

[28] "Intel(R) 64 and IA-32 Architectures Software Developer’s Manual", Volume 3A: System Programming Guide, Part 1, chapter 9.11: "Microcode update facilities", December 2009.

[29] Intel Patches All Recent CPUs, Promises Hardware Fixes For Upcoming 8th Gen Chips by Paul Alcorn on March 15, 2018

[30]

[31]

[32]

[33] "A microcode reliability update is available that improves the reliability of systems that use Intel processors"

[34]

[35]