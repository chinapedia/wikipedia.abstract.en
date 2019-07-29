MIPS (MICROPROCESSOR WITHOUT INTERLOCKED PIPELINED STAGES)[1] is a reduced instruction set computer (RISC) instruction set architecture (ISA)[2][3] developed by MIPS Computer Systems, now MIPS Technologies, based in the United States.

There are multiple versions of MIPS: including MIPS I, II, III, IV, and V; as well as five releases of MIPS32/64 (for 32- and 64-bit implementations, respectively). The early MIPS architectures were 32-bit only; 64-bit versions were developed later. As of April 2017, the current version of MIPS is MIPS32/64 Release 6.[4][5] MIPS32/64 primarily differs from MIPS I–V by defining the privileged kernel mode System Control Coprocessor in addition to the user mode architecture.

Computer architecture courses in universities and technical schools often study the MIPS architecture.[6] The architecture greatly influenced later RISC architectures such as Alpha.

As of April 2017, MIPS processors are used in embedded systems such as residential gateways and routers. Originally, MIPS was designed for general-purpose computing. During the 1980s and 1990s, MIPS processors for personal, workstation, and server computers were used by many companies such as Digital Equipment Corporation, MIPS Computer Systems, NEC, Pyramid Technology, SiCortex, Siemens Nixdorf, Silicon Graphics, and Tandem Computers. Historically, video game consoles such as the Nintendo 64, Sony PlayStation, PlayStation 2, and PlayStation Portable used MIPS processors. MIPS processors also used to be popular in supercomputers during the 1990s, but all such systems have dropped off the TOP500 list. These uses were complemented by embedded applications at first, but during the 1990s, MIPS became a major presence in the embedded processor market, and by the 2000s, most MIPS processors were for these applications. In the mid- to late-1990s, it was estimated that one in three RISC microprocessors produced was a MIPS processor.[7]

MIPS is a modular architecture supporting up to four coprocessors (CP0/1/2/3). In MIPS terminology, CP0 is the System Control Coprocessor (an essential part of the processor that is implementation-defined in MIPS I–V), CP1 is an optional floating-point unit (FPU) and CP2/3 are optional implementation-defined coprocessors (MIPS III removed CP3 and reused its opcodes for other purposes). For example, in the PlayStation video game console, CP2 is the Geometry Transformation Engine (GTE), which accelerates the processing of geometry in 3D computer graphics.

The MIPS architecture has several optional extensions. MIPS-3D which is a simple set of floating-point SIMD instructions dedicated to common 3D tasks,[8] MDMX (MaDMaX) which is a more extensive integer SIMD instruction set using the 64-bit floating-point registers, MIPS16e which adds compression to the instruction stream to make programs take up less room,[9] and MIPS MT, which adds multithreading capability.[10]

In December 2018, Wave Computing, the new owner[11] of the MIPS architecture (see MIPS Technologies), announced that MIPS ISA will be open-sourced in a program dubbed the MIPS Open initiative. The program being planned for 2019 is intended to open up access to the most recent versions of both the 32-bit and 64-bit designs making them available without any licensing or royalty fees as well as granting participants licenses to existing MIPS patents.[12][13][14][15]


MIPS I

The first version of the MIPS architecture was designed by MIPS Computer Systems for its R2000 microprocessor, the first MIPS implementation. Both MIPS and the R2000 were introduced together in 1985. When MIPS II was introduced, _MIPS_ was renamed _MIPS I_ to distinguish it from the new version.[16]

MIPS is a load/store architecture (also known as a _register-register architecture_); except for the load/store instructions used to access memory, all instructions operate on the registers.

Registers

MIPS I has thirty-two 32-bit general-purpose registers (GPR). Register $0 is hardwired to zero and writes to it are discarded. Register $31 is the link register. For integer multiplication and division instructions, which run asynchronously from other instructions, a pair of 32-bit registers, _HI_ and _LO_, are provided. There is a small set of instructions for copying data between the general-purpose registers and the HI/LO registers.

The program counter has 32 bits. The two low-order bits always contain zero since MIPS I instructions are 32 bits long and are aligned to their natural word boundaries.

Instruction formats

Instructions are divided into three types: R, I and J. Every instruction starts with a 6-bit opcode. In addition to the opcode, R-type instructions specify three registers, a shift amount field, and a function field; I-type instructions specify two registers and a 16-bit immediate value; J-type instructions follow the opcode with a 26-bit jump target.[17]

The following are the three formats used for the core instruction set:

  Type   -31-                                 format (bits)                                 -0-
  ------ ----------------------------------------------------------------------------------------
  R      opcode (6)
  I      opcode (6)
  J      opcode (6)

CPU instructions

Loads and stores

MIPS I has instructions that load and store 8-bit bytes, 16-bit halfwords, and 32-bit words. Only one addressing mode is supported: base + displacement. Since MIPS I is a 32-bit architecture, loading quantities fewer than 32 bits requires the datum to be either signed- or zero-extended to 32 bits. The load instructions suffixed by "unsigned" perform zero extension; otherwise sign extension is performed. Load instructions source the base from the contents of a GPR (rs) and write the result to another GPR (rt). Store instructions source the base from the contents of a GPR (rs) and the store data from another GPR (rt). All load and store instructions compute the memory address by summing the base with the sign-extended 16-bit immediate. MIPS I requires all memory accesses to be aligned to their natural word boundaries, otherwise an exception is signaled. To support efficient unaligned memory accesses, there are load/store word instructions suffixed by "left" or "right". All load instructions are followed by a load delay slot. The instruction in the load delay slot cannot use the data loaded by the load instruction. The load delay slot can be filled with an instruction that is not dependent on the load; a nop is substituted if such an instruction cannot be found.

  Instruction name         Mnemonic   Format   Encoding
  ------------------------ ---------- -------- ----------
  Load Byte                LB         I        32₁₀
  Load Halfword            LH         I        33₁₀
  Load Word Left           LWL        I        34₁₀
  Load Word                LW         I        35₁₀
  Load Byte Unsigned       LBU        I        36₁₀
  Load Halfword Unsigned   LHU        I        37₁₀
  Load Word Right          LWR        I        38₁₀
  Store Byte               SB         I        40₁₀
  Store Halfword           SH         I        41₁₀
  Store Word Left          SWL        I        42₁₀
  Store Word               SW         I        43₁₀
  Store Word Right         SWR        I        46₁₀

ALU

MIPS I has instructions to perform addition and subtraction. These instructions source their operands from two GPRs (rs and rt), and write the result to a third GPR (rd). Alternatively, addition can source one of the operands from a 16-bit immediate (which is sign-extended to 32 bits). The instructions for addition and subtraction have two variants: by default, an exception is signaled if the result overflows; instructions with the "unsigned" suffix do not signal an exception. The overflow check interprets the result as a 32-bit two's complement integer.

MIPS I has instructions to perform bitwise logical AND, OR, XOR, and NOR. These instructions source their operands from two GPRs and write the result to a third GPR. The AND, OR, and XOR instructions can alternatively source one of the operands from a 16-bit immediate (which is zero-extended to 32 bits).

The Set on _relation_ instructions write one or zero to the destination register if the specified relation is true or false. These instructions source their operands from two GPRs or one GPR and a 16-bit immediate (which is sign-extended to 32 bits), and write the result to a third GPR. By default, the operands are interpreted as signed integers. The variants of these instructions that are suffixed with "unsigned" interpret the operands as unsigned integers (even those that source an operand from the sign-extended 16-bit immediate).

The Load Immediate Upper instruction copies the 16-bit immediate into the high-order 16 bits of a GPR. It is used in conjunction with the Or Immediate instruction to load a 32-bit immediate into a register.

  Instruction name                      Mnemonic   Format   Encoding
  ------------------------------------- ---------- -------- ----------
  Add                                   ADD        R        0₁₀
  Add Unsigned                          ADDU       R        0₁₀
  Subtract                              SUB        R        0₁₀
  Subtract Unsigned                     SUBU       R        0₁₀
  And                                   AND        R        0₁₀
  Or                                    OR         R        0₁₀
  Exclusive Or                          XOR        R        0₁₀
  Nor                                   NOR        R        0₁₀
  Set on Less Than                      SLT        R        0₁₀
  Set on Less Than Unsigned             SLTU       R        0₁₀
  Add Immediate                         ADDI       I        8₁₀
  Add Immediate Unsigned                ADDIU      I        9₁₀
  Set on Less Than Immediate            SLTI       I        10₁₀
  Set on Less Than Immediate Unsigned   SLTIU      I        11₁₀
  And Immediate                         ANDI       I        12₁₀
  Or Immediate                          ORI        I        13₁₀
  Exclusive Or Immediate                XORI       I        14₁₀
  Load Upper Immediate                  LUI        I        15₁₀

Shifts

MIPS I has instructions to perform left and right logical shifts and right arithmetic shifts. The operand is obtained from a GPR (rt), and the result is written to another GPR (rd). The shift distance is obtained from either a GPR (rs) or a 5-bit "shift amount" (the "sa" field).

  Instruction name                  Mnemonic   Format   Encoding
  --------------------------------- ---------- -------- ----------
  Shift Left Logical                SLL        R        0₁₀
  Shift Right Logical               SRL        R        0₁₀
  Shift Right Arithmetic            SRA        R        0₁₀
  Shift Left Logical Variable       SLLV       R        0₁₀
  Shift Right Logical Variable      SRLV       R        0₁₀
  Shift Right Arithmetic Variable   SRAV       R        0₁₀

Multiplication and division

MIPS I has instructions for signed and unsigned integer multiplication and division. These instructions source their operands from two GPRs and write their results to a pair of 32-bit registers called HI and LO, since they may execute separately from (and concurrently with) the other CPU instructions. For multiplication, the high- and low-order halves of the 64-bit product is written to HI and LO (respectively). For division, the quotient is written to LO and the remainder to HI. To access the results, a pair of instructions (Move from HI and Move from LO) is provided to copy the contents of HI or LO to a GPR. These instructions are interlocked: reads of HI and LO do not proceed past an unfinished arithmetic instruction that will write to HI and LO. Another pair of instructions (Move to HI or Move to LO) copies the contents of a GPR to HI and LO. These instructions are used to restore HI and LO to their original state after exception handling. Instructions that read HI or LO must be separated by two instructions that do not write to HI or LO.

  Instruction name    Mnemonic   Format   Encoding
  ------------------- ---------- -------- ----------
  Move from HI        MFHI       R        0₁₀
  Move to HI          MTHI       R        0₁₀
  Move from LO        MFLO       R        0₁₀
  Move to LO          MTLO       R        0₁₀
  Multiply            MULT       R        0₁₀
  Multiply Unsigned   MULTU      R        0₁₀
  Divide              DIV        R        0₁₀
  Divide Unsigned     DIVU       R        0₁₀

Jump and branch

All MIPS I control flow instructions are followed by a branch delay slot. Unless the branch delay slot is filled by an instruction performing useful work, an nop is substituted. MIPS I branch instructions compare the contents of a GPR (rs) against zero or another GPR (rt) as signed integers and branch if the specified condition is true. Control is transferred to the address computed by shifting the 16-bit offset left by two bits, sign-extending the 18-bit result, and adding the 32-bit sign-extended result to the sum of the program counter (instruction address) and 8₁₀. Jumps have two versions: absolute and register-indirect. Absolute jumps ("Jump" and "Jump and Link") compute the address control is transferred to by shifting the 26-bit instr_index left by two bits and concatenating the 28-bit result with the four high-order bits of the address of the instruction in the branch delay slot. Register-indirect jumps transfer control to the instruction at the address sourced from a GPR (rs). The address sourced from the GPR must be word-aligned, else an exception is signaled after the instruction in the branch delay slot is executed. Branch and jump instructions that link (except for "Jump and Link Register") save the return address to GPR 31. The "Jump and Link Register" instruction permits the return address to be saved to any writable GPR.

  Instruction name                                   Mnemonic   Format   Encoding
  -------------------------------------------------- ---------- -------- ----------
  Jump Register                                      JR         R        0₁₀
  Jump and Link Register                             JALR       R        0₁₀
  Branch on Less Than Zero                           BLTZ       I        1₁₀
  Branch on Greater Than or Equal to Zero            BGEZ       I        1₁₀
  Branch on Less Than Zero and Link                  BLTZAL     I        1₁₀
  Branch on Greater Than or Equal to Zero and Link   BGEZAL     I        1₁₀
  Jump                                               J          J        2₁₀
  Jump and Link                                      JAL        J        3₁₀
  Branch on Equal                                    BEQ        I        4₁₀
  Branch on Not Equal                                BNE        I        5₁₀
  Branch on Less Than or Equal to Zero               BLEZ       I        6₁₀
  Branch on Greater Than Zero                        BGTZ       I        7₁₀

Exception

MIPS I has two instructions for software to signal an exception: System Call and Breakpoint. System Call is used by user mode software to make kernel calls; and Breakpoint is used to transfer control to a debugger via the kernel's exception handler. Both instructions have a 20-bit Code field that can contain operating environment-specific information for the exception handler.

  Instruction name   Mnemonic   Format   Encoding
  ------------------ ---------- -------- ----------
  System Call        SYSCALL    ?        0₁₀
  Breakpoint         BREAK      ?        0₁₀

FPU instructions

MIPS has 32 floating-point registers. Two registers are paired for double precision numbers. Odd numbered registers cannot be used for arithmetic or branching, just as part of a double precision register pair, resulting in 16 usable registers for most instructions (moves/copies and loads/stores were not affected).

Arithmetic

  Name                                         Instruction syntax   Meaning              opcode   rs    rt   rd   sham   funct
  -------------------------------------------- -------------------- -------------------- -------- ----- ---- ---- ------ -------
  Floating-Point Add                           add.s $x,$y,$z       $x = $y + $z         17₁₀     0₁₀   $z   $y   $x     0₁₀
  Floating-Point Subtract                      sub.s $x,$y,$z       $x = $y - $z         17₁₀     0₁₀   $z   $y   $x     1₁₀
  Floating-Point Multiply                      mul.s $x,$y,$z       $x = $y * $z         17₁₀     0₁₀   $z   $y   $x     2₁₀
  Floating-Point Divide                        div.s $x,$y,$z       $x = $y / $z         17₁₀     0₁₀   $z   $y   $x     3₁₀
  Floating-Point Add                           add.d $x,$y,$z       $x = $y + $z         17₁₀     1₁₀   $z   $y   $x     0₁₀
  Floating-Point Subtract                      sub.d $x,$y,$z       $x = $y - $z         17₁₀     1₁₀   $z   $y   $x     1₁₀
  Floating-Point Multiply                      mul.d $x,$y,$z       $x = $y * $z         17₁₀     1₁₀   $z   $y   $x     2₁₀
  Floating-Point Divide                        div.d $x,$y,$z       $x = $y / $z         17₁₀     1₁₀   $z   $y   $x     3₁₀
  Floating-Point Compare (eq,ne,lt,le,gt,ge)   c.lt.s $f2,$f4       cond = ($f2 < $f4)
  Floating-Point Compare (eq,ne,lt,le,gt,ge)   c.lt.d $f2,$f4       cond = ($f2 < $f4)

Single precision is denoted by the .s suffix, while double precision is denoted by the .d suffix.

Data transfer

  Name                     Instruction syntax   Meaning                                                Format   opcode   funct   Notes/Encoding
  ------------------------ -------------------- ------------------------------------------------------ -------- -------- ------- ----------------------------------------------------------------------------------------------------
  Load word coprocessor    lwcZ $x,CONST ($y)   Coprocessor[Z].DataRegister[$x] = Memory[$y + CONST]   I                         Loads the 4 byte word stored from: MEM[$y+CONST] into a Coprocessor data register. Sign extension.
  Store word coprocessor   swcZ $x,CONST ($y)   Memory[$y + CONST] = Coprocessor[Z].DataRegister[$x]   I                         Stores the 4 byte word held by a Coprocessor data register into: MEM[$y+CONST]. Sign extension.

Branch

+--------------------+--------------------+---------+--------+--------+-------+-------------------------------------+
| Name               | Instruction syntax | Meaning | Format | opcode | funct | Notes/Encoding                      |
+====================+====================+=========+========+========+=======+=====================================+
| Branch on FP True  | bc1t 100           |         |        |        |       | PC relative branch if FP condition  |
+--------------------+--------------------+---------+--------+--------+-------+-------------------------------------+
| Branch on FP False | bc1f 100           |         |        |        |       | PC relative branch if not condition |
+--------------------+--------------------+---------+--------+--------+-------+-------------------------------------+


MIPS II

MIPS II removed the load delay slot[18] and added several sets of instructions. For shared-memory multiprocessing, the _Synchronize Shared Memory_, _Load Linked Word_, and _Store Conditional Word_ instructions were added. A set of Trap-on-Condition instructions were added. These instructions caused an exception if the evaluated condition is true. All existing branch instructions were given _branch-likely_ versions that executed the instruction in the branch delay slot only if the branch is taken.[19] These instructions improve performance in certain cases by allowing useful instructions to fill the branch delay slot.[20] Doubleword load and store instructions for COP1–3 were added. Consistent with other memory access instructions, these loads and stores required the doubleword to be naturally aligned.

The instruction set for the floating point coprocessor also had several instructions added to it. An IEEE 754-compliant floating-point square root instruction was added. It supported both single- and double-precision operands. A set of instructions that converted single- and double-precision floating-point numbers to 32-bit words were added. These complemented the existing conversion instructions by allowing the IEEE rounding mode to be specified by the instruction instead of the Floating Point Control and Status Register.

MIPS Computer Systems' R6000 microprocessor (1989) is the first MIPS II implementation.[21] Designed for servers, the R6000 was fabricated and sold by Bipolar Integrated Technology, but was a commercial failure. During the mid-1990s, many new 32-bit MIPS processors for embedded systems were MIPS II implementations because the introduction of the 64-bit MIPS III architecture in 1991 left MIPS II as the newest 32-bit MIPS architecture until MIPS32 was introduced in 1999.A[22]

  Name                                                      Mnemonic
  --------------------------------------------------------- ----------
  Synchronize Shared Memory                                 SYNC
  Trap if Greater Than or Equal                             TGE
  Trap if Greater Than or Equal Unsigned                    TGEU
  Trap if Less Than                                         TLT
  Trap if Less Than Unsigned                                TLTU
  Trap if Equal                                             TEQ
  Trap if Not Equal                                         TNE
  Branch on Less Than or Equal to Zero Likely               BLEZL
  Branch on Greater Than or Equal to Zero Likely            BGEZL
  Trap if Greater Than or Equal Immediate                   TGEI
  Trap if Greater Than or Equal Unsigned Immediate          TGEIU
  Trap if Less Than Immediate                               TLTI
  Trap if Less Than Unsigned Immediate                      TLTIU
  Trap if Equal Immediate                                   TEQI
  Trap if Not Equal Immediate                               TNEI
  Branch on Less Than Zero and Link Likely                  BLTZALL
  Branch on Greater Than or Equal to Zero and Link Likely   BGEZAL
  Floating-Point Square Root                                SQRT.S
  Floating-Point Square Root                                SQRT.D
  Floating-Point Round to Word Fixed-Point                  ROUND.S
  Floating-Point Round to Word Fixed-Point                  ROUND.D
  Floating-Point Truncate to Word Fixed-Point               TRUNC.S
  Floating-Point Truncate to Word Fixed-Point               TRUNC.D
  Floating-Point Ceiling to Word Fixed-Point                CEIL.S
  Floating-Point Ceiling to Word Fixed-Point                CEIL.D
  Floating-Point Ceiling to Word Fixed-Point                FLOOR.S
  Floating-Point Ceiling to Word Fixed-Point                FLOOR.D
  Branch on FP False Likely                                 BC1FL
  Branch on FP True Likely                                  BC1TL
  Branch on Equal Likely                                    BEQL
  Branch on Not Equal Likely                                BNEL
  Branch on Less Than Zero Likely                           BLTZL
  Branch on Greater Than Zero Likely                        BGTZL
  Load Linked                                               LL
  Load Doubleword to Coprocessor 1                          LDC1
  Load Doubleword to Coprocessor 2                          LDC2
  Load Doubleword to Coprocessor 3                          LDC3
  Store Conditional                                         SC
  Store Doubleword to Coprocessor 1                         SDC1
  Store Doubleword to Coprocessor 2                         SDC2
  Store Doubleword to Coprocessor 3                         SDC3

  : Instructions added to MIPS II[23]


MIPS III

MIPS III is a backwards-compatible extension of MIPS II that added support for 64-bit memory addressing and integer operations. The 64-bit data type is called a doubleword, and MIPS III extended the general-purpose registers, HI/LO registers, and program counter to 64 bits to support it. New instructions were added to load and store doublewords, to perform integer addition, subtraction, multiplication, division, and shift operations on them, and to move doubleword between the GPRs and HI/LO registers. Existing instructions originally defined to operate on 32-bit words were redefined, where necessary, to sign-extend the 32-bit results to permit words and doublewords to be treated identically by most instructions. Among those instructions redefined was _Load Word_. In MIPS III it sign-extends words to 64 bits. To complement _Load Word_, a version that zero-extends was added.

The R instruction format's inability to specify the full shift distance for 64-bit shifts (its 5-bit shift amount field is too narrow to specify the shift distance for doublewords) required MIPS III to provide three 64-bit versions of each MIPS I shift instruction. The first version is a 64-bit version of the original shift instructions, used to specify constant shift distances of 0–31 bits. The second version is similar to the first, but adds 32₁₀ the shift amount field's value so that constant shift distances of 32–64 bits can be specified. The third version obtains the shift distance from the six low-order bits of a GPR.

MIPS III added a _supervisor_ privilege level in between the existing kernel and user privilege levels. This feature only affected the implementation-defined System Control Processor (Coprocessor 0).

  Instruction name                             Mnemonic   Format   Encoding
  -------------------------------------------- ---------- -------- ----------
  Doubleword Shift Left Logical Variable       DSLLV      R        0₁₀
  Doubleword Shift Right Logical Variable      DSRLV      R        0₁₀
  Doubleword Shift Right Arithmetic Variable   DSRAV      R        0₁₀
  Doubleword Multiply                          DMULT      R        0₁₀
  Doubleword Multiply Unsigned                 DMULTU     R        0₁₀
  Doubleword Divide                            DDIV       R        0₁₀
  Doubleword Divide Unsigned                   DDIVU      R        0₁₀
  Doubleword Add                               DADD       R        0₁₀
  Doubleword Add Unsigned                      DADDU      R        0₁₀
  Doubleword Subtract                          DSUB       R        0₁₀
  Doubleword Subtract Unsigned                 DSUBU      R        0₁₀
  Doubleword Shift Left Logical                DSLL       R        0₁₀
  Doubleword Shift Right Logical               DSRL       R        0₁₀
  Doubleword Shift Right Arithmetic            DSRA       R        0₁₀
  Doubleword Shift Left Logical + 32           DSLL32     R        0₁₀
  Doubleword Shift Right Logical + 32          DSRL32     R        0₁₀
  Doubleword Shift Right Logical + 32          DSRL32     R        0₁₀
  Doubleword Add Immediate                     DADDI      I        24₁₀
  Doubleword Add Immediate Unsigned            DADDIU     I        25₁₀
  Load Doubleword Left                         LDL        I        26₁₀
  Load Doubleword Right                        LDR        I        27₁₀
  Load Word Unsigned                           LWU        I        39₁₀
  Store Doubleword Left                        SDL        I        44₁₀
  Store Doubleword Right                       SDR        I        45₁₀
  Load-Linked Doubleword                       LLD        I        52₁₀
  Load Doubleword                              LD         I        55₁₀
  Store-Conditional Doubleword                 SCD        I        60₁₀
  Store Doubleword                             SD         I        63₁₀

  : CPU instructions added by MIPS III

MIPS III removed the Coprocessor 3 (CP3) support instructions, and reused its opcodes for the new doubleword instructions. The remaining coprocessors gained instructions to move doublewords between coprocessor registers and the GPRs. The floating general registers (FGRs) were extended to 64 bits and the requirement for instructions to use even-numbered register only was removed. This is incompatible with earlier versions of the architecture; a bit in the floating-point control/status register is used to operate the MIPS III floating-point unit (FPU) in a MIPS I- and II-compatible mode. The floating-point control registers were not extended for compatibility. The only new floating-point instructions added were those to copy doublewords between the CPU and FPU convert single- and double-precision floating-point numbers into doubleword integers and vice versa.

  Instruction name                   Mnemonic    Format   Encoding
  ---------------------------------- ----------- -------- ----------
  Doubleword Move To Coprocessor 1   DMFC1       R        17₁₀
  Doubleword Move To Coprocessor 1   DMTC1       R        17₁₀
  Floating Point Round to Long       ROUND.L.S   R        17₁₀
  Floating Point Round to Long       ROUND.L.D   R        17₁₀
  Floating Point Truncate to Long    TRUNC.L.S   R        17₁₀
  Floating Point Truncate to Long    TRUNC.L.D   R        17₁₀
  Floating Point Ceiling to Long     CEIL.L.S    R        17₁₀
  Floating Point Ceiling to Long     CEIL.L.D    R        17₁₀
  Floating Point Floor to Long       FLOOR.L.S   R        17₁₀
  Floating Point Floor to Long       FLOOR.L.D   R        17₁₀
  Floating Point Convert to Single   CVT.S.L     R        17₁₀
  Floating Point Convert to Double   CVT.D.L     R        17₁₀
  Floating Point Convert to Long     CVT.L.S     R        17₁₀
  Floating Point Convert to Long     CVT.L.D     R        17₁₀

  : FPU instructions added by MIPS III

MIPS Computer Systems' R4000 microprocessor (1991) was the first MIPS III implementation. It was designed for use in personal, workstation, and server computers. MIPS Computer Systems aggressively promoted the MIPS architecture and R4000, establishing the Advanced Computing Environment (ACE) consortium to advance its Advanced RISC Computing (ARC) standard, which aimed to establish MIPS as the dominant personal computing platform. ARC found little success in personal computers, but the R4000 (and the R4400 derivative) were widely used in workstation and server computers, especially by its largest user, Silicon Graphics. Other uses of the R4000 included high-end embedded systems and supercomputers.

MIPS III was eventually implemented by a number of embedded microprocessors. Quantum Effect Design's R4600 (1993) and its derivatives was widely used in high-end embedded systems and low-end workstations and servers. MIPS Technologies' R4200 (1994), was designed for embedded systems, laptop, and personal computers. A derivative, the R4300i, fabricated by NEC Electronics, was used in the Nintendo 64 game console. The Nintendo 64, along with the PlayStation, were among the highest volume users of MIPS architecture processors in the mid-1990s.


MIPS IV

MIPS IV is the fourth version of the architecture. It is a superset of MIPS III and is compatible with all existing versions of MIPS. MIPS IV was designed to mainly improve floating-point (FP) performance. To improve access to operands, an indexed addressing mode (base + index, both sourced from GPRs) for FP loads and stores was added, as were prefetch instructions for performing memory prefetching and specifying cache hints (these supported both the base + offset and base + index addressing modes).

MIPS IV added several features to improve instruction-level parallelism. To alleviate the bottleneck caused by a single condition bit, seven condition code bits were added to the floating-point control and status register, bringing the total to eight. FP comparison and branch instructions were redefined so they could specify which condition bit was written or read (respectively); and the delay slot in between an FP branch that read the condition bit written to by a prior FP comparison was removed. Support for partial predication was added in the form of conditional move instructions for both GPRs and FPRs; and an implementation could choose between having precise or imprecise exceptions for IEEE 754 traps.

MIPS IV added several new FP arithmetic instructions for both single- and double-precision FPNs: fused-multiply add or subtract, reciprocal, and reciprocal square-root. The FP fused-multiply add or subtract instructions perform either one or two roundings (it is implementation-defined), to exceed or meet IEEE 754 accuracy requirements (respectively). The FP reciprocal and reciprocal square-root instructions do not comply with IEEE 754 accuracy requirements, and produce results that differ from the required accuracy by one or two units of last place (it is implementation defined). These instructions serve applications where instruction latency is more important than accuracy.

The first MIPS IV implementation was the MIPS Technologies R8000 microprocessor chipset (1994). The design of the R8000 began at Silicon Graphics, Inc. and it was only used in high-end workstations and servers for scientific and technical applications where high performance on large floating-point workloads was important. Later implementations were the MIPS Technologies R10000 (1996) and the Quantum Effect Devices R5000 (1996) and RM7000 (1998). The R10000, fabricated and sold by NEC Electronics and Toshiba, and its derivatives were used by NEC, Pyramid Technology, Silicon Graphics, Inc., and Tandem Computers (among others) in workstations, servers, and supercomputers. The R5000 and R7000 found use in high-end embedded systems, personal computers, and low-end workstations and servers. A derivative of the R5000 from Toshiba, the R5900, was used in Sony Computer Entertainment's Emotion Engine, which powered its PlayStation 2 game console.


MIPS V

Announced on October 21, 1996 at the Microprocessor Forum 1996 alongside the MIPS Digital Media Extensions (MDMX) extension, MIPS V was designed to improve the performance of 3D graphics transformations.[24] In the mid-1990s, a major use of non-embedded MIPS microprocessors were graphics workstations from SGI. MIPS V was completed by the integer-only MDMX extension to provide a complete system for improving the performance of 3D graphics applications.[25]

MIPS V implementations were never introduced. On May 12, 1997, SGI announced the "H1" ("Beast") and "H2" ("Capitan") microprocessors. The former was to have been the first MIPS V implementation, and was due to be introduced in the first half of 1999.[26] The "H1" and "H2" projects were later combined and were eventually canceled in 1998. While there have not been any MIPS V implementations, MIPS64 Release 1 (1999) was based on MIPS V and retains all of its features as an optional Coprocessor 1 (FPU) feature called Paired-Single.

MIPS V added a new data type, the Paired Single (PS), which consisted of two single-precision (32-bit) floating-point numbers stored in the existing 64-bit floating-point registers. Variants of existing floating-point instructions for arithmetic, compare and conditional move were added to operate on this data type in a SIMD fashion. New instructions were added for loading, rearranging and converting PS data.[27] It was the first instruction set to exploit floating-point SIMD with existing resources.[28]


MIPS32/MIPS64

When MIPS Technologies was spun-out of Silicon Graphics in 1998, it refocused on the embedded market. Up to MIPS V, each successive version was a strict superset of the previous version, but this property was found to be a problem, and the architecture definition was changed to define a 32-bit and a 64-bit architecture: MIPS32 and MIPS64. Both were introduced in 1999.[29] MIPS32 is based on MIPS II with some additional features from MIPS III, MIPS IV, and MIPS V; MIPS64 is based on MIPS V.[30] NEC, Toshiba and SiByte (later acquired by Broadcom) each obtained licenses for MIPS64 as soon as it was announced. Philips, LSI Logic, IDT, Raza Microelectronics, Inc., Cavium, Loongson Technology and Ingenic Semiconductor have since joined them.

MIPS32/MIPS64 Release 1

The first release of MIPS32, based on MIPS II, added conditional moves, prefetch instructions, and other features from the R4000 and R5000 families of 64-bit processors.[31] The first release of MIPS64 adds a MIPS32 mode to run 32-bit code.[32] The MUL and MADD (multiply-add) instructions, previously available in some implementations, were added to the MIPS32 and MIPS64 specifications, as were cache control instructions.[33]

MIPS32/MIPS64 Release 3

MIPS32/MIPS64 Release 5

Announced on December 6, 2012.[34] Release 4 was skipped because the number four is perceived as unlucky in many Asian cultures.[35]

MIPS32/MIPS64 Release 6

MIPS32/MIPS64 Release 6 in 2014 added[36] the following:

-   a new family of branches with no delay slot:
    -   unconditional branches (BC) and branch-and-link (BALC) with a 26-bit offset,
    -   conditional branch on zero/non-zero with a 21-bit offset,
    -   full set of signed and unsigned conditional branches compare between two registers (e.g. BGTUC) or a register against zero (e.g. BGTZC),
    -   full set of branch-and-link which compare a register against zero (e.g. BGTZALC).
-   index jump instructions with no delay slot designed to support large absolute addresses.
-   instructions to load 16-bit immediates at bit position 16, 32 or 48, allowing to easily generate large constants.
-   PC-relative load instructions, as well as address generation with large (PC-relative) offsets.
-   bit-reversal and byte-alignment instructions (previously only available with the DSP extension).
-   multiply and divide instructions redefined so that they use a single register for their result).
-   instructions generating truth values now generate all zeroes or all ones instead of just clearing/setting the 0-bit,
-   instructions using a truth value now only interpret all-zeroes as false instead of just looking at the 0-bit.

Removed infrequently used instructions:

-   some conditional moves
-   _branch likely_ instructions (deprecated in previous releases).
-   integer overflow trapping instructions with 16-bit immediate
-   integer accumulator instructions (together HI/LO registers, moved to the DSP Application-Specific Extension)
-   unaligned load instructions (LWL and LWR), (requiring that most ordinary loads and stores support misaligned access, possibly via trapping and with the addition of a new instruction (BALIGN))

Reorganized the instruction encoding, freeing space for future expansions.


microMIPS

The microMIPS32/64 architectures are supersets of the MIPS32 and MIPS64 architectures (respectively) designed to replace the MIPS16e ASE. A disadvantage of MIPS16e is that it requires a mode switch before any of its 16-bit instructions can be processed. microMIPS adds versions of the most-frequently used 32-bit instructions that are encoded as 16-bit instructions. This allows programs to intermix 16- and 32-bit instructions without having to switch modes. microMIPS was introduced alongside of MIPS32/64 Release 3, and each subsequent release of MIPS32/64 has a corresponding microMIPS32/64 version. A processor may implement microMIPS32/64 or both microMIPS32/64 and its corresponding MIPS32/64 subset. Starting with MIPS32/64 Release 6, support for MIPS16e ended, and microMIPS is the only form of code compression in MIPS.


Application-specific extensions

The base MIPS32 and MIPS64 architectures can be supplemented with a number of optional architectural extensions, which are collectively referred to as _application-specific extensions_ (ASEs). These ASEs provide features that improve the efficiency and performance of certain workloads, such as digital signal processing.

MIPS MCU

Enhancements for microcontroller applications. The MCU ASE (application-specific extension) has been developed to extend the interrupt controller support, reduce the interrupt latency and enhance the I/O peripheral control function typically required in microcontroller system designs.

-   Separate priority and vector generation
-   Supports up to 256 interrupts in EIC (External Interrupt Controller) mode and eight hardware interrupt pins
-   Provides 16-bit vector offset address
-   Pre-fetching of the interrupt exception vector
-   Automated Interrupt Prologue – adds hardware to save and update system status before the interrupt handling routine
-   Automated Interrupt Epilogue – restores the system state previously stored in the stack for returning from the interrupt.
-   Interrupt Chaining – supports the service of pending interrupts without the need to exit the initial interrupt routine, saving the cycles required to store and restore multiple active interrupts
-   Supports speculative pre-fetching of the interrupt vector address. Reduces the number of interrupt service cycles by overlapping memory accesses with pipeline flushes and exception prioritization
-   Includes atomic bit set/clear instructions which enables bits within an I/O register that are normally used to monitor or control external peripheral functions to be modified without interruption, ensuring the action is performed securely.

MIPS16

MIPS16 is an Application-Specific Extension for MIPS I through to V designed by LSI Logic and MIPS Technologies, announced on October 21, 1996 alongside its first implementation, the LSI Logic TinyRISC processor.[37] MIPS16 was subsequently licensed by NEC Electronics, Philips Semiconductors, and Toshiba (among others); and implemented as an extension to the MIPS I, II, an III architectures. MIPS16 decreases the size of application by up to 40% by using 16-bit instructions instead of 32-bit instructions' and also improves power efficiency, the instruction cache hit rate, and is equivalent in performance to its base architecture.[38] It is supported by hardware and software development tools from MIPS Technologies and other providers.

MIPS16e

MIPS16e is an improved version of MIPS16 first supported by MIPS32 and MIPS64 Release 1.

MIPS16e2

MIPS16e2 is an improved version of MIPS16 that is supported by MIPS32 and MIPS64 (up to Release 5). Release 6 replaced it with microMIPS.

MIPS DSP

The DSP ASE is an optional extension to the MIPS32/MIPS64 Release 2 and newer instruction sets which can be used to accelerate a large range of "media" computations—particularly audio and video. The DSP module comprises a set of instructions and state in the integer pipeline and requires minimal additional logic to implement in MIPS processor cores. Revision 2 of the ASE was introduced in the second half of 2006. This revision adds extra instructions to the original ASE, but is otherwise backwards-compatible with it.[39]

Unlike the bulk of the MIPS architecture, it's a fairly irregular set of operations, many chosen for a particular relevance to some key algorithm.

Its main novel features (vs original MIPS32):[40]

-   Saturating arithmetic (when a calculation overflows, deliver the representable number closest to the non-overflowed answer).
-   Fixed-point arithmetic on signed 32- and 16-bit fixed-point fractions with a range of -1 to +1 (these are widely called "Q31" and "Q15").
-   The existing integer multiplication and multiply-accumulate instructions, which deliver results into a double-size accumulator (called "hi/lo" and 64 bits on MIPS32 CPUs). The DSP ASE adds three more accumulators, and some different flavours of multiply-accumulate.
-   SIMD instructions operating on 4 x unsigned bytes or 2 x 16-bit values packed into a 32-bit register (the 64-bit variant of the DSP ASE supports larger vectors, too).
-   SIMD operations are basic arithmetic, shifts and some multiply-accumulate type operations.

To make use of MIPS DSP ASE, you may:

-   Hand-code in assembly language, which is the most time-consuming method of utilizing the MIPS DSP ASE, but can produce code with the highest performance.
-   Use asm macros supported by GCC that produce DSP instructions directly from C code.
-   Use intrinsics supported by GCC for the MIPS DSP ASE.
-   Use fixed-point data types and operators in C supported by GCC. The MIPS DSP ASE is the only processor architecture that supports fixed-point data types in a general-purpose processor.
-   Use auto-vectorization supported by GCC for loops via the optimization option -ftree-vectorize. The advantage of auto-vectorization is that the compiler can recognize scalar variables (which can be integer, fixed-point, or floating-point types) in order to utilize SIMD instructions automatically. In the ideal case, when auto-vectorization is used, there is no need to use SIMD variables explicitly.[41]

Linux 2.6.12-rc5 starting 2005-05-31 adds support for the DSP ASE. Note that to actually make use of the DSP ASE a toolchain which support this is required. GCC already has support for DSP and DSPr2.

MIPS SIMD architecture

Instruction set extensions designed to accelerate multimedia.

-   32 vector registers of 16 x 8-bit, 8 x 16-bit, 4 x 32-bit, and 2 x 64 bit vector elements
-   Efficient vector parallel arithmetic operations on integer, fixed-point and floating-point data
-   Operations on absolute value operands
-   Rounding and saturation options available
-   Full precision multiply and multiply-add
-   Conversions between integer, floating-point, and fixed-point data
-   Complete set of vector-level compare and branch instructions with no condition flag
-   Vector (1D) and array (2D) shuffle operations
-   Typed load and store instructions for endian-independent operation
-   IEEE Standard for Floating-Point Arithmetic 754-2008 compliant
-   Element precise floating-point exception signaling
-   Pre-defined scalable extensions for chips with more gates/transistors
-   Accelerates compute-intensive applications in conjunction with leveraging generic compiler support
-   Software-programmable solution for consumer electronics applications or functions not covered by dedicated hardware
-   Emerging data mining, feature extraction, image and video processing, and human-computer interaction applications
-   High-performance scientific computing

MIPS virtualization

Hardware supported virtualization technology.

MIPS multi-threading

Each multi-threaded MIPS core can support up to two VPEs (Virtual Processing Elements) which share a single pipeline as well as other hardware resources. However, since each VPE includes a complete copy of the processor state as seen by the software system, each VPE appears as a complete standalone processor to an SMP Linux operating system. For more fine-grained thread processing applications, each VPE is capable of supporting up to nine TCs allocated across two VPEs. The TCs share a common execution unit but each has its own program counter and core register files so that each can handle a thread from the software. The MIPS MT architecture also allows the allocation of processor cycles to threads, and sets the relative thread priorities with an optional Quality of Service (QoS) manager block. This enables two prioritization mechanisms that determine the flow of information across the bus. The first mechanism allows the user to prioritize one thread over another. The second mechanism is used to allocate a specified ratio of the cycles to specific threads over time. The combined use of both mechanisms allows effective allocation of bandwidth to the set of threads, and better control of latencies. In real-time systems, system-level determinism is very critical, and the QoS block facilitates improvement of the predictability of a system. Hardware designers of advanced systems may replace the standard QoS block provided by MIPS Technologies with one that is specifically tuned for their application.

Single-threaded microprocessors today waste many cycles while waiting to access memory, considerably limiting system performance. The use of multi-threading masks the effect of memory latency by increasing processor utilization. As one thread stalls, additional threads are instantly fed into the pipeline and executed, resulting in a significant gain in application throughput. Users can allocate dedicated processing bandwidth to real-time tasks resulting in a guaranteed Quality of Service (QoS). MIPS’ MT technology constantly monitors the progress of threads and dynamically takes corrective actions to meet or exceed the real-time requirements. A processor pipeline can achieve 80-90% utilization by switching threads during data-dependent stalls or cache misses. All of this leads to an improved mobile device user experience, as responsiveness is greatly increased.

SmartMIPS

SmartMIPS is an Application-Specific Extension (ASE) designed by Gemplus International and MIPS Technologies to improve performance and reduce memory consumption for smart card software. It is supported by MIPS32 only, since smart cards do not require the capabilities of MIPS64 processors. Few smart cards use SmartMIPS.

MDMX

MIPS-3D


Simulators

Open Virtual Platforms (OVP)[42] includes the freely available for non-commercial use simulator OVPsim, a library of models of processors, peripherals and platforms, and APIs which enable users to develop their own models. The models in the library are open source, written in C, and include the MIPS 4K, 24K, 34K, 74K, 1004K, 1074K, M14K, microAptiv, interAptiv, proAptiv 32-bit cores and the MIPS 64-bit 5K range of cores. These models are created and maintained by Imperas[43] and in partnership with MIPS Technologies have been tested and assigned the MIPS-Verified (tm) mark. Sample MIPS-based platforms include both bare metal environments and platforms for booting unmodified Linux binary images. These platforms–emulators are available as source or binaries and are fast, free for non-commercial usage, and are easy to use. OVPsim is developed and maintained by Imperas and is very fast (hundreds of million of instructions per second), and built to handle multicore homogeneous and heterogeneous architectures and systems.

There is a freely available MIPS32 simulator (earlier versions simulated only the R2000/R3000) called SPIM for use in education. EduMIPS64[44] is a GPL graphical cross-platform MIPS64 CPU simulator, written in Java/Swing. It supports a wide subset of the MIPS64 ISA and allows the user to graphically see what happens in the pipeline when an assembly program is run by the CPU.

MARS[45] is another GUI-based MIPS emulator designed for use in education, specifically for use with Hennessy's _Computer Organization and Design_.

WebMIPS[46] is a browser-based MIPS simulator with visual representation of a generic, pipelined processor. This simulator is quite useful for register tracking during step by step execution.

More advanced free emulators are available from the GXemul (formerly known as the mips64emul project) and QEMU projects. These emulate the various MIPS III and IV microprocessors in addition to entire computer systems which use them.

Commercial simulators are available especially for the embedded use of MIPS processors, for example Wind River Simics (MIPS 4Kc and 5Kc, PMC RM9000, QED RM7000, Broadcom/Netlogic ec4400, Cavium Octeon I), Imperas (all MIPS32 and MIPS64 cores), VaST Systems (R3000, R4000), and CoWare (the MIPS4KE, MIPS24K, MIPS25Kf and MIPS34K).

WepSIM[47] is a browser-based simulator where a subset of MIPS instructions are micro-programmed. This simulator is very useful in order to learn how a CPU works (microprogramming, MIPS routines, traps, interruptions, system calls, etc.).


See also

-   DLX, a very similar architecture designed by John L. Hennessy (MIPS' architect) for teaching purposes
-   List of MIPS architecture processors
-   MIPS architecture processors
-   Pipeline (computing)


References


Further reading

-   -   -   -


External links

-   MIPS Processors
-   MIPS Open
-   prpl Foundation (a non-profit foundation founded by Imagination Technologies to support the MIPS platform)
-   MIPS Architecture history diagram
-   Online MIPS emulator
-   MIPS Instructions - MIPS Instruction Set

Category:Advanced RISC Computing Category:Computer-related introductions in 1985 Category:Instruction set architectures Category:MIPS architecture Category:MIPS Technologies Category:Open microprocessors

[1]

[2] Price, Charles (September 1995). _MIPS IV Instruction Set_ (Revision 3.2), MIPS Technologies, Inc.

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

[26]

[27]

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

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]  (online demonstration) (source)

[47]