A COMPUTER FILE is a computer resource for recording data discretely in a computer storage device. Just as words can be written to paper, so can information be written to a computer file. Files can be edited and transferred through the internet on that particular computer system.

There are different types of computer files, designed for different purposes. A file may be designed to store a picture, a written message, a video, a computer program, or a wide variety of other kinds of data. Some types of files can store several types of information at once.

By using computer programs, a person can open, read, change, save, and close a computer file. Computer files may be reopened, modified, and copied an arbitrary number of times.

Typically, files are organised in a file system, which keeps track of where the files are located on disk and enables user access.


Etymology

PunchCardDecks.agr.jpg file]] BRL61-IBM_305_RAMAC.jpeg of an IBM 305 system]]

The word "file" derives from the Latin _filum_ ("a thread").[1]

"File" was used in the context of computer storage as early as January 1940. In _Punched Card Methods in Scientific Computation_,[2] W.J. Eckert stated, "The first extensive use of the early Hollerith Tabulator in astronomy was made by Comrie.[3] He used it for building a table from successive differences, and for adding large numbers of harmonic terms". "Tables of functions are constructed from their differences with great efficiency, either as printed tables or as a _file of punched cards_."

In February 1950: In a Radio Corporation of America (RCA) advertisement in _Popular Science Magazine_[4] describing a new "memory" vacuum tube it had developed, RCA stated: "the results of countless computations can be kept 'on file' and taken out again. Such a 'file' now exists in a 'memory' tube developed at RCA Laboratories. Electronically it retains figures fed into calculating machines, holds them in storage while it memorizes new ones - speeds intelligent solutions through mazes of mathematics."

In 1952, "file" denoted, _inter alia_, information stored on punched cards.[5]

In early use, the underlying hardware, rather than the contents stored on it, was denominated a "file". For example, the IBM 350 disk drives were denominated "disk files".[6] The introduction, circa 1961, by the Burroughs MCP and the MIT Compatible Time-Sharing System of the concept of a "file system" that managed several virtual "files" on one storage device is the origin of the contemporary denotation of the word. Although the contemporary "register file" demonstrates the early concept of files, its use has greatly decreased.


File contents

On most modern operating systems, files are organized into one-dimensional arrays of bytes. The format of a file is defined by its content since a file is solely a container for data, although, on some platforms the format is usually indicated by its filename extension, specifying the rules for how the bytes must be organized and interpreted meaningfully. For example, the bytes of a plain text file ( in Windows) are associated with either ASCII or UTF-8 characters, while the bytes of image, video, and audio files are interpreted otherwise. Most file types also allocate a few bytes for metadata, which allows a file to carry some basic information about itself.

Some file systems can store arbitrary (not interpreted by the file system) file-specific data outside of the file format, but linked to the file, for example extended attributes or forks. On other file systems this can be done via sidecar files or software-specific databases. All those methods, however, are more susceptible to loss of metadata than are container and archive file formats.

File size

At any instant in time, a file might have a size, normally expressed as number of bytes, that indicates how much storage is associated with the file. In most modern operating systems the size can be any non-negative whole number of bytes up to a system limit. Many older operating systems kept track only of the number of blocks or tracks occupied by a file on a physical storage device. In such systems, software employed other methods to track the exact byte count (e.g., CP/M used a special control character, Ctrl-Z, to signal the end of text files).

The general definition of a file does not require that its size have any real meaning, however, unless the data within the file happens to correspond to data within a pool of persistent storage. A special case is a zero byte file; these files can be newly created files that have not yet had any data written to them, or may serve as some kind of flag in the file system, or are accidents (the results of aborted disk operations). For example, the file to which the link points in a typical Unix-like system probably has a defined size that seldom changes. Compare this with which is also a file, but its size may be obscure.

Organization of data in a file

Information in a computer file can consist of smaller packets of information (often called "records" or "lines") that are individually different but share some common traits. For example, a payroll file might contain information concerning all the employees in a company and their payroll details; each record in the payroll file concerns just one employee, and all the records have the common trait of being related to payroll—this is very similar to placing all payroll information into a specific filing cabinet in an office that does not have a computer. A text file may contain lines of text, corresponding to printed lines on a piece of paper. Alternatively, a file may contain an arbitrary binary image (a BLOB) or it may contain an executable.

The way information is grouped into a file is entirely up to how it is designed. This has led to a plethora of more or less standardized file structures for all imaginable purposes, from the simplest to the most complex. Most computer files are used by computer programs which create, modify or delete the files for their own use on an as-needed basis. The programmers who create the programs decide what files are needed, how they are to be used and (often) their names.

In some cases, computer programs manipulate files that are made visible to the computer user. For example, in a word-processing program, the user manipulates document files that the user personally names. Although the content of the document file is arranged in a format that the word-processing program understands, the user is able to choose the name and location of the file and provide the bulk of the information (such as words and text) that will be stored in the file.

Many applications pack all their data files into a single file called an archive file, using internal markers to discern the different types of information contained within. The benefits of the archive file are to lower the number of files for easier transfer, to reduce storage usage, or just to organize outdated files. The archive file must often be unpacked before next using.

Operations

The most basic operations that programs can perform on a file are:

-   Create a new file
-   Change the access permissions and attributes of a file
-   Open a file, which makes the file contents available to the program
-   Read data from a file
-   Write data to a file
-   Close a file, terminating the association between it and the program

Files on a computer can be created, moved, modified, grown, shrunk, and deleted. In most cases, computer programs that are executed on the computer handle these operations, but the user of a computer can also manipulate files if necessary. For instance, Microsoft Word files are normally created and modified by the Microsoft Word program in response to user commands, but the user can also move, rename, or delete these files directly by using a file manager program such as Windows Explorer (on Windows computers) or by command lines (CLI).

In Unix-like systems, user space programs do not operate directly, at a low level, on a file. Only the kernel deals with files, and it handles all user-space interaction with files in a manner that is transparent to the user-space programs. The operating system provides a level of abstraction, which means that interaction with a file from user-space is simply through its filename (instead of its file descriptor). For example, rm _filename_ will not delete the file itself, but only a link to the file. There can be many links to a file, but when they are all removed, the kernel considers that file's memory space free to be reallocated. This free space is commonly considered a security risk (due to the existence of file recovery software). Any secure-deletion program uses kernel-space (system) functions to wipe the file's data.


Identifying and organizing

FileFolders.svg In modern computer systems, files are typically accessed using names (filenames). In some operating systems, the name is associated with the file itself. In others, the file is anonymous, and is pointed to by links that have names. In the latter case, a user can identify the name of the link with the file itself, but this is a false analogue, especially where there exists more than one link to the same file.

Files (or links to files) can be located in directories. However, more generally, a directory can contain either a list of files or a list of links to files. Within this definition, it is of paramount importance that the term "file" includes directories. This permits the existence of directory hierarchies, i.e., directories containing sub-directories. A name that refers to a file within a directory must be typically unique. In other words, there must be no identical names within a directory. However, in some operating systems, a name may include a specification of type that means a directory can contain an identical name for more than one type of object such as a directory and a file.

In environments in which a file is named, a file's name and the path to the file's directory must uniquely identify it among all other files in the computer system—no two files can have the same name and path. Where a file is anonymous, named references to it will exist within a namespace. In most cases, any name within the namespace will refer to exactly zero or one file. However, any file may be represented within any namespace by zero, one or more names.

Any string of characters may be a well-formed name for a file or a link depending upon the context of application. Whether or not a name is well-formed depends on the type of computer system being used. Early computers permitted only a few letters or digits in the name of a file, but modern computers allow long names (some up to 255 characters) containing almost any combination of unicode letters or unicode digits, making it easier to understand the purpose of a file at a glance. Some computer systems allow file names to contain spaces; others do not. Case-sensitivity of file names is determined by the file system. Unix file systems are usually case sensitive and allow user-level applications to create files whose names differ only in the case of characters. Microsoft Windows supports multiple file systems, each with different policies regarding case-sensitivity. The common FAT file system can have multiple files whose names differ only in case if the user uses a disk editor to edit the file names in the directory entries. User applications, however, will usually not allow the user to create multiple files with the same name but differing in case.

Most computers organize files into hierarchies using folders, directories, or catalogs. The concept is the same irrespective of the terminology used. Each folder can contain an arbitrary number of files, and it can also contain other folders. These other folders are referred to as subfolders. Subfolders can contain still more files and folders and so on, thus building a tree-like structure in which one "master folder" (or "root folder" — the name varies from one operating system to another) can contain any number of levels of other folders and files. Folders can be named just as files can (except for the root folder, which often does not have a name). The use of folders makes it easier to organize files in a logical way.

When a computer allows the use of folders, each file and folder has not only a name of its own, but also a path, which identifies the folder or folders in which a file or folder resides. In the path, some sort of special character—such as a slash—is used to separate the file and folder names. For example, in the illustration shown in this article, the path uniquely identifies a file called in a folder called , which in turn is contained in a folder called . The folder and file names are separated by slashes in this example; the topmost or root folder has no name, and so the path begins with a slash (if the root folder had a name, it would precede this first slash).

Many computer systems use extensions in file names to help identify what they contain, also known as the file type. On Windows computers, extensions consist of a dot (period) at the end of a file name, followed by a few letters to identify the type of file. An extension of identifies a text file; a extension identifies any type of document or documentation, commonly in the Microsoft Word file format; and so on. Even when extensions are used in a computer system, the degree to which the computer system recognizes and heeds them can vary; in some systems, they are required, while in other systems, they are completely ignored if they are presented.


Protection

Many modern computer systems provide methods for protecting files against accidental and deliberate damage. Computers that allow for multiple users implement file permissions to control who may or may not modify, delete, or create files and folders. For example, a given user may be granted only permission to read a file or folder, but not to modify or delete it; or a user may be given permission to read and modify files or folders, but not to execute them. Permissions may also be used to allow only certain users to see the contents of a file or folder. Permissions protect against unauthorized tampering or destruction of information in files, and keep private information confidential from unauthorized users.

Another protection mechanism implemented in many computers is a _read-only flag._ When this flag is turned on for a file (which can be accomplished by a computer program or by a human user), the file can be examined, but it cannot be modified. This flag is useful for critical information that must not be modified or erased, such as special files that are used only by internal parts of the computer system. Some systems also include a _hidden flag_ to make certain files invisible; this flag is used by the computer system to hide essential system files that users should not alter.


Storage

Any file that has any useful purpose, must have some physical manifestation. That is, a file (an abstract concept) in a real computer system must have a real physical analogue if it is to exist at all.

In physical terms, most computer files are stored on some type of data storage device. For example, most operating systems store files on a hard disk. Hard disks have been the ubiquitous form of non-volatile storage since the early 1960s.[7] Where files contain only temporary information, they may be stored in RAM. Computer files can be also stored on other media in some cases, such as magnetic tapes, compact discs, Digital Versatile Discs, Zip drives, USB flash drives, etc. The use of solid state drives is also beginning to rival the hard disk drive.

In Unix-like operating systems, many files have no associated physical storage device. Examples are and most files under directories , and . These are virtual files: they exist as objects within the operating system kernel.

As seen by a running user program, files are usually represented either by a File control block or by a file handle. A File control block (FCB) is an area of memory which is manipulated to establish a filename _etc_. and then passed to the operating system as a parameter, it was used by older IBM operating systems and early PC operating systems including CP/M and early versions of MS-DOS. A file handle is generally either an opaque data type or an integer, it was introduced in around 1961 by the ALGOL-based Burroughs MCP running on the Burroughs B5000 but is now ubiquitous.


File corruption

When a file is said to be corrupted, it is because its contents have been saved to the computer in such a way that they can't be properly read, either by a human or by software. Depending on the extension of the damage, the original file can sometimes be recovered, or at least partially understood.[8] A file may be created corrupt, or it may be corrupted at a later point through overwriting.

There are many ways by which a file can become corrupted. Most commonly, the issue happens in the process of writing the file to a disk.[9] For example, if an image-editing program unexpectedly crashes while saving an image, that file may be corrupted because the program couldn't save its entirety. The program itself might warn the user that there was an error, allowing for another attempt at saving the file.[10] Some other examples of reasons for which files become corrupted include:

-   The computer itself shutting down unexpectedly (for example, due to a power loss) with open files, or files in the process of being saved;[11][12][13]
-   A download being interrupted before it was completed;
-   Due to a bad sector on the hard drive;[14][15]
-   The user removing a flash drive (such as a USB stick) without properly unmounting (commonly referred to as "safely removing").[16][17][18][19]
-   Malicious software, such as a computer virus;[20][21][22][23]
-   A flash drive becoming too old.[24]

Although file corruption usually happens accidentally, it may also be done on purpose, as to fool someone else into thinking an assignment was ready at an earlier date, potentially gaining time to finish said assignment. There are services that provide on demand file corruption, which essentially fill a given file with random data so that it can't be opened or read, yet still seems legitimate.[25][26]

One of the most effective countermeasures for file corruption is backing up important files.[27] In the event of an important file becoming corrupted, the user can simply replace it with the backed up version.


Backup

When computer files contain information that is extremely important, a _back-up_ process is used to protect against disasters that might destroy the files. Backing up files simply means making copies of the files in a separate location so that they can be restored if something happens to the computer, or if they are deleted accidentally.

There are many ways to back up files. Most computer systems provide utility programs to assist in the back-up process, which can become very time-consuming if there are many files to safeguard. Files are often copied to removable media such as writable CDs or cartridge tapes. Copying files to another hard disk in the same computer protects against failure of one disk, but if it is necessary to protect against failure or destruction of the entire computer, then copies of the files must be made on other media that can be taken away from the computer and stored in a safe, distant location.

The grandfather-father-son backup method automatically makes three back-ups; the grandfather file is the oldest copy of the file and the son is the current copy.


File systems and file managers

The way a computer organizes, names, stores and manipulates files is globally referred to as its _file system._ Most computers have at least one file system. Some computers allow the use of several different file systems. For instance, on newer MS Windows computers, the older FAT-type file systems of MS-DOS and old versions of Windows are supported, in addition to the NTFS file system that is the normal file system for recent versions of Windows. Each system has its own advantages and disadvantages. Standard FAT allows only eight-character file names (plus a three-character extension) with no spaces, for example, whereas NTFS allows much longer names that can contain spaces. You can call a file "" in NTFS, but in FAT you would be restricted to something like (unless you were using VFAT, a FAT extension allowing long file names).

File manager programs are utility programs that allow users to manipulate files directly. They allow you to move, create, delete and rename files and folders, although they do not actually allow you to read the contents of a file or store information in it. Every computer system provides at least one file-manager program for its native file system. For example, File Explorer (formerly Windows Explorer) is commonly used in Microsoft Windows operating systems, and Nautilus is common under several distributions of Linux.


See also

-   -   Block (data storage)
-   Computer file management
-   Data hierarchy
-   File camouflage
-   File copying
-   File conversion
-   File deletion
-   File directory
-   File manager
-   File system
-   Filename
-   Flat file database
-   Object composition
-   Soft copy


References


External links

-   -

Computer_files File Category:Inter-process communication

[1]

[2]

[3]

[4]

[5] Robert S. Casey, et al. _Punched Cards: Their Applications to Science and Industry_. 1952.

[6] Martin H. Weik. Ballistic Research Laboratories Report #1115. March 1961. pp. 314-331.

[7] Magnetic Storage Handbook 2nd Ed., Section 2.1.1, Disk File Technology, Mee and Daniel, (c)1990,

[8] {{ cite web | url=https://www.techwalla.com/articles/what-causes-a-corrupt-file | title=What Causes a Corrupt File? | first=Victoria | last=Gorski | accessdate=2019-03-17 }}

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] {{ cite web | url=https://www.securedatarecovery.com/services/hard-drive-recovery/what-causes-flash-media-corruption | title=What Causes Flash Memory Corruption? | accessdate=2019-03-17 | publisher=SecureDataRecovery }}

[17] {{ cite web | url=https://www.howtogeek.com/118546/htg-explains-do-you-really-need-to-safely-remove-usb-sticks/ | date=2016-09-28 | title=Do You Really Need to Safely Remove USB Flash Drives? | first=Chris | last=Hoffman | publisher=How-To Geek | accessdate=2019-03-17 }}

[18] {{ cite web | url=https://support.office.com/en-us/article/open-a-document-after-a-file-corruption-error-47df9d48-2165-4411-a699-1786ac734bc3 | title=Open a document after a file corruption error | publisher=Microsoft Office Support | accessdate=2019-03-17 }}

[19] {{ cite web | url=https://www.datarecovery.net/newsletters/what-kills-flash-drive.aspx | title=What kills your Flash Drive and how you can avoid it | publisher=DataRecovery.net | accessdate=2019-03-17 }}

[20]

[21]

[22] {{ cite web | url=https://windowsreport.com/fix-windows-10-file-corruption-issues/ | title=Fix Windows 10 File Corruption Issues | first=Robert | last=Neagoe | date=2018-08-14 | publisher=Windowsreport.com | accessdate=2019-03-17 }}

[23] {{ cite book | title=Ethical Hacking and Countermeasures: Linux, Macintosh and Mobile Systems | date=2009-09-24 | publisher=Cengage | author-link=EC-Council | last=International Council of Electronic Commerce Consultants | chapter=Mac OS X Hacking | lang=English | pages=2.6–2.7 | url=https://books.google.com.br/books?id=LYFoU2HG_AkC&pg=SA2-PA6 | isbn=978-1-4354-8364-4 | accessdate=2019-03-17 }}

[24]

[25] {{ cite web | url=https://corrupt-a-file.net/ | title=Corrupt a file - Corrupt file online, deliver on time! | accessdate=2019-03-17 }}

[26] {{ cite web | url=http://www.corruptmyfile.com/ | title=Corrupt My File: Get your file corrupted for you | accessdate=2019-03-17 }}

[27] {{ cite web | url=https://support.intego.com/hc/en-us/articles/207114508-What-is-a-Corrupted-File- | title=What is a Corrupted File? | date=2019-03-07 | publisher=Intego }}