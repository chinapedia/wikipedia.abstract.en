IBM MAINFRAMES are large computer systems produced by IBM since 1952. During the 1960s and 1970s, IBM dominated the large computer market. Current mainframe computer in IBM's line of business computers are developments of the basic design of the IBM System/360.


First and second generation

in 1957]] From 1952 into the late 1960s, IBM manufactured and marketed several large computer models, known as the IBM 700/7000 series. The first-generation 700s were based on vacuum tubes, while the later, second-generation 7000s used transistors. These machines established IBM's dominance in electronic data processing ("EDP"). IBM had two model categories: one (701, 704, 709, 7030, 7090, 7094, 7040, 7044) for engineering and scientific use, and one (702, 705, 705-II, 705-III, 7080, 7070, 7072, 7074, 7010) for commercial or data processing use. The two categories, scientific and commercial, generally used common peripherals but had completely different instruction sets, and there were incompatibilities even within each category.

IBM initially sold its computers without any software, expecting customers to write their own; programs were manually initiated, one at a time. Later, IBM provided compilers for the newly developed higher-level programming languages Fortran, COMTRAN and later COBOL. The first operating systems for IBM computers were written by IBM customers who did not wish to have their very expensive machines ($2M USD in the mid-1950s) sitting idle while operators set up jobs manually. These first operating systems were essentially scheduled work queues. It is generally thought that the first operating system used for real work was GM-NAA I/O, produced by General Motors' Research division in 1956. IBM enhanced one of GM-NAA I/O's successors, the SHARE Operating System, and provided it to customers under the name IBSYS.[1][2] As software became more complex and important, the cost of supporting it on so many different designs became burdensome, and this was one of the factors which led IBM to develop System/360 and its operating systems.[3]

The second generation (transistor-based) products were a mainstay of IBM's business and IBM continued to make them for several years after the introduction of the System/360. (Some IBM 7094s remained in service into the 1980s.)


Smaller machines

Prior to System/360, IBM also sold computers smaller in scale that were not considered mainframes, though they were still bulky and expensive by modern standards. These included:

-   IBM 650 (vacuum tube logic, decimal architecture, drum memory, business and scientific)
-   IBM 305 RAMAC (vacuum tube logic, first computer with disk storage; _see:_ Early IBM disk storage)
-   IBM 1400 series (business data processing; very successful and many 1400 peripherals were used with the 360s)
-   IBM 1620 (decimal architecture, engineering, scientific, and education)

IBM had difficulty getting customers to upgrade from the smaller machines to the mainframes because so much software had to be rewritten. The 7010 was introduced in 1962 as a mainframe-sized 1410. The later Systems 360 and 370 could emulate the 1400 machines. A desk-size machine with a different instruction set, the IBM 1130, was released concurrently with the System/360 to address the niche occupied by the 1620. It used the same EBCDIC character encoding as the 360 and was mostly programmed in Fortran, which was relatively easy to adapt to larger machines when necessary.

_Midrange computer_ is a designation used by IBM for a class of computer systems which fall in between mainframes and microcomputers.


IBM System/360

All that changed with the announcement of the System/360 (S/360) in April, 1964.[4] The System/360 was a single series of compatible models for both commercial and scientific use. The number "360" suggested a "360 degree," or "all-around" computer system. System/360 incorporated features which had previously been present on only either the commercial line (such as decimal arithmetic and byte addressing) or the engineering and scientific line (such as floating point arithmetic). Some of the arithmetic units and addressing features were optional on some models of the System/360. However, models were upward compatible and most were also downward compatible. The System/360 was also the first computer in wide use to include dedicated hardware provisions for the use of operating systems. Among these were supervisor and application mode programs and instructions, as well as built-in memory protection facilities. Hardware memory protection was provided to protect the operating system from the user programs (tasks) and user tasks from each other. The new machine also had a larger address space than the older mainframes, 24 bits addressing 8-bit bytes vs. a typical 18 bits addressing 36-bit words.

The smaller models in the System/360 line (e.g. the 360/30) were intended to replace the 1400 series while providing an easier upgrade path to the larger 360s. To smooth the transition from the second generation to the new line, IBM used the 360's microprogramming capability to emulate the more popular older models. Thus 360/30s with this added cost feature could run 1401 programs and the larger 360/65s could run 7094 programs. To run old programs, the 360 had to be halted and restarted in emulation mode. Many customers kept using their old software and one of the features of the later System/370 was the ability to switch to emulation mode and back under operating system control.

Operating systems for the System/360 family included OS/360 (with PCP, MFT, and MVT), BOS/360, TOS/360, and DOS/360.

The System/360 later evolved into the System/370, the System/390, and the 64-bit zSeries, System z, and zEnterprise machines. System/370 introduced virtual memory capabilities in all models other than the very first System/370 models; the OS/VS1 variant of OS/360 MFT, the OS/VS2 (SVS) variant of OS/360 MVT, and the DOS/VS variant of DOS/360 were introduced to use the virtual memory capabilities, followed by MVS, which, unlike the earlier virtual-memory operating systems, ran separate programs in separate address spaces, rather than running all programs in a single virtual address space. The virtual memory capabilities also allowed the system to support virtual machines; the VM/370 hypervisor would run one or more virtual machines running either standard System/360 or System/370 operating systems or the single-user Conversational Monitor System (CMS). A time-sharing VM system could run multiple virtual machines, one per user, with each virtual machine running an instance of CMS.


Today's systems

The zSeries family, introduced in 2000 with the z900, included IBM's newly designed 64-bit z/Architecture.

Processor units

The different processors on current IBM mainframes are:

-   CP, Central Processor: general-purpose processor
-   IFL, Integrated Facility for Linux: dedicated to Linux OSes (optionally under z/VM)
-   ICF, Integrated Coupling Facility: designed to support Parallel Sysplex operations
-   SAP, System Assist Processor: designed to handle various system accounting, management, and I/O channel operations
-   zAAP, System z Application Assist Processor: currently limited to run only Java and XML processing
-   zIIP, System z Integrated Information Processor: dedicated to run specific workloads including DB2, XML, and IPSec

Note that these are essentially identical, but distinguished for software cost control: all but CP are slightly restricted such they cannot be used to run arbitrary operating systems, and thus do not count in software licensing costs (which are typically based on the number of CPs).[5] There are other supporting processors typically installed inside mainframes such as cryptographic accelerators (CryptoExpress), the OSA-Express networking processor, and FICON Express disk I/O processors.

Software to allow users to run "traditional" workloads on zIIPs and zAAPs was briefly marketed by Neon Enterprise Software as "zPrime" but was withdrawn from the market in 2011 after a lawsuit by IBM.[6]

Operating systems

The primary operating systems in use on current IBM mainframes include z/OS (which followed MVS/ESA and OS/390 in the OS/360 lineage), z/VM (which followed VM/ESA and VM/XA in the CP-40 lineage), z/VSE (which is in the DOS/360 lineage), z/TPF (a successor of Airlines Control Program), and Linux on z Systems such as SUSE Linux Enterprise Server and others. A few systems run MUSIC/SP and UTS (Mainframe UNIX). In October 2008, Sine Nomine Associates introduced OpenSolaris on System z.

Middleware

Current IBM mainframes run all the major enterprise transaction processing environments and databases, including CICS, IMS, WebSphere Application Server, DB2, and Oracle. In many cases these software subsystems can run on more than one mainframe operating system.

Emulators

There are software-based emulators for the System/370, System/390, and System z hardware, including FLEX-ES, which runs under UnixWare or Linux,[7] and the freely available Hercules, which runs under Linux, FreeBSD, Solaris, macOS and Microsoft Windows. IBM offers an emulator called zPDT (System z Personal Development Tool) which runs on Linux on x86-64 machines.[8]


See also

-   List of IBM products
-   Amdahl Corporation
-   IBM midrange computer
-   IBM LinuxONE
-   IBM Secure Service Container


References


Further reading

-   -   Prasad, Nallur and Savit, Jeffrey (1994). _IBM Mainframes: Architecture and Design_, 2nd ed. McGraw-Hill Osborne Media. .
-


External links

-   Official IBM mainframe page (IBM Z)
-   -   IBM Mainframe Resources & Forum
-   IBM Archives: IBM Mainframes
-   IBM Archives: IBM Mainframe Family tree & chronology
-   IBM Archives: IBM Mainframe album

IBM_mainframe_computers Category:Computer-related introductions in 1952

[1] IBM 7090/94 IBSYS Operating System

[2]

[3] Chuck Boyer, _The 360 Revolution_

[4] IBM Archives: System/360 Announcement

[5]

[6]

[7]

[8]