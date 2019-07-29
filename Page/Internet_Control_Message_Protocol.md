The INTERNET CONTROL MESSAGE PROTOCOL (ICMP) is a supporting protocol in the Internet protocol suite. It is used by network devices, including routers, to send error messages and operational information indicating, for example, that a requested service is not available or that a host or router could not be reached.[1] ICMP differs from transport protocols such as TCP and UDP in that it is not typically used to exchange data between systems, nor is it regularly employed by end-user network applications (with the exception of some diagnostic tools like ping and traceroute).

ICMP for IPv4 is defined in RFC 792.


Technical details

ICMP is part of the Internet protocol suite as defined in RFC 792. ICMP messages are typically used for diagnostic or control purposes or generated in response to errors in IP operations (as specified in RFC 1122). ICMP errors are directed to the source IP address of the originating packet.[2]

For example, every device (such as an intermediate router) forwarding an IP datagram first decrements the time to live (TTL) field in the IP header by one. If the resulting TTL is 0, the packet is discarded and an ICMP time exceeded in transit message is sent to the datagram's source address.

Many commonly used network utilities are based on ICMP messages. The traceroute command can be implemented by transmitting IP datagrams with specially set IP TTL header fields, and looking for ICMP time exceeded in transit and Destination unreachable messages generated in response. The related ping utility is implemented using the ICMP _echo request_ and _echo reply_ messages.

ICMP uses the basic support of IP as if it were a higher level protocol, however, ICMP is actually an integral part of IP. Although ICMP messages are contained within standard IP packets, ICMP messages are usually processed as a special case, distinguished from normal IP processing. In many cases, it is necessary to inspect the contents of the ICMP message and deliver the appropriate error message to the application responsible for transmission of the IP packet that prompted the sending of the ICMP message.

ICMP is a network layer protocol. There is no TCP or UDP port number associated with ICMP packets as these numbers are associated with the transport layer above.[3]


Datagram structure

The ICMP packet is encapsulated in an IPv4 packet.[4] The packet consists of header and data sections.

Header

The ICMP header starts after the IPv4 header and is identified by IP protocol number '1'.[5] All ICMP packets have an 8-byte header and variable-sized data section. The first 4 bytes of the header have fixed format, while the last 4 bytes depend on the type/code of that ICMP packet.[6]

  _Offsets_   Octet   0                1      2          3
  ----------- ------- ---------------- ------ ---------- ---
  Octet       Bit     0                1      2          3
  0           0       Type             Code   Checksum
  4           32      Rest of Header


  : ICMP Header Format

Type : ICMP type, see Control messages.
Code : ICMP subtype, see Control messages.
Checksum : Error checking data, calculated from the ICMP header and data, with value 0 substituted for this field. The Internet Checksum is used, specified in RFC 1071.
Rest of Header : Four-bytes field, contents vary based on the ICMP type and code.

Data

ICMP error messages contain a data section that includes a copy of the entire IPv4 header, plus at least the first eight bytes of data from the IPv4 packet that caused the error message. The maximum length of ICMP error messages is 576 bytes.[7] This data is used by the host to match the message to the appropriate process. If a higher level protocol uses port numbers, they are assumed to be in the first eight bytes of the original datagram's data.[8]

The variable size of the ICMP packet data section has been exploited. In the "Ping of death", large or fragmented ping packets are used for denial-of-service attacks. ICMP data can also be used to create covert channels for communication. These channels are known as ICMP tunnels.


Control messages

Control messages are identified by the value in the _type_ field. The _code_ field gives additional context information for the message. Some control messages have been deprecated since the protocol was first introduced.

+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| Type                                  | Code | Status                                    | Description                                                                    |
+=======================================+======+===========================================+================================================================================+
| 0 – Echo Reply[11]                    | 0    |                                           | Echo reply (used to ping)                                                      |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 1 and 2                               |      |                                           | _Reserved_                                                                     |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 3 – Destination Unreachable[12]       | 0    |                                           | Destination network unreachable                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 1                                     |      | Destination host unreachable              |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 2                                     |      | Destination protocol unreachable          |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 3                                     |      | Destination port unreachable              |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 4                                     |      | Fragmentation required, and DF flag set   |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 5                                     |      | Source route failed                       |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 6                                     |      | Destination network unknown               |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 7                                     |      | Destination host unknown                  |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 8                                     |      | Source host isolated                      |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 9                                     |      | Network administratively prohibited       |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 10                                    |      | Host administratively prohibited          |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 11                                    |      | Network unreachable for ToS               |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 12                                    |      | Host unreachable for ToS                  |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 13                                    |      | Communication administratively prohibited |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 14                                    |      | Host Precedence Violation                 |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 15                                    |      | Precedence cutoff in effect               |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 4 – Source Quench                     | 0    |                                           | Source quench (congestion control)                                             |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 5 – Redirect Message                  | 0    |                                           | Redirect Datagram for the Network                                              |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 1                                     |      | Redirect Datagram for the Host            |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 2                                     |      | Redirect Datagram for the ToS & network   |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 3                                     |      | Redirect Datagram for the ToS & host      |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 6                                     |      |                                           | Alternate Host Address                                                         |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 7                                     |      |                                           | _Reserved_                                                                     |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 8 – Echo Request                      | 0    |                                           | Echo request (used to ping)                                                    |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 9 – Router Advertisement              | 0    |                                           | Router Advertisement                                                           |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 10 – Router Solicitation              | 0    |                                           | Router discovery/selection/solicitation                                        |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 11 – Time Exceeded[13]                | 0    |                                           | TTL expired in transit                                                         |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 1                                     |      | Fragment reassembly time exceeded         |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 12 – Parameter Problem: Bad IP header | 0    |                                           | Pointer indicates the error                                                    |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 1                                     |      | Missing a required option                 |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 2                                     |      | Bad length                                |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 13 – Timestamp                        | 0    |                                           | Timestamp                                                                      |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 14 – Timestamp Reply                  | 0    |                                           | Timestamp reply                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 15 – Information Request              | 0    |                                           | Information Request                                                            |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 16 – Information Reply                | 0    |                                           | Information Reply                                                              |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 17 – Address Mask Request             | 0    |                                           | Address Mask Request                                                           |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 18 – Address Mask Reply               | 0    |                                           | Address Mask Reply                                                             |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 19                                    |      | reserved                                  | _Reserved_ for security                                                        |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 20 through 29                         |      | reserved                                  | _Reserved_ for robustness experiment                                           |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 30 – Traceroute                       | 0    |                                           | Information Request                                                            |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 31                                    |      |                                           | Datagram Conversion Error                                                      |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 32                                    |      |                                           | Mobile Host Redirect                                                           |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 33                                    |      |                                           | Where-Are-You (originally meant for IPv6)                                      |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 34                                    |      |                                           | Here-I-Am (originally meant for IPv6)                                          |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 35                                    |      |                                           | Mobile Registration Request                                                    |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 36                                    |      |                                           | Mobile Registration Reply                                                      |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 37                                    |      |                                           | Domain Name Request                                                            |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 38                                    |      |                                           | Domain Name Reply                                                              |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 39                                    |      |                                           | SKIP Algorithm Discovery Protocol, Simple Key-Management for Internet Protocol |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 40                                    |      |                                           | Photuris, Security failures                                                    |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 41                                    |      |                                           | ICMP for experimental mobility protocols such as Seamoby [RFC4065]             |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 42 – Extended Echo Request[14]        | 0    |                                           | Request Extended Echo (XPing - see EXTENDED PING (XPING))                      |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 43 – Extended Echo Reply[15]          | 0    |                                           | No Error                                                                       |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 1                                     |      | Malformed Query                           |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 2                                     |      | No Such Interface                         |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 3                                     |      | No Such Table Entry                       |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 4                                     |      | Multiple Interfaces Satisfy Query         |                                                                                |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 44 through 252                        |      |                                           | _Reserved_                                                                     |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 253                                   |      |                                           | RFC3692-style Experiment 1 (RFC 4727)                                          |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 254                                   |      |                                           | RFC3692-style Experiment 2 (RFC 4727)                                          |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+
| 255                                   |      | reserved                                  | Reserved                                                                       |
+---------------------------------------+------+-------------------------------------------+--------------------------------------------------------------------------------+

: Notable control messages[9][10]

Source quench

_Source Quench_ requests that the sender decrease the rate of messages sent to a router or host. This message may be generated if a router or host does not have sufficient buffer space to process the request, or may occur if the router or host buffer is approaching its limit.

Data is sent at a very high speed from a host or from several hosts at the same time to a particular router on a network. Although a router has buffering capabilities, the buffering is limited to within a specified range. The router cannot queue any more data than the capacity of the limited buffering space. Thus if the queue gets filled up, incoming data is discarded until the queue is no longer full. But as no acknowledgement mechanism is present in the network layer, the client does not know whether the data has reached the destination successfully. Hence some remedial measures should be taken by the network layer to avoid these kind of situations. These measures are referred to as source quench. In a source quench mechanism, the router sees that the incoming data rate is much faster than the outgoing data rate, and sends an ICMP message to the clients, informing them that they should slow down their data transfer speeds or wait for a certain amount of time before attempting to send more data. When a client receives this message, it will automatically slow down the outgoing data rate or wait for a sufficient amount of time, which enables the router to empty the queue. Thus the source quench ICMP message acts as flow control in the network layer.

Since research suggested that "ICMP Source Quench [was] an ineffective (and unfair) antidote for congestion",[16] routers' creation of source quench messages was deprecated in 1995 by RFC 1812. Furthermore, forwarding of and any kind of reaction to (flow control actions) source quench messages was deprecated from 2012 by RFC 6633.

  00                                                        01         02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  --------------------------------------------------------- ---------- ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 4                                                  Code = 0   Header checksum
  unused
  IP header and first 8 bytes of original datagram's data

  : Source quench message[17]

Where:

    TYPE must be set to 4
    CODE must be set to 0
    IP HEADER and additional data is used by the sender to match the reply with the associated request

Redirect

_Redirect_ requests data packets be sent on an alternative route. ICMP Redirect is a mechanism for routers to convey routing information to hosts. The message informs a host to update its routing information (to send packets on an alternative route). If a host tries to send data through a router (R1) and R1 sends the data on another router (R2) and a direct path from the host to R2 is available (that is, the host and R2 are on the same Ethernet segment), then R1 will send a redirect message to inform the host that the best route for the destination is via R2. The host should then send packets for the destination directly to R2. The router will still send the original datagram to the intended destination.[18] However, if the datagram contains routing information, this message will not be sent even if a better route is available. RFC 1122 states that redirects should only be sent by gateways and should not be sent by Internet hosts.

  00                                                        01     02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  --------------------------------------------------------- ------ ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 5                                                  Code   Header checksum
  IP address
  IP header and first 8 bytes of original datagram's data

  : Redirect message[19]

Where:

    TYPE must be set to 5.
    CODE specifies the reason for the redirection, may be one of the following:

        {|class="wikitable"

|- ! Code ! Description |- ! 0 | Redirect for Network |- ! 1 | Redirect for Host |- ! 2 | Redirect for Type of Service and Network |- ! 3 | Redirect for Type of Service and Host |}

    IP ADDRESS is the 32-bit address of the gateway to which the redirection should be sent.
    IP HEADER and additional data is included to allow the host to match the reply with the request that caused the redirection reply.

Time exceeded

_Time Exceeded_ is generated by a gateway to inform the source of a discarded datagram due to the time to live field reaching zero. A time exceeded message may also be sent by a host if it fails to reassemble a fragmented datagram within its time limit.

Time exceeded messages are used by the traceroute utility to identify gateways on the path between two hosts.

  00                                                        01     02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  --------------------------------------------------------- ------ ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 11                                                 Code   Header checksum
  unused
  IP header and first 8 bytes of original datagram's data

  : Time exceeded message[20]

Where:

    TYPE must be set to 11
    CODE specifies the reason for the time exceeded message, include the following:

        {| class="wikitable"

! Code || Description |- ! 0 | Time-to-live exceeded in transit. |- ! 1 | Fragment reassembly time exceeded. |}

    IP HEADER and first 64 bits of the original payload are used by the source host to match the time exceeded message to the discarded datagram. For higher level protocols such as UDP and TCP the 64 bit payload will include the source and destination ports of the discarded packet.

Timestamp

_Timestamp_ is used for time synchronization. The originating timestamp is set to the time (in milliseconds since midnight) the sender last touched the packet. The receive and transmit timestamps are not used.

  00                    01                02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  --------------------- ----------------- ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 13             Code = 0          Header checksum
  Identifier            Sequence number
  Originate timestamp
  Receive timestamp
  Transmit timestamp

  : Timestamp message[21]

Where:

    TYPE must be set to 13
    CODE must be set to 0
    IDENTIFIER and SEQUENCE NUMBER can be used by the client to match the timestamp reply with the timestamp request.
    ORIGINATE TIMESTAMP is the number of milliseconds since midnight Universal Time (UT). If a UT reference is not available the most-significant bit can be set to indicate a non-standard time value.

Timestamp reply

_Timestamp Reply_ replies to a _Timestamp_ message. It consists of the originating timestamp sent by the sender of the _Timestamp_ as well as a receive timestamp indicating when the _Timestamp_ was received and a transmit timestamp indicating when the _Timestamp reply_ was sent.

  00                    01                02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  --------------------- ----------------- ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 14             Code = 0          Header checksum
  Identifier            Sequence number
  Originate timestamp
  Receive timestamp
  Transmit timestamp

  : Timestamp reply message[22]

Where:

    TYPE must be set to 14
    CODE must be set to 0
    IDENTIFIER and SEQUENCE NUMBER can be used by the client to match the reply with the request that caused the reply.
    ORIGINATE TIMESTAMP is the time the sender last touched the message before sending it.
    RECEIVE TIMESTAMP is the time the echoer first touched it on receipt.
    TRANSMIT TIMESTAMP is the time the echoer last touched the message on sending it.

    All timestamps are in units of milliseconds since midnight UT. If the time is not available in milliseconds or cannot be provided with respect to midnight UT then any time can be inserted in a timestamp provided the high order bit of the timestamp is also set to indicate this non-standard value.

Address mask request

_Address mask request_ is normally sent by a host to a router in order to obtain an appropriate subnet mask.

Recipients should reply to this message with an _Address mask reply_ message.

  00             01                02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  -------------- ----------------- ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 17      Code = 0          Header checksum
  Identifier     Sequence number
  Address mask

  : Address mask request

Where:

    TYPE must be set to 17
    CODE must be set to 0
    ADDRESS MASK can be set to 0

ICMP Address Mask Request may be used as a part of reconnaissance attack to gather information on the target network, therefore ICMP Address Mask Reply is disabled by default on Cisco IOS.[23]

Address mask reply

_Address mask reply_ is used to reply to an address mask request message with an appropriate subnet mask.

  00             01                02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  -------------- ----------------- ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 18      Code = 0          Header checksum
  Identifier     Sequence number
  Address mask

  : Address mask reply

Where:

    TYPE must be set to 18
    CODE must be set to 0
    ADDRESS MASK should be set to the subnet mask

Destination unreachable

_Destination unreachable_ is generated by the host or its inbound gateway[24] to inform the client that the destination is unreachable for some reason. A Destination Unreachable message may be generated as a result of a TCP or UDP. Unreachable TCP ports notably respond with TCP RST rather than a Destination Unreachable type 3 as might be expected.

The error will not be generated if the original datagram has a multicast destination address. Reasons for this message may include: the physical connection to the host does not exist (distance is infinite); the indicated protocol or port is not active; the data must be fragmented but the 'don't fragment' flag is on.

  00                                                        01             02                03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  --------------------------------------------------------- -------------- ----------------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 3                                                  Code           Header checksum
  unused                                                    Next-hop MTU
  IP header and first 8 bytes of original datagram's data

  : Destination unreachable message[25]

Where:

    TYPE field (bits 0-7) must be set to 3
    CODE field (bits 8-15) is used to specify the type of error, and can be any of the following:

        {| class="wikitable"

! Code || Description |- ! 0 | Network unreachable error. |- ! 1 | Host unreachable error. |- ! 2 | Protocol unreachable error (the designated transport protocol is not supported). |- ! 3 | Port unreachable error (the designated protocol is unable to inform the host of the incoming message). |- ! 4 | The datagram is too big. Packet fragmentation is required but the 'don't fragment' (DF) flag is on. |- ! 5 | Source route failed error. |- ! 6 | Destination network unknown error. |- ! 7 | Destination host unknown error. |- ! 8 | Source host isolated error. |- ! 9 | The destination network is administratively prohibited. |- ! 10 | The destination host is administratively prohibited. |- ! 11 | The network is unreachable for Type Of Service. |- ! 12 | The host is unreachable for Type Of Service. |- ! 13 | Communication administratively prohibited (administrative filtering prevents packet from being forwarded). |- ! 14 | Host precedence violation (indicates the requested precedence is not permitted for the combination of host or network and port). |- ! 15 | Precedence cutoff in effect (precedence of datagram is below the level set by the network administrators). |}

    NEXT-HOP MTU field (bits 48-63) contains the MTU of the next-hop network if a code 4 error occurs.
    IP HEADER and additional data is included to allow the client to match the reply with the request that caused the destination unreachable reply.


See also

-   ICMP tunnel
-   ICMP hole punching
-   ICMP Router Discovery Protocol
-   PMTU blackhole
-   Pathping
-   Path MTU Discovery
-   Ping
-   Smurf attack


References


RFCs

-   RFC 792, _Internet Control Message Protocol_
-   RFC 950, _Internet Standard Subnetting Procedure_
-   RFC 1016, _Something a Host Could Do with Source Quench: The Source Quench Introduced Delay (SQuID)_
-   RFC 1122, _Requirements for Internet Hosts – Communication Layers_
-   RFC 1716, _Towards Requirements for IP Routers_
-   RFC 1812, _Requirements for IP Version 4 Routers_


External links

-   IANA ICMP parameters
-   IANA protocol numbers
-   Explanation of ICMP Redirect Behavior

Category:Internet protocols Category:Internet Standards Category:Internet layer protocols Category:Network layer protocols

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

[25]