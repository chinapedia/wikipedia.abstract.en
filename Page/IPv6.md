INTERNET PROTOCOL VERSION 6 (IPV6) is the most recent version of the Internet Protocol (IP), the communications protocol that provides an identification and location system for computers on networks and routes traffic across the Internet. IPv6 was developed by the Internet Engineering Task Force (IETF) to deal with the long-anticipated problem of IPv4 address exhaustion. IPv6 is intended to replace IPv4.[1] In December 1998, IPv6 became a Draft Standard for the IETF, who subsequently ratified it as an Internet Standard on 14 July 2017.[2]

Devices on the Internet are assigned a unique IP address for identification and location definition. With the rapid growth of the Internet after commercialization in the 1990s, it became evident that far more addresses would be needed to connect devices than the IPv4 address space had available. By 1998, the Internet Engineering Task Force (IETF) had formalized the successor protocol. IPv6 uses a 128-bit address, theoretically allowing 2¹²⁸, or approximately addresses. The actual number is slightly smaller, as multiple ranges are reserved for special use or completely excluded from use. The total number of possible IPv6 addresses is more than times as many as IPv4, which uses 32-bit addresses and provides approximately 4.3 billion addresses. The two protocols are not designed to be interoperable, complicating the transition to IPv6. However, several IPv6 transition mechanisms have been devised to permit communication between IPv4 and IPv6 hosts.

IPv6 provides other technical benefits in addition to a larger addressing space. In particular, it permits hierarchical address allocation methods that facilitate route aggregation across the Internet, and thus limit the expansion of routing tables. The use of multicast addressing is expanded and simplified, and provides additional optimization for the delivery of services. Device mobility, security, and configuration aspects have been considered in the design of the protocol.

IPv6 addresses are represented as eight groups, separated by colons, of four hexadecimal digits. The full representation may be simplified by several methods of notation; for example, _2001:0db8:0000:0000:0000:8a2e:0370:7334_ becomes _2001:db8::8a2e:370:7334_.


Main features

Ipv6_address_leading_zeros.svg representation into its binary form]] IPv6 is an Internet Layer protocol for packet-switched internetworking and provides end-to-end datagram transmission across multiple IP networks, closely adhering to the design principles developed in the previous version of the protocol, Internet Protocol Version 4 (IPv4).

In addition to offering more addresses, IPv6 also implements features not present in IPv4. It simplifies aspects of address configuration, network renumbering, and router announcements when changing network connectivity providers. It simplifies processing of packets in routers by placing the responsibility for packet fragmentation into the end points. The IPv6 subnet size is standardized by fixing the size of the host identifier portion of an address to 64 bits. Network security was a design requirement of the IPv6 architecture, and included the original specification of IPsec.

The addressing architecture of IPv6 is defined in and allows three different types of transmission: unicast, anycast and multicast.[3]


Motivation and origin

IPv4 address exhaustion

Ipv4_address.svg representation to its binary value]] Internet Protocol Version 4 (IPv4) was the first publicly used version of the Internet Protocol. IPv4 was developed as a research project by the Defense Advanced Research Projects Agency (DARPA), a United States Department of Defense agency, before becoming the foundation for the Internet and the World Wide Web. IPv4 includes an addressing system that uses numerical identifiers consisting of 32 bits. These addresses are typically displayed in quad-dotted notation as decimal values of four octets, each in the range 0 to 255, or 8 bits per number. Thus, IPv4 provides an addressing capability of 2³² or approximately 4.3 billion addresses. Address exhaustion was not initially a concern in IPv4 as this version was originally presumed to be a test of DARPA's networking concepts.[4] During the first decade of operation of the Internet, it became apparent that methods had to be developed to conserve address space. In the early 1990s, even after the redesign of the addressing system using a classless network model, it became clear that this would not suffice to prevent IPv4 address exhaustion, and that further changes to the Internet infrastructure were needed.[5]

The last unassigned top-level address blocks of 16 million IPv4 addresses were allocated in February 2011 by the Internet Assigned Numbers Authority (IANA) to the five regional Internet registries (RIRs). However, each RIR still has available address pools and is expected to continue with standard address allocation policies until one /8 Classless Inter-Domain Routing (CIDR) block remains. After that, only blocks of 1024 addresses (/22) will be provided from the RIRs to a local Internet registry (LIR). As of September 2015, all of Asia-Pacific Network Information Centre (APNIC), the Réseaux IP Européens Network Coordination Centre (RIPE_NCC), Latin America and Caribbean Network Information Centre (LACNIC), and American Registry for Internet Numbers (ARIN) have reached this stage.[6][7][8] This leaves African Network Information Center (AFRINIC) as the sole regional internet registry that is still using the normal protocol for distributing IPv4 addresses. As of November 2018, AFRINIC's minimum allocation is /22 or 1024 IPv4 addresses. A LIR may receive additional allocation when about 80% of all the address space has been utilized.[9]

It is widely expected that the Internet will use IPv4 alongside IPv6 for the foreseeable future. Direct communication between the IPv4 and IPv6 network protocols is not possible.


Comparison with IPv4

On the Internet, data is transmitted in the form of network packets. IPv6 specifies a new packet format, designed to minimize packet header processing by routers.[10][11] Because the headers of IPv4 packets and IPv6 packets are significantly different, the two protocols are not interoperable. However, most transport and application-layer protocols need little or no change to operate over IPv6; exceptions are application protocols that embed Internet-layer addresses, such as File Transfer Protocol (FTP) and Network Time Protocol (NTP), where the new address format may cause conflicts with existing protocol syntax.

Larger address space

The main advantage of IPv6 over IPv4 is its larger address space. The length of an IPv6 address is 128 bits, compared with 32 bits in IPv4.[12] The address space therefore has 2¹²⁸ or approximately addresses (340,282,366,920,938,463,463,374,607,431,768,211,456, which is approximately 340 undecillion, or 340 billion billion billion billion, addresses). As with IPv4, some of these addresses are reserved for special uses.

In addition, the IPv4 address space is poorly allocated; in 2011, approximately 14% of all available addresses were utilized.[13] While these numbers are large, it was not the intent of the designers of the IPv6 address space to assure geographical saturation with usable addresses. Rather, the longer addresses simplify allocation of addresses, enable efficient route aggregation, and allow implementation of special addressing features. In IPv4, complex Classless Inter-Domain Routing (CIDR) methods were developed to make the best use of the small address space. The standard size of a subnet in IPv6 is 2⁶⁴ addresses, the square of the size of the entire IPv4 address space. Thus, actual address space utilization rates will be small in IPv6, but network management and routing efficiency are improved by the large subnet space and hierarchical route aggregation.

Multicasting

Multicasting, the transmission of a packet to multiple destinations in a single send operation, is part of the base specification in IPv6. In IPv4 this is an optional (although commonly implemented) feature.[14] IPv6 multicast addressing has features and protocols in common with IPv4 multicast, but also provides changes and improvements by eliminating the need for certain protocols. IPv6 does not implement traditional IP broadcast, i.e. the transmission of a packet to all hosts on the attached link using a special _broadcast address_, and therefore does not define broadcast addresses. In IPv6, the same result is achieved by sending a packet to the link-local _all nodes_ multicast group at address ff02::1, which is analogous to IPv4 multicasting to address 224.0.0.1. IPv6 also provides for new multicast implementations, including embedding rendezvous point addresses in an IPv6 multicast group address, which simplifies the deployment of inter-domain solutions.[15]

In IPv4 it is very difficult for an organization to get even one globally routable multicast group assignment, and the implementation of inter-domain solutions is arcane.[16] Unicast address assignments by a local Internet registry for IPv6 have at least a 64-bit routing prefix, yielding the smallest subnet size available in IPv6 (also 64 bits). With such an assignment it is possible to embed the unicast address prefix into the IPv6 multicast address format, while still providing a 32-bit block, the least significant bits of the address, or approximately 4.2 billion multicast group identifiers. Thus each user of an IPv6 subnet automatically has available a set of globally routable source-specific multicast groups for multicast applications.[17]

Stateless address autoconfiguration (SLAAC)

IPv6 hosts can configure themselves automatically when connected to an IPv6 network using the Neighbor Discovery Protocol via Internet Control Message Protocol version 6 (ICMPv6) router discovery messages. When first connected to a network, a host sends a link-local router solicitation multicast request for its configuration parameters; routers respond to such a request with a router advertisement packet that contains Internet Layer configuration parameters.[18] Routers present a special case of requirements for address configuration, as they often are sources of autoconfiguration information, such as router and prefix advertisements. Stateless configuration of routers can be achieved with a special router renumbering protocol.[19]

Renumbering an existing network for a new connectivity provider with different routing prefixes is a major effort with IPv4.[20][21] With IPv6, however, changing the prefix announced by a few routers can in principle renumber an entire network, since the host identifiers (the least-significant 64 bits of an address) can be independently self-configured by a host.[22]

If IPv6 stateless address auto-configuration is unsuitable, IPv6 just like IPv4 allows for stateful configuration with the Dynamic Host Configuration Protocol version 6 (DHCPv6) or manual static configuration of hosts.

SLAAC privacy extensions

Like IPv4, IPv6 supports globally unique IP addresses. The design of IPv6 intended to re-emphasize the end-to-end principle of network design that was originally conceived during the establishment of the early Internet. In this approach each device on the network has a unique address globally reachable directly from any other location on the Internet.

A unique IP address can potentially be used to track the network activity of a device. Moreover, when using IPv6 address auto-configuration, the Interface Identifier (MAC address) of a network card is used to make its public IPv6 interface identifier unique, exposing the type of hardware used and providing a unique handle for a user's online activity. Autoconfiguration on the basis of the network card MAC address is therefore a particular privacy concern for mobile devices, such as laptops, because when they access the Internet from different local area networks, their MAC based interface identifier would always stay the same. Thus the MAC address based interface identifier can be used to track the movement and usage of a particular mobile device.[23]

When IPv6 was developed in the mid-90s, the Internet was not accessed by a large number of mobile devices and privacy was not the priority it has become today. To address these privacy concerns, the SLAAC protocol was updated with mechanisms that were termed “Privacy Extensions for Stateless Address Autoconfiguration in IPv6”, codified in RFC 4941. This allows for the IPv6 address interface identifier to be generated randomly. If the same interface identifier is generated for two devices in the same local area network, the Duplicate Address Detection (DAD) function of the IPv6 Neighbor Discovery Protocol (NDP) will resolve the situation. The SLAAC privacy extension also implements a time out, which is configurable, so that the IPv6 interface addresses will be discarded and a new interface identifier is generated. Typically the time out is configured to 24 hours. So IPv6 autoconfiguration will generate and set a new IPv6 host address every day. As of late 2014 the SLAAC privacy extensions functionality was implemented by the following operating systems: all Microsoft Windows after Windows XP, all versions of Mac OS X from 10.7 onward, all versions of iOS since 4.3, all versions of Android since 4.0 (Ice Cream Sandwich).[24] The privacy extension is now enabled by default in Windows (since XP SP1), OS X (since 10.7), and iOS (since version 4.3).[25][26] Some Linux distributions have enabled privacy extensions as well.[27]

IPsec

Internet Protocol Security (IPsec) was originally developed for IPv6, but found widespread deployment first in IPv4, for which it was re-engineered. IPsec was a mandatory part of all IPv6 protocol implementations,[28] and Internet Key Exchange (IKE) was recommended, but with RFC 6434 the inclusion of IPsec in IPv6 implementations was downgraded to a recommendation because it was considered impractical to require full IPsec implementation for all types of devices that may use IPv6. However, as of RFC 4301 IPv6 protocol implementations that do implement IPsec need to implement IKEv2 and need to support a minimum set of cryptographic algorithms. This requirement will help to make IPsec implementations more interoperable between devices from different vendors. The IPsec Authentication Header (AH) and the Encapsulating Security Payload header (ESP) are implemented as IPv6 extension headers.[29]

Simplified processing by routers

The packet header in IPv6 is simpler than the IPv4 header. Many rarely used fields have been moved to optional header extensions.[30] With the simplified IPv6 packet header the process of packet forwarding by routers has been simplified. Although IPv6 packet headers are at least twice the size of IPv4 packet headers, packet processing by routers is generally more efficient, because less processing is required in routers due to the headers being aligned to match common word sizes.[31][32]

Moreover, an IPv6 header does not include a checksum. The IPv4 header checksum is calculated for the IPv4 header, and has to be recalculated by routers every time the time to live (called hop limit in the IPv6 protocol) is reduced by one. The absence of a checksum in the IPv6 header furthers the end-to-end principle of Internet design, which envisioned that most processing in the network occurs in the leaf nodes. Integrity protection for the data that is encapsulated in the IPv6 packet is assumed to be assured by both the link layer or error detection in higher-layer protocols, namely the Transmission Control Protocol (TCP) and the User Datagram Protocol (UDP) on the transport layer. Thus, while IPv4 allowed UDP datagram headers to have no checksum (indicated by 0 in the header field), IPv6 requires a checksum in UDP headers.

IPv6 routers do not perform IP fragmentation. IPv6 hosts are required to either perform path MTU discovery, perform end-to-end fragmentation, or to send packets no larger than the default Maximum transmission unit (MTU), which is 1280 octets.

Mobility

Unlike mobile IPv4, mobile IPv6 avoids triangular routing and is therefore as efficient as native IPv6. IPv6 routers may also allow entire subnets to move to a new router connection point without renumbering.[33]

Extension headers

The IPv6 packet header has a minimum size of 40 octets (320 bits). Options are implemented as extensions. This provides the opportunity to extend the protocol in the future without affecting the core packet structure.[34] However, a study in 2015 indicated that some network operators dropped IPv6 packets with extension headers when they traversed transit autonomous systems.[35]

Jumbograms

IPv4 limits packets to 65,535 (2¹⁶−1) octets of payload. An IPv6 node can optionally handle packets over this limit, referred to as jumbograms, which can be as large as 4,294,967,295 (2³²−1) octets. The use of jumbograms may improve performance over high-MTU links. The use of jumbograms is indicated by the Jumbo Payload Option extension header.[36]


IPv6 packets

Ipv6_header.svg

An IPv6 packet has two parts: a header and payload.

The header consists of a fixed portion with minimal functionality required for all packets and may be followed by optional extensions to implement special features.

The fixed header occupies the first 40 octets (320 bits) of the IPv6 packet. It contains the source and destination addresses, traffic classification options, a hop counter, and the type of the optional extension or payload which follows the header. This _Next Header_ field tells the receiver how to interpret the data which follows the header. If the packet contains options, this field contains the option type of the next option. The "Next Header" field of the last option, points to the upper-layer protocol that is carried in the packet's payload.

Extension headers carry options that are used for special treatment of a packet in the network, e.g., for routing, fragmentation, and for security using the IPsec framework.

Without special options, a payload must be less than . With a Jumbo Payload option (in a _Hop-By-Hop Options_ extension header), the payload must be less than 4 GB.

Unlike with IPv4, routers never fragment a packet. Hosts are expected to use Path MTU Discovery to make their packets small enough to reach the destination without needing to be fragmented. See IPv6 packet fragmentation.


Addressing

IPv6 addresses have 128 bits. The design of the IPv6 address space implements a different design philosophy than in IPv4, in which subnetting was used to improve the efficiency of utilization of the small address space. In IPv6, the address space is deemed large enough for the foreseeable future, and a local area subnet always uses 64 bits for the host portion of the address, designated as the interface identifier, while the most-significant 64 bits are used as the routing prefix.[37]

The identifier is only unique within the subnet to which a host is connected. IPv6 has a mechanism for automatic address detection,[38] so that address autoconfiguration always produces unique assignments.

Address representation

The 128 bits of an IPv6 address are represented in 8 groups of 16 bits each. Each group is written as four hexadecimal digits (sometimes called hextets[39][40] or more formally a hexadectets[41] and informally a quibble or quad-nibble [42]) and the groups are separated by colons (:). An example of this representation is .

For convenience, an IPv6 address may be abbreviated to shorter notations by application of the following rules.

-   One or more leading zeros from any groups of hexadecimal digits are removed; this is usually done to either all or none of the leading zeros. For example, the group is converted to .
-   Consecutive sections of zeros are replaced with a double colon (::). The double colon may only be used once in an address, as multiple use would render the address indeterminate. recommends that a double colon not be used to denote an omitted single section of zeros.[43]

An example of application of these rules:

    Initial address:
    After removing all leading zeros in each group:
    After omitting consecutive sections of zeros:

The loopback address is defined in and may be abbreviated to by using both rules.

As an IPv6 address may have more than one representation, the IETF has issued a proposed standard for representing them in text.[44]

Link-local address

All interfaces of IPv6 hosts require a link-local address. An IPv6 link-local address is derived from the MAC address of the interface and the prefix . The process involves filling the address space with prefix bits left-justified to the most-significant bit, and filling the MAC address in EUI-64 format into the least-significant bits. If any bits remain to be filled between the two parts, those are set to zero.[45]

Address uniqueness and router solicitation

Because IPv6 does not implement broadcast, on which the functionality of the Address Resolution Protocol (ARP) is based, the Neighbor Discovery Protocol (NDP, ND) is used at the link layer to map Layer 3 IPv6 addresses to Layer 2 addresses, such as the MAC address of Ethernet network cards. The NDP relies on ICMPv6 and multicast transmission.[46] IPv6 hosts verify the uniqueness of their IPv6 addresses in a local area network (LAN) by sending a neighbor solicitation message asking for the link layer address of the IPv6 address. If any other host in the LAN is using that address, it responds. In a LAN, MAC addresses are designed to be unique on each network card, which minimizes chances of duplication.[47]

After having generated a link-local address, the IPv6 host determines if the LAN is connected to any router network card with IPv6 implementation by sending out a ICMPv6 router solicitation message to the all-routers[48][49] multicast group with its link-local address as source. If there is no answer after a predetermined number of attempts, the host concludes that no routers are connected. If it does get a response from a router, there will be network information inside that is needed to create a globally unique address. There are also two flag bits that tell the host whether it should use DHCP to get further information and addresses:

-   The Manage bit, that indicates whether or not the host should use DHCP to obtain additional addresses
-   The Other bit, that indicates whether or not the host should obtain other information through DHCP. The other information consists of one or more prefix information options for the subnets that the host is attached to, a lifetime for the prefix, and two flags:[50]
    -   On-link: If this flag is set, the host will treat all addresses on the specific subnet as being on-link, and send packets directly to them instead of sending them to a router for the duration of the given lifetime.
    -   Address: This is the flag that tells the host to actually create a global address.

Global addressing

The assignment procedure for global addresses is similar to local address construction. The prefix is supplied from router advertisements on the network. Multiple prefix announcements cause multiple addresses to be configured.[51]

Stateless address autoconfiguration (SLAAC) requires a address block, as defined in . Local Internet registries are assigned at least blocks, which they divide among subordinate networks.[52] The initial recommendation stated assignment of a subnet to end-consumer sites (). This was replaced by , which "recommends giving home sites significantly more than a single , but does not recommend that every home site be given a either". s are specifically considered. It remains to be seen if ISPs will honor this recommendation. For example, during initial trials, Comcast customers were given a single network.[53]


IPv6 in the Domain Name System

In the Domain Name System (DNS), hostnames are mapped to IPv6 addresses by AAAA ("quad-A") resource records. For reverse resolution, the IETF reserved the domain ip6.arpa, where the name space is hierarchically divided by the 1-digit hexadecimal representation of nibble units (4 bits) of the IPv6 address. This scheme is defined in .

When a dual-stack host queries a DNS server to resolve a fully qualified domain name (FQDN), the DNS client of the host sends two DNS requests, one querying A records and the other querying AAAA records. The host operating system may be configured with a preference for address selection rules .[54]

An alternate record type was used in early DNS implementations for IPv6, designed to facilitate network renumbering, the _A6_ records for the forward lookup and a number of other innovations such as _bit-string labels_ and _DNAME_ records. It is defined in and its references (with further discussion of the pros and cons of both schemes in ), but has been deprecated to experimental status ().


Transition mechanisms

IPv6 is not foreseen to supplant IPv4 instantaneously. Both protocols will continue to operate simultaneously for some time. Therefore, IPv6 transition mechanisms are needed to enable IPv6 hosts to reach IPv4 services and to allow isolated IPv6 hosts and networks to reach each other over IPv4 infrastructure.[55]

According to Silvia Hagen, a dual-stack implementation of the IPv4 and IPv6 on devices is the easiest way to migrate to IPv6.[56] Many other transition mechanisms use tunneling to encapsulate IPv6 traffic within IPv4 networks and vice versa. This is an imperfect solution, which reduces the maximum transmission unit (MTU) of a link and therefore complicates Path MTU Discovery, and may increase latency.[57][58]

Dual-stack IP implementation

Dual-stack IP implementations provide complete IPv4 and IPv6 protocol stacks in the operating system of a computer or network device on top of the common physical layer implementation, such as Ethernet. This permits dual-stack hosts to participate in IPv6 and IPv4 networks simultaneously. The method is defined in .[59]

A device with dual-stack implementation in the operating system has an IPv4 and IPv6 address, and can communicate with other nodes in the LAN or the Internet using either IPv4 or IPv6. The Domain Name System (DNS) protocol is used by both IP protocols to resolve fully qualified domain names (FQDN) and IP addresses, but dual stack requires that the resolving DNS server can resolve both types of addresses. Such a dual stack DNS server would hold IPv4 addresses in the A records, and IPv6 addresses in the AAAA records. Depending on the destination that is to be resolved, a DNS name server may return an IPv4 or IPv6 IP address, or both. A default address selection mechanism, or preferred protocol, needs to be configured either on hosts or the DNS server. The IETF has published Happy Eyeballs to assist dual stack applications, so that they can connect using both IPv4 and IPv6, but prefer an IPv6 connection if it is available. However, dual-stack also needs to be implemented on all routers between the host and the service for which the DNS server has returned a IPv6 address. Dual-stack clients should only be configured to prefer IPv6, if the network is able to forward IPv6 packets using the IPv6 versions of routing protocols. When dual stack networks protocols are in place the application layer can be migrated to IPv6.[60]

While dual-stack is supported by major operating system and network device vendors, legacy networking hardware and servers don't support IPv6.

ISP customers with public-facing IPv6

IPv6_Prefix_Assignment_Example-en.svg Internet service providers (ISPs) are increasingly providing their business and private customers with public-facing IPv6 global unicast addresses. However, if in the local area network (LAN) IPv4 is still used, and the ISP can only provide a public facing IPv6, the IPv4 LAN addresses are translated into the public facing IPv6 address using NAT64, a network address translation (NAT) mechanism. Some ISPs cannot provide their customers with public-facing IPv4 and IPv6 addresses, thus supporting dual stack networking, because some ISPs have exhausted their globally routable IPv4 address pool. Meanwhile, ISP customers are still trying to reach IPv4 web servers and other destinations.[61]

A significant percentage of ISPs in all Regional Internet Registry (RIR) zones have obtained IPv6 address space. This includes many of the world’s major ISPs and mobile network operators, such as Verizon Wireless, StarHub Cable, Chubu Telecommunications, Kabel Deutschland, Swisscom, T-Mobile, Internode and Telefonica.[62]

While some ISPs still allocate customers only IPv4 addresses, many ISPs allocate their customers only an IPv6 or dual stack IPv4 and IPv6. ISPs report the share of IPv6 traffic from customers over their network to be anything between 20% and 40%, but by mid-2017 IPv6 traffic still only accounted for a fraction of total traffic at several large Internet exchange points (IXPs). AMS-IX reported it to be 2% and SeattleIX reported 7%. A 2017 survey found that many DSL customers that were served by a dual stack ISP did not request DNS servers to resolve fully qualified domain names into IPv6 addresses. The survey also found that the majority of traffic from IPv6-ready webserver resources were still requested and served over IPv4, mostly due to ISP customers that did not use the dual stack facility provided by their ISP and to a lesser extent due to customers of IPv4-only ISPs.[63]

Tunneling

The technical basis for tunneling, or encapsulating IPv6 packets in IPv4 packets, is outlined in RFC 4213. When the Internet backbone was IPv4-only, one of the frequently used tunneling protocols was 6to4.[64] Teredo tunneling was also frequently used for integrating IPv6 LANs with the IPv4 Internet backbone. Teredo is outlined in RFC 4380 and allows IPv6 local area networks to tunnel over IPv4 networks, by encapsulating IPv6 packets within UDP. The Teredo relay is an IPv6 router that mediates between a Teredo server and the native IPv6 network. It was expected that 6to4 and Teredo would be widely deployed until ISP networks would switch to native IPv6, but by 2014 Google Statistics showed that the use of both mechanisms had dropped to almost 0.[65]

IPv4-mapped IPv6 addresses

Hybrid dual-stack IPv6/IPv4 implementations recognize a special class of addresses, the IPv4-mapped IPv6 addresses. These addresses are typically written with a 96-bit prefix in the standard IPv6 format, and the remaining 32 bits written in the customary dot-decimal notation of IPv4.

Addresses in this group consist of an 80-bit prefix of zeros, the next 16 bits are ones, and the remaining, least-significant 32 bits contain the IPv4 address. For example, ::ffff:192.0.2.128 represents the IPv4 address 192.0.2.128. Another deprecated format for IPv4-compatible IPv6 addresses is ::192.0.2.128.[66]

Because of the significant internal differences between IPv4 and IPv6 protocol stacks, some of the lower-level functionality available to programmers in the IPv6 stack does not work the same when used with IPv4-mapped addresses. Some common IPv6 stacks do not implement the IPv4-mapped address feature, either because the IPv6 and IPv4 stacks are separate implementations (e.g., Microsoft Windows 2000, XP, and Server 2003), or because of security concerns (OpenBSD).[67] On these operating systems, a program must open a separate socket for each IP protocol it uses. On some systems, e.g., the Linux kernel, NetBSD, and FreeBSD, this feature is controlled by the socket option IPV6_V6ONLY, as specified in .[68]

defines a class of IPv4-embedded IPv6 addresses with the address prefix 64:ff9b::/96 for use in NAT64 transition methods. For example, 64:ff9b::192.0.2.128 represents the IPv4 address 192.0.2.128.


IPv6 readiness

Compatibility with IPv6 networking is mainly a software or firmware issue. However, much of the older hardware that could in principle be upgraded is likely to be replaced instead. In 2010, the American Registry for Internet Numbers (ARIN) suggested that all Internet servers be prepared to serve IPv6-only clients by January 2012.[69]

Application software

Host software may have only IPv4 or only IPv6 networking software, or it may support dual-stack, or hybrid dual-stack operation. Many popular applications with networking capabilities are compliant. Some software transitioning mechanisms are outlined in , , and .

Operating systems

IPv6 has been implemented on all major operating systems in use in commercial, business, and home consumer environments. All personal computers and smartphones running recent major operating system versions support IPv6.

Hardware and embedded systems

The CableLabs consortium published the 160 Mbit/s DOCSIS 3.0 IPv6-ready specification for cable modems in August 2006. DOCSIS 2.0 was updated as _DOCSIS 2.0 + IPv6_ to provide IPv6 support, which may be available with a firmware upgrade.[70][71]


Security

Shadow networks

The addition of nodes having IPv6 enabled by default by the software manufacturer, may result in the inadvertent creation of _shadow networks_, causing IPv6 traffic flowing into networks having only IPv4 security management in place. This may also occur with operating system upgrades, when the newer operating system enables IPv6 by default, while the older one did not. Failing to update the security infrastructure to accommodate IPv6 can lead to IPv6 traffic bypassing it.[72] Shadow networks have occurred on business networks in which enterprises are replacing Windows XP systems that do not have an IPv6 stack enabled by default, with Windows 7 systems, that do.[73] Some IPv6 stack implementors have therefore recommended disabling IPv4 mapped addresses and instead using a dual-stack network where supporting both IPv4 and IPv6 is necessary.[74]

IPv6 packet fragmentation

Research has shown that the use of fragmentation can be leveraged to evade network security controls, similar to IPv4. As a result, requires that the first fragment of an IPv6 packet contains the entire IPv6 header chain, such that some very pathological fragmentation cases are forbidden. Additionally, as a result of research on the evasion of RA-Guard in , has deprecated the use of fragmentation with Neighbor Discovery, and discouraged the use of fragmentation with Secure Neighbor Discovery (SEND).


Standardization through RFCs

Working-group proposals

Due to the anticipated global growth of the Internet, the Internet Engineering Task Force (IETF) in the early 1990s started an effort to develop a next generation IP protocol.[75] By the beginning of 1992, several proposals appeared for an expanded Internet addressing system and by the end of 1992 the IETF announced a call for white papers.[76] In September 1993, the IETF created a temporary, ad-hoc _IP Next Generation_ (IPng) area to deal specifically with such issues. The new area was led by Allison Mankin and Scott Bradner, and had a directorate with 15 engineers from diverse backgrounds for direction-setting and preliminary document review:[77][78] The working-group members were J. Allard (Microsoft), Steve Bellovin (AT&T), Jim Bound (Digital Equipment Corporation), Ross Callon (Wellfleet), Brian Carpenter (CERN), Dave Clark (MIT), John Curran (NEARNET), Steve Deering (Xerox), Dino Farinacci (Cisco), Paul Francis (NTT), Eric Fleischmann (Boeing), Mark Knopper (Ameritech), Greg Minshall (Novell), Rob Ullmann (Lotus), and Lixia Zhang (Xerox).[79]

The Internet Engineering Task Force adopted the IPng model on 25 July 1994, with the formation of several IPng working groups.[80] By 1996, a series of RFCs was released defining Internet Protocol version 6 (IPv6), starting with . (Version 5 was used by the experimental Internet Stream Protocol.)

RFC standardization

The first RFC to standardize IPv6 was the in 1995, which became obsoleted by in 1998.[81] In July 2017 this RFC was replaced by .[82]


Deployment

Rir-ipv6-allocation-rate.svg (RIR)]] The 1993 introduction of Classless Inter-Domain Routing (CIDR) in the routing and IP address allocation for the Internet, and the extensive use of network address translation (NAT), delayed IPv4 address exhaustion. The final phase of exhaustion started on 3 February 2011.[83] Universities were among the early adopters of IPv6. Virginia Tech deployed IPv6 at a trial location in 2004 and has since expanded IPv6 deployment across the campus network. In 2016 82% of the traffic on their network used IPv6. Imperial College London has been experimenting with IPv6 deployment since 2003 and in 2016 the IPv6 traffic on their networks averaged between 20% and 40%. A significant portion of this IPv6 traffic was generated through their high energy physics collaboration with CERN, which depends entirely on IPv6.[84]

Since 2008, the Domain Name System (DNS) supports IPv6. In the same year, IPv6 was first used in a major world event during the 2008 Summer Olympic Games in Beijing.[85][86] , about 4% of domain names and 16.2% of the networks in the Internet had IPv6 protocol support.[87] In 2014 IPv4 still carried more than 99% of worldwide Internet traffic.[88][89]

The deployment of IPv6 in the Internet backbone is in progress. In 2018 only 25.3% of the about 54,000 autonomous systems advertised both IPv4 and IPv6 prefixes in the global Border Gateway Protocol (BGP) routing database. A further 243 networks advertised only an IPv6 prefix. Internet backbone transit networks offering IPv6 support exist in every country globally, except in parts of Africa, the Middle East and China.[90] By mid-2018 some major European broadband ISPs had deployed IPv6 for the majority of their customers. British Sky Broadcasting provided over 86% of its customers with IPv6, Deutsche Telekom had 56% deployment of IPv6, XS4ALL in the Netherlands had 73% deployment and in Belgium the broadband ISPs VOO and Telenet had 73% and 63% IPv6 deployment respectively.[91] In the United States the broadband ISP Comcast had an IPv6 deployment of about 66%. In 2018 Comcast reported an estimated 36.1 million IPv6 users, while AT&T reported 22.3 million IPv6 users.[92]

The Internet exchanges in Amsterdam and Seattle are the only large exchanges that publicly show IPv6 traffic statistics, which as of October 2018 are tracking at about 2.9% and 7.7%, growing at about 1.9% and -2.6% per year, respectively.[93][94] , the percentage of users reaching Google services with IPv6 is about 29%[95] and about 26% of Alexa Top 1000 web servers support IPv6.[96] According to the Internet Society's report _State of IPv6 Deployment 2018_ major mobile network providers drove the IPv6 adoption. In Japan the mobile network providers Nippon Telegraph and Telephone (NTT), KDDI and SoftBank pushed forward on IPv6 deployment, while in India IPv6 adoption was advanced by Jio,[97] which has a LTE network which covers India’s 29 states and reaches 80% of the country’s population.[98] In 2018 Jio had an estimated 237.6 million IPv6 users.[99] In the United States IPv6 adoption was pioneered by Verizon Wireless. In 2009 Verizon mandated IPv6 operation and reduced IPv4 to an optional capability for LTE cellular hardware.[100] Verizon productively deployed IPv6 across its existing IPv4 network to avoid the network complexity that arose from networks using the same private network IPv4 address space. As of 2018 80% of the traffic from Verizon Wireless to major content providers was using IPv6.[101]

In the United States, some data centers are transitioned to IPv6 networking. Since 2018, Facebook has been eliminating IPv4 in data centers, while the network-facing load balancers accept IPv4 and IPv6 traffic. LinkedIn and Microsoft have stated intentions to move their networks to IPv6.[102] Google, LinkedIn, and Akamai are as of 2018 deploying IPv6 in data center networks and are connecting natively with IPv6 end users.[103]

Some governments, including the United States and China, have issued guidelines and requirements for IPv6 capability.


See also

-   China Next Generation Internet
-   Comparison of IPv6 support in operating systems
-   Comparison of IPv6 support in common applications
-   DoD IPv6 product certification
-   Happy Eyeballs
-   List of IPv6 tunnel brokers
-   University of New Hampshire InterOperability Laboratory


References


External links

-   IPv6 in the Linux Kernel by Rami Rosen.
-   Free Pool of IPv4 Address Space Depleted
-   An Introduction and Statistics about IPV6

{{-}}

IPv6 Category:Internet layer protocols Category:Network layer protocols Category:Computer-related introductions in 1996

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]  Obsoletes RFC 1883.

[11]

[12]

[13]

[14] , _Host extensions for IP multicasting_, S. Deering (August 1989)

[15] , _Embedding the Rendezvous Point (RP) Address in an IPv6 Multicast Address_, P. Savola, B. Haberman (November 2004)

[16] , _The Internet Multicast Address Allocation Architecture_, D. Thaler, M. Handley, D. Estrin (September 2000)

[17] , _Unicast-Prefix-based IPv6 Multicast Addresses_, B. Haberman, D. Thaler (August 2002)

[18]

[19] , _Router Renumbering for IPv6_, M. Crawford, August 2000.

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

[30]  IPv6|website=www.historyofdomainnames.com|language=en-US|access-date=2018-06-12|archive-url=https://web.archive.org/web/20180612211153/http://www.historyofdomainnames.com/ipv6/%7Carchive-date=12 June 2018}}

[31]

[32]

[33] , _Network Mobility (NEMO) Basic Protocol Support_, V. Devarapalli, R. Wakikawa, A. Petrescu, P. Thubert (January 2005)

[34]

[35]

[36] , _IPv6 Jumbograms_, D. Borman, S. Deering, R. Hinden (August 1999)

[37] , p. 9

[38] , R. Droms, J. Bound, B. Volz, T. Lemon, C. Perkins, and M. Carney, _Dynamic Host Configuration Protocol for IPv6 (DHCPv6)_, July 2003 (Proposed Standard)

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]  Obsoletes RFC 2460.

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]  www.seattleix.net|website=www.seattleix.net|language=en|access-date=2017-10-30}}

[94]

[95]

[96]  World IPv6 Launch |website=www.worldipv6launch.org |language=en-US |accessdate = 2019-06-21}}

[97]

[98]

[99]

[100]

[101]

[102]

[103]