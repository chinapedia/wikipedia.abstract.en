bus card slots (from top to 2nd bottom: ×4, ×16, ×1 and ×16), compared to a 32-bit conventional PCI bus card slot (very bottom)]]

In computer architecture, a BUS[1] (a contraction of the Latin _omnibus_) is a communication system that transfers data between components inside a computer, or between computers. This expression covers all related hardware components (wire, optical fiber, etc.) and software, including communication protocols.[2]

Early computer buses were parallel electrical wires with multiple hardware connections, but the term is now used for any physical arrangement that provides the same logical function as a parallel electrical bus. Modern computer buses can use both parallel and bit serial connections, and can be wired in either a multidrop (electrical parallel) or daisy chain topology, or connected by switched hubs, as in the case of USB.


Background and nomenclature

Computer systems generally consist of three main parts: the central processing unit (CPU) that processes data, memory that holds the programs and data to be processed, and I/O (input/output) devices as peripherals that communicate with the outside world. An early computer might contain a hand-wired CPU of vacuum tubes, a magnetic drum for main memory, and a punch tape and printer for reading and writing data respectively. A modern system might have a multi-core CPU, DDR4 SDRAM for memory, a solid-state drive for secondary storage, a graphics card and LCD as a display system, a mouse and keyboard for interaction, and a Wi-Fi connection for networking. In both examples, computer buses of one form or another move data between all of these devices.

In most traditional computer architectures, the CPU and main memory tend to be tightly coupled. A microprocessor conventionally is a single chip which has a number of electrical connections on its pins that can be used to select an "address" in the main memory and another set of pins to read and write the data stored at that location. In most cases, the CPU and memory share signalling characteristics and operate in synchrony. The bus connecting the CPU and memory is one of the defining characteristics of the system, and often referred to simply as the system bus.

It is possible to allow peripherals to communicate with memory in the same fashion, attaching adaptors in the form of expansion cards directly to the system bus. This is commonly accomplished through some sort of standardized electrical connector, several of these forming the expansion bus or local bus. However, as the performance differences between the CPU and peripherals varies widely, some solution is generally needed to ensure that peripherals do not slow overall system performance. Many CPUs feature a second set of pins similar to those for communicating with memory, but able to operate at very different speeds and using different protocols. Others use smart controllers to place the data directly in memory, a concept known as direct memory access. Most modern systems combine both solutions, where appropriate.

As the number of potential peripherals grew, using an expansion card for every peripheral became increasingly untenable. This has led to the introduction of bus systems designed specifically to support multiple peripherals. Common examples are the SATA ports in modern computers, which allow a number of hard drives to be connected without the need for a card. However, these high-performance systems are generally too expensive to implement in low-end devices, like a mouse. This has led to the parallel development of a number of low-performance bus systems for these solutions, the most common example being the standardized Universal Serial Bus (USB). All such examples may be referred to as peripheral buses, although this terminology is not universal.

In modern systems the performance difference between the CPU and main memory has grown so great that increasing amounts of high-speed memory is built directly into the CPU, known as a cache. In such systems, CPUs communicate using high-performance buses that operate at speeds much greater than memory, and communicate with memory using protocols similar to those used solely for peripherals in the past. These system buses are also used to communicate with most (or all) other peripherals, through adaptors, which in turn talk to other peripherals and controllers. Such systems are architecturally more similar to multicomputers, communicating over a bus rather than a network. In these cases, expansion buses are entirely separate and no longer share any architecture with their host CPU (and may in fact support many different CPUs, as is the case with PCI). What would have formerly been a system bus is now often known as a front-side bus.

Given these changes, the classical terms "system", "expansion" and "peripheral" no longer have the same connotations. Other common categorization systems are based on the bus's primary role, connecting devices internally or externally, PCI vs. SCSI for instance. However, many common modern bus systems can be used for both; SATA and the associated eSATA are one example of a system that would formerly be described as internal, while certain automotive applications use the primarily external IEEE 1394 in a fashion more similar to a system bus. Other examples, like InfiniBand and I²C were designed from the start to be used both internally and externally.

Internal buses

The internal bus, also known as internal data bus, memory bus, system bus or Front-Side-Bus, connects all the internal components of a computer, such as CPU and memory, to the motherboard. Internal data buses are also referred to as a local bus, because they are intended to connect to local devices. This bus is typically rather quick and is independent of the rest of the computer operations.

External buses

The external bus, or expansion bus, is made up of the electronic pathways that connect the different external devices, such as printer etc., to the computer.


Address bus

An ADDRESS BUS is a bus that is used to specify a physical address. When a processor or DMA-enabled device needs to read or write to a memory location, it specifies that memory location on the address bus (the value to be read or written is sent on the data bus). The width of the address bus determines the amount of memory a system can address. For example, a system with a 32-BIT address bus can address 2³² (4,294,967,296) memory locations. If each memory location holds one byte, the addressable memory space is 4 GB.

Implementation

Early processors used a wire for each bit of the address width. For example, a 16-bit address bus had 16 physical wires making up the bus. As the buses became wider and lengthier, this approach became expensive in terms of the number of chip pins and board traces. Beginning with the Mostek 4096 DRAM, address multiplexing implemented with multiplexers became common. In a multiplexed address scheme, the address is sent in two equal parts on alternate bus cycles. This halves the number of address bus signals required to connect to the memory. For example, a 32-bit address bus can be implemented by using 16 lines and sending the first half of the memory address, immediately followed by the second half memory address

Accessing an individual byte frequently requires reading or writing the full bus width (a word) at once. In these instances the least significant bits of the address bus may not even be implemented - it is instead the responsibility of the controlling device to isolate the individual byte required from the complete word transmitted. This is the case, for instance, with the VESA Local Bus which lacks the two least significant bits, limiting this bus to aligned 32-bit transfers.

Historically, there were also some examples of computers which were only able to address words.


Implementation details

Buses can be parallel buses, which carry data words in parallel on multiple wires, or serial buses, which carry data in bit-serial form. The addition of extra power and control connections, differential drivers, and data connections in each direction usually means that most serial buses have more conductors than the minimum of one used in 1-Wire and UNI/O. As data rates increase, the problems of timing skew, power consumption, electromagnetic interference and crosstalk across parallel buses become more and more difficult to circumvent. One partial solution to this problem has been to double pump the bus. Often, a serial bus can be operated at higher overall data rates than a parallel bus, despite having fewer electrical connections, because a serial bus inherently has no timing skew or crosstalk. USB, FireWire, and Serial ATA are examples of this. Multidrop connections do not work well for fast serial buses, so most modern serial buses use daisy-chain or hub designs.

Network connections such as Ethernet are not generally regarded as buses, although the difference is largely conceptual rather than practical. An attribute generally used to characterize a bus is that power is provided by the bus for the connected hardware. This emphasizes the busbar origins of bus architecture as supplying switched or distributed power. This excludes, as buses, schemes such as serial RS-232, parallel Centronics, IEEE 1284 interfaces and Ethernet, since these devices also needed separate power supplies. Universal Serial Bus devices may use the bus supplied power, but often use a separate power source. This distinction is exemplified by a telephone system with a connected modem, where the RJ11 connection and associated modulated signalling scheme is not considered a bus, and is analogous to an Ethernet connection. A phone line connection scheme is not considered to be a bus with respect to signals, but the Central Office uses buses with cross-bar switches for connections between phones.

However, this distinctionthat power is provided by the busis not the case in many avionic systems, where data connections such as ARINC 429, ARINC 629, MIL-STD-1553B (STANAG 3838), and EFABus (STANAG 3910) are commonly referred to as “data buses” or, sometimes, "databuses". Such avionic data buses are usually characterized by having several equipments or Line Replaceable Items/Units (LRI/LRUs) connected to a common, shared media. They may, as with ARINC 429, be simplex, i.e. have a single source LRI/LRU or, as with ARINC 629, MIL-STD-1553B, and STANAG 3910, be duplex, allow all the connected LRI/LRUs to act, at different times (half duplex), as transmitters and receivers of data.[3]


History

Over time, several groups of people worked on various computer bus standards, including the IEEE Bus Architecture Standards Committee (BASC), the IEEE "Superbus" study group, the open microprocessor initiative (OMI), the open microsystems initiative (OMI), the "Gang of Nine" that developed EISA, etc.

First generation

Early computer buses were bundles of wire that attached computer memory and peripherals. Anecdotally termed the "_digit trunk_",[4] they were named after electrical power buses, or busbars. Almost always, there was one bus for memory, and one or more separate buses for peripherals. These were accessed by separate instructions, with completely different timings and protocols.

One of the first complications was the use of interrupts. Early computer programs performed I/O by waiting in a loop for the peripheral to become ready. This was a waste of time for programs that had other tasks to do. Also, if the program attempted to perform those other tasks, it might take too long for the program to check again, resulting in loss of data. Engineers thus arranged for the peripherals to interrupt the CPU. The interrupts had to be prioritized, because the CPU can only execute code for one peripheral at a time, and some devices are more time-critical than others.

High-end systems introduced the idea of channel controllers, which were essentially small computers dedicated to handling the input and output of a given bus. IBM introduced these on the IBM 709 in 1958, and they became a common feature of their platforms. Other high-performance vendors like Control Data Corporation implemented similar designs. Generally, the channel controllers would do their best to run all of the bus operations internally, moving data when the CPU was known to be busy elsewhere if possible, and only using interrupts when necessary. This greatly reduced CPU load, and provided better overall system performance.

]] To provide modularity, memory and I/O buses can be combined into a unified system bus.[5] In this case, a single mechanical and electrical system can be used to connect together many of the system components, or in some cases, all of them.

Later computer programs began to share memory common to several CPUs. Access to this memory bus had to be prioritized, as well. The simple way to prioritize interrupts or bus access was with a daisy chain. In this case signals will naturally flow through the bus in physical or logical order, eliminating the need for complex scheduling.

Minis and micros

Digital Equipment Corporation (DEC) further reduced cost for mass-produced minicomputers, and mapped peripherals into the memory bus, so that the input and output devices appeared to be memory locations. This was implemented in the Unibus of the PDP-11 around 1969.[6]

Early microcomputer bus systems were essentially a passive backplane connected directly or through buffer amplifiers to the pins of the CPU. Memory and other devices would be added to the bus using the same address and data pins as the CPU itself used, connected in parallel. Communication was controlled by the CPU, which read and wrote data from the devices as if they are blocks of memory, using the same instructions, all timed by a central clock controlling the speed of the CPU. Still, devices interrupted the CPU by signaling on separate CPU pins.

For instance, a disk drive controller would signal the CPU that new data was ready to be read, at which point the CPU would move the data by reading the "memory location" that corresponded to the disk drive. Almost all early microcomputers were built in this fashion, starting with the S-100 bus in the Altair 8800 computer system.

In some instances, most notably in the IBM PC, although similar physical architecture can be employed, instructions to access peripherals (in and out) and memory (mov and others) have not been made uniform at all, and still generate distinct CPU signals, that could be used to implement a separate I/O bus.

These simple bus systems had a serious drawback when used for general-purpose computers. All the equipment on the bus had to talk at the same speed, as it shared a single clock.

Increasing the speed of the CPU becomes harder, because the speed of all the devices must increase as well. When it is not practical or economical to have all devices as fast as the CPU, the CPU must either enter a wait state, or work at a slower clock frequency temporarily,[7] to talk to other devices in the computer. While acceptable in embedded systems, this problem was not tolerated for long in general-purpose, user-expandable computers.

Such bus systems are also difficult to configure when constructed from common off-the-shelf equipment. Typically each added expansion card requires many jumpers in order to set memory addresses, I/O addresses, interrupt priorities, and interrupt numbers.

Second generation

"Second generation" bus systems like NuBus addressed some of these problems. They typically separated the computer into two "worlds", the CPU and memory on one side, and the various devices on the other. A _bus controller_ accepted data from the CPU side to be moved to the peripherals side, thus shifting the communications protocol burden from the CPU itself. This allowed the CPU and memory side to evolve separately from the device bus, or just "bus". Devices on the bus could talk to each other with no CPU intervention. This led to much better "real world" performance, but also required the cards to be much more complex. These buses also often addressed speed issues by being "bigger" in terms of the size of the data path, moving from 8-bit parallel buses in the first generation, to 16 or 32-bit in the second, as well as adding software setup (now standardised as Plug-n-play) to supplant or replace the jumpers.

However these newer systems shared one quality with their earlier cousins, in that everyone on the bus had to talk at the same speed. While the CPU was now isolated and could increase speed, CPUs and memory continued to increase in speed much faster than the buses they talked to. The result was that the bus speeds were now very much slower than what a modern system needed, and the machines were left starved for data. A particularly common example of this problem was that video cards quickly outran even the newer bus systems like PCI, and computers began to include AGP just to drive the video card. By 2004 AGP was outgrown again by high-end video cards and other peripherals and has been replaced by the new PCI Express bus.

An increasing number of external devices started employing their own bus systems as well. When disk drives were first introduced, they would be added to the machine with a card plugged into the bus, which is why computers have so many slots on the bus. But through the 1980s and 1990s, new systems like SCSI and IDE were introduced to serve this need, leaving most slots in modern systems empty. Today there are likely to be about five different buses in the typical machine, supporting various devices.

Third generation

"Third generation" buses have been emerging into the market since about 2001, including HyperTransport and InfiniBand. They also tend to be very flexible in terms of their physical connections, allowing them to be used both as internal buses, as well as connecting different machines together. This can lead to complex problems when trying to service different requests, so much of the work on these systems concerns software design, as opposed to the hardware itself. In general, these third generation buses tend to look more like a network than the original concept of a bus, with a higher protocol overhead needed than early systems, while also allowing multiple devices to use the bus at once.

Buses such as Wishbone have been developed by the open source hardware movement in an attempt to further remove legal and patent constraints from computer design.


Examples of internal computer buses

Parallel

-   ASUS Media Bus proprietary, used on some ASUS Socket 7 motherboards
-   Computer Automated Measurement and Control (CAMAC) for instrumentation systems
-   Extended ISA or EISA
-   Industry Standard Architecture or ISA
-   Low Pin Count or LPC
-   MBus
-   MicroChannel or MCA
-   Multibus for industrial systems
-   NuBus or IEEE 1196
-   OPTi local bus used on early Intel 80486 motherboards.
-   Conventional PCI
-   Parallel ATA (also known as Advanced Technology Attachment, ATA, PATA, IDE, EIDE, ATAPI, etc.) disk/tape peripheral attachment bus
-   S-100 bus or IEEE 696, used in the Altair and similar microcomputers
-   SBus or IEEE 1496
-   SS-50 Bus
-   Runway bus, a proprietary front side CPU bus developed by Hewlett-Packard for use by its PA-RISC microprocessor family
-   GSC/HSC, a proprietary peripheral bus developed by Hewlett-Packard for use by its PA-RISC microprocessor family
-   Precision Bus, a proprietary bus developed by Hewlett-Packard for use by its HP3000 computer family
-   STEbus
-   STD Bus (for STD-80 [8-bit] and STD32 [16-/32-bit]), FAQ
-   Unibus, a proprietary bus developed by Digital Equipment Corporation for their PDP-11 and early VAX computers.
-   Q-Bus, a proprietary bus developed by Digital Equipment Corporation for their PDP and later VAX computers.
-   VESA Local Bus or VLB or VL-bus
-   VMEbus, the VERSAmodule Eurocard bus
-   PC/104
-   PC/104-Plus
-   PCI-104
-   PCI/104-Express
-   PCI/104
-   Zorro II and Zorro III, used in Amiga computer systems

Serial

-   1-Wire
-   HyperTransport
-   I²C
-   PCI Express or PCIe
-   Serial ATA (SATA)
-   Serial Peripheral Interface Bus or SPI bus
-   UNI/O
-   SMBus


Examples of external computer buses

Parallel

-   HIPPI High Performance Parallel Interface
-   IEEE-488 (also known as GPIB, General-Purpose Interface Bus, and HPIB, Hewlett-Packard Instrumentation Bus)
-   PC Card, previously known as _PCMCIA_, much used in laptop computers and other portables, but fading with the introduction of USB and built-in network and modem connections

Serial

-   Camera Link
-   CAN bus ("Controller Area Network")
-   eSATA
-   ExpressCard
-   Fieldbus
-   IEEE 1394 interface (FireWire)
-   Lightning
-   RS-232
-   RS-485
-   Thunderbolt
-   USB Universal Serial Bus, used for a variety of external devices


Examples of internal/external computer buses

-   Futurebus
-   InfiniBand
-   PCI Express External Cabling
-   QuickRing
-   Scalable Coherent Interface (SCI)
-   SCSI Small Computer System Interface, disk/tape peripheral attachment bus
-   Serial Attached SCSI (SAS) and other serial SCSI buses
-   Thunderbolt
-   Yapbus, a proprietary bus developed for the Pixar Image Computer


See also

-   Address decoder
-   Bus contention
-   Bus error
-   Bus mastering
-   Communication endpoint
-   Control bus
-   Crossbar switch
-   Memory address
-   Memory bus (Data bus)
-   Front-side bus (FSB)
-   External Bus Interface (EBI)
-   Harvard architecture
-   Master/slave (technology)
-   Network On Chip
-   List of device bandwidths
-   List of network buses
-   Software bus


References


External links

-   -   Computer hardware buses and slots pinouts with brief descriptions

Computer_buses Category:Digital electronics Category:Motherboard

[1]

[2]

[3] Avionic Systems Standardisation Committee, _Guide to Digital Interface Standards For Military Avionic Applications_, ASSC/110/6/2, Issue 2, September 2003

[4] See the early Australian CSIRAC computer

[5]

[6]

[7]