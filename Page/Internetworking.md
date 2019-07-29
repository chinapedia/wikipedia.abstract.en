INTERNETWORKING is "the concept of interconnecting different types of networks to build a large, global network"[1] such that any pair of connected hosts can exchange packets. To build an internetwork, the following are needed:[2] A standardized scheme to address packets to any host on any participating network; a standardized protocol defining format and handling of transmitted packets; components interconnecting the participating networks by routing packets to their destinations based on standardized addresses.

The resulting system of interconnected networks are called an _internetwork_, or simply an _internet_. Internetworking is a combination of the words _inter_ ("between") and networking; not _internet-working_ or _international-network_.

The most notable example of internetworking is the Internet, a network of networks based on many underlying hardware technologies. For the Internet, the Internet Protocol defines a unified, global address format and provides rules for format and handling of packets, and routers are the components that interconnect participating networks.

The smallest amount of effort to create an internet (an internetwork, not _the_ Internet), is to have two LANs of computers connected to each other via a router. Simply using either a switch or a hub to connect two local area networks together doesn't imply internetworking; it just expands the original LAN.


Interconnection of networks

Internetworking started as a way to connect disparate types of networking technology, but it became widespread through the developing need to connect two or more local area networks via some sort of wide area network. The original term for an internetwork was catenet.

The definition of an internetwork today includes the connection of other types of computer networks such as personal area networks. The network elements used to connect individual networks in the ARPANET, the predecessor of the Internet, were originally called gateways, but the term has been deprecated in this context, because of possible confusion with functionally different devices. Today the interconnecting gateways are called routers.

Another type of interconnection of networks often occurs within enterprises at the Link Layer of the networking model, i.e. at the hardware-centric layer below the level of the TCP/IP logical interfaces. Such interconnection is accomplished with network bridges and network switches. This is sometimes incorrectly termed internetworking, but the resulting system is simply a larger, single subnetwork, and no internetworking protocol, such as Internet Protocol, is required to traverse these devices. However, a single computer network may be converted into an internetwork by dividing the network into segments and logically dividing the segment traffic with routers. The Internet Protocol is designed to provide an unreliable (not guaranteed) packet service across the network. The architecture avoids intermediate network elements maintaining any state of the network. Instead, this function is assigned to the endpoints of each communication session. To transfer data reliably, applications must utilize an appropriate Transport Layer protocol, such as Transmission Control Protocol (TCP), which provides a reliable stream. Some applications use a simpler, connection-less transport protocol, User Datagram Protocol (UDP), for tasks which do not require reliable delivery of data or that require real-time service, such as video streaming [3] or voice chat.


Networking models

Two architectural models are commonly used to describe the protocols and methods used in internetworking.

The Open System Interconnection (OSI) reference model was developed under the auspices of the International Organization for Standardization (ISO) and provides a rigorous description for layering protocol functions from the underlying hardware to the software interface concepts in user applications. Internetworking is implemented in the Network Layer (Layer 3) of the model.

The Internet Protocol Suite, also called the TCP/IP model of the Internet was not designed to conform to the OSI model and does not refer to it in any of the normative specifications in Requests for Comment and Internet standards. Despite similar appearance as a layered model, it uses a much less rigorous, loosely defined architecture that concerns itself only with the aspects of logical networking. It does not discuss hardware-specific low-level interfaces, and assumes availability of a Link Layer interface to the local network link to which the host is connected. Internetworking is facilitated by the protocols of its Internet Layer.


See also

-   History of the Internet


References

Category:Network architecture

[1]

[2]

[3]