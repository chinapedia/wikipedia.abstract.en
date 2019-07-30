z13. On the right is the IBM LinuxONE Rockhopper.]] mainframe]] MAINFRAME COMPUTERS or MAINFRAMES (colloquially referred to as "big iron")[1] are computers used primarily by large organizations for critical applications; bulk data processing, such as census, industry and consumer statistics, enterprise resource planning; and transaction processing. They are larger and have more processing power than some other classes of computers: minicomputers, servers, workstations, and personal computers.

The term originally referred to the large cabinets called "main frames" that housed the central processing unit and main memory of early computers.[2][3] Later, the term was used to distinguish high-end commercial machines from less powerful units.[4] Most large-scale computer system architectures were established in the 1960s, but continue to evolve. Mainframe computers are often used as servers.


Design

Modern mainframe design is characterized less by raw computational speed and more by:

-   Redundant internal engineering resulting in high reliability and security
-   Extensive input-output ("I/O") facilities with the ability to offload to separate engines
-   Strict backward compatibility with older software
-   High hardware and computational utilization rates through virtualization to support massive throughput.
-   Hot-swapping of hardware, such as processors and memory.

Their high stability and reliability enable these machines to run uninterrupted for very long periods of time, with mean time between failures (MTBF) measured in decades.

Mainframes have high availability, one of the primary reasons for their longevity, since they are typically used in applications where downtime would be costly or catastrophic. The term reliability, availability and serviceability (RAS) is a defining characteristic of mainframe computers. Proper planning and implementation is required to realize these features. In addition, mainframes are more secure than other computer types: the NIST vulnerabilities database, US-CERT, rates traditional mainframes such as IBM Z (previously called z Systems, System z and zSeries), Unisys Dorado and Unisys Libra as among the most secure with vulnerabilities in the low single digits as compared with thousands for Windows, UNIX, and Linux.[5] Software upgrades usually require setting up the operating system or portions thereof, and are non-disruptive only when using virtualizing facilities such as IBM z/OS and Parallel Sysplex, or Unisys XPCL, which support workload sharing so that one system can take over another's application while it is being refreshed.

In the late 1950s, mainframes had only a rudimentary interactive interface (the console), and used sets of punched cards, paper tape, or magnetic tape to transfer data and programs. They operated in batch mode to support back office functions such as payroll and customer billing, most of which were based on repeated tape-based sorting and merging operations followed by line printing to preprinted continuous stationery. When interactive user terminals were introduced, they were used almost exclusively for applications (e.g. airline booking) rather than program development. Typewriter and Teletype devices were common control consoles for system operators through the early 1970s, although ultimately supplanted by keyboard/display devices.

By the early 1970s, many mainframes acquired interactive user terminals[6] operating as timesharing computers, supporting hundreds of users simultaneously along with batch processing. Users gained access through keyboard/typewriter terminals and specialized text terminal CRT displays with integral keyboards, or later from personal computers equipped with terminal emulation software. By the 1980s, many mainframes supported graphic display terminals, and terminal emulation, but not graphical user interfaces. This form of end-user computing became obsolete in the 1990s due to the advent of personal computers provided with GUIs. After 2000, modern mainframes partially or entirely phased out classic "green screen" and color display terminal access for end-users in favour of Web-style user interfaces.

The infrastructure requirements were drastically reduced during the mid-1990s, when CMOS mainframe designs replaced the older bipolar technology. IBM claimed that its newer mainframes reduced data center energy costs for power and cooling, and reduced physical space requirements compared to server farms.[7]


Characteristics

mainframe]] Modern mainframes can run multiple different instances of operating systems at the same time. This technique of virtual machines allows applications to run as if they were on physically distinct computers. In this role, a single mainframe can replace higher-functioning hardware services available to conventional servers. While mainframes pioneered this capability, virtualization is now available on most families of computer systems, though not always to the same degree or level of sophistication.[8]

Mainframes can add or hot swap system capacity without disrupting system function, with specificity and granularity to a level of sophistication not usually available with most server solutions. Modern mainframes, notably the IBM zSeries, System z9 and System z10 servers, offer two levels of virtualization: logical partitions (LPARs, via the PR/SM facility) and virtual machines (via the z/VM operating system). Many mainframe customers run two machines: one in their primary data center, and one in their backup data center—fully active, partially active, or on standby—in case there is a catastrophe affecting the first building. Test, development, training, and production workload for applications and databases can run on a single machine, except for extremely large demands where the capacity of one machine might be limiting. Such a two-mainframe installation can support continuous business service, avoiding both planned and unplanned outages. In practice many customers use multiple mainframes linked either by Parallel Sysplex and shared DASD (in IBM's case), or with shared, geographically dispersed storage provided by EMC or Hitachi.

Mainframes are designed to handle very high volume input and output (I/O) and emphasize throughput computing. Since the late-1950s,[9] mainframe designs have included subsidiary hardware[10] (called _channels_ or _peripheral processors_) which manage the I/O devices, leaving the CPU free to deal only with high-speed memory. It is common in mainframe shops to deal with massive databases and files. Gigabyte to terabyte-size record files are not unusual.[11] Compared to a typical PC, mainframes commonly have hundreds to thousands of times as much data storage online,[12] and can access it reasonably quickly. Other server families also offload I/O processing and emphasize throughput computing.

Mainframe return on investment (ROI), like any other computing platform, is dependent on its ability to scale, support mixed workloads, reduce labor costs, deliver uninterrupted service for critical business applications, and several other risk-adjusted cost factors.

Mainframes also have execution integrity characteristics for fault tolerant computing. For example, z900, z990, System z9, and System z10 servers effectively execute result-oriented instructions twice, compare results, arbitrate between any differences (through instruction retry and failure isolation), then shift workloads "in flight" to functioning processors, including spares, without any impact to operating systems, applications, or users. This hardware-level feature, also found in HP's NonStop systems, is known as lock-stepping, because both processors take their "steps" (_i.e._ instructions) together. Not all applications absolutely need the assured integrity that these systems provide, but many do, such as financial transaction processing.


Current market

IBM, with z Systems, continues to be a major manufacturer in the mainframe market. Unisys manufactures ClearPath Libra mainframes, based on earlier Burroughs MCP products and ClearPath Dorado mainframes based on Sperry Univac OS 1100 product lines. In 2000, Hitachi co-developed the zSeries z900 with IBM to share expenses, but subsequently the two companies have not collaborated on new Hitachi models. Hewlett-Packard sells its unique NonStop systems, which it acquired with Tandem Computers and which some analysts classify as mainframes. Groupe Bull's GCOS, Fujitsu (formerly Siemens) BS2000, and Fujitsu-ICL VME mainframes are still available in Europe, and Fujitsu (formerly Amdahl) GS21 mainframes globally. NEC with ACOS and Hitachi with AP10000-VOS3[13] still maintain mainframe hardware businesses in the Japanese market.

The amount of vendor investment in mainframe development varies with market share. Fujitsu and Hitachi both continue to use custom S/390-compatible processors, as well as other CPUs (including POWER and Xeon) for lower-end systems. Bull uses a mixture of Itanium and Xeon processors. NEC uses Xeon processors for its low-end ACOS-2 line, but develops the custom NOAH-6 processor for its high-end ACOS-4 series. IBM continues to pursue a different business strategy of mainframe investment and growth. IBM has its own large research and development organization designing new, homegrown CPUs, including mainframe processors such as 2012's 5.5 GHz six-core zEC12 mainframe microprocessor. Unisys produces code compatible mainframe systems that range from laptops to cabinet-sized mainframes that utilize homegrown CPUs as well as Xeon processors. IBM is rapidly expanding its software business, including its mainframe software portfolio, to seek additional revenue and profits.[14]

Furthermore, there exists a market for software applications to manage the performance of mainframe implementations. In addition to IBM, significant players in this market include BMC,[15] Compuware,[16][17] and CA Technologies.[18]


History

mainframe (1964)]] Several manufacturers produced mainframe computers from the late 1950s through the 1970s. The US group of manufacturers was first known as "IBM and the Seven Dwarfs":[19] usually Burroughs, UNIVAC, NCR, Control Data, Honeywell, General Electric and RCA, although some lists varied. Later, with the departure of General Electric and RCA, it was referred to as IBM and the BUNCH. IBM's dominance grew out of their 700/7000 series and, later, the development of the 360 series mainframes. The latter architecture has continued to evolve into their current zSeries mainframes which, along with the then Burroughs and Sperry (now Unisys) MCP-based and OS1100 mainframes, are among the few mainframe architectures still extant that can trace their roots to this early period. While IBM's zSeries can still run 24-bit System/360 code, the 64-bit zSeries and System z9 CMOS servers have nothing physically in common with the older systems. Notable manufacturers outside the US were Siemens and Telefunken in Germany, ICL in the United Kingdom, Olivetti in Italy, and Fujitsu, Hitachi, Oki, and NEC in Japan. The Soviet Union and Warsaw Pact countries manufactured close copies of IBM mainframes during the Cold War; the BESM series and Strela are examples of an independently designed Soviet computer.

Shrinking demand and tough competition started a shakeout in the market in the early 1970s—RCA sold out to UNIVAC and GE sold its business to Honeywell; between 1986 and 1990 Honeywell was bought out by Bull; UNIVAC became a division of Sperry, which later merged with Burroughs to form Unisys Corporation in 1986.

During the 1980s, minicomputer-based systems grew more sophisticated and were able to displace the lower-end of the mainframes. These computers, sometimes called _departmental computers_ were typified by the DEC VAX.

In 1991, AT&T Corporation briefly owned NCR. During the same period, companies found that servers based on microcomputer designs could be deployed at a fraction of the acquisition price and offer local users much greater control over their own systems given the IT policies and practices at that time. Terminals used for interacting with mainframe systems were gradually replaced by personal computers. Consequently, demand plummeted and new mainframe installations were restricted mainly to financial services and government. In the early 1990s, there was a rough consensus among industry analysts that the mainframe was a dying market as mainframe platforms were increasingly replaced by personal computer networks. InfoWorld's Stewart Alsop infamously predicted that the last mainframe would be unplugged in 1996; in 1993, he cited Cheryl Currid, a computer industry analyst as saying that the last mainframe "will stop working on December 31, 1999",[20] a reference to the anticipated Year 2000 problem (Y2K).

That trend started to turn around in the late 1990s as corporations found new uses for their existing mainframes and as the price of data networking collapsed in most parts of the world, encouraging trends toward more centralized computing. The growth of e-business also dramatically increased the number of back-end transactions processed by mainframe software as well as the size and throughput of databases. Batch processing, such as billing, became even more important (and larger) with the growth of e-business, and mainframes are particularly adept at large-scale batch computing. Another factor currently increasing mainframe use is the development of the Linux operating system, which arrived on IBM mainframe systems in 1999 and is typically run in scores or up to ~ 8,000 virtual machines on a single mainframe. Linux allows users to take advantage of open source software combined with mainframe hardware RAS. Rapid expansion and development in emerging markets, particularly People's Republic of China, is also spurring major mainframe investments to solve exceptionally difficult computing problems, e.g. providing unified, extremely high volume online transaction processing databases for 1 billion consumers across multiple industries (banking, insurance, credit reporting, government services, etc.) In late 2000, IBM introduced 64-bit z/Architecture, acquired numerous software companies such as Cognos and introduced those software products to the mainframe. IBM's quarterly and annual reports in the 2000s usually reported increasing mainframe revenues and capacity shipments. However, IBM's mainframe hardware business has not been immune to the recent overall downturn in the server hardware market or to model cycle effects. For example, in the 4th quarter of 2009, IBM's System z hardware revenues decreased by 27% year over year. But MIPS (millions of instructions per second) shipments increased 4% per year over the past two years.[21] Alsop had himself photographed in 2000, symbolically eating his own words ("death of the mainframe").[22]

In 2012, NASA powered down its last mainframe, an IBM System z9.[23] However, IBM's successor to the z9, the z10, led a New York Times reporter to state four years earlier that "mainframe technology — hardware, software and services — remains a large and lucrative business for I.B.M., and mainframes are still the back-office engines behind the world’s financial markets and much of global commerce".[24] , while mainframe technology represented less than 3% of IBM's revenues, it "continue[d] to play an outsized role in Big Blue's results".[25]

In 2015, IBM launched the IBM z13[26] and on June 2017 the IBM z14.[27][28]


Differences from supercomputers

A supercomputer is a computer at the leading edge of data processing capability, with respect to calculation speed. Supercomputers are used for scientific and engineering problems (high-performance computing) which crunch numbers and data,[29] while mainframes focus on transaction processing. The differences are:

-   Mainframes are built to be reliable for transaction processing (measured by TPC-metrics; not used or helpful for most supercomputing applications) as it is commonly understood in the business world: the commercial exchange of goods, services, or money. A typical transaction, as defined by the Transaction Processing Performance Council,[30] updates a database system for inventory control (goods), airline reservations (services), or banking (money) by adding a record. A transaction may refer to a set of operations including disk read/writes, operating system calls, or some form of data transfer from one subsystem to another which is not measured by the processing speed of the CPU. Transaction processing is not exclusive to mainframes but is also used by microprocessor-based servers and online networks.
-   Supercomputer performance is measured in floating point operations per second (FLOPS)[31] or in traversed edges per second or TEPS,[32] metrics that are not very meaningful for mainframe applications, while mainframes are sometimes measured in millions of instructions per second (MIPS), although the definition depends on the instruction mix measured.[33] Examples of integer operations measured by MIPS include adding numbers together, checking values or moving data around in memory (while moving information to and from storage, so-called I/O is most helpful for mainframes; and within memory, only helping indirectly). Floating point operations are mostly addition, subtraction, and multiplication (of _binary_ floating point in supercomputers; measured by FLOPS) with enough digits of precision to model continuous phenomena such as weather prediction and nuclear simulations (only recently standardized _decimal_ floating point, not used in supercomputers, are appropriate for monetary values such as those useful for mainframe applications). In terms of computational speed, supercomputers are more powerful.[34]

Mainframes and supercomputers cannot always be clearly distinguished; up until the early 1990s, many supercomputers were based on a mainframe architecture with supercomputing extensions. An example of such a system is the HITAC S-3800, which was instruction-set compatible with IBM System/370 mainframes, and could run the Hitachi VOS3 operating system (a fork of IBM MVS).[35] The S-3800 therefore can be seen as being both simultaneously a supercomputer and also an IBM-compatible mainframe.

In 2007,[36] an amalgamation of the different technologies and architectures for supercomputers and mainframes has led to the so-called gameframe.


See also

-   Computer types
-   Failover
-   Gameframe
-   Channel I/O
-   Cloud computing


Notes


References


External links

-   IBM Systems Mainframe Magazine

-   IBM z Systems mainframes
-   Mainframe Computer Support Forum since 1998
-   Univac 9400, a mainframe from the 1960s, still in use in a German computer museum
-   Lectures in the History of Computing: Mainframes (archived copy from the Internet Archive)

Mainframe_computers

[1]

[2]

[3]

[4]

[5]

[6] Some had been introduced in the 1960s, but their deployment became more common in the 1970s

[7]

[8]

[9] E.g., the IBM 709 had channels in 1958

[10] sometimes computers, sometimes more limited

[11]

[12]

[13] Hitachi AP10000 - VOS3

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

[29] High-Performance Graph Analysis Retrieved on February 15, 2012

[30] Transaction Processing Performance Council Retrieved on December 25, 2009.

[31] The "Top 500" list of High Performance Computing (HPC) systems Retrieved on July 19, 2016

[32] The Graph 500 Retrieved on February 19, 2012

[33] Resource consumption for billing and performance purposes is measured in units of a million service units (MSUs), but the definition of MSU varies from processor to processor so that MSUs are useless for comparing processor performance.

[34] World's Top Supercomputer Retrieved on December 25, 2009

[35]

[36]