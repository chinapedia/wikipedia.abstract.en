MYRINET, ANSI/VITA 26-1998, is a high-speed local area networking system designed by the company Myricom to be used as an interconnect between multiple machines to form computer clusters.


Description

Myrinet was promoted as having lower protocol overhead than standards such as Ethernet, and therefore better throughput, less interference, and lower latency while using the host CPU. Although it can be used as a traditional networking system, Myrinet is often used directly by programs that "know" about it, thereby bypassing a call into the operating system.

Myrinet physically consists of two fibre optic cables, upstream and downstream, connected to the host computers with a single connector. Machines are connected via low-overhead routers and switches, as opposed to connecting one machine directly to another. Myrinet includes a number of fault-tolerance features, mostly backed by the switches. These include flow control, error control, and "heartbeat" monitoring on every link. The "fourth-generation" Myrinet, called Myri-10G, supported a 10 Gbit/s data rate and can use 10 Gigabit Ethernet on PHY, the physical layer (cables, connectors, distances, signaling). Myri-10G started shipping at the end of 2005.

Myrinet was approved in 1998 by the American National Standards Institute for use on the VMEbus as ANSI/VITA 26-1998.[1]. One of the earliest publications on Myrinet is a 1995 IEEE article[2].

Performance

Myrinet is a lightweight protocol with little overhead that allows it to operate with throughput close to the basic signaling speed of the physical layer. For supercomputing, the low latency of Myrinet is even more important than its throughput performance, since, according to Amdahl's law, a high-performance parallel system tends to be bottlenecked by its slowest sequential process, which in all but the most embarrassingly parallel supercomputer workloads is often the latency of message transmission across the network.

Deployment

According to Myricom, 141 (28.2%) of the June 2005 TOP500 supercomputers used Myrinet technology. In the November 2005 TOP500, the number of supercomputers using Myrinet was down to 101 computers, or 20.2%, in November 2006, 79 (15.8%), and by November 2007, 18 (3.6%), a long way behind gigabit Ethernet at 54% and InfiniBand at 24.2%.

In the June 2014 TOP500 list, the number of supercomputers using Myrinet interconnect was 1 (0.2%).[3][4]

In November, 2013, the assets of Myricom (including the Myrinet technology) were acquired by CSP Inc.[5] In 2016, it was reported that Google had also offered to buy the company.[6]


See also

-   HIPPI
-   InfiniBand
-   List of device bandwidths
-   NUMAlink
-   Quadrics
-   RapidIO
-   Scalable Coherent Interconnect (SCI)


References


External links

-   -   CSPI, current owner or Myrinet.

Category:Supercomputing Category:Computer networks

[1]

[2] http://ieeexplore.ieee.org/document/342015

[3] List Statistics

[4] Deployment Time Series Chart

[5]

[6]