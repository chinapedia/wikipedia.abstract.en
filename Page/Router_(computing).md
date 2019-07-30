ASM/2-32EM router deployed at CERN in 1987]]

A ROUTER is a networking device that forwards data packets between computer networks. Routers perform the traffic directing functions on the Internet. Data sent through the internet, such as a web page or email, is in the form of data packets. A packet is typically forwarded from one router to another router through the networks that constitute an internetwork (e.g. the Internet) until it reaches its destination node.[1]

A router is connected to two or more data lines from different networks. When a data packet comes in on one of the lines, the router reads the network address information in the packet to determine the ultimate destination. Then, using information in its routing table or routing policy, it directs the packet to the next network on its journey.

The most familiar type of routers are home and small office routers that simply forward IP packets between the home computers and the Internet. An example of a router would be the owner's cable or DSL router, which connects to the Internet through an Internet service provider (ISP). More sophisticated routers, such as enterprise routers, connect large business or ISP networks up to the powerful core routers that forward data at high speed along the optical fiber lines of the Internet backbone. Though routers are typically dedicated hardware devices, software-based routers also exist.


Operation

When multiple routers are used in interconnected networks, the routers can exchange information about destination addresses using a routing protocol. Each router builds up a routing table listing the preferred routes between any two systems on the interconnected networks.[2]

A router has two types of network element components organized onto separate _planes_:[3]

-   Control plane: A router maintains a routing table that lists which route should be used to forward a data packet, and through which physical interface connection. It does this using internal preconfigured directives, called static routes, or by learning routes dynamically using a routing protocol. Static and dynamic routes are stored in the routing table. The control-plane logic then strips non-essential directives from the table and builds a forwarding information base (FIB) to be used by the forwarding plane.
-   Forwarding plane: The router forwards data packets between incoming and outgoing interface connections. It forwards them to the correct network type using information that the packet header contains matched to entries in the FIB supplied by the control plane.


Applications

showing the telephone socket _(left, white)_ to connect it to the internet using ADSL, and Ethernet jacks _(right, yellow)_ to connect it to home computers and printers.]]

A router may have interfaces for different types of physical layer connections, such as copper cables, fiber optic, or wireless transmission. It can also support different network layer transmission standards. Each network interface is used to enable data packets to be forwarded from one transmission system to another. Routers may also be used to connect two or more logical groups of computer devices known as subnets, each with a different network prefix.

Routers may provide connectivity within enterprises, between enterprises and the Internet, or between internet service providers' (ISPs') networks. The largest routers (such as the Cisco CRS-1 or Juniper PTX) interconnect the various ISPs, or may be used in large enterprise networks.[4] Smaller routers usually provide connectivity for typical home and office networks.

All sizes of routers may be found inside enterprises.[5] The most powerful routers are usually found in ISPs, academic and research facilities. Large businesses may also need more powerful routers to cope with ever-increasing demands of intranet data traffic. A hierarchical internetworking model for interconnecting routers in large networks is in common use.[6]

Access, core and distribution

. This page configures Dynamic DNS.]] Access routers, including small office/home office (SOHO) models, are located at home and customer sites such as branch offices that do not need hierarchical routing of their own. Typically, they are optimized for low cost. Some SOHO routers are capable of running alternative free Linux-based firmware like Tomato, OpenWrt or DD-WRT.[7]

Distribution routers aggregate traffic from multiple access routers. Distribution routers are often responsible for enforcing quality of service across a wide area network (WAN), so they may have considerable memory installed, multiple WAN interface connections, and substantial onboard data processing routines. They may also provide connectivity to groups of file servers or other external networks.

In enterprises, a core router may provide a collapsed backbone interconnecting the distribution tier routers from multiple buildings of a campus, or large enterprise locations. They tend to be optimized for high bandwidth, but lack some of the features of edge routers.[8]

Security

External networks must be carefully considered as part of the overall security strategy of the local network. A router may include a firewall, VPN handling, and other security functions, or these may be handled by separate devices. Routers also commonly perform network address translation which restricts connections initiated from external connections but is not recognised as a security feature by all experts.[9]. Some experts argue that open source routers are more secure and reliable than closed source routers because open source routers allow mistakes to be quickly found and corrected.[10]

Routing different networks

Routers are also often distinguished on the basis of the network in which they operate. A router in a local area network (LAN) of a single organisation is called an _interior router_. A router that is operated in the Internet backbone is described as _exterior router_. While a router that connects a LAN with the Internet or a wide area network (WAN) is called a _border router_, or _gateway router_.[11]

Internet connectivity and internal use

Routers intended for ISP and major enterprise connectivity usually exchange routing information using the Border Gateway Protocol (BGP). defines the types of BGP routers according to their functions:[12]

-   _Edge router_: Also called a provider edge router, is placed at the edge of an ISP network. The router uses External Border Gateway Protocol to routers at other ISPs or large enterprise autonomous systems.
-   _Subscriber edge router_: Also called a Customer Edge router, is located at the edge of the subscriber's network, it also uses EBGP to its provider's Autonomous System. It is typically used in an (enterprise) organization.
-   _Inter-provider border router_: Interconnecting ISPs, is a BGP router that maintains BGP sessions with other BGP routers in ISP Autonomous Systems.
-   Core router: A _core router_ resides within an Autonomous System as a back bone to carry traffic between edge routers.[13]
-   Within an ISP: In the ISP's Autonomous System, a router uses internal BGP to communicate with other ISP edge routers, other intranet core routers, or the ISP's intranet provider border routers.
-   "Internet backbone:" The Internet no longer has a clearly identifiable backbone, unlike its predecessor networks. See default-free zone (DFZ). The major ISPs' system routers make up what could be considered to be the current Internet backbone core.[14] ISPs operate all four types of the BGP routers described here. An ISP "core" router is used to interconnect its edge and border routers. Core routers may also have specialized functions in virtual private networks based on a combination of BGP and Multi-Protocol Label Switching protocols.[15]
-   Port forwarding: Routers are also used for port forwarding between private Internet-connected servers.[16]
-   Voice/Data/Fax/Video Processing Routers: Commonly referred to as access servers or gateways, these devices are used to route and process voice, data, video and fax traffic on the Internet. Since 2005, most long-distance phone calls have been processed as IP traffic (VOIP) through a voice gateway. Use of access server type routers expanded with the advent of the Internet, first with dial-up access and another resurgence with voice phone service.
-   Larger networks commonly use multilayer switches, with layer 3 devices being used to simply interconnect multiple subnets within the same security zone, and higher layer switches when filtering, translation, load balancing or other higher level functions are required, especially between zones.


Historical and technical information

delivered to UCLA August 30, 1969, and went online October 29, 1969]]

The concept of an "Interface computer" was first used by Donald Davies for the NPL network in 1966.[17] The Interface Message Processor (IMP), conceived in 1967 for use in the ARPANET, had fundamentally the same functionality as a router does today. The idea for a router (called "gateways" at the time) initially came about through an international group of computer networking researchers called the International Network Working Group (INWG). Set up in 1972 as an informal group to consider the technical issues involved in connecting different networks, it became a subcommittee of the International Federation for Information Processing later that year.[18] These gateway devices were different from most previous packet switching schemes in two ways. First, they connected dissimilar kinds of networks, such as serial lines and local area networks. Second, they were connectionless devices, which had no role in assuring that traffic was delivered reliably, leaving that entirely to the hosts.

The idea was explored in more detail, with the intention to produce a prototype system as part of two contemporaneous programs. One was the initial DARPA-initiated program, which created the TCP/IP architecture in use today.[19] The other was a program at Xerox PARC to explore new networking technologies, which produced the PARC Universal Packet system; due to corporate intellectual property concerns it received little attention outside Xerox for years.[20] Some time after early 1974, the first Xerox routers became operational. The first true IP router was developed by Ginny Strazisar at BBN, as part of that DARPA-initiated effort, during 1975-1976.[21] By the end of 1976, three PDP-11-based routers were in service in the experimental prototype Internet.[22]

The first multiprotocol routers were independently created by staff researchers at MIT and Stanford in 1981; the Stanford router was done by William Yeager, and the MIT one by Noel Chiappa; both were also based on PDP-11s.[23][24][25][26] Virtually all networking now uses TCP/IP, but multiprotocol routers are still manufactured. They were important in the early stages of the growth of computer networking when protocols other than TCP/IP were in use. Modern Internet routers that handle both IPv4 and IPv6 are multiprotocol but are simpler devices than routers processing AppleTalk, DECnet, IP and Xerox protocols.

From the mid-1970s and in the 1980s, general-purpose minicomputers served as routers. Modern high-speed routers are highly specialized computers with extra hardware added to speed both common routing functions, such as packet forwarding, and specialised functions such as IPsec encryption. There is substantial use of Linux and Unix software based machines, running open source routing code, for research and other applications. The Cisco IOS operating system was independently designed. Major router operating systems, such as Junos and NX-OS, are extensively modified versions of Unix software.


Forwarding

The main purpose of a router is to connect multiple networks and forward packets destined either for its own networks or other networks. A router is considered a layer-3 device because its primary forwarding decision is based on the information in the layer-3 IP packet, specifically the destination IP address. When a router receives a packet, it searches its routing table to find the best match between the destination IP address of the packet and one of the addresses in the routing table. Once a match is found, the packet is encapsulated in the layer-2 data link frame for the outgoing interface indicated in the table entry. A router typically does not look into the packet payload, but only at the layer-3 addresses to make a forwarding decision, plus optionally other information in the header for hints on, for example, quality of service (QoS). For pure IP forwarding, a router is designed to minimize the state information associated with individual packets.[27] Once a packet is forwarded, the router does not retain any historical information about the packet.

The routing table itself can contain information derived from a variety of sources, such as a default or static routes that are configured manually, or dynamic routing protocols where the router learns routes from other routers. A default route is one that is used to route all traffic whose destination does not otherwise appear in the routing table; this is common – even necessary – in small networks, such as a home or small business where the default route simply sends all non-local traffic to the Internet service provider. The default route can be manually configured (as a static route), or learned by dynamic routing protocols, or be obtained by DHCP.[28]

A router can run more than one routing protocol at a time, particularly if it serves as an autonomous system border router between parts of a network that run different routing protocols; if it does so, then redistribution may be used (usually selectively) to share information between the different protocols running on the same router.[29]

Besides making a decision as to which interface a packet is forwarded to, which is handled primarily via the routing table, a router also has to manage congestion when packets arrive at a rate higher than the router can process. Three policies commonly used in the Internet are tail drop, random early detection (RED), and weighted random early detection (WRED). Tail drop is the simplest and most easily implemented; the router simply drops new incoming packets once the length of the queue exceeds the size of the buffers in the router. RED probabilistically drops datagrams early when the queue exceeds a pre-configured portion of the buffer, until a pre-determined max, when it becomes tail drop. WRED requires a weight on the average queue size to act upon when the traffic is about to exceed the pre-configured size, so that short bursts will not trigger random drops.

Another function a router performs is to decide which packet should be processed first when multiple queues exist. This is managed through QoS, which is critical when Voice over IP is deployed, so as not to introduce excessive latency.

Yet another function a router performs is called policy-based routing where special rules are constructed to override the rules derived from the routing table when a packet forwarding decision is made.[30]

Router functions may be performed through the same internal paths that the packets travel inside the router. Some of the functions may be performed through an application-specific integrated circuit (ASIC) to avoid overhead of scheduling CPU time to process the packets. Others may have to be performed through the CPU as these packets need special attention that cannot be handled by an ASIC.


See also

-   DECbit
-   Mobile broadband modem
-   Modem
-   Residential gateway
-   TCAM Content addressable memory (hardware acceleration of route-search)
-   Wireless router


Notes


References


External links

-   Internet Engineering Task Force, the Routing Area last checked 21 January 2011.

Routers_(computing) Category:Internet architecture Category:Hardware routers Category:Networking hardware Category:Server appliance Category:Computer networking

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

[15] BGP/MPLS VPNs,RFC 2547, E. Rosen and Y. Rekhter, April 2004

[16]

[17]

[18] Davies, Shanks, Heart, Barker, Despres, Detwiler and Riml, "Report of Subgroup 1 on Communication System", INWG Note No. 1.

[19] Vinton Cerf, Robert Kahn, "A Protocol for Packet Network Intercommunication", IEEE Transactions on Communications, Volume 22, Issue 5, May 1974, pp. 637 - 648.

[20] David Boggs, John Shoch, Edward Taft, Robert Metcalfe, "Pup: An Internetwork Architecture" , IEEE Transactions on Communications, Volume 28, Issue 4, April 1980, pp. 612- 624.

[21]

[22] Craig Partridge, S. Blumenthal, "Data networking at BBN"; IEEE Annals of the History of Computing, Volume 28, Issue 1; January–March 2006.

[23] Valley of the Nerds: Who Really Invented the Multiprotocol Router, and Why Should We Care? , Public Broadcasting Service, Accessed August 11, 2007.

[24] Router Man , NetworkWorld, Accessed June 22, 2007.

[25] David D. Clark, "M.I.T. Campus Network Implementation", CCNG-2, Campus Computer Network Group, M.I.T., Cambridge, 1982; pp. 26.

[26] Pete Carey, "A Start-Up's True Tale: Often-told story of Cisco's launch leaves out the drama, intrigue", San Jose Mercury News, December 1, 2001.

[27]

[28]

[29]

[30]