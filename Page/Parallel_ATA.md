PARALLEL ATA (PATA), originally , is an interface standard for the connection of storage devices such as hard disk drives, floppy disk drives, and optical disc drives in computers. The standard is maintained by the X3/INCITS committee.[1] It uses the underlying (ATA) and PACKET INTERFACE (ATAPI) standards.

The Parallel ATA standard is the result of a long history of incremental technical development, which began with the original AT Attachment interface, developed for use in early PC AT equipment. The ATA interface itself evolved in several stages from Western Digital's original INTEGRATED DRIVE ELECTRONICS (IDE) interface. As a result, many near-synonyms for ATA/ATAPI and its previous incarnations are still in common informal use, in particular EXTENDED IDE (EIDE) and ULTRA ATA (UATA). After the introduction of Serial ATA (SATA) in 2003, the original ATA was renamed to Parallel ATA, or PATA for short.

Parallel ATA cables have a maximum allowable length of .[2][3] Because of this limit, the technology normally appears as an internal computer storage interface. For many years, ATA provided the most common and the least expensive interface for this application. It has largely been replaced by SATA in newer systems.


History and terminology

The standard was originally conceived as the "AT Bus Attachment," officially called "AT Attachment" and abbreviated "ATA"[4][5] because its primary feature was a direct connection to the 16-bit ISA bus introduced with the IBM PC/AT.[6] The original ATA specifications published by the standards committees use the name "AT Attachment".[7][8] [9] The "AT" in the IBM PC/AT referred to "Advanced Technology" so ATA has also been referred to as "Advanced Technology Attachment".[10][11][12][13] When a newer Serial ATA (SATA) was introduced in 2003, the original ATA was renamed to Parallel ATA, or PATA for short.[14]

IDE and ATA-1

The first version of what is now called the ATA/ATAPI interface was developed by Western Digital under the name _Integrated Drive Electronics_ (IDE). Together with Control Data Corporation (the hard drive manufacturer) and Compaq Computer (the initial customer), they developed the connector, the signaling protocols and so on, with the goal of remaining software compatible with the existing ST-506 hard drive interface.[15] The first such drives appeared in Compaq PCs in 1986.[16][17]

The term _Integrated Drive Electronics_ refers not just to the connector and interface definition, but also to the fact that the drive controller is integrated into the drive, as opposed to a separate controller on or connected to the motherboard. The interface cards used to connect a parallel ATA drive to, for example, a PCI slot are not drive controllers: they are merely bridges between the host bus and the ATA interface. Since the original ATA interface is essentially just a 16-bit ISA bus in disguise, the bridge was especially simple in case of an ATA connector being located on an ISA interface card. The integrated controller presented the drive to the host computer as an array of 512-byte blocks with a relatively simple command interface. This relieved the mainboard and interface cards in the host computer of the chores of stepping the disk head arm, moving the head arm in and out, and so on, as had to be done with earlier ST-506 and ESDI hard drives. All of these low-level details of the mechanical operation of the drive were now handled by the controller on the drive itself. This also eliminated the need to design a single controller that could handle many different types of drives, since the controller could be unique for the drive. The host need only to ask for a particular sector, or block, to be read or written, and either accept the data from the drive or send the data to it.

The interface used by these drives was standardized in 1994 as ANSI standard X3.221-1994, _AT Attachment Interface for Disk Drives_. After later versions of the standard were developed, this became known as "ATA-1".[18][19]

A short-lived, seldom-used implementation of ATA was created for the IBM XT and similar machines that used the 8-bit version of the ISA bus. It has been referred to as "XT-IDE", "XTA" or "XT Attachment".[20]

Second ATA interface

_Mozart 16_ 16-bit ISA sound card, from when the CDROM drive interface had not yet been standardized. This card offers four separate interface connectors for IDE, Panasonic, Mitsumi, and Sony CDROM drives, but only one connector could be used since they all shared the same interface wiring.]] 32 16-bit ISA sound card, from after connector standardization had occurred, with an IDE interface for the CDROM drive.]]

When PC motherboard makers started to include onboard ATA interfaces in place of the earlier ISA plug-in cards, there was usually only one ATA connector on the board, which could support up to two hard drives. At the time, in combination with the floppy drive, this was sufficient for most users. When the CD-ROM was developed, many computers would have been unable to accept these drives if they had been ATA devices, due to already having two hard drives installed. Adding the CD-ROM drive would have required removal of one of the drives.

SCSI was available as a CD-ROM expansion option at the time, but devices with SCSI were more expensive than ATA devices due to the need for a smart interface that is capable of bus arbitration. SCSI typically added to the cost of a storage device, in addition to the cost of a SCSI host adapter.

The less expensive solution was the addition of a dedicated CD-ROM interface, which was typically included as an expansion option on a sound card. PC motherboards initially did not come with support for more than simple beeps from internal speakers; thus, sound cards (such as the Sound Blaster Pro) were available for use with games, operating system and software event sounds, or to listen to audio CDs. Also, sound cards commonly included a game port joystick/gamepad port along with interfaces to control a CD-ROM and transmit CD audio to the system.

Initially, the second drive interface was not well defined. It was first introduced with interfaces specific to certain CD-ROM drives such as Mitsumi, Sony or Panasonic drives,[21] and it was common to find early sound cards with two or three separate connectors each designed to match a certain brand of CD-ROM drive. This evolved into the standard ATA interface for ease of cross-compatibility, though the sound card ATA interface still usually supported only a single CD-ROM and not hard drives.

This second ATA interface on the sound card eventually evolved into the second motherboard ATA interface which was long included as a standard component in all PCs. Called the "primary" and "secondary" ATA interfaces, they were assigned to base addresses 0x1F0 and 0x170 on ISA bus systems.

EIDE and ATA-2

In 1994, about the same time that the ATA-1 standard was adopted, Western Digital introduced drives under a newer name, ENHANCED IDE (EIDE). These included most of the features of the forthcoming ATA-2 specification and several additional enhancements. Other manufacturers introduced their own variations of ATA-1 such as "Fast ATA" and "Fast ATA-2".

The new version of the ANSI standard, _AT Attachment Interface with Extensions ATA-2_ (X3.279-1996), was approved in 1996. It included most of the features of the manufacturer-specific variants.[22][23]

ATA-2 also was the first to note that devices other than hard drives could be attached to the interface:

ATAPI

As mentioned in the previous sections, ATA was originally designed for, and worked only with hard disk drives and devices that could emulate them. The introduction of ATAPI (ATA Packet Interface) by a group called the Small Form Factor committee (SFF) allowed ATA to be used for a variety of other devices that require functions beyond those necessary for hard disk drives. For example, any removable media device needs a "media eject" command, and a way for the host to determine whether the media is present, and these were not provided in the ATA protocol.

The Small Form Factor committee approached this problem by defining ATAPI, the "ATA Packet Interface". ATAPI is actually a protocol allowing the ATA interface to carry SCSI commands and responses; therefore, all ATAPI devices are actually "speaking SCSI" other than at the electrical interface. In fact, some early ATAPI devices were simply SCSI devices with an ATA/ATAPI to SCSI protocol converter added on. The SCSI commands and responses are embedded in "packets" (hence "ATA Packet Interface") for transmission on the ATA cable. This allows any device class for which a SCSI command set has been defined to be interfaced via ATA/ATAPI.

ATAPI devices are also "speaking ATA", as the ATA physical interface and protocol are still being used to send the packets. On the other hand, ATA hard drives and solid state drives do not use ATAPI.

ATAPI devices include CD-ROM and DVD-ROM drives, tape drives, and large-capacity floppy drives such as the Zip drive and SuperDisk drive.

The SCSI commands and responses used by each class of ATAPI device (CD-ROM, tape, etc.) are described in other documents or specifications specific to those device classes and are not within ATA/ATAPI or the T13 committee's purview. One commonly used set is defined in the MMC SCSI command set.

ATAPI was adopted as part of ATA in INCITS 317-1998, _AT Attachment with Packet Interface Extension (ATA/ATAPI-4)_.[24][25][26]

UDMA and ATA-4

The ATA/ATAPI-4 standard also introduced several "Ultra DMA" transfer modes. These initially supported speeds from 16 MByte/s to 33 MByte/second. In later versions, faster Ultra DMA modes were added, requiring new 80-wire cables to reduce crosstalk. The latest versions of Parallel ATA support up to 133 MByte/s.

Ultra ATA

Ultra ATA, abbreviated UATA, is a designation that has been primarily used by Western Digital for different speed enhancements to the ATA/ATAPI standards. For example, in 2000 Western Digital published a document describing "Ultra ATA/100", which brought performance improvements for the then-current ATA/ATAPI-5 standard by improving maximum speed of the Parallel ATA interface from 66 to 100 MB/s.[27] Most of Western Digital's changes, along with others, were included in the ATA/ATAPI-6 standard (2002).

Current terminology

The terms "integrated drive electronics" (IDE), "enhanced IDE" and "EIDE" have come to be used interchangeably with ATA (now Parallel ATA, or PATA).

In addition, there have been several generations of "EIDE" drives marketed, compliant with various versions of the ATA specification. An early "EIDE" drive might be compatible with ATA-2, while a later one with ATA-6.

Nevertheless, a request for an "IDE" or "EIDE" drive from a computer parts vendor will almost always yield a drive that will work with most Parallel ATA interfaces.

Another common usage is to refer to the specification version by the fastest mode supported. For example, ATA-4 supported Ultra DMA modes 0 through 2, the latter providing a maximum transfer rate of 33 megabytes per second. ATA-4 drives are thus sometimes called "UDMA-33" drives, and sometimes "ATA-33" drives. Similarly, ATA-6 introduced a maximum transfer speed of 100 megabytes per second, and some drives complying to this version of the standard are marketed as "PATA/100" drives.

x86 BIOS size limitations

Initially, the size of an ATA drive was stored in the system x86 BIOS using a type number (1 through 45) that predefined the C/H/S parameters [28] and also often the landing zone, in which the drive heads are parked while not in use. Later, a "user definable" format[29] called C/H/S or cylinders, heads, sectors was made available. These numbers were important for the earlier ST-506 interface, but were generally meaningless for ATA—the CHS parameters for later ATA large drives often specified impossibly high numbers of heads or sectors that did not actually define the internal physical layout of the drive at all. From the start, and up to ATA-2, every user had to specify explicitly how large every attached drive was. From ATA-2 on, an "identify drive" command was implemented that can be sent and which will return all drive parameters.

Owing to a lack of foresight by motherboard manufacturers, the system BIOS was often hobbled by artificial C/H/S size limitations due to the manufacturer assuming certain values would never exceed a particular numerical maximum.

The first of these BIOS limits occurred when ATA drives reached sizes in excess of 504 megabytes, because some motherboard BIOSes would not allow C/H/S values above 1024 cylinders, 16 heads, and 63 sectors. Multiplied by 512 bytes per sector, this totals bytes which, divided by bytes per megabyte, equals 504 megabytes.

The second of these BIOS limitations occurred at 1024 cylinders, 256 heads, and 63 sectors, and a bug in MS-DOS and MS-Windows 95 limited the number of heads to 255. This totals to bytes, commonly referred to as the 8.4 gigabyte barrier. This is again a limit imposed by x86 BIOSes, and not a limit imposed by the ATA interface.

It was eventually determined that these size limitations could be overridden with a tiny program loaded at startup from a hard drive's boot sector. Some hard drive manufacturers, such as Western Digital, started including these override utilities with new large hard drives to help overcome these problems. However, if the computer was booted in some other manner without loading the special utility, the invalid BIOS settings would be used and the drive could either be inaccessible or appear to the operating system to be damaged.

Later, an extension to the x86 BIOS disk services called the "Enhanced Disk Drive" (EDD) was made available, which makes it possible to address drives as large as 2⁶⁴ sectors.[30]

Interface size limitations

The first drive interface used 22-bit addressing mode which resulted in a maximum drive capacity of two gigabytes. Later, the first formalized ATA specification used a 28-bit addressing mode through LBA28, allowing for the addressing of 2²⁸ () sectors (blocks) of 512 bytes each, resulting in a maximum capacity of 128 GiB (137 GB).[31]

ATA-6 introduced 48-bit addressing, increasing the limit to 128 PiB (144 PB). As a consequence, any ATA drive of capacity larger than about 137 GB must be an ATA-6 or later drive. Connecting such a drive to a host with an ATA-5 or earlier interface will limit the usable capacity to the maximum of the interface.

Some operating systems, including Windows XP pre-SP1, and Windows 2000 pre-SP3, disable LBA48 by default, requiring the user to take extra steps to use the entire capacity of an ATA drive larger than about 137 gigabytes.[32]

Older operating systems, such as Windows 98, do not support 48-bit LBA at all. However, members of the third-party group MSFN[33] have modified the Windows 98 disk drivers to add unofficial support for 48-bit LBA to Windows 95 OSR2, Windows 98, Windows 98 SE and Windows ME.

Some 16-bit and 32-bit operating systems supporting LBA48 may still not support disks larger than 2 TiB due to using 32-bit arithmetics only; a limitation also applying to many boot sectors.

Primacy and obsolescence

Parallel ATA (then simply called ATA or IDE) became the primary storage device interface for PCs soon after its introduction. In some systems, a third and fourth motherboard interface was provided, allowing up to eight ATA devices to be attached to the motherboard. Often, these additional connectors were implemented by inexpensive RAID controllers.

Soon after the introduction of Serial ATA (SATA) in 2003, use of Parallel ATA declined. The first motherboards with built-in SATA interfaces usually had only a single PATA connector (for up to two PATA devices), along with multiple SATA connectors.

As of 2007, some PC chipsets, for example the Intel ICH10, had removed support for PATA. Motherboard vendors still wishing to offer Parallel ATA with those chipsets must include an additional interface chip. In more recent computers, the Parallel ATA interface is rarely used even if present, as four or more Serial ATA connectors are usually provided on the motherboard and SATA devices of all types are common.

With Western Digital's withdrawal from the PATA market, hard disk drives with the PATA interface were no longer in production after December 2013 for other than specialty applications.[34]


Parallel ATA interface

Parallel ATA cables transfer data 16 bits at a time. The traditional cable uses 40-socket connectors attached to a 40- or 80-conductor ribbon cable. Each cable has two or three connectors, one of which plugs into a host adapter interfacing with the rest of the computer system. The remaining connector(s) plug into storage devices, most commonly hard disk drives or optical drives. Each connector has 39 physical pins arranged into two rows, with a gap or key at pin 20.

Round parallel ATA cables (as opposed to ribbon cables) were eventually made available for 'case modders' for cosmetic reasons, as well as claims of improved computer cooling and were easier to handle; however, only ribbon cables are supported by the ATA specifications.

Pin 20

In the ATA standard, pin 20 is defined as a mechanical key and is not used. This pin's socket on the female connector is often obstructed, requiring pin 20 to be omitted from the male cable or drive connector; it is thus impossible to plug it in the wrong way round.

However, some flash memory drives can use pin 20 as VCC_in to power the drive without requiring a special power cable; this feature can only be used if the equipment supports this use of pin 20.[35]

Pin 28

Pin 28 of the gray (slave/middle) connector of an 80-conductor cable is not attached to any conductor of the cable. It is attached normally on the black (master drive end) and blue (motherboard end) connectors.

Pin 34

Pin 34 is connected to ground inside the blue connector of an 80-conductor cable but not attached to any conductor of the cable. It is attached normally on the gray and black connectors.[36]

44-pin variant

A 44-pin variant PATA connector is used for 2.5 inch drives inside laptops. The pins are closer together and the connector is physically smaller than the 40-pin connector. The extra pins carry power.

80-wires variant

ATA's cables have had 40 wires for most of its history (44 conductors for the smaller form-factor version used for 2.5" drives—the extra four for power), but an 80-wire version appeared with the introduction of the _UDMA/66_ mode. All of the additional wires in the new cable are ground wires, interleaved with the previously defined wires to reduce the effects of capacitive coupling between neighboring signal wires, reducing crosstalk. Capacitive coupling is more of a problem at higher transfer rates, and this change was necessary to enable the 66 megabytes per second (MB/s) transfer rate of _UDMA4_ to work reliably. The faster _UDMA5_ and _UDMA6_ modes also require 80-conductor cables.

Though the number of wires doubled, the number of connector pins and the pinout remain the same as 40-conductor cables, and the external appearance of the connectors is identical. Internally, the connectors are different; the connectors for the 80-wire cable connect a larger number of ground wires to the ground pins, while the connectors for the 40-wire cable connect ground wires to ground pins one-for-one. 80-wire cables usually come with three differently colored connectors (blue, black, and gray for controller, master drive, and slave drive respectively) as opposed to uniformly colored 40-wire cable's connectors (commonly all gray). The gray connector on 80-conductor cables has pin 28 CSEL not connected, making it the slave position for drives configured cable select.

Differences between connectors

The image on the right shows PATA connectors after removal of strain relief, cover, and cable. Pin one is at bottom left of the connectors, pin 2 is top left, etc., except that the lower image of the blue connector shows the view from the opposite side, and pin one is at top right.

The connector is an insulation-displacement connector—in other words, each contact comprises a pair of points which together pierce the insulation of the ribbon cable with such precision that they make a connection to the desired conductor without harming the insulation on the neighboring wires. The center row of contacts are all connected to the common ground bus and attached to the odd numbered conductors of the cable. The top row of contacts are the even-numbered sockets of the connector (mating with the even-numbered pins of the receptacle) and attach to every other even-numbered conductor of the cable. The bottom row of contacts are the odd-numbered sockets of the connector (mating with the odd-numbered pins of the receptacle) and attach to the remaining even-numbered conductors of the cable.

Note the connections to the common ground bus from sockets 2 (top left), 19 (center bottom row), 22, 24, 26, 30, and 40 on all connectors. Also note (enlarged detail, bottom, looking from the opposite side of the connector) that socket 34 of the blue connector does not contact any conductor but unlike socket 34 of the other two connectors, it does connect to the common ground bus. On the gray connector, note that socket 28 is completely missing, so that pin 28 of the drive attached to the gray connector will be open. On the black connector, sockets 28 and 34 are completely normal, so that pins 28 and 34 of the drive attached to the black connector will be connected to the cable. Pin 28 of the black drive reaches pin 28 of the host receptacle but not pin 28 of the gray drive, while pin 34 of the black drive reaches pin 34 of the gray drive but not pin 34 of the host. Instead, pin 34 of the host is grounded.

The standard dictates color-coded connectors for easy identification by both installer and cable maker. All three connectors are different from one another. The blue (host) connector has the socket for pin 34 connected to ground inside the connector but not attached to any conductor of the cable. Since the old 40 conductor cables do not ground pin 34, the presence of a ground connection indicates that an 80 conductor cable is installed. The wire for pin 34 is attached normally on the other types and is not grounded. Installing the cable backwards (with the black connector on the system board, the blue connector on the remote device and the gray connector on the center device) will ground pin 34 of the remote device and connect host pin 34 through to pin 34 of the center device. The gray center connector omits the connection to pin 28 but connects pin 34 normally, while the black end connector connects both pins 28 and 34 normally.

Multiple devices on a cable

If two devices are attached to a single cable, one must be designated as _Device 0_ (in the past, commonly designated _master_) and the other as _Device 1_ (in the past, incorrectly designated as _slave_). This distinction is necessary to allow both drives to share the cable without conflict. The _Device 0_ drive is the drive that usually appears "first" to the computer's BIOS and/or operating system. On Intel 486 PCs era and older, the drives are often referred to by the BIOS as "C" for the _master_ and "D" for the _slave_ following the way DOS would refer to the active primary partitions on each.

The mode that a drive must use is often set by a jumper setting on the drive itself, which must be manually set to _Device 0_ (_Primary_/_Master_) or _Device 1_ (_Secondary_/_Slave_). If there is a single device on a cable, it should be configured as _Device 0_. However, some certain era drives have a special setting called _Single_ for this configuration (Western Digital, in particular). Also, depending on the hardware and software available, a _Single_ drive on a cable will often work reliably even though configured as the _Device 1_ drive (most often seen where an optical drive is the only device on the secondary ATA interface).

Master and slave clarification

Although they were in common use, the terms "master" and "slave" do not appear anymore in current versions of the ATA specifications, or any current documetnation. Since ATA-2 the two devices are referred to as "Device 0" and "Device 1", respectively. This is more appropriate since the two devices have always operated, since the earliest ATA specification, as equal peers on the cable, with neither having control or priority over the other.

It is a common myth that the controller on the master drive assumes control over the slave drive, or that the master drive may claim priority of communication over the other device on the same ATA interface. In fact, the drivers in the host operating system perform the necessary arbitration and serialization, and each drive's onboard controller operates independently of the other.

While it may have remained in colloquial use, the PC industry has not used ATA master/slave terminology in many years.

Cable select

A drive mode called _cable select_ was described as optional in ATA-1 and has come into fairly widespread use with ATA-5 and later. A drive set to "cable select" automatically configures itself as _Device 0_ or _Device 1_, according to its position on the cable. Cable select is controlled by pin 28. The host adapter grounds this pin; if a device sees that the pin is grounded, it becomes the _Device 0_ device; if it sees that pin 28 is open, the device becomes the _Device 1_ device.

This setting is usually chosen by a jumper setting on the drive called "cable select", usually marked _CS_, which is separate from the _Device 0/1_ setting.

Note that if two drives are configured as _Device 0_ and _Device 1_ manually, this configuration does not need to correspond to their position on the cable. Pin 28 is only used to let the drives know their position on the cable; it is not used by the host when communicating with the drives.

With the 40-wire cable, it was very common to implement cable select by simply cutting the pin 28 wire between the two device connectors; putting the _Device 1_ device at the end of the cable, and the _Device 0_ on the middle connector. This arrangement eventually was standardized in later versions. If there is just one device on the cable, this results in an unused stub of cable, which is undesirable for physical convenience and electrical reasons. The stub causes signal reflections, particularly at higher transfer rates.

Starting with the 80-wire cable defined for use in ATAPI5/UDMA4, the _Device 0_ device goes at the end of the cable—the black connector—and the slave _Device 1_ goes on the middle connector—the gray one—and the blue connector goes onto the motherboard. So, if there is only one (_Device 0_) device on the cable, there is no cable stub to cause reflections. Also, cable select is now implemented in the _device 1_ device connector, usually simply by omitting the contact from the connector body

Serialized, overlapped, and queued operations

The parallel ATA protocols up through ATA-3 require that once a command has been given on an ATA interface, it must complete before any subsequent command may be given. Operations on the devices must be serializedwith only one operation in progress at a timewith respect to the ATA host interface. A useful mental model is that the host ATA interface is busy with the first request for its entire duration, and therefore can not be told about another request until the first one is complete. The function of serializing requests to the interface is usually performed by a device driver in the host operating system.

The ATA-4 and subsequent versions of the specification have included an "overlapped feature set" and a "queued feature set" as optional features, both being given the name "Tagged Command Queuing" (TCQ), a reference to a set of features from SCSI which the ATA version attempts to emulate. However, support for these is extremely rare in actual parallel ATA products and device drivers because these feature sets were implemented in such a way as to maintain software compatibility with its heritage as originally an extension of the ISA bus. This implementation resulted in excessive CPU utilization which largely negated the advantages of command queuing. By contrast, overlapped and queued operations have been common in other storage buses; in particular, SCSI's version of tagged command queuing had no need to be compatible with APIs designed for ISA, allowing it to attain high performance with low overhead on buses which supported first party DMA like PCI. This has long been seen as a major advantage of SCSI.

The Serial ATA standard has supported native command queueing (NCQ) since its first release, but it is an optional feature for both host adapters and target devices. Many obsolete PC motherboards do not support NCQ, but modern SATA hard disk drives and SATA solid-state drives usually support NCQ, which is not the case for removable (CD/DVD) drives because the ATAPI command set used to control them prohibits queued operations.

Two devices on one cable—speed impact

There are many debates about how much a slow device can impact the performance of a faster device on the same cable. There is an effect, but the debate is confused by the blurring of two quite different causes, called here "Lowest speed" and "One operation at a time".

"Lowest speed"

On early ATA host adapters, both devices' data transfers can be constrained to the speed of the slower device, if two devices of different speed capabilities are on the same cable.

For all modern ATA host adapters, this is not true, as modern ATA host adapters support _independent device timing_. This allows each device on the cable to transfer data at its own best speed. Even with earlier adapters, without independent timing, this effect applies only to the data transfer phase of a read or write operation.[37]

"One operation at a time"

This is caused by the omission of both overlapped and queued feature sets from most parallel ATA products. Only one device on a cable can perform a read or write operation at one time; therefore, a fast device on the same cable as a slow device UNDER HEAVY USE will find it has to wait for the slow device to complete its task first.

However, most modern devices will report write operations as complete once the data is stored in their onboard cache memory, before the data is written to the (slow) magnetic storage. This allows commands to be sent to the other device on the cable, reducing the impact of the "one operation at a time" limit.

The impact of this on a system's performance depends on the application. For example, when copying data from an optical drive to a hard drive (such as during software installation), this effect probably will not matter. Such jobs are necessarily limited by the speed of the optical drive no matter where it is. But if the hard drive in question is also expected to provide good throughput for other tasks at the same time, it probably should not be on the same cable as the optical drive.

HDD passwords and security

ATA devices may support an optional security feature which is defined in an ATA specification, and thus not specific to any brand or device. The security feature can be enabled and disabled by sending special ATA commands to the drive. If a device is locked, it will refuse all access until it is unlocked.

A device can have two passwords: A User Password and a Master Password; either or both may be set. There is a Master Password identifier feature which, if supported and used, can identify without disclosing the current Master Password.

A device can be locked in two modes: High security mode or Maximum security mode. Bit 8 in word 128 of the IDENTIFY response shows which mode the disk is in: 0 = High, 1 = Maximum.

In High security mode, the device can be unlocked with either the User or Master password, using the "SECURITY UNLOCK DEVICE" ATA command. There is an attempt limit, normally set to 5, after which the disk must be power cycled or hard-reset before unlocking can be attempted again. Also in High security mode, the SECURITY ERASE UNIT command can be used with either the User or Master password.

In Maximum security mode, the device can be unlocked only with the User password. If the User password is not available, the only remaining way to get at least the bare hardware back to a usable state is to issue the SECURITY ERASE PREPARE command, immediately followed by SECURITY ERASE UNIT. In Maximum security mode, the SECURITY ERASE UNIT command requires the Master password and will completely erase all data on the disk. Word 89 in the IDENTIFY response indicates how long the operation will take.[38]

While the ATA lock is intended to be impossible to defeat without a valid password, there are purported workarounds to unlock a device.

External parallel ATA devices

Due to a short cable length specification and shielding issues it is extremely uncommon to find external PATA devices that directly use PATA for connection to a computer. A device connected externally needs additional cable length to form a U-shaped bend so that the external device may be placed alongside, or on top of the computer case, and the standard cable length is too short to permit this. For ease of reach from motherboard to device, the connectors tend to be positioned towards the front edge of motherboards, for connection to devices protruding from the front of the computer case. This front-edge position makes extension out the back to an external device even more difficult. Ribbon cables are poorly shielded, and the standard relies upon the cabling to be installed inside a shielded computer case to meet RF emissions limits.

External hard disk drives or optical disk drives that have an internal PATA interface, use some other interface technology to bridge the distance between the external device and the computer. USB is the most common external interface, followed by Firewire. A bridge chip inside the external devices converts from the USB interface to PATA, and typically only supports a single external device without cable select or master/slave.


Compact Flash interface

Compact Flash in its _IDE mode_ is essentially a miniaturized ATA interface, intended for use on devices that use flash memory storage. No interfacing chips or circuitry are required, other than to directly adapt the smaller CF socket onto the larger ATA connector. (Although most CF cards only support IDE mode up to PIO4, making them much slower in IDE mode than their CF capable speed[39])

The ATA connector specification does not include pins for supplying power to a CF device, so power is inserted into the connector from a separate source. The exception to this is when the CF device is connected to a 44-pin ATA bus designed for 2.5-inch hard disk drives, commonly found in notebook computers, as this bus implementation must provide power to a standard hard disk drive.

CF devices can be designated as master or slave on an ATA interface, though since most CF devices offer only a single socket, it is not necessary to offer this selection to end users. Although CF can be hot-pluggable with additional design methods, by default when wired directly to an ATA interface, it is not intended to be hot-pluggable.


ATA standards versions, transfer rates, and features

The following table shows the names of the versions of the ATA standards and the transfer modes and rates supported by each. Note that the transfer rate for each mode (for example, 66.7 MB/s for UDMA4, commonly called "Ultra-DMA 66", defined by ATA-5) gives its maximum theoretical transfer rate on the cable. This is simply two bytes multiplied by the effective clock rate, and presumes that every clock cycle is used to transfer end-user data. In practice, of course, protocol overhead reduces this value.

Congestion on the host bus to which the ATA adapter is attached may also limit the maximum burst transfer rate. For example, the maximum data transfer rate for conventional PCI bus is 133 MB/s, and this is shared among all active devices on the bus.

In addition, no ATA hard drives existed in 2005 that were capable of measured sustained transfer rates of above 80 MB/s. Furthermore, sustained transfer rate tests do not give realistic throughput expectations for most workloads: They use I/O loads specifically designed to encounter almost no delays from seek time or rotational latency. Hard drive performance under most workloads is limited first and second by those two factors; the transfer rate on the bus is a distant third in importance. Therefore, transfer speed limits above 66 MB/s really affect performance only when the hard drive can satisfy all I/O requests by reading from its internal cache—a very unusual situation, especially considering that such data is usually already buffered by the operating system.

, mechanical hard disk drives can transfer data at up to 157 MB/s,[40] which is beyond the capabilities of the PATA/133 specification. High-performance solid state drives can transfer data at up to 308 MB/s.[41]

Only the Ultra DMA modes use CRC to detect errors in data transfer between the controller and drive. This is a 16-bit CRC, and it is used for data blocks only. Transmission of command and status blocks do not use the fast signaling methods that would necessitate CRC. For comparison, in Serial ATA, 32-bit CRC is used for both commands and data.[42]

Features introduced with each ATA revision

+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| Standard      | Other names | New transfer modes                | Maximum disk size | Other new features                                                                                                                                                                                                               | ANSI reference        |
|               |             |                                   | (512 byte sector) |                                                                                                                                                                                                                                  |                       |
+===============+=============+===================================+===================+==================================================================================================================================================================================================================================+=======================+
| IDE (pre-ATA) | IDE         | PIO 0                             | 2 GiB (2.1 GB)    | 22-bit logical block addressing (LBA)                                                                                                                                                                                            | –                     |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA-1         | ATA, IDE    | Multi-word DMA 0                  | 128 GiB (137 GB)  | 28-bit logical block addressing (LBA)                                                                                                                                                                                            | X3.221-1994           |
|               |             |                                   |                   |                                                                                                                                                                                                                                  | (obsolete since 1999) |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA-2         | EIDE, , ,   | PIO 3, 4                          |                   | PCMCIA connector. Identify drive command.[43]                                                                                                                                                                                    | X3.279-1996           |
|               |             | Multi-word DMA 1, 2               |                   |                                                                                                                                                                                                                                  | (obsolete since 2001) |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA-3         | EIDE        | Single-word DMA modes dropped[44] |                   | S.M.A.R.T., Security, 44 pin connector for 2.5" drives                                                                                                                                                                           | X3.298-1997           |
|               |             |                                   |                   |                                                                                                                                                                                                                                  | (obsolete since 2002) |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA/ATAPI-4   | ATA-4,      | ,                                 |                   | AT Attachment Packet Interface (ATAPI) (support for CD-ROM, tape drives etc.), Optional overlapped and queued command set features, Host Protected Area (HPA), CompactFlash Association (CFA) feature set for solid state drives | NCITS 317-1998        |
|               |             | also known as UDMA/33             |                   |                                                                                                                                                                                                                                  |                       |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA/ATAPI-5   | ATA-5,      | Ultra DMA 3, 4,                   |                   | 80-wire cables; CompactFlash connector                                                                                                                                                                                           | NCITS 340-2000        |
|               |             | also known as UDMA/66             |                   |                                                                                                                                                                                                                                  |                       |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA/ATAPI-6   | ATA-6,      | UDMA 5,                           | 128 PiB (144 PB)  | 48-bit LBA, Device Configuration Overlay (DCO),                                                                                                                                                                                  | NCITS 361-2002        |
|               |             | also known as UDMA/100            |                   | Automatic Acoustic Management (AAM)                                                                                                                                                                                              |                       |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA/ATAPI-7   | ATA-7,      | UDMA 6,                           |                   | SATA 1.0, Streaming feature set, long logical/physical sector feature set for non-packet devices                                                                                                                                 |                       |
|               |             | also known as UDMA/133            |                   |                                                                                                                                                                                                                                  |                       |
|               |             | SATA/150                          |                   |                                                                                                                                                                                                                                  |                       |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA/ATAPI-8   | ATA-8       |  —                                |                   | Hybrid drive featuring non-volatile cache to speed up critical OS files                                                                                                                                                          | INCITS 452-2008       |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| ATA/ATAPI-8   | ACS-2       |  —                                |                   | Data Set Management, Extended Power Conditions, CFast, additional stats., etc.                                                                                                                                                   | INCITS 482-2012       |
+---------------+-------------+-----------------------------------+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+

Speed of defined transfer modes

+-----------------------+------+-----------------------+------------+
| Mode                  | #    | Maximum transfer rate | cycle time |
|                       |      | (MB/s)                |            |
+=======================+======+=======================+============+
| PIO                   | 0    | 3.3                   | 600 ns     |
+-----------------------+------+-----------------------+------------+
| 1                     | 5.2  | 383 ns                |            |
+-----------------------+------+-----------------------+------------+
| 2                     | 8.3  | 240 ns                |            |
+-----------------------+------+-----------------------+------------+
| 3                     | 11.1 | 180 ns                |            |
+-----------------------+------+-----------------------+------------+
| 4                     | 16.7 | 120 ns                |            |
+-----------------------+------+-----------------------+------------+
| Single-word DMA       | 0    | 2.1                   | 960 ns     |
+-----------------------+------+-----------------------+------------+
| 1                     | 4.2  | 480 ns                |            |
+-----------------------+------+-----------------------+------------+
| 2                     | 8.3  | 240 ns                |            |
+-----------------------+------+-----------------------+------------+
| Multi-word DMA        | 0    | 4.2                   | 480 ns     |
+-----------------------+------+-----------------------+------------+
| 1                     | 13.3 | 150 ns                |            |
+-----------------------+------+-----------------------+------------+
| 2                     | 16.7 | 120 ns                |            |
+-----------------------+------+-----------------------+------------+
| 3[45]                 | 20   | 100 ns                |            |
+-----------------------+------+-----------------------+------------+
| 4[46]                 | 25   | 80 ns                 |            |
+-----------------------+------+-----------------------+------------+
| Ultra DMA             | 0    | 16.7                  | 240 ns ÷ 2 |
+-----------------------+------+-----------------------+------------+
| 1                     | 25.0 | 160 ns ÷ 2            |            |
+-----------------------+------+-----------------------+------------+
| 2 (Ultra ATA/33)      | 33.3 | 120 ns ÷ 2            |            |
+-----------------------+------+-----------------------+------------+
| 3                     | 44.4 | 90 ns ÷ 2             |            |
+-----------------------+------+-----------------------+------------+
| 4 (Ultra ATA/66)      | 66.7 | 60 ns ÷ 2             |            |
+-----------------------+------+-----------------------+------------+
| 5 (Ultra ATA/100)     | 100  | 40 ns ÷ 2             |            |
+-----------------------+------+-----------------------+------------+
| 6 (Ultra ATA/133)     | 133  | 30 ns ÷ 2             |            |
+-----------------------+------+-----------------------+------------+
| 7 (Ultra ATA/167)[47] | 167  | 24 ns ÷ 2             |            |
+-----------------------+------+-----------------------+------------+

: Transfer Modes


Related standards, features, and proposals

ATAPI Removable Media Device (ARMD)

ATAPI devices with removable media, other than CD and DVD drives, are classified as ARMD (ATAPI Removable Media Device) and can appear as either a super-floppy (non-partitioned media) or a hard drive (partitioned media) to the operating system. These can be supported as bootable devices by a BIOS complying with the ATAPI REMOVABLE MEDIA DEVICE BIOS SPECIFICATION,[48] originally developed by Compaq Computer Corporation and Phoenix Technologies. It specifies provisions in the BIOS of a personal computer to allow the computer to be bootstrapped from devices such as Zip drives, Jaz drives, SuperDisk (LS-120) drives, and similar devices.

These devices have removable media like floppy disk drives, but capacities more commensurate with hard drives, and programming requirements unlike either. Due to limitations in the floppy controller interface most of these devices were ATAPI devices, connected to one of the host computer's ATA interfaces, similarly to a hard drive or CD-ROM device. However, existing BIOS standards did not support these devices. An ARMD-compliant BIOS allows these devices to be booted from and used under the operating system without requiring device-specific code in the OS.

A BIOS implementing ARMD allows the user to include ARMD devices in the boot search order. Usually an ARMD device is configured earlier in the boot order than the hard drive. Similarly to a floppy drive, if bootable media is present in the ARMD drive, the BIOS will boot from it; if not, the BIOS will continue in the search order, usually with the hard drive last.

There are two variants of ARMD, ARMD-FDD and ARMD-HDD. Originally ARMD caused the devices to appear as a sort of very large floppy drive, either the primary floppy drive device 00h or the secondary device 01h. Some operating systems required code changes to support floppy disks with capacities far larger than any standard floppy disk drive. Also, standard-floppy disk drive emulation proved to be unsuitable for certain high-capacity floppy disk drives such as Iomega Zip drives. Later the ARMD-HDD, ARMD-"Hard disk device", variant was developed to address these issues. Under ARMD-HDD, an ARMD device appears to the BIOS and the operating system as a hard drive.

ATA over Ethernet

In August 2004, Sam Hopkins and Brantley Coile of Coraid specified a lightweight ATA over Ethernet protocol to carry ATA commands over Ethernet instead of directly connecting them to a PATA host adapter. This permitted the established block protocol to be reused in storage area network (SAN) applications.


See also

-   Advanced Host Controller Interface (AHCI)
-   ATA over Ethernet (AoE)
-   BIOS for BIOS Boot Specification (BBS)
-   CE-ATA Consumer Electronics (CE) ATA
-   FATA (hard drive)
-   INT 13H for BIOS Enhanced Disk Drive Specification (SFF-8039i)
-   IT8212, a low-end Parallel ATA controller
-   Master/slave (technology)
-   SCSI (Small Computer System Interface)
-   Serial ATA
-   List of device bandwidths


References


External links

-   CE-ATA Workgroup

AT_Attachment Category:Computer storage buses Category:Computer connectors

[1] t13.org

[2]

[3]

[4] David A. Deming, The Essential Guide to Serial ATA and SATA Express, CRC Press - 2014, page 32

[5] Common Access Method AT Bus Attachment, Rev 1, April 1, 1989, CAM/89-002, CAM Committee

[6]

[7]

[8]

[9]

[10] William Rothwell, LPIC-2 Cert Guide: (201-400 and 202-400 exams), Pearson IT Certification - 2016, page 150

[11]

[12] Nitin Vengurlekar, Murali Vallath, Rich Long, Oracle Automatic Storage Management: Under-the-Hood & Practical Deployment Guide, McGraw Hill Professional - 2007, page 6

[13] Simon Collin, Dictionary of Computing: Over 10,000 Terms Clearly Defined, A&C Black, 2009, page 67

[14] Scott Mueller, Upgrading and Repairing PCs - Chapter 7. The ATA/IDE Interface, Que Publishing, Jun 22, 2015

[15]

[16]

[17]

[18]

[19]

[20]

[21] Creative Labs sound card documentation showing diagram with custom Mitsumi, Sony, and Panasonic CD-ROM drive connectors

[22]

[23]

[24]

[25]

[26]

[27]

[28] kursk.ru – Standard CMOS Setup

[29]

[30] teleport.com – Interrupts Page

[31]

[32]  The setting is HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\atapi\Parameters\EnableBigLba = 1.

[33]

[34]

[35] Welcome to Transcend website

[36]

[37]

[38] Rockbox – Unlocking a password protected harddisk

[39]

[40]

[41]

[42]  www.serialata.org

[43] mpcclub.com – Em8550datasheet.pdf

[44] Direct Memory Access (DMA) Modes and Bus Mastering DMA

[45] CompactFlash 2.1

[46]

[47] CompactFlash 6.0

[48]