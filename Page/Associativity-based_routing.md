ASSOCIATIVITY-BASED ROUTING[1][2][3][4] (commonly known as ABR) is a mobile routing protocol invented for wireless ad hoc networks, also known as mobile ad hoc networks (MANETs) and wireless mesh networks. ABR was invented in 1993, filed for a U.S. patent in 1996, and granted the patent in 1999. ABR was invented by Chai Keong Toh while doing his Ph.D. at Cambridge University.


Route discovery phase

ABR has three phases. The first phase is the route discovery phase. When a user initiates to transmit data, the protocol will intercept the request and broadcast a search packet over the wireless interfaces. As the search packet propagates node to node, node identity and stability information are appended to the packet. When the packet eventually reaches the destination node, it would have received all the information describing the path from source to destination. When that happens, the destination then chose the best route (because there may be more than one path from the source to the destination) and send a REPLY back to the source node, over the chosen path.

Note that when the packet transits backwards from destination to the source, each intermediate nodes will update their routing table, signifying that it will now know how to route when it receives data from the upstream node. When the source node receives the REPLY, the route is successfully discovered and established. This process is done in real-time and only takes a few milli-seconds.


Route reconstruction phase

ABR establishes routes that are long-lived or associativity-stable, thus most routes established will seldom experience link breaks; however, if one or more links are broken, their ABR will immediately invoke the RRC – route reconstruction phase. The RRC basically repairs the broken link by having the upstream node (which senses the link break) perform a localized route repair. The localized route repair is performed by carrying out a localized broadcast query that searches for an alternative long-lived partial route to the destination.

ABR route maintenance consists of:

-   (a) partial route discovery,
-   (b) invalid route erasure,
-   (c) valid route update, and
-   (d) new route discovery (worse case).


Route deletion phase

When a discovered route is no longer needed, a RD (Route Delete) packet will be initiated by the source node so that all intermediate nodes in the route will update their routing table entries and stopped relay data packets associated with this deleted route.

In addition to using RD to delete a route, ABR can also implement a soft state approach where route entries are expired or invalidated after timed out, when there is no traffic activity related to the route over a period of time.


Practicality

In 1998, ABR was successfully implemented[5][6][7][8] into the Linux kernel, in various different branded laptops (IBM Thinkpad, COMPAQ, Toshiba, etc.) that are equipped with WaveLAN 802.11a PCMCIA wireless adapters. A working 6-node wide wireless ad hoc network spanning a distance of over 600 meters was achieved and the successful event was published in Mobile Computing Magazine in 1999. Various tests were performed with the network:

1.  Transmission of up to 500MBytes of data from source to destination over 3-hop route.
2.  Link breaks and automatic link repairs proven to be working
3.  Automatic Route Discovery
4.  Route Delete
5.  Web Server in Ad Hoc mode – with source being client and destination being the web server
6.  Transmission of multimedia information (audio[9] and video)
7.  TELNET over Ad Hoc
8.  FTP over Ad Hoc
9.  HTTP over Ad Hoc

Also, network performance measurements on the following were made:

1.  End-to-end delay
2.  TCP throughput
3.  Packet loss ratio
4.  Route discovery delay
5.  Route repair delay
6.  Impact of packet size on throughput
7.  Impact of beaconing interval on throughput and remaining battery life

An enhanced version of the protocol has been implemented in the field[10] by defense contractor TRW Inc. in 2002. The enhancement made to the protocol include: (a) network-layer QoS additions and (b) route precedence capabilities.


Patent and work extensions

ABR was granted a US patent 5987011[11] and the assignee being King's College Cambridge, UK.

A few other mobile ad hoc routing protocols have incorporated ABR's stability concept or have done extensions of the ABR protocol, including:

-   Signal Stability-based Adaptive Routing Protocol (SSA)[12]

-   Enhanced Associativity Based Routing Protocol (EABR)[13]

-   Alternative Enhancement of Associativity-Based Routing (AEABR)[14]

-   Optimized Associativity Threshold Routing (OABTR)[15]

-   Cluster-Based Enhanced Associativity-Based Routing (CBE-ABR),[16]

-   Associativity-Based Clustering Protocol (ABCP), [17]

-   Fuzzy Based Trust Associativity-Based Routing (FUZZY-ABR)

-   Associativity Tick Averaged Associativity-Based Routing (ATA-AR), [18]

-   Self-adaptive Q-learning based trust ABR (QTABR)[19]

-   Quality of Service Extensions to ABR (QOSE-ABR)[20]

-   Associativity-based Multicast Routing (ABAM)[21]

-   Multipath Associativity Based Routing (MABR)[22]

-   Associativity routing for Wireless Sensor Networks [23]

-   Associative Vehicular Ad Hoc Networks (VANETs) [24]


References

Category:Mobile computers Category:Wireless sensor network Category:Wireless networking Category:Ad hoc routing protocols Category:Routing protocols

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