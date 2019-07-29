MMIX (pronounced _em-mix_) is a 64-bit reduced instruction set computing (RISC) architecture designed by Donald Knuth, with significant contributions by John L. Hennessy (who contributed to the design of the MIPS architecture) and Richard L. Sites (who was an architect of the Alpha architecture). Knuth has said that "MMIX is a computer intended to illustrate machine-level aspects of programming. In my books _The Art of Computer Programming_, it replaces MIX, the 1960s-style machine that formerly played such a role… I strove to design MMIX so that its machine language would be simple, elegant, and easy to learn. At the same time I was careful to include all of the complexities needed to achieve high performance in practice, so that MMIX could in principle be built and even perhaps be competitive with some of the fastest general-purpose computers in the marketplace."[1]


Architecture

MMIX is a big-endian 64-bit reduced instruction set computer (RISC), with 256 64-bit general-purpose registers, 32 64-bit special-purpose registers, fixed-length 32-bit instructions and a 64-bit virtual address space. The MMIX instruction set comprises 256 opcodes, one of which is reserved for future expansion. MMIX uses IEEE 754 floating-point numbers.

Instructions

All instructions have an associated mnemonic. For example, instruction #20 (32) is associated with ADD. Most instructions have the symbolic form "OP X,Y,Z", where OP specifies the sort of instruction, X specifies the register used to store the result of the instruction and the rest specify the operands of the instruction. Each of these fields is eight bits wide. For example, ADD $0,$1,3 means "Set $0 to the sum of $1 and 3."

Most instructions can take either immediate values or register contents; thus a single instruction mnemonic may correspond to one of two opcodes.

MMIX programs are typically constructed using the MMIXAL assembly language. The below is a simple MMIXAL program, which prints the string "Hello, world!":

            LOC   #100                   % Set the address of the program
                                         % initially to 0x100.

    Main    GETA  $255,string            % Put the address of the string
                                         % into register 255.

            TRAP  0,Fputs,StdOut         % Write the string pointed to by
                                         % register 255 to the standard
                                         % output file.

            TRAP  0,Halt,0               % End process.

    string  BYTE  "Hello, world!",#a,0   % String to be printed.  #a is
                                         % newline, 0 terminates the
                                         % string.

Registers

There are 256 directly addressable general-purpose architectural registers in an MMIX chip, designated by $0 through $255, and 32 special-purpose architectural registers. The special-purpose registers can be accessed with the GET and PUT instructions. Two of the special registers, rL and rG, determine which of the general registers are local and which are global. All registers from $0... are local registers, and represent a window into an internal stack of registers.[2] Registers from [rL]... are "marginal registers", they always return 0 if they are used as a source in an operation. Using a marginal register as the destination of an operation will cause the machine to automatically increase rL to include that register. All registers [rG]... $255 are called global registers, and are not part of the register stack.

Local register stack

The local register stack provides each subroutine with its own rL local registers, designated by $0 through . Whenever a subroutine is called, a number of local registers are pushed down the stack (by shifting the start of the window). The arguments of the called subroutine are left in the remaining local registers. When a subroutine finishes it pops the previously pushed registers. Because the internal stack can contain only a finite number of registers, it may be necessary to store a part of the stack in memory.[3] This is implemented with the special registers rO and rS which record which part of the local register stack is in memory and which part is still in local physical registers. The register stack provides for fast subroutine linkage.

Special registers

The 32 special physical architectural registers are as follows:

1.  RB, THE BOOTSTRAP REGISTER (TRIP)

        When tripping, rB ← $255 and $255 ← rJ. Thus saving rJ in a general register.

2.  RD, THE DIVIDEND REGISTER

        Unsigned integer divide uses this as the left half of the 128-bit input that is to be divided by the other operand.

3.  RE, THE EPSILON REGISTER

        Used for floating comparisons with respect to epsilon.

4.  RH, THE HIMULT REGISTER

        Used to store the left half of the 128-bit result of unsigned integer multiplication.

5.  RJ, THE RETURN-JUMP REGISTER

        Used to save the address of the next instruction by PUSHes and by POP to return from a PUSH.

6.  RM, THE MULTIPLEX MASK REGISTER

        Used by the multiplex instruction.

7.  RR, THE REMAINDER REGISTER

        Is set to the remainder of integer division.

8.  RBB, THE BOOTSTRAP REGISTER (TRAP)

        When trapping, rBB ← $255 and $255 ← rJ. Thus saving rJ in a general register

9.  RC, THE CYCLE COUNTER

        Incremented every cycle.

10. RN, THE SERIAL NUMBER

        A constant identifying this particular MMIX processor.

11. RO, THE REGISTER STACK OFFSET

        Used to implement the register stack.

12. RS, THE REGISTER STACK POINTER

        Used to implement the register stack.

13. RI, THE INTERVAL COUNTER

        Decremented every cycle. Causes an interrupt when zero.

14. RT, THE TRAP ADDRESS REGISTER

        Used to store the address of the trip vector.

15. RTT, THE DYNAMIC TRAP ADDRESS REGISTER

        Used to store the address of the trap vector.

16. RK, THE INTERRUPT MASK REGISTER

        Used to enable and disable specific interrupts.

17. RQ, THE INTERRUPT REQUEST REGISTER

        Used to record interrupts as they occur.

18. RU, THE USAGE COUNTER

        Used to keep a count of executed instructions.

19. RV, THE VIRTUAL TRANSLATION REGISTER

        Used to translate virtual addresses to physical addresses. Contains the size and number of segments, the root location of the page table and the address space number.

20. RG, THE GLOBAL THRESHOLD REGISTER

        All general registers references with a number greater or equal to rG refer to global registers.

21. RL, THE LOCAL THRESHOLD REGISTER

        All general registers references with a number smaller than rL refer to local registers.

22. RA, THE ARITHMETIC STATUS REGISTER

        Used to record, enable and disable arithmetic exception like overflow and divide by zero.

23. RF, THE FAILURE LOCATION REGISTER

        Used to store the address of the instruction that caused a failure.

24. RP, THE PREDICTION REGISTER

        Used by conditional swap (CSWAP).

25. RW, THE WHERE-INTERRUPTED REGISTER (TRIP)

        Used, when tripping, to store the address of the instruction after the one that was interrupted.

26. RX, THE EXECUTION REGISTER (TRIP)

        Used, when tripping, to store the instruction that was interrupted.

27. RY, THE Y OPERAND (TRIP)

        Used, when tripping, to store the Y operand of the interrupted instruction.

28. RZ, THE Z OPERAND (TRIP)

        Used, when tripping, to store the Z operand of the interrupted instruction.

29. RWW, THE WHERE-INTERRUPTED REGISTER (TRAP)

        Used, when trapping, to store the address of the instruction after the one that was interrupted.

30. RXX, THE EXECUTION REGISTER (TRAP)

        Used, when trapping, to store the instruction that was interrupted.

31. RYY, THE Y OPERAND (TRAP)

        Used, when trapping, to store the Y operand of the interrupted instruction.

32. RZZ, THE Z OPERAND (TRAP)

        Used, when trapping, to store the Z operand of the interrupted instruction.

Like programs running on almost all other CPUs, MMIX programs can be interrupted in several ways. External hardware, such as timers, are a common source of preemption (computing) interrupts. Many instructions cause an interrupts in certain exceptional cases; such as the memory protection page fault exceptions used to implement virtual memory, and floating point exception handling. MMIX has 2 kinds of interrupts: "trips" and "traps". The main difference between "trips" and "traps" is that traps send control to a "trap handler" program in the operating system (trapping), but trips send control to a "trip handler" program in the user application (tripping). Users can also force any interrupt handler to run with explicit software interrupt instructions TRIP and TRAP, similar to some kinds of trap in other computer systems. In particular, a system call from a user program to the operating system uses a TRAP instruction.[4]


Hardware implementations

, no known hardware implementations of the MMIX instruction set architecture exist. However, the fpgammix[5] project implements MMIX in Verilog, making it possible to implement using a field-programmable gate array.


Software tools

The MMIX instruction set architecture is supported by a number of software tools for computer architecture research and software development.

Simulators and assembler

-   MMIXware[6] – Donald Knuth's MMIX-SIM simple (behavioral) simulator, MMIXAL assembler, test suite, sample programs, full documentation, and MMIX architectural (pipeline) simulator (gzipped tar file).
-   MMIXX[7] – An X11-based graphics package contributed by Andrew Pochinsky of MIT’s Center for Theoretical Physics which, when combined with the MMIXware sources above, augments the MMIX virtual machine with a 640×480 pixel, true-color ‘virtual display’ (for UNIX/Linux).

Compiler

The GNU Compiler Collection includes an MMIX back-end for its C/C++ compilers, contributed by Hans-Peter Nilsson and part of the main GCC distribution since late 2001. , the MMIX back-end to GCC continues to be actively developed and maintained by volunteers.

-   Installation instructions for GCC + MMIX tools by Hans-Peter Nilsson.[8]
-   §3.17.26. MMIX Options for GNU GCC version 7.2.0[9] (GNU GCC Web site).
-   §9.28. MMIX-dependent Features[10] for GNU as from GNU Binutils version 2.29, the assembler back-end for GNU GCC (GNU Binutils Web site).

The above tools could theoretically be used to compile, build, and bootstrap an entire FreeBSD, Linux, or other similar operating system kernel onto MMIX hardware, were such hardware to exist.


See also

-   Educational programming language
-   DLX
-   LC-3
-   Little man computer
-   MikroSim
-   MIX
-   NAR 2, another processor designed by a professor to help students learn.


References

-   Donald E. Knuth (2005). _The Art of Computer Programming Volume 1 Fascicle 1: MMIX A RISC Computer for the New Millennium_. Addison-Wesley. (errata)


External links

-   MMIX Home Page
-   Donald Knuth's MMIX page — A brief introduction to MMIX, and Knuth's reasons for using a hypothetical assembly language in TAoCP.
-   Donald Knuth's MMIX news page — An open source simulator written in CWEB, a programmer's manual, and example programs.
-   MMIXmasters web site — A web site for the volunteers (MMIXmasters) who are converting all of the programs in TAOCP, Volumes 1–3, from the old MIX to the new MMIX.
-   VMMMIX — VMMMIX is the MMIX virtual machine. It has console, HDD and Ethernet I/Os. Currently, this virtual machine runs on Windows only. And Linux runs on this MMIX virtual machine.
-   The VMB Homepage — The Virtual Motherboard Project offers a plug and play collection of devices that can be used with an appropriate version of the MMIX CPU.

Category:Donald Knuth Category:Educational abstract machines Category:Instruction set architectures

[1]  (Errata)

[2]

[3]

[4]

[5]

[6]

[7]

[8] http://bitrange.com/mmix/install.html Installation instructions for GCC + MMIX tools

[9] https://gcc.gnu.org/onlinedocs/gcc-7.2.0/gcc/MMIX-Options.html §3.17.26. MMIX

[10]