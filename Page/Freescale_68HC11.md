(DIP)]] The 68HC11[1] (6811 or HC11 for short) is an 8-bit microcontroller (µC) family introduced by Motorola in 1984.[2][3] Now produced by NXP Semiconductors, it descended from the Motorola 6800 microprocessor by way of the 6809. It is a CISC microcontroller. The 68HC11 devices are more powerful and more expensive than the 68HC08 microcontrollers, and are used in automotive applications, barcode readers, hotel card key writers, amateur robotics, and various other embedded systems. The MC68HC11A8 was the first microcontroller to include CMOS EEPROM.[4]


Architecture

+-------------------------------------------------------------------------------------------------------------------------------------------------+
| _Motorola 68HC11 registers_                                                                                                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+
|   ----------------- ------------------ ----------------- ---- ---- ---- ---- ---- ---- ------- ---- ---- ---- ---- ---- ---- ------------------ |
|   ¹₅                ¹₄                 ¹₃                ¹₂   ¹₁   ¹₀   ⁰₉   ⁰₈   ⁰₇   ⁰₆      ⁰₅   ⁰₄   ⁰₃   ⁰₂   ⁰₁   ⁰₀   _(bit position)_   |
|   MAIN REGISTERS                                                                                                                                |
|   A                 B                  D register pair                                                                                          |
|   INDEX REGISTERS                                                                                                                               |
|   IX                X index register                                                                                                            |
|   IY                Y index register                                                                                                            |
|   SP                Stack Pointer                                                                                                               |
|   PROGRAM COUNTER                                                                                                                               |
|   PC                Program Counter                                                                                                             |
|   STATUS REGISTER                                                                                                                               |
|                     1                  1                 H    I    N    Z    V    C    Flags                                                    |
|   ----------------- ------------------ ----------------- ---- ---- ---- ---- ---- ---- ------- ---- ---- ---- ---- ---- ---- ------------------ |
+-------------------------------------------------------------------------------------------------------------------------------------------------+

Internally, the HC11 instruction set is upward compatible with the 6800, with the addition of a Y index register. (Instructions using the Y register have opcodes prefixed with the byte 0x18). It has two eight-bit accumulators, A and B, two sixteen-bit index registers, X and Y, a condition code register, a 16-bit stack pointer, and a program counter. In addition, there is an 8 x 8-bit multiply (A x B), with full 16-bit result, and Fractional/Integer 16-bit by 16-bit Divide instructions. A range of 16-bit instructions treat the A and B registers as a combined 16-bit D register for comparison (X and Y registers may also be compared to 16-bit memory operands), addition, subtraction and shift operations, or can add the B accumulator to the X or Y index registers. Bit test operations have also been added, performing a logical AND function between operands, setting the correct conditions codes, but not modifying the operands.

Different versions of the HC11 have different numbers of external ports, labeled alphabetically. The most common version has five ports, A, B, C, D, and E, but some have as few as 3 ports (version D3). Each port is eight-bits wide except for D, which is six bits (in some variations of the chip, D also has eight bits). It can be operated with an internal program and RAM (1 to 768 bytes) or an external memory of up to 64 kilobytes. With external memory, B and C are used as address and data bus. In this mode, port C is multiplexed to carry both the lower byte of the address and data.


Implementations

(PLCC)]]

In the early 1990s Motorola produced an evaluation board kit for the 68HC11 with several UARTs, RAM, and an EPROM. The cost of the evaluation kit was $68.11.[5]

The standard monitor for the HC11 family is called BUFFALO, "Bit User Fast Friendly Aid to Logical Operation." It can be stored in on-chip ROM, EPROM, or external memory (also typically EPROM). BUFFALO is available for most 68HC11 family derivatives as it generally only depends upon having access to a single UART (SCI, or Serial Communications Interface, in Motorola parlance). BUFFALO can also run on devices that do not have internal non-volatile memory, such as the 68HC11A0, A1, E0, E1, and F1 derivatives.


Other versions

The Freescale 68HC16 microcontroller family is intended as a 16-bit mostly software compatible upgrade of the 68HC11.

The Freescale 68HC12 microcontroller family is an enhanced 16-bit version of the 68HC11.

The Handy Board robotics controller by Fred Martin is based on the 68HC11.[6]

A MC68HC24 port replacement unit is available for the HC11. When placed on the external address bus, it replicates the original functions of B and C. Port A has input capture, output compare, pulse accumulator, and other timer functions; port D has serial I/O, and port E has an analog to digital converter (ADC).


References


Further reading

Datasheets and manuals

-   _M68HC11 Reference Manual_; Motorola; 498 pages; 1991.
-   _MC68HC11A8 Technical Manual_; Motorola; 154 pages; 1991.
-   _MC68HC11E9 Technical Manual_; Motorola; 170 pages; 1991.

Books

-   _Microcontroller Technology - 68HC11_; 1st Ed; Peter Spasov; Regents/Prentice Hall; 622 pages; 1993; . (archive)
-   _Build Your Own Robot - 68HC11_; 1st Ed; Karl Lunt; A.K. Peters Publishing; 574 pages; 2000; . (archive)


External links

-   Freescale 68HC11 (Legacy) Part Info
-   ASM11 macro cross-assembler for Windows and Linux

Simulators / Emulators

-   THRSim11 68HC11 simulator and debugger - Windows

Boards

-   4MHz-bus 68HC11F1-based board
-   Wytec 68HC11 Development Board

FPGA

-   System11 68HC11 CPU core - VHDL source code - OpenCores - project website
-   Green Mountain Synthesizable 68HC11 CPU core - VHDL source code

Category:Microcontrollers

[1] Official 68HC11 Reference Manual

[2] _Motorola Annual Report 1984_

[3] Hambley, Allan R.(2011). _Electrical Engineering: Principles and Applications_, Pearson Higher Education. p. 417. Digitized by Google. Retrieved on May 17, 2012.

[4] M68HC11 Reference Manual

[5] _comp.dsp. 1 Oct. 1996_

[6] Handy Board Hardware