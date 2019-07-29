QUALITY OF SERVICE (QOS) is the description or measurement of the overall performance of a service, such as a telephony or computer network or a cloud computing service, particularly the performance seen by the users of the network. To quantitatively measure quality of service, several related aspects of the network service are often considered, such as packet loss, bit rate, throughput, transmission delay, availability, jitter, etc.

In the field of computer networking and other packet-switched telecommunication networks, quality of service refers to traffic prioritization and resource reservation control mechanisms rather than the achieved service quality. Quality of service is the ability to provide different priority to different applications, users, or data flows, or to guarantee a certain level of performance to a data flow.

Quality of service is particularly important for the transport of traffic with special requirements. In particular, developers have introduced Voice over IP technology to allow computer networks to become as useful as telephone networks for audio conversations, as well as supporting new applications with even stricter network performance requirements.


Definitions

In the field of telephony, quality of service was defined by the ITU in 1994.[1] Quality of service comprises requirements on all the aspects of a connection, such as service response time, loss, signal-to-noise ratio, crosstalk, echo, interrupts, frequency response, loudness levels, and so on. A subset of telephony QoS is grade of service (GoS) requirements, which comprises aspects of a connection relating to capacity and coverage of a network, for example guaranteed maximum blocking probability and outage probability.[2]

In the field of computer networking and other packet-switched telecommunication networks, teletraffic engineering refers to traffic prioritization and resource reservation control mechanisms rather than the achieved service quality. Quality of service is the ability to provide different priority to different applications, users, or data flows, or to guarantee a certain level of performance to a data flow. For example, a required bit rate, delay, delay variation, packet loss or bit error rates may be guaranteed. Quality of service is important for real-time streaming multimedia applications such as voice over IP, multiplayer online games and IPTV, since these often require fixed bit rate and are delay sensitive. Quality of service is especially important in networks where the capacity is a limited resource, for example in cellular data communication.

A network or protocol that supports QoS may agree on a traffic contract with the application software and reserve capacity in the network nodes, for example during a session establishment phase. During the session it may monitor the achieved level of performance, for example the data rate and delay, and dynamically control scheduling priorities in the network nodes. It may release the reserved capacity during a tear down phase.

A best-effort network or service does not support quality of service. An alternative to complex QoS control mechanisms is to provide high quality communication over a best-effort network by over-provisioning the capacity so that it is sufficient for the expected peak traffic load. The resulting absence of network congestion reduces or eliminates the need for QoS mechanisms.

QoS is sometimes used as a quality measure, with many alternative definitions, rather than referring to the ability to reserve resources. Quality of service sometimes refers to the level of quality of service, i.e. the guaranteed service quality.[3] High QoS is often confused with a high level of performance, for example high bit rate, low latency and low bit error rate.

QoS is sometimes used in application layer services such as telephony and streaming video to describe a metric that reflects or predicts the subjectively experienced quality. In this context, QoS is the acceptable cumulative effect on subscriber satisfaction of all imperfections affecting the service. Other terms with similar meaning are the quality of experience (QoE), mean opinion score (MOS), perceptual speech quality measure (PSQM) and perceptual evaluation of video quality (PEVQ). See also Subjective video quality.


History

A number of attempts for layer 2 technologies that add QoS tags to the data have gained popularity in the past. Examples are frame relay, asynchronous transfer mode (ATM) and multiprotocol label switching (MPLS) (a technique between layer 2 and 3). Despite these network technologies remaining in use today, this kind of network lost attention after the advent of Ethernet networks. Today Ethernet is, by far, the most popular layer 2 technology. Conventional Internet routers and LAN switches operate on a best effort basis. This equipment is less expensive, less complex and faster and thus more popular than earlier more complex technologies that provide QoS mechanisms.

Ethernet optionally uses 802.1p to signal the priority of a frame.

There were four _type of service_ bits and three _precedence_ bits originally provided in each IP packet header, but they were not generally respected. These bits were later re-defined as Differentiated services code points (DSCP).

With the advent of IPTV and IP telephony, QoS mechanisms are increasingly available to the end user.


Qualities of traffic

In packet-switched networks, quality of service is affected by various factors, which can be divided into human and technical factors. Human factors include: stability of service quality, availability of service, waiting times and user information. Technical factors include: reliability, scalability, effectiveness, maintainability and network congestion.[4]

Many things can happen to packets as they travel from origin to destination, resulting in the following problems as seen from the point of view of the sender and receiver:

Goodput: Due to varying load from disparate users sharing the same network resources, the maximum throughput that can be provided to a certain data stream may be too low for real-time multimedia services.
Packet loss: The network may fail to deliver (_drop_) some packets due to network congestion. The receiving application may ask for this information to be retransmitted, possibly resulting in congestive collapse or unacceptable delays in the overall transmission.
Errors: Sometimes packets are corrupted due to bit errors caused by noise and interference, especially in wireless communications and long copper wires. The receiver has to detect this and, just as if the packet was dropped, may ask for this information to be retransmitted.
Latency: It might take a long time for each packet to reach its destination because it gets held up in long queues, or it takes a less direct route to avoid congestion. In some cases, excessive latency can render an application such as VoIP or online gaming unusable.
Packet delay variation: Packets from the source will reach the destination with different delays. A packet's delay varies with its position in the queues of the routers along the path between source and destination and this position can vary unpredictably. Delay variation can be absorbed at the receiver but in so doing increases the overall latency for the stream.
Out-of-order delivery: When a collection of related packets is routed through a network, different packets may take different routes, each resulting in a different delay. The result is that the packets arrive in a different order than they were sent. This problem requires special additional protocols for rearranging out-of-order packets. The reordering process requires additional buffering ant the receiver and as with packet delay variation increases the overall latency for the stream.


Applications

A defined quality of service may be desired or required for certain types of network traffic, for example:

-   Streaming media specifically
    -   Internet protocol television (IPTV)
    -   Audio over Ethernet
    -   Audio over IP
-   Voice over IP (VoIP)
-   Videotelephony
-   Telepresence
-   Storage applications such as iSCSI and Fibre Channel over Ethernet
-   Circuit emulation service
-   Safety-critical applications such as remote surgery where availability issues can be hazardous
-   Network operations support systems either for the network itself, or for customers' business critical needs
-   Online games where real-time lag can be a factor
-   Industrial control systems protocols such as EtherNet/IP which are used for real-time control of machinery

These types of service are called _inelastic_, meaning that they require a certain minimum bit rate and a certain maximum latency to function. By contrast, _elastic_ applications can take advantage of however much or little bandwidth is available. Bulk file transfer applications that rely on TCP are generally elastic.


Mechanisms

Circuit switched networks, especially those intended for voice transmission, such as Asynchronous Transfer Mode (ATM) or GSM, have QoS in the core protocol, resources are reserved at each step on the network for the call as it is set up, there is no need for additional procedures to achieve required performance. Shorter data units and built-in QoS were some of the unique selling points of ATM for applications such as video on demand.

When the expense of mechanisms to provide QoS is justified, network customers and providers can enter into a contractual agreement termed a service level agreement (SLA) which specifies guarantees for the ability of a connection to give guaranteed performance in terms of throughput or latency based on mutually agreed measures.

Over-provisioning

An alternative to complex QoS control mechanisms is to provide high quality communication by generously over-provisioning a network so that capacity is based on peak traffic load estimates. This approach is simple for networks with predictable peak loads. This calculation may need to appreciate demanding applications that can compensate for variations in bandwidth and delay with large receive buffers, which is often possible for example in video streaming.

Over-provisioning can be of limited use in the face of transport protocols (such as TCP) that over time increase the amount of data placed on the network until all available bandwidth is consumed and packets are dropped. Such greedy protocols tend to increase latency and packet loss for all users.

The amount of over-provisioning in interior links required to replace QoS depends on the number of users and their traffic demands. This limits usability of over-provisioning. Newer more bandwidth intensive applications and the addition of more users results in the loss of over-provisioned networks. This then requires a physical update of the relevant network links which is an expensive process. Thus over-provisioning cannot be blindly assumed on the Internet.

Commercial VoIP services are often competitive with traditional telephone service in terms of call quality even without QoS mechanisms in use on the user's connection to their ISP and the VoIP provider's connection to a different ISP. Under high load conditions, however, VoIP may degrade to cell-phone quality or worse. The mathematics of packet traffic indicate that network requires just 60% more raw capacity under conservative assumptions.[5]

IP and Ethernet efforts

Unlike single-owner networks, the Internet is a series of exchange points interconnecting private networks.[6] Hence the Internet's core is owned and managed by a number of different network service providers, not a single entity. Its behavior is much more stochastic or unpredictable. Therefore, research continues on QoS procedures that are deployable in large, diverse networks.

There are two principal approaches to QoS in modern packet-switched IP networks, a parameterized system based on an exchange of application requirements with the network, and a prioritized system where each packet identifies a desired service level to the network.

-   Integrated services ("IntServ") implements the parameterized approach. In this model, applications use the Resource Reservation Protocol (RSVP) to request and reserve resources through a network.
-   Differentiated services ("DiffServ") implements the prioritized model. DiffServ marks packets according to the type of service they desire. In response to these markings, routers and switches use various queueing strategies to tailor performance to expectations. Differentiated services code point (DSCP) markings use the first 6 bits in the ToS field (now renamed as the DS Byte) of the IP(v4) packet header.

Early work used the integrated services (IntServ) philosophy of reserving network resources. In this model, applications used the Resource reservation protocol (RSVP) to request and reserve resources through a network. While IntServ mechanisms do work, it was realized that in a broadband network typical of a larger service provider, Core routers would be required to accept, maintain, and tear down thousands or possibly tens of thousands of reservations. It was believed that this approach would not scale with the growth of the Internet, and in any event was antithetical to the notion of designing networks so that Core routers do little more than simply switch packets at the highest possible rates.

In response to these markings, routers and switches use various queuing strategies to tailor performance to requirements. At the IP layer, DSCP markings use the 6 bits in the IP packet header. At the MAC layer, VLAN IEEE 802.1Q and IEEE 802.1p can be used to carry essentially the same information.

Routers supporting DiffServ configure their network scheduler to use multiple queues for packets awaiting transmission from bandwidth constrained (e.g., wide area) interfaces. Router vendors provide different capabilities for configuring this behavior, to include the number of queues supported, the relative priorities of queues, and bandwidth reserved for each queue.

In practice, when a packet must be forwarded from an interface with queuing, packets requiring low jitter (e.g., VoIP or videoconferencing) are given priority over packets in other queues. Typically, some bandwidth is allocated by default to network control packets (such as Internet Control Message Protocol and routing protocols), while best effort traffic might simply be given whatever bandwidth is left over.

At the Media Access Control (MAC) layer, VLAN IEEE 802.1Q and IEEE 802.1p can be used to distinguish between Ethernet frames and classify them. Queueing theory models have been developed on performance analysis and QoS for MAC layer protocols.[7][8]

Cisco IOS NetFlow and the Cisco Class Based QoS (CBQoS) Management Information Base (MIB) are marketed by Cisco Systems. [9]

One compelling example of the need for QoS on the Internet relates to congestive collapse. The Internet relies on congestion avoidance protocols, as built into Transmission Control Protocol (TCP), to reduce traffic under conditions that would otherwise lead to "meltdown". QoS applications, such as VoIP and IPTV, require largely constant bitrates and low latency, therefore they cannot use TCP and cannot otherwise reduce their traffic rate to help prevent congestion. QoS contracts limit traffic that can be offered to the Internet and thereby enforce traffic shaping that can prevent it from becoming overloaded, and are hence an indispensable part of the Internet's ability to handle a mix of real-time and non-real-time traffic without meltdown.

Protocols

-   The type of service (ToS) field in the IP(v4) header (now superseded by DiffServ)
-   Differentiated services (DiffServ)
-   Integrated services (IntServ)
-   Resource Reservation Protocol (RSVP)
-   Multiprotocol Label Switching (MPLS) provides eight QoS classes[10]
-   RSVP-TE
-   Frame relay
-   X.25
-   Some ADSL modems
-   Asynchronous Transfer Mode (ATM)
-   IEEE 802.1p
-   IEEE 802.1Q
-   IEEE 802.11e
-   HomePNA Home networking over coax and phone wires
-   The ITU-T G.hn standard provides QoS by means of "Contention-Free Transmission Opportunities" (CFTXOPs) which are allocated to flows which require QoS and which have negotiated a "contract" with the network controller. G.hn also supports non-QoS operation by means of "Contention-based Time Slots".
-   Audio Video Bridging


End-to-end quality of service

End-to-end quality of service can require a method of coordinating resource allocation between one autonomous system and another. The Internet Engineering Task Force (IETF) defined the Resource Reservation Protocol (RSVP) for bandwidth reservation, as a proposed standard in 1997.[11] RSVP is an end-to-end bandwidth reservation protocol. The traffic engineering version, RSVP-TE, is used in many networks to establish traffic-engineered Multiprotocol Label Switching (MPLS) label-switched paths. The IETF also defined Next Steps in Signaling (NSIS)[12] with QoS signalling as a target. NSIS is a development and simplification of RSVP.

Research consortia such as "end-to-end quality of service support over heterogeneous networks" (EuQoS, from 2004 through 2007)[13] and fora such as the IPsphere Forum[14] developed more mechanisms for handshaking QoS invocation from one domain to the next. IPsphere defined the Service Structuring Stratum (SSS) signaling bus in order to establish, invoke and (attempt to) assure network services. EuQoS conducted experiments to integrate Session Initiation Protocol, Next Steps in Signaling and IPsphere's SSS with an estimated cost of about 15.6 million Euro and published a book.[15][16]

A research project Multi Service Access Everywhere (MUSE) defined another QoS concept in a first phase from January 2004 through February 2006, and a second phase from January 2006 through 2007.[17][18][19] Another research project named PlaNetS was proposed for European funding circa 2005.[20] A broader European project called "Architecture and design for the future Internet" known as 4WARD had a budget estimated at 23.4 million Euro and was funded from January 2008 through June 2010.[21] It included a "Quality of Service Theme" and published a book.[22][23] Another European project, called WIDENS (Wireless Deployable Network System) [24] proposed a bandwidth reservation approach for mobile wireless multirate adhoc networks.[25]


Circumvention

Strong cryptography network protocols such as Secure Sockets Layer, I2P, and virtual private networks obscure the data transferred using them. As all electronic commerce on the Internet requires the use of such strong cryptography protocols, unilaterally downgrading the performance of encrypted traffic creates an unacceptable hazard for customers. Yet, encrypted traffic is otherwise unable to undergo deep packet inspection for QoS.

Protocols like ICA and RDP may encapsulate other traffic (e.g. printing, video streaming) with varying requirements that can make optimization difficult.


Doubts about quality of service over IP

The Internet2 project found, in 2001, that the QoS protocols were probably not deployable inside its Abilene Network with equipment available at that time.[26] Equipment available at the time relied on software to implement QoS. The group also predicted that “logistical, financial, and organizational barriers will block the way toward any bandwidth guarantees” by protocol modifications aimed at QoS.[27] They believed that the economics would encourage network providers to deliberately erode the quality of best effort traffic as a way to push customers to higher priced QoS services. Instead they proposed over-provisioning of capacity as more cost-effective at the time.[28][29]

The Abilene network study was the basis for the testimony of Gary Bachula to the US Senate Commerce Committee's hearing on Network Neutrality in early 2006. He expressed the opinion that adding more bandwidth was more effective than any of the various schemes for accomplishing QoS they examined.[30]

Bachula's testimony has been cited by proponents of a law banning quality of service as proof that no legitimate purpose is served by such an offering. This argument is dependent on the assumption that over-provisioning isn't a form of QoS and that it is always possible. Cost and other factors affect the ability of carriers to build and maintain permanently over-provisioned networks.


Mobile (cellular) QoS

Mobile cellular service providers may offer mobile QoS to customers just as the fixed line PSTN services providers and Internet Service Providers (ISP) may offer QoS. QoS mechanisms are always provided for circuit switched services, and are essential for non-elastic services, for example streaming multimedia.

Mobility adds complication to the QoS mechanisms, for several reasons:

-   A phone call or other session may be interrupted after a handover, if the new base station is overloaded. Unpredictable handovers make it impossible to give an absolute QoS guarantee during a session initiation phase.
-   The pricing structure is often based on per-minute or per-megabyte fee rather than flat rate, and may be different for different content services.
-   A crucial part of QoS in mobile communications is grade of service, involving outage probability (the probability that the mobile station is outside the service coverage area, or affected by co-channel interference, i.e. crosstalk), blocking probability (the probability that the required level of QoS can not be offered) and scheduling starvation. These performance measures are affected by mechanisms such as mobility management, radio resource management, admission control, fair scheduling, channel-dependent scheduling etc.


Standards

Quality of service in the field of telephony, was first defined in 1994 in the ITU-T Recommendation E.800. This definition is very broad, listing 6 primary components: Support, Operability, Accessibility, Retainability, Integrity and Security.[31] A 1995 recommendation X.902 included a definition is the OSI reference model.[32] In 1998 the ITU published a document discussing QoS in the field of data networking. X.641 offers a means of developing or enhancing standards related to QoS and provide concepts and terminology that will assist in maintaining the consistency of related standards.[33]

Some QoS-related IETF Request For Comments (RFC)s are , and ; both these are discussed above. The IETF has also published two RFCs giving background on QoS: , and .

The IETF has also published as an informative or "best practices" document about the practical aspects of designing a QoS solution for a DiffServ network. They try to identify which types of applications are commonly run over an IP network to group them into traffic classes, study what treatment do each of these classes need from the network, and suggest which of the QoS mechanisms commonly available in routers can be used to implement those treatments.


Open source software

-   Linux Advanced Routing & Traffic Control (from 2000 to 2005)[34]
-   Linux Bandwidth Arbitrator (2003 through 2005)[35]
-   Zero Shell[36]
-   mod_qos adding QoS to the Apache HTTP Server


See also

-   Application service architecture
-   Best-effort
-   BSSGP
-   Bufferbloat
-   Class of service
-   Cross-layer interaction and service mapping
-   Deep packet inspection (DPI)
-   LEDBAT
-   Low Latency Queuing (LLQ)
-   Mean opinion score (MOS)
-   Micro Transport Protocol
-   Network neutrality
-   QPPB
-   Quality of experience (QoE)
-   Series of tubes
-   Streaming media
-   Subjective video quality
-   Tiered Internet
-   Traffic classification
-   Traffic shaping


References


Further reading

-   _Deploying IP and MPLS QoS for Multiservice Networks: Theory and Practice_ by John Evans, Clarence Filsfils (Morgan Kaufmann, 2007, )
-   Lelli, F. Maron, G. Orlando, S. Client Side Estimation of a Remote Service Execution. 15th International Symposium on Modeling, Analysis, and Simulation of Computer and Telecommunication Systems, 2007. MASCOTS '07.
-   _QoS Over Heterogeneous Networks_ by Mario Marchese (Wiley, 2007, )
-   -   -   -


External links

-   -   Cisco's Internetworking Technology Handbook
-   -   -   -

Category:Internet architecture Category:Network performance Category:Quality of service Category:Streaming Category:Services marketing Category:Telecommunications engineering Category:Teletraffic

[1]

[2] Teletraffic Engineering Handbook ITU-T Study Group 2 (350 pages, 4·48MiB)(It uses abbreviation GoS instead of QoS)

[3]

[4]

[5]

[6] An Evening With Robert Kahn , from Computer History Museum, 9 Jan 2007

[7]

[8]

[9]

[10]

[11]

[12] "Next Steps in Signaling" Charter

[13]

[14] IPSphere: Enabling Advanced Service Delivery

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

[31]  Updated September 2008 as _Definitions of terms related to quality of service_

[32]  Updated October 2009.

[33]

[34]

[35]

[36]