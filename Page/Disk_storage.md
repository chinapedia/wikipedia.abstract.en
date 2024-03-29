DISK STORAGE (also sometimes called DRIVE STORAGE) is a general category of storage mechanisms where data is recorded by various electronic, magnetic, optical, or mechanical changes to a surface layer of one or more rotating disks. A DISK DRIVE is a device implementing such a storage mechanism. Notable types are the hard disk drive (HDD) containing a non-removable disk, the floppy disk drive (FDD) and its removable floppy disk, and various optical disc drives (ODD) and associated optical disc media.

(The spelling DISK and DISC are used interchangeably except where trademarks preclude one usage, e.g. the Compact Disc logo. The choice of a particular form is frequently historical, as in IBM's usage of the _disk_ form beginning in 1956 with the "IBM 350 disk storage unit").


Background

Audio information was originally recorded by analog methods (see Sound recording and reproduction). Similarly the first video disc used an analog recording method. In the music industry, analog recording has been mostly replaced by digital optical technology where the data is recorded in a digital format with optical information.

The first commercial digital disk storage device was the IBM 350 which shipped in 1956 as a part of the IBM 305 RAMAC computing system. The random-access, low-density storage of disks was developed to complement the already used sequential-access, high-density storage provided by tape drives using magnetic tape. Vigorous innovation in disk storage technology, coupled with less vigorous innovation in tape storage, has reduced the difference in acquisition cost per terabyte between disk storage and tape storage; however, the total cost of ownership of data on disk including power and management remains larger than that of tape.[1]

Disk storage is now used in both computer storage and consumer electronic storage, e.g., audio CDs and video discs (standard DVD and Blu-ray).

Data on modern disks is stored in fixed length blocks, usually called sectors and varying in length from a few hundred to many thousands of bytes. Gross disk drive capacity is simply the number of disk surfaces times the number of blocks/surface times the number of bytes/block. In certain legacy IBM CKD drives the data was stored on magnetic disks with variable length blocks, called records; record length could vary on and between disks. Capacity decreased as record length decreased due to the necessary gaps between blocks.


Access methods

Digital disk drives are block storage devices. Each disk is divided into logical blocks (collection of sectors). Blocks are addressed using their logical block addresses (LBA). Read from or writing to disk happens at the granularity of blocks.

Originally the disk capacity was quite low and has been improved in one of several ways. Improvements in mechanical design and manufacture allowed smaller and more precise heads, meaning that more tracks could be stored on each of the disks. Advancements in data compression methods permitted more information to be stored in each of the individual sectors.

The drive stores data onto cylinders, heads, and sectors. The sectors unit is the smallest size of data to be stored in a hard disk drive and each file will have many sectors units assigned to it. The smallest entity in a CD is called a frame, which consists of 33 bytes and contains six complete 16-bit stereo samples (two bytes × two channels × six samples = 24 bytes). The other nine bytes consist of eight CIRC error-correction bytes and one subcode byte used for control and display.

The information is sent from the computer processor to the BIOS into a chip controlling the data transfer. This is then sent out to the hard drive via a multi-wire connector. Once the data is received onto the circuit board of the drive, they are translated and compressed into a format that the individual drive can use to store onto the disk itself. The data is then passed to a chip on the circuit board that controls the access to the drive. The drive is divided into sectors of data stored onto one of the sides of one of the internal disks. An HDD with two disks internally will typically store data on all four surfaces.

The hardware on the drive tells the actuator arm where it is to go for the relevant track and the compressed information is then sent down to the head which changes the physical properties, optically or magnetically for example, of each byte on the drive, thus storing the information. A file is not stored in a linear manner, rather, it is held in the best way for quickest retrieval.


Rotation speed and track layout

Mechanically there are two different motions occurring inside the drive. One is the rotation of the disks inside the device. The other is the side-to-side motion of the head across the disk as it moves between tracks.

There are two types of disk rotation methods:

-   constant linear velocity (used mainly in optical storage) varies the rotational speed of the optical disc depending upon the position of the head, and
-   constant angular velocity (used in HDDs, standard FDDs, a few optical disc systems, and vinyl audio records) spins the media at one constant speed regardless of where the head is positioned.

Track positioning also follows two different methods across disk storage devices. Storage devices focused on holding computer data, e.g., HDDs, FDDs, Iomega zip drives, use concentric tracks to store data. During a sequential read or write operation, after the drive accesses all the sectors in a track it repositions the head(s) to the next track. This will cause a momentary delay in the flow of data between the device and the computer. In contrast, optical audio and video discs use a single spiral track that starts at the inner most point on the disc and flows continuously to the outer edge. When reading or writing data there is no need to stop the flow of data to switch tracks. This is similar to vinyl records except vinyl records started at the outer edge and spiraled in toward the center.


Interfaces

The disk drive interface is the mechanism/protocol of communication between the rest of the system and the disk drive itself. Storage devices intended for desktop and mobile computers typically use ATA (PATA) and SATA interfaces. Enterprise systems and high-end storage devices will typically use SCSI, SAS, and FC interfaces in addition to some use of SATA.


Basic terminology

-   Disk - Generally refers to magnetic media and devices.
-   Disc - Required by trademarks for certain optical media and devices.
-   Platter – An individual recording disk. A hard disk drive contains a set of platters. Developments in optical technology have led to multiple recording layers on DVDs.
-   Spindle – the spinning axle on which the platters are mounted.
-   Rotation – Platters rotate; two techniques are common:
    -   Constant angular velocity (CAV) keeps the disk spinning at a fixed rate, measured in revolutions per minute (RPM). This means the heads cover more distance per unit of time on the outer tracks than on the inner tracks. This method is typical with computer hard drives.
    -   Constant linear velocity (CLV) keeps the distance covered by the heads per unit time fixed. Thus the disk has to slow down as the arm moves to the outer tracks. This method is typical for CD drives.
-   Track – The circle of recorded data on a single recording surface of a platter.

-   Sector – A segment of a track
-   Low level formatting – Establishing the tracks and sectors.
-   Head – The device that reads and writes the information—magnetic or optical—on the disk surface.
-   Arm – The mechanical assembly that supports the head as it moves in and out.
-   Seek time – Time needed to move the head to a new position (specific track).
-   Rotational latency – Average time, once the arm is on the right track, before a head is over a desired sector.
-   Data transfer rate - The rate at which user data bits are transferred from or to the medium. Technically, this would more accurately be entitled the "gross" data transfer rate.


See also

-   Disk array
-   Disk drive performance characteristics
-   Disk read-and-write head
-   Magnetic storage
-   RAID
-   USB flash drive


References

Category:Computer storage devices Category:Rotating disc computer storage media

[1]