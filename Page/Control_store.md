A CONTROL STORE is the part of a CPU's control unit that stores the CPU's microprogram. It is usually accessed by a microsequencer. Early types of control store took the form of diode-arrays that were accessed via address decoders, but were later implemented as writable microcode that was stored in a form of read-only memory called a writable control store. The outputs generally had to go through a register to prevent a race condition from occurring. The register was clocked by the clock signal of the system it was running on.


Implementation

Early use

Early control stores were implemented as a diode-array accessed via address decoders, a form of read-only memory. This tradition dates back to the _program timing matrix_ on the MIT Whirlwind, first described in 1947. Modern VLSI processors instead use matrices of field-effect transistors to build the ROM and/or PLA structures used to control the processor as well as its internal sequencer in a microcoded implementation. IBM System/360 used a variety of techniques: CCROS (Card Capacitor Read-Only Storage) on the Model 30, TROS (Transformer Read-Only Storage) on the Model 40, and BCROS (Balanced Capacitor Read-Only Storage) on the Model 50.

Writable stores

Some computers were built using "writable microcode" — rather than storing the microcode in ROM or hard-wired logic, the microcode was stored in a RAM called a _writable control store_ or _WCS_. Such a computer is sometimes called a _Writable Instruction Set Computer_ or _WISC_.[1] Many of these machines were experimental laboratory prototypes, such as the WISC CPU/16[2] and the RTX 32P.[3]

The original System/360 models of IBM mainframe had read-only control store, but later System/360, System/370 and successor models loaded part or all of their microprograms from floppy disks or other DASD into a writable control store consisting of ultra-high speed random-access read-write memory. The System/370 architecture included a facility called INITIAL-MICROPROGRAM LOAD (IML or IMPL)[4] that could be invoked from the console, as part of POWER ON RESET (POR) or from another processor in a tightly coupled multiprocessor complex. This permitted IBM to easily repair microprogramming defects in the field. Even when the majority of the control store is stored in ROM, computer vendors would often sell writable control store as an option, allowing the customers to customize the machine's microprogram. Other vendors, e.g., IBM, use the WCS to run microcode for emulator features[5][6] and hardware diagnostics.[7]

Other commercial machines that used writable microcode include the Burroughs Small Systems (1970s and 1980s), the Xerox processors in their Lisp machines and Xerox Star workstations, the DEC VAX 8800 ("Nautilus") family, and the Symbolics L- and G-machines (1980s). Some DEC PDP-10 machines stored their microcode in SRAM chips (about 80 bits wide x 2 Kwords), which was typically loaded on power-on through some other front-end CPU.[8] Many more machines offered user-programmable writable control stores as an option (including the HP 2100, DEC PDP-11/60 and Varian Data Machines V-70 series minicomputers). The Mentec M11 and Mentec M1 stored its microcode in SRAM chips, loaded on power-on through another CPU. The Data General Eclipse MV/8000 ("Eagle") had a SRAM writable control store, loaded on power-on through another CPU.[9]

WCS offered several advantages including the ease of patching the microprogram and, for certain hardware generations, faster access than ROMs could provide. User-programmable WCS allowed the user to optimize the machine for specific purposes.

Some CPU designs compile the instruction set to a writable RAM or FLASH inside the CPU (such as the Rekursiv processor and the Imsys Cjip),[10] or an FPGA (reconfigurable computing).

Several Intel CPUs in the x86 architecture family have writable microcode,[11] starting with the Pentium Pro in 1995.[12] This has allowed bugs in the Intel Core 2 microcode and Intel Xeon microcode to be fixed in software, rather than requiring the entire chip to be replaced. Such fixes can be installed by Linux,[13] FreeBSD,[14] Microsoft Windows,[15] or the motherboard BIOS.[16]

Timing, latching and avoiding a race condition

The control store usually has a register on its outputs. The outputs that go back into the sequencer to determine the next address have to go through some sort of register to prevent the creation of a race condition. In most designs all of the other bits also go through a register. This is because the machine will work faster if the execution of the next microinstruction is delayed by one cycle. This register is known as a pipeline register. Very often the execution of the next microinstruction is dependent on the result of the current microinstruction, which will not be stable until the end of the current microcycle. It can be seen that either way, all of the outputs of the control store go into one big register. Historically it used to be possible to buy EPROMs with these register bits on the same chip.

The clock signal determining the clock rate, which is the cycle time of the system, primarily clocks this register.


References

-

{{-}}

Category:Instruction processing Category:Firmware

[1] "Writable instruction set, stack oriented computers: The WISC Concept" article by Philip Koopman Jr. 1987

[2] "Architecture of the WISC CPU/16" by Phil Koopman 1989

[3] "Architecture of the RTX 32P" by Philip Koopman 1989

[4]

[5]

[6]

[7]

[8] http://pdp10.nocrew.org/cpu/kl10-ucode.txt

[9]

[10]

[11] "Intel(R) 64 and IA-32 Architectures Software Developer’s Manual", Volume 3A: System Programming Guide, Part 1, chapter 9.11: "Microcode update facilities", December 2009.

[12]

[13]

[14]

[15] "A microcode reliability update is available that improves the reliability of systems that use Intel processors"

[16] "BIOS Update required when Missing Microcode message is seen during POST"