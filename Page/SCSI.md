Scsi_logo.svg

SMALL COMPUTER SYSTEM INTERFACE (SCSI, )[1] is a set of standards for physically connecting and transferring data between computers and peripheral devices. The SCSI standards define commands, protocols, electrical, optical and logical interfaces. SCSI is most commonly used for hard disk drives and tape drives, but it can connect a wide range of other devices, including scanners and CD drives, although not all controllers can handle all devices. The SCSI standard defines command sets for specific peripheral device types; the presence of "unknown" as one of these types means that in theory it can be used as an interface to almost any device, but the standard is highly pragmatic and addressed toward commercial requirements.

The ancestral SCSI standard, X3.131-1986, generally referred to as SCSI-1, was published by the X3T9 technical committee of the American National Standards Institute (ANSI) in 1986. SCSI-2 was published in August 1990 as X3.T9.2/86-109, with further revisions in 1994 and subsequent adoption of a multitude of interfaces. Further refinements have resulted in improvements in performance and support for ever-increasing storage data capacity.[2]


History

Parallel interface

SCSI is derived from "SASI", the "Shugart Associates System Interface", developed circa 1978 and publicly disclosed in 1981.[3] Larry Boucher is considered to be the "father" of SASI and ultimately SCSI due to his pioneering work first at Shugart Associates and then at Adaptec.[4]

A SASI controller provided a bridge between a hard disk drive's low-level interface and a host computer, which needed to read blocks of data. SASI controller boards were typically the size of a hard disk drive and were usually physically mounted to the drive's chassis. SASI, which was used in mini- and early microcomputers, defined the interface as using a 50-pin flat ribbon connector which was adopted as the SCSI-1 connector. SASI is a fully compliant subset of SCSI-1 so that many, if not all, of the then-existing SASI controllers were SCSI-1 compatible.[5]

Until at least February 1982, ANSI developed the specification as "SASI" and "Shugart Associates System Interface;"[6] however, the committee documenting the standard would not allow it to be named after a company. Almost a full day was devoted to agreeing to name the standard "Small Computer System Interface", which Boucher intended to be pronounced "sexy", but ENDL's[7] Dal Allan pronounced the new acronym as "scuzzy" and that stuck.[8]

A number of companies such as NCR Corporation, Adaptec and Optimem were early supporters of SCSI.[9] The NCR facility in Wichita, Kansas is widely thought to have developed the industry's first SCSI controller chip; it worked the first time.[10]

The "small" reference in "small computer system interface" is historical; since the mid-1990s, SCSI has been available on even the largest of computer systems.

Since its standardization in 1986, SCSI has been commonly used in the Amiga, Atari, Apple Macintosh and Sun Microsystems computer lines and PC server systems. Apple started using the less-expensive parallel ATA (PATA, also known as _IDE_) for its low-end machines with the Macintosh Quadra 630 in 1994, and added it to its high-end desktops starting with the Power Macintosh G3 in 1997. Apple dropped on-board SCSI completely in favor of IDE and FireWire with the (Blue & White) Power Mac G3 in 1999, while still offering a PCI SCSI host adapter as an option on up to the Power Macintosh G4 (AGP Graphics) models.[11] Sun switched its lower-end range to Serial ATA (SATA). Commodore included SCSI on the Amiga 3000/3000T systems and it was an add-on to previous Amiga 500/2000 models. Starting with the Amiga 600/1200/4000 systems Commodore switched to the IDE interface. Atari included SCSI as standard in its Atari MEGA STE, Atari TT and Atari Falcon computer models. SCSI has never been popular in the low-priced IBM PC world, owing to the lower cost and adequate performance of ATA hard disk standard. However, SCSI drives and even SCSI RAIDs became common in PC workstations for video or audio production.

Modern SCSI

Recent physical versions of SCSISerial Attached SCSI (SAS), SCSI-over-Fibre Channel Protocol (FCP), and USB Attached SCSI (UAS)break from the traditional parallel SCSI bus and perform data transfer via serial communications using point-to-point links. Although much of the SCSI documentation talks about the parallel interface, all modern development efforts use serial interfaces. Serial interfaces have a number of advantages over parallel SCSI, including higher data rates, simplified cabling, longer reach, improved fault isolation and full-duplex capability. The primary reason for the shift to serial interfaces is the clock skew issue of high speed parallel interfaces, which makes the faster variants of parallel SCSI susceptible to problems caused by cabling and termination.[12]

The non-physical iSCSI preserves the basic SCSI paradigm, especially the command set, almost unchanged, through embedding of SCSI-3 over TCP/IP. Therefore, iSCSI uses _logical connections_ instead of physical links and can run on top of any network supporting IP. The actual physical links are realized on lower network layers, independently from iSCSI. Predominantly, Ethernet is used which is also of serial nature.

SCSI is popular on high-performance workstations, servers, and storage appliances. Almost all RAID subsystems on servers have used some kind of SCSI hard disk drives for decades (initially Parallel SCSI, recently SAS and Fibre Channel), though a number of manufacturers offer SATA-based RAID subsystems as a cheaper option. Moreover, SAS offers compatibility with SATA devices, creating a much broader range of options for RAID subsystems together with the existence of nearline SAS (NL-SAS) drives. Instead of SCSI, modern desktop computers and notebooks typically use SATA interfaces for internal hard disk drives, with M.2 and PCIe gaining popularity as SATA can bottleneck modern solid-state drives.


Interfaces

SCSI is available in a variety of interfaces. The first was parallel SCSI (also called SCSI Parallel Interface or SPI), which uses a parallel bus design. Since 2005, SPI was gradually replaced by Serial Attached SCSI (SAS), which uses a serial design but retains other aspects of the technology. Many other interfaces which do not rely on complete SCSI standards still implement the SCSI command protocol; others drop physical implementation entirely while retaining the SCSI architectural model. iSCSI, for example, uses TCP/IP as a transport mechanism, which is most often transported over Gigabit Ethernet or faster network links.

SCSI interfaces have often been included on computers from various manufacturers for use under Microsoft Windows, classic Mac OS, Unix, Commodore Amiga and Linux operating systems, either implemented on the motherboard or by the means of plug-in adaptors. With the advent of SAS and SATA drives, provision for parallel SCSI on motherboards was discontinued.[13]

Parallel SCSI

Scsi-1_gehaeuse.jpg

Initially, the _SCSI Parallel Interface_ (SPI) was the only interface using the SCSI protocol. Its standardization started as a single-ended 8-bit bus in 1986, transferring up to 5 MB/s, and evolved into a low-voltage differential 16-bit bus capable of up to 320 MB/s. The last SPI-5 standard from 2003 also defined a 640 MB/s speed which failed to be realized.

Parallel SCSI specifications include several synchronous transfer modes for the parallel cable, and an asynchronous mode. The asynchronous mode is a classic request/acknowledge protocol, which allows systems with a slow bus or simple systems to also use SCSI devices. Faster synchronous modes are used more frequently.

Other SCSI interfaces

+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| Interface               | Alternative                                            | Specification                                  | Width                                 | Clock                                 | Line code                  | Maximum                               |
|                         | names                                                  | body / document                                | (bits)                                |                                       |                            |                                       |
+=========================+========================================================+================================================+=======================================+=======================================+============================+=======================================+
| Throughput              | Length                                                 | Devices                                        |                                       |                                       |                            |                                       |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SSA                     | Serial Storage Architecture                            | T10 / INCITS 309-1997                          | serial                                | 200 Mbit/s                            | 8b10b                      | 20 MB/s (160 Mbit/s)                  |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SSA 40                  | T10 / INCITS 309-1997                                  | serial                                         | 400 Mbit/s                            | 40 MB/s (320 Mbit/s)                  | 25 m                       | 96                                    |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| Fibre Channel 1Gbit     | 1GFC                                                   | T11 / X3T11/94-175v0 FC-PH Draft, Revision 4.3 | serial                                | 1.0625 Gbit/s                         | 8b10b                      | 98.4 MB/s (850 Mbit/s)                |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| Fibre Channel 2Gbit     | 2GFC                                                   | T11 / X3T11/96-402v0 FC-PH-2, Rev 7.4          | serial                                | 2.125 Gbit/s                          | 197 MB/s (1,700 Mbit/s)    | 500 m / 10 km                         |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| Fibre Channel 4Gbit     | 4GFC                                                   | T11 / INCITS Project 2118-D / Rev 6.10         | serial                                | 4.25 Gbit/s                           | 394 MB/s (3,400 Mbit/s)    | 500 m / 10 km                         |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| Fibre Channel 8Gbit     | 8GFC                                                   | T11 / INCITS Project 2118-D / Rev 6.10         | serial                                | 8.5 Gbit/s                            | 788 MB/s (6,800 Mbit/s)    | 500 m / 10 km                         |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| Fibre Channel 16Gbit    | 16GFC                                                  | T11 / INCITS Project 2118-D / Rev 6.10         | serial                                | 14.025 Gbit/s                         | 64b66b                     | 1,575 MB/s (13,600 Mbit/s)            |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SAS 1.1                 | Serial attached SCSI                                   | T10 / INCITS 417-2006                          | serial                                | 3 Gbit/s                              | 8b10b                      | 300 MB/s (2,400 Mbit/s)               |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SAS 2.1                 | T10 / INCITS 478-2011                                  | serial                                         | 6 Gbit/s                              | 600 MB/s (4,800 Mbit/s)               | 6 m                        | 16,256                                |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SAS 3.0                 | T10 / INCITS 519                                       | serial                                         | 12 Gbit/s                             | 1,200 MB/s (9,600 Mbit/s)             | 6 m                        | 16,256                                |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SAS 4.0                 | T10 / INCITS 534 (draft)                               | serial                                         | 22.5 Gbit/s                           | 128b150b                              | 2,400 MB/s (19,200 Mbit/s) | tbd                                   |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| IEEE 1394-2008          | Firewire S3200, i.Link, Serial Bus Protocol (SBP)      | IEEE Std. 1394-2008                            | serial                                | 3.145728 Gbit/s                       | 8b10b                      | 315 MB/s (2,517 Mbit/s)               |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SCSI Express            | SCSI over PCIe (SOP)                                   | T10 / INCITS 489                               | serial                                | 8 GT/s (PCIe 3.0)                     | 128b130b                   | 985 MB/s (7,877 Mbit/s)               |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| USB Attached SCSI 2     | UAS-2                                                  | T10 / INCITS 520                               | serial                                | 10 Gbit/s (USB 3.1)                   | 128b132b                   | ~1,200 MB/s (~9,500 Mbit/s)           |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| ATAPI over Parallel ATA | ATA Packet Interface                                   | T13 / NCITS 317-1998                           | 16                                    | 33 MHz DDR                            | none                       | 133 MB/s (1,064 Mbit/s)               |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| ATAPI over Serial ATA   | serial                                                 | 6 Gbit/s                                       | 8b10b                                 | 600 MB/s (4,800 Mbit/s)               | 1 m                        | 1 (15 with port multiplier)           |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| iSCSI                   | Internet Small Computer System Interface, SCSI over IP | IETF / RFC 7143                                | mostly serial                         | implementation- and network-dependent | 1,187 MB/s or 1,239 MB/s   | implementation- and network-dependent |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+
| SRP                     | SCSI RDMA Protocol (SCSI over InfiniBand and similar)  | T10 / INCITS 365-2002                          | implementation- and network-dependent |                                       |                            |                                       |
+-------------------------+--------------------------------------------------------+------------------------------------------------+---------------------------------------+---------------------------------------+----------------------------+---------------------------------------+


Cabling

SCSI-terminator-exposed-hdr-0a.jpg

SCSI Parallel Interface

Internal parallel SCSI cables are usually ribbons, with two or more 50–, 68–, or 80–pin connectors attached. External cables are typically shielded (but may not be), with 50– or 68–pin connectors at each end, depending upon the specific SCSI bus width supported. The 80–pin Single Connector Attachment (SCA) is typically used for hot-pluggable devices

Fibre Channel

Fibre Channel can be used to transport SCSI information units, as defined by the Fibre Channel Protocol for SCSI (FCP). These connections are hot-pluggable and are usually implemented with optical fiber.

Serial attached SCSI

Serial attached SCSI (SAS) uses a modified Serial ATA data and power cable.

iSCSI

iSCSI (Internet Small Computer System Interface) usually uses Ethernet connectors and cables as its physical transport, but can run over any physical transport capable of transporting IP.

SRP

The SCSI RDMA Protocol (SRP) is a protocol that specifies how to transport SCSI commands over a reliable RDMA connection. This protocol can run over any RDMA-capable physical transport, e.g. InfiniBand or Ethernet when using RoCE or iWARP.

USB Attached SCSI

USB Attached SCSI allows SCSI devices to use the Universal Serial Bus.

Automation/Drive Interface

The Automation/Drive Interface − Transport Protocol (ADT) is used to connect removable media devices, such as tape drives, with the controllers of the libraries (automation devices) in which they are installed. The ADI standard specifies the use of RS-422 for the physical connections. The second-generation ADT-2 standard defines iADT, use of the ADT protocol over IP (Internet Protocol) connections, such as over Ethernet. The Automation/Drive Interface − Commands standards (ADC, ADC-2, and ADC-3) define SCSI commands for these installations.


SCSI command protocol

In addition to many different hardware implementations, the SCSI standards also include an extensive set of command definitions. The SCSI command architecture was originally defined for parallel SCSI buses but has been carried forward with minimal change for use with iSCSI and serial SCSI. Other technologies which use the SCSI command set include the ATA Packet Interface, USB Mass Storage class and FireWire SBP-2.

In SCSI terminology, communication takes place between an initiator and a target. The initiator sends a command to the target, which then responds. SCSI commands are sent in a Command Descriptor Block (CDB). The CDB consists of a one byte operation code followed by five or more bytes containing command-specific parameters.

At the end of the command sequence, the target returns a status code byte, such as 00h for success, 02h for an error (called a Check Condition), or 08h for busy. When the target returns a Check Condition in response to a command, the initiator usually then issues a SCSI Request Sense command in order to obtain a key code qualifier (KCQ) from the target. The Check Condition and Request Sense sequence involves a special SCSI protocol called a Contingent Allegiance Condition.

There are four categories of SCSI commands: N (non-data), W (writing data from initiator to target), R (reading data), and B (bidirectional). There are about 60 different SCSI commands in total, with the most commonly used being:

-   Test unit ready: Queries device to see if it is ready for data transfers (disk spun up, media loaded, etc.).
-   Inquiry: Returns basic device information.
-   Request sense: Returns any error codes from the previous command that returned an error status.
-   Send diagnostic and Receive diagnostic results: runs a simple self-test, or a specialised test defined in a diagnostic page.
-   Start/Stop unit: Spins disks up and down, or loads/unloads media (CD, tape, etc.).
-   Read capacity: Returns storage capacity.
-   Format unit: Prepares a storage medium for use. In a disk, a low level format will occur. Some tape drives will erase the tape in response to this command.
-   Read: (four variants): Reads data from a device.
-   Write: (four variants): Writes data to a device.
-   Log sense: Returns current information from log pages.
-   Mode sense: Returns current device parameters from mode pages.
-   Mode select: Sets device parameters in a mode page.

Each device on the SCSI bus is assigned a unique SCSI identification number or ID. Devices may encompass multiple logical units, which are addressed by logical unit number (LUN). Simple devices have just one LUN, more complex devices may have multiple LUNs.

A "direct access" (i.e. disk type) storage device consists of a number of logical blocks, addressed by Logical Block Address (LBA). A typical LBA equates to 512 bytes of storage. The usage of LBAs has evolved over time and so four different command variants are provided for reading and writing data. The Read(6) and Write(6) commands contain a 21-bit LBA address. The Read(10), Read(12), Read Long, Write(10), Write(12), and Write Long commands all contain a 32-bit LBA address plus various other parameter options.

The capacity of a "sequential access" (i.e. tape-type) device is not specified because it depends, amongst other things, on the length of the tape, which is not identified in a machine-readable way. Read and write operations on a sequential access device begin at the current tape position, not at a specific LBA. The block size on sequential access devices can either be fixed or variable, depending on the specific device. Tape devices such as half-inch 9-track tape, DDS (4 mm tapes physically similar to DAT), Exabyte, etc., support variable block sizes.


Device identification

Parallel interface

On a parallel SCSI bus, a device (e.g. host adapter, disk drive) is identified by a "SCSI ID", which is a number in the range 0–7 on a narrow bus and in the range 0–15 on a wide bus. On earlier models a physical jumper or switch controls the SCSI ID of the initiator (host adapter). On modern host adapters (since about 1997), doing I/O to the adapter sets the SCSI ID; for example, the adapter often contains a BIOS program that runs when the computer boots up and that program has menus that let the operator choose the SCSI ID of the host adapter. Alternatively, the host adapter may come with software that must be installed on the host computer to configure the SCSI ID. The traditional SCSI ID for a host adapter is 7, as that ID has the highest priority during bus arbitration (even on a 16 bit bus).

The SCSI ID of a device in a drive enclosure that has a back plane is set either by jumpers or by the slot in the enclosure the device is installed into, depending on the model of the enclosure. In the latter case, each slot on the enclosure's back plane delivers control signals to the drive to select a unique SCSI ID. A SCSI enclosure without a back plane often has a switch for each drive to choose the drive's SCSI ID. The enclosure is packaged with connectors that must be plugged into the drive where the jumpers are typically located; the switch emulates the necessary jumpers. While there is no standard that makes this work, drive designers typically set up their jumper headers in a consistent format that matches the way that these switches implement.

Setting the bootable (or first) hard disk to SCSI ID 0 is an accepted IT community recommendation. SCSI ID 2 is usually set aside for the floppy disk drive while SCSI ID 3 is typically for a CD-ROM drive.[14]

General

Note that a SCSI target device (which can be called a "physical unit") is often divided into smaller "logical units". For example, a high-end disk subsystem may be a single SCSI device but contain dozens of individual disk drives, each of which is a logical unit. Further, a RAID array may be a single SCSI device, but may contain many logical units, each of which is a "virtual" disk—a stripe set or mirror set constructed from portions of real disk drives. The SCSI ID, WWN, etc. in this case identifies the whole subsystem, and a second number, the logical unit number (LUN) identifies a disk device (real or virtual) within the subsystem.

It is quite common, though incorrect, to refer to the logical unit itself as a "LUN".

 

Accordingly, the actual LUN may be called a "LUN number" or "LUN id".

 

In modern SCSI transport protocols, there is an automated process for the "discovery" of the IDs. The SSA initiator (normally the host computer through the 'host adaptor') "walk the loop" to determine what devices are connected and then assigns each one a 7-bit "hop-count" value. Fibre Channel – Arbitrated Loop (FC-AL) initiators use the LIP (Loop Initialization Protocol) to interrogate each device port for its WWN (World Wide Name). For iSCSI, because of the unlimited scope of the (IP) network, the process is quite complicated. These discovery processes occur at power-on/initialization time and also if the bus topology changes later, for example if an extra device is added.


Device Type

While all SCSI controllers can work with read/write storage devices, i.e. disk and tape, some will not work with some other device types; older controllers are likely to be more limited,[15] sometimes by their driver software, and more Device Types were added as SCSI evolved. Even CD-ROMs are not handled by all controllers. Device Type is a 5-bit field reported by a SCSI Inquiry Command; defined SCSI Peripheral Device Types include, in addition to many varieties of storage device, printer, scanner, communications device, and a catch-all "processor" type for devices not otherwise listed.


SCSI enclosure services

In larger SCSI servers, the disk-drive devices are housed in an intelligent enclosure that supports SCSI Enclosure Services (SES). The initiator can communicate with the enclosure using a specialized set of SCSI commands to access power, cooling, and other non-data characteristics.


See also

-   Fibre Channel
-   List of device bandwidths
-   Parallel SCSI
-   Serial Attached SCSI


Notes


References


Bibliography

-


External links

-   InterNational Committee for Information Technology Standards: T10 Technical Committee on SCSI Storage Interfaces (SCSI standards committee)

Category:Macintosh internals SCSI

[1]

[2]

[3] ANSI Draft SASI Standard, Rev D, February 17, 1982, pg. ii states, "9/15/81 first presentation to ANSI committee X3T9-3 (2 weeks following announcement in Electronic Design)."

[4]

[5] ANSI SCSI Standard, X3.131-1986, June 23, 1986, 2nd, foreword.

[6] Working document for ANSI meeting on March 3, 1982, "SASI SHUGART ASSOCIATES SYSTEM INTERFACE, Revision D, February 17, 1982"

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]