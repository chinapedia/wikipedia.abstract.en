In computer networking, the MAXIMUM TRANSMISSION UNIT (MTU) is the size of the largest protocol data unit (PDU) that can be communicated in a single network layer transaction.[1] The MTU relates to, but is not identical to the maximum frame size that can be transported on the data link layer, e.g. Ethernet frame.

Larger MTU is associated with reduced overhead. Smaller MTU values can reduce network delay. In many cases, MTU is dependent on underlying network capabilities and must be adjusted manually or automatically so as to not exceed these capabilities. MTU parameters may appear in association with a communications interface or standard. Some systems may decide MTU at connect time.


Applicability

MTUs apply to communications protocols and network layers. The MTU is specified in terms of bytes or octets of the largest protocol data unit that the layer can pass onwards. MTU parameters usually appear in association with a communications interface (NIC, serial port, etc.). Standards (Ethernet, for example) can fix the size of an MTU; or systems (such as point-to-point serial links) may decide MTU at connect time.

Underlying data link and physical layers usually add overhead to the network layer data to be transported, so for a given maximum frame size of a medium one needs to subtract the amount of overhead to calculate that medium's MTU. For example, with Ethernet, the maximum frame size is 1518 bytes, 18 bytes of which are overhead (header and FCS), resulting in an MTU of 1500 bytes.


Tradeoffs

A larger MTU brings greater efficiency because each network packet carries more user data while protocol overheads, such as headers or underlying per-packet delays, remain fixed; the resulting higher efficiency means an improvement in bulk protocol throughput. A larger MTU also means processing of fewer packets for the same amount of data. In some systems, per-packet-processing can be a critical performance limitation.

However, this gain is not without a downside. Large packets occupy a slow link for more time than a smaller packet, causing greater delays to subsequent packets, and increasing network delay and delay variation. For example, a 1500-byte packet, the largest allowed by Ethernet at the network layer, ties up a 14.4k modem for about one second.

Large packets are also problematic in the presence of communications errors. If no forward error correction is used, corruption of a single bit in a packet requires that the entire packet be retransmitted, which can be costly. At a given bit error rate, larger packets are more susceptible to corruption. Their greater payload makes retransmissions of larger packets take longer. Despite the negative effects on retransmission duration, large packets can still have a net positive effect on end-to-end TCP performance.[2]


Internet protocol

The Internet protocol suite was designed to work over many different networking technologies, each of which may use packets of different size. While a host will know the MTU of its own interface and possibly that of its peers (from initial handshakes), it will not initially know the lowest MTU in a chain of links to other peers. Another potential problem is that higher-level protocols may create packets larger than even the local link supports.

IPv4 allows fragmentation which divides the datagram into pieces, each small enough to accommodate a specified MTU limitation. This fragmentation process takes place at the internet layer. The fragmented packets are marked so that the IP layer of the destination host knows it should reassemble the packets into the original datagram.

All fragments of a packet must arrive for the packet to be considered received. If the network drops any fragment, the entire packet is lost.

When the number of packets that must be fragmented or the number of fragments is great, fragmentation can cause unreasonable or unnecessary overhead. For example, various tunneling situations may exceed the MTU by very little as they add just a header's worth of data. The addition is small, but each packet now has to be sent in two fragments, the second of which carries very little payload. The same amount of payload is being moved, but every intermediate router has to forward twice as many packets.

The Internet Protocol requires that hosts must be able to process IP datagrams of at least 576 bytes (for IPv4) or 1280 bytes (for IPv6). However, this does not preclude link layers with an MTU smaller than this minimum MTU from conveying IP data. For example, according to IPv6's specification, if a particular link layer cannot deliver an IP datagram of 1280 bytes in a single frame, then the link layer must provide its own fragmentation and reassembly mechanism, separate from the IP fragmentation mechanism, to ensure that a 1280-byte IP datagram can be delivered, intact, to the IP layer.

IP MTUs for common media

In the context of Internet Protocol, MTU refers to the maximum size of an IP packet that can be transmitted without fragmentation over a given medium. The size of an IP packet includes IP headers but excludes headers from the link layer. In the case of an Ethernet frame this adds an overhead of 18 bytes, or 22 bytes with an IEEE 802.1Q tag for VLAN tagging or class of service.

The MTU should not be confused with the minimum datagram size that all hosts must be prepared to accept. This is 576 bytes for IPv4[3] and of 1280 bytes for IPv6.[4]

+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Media for IP transport     | Maximum transmission unit (bytes)                                                                                                                                          | Notes                                                                                                                                                                    |
+============================+============================================================================================================================================================================+==========================================================================================================================================================================+
| Internet IPv4 path MTU     | At least 68,[5] max of 64 KiB[6]                                                                                                                                           | Systems may use Path MTU Discovery[7] to find the actual path MTU. Routing from larger MTU to smaller MTU causes IP fragmentation.                                       |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Internet IPv6 path MTU     | At least 1280,[8] max of 64 KiB, but up to 4 GiB with optional jumbogram[9]                                                                                                | Systems must use Path MTU Discovery[10] to find the actual path MTU.                                                                                                     |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Ethernet v2                | 1500                                                                                                                                                                       | Nearly all IP over Ethernet implementations use the Ethernet II frame format.                                                                                            |
|                            |                                                                                                                                                                            |                                                                                                                                                                          |
|                            |  Network Working Group of the IETF,                                                                                                                                        |                                                                                                                                                                          |
|                            |  : A Standard for the Transmission of IP Datagrams over Ethernet Networks,                                                                                                 |                                                                                                                                                                          |
|                            |  Page 1,                                                                                                                                                                   |                                                                                                                                                                          |
|                            |  "The maximum length of the data field of a packet sent over an Ethernet is 1500 octets, thus the maximum length of an IP datagram sent over an Ethernet is 1500 octets.", |                                                                                                                                                                          |
|                            |  ERRATA                                                                                                                                                                    |                                                                                                                                                                          |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Ethernet with LLC and SNAP | 1492[11]                                                                                                                                                                   |                                                                                                                                                                          |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                            |                                                                                                                                                                            |                                                                                                                                                                          |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Ethernet jumbo frames      | 1501 – 9216[12] or more                                                                                                                                                    | The limit varies by vendor. For correct interoperation, frames should be no larger than the maximum frame size supported by any device on the network segment.{{Cite web |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PPPoE v2                   | 1492[13]                                                                                                                                                                   | Ethernet II MTU (1500) less PPPoE header (8)                                                                                                                             |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DS-Lite over PPPoE         | 1452                                                                                                                                                                       | Ethernet II MTU (1500) less PPPoE header (8) and IPv6 header (40)                                                                                                        |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PPPoE jumbo frames         | 1493 – 9190 or more[14]                                                                                                                                                    | Ethernet Jumbo Frame MTU (1501 - 9198) less PPPoE header (8)                                                                                                             |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| IEEE 802.11 Wi-Fi (WLAN)   | 2304                                                                                                                                                                       | The maximum MSDU size is 2304 before encryption. WEP will add 8 bytes, WPA-TKIP 20 bytes, and WPA2-CCMP 16 bytes.                                                        |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Token Ring (802.5)         | 4464                                                                                                                                                                       |                                                                                                                                                                          |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FDDI                       | 4352[15]                                                                                                                                                                   |                                                                                                                                                                          |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Path MTU Discovery

The Internet Protocol defines the _path MTU_ of an Internet transmission path as the smallest MTU supported by any of the hops on the path between a source and destination. Put another way, the path MTU is the largest packet size that can traverse this path without suffering fragmentation.

(IPv4) and (IPv6) describe _Path MTU Discovery_, a technique for determining the path MTU between two IP hosts. It works by sending packets with the DF (don't fragment) option in the IP header set. Any device along the path whose MTU is smaller than the packet will drop such packets and send back an ICMP Destination Unreachable (Datagram Too Big) message which indicates its MTU. This information allows the source host to reduce its assumed path MTU appropriately. The process repeats until the MTU becomes small enough to traverse the entire path without fragmentation.

Standard Ethernet supports an MTU of 1500 bytes and Ethernet implementation supporting jumbo frames, allow for an MTU up to 9000 bytes. However, border protocols like PPPoE will reduce this. Path MTU Discovery exposes the difference between the MTU seen by Ethernet end-nodes and the Path MTU

Unfortunately, increasing numbers of networks drop ICMP traffic (for example, to prevent denial-of-service attacks), which prevents path MTU discovery from working. , Packetization Layer Path MTU Discovery, describes a Path MTU Discovery technique which responds more robustly to ICMP filtering. In an IP network, the path from the source address to the destination address may change in response to various events (load-balancing, congestion, outages, etc.) and this could result in the path MTU changing (sometimes repeatedly) during a transmission, which may introduce further packet drops before the host finds a new reliable MTU.

A failure of Path MTU Discovery carries the possible result of making some sites behind badly configured firewalls unreachable. A connection with mismatched MTU may work for low-volume data but fail as soon as a host sends a large block of data. For example, with Internet Relay Chat a connecting client might see the initial messages up to and including the initial ping (sent by the server as an anti-spoofing measure), but get no response after that. This is because the large set of welcome messages sent at that point are packets that exceed the path MTU. One can possibly work around this, depending on which part of the network one controls; for example one can change the MSS (maximum segment size) in the initial packet that sets up the TCP connection at one's firewall.


MTU in other contexts

Sometimes the term is used for maximum PDU sizes in communication layers other than the network layer (L3).

-   Cisco Systems use 'L2 MTU' for the maximum frame size.[16]
-   Dell/Force10 use 'MTU' for the maximum frame size.[17]
-   Former Hewlett Packard used just 'MTU' for the maximum frame size including the optional IEEE 802.1Q tag.[18]
-   Juniper Networks use 'Physical Interface MTU' (L3 MTU plus some unspecified protocol overhead), 'Logical Interface MTU' (consistent with IETF MTU) and 'Maximum MTU' (maximum configurable frame size for jumbo frames).[19]

The transmission of a packet on a physical network segment that is larger than the segment's MTU is known as JABBER. This is almost always caused by faulty devices.[20] Network switches and repeater hubs have a built-in capability to detect when a device is jabbering.[21][22]


References


Further reading

-


External links

-   Tweaking your MTU / RWin for Orange Broadband Users
-   How to set the TCP MSS value using iptables
-   mturoute – a console utility for debugging mtu problems
-   MSS Initiative
-   MTU Path   MTU discovery tool for IPv4 and IPv6 networks

Category:Packets (information technology)

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] , p. 1, "The IPv6 header [IPv6] has a 16-bit Payload Length field and, therefore, supports payloads up to 65,535 octets long. This document specifies an IPv6 hop-by-hop option, called the Jumbo Payload option, that carries a 32-bit length field in order to allow transmission of IPv6 packets with payloads between 65,536 and 4,294,967,295 octets in length. Packets with such long payloads are referred to as 'jumbograms'."

[10]

[11] IEEE 802.3

[12]

[13]  with the standard Ethernet MTU of 1500 bytes; extensions exist

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22] IEEE 802.3 _27.3.1.7 Receive jabber functional requirements_