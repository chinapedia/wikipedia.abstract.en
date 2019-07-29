The CONTROL UNIT (CU) is a component of a computer's central processing unit (CPU) that directs the operation of the processor. It tells the computer's memory, arithmetic and logic unit and input and output devices how to respond to the instructions that have been sent to the processor.[1]

It directs the operation of the other units by providing timing and control signals. Most computer resources are managed by the CU. It directs the flow of data between the CPU and the other devices. John von Neumann included the control unit as part of the von Neumann architecture.[2] In modern computer designs, the control unit is typically an internal part of the CPU with its overall role and operation unchanged since its introduction.[3]


Functions of the control unit

The Control unit (CU) is digital circuitry contained within the processor that coordinates the sequence of data movements into, out of, and between a processor's many sub-units. The result of these routed data movements through various digital circuits (sub-units) within the processor produces the manipulated data expected by a software instruction (loaded earlier, likely from memory). It controls (conducts) data flow inside the processor and additionally provides several external control signals to the rest of the computer to further direct data and instructions to/from processor external destinations (i.e. memory).

Examples of devices that require a CU are CPUs and graphics processing units (GPUs). The CU receives external instructions or commands which it converts into a sequence of control signals that the CU applies to the data path to implement a sequence of register-transfer level operations.[4]

More precisely, the Control Unit (CU) is generally a sizable collection of complex digital circuitry interconnecting and directing the many execution units (i.e. ALU, data buffers, registers) contained within a CPU. The CU is normally the first CPU unit to accept from an externally stored computer program, a single instruction (based on the CPU's instruction set). The CU then decodes this individual instruction into several sequential steps (fetching addresses/data from registers/ memory, managing execution [i.e. data sent to the ALU or I/O], and storing the resulting data back into registers/memory) that controls and coordinates the CPU's inner works to properly manipulate the data. The design of these sequential steps are based on the needs of each instruction and can range in number of steps, the order of execution, and which units are enabled.

Thus by only using a program of set instructions in memory, the CU will configure all the CPU's data flows as needed to manipulate the data correctly between instructions. This results in a computer that could run a complete program and require no human intervention to make hardware changes between instructions (as had to be done when using only punch cards for computations before stored programmed computers with CUs were invented). These detailed steps from the CU dictate which of the CPU's interconnecting hardware control signals to enable/disable or which CPU units are selected/de-selected and the unit's proper order of execution as required by the instruction's operation to produce the desired manipulated data. Additionally, the CU's orderly hardware coordination properly sequences these control signals then configures the many hardware units comprising the CPU, directing how data should also be moved, changed, and stored outside the CPU (i.e. memory) according to the instruction's objective.

Depending on the type of instruction entering the CU, the order and number of sequential steps produced by the CU could vary the selection and configuration of which parts of the CPU's hardware are utilized to achieve the instruction's objective (mainly moving, storing, and modifying data within the CPU). This one feature, that efficiently uses just software instructions to control/select/configure a computer's CPU hardware (via the CU) and eventually manipulates a program's data, is a significant reason most modern computers are flexible and universal when running various programs. As compared to some 1930s or 1940s computers without a proper CU, they often required rewiring their hardware when changing programs. This CU instruction decode process is then repeated when the Program Counter is incremented to the next stored program address and the new instruction enters the CU from that address, and so on till the programs end.

Other more advanced forms of Control Units manage the translation of instructions (but not the data containing portion) into several micro-instructions and the CU manages the scheduling of the micro-instructions between the selected execution units to which the data is then channeled and changed according to the execution unit's function (i.e., ALU contains several functions). On some processors, the Control Unit may be further broken down into additional units, such as an instruction unit or scheduling unit to handle scheduling, or a retirement unit to deal with results coming from the instruction pipeline. Again, the Control Unit orchestrates the main functions of the CPU: carrying out stored instructions in the software program then directing the flow of data throughout the computer based upon these instructions (roughly likened to how traffic lights will systematically control the flow of cars [containing data] to different locations within the traffic grid [CPU] until it parks at the desired parking spot [memory address/register]. The car occupants [data] then go into the building [execution unit] and comes back changed in some way then get back into the car and returns to another location via the controlled traffic grid).


Hardwired control unit

HARDWIRED CONTROL UNITS are implemented through use of combinational logic units, featuring a finite number of gates that can generate specific results based on the instructions that were used to invoke those responses. Hardwired control units are generally faster than the microprogrammed designs.[5]

Their design uses a fixed architecture—it requires changes in the wiring if the instruction set is modified or changed. This architecture is preferred in reduced instruction set computers (RISC) as they use a simpler instruction set.

A controller that uses this approach can operate at high speed; however, it has little flexibility, and the complexity of the instruction set it can implement is limited.

The hardwired approach has become less popular as computers to have evolved. Previously, control units for CPUs used ad-hoc logic, and they were difficult to design.[6]

1


Microprogram control unit

The idea of microprogramming was introduced by Maurice Wilkes in 1951 as an intermediate level to execute computer program instructions. Microprograms were organized as a sequence of _microinstructions_ and stored in special control memory. The algorithm for the microprogram control unit,unlike the hardwired control unit, is usually specified by flowchart description.[7] The main advantage of the microprogram control unit is the simplicity of its structure. Outputs of the controller are organized in microinstructions and they can be easily replaced.[8]


See also

-   CPU design
-   Computer architecture
-   Richards controller
-   Controller (computing)


References

Category:Central processing unit Category:Digital electronics

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]