GNU HURD is the multiserver microkernel written as part of GNU. It has been under development since 1990 by the GNU Project of the Free Software Foundation, designed as a replacement for the Unix kernel,[1] and released as free software under the GNU General Public License. While the Linux kernel soon proved to be a more viable solution, development of GNU Hurd continued, albeit at a slow pace.[2]

GNU Hurd consists of a set of protocols and server processes (or daemons, in Unix terminology) that run on the GNU Mach microkernel.[3] The Hurd aims to surpass the Unix kernel in functionality, security, and stability, while remaining largely compatible with it. The GNU Project chose the multiserver microkernel[4] for the operating system, due to perceived advantages over the traditional Unix monolithic kernel architecture,[5] a view that had been advocated by some developers in the 1980s.[6]


Name and logo

In December 1991 the primary architect of the Hurd described the name as a mutually recursive acronym:[7]

As both _hurd_ and _hird_ are homophones of the English word _herd_, the full name _GNU Hurd_ is also a play on the words _herd of gnus_, reflecting how the kernel works.[8] The logo is called the _Hurd boxes_ and it also reflects on architecture. The logo is a graph where nodes represent the Hurd kernel's servers and directed edges are IPC messages.[9]


Development history

Richard Stallman founded the GNU Project in September 1983 with an aim to create a free GNU operating system. Initially the components required for kernel development were written: editors, shell, compiler and all the others. By 1989, the GNU GPL came into being and the only major component missing was the kernel.[10][11]

Development on the Hurd began in 1990 after an abandoned kernel attempt in 1986, based on the research TRIX operating system developed by Professor Steve Ward and his group at MIT's Laboratory for Computer Science (LCS).[12] According to Thomas Bushnell, the initial Hurd architect, their early plan was to adapt the 4.4BSD-Lite kernel and, in hindsight, "It is now perfectly obvious to me that this would have succeeded splendidly and the world would be a very different place today".[13] In 1987 Richard Stallman proposed using the Mach microkernel developed at Carnegie Mellon University. Work on this was delayed for three years due to uncertainty over whether CMU would release the Mach code under a suitable license.[14]

With the release of the Linux kernel in 1991, the primary user of GNU's userland components soon became operating systems based on the Linux kernel (Linux distributions), prompting the coining of the term _GNU/Linux_.

Development of the Hurd has proceeded slowly. Despite an optimistic announcement by Stallman in 2002 predicting a release of GNU/Hurd later that year,[15] the Hurd is still not considered suitable for production environments. Development in general has not met expectations, and there are still a significant number of bugs and missing features.[16] This has resulted in a poorer product than many (including Stallman) had expected.[17] In 2010, after twenty years under development, Stallman said that he was "not very optimistic about the GNU Hurd. It makes some progress, but to be really superior it would require solving a lot of deep problems", but added that "finishing it is not crucial" for the GNU system because a free kernel already existed (Linux), and completing Hurd would not address the main remaining problem for a free operating system: device support.[18]

The Debian project, among others, have worked on the Hurd project to produce binary distributions of Hurd-based GNU operating systems for IBM PC compatible systems.

After years of stagnation, development picked up again in 2015 and 2016, with four releases during these two years.[19]

On August 20, 2015, amid the Google Summer of Code, it was announced that GNU Guix had been ported to GNU Hurd.[20]


Architecture

Unlike most Unix-like kernels, the Hurd uses a server–client architecture, built on a microkernel that is responsible for providing the most basic kernel services – coordinating access to the hardware: the CPU (through process management and scheduling), RAM (via memory management), and other various input/output devices (via I/O scheduling) for sound, graphics, mass storage, etc. In theory the microkernel design would allow for all device drivers to be built as servers working in user space, but today most drivers of this kind are still contained in the GNU Mach kernel space.[21]

According to Hurd developers, the main advantage of microkernel-based design is the ability to extend the system: developing a new module would not require in depth knowledge of the rest of the kernel, and a bug in one module would not crash the entire system. Hurd provides a concept of _translators_, a framework of modules used to extend a file system functionality.[22]

From early on, the Hurd was developed to use GNU Mach as the microkernel. This was a technical decision made by Richard Stallman, who thought it would speed up the work by saving a large part of it. He has admitted that he was wrong about that.[23] Other Unix-like systems working on the Mach microkernel include OSF/1, Lites, and MkLinux. macOS and NeXTSTEP use hybrid kernels based on Mach.

Other microkernels

From 2004 onward, various efforts were launched to port the Hurd to more modern microkernels. The L4 microkernel was the original choice in 2004, but progress slowed to a halt. Nevertheless, during 2005, Hurd developer Neal Walfield finished the initial memory management framework for the L4/Hurd port, and Marcus Brinkmann ported essential parts of glibc; namely, getting the process startup code working, allowing programs to run, thus allowing the first user programs (trivial ones such as the hello world program) in C to run.

Since 2005 Brinkmann and Walfield started researching Coyotos as a new kernel for HURD.[24][25] In 2006, Brinkmann met with Jonathan Shapiro (a primary architect of the Coyotos Operating System) to aid in and discuss the use of the Coyotos kernel for GNU/Hurd. In further discussion HURD developers realised that Coyotos (as well as other similar kernels) are not suitable for HURD.[26]

In 2007, Hurd developers Neal Walfield and Marcus Brinkmann gave a critique of the Hurd architecture, known as "the critique",[27] and a proposal for how a future system may be designed, known as "the position paper".[28] In 2008, Neal Walfield began working on the Viengoos microkernel as a modern native kernel for HURD. , development on Viengoos is paused due to Walfield lacking time to work on it.[29]

In the meantime, others have continued working on the Mach variant of Hurd.[30]

Unix extensions

A number of traditional Unix concepts are replaced or extended in the Hurd.

Under Unix, every running program has an associated user id, which normally corresponds to the user that started the process. This id largely dictates the actions permitted to the program. No outside process can change the user id of a running program. A Hurd process, on the other hand, runs under a _set_ of user ids, which can contain multiple ids, one, or none. A sufficiently privileged process can add and remove ids to another process. For example, there is a password server that will hand out ids in return for a correct login password.

Regarding the file system, a suitable program can be designated as a _translator_ for a single file or a whole directory hierarchy. Every access to the translated file, or files below a hierarchy in the second case, is in fact handled by the program. For example, a file translator may simply redirect read and write operations to another file, like a Unix symbolic link. The effect of Unix _mounting_ is achieved by setting up a filesystem translator (using the "settrans" command). Translators can also be used to provide services to the user. For example, the ftpfs translator allows a user to encapsulate remote FTP sites within a directory. Then, standard tools such as ls, cp, and rm can be used to manipulate files on the remote system. Even more powerful translators are ones such as UnionFS, which allows a user to unify multiple directories into one; thus listing the unified directory reveals the contents of all the directories.

The Hurd requires a multiboot-compliant boot loader, such as GRUB.

Architecture of the servers

According to the Debian documentation, there are 24 servers (18 core servers and 6 file system servers) named as follows:[31]

Core servers

-   AUTH (authentication server): Receives requests and passwords from programs and gives them an ID, which changes the privileges of the program.
-   CRASH (crash server): Handles all fatal errors.
-   EIEIO (translation server): TODO (see Computer bought the farm)
-   EXEC (execution server): Translates an executable image (currently ELF and a.out are supported) to a runnable image in memory.
-   FIFO (FIFO translator): Implements named pipes.
-   NEW-FIFO (new FIFO server): An alternate server for named pipes.
-   FIRMLINK (the firmlink translator): Implements firmlinks ‒ "half-way between a symbolic link and a hard link".[32]
-   FWD (forward server): Forwards requests to other servers, used by fifo and symlink servers.
-   HOSTMUX (host multiplexer server)
-   IFSOCK (server for sockets interface): Helps with UNIX domain socket addresses.
-   INIT (init server): Basic system booting and configuration.
-   MAGIC (magic server): Signals that a name lookup must be resolved internally by a process when the result involves the process's state.
-   NULL (null server): Implements GNU_Hurd//dev/null and /dev/zero.
-   PFINET (pfinet server): Implements the PF_INET protocol family.
-   PFLOCAL (pflocal server): Implements UNIX domain sockets.
-   PROC (process server): Assigns PIDs and manages process-level actions.
-   SYMLINK (symbolic link translator): Implements symbolic links for filesystems that don't support them.
-   TERM (terminal server): A POSIX terminal.
-   USERMUX (user multiplexer server): Invokes user-specific translators.

Filesystem servers

ext2fs
    The ext2 filesystem translator. It receives disk blocks from the microkernel and gives files and directories to the applications.

isofs
    The translator for the ISO 9660 filesystem. Translates blocks of a CD or DVD to files and directories for the applications.

nfs
    See Network File System.

ufs
    Translator for the BSD filesystem of the same name, UFS.

ftpfs
    File transfer protocol filesystem translator.

storeio
    The storage translator.

The servers collectively implement the POSIX API, with each server implementing a part of the interface. For instance, the various filesystem servers each implement the filesystem calls. The storage server will work as a wrapping layer, similar to the block layer of Linux. The equivalent of VFS of Linux is achieved by libdiskfs and libpager libraries.


Computer bought the farm

"Computer bought the farm" is the message displayed when an error occurs using some commands. According to the GNU Hurd FAQ:[33]

  This is the error message for EIEIO. This error code is used for a variety of "hopeless" error conditions. Most probably you will encounter it when a translator crashes while you were trying to use a file that it serves.
  You can thus think of it as an equivalent of the "blue screen of the death" or "Oops"... except that it's just an error! It doesn't take your whole system away with it, only the particular operations that was going on.


GNU distributions running Hurd

with Xfce4 and web browser Midori]]

Hurd-based GNU distributions include:

-   Arch Hurd
-   Bee GNU/Hurd (discontinued)[34]
-   Debian GNU/Hurd
-   Gentoo GNU Hurd (discontinued)
-   GNU/Hurd Live CD[35] (discontinued)
-   Guix System Distribution (under development)
-   NixOS - experiment[36]


See also

-   GNU Mach
-   GNU Linux-libre – the free version of the Linux kernel
-   Kernel-based Virtual Machine (KVM)
-   Minix 3
-   Multiboot Specification


References


External links

-

Category:Free software operating systems Category:GNU Project software Category:Microkernel-based operating systems Category:Microkernels Category:Operating system distributions bootable from read-only media Category:Unix variants

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

[15]

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