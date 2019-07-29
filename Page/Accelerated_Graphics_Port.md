The ACCELERATED GRAPHICS PORT (AGP) was designed as a high-speed point-to-point channel for attaching a video card to a computer system, primarily to assist in the acceleration of 3D computer graphics. It was originally designed as a successor to PCI-type connections for video cards. Since 2004, AGP has been progressively phased out in favor of PCI Express (PCIe); by mid-2008, PCI Express cards dominated the market and only a few AGP models were available,[1] with GPU manufacturers and add-in board partners eventually dropping support for the interface in favour of PCI Express.


Advantages over PCI

As computers increasingly became graphically oriented, successive generations of graphics adapters began to push the limits of PCI, a bus with shared bandwidth. This led to the development of AGP, a "bus" dedicated to graphics adapters.

AGP is heavily based on PCI, and in fact the AGP bus is a superset of the conventional PCI bus, and AGP cards must act as PCI cards.

The primary advantage of AGP over PCI is that it provides a dedicated pathway between the slot and the processor rather than sharing the PCI bus. In addition to a lack of contention for the bus, the direct connection allows for higher clock speeds.

The second major change is that AGP uses split transactions, where the address and data phases of a PCI transaction are separated. The card may send many address phases, and the host processes them in order. This avoids long delays, with the bus idle, during read operations.

Third, PCI bus handshaking is simplified. Unlike PCI bus transactions whose length is negotiated on a cycle-by-cycle basis using the FRAME# and STOP# signals, AGP transfers are always a multiple of 8 bytes long, and the total length is included in the request. Further, rather than using the IRDY# and TRDY# signals for each word, data is transferred in blocks of four clock cycles (32 words at AGP 8× speed), and pauses are allowed only between blocks.

Finally, AGP allows (optional in AGP 1.0 and 2.0, mandatory in AGP 3.0) _sideband addressing_, meaning that the address and data buses are separated so the address phase does not use the main address/data (AD) lines at all. This is done by adding an extra 8-bit "SideBand Address" bus over which the graphics controller can issue new AGP requests while other AGP data is flowing over the main 32 address/data (AD) lines. This results in improved overall AGP data throughput.

This great improvement in memory read performance makes it practical for an AGP card to read textures directly from system RAM, while a PCI graphics card must copy it from system RAM to the card's video memory. System memory is made available using the graphics address remapping table (GART), which apportions main memory as needed for texture storage.[2] The maximum amount of system memory available to AGP is defined as the _AGP aperture_.


History

AGP-Video-Card.jpg

The AGP slot first appeared on x86-compatible system boards based on Socket 7 Intel P5 Pentium and Slot 1 P6 Pentium II processors. Intel introduced AGP support with the i440LX Slot 1 chipset on August 26, 1997, and a flood of products followed from all the major system board vendors.[3]

The first Socket 7 chipsets to support AGP were the VIA Apollo VP3, SiS 5591/5592, and the ALI Aladdin V. Intel never released an AGP-equipped Socket 7 chipset. FIC demonstrated the first Socket 7 AGP system board in November 1997 as the _FIC PA-2012_ based on the VIA Apollo VP3 chipset, followed very quickly by the _EPoX P55-VP3_ also based on the VIA VP3 chipset which was first to market.[4]

Early video chipsets featuring AGP support included the Rendition Vérité V2200, 3dfx Voodoo Banshee, Nvidia RIVA 128, 3Dlabs PERMEDIA 2, Intel i740, ATI Rage series, Matrox Millennium II, and S3 ViRGE GX/2. Some early AGP boards used graphics processors built around PCI and were simply bridged to AGP. This resulted in the cards benefiting little from the new bus, with the only improvement used being the 66 MHz bus clock, with its resulting doubled bandwidth over PCI, and bus exclusivity. Examples of such cards were the Voodoo Banshee, Vérité V2200, Millennium II, and S3 ViRGE GX/2. Intel's i740 was explicitly designed to exploit the new AGP feature set; in fact it was designed to texture only from AGP memory, making PCI versions of the board difficult to implement (local board RAM had to emulate AGP memory.)

Microsoft first introduced AGP support into _Windows 95 OEM Service Release 2_ (OSR2 version 1111 or 950B) via the _USB SUPPLEMENT to OSR2_ patch.[5] After applying the patch the Windows 95 system became _Windows 95 version 4.00.950 B_. The first Windows NT-based operating system to receive AGP support was Windows NT 4.0 with Service Pack 3, introduced in 1997. Linux support for AGP enhanced fast data transfers was first added in 1999 with the implementation of the AGPgart kernel module.


Versions

  Specification   Voltage   Clock       Speed   Transfers/clock   Rate (MB/s)
  --------------- --------- ----------- ------- ----------------- -------------
  PCI             3.3/5 V   33 MHz      —       1                 133
  PCI 2.1         3.3/5 V   33/66 MHz   —       1                 133/266
  AGP 1.0         3.3 V     66 MHz      1×      1                 266
  AGP 1.0         3.3 V     66 MHz      2×      2                 533
  AGP 2.0         1.5 V     66 MHz      4×      4                 1066
  AGP 3.0         0.8 V     66 MHz      8×      8                 2133
  AGP 3.5^(*)     0.8 V     66 MHz      8×      8                 2133

  : AGP and PCI: 32-bit buses operating at 66 and 33 MHz respectively

Intel released "AGP specification 1.0" in 1997.[6] It specified 3.3 V signals and 1× and 2× speeds.[7] Specification 2.0 documented 1.5 V signaling, which could be used at 1×, 2× and the additional 4× speed[8][9] and 3.0 added 0.8 V signaling, which could be operated at 4× and 8× speeds.[10] (1× and 2× speeds are physically possible, but were not specified.)

Available versions are listed in the adjacent table.

AGP version 3.5 is only publicly mentioned by Microsoft under _Universal Accelerated Graphics Port (UAGP)_, which specifies mandatory supports of extra registers once marked optional under AGP 3.0. Upgraded registers include PCISTS, CAPPTR, NCAPID, AGPSTAT, AGPCMD, NISTAT, NICMD. New required registers include APBASELO, APBASEHI, AGPCTRL, APSIZE, NEPG, GARTLO, GARTHI.

There are various physical interfaces (connectors); see the Compatibility section.

Official extensions

NVIDIA_GeForce4_Ti_4600_Mac.jpg Macintosh)]] Quadro_ELSA_GLoria_II_Pro.jpg

AGP Pro

An official extension for cards that required more electrical power, with a longer slot with additional pins for that purpose. AGP Pro cards were usually workstation-class cards used to accelerate professional computer-aided design applications employed in the fields of architecture, machining, engineering, simulations, and similar fields.[11]

64-bit AGP

A 64-bit channel was once proposed as an optional standard for AGP 3.0 in draft documents,[12] but it was dropped in the final version of the standard.

The standard allows 64-bit transfer for AGP8× reads, writes, and fast writes; 32-bit transfer for PCI operations.

Unofficial variations

A number of non-standard variations of the AGP interface have been produced by manufacturers.

Internal AGP interface

Ultra-AGP, Ultra-AGPII: It is an internal AGP interface standard used by SiS for the north bridge controllers with integrated graphics. The original version supports same bandwidth as AGP 8×, while Ultra-AGPII has maximum 3.2GB/s bandwidth.

PCI-based AGP ports

:;AGP Express: Not a true AGP interface, but allows an AGP card to be connected over the legacy PCI bus on a PCI Express motherboard. It is a technology used on motherboards made by ECS, intended to allow an existing AGP card to be used in a new motherboard instead of requiring a PCIe card to be obtained (since the introduction of PCIe graphics cards few motherboards provide AGP slots). An "AGP Express" slot is basically a PCI slot (with twice the electrical power) with an AGP connector. It offers backward compatibility with AGP cards, but provides incomplete support[13] (some AGP cards do not work with AGP Express) and reduced performance—the card is forced to use the shared PCI bus at its lower bandwidth, rather than having exclusive use of the faster AGP.

:;AGI: The ASRock Graphics Interface (AGI) is a proprietary variant of the Accelerated Graphics Port (AGP) standard. Its purpose is to provide AGP-support for ASRock motherboards that use chipsets lacking native AGP support. However, it is not fully compatible with AGP, and several video card chipsets are known not to be supported.

:;AGX: The EpoX Advanced Graphics eXtended (AGX) is another proprietary AGP variant with the same advantages and disadvantages as AGI. User manuals recommend not using AGP 8× ATI cards with AGX slots.

:;XGP: The Biostar Xtreme Graphics Port is another AGP variant, also with the same advantages and disadvantages as AGI and AGX.

PCIe based AGP ports

:;AGR: The Advanced Graphics Riser is a variation of the AGP port used in some PCIe motherboards made by MSI to offer limited backwards compatibility with AGP. It is, effectively, a modified PCIe slot allowing for performance comparable to an AGP 4×/8× slot,[14] but does not support all AGP cards; the manufacturer published a list of some cards and chipsets that work with the modified slot.[15]


Compatibility

AGP_&_AGP_Pro_Keying.svg

AGP cards are backward and forward compatible within limits. 1.5 V-only keyed cards will not go into 3.3 V slots and vice versa, though "Universal" cards exist which will fit into either type of slot. There are also unkeyed "Universal" slots that will accept either type of card. When an AGP Universal card is plugged-into an AGP Universal slot, only the 1.5 V portion of the card is used. Some cards, like Nvidia's GeForce 6 series (except the 6200) or ATI's Radeon X800 series, only have keys for 1.5 V to prevent them from being installed in older mainboards without 1.5 V support. Some of the last modern cards with 3.3 V support were the Nvidia GeForce FX series (FX 5200, FX 5500, FX 5700, some FX 5800, FX 5900 and some FX 5950), Geforce 6 Series (6200, 6600/6600 LE/6600 GT only) and the ATI Radeon 9500/9700/9800(R350) (but not 9600/9800(R360)). Some Geforce 6200 and Geforce 6600 cards will function with AGP 1.0 (3.3v) slots.

AGP Pro cards will not fit into standard slots, but standard AGP cards will work in a Pro slot. Motherboards equipped with a Universal AGP Pro slot will accept a 1.5 V or 3.3 V card in either the AGP Pro or standard AGP configuration, a Universal AGP card, or a Universal AGP Pro card.

Some cards incorrectly have dual notches, and some motherboards incorrectly have fully open slots, allowing a card to be plugged into a slot that does not support the correct signaling voltage, which may damage card or motherboard. Some incorrectly designed older 3.3 V cards have the 1.5 V key.

There are some proprietary systems incompatible with standard AGP; for example, Apple Power Macintosh computers with the Apple Display Connector (ADC) have an extra connector which delivers power to the attached display. Some cards designed to work with a specific CPU architecture (e.g., PC, Apple) may not work with others due to firmware issues.

Mark Allen of Playtools.com made the following comments regarding Practical AGP Compatibility for AGP 3.0 and AGP 2.0:[16]

  "...nobody makes AGP 3.0 cards, and nobody makes AGP 3.0 motherboards. At least not any manufacturers I can find. Every single video card I could find which claimed to be an AGP 3.0 card was actually a universal 1.5V AGP 3.0 card. And every motherboard which claimed to be an AGP 3.0 motherboard turned out to be a universal 1.5V AGP 3.0 motherboard. It makes sense, if you think about it, because if anyone actually shipped a consumer-oriented product which supported only 0.8 volts, they would end up with lots of confused customers and a support nightmare. In the consumer market, you'd have to be crazy to ship a 0.8 volt only product."


Power consumption

  Slot Type    3.3 V   5 V   12 V   3.3 V Aux   1.5 V   3.3 V   12 V     Total power
  ------------ ------- ----- ------ ----------- ------- ------- -------- -------------
  AGP          6 A     2 A   1 A    0.375 mA    2 A     -       -        48.25 W
  AGP Pro110                                            7.6 A   9.2 A    50 to 110 W
  AGP Pro50                                             7.6 A   4.17 A   25 to 50 W

  : AGP power provisioning

Actual power supplied by an AGP slot depends upon the card used. The maximum current drawn from the various rails is given in the specifications for the various versions. For example, if maximum current is drawn from all supplies and all voltages are at their specified upper limits,[17] an AGP 3.0 slot can supply up to 48.25 watts; this figure can be used to specify a power supply conservatively, but in practice a card is unlikely ever to draw more than 40 W from the slot, with many using less. AGP Pro provides additional power up to 110 W. Many AGP cards had additional power connectors to supply them with more power than the slot could provide.


Later use

By 2010, few new motherboards had AGP slots. No new motherboard chipsets were equipped with AGP support, but motherboards continued to be produced with older chipsets with support for AGP.

Graphics processors of this period use PCI-Express, a general-purpose (not restricted to graphics) standard that supports higher data transfer rates and full-duplex. To create AGP-compatible graphics cards, those chips require an additional PCIe-to-AGP bridge-chip to convert PCIe signals to and from AGP signals. This incurs additional board costs due to the need for the additional bridge chip and for a separate AGP-designed circuit board.

Various manufacturers of graphics cards continued to produce AGP cards for the shrinking AGP user-base. The first bridged cards were the GeForce 6600 and ATI Radeon X800 XL boards, released during 2004-5.[18][19] In 2009 AGP cards from Nvidia had a ceiling of the GeForce 7 Series. In 2011 DirectX 10-capable AGP cards from AMD vendors (Club 3D, HIS, Sapphire, Jaton, Visiontek, Diamond, etc.) included the Radeon HD 2400, 3450, 3650, 3850, 4350, 4650, and 4670. The HD 5000 AGP series mentioned in the AMD Catalyst software was never available. There were many problems with the AMD Catalyst 11.2 - 11.6 AGP hotfix drivers under Windows 7 with the HD 4000 series AGP video cards;[20] use of 10.12 or 11.1 AGP hotfix drivers is the recommended workaround. Several of the vendors listed above make available past versions of the AGP drivers.


Protocol

An AGP bus is a superset of a 66 MHz conventional PCI bus and, immediately after reset, follows the same protocol. The card must act as a PCI target, and optionally may act as a PCI master. (AGP 2.0 added a "fast writes" extension which allows PCI writes from the motherboard to the card to transfer data at higher speed.)

After the card is initialized using PCI transactions, AGP transactions are permitted. For these, the card is always the AGP master and the motherboard is always the AGP target. The card queues multiple requests which correspond to the PCI address phase, and the motherboard schedules the corresponding data phases later. An important part of initialization is telling the card the maximum number of outstanding AGP requests which may be queued at a given time.

AGP requests are similar to PCI memory read and write requests, but use a different encoding on command lines C/BE[3:0] and are always 8-byte aligned; their starting address and length are always multiples of 8 bytes (64 bits). The three low-order bits of the address are used instead to communicate the length of the request.

Whenever the PCI GNT# signal is asserted, granting the bus to the card, three additional status bits ST[2:0] indicate the type of transfer to be performed next. If the bits are 0xx, a previously queued AGP transaction's data is to be transferred; if the three bits are 111, the card may begin a PCI transaction or (if sideband addressing is not in use) queue a request in-band using PIPE#.

AGP command codes

Like PCI, each AGP transaction begins with an address phase, communicating an address and 4-bit command code. The possible commands are different from PCI, however:

000p: Read
    Read 8×(AD[2:0]+1) = 8, 16, 24, ..., 64 bytes. The least significant bit p is 0 for low-priority, 1 for high.

001x: (reserved):
010p: Write
    Write 8×(AD[2:0]+1) = 8–64 bytes.

011x: (reserved):
100p: Long read
    Read 32×(AD[2:0]+1) = 32, 64, 96, ..., 256 bytes. This is the same as a read request, but the length is multiplied by four.

1010: Flush
    Force previously written data to memory, for synchronization. This acts as a low-priority read, taking a queue slot and returning 8 bytes of random data to indicate completion. The address and length supplied with this command are ignored.

1011: (reserved):
1100: Fence
    This acts as a memory fence, requiring that all earlier AGP requests complete before any following requests. Ordinarily, for increased performance, AGP uses a very weak consistency model, and allows a later write to pass an earlier read. (E.g. after sending "write 1, write 2, read, write 3, write 4" requests, all to the same address, the read may return any value from 2 to 4. Only returning 1 is forbidden, as writes must complete before following reads.) This operation does not require any queue slots.

1101: Dual address cycle
    When making a request to an address above 2³², this is used to indicate that a second address cycle will follow with additional address bits. This operates like a regular PCI dual address cycle; it is accompanied by the low-order 32 bits of the address (and the length), and the following cycle includes the high 32 address bits and the desired command. The two cycles make one request, and take only one slot in the request queue. This request code is not used with side-band addressing.

111x: (reserved):

AGP 3.0 dropped high-priority requests and the long read commands, as they were little used. It also mandated side-band addressing, thus dropping the dual address cycle, leaving only four request types: low-priority read (0000), low-priority write (0100), flush (1010) and fence (1100).

In-band AGP requests using PIPE#

To queue a request in-band, the card must request the bus using the standard PCI REQ# signal, and receive GNT# plus bus status ST[2:0] equal to 111. Then, instead of asserting FRAME# to begin a PCI transaction, the card asserts the PIPE# signal while driving the AGP command, address, and length on the C/BE[3:0], AD[31:3] and AD[2:0] lines, respectively. (If the address is 64 bits, a dual address cycle similar to PCI is used.) For every cycle that PIPE# is asserted, the card sends another request without waiting for acknowledgement from the motherboard, up to the configured maximum queue depth. The last cycle is marked by deasserting REQ#, and PIPE# is deasserted on the following idle cycle.

Side-band AGP requests using SBA[7:0]

If side-band addressing is supported and configured, the PIPE# signal is not used. (And the signal is re-used for another purpose in the AGP 3.0 protocol, which requires side-band addressing.) Instead, requests are broken into 16-bit pieces which are sent as two bytes across the SBA bus. There is no need for the card to ask permission from the motherboard; a new request may be sent at any time as long as the number of outstanding requests is within the configured maximum queue depth. The possible values are:

0aaa aaaa aaaa alll
    Queue a request with the given low-order address bits A[14:3] and length 8×(L[2:0]+1). The command and high-order bits are as previously specified. Any number of requests may be queued by sending only this pattern, as long as the command and higher address bits remain the same.

10cc ccra aaaa aaaa
    Use command C[3:0] and address bits A[23:15] for future requests. (Bit R is reserved.) This does not queue a request, but sets values that will be used in all future queued requests.

110r aaaa aaaa aaaa
    Use address bits A[35:24] for future requests.

1110 aaaa aaaa aaaa
    Use address bits A[47:36] for future requests.

1111 0xxx, 1111 10xx, 1111 110x
    _Reserved, do not use._

1111 1110
    Synchronization pattern used when starting the SBA bus after an idle period.

1111 1111
    No operation; no request. At AGP 1× speed, this may be sent as a single byte and a following 16-bit side-band request started one cycle later. At AGP 2× and higher speeds, all side-band requests, including this NOP, are 16 bits long.

Sideband address bytes are sent at the same rate as data transfers, up to 8× the 66 MHz basic bus clock. Sideband addressing has the advantage that it mostly eliminates the need for turnaround cycles on the AD bus between transfers, in the usual case when read operations greatly outnumber writes.

AGP responses

While asserting GNT#, the motherboard may instead indicate via the ST bits that a data phase for a queued request will be performed next. There are four queues: two priorities (low- and high-priority) for each of reads and writes, and each is processed in order. Obviously, the motherboard will attempt to complete high-priority requests first, but there is no limit on the number of low-priority responses which may be delivered while the high-priority request is processed.

For each cycle when the GNT# is asserted and the status bits have the value 00p, a read response of the indicated priority is scheduled to be returned. At the next available opportunity (typically the next clock cycle), the motherboard will assert TRDY# (target ready) and begin transferring the response to the oldest request in the indicated read queue. (Other PCI bus signals like FRAME#, DEVSEL# and IRDY# remain deasserted.) Up to four clock cycles worth of data (16 bytes at AGP 1× or 128 bytes at AGP 8×) are transferred without waiting for acknowledgement from the card. If the response is longer than that, both the card and motherboard must indicate their ability to continue on the third cycle by asserting IRDY# (initiator ready) and TRDY#, respectively. If either one does not, wait states will be inserted until two cycles after they both do. (The value of IRDY# and TRDY# at other times is irrelevant and they are usually deasserted.)

The C/BE# byte enable lines may be ignored during read responses, but are held asserted (all bytes valid) by the motherboard.

The card may also assert the RBF# (read buffer full) signal to indicate that it is temporarily unable to receive more low-priority read responses. The motherboard will refrain from scheduling any more low-priority read responses. The card must still be able to receive the end of the current response, and the first four-cycle block of the following one if scheduled, plus any high-priority responses it has requested.

For each cycle when GNT# is asserted and the status bits have the value 01p, write data is scheduled to be sent across the bus. At the next available opportunity (typically the next clock cycle), the card will assert IRDY# (initiator ready) and begin transferring the data portion of the oldest request in the indicated write queue. If the data is longer than four clock cycles, the motherboard will indicate its ability to continue by asserting TRDY# on the third cycle. Unlike reads, there is no provision for the card to delay the write; if it didn't have the data ready to send, it shouldn't have queued the request.

The C/BE# lines _are_ used with write data, and may be used by the card to select which bytes should be written to memory.

The multiplier in AGP 2×, 4× and 8× indicates the number of data transfers across the bus during each 66 MHz clock cycle. Such transfers use source synchronous clocking with a "strobe" signal (AD_STB[0], AD_STB[1], and SB_STB) generated by the data source. AGP 4× adds complementary strobe signals.

Because AGP transactions may be as short as two transfers, at AGP 4× and 8× speeds it is possible for a request to complete in the middle of a clock cycle. In such a case, the cycle is padded with dummy data transfers (with the C/BE# byte enable lines held deasserted).


Connector pinout

The AGP connector contains almost all PCI signals, plus several additions. The connector has 66 contacts on each side, although 4 are removed for each keying notch. Pin 1 is closest to the I/O bracket, and the B and A sides are as in the table, looking down at the motherboard connector.

Contacts are spaced at 1 mm intervals, however they are arranged in two staggered vertical rows so that there is 2 mm space between pins in each row. Odd-numbered A-side contacts, and even-numbered B-side contacts are in the lower row (1.0 to 3.5 mm from the card edge). The others are in the upper row (3.7 to 6.0 mm from the card edge).

  Pin   Side B       Side A       Comments
  ----- ------------ ------------ ------------------------------------------------------------------
  1     OVERCNT#     +12 V        USB port overcurrent warning
  2     +5 V         TYPEDET#     Pulled low by card to indicate 1.5 V (AGP 2.0 4x) ability
  3     +5 V         GC_DET#      Pulled low by card to indicate 0.8 V (AGP 3.0 8x) ability
  4     USB+         USB−         USB pins for pass through to monitor
  5     Ground       Ground
  6     INTB#        INTA#        Interrupt lines (open-drain)
  7     CLK          RST#         66 MHz clock, Bus reset
  8     REQ#         GNT#         Bus request from card, and grant from motherboard
  9     +3.3 V       +3.3 V
  10    ST[0]        ST[1]        AGP status (valid while GNT# low)
  11    ST[2]        MB_DET#      Pulled low by motherboard to indicate 0.8 V (AGP 3.0 8x) ability
  12    RBF#         PIPE#        DBI_HI
  13    Ground       Ground
  14    DBI_LO       WBF#         Data bus inversion [15:0], Write buffer full
  15    SBA[0]       SBA[1]       Sideband address bus
  16    +3.3 V       +3.3 V
  17    SBA[2]       SBA[3]
  18    SB_STB       SB_STB#
  19    Ground       Ground
  20    SBA[4]       SBA[5]
  21    SBA[6]       SBA[7]
  22    Reserved     Reserved     Key notch for 3.3 V AGP cards
  23    Ground       Ground
  24    +3.3 V aux   Reserved
  25    +3.3 V       +3.3 V
  26    AD[31]       AD[30]       Address/data bus (upper half)
  27    AD[29]       AD[28]
  28    +3.3 V       +3.3 V
  29    AD[27]       AD[26]
  30    AD[25]       AD[24]
  31    Ground       Ground
  32    AD_STB[1]    AD_STB[1]#
  33    AD[23]       C/BE[3]#
  34    Vddq         Vddq
  35    AD[21]       AD[22]
  36    AD[19]       AD[20]
  37    Ground       Ground
  38    AD[17]       AD[18]
  39    C/BE[2]#     AD[16]
  40    Vddq         Vddq         3.3 or 1.5 V
  41    IRDY#        FRAME#       Initiator ready, Transfer in progress
  42    +3.3 V aux   Reserved     Key notch for 1.5 V AGP cards
  43    Ground       Ground
  44    Reserved     Reserved
  45    +3.3 V       +3.3 V
  46    DEVSEL#      TRDY#        Target selected, Target ready
  47    Vddq         STOP#        Target requests halt
  48    PERR#        PME#         Parity error, Power management event (optional)
  49    Ground       Ground
  50    SERR#        PAR          System error, Even parity for (1x) PCI transactions only
  51    C/BE[1]#     AD[15]       Address/data bus (lower half)
  52    Vddq         Vddq
  53    AD[14]       AD[13]
  54    AD[12]       AD[11]
  55    Ground       Ground
  56    AD[10]       AD[9]
  57    AD[8]        C/BE[0]#
  58    Vddq         Vddq
  59    AD_STB[0]    AD_STB[0]#
  60    AD[7]        AD[6]
  61    Ground       Ground
  62    AD[5]        AD[4]
  63    AD[3]        AD[2]
  64    Vddq         Vddq
  65    AD[1]        AD[0]
  66    Vregcg       Vrefgc       I/O reference voltages

  : Accelerated Graphics Port connector pinout[21][22][23]

  Ground pin         Zero volt reference
  ------------------ --------------------------------------------------------------
  Power pin          Supplies power to the AGP card
  Output pin         Driven by the AGP card, received by the motherboard
  Initiator output   Driven by the master/initiator, received by the target
  I/O signal         May be driven by initiator or target, depending on operation
  Target output      Driven by the target, received by the initiator/master
  Input              Driven by the motherboard, received by the AGP card
  Open drain         May be pulled low and/or sensed by card or motherboard
  Reserved           Not presently used, do not connect

  : Legend

PCI signals omitted are:

-   The −12 V supply
-   The third and fourth interrupt requests (INTC#, INTD#)
-   The JTAG pins (TRST#, TCK, TMS, TDI, TDO)
-   The SMBus pins (SMBCLK, SMBDAT)
-   The IDSEL pin; an AGP card connects AD[16] to IDSEL internally
-   The 64-bit extension (REQ64#, ACK64#) and 66 MHz (M66EN) pins
-   The LOCK# pin for locked transaction support

Signals added are:

-   Data strobes AD_STB[1:0] (and AD_STB[1:0]# in AGP 2.0)
-   The sideband address bus SBA[7:0] and SB_STB (and SB_STB# in AGP 2.0)
-   The ST[2:0] status signals
-   USB+ and USB− (and OVERCNT# in AGP 2.0)
-   The PIPE# signal (removed in AGP 3.0 for 0.8 V signaling)
-   The RBF# signal
-   The TYPEDET#, Vregcg and Vreggc pins (AGP 2.0 for 1.5V signaling)
-   The DBI_HI and DBI_LO signals (AGP 3.0 for 0.8 V signaling only)
-   The GC_DET# and MB_DET# pins (AGP 3.0 for 0.8V signaling)
-   The WBF# signal (AGP 3.0 fast write extension)


See also

-   List of device bandwidths
-   Serial Digital Video Out for ADD DVI adapter cards
-   AGP Inline Memory Module


Notes


References


External links

-   Archived AGP Implementors Forum
-   AGP specifications: 1.0, 2.0, 3.0, Pro 1.0, Pro 1.1a
-   AGP Compatibility For Sticklers
-   AGP pinout
-   AGP expansion slots
-   AGP compatibility (with pictures)
-   PCI Specifications Documents contains AGP specs.
-   Universal Accelerated Graphics Port (UAGP)
-   How Stuff Works - AGP
-   A discussion from 2003 of what AGP aperture is, how it works, and how much memory should be allocated to it.

Category:Macintosh internals Category:IBM PC compatibles Category:Intel graphics Category:Motherboard expansion slot

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11] AGP Pro 1.1a specification

[12] Draft AGP8× Interface Specification Rev. 0.91R

[13]

[14]

[15]

[16]

[17]

[18] Gasior, Geoff. Nvidia's GeForce 6600 GT AGP graphics card: Bridging backwards, Tech Report, November 16, 2004.

[19] Gasior, Geoff. ATI's new AGP Radeons: A bridge is born, Tech Report, May 20, 2005.

[20]

[21]

[22]

[23]