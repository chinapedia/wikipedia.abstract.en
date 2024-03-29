The COMMODORE 1581 is a 3½-inch double-sided double-density floppy disk drive that was released by Commodore Business Machines (CBM) in 1987, primarily for its C64 and C128 home/personal computers. The drive stores 800 kilobytes using an MFM encoding[1] but formats different from the MS-DOS (720 kB), Amiga (880 kB), and Mac Plus (800 kB) formats. With special software it's possible to read C1581 disks on an x86 PC system, and likewise, read MS-DOS and other formats of disks in the C1581 (using Big Blue Reader), provided that the PC or other floppy handles the size format.[2] This capability was most frequently used to read MS-DOS disks. The drive was released in the summer of 1987 and quickly became popular with bulletin board system (BBS) operators and other users.

Like the 1541 and 1571, the 1581 has an onboard MOS Technology 6502 CPU with its own ROM and RAM, and uses a serial version of the IEEE-488 interface. Inexplicably, the drive's ROM contains commands for parallel use, although no parallel interface was available. Unlike the 1571, which is nearly 100% backward-compatible with the 1541, the 1581 is only compatible with previous Commodore drives at the DOS level and cannot utilize software that performs low-level disk access (as the vast majority of Commodore 64 games do).

The version of Commodore DOS built into the 1581 added support for partitions, which could also function as fixed-allocation subdirectories. PC-style subdirectories were rejected as being too difficult to work with in terms of block availability maps, then still much in vogue, and which for some time had been the traditional way of inquiring into block availability. The 1581 supports the C128's burst mode for fast disk access, but not when connected to an older Commodore machine like the Commodore 64. The 1581 provides a total of 3160 blocks free when formatted (a block being equal to 256 bytes). The number of permitted directory entries was also increased, to 296 entries. With a storage capacity of 800 kB, the 1581 is the highest-capacity serial-bus drive that was ever made by Commodore (the 1-MB SFD-1001 uses the parallel IEEE-488), and the only 3½" one. However, starting in 1991, Creative Micro Designs (CMD) made the FD-2000 high density (1.6 MB) and FD-4000 extra-high density (3.2 MB) 3½" drives, both of which offered not only a 1581-emulation mode but also 1541- and 1571-compatibility modes.

Like the 1541 and 1571, a nearly identical job queue is available to the user in zero page (except for job 0), providing for exceptional degrees of compatibility.

Unlike the cases of the 1541 and 1571, the low-level disk format used by the 1581 is similar enough to the MS-DOS format as the 1581 is built around a WD1770 FM/MFM floppy controller chip. The 1581 disk format consists of 80 tracks and ten 512 byte sectors per track, used as 20 logical sectors of 256 bytes each . Special software is required to read 1581 disks on a PC due to the different file system. An internal floppy drive and controller are required as well; USB floppy drives operate strictly at the file system level and do not allow low-level disk access.[3] The WD1770 controller chip, however, was the seat of some early problems with 1581 drives when the first production runs were recalled due to a high failure rate; the problem was quickly corrected. Later versions of the 1581 drive have a smaller, more streamlined-looking external power supply provided with them.


Specifications

+---------------------------+-------------------------------------------------------------------------------------------------+
| Quantity                  | Value                                                                                           |
+===========================+=================================================================================================+
| Onboard CPU               | MOS Technology 6502 @ 2 MHz                                                                     |
+---------------------------+-------------------------------------------------------------------------------------------------+
| RAM                       | 8 kB[4]                                                                                         |
+---------------------------+-------------------------------------------------------------------------------------------------+
| ROM                       | 32 kB[5]                                                                                        |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Disk controller           | WD1770[6]{{cite web|title=1581 Service manual (page 2)                                          |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Communications controller | MOS Technology 8520A[7]                                                                         |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Transfer protocols        | Standard and fast serial; burst mode; and commands for parallel interface (the latter not used) |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Disk type                 | 3,5" inch                                                                                       |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Storage format            | MFM, double density, double-sided                                                               |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Interface                 | CBM's proprietary serial IEEE-488                                                               |
+---------------------------+-------------------------------------------------------------------------------------------------+
| Power                     |                                                                                                 |
+---------------------------+-------------------------------------------------------------------------------------------------+

1581 Image Layout

The 1581 disk has 80 logical tracks, each with 40 logical sectors (the actual physical layout of the diskette is abstracted and managed by a hardware translation layer). The directory starts on 40/3 (track 40, sector 3). The disk header is on 40/0, and the BAM (block availability map) resides on 40/1 and 40/2.

Header Contents

$00–01 T/S reference to first directory sector (40/3)
    02 DOS version ('D')
 04-13 Disk Label, $A0 padded
 16-17 Disk ID
 19-1A DOS type ('3D')

BAM Contents, 40/1

$00–01 T/S to next BAM sector (40/2)
    02 DOS version ('D')
 04-05 Disk ID
    06 I/O byte
    07 Autoboot flag
 10-FF BAM entries for Tracks 1-40

BAM Contents, 40/2

$00–01 00/FF
    02 DOS version ('D')
 04-05 Disk ID
    06 I/O byte
    07 Autoboot flag
 10-FF BAM entries for Tracks 41-80


See also

-   Commodore 64 peripherals
-   Commodore 128


References


External links

-   d81.de: Permanent home of 1581-Copy, A MS-Windows based Tool uses any standard x86-PC 3.5" drive to WRITE & READ 1581 disk images (d81).
-   optusnet.com.au: 1581 Games, Commodore 1581 Games, D81 , CMD FD2000 & FD4000 Games, Tools & Games specifically for the 1581 disk drive.
-   optusnet.com.au: SEGA SF-7000 with PC 3.5" Floppy Drive, Copy disk to PC and vice versa, How to use a PC 3.5" floppy drive in the 1581 device
-   vice-emu: Commodore compatible Disk Drives, drive info
-   tut.fi: DCN-2692 floppy controller board, C1581 clone (complete)

Category:Products introduced in 1987 Category:Commodore 64 Category:CBM floppy disk drives Category:CBM hardware

[1] tds.net - 1581 DISK DRIVE DIAGNOSTICS, latest updates and corrections 7-13-05

[2]

[3]

[4]

[5]

[6]

[7]