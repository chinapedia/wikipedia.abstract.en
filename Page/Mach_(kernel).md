MACH ()[1] is a kernel developed at Carnegie Mellon University to support operating system research, primarily distributed and parallel computing. Mach is often mentioned as one of the earliest examples of a microkernel. However, not all versions of Mach are microkernels. Mach's derivatives are the basis of the modern operating system kernels in GNU Hurd and Apple's operating systems macOS, iOS, iPadOS, tvOS, and watchOS.

The project at Carnegie Mellon ran from 1985 to 1994,[2] ending with Mach 3.0, which is a true microkernel. Mach was developed as a replacement for the kernel in the BSD version of Unix, so no new operating system would have to be designed around it. Mach and its derivatives exist within a number of commercial operating systems. These include all using the XNU operating system kernel which incorporates an earlier non-microkernel Mach as a major component. The Mach virtual memory management system was also adopted in 4.4BSD by the BSD developers at CSRG,[3] and appears in modern BSD-derived Unix systems, such as FreeBSD.

Mach is the logical successor to Carnegie Mellon's Accent kernel. The lead developer on the Mach project, Richard Rashid, has been working at Microsoft since 1991 in various top-level positions revolving around the Microsoft Research division. Another of the original Mach developers, Avie Tevanian, was formerly head of software at NeXT, then Chief Software Technology Officer at Apple Inc. until March 2006.[4]


History

Name

Mach's name Mach evolved in a euphemization spiral: While the developers, once during the naming phase, had to bike to lunch through rainy Pittsburgh's mud puddles, Tevanian joked the word muck could serve as a backronym for their Multi-User [or Multiprocessor Universal] Communication Kernel. Italian CMU engineer Dario Giuse later asked project leader Rick Rashid about the project's current title and received "MUCK" as the answer, though not spelled out but just pronounced as which he, according to the Italian alphabet, wrote as Mach. Rashid liked Giuse's spelling "Mach" so much that it prevailed.[5]

Unix pipes

A key concept in the original Unix operating system was the idea of a pipe. A pipe was an abstraction that allowed data to be moved as an unstructured stream of bytes from program to program. Using pipes, users (or programmers) could link together multiple programs to complete tasks, feeding data through several small programs in turn. This contrasted with typical operating systems of the era, which required a single large program that could handle the entire task, or alternately, used files to pass data, which was resource expensive and time consuming.

Pipes were built on the underlying input/output system. This system was, in turn, based on a model where drivers were expected to periodically "block" while they waited for tasks to complete. For instance, a printer driver might send a line of text to a line printer and then have nothing to do until the printer completed printing that line. In this case, the driver would indicate that it was blocked, and the operating system would allow some other program to run until the printer indicated it was ready for more data. In the pipes system the limited resource was memory, and when one program filled the memory assigned to the pipe, it would naturally block. Normally this would cause the consuming program to run, emptying the pipe again. In contrast to a file, where the entire file has to be read or written before the next program can use it, pipes made the movement of data across multiple programs occur in a piecemeal fashion without any programmer intervention.

However, the implementation of pipes as memory buffers meant data was being copied from program to program, a time consuming and resource intensive operation. This made the pipe concept unsuitable for tasks where quick turnaround or low latency was needed, as is the case in most device drivers. The operating system kernel and most core functionality was instead written as a single large program. As the operating system added new functionality (computer networking, for instance), the size and complexity of the kernel grew, too.

New concepts

Unix pipes offered a conceptual system that could be used to build arbitrarily complex solutions out of small interacting programs. Being smaller, these programs were easy to program and maintain, and had well defined interfaces that simplified programming and debugging. These qualities are even more valuable for device drivers, where small size and bug-free performance are extremely important. There was a strong desire to model the kernel itself on the same basis of small interacting programs.

One of the first systems to use a pipe-like system as the basis for the operating system was the Aleph kernel developed at the University of Rochester. This introduced the concept of _ports_, which were essentially a shared memory implementation. In Aleph, the kernel itself was reduced to providing access to the hardware, including memory and the ports, while conventional programs using the ports system implemented all behavior, from device drivers to user programs. This concept greatly reduced the size of the kernel, and allowed users to experiment with different drivers simply by loading them and connecting them together at runtime. This greatly eased the problems when developing new operating system code, which otherwise generally required the machine to be restarted. The general concept of a small kernel and external drivers became known as a microkernel.

Aleph was implemented on Data General Eclipse minicomputers and was tightly bound to them. This machine was far from ideal, as it required memory to be copied between programs, which involved a considerable performance overhead. It was also quite expensive. Nevertheless, Aleph proved that the basis system was sound, and went on to demonstrate computer clustering by copying the memory over an early Ethernet interface.

Around this time a new generation of central processors (CPUs) were coming to market, offering 32-bit address spaces and (initially optional) support for a memory management unit (MMU). The MMU handled the instructions needed to implement a virtual memory (VM) system by keeping track of which _pages_ of memory were in use by various programs. This offered a new solution to the port concept, using the copy on write mechanism used by VM. Instead of copying data between programs, all that had to be sent was the data needed to instruct the MMU to provide access to the same memory. This system would implement the interprocess communications system with dramatically higher performance.

This concept was picked up at Carnegie-Mellon, who adapted Aleph for the PERQ workstation and implemented it using copy-on-write. The port was successful, but the resulting Accent kernel was of limited practical use because it did not run existing software. Moreover, Accent was as tightly tied to PERQ as Aleph was to the Eclipse.

Mach

The major change between these experimental kernels and Mach was the decision to make a version of the existing 4.2BSD kernel re-implemented on the Accent message-passing concepts. Such a kernel would be binary compatible with existing BSD software, making the system immediately useful for everyday use while still being a useful experimental platform. Additionally, the new kernel would be designed from the start to support multiple processor architectures, even allowing heterogeneous clusters to be constructed. In order to bring the system up as quickly as possible, the system would be implemented by starting with the existing BSD code, and re-implementing it bit by bit as inter-process communication-based (IPC-based) programs. Thus Mach would begin as a monolithic system similar to existing UNIX systems, and evolve more toward the microkernel concept over time.

Mach started largely as an effort to produce a cleanly defined, UNIX-based, highly portable Accent. The result is a short list of generic concepts:[6][7]

-   a "task" is an object consisting of a set of system resources that enable "threads" to run
-   a "thread" is a single unit of execution, exists within a context of a task and shares the task's resources
-   a "port" is a protected message queue for communication between tasks; tasks own send rights (permissions) and receive rights to each port.
-   "messages" are collections of typed data objects, they can only be sent to ports—not specifically tasks or threads

Mach developed on Accent's IPC concepts, but made the system much more UNIX-like in nature, even able to run UNIX programs with little or no modification. To do this, Mach introduced the concept of a _port_, representing each endpoint of a two-way IPC. Ports had security and rights like files under UNIX, allowing a very UNIX-like model of protection to be applied to them. Additionally, Mach allowed any program to handle privileges that would normally be given to the operating system only, in order to allow user space programs to handle things like interacting with hardware.

Under Mach, and like UNIX, the operating system again becomes primarily a collection of utilities. As with UNIX, Mach keeps the concept of a driver for handling the hardware. Therefore, all the drivers for the present hardware have to be included in the microkernel. Other architectures based on Hardware Abstraction Layer or exokernels could move the drivers out of the microkernel.

The main difference with UNIX is that instead of utilities handling files, they can handle any "task". More operating system code was moved out of the kernel and into user space, resulting in a much smaller kernel and the rise of the term microkernel. Unlike traditional systems, under Mach a process, or "task", can consist of a number of threads. While this is common in modern systems, Mach was the first system to define tasks and threads in this way. The kernel's job was reduced from essentially being the operating system to maintaining the "utilities" and scheduling their access to hardware.

The existence of ports and the use of IPC is perhaps the most fundamental difference between Mach and traditional kernels. Under UNIX, calling the kernel consists of an operation known as a _system call_ or _trap_. The program uses a library to place data in a well known location in memory and then causes a _fault_, a type of error. When the system is first started the kernel is set up to be the "handler" of all faults, so when the program causes a fault the kernel takes over, examines the information passed to it, and then carries out the instructions.

Under Mach, the IPC system was used for this role instead. In order to call system functionality, a program would ask the kernel for access to a port, then use the IPC system to send messages to that port. Although the messages were triggered by system calls as they would be on other kernels, under Mach that was pretty much all the kernel did—handling the actual request would be up to some other program.

Thread and concurrency support benefited by message passing with IPC mechanisms since tasks now consisted of multiple code threads which Mach could freeze and unfreeze during message handling. This allowed the system to be distributed over multiple processors, either using shared memory directly as in most Mach messages, or by adding code to copy the message to another processor if needed. In a traditional kernel this is difficult to implement; the system has to be sure that different programs don't try to write to the same memory from different processors. However, Mach ports, its process for memory access, make this well defined and easy to implement, and were made a first-class citizen in that system.

The IPC system initially had performance problems, so a few strategies were developed to minimize the impact. Like its predecessor, Accent, Mach used a single shared-memory mechanism for physically passing the message from one program to another. Physically copying the message would be too slow, so Mach relies on the machine's memory management unit (MMU) to quickly map the data from one program to another. Only if the data is written to would it have to be physically copied, a process called "copy-on-write".

Messages were also checked for validity by the kernel, to avoid bad data crashing one of the many programs making up the system. Ports were deliberately modeled on the UNIX file system concepts. This allowed the user to find ports using existing file system navigation concepts, as well as assigning rights and permissions as they would on the file system.

Development under such a system would be easier. Not only would the code being worked on exist in a traditional program that could be built using existing tools, it could also be started, debugged and killed off using the same tools. With a monokernel a bug in new code would take down the entire machine and require a reboot, whereas under Mach this would require only that the program be restarted. Additionally the user could tailor the system to include, or exclude, whatever features they required. Since the operating system was simply a collection of programs, they could add or remove parts by simply running or killing them as they would any other program.

Finally, under Mach, all of these features were deliberately designed to be extremely platform neutral. To quote one text on Mach:

    Unlike UNIX, which was developed without regard for multiprocessing, Mach incorporates multiprocessing support throughout. Its multiprocessing support is also exceedingly flexible, ranging from shared memory systems to systems with no memory shared between processors. Mach is designed to run on computer systems ranging from one to thousands of processors. In addition, Mach is easily ported to many varied computer architectures. A key goal of Mach is to be a distributed system capable of functioning on heterogeneous hardware. (Appendix B, Operating System Concepts)

There are a number of disadvantages, however. A relatively mundane one is that it is not clear how to find ports. Under UNIX this problem was solved over time as programmers agreed on a number of "well known" locations in the file system to serve various duties. While this same approach worked for Mach's ports as well, under Mach the operating system was assumed to be much more fluid, with ports appearing and disappearing all the time. Without some mechanism to find ports and the services they represented, much of this flexibility would be lost.

Development

Mach was initially hosted as additional code written directly into the existing 4.2BSD kernel, allowing the team to work on the system long before it was complete. Work started with the already functional Accent IPC/port system, and moved on to the other key portions of the OS, tasks and threads and virtual memory. As portions were completed various parts of the BSD system were re-written to call into Mach, and a change to 4.3BSD was also made during this process.

By 1986 the system was complete to the point of being able to run on its own on the DEC VAX. Although doing little of practical value, the goal of making a microkernel was realized. This was soon followed by versions on the IBM RT PC and for Sun Microsystems 68030-based workstations, proving the system's portability. By 1987 the list included the Encore Multimax and Sequent Balance machines, testing Mach's ability to run on multiprocessor systems. A public Release 1 was made that year, and Release 2 followed the next year.

Throughout this time the promise of a "true" microkernel was not yet being delivered. These early Mach versions included the majority of 4.3BSD in the kernel, a system known as POE Server, resulting in a kernel that was actually larger than the UNIX it was based on. The idea, however, was to move the UNIX layer out of the kernel into user-space, where it could be more easily worked on and even replaced outright. Unfortunately performance proved to be a major problem, and a number of architectural changes were made in order to solve this problem. Unwieldy UNIX licensing issues were also plaguing researchers, so this early effort to provide a non-licensed UNIX-like system environment continued to find use, well into the further development of Mach.

The resulting Mach 3 was released in 1990, and generated intense interest. A small team had built Mach and ported it to a number of platforms, including complex multiprocessor systems which were causing serious problems for older-style kernels. This generated considerable interest in the commercial market, where a number of companies were in the midst of considering changing hardware platforms. If the existing system could be ported to run on Mach, it would seem it would then be easy to change the platform underneath.

Mach received a major boost in visibility when the Open Software Foundation (OSF) announced they would be hosting future versions of OSF/1 on Mach 2.5, and were investigating Mach 3 as well. Mach 2.5 was also selected for the NeXTSTEP system and a number of commercial multiprocessor vendors. Mach 3 led to a number of efforts to port other operating systems parts for the microkernel, including IBM's Workplace OS and several efforts by Apple to build a cross-platform version of the classic Mac OS.

Performance issues

Mach was originally intended to be a replacement for classical monolithic UNIX, and for this reason contained many UNIX-like ideas. For instance, Mach used a permissioning and security system patterned on UNIX's file system. Since the kernel was privileged (running in _kernel-space_) over other OS servers and software, it was possible for malfunctioning or malicious programs to send it commands that would cause damage to the system, and for this reason the kernel checked every message for validity. Additionally most of the operating system functionality was to be located in user-space programs, so this meant there needed to be some way for the kernel to grant these programs additional privileges, to operate on hardware for instance.

Some of Mach's more esoteric features were also based on this same IPC mechanism. For instance, Mach was able to support multi-processor machines with ease. In a traditional kernel extensive work needs to be carried out to make it reentrant or _interruptible_, as programs running on different processors could call into the kernel at the same time. Under Mach, the bits of the operating system are isolated in servers, which are able to run, like any other program, on any processor. Although in theory the Mach kernel would also have to be reentrant, in practice this isn't an issue because its response times are so fast it can simply wait and serve requests in turn. Mach also included a server that could forward messages not just between programs, but even over the network, which was an area of intense development in the late 1980s and early 1990s.

Unfortunately, the use of IPC for almost all tasks turned out to have serious performance impact. Benchmarks on 1997 hardware showed that Mach 3.0-based UNIX single-server implementations were about 50% slower than native UNIX.[8][9]

Study of the exact nature of the performance problems turned up a number of interesting facts. One was that the IPC itself was not the problem: there was some overhead associated with the memory mapping needed to support it, but this added only a small amount of time to making a call. The rest, 80% of the time being spent, was due to additional tasks the kernel was running on the messages. Primary among these was the port rights checking and message validity. In benchmarks on an 486DX-50, a standard UNIX system call took an average of 21μs to complete, while the equivalent operation with Mach IPC averaged 114μs. Only 18μs of this was hardware related; the rest was the Mach kernel running various routines on the message.[10] Given a syscall that does nothing, a full round-trip under BSD would require about 40μs, whereas on a user-space Mach system it would take just under 500μs.

When Mach was first being seriously used in the 2.x versions, performance was slower than traditional monolithic operating systems, perhaps as much as 25%. This cost was not considered particularly worrying, however, because the system was also offering multi-processor support and easy portability. Many felt this was an expected and acceptable cost to pay. When Mach 3 attempted to move most of the operating system into user-space, the overhead became higher still: benchmarks between Mach and Ultrix on a MIPS R3000 showed a performance hit as great as 67% on some workloads.[11]

For example, getting the system time involves an IPC call to the user-space server maintaining system clock. The caller first traps into the kernel, causing a context switch and memory mapping. The kernel then checks that the caller has required access rights and that the message is valid. If it does, there is another context switch and memory mapping to complete the call into the user-space server. The process must then be repeated to return the results, adding up to a total of four context switches and memory mappings, plus two message verifications. This overhead rapidly compounds with more complex services, where there are often code paths passing through many servers.

This was not the only source of performance problems. Another centered on the problems of trying to handle memory properly when physical memory ran low and paging had to occur. In the traditional monolithic operating systems the authors had direct experience with which parts of the kernel called which others, allowing them to fine-tune their pager to avoid paging out code that was about to be used. Under Mach this wasn't possible because the kernel had no real idea what the operating system consisted of. Instead they had to use a single one-size-fits-all solution that added to the performance problems. Mach 3 attempted to address this problem by providing a simple pager, relying on user-space pagers for better specialization. But this turned out to have little effect. In practice, any benefits it had were wiped out by the expensive IPC needed to call it in.

Other performance problems were related to Mach's support for multiprocessor systems. From the mid-1980s to the early 1990s, commodity CPUs grew in performance at a rate of about 60% a year, but the speed of memory access grew at only 7% a year. This meant that the cost of accessing memory grew tremendously over this period, and since Mach was based on mapping memory around between programs, any "cache miss" made IPC calls slow.

Potential solutions

IPC overhead is a major issue for Mach 3 systems. However, the concept of a _multi-server operating system_ is still promising, though it still requires some research. The developers have to be careful to isolate code into modules that do not call from server to server. For instance, the majority of the networking code would be placed in a single server, thereby minimizing IPC for normal networking tasks.

Most developers instead stuck with the original POE concept of a single large server providing the operating system functionality.[12] In order to ease development, they allowed the operating system server to run either in user-space or kernel-space. This allowed them to develop in user-space and have all the advantages of the original Mach idea, and then move the debugged server into kernel-space in order to get better performance. Several operating systems have since been constructed using this method, known as _co-location_, among them Lites, MkLinux, OSF/1, and NeXTSTEP/OPENSTEP/macOS. The Chorus microkernel made this a feature of the basic system, allowing servers to be raised into the kernel space using built-in mechanisms.

Mach 4 attempted to address these problems, this time with a more radical set of upgrades. In particular, it was found that program code was typically not writable, so potential hits due to copy-on-write were rare. Thus it made sense to not map the memory between programs for IPC, but instead migrate the program code being used into the local space of the program. This led to the concept of "shuttles" and it seemed performance had improved, but the developers moved on with the system in a semi-usable state. Mach 4 also introduced built-in co-location primitives, making it a part of the kernel itself.

By the mid-1990s, work on microkernel systems was largely stagnant, although the market had generally believed that all modern operating systems would be microkernel based by the 1990s. The primary remaining widespread uses of the Mach kernel are Apple's macOS and its sibling iOS, which run atop a heavily modified hybrid Open Software Foundation Mach Kernel (OSFMK 7.3) called "XNU"[13] also used in OSF/1.[14] In XNU, the file systems, networking stacks, and process and memory management functions are implemented in the kernel; and file system, networking, and some process and memory management functions are invoked from user mode via ordinary system calls rather than message passing;[15][16] XNU's Mach messages are used for communication between user-mode processes, and for some requests from user-mode code to the kernel and from the kernel to user-mode servers.

Second-generation microkernels

Further analysis demonstrated that the IPC performance problem was not as obvious as it seemed. Recall that a single-side of a syscall took 20μs under BSD and 114μs on Mach running on the same system. Of the 114, 11 were due to the context switch, identical to BSD. An additional 18 were used by the MMU to map the message between user-space and kernel space. This adds up to only 29μs, longer than a traditional syscall, but not by much.

The rest, the majority of the actual problem, was due to the kernel performing tasks such as checking the message for port access rights. While it would seem this is an important security concern, in fact, it only makes sense in a UNIX-like system. For instance, a single-user operating system running a cell phone or robot might not need any of these features, and this is exactly the sort of system where Mach's pick-and-choose operating system would be most valuable. Likewise Mach caused problems when memory had been moved by the operating system, another task that only really makes sense if the system has more than one address space. DOS and the early Mac OS have a single large address space shared by all programs, so under these systems the mapping does not provide any benefits.

These realizations led to a series of second generation microkernels, which further reduced the complexity of the system and placed almost all functionality in the user space. For instance, the L4 kernel (version 2) includes only seven system calls and uses 12k of memory, whereas Mach 3 includes about 140 functions and uses about 330k of memory. IPC calls under L4 on a 486DX-50 take only 5μs, faster than a UNIX syscall on the same system, and over 20 times as fast as Mach. Of course this ignores the fact that L4 is not handling permissioning or security; but by leaving this to the user-space programs, they can select as much or as little overhead as they require.

The potential performance gains of L4 are tempered by the fact that the user-space applications will often have to provide many of the functions formerly supported by the kernel. In order to test the end-to-end performance, MkLinux in co-located mode was compared with an L4 port running in user-space. L4 added about 5%–10% overhead,[17] compared to Mach's 29%.[18]

These newer microkernels have revitalized the industry as a whole, and projects such as the GNU Hurd have received new attention as a result.


Software based on Mach

The following is a list of operating system kernels derived from Mach and operating systems with kernels derived from Mach:

-   GNU Hurd
-   Lites
-   MkLinux
-   mtXinu's Mach386
-   MachTen
-   MacMach
-   NeXTSTEP
-   OSF/1
-   Workplace OS
-   UNICOS MAX
-   The XNU kernel for Darwin,[19] the basis of macOS, iOS, watchOS, tvOS, and audioOS


See also

-   Microkernel
-   L4 microkernel family
-   EROS microkernel family
-   MERT


References


External links

-   , Carnegie Mellon University CS Project Mach Home Page

-   The Mach System – Appendix to _Operating System Concepts_ (8th ed) by Avi Silberschatz, Peter Baer Galvin and Greg Gagne
-   A comparison of Mach, Amoeba, and Chorus
-   Towards Real Microkernels – Contains numerous performance measurements, including those quoted in the article
-   The Performance of µ-Kernel-Based Systems – Contains an excellent performance comparison of Linux running as a monokernel, on Mach 3 and on L4
-   Mach kernel source code - Browsable version of the Mach Kernel source code on the FreeBSD/Linux kernel cross reference site
-   Unraveling the Mac OS X Microkernel Myth

Mach_(kernel) Category:Carnegie Mellon University software Category:Microkernels

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