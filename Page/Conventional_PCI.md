CONVENTIONAL PCI, often shortened to PCI, is a local computer bus for attaching hardware devices in a computer. PCI is an abbreviation for PERIPHERAL COMPONENT INTERCONNECT[1] and is part of the PCI Local Bus standard. The PCI bus supports the functions found on a processor bus but in a standardized format that is independent of any particular processor's native bus. Devices connected to the PCI bus appear to a bus master to be connected directly to its own bus and are assigned addresses in the processor's address space[2]. It is a parallel bus, synchronous to a single bus clock.

Attached devices can take either the form of an integrated circuit fitted onto the motherboard itself (called a _planar device_ in the PCI specification) or an expansion card that fits into a slot. The PCI Local Bus was first implemented in IBM PC compatibles, where it displaced the combination of several slow ISA slots and one fast VESA Local Bus slot as the bus configuration. It has subsequently been adopted for other computer types. Typical PCI cards used in PCs include: network cards, sound cards, modems, extra ports such as USB or serial, TV tuner cards and disk controllers. PCI video cards replaced ISA and VESA cards until growing bandwidth requirements outgrew the capabilities of PCI. The preferred interface for video cards then became AGP, itself a superset of PCI, before giving way to PCI Express.[3]

The first version of PCI found in retail desktop computers was a 32-bit bus using a 33 MHz bus clock and 5 V signalling, although the PCI 1.0 standard provided for a 64-bit variant as well. These have one locating notch in the card. Version 2.0 of the PCI standard introduced 3.3 V slots, physically distinguished by a flipped physical connector to prevent accidental insertion of 5 V cards. Universal cards, which can operate on either voltage, have two notches. Version 2.1 of the PCI standard introduced optional 66 MHz operation. A server-oriented variant of PCI, called PCI-X (PCI Extended) operated at frequencies up to 133 MHz for PCI-X 1.0 and up to 533 MHz for PCI-X 2.0. An internal connector for laptop cards, called MINI PCI, was introduced in version 2.2 of the PCI specification. The PCI bus was also adopted for an external laptop connector standard the CardBus.[4] The first PCI specification was developed by Intel, but subsequent development of the standard became the responsibility of the PCI Special Interest Group (PCI-SIG).[5]

Conventional PCI and PCI-X are sometimes called PARALLEL PCI in order to distinguish them technologically from their more recent successor PCI Express, which adopted a serial, lane-based architecture.[6][7] PCI's heyday in the desktop computer market was approximately 1995–2005.[8] PCI and PCI-X have become obsolete for most purposes; however, they are still common on modern desktops for the purposes of backwards compatibility and the low relative cost to produce. Many kinds of devices previously available on PCI expansion cards are now commonly integrated onto motherboards or available in USB and PCI Express versions.


History

adapter from Adaptec]]

Work on PCI began at Intel's Architecture Development Lab . A team of Intel engineers (composed primarily of ADL engineers) defined the architecture and developed a proof of concept chipset and platform (Saturn) partnering with teams in the company's desktop PC systems and core logic product organizations.

PCI was immediately put to use in servers, replacing MCA and EISA as the server expansion bus of choice. In mainstream PCs, PCI was slower to replace VESA Local Bus (VLB), and did not gain significant market penetration until late 1994 in second-generation Pentium PCs. By 1996, VLB was all but extinct, and manufacturers had adopted PCI even for 486 computers.[9] EISA continued to be used alongside PCI through 2000. Apple Computer adopted PCI for professional Power Macintosh computers (replacing NuBus) in mid-1995, and the consumer Performa product line (replacing LC PDS) in mid-1996.

The 64-bit version of plain PCI remained rare in practice though,[10] although it was used for example by all (post-iMac) G3 and G4 Power Macintosh computers.[11]

Later revisions of PCI added new features and performance improvements, including a 66 MHz 3.3 V standard and 133 MHz PCI-X, and the adaptation of PCI signaling to other form factors. Both PCI-X 1.0b and PCI-X 2.0 are backward compatible with some PCI standards. These revisions were used on server hardware but consumer PC hardware remained nearly all 32 bit, 33 MHz and 5 volt.

The PCI-SIG introduced the serial PCI Express in . At the same time, they renamed _PCI_ as _Conventional PCI_. Since then, motherboard manufacturers have included progressively fewer PCI slots in favor of the new standard. Many new motherboards do not provide PCI slots at all, as of late 2013.

  Spec      Year   Change summary[13]
  --------- ------ -----------------------------------------------------------------------
  PCI 1.0   1992   Original issue
  PCI 2.0   1993   Incorporated connector and add-in card specification
  PCI 2.1   1995   Incorporated clarifications and added 66 MHz chapter
  PCI 2.2   1998   Incorporated ECNs, and improved readability
  PCI 2.3   2002   Incorporated ECNs, errata, and deleted 5 volt only keyed add-in cards
  PCI 3.0   2004   Removed support for the 5.0 volt keyed system board connector

  : PCI history[12]


Auto configuration

PCI provides separate memory and I/O port address spaces for the x86 processor family, 64 and 32 bits, respectively. Addresses in these address spaces are assigned by software. A third address space, called the PCI Configuration Space, which uses a fixed addressing scheme, allows software to determine the amount of memory and I/O address space needed by each device. Each device can request up to six areas of memory space or I/O port space via its configuration space registers.

In a typical system, the firmware (or operating system) queries all PCI buses at startup time (via PCI Configuration Space) to find out what devices are present and what system resources (memory space, I/O space, interrupt lines, etc.) each needs. It then allocates the resources and tells each device what its allocation is.

The PCI configuration space also contains a small amount of device type information, which helps an operating system choose device drivers for it, or at least to have a dialogue with a user about the system configuration.

Devices may have an on-board ROM containing executable code for x86 or PA-RISC processors, an Open Firmware driver, or an EFI driver. These are typically necessary for devices used during system startup, before device drivers are loaded by the operating system.

In addition, there are PCI LATENCY TIMERS that are a mechanism for PCI BUS-MASTERING devices to share the PCI bus fairly. "Fair" in this case means that devices will not use such a large portion of the available PCI bus bandwidth that other devices are not able to get needed work done. Note, this does not apply to PCI Express.


Interrupts

Devices are required to follow a protocol so that the interrupt lines can be shared. The PCI bus includes four interrupt lines, all of which are available to each device. However, they are not wired in parallel as are the other PCI bus lines. The positions of the interrupt lines rotate between slots, so what appears to one device as the INTA# line is INTB# to the next and INTC# to the one after that. Single-function devices use their INTA# for interrupt signaling, so the device load is spread fairly evenly across the four available interrupt lines. This alleviates a common problem with sharing interrupts.

The mapping of PCI interrupt lines onto system interrupt lines, through the PCI host bridge, is implementation-dependent. Platform-specific BIOS code is meant to know this, and set the "interrupt line" field in each device's configuration space indicating which IRQ it is connected to.

PCI interrupt lines are level-triggered. This was chosen over edge-triggering in order to gain an advantage when servicing a shared interrupt line, and for robustness: edge triggered interrupts are easy to miss.

Later revisions of the PCI specification add support for message-signaled interrupts. In this system, a device signals its need for service by performing a memory write, rather than by asserting a dedicated line. This alleviates the problem of scarcity of interrupt lines. Even if interrupt vectors are still shared, it does not suffer the sharing problems of level-triggered interrupts. It also resolves the routing problem, because the memory write is not unpredictably modified between device and host. Finally, because the message signaling is in-band, it resolves some synchronization problems that can occur with posted writes and out-of-band interrupt lines.

PCI Express does not have physical interrupt lines at all. It uses message-signaled interrupts exclusively.


Conventional hardware specifications

These specifications represent the most common version of PCI used in normal PCs:

-   clock with synchronous transfers

-   Peak transfer rate of 133 MB/s (133 megabytes per second) for 32-bit bus width (33.33 MHz × 32 bits ÷ 8 bits/byte = 133 MB/s)
-   32-bit bus width
-   32- or 64-bit memory address space (4 gigabytes or 16 exabytes)
-   32-bit I/O port space
-   256-byte (per device) configuration space
-   5-volt signaling
-   Reflected-wave switching

The PCI specification also provides options for 3.3 V signaling, 64-bit bus width, and 66 MHz clocking, but these are not commonly encountered outside of PCI-X support on server motherboards.

The PCI bus arbiter performs bus arbitration among multiple masters on the PCI bus. Any number of bus masters can reside on the PCI bus, as well as requests for the bus. One pair of request and grant signals is dedicated to each bus master.

Card voltage and keying

expansion card with both 5 V and 3.3 V support notches, side B toward the camera]]

Typical PCI cards have either one or two key notches, depending on their signaling voltage. Cards requiring 3.3 volts have a notch 56.21 mm from the card backplate; those requiring 5 volts have a notch 104.47 mm from the backplate. This allows cards to be fitted only into slots with a voltage they support. "Universal cards" accepting either voltage have both key notches.

Connector pinout

The PCI connector is defined as having 62 contacts on each side of the edge connector, but two or four of them are replaced by key notches, so a card has 60 or 58 contacts on each side. Side A refers to the 'solder side' and side B refers to the 'component side': if the card is held with the connector pointing down, a view of side A will have the backplate on the right, whereas a view of side B will have the backplate on the left. The pinout of B and A sides are as follows, looking down into the motherboard connector (pins A1 and B1 are closest to backplate).[14][15][16]

  Pin   Side B     Side A      Comments
  ----- ---------- ----------- ----------------------------------------------------------------------
  1     −12 V      TRST#       JTAG port pins (optional)
  2     TCK        +12 V
  3     Ground     TMS
  4     TDO        TDI
  5     +5 V       +5 V
  6     +5 V       INTA#       Interrupt lines (open-drain)
  7     INTB#      INTC#
  8     INTD#      +5 V
  9     PRSNT1#    Reserved    Pulled low to indicate 7.5 or 25 W power required
  10    Reserved   IOPWR       +5 V or +3.3 V
  11    PRSNT2#    Reserved    Pulled low to indicate 7.5 or 15 W power required
  12    Ground     Ground      Key notch for 3.3 V-capable cards
  13    Ground     Ground
  14    Reserved   3.3 V aux   Standby power (optional)
  15    Ground     RST#        Bus reset
  16    CLK        IOPWR       33/66 MHz clock
  17    Ground     GNT#        Bus grant from motherboard to card
  18    REQ#       Ground      Bus request from card to motherboard
  19    IOPWR      PME#        Power management event (optional) 3.3 V, open drain, active low.[17]
  20    AD[31]     AD[30]      Address/data bus (upper half)
  21    AD[29]     +3.3 V
  22    Ground     AD[28]
  23    AD[27]     AD[26]
  24    AD[25]     Ground
  25    +3.3 V     AD[24]
  26    C/BE[3]#   IDSEL
  27    AD[23]     +3.3 V
  28    Ground     AD[22]
  29    AD[21]     AD[20]
  30    AD[19]     Ground
  31    +3.3 V     AD[18]
  32    AD[17]     AD[16]
  33    C/BE[2]#   +3.3 V
  34    Ground     FRAME#      Bus transfer in progress
  35    IRDY#      Ground      Initiator ready
  36    +3.3 V     TRDY#       Target ready
  37    DEVSEL#    Ground      Target selected
  38    PCIXCAP    Ground      STOP#
  39    LOCK#      +3.3 V      Locked transaction
  40    PERR#      SMBCLK      _SDONE_
  41    +3.3 V     SMBDAT      _SBO#_
  42    SERR#      Ground      System error
  43    +3.3 V     PAR         Even parity over AD[31:00] and C/BE[3:0]#
  44    C/BE[1]#   AD[15]      Address/data bus (higher half)
  45    AD[14]     +3.3 V
  46    Ground     AD[13]
  47    AD[12]     AD[11]
  48    AD[10]     Ground
  49    M66EN      Ground      AD[09]
  50    Ground     Ground      Key notch for 5 V-capable cards
  51    Ground     Ground
  52    AD[08]     C/BE[0]#    Address/data bus (lower half)
  53    AD[07]     +3.3 V
  54    +3.3 V     AD[06]
  55    AD[05]     AD[04]
  56    AD[03]     Ground
  57    Ground     AD[02]
  58    AD[01]     AD[00]
  59    IOPWR      IOPWR
  60    ACK64#     REQ64#      For 64-bit extension; no connect for 32-bit devices.
  61    +5 V       +5 V
  62    +5 V       +5 V

  : 32-bit PCI connector pinout

64-bit PCI extends this by an additional 32 contacts on each side which provide AD[63:32], C/BE[7:4]#, the PAR64 parity signal, and a number of power and ground pins.

  Ground pin         Zero volt reference
  ------------------ --------------------------------------------------------------
  Power pin          Supplies power to the PCI card
  Output pin         Driven by the PCI card, received by the motherboard
  Initiator output   Driven by the master/initiator, received by the target
  I/O signal         May be driven by initiator or target, depending on operation
  Target output      Driven by the target, received by the initiator/master
  Input              Driven by the motherboard, received by the PCI card
  Open drain         May be pulled low and/or sensed by multiple cards
  Reserved           Not presently used, do not connect

  : Legend

Most lines are connected to each slot in parallel. The exceptions are:

-   Each slot has its own REQ# output to, and GNT# input from the motherboard arbiter.
-   Each slot has its own IDSEL line, usually connected to a specific AD line.
-   TDO is daisy-chained to the following slot's TDI. Cards without JTAG support must connect TDI to TDO so as not to break the chain.
-   PRSNT1# and PRSNT2# for each slot have their own pull-up resistors on the motherboard. The motherboard may (but does not have to) sense these pins to determine the presence of PCI cards and their power requirements.
-   REQ64# and ACK64# are individually pulled up on 32-bit only slots.
-   The interrupt lines INTA# through INTD# are connected to all slots in different orders. (INTA# on one slot is INTB# on the next and INTC# on the one after that.)

Notes:

-   IOPWR is +3.3 V or +5 V, depending on the backplane. The slots also have a ridge in one of two places which prevents insertion of cards that do not have the corresponding key notch, indicating support for that voltage standard. Universal cards have both key notches and use IOPWR to determine their I/O signal levels.
-   The PCI SIG strongly encourages 3.3 V PCI signaling,[18] requiring support for it since standard revision 2.3,[19] but most PC motherboards use the 5 V variant. Thus, while many currently available PCI cards support both, and have two key notches to indicate that, there are still a large number of 5 V-only cards on the market.
-   The M66EN pin is an additional ground on 5 V PCI buses found in most PC motherboards. Cards and motherboards that do not support 66 MHz operation also ground this pin. If all participants support 66 MHz operation, a pull-up resistor on the motherboard raises this signal high and 66 MHz operation is enabled. The pin is still connected to ground via coupling capacitors on each card to preserve its AC shielding function.
-   The PCIXCAP pin is an additional ground on conventional PCI buses and cards. If all cards and the motherboard support the PCI-X protocol, a pull-up resistor on the motherboard raises this signal high and PCI-X operation is enabled. The pin is still connected to ground via coupling capacitors on each card to preserve its AC shielding function.
-   At least one of PRSNT1# and PRSNT2# must be grounded by the card. The combination chosen indicates the total power requirements of the card (25 W, 15 W, or 7.5 W).
-   SBO# and SDONE are signals from a cache controller to the current target. They are not initiator outputs, but are colored that way because they are target inputs.
-   PME# (19A) - Power management event (optional) which is supported in PCI and higher. It is a open drain, active low signal.[20] PCI cards may use this signal to send and receive PME via the PCI socket directly, which eliminates the need for a special Wake-on-LAN cable.[21]

Mixing of 32-bit and 64-bit PCI cards in different width slots

Most 32-bit PCI cards will function properly in 64-bit PCI-X slots, but the bus clock rate will be limited to the clock frequency of the slowest card, an inherent limitation of PCI's shared bus topology. For example, when a PCI 2.3, 66-MHz peripheral is installed into a PCI-X bus capable of 133 MHz, the entire bus backplane will be limited to 66 MHz. To get around this limitation, many motherboards have multiple PCI/PCI-X buses, with one bus intended for use with high-speed PCI-X peripherals, and the other bus intended for general-purpose peripherals.

Many 64-bit PCI-X cards are designed to work in 32-bit mode if inserted in shorter 32-bit connectors, with some loss of performance.[22][23] An example of this is the Adaptec 29160 64-bit SCSI interface card.[24] However, some 64-bit PCI-X cards do not work in standard 32-bit PCI slots.[25]

Installing a 64-bit PCI-X card in a 32-bit slot will leave the 64-bit portion of the card edge connector not connected and overhanging. This requires that there be no motherboard components positioned so as to mechanically obstruct the overhanging portion of the card edge connector.


Physical card dimensions

The maximum width of a PCI card is 15.24 mm (0.6 inches). Two bracket heights have been specified, known as full-height and low-profile. The bracket or backplate is the part that fastens to the card cage to stabilize the card. It also usually contains external connectors, so it attaches in a window in the computer case so any connectors are accessible from outside. The backplate is typically fixed to the case by either a 6-32 or M3 screw, or with a separate hold-down bracket that is part of the case.

For each bracket height two different lengths have been specified for a total of four lengths, known as full-length and half-length for full-height cards, and MD1 and MD2 for low-profile cards.

Full-height cards

The original full-height cards are defined by a bracket height of 120 mm (4.7 inches). The height of a full-height cards itself is nominally 107 mm (4.2 inches). The height includes the card edge connector.

Two lengths have been defined for full-height cards, known as full-length and half-length.

Full-length full-height card

The original full-length full-height PCI card (also known as full-size) is specified as a length of 312 mm (12.283 inches) and a height of 107 mm (4.2 inches). However, most modern PCI cards are half-length or smaller (see below) and many modern PC cases cannot accommodate the length of a full-size card. Note, this length is the length of the printed circuit board; it does not include the angled short leg of the metal bracket (which does affect e.g. packaging dimensions). Some high power PCI products have active cooling systems that extend past the nominal dimensions. Likewise, some may take up more than one slot space: these are referred to as double-wide or triple-wide cards, accordingly.

Half-length full-height card

A half-length full-height card has a length of up to 175.26 mm (6.9 inches) and a height of up to 107 mm (4.2 inches). The actual dimensions of many cards described as half-length full-height are lower than these maximums and they will still fit any standard full-height PCI slot as long as they use a properly located full-height bracket.

This is in fact the practical (_de facto_) standard now the majority of modern PCI cards fit inside this envelope.

Low-profile cards

Low-profile PCI cards (also known as LPPCI or half-height cards) are defined by a bracket reduced in height to 79.2 mm (3.118 inches). The low-profile specification assumes a 3.3 volt PCI slot. The retention screw has also been moved 1.35 mm closer to the fold in the bracket.

The low profile card itself has a maximum height of 64.41 mm (2.536 inches) including the edge connector.

The smaller bracket will not fit a standard desktop, tower or 3U rack-mount PC case, but will fit in many newer small form-factor (SFF) desktop cases or in a 2U rack-mount case. These cards may be known by other names such as "slim".[26][27]

Many manufacturers supply both types of bracket with cards, where the bracket is typically attached to the card with a pair of screws allowing the installer to easily change it.

The PCI-SIG has defined two standard lengths for low-profile cards, known as MD1 and MD2.

MD1 low-profile card

MD1 defines the shortest 32-bit PCI card length, 119.91 mm (4.721 inches) and a maximum height of 64.41 mm (2.536 inches).

MD2 low-profile card

MD2 defines the maximum length of a low profile PCI card as 167.64 mm (6.600 inches) and a maximum height of 64.41 mm (2.536 inches). Any low profile PCI card longer than the MD1 length is considered an MD2 card. This is the most common low-profile card form-factor.

Beside conventional PCI, many PCI Express cards are also described as MD2 low-profile form-factor.

Mini PCI

card Type IIIB]]MINI PCI was added to PCI version 2.2 for use in laptops; it uses a 32-bit, 33 MHz bus with powered connections (3.3 V only; 5 V is limited to 100 mA) and support for bus mastering and DMA. The standard size for Mini PCI cards is approximately a quarter of their full-sized counterparts. There is no access to the card from outside the case, unlike desktop PCI cards with brackets carrying connectors. This limits the kinds of functions a Mini PCI card can perform.

Many Mini PCI devices were developed such as Wi-Fi, Fast Ethernet, Bluetooth, modems (often Winmodems), sound cards, cryptographic accelerators, SCSI, IDE–ATA, SATA controllers and combination cards. Mini PCI cards can be used with regular PCI-equipped hardware, using Mini PCI-to-PCI _converters_. Mini PCI has been superseded by the much narrower PCI Express Mini Card

Technical details of Mini PCI

Mini PCI cards have a 2 W maximum power consumption, which limits the functionality that can be implemented in this form factor. They also are required to support the CLKRUN# PCI signal used to start and stop the PCI clock for power management purposes.

There are three card form factors: Type I, Type II, and Type III cards. The card connector used for each type include: Type I and II use a 100-pin stacking connector, while Type III uses a 124-pin edge connector, i.e. the connector for Types I and II differs from that for Type III, where the connector is on the edge of a card, like with a SO-DIMM. The additional 24 pins provide the extra signals required to route I/O back through the system connector (audio, AC-Link, LAN, phone-line interface). Type II cards have RJ11 and RJ45 mounted connectors. These cards must be located at the edge of the computer or docking station so that the RJ11 and RJ45 ports can be mounted for external access.

+------+--------------------+-------------------+-----------------------------+-------------------------------+
| Type | Card on outer edge | Connector         | Size                        | Comments                      |
|      | of host system     |                   |                             |                               |
+======+====================+===================+=============================+===============================+
| IA   |                    | 100-pin stacking  | 7.5 mm × 70 mm × 45 mm      | Large Z dimension (7.5 mm)    |
+------+--------------------+-------------------+-----------------------------+-------------------------------+
| IB   |                    | 100-pin stacking  | 5.5 mm × 70 mm × 45 mm      | Smaller Z dimension (5.5 mm)  |
+------+--------------------+-------------------+-----------------------------+-------------------------------+
| IIA  |                    | 100-pin stacking  | 17.44 mm × 70 mm × 45 mm    | Large Z dimension (17.44 mm)  |
+------+--------------------+-------------------+-----------------------------+-------------------------------+
| IIB  |                    | 100-pin stacking  | 5.5 mm × 78 mm × 45 mm      | Smaller Z dimension (5.5 mm)  |
+------+--------------------+-------------------+-----------------------------+-------------------------------+
| IIIA |                    | 124-pin card edge | 2.4 mm × 59.6 mm × 50.95 mm | Larger Y dimension (50.95 mm) |
+------+--------------------+-------------------+-----------------------------+-------------------------------+
| IIIB |                    | 124-pin card edge | 2.4 mm × 59.6 mm × 44.6 mm  | Smaller Y dimension (44.6 mm) |
+------+--------------------+-------------------+-----------------------------+-------------------------------+

Mini PCI is distinct from 144-pin Micro PCI.[28]

PC/104-Plus and PCI-104

The PC/104-Plus and PCI-104 embedded form factors include a stacking 120 pin PCI connector.

Other physical variations

Typically consumer systems specify "N × PCI slots" without specifying actual dimensions of the space available. In some small-form-factor systems, this may not be sufficient to allow even "half-length" PCI cards to fit. Despite this limitation, these systems are still useful because many modern PCI cards are considerably smaller than half-length.


PCI bus transactions

PCI bus traffic consists of a series of PCI bus transactions. Each transaction consists of an _address phase_ followed by one or more _data phases_. The direction of the data phases may be from initiator to target (write transaction) or vice versa (read transaction), but all of the data phases must be in the same direction. Either party may pause or halt the data phases at any point. (One common example is a low-performance PCI device that does not support burst transactions, and always halts a transaction after the first data phase.)

Any PCI device may initiate a transaction. First, it must request permission from a PCI bus arbiter on the motherboard. The arbiter grants permission to one of the requesting devices. The initiator begins the address phase by broadcasting a 32-bit address plus a 4-bit command code, then waits for a target to respond. All other devices examine this address and one of them responds a few cycles later.

64-bit addressing is done using a two-stage address phase. The initiator broadcasts the low 32 address bits, accompanied by a special "dual address cycle" command code. Devices which do not support 64-bit addressing can simply not respond to that command code. The next cycle, the initiator transmits the high 32 address bits, plus the real command code. The transaction operates identically from that point on. To ensure compatibility with 32-bit PCI devices, it is forbidden to use a dual address cycle if not necessary, i.e. if the high-order address bits are all zero.

While the PCI bus transfers 32 bits per data phase, the initiator transmits 4 active-low byte enable signals indicating which 8-bit bytes are to be considered significant. In particular, a write must affect only the enabled bytes in the target PCI device. They are of little importance for memory reads, but I/O reads might have side effects. The PCI standard explicitly allows a data phase with no bytes enabled, which must behave as a no-op.

PCI address spaces

PCI has three address spaces: memory, I/O address, and configuration.

Memory addresses are 32 bits (optionally 64 bits) in size, support caching and can be burst transactions.

I/O addresses are for compatibility with the Intel x86 architecture's I/O port address space. Although the PCI bus specification allows burst transactions in any address space, most devices only support it for memory addresses and not I/O.

Finally, PCI configuration space provides access to 256 bytes of special configuration registers per PCI device. Each PCI slot gets its own configuration space address range. The registers are used to configure devices memory and I/O address ranges they should respond to from transaction initiators. When a computer is first turned on, all PCI devices respond only to their configuration space accesses. The computer's BIOS scans for devices and assigns Memory and I/O address ranges to them.

If an address is not claimed by any device, the transaction initiator's address phase will time out causing the initiator to abort the operation. In case of reads, it is customary to supply all-ones for the read data value (0xFFFFFFFF) in this case. PCI devices therefore generally attempt to avoid using the all-ones value in important status registers, so that such an error can be easily detected by software.

PCI command codes

There are 16 possible 4-bit command codes, and 12 of them are assigned. With the exception of the unique dual address cycle, the least significant bit of the command code indicates whether the following data phases are a read (data sent from target to initiator) or a write (data sent from an initiator to target). PCI targets must examine the command code as well as the address and not respond to address phases which specify an unsupported command code.

The commands that refer to cache lines depend on the PCI configuration space cache line size register being set up properly; they may not be used until that has been done.

0000 Interrupt Acknowledge
    This is a special form of read cycle implicitly addressed to the interrupt controller, which returns an interrupt vector. The 32-bit address field is ignored. One possible implementation is to generate an interrupt acknowledge cycle on an ISA bus using a PCI/ISA bus bridge. This command is for IBM PC compatibility; if there is no Intel 8259 style interrupt controller on the PCI bus, this cycle need never be used.

0001 Special Cycle
    This cycle is a special broadcast write of system events that PCI card may be interested in. The address field of a special cycle is ignored, but it is followed by a data phase containing a payload message. The currently defined messages announce that the processor is stopping for some reason (e.g. to save power). No device ever responds to this cycle; it is always terminated with a master abort after leaving the data on the bus for at least 4 cycles.

0010 I/O Read
    This performs a read from I/O space. All 32 bits of the read address are provided, so that a device may (for compatibility reasons) implement less than 4 bytes worth of I/O registers. If the byte enables request data not within the address range supported by the PCI device (e.g. a 4-byte read from a device which only supports 2 bytes of I/O address space), it must be terminated with a target abort. Multiple data cycles are permitted, using linear (simple incrementing) burst ordering.
    The PCI standard is discouraging the use of I/O space in new devices, preferring that as much as possible be done through main memory mapping.

0011 I/O Write
    This performs a write to I/O space.

010_x_ Reserved
    A PCI device must not respond to an address cycle with these command codes.

0110 Memory Read
    This performs a read cycle from memory space. Because the smallest memory space a PCI device is permitted to implement is 16 bytes,[29][30] the two least significant bits of the address are not needed during the address phase; equivalent information will arrive during the data phases in the form of byte select signals. They instead specify the order in which burst data must be returned.[31][32] If a device does not support the requested order, it must provide the first word and then disconnect.
    If a memory space is marked as "prefetchable", then the target device must ignore the byte select signals on a memory read and always return 32 valid bits.

0111 Memory Write
    This operates similarly to a memory read. The byte select signals are more important in a write, as unselected bytes must not be written to memory.
    Generally, PCI writes are faster than PCI reads, because a device may buffer the incoming write data and release the bus faster. For a read, it must delay the data phase until the data has been fetched.

100_x_ Reserved
    A PCI device must not respond to an address cycle with these command codes.

1010 Configuration Read
    This is similar to an I/O read, but reads from PCI configuration space. A device must respond only if the low 11 bits of the address specify a function and register that it implements, and if the special IDSEL signal is asserted. It must ignore the high 21 bits. Burst reads (using linear incrementing) are permitted in PCI configuration space.
    Unlike I/O space, standard PCI configuration registers are defined so that reads never disturb the state of the device. It is possible for a device to have configuration space registers beyond the standard 64 bytes which have read side effects, but this is rare.[33]
    Configuration space accesses often have a few cycles of delay in order to allow the IDSEL lines to stabilize, which makes them slower than other forms of access. Also, a configuration space access requires a multi-step operation rather than a single machine instruction. Thus, it is best to avoid them during routine operation of a PCI device.

1011 Configuration Write
    This operates analogously to a configuration read.

1100 Memory Read Multiple
    This command is identical to a generic memory read, but includes the hint that a long read burst will continue beyond the end of the current cache line, and the target should internally prefetch a large amount of data. A target is always permitted to consider this a synonym for a generic memory read.

1101 Dual Address Cycle
    When accessing a memory address that requires more than 32 bits to represent, the address phase begins with this command and the low 32 bits of the address, followed by a second cycle with the actual command and the high 32 bits of the address. PCI targets that do not support 64-bit addressing may simply treat this as another reserved command code and not respond to it. This command code may only be used with a non-zero high-order address word; it is forbidden to use this cycle if not necessary.

1110 Memory Read Line
    This command is identical to a generic memory read, but includes the hint that the read will continue to the end of the cache line. A target is always permitted to consider this a synonym for a generic memory read.

1111 Memory Write and Invalidate
    This command is identical to a generic memory write, but comes with the guarantee that one or more whole cache lines will be written, with all byte selects enabled. This is an optimization for write-back caches snooping the bus. Normally, a write-back cache holding dirty data must interrupt the write operation long enough to write its own dirty data first. If the write is performed using this command, the data to be written back is guaranteed to be irrelevant, and may simply be invalidated in the write-back cache.
    This optimization only affects the snooping cache, and makes no difference to the target, which may treat this as a synonym for the memory write command.


PCI bus latency

Soon after promulgation of the PCI specification, it was discovered that lengthy transactions by some devices, due to slow acknowledgments, long data bursts, or some combination, could cause buffer underrun or overrun in other devices. Recommendations on the timing of individual phases in Revision 2.0 were made mandatory in revision 2.1:[34]

-   A target must be able to complete the initial data phase (assert TRDY# and/or STOP#) within 16 cycles of the start of a transaction.
-   An initiator must complete each data phase (assert IRDY#) within 8 cycles.

Additionally, as of revision 2.1, all initiators capable of bursting more than two data phases must implement a programmable latency timer. The timer starts counting clock cycles when a transaction starts (initiator asserts FRAME#). If the timer has expired _and_ the arbiter has removed GNT#, then the initiator must terminate the transaction at the next legal opportunity. This is usually the next data phase, but Memory Write and Invalidate transactions must continue to the end of the cache line.

Delayed transactions

Devices unable to meet those timing restrictions must use a combination of posted writes (for memory writes) and delayed transactions (for other writes and all reads). In a delayed transaction, the target records the transaction (including the write data) internally and aborts (asserts STOP# rather than TRDY#) the first data phase. The initiator _must_ retry exactly the same transaction later. In the interim, the target internally performs the transaction, and waits for the retried transaction. When the retried transaction is seen, the buffered result is delivered.

A device may be the target of other transactions while completing one delayed transaction; it must remember the transaction type, address, byte selects and (if a write) data value, and only complete the correct transaction.

If the target has a limit on the number of delayed transactions that it can record internally (simple targets may impose a limit of 1), it will force those transactions to retry without recording them. They will be dealt with when the current delayed transaction is completed. If two initiators attempt the same transaction, a delayed transaction begun by one may have its result delivered to the other; this is harmless.

A target abandons a delayed transaction when a retry succeeds in delivering the buffered result, the bus is reset, or when 2¹⁵=32768 clock cycles (approximately 1 ms) elapse without seeing a retry. The latter should never happen in normal operation, but it prevents a deadlock of the whole bus if one initiator is reset or malfunctions.


PCI bus bridges

The PCI standard permits multiple independent PCI buses to be connected by bus bridges that will forward operations on one bus to another when required. Although PCI tends not to use many bus bridges, PCI Express systems use many; each PCI Express slot appears to be a separate bus, connected by a bridge to the others.

Posted writes

Generally, when a bus bridge sees a transaction on one bus that must be forwarded to the other, the original transaction must wait until the forwarded transaction completes before a result is ready. One notable exception occurs in the case of memory writes. Here, the bridge may record the write data internally (if it has room) and signal completion of the write before the forwarded write has completed. Or, indeed, before it has begun. Such "sent but not yet arrived" writes are referred to as "posted writes", by analogy with a postal mail message. Although they offer great opportunity for performance gains, the rules governing what is permissible are somewhat intricate.[35]

Combining, merging, and collapsing

The PCI standard permits bus bridges to convert multiple bus transactions into one larger transaction under certain situations. This can improve the efficiency of the PCI bus.

Combining : Write transactions to consecutive addresses may be combined into a longer burst write, as long as the order of the accesses in the burst is the same as the order of the original writes. It is permissible to insert extra data phases with all byte enables turned off if the writes are almost consecutive.
Merging : Multiple writes to disjoint portions of the same word may be merged into a single write with multiple byte enables asserted. In this case, writes that were presented to the bus bridge in a particular order are merged so they occur at the same time when forwarded.
Collapsing : Multiple writes to the same byte or bytes may _not_ be combined, for example, by performing only the second write and skipping the first write that was overwritten. This is because the PCI specification permits writes to have side effects.


PCI bus signals

PCI bus transactions are controlled by five main control signals, two driven by the initiator of a transaction (FRAME# and IRDY#), and three driven by the target (DEVSEL#, TRDY#, and STOP#). There are two additional arbitration signals (REQ# and GNT#) which are used to obtain permission to initiate a transaction. All are active-low, meaning that the active or _asserted_ state is a low voltage. Pull-up resistors on the motherboard ensure they will remain high (inactive or _deasserted_) if not driven by any device, but the PCI bus does not depend on the resistors to _change_ the signal level; all devices drive the signals high for one cycle before ceasing to drive the signals.

Signal timing

All PCI bus signals are sampled on the rising edge of the clock. Signals nominally change on the falling edge of the clock, giving each PCI device approximately one half a clock cycle to decide how to respond to the signals it observed on the rising edge, and one half a clock cycle to transmit its response to the other device.

The PCI bus requires that every time the device driving a PCI bus signal changes, one _turnaround cycle_ must elapse between the time the one device stops driving the signal and the other device starts. Without this, there might be a period when both devices were driving the signal, which would interfere with bus operation.

The combination of this turnaround cycle and the requirement to drive a control line high for one cycle before ceasing to drive it means that each of the main control lines must be high for a minimum of two cycles when changing owners. The PCI bus protocol is designed so this is rarely a limitation; only in a few special cases (notably fast back-to-back transactions) is it necessary to insert additional delay to meet this requirement.

Arbitration

Any device on a PCI bus that is capable of acting as a bus master may initiate a transaction with any other device. To ensure that only one transaction is initiated at a time, each master must first wait for a bus grant signal, GNT#, from an arbiter located on the motherboard. Each device has a separate request line REQ# that requests the bus, but the arbiter may "park" the bus grant signal at any device if there are no current requests.

The arbiter may remove GNT# at any time. A device which loses GNT# may complete its current transaction, but may not start one (by asserting FRAME#) unless it observes GNT# asserted the cycle before it begins.

The arbiter may also provide GNT# at any time, including during another master's transaction. During a transaction, either FRAME# or IRDY# or both are asserted; when both are deasserted, the bus is idle. A device may initiate a transaction at any time that GNT# is asserted and the bus is idle.

Address phase

A PCI bus transaction begins with an _address phase_. The initiator, seeing that it has GNT# and the bus is idle, drives the target address onto the AD[31:0] lines, the associated command (e.g. memory read, or I/O write) on the C/BE[3:0]# lines, and pulls FRAME# low.

Each other device examines the address and command and decides whether to respond as the target by asserting DEVSEL#. A device must respond by asserting DEVSEL# within 3 cycles. Devices which promise to respond within 1 or 2 cycles are said to have "fast DEVSEL" or "medium DEVSEL", respectively. (Actually, the time to respond is 2.5 cycles, since PCI devices must transmit all signals half a cycle early so that they can be received three cycles later.)

Note that a device must latch the address on the first cycle; the initiator is required to remove the address and command from the bus on the following cycle, even before receiving a DEVSEL# response. The additional time is available only for interpreting the address and command after it is captured.

On the fifth cycle of the address phase (or earlier if all other devices have medium DEVSEL or faster), a catch-all "subtractive decoding" is allowed for some address ranges. This is commonly used by an ISA bus bridge for addresses within its range (24 bits for memory and 16 bits for I/O).

On the sixth cycle, if there has been no response, the initiator may abort the transaction by deasserting FRAME#. This is known as _master abort termination_ and it is customary for PCI bus bridges to return all-ones data (0xFFFFFFFF) in this case. PCI devices therefore are generally designed to avoid using the all-ones value in important status registers, so that such an error can be easily detected by software.

Address phase timing

                  _  0_  1_  2_  3_  4_  5_
            CLK _/ _/ _/ _/ _/ _/ _/
                ___
           GNT#    ___/XXXXXXXXXXXXXXXXXXX (GNT# Irrelevant after cycle has started)
                _______
         FRAME#        ___________________
                        ___
       AD[31:0] -------<___>--------------- (Address only valid for one cycle.)
                        ___ _______________
     C/BE[3:0]# -------<___X_______________ (Command, then first data phase byte enables)
                _______________________
        DEVSEL#            ____________
                         Fast Med Slow Subtractive
                  _   _   _   _   _   _   _
            CLK _/ _/ _/ _/ _/ _/ _/
                     0   1   2   3   4   5

On the rising edge of clock 0, the initiator observes FRAME# and IRDY# both high, and GNT# low, so it drives the address, command, and asserts FRAME# in time for the rising edge of clock 1. Targets latch the address and begin decoding it. They may respond with DEVSEL# in time for clock 2 (fast DEVSEL), 3 (medium) or 4 (slow). Subtractive decode devices, seeing no other response by clock 4, may respond on clock 5. If the master does not see a response by clock 5, it will terminate the transaction and remove FRAME# on clock 6.

TRDY# and STOP# are deasserted (high) during the address phase. The initiator may assert IRDY# as soon as it is ready to transfer data, which could theoretically be as soon as clock 2.

Dual-cycle address

To allow 64-bit addressing, a master will present the address over two consecutive cycles. First, it sends the low-order address bits with a special "dual-cycle address" command on the C/BE[3:0]#. On the following cycle, it sends the high-order address bits and the actual command. Dual-address cycles are forbidden if the high-order address bits are zero, so devices which do not support 64-bit addressing can simply not respond to dual cycle commands.

                  _  0_  1_  2_  3_  4_  5_  6_
            CLK _/ _/ _/ _/ _/ _/ _/ _/
                ___
           GNT#    ___/XXXXXXXXXXXXXXXXXXXXXXX
                _______
         FRAME#        _______________________
                        ___ ___
       AD[31:0] -------<___X___>--------------- (Low, then high bits)
                        ___ ___ _______________
     C/BE[3:0]# -------<___X___X_______________ (DAC, then actual command)
                ___________________________
        DEVSEL#                ____________
                             Fast Med Slow
                  _   _   _   _   _   _   _   _
            CLK _/ _/ _/ _/ _/ _/ _/ _/
                     0   1   2   3   4   5   6

Configuration access

Addresses for PCI configuration space access are decoded specially. For these, the low-order address lines specify the offset of the desired PCI configuration register, and the high-order address lines are ignored. Instead, an additional address signal, the IDSEL input, must be high before a device may assert DEVSEL#. Each slot connects a different high-order address line to the IDSEL pin, and is selected using one-hot encoding on the upper address lines.

Data phases

After the address phase (specifically, beginning with the cycle that DEVSEL# goes low) comes a burst of one or more _data phases_. In all cases, the initiator drives active-low byte select signals on the C/BE[3:0]# lines, but the data on the AD[31:0] may be driven by the initiator (in case of writes) or target (in case of reads).

During data phases, the C/BE[3:0]# lines are interpreted as active-low _byte enables_. In case of a write, the asserted signals indicate which of the four bytes on the AD bus are to be written to the addressed location. In the case of a read, they indicate which bytes the initiator is interested in. For reads, it is always legal to ignore the byte enable signals and simply return all 32 bits; cacheable memory resources are required to always return 32 valid bits. The byte enables are mainly useful for I/O space accesses where reads have side effects.

A data phase with all four C/BE# lines deasserted is explicitly permitted by the PCI standard, and must have no effect on the target other than to advance the address in the burst access in progress.

The data phase continues until both parties are ready to complete the transfer and continue to the next data phase. The initiator asserts IRDY# (_initiator ready_) when it no longer needs to wait, while the target asserts TRDY# (_target ready_). Whichever side is providing the data must drive it on the AD bus before asserting its ready signal.

Once one of the participants asserts its ready signal, it may not become un-ready or otherwise alter its control signals until the end of the data phase. The data recipient must latch the AD bus each cycle until it sees both IRDY# and TRDY# asserted, which marks the end of the current data phase and indicates that the just-latched data is the word to be transferred.

To maintain full burst speed, the data sender then has half a clock cycle after seeing both IRDY# and TRDY# asserted to drive the next word onto the AD bus.

                 0_  1_  2_  3_  4_  5_  6_  7_  8_  9_
            CLK _/ _/ _/ _/ _/ _/ _/ _/ _/ _/
                    ___         _______     ___ ___ ___
       AD[31:0] ---<___XXXXXXXXX_______XXXXX___X___X___ (If a write)
                    ___             ___ _______ ___ ___
       AD[31:0] ---<___>~~~<XXXXXXXX___X_______X___X___ (If a read)
                    ___ _______________ _______ ___ ___
     C/BE[3:0]# ---<___X_______________X_______X___X___ (Must always be valid)
                _______________      |  ___  |   |   |
          IRDY#              x _______/ x ___________
                ___________________  |       |   |   |
          TRDY#              x   x ___________________
                ___________          |       |   |   |
        DEVSEL#            ___________________________
                ___                  |       |   |   |
         FRAME#    ___________________________________
                  _   _   _   _   _  |_   _  |_  |_  |_
            CLK _/ _/ _/ _/ _/ _/ _/ _/ _/ _/
                 0   1   2   3   4   5   6   7   8   9

This continues the address cycle illustrated above, assuming a single address cycle with medium DEVSEL, so the target responds in time for clock 3. However, at that time, neither side is ready to transfer data. For clock 4, the initiator is ready, but the target is not. On clock 5, both are ready, and a data transfer takes place (as indicated by the vertical lines). For clock 6, the target is ready to transfer, but the initiator is not. On clock 7, the initiator becomes ready, and data is transferred. For clocks 8 and 9, both sides remain ready to transfer data, and data is transferred at the maximum possible rate (32 bits per clock cycle).

In case of a read, clock 2 is reserved for turning around the AD bus, so the target is not permitted to drive data on the bus even if it is capable of fast DEVSEL.

Fast DEVSEL# on reads

A target that supports fast DEVSEL could in theory begin responding to a read the cycle after the address is presented. This cycle is, however, reserved for AD bus turnaround. Thus, a target may not drive the AD bus (and thus may not assert TRDY#) on the second cycle of a transaction. Note that most targets will not be this fast and will not need any special logic to enforce this condition.

Ending transactions

Either side may request that a burst end after the current data phase. Simple PCI devices that do not support multi-word bursts will always request this immediately. Even devices that do support bursts will have some limit on the maximum length they can support, such as the end of their addressable memory.

Initiator burst termination

The initiator can mark any data phase as the final one in a transaction by deasserting FRAME# at the same time as it asserts IRDY#. The cycle after the target asserts TRDY#, the final data transfer is complete, both sides deassert their respective RDY# signals, and the bus is idle again. The master may not deassert FRAME# before asserting IRDY#, nor may it deassert FRAME# while waiting, with IRDY# asserted, for the target to assert TRDY#.

The only minor exception is a _master abort termination_, when no target responds with DEVSEL#. Obviously, it is pointless to wait for TRDY# in such a case. However, even in this case, the master must assert IRDY# for at least one cycle after deasserting FRAME#. (Commonly, a master will assert IRDY# before receiving DEVSEL#, so it must simply hold IRDY# asserted for one cycle longer.) This is to ensure that bus turnaround timing rules are obeyed on the FRAME# line.

Target burst termination

The target requests the initiator end a burst by asserting STOP#. The initiator will then end the transaction by deasserting FRAME# at the next legal opportunity; if it wishes to transfer more data, it will continue in a separate transaction. There are several ways for the target to do this:

Disconnect with data
    If the target asserts STOP# and TRDY# at the same time, this indicates that the target wishes this to be the last data phase. For example, a target that does not support burst transfers will always do this to force single-word PCI transactions. This is the most efficient way for a target to end a burst.

Disconnect without data
    If the target asserts STOP# without asserting TRDY#, this indicates that the target wishes to stop without transferring data. STOP# is considered equivalent to TRDY# for the purpose of ending a data phase, but no data is transferred.

Retry
    A Disconnect without data before transferring any data is a _retry_, and unlike other PCI transactions, PCI initiators are required to pause slightly before continuing the operation. See the PCI specification for details.

Target abort
    Normally, a target holds DEVSEL# asserted through the last data phase. However, if a target deasserts DEVSEL# before disconnecting without data (asserting STOP#), this indicates a _target abort_, which is a fatal error condition. The initiator may not retry, and typically treats it as a bus error. Note that a target may not deassert DEVSEL# while waiting with TRDY# or STOP# low; it must do this at the beginning of a data phase.

There will always be at least one more cycle after a target-initiated disconnection, to allow the master to deassert FRAME#. There are two sub-cases, which take the same amount of time, but one requires an additional data phase:

Disconnect-A
    If the initiator observes STOP# before asserting its own IRDY#, then it can end the burst by deasserting FRAME# at the same time as it asserts IRDY#, ending the burst after the current data phase.

Disconnect-B
    If the initiator has already asserted IRDY# (without deasserting FRAME#) by the time it observes the target's STOP#, it is committed to an additional data phase. The target must wait through an additional data phase, holding STOP# asserted without TRDY#, before the transaction can end.

If the initiator ends the burst at the same time as the target requests disconnection, there is no additional bus cycle.

Burst addressing

For memory space accesses, the words in a burst may be accessed in several orders. The unnecessary low-order address bits AD[1:0] are used to convey the initiator's requested order. A target which does not support a particular order must terminate the burst after the first word. Some of these orders depend on the cache line size, which is configurable on all PCI devices.

  A[1]   A[0]   Burst order (with 16-byte cache line)
  ------ ------ ------------------------------------------------------------
  0      0      Linear incrementing (0x0C, 0x10, 0x14, 0x18, 0x1C, ...)
  0      1      Cacheline toggle (0x0C, 0x08, 0x04, 0x00, 0x1C, 0x18, ...)
  1      0      Cacheline wrap (0x0C, 0x00, 0x04, 0x08, 0x1C, 0x10, ...)
  1      1      Reserved (disconnect after first transfer)

  : PCI burst ordering

If the starting offset within the cache line is zero, all of these modes reduce to the same order.

Cache line toggle and cache line wrap modes are two forms of critical-word-first cache line fetching. Toggle mode XORs the supplied address with an incrementing counter. This is the native order for Intel 486 and Pentium processors. It has the advantage that it is not necessary to know the cache line size to implement it.

PCI version 2.1 obsoleted toggle mode and added the cache line wrap mode, where fetching proceeds linearly, wrapping around at the end of each cache line. When one cache line is completely fetched, fetching jumps to the starting offset in the next cache line.

Note that most PCI devices only support a limited range of typical cache line sizes; if the cache line size is programmed to an unexpected value, they force single-word access.

PCI also supports burst access to I/O and configuration space, but only linear mode is supported. (This is rarely used, and may be buggy in some devices; they may not support it, but not properly force single-word access either.)

Transaction examples

This is the highest-possible speed four-word write burst, terminated by the master:

                 0_  1_  2_  3_  4_  5_  6_  7_
            CLK _/ _/ _/ _/ _/ _/ _/ _/ \
                    ___ ___ ___ ___ ___
       AD[31:0] ---<___X___X___X___X___>---<___>
                    ___ ___ ___ ___ ___
     C/BE[3:0]# ---<___X___X___X___X___>---<___>
                         |   |   |   |  ___
          IRDY# ^^^^^^^^______________/   ^^^^^
                         |   |   |   |  ___
          TRDY# ^^^^^^^^______________/   ^^^^^
                         |   |   |   |  ___
        DEVSEL# ^^^^^^^^______________/   ^^^^^
                ___      |   |   |  ___
         FRAME#    _______________/ | ^^^^____
                  _   _  |_  |_  |_  |_   _   _
            CLK _/ _/ _/ _/ _/ _/ _/ _/ \
                 0   1   2   3   4   5   6   7

On clock edge 1, the initiator starts a transaction by driving an address, command, and asserting FRAME# The other signals are idle (indicated by ^^^), pulled high by the motherboard's pull-up resistors. That might be their turnaround cycle. On cycle 2, the target asserts both DEVSEL# and TRDY#. As the initiator is also ready, a data transfer occurs. This repeats for three more cycles, but before the last one (clock edge 5), the master deasserts FRAME#, indicating that this is the end. On clock edge 6, the AD bus and FRAME# are undriven (turnaround cycle) and the other control lines are driven high for 1 cycle. On clock edge 7, another initiator can start a different transaction. This is also the turnaround cycle for the other control lines.

The equivalent read burst takes one more cycle, because the target must wait 1 cycle for the AD bus to turn around before it may assert TRDY#:

                 0_  1_  2_  3_  4_  5_  6_  7_  8_
            CLK _/ _/ _/ _/ _/ _/ _/ _/ _/ \
                    ___     ___ ___ ___ ___
       AD[31:0] ---<___>---<___X___X___X___>---<___>
                    ___ _______ ___ ___ ___
     C/BE[3:0]# ---<___X_______X___X___X___>---<___>
                ___          |   |   |   |  ___
          IRDY#    ^^^^___________________/   ^^^^^
                ___    _____ |   |   |   |  ___
          TRDY#    ^^^^     ______________/   ^^^^^
                ___          |   |   |   |  ___
        DEVSEL#    ^^^^___________________/   ^^^^^
                ___          |   |   |  ___
         FRAME#    ___________________/ | ^^^^____
                  _   _   _  |_  |_  |_  |_   _   _
            CLK _/ _/ _/ _/ _/ _/ _/ _/ _/ \
                 0   1   2   3   4   5   6   7   8

A high-speed burst terminated by the target will have an extra cycle at the end:

                 0_  1_  2_  3_  4_  5_  6_  7_  8_
            CLK _/ _/ _/ _/ _/ _/ _/ _/ _/ \
                    ___     ___ ___ ___ ___
       AD[31:0] ---<___>---<___X___X___X___XXXX>----
                    ___ _______ ___ ___ ___ ___
     C/BE[3:0]# ---<___X_______X___X___X___X___>----
                             |   |   |   |      ___
          IRDY# ^^^^^^^_______________________/
                       _____ |   |   |   |  _______
          TRDY# ^^^^^^^     ______________/
                       ________________  |      ___
          STOP# ^^^^^^^      |   |   | _______/
                             |   |   |   |      ___
        DEVSEL# ^^^^^^^_______________________/
                ___          |   |   |   |  ___
         FRAME#    _______________________/   ^^^^
                  _   _   _  |_  |_  |_  |_   _   _
            CLK _/ _/ _/ _/ _/ _/ _/ _/ _/ \
                 0   1   2   3   4   5   6   7   8

On clock edge 6, the target indicates that it wants to stop (with data), but the initiator is already holding IRDY# low, so there is a fifth data phase (clock edge 7), during which no data is transferred.

Parity

The PCI bus detects parity errors, but does not attempt to correct them by retrying operations; it is purely a failure indication. Due to this, there is no need to detect the parity error before it has happened, and the PCI bus actually detects it a few cycles later. During a data phase, whichever device is driving the AD[31:0] lines computes even parity over them and the C/BE[3:0]# lines, and sends that out the PAR line one cycle later. All access rules and turnaround cycles for the AD bus apply to the PAR line, just one cycle later. The device listening on the AD bus checks the received parity and asserts the PERR# (parity error) line one cycle after that. This generally generates a processor interrupt, and the processor can search the PCI bus for the device which detected the error.

The PERR# line is only used during data phases, once a target has been selected. If a parity error is detected during an address phase (or the data phase of a Special Cycle), the devices which observe it assert the SERR# (System error) line.

Even when some bytes are masked by the C/BE# lines and not in use, they must still have _some_ defined value, and this value must be used to compute the parity.

Fast back-to-back transactions

Due to the need for a turnaround cycle between different devices driving PCI bus signals, in general it is necessary to have an idle cycle between PCI bus transactions. However, in some circumstances it is permitted to skip this idle cycle, going directly from the final cycle of one transfer (IRDY# asserted, FRAME# deasserted) to the first cycle of the next (FRAME# asserted, IRDY# deasserted).

An initiator may only perform back-to-back transactions when:

-   they are by the same initiator (or there would be no time to turn around the C/BE# and FRAME# lines),
-   the first transaction was a write (so there is no need to turn around the AD bus), and
-   the initiator still has permission (from its GNT# input) to use the PCI bus.

Additional timing constraints may come from the need to turn around are the target control lines, particularly DEVSEL#. The target deasserts DEVSEL#, driving it high, in the cycle following the final data phase, which in the case of back-to-back transactions is the first cycle of the address phase. The second cycle of the address phase is then reserved for DEVSEL# turnaround, so if the target is different from the previous one, it must not assert DEVSEL# until the third cycle (medium DEVSEL speed).

One case where this problem cannot arise is if the initiator knows somehow (presumably because the addresses share sufficient high-order bits) that the second transfer is addressed to the same target as the previous one. In that case, it may perform back-to-back transactions. All PCI targets must support this.

It is also possible for the target keeps track of the requirements. If it never does fast DEVSEL, they are met trivially. If it does, it must wait until medium DEVSEL time unless:

-   the current transaction was preceded by an idle cycle (is not back-to-back), or
-   the previous transaction was to the same target, or
-   the current transaction began with a double address cycle.

Targets which have this capability indicate it by a special bit in a PCI configuration register, and if all targets on a bus have it, all initiators may use back-to-back transfers freely.

A subtractive decoding bus bridge must know to expect this extra delay in the event of back-to-back cycles in order to advertise back-to-back support.

64-bit PCI

Starting from revision 2.1, the PCI specification includes optional 64-bit support. This is provided via an extended connector which provides the 64-bit bus extensions AD[63:32], C/BE[7:4]#, and PAR64, and a number of additional power and ground pins. The 64-bit PCI connector can be distinguished from a 32-bit connector by the additional 64-bit segment.

Memory transactions between 64-bit devices may use all 64 bits to double the data transfer rate. Non-memory transactions (including configuration and I/O space accesses) may not use the 64-bit extension. During a 64-bit burst, burst addressing works just as in a 32-bit transfer, but the address is incremented twice per data phase. The starting address must be 64-bit aligned; i.e. AD2 must be 0. The data corresponding to the intervening addresses (with AD2 = 1) is carried on the upper half of the AD bus.

To initiate a 64-bit transaction, the initiator drives the starting address on the AD bus and asserts REQ64# at the same time as FRAME#. If the selected target can support a 64-bit transfer for this transaction, it replies by asserting ACK64# at the same time as DEVSEL#. Note that a target may decide on a per-transaction basis whether to allow a 64-bit transfer.

If REQ64# is asserted during the address phase, the initiator also drives the high 32 bits of the address and a copy of the bus command on the high half of the bus. If the address requires 64 bits, a dual address cycle is still required, but the high half of the bus carries the upper half of the address and the final command code during both address phase cycles; this allows a 64-bit target to see the entire address and begin responding earlier.

If the initiator sees DEVSEL# asserted without ACK64#, it performs 32-bit data phases. The data which would have been transferred on the upper half of the bus during the first data phase is instead transferred during the second data phase. Typically, the initiator drives all 64 bits of data before seeing DEVSEL#. If ACK64# is missing, it may cease driving the upper half of the data bus.

The REQ64# and ACK64# lines are held asserted for the entire transaction save the last data phase, and deasserted at the same time as FRAME# and DEVSEL#, respectively.

The PAR64 line operates just like the PAR line, but provides even parity over AD[63:32] and C/BE[7:4]#. It is only valid for address phases if REQ64# is asserted. PAR64 is only valid for data phases if both REQ64# and ACK64# are asserted.

Cache snooping (obsolete)

PCI originally included optional support for write-back cache coherence. This required support by cacheable memory targets, which would listen to two pins from the cache on the bus, SDONE (snoop done) and SBO# (snoop backoff).[36]

Because this was rarely implemented in practice, it was deleted from revision 2.2 of the PCI specification,[37][38] and the pins re-used for SMBus access in revision 2.3.[39]

The cache would watch all memory accesses, without asserting DEVSEL#. If it noticed an access that might be cached, it would drive SDONE low (snoop not done). A coherence-supporting target would avoid completing a data phase (asserting TRDY#) until it observed SDONE high.

In the case of a write to data that was clean in the cache, the cache would only have to invalidate its copy, and would assert SDONE as soon as this was established. However, if the cache contained dirty data, the cache would have to write it back before the access could proceed. so it would assert SBO# when raising SDONE. This would signal the active target to assert STOP# rather than TRDY#, causing the initiator to disconnect and retry the operation later. In the meantime, the cache would arbitrate for the bus and write its data back to memory.

Targets supporting cache coherency are also required to terminate bursts before they cross cache lines.


Development tools

numbers during BIOS startup.]] When developing and/or troubleshooting the PCI bus, examination of hardware signals can be very important. Logic analyzers and bus analyzers are tools which collect, analyze, and decode signals for users to view in useful ways.


See also

-   PCI Configuration Space
-   CompactPCI, PCI-X, PCI Express
-   PCI-SIG, PCI Special Interest Group
-   PICMG, PCI Industrial Computer Manufacturers Group
-   Eurocard (printed circuit board)


References


Further reading

Official technical specifications

-   ($1000 for non-members or $50 for members. PCI-SIG membership is $3000 per year.)

-   ($1000 for non-members or $50 for members. PCI-SIG membership is $3000 per year.)

Books

-   _PCI Bus Demystified_; 2nd Ed; Doug Abbott; 250 pages; 2004; .
-   _PCI System Architecture_; 4th Ed; Tom Shanley; 832 pages; 1999; .
-   _PCI-X System Architecture_; 1st Ed; Tom Shanley; 752 pages; 2000; .
-   _PCI & PCI-X Hardware and Software Architecture & Design_; 5th Ed; Ed Solari; 1140 pages; 2001; .
-   _PCI HotPlug Application and Design_; 1st Ed; Alan Goodrum; 162 pages; 1998; .


External links

Official

-   , PCI Special Interest Group (PCI-SIG)

Technical Details

-   Introduction to PCI protocol, electrofriends.com
-   PCI bus pin-out and signals, pinouts.ru
-   PCI card dimensions, interfacebus.com

Lists of Vendors / Devices / IDs

-   PCI Vendor and Device Lists, pcidatabase.com
-   PCI ID Repository, a project to collect all known IDs

Tips

-   Brief overview of PCI power requirements and compatibility with a nice diagram
-   Good diagrams and text on how to recognize the difference between 5 volt and 3.3 volt slots

Linux

-   Linux with miniPCI cards
-   GNU/Linux PCI device driver check page
-   Decoding PCI data and lspci output on Linux hosts

Development Tools

-   Active PCI Bus Extender, dinigroup.com

FPGA Cores

-   PCI Interface Core, Lattice Semiconductor
-   .

-   .

Category:Peripheral Component Interconnect Category:Motherboard expansion slot Category:Macintosh internals Category:IBM PC compatibles Category:Wikipedia articles with ASCII art Category:Computer-related introductions in 1993

[1] .

[2] Hamacher et al (2002), _Computer Organization_, 5th ed., McGraw-Hill.

[3]

[4]

[5]

[6]

[7]

[8]

[9] VLB was designed for 486-based systems, yet even the more generic PCI was to gain prominence on that platform.

[10]

[11] Identify a variety of PCI slots, LaCie

[12] PCI Family History

[13]

[14] PCI Local Bus Specification, revision 3.0

[15]

[16] PCI Connector Pinout

[17] PCI Power Management Interface Specification v1.2

[18]

[19]

[20]

[21] archive.org/zuavra.net - Using Wake-On-LAN WOL/PME to power up your computer remotely

[22]

[23]

[24]

[25]

[26] .

[27] .

[28] .

[29]

[30]

[31]

[32]

[33]

[34]

[35] PCI-to-PCI Bridge Architecture Specification, revision 1.1

[36] PCI Local Bus Specification, revision 2.1

[37]

[38]

[39]