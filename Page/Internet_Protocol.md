The INTERNET PROTOCOL (IP) is the principal communications protocol in the Internet protocol suite for relaying datagrams across network boundaries. Its routing function enables internetworking, and essentially establishes the Internet.

IP has the task of delivering packets from the source host to the destination host solely based on the IP addresses in the packet headers. For this purpose, IP defines packet structures that encapsulate the data to be delivered. It also defines addressing methods that are used to label the datagram with source and destination information.

Historically, IP was the connectionless datagram service in the original Transmission Control Program introduced by Vint Cerf and Bob Kahn in 1974, which was complemented by a connection-oriented service that became the basis for the Transmission Control Protocol (TCP). The Internet protocol suite is therefore often referred to as _TCP/IP_.

The first major version of IP, Internet Protocol Version 4 (IPv4), is the dominant protocol of the Internet. Its successor, Internet Protocol Version 6 (IPv6), has been growing in adoption, reaching almost 25% of all Internet traffic as of October, 2018.[1]


Function

to a Link protocol frame]] The Internet Protocol is responsible for addressing host interfaces, encapsulating data into datagrams (including fragmentation and reassembly) and routing datagrams from a source host interface to a destination host interface across one or more IP networks.[2] For these purposes, the Internet Protocol defines the format of packets and provides an addressing system.

Each datagram has two components: a header and a payload. The IP header includes source IP address, destination IP address, and other metadata needed to route and deliver the datagram. The payload is the data that is transported. This method of nesting the data payload in a packet with a header is called encapsulation.

IP addressing entails the assignment of IP addresses and associated parameters to host interfaces. The address space is divided into subnetworks, involving the designation of network prefixes. IP routing is performed by all hosts, as well as routers, whose main function is to transport packets across network boundaries. Routers communicate with one another via specially designed routing protocols, either interior gateway protocols or exterior gateway protocols, as needed for the topology of the network.


Version history

, PRNET, and SATNET on November 22, 1977]] In May 1974, the Institute of Electrical and Electronics Engineers (IEEE) published a paper entitled "A Protocol for Packet Network Intercommunication".[3] The paper's authors, Vint Cerf and Bob Kahn, described an internetworking protocol for sharing resources using packet switching among network nodes. A central control component of this model was the "Transmission Control Program" that incorporated both connection-oriented links and datagram services between hosts. The monolithic Transmission Control Program was later divided into a modular architecture consisting of the Transmission Control Protocol and User Datagram Protocol at the transport layer and the Internet Protocol at the internet layer. The model became known as the _Department of Defense (DoD) Internet Model_ and _Internet protocol suite_, and informally as _TCP/IP_.

IP versions 0 to 3 were experimental versions, used between 1977 and 1979. The following Internet Experiment Note (IEN) documents describe versions of the Internet Protocol prior to the modern version of IPv4:

-   IEN 2 (_Comments on Internet Protocol and TCP_), dated August 1977 describes the need to separate the TCP and Internet Protocol functionalities (which were previously combined.) It proposes the first version of the IP header, using 0 for the version field.
-   IEN 26 (_A Proposed New Internet Header Format_), dated February 1978 describes a version of the IP header that uses a 1-bit version field.
-   IEN 28 (_Draft Internetwork Protocol Description Version 2_), dated February 1978 describes IPv2.
-   IEN 41 (_Internetwork Protocol Specification Version 4_), dated June 1978 describes the first protocol to be called IPv4. The IP header is different from the modern IPv4 header.
-   IEN 44 (_Latest Header Formats_), dated June 1978 describes another version of IPv4, also with a header different from the modern IPv4 header.
-   IEN 54 (_Internetwork Protocol Specification Version 4_), dated September 1978 is the first description of IPv4 using the header that would be standardized in .

The dominant internetworking protocol in the Internet Layer in use today is IPv4; the number 4 is the protocol version number carried in every IP datagram. IPv4 is described in (1981).

Version number 5 was used by the Internet Stream Protocol, an experimental streaming protocol.

The successor to IPv4 is IPv6. IPv6 was a result of several years of experimentation and dialog during which various protocol models were proposed, such as TP/IX (), PIP () and TUBA (TCP and UDP with Bigger Addresses, ). Its most prominent difference from version 4 is the size of the addresses. While IPv4 uses 32 bits for addressing, yielding c. 4.3 billion () addresses, IPv6 uses 128-bit addresses providing ca. 340 undecillion, or addresses. Although adoption of IPv6 has been slow, , all United States government systems have demonstrated basic infrastructure support for IPv6.[4]

The assignment of the new protocol as IPv6 was uncertain until due diligence revealed that IPv6 had not yet been used previously.[5] Other protocol proposals named _IPv9_ and _IPv8_ briefly surfaced, but had no affiliation with any international standards body, and have had no support.[6] However, on April 1, 1994, the IETF published an April Fools' Day joke about IPv9.[7]


Reliability

The design of the Internet protocol suite adheres to the end-to-end principle, a concept adapted from the CYCLADES project. Under the end-to-end principle, the network infrastructure is considered inherently unreliable at any single network element or transmission medium and is dynamic in terms of availability of links and nodes. No central monitoring or performance measurement facility exists that tracks or maintains the state of the network. For the benefit of reducing network complexity, the intelligence in the network is purposely located in the end nodes.

As a consequence of this design, the Internet Protocol only provides best-effort delivery and its service is characterized as unreliable. In network architectural language, it is a connectionless protocol, in contrast to connection-oriented communication. Various error conditions may occur, such as data corruption, packet loss and duplication. Because routing is dynamic, meaning every packet is treated independently, and because the network maintains no state based on the path of prior packets, different packets may be routed to the same destination via different paths, resulting in out-of-order delivery to the receiver.

All error conditions in the network must be detected and compensated by the participating end nodes. The upper layer protocols of the Internet protocol suite are responsible for resolving reliability issues. For example, a host may buffer network data to ensure correct ordering before the data is delivered to an application.

IPv4 provides safeguards to ensure that the header of an IP packet is error-free. A routing node discards packets that fail a header checksum test. Although the Internet Control Message Protocol (ICMP) provides notification of errors, a routing node is not required to notify either end node of errors. IPv6, by contrast, operates without header checksums, since current link layer technology is assumed to provide sufficient error detection.[8][9]


Link capacity and capability

The dynamic nature of the Internet and the diversity of its components provide no guarantee that any particular path is actually capable of, or suitable for, performing the data transmission requested. One of the technical constraints is the size of data packets allowed on a given link. Facilities exist to examine the maximum transmission unit (MTU) size of the local link and Path MTU Discovery can be used for the entire intended path to the destination.

The IPv4 internetworking layer has the ability to automatically fragment the original datagram into smaller units for transmission. In this case, IP provides re-ordering of fragments delivered out of order.[10] An IPv6 network does not perform fragmentation or reassembly, and as per the end-to-end principle, requires end stations and higher-layer protocols to avoid exceeding the network's MTU.[11]

The Transmission Control Protocol (TCP) is an example of a protocol that adjusts its segment size to be smaller than the MTU. The User Datagram Protocol (UDP) and ICMP disregard MTU size, thereby forcing IP to fragment oversized datagrams.[12]


Security

During the design phase of the ARPANET and the early Internet, the security aspects and needs of a public, international network could not be adequately anticipated. Consequently, many Internet protocols exhibited vulnerabilities highlighted by network attacks and later security assessments. In 2008, a thorough security assessment and proposed mitigation of problems was published.[13] The IETF has been pursuing further studies.[14]


See also

-   ICANN
-   IP forwarding algorithm
-   List of IP protocol numbers
-   Next-generation network


References


External links

-   -   -

Internet_Protocol Category:Internet layer protocols

[1] https://www.google.com/intl/en/ipv6/statistics.html

[2]

[3] Vinton G. Cerf, Robert E. Kahn, "A Protocol for Packet Network Intercommunication", IEEE Transactions on Communications, Vol. 22, No. 5, May 1974 pp. 637–648

[4] CIO council adds to IPv6 transition primer , gcn.com

[5]

[6]

[7] : _A Historical Perspective On The Usage Of IP Version 9_. April 1, 1994.

[8]  section 6.2

[9]

[10] Siyan, Karanjit. _Inside TCP/IP_, New Riders Publishing, 1997.

[11]

[12]

[13]

[14]