INTERNETWORK PACKET EXCHANGE (IPX) is the network layer protocol in the IPX/SPX protocol suite. IPX is derived from Xerox Network Systems' IDP. It may act as a transport layer protocol as well.

The IPX/SPX protocol suite was very popular through the late 1980s into the mid-1990s because it was used by the Novell NetWare network operating system. Because of Novell NetWare popularity the IPX became a prominent internetworking protocol.

A big advantage of IPX was a small memory footprint of the IPX driver, which was vital for DOS and Windows up to the version Windows 95 because of limited size of the conventional memory. Another IPX advantage is an easy configuration of the client computers. However, IPX does not scale well for large networks such as the Internet,[1] and as such, IPX usage decreased as the boom of the Internet made TCP/IP nearly universal. Computers and networks can run multiple network protocols, so almost all IPX sites will be running TCP/IP as well to allow for Internet connectivity.[2] It is also possible to run later Novell products without IPX, with the beginning of full support for both IPX and TCP/IP by NetWare version 5[3] in late 1998.


Description

A big advantage of IPX protocol is its little or no need for configuration. In the time when protocols for dynamic host configuration did not exist and the BOOTP protocol for centralized assigning of addresses was not common, the IPX network could be configured almost automatically. A client computer uses the MAC address of its network card as the node address, and learns what it needs to know about the network topology from the servers or routers – routes are propagated by Routing Information Protocol, services by Service Advertising Protocol.

A small IPX network administrator had to care only

-   to assign all servers in the same network the same network number
-   to assign different network numbers to different frame formats in the same network
-   to assign different network numbers to different interfaces of servers with multiple network cards (Novell NetWare server with multiple network cards worked automatically as a router)
-   to assign different network numbers to servers in different interconnected networks
-   to start router process on nodes with multiple network cards in more complex networks


IPX packet structure

Each IPX packet begins with a header with the following structure:

  Octets   Field
  -------- ------------------------------------------
  2        Checksum (always 0xFFFF - no checksum)
  2        Packet Length (including the IPX header)
  1        Transport Control (hop count)
  1        Packet Type
  12       Destination address
  12       Source address

The Packet Type values:

  Value   Meaning/Protocol
  ------- -----------------------------------------------------------------------------
  0       Unknown
  1       RIP (Routing Information Protocol) (RFC 1582, RFC 2091)
  2       Echo Packet
  3       Error Packet
  4       PEP (Packet Exchange Protocol), used for SAP (Service Advertising Protocol)
  5       SPX (Sequenced Packet Exchange)
  17      NCP (NetWare Core Protocol)


IPX addressing

An IPX address has the following structure:

  Octets   Field
  -------- ----------------
  4        Network number
  6        Node number
  2        Socket number

Network number

The network number allows to address (and communicate with) the IPX nodes which do not belong to the same network or _cabling system_. The CABLING SYSTEM is a network in which a data link layer protocol can be used for communication. To allow communication between different networks, they must be connected with IPX routers. A set of interconnected networks is called an INTERNETWORK. Any Novell NetWare server may serve as an IPX router. Novell also supplied stand-alone routers. Multiprotocol routers of other vendors often support IPX routing. Using different frame formats in one cabling system is possible, but it works similarly as if separate cabling systems were used (i.e. different network numbers must be used for different frame formats even in the same cabling system and a router must be to allow communication between nodes using different frame formats in the same cabling system).

-   Logical networks are assigned a unique 32-bit address in the range 0x1 to 0xFFFFFFFE (hexadecimal).
-   Hosts have a 48-bit node address which is by default set to the last 4 bytes of the network interface card MAC address. The node address is appended to the network number to create a unique network address for the host on the network.
-   Network number 00:00:00:00 means current network
-   Broadcast network number is FF:FF:FF:FF

Node number

The node number is used to address an individual computer (or more exactly, a network interface) in the network. Client stations use its network interface card MAC address as the node number.

The value FF:FF:FF:FF:FF:FF may be used as a node number in a destination address to broadcast a packet to "all nodes in the current network".

Socket number

The socket number serves to select a process or application in the destination node. The presence of a socket number in the IPX address allows the IPX to act as a transport layer protocol, comparable with the User Datagram Protocol (UDP) in the Internet protocol suite.

  Socket number   Protocol
  --------------- --------------------------------------------------------------
  0x0001-0x0BB8   Registered by Xerox
  0x0001          Routing Information Packet
  0x0002          Echo Protocol Packet
  0x0003          Error Handling Packet
  0x0020-0x003F   Experimental
  0x0BB9-0xFFFF   Dynamically Assigned
  0x0451          NetWare Core Protocol (NCP - used by Novell NetWare servers)
  0x0452          Service Advertising Protocol (SAP)
  0x0453          Routing Information Protocol (RIP)
  0x0455          NetBIOS
  0x0456          Diagnostic Packet
  0x0457          Serialization Packet (used for NCP as well)
  0x4000-0x4FFF   Dynamically Assigned Socket Numbers
  0x4003          Used by Novell NetWare Client
  0x8000-0xFFFF   Statically Assigned Socket Numbers
  0x8060          IPX
  0x9091          TCP over IPXF
  0x9092          UDP over IPXF
  0x9093          IPXF, IPX Fragmentation Protocol

Comparison with IP

The IPX network number is conceptually identical to the network part of the IP address (the parts with netmask bits set to 1); the node number has the same meaning as the bits of IP address with netmask bits set to 0. The difference is that the boundary between network and node part of address in IP is variable, while in IPX it is fixed. As the node address is usually identical to the MAC address of the network adapter, the Address Resolution Protocol is not needed in IPX.

For routing, the entries in the IPX routing table are similar to IP routing tables; routing is done by network address, and for each network address a network:node of the next router is specified in a similar fashion an IP address/netmask is specified in IP routing tables.

There are 3 routing protocols available for IPX networks: In early IPX networks a version of Routing Information Protocol (RIP) was the only available protocol to exchange routing information. Unlike RIP for IP, it uses delay time as the main metric, retaining the hop count as a secondary metric. Since NetWare 3, the NetWare Link Services Protocol (NSLP) based on IS-IS is available which is more suitable for larger networks. Cisco routers implement an IPX version of EIGRP protocol as well.[4]


Frame formats

IPX can be transmitted over Ethernet using one of the following 4 frame formats or encapsulation types:

-   802.3 (raw) encapsulation comprises an IEEE 802.3 frame header (destination MAC, source MAC, length) immediately followed by IPX data. It is used in legacy systems, and can be distinguished by the first two bytes of the IPX header always containing a value of 0xFFFF, which cannot be interpreted as valid LLC Destination and Source Service Access Points in this location of the frame.
-   802.2 (LLC or Novell) comprises an IEEE 802.3 frame header (destination MAC, source MAC, length) followed by an LLC header (DSAP 0xE0, SSAP 0xE0, control 0x03) followed by IPX data. The 0xE0 fields of the LLC header indicate "NetWare".
-   802.2 (SNAP) comprises an IEEE 802.3 frame header, an LLC header (DSAP 0xAA, SSAP 0xAA, control 0x03), a SNAP header (OUI 0x000000, type 0x8137), and IPX data. The 0xAA fields of the LLC header indicate "SNAP", and the OUI 0x000000 in the SNAP header indicates an encapsulated EtherType.
-   Ethernet II encapsulation comprises an Ethernet II frame header (destination MAC, source MAC, EtherType 0x8137) followed by IPX data.

In non-Ethernet networks only 802.2 and SNAP frame types are available.


References


External links

-   RFC 1132 - A Standard for the Transmission of 802.2 Packets over IPX Networks
-   Ethernet Frame Types: Don Provan's Definitive Answer

Category:Novell NetWare Category:Network layer protocols

[1]

[2]

[3] Maintaining IPX Compatibility During a Migration to TCP/IP on a NetWare Network

[4]