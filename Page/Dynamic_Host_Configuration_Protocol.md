The DYNAMIC HOST CONFIGURATION PROTOCOL (DHCP) is a network management protocol used on UDP/IP networks whereby a DHCP server dynamically assigns an IP address and other network configuration parameters to each device on a network so they can communicate with other IP networks.[1] A DHCP server enables computers to request IP addresses and networking parameters automatically from the Internet service provider (ISP), reducing the need for a network administrator or a user to manually assign IP addresses to all network devices.[2] In the absence of a DHCP server, a computer or other device on the network needs to be manually assigned an IP address, or to assign itself an APIPA address, which will not enable it to communicate outside its local subnet.

DHCP can be implemented on networks ranging in size from home networks to large campus networks and regional Internet service provider networks.[3] A router or a residential gateway can be enabled to act as a DHCP server. Most residential network routers receive a globally unique IP address within the ISP network. Within a local network, a DHCP server assigns a local IP address to each device connected to the network.


History

In 1984, the Reverse Address Resolution Protocol (RARP), defined in RFC 903, was introduced to allow simple devices such as diskless workstations to dynamically obtain a suitable IP address. However, because it acted at the data link layer it made implementation difficult on many server platforms, and also required that a server be present on each individual network link. RARP was superseded by the Bootstrap Protocol (BOOTP) defined in RFC 951 in September 1985. This introduced the concept of a _relay agent_, which allowed the forwarding of BOOTP packets across networks, allowing one central BOOTP server to serve hosts on many IP subnets.[4]

DHCP is based on BOOTP but can dynamically allocate IP addresses from a pool and reclaim them when they are no longer in use. It can also be used to deliver a wide range of extra configuration parameters to IP clients, including platform-specific parameters.[5] DHCP was first defined in RFC 1531 in October 1993; but due to errors in the editorial process was almost immediately reissued as RFC 1541.

Four years later the DHCPINFORM message type[6] and other small changes were added by RFC 2131; which remains the standard for IPv4 networks.

DHCPv6 was initially described by RFC 3315 in 2003, but this has been updated by many subsequent RFCs.[7] RFC 3633 added a DHCPv6 mechanism for prefix delegation, and stateless address autoconfiguration was added by RFC 3736.

Versions

In the case of DHCP, there are several RFC standards, and the version numbers individually such as DHCP v2 and v3 are not specified differently from SNMP v1, v2 and v3 in the RFC standard.[8] However, the ISC (Internet Software Consortium) DHCP server that functions as a common DHCP server has version V1, V2, and V3 in the form release 1, release 2 and release 3[9]

-   ISC DHCP Release 1 (version 1): It is a more stable version with a bug fix over the initial release(beta) ISC DHCP server after 2 years.

-   ISC DHCP Release 2 (version 2): DHCP Release 2 is composed of DHCP server, DHCP client and DHCP relay agent. Features include support for ping before IP allocation, and more effective prevention of errors in DHCP authentication

-   ISC DHCP Release 3 (version 3): The key features of Release 3 include the ability to selectively initialize DHCP server functionality and to bundle clients that are assigned IPs into desired configuration units. In addition, since the relay agent information is selectively available, it is possible to separately manage the POOLs that are the groups to which the IP addresses are assigned, by the necessary group units. It enables the ability to leverage dynamic DNS information and DHCP authentication.

-   The standard for IPv6 DHCP is defined by RFC, and the latest version is defined by DHCPv6 - RFC 3736, which includes IPv6 address Stateless autoconfiguration.


Overview

UDP/IP defines how devices on one network communicate with devices on another network, and the DHCP server can manage UDP/IP settings for devices on a network, by automatically or dynamically assigning IP addresses to the devices.

The DHCP operates based on the client–server model. When a computer or other device connects to a network, the DHCP client software sends a DHCP broadcast query requesting the necessary information. Any DHCP server on the network may service the request. The DHCP server manages a pool of IP addresses and information about client configuration parameters such as default gateway, domain name, the name servers, and time servers. On receiving a DHCP request, the DHCP server may respond with specific information for each client, as previously configured by an administrator, or with a specific address and any other information valid for the entire network and for the time period for which the allocation (_lease_) is valid. A DHCP client typically queries for this information immediately after booting, and periodically thereafter before the expiration of the information. When a DHCP client refreshes an assignment, it initially requests the same parameter values, but the DHCP server may assign a new address based on the assignment policies set by administrators.

On large networks that consist of multiple links, a single DHCP server may service the entire network when aided by DHCP relay agents located on the interconnecting routers. Such agents relay messages between DHCP clients and DHCP servers located on different subnets.

Depending on implementation, the DHCP server may have three methods of allocating IP addresses:

Dynamic allocation: A network administrator reserves a range of IP addresses for DHCP, and each DHCP client on the LAN is configured to request an IP address from the DHCP server during network initialization. The request-and-grant process uses a lease concept with a controllable time period, allowing the DHCP server to reclaim and then reallocate IP addresses that are not renewed.

Automatic allocation: The DHCP server permanently assigns an IP address to a requesting client from the range defined by the administrator. This is like dynamic allocation, but the DHCP server keeps a table of past IP address assignments, so that it can preferentially assign to a client the same IP address that the client previously had.

Manual allocation (commonly called static allocation): The DHCP server issues a private IP address dependent upon each client's _client id_ (or, traditionally, the client MAC address), based on a predefined mapping by the administrator. This feature is variously called _static DHCP assignment_ by DD-WRT, _fixed-address_ by the dhcpd documentation, _address reservation_ by Netgear, _DHCP reservation_ or _static DHCP_ by Cisco and Linksys, and _IP address reservation_ or _MAC/IP address binding_ by various other router manufacturers. If no match for the client's _client ID_ (if provided) or MAC address (if no client id is provided) is found, the server may or may not optionally fall back to either Dynamic or Automatic allocation.

DHCP is used for Internet Protocol version 4 (IPv4) and IPv6. While both versions serve the same purpose, the details of the protocol for IPv4 and IPv6 differ sufficiently that they may be considered separate protocols.[10] For the IPv6 operation, devices may alternatively use stateless address autoconfiguration. IPv6 hosts may also use link-local addressing to achieve operations restricted to the local network link.


Operation

DHCP_session.svg, depending on the DHCP client capabilities.[11]]]

The DHCP employs a connectionless service model, using the User Datagram Protocol (UDP). It is implemented with two UDP port numbers for its operations which are the same as for the bootstrap protocol (BOOTP). UDP port number 67 is the destination port of a server, and UDP port number 68 is used by the client.

DHCP operations fall into four phases: server discovery, IP lease offer, IP lease request, and IP lease acknowledgement. These stages are often abbreviated as DORA for discovery, offer, request, and acknowledgement.

The DHCP operation begins with clients broadcasting a request. If the client and server are on different subnets, a DHCP Helper or DHCP Relay Agent may be used. Clients requesting renewal of an existing lease may communicate directly via UDP unicast, since the client already has an established IP address at that point. Additionally, there is a BROADCAST flag (1 bit in 2 byte flags field, where all other bits are reserved and so are set to 0) the client can use to indicate in which way (broadcast or unicast) it can receive the DHCPOFFER: 0x8000 for broadcast, 0x0000 for unicast.[12] Usually, the DHCPOFFER is sent through unicast. For those hosts which cannot accept unicast packets before IP addresses are configured, this flag can be used to work around this issue.

Discovery

The DHCP client broadcasts a DHCPDISCOVER message on the network subnet using the destination address 255.255.255.255 (limited broadcast) or the specific subnet broadcast address (directed broadcast). A DHCP client may also request its last known IP address. If the client remains connected to the same network, the server may grant the request. Otherwise, it depends whether the server is set up as authoritative or not. An authoritative server denies the request, causing the client to issue a new request. A non-authoritative server simply ignores the request, leading to an implementation-dependent timeout for the client to expire the request and ask for a new IP address.

For example, if HTYPE is set to 1, to specify that the medium used is Ethernet, HLEN is set to 6 because an Ethernet address (MAC address) is 6 octets long. The CHADDR is set to the MAC address used by the client. Some options are set as well.

+---------------------------------------------------------------------------+
| Ethernet: source=sender's MAC; destination=FF:FF:FF:FF:FF:FF              |
+---------------------------------------------------------------------------+
| IP: source=0.0.0.0; destination=255.255.255.255                           |
| UDP: source port=68; destination port=67                                  |
+---------------------------------------------------------------------------+
| Octet 0                                                                   |
+---------------------------------------------------------------------------+
| OP                                                                        |
+---------------------------------------------------------------------------+
| 0x01                                                                      |
+---------------------------------------------------------------------------+
| XID                                                                       |
+---------------------------------------------------------------------------+
| 0x3903F326                                                                |
+---------------------------------------------------------------------------+
| SECS                                                                      |
+---------------------------------------------------------------------------+
| 0x0000                                                                    |
+---------------------------------------------------------------------------+
| CIADDR (Client IP address)                                                |
+---------------------------------------------------------------------------+
| 0x00000000                                                                |
+---------------------------------------------------------------------------+
| YIADDR (Your IP address)                                                  |
+---------------------------------------------------------------------------+
| 0x00000000                                                                |
+---------------------------------------------------------------------------+
| SIADDR (Server IP address)                                                |
+---------------------------------------------------------------------------+
| 0x00000000                                                                |
+---------------------------------------------------------------------------+
| GIADDR (Gateway IP address)                                               |
+---------------------------------------------------------------------------+
| 0x00000000                                                                |
+---------------------------------------------------------------------------+
| CHADDR (Client hardware address)                                          |
+---------------------------------------------------------------------------+
| 0x00053C04                                                                |
+---------------------------------------------------------------------------+
| 0x8D590000                                                                |
+---------------------------------------------------------------------------+
| 0x00000000                                                                |
+---------------------------------------------------------------------------+
| 0x00000000                                                                |
+---------------------------------------------------------------------------+
| 192 octets of 0s, or overflow space for additional options; BOOTP legacy. |
+---------------------------------------------------------------------------+
| Magic cookie                                                              |
+---------------------------------------------------------------------------+
| 0x63825363                                                                |
+---------------------------------------------------------------------------+
| DHCP options                                                              |
+---------------------------------------------------------------------------+
| 0x350101 53: 1 (DHCP Discover)                                            |
+---------------------------------------------------------------------------+
| 0x3204c0a80164 50: 192.168.1.100 requested                                |
+---------------------------------------------------------------------------+
| 0x370401030f06 55 (Parameter Request List):{{unordered list               |
+---------------------------------------------------------------------------+
| 0xff 255 (Endmark)                                                        |
+---------------------------------------------------------------------------+

: Example DHCPDISCOVER message

Offer

When a DHCP server receives a DHCPDISCOVER message from a client, which is an IP address lease request, the DHCP server reserves an IP address for the client and makes a lease offer by sending a DHCPOFFER message to the client. This message contains the client's client id (traditionally a MAC address), the IP address that the server is offering, the subnet mask, the lease duration, and the IP address of the DHCP server making the offer. The DHCP server may also take notice of the hardware-level MAC address in the underlying transport layer: according to current RFCs the transport layer MAC address may be used if no client ID is provided in the DHCP packet.

The DHCP server determines the configuration based on the client's hardware address as specified in the CHADDR (client hardware address) field. Here the server, 192.168.1.1, specifies the client's IP address in the YIADDR (your IP address) field.

+---------------------------------------------------------------+
| Ethernet: source=sender's MAC; destination=client mac address |
+---------------------------------------------------------------+
| IP: source=192.168.1.1; destination=255.255.255.255           |
| UDP: source port=67; destination port=68                      |
+---------------------------------------------------------------+
| Octet 0                                                       |
+---------------------------------------------------------------+
| OP                                                            |
+---------------------------------------------------------------+
| 0x02                                                          |
+---------------------------------------------------------------+
| XID                                                           |
+---------------------------------------------------------------+
| 0x3903F326                                                    |
+---------------------------------------------------------------+
| SECS                                                          |
+---------------------------------------------------------------+
| 0x0000                                                        |
+---------------------------------------------------------------+
| CIADDR (Client IP address)                                    |
+---------------------------------------------------------------+
| 0x00000000                                                    |
+---------------------------------------------------------------+
| YIADDR (Your IP address)                                      |
+---------------------------------------------------------------+
| 0xC0A80164 (192.168.1.100)                                    |
+---------------------------------------------------------------+
| SIADDR (Server IP address)                                    |
+---------------------------------------------------------------+
| 0xC0A80101 (192.168.1.1)                                      |
+---------------------------------------------------------------+
| GIADDR (Gateway IP address)                                   |
+---------------------------------------------------------------+
| 0x00000000                                                    |
+---------------------------------------------------------------+
| CHADDR (Client hardware address)                              |
+---------------------------------------------------------------+
| 0x00053C04                                                    |
+---------------------------------------------------------------+
| 0x8D590000                                                    |
+---------------------------------------------------------------+
| 0x00000000                                                    |
+---------------------------------------------------------------+
| 0x00000000                                                    |
+---------------------------------------------------------------+
| 192 octets of 0s; BOOTP legacy.                               |
+---------------------------------------------------------------+
| Magic cookie                                                  |
+---------------------------------------------------------------+
| 0x63825363                                                    |
+---------------------------------------------------------------+
| DHCP options                                                  |
+---------------------------------------------------------------+
| 53: 2 (DHCP Offer)                                            |
+---------------------------------------------------------------+
| 1 (subnet mask): 255.255.255.0                                |
+---------------------------------------------------------------+
| 3 (Router): 192.168.1.1                                       |
+---------------------------------------------------------------+
| 51 (IP address lease time): 86400s (1 day)                    |
+---------------------------------------------------------------+
| 54 (DHCP server): 192.168.1.1                                 |
+---------------------------------------------------------------+
| 6 (DNS servers):{{unordered list                              |
+---------------------------------------------------------------+

: DHCPOFFER message

Request

In response to the DHCP offer, the client replies with a DHCPREQUEST message, broadcast to the server, requesting the offered address. A client can receive DHCP offers from multiple servers, but it will accept only one DHCP offer. Based on required _server identification_ option in the request and broadcast messaging, servers are informed whose offer the client has accepted.[13] When other DHCP servers receive this message, they withdraw any offers that they have made to the client and return the offered IP address to the pool of available addresses.

+--------------------------------------------------------------+
| Ethernet: source=sender's MAC; destination=FF:FF:FF:FF:FF:FF |
+--------------------------------------------------------------+
| IP: source=0.0.0.0; destination=255.255.255.255;             |
| UDP: source port=68; destination port=67                     |
+--------------------------------------------------------------+
| Octet 0                                                      |
+--------------------------------------------------------------+
| OP                                                           |
+--------------------------------------------------------------+
| 0x01                                                         |
+--------------------------------------------------------------+
| XID                                                          |
+--------------------------------------------------------------+
| 0x3903F326                                                   |
+--------------------------------------------------------------+
| SECS                                                         |
+--------------------------------------------------------------+
| 0x0000                                                       |
+--------------------------------------------------------------+
| CIADDR (Client IP address)                                   |
+--------------------------------------------------------------+
| 0x00000000                                                   |
+--------------------------------------------------------------+
| YIADDR (Your IP address)                                     |
+--------------------------------------------------------------+
| 0x00000000                                                   |
+--------------------------------------------------------------+
| SIADDR (Server IP address)                                   |
+--------------------------------------------------------------+
| 0xC0A80101 (192.168.1.1)                                     |
+--------------------------------------------------------------+
| GIADDR (Gateway IP address)                                  |
+--------------------------------------------------------------+
| 0x00000000                                                   |
+--------------------------------------------------------------+
| CHADDR (Client hardware address)                             |
+--------------------------------------------------------------+
| 0x00053C04                                                   |
+--------------------------------------------------------------+
| 0x8D590000                                                   |
+--------------------------------------------------------------+
| 0x00000000                                                   |
+--------------------------------------------------------------+
| 0x00000000                                                   |
+--------------------------------------------------------------+
| 192 octets of 0s; BOOTP legacy.                              |
+--------------------------------------------------------------+
| Magic cookie                                                 |
+--------------------------------------------------------------+
| 0x63825363                                                   |
+--------------------------------------------------------------+
| DHCP options                                                 |
+--------------------------------------------------------------+
| 53: 3 (DHCP Request)                                         |
+--------------------------------------------------------------+
| 50: 192.168.1.100 requested                                  |
+--------------------------------------------------------------+
| 54 (DHCP server): 192.168.1.1                                |
+--------------------------------------------------------------+

: DHCPREQUEST message

Acknowledgement

When the DHCP server receives the DHCPREQUEST message from the client, the configuration process enters its final phase. The acknowledgement phase involves sending a DHCPACK packet to the client. This packet includes the lease duration and any other configuration information that the client might have requested. At this point, the IP configuration process is completed.

The protocol expects the DHCP client to configure its network interface with the negotiated parameters.

After the client obtains an IP address, it should probe the newly received address[14] (e.g. with ARP Address Resolution Protocol) to prevent address conflicts caused by overlapping address pools of DHCP servers.

+---------------------------------------------------------+
| Ethernet: source=sender's MAC; destination=client's MAC |
+---------------------------------------------------------+
| IP: source=192.168.1.1; destination=255.255.255.255     |
| UDP: source port=67; destination port=68                |
+---------------------------------------------------------+
| Octet 0                                                 |
+---------------------------------------------------------+
| OP                                                      |
+---------------------------------------------------------+
| 0x02                                                    |
+---------------------------------------------------------+
| XID                                                     |
+---------------------------------------------------------+
| 0x3903F326                                              |
+---------------------------------------------------------+
| SECS                                                    |
+---------------------------------------------------------+
| 0x0000                                                  |
+---------------------------------------------------------+
| CIADDR (Client IP address)                              |
+---------------------------------------------------------+
| 0x00000000                                              |
+---------------------------------------------------------+
| YIADDR (Your IP address)                                |
+---------------------------------------------------------+
| 0xC0A80164 (192.168.1.100)                              |
+---------------------------------------------------------+
| SIADDR (Server IP address)                              |
+---------------------------------------------------------+
| 0xC0A80101 (192.168.1.1)                                |
+---------------------------------------------------------+
| GIADDR (Gateway IP address switched by relay)           |
+---------------------------------------------------------+
| 0x00000000                                              |
+---------------------------------------------------------+
| CHADDR (Client hardware address)                        |
+---------------------------------------------------------+
| 0x00053C04                                              |
+---------------------------------------------------------+
| 0x8D590000                                              |
+---------------------------------------------------------+
| 0x00000000                                              |
+---------------------------------------------------------+
| 0x00000000                                              |
+---------------------------------------------------------+
| 192 octets of 0s. BOOTP legacy                          |
+---------------------------------------------------------+
| Magic cookie                                            |
+---------------------------------------------------------+
| 0x63825363                                              |
+---------------------------------------------------------+
| DHCP options                                            |
+---------------------------------------------------------+
| 53: 5 (DHCP ACK) or 6 (DHCP NAK)                        |
+---------------------------------------------------------+
| 1 (subnet mask): 255.255.255.0                          |
+---------------------------------------------------------+
| 3 (Router): 192.168.1.1                                 |
+---------------------------------------------------------+
| 51 (IP address lease time): 86400s (1 day)              |
+---------------------------------------------------------+
| 54 (DHCP server): 192.168.1.1                           |
+---------------------------------------------------------+
| 6 (DNS servers):{{unordered list                        |
+---------------------------------------------------------+

: DHCPACK message

Information

A DHCP client may request more information than the server sent with the original DHCPOFFER. The client may also request repeat data for a particular application. For example, browsers use _DHCP Inform_ to obtain web proxy settings via {{abbr.

Releasing

The client sends a request to the DHCP server to release the DHCP information and the client deactivates its IP address. As client devices usually do not know when users may unplug them from the network, the protocol does not mandate the sending of _DHCP Release_.


Client configuration parameters

A DHCP server can provide optional configuration parameters to the client. RFC 2132 describes the available DHCP options defined by Internet Assigned Numbers Authority (IANA) - DHCP and BOOTP PARAMETERS.[15]

A DHCP client can select, manipulate and overwrite parameters provided by a DHCP server. In Unix-like systems this client-level refinement typically takes place according to the values in the configuration file _/etc/dhclient.conf_.


Options

Options are octet strings of varying length. The first octet is the option code, the second octet is the number of following octets and the remaining octets are code dependent. For example, the DHCP message-type option for an offer would appear as 0x35, 0x01, 0x02, where 0x35 is code 53 for "DHCP message type", 0x01 means one octet follows and 0x02 is the value of "offer".

Documented in RFC 2132

The following tables list the available DHCP options, as listed in RFC 2132[16] and IANA registry.[17]

  Code   Name                       Length                  Notes
  ------ -------------------------- ----------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0      Pad[19]                    0 octets                Can be used to pad other options so that they are aligned to the word boundary; is not followed by length byte
  1      Subnet mask[20]            4 octets                Must be sent before the router option (option 3) if both are included
  2      Time offset[21]            4 octets
  3      Router                     Multiples of 4 octets   Available routers, should be listed in order of preference
  4      Time server                Multiples of 4 octets   Available time servers to synchronise with, should be listed in order of preference
  5      Name server                Multiples of 4 octets   Available IEN 116 name servers, should be listed in order of preference
  6      Domain name server         Multiples of 4 octets   Available DNS servers, should be listed in order of preference
  7      Log server                 Multiples of 4 octets   Available log servers, should be listed in order of preference.
  8      Cookie server              Multiples of 4 octets   ''Cookie ''in this case means "fortune cookie" or "quote of the day", a pithy or humorous anecdote often sent as part of a logon process on large computers; it has nothing to do with cookies sent by websites.
  9      LPR Server                 Multiples of 4 octets
  10     Impress server             Multiples of 4 octets
  11     Resource location server   Multiples of 4 octets
  12     Host name                  Minimum of 1 octet
  13     Boot file size             2 octets                Length of the boot image in 4KiB blocks
  14     Merit dump file            Minimum of 1 octet      Path where crash dumps should be stored
  15     Domain name                Minimum of 1 octet
  16     Swap server                4 octets
  17     Root path                  Minimum of 1 octet
  18     Extensions path            Minimum of 1 octet
  255    End                        0 octets                Used to mark the end of the vendor option field

  : RFC 1497 (BOOTP Vendor Information Extensions) vendor extensions[18]

  Code   Name                                      Length                  Notes
  ------ ----------------------------------------- ----------------------- -------
  19     IP forwarding enable/disable              1 octet
  20     Non-local source routing enable/disable   1 octet
  21     Policy filter                             Multiples of 8 octets
  22     Maximum datagram reassembly size          2 octets
  23     Default IP time-to-live                   1 octet
  24     Path MTU aging timeout                    4 octets
  25     Path MTU plateau table                    Multiples of 2 octets

  : IP layer parameters per host[22]

  Code   Name                          Length                  Notes
  ------ ----------------------------- ----------------------- ------------------------------------
  26     Interface MTU                 2 octets
  27     All subnets are local         1 octet
  28     Broadcast address             4 octets
  29     Perform mask discovery        1 octet
  30     Mask supplier                 1 octet
  31     Perform router discovery      1 octet
  32     Router solicitation address   4 octets
  33     Static route                  Multiples of 8 octets   A list of destination/router pairs

  : IP Layer Parameters per Interface[23]

  Code   Name                           Length     Notes
  ------ ------------------------------ ---------- -------
  34     Trailer encapsulation option   1 octet
  35     ARP cache timeout              4 octets
  36     Ethernet encapsulation         1 octet

  : Link layer parameters per interface[24]

  Code   Name                     Length     Notes
  ------ ------------------------ ---------- -------
  37     TCP default TTL          1 octet
  38     TCP keepalive interval   4 octets
  39     TCP keepalive garbage    1 octet

  : TCP parameters[25]

  Code   Name                                               Length                  Notes
  ------ -------------------------------------------------- ----------------------- -------
  40     Network information service domain                 Minimum of 1 octet
  41     Network information servers                        Multiples of 4 octets
  42     Network Time Protocol (NTP) servers                Multiples of 4 octets
  43     Vendor-specific information                        Minimum of 1 octets
  44     NetBIOS over TCP/IP name server                    Multiples of 4 octets
  45     NetBIOS over TCP/IP datagram Distribution Server   Multiples of 4 octets
  46     NetBIOS over TCP/IP node type                      1 octet
  47     NetBIOS over TCP/IP scope                          Minimum of 1 octet
  48     X Window System font server                        Multiples of 4 octets
  49     X Window System display manager                    Multiples of 4 octets
  64     Network Information Service+ domain                Minimum of 1 octet
  65     Network Information Service+ servers               Multiples of 4 octets
  68     Mobile IP home agent                               Multiples of 4 octets
  69     Simple Mail Transfer Protocol (SMTP) server        Multiples of 4 octets
  70     Post Office Protocol (POP3) server                 Multiples of 4 octets
  71     Network News Transfer Protocol (NNTP) server       Multiples of 4 octets
  72     Default World Wide Web (WWW) server                Multiples of 4 octets
  73     Default Finger protocol server                     Multiples of 4 octets
  74     Default Internet Relay Chat (IRC) server           Multiples of 4 octets
  75     StreetTalk server                                  Multiples of 4 octets
  76     StreetTalk Directory Assistance (STDA) server      Multiples of 4 octets

  : Application and service parameters[26]

  Code   Name                        Length                Notes
  ------ --------------------------- --------------------- -------
  50     Requested IP address        4 octets
  51     IP address lease time       4 octets
  52     Option overload             1 octet
  53     DHCP message type           1 octet
  54     Server identifier           4 octets
  55     Parameter request list      Minimum of 1 octet
  56     Message                     Minimum of 1 octet
  57     Maximum DHCP message size   2 octets
  58     Renewal (T1) time value     4 octets
  59     Rebinding (T2) time value   4 octets
  60     Vendor class identifier     Minimum of 1 octet
  61     Client-identifier           Minimum of 2 octets
  66     TFTP server name            Minimum of 1 octet
  67     Bootfile name               Minimum of 1 octet

  : DHCP extensions[27]

Client vendor identification

An option exists to identify the vendor and functionality of a DHCP client. The information is a variable-length string of characters or octets which has a meaning specified by the vendor of the DHCP client. One method that a DHCP client can utilize to communicate to the server that it is using a certain type of hardware or firmware is to set a value in its DHCP requests called the Vendor Class Identifier (VCI) (Option 60).

This method allows a DHCP server to differentiate between the two kinds of client machines and process the requests from the two types of modems appropriately. Some types of set-top boxes also set the VCI (Option 60) to inform the DHCP server about the hardware type and functionality of the device. The value this option is set to gives the DHCP server a hint about any required extra information that this client needs in a DHCP response.

Documented elsewhere

  Code   Name                                     Length                                      RFC
  ------ ---------------------------------------- ------------------------------------------- --------------
  82     Relay agent information                  Minimum of 2 octets                         RFC 3046[28]
  85     Novell Directory Service (NDS) servers   Minimum of 4 octets, multiple of 4 octets   RFC 2241[29]
  86     NDS tree name                            Variable                                    RFC 2241[30]
  87     NDS context                              Variable                                    RFC 2241[31]
  100    Time zone, POSIX style                   Variable                                    RFC 4833[32]
  101    Time zone, tz database style             Variable                                    RFC 4833[33]
  119    Domain search                            Variable                                    RFC 3397[34]
  121    Classless static route                   Variable                                    RFC 3442[35]

  : Documented DHCP options

Relay agent information sub-options

The relay agent information option (option 82)[36] specifies container for attaching sub-options to DHCP requests transmitted between a DHCP relay and a DHCP server.

  Code   Name                                                                     Length     RFC
  ------ ------------------------------------------------------------------------ ---------- --------------
  4      Data-Over-Cable Service Interface Specifications (DOCSIS) device class   4 octets   RFC 3256[37]

  : Relay agent sub-options


Relaying

In small networks, where only one IP subnet is being managed, DHCP clients communicate directly with DHCP servers. However, DHCP servers can also provide IP addresses for multiple subnets. In this case, a DHCP client that has not yet acquired an IP address cannot communicate directly with the DHCP server using IP routing, because it does not have a routable IP address, does not know the link layer address of a router and does not know the IP address of the DHCP server.

In order to allow DHCP clients on subnets not directly served by DHCP servers to communicate with DHCP servers, DHCP relay agents can be installed on these subnets. The DHCP client broadcasts on the local link; the relay agent receives the broadcast and transmits it to one or more DHCP servers using unicast. The relay agent stores its own IP address in field _GIADDR_ field of the DHCP packet. The DHCP server uses the GIADDR-value to determine the subnet on which the relay agent received the broadcast, and allocates an IP address on that subnet. When the DHCP server replies to the client, it sends the reply to the GIADDR-address, again using unicast. The relay agent then retransmits the response on the local network.

In this situation, the communication between the relay agent and the DHCP server typically uses both a source and destination UDP port of 67.


Reliability

The DHCP ensures reliability in several ways: periodic renewal, rebinding,[38] and failover. DHCP clients are allocated leases that last for some period of time. Clients begin to attempt to renew their leases once half the lease interval has expired.[39] They do this by sending a unicast _DHCPREQUEST_ message to the DHCP server that granted the original lease. If that server is down or unreachable, it will fail to respond to the _DHCPREQUEST_. However, in that case the client repeats the _DHCPREQUEST_ from time to time,[40] so if the DHCP server comes back up or becomes reachable again, the DHCP client will succeed in contacting it and renew the lease.

If the DHCP server is unreachable for an extended period of time,[41] the DHCP client will attempt to rebind, by broadcasting its _DHCPREQUEST_ rather than unicasting it. Because it is broadcast, the _DHCPREQUEST_ message will reach all available DHCP servers. If some other DHCP server is able to renew the lease, it will do so at this time.

In order for rebinding to work, when the client successfully contacts a backup DHCP server, that server must have accurate information about the client's binding. Maintaining accurate binding information between two servers is a complicated problem; if both servers are able to update the same lease database, there must be a mechanism to avoid conflicts between updates on the independent servers. A proposal for implementing fault-tolerant DHCP servers was submitted to the Internet Engineering Task Force, but never formalized.[42]

If rebinding fails, the lease will eventually expire. When the lease expires, the client must stop using the IP address granted to it in its lease.[43] At that time it will restart the DHCP process from the beginning by broadcasting a DHCPDISCOVER message. Since its lease has expired, it will accept any IP address offered to it. Once it has a new IP address (presumably from a different DHCP server) it will once again be able to use the network. However, since its IP address has changed, any ongoing connections will be broken.


Security

The base DHCP does not include any mechanism for authentication.[44] Because of this, it is vulnerable to a variety of attacks. These attacks fall into three main categories:

-   Unauthorized DHCP servers providing false information to clients.[45]
-   Unauthorized clients gaining access to resources.[46]
-   Resource exhaustion attacks from malicious DHCP clients.[47]

Because the client has no way to validate the identity of a DHCP server, unauthorized DHCP servers (commonly called "rogue DHCP") can be operated on networks, providing incorrect information to DHCP clients.[48] This can serve either as a denial-of-service attack, preventing the client from gaining access to network connectivity,[49] or as a man-in-the-middle attack.[50] Because the DHCP server provides the DHCP client with server IP addresses, such as the IP address of one or more DNS servers,[51] an attacker can convince a DHCP client to do its DNS lookups through its own DNS server, and can therefore provide its own answers to DNS queries from the client.[52][53] This in turn allows the attacker to redirect network traffic through itself, allowing it to eavesdrop on connections between the client and network servers it contacts, or to simply replace those network servers with its own.[54]

Because the DHCP server has no secure mechanism for authenticating the client, clients can gain unauthorized access to IP addresses by presenting credentials, such as client identifiers, that belong to other DHCP clients.[55] This also allows DHCP clients to exhaust the DHCP server's store of IP addresses—by presenting new credentials each time it asks for an address, the client can consume all the available IP addresses on a particular network link, preventing other DHCP clients from getting service.[56]

DHCP does provide some mechanisms for mitigating these problems. The Relay Agent Information Option protocol extension (RFC 3046, usually referred to in the industry by its actual number as _Option 82_[57][58]) allows network operators to attach tags to DHCP messages as these messages arrive on the network operator's trusted network. This tag is then used as an authorization token to control the client's access to network resources. Because the client has no access to the network upstream of the relay agent, the lack of authentication does not prevent the DHCP server operator from relying on the authorization token.[59]

Another extension, Authentication for DHCP Messages (RFC 3118), provides a mechanism for authenticating DHCP messages. As of 2002, RFC 3118 had not seen widespread adoption because of the problems of managing keys for large numbers of DHCP clients.[60] A 2007 book about DSL technologies remarked that:

  there were numerous security vulnerabilities identified against the security measures proposed by RFC 3118. This fact, combined with the introduction of 802.1x, slowed the deployment and take-rate of authenticated DHCP, and it has never been widely deployed.[61]

A 2010 book notes that:

  [t]here have been very few implementations of DHCP Authentication. The challenges of key management and processing delays due to hash computation have been deemed too heavy a price to pay for the perceived benefits.[62]

Architectural proposals from 2008 involve authenticating DHCP requests using 802.1x or PANA (both of which transport EAP).[63] An IETF proposal was made for including EAP in DHCP itself, the so-called EAPoDHCP;[64] this does not appear to have progressed beyond IETF draft level, the last of which dates to 2010.[65]


IETF standards documents

-   RFC 2131, Dynamic Host Configuration Protocol
-   RFC 2132, DHCP Options and BOOTP Vendor Extensions
-   RFC 3046, DHCP Relay Agent Information Option
-   RFC 3397, Dynamic Host Configuration Protocol (DHCP) Domain Search Option
-   RFC 3942, Reclassifying Dynamic Host Configuration Protocol Version Four (DHCPv4) Options
-   RFC 4242, Information Refresh Time Option for Dynamic Host Configuration Protocol for IPv6
-   RFC 4361, Node-specific Client Identifiers for Dynamic Host Configuration Protocol Version Four (DHCPv4)
-   RFC 4436, Detecting Network Attachment in IPv4 (DNAv4)
-   RFC 3442, Classless Static Route Option for Dynamic Host Configuration Protocol (DHCP) version 4


See also

-   Boot Service Discovery Protocol (BSDP) a DHCP extension used by Apple's NetBoot
-   Comparison of DHCP server software
-   Peg DHCP (RFC 2322)
-   Preboot Execution Environment (PXE)
-   Reverse Address Resolution Protocol (RARP)
-   Rogue DHCP
-   UDP Helper Address a tool for routing DHCP requests across subnet boundaries
-   Zeroconf Zero Configuration Networking


Notes


References

Category:Internet Standards Category:Application layer protocols Category:Network service

[1] TechTarget Network: DHCP (Dynamic Host Configuration Protocol)

[2]

[3]

[4]

[5] Network+ Certification 2006 Published By Microsoft Press.

[6] used for the Web Proxy Autodiscovery Protocol Web Proxy Autodiscovery Protocol (WPAD)

[7] RFC 4361, RFC 5494, RFC 6221, RFC 6422, RFC 6644, RFC 7083, RFC 7227, RFC 7283

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

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35] RFC 3442

[36]

[37]

[38]

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