In computer jargon, a KILLER POKE is a method of inducing physical hardware damage on a machine or its peripherals by the insertion of invalid values, via, for example, BASIC's POKE command, into a memory-mapped control register. The term is typically used to describe a family of fairly well known tricks that can overload the analog electronics in the CRT monitors of computers lacking hardware sanity checking (notable examples being the IBM Portable[1] and Commodore PET.)


Specific examples

Commodore PET

The PET-specific killer poke is connected to the architecture of that machine's video rasterizer circuits. In early PETs, writing a certain value to the memory address of a certain I/O register (POKE 59458,62[2]) made the machine able to display text on the screen much faster. When the PET range was revamped with updated hardware, it was discovered that performing the old trick on the new hardware led to strange behavior by the new video chip, which could possibly damage the PET's integrated CRT monitor.[3]

Commodore 1541 Disk Drive

The Commodore 64 had an optional external 5-1/4" floppy drive. The Commodore 1541 contained a 6502 microprocessor which was used to run Commodore DOS and also to manage the drive mechanism. The drives stored data on 40 tracks (#0–39), and the stepper motor could be manually controlled through BASIC by PRINT#-ing "MEMORY-WRITE" commands to the drive (which correspond to the POKE command of BASIC, but write to the drive's internal memory and I/O registers, not those of the computer itself). If the drive was at either end of its range (track 0 or track 39) and it was commanded to continue moving, there was no software or firmware method to prevent drive damage. Continued "knocking" of the drive head against the stop would throw the mechanism out of alignment. The problem was exacerbated by copy protection techniques that used non-standard disk formats with unusual track counts. The Commodore 1571 had an optical head stop instead of a mechanical one.

TRS-80 Model III

The TRS-80 Model III had the ability to switch between a 32-character-wide display and a 64-character display. Doing so actuated a relay in the video hardware, accomplished by writing to a specific memory-mapped control register.[4] Programs that repeatedly switched between 32- and 64-character modes at high speed (either on purpose or accidentally) could permanently damage the video hardware. While this is not a single "killer poke", it demonstrates a software failure mode that could permanently damage the hardware.

Cassette tape relay

The TRS-80 Color Computer, IBM PC, IBM PCjr, Nascom, MSX, Amstrad CPC, and BBC Micro from Acorn Computers all contained a built-in relay for controlling an external tape recorder.[5] Toggling the motor control relay in a tight loop would reduce the relay's longevity.

Commodore Amiga

The floppy drive of the Commodore Amiga personal computer could be made to produce noises of various pitches by making the drive heads move back and forth. A program existed which could play El Cóndor Pasa, more or less correctly, on the Amiga's floppy drive.[6] As some sounds relied on the head assembly hitting the stop, this gradually sent the head out of alignment.

LG CD-ROM drives

Certain models of LG CD-ROM drives with specific firmware used an abnormal command for "update firmware": the "clear buffer" command usually used on CD-RW drives. Linux uses this command to tell the difference between CD-ROM and CD-RW drives. Most CD-ROM drives dependably return an error for the unsupported CD-RW command, but the faulty drives interpreted it as "update firmware", causing them to stop working (or, in casual parlance, to be "bricked").[7]

MSi Laptops UEFI

Systemd mounts variables used by Unified Extensible Firmware Interface on Linux system's sysfs as writable by the root user of a system. As a result, it is possible for the root user of a system to completely brick a system with a non-conforming UEFI implementation (specifically some MSi laptops) by using the rm command to delete the /sys/firmware/efi/efivars/ directory, or recursively delete the root directory.[8]

Game Boy

The Game Boy's LCD screen can be turned off by game software. Doing so outside of the vertical blanking interval can damage the hardware.[9]


See also

-   HCF (Halt and Catch Fire)
-   Pentium F00F bug
-   Scratch monkey
-   Stuxnet, malware designed to cause physical wear in industrial centrifuges
-   Bricking, the act of misconfiguring a device so as to make it cease functioning


References




External links

-   Commodore PET killer poke discussion

Category:Computer jargon Category:Hardware bugs Category:Denial-of-service attacks

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]