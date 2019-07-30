In computing, MEMORY refers to the computer hardware integrated circuits that store information for immediate use in a computer; it is synonymous with the term "primary storage". Computer memory operates at a high speed, for example random-access memory (RAM), as a distinction from storage that provides slow-to-access information but offers higher capacities. If needed, contents of the computer memory can be transferred to secondary storage; a very common way of doing this is through a memory management technique called "virtual memory". An archaic synonym for memory is STORE.[1]

The term "memory", meaning "primary storage" or "main memory", is often associated with addressable semiconductor memory, i.e. integrated circuits consisting of silicon-based transistors, used for example as primary storage but also other purposes in computers and other digital electronic devices. There are two main kinds of semiconductor memory, volatile and non-volatile. Examples of non-volatile memory are flash memory (used as secondary memory) and ROM, PROM, EPROM and EEPROM memory (used for storing firmware such as BIOS). Examples of volatile memory are primary storage, which is typically dynamic random-access memory (DRAM), and fast CPU cache memory, which is typically static random-access memory (SRAM) that is fast but energy-consuming, offering lower memory areal density than DRAM.

Most semiconductor memory is organized into memory cells or bistable flip-flops, each storing one bit (0 or 1). Flash memory organization includes both one bit per memory cell and multiple bits per cell (called MLC, Multiple Level Cell). The memory cells are grouped into words of fixed word length, for example 1, 2, 4, 8, 16, 32, 64 or 128 bit. Each word can be accessed by a binary address of _N_ bit, making it possible to store 2 raised by _N_ words in the memory. This implies that processor registers normally are not considered as memory, since they only store one word and do not include an addressing mechanism.

Typical secondary storage devices are hard disk drives and solid-state drives.


History

In the early 1940s, memory technology often permitted a capacity of a few bytes. The first electronic programmable digital computer, the ENIAC, using thousands of octal-base radio vacuum tubes, could perform simple calculations involving 20 numbers of ten decimal digits which were held in the vacuum tube accumulators.

The next significant advance in computer memory came with acoustic delay line memory, developed by J. Presper Eckert in the early 1940s. Through the construction of a glass tube filled with mercury and plugged at each end with a quartz crystal, delay lines could store bits of information in the form of sound waves propagating through mercury, with the quartz crystals acting as transducers to read and write bits. Delay line memory would be limited to a capacity of up to a few hundred thousand bits to remain efficient.

Two alternatives to the delay line, the Williams tube and Selectron tube, originated in 1946, both using electron beams in glass tubes as means of storage. Using cathode ray tubes, Fred Williams would invent the Williams tube, which would be the first random-access computer memory. The Williams tube would prove more capacious than the Selectron tube (the Selectron was limited to 256 bits, while the Williams tube could store thousands) and less expensive. The Williams tube would nevertheless prove to be frustratingly sensitive to environmental disturbances.

Efforts began in the late 1940s to find non-volatile memory. Jay Forrester, Jan A. Rajchman and An Wang developed magnetic-core memory, which allowed for recall of memory after power loss. Magnetic core memory would become the dominant form of memory until the development of transistor-based memory in the late 1960s.

Programmable read-only memory (PROM) was invented by Wen Tsing Chow in 1956.[2][3] In 1967, Dawon Kahng and Simon Sze at Bell Labs proposed that the floating gate of a MOS semiconductor device could be used for the cell of a reprogrammable ROM, which led to Dov Frohman of Intel inventing EPROM (erasable PROM) in 1971.[4] EEPROM (electrically erasable PROM) was developed by Yasuo Tarui, Yutaka Hayashi and Kiyoko Naga at the Electrotechnical Laboratory in 1972.[5]

The term "memory" when used with reference to computers generally refers to either volatile random-access memory (RAM) or non-volatile flash memory.

The two main types of volatile RAM are static random-access memory (SRAM) and dynamic random-access memory (DRAM). SRAM semiconductor memory was invented by Robert Norman at Fairchild Semiconductor in 1963.[6] Commercial use of SRAM dates back to 1965, when the IBM System/360 Model 95 used the SP95 SRAM chip from Scientific Data Systems and Signetics.[7] The same year, Toshiba introduced DRAM memory cells for its Toscal BC-1411 electronic calculator.[8][9] The first commercial DRAM integrated circuit (IC) chip was the Intel 1103, introduced in October 1970.[10][11][12] Synchronous dynamic random-access memory (SDRAM) later debuted with the Samsung KM48SL2000 chip in 1992.[13][14]

Flash memory was invented by Fujio Masuoka at Toshiba in the early 1980s.[15][16] Masuoka and colleagues presented the invention of NOR flash in 1984,[17] and then NAND flash in 1987.[18] Toshiba commercially launched NAND flash memory in 1987.[19][20]

Developments in technology and economies of scale have made possible so-called Very Large Memory (VLM) computers.[21]


Volatile memory

Volatile memory is computer memory that requires power to maintain the stored information. Most modern semiconductor volatile memory is either static RAM (SRAM) or dynamic RAM (DRAM). SRAM retains its contents as long as the power is connected and is easy for interfacing, but uses six transistors per bit. Dynamic RAM is more complicated for interfacing and control, needing regular refresh cycles to prevent losing its contents, but uses only one transistor and one capacitor per bit, allowing it to reach much higher densities and much cheaper per-bit costs.

SRAM is not worthwhile for desktop system memory, where DRAM dominates, but is used for their cache memories. SRAM is commonplace in small embedded systems, which might only need tens of kilobytes or less. Forthcoming volatile memory technologies that aim at replacing or competing with SRAM and DRAM include Z-RAM and A-RAM.


Non-volatile memory

s are one example of non-volatile memory.]]

Non-volatile memory is computer memory that can retain the stored information even when not powered. Examples of non-volatile memory include read-only memory (see ROM), flash memory, most types of magnetic computer storage devices (e.g. hard disk drives, floppy disks and magnetic tape), optical discs, and early computer storage methods such as paper tape and punched cards.

Forthcoming non-volatile memory technologies include FERAM, CBRAM, PRAM, STT-RAM, SONOS, RRAM, racetrack memory, NRAM, 3D XPoint, and millipede memory.


Semi-volatile memory

A third category of memory is "semi-volatile". The term is used to describe a memory which has some limited non-volatile duration after power is removed, but then data is ultimately lost. A typical goal when using a semi-volatile memory is to provide high performance/durability/etc. associated with volatile memories, while providing some benefits of a true non-volatile memory.

For example, some non-volatile memory types can wear out, where a "worn" cell has increased volatility but otherwise continues to work. Data locations which are written frequently can thus be directed to use worn circuits. As long as the location is updated within some known retention time, the data stays valid. If the retention time "expires" without an update, then the value is copied to a less-worn circuit with longer retention. Writing first to the worn area allows a high write rate while avoiding wear on the not-worn circuits.[22]

As a second example, an STT-RAM can be made non-volatile by building large cells, but the cost per bit and write power go up, while the write speed goes down. Using small cells improves cost, power, and speed, but leads to semi-volatile behavior. In some applications the increased volatility can be managed to provide many benefits of a non-volatile memory, for example by removing power but forcing a wake-up before data is lost; or by caching read-only data and discarding the cached data if the power-off time exceeds the non-volatile threshold.[23]

The term semi-volatile is also used to describe semi-volatile behavior constructed from other memory types. For example, a volatile and a non-volatile memory may be combined, where an external signal copies data from the volatile memory to the non-volatile memory, but if power is removed without copying, the data is lost. Or, a battery-backed volatile memory, and if external power is lost there is some known period where the battery can continue to power the volatile memory, but if power is off for an extended time, the battery runs down and data is lost.


Management

Proper management of memory is vital for a computer system to operate properly. Modern operating systems have complex systems to properly manage memory. Failure to do so can lead to bugs, slow performance, and at worst case, takeover by viruses and malicious software.

Nearly everything computer programmers do requires them to consider how to manage memory. Even storing a number in memory requires the programmer to specify how the memory should store it.

Bugs

Improper management of memory is a common cause of bugs, including the following types:

-   In an arithmetic overflow, a calculation results in a number larger than the allocated memory permits. For example, a signed 8-bit integer allows the numbers −128 to +127. If its value is 127 and it is instructed to add one, the computer can not store the number 128 in that space. Such a case will result in undesired operation, such as changing the number's value to −128 instead of +128.
-   A memory leak occurs when a program requests memory from the operating system and never returns the memory when it's done with it. A program with this bug will gradually require more and more memory until the program fails as it runs out.
-   A segmentation fault results when a program tries to access memory that it does not have permission to access. Generally a program doing so will be terminated by the operating system.
-   A buffer overflow means that a program writes data to the end of its allocated space and then continues to write data to memory that has been allocated for other purposes. This may result in erratic program behavior, including memory access errors, incorrect results, a crash, or a breach of system security. They are thus the basis of many software vulnerabilities and can be maliciously exploited.

Early computer systems

In early computer systems, programs typically specified the location to write memory and what data to put there. This location was a physical location on the actual memory hardware. The slow processing of such computers did not allow for the complex memory management systems used today. Also, as most such systems were single-task, sophisticated systems were not required as much.

This approach has its pitfalls. If the location specified is incorrect, this will cause the computer to write the data to some other part of the program. The results of an error like this are unpredictable. In some cases, the incorrect data might overwrite memory used by the operating system. Computer crackers can take advantage of this to create viruses and malware.

Virtual memory

Virtual memory is a system where all physical memory is controlled by the operating system. When a program needs memory, it requests it from the operating system. The operating system then decides in what physical location to place the program's code and data.

This offers several advantages. Computer programmers no longer need to worry about where their data is physically stored or whether the user's computer will have enough memory. It also allows multiple types of memory to be used. For example, some data can be stored in physical RAM chips while other data is stored on a hard drive (e.g. in a swapfile), functioning as an extension of the cache hierarchy. This drastically increases the amount of memory available to programs. The operating system will place actively used data in physical RAM, which is much faster than hard disks. When the amount of RAM is not sufficient to run all the current programs, it can result in a situation where the computer spends more time moving data from RAM to disk and back than it does accomplishing tasks; this is known as thrashing.

Virtual memory systems usually include protected memory, but this is not always the case.

Protected memory

Protected memory is a system where each program is given an area of memory to use and is not permitted to go outside that range. Use of protected memory greatly enhances both the reliability and security of a computer system.

Without protected memory, it is possible that a bug in one program will alter the memory used by another program. This will cause that other program to run off of corrupted memory with unpredictable results. If the operating system's memory is corrupted, the entire computer system may crash and need to be rebooted. At times programs intentionally alter the memory used by other programs. This is done by viruses and malware to take over computers. It may also be used benignly by desirable programs which are intended to modify other programs; in the modern age, this is generally considered bad programming practice for application programs, but it may be used by system development tools such as debuggers, for example to insert breakpoints or hooks.

Protected memory assigns programs their own areas of memory. If the operating system detects that a program has tried to alter memory that does not belong to it, the program is terminated (or otherwise restricted or redirected). This way, only the offending program crashes, and other programs are not affected by the misbehavior (whether accidental or intentional).

Protected memory systems almost always include virtual memory as well.


See also

-   Semiconductor memory
-   Memory geometry
-   Memory hierarchy


References


Further reading

-

-

Computer_memory

[1] A.M. Turing and R.A. Brooker (1952). _Programmer's Handbook for Manchester Electronic Computer Mark II_ . University of Manchester.

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] Toshiba "Toscal" BC-1411 Desktop Calculator

[10]

[11] _The DRAM memory of Robert Dennard_ history-computer.com

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