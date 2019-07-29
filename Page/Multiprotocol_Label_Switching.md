MULTIPROTOCOL LABEL SWITCHING (MPLS) is a routing technique in telecommunications networks that directs data from one node to the next based on short path labels rather than long network addresses, thus avoiding complex lookups in a routing table and speeding traffic flows.[1] The labels identify virtual links (_paths_) between distant nodes rather than endpoints. MPLS can encapsulate packets of various network protocols, hence the "multiprotocol" reference on its name. MPLS supports a range of access technologies, including T1/E1, ATM, Frame Relay, and DSL.


Role and functioning

MPLS is scalable and protocol-independent. In an MPLS network, data packets are assigned labels. Packet-forwarding decisions are made solely on the contents of this label, without the need to examine the packet itself. This allows one to create end-to-end circuits across any type of transport medium, using any protocol. The primary benefit is to eliminate dependence on a particular OSI model data link layer (layer 2) technology, such as Asynchronous Transfer Mode (ATM), Frame Relay, Synchronous Optical Networking (SONET) or Ethernet, and eliminate the need for multiple layer-2 networks to satisfy different types of traffic. Multiprotocol label switching belongs to the family of packet-switched networks.

MPLS operates at a layer that is generally considered to lie between traditional definitions of OSI Layer 2 (data link layer) and Layer 3 (network layer), and thus is often referred to as a _layer 2.5_ protocol. It was designed to provide a unified data-carrying service for both circuit-based clients and packet-switching clients which provide a datagram service model. It can be used to carry many different kinds of traffic, including IP packets, as well as native ATM, SONET, and Ethernet frames.

A number of different technologies were previously deployed with essentially identical goals, such as Frame Relay and ATM. Frame Relay and ATM use "labels" to move frames or cells throughout a network. The header of the Frame Relay frame and the ATM cell refers to the virtual circuit that the frame or cell resides on. The similarity between Frame Relay, ATM, and MPLS is that at each hop throughout the network, the “label” value in the header is changed. This is different from the forwarding of IP packets.[2] MPLS technologies have evolved with the strengths and weaknesses of ATM in mind. Many network engineers agree that ATM should be replaced with a protocol that requires less overhead while providing connection-oriented services for variable-length frames. MPLS is currently replacing some of these technologies in the marketplace. It is highly possible that MPLS will completely replace these technologies in the future, thus aligning these technologies with current and future technology needs.[3]

In particular, MPLS dispenses with the cell-switching and signaling-protocol baggage of ATM. MPLS recognizes that small ATM cells are not needed in the core of modern networks, since modern optical networks are so fast (, at 100 Gbit/s and beyond) that even full-length 1500 byte packets do not incur significant real-time queuing delays (the need to reduce such delays — _e.g._, to support voice traffic — was the motivation for the cell nature of ATM).

At the same time, MPLS attempts to preserve the traffic engineering (TE) and out-of-band control that made Frame Relay and ATM attractive for deploying large-scale networks.


History

-   1994: Toshiba presented Cell Switch Router (CSR) ideas to IETF BOF
-   1996: Ipsilon, Cisco and IBM announced label switching plans
-   1997: Formation of the IETF MPLS working group
-   1999: First MPLS VPN (L3VPN) and TE deployments
-   2000: MPLS traffic engineering
-   2001: First MPLS Request for Comments (RFCs) released
-   2002: AToM (L2VPN)
-   2004: GMPLS; Large-scale L3VPN
-   2006: Large-scale TE "Harsh"
-   2007: Large-scale L2VPN
-   2009: Label Switching Multicast
-   2011: MPLS transport profile

In 1996 a group from Ipsilon Networks proposed a "flow management protocol".[4] Their "IP Switching" technology, which was defined only to work over ATM, did not achieve market dominance. Cisco Systems introduced a related proposal, not restricted to ATM transmission, called "Tag Switching"[5] (with its Tag Distribution Protocol TDP[6]). It was a Cisco proprietary proposal, and was renamed "Label Switching". It was handed over to the Internet Engineering Task Force (IETF) for open standardization. The IETF work involved proposals from other vendors, and development of a consensus protocol that combined features from several vendors' work.

One original motivation was to allow the creation of simple high-speed switches since for a significant length of time it was impossible to forward IP packets entirely in hardware. However, advances in VLSI have made such devices possible. Therefore, the advantages of MPLS primarily revolve around the ability to support multiple service models and perform traffic management. MPLS also offers a robust recovery framework[7] that goes beyond the simple protection rings of synchronous optical networking (SONET/SDH).


Operation

MPLS works by prefixing packets with an MPLS header, containing one or more labels. This is called a label stack. Each entry in the label stack contains four fields:

-   A 20-bit label value. A label with the value of 1 represents the router alert label.
-   a 3-bit _Traffic Class_ field for QoS (quality of service) priority and ECN (Explicit Congestion Notification). Prior to 2009 this field was called EXP.[8]
-   a 1-bit _bottom of stack_ flag. If this is set, it signifies that the current label is the last in the stack.
-   an 8-bit TTL (time to live) field.

  00      01                                02                   03                  04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  ------- --------------------------------- -------------------- ------------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Label   TC: Traffic Class (QoS and ECN)   S: Bottom-of-Stack   TTL: Time-to-Live

  : MPLS Label

These MPLS-labeled packets are switched after a label lookup/switch instead of a lookup into the IP table. As mentioned above, when MPLS was conceived, label lookup and label switching were faster than a routing table or RIB (Routing Information Base) lookup because they could take place directly within the switched fabric and avoid having to use the OS.

The presence of such a label, however, has to be indicated to the router/switch. In the case of Ethernet frames this is done through the use of EtherType values 0x8847 and 0x8848, for unicast and multicast connections respectively.[9]

Label switch router

An MPLS router that performs routing based only on the label is called a LABEL SWITCH ROUTER (LSR) or TRANSIT ROUTER. This is a type of router located in the middle of an MPLS network. It is responsible for switching the labels used to route packets.

When an LSR receives a packet, it uses the label included in the packet header as an index to determine the next hop on the label-switched path (LSP) and a corresponding label for the packet from a lookup table. The old label is then removed from the header and replaced with the new label before the packet is routed forward.

Label edge router

A label edge router (LER, also known as edge LSR) is a router that operates at the edge of an MPLS network and acts as the entry and exit points for the network. LERs _push_ an MPLS label onto an incoming packet[10] and _pop_ it off an outgoing packet. Alternatively, under penultimate hop popping this function may instead be performed by the LSR directly connected to the LER.

When forwarding an IP datagram into the MPLS domain, a LER uses routing information to determine the appropriate label to be affixed, labels the packet accordingly, and then forwards the labeled packet into the MPLS domain. Likewise, upon receiving a labeled packet which is destined to exit the MPLS domain, the LER strips off the label and forwards the resulting IP packet using normal IP forwarding rules.

Provider router

In the specific context of an MPLS-based virtual private network (VPN), LERs that function as ingress and/or egress routers to the VPN are often called PE (Provider Edge) routers. Devices that function only as transit routers are similarly called P (Provider) routers.[11] The job of a P router is significantly easier than that of a PE router, so they can be less complex and may be more dependable because of this.

Label Distribution Protocol

Labels are distributed between LERs and LSRs using the Label Distribution Protocol (LDP).[12] LSRs in an MPLS network regularly exchange label and reachability information with each other using standardized procedures in order to build a complete picture of the network so they can then use to forward packets.

Label-switched paths

Label-switched paths (LSPs) are established by the network operator for a variety of purposes, such as to create network-based IP virtual private networks or to route traffic along specified paths through the network. In many respects, LSPs are not different from permanent virtual circuits (PVCs) in ATM or Frame Relay networks, except that they are not dependent on a particular layer-2 technology.

Routing

When an unlabeled packet enters the ingress router and needs to be passed on to an MPLS tunnel, the router first determines the forwarding equivalence class (FEC) for the packet and then inserts one or more labels in the packet's newly created MPLS header. The packet is then passed on to the next hop router for this tunnel.

The MPLS Header is added between the network layer header and link layer header of the OSI model.[13]

When a labeled packet is received by an MPLS router, the topmost label is examined. Based on the contents of the label a _swap_, _push_ (_impose_) or _pop_ (_dispose_) operation is performed on the packet's label stack. Routers can have prebuilt lookup tables that tell them which kind of operation to do based on the topmost label of the incoming packet so they can process the packet very quickly.

-   In a _swap_ operation the label is swapped with a new label, and the packet is forwarded along the path associated with the new label.
-   In a _push_ operation a new label is pushed on top of the existing label, effectively "encapsulating" the packet in another layer of MPLS. This allows hierarchical routing of MPLS packets. Notably, this is used by MPLS VPNs.
-   In a _pop_ operation the label is removed from the packet, which may reveal an inner label below. This process is called "decapsulation". If the popped label was the last on the label stack, the packet "leaves" the MPLS tunnel. This can be done by the egress router, but see Penultimate Hop Popping (PHP) below.

During these operations, the contents of the packet below the MPLS Label stack are not examined. Indeed, transit routers typically need only to examine the topmost label on the stack. The forwarding of the packet is done based on the contents of the labels, which allows "protocol-independent packet forwarding" that does not need to look at a protocol-dependent routing table and avoids the expensive IP longest prefix match at each hop.

At the egress router, when the last label has been popped, only the payload remains. This can be an IP packet or any of a number of other kinds of payload packet. The egress router must, therefore, have routing information for the packet's payload since it must forward it without the help of label lookup tables. An MPLS transit router has no such requirement.

Usually (by default with only one label in the stack, accordingly to the MPLS specification), the last label is popped off at the penultimate hop (the hop before the egress router). This is called penultimate hop popping (PHP). This may be interesting in cases where the egress router has lots of packets leaving MPLS tunnels, and thus spends inordinate amounts of CPU time on this. By using PHP, transit routers connected directly to this egress router effectively offload it, by popping the last label themselves. In the label distribution protocols, this PHP label pop action is advertised as label value 3 « implicit-null» (which is never found in a label, since it means that the label is to be popped).

This optimisation is no longer that useful (like for initial rationales for MPLS – easier operations for the routers). Several MPLS services (including end-to-end QoS[14] management, and 6PE[15]) imply to keep a label even between the penultimate and the last MPLS router, with a label disposition always done on the last MPLS router: the «Ultimate Hop Popping» (UHP).[16][17] Some specific label values have been notably reserved[18][19] for this use:

-   0: «explicit-null» for IPv4
-   2: «explicit-null» for IPv6

Label-switched path

A label-switched path (LSP) is a path through an MPLS network, set up by the NMS or by a signaling protocol such as LDP, RSVP-TE, BGP (or the now deprecated CR-LDP). The path is set up based on criteria in the FEC.

The path begins at a label edge router (LER), which makes a decision on which label to prefix to a packet, based on the appropriate FEC. It then forwards the packet along to the next router in the path, which swaps the packet's outer label for another label, and forwards it to the next router. The last router in the path removes the label from the packet and forwards the packet based on the header of its next layer, for example IPv4. Due to the forwarding of packets through an LSP being opaque to higher network layers, an LSP is also sometimes referred to as an MPLS tunnel.

The router which first prefixes the MPLS header to a packet is called an ingress router. The last router in an LSP, which pops the label from the packet, is called an egress router. Routers in between, which need only swap labels, are called transit routers or label switch routers (LSRs).

Note that LSPs are unidirectional; they enable a packet to be label switched through the MPLS network from one endpoint to another. Since bidirectional communication is typically desired, the aforementioned dynamic signaling protocols can set up an LSP in the other direction to compensate for this.

When protection is considered, LSPs could be categorized as primary (working), secondary (backup) and tertiary (LSP of last resort). As described above, LSPs are normally P2P (point to point). A new concept of LSPs, which are known as P2MP (point to multi-point), was introduced recently. These are mainly used for multicasting purposes.

Installing and removing paths

There are two standardized protocols for managing MPLS paths: the Label Distribution Protocol (LDP) and RSVP-TE, an extension of the Resource Reservation Protocol (RSVP) for traffic engineering.[20][21] Furthermore, there exist extensions of the Border Gateway Protocol (BGP) that can be used to manage an MPLS path.[22][23][24]

An MPLS header does not identify the type of data carried inside the MPLS path. If one wants to carry two different types of traffic between the same two routers, with different treatment by the core routers for each type, one has to establish a separate MPLS path for each type of traffic.

Multicast addressing

Multicast was, for the most part, an after-thought in MPLS design. It was introduced by point-to-multipoint RSVP-TE.[25] It was driven by service provider requirements to transport broadband video over MPLS. Since the inception of there has been a tremendous surge in interest and deployment of MPLS multicast and this has led to several new developments both in the IETF and in shipping products.

The hub&spoke multipoint LSP is also introduced by IETF, short as HSMP LSP. HSMP LSP is mainly used for multicast, time synchronization, and other purposes.


Relationship to Internet Protocol

MPLS works in conjunction with the Internet Protocol (IP) and its routing protocols, such as the Interior Gateway Protocol (IGP). MPLS LSPs provide dynamic, transparent virtual networks with support for traffic engineering, the ability to transport layer-3 (IP) VPNs with overlapping address spaces, and support for layer-2 pseudowires using Pseudowire Emulation Edge-to-Edge (PWE3)[26] that are capable of transporting a variety of transport payloads (IPv4, IPv6, ATM, Frame Relay, etc.). MPLS-capable devices are referred to as LSRs. The paths an LSR knows can be defined using explicit hop-by-hop configuration, or are dynamically routed by the constrained shortest path first (CSPF) algorithm, or are configured as a loose route that avoids a particular IP address or that is partly explicit and partly dynamic.

In a pure IP network, the shortest path to a destination is chosen even when the path becomes congested. Meanwhile, in an IP network with MPLS Traffic Engineering CSPF routing, constraints such as the RSVP bandwidth of the traversed links can also be considered, such that the shortest path with available bandwidth will be chosen. MPLS Traffic Engineering relies upon the use of TE extensions to Open Shortest Path First (OSPF) or Intermediate System To Intermediate System (IS-IS) and RSVP. In addition to the constraint of RSVP bandwidth, users can also define their own constraints by specifying link attributes and special requirements for tunnels to route (or not to route) over links with certain attributes.[27]

For end-users the use of MPLS is not visible directly, but can be assumed when doing a traceroute: only nodes that do _full_ IP routing are shown as hops in the path, thus not the MPLS nodes used in between, therefore when you see that a packet _hops_ between two very distant nodes and hardly any other 'hop' is seen in that provider's network (or AS) it is very likely that network uses MPLS.

MPLS local protection (fast reroute)

In the event of a network element failure when recovery mechanisms are employed at the IP layer, restoration may take several seconds which may be unacceptable for real-time applications such as VoIP.[28][29][30] In contrast, MPLS local protection meets the requirements of real-time applications with recovery times comparable to those of shortest path bridging networks or SONET rings of less than 50 ms.[31][32][33]


Comparisons

MPLS can make use of existing ATM network or Frame Relay infrastructure, as its labeled flows can be mapped to ATM or Frame Relay virtual-circuit identifiers, and vice versa.

Frame Relay

Frame Relay aimed to make more efficient use of existing physical resources, which allow for the underprovisioning of data services by telecommunications companies (telcos) to their customers, as clients were unlikely to be utilizing a data service 100 percent of the time. In more recent years, Frame Relay has acquired a bad reputation in some markets because of excessive bandwidth overbooking by these telcos.

Telcos often sell Frame Relay to businesses looking for a cheaper alternative to dedicated lines; its use in different geographic areas depended greatly on governmental and telecommunication companies' policies.

Many customers are likely to migrate from Frame Relay to MPLS over IP or Ethernet within the next two years, which in many cases will reduce costs and improve manageability and performance of their wide area networks.[34]

ATM (Asynchronous transfer mode)

While the underlying protocols and technologies are different, both MPLS and ATM provide a connection-oriented service for transporting data across computer networks. In both technologies, connections are signaled between endpoints, the connection state is maintained at each node in the path, and encapsulation techniques are used to carry data across the connection. Excluding differences in the signaling protocols (RSVP/LDP for MPLS and PNNI:Private Network-to-Network Interface for ATM) there still remain significant differences in the behavior of the technologies.

The most significant difference is in the transport and encapsulation methods. MPLS is able to work with variable length packets while ATM transports fixed-length (53 bytes) cells. Packets must be segmented, transported and re-assembled over an ATM network using an adaptation layer, which adds significant complexity and overhead to the data stream. MPLS, on the other hand, simply adds a label to the head of each packet and transmits it on the network.

Differences exist, as well, in the nature of the connections. An MPLS connection (LSP) is unidirectional—allowing data to flow in only one direction between two endpoints. Establishing two-way communications between endpoints requires a pair of LSPs to be established. Because 2 LSPs are required for connectivity, data flowing in the forward direction may use a different path from data flowing in the reverse direction. ATM point-to-point connections (virtual circuits), on the other hand, are bidirectional, allowing data to flow in both directions over the same path (Both SVC and PVC ATM connections are bidirectional. Check ITU-T I.150 3.1.3.1).

Both ATM and MPLS support tunneling of connections inside connections. MPLS uses label stacking to accomplish this while ATM uses _virtual paths_. MPLS can stack multiple labels to form tunnels within tunnels. The ATM virtual path indicator (VPI) and virtual circuit indicator (VCI) are both carried together in the cell header, limiting ATM to a single level of tunneling.

The biggest advantage that MPLS has over ATM is that it was designed from the start to be complementary to IP. Modern routers are able to support both MPLS and IP natively across a common interface allowing network operators great flexibility in network design and operation. ATM's incompatibilities with IP require complex adaptation, making it comparatively less suitable for today's predominantly IP networks.


Deployment

MPLS is currently (as of March 2012) in use in IP-only networks and is standardized by the IETF in . It is deployed to connect as few as two facilities to very large deployments.

In practice, MPLS is mainly used to forward IP protocol data units (PDUs) and Virtual Private LAN Service (VPLS) Ethernet traffic. Major applications of MPLS are telecommunications traffic engineering, and MPLS VPN.


Evolution

MPLS has been originally proposed to allow high-performance traffic forwarding and traffic engineering in IP networks. However it evolved in Generalized MPLS (GMPLS) to allow the creation of label-switched paths (LSPs) also in non-native IP networks, such as SONET/SDH networks and wavelength switched optical networks.


Competitor protocols

MPLS can exist in both an IPv4 and an IPv6 environment, using appropriate routing protocols. The major goal of MPLS development was the increase of routing speed.[35] This goal is no longer relevant because of the usage of newer switching methods, such as ASIC, TCAM and CAM-based switching. Now, therefore, the main application of MPLS is to implement limited traffic engineering and layer 3 / layer 2 “service provider type” VPNs over IPv4 networks.

Besides GMPLS, the main competitors to MPLS are Shortest Path Bridging (SPB), Provider Backbone Bridges (PBB), and MPLS-TP. These also provide services such as service provider layer 2 and layer 3 VPNs. L2TPv3 has been suggested as a competitor, but has not reached any wider success. Some internet providers are offering different services to customers along with MPLS. These services mainly include national private leased circuit (NPLC), ILL, IPLC etc.

As an example of NPLC, consider two cities. An organization has an office in each city. The organization requires connectivity between these two offices. The ISP will have access to a PoP in each city and therefore has a link between the PoPs. To connect the offices to the PoPs, a connection via the local loop will be commissioned for each office. In this way, an NPLC is delivered.

IEEE 1355 and Spacewire are a family of simplified physical-layer standards very similar in function at the hardware level to MPLS.


See also

-   Generalized Multi-Protocol Label Switching
-   MPLS VPN
-   Per-hop behavior
-   Virtual private LAN service
-   Label Information Base
-   IEEE 802.1aq - Shortest Path Bridging (SPB)


Notes


References


Further reading

-   "Deploying IP and MPLS QoS for Multiservice Networks: Theory and Practice" by John Evans, Clarence Filsfils (Morgan Kaufmann, 2007, )
-   Rick Gallaher's MPLS Training Guide ()


External links

-   MPLS Working Group, IETF.
-   MPLS IP Specifications, Broadband Forum.
-   A brief history of MPLS, RIPE

Category:MPLS networking Category:Internet Standards Category:Tunneling protocols

[1] https://searchnetworking.techtarget.com/definition/Multiprotocol-Label-Switching-MPLS

[2] MPLS Fundamentals, By Luc De Ghein Nov 21, 2006 ()

[3] Applied Data Communications (A Business-Oriented Approach) James E. Goldman & Phillip T. Rawles, 2004 ()

[4]

[5] Y. Rekhter et al., Tag switching architecture overview, Proc. IEEE 82 (December 1997), 1973–1983.

[6]

[7]

[8]

[9]

[10] In some applications, the packet presented to the LER already may have a label, so that the new LER pushes a second label onto the packet.

[11]

[12]

[13] Savecall telecommunication consulting company Germany Savecall - MPLS

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

[34] "AT&T — Frame Relay and IP-Enabled Frame Relay Service (Product Advisor)", Research and Markets, June 2007.

[35]