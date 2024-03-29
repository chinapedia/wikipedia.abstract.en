In computing, the INSTRUCTION REGISTER (IR) or CURRENT INSTRUCTION REGISTER (CIR) is the part of a CPU's control unit that holds the instruction currently being executed or decoded.[1] In simple processors each instruction to be executed is loaded into the instruction register which holds it while it is decoded, prepared and ultimately executed, which can take several steps.

Some of the complicated processors use a pipeline of instruction registers where each stage of the pipeline does part of the decoding, preparation or execution and then passes it to the next stage for its step. Modern processors can even do some of the steps out of order as decoding on several instructions is done in parallel.

Decoding the op-code in the instruction register includes determining the instruction, determining where its operands are in memory, retrieving the operands from memory, allocating processor resources to execute the command (in super scalar processors), etc.

The output of the IR is available to control circuits which generate the timing signals that control the various processing elements involved in executing the instruction.

In the instruction cycle, the instruction is loaded into the instruction register after the processor fetches it from the memory location pointed to by the program counter.


References

-   M. Mano, Computer System Architecture (Prentice Hall, 3rd Ed, 1992)

pl:Wskaźnik instrukcji

Category:Digital registers

[1]