MULTICS (Multiplexed Information and Computing Service) is an influential early time-sharing operating system which is based on the concept of a single-level memory.[1][2] Virtually all modern operating systems were heavily influenced by Multics – often through Unix, which was created by some of the people who had worked on Multics – either directly (Linux, macOS) or indirectly (Windows NT).


Overview

Initial planning and development for Multics started in 1964, in Cambridge, Massachusetts. Originally it was a cooperative project led by MIT (Project MAC with Fernando Corbató) along with General Electric and Bell Labs. It was developed on the GE 645 computer, which was specially designed for it; the first one was delivered to MIT in January, 1967.

Multics was conceived as a commercial product for General Electric, and became one for Honeywell, albeit not very successfully. Due to its many novel and valuable ideas, Multics had a significant impact on computer science despite its faults.[3]

Multics had numerous features intended to ensure high availability so that it would support a computing utility similar to the telephone and electricity utilities. Modular hardware structure and software architecture were used to achieve this. The system could grow in size by simply adding more of the appropriate resource, be it computing power, main memory, or disk storage. Separate access control lists on every file provided flexible information sharing, but complete privacy when needed. Multics had a number of standard mechanisms to allow engineers to analyze the performance of the system, as well as a number of adaptive performance optimization mechanisms.


Novel ideas

Multics implemented a single-level store for data access, discarding the clear distinction between files (called _segments_ in Multics) and _process memory_. The memory of a process consisted solely of segments that were mapped into its address space. To read or write to them, the process simply used normal central processing unit (CPU) instructions, and the operating system took care of making sure that all the modifications were saved to disk. In POSIX terminology, it was as if every file were mmap()ed; however, in Multics there was no concept of _process memory_, separate from the memory used to hold mapped-in files, as Unix has. _All_ memory in the system was part of _some_ segment, which appeared in the file system; this included the temporary scratch memory of the process, its kernel stack, etc.

One disadvantage of this was that the size of segments was limited to 256 kilowords, just over 1 MiB. This was due to the particular hardware architecture of the machines on which Multics ran, having a 36-bit word size and index registers (used to address within segments) of half that size (18 bits). Extra code had to be used to work on files larger than this, called multisegment files. In the days when one megabyte of memory was prohibitively expensive, and before large databases and later huge bitmap graphics, this limit was rarely encountered.

Another major new idea of Multics was dynamic linking, in which a running process could request that other segments be added to its address space, segments which could contain code that it could then execute. This allowed applications to automatically use the latest version of any external routine they called, since those routines were kept in other segments, which were dynamically linked only when a process first tried to begin execution in them. Since different processes could use different search rules, different users could end up using different versions of external routines automatically. Equally importantly, with the appropriate settings on the Multics security facilities, the code in the other segment could then gain access to data structures maintained in a different process.

Thus, to interact with an application running in part as a daemon (in another process), a user's process simply performed a normal procedure-call instruction to a code segment to which it had dynamically linked (a code segment that implemented some operation associated with the daemon). The code in that segment could then modify data maintained and used in the daemon. When the action necessary to commence the request was completed, a simple procedure return instruction returned control of the user's process to the user's code.

The single-level store and dynamic linking are still not available to their full power in other widely used operating systems, despite the rapid and enormous advance in the computer field since the 1960s. They are becoming more widely accepted and available in more limited forms, for example, dynamic linking.

Multics also supported extremely aggressive on-line reconfiguration: central processing units, memory banks, disk drives, etc. could be added and removed while the system continued operating. At the MIT system, where most early software development was done, it was common practice to split the multiprocessor system into two separate systems during off-hours by incrementally removing enough components to form a second working system, leaving the rest still running the original logged-in users. System software development testing could be done on the second system, then the components of the second system were added back to the main user system, without ever having shut it down. Multics supported multiple CPUs; it was one of the earliest multiprocessor systems.

Multics was the first major operating system to be designed as a secure system from the outset.[4] Despite this, early versions of Multics were broken into repeatedly.[5] This led to further work that made the system much more secure and prefigured modern security engineering techniques. Break-ins became very rare once the second-generation hardware base was adopted; it had hardware support for ring-oriented security, a multilevel refinement of the concept of master mode.

Multics was the first operating system to provide a hierarchical file system,[6][7] and file names could be of almost arbitrary length and syntax. A given file or directory could have multiple names (typically a long and short form), and symbolic links between directories were also supported. Multics was the first to use the now-standard concept of per-process stacks in the kernel, with a separate stack for each security ring. It was also the first to have a command processor implemented as ordinary user code – an idea later used in the Unix shell. It was also one of the first written in a high-level language (Multics PL/I), after the Burroughs MCP system written in ALGOL.[8]


Project history

In 1964, Multics was developed initially for the GE-645 mainframe, a 36-bit system. GE's computer business, including Multics, was taken over by Honeywell in 1970; around 1973, Multics was supported on the Honeywell 6180 machines, which included security improvements including hardware support for protection rings.

Bell Labs pulled out of the project in 1969; some of the people who had worked on it there went on to create the Unix system. Multics development continued at MIT and General Electric.

Honeywell continued system development until 1985. About 80 multimillion-dollar sites were installed, at universities, industry, and government sites. The French university system had several installations in the early 1980s. After Honeywell stopped supporting Multics, users migrated to other systems like Unix.

In 1985, Multics was issued certification as a B2 level secure operating system using the Trusted Computer System Evaluation Criteria from the National Computer Security Center (NCSC) a division of the NSA, the first operating system evaluated to this level.

Multics was distributed from 1975 to 2000 by Groupe Bull in Europe, and by Bull HN Information Systems Inc. in the United States. In 2006, Bull SAS open sourced Multics versions MR10.2, MR11.0, MR12.0, MR12.1, MR12.2, MR12.3, MR12.4 & MR12.5.[9]

The last known Multics installation running natively on Honeywell hardware was shut down on October 30, 2000, at the Canadian Department of National Defence in Halifax, Nova Scotia, Canada.[10]

Current status

In 2006 Bull HN released the source code for MR12.5, the final 1992 Multics release, to MIT.[11] Most of the system is now available as open-source software with the exception of some optional pieces such as TCP/IP.[12]

In 2014 Multics was successfully run on current hardware using a simulator.[13] The 1.0 release of the simulator is now available.[14] Release 12.6f of Multics accompanies the 1.0 release of the emulator, and adds a few new features, including command line recall and editing using the video system.[15]


Retrospective observations

Peter H. Salus, author of a book covering Unix's early years,[16] stated one position: "With Multics they tried to have a much more versatile and flexible operating system, and it failed miserably".[17] This position, however, has been widely discredited in the computing community because many of Multics' technical innovations are used in modern commercial computing systems.[18]

The permanently resident kernel of Multics, a system derided in its day as being too large and complex, was only 135 KB of code. In comparison, a Linux system in 2007 might have occupied 18 MB.[19] The first MIT GE-645 had 512 kilowords of memory (2 MiB), a truly enormous amount at the time, and the kernel used only a moderate portion of Multics main memory.

The entire system, including the operating system and the complex PL/1 compiler, user commands, and subroutine libraries, consisted of about 1500 source modules. These averaged roughly 200 lines of source code each, and compiled to produce a total of roughly 4.5 MiB of procedure code, which was fairly large by the standards of the day.

Multics compilers generally optimised more for code density than CPU performance, for example using small sub-routines called _operators_ for short standard code sequences, which makes comparison of object code size with modern systems less useful. High code density was a good optimisation choice for Multics as a multi-user system with expensive main memory.


Influence on other projects

Unix

The design and features of Multics greatly influenced the Unix operating system, which was originally written by two Multics programmers, Ken Thompson and Dennis Ritchie. Superficial influence of Multics on Unix is evident in many areas, including the naming of some commands. But the internal design philosophy was quite different, focusing on keeping the system small and simple, and so correcting some deficiencies of Multics because of its high resource demands on the limited computer hardware of the time.

The name _Unix_ (originally _Unics_) is itself a pun on _Multics_. The _U_ in Unix is rumored to stand for _uniplexed_ as opposed to the _multiplexed_ of Multics, further underscoring the designers' rejections of Multics' complexity in favor of a more straightforward and workable approach for smaller computers. (Garfinkel and Abelson[20] cite an alternative origin: Peter Neumann at Bell Labs, watching a demonstration of the prototype, suggested the pun name UNICS – pronounced "eunuchs" – as a "castrated Multics", although Dennis Ritchie is said to have denied this.[21])

Ken Thompson, in a transcribed 2007 interview with Peter Seibel[22] refers to Multics as "overdesigned and overbuilt and over everything. It was close to unusable. They [Massachusetts Institute of Technology] still claim it's a monstrous success, but it just clearly wasn't". He admitted however, that "the things that I liked enough (about Multics) to actually take were the hierarchical file system and the shell — a separate process that you can replace with some other process".

Other operating systems

The Prime Computer operating system, PRIMOS, was referred to as "Multics in a shoebox" by William Poduska, a founder of the company. Poduska later moved on to found Apollo Computer, whose AEGIS and later Domain/OS operating systems, sometimes called "Multics in a matchbox", extended the Multics design to a heavily networked graphics workstation environment.

The Stratus VOS operating system of Stratus Computer (now Stratus Technologies) was very strongly influenced by Multics, and both its external user interface and internal structure bear many close resemblances to the older project. The high-reliability, availability, and security features of Multics were extended in Stratus VOS to support a new line of fault tolerant computer systems supporting secure, reliable transaction processing. Stratus VOS is the most directly-related descendant of Multics still in active development and production usage today.

The protection architecture of Multics, restricting the ability of code at one level of the system to access resources at another, was adopted as the basis for the security features of ICL's VME operating system.


See also

-   Time-sharing system evolution
-   Peter J. Denning
-   Jack B. Dennis
-   Robert Fano – director of Project MAC at MIT (1963–1968)
-   Robert M. Graham
-   J. C. R. Licklider – director of Project MAC at MIT (1968–1971)
-   Peter G. Neumann
-   Elliott Organick
-   Louis Pouzin – introduced the term _shell_ for the command language used in Multics
-   Jerome H. Saltzer
-   Roger R. Schell
-   Glenda Schroeder – implemented the first command line user interface shell and proposed the first email system with Pouzin and Crisman
-   Victor A. Vyssotsky


References


Further reading

The literature contains a large number of papers about Multics, and various components of it; a fairly complete list is available at the Multics Bibliography page. The most important and/or informative ones are listed below.

-   F. J. Corbató, V. A. Vyssotsky, _Introduction and Overview of the Multics System_ (AFIPS 1965) is a good introduction to the system.
-   F. J. Corbató, C. T. Clingen, J. H. Saltzer, _Multics – The First Seven Years_ (AFIPS, 1972) is an excellent review, written after a considerable period of use and improvement over the initial efforts.
-   J. J. Donovan, S. Madnick, Operating Systems, is a fundamental read on operating systems.
-   J. J. Donovan, Systems Programming, is a good introduction into systems programming and operating systems.

Technical details

-   Jerome H. Saltzer, _Introduction to Multics_ (MIT Project MAC, 1974) is a considerably longer introduction to the system, geared towards actual users.
-   Elliott I. Organick, _The Multics System: An Examination of Its Structure_ (MIT Press, 1972) is the standard work on the system, although it documents an early version, and some features described therein never appeared in the actual system.
-   V. A. Vyssotsky, F. J. Corbató, R. M. Graham, _Structure of the Multics Supervisor_ (AFIPS 1965) describes the basic internal structure of the Multics kernel.
-   Jerome H. Saltzer, _Traffic Control in a Multiplexed Computer System_ (MIT Project MAC, June 1966) is the original description of the idea of switching kernel stacks; one of the classic papers of computer science.
-   R. C. Daley, P. G. Neumann, _A General Purpose File System for Secondary Storage_ (AFIPS, 1965) describes the file system, including the access control and backup mechanisms.
-   R. J. Feiertag, E. I. Organick, _The Multics Input/Output System_. Describes the lower levels of the I/O implementation.
-   A. Bensoussan, C. T. Clingen, R. C. Daley, _The Multics Virtual Memory: Concepts and Design_, (ACM SOSP, 1969) describes the Multics memory system in some detail.
-   Paul Green, _Multics Virtual Memory – Tutorial and Reflections_ is a good in-depth look at the Multics storage system.
-   Roger R. Schell, _Dynamic Reconfiguration in a Modular Computer System_ (MIT Project MAC, 1971) describes the reconfiguration mechanisms.

Security

-   Paul A. Karger, Roger R. Schell, _Multics Security Evaluation: Vulnerability Analysis_ (Air Force Electronic Systems Division, 1974) describes the classic attacks on Multics security by a "tiger team".
-   Jerome H. Saltzer, Michael D. Schroeder, _The Protection of Information in Computer Systems_ (Proceedings of the IEEE, September 1975) describes the fundamentals behind the first round of security upgrades; another classic paper.
-   M. D. Schroeder, D. D. Clark, J. H. Saltzer, D. H. Wells. _Final Report of the Multics Kernel Design Project_ (MIT LCS, 1978) describes the security upgrades added to produce an even more improved version.
-   Paul A. Karger, Roger R. Schell, _Thirty Years Later: Lessons from the Multics Security Evaluation_ (IBM, 2002) is an interesting retrospective which compares actual deployed security in today's hostile environment with what was demonstrated to be possible decades ago. It concludes that Multics offered considerably stronger security than most systems commercially available in 2002.


External links

-   multicians.org is a comprehensive site with a lot of material
    -   Multics papers online
    -   Multics glossary
    -   Myths discusses numerous myths about Multics in some detail, including the myths that it failed, that it was big and slow, as well as a few understandable misapprehensions
    -   Multics security
    -   Unix and Multics
    -   Multics general info and FAQ Includes extensive overview of other software systems influenced by Multics
-   Honeywell, Inc., MULTICS records, 1965–1982. Charles Babbage Institute, University of Minnesota. Multics development records include the second MULTICS System Programmers Manual; MULTICS Technical Bulletins that describe procedures, applications, and problems, especially concerning security; and returned "Request for Comments Forms" that include technical papers and thesis proposals.
-   Official source code archive at MIT
-   -   Multics repository at Stratus Computer
-   Multics at Universitaet Mainz
-   Active project to emulate the Honeywell dps-8/m Multics CPU
-   Various scanned Multics manuals
-   Multicians.org and the History of Operating Systems, a critical review of Multicians.org, plus a capsule history of Multics.

Category:1969 software Category:AT&T computers Category:Bell Labs Category:Discontinued operating systems Category:Free software operating systems Category:General Electric mainframe computers Category:Honeywell mainframe computers Category:Massachusetts Institute of Technology software Category:Multics-like Category:Time-sharing operating systems

[1] Dennis M. Ritchie, "The Evolution of the Unix Time-sharing System", Communications of the ACM, Vol. 17, 1984, pp. 365-375.

[2]

[3]

[4] Jerome H. Saltzer, "Protection and the Control of Information Sharing in Multics", in "Introduction to Multics", MAC TR-123, Project MAC, Cambridge, February 1974; pg. 2-41.

[5]

[6]

[7] R. C. Daley and P. G. Neumann, "A general-purpose file system for secondary storage", AFIPS '65 (Fall, part I) Proceedings of the November 30 – December 1, 1965

[8] R. A. Freiburghouse, "The Multics PL/1 Compiler", General Electric Company, Cambridge, Massachusetts, 1969.

[9] Multics history MIT

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]  Quoting Peter Salus.

[18]

[19]

[20] Garfinkel, Simson and Abelson, Harold. Architects of the Information Society: Thirty-Five Years of the Laboratory for Computer Science at MIT. MIT Press, 1999.

[21]

[22] Peter Seibel. Coders at Work: Reflections on the Craft of Programming. APress Publications, 2007.