In computing, a DEVICE DRIVER is a computer program that operates or controls a particular type of device that is attached to a computer.[1] A driver provides a software interface to hardware devices, enabling operating systems and other computer programs to access hardware functions without needing to know precise details about the hardware being used.

A driver communicates with the device through the computer bus or communications subsystem to which the hardware connects. When a calling program invokes a routine in the driver, the driver issues commands to the device. Once the device sends data back to the driver, the driver may invoke routines in the original calling program. Drivers are hardware dependent and operating-system-specific. They usually provide the interrupt handling required for any necessary asynchronous time-dependent hardware interface.[2]


Purpose

The main purpose of device drivers is to provide abstraction by acting as a translator between a hardware device and the applications or operating systems that use it.[3] Programmers can write higher-level application code independently of whatever specific hardware the end-user is using. For example, a high-level application for interacting with a serial port may simply have two functions for "send data" and "receive data". At a lower level, a device driver implementing these functions would communicate to the particular serial port controller installed on a user's computer. The commands needed to control a 16550 UART are much different from the commands needed to control an FTDI serial port converter, but each hardware-specific device driver abstracts these details into the same (or similar) software interface.


Development

Writing a device driver requires an in-depth understanding of how the hardware and the software works for a given platform function. Because drivers require low-level access to hardware functions in order to operate, drivers typically operate in a highly privileged environment and can cause system operational issues if something goes wrong. In contrast, most user-level software on modern operating systems can be stopped without greatly affecting the rest of the system. Even drivers executing in user mode can crash a system if the device is erroneously programmed. These factors make it more difficult and dangerous to diagnose problems.[4]

The task of writing drivers thus usually falls to software engineers or computer engineers who work for hardware-development companies. This is because they have better information than most outsiders about the design of their hardware. Moreover, it was traditionally considered in the hardware manufacturer's interest to guarantee that their clients can use their hardware in an optimum way. Typically, the Logical Device Driver (LDD) is written by the operating system vendor, while the Physical Device Driver (PDD) is implemented by the device vendor. But in recent years non-vendors have written numerous proprietary device drivers, mainly for use with free and open source operating systems. In such cases, it is important that the hardware manufacturer provides information on how the device communicates. Although this information can instead be learned by reverse engineering, this is much more difficult with hardware than it is with software.

Microsoft has attempted to reduce system instability due to poorly written device drivers by creating a new framework for driver development, called Windows Driver Foundation (WDF). This includes User-Mode Driver Framework (UMDF) that encourages development of certain types of drivers—primarily those that implement a message-based protocol for communicating with their devices—as user-mode drivers. If such drivers malfunction, they do not cause system instability. The Kernel-Mode Driver Framework (KMDF) model continues to allow development of kernel-mode device drivers, but attempts to provide standard implementations of functions that are known to cause problems, including cancellation of I/O operations, power management, and plug and play device support.

Apple has an open-source framework for developing drivers on macOS called the I/O Kit.

In Linux environments, programmers can build device drivers as parts of the kernel, separately as loadable modules, or as user-mode drivers (for certain types of devices where kernel interfaces exist, such as for USB devices). Makedev includes a list of the devices in Linux: ttyS (terminal), lp (parallel port), hd (disk), loop, sound (these include mixer, sequencer, dsp, and audio)...[5]

The Microsoft Windows .sys files and Linux .ko modules contain loadable device drivers. The advantage of loadable device drivers is that they can be loaded only when necessary and then unloaded, thus saving kernel memory.


Kernel mode vs. user mode

Device drivers, particularly on Microsoft Windows platforms, can run in kernel-mode (Ring 0 on x86 CPUs) or in user-mode (Ring 3 on x86 CPUs).[6] The primary benefit of running a driver in user mode is improved stability, since a poorly written user mode device driver cannot crash the system by overwriting kernel memory.[7] On the other hand, user/kernel-mode transitions usually impose a considerable performance overhead, thereby prohibiting user-mode drivers for low latency and high throughput requirements.

Kernel space can be accessed by user module only through the use of system calls. End user programs like the UNIX shell or other GUI-based applications are part of the user space. These applications interact with hardware through kernel supported functions.


Applications

Because of the diversity of hardware and operating systems, drivers operate in many different environments.[8] Drivers may interface with:

-   Printers
-   Video adapters
-   Network cards
-   Sound cards
-   Local buses of various sorts—in particular, for bus mastering on modern systems
-   Low-bandwidth I/O buses of various sorts (for pointing devices such as mice, keyboards, USB, etc.)
-   Computer storage devices such as hard disk, CD-ROM, and floppy disk buses (ATA, SATA, SCSI)
-   Implementing support for different file systems
-   Image scanners
-   Digital cameras

Common levels of abstraction for device drivers include:

-   For hardware:
    -   Interfacing directly
    -   Writing to or reading from a device control register
    -   Using some higher-level interface (e.g. Video BIOS)
    -   Using another lower-level device driver (e.g. file system drivers using disk drivers)
    -   Simulating work with hardware, while doing something entirely different[9]
-   For software:
    -   Allowing the operating system direct access to hardware resources
    -   Implementing only primitives
    -   Implementing an interface for non-driver software (e.g. TWAIN)
    -   Implementing a language, sometimes quite high-level (e.g. PostScript)

So choosing and installing the correct device drivers for given hardware is often a key component of computer system configuration.[10]


Virtual device drivers

Virtual device drivers represent a particular variant of device drivers. They are used to emulate a hardware device, particularly in virtualization environments, for example when a DOS program is run on a Microsoft Windows computer or when a guest operating system is run on, for example, a Xen host. Instead of enabling the guest operating system to dialog with hardware, virtual device drivers take the opposite role and emulates a piece of hardware, so that the guest operating system and its drivers running inside a virtual machine can have the illusion of accessing real hardware. Attempts by the guest operating system to access the hardware are routed to the virtual device driver in the host operating system as e.g., function calls. The virtual device driver can also send simulated processor-level events like interrupts into the virtual machine.

Virtual devices may also operate in a non-virtualized environment. For example, a virtual network adapter is used with a virtual private network, while a virtual disk device is used with iSCSI. A good example for virtual device drivers can be Daemon Tools.

There are several variants of virtual device drivers, such as VxDs, VLMs, and VDDs.


Open source drivers

-   graphics device driver
-   Printers: CUPS
-   RAIDs: CCISS

(Compaq Command Interface for SCSI-3 Support[11])

-   Scanners: SANE
-   Video: Vidix, Direct Rendering Infrastructure

Solaris descriptions of commonly used device drivers:

-   fas: Fast/wide SCSI controller
-   hme: Fast (10/100 Mbit/s) Ethernet
-   isp: Differential SCSI controllers and the SunSwift card
-   glm: (Gigabaud Link Module[12]) UltraSCSI controllers
-   scsi: Small Computer Serial Interface (SCSI) devices
-   sf: soc+ or social Fiber Channel Arbitrated Loop (FCAL)
-   soc: SPARC Storage Array (SSA) controllers and the control device
-   social: Serial optical controllers for FCAL (soc+)


APIs

-   Windows Display Driver Model (WDDM) – the graphic display driver architecture for Windows Vista, Windows 7, Windows 8, and Windows 10.
-   Unified Audio Model (UAM)[13]
-   Windows Driver Foundation (WDF)
-   Windows Driver Model (WDM)
-   Network Driver Interface Specification (NDIS) – a standard network card driver API
-   Advanced Linux Sound Architecture (ALSA) – the standard Linux sound-driver interface
-   Scanner Access Now Easy (SANE) – a public-domain interface to raster-image scanner-hardware
-   I/O Kit – an open-source framework from Apple for developing macOS device drivers
-   Installable File System (IFS) – a filesystem API for IBM OS/2 and Microsoft Windows NT
-   Open Data-Link Interface (ODI) – a network card API similar to NDIS
-   Uniform Driver Interface (UDI) – a cross-platform driver interface project
-   Dynax Driver Framework (dxd) – C++ open source cross-platform driver framework for KMDF and IOKit[14]


Identifiers

A device on the PCI bus or USB is identified by two IDs which consist of 4 hexadecimal numbers each. The vendor ID identifies the vendor of the device. The device ID identifies a specific device from that manufacturer/vendor.

A PCI device has often an ID pair for the main chip of the device, and also a subsystem ID pair which identifies the vendor, which may be different from the chip manufacturer.


See also

-   Class driver
-   Controller (computing)
-   Device driver synthesis and verification
-   Driver wrapper
-   Free software
-   Firmware
-   Interrupt
-   Loadable kernel module
-   Makedev
-   Open-source hardware
-   Printer driver
-   Replicant (operating system)
-   udev


References


External links

-   Windows Hardware Dev Center
-   Linux Hardware Compatibility Lists and Linux Drivers
-   Understanding Modern Device Drivers(Linux)
-   BinaryDriverHowto, Ubuntu.
-   Linux Drivers Source
-   Driver Support Articles

Device_drivers Category:Linux drivers Category:Computing terminology Category:Windows NT kernel

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