310 computer from the late 1980s]] BIOS ( ; an acronym for BASIC INPUT/OUTPUT SYSTEM and also known as the SYSTEM BIOS, ROM BIOS or PC BIOS) is non-volatile firmware used to perform hardware initialization during the booting process (power-on startup), and to provide runtime services for operating systems and programs.[1] The BIOS firmware comes pre-installed on a personal computer's system board, and it is the first software to run when powered on. The name originates from the Basic Input/Output System used in the CP/M operating system in 1975.[2][3] The BIOS originally proprietary to the IBM PC has been reverse engineered by companies looking to create compatible systems. The interface of that original system serves as a _de facto_ standard.

The BIOS in modern PCs initializes and tests the system hardware components, and loads a boot loader from a mass memory device which then initializes an operating system. In the era of DOS, the BIOS provided a hardware abstraction layer for the keyboard, display, and other input/output (I/O) devices that standardized an interface to application programs and the operating system. More recent operating systems do not use the BIOS after loading, instead accessing the hardware components directly.

Most BIOS implementations are specifically designed to work with a particular computer or motherboard model, by interfacing with various devices that make up the complementary system chipset. Originally, BIOS firmware was stored in a ROM chip on the PC motherboard. In modern computer systems, the BIOS contents are stored on flash memory so it can be rewritten without removing the chip from the motherboard. This allows easy, end-user updates to the BIOS firmware so new features can be added or bugs can be fixed, but it also creates a possibility for the computer to become infected with BIOS rootkits. Furthermore, a BIOS upgrade that fails can brick the motherboard permanently, unless the system includes some form of backup for this case.

Unified Extensible Firmware Interface (UEFI) is a successor to the legacy PC BIOS, aiming to address its technical shortcomings.[4]


History

The term BIOS (Basic Input/Output System) was created by Gary Kildall[5][6] and first appeared in the CP/M operating system in 1975,[7][8][9][10][11][12] describing the machine-specific part of CP/M loaded during boot time that interfaces directly with the hardware.[13] (A CP/M machine usually has only a simple boot loader in its ROM.)

Versions of MS-DOS, PC DOS or DR-DOS contain a file called variously "IO.SYS", "IBMBIO.COM", "IBMBIO.SYS", or "DRBIOS.SYS"; this file is known as the "DOS BIOS" (also known as the "DOS I/O System") and contains the lower-level hardware-specific part of the operating system. Together with the underlying hardware-specific but operating system-independent "System BIOS", which resides in ROM, it represents the analogue to the "CP/M BIOS".

With the introduction of PS/2 machines, IBM divided the System BIOS into real- and protected-mode portions. The real-mode portion was meant to provide backward compatibility with existing operating systems such as DOS, and therefore was named "CBIOS" (for "Compatibility BIOS"), whereas the "ABIOS" (for "Advanced BIOS") provided new interfaces specifically suited for multitasking operating systems such as OS/2.


User interface

The BIOS of the original IBM PC and XT had no interactive user interface. Error codes or messages were displayed on the screen, or coded series of sounds were generated to signal errors when the power-on self-test (POST) had not proceeded to the point of successfully initializing a video display adapter. Options on the IBM PC and XT were set by switches and jumpers on the main board and on expansion cards. Starting around the mid-1990s, it became typical for the BIOS ROM to include a _"BIOS configuration utility"_ (BCU[14]) or "BIOS setup utility", accessed at system power-up by a particular key sequence. This program allowed the user to set system configuration options, of the type formerly set using DIP switches, through an interactive menu system controlled through the keyboard. In the interim period, IBM-compatible PCsincluding the IBM ATheld configuration settings in battery-backed RAM and used a bootable configuration program on disk, not in the ROM, to set the configuration options contained in this memory. The disk was supplied with the computer, and if it was lost the system settings could not be changed. The same applied in general to computers with an EISA bus, for which the configuration program was called an EISA Configuration Utility (ECU).

A modern Wintel-compatible computer provides a setup routine essentially unchanged in nature from the ROM-resident BIOS setup utilities of the late 1990s; the user can configure hardware options using the keyboard and video display. Also, when errors occur at boot time, a modern BIOS usually displays user-friendly error messages, often presented as pop-up boxes in a TUI style, and offers to enter the BIOS setup utility or to ignore the error and proceed if possible. Instead of battery-backed RAM, the modern Wintel machine may store the BIOS configuration settings in flash ROM, perhaps the same flash ROM that holds the BIOS itself.


Operation

System startup

Early Intel processors started at physical address 000FFFF0h. Systems with later processors provide logic to start running the BIOS from the system ROM. [15]

If the system has just been powered up or the reset button was pressed ("cold boot"), the full power-on self-test (POST) is run. If Ctrl+Alt+Delete was pressed ("warm boot"), a special flag value stored in nonvolatile BIOS memory ("CMOS") tested by the BIOS allows bypass of the lengthy POST and memory detection.

The POST identifies, and initializes system devices such as the CPU, RAM, interrupt and DMA controllers and other parts of the chipset, video display card, keyboard, hard disk drive, optical disc drive and other basic hardware.

Early IBM PCs had a routine in the POST that would download a program into RAM through the keyboard port and run it. [16][17] This feature was intended for factory test or diagnostic purposes.

Boot process

After the option ROM scan is completed and all detected ROM modules with valid checksums have been called, or immediately after POST in a BIOS version that does not scan for option ROMs, the BIOS calls INT 19h to start boot processing. Post-boot, programs loaded can also call INT 19h to reboot the system, but they must be careful to disable interrupts and other asynchronous hardware processes that may interfere with the BIOS rebooting process, or else the system may hang or crash while it is rebooting.

When INT 19h is called, the BIOS attempts to locate boot loader software on a "boot device", such as a hard disk, a floppy disk, CD, or DVD. It loads and executes the first boot software it finds, giving it control of the PC.[18]

The BIOS uses the boot devices set in EEPROM, CMOS RAM or, in the earliest PCs, DIP switches. The BIOS checks each device in order to see if it is bootable by attempting to load the first sector (boot sector). If the sector cannot be read , the BIOS proceeds to the next device. If the sector is read successfully, some BIOSes will also check for the boot sector signature 0x55 0xAA in the last two bytes of the sector (which is 512 bytes long), before accepting a boot sector and considering the device bootable.[19]

When a bootable device is found, the BIOS transfers control to the loaded sector. The BIOS does not interpret the contents of the boot sector other than to possibly check for the boot sector signature in the last two bytes. Interpretation of data structures like partition tables and BIOS Parameter Blocks is done by the boot program in the boot sector itself or by other programs loaded through the boot process.

A non-disk device such as a network adapter attempts booting by a procedure that is defined by its option ROM or the equivalent integrated into the motherboard BIOS ROM. As such, option ROMs may also influence or supplant the boot process defined by the motherboard BIOS ROM.

Boot priority

The user can select the boot priority implemented by the BIOS. For example, most computers have a hard disk that is bootable, but usually there is a removable-media drive that has higher boot priority, so the user can cause a removable disk to be booted.

In most modern BIOSes, the boot priority order can be configured by the user. In older BIOSes, limited boot priority options are selectable; in the earliest BIOSes, a fixed priority scheme was implemented, with floppy disk drives first, fixed disks (i.e. hard disks) second, and typically no other boot devices supported, subject to modification of these rules by installed option ROMs. The BIOS in an early PC also usually would only boot from the first floppy disk drive or the first hard disk drive, even if there were two drives installed.

With the El Torito optical media boot standard, the optical drive actually emulates a 3.5" high-density floppy disk to the BIOS for boot purposes. Reading the "first sector" of a CD-ROM or DVD-ROM is not a simply defined operation like it is on a floppy disk or a hard disk. Furthermore, the complexity of the medium makes it difficult to write a useful boot program in one sector. The bootable virtual floppy disk can contain software that provides access to the optical medium in its native format.

Boot failure

On the original IBM PC and XT, if no bootable disk was found, ROM BASIC was started by calling INT 18h. Since few programs used BASIC in ROM, clone PC makers left it out; then a computer that failed to boot from a disk would display "No ROM BASIC" and halt (in response to INT 18h).

Later computers would display a message like "No bootable disk found"; some would prompt for a disk to be inserted and a key to be pressed to retry the boot process. A modern BIOS may display nothing or may automatically enter the BIOS configuration utility when the boot process fails.

Boot environment

The environment for the boot program is very simple: the CPU is in real mode and the general-purpose and segment registers are undefined, except CS, SS, SP, and DL. CS is always zero and IP is initially 0x7C00. Because boot programs are always loaded at this fixed address, there is no need for a boot program to be relocatable. DL may contain the drive number, as used with INT 13h, of the boot device. SS:SP points to a valid stack that is presumably large enough to support hardware interrupts, but otherwise SS and SP are undefined. (A stack must be already set up in order for interrupts to be serviced, and interrupts must be enabled in order for the system timer-tick interrupt, which BIOS always uses at least to maintain the time-of-day count and which it initializes during POST, to be active and for the keyboard to work. The keyboard works even if the BIOS keyboard service is not called; keystrokes are received and placed in the 15-character type-ahead buffer maintained by BIOS.) The boot program must set up its own stack, because the size of the stack set up by BIOS is unknown and its location is likewise variable; although the boot program can investigate the default stack by examining SS:SP, it is easier and shorter to just unconditionally set up a new stack.

At boot time, all BIOS services are available, and the memory below address 0x00400 contains the interrupt vector table. BIOS POST has initialized the system timers, interrupt controller(s), DMA controller(s), and other motherboard/chipset hardware as necessary to bring all BIOS services to ready status. DRAM refresh for all system DRAM in conventional memory and extended memory, but not necessarily expanded memory, has been set up and is running. The interrupt vectors corresponding to the BIOS interrupts have been set to point at the appropriate entry points in the BIOS, hardware interrupt vectors for devices initialized by the BIOS have been set to point to the BIOS-provided ISRs, and some other interrupts, including ones that BIOS generates for programs to hook, have been set to a default dummy ISR that immediately returns. The BIOS maintains a reserved block of system RAM at addresses 0x00400–0x004FF with various parameters initialized during the POST. All memory at and above address 0x00500 can be used by the boot program; it may even overwrite itself.


Extensions (option ROMs)

Peripheral cards such as some hard disk drive controllers and some video display adapters have their own BIOS extension option ROMs, which provide additional functionality to BIOS. Code in these extensions runs before the BIOS boots the system from mass storage. These ROMs typically test and initialize hardware, add new BIOS services, and augment or replace existing BIOS services with their own versions of those services. For example, a SCSI controller usually has a BIOS extension ROM that adds support for hard drives connected through that controller. Some video cards have extension ROMs that replace the video services of the motherboard BIOS with their own video services. BIOS extension ROMs gain total control of the machine, so they can in fact do anything, and they may never return control to the BIOS that invoked them. An extension ROM could in principle contain an entire operating system or an application program, or it could implement an entirely different boot process such as booting from a network. Operation of an IBM-compatible computer system can be completely changed by removing or inserting an adapter card (or a ROM chip) that contains a BIOS extension ROM.

The motherboard BIOS typically contains code to access hardware components necessary for bootstrapping the system, such as the keyboard, display, and storage. In addition, plug-in adapter cards such as SCSI, RAID, network interface cards, and video boards often include their own BIOS (e.g. Video BIOS), complementing or replacing the system BIOS code for the given component. Even devices built into the motherboard can behave in this way; their option ROMs can be stored as separate code on the main BIOS flash chip, and upgraded either in tandem with, or separately from, the main BIOS.

An add-in card requires an option ROM if the card is not supported by the main BIOS and the card needs to be initialized or made accessible through BIOS services before the operating system can be loaded (usually this means it is required in the bootstrapping process). Even when it is not required, an option ROM can allow an adapter card to be used without loading driver software from a storage device after booting begins with an option ROM, no time is taken to load the driver, the driver does not take up space in RAM nor on hard disk, and the driver software on the ROM always stays with the device so the two cannot be accidentally separated. Also, if the ROM is on the card, both the peripheral hardware and the driver software provided by the ROM are installed together with no extra effort to install the software. An additional advantage of ROM on some early PC systems (notably including the IBM PCjr) was that ROM was faster than main system RAM. (On modern systems, the case is very much the reverse of this, and BIOS ROM code is usually copied ("shadowed") into RAM so it will run faster.)

There are many methods and utilities for examining the contents of various motherboard BIOS and expansion ROMs, such as Microsoft DEBUG or the Unix dd.

Boot procedure

If an expansion ROM wishes to change the way the system boots (such as from a network device or a SCSI adapter for which the BIOS has no driver code) in a cooperative way, it can use the _BIOS Boot Specification_ (BBS) API to register its ability to do so. Once the expansion ROMs have registered using the BBS APIs, the user can select among the available boot options from within the BIOS's user interface. This is why most BBS compliant PC BIOS implementations will not allow the user to enter the BIOS's user interface until the expansion ROMs have finished executing and registering themselves with the BBS API. The specification can be downloaded from the ACPICA website. The official title is BIOS Boot Specification (Version 1.01, 11 January 1996).[20]

Also, if an expansion ROM wishes to change the way the system boots unilaterally, it can simply hook INT 19h or other interrupts normally called from interrupt 19h, such as INT 13h, the BIOS disk service, to intercept the BIOS boot process. Then it can replace the BIOS boot process with one of its own, or it can merely modify the boot sequence by inserting its own boot actions into it, by preventing the BIOS from detecting certain devices as bootable, or both. Before the BIOS Boot Specification was promulgated, this was the only way for expansion ROMs to implement boot capability for devices not supported for booting by the native BIOS of the motherboard.

Initialization

After the motherboard BIOS completes its POST, most BIOS versions search for option ROM modules, also called BIOS extension ROMs, and execute them. The motherboard BIOS scans for extension ROMs in a portion of the "upper memory area" (the part of the x86 real-mode address space at and above address 0xA0000) and runs each ROM found, in order. To discover memory-mapped ISA option ROMs, a BIOS implementation scans the real-mode address space from 0x0C0000 to 0x0F0000 on 2 KiB boundaries, looking for a two-byte ROM _signature_: 0x55 followed by 0xAA. In a valid expansion ROM, this signature is followed by a single byte indicating the number of 512-byte blocks the expansion ROM occupies in real memory, and the next byte is the option ROM's entry point (also known as its "entry offset"). A checksum of the specified number of 512-byte blocks is calculated, and if the ROM has a valid checksum, the BIOS transfers control to the entry address, which in a normal BIOS extension ROM should be the beginning of the extension's initialization routine.

At this point, the extension ROM code takes over, typically testing and initializing the hardware it controls and registering interrupt vectors for use by post-boot applications. It may use BIOS services (including those provided by previously initialized option ROMs) to provide a user configuration interface, to display diagnostic information, or to do anything else that it requires. It is possible that an option ROM will not return to BIOS, pre-empting the BIOS's boot sequence altogether.

An option ROM should normally return to the BIOS after completing its initialization process. Once (and if) an option ROM returns, the BIOS continues searching for more option ROMs, calling each as it is found, until the entire option ROM area in the memory space has been scanned.

Physical placement

Option ROMs normally reside on adapter cards. However, the original PC, and perhaps also the PC XT, have a spare ROM socket on the motherboard (the "system board" in IBM's terms) into which an option ROM can be inserted, and the four ROMs that contain the BASIC interpreter can also be removed and replaced with custom ROMs which can be option ROMs. The IBM PCjr is unique among PCs in having two ROM cartridge slots on the front. Cartridges in these slots map into the same region of the upper memory area used for option ROMs, and the cartridges can contain option ROM modules that the BIOS would recognize. The cartridges can also contain other types of ROM modules, such as BASIC programs, that are handled differently. One PCjr cartridge can contain several ROM modules of different types, possibly stored together in one ROM chip.


Operating system services

The BIOS ROM is customized to the particular manufacturer's hardware, allowing low-level services (such as reading a keystroke or writing a sector of data to diskette) to be provided in a standardized way to programs, including operating systems. For example, an IBM PC might have either a monochrome or a color display adapter (using different display memory addresses and hardware), but a single, standard, BIOS system call may be invoked to display a character at a specified position on the screen in text mode or graphics mode.

The BIOS provides a small library of basic input/output functions to operate peripherals (such as the keyboard, rudimentary text and graphics display functions and so forth). When using MS-DOS, BIOS services could be accessed by an application program (or by MS-DOS) by executing an INT 13h interrupt instruction to access disk functions, or by executing one of a number of other documented BIOS interrupt calls to access video display, keyboard, cassette, and other device functions.

Operating systems and executive software that are designed to supersede this basic firmware functionality provide replacement software interfaces to application software. Applications can also provide these services to themselves. This began even in the 1980s under MS-DOS, when programmers observed that using the BIOS video services for graphics display was very slow. To increase the speed of screen output, many programs bypassed the BIOS and programmed the video display hardware directly. Other graphics programmers, particularly but not exclusively in the demoscene, observed that there were technical capabilities of the PC display adapters that were not supported by the IBM BIOS and could not be taken advantage of without circumventing it. Since the AT-compatible BIOS ran in Intel real mode, operating systems that ran in protected mode on 286 and later processors required hardware device drivers compatible with protected mode operation to replace BIOS services.

In modern personal computers running modern operating systems the BIOS is used only during booting and initial loading of system software. Before the operating system's first graphical screen is displayed, input and output are typically handled through BIOS. A boot menu such as the textual menu of Windows, which allows users to choose an operating system to boot, to boot into the safe mode, or to use the last known good configuration, is displayed through BIOS and receives keyboard input through BIOS.

Most modern PCs can still boot and run legacy operating systems such as MS-DOS or DR-DOS that rely heavily on BIOS for their console and disk I/O, providing that the system has a BIOS or BIOS-compatible firmware, which is not necessarily the case with UEFI-based PCs.

Processor microcode updates

Intel processors have reprogrammable microcode since the P6 microarchitecture.[21][22] The BIOS may contain patches to the processor microcode that fix errors in the initial processor microcode; reprogramming is not persistent, thus loading of microcode updates is performed each time the system is powered up. Without reprogrammable microcode, an expensive processor swap would be required;[23] for example, the Pentium FDIV bug became an expensive fiasco for Intel as it required a product recall because the original Pentium processor's defective microcode could not be reprogrammed.

Identification

Some BIOSes contain a software licensing description table (SLIC), a digital signature placed inside the BIOS by the original equipment manufacturer (OEM), for example Dell. The SLIC is inserted into the ACPI table and contains no active code.[24][25]

Computer manufacturers that distribute OEM versions of Microsoft Windows and Microsoft application software can use the SLIC to authenticate licensing to the OEM Windows Installation disk and system recovery disc containing Windows software. Systems with a SLIC can be preactivated with an OEM product key, and they verify an XML formatted OEM certificate against the SLIC in the BIOS as a means of self-activating (see System Locked Preinstallation, SLP). If a user performs a fresh install of Windows, they will need to have possession of both the OEM key (either SLP or COA) and the digital certificate for their SLIC in order to bypass activation.[26] This can be achieved if the user performs a restore using a pre-customised image provided by the OEM. Power users can copy the necessary certificate files from the OEM image, decode the SLP product key, then perform SLP activation manually. Cracks for non-genuine Windows distributions usually edit the SLIC or emulate it in order to bypass Windows activation.

Overclocking

Some BIOS implementations allow overclocking, an action in which the CPU is adjusted to a higher clock rate than its manufacturer rating for guaranteed capability. Overclocking may, however, seriously compromise system reliability in insufficiently cooled computers and generally shorten component lifespan. Overclocking, when incorrectly performed, may also cause components to overheat so quickly that they mechanically destroy themselves.[27]

Modern use

Some operating systems, for example MS-DOS, rely on the BIOS to carry out most input/output tasks within the PC.[28]

Because the BIOS still runs in 16-bit real mode, calling BIOS services directly is inefficient for protected-mode operating systems. BIOS services are not used by modern multitasking operating systems after they initially load, so the importance of the primary part of BIOS is greatly reduced from what it was initially.

Later BIOS implementations took on more complex functions, by including interfaces such as Advanced Configuration and Power Interface (ACPI); these functions include power management, hot swapping, and thermal management. At the same time, since 2010, BIOS technology is in a transitional process toward UEFI.[29]


Configuration

Setup utility

Historically, the BIOS in the IBM PC and XT had no built-in user interface. The BIOS versions in earlier PCs (XT-class) were not software configurable; instead, users set the options via DIP switches on the motherboard. Later computers, including all IBM-compatibles with 80286 CPUs, had a battery-backed nonvolatile BIOS memory (CMOS RAM chip) that held BIOS settings.[30] These settings, such as video-adapter type, memory size, and hard-disk parameters, could only be configured by running a configuration program from a disk, not built into the ROM. A special "reference diskette" was inserted in an IBM AT to configure settings such as memory size.

Early BIOS versions did not have passwords or boot-device selection options. The BIOS was hard-coded to boot from the first floppy drive, or, if that failed, the first hard disk. Access control in early AT-class machines was by a physical keylock switch (which was not hard to defeat if the computer case could be opened). Anyone who could switch on the computer could boot it.

Later, 386-class computers started integrating the BIOS setup utility in the ROM itself, alongside the BIOS code; these computers usually boot into the BIOS setup utility if a certain key or key combination is pressed, otherwise the BIOS POST and boot process are executed.

A modern BIOS setup utility has a menu-based user interface (UI) accessed by pressing a certain key on the keyboard when the PC starts. Usually the key is advertised for short time during the early startup, for example "Press F1 to enter CMOS setup". The actual key depends on specific hardware. Features present in the BIOS setup utility typically include:

-   Configuring the hardware components, including setting their various operating modes and frequencies (for example, selecting how the storage controllers are visible to the operating system, or overclocking the CPU)
-   Setting the system clock
-   Enabling or disabling system components
-   Selecting which devices are potential boot devices, and in which order booting from them will be attempted
-   Setting various passwords, such as a password for securing access to the BIOS user interface functions itself and preventing malicious users from booting the system from unauthorized portable storage devices, a password for booting the system, or a hard disk drive password that limits access to it and stays assigned even if the hard disk drive is moved to another computer

Hardware monitoring

A modern BIOS setup screen often features a PC HEALTH STATUS or a HARDWARE MONITORING tab, which directly interfaces with a Hardware Monitor chip of the mainboard.[31] This makes it possible to monitor CPU and chassis temperature, the voltage provided by the power supply unit, as well as monitor and control the speed of the fans connected to the motherboard.

Once the system is booted, hardware monitoring and computer fan control is normally done directly by the Hardware Monitor chip itself, which can be a separate chip, interfaced through I²C or SMBus, or come as a part of a Super I/O solution, interfaced through Low Pin Count (LPC).[32] Some operating systems, like NetBSD with envsys and OpenBSD with sysctl hw.sensors, feature integrated interfacing with hardware monitors, which is normally done without any interaction with the BIOS.

However, in certain circumstances, the BIOS vendor also provides the underlying information about hardware monitoring through ACPI, in which case, the operating system may be using ACPI to perform hardware monitoring; this is done, for example, on some ASUSTeK motherboards with the AI Booster feature.[33]

Reprogramming

In modern PCs the BIOS is stored in rewritable memory, allowing the contents to be replaced and modified. This rewriting of the contents is sometimes termed _flashing_, based on the common use of a kind of EEPROM known technically as "flash EEPROM" and colloquially as "flash memory". It can be done by a special program, usually provided by the system's manufacturer, or at POST, with a BIOS image in a hard drive or USB flash drive. A file containing such contents is sometimes termed "a BIOS image". A BIOS might be reflashed in order to upgrade to a newer version to fix bugs or provide improved performance or to support newer hardware, or a reflashing operation might be needed to fix a damaged BIOS


Hardware

BIOS 686. This BIOS chip is housed in a PLCC package in a socket.]] The original IBM PC BIOS (and cassette BASIC) was stored on mask-programmed read-only memory (ROM) chips in sockets on the motherboard. ROMs could be replaced, but not altered, by users. To allow for updates, many compatible computers used re-programmable memory devices such as EPROM and later flash memory devices. According to Robert Braver, the president of the BIOS manufacturer Micro Firmware, FLASH BIOS chips became common around 1995 because the electrically erasable PROM (EEPROM) chips are cheaper and easier to program than standard ultraviolet erasable PROM (EPROM) chips. Flash chips are programmed (and re-programmed) in-circuit, while EPROM chips need to be removed from the motherboard for re-programming.[34] BIOS versions are upgraded to take advantage of newer versions of hardware and to correct bugs in previous revisions of BIOSes.[35]

Beginning with the IBM AT, PCs supported a hardware clock settable through BIOS. It had a century bit which allowed for manually changing the century when the year 2000 happened. Most BIOS revisions created in 1995 and nearly all BIOS revisions in 1997 supported the year 2000 by setting the century bit automatically when the clock rolled past midnight, December 31, 1999.[36]

The first flash chips were attached to the ISA bus. Starting in 1997, the BIOS flash moved to the LPC bus, a functional replacement for ISA, following a new standard implementation known as "firmware hub" (FWH). In 2006, the first systems supporting a Serial Peripheral Interface (SPI) appeared, and the BIOS flash memory moved again.

The size of the BIOS, and the capacity of the ROM, EEPROM, or other media it may be stored on, has increased over time as new features have been added to the code; BIOS versions now exist with sizes up to 16 megabytes. For contrast, the original IBM PC BIOS was contained in an 8 KiB mask ROM. Some modern motherboards are including even bigger NAND flash memory ICs on board which are capable of storing whole compact operating systems, such as some Linux distributions. For example, some ASUS motherboards included Splashtop OS embedded into their NAND flash memory ICs.[37] However, the idea of including an operating system along with BIOS in the ROM of a PC is not new; in the 1980s, Microsoft offered a ROM option for MS-DOS, and it was included in the ROMs of some PC clones such as the Tandy 1000 HX.

Another type of firmware chip was found on the IBM PC AT and early compatibles. In the AT, the keyboard interface was controlled by a microcontroller with its own programmable memory. On the IBM AT, that was a 40-pin socketed device, while some manufacturers used an EPROM version of this chip which resembled an EPROM. This controller was also assigned the A20 gate function to manage memory above the one-megabyte range; occasionally an upgrade of this "keyboard BIOS" was necessary to take advantage of software that could use upper memory.

The BIOS may contain components such as the Memory Reference Code (MRC), which is responsible for handling memory timings and related hardware settings.[38][39]


Vendors and products

+------------------------------+-------------+-------------+-------------+------------+
| Company                      | AwardBIOS   | AMIBIOS     | Insyde      | SeaBIOS    |
+==============================+=============+=============+=============+============+
| License                      | Proprietary | Proprietary | Proprietary | LGPL v3    |
+------------------------------+-------------+-------------+-------------+------------+
| Maintained / developed       |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| 32-bit PCI BIOS calls        |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             | (1.2)       | (1.2)      |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Boot menu                    |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Compression                  | (LHA[40])   | (LHA)       | (RLE)       | (LZMA)     |
+------------------------------+-------------+-------------+-------------+------------+
| CMOS                         |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             | (3.0)      |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Flash from ROM               |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Language                     | Assembly    | Assembly    | Assembly    | C          |
+------------------------------+-------------+-------------+-------------+------------+
|                              | (48)        | (48)        |             | (48)       |
+------------------------------+-------------+-------------+-------------+------------+
| MultiProcessor Specification |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Option ROM                   |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Password                     |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| Setup screen                 |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             | (2.4)      |
+------------------------------+-------------+-------------+-------------+------------+
| Splash screen                | (EPA)[41]   | (PCX)       |             | (BMP, JPG) |
+------------------------------+-------------+-------------+-------------+------------+
|                              |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| USB booting                  |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| USB hub                      |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| USB keyboard                 |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+
| USB mouse                    |             |             |             |            |
+------------------------------+-------------+-------------+-------------+------------+

: Comparison of different BIOS implementations

IBM published the entire listings of the BIOS for its original PC, PC XT, PC AT, and other contemporary PC models, in an appendix of the _IBM PC Technical Reference Manual_ for each machine type. The effect of the publication of the BIOS listings is that anyone can see exactly what a definitive BIOS does and how it does it.

In May 1984 Phoenix Software Associates released its first ROM-BIOS which enabled OEMs to build essentially 100%-compatible clones without having to reverse-engineer the IBM PC BIOS themselves, as Compaq had done for the Portable, helping fuel the growth in the PC compatibles industry and sales of non-IBM versions of DOS.[42] And the first American Megatrends (AMI) BIOS was released on 1986.

New standards grafted onto the BIOS are usually without complete public documentation or any BIOS listings. As a result, it is not as easy to learn the intimate details about the many non-IBM additions to BIOS as about the core BIOS services.

Most PC motherboard suppliers license a BIOS "core" and toolkit from a commercial third-party, known as an "independent BIOS vendor" or IBV. The motherboard manufacturer then customizes this BIOS to suit its own hardware. For this reason, updated BIOSes are normally obtained directly from the motherboard manufacturer. Major BIOS vendors include American Megatrends (AMI), Insyde Software, Phoenix Technologies and Byosoft. Former vendors include Award Software and Microid Research that were acquired by Phoenix Technologies in 1998; Phoenix later phased out the Award Brand name. General Software, which was also acquired by Phoenix in 2007, sold BIOS for Intel processor based embedded systems.

The open source community increased their effort to develop a replacement for proprietary BIOSes and their future incarnations with an open sourced counterpart through the libreboot, coreboot and OpenBIOS/Open Firmware projects. AMD provided product specifications for some chipsets, and Google is sponsoring the project. Motherboard manufacturer Tyan offers coreboot next to the standard BIOS with their Opteron line of motherboards. MSI and Gigabyte Technology have followed suit with the MSI K9ND MS-9282 and MSI K9SD MS-9185 resp. the M57SLI-S4 models.


Security

BIOS showing a "Intel CPU uCode Loading Error" after a failed attempt to upload microcode patches into the CPU]]

EEPROM chips are advantageous because they can be easily updated by the user; it is customary for hardware manufacturers to issue BIOS updates to upgrade their products, improve compatibility and remove bugs. However, this advantage had the risk that an improperly executed or aborted BIOS update could render the computer or device unusable. To avoid these situations, more recent BIOSes use a "boot block"; a portion of the BIOS which runs first and must be updated separately. This code verifies if the rest of the BIOS is intact (using hash checksums or other methods) before transferring control to it. If the boot block detects any corruption in the main BIOS, it will typically warn the user that a recovery process must be initiated by booting from removable media (floppy, CD or USB flash drive) so the user can try flashing the BIOS again. Some motherboards have a _backup_ BIOS (sometimes referred to as DualBIOS boards) to recover from BIOS corruptions.

There are at least four known BIOS attack viruses, two of which were for demonstration purposes. The first one found in the wild was _Mebromi_, targeting Chinese users.

The first BIOS virus was CIH, also known as the "Chernobyl Virus", which was able to erase flash ROM BIOS content on compatible chipsets. CIH appeared in mid-1998 and became active in April 1999. Often, infected computers could no longer boot, and people had to remove the flash ROM IC from the motherboard and reprogram it. CIH targeted the then-widespread Intel i430TX motherboard chipset and took advantage of the fact that the Windows 9x operating systems, also widespread at the time, allowed direct hardware access to all programs.

Modern systems are not vulnerable to CIH because of a variety of chipsets being used which are incompatible with the Intel i430TX chipset, and also other flash ROM IC types. There is also extra protection from accidental BIOS rewrites in the form of boot blocks which are protected from accidental overwrite or dual and quad BIOS equipped systems which may, in the event of a crash, use a backup BIOS. Also, all modern operating systems such as FreeBSD, Linux, macOS, Windows NT-based Windows OS like Windows 2000, Windows XP and newer, do not allow user-mode programs to have direct hardware access.

As a result, as of 2008, CIH has become essentially harmless, at worst causing annoyance by infecting executable files and triggering antivirus software. Other BIOS viruses remain possible, however;[43] since most Windows home users without Windows Vista/7's UAC run all applications with administrative privileges, a modern CIH-like virus could in principle still gain access to hardware without first using an exploit. The operating system OpenBSD prevents all users from having this access and the grsecurity patch for the Linux kernel also prevents this direct hardware access by default, the difference being an attacker requiring a much more difficult kernel level exploit or reboot of the machine.

The second BIOS virus was a technique presented by John Heasman, principal security consultant for UK-based Next-Generation Security Software. In 2006, at the Black Hat Security Conference, he showed how to elevate privileges and read physical memory, using malicious procedures that replaced normal ACPI functions stored in flash memory. [44].

The third BIOS virus was a technique called "Persistent BIOS infection." It appeared in 2009 at the CanSecWest Security Conference in Vancouver, and at the SyScan Security Conference in Singapore. Researchers Anibal Sacco[45] and Alfredo Ortega, from Core Security Technologies, demonstrated how to insert malicious code into the decompression routines in the BIOS, allowing for nearly full control of the PC at start-up, even before the operating system is booted. The proof-of-concept does not exploit a flaw in the BIOS implementation, but only involves the normal BIOS flashing procedures. Thus, it requires physical access to the machine, or for the user to be root. Despite these requirements, Ortega underlined the profound implications of his and Sacco's discovery: "We can patch a driver to drop a fully working rootkit. We even have a little code that can remove or disable antivirus."[46]

Mebromi is a trojan which targets computers with AwardBIOS, Microsoft Windows, and antivirus software from two Chinese companies: Rising Antivirus and Jiangmin KV Antivirus.[47][48][49] Mebromi installs a rootkit which infects the master boot record.

In a December 2013 interview with _60 Minutes_, Deborah Plunkett, Information Assurance Director for the US National Security Agency claimed the NSA had uncovered and thwarted a possible BIOS attack by a foreign nation state, targeting the US financial system.[50] The program cited anonymous sources alleging it was a Chinese plot.[51] However follow-up articles in _The Guardian,_[52] _The Atlantic,_[53] _Wired_[54] and _The Register_[55] refuted the NSA's claims.


Alternatives and successors

, the BIOS is being replaced by the more complex Extensible Firmware Interface (EFI) in many new machines. EFI is a specification which replaces the runtime interface of the legacy BIOS. Initially written for the Intel Itanium architecture, EFI is now available for x86 and x86-64 platforms; the specification development is driven by The Unified EFI Forum, an industry Special Interest Group. EFI booting has been supported in only Microsoft Windows versions supporting GPT,[56] the Linux kernel 2.6.1 and later, and macOS on Intel-based Macs.[57] , new PC hardware predominantly ships with UEFI firmware. The architecture of the rootkit safeguard can also prevent the system from running the user's own software changes, which makes UEFI controversial as a BIOS replacement in the open hardware community.

Other alternatives to the functionality of the "Legacy BIOS" in the x86 world include coreboot and libreboot.

Some servers and workstations use a platform-independent Open Firmware (IEEE-1275) based on the Forth programming language; it is included with Sun's SPARC computers, IBM's RS/6000 line, and other PowerPC systems such as the CHRP motherboards, along with the x86-based OLPC XO-1.

As of at least 2015, Apple has removed legacy BIOS support from MacBook Pro computers. As such the bless utility no longer supports the --legacy switch, and prints "Legacy mode not supported on this system". These Macs also cannot boot from CD-ROM or USB flash drives.


See also

-   Double boot
-   e820
-   Extended System Configuration Data (ESCD)
-   Legacy Plug and Play (PnP) specifications supporting automated configuration of hardware devices, primarily those on the ISA bus
-   Ralf Brown's Interrupt List (RBIL) interrupts, calls, interfaces, data structures, memory and port addresses, and processor opcodes for the x86 architecture
-   System Management BIOS (SMBIOS)
-   Unified Extensible Firmware Interface (UEFI)
-   VESA BIOS Extensions (VBE) an interface for using compliant video boards at high resolutions and bit depths, beyond the standard BIOS support


Notes


References

[58] [59] [60] [61] [62] [63] [64] [65] [66] [67] [68] [69] [70] [71] [72] [73] [74] [75] [76] [77] [78] [79] [80] [81] [82] [83] [84] [85] [86] [87] }}


Further reading

-   -   -   -   -   -   -   BIOS Disassembly Ninjutsu Uncovered, 1st edition, a freely available book in PDF format
-   More Power To Firmware, free bonus chapter to the _Mac OS X Internals: A Systems Approach_ book


External links

-   -   -   -   -   -

BIOS Category:Boot loaders Category:CP/M technology Category:DOS technology

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

[11]

[12]

[13]

[14]

[15] See Intel 64 and IA-32 Architectures Software Developer’s Manual , volume 3, section 9.1.2

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42] Phoenix Eagerly Waiting to Clone Next-Generation IBM BIOS , _InfoWorld_, March 9, 1987

[43] New BIOS Virus Withstands HDD Wipes, March 27, 2009. Marcus Yam. Tom's Hardware US

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59] {{ cite journal | first = Michael | last = Swaine | authorlink = Michael Swaine (technical author) | date = 1997-04-01 | title = Gary Kildall and Collegial Entrepreneurship | journal = Dr. Dobb's Journal | url = http://www.ddj.com/184410428 | accessdate = 2006-11-20 | deadurl = no | archiveurl = https://web.archive.org/web/20070124184442/http://www.ddj.com/184410428 | archivedate = 2007-01-24 | df = }}

[60] {{ cite web | title = Gary Kildall's CP/M: Some early CP/M history - 1976-1977 | first = A. Joseph "Joe" | last = Killian | authorlink = Joe Killian | publisher = Thomas "Todd" Fischer, IMSAI | year = 2001 | url = http://www.imsai.net/history/imsai_history/cp-m_history.htm | accessdate = 2013-06-03 | deadurl = no | archiveurl = https://web.archive.org/web/20121229064433/http://www.imsai.net/history/imsai_history/cp-m_history.htm | archivedate = 2012-12-29 | df = }}

[61]

[62] How StuffWorks: What BIOS Does .

[63] page 5-27 _IBM Personal Computer Hardware Reference Library Technical Reference_, 1984, publication number 6361459

[64] _BIOS Boot Specification (Version 1.01, 11 January 1996)_

[65] Smart Computing Article - What Is The BIOS? - Computing Basics July 1994 • Vol.5 Issue 7

[66] {{ cite web|last=Torres |first=Gabriel |title=Introduction and Lithium Battery |url=http://www.hardwaresecrets.com/article/81 |work=Replacing the Motherboard Battery |publisher=hardwaresecrets.com |accessdate=June 20, 2013 |date=24 November 2004 |deadurl=yes |archiveurl=https://web.archive.org/web/20131224085334/http://www.hardwaresecrets.com/article/81 |archivedate=24 December 2013 }}

[67] {{ cite web |last=Mueller |first=Scott |url=http://www.informit.com/articles/article.aspx?p=130978&seqNum=22 |title=Processor Update Feature | Microprocessor Types and Specifications |publisher=InformIT |date=2001-06-08 |accessdate=2014-04-15 |deadurl=no |archiveurl=https://web.archive.org/web/20140416183228/http://www.informit.com/articles/article.aspx?p=130978&seqNum=22 |archivedate=2014-04-16 |df= }}

[68] {{ cite web |url=https://downloadcenter.intel.com/Detail_Desc.aspx?DwnldID=18148 |title=Linux* Processor Microcode Data File |work=Download Center |publisher=Downloadcenter.intel.com |date=2009-09-23 |accessdate=2014-04-15 |deadurl=no |archiveurl=https://web.archive.org/web/20140416180302/https://downloadcenter.intel.com/Detail_Desc.aspx?DwnldID=18148 |archivedate=2014-04-16 |df= }}

[69] Scott Mueller, _Upgrading and repairing PCs 15th edition_, Que Publishing, 2003 , pages 109-110

[70] "Decoding RAM & ROM ." _Smart Computing_. June 1997. Volume 8, Issue 6.

[71] "Upgrading Your Flash BIOS For Plug And Play ." _Smart Computing_. March 1996. Volume 7, Issue 3.

[72] "Time To Check BIOS ." _Smart Computing_. April 1999. Volume 7, Issue 4.

[73] SplashTop's Instant-On Linux Desktop | Geek.com

[74] {{ cite web|last=Posted by Alex Watson, possibly repost from original content on custompc.com [unclear]|title=The life and times of the modern motherboard|url=http://www.bit-tech.net/custompc/features/601716/the-life-and-times-of-the-modern-motherboard/page1.html%7Cwork=2007-11-27%7Caccessdate=2 February 2013|deadurl=no|archiveurl=https://web.archive.org/web/20120724081024/http://www.bit-tech.net/custompc/features/601716/the-life-and-times-of-the-modern-motherboard/page1.html%7Carchivedate=24 July 2012|df=}}

[75] {{ cite web|last=David Hilber, Jr.|title=Considerations for Designing an Embedded Intel Architecture System with System Memory Down ®|url=http://download.intel.com/embedded/processor/whitepaper/322506.pdf%7Cpublisher=Intel|accessdate=2 February 2013|date=August 2009|deadurl=no|archiveurl=https://web.archive.org/web/20121018185412/http://download.intel.com/embedded/processor/whitepaper/322506.pdf%7Carchivedate=18 October 2012|df=}}

[76] {{ cite web | last = Sacco | first = Anibal | author2 = Alfredo Ortéga | title = Persistent BIOS Infection | work = Exploiting Stuff | accessdate = 2010-02-06 | url = http://exploiting.wordpress.com/2009/03/23/cansecwest-was-great-here-the-presentation-slides/ | deadurl = no | archiveurl = https://web.archive.org/web/20090804105605/http://exploiting.wordpress.com/2009/03/23/cansecwest-was-great-here-the-presentation-slides/ | archivedate = 2009-08-04 | df = }}

[77] {{ cite web|last=Fisher |first=Dennis |title=Researchers unveil persistent BIOS attack methods |work=Threat Post |accessdate=2010-02-06 |url=http://threatpost.com/en_us/blogs/researchers-unveil-persistent-bios-attack-methods-031909 |archiveurl=https://web.archive.org/web/20100130001722/http://threatpost.com/en_us/blogs/researchers-unveil-persistent-bios-attack-methods-031909 |archivedate=30 January 2010 |deadurl=yes |df= }}

[78] {{ cite web | last = Giuliani | first = Marco | title = Mebromi: the first BIOS rootkit in the wild | work = blog | accessdate = 2011-09-19 | url = http://blog.webroot.com/2011/09/13/mebromi-the-first-bios-rootkit-in-the-wild/ | deadurl = no | archiveurl = https://web.archive.org/web/20110923143606/http://blog.webroot.com/2011/09/13/mebromi-the-first-bios-rootkit-in-the-wild/ | archivedate = 2011-09-23 | df = }}

[79] {{ cite web|last= |first= |title=360发布"BMW病毒"技术分析报告 |work=blog |accessdate=2011-09-19 |url=http://bbs.360.cn/4005462/251096134.html |deadurl=yes |archiveurl=https://web.archive.org/web/20110925051031/http://bbs.360.cn/4005462/251096134.html |archivedate=2011-09-25 |df= }}

[80] {{ cite web | last = Yuan | first = Liang | title = Trojan.Mebromi | work = Threat Response | accessdate = 2011-09-19 | url = http://www.symantec.com/security_response/writeup.jsp?docid=2011-090609-4557-99 | deadurl = no | archiveurl = https://web.archive.org/web/20110923145036/http://www.symantec.com/security_response/writeup.jsp?docid=2011-090609-4557-99 | archivedate = 2011-09-23 | df = }}

[81] {{ cite web |url=http://www.cbsnews.com/news/how-did-60-minutes-get-cameras-into-a-spy-agency/ |title=How did 60 Minutes get cameras into a spy agency? |publisher=CBS News |date= |accessdate=2014-04-15 |deadurl=no |archiveurl=https://web.archive.org/web/20140422042944/http://www.cbsnews.com/news/how-did-60-minutes-get-cameras-into-a-spy-agency/ |archivedate=2014-04-22 |df= }}

[82]

[83]

[84]

[85]

[86]

[87]