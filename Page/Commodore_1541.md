The COMMODORE 1541 (also known as the CBM 1541 and VIC-1541) is a floppy disk drive which was made by Commodore International for the Commodore 64 (C64), Commodore's most popular home computer. The best-known floppy disk drive for the C64, the 1541 is a single-sided 170-kilobyte drive for 5¼" disks. The 1541 directly followed the Commodore 1540 (meant for the VIC-20).

The disk drive uses group coded recording (GCR) and contains a MOS Technology 6502 microprocessor, doubling as a disk controller and on-board disk operating system processor. The number of sectors per track varies from 17 to 21 (an early implementation of zone bit recording). The drive's built-in disk operating system is CBM DOS 2.6.


History

Introduction

The 1541 was priced at under at its introduction. A C64 plus a 1541 cost about $900, while an Apple II with no disk drive cost $1295. The first 1541 drives produced in 1982 have a label on the front reading VIC-1541 and have an off-white case to match the VIC-20. In 1983, the 1541 was switched to having the familiar beige case and a front label reading simply "1541" along with rainbow stripes to match the Commodore 64.

By 1983 a 1541 sold for $300 or less. After a brutal home-computer price war that Commodore began, the C64 and 1541 together cost under $500. The drive became very popular, and became difficult to find. The company claimed that the shortage occurred because 90% of C64 owners bought the 1541 compared to its 30% expectation, but the press discussed what _Creative Computing_ described as "an absolutely alarming return rate" because of defects. The magazine reported in March 1984 that it received three defective drives in two weeks,[1] and _Compute!'s Gazette_ reported in December 1983 that four of the magazine's seven drives had failed; "COMPUTE! Publications sorely needs additional 1541s for in-house use, yet we can't find any to buy. After numerous phone calls over several days, we were able to locate only two units in the entire continental United States", reportedly because of Commodore's attempt to resolve a manufacturing issue that caused the high failures.[2]

The early (1982 to 1983) 1541s have a spring-eject mechanism (Alps drive), and the disks often fail to release. This style of drive has the popular nickname "Toaster Drive", because it requires the use of a knife or other hard thin object to pry out the stuck media just like a piece of toast stuck in an actual toaster (though this is inadvisable with actual toasters). This was fixed later when Commodore changed the vendor of the drive mechanism (Mitsumi) and adopted the flip-lever Newtronics mechanism, greatly improving reliability. In addition, Commodore made the drive's controller board smaller and reduced its chip count compared to the early 1541s (which had a large PCB running the length of the case, with dozens of TTL chips). The beige-case Newtronics 1541 was produced from 1984 to 1986.

Versions and third-party clones

All but the very earliest non-II model 1541s can use either the Alps or Newtronics mechanism. Visually, the first models, of the _VIC-1541_ denomination, have an off-white color like the VIC-20 and VIC-1540. Then, to match the look of the C64, CBM changed the drive's color to brown-beige and the name to _Commodore 1541_.

The 1541's numerous shortcomings opened a market for a number of third-party clones of the disk drive, a situation that continued for the lifetime of the C64. Well-known clones are the _Oceanic OC-118_ a.k.a. _Excelerator+_, the MSD Super Disk single and dual drives, the _Enhancer 2000_, the _Indus GT_, and _CMD_ 's _FD-2000_ and _FD-4000_. Nevertheless, the 1541 became the first disk drive to see widespread use in the home and Commodore sold millions of the units.

In 1986, Commodore released the 1541C, a revised version that offered quieter and slightly more reliable operation and a light beige case matching the color scheme of the Commodore 64C. It was replaced in 1988 by the 1541-II, which uses an external power supply to provide cooler operation and allows the drive to have a smaller desktop footprint (the power supply "brick" being placed elsewhere, typically on the floor). Later ROM revisions fixed assorted problems, including a software bug that caused the save-and-replace command to corrupt data.

Successors

The Commodore 1570 is an upgrade from the 1541 for use with the Commodore 128, available in Europe. It offers MFM capability for accessing CP/M disks, improved speed, and somewhat quieter operation, but was only manufactured until Commodore got its production lines going with the 1571, the double-sided drive. Finally, the small, external-power-supply-based, MFM-based Commodore 1581 3½" drive was made, giving 800 KB access to the C128 and C64.


Design

Hardware

The 1541 does not have DIP switches to change the device number. If a user added more than one drive to a system the user had to open the case and cut a trace in the circuit board to permanently change the drive's device number, or hand-wire an external switch to allow it to be changed externally.[3] It was also possible to change the drive number via a software command, which was temporary and would be erased as soon as the drive was powered off.

1541 drives at power up always default to device #8. If multiple drives in a chain are used, then the startup procedure is to power on the first drive in the chain, alter its device number via a software command to the highest number in the chain (if three drives were used, then the first drive in the chain would be set to device #10), then power on the next drive, alter its device number to the next lowest, and repeat the procedure until the final drive at the end of the chain was powered on and left as device #8.

Unlike the Apple II, where support for two drives was normal, it was relatively uncommon for Commodore software to support this setup, and the CBM DOS copy file command was not even able to copy files between drives--a third party copy utility must be used instead.

The pre-II 1541s also have an internal power source, which generate much heat. The heat generation was a frequent source of humour. For example, _Compute!_ stated in 1988 that "Commodore 64s used to be a favorite with amateur and professional chefs since they could compute and cook on top of their 1500-series disk drives at the same time".[4] A series of humorous tips in _MikroBitti_ in 1989 said "When programming late, coffee and kebab keep nicely warm on top of the 1541." The _MikroBitti_ review of the 1541-II said that its external power source "should end the jokes about toasters".

The drive-head mechanism installed in the early production years is notoriously easy to misalign. The most common cause of the 1541's drive head knocking and subsequent misalignment is copy-protection schemes on commercial software. The main cause of the problem is that the disk drive itself does not feature any means of detecting when the read/write head reaches track zero. Accordingly, when a disk is not formatted or a disk error occurs, the unit tries to move the head 40 times in the direction of track zero (although the 1541 DOS only uses 35 tracks, the drive mechanism itself is a 40-track unit, so this ensured track zero would be reached no matter where the head was before). Once track zero is reached, every further attempt to move the head in that direction would cause it to be rammed against a solid stop: for example, if the head happened to be on track 18 (where the directory is located) before this procedure, the head would be actually moved 18 times, and then rammed against the stop 22 times. This ramming gives the characteristic "machine gun" noise and sooner or later throws the head out of alignment.

A defective head-alignment part likely caused many of the reliability issues in early 1541 drives; one dealer told _Compute!{{'}}s Gazette_ in 1983 that the part had caused all but three of several hundred drive failures that he had repaired. The drives were so unreliable that _Info_ magazine joked, "Sometimes it seems as if one of the original design specs ... must have said 'Mean time between failure: 10 accesses.'". Users can realign the drive themselves with a software program and a calibration disk. What the user would do is remove the drive from its case and then loosen the screws holding the stepper motor that moved the head, then with the calibration disk in the drive gently turn the stepper motor back and forth until the program shows a good alignment. The screws are then tightened and the drive is put back into its case.[5]

A third-party fix for the 1541 appeared in which the solid head stop was replaced by a sprung stop, giving the head a much easier life. The later 1571 drive (which is 1541-compatible) incorporates track-zero detection by photo-interrupter and is thus immune to the problem. Also, a software solution, which resides in the drive controller's ROM, prevents the rereads from occurring, though this could cause problems when genuine errors did occur.

Due to the alignment issues on the Alps drive mechanisms, Commodore switched suppliers to Newtronics in 1984. The Newtronics mechanism drives have a lever rather than a pull-down tab to close the drive door. Although the alignment issues were resolved after the switch, the Newtronics drives added a new reliability problem in that many of the read/write heads were improperly sealed, causing moisture to penetrate the head and short it out.

The 1541's PCB consists mainly of a 6502 CPU, two 6522 chips, and 2k of work RAM. Up to 48k of RAM can be added; this was mainly useful for defeating copy protection schemes since an entire disk track could be loaded into drive RAM, while the standard 2k only accommodated a few sectors (theoretically eight, but some of the RAM was used by CBM DOS as work space). Some Commodore users used 1541s with expanded RAM as an impromptu math coprocessor by uploading math-intensive code to the drive for background processing.

Interface

The 1541 uses a proprietary serialized derivative of the IEEE-488 parallel interface, which Commodore used on their previous disk drives for the PET/CBM range of personal and business computers[6], but when the VIC-20 was in development, a cheaper alternative to the expensive IEE-488 cables was sought. To ensure a ready supply of inexpensive cabling for its home computer peripherals, Commodore chose standard DIN connectors for the serial interface. Disk drives and other peripherals such as printers connected to the computer via a daisy chain setup, necessitating only a single connector on the computer itself.


Throughput and software

_IEEE Spectrum_ in 1985 stated that:[7]

The C-64's designers blamed the 1541's slow speed on the marketing department's insistence that the computer be compatible with the 1540, which was slow because of a flaw in the 6522 VIA interface controller. Initially, Commodore intended to use a hardware shift register (one component of the 6522) to maintain fast drive speeds with the new serial interface. However, a hardware bug with this chip prevented the initial design from working as anticipated, and the ROM code was hastily rewritten to handle the entire operation in software. According to Jim Butterfield, this causes a speed reduction by a factor of five;[8] had 1540 compatibility not been a requirement, the disk interface would have been much faster. In any case, the C64 normally could not work with a 1540 unless the VIC-II video output was disabled via a register write, which would increase the CPU speed enough to be able to access it.

As implemented on the VIC-20 and C64, Commodore DOS transfers 512 bytes per second, compared to the Atari 810's 1000 bytes per second, the Apple Disk II's 15,000 bytes per second, and the 300-baud data rate of the Commodore Datasette storage system. About 20 minutes are needed to copy one disk—10 minutes of reading time, and 10 minutes of writing time. However, since both the computer and the drive can easily be reprogrammed, third parties quickly wrote more efficient firmware that would speed up drive operations drastically. Without hardware modifications, some "fast loader" utilities (which replaced 1541's onboard ROM) managed to achieve speeds of up to 4 kB/s. The most common of these products are the Epyx FastLoad, the Final Cartridge, and the Action Replay plug-in ROM cartridges, which all have machine code monitor and disk editor software on board as well. The popular Commodore computer magazines of the era also entered the arena with type-in fast-load utilities, with _Compute!'s Gazette_ publishing _TurboDisk_ in 1985 and _RUN_ publishing _Sizzle_ in 1987.

Even though each 1541 has its own on-board disk controller and disk operating system, it is not normally possible for a user to command two 1541 drives to copy a disk (one drive reading and the other writing) as with older dual drives like the 4040 and 8050 that were often found with the PET computer, and which the 1541 is backward-compatible with (it can read 4040 disks but not write to them since its internal operating system is similar enough for reading but not for writing). Unfortunately, however, the routines in the previous disk operating system to enable disk copying were removed for the 1541 as it was intended to be a stand-alone unit. Originally, to copy from drive to drive, software running on the C64 was needed and it would first read from one drive into computer memory, then write out to the other. Only later when first, Fast Hack'em, then other disk backup programs, were released, was true drive-to-drive copying possible for a pair of 1541s. The user could then unplug the C64 from the drives (i.e. from the first drive in the daisy chain) and do something else with the computer as the drives proceeded to copy the entire disk. This is not a recommended practice as disconnecting the serial lead from a powered drive and/or computer can result in destruction of one or both of the port chips in the disk drive.


Media

The 1541 drive uses standard 5.25" double-density floppy media; high-density media will not work due to its different magnetic coating requiring a higher magnetic coercivity. As the GCR encoding scheme does not use the index hole, the drive was also compatible with hard-sectored disks. The standard CBM DOS format is 170k with 35 tracks and 256-byte sectors. It is similar to the format used on the PET 4040 drives, but a minor difference in a header byte makes the 4040 and 1541 only read-compatible; disks formatted with one drive cannot be written to by the other.

The 4040 drives used Shugart SA-400s, which were 35-track units, thus the format there was due to physical limitations of the drive mechanism. The 1541 used 40 track mechanisms, but Commodore intentionally limited the CBM DOS format to 35 tracks because of reliability issues with the early units. It was possible via low-level programming to move the drive head to tracks 36-40 and write on them, this was sometimes done by commercial software for copy protection purposes or to get additional data on the disk.

However, one track is reserved by DOS for directory and file allocation information (the BAM, block availability map). And since for normal files, two bytes of each physical sector are used by DOS as a pointer to the next physical track and sector of the file, only 254 out of the 256 bytes of a block are used for file contents.

If the disk side was not otherwise prepared with a custom format, (e.g. for data disks), 664 blocks would be free after formatting, giving 664 × 254 = 168,656 bytes (or almost 165 kB) for user data.

By using custom formatting and load/save routines (sometimes included in third-party DOSes, see below), all of the mechanically possible 40 tracks can be used.

Owing to the drive's non-use of the index hole, it was also possible to make "flippy" disks by inserting the diskette upside-down and formatting the other side, and it was commonplace and normal for commercial software to be distributed on such disks.

+---------+-------------+------------------------+
| Track   | Sectors     | bits/s                 |
|         | (256 bytes) |                        |
+=========+=============+========================+
|  1 - 17 | 21          | 16M/4/(13+0) = 307,692 |
+---------+-------------+------------------------+
| 18 - 24 | 19          | 16M/4/(13+1) = 285,714 |
+---------+-------------+------------------------+
| 25 - 30 | 18          | 16M/4/(13+2) = 266,667 |
+---------+-------------+------------------------+
| 31 - 35 | 17          | 16M/4/(13+3) = 250,000 |
+---------+-------------+------------------------+
| 36 - 42 | 17          | 16M/4/(13+3) = 250,000 |
+---------+-------------+------------------------+

Tracks 36-42 are non-standard. The bitrate is the raw one between the read/write head and signal circuitry so actual useful data rate is a factor 5/4 less due to GCR encoding.[9]

The 1541 disk typically has 35 tracks. Track 18 is reserved; the remaining tracks are available for data storage. The header is on 18/0 (track 18, sector 0) along with the BAM (block availability map), and the directory starts on 18/1 (track 18, sector 1). The file interleave is 10 blocks, while the directory interleave is 3 blocks.

Header contents: The header is similar to other Commodore disk headers, the structural differences being the BAM offset ($04) and size, and the label+ID+type offset ($90).

$00–01 T/S reference to first directory sector (18/1)
    02 DOS version ('A')
 04-8F BAM entries (4 bytes per track: Free Sector Count + 24 bits for sectors)
 90-9F Disk Label, $A0 padded
 A2-A3 Disk ID
 A5-A6 DOS type ('2A')


Uses

Early copy protection schemes deliberately introduced read errors on the disk, the software refusing to load unless the correct error message is returned. The general idea was that simple disk-copy programs are incapable of copying the errors. When one of these errors is encountered, the disk drive (as do many floppy disk drives) will attempt one or more reread attempts after first resetting the head to track zero. Few of these schemes had much deterrent effect, as various software companies soon released "nibbler" utilities that enabled protected disks to be copied and, in some cases, the protection removed.

Commodore copy protection sometimes depends on specific hardware configurations. _Gunship_, for example, does not load if a second disk drive or printer is connected to the computer.[10]


See also

-   Commodore 64
-   Commodore 64 peripherals
-   1541 Ultimate


References


Further reading

-   CBM (1982). _VIC-1541 Single Drive Floppy Disk User's Manual_. 2nd ed. Commodore Business Machines, Inc. P/N 1540031-02.
-   Neufeld, Gerald G. (1985). _1541 User's Guide. The Complete Guide to Commodore's 1541 Disk Drive_. Second Printing, June 1985. 413 pp. Copyright © 1984 by DATAMOST, Inc. (Brady). .
-   Immers, Richard; Neufeld, Gerald G. (1984). _Inside Commodore DOS. The Complete Guide to the 1541 Disk Operating System._ DATAMOST, Inc & Reston Publishing Company, Inc. (Prentice-Hall). .
-   Englisch, Lothar; Szczepanowski, Norbert (1984). _The Anatomy of the 1541 Disk Drive_. Grand Rapids, MI: Abacus Software (translated from the original 1983 German edition, Düsseldorf: Data Becker GmbH). .


External links

-   Disk Preservation Project: internal drive mechanics and copy protection
-   Undocumented 1541 drive functions from the Project 64 website
-   RUN Magazine Issue 64
-   devili.iki.fi: Beyond the 1541, Mass Storage For The 64 And 128, COMPUTE!'s Gazette, issue 32, February 1986 (market overview)
-   -   [http://bitsavers.trailing-edge.com/pdf/commodore/1541_Maintenance_Guide_1984.pdf: 1541 Maintenance Guide from Bitsavers]

Category:CBM floppy disk drives Category:Commodore 64 Category:CBM hardware

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] http://www.binarydinosaurs.co.uk/Museum/Commodore/c64/c64notes.php

[9]

[10]