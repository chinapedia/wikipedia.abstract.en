Walther_WSR-16_Inside_the_Machine.jpg In a computer's central processing unit (CPU), the ACCUMULATOR is a register in which intermediate arithmetic and logic results are stored.

Without a register like an accumulator, it would be necessary to write the result of each calculation (addition, multiplication, shift, etc.) to main memory, perhaps only to be read right back again for use in the next operation. Access to main memory is slower than access to a register like the accumulator because the technology used for the large main memory is slower (but cheaper) than that used for a register. Early electronic computer systems were often split into two groups, those with accumulators and those without.

Modern computer systems often have multiple general purpose registers that operate as accumulators, and the term is no longer as common as it once was. However, a number of special-purpose processors still use a single accumulator for their work to simplify their design.


Basic concept

Mathematical operations often take place in a stepwise fashion, using the results from one operation as the input to the next. For instance, a manual calculation of a worker's weekly payroll might look something like:

1.  look up the number of hours worked from the employee's time card
2.  look up the pay rate for that employee from a table
3.  multiply the hours by the pay rate to get their basic weekly pay
4.  multiply their basic pay by a fixed percentage to account for income tax
5.  subtract that number from their basic pay to get their weekly pay after tax
6.  multiply that result by another fixed percentage to account for retirement plans
7.  subtract that number from their basic pay to get their weekly pay after all deductions

A computer program carrying out the same task would follow the same basic sequence of operations, although the values being looked up would all be stored in computer memory. In early computers the number of hours would likely be held on a punch card and the pay rate in some other form of memory, perhaps a magnetic drum. Once the multiplication is complete, the result needs to be placed somewhere. On a "drum machine" this would likely be back to the drum, an operation that takes considerable time. And then the very next operation has to read that value back in, which introduces another considerable delay.

Accumulators dramatically improve performance in systems like these by providing a scratchpad area where the results of one operation can be fed to the next one for little or no performance penalty. In the example above, the basic weekly pay would be calculated and placed in the accumulator, which could then immediately be used by the income tax calculation. This removes one save and one read operation from the sequence, operations that generally took tens to hundreds of times as long as the multiplication itself.


Accumulator machines

An ACCUMULATOR MACHINE, also called a 1-operand machine, or a CPU with _accumulator-based architecture_, is a kind of CPU where, although it may have several registers, the CPU mostly stores the results of calculations in one special register, typically called "the accumulator". Almost all early computers were accumulator machines with only the high-performance "supercomputers" having multiple registers. Then as mainframe systems gave way to microcomputers, accumulator architectures were again popular with the MOS 6502 being a notable example. Many 8-bit microcontrollers that are still popular as of 2014, such as the PICmicro and 8051, are accumulator-based machines.

Modern CPUs are typically 2-operand or 3-operand machines. The additional operands specify which one of many general purpose registers (also called "general purpose accumulators"[1]) are used as the source and destination for calculations. These CPUs are not considered "accumulator machines".

The characteristic which distinguishes one register as being the accumulator of a computer architecture is that the accumulator (if the architecture were to have one) would be used as an _implicit_ operand for arithmetic instructions. For instance, a CPU might have an instruction like: ADD _memaddress_ that adds the value read from memory location _memaddress_ to the value in the accumulator, placing the result back in the accumulator. The accumulator is not identified in the instruction by a register number; it is implicit in the instruction and no other register can be specified in the instruction. Some architectures use a particular register as an accumulator in some instructions, but other instructions use register numbers for explicit operand specification.


History of the computer accumulator

Any system that uses a single "memory" to store the result of multiple operations can be considered an accumulator. J. Presper Eckert refers to even the earliest adding machines of Gottfried Leibniz and Blaise Pascal as accumulator-based systems.[2]

Historical convention dedicates a register to "the accumulator", an "arithmetic organ" that literally accumulates its number during a sequence of arithmetic operations:

    "The first part of our arithmetic organ ... should be a parallel storage organ which can receive a number and add it to the one already in it, which is also able to clear its contents and which can store what it contains. We will call such an organ an Accumulator. It is quite conventional in principle in past and present computing machines of the most varied types, e.g. desk multipliers, standard IBM counters, more modern relay machines, the ENIAC" (Goldstine and von Neumann, 1946; p. 98 in Bell and Newell 1971).

Just a few of the instructions are, for example (with some modern interpretation):

-   Clear accumulator and add number from memory location X
-   Clear accumulator and subtract number from memory location X
-   Add number copied from memory location X to the contents of the accumulator
-   Subtract number copied from memory location X from the contents of the accumulator
-   Clear accumulator and shift contents of register into accumulator

No convention exists regarding the names for operations from registers to accumulator and from accumulator to registers. Tradition (e.g. Donald Knuth's (1973) hypothetical MIX computer), for example, uses two instructions called _load accumulator_ from register/memory (e.g. "LDA r") and _store accumulator_ to register/memory (e.g. "STA r"). Knuth's model has many other instructions as well.


Notable accumulator-based computers

IBM_701console.jpg computer with lights displaying the accumulator and other registers]] The 1945 configuration of ENIAC had 20 accumulators, which could operate in parallel.[3] Each one could store an eight decimal digit number and add to it (or subtract from it) a number it received.[4] Most of IBM's early binary "scientific" computers, beginning with the vacuum tube IBM 701 in 1952, used a single 36-bit accumulator, along with a separate multiplier/quotient register to handle operations with longer results. The IBM 650, a decimal machine, had one 10 digit accumulator; the IBM 7070, a later, transistorized decimal machine had three accumulators.

The 12-bit PDP-8 was one of the first minicomputers to use accumulators, and inspired many later machines.Digital Equipment Corporation, Maynard, Massachusetts (1961) "PROGRAMMED DATA PROCESSOR-1 MANUAL", page 7: PDP-1 system block diagram accessdate=2014-07-03. The PDP-1 was an 18-bit processor, and was a predecessor of PDP-8

-   TX-0 was the transistorized predecessor of PDP-1
-   Whirlwind I was the vacuum tube predecessor of Tx-0 The PDP-8 had but one accumulator. The HP 2100 and Data General Nova had 2 and 4 accumulators. The Nova was created when this follow-on to the PDP-8 was rejected in favor of what would become the PDP-11. The Nova provided four accumulators, AC0-AC3, although AC2 and AC3 could also be used to provide offset addresses, tending towards more generality of usage for the registers. The PDP-11 introduced a more contemporary model of general registers, numbered R0-R7 or more, adopted by most later CISC and RISC machines.

Early 4-bit and 8-bit microprocessors such as the 4004, 8008 and numerous others, typically had single accumulators. The 8051 microcontroller has two, a primary accumulator and a secondary accumulator, where the second is used by instructions only when multiplying (MUL AB) or dividing (DIV AB); the former splits the 16-bit result between the two 8-bit accumulators, whereas the latter stores the quotient on the primary accumulator A and the remainder in the secondary accumulator B. As a direct descendent of the 8008, the 8080, and the 8086, the modern ubiquitous Intel x86 processors still uses the primary accumulator EAX and the secondary accumulator EDX for multiplication and division of large numbers. For instance, MUL ECX will multiply the 32-bit registers ECX and EAX and split the 64-bit result between EAX and EDX. However, MUL and DIV are special cases; other arithmetic-logical instructions (ADD, SUB, CMP, AND, OR, XOR, TEST) may specify any of the eight registers EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI as the accumulator (i.e. left operand and destination). This is also supported for multiply if the upper half of the result is not required. x86 is thus a fairly general register architecture, despite being based on an accumulator model.[5] The 64-bit extension of x86, x86-64, has been further generalized to 16 instead of 8 general registers.


References

-   Goldstine, Herman H., and von Neumann, John, "Planning and Coding of the Problems for an Electronic Computing Instrument", Rep. 1947, Institute for Advanced Study, Princeton. Reprinted on pp. 92–119 in Bell, C. Gordon and Newell, Allen (1971), _Computer Structures: Readings and Examples_, McGraw-Hill Book Company, New York. }. A veritable treasure-trove of detailed descriptions of ancient machines including photos.

Category:Central processing unit Category:Digital registers

[1]

[2] J. Presper Eckert, "A Survey of Digital Computer Memory Systems", IEEE Annals of the History of Computing, 1988, pp. 15-28.

[3]

[4]

[5]