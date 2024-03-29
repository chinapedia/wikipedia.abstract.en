The COMMODORE 1571 is Commodore's high-end 5¼" floppy disk drive. With its double-sided drive mechanism, it has the ability to use double-sided, double-density (DS/DD) floppy disks natively. This is in contrast to its predecessors, the 1541 and 1570, which can fully read and write such disks only if the user manually flipped them over to access the second side. Because flipping the disk also reverses the direction of rotation, the two methods are not interchangeable; disks which had their back side created in a 1541 by flipping them over would have to be flipped in the 1571 too, and the back side of disks written in a 1571 using the native support for two-sided operation could not be read in a 1541.


Release & features

The 1571 was released to match the Commodore 128, both design-wise and feature-wise. It was announced in the summer of 1985, at the same time as the C128, and became available in quantity later that year. The later C128_D_ had a 1571-compatible drive integrated in the system unit. A double-sided disk on the 1571 would have a capacity of 340 kB (70 tracks, 1,360 disk blocks of 256 bytes each); as 8 kB are reserved for system use (directory and block availability information) and, under of each block serve as pointers to the next logical block, = 337,312 B or about were available for user data. (However, with a program organizing disk storage on its own, all space could be used, e.g. for data disks.)

The 1571 was designed to accommodate the C128's "burst" mode for 2x faster disk access, however the drive cannot use it if connected to older Commodore machines. This mode replaced the slow bit-banging serial routines of the 1541 with a true serial shift register implemented in hardware, thus dramatically increasing the drive speed. Although this originally had been planned when Commodore first switched from the parallel IEEE-488 interface to a custom serial interface (CBM-488), hardware bugs in the VIC-20's 6522 VIA shift register prevented it from working properly.[1]

When connected to a C128, the 1571 would default to double-sided mode, which allowed the drive to read its own 340k disks as well as single-sided 170 kB 1541 disks. If the C128 was switched into C64 mode by typing GO 64 from BASIC, the 1571 will stay in double-sided mode. If C64 mode was activated by holding down the C= key on power-up, the drive would automatically switch to single-sided mode, in which case it is unable to read 340 kB disks (also the default if a 1571 is used with a C64, Plus/4, VIC-20, or PET). A manual command can also be issued from BASIC to switch the 1571 between single and double sided mode. There is also an undocumented command which allows the user to independently control either of the read/write heads of the 1571, making it possible to format both sides of a diskette separate from each other, however the resultant disk cannot be read in a 1541 as it would be spinning in reverse direction when flipped upside down. In the same vein, "flippy" disks created with a 1541 cannot be read on a 1571 with this feature; they must be inserted upside down.

The 1571 is not 100% low-level compatible with the 1541, however this isn't a problem except in some software that uses advanced copy protections such as the RapidLok system found on Microprose and Accolade games.

The 1571 was noticeably quieter than its predecessor and tended to run cooler as well, even though, like the 1541, it had an internal power supply (later Commodore drives, like the 1541-II and the 3½" 1581, came with external power supplies). The 1541-II/1581 power supply makes mention of a 1571-II, hinting that Commodore may have intended to release a version of the 1571 with an external power supply. However, no 1571-IIs are known to exist. The embedded OS in the 1571 was an improvement over the

Early 1571s had a bug in the ROM-based disk operating system that caused relative files to corrupt if they occupied both sides of the disk. A version 2 ROM was released, but though it cured the initial bug, it introduced some minor quirks of its own - particularly with the 1541 emulation. Curiously, it was also identified as V3.0.

As with the 1541, Commodore initially could not meet demand for the 1571, and that lack of availability and the drive's relatively high price (about US$300) presented an opportunity for cloners. Two 1571 clones appeared, one from Oceanic and one from Blue Chip, but legal action from Commodore quickly drove them from the market.

Commodore announced at the 1985 Consumer Electronics Show a dual-drive version of the 1571, to be called the COMMODORE 1572, but quickly canceled it,[2] reportedly due to technical difficulties with the 1572 DOS. It would have had four times as much RAM as the 1571 (8 kB), and twice as much ROM (64 kB). The 1572 would have allowed for fast disk backups of non-copy-protected media, much like the old 4040, 8050, and 8250 dual drives.

The 1571 built into the European plastic-case C128 D computer is electronically identical to the stand-alone version, but 1571 version integrated into the later metal-case C128 D (often called C128 DCR, for D Cost-Reduced) differs a lot from the stand-alone 1571. It includes a newer DOS, version 3.1, replaces the MOS Technology CIA interface chip, of which only a few features were used by the 1571 DOS, with a very much simplified chip called 5710, and has some compatibility issues with the stand-alone drive. Because this internal 1571 does not have an unused 8-bit input/output port on any chip, unlike most other Commodore drives, it is not possible to install a parallel cable in this drive, such as that used by SpeedDOS, DolphinDOS and some other fast third-party Commodore DOS replacements.


Technical design

The drive detects the motor speed and generates an internal data sampling clock signal that matches with the motor speed.[3]

The 1571 uses a saddle canceler when reading the data stream. A correction signal is generated when the raw data pattern on the disk consists of two consecutive zeros. With the GCR recording format a problem occurs in the read signal waveform. The worst case pattern 1001 may cause a saddle condition where a false data bit may occur. The original 1541 drives uses a one-shot to correct the condition. The 1571 uses a gate array to corrected this digitally.[4]

The drive uses the MOS 6502 CPU, WD1770 or WD1772 floppy controller, 2x MOS Technology 6522 I/O controllers and 1x MOS Technology 6526.


Disk format

Unlike the 1541, which was limited to GCR formatting, the 1571 could read both GCR and MFM disk formats. The version of CP/M included with the C128 supported the following formats:

-   IBM PC CP/M-86
-   Osborne 1 (double density upgrade)
-   Epson QX10
-   Kaypro II, IV
-   CBM CP/M FORMAT SS
-   CBM CP/M FORMAT DS

The 1571 can read any of the many CP/M -disk formats.[5] If the CP/M BIOS is modified, it is possible to read any soft sector 40-track MFM format. Single density (FM) formats are not supported because the density selector pin on the MFM controller chip in the drive is disabled (wired to ground).

A 1571 cannot boot from MFM disks; the user must boot CP/M from a GCR disk and then switch to MFM disks.

With additional software, it was possible to read and write to MS-DOS-formatted floppies as well. Numerous commercial and public-domain programs for this purpose became available, the best-known being SOGWAP's "Big Blue Reader". Although the C128 could not run any DOS-based software, this capability allowed data files to be exchanged with PC users. Reading or disks was possible as well with special software, but the standard format, which used FM rather than MFM encoding, could not be handled by the 1571 hardware without modifying the drive circuitry as the control line that determines if FM or MFM encoding is used by the disc controller chip was permanently wired to ground (MFM mode) rather than being under software control.

In the 1541 format, while 40 tracks are possible for a drive like the 154x/157x, only are used. Commodore chose not to use the upper five tracks by default (or at least to use more than 35) due to the bad quality of some of the drive mechanisms, which did not always work reliably on those tracks.

For compatibility and ease of implementation, the 1571's double-sided format of one logical disk side with was created by putting together the lower 35 physical tracks on each of the physical sides of the disk rather than using two times even though there were no more quality problems with the mechanisms of the 1571 drives.


References

-   Ellinger, Rainer (1986). _1571 Internals._ Grand Rapids, MI: Abacus Software (translated from the original German edition, Düsseldorf: Data Becker GmbH). .


External links

-   Disk Preservation Project Discusses internal drive mechanics and copy protection
-   RUN Magazine Issue 64
-   A photo of the 1572 dual drive, with a 1571 single drive shown for comparison
-   The 1572 drive as shown on the Commodore Kuriositäten page (German)
-   Information page about the Commodore 1572 (German)
-   Secret Weapons of Commodore: The Disk Drives
-   Beyond The 1541: Mass Storage for the 64 and 128

Category:Commodore 64 Category:CBM floppy disk drives Category:CBM hardware

[1]

[2]

[3]

[4]

[5]