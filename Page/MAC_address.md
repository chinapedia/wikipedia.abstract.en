Mac}}

UMTS_Router_Surf@home_II,_o2-0017.jpg router with MAC addresses for LAN and WLAN modules]]

A MEDIA ACCESS CONTROL ADDRESS (MAC ADDRESS) of a device is a unique identifier assigned to a network interface controller (NIC). For communications within a network segment, it is used as a network address for most IEEE 802 network technologies, including Ethernet, Wi-Fi, and Bluetooth. Within the Open Systems Interconnection (OSI) model, MAC addresses are used in the medium access control protocol sublayer of the data link layer. As typically represented, MAC addresses are recognizable as six groups of two hexadecimal digits, separated by hyphens, colons, or no separator (see Notational conventions below).

A MAC address may be referred to as the BURNED-IN ADDRESS, and is also known as an ETHERNET HARDWARE ADDRESS, HARDWARE ADDRESS, and _physical address_ (not to be confused with a memory physical address).

A network node with multiple NICs must have a unique MAC address for each. Sophisticated network equipment such as a multilayer switch or router may require one or more permanently assigned MAC addresses.

MAC addresses are most often assigned by the manufacturer of network interface cards. Each is stored in hardware, such as the card's read-only memory or by a firmware mechanism. A MAC address typically includes the manufacturer's organizationally unique identifier (OUI). MAC addresses are formed according to the principles of two numbering spaces based on Extended Unique Identifiers (EUI) managed by the Institute of Electrical and Electronics Engineers (IEEE): EUI-48, which replaces the obsolete term MAC-48,[1] and EUI-64.[2]


Address details

MAC-48_Address.svg and unicast addressing and the _local_ or _U/L_ bit (b1) distinguishes universal and locally administered addressing.]]

The original IEEE 802 MAC address comes from the original Xerox Network Systems Ethernet addressing scheme.[3] This 48-bit address space contains potentially 2⁴⁸ or 281,474,976,710,656 possible MAC addresses. The IEEE manages allocation of MAC addresses, originally known as MAC-48 and which it now refers to as EUI-48 identifiers. The IEEE has a target lifetime of 100 years (until 2080) for applications using EUI-48 space and restricts applications accordingly. The IEEE encourages adoption of the more plentiful EUI-64 for non-Ethernet applications.

The distinction between EUI-48 and MAC-48 identifiers is in name and application only. MAC-48 was used to address hardware interfaces within existing 802-based networking applications; EUI-48 is now used for 802-based networking and is also used to identify other devices and software, for example Bluetooth.[4][5] The IEEE now considers _MAC-48_ to be an obsolete term.[6] _EUI-48_ is now used in all cases. In addition, the EUI-64 numbering system originally encompassed both MAC-48 and EUI-48 identifiers by a simple translation mechanism.[7] These translations have since been deprecated.[8]

An Individual Address Block (IAB) is an inactive registry activity which has been replaced by the MA-S (MA-S was previously named OUI-36[9]) registry product as of January 1, 2014. The IAB uses a OUI from MA-L (MA-L registry was previously named OUI registry, the term OUI is still in use, but not for calling a registry[10]) belonging to the IEEE Registration Authority, concatenated with 12 additional IEEE-provided bits (for a total of 36 bits), leaving only 12 bits for the IAB owner to assign to their (up to 4096) individual devices. An IAB is ideal for organizations requiring not more than 4096 unique 48-bit numbers (EUI-48). Unlike an OUI, which allows the assignee to assign values in various different number spaces (for example, EUI-48, EUI-64, and the various context-dependent identifier number spaces), the Individual Address Block could only be used to assign EUI-48 identifiers. All other potential uses based on the OUI from which the IABs are allocated are reserved, and remain the property of the IEEE Registration Authority. It should also be noted that, between 2007 and September 2012, the OUI value 00:50:C2 was used for IAB assignments. After September 2012, the value 40:D8:55 was used. The owners of an already assigned IAB may continue to use the assignment.[11]

There is another registry which is called MA-M (MAC Addresses - Medium). The MA-M assignment block provides both 2²⁰ EUI-48 identifiers and 2³⁶ EUI-64 identifiers (that means first 28 bits are IEEE assigned bits). The first 24-bits of the assigned MA-M block are an OUI assigned to IEEE that will not be reassigned.

Universal vs. local

Addresses can either be _universally administered addresses_ (UAA) or _locally administered addresses_ (LAA). A universally administered address is uniquely assigned to a device by its manufacturer. The first three octets (in transmission order) identify the organization that issued the identifier and are known as the organizationally unique identifier (OUI).[12] The remainder of the address (three octets for EUI-48 or five for EUI-64) are assigned by that organization in nearly any manner they please, subject to the constraint of uniqueness. A locally administered address is assigned to a device by a network administrator, overriding the burned-in address.

Universally administered and locally administered addresses are distinguished by setting the second-least-significant bit of the first octet of the address. This bit is also referred to as the U/L bit, short for Universal/Local, which identifies how the address is administered. If the bit is 0, the address is universally administered. If it is 1, the address is locally administered. In the example address the first octet is 06 (hex), the binary form of which is 00000110, where the second-least-significant bit is 1. Therefore, it is a locally administered address.[13] Another example that uses locally administered addresses is the DECnet protocol. The MAC address of the Ethernet interface is changed by the DECnet software to be where reflects the DECnet network address _xx.yy_ of the host. This eliminates the need for an address resolution protocol since the MAC address for any DECnet host can be simply determined.

Unicast vs. multicast

When the least significant bit of an address's first octet is 0 (zero), the frame is meant to reach only one receiving NIC.[14] This type of transmission is called unicast. A unicast frame is transmitted to all nodes within the collision domain. In a modern wired setting the collision domain usually is the length of the Ethernet cable between two network cards. In a wireless setting, the collision domain is all receivers that can detect a given wireless signal. If a switch does not know which port leads to a given MAC address, the switch will forward a unicast frame to all of its ports (except the originating port), an action known as unicast flood.[15] Only the node with the matching hardware MAC address will accept the frame; network frames with non-matching MAC-addresses are ignored, unless the device is in promiscuous mode.

If the least significant bit of the first octet is set to 1, the frame will still be sent only once; however, NICs will choose to accept it based on criteria other than the matching of a MAC address: for example, based on a configurable list of accepted multicast MAC addresses. This is called multicast addressing.

The IEEE has built in several special address types to allow more than one network interface card to be addressed at one time:

-   Packets sent to the _broadcast address_, all one bits, are received by all stations on a local area network. In hexadecimal the broadcast address would be . A broadcast frame is flooded and is forwarded to and accepted by all other nodes.
-   Packets sent to a _multicast address_ are received by all stations on a LAN that have been configured to receive packets sent to that address.
-   FUNCTIONAL ADDRESSES identify one or more Token Ring NICs that provide a particular service, defined in IEEE 802.5.

These are all examples of _group addresses_, as opposed to _individual addresses_; the least significant bit of the first octet of a MAC address distinguishes individual addresses from group addresses. That bit is set to 0 in individual addresses and set to 1 in group addresses. Group addresses, like individual addresses, can be universally administered or locally administered.


Applications

The following network technologies use the EUI-48 identifier format:

-   Ethernet
-   802.11 wireless networks (Wi-Fi)
-   Bluetooth
-   IEEE 802.5 token ring
-   most other IEEE 802 networks
-   Fiber Distributed Data Interface (FDDI)
-   Asynchronous Transfer Mode (ATM), switched virtual connections only, as part of an NSAP address
-   Fibre Channel and Serial Attached SCSI (as part of a World Wide Name)
-   The ITU-T G.hn standard, which provides a way to create a high-speed (up to 1 gigabit/s) local area network using existing home wiring (power lines, phone lines and coaxial cables). The G.hn Application Protocol Convergence (APC) layer accepts Ethernet frames that use the EUI-48 format and encapsulates them into G.hn Medium Access Control Service Data Units (MSDUs).

Every device that connects to an IEEE 802 network (such as Ethernet and WiFi) has a EUI-48 address. Common networked consumer devices such as PCs, smartphones and tablet computers use EUI-48 addresses.

EUI-64 identifiers are used in:

-   IEEE 1394 (FireWire)
-   IPv6 (Modified EUI-64 as the least-significant 64 bits of a unicast network address or link-local address when stateless address autoconfiguration is used.)[16] IPv6 uses a _modified EUI-64_, treats MAC-48 as EUI-48 instead (as it is chosen from the same address pool) and inverts the local bit. This results in extending MAC addresses (such as IEEE 802 MAC address) to modified EUI-64 using only (and never ) and with the local bit inverted.[17]
-   ZigBee / 802.15.4 / 6LoWPAN wireless personal-area networks


Usage in hosts

On broadcast networks, such as Ethernet, the MAC address is expected to uniquely identify each node on that segment and allows frames to be marked for specific hosts. It thus forms the basis of most of the link layer (OSI Layer 2) networking upon which upper layer protocols rely to produce complex, functioning networks.

Many network interfaces support changing their MAC address. On most Unix-like systems, the command utility ifconfig may be used to remove and add link address aliases. For instance, the _active_ ifconfig directive may be used on NetBSD to specify which of the attached addresses to activate.[18] Hence, various configuration scripts and utilities permit the randomization of the MAC address at the time of booting or before establishing a network connection.

Changing MAC addresses is necessary in network virtualization. In MAC spoofing, this is practiced in exploiting security vulnerabilities of a computer system. Some modern operating systems, such as Apple iOS and Android, especially in mobile devices, are designed to randomize the assignment of a MAC address to network interface when scanning for wireless access points to avert tracking systems.[19][20]

In Internet Protocol (IP) networks, the MAC address of an interface corresponding to an IP address may be queried with the Address Resolution Protocol (ARP) for IPv4 and the Neighbor Discovery Protocol (NDP) for IPv6, relating OSI Layer 3 addresses to Layer 2 addresses.

Tracking

Randomization

According to Edward Snowden, the US National Security Agency has a system that tracks the movements of mobile devices in a city by monitoring MAC addresses.[21] To avert this practice, Apple has started using random MAC addresses in iOS devices while scanning for networks.[22] Other vendors followed quickly. MAC address randomization during scanning was added in Android starting from version 6.0[23], Windows 10[24], and Linux kernel 3.18.[25] The actual implementations of the MAC address randomization technique vary largely in different devices.[26] Moreover, various flaws and shortcomings in these implementations may allow an attacker to track a device even if its MAC address is changed, for instance its probe requests' other elements,[27][28] or their timing.[29][30] If random MAC addresses are not used, researchers have confirmed that it is possible to link a real identity to a particular wireless MAC address.[31]

Other information leakage

Using wireless access points in SSID-hidden mode (network cloaking), a mobile wireless device may not only disclose its own MAC address when traveling, but even the MAC addresses associated to SSIDs the device has already connected to, if they are configured to send these as part of probe request packets. Alternative modes to prevent this include configuring access points to be either in beacon-broadcasting mode, or probe-response with SSID mode. In these modes, probe requests may be unnecessary, or sent in broadcast mode without disclosing the identity of previously-known networks.[32]

Anonymization


Notational conventions

The standard (IEEE 802) format for printing EUI-48 addresses in human-friendly form is six groups of two hexadecimal digits, separated by hyphens () in transmission order (e.g. ). This form is also commonly used for EUI-64 (e.g. ).[33] Other conventions include six groups of two hexadecimal digits separated by colons (:) (e.g. ), and three groups of four hexadecimal digits separated by dots (.) (e.g. ); again in transmission order.[34]

Bit-reversed notation

The standard notation, also called canonical format, for MAC addresses is written in transmission order with the least significant bit of each byte transmitted first, and is used in the output of the ifconfig, ip address, and ipconfig commands, for example.

However, since IEEE 802.3 (Ethernet) and IEEE 802.4 (Token Bus) send the bytes (octets) over the wire, left-to-right, with least significant bit in each byte first, while IEEE 802.5 (Token Ring) and IEEE 802.6 (FDDI) send the bytes over the wire with the most significant bit first, confusion may arise when an address in the latter scenario is represented with bits reversed from the canonical representation. For example, an address in canonical form would be transmitted over the wire as bits 01001000 00101100 01101010 00011110 01011001 00111101 in the standard transmission order (least significant bit first). But for Token Ring networks, it would be transmitted as bits 00010010 00110100 01010110 01111000 10011010 10111100 in most-significant-bit first order. The latter might be incorrectly displayed as . This is referred to as _bit-reversed order_, _non-canonical form_, _MSB format_, _IBM format_, or _Token Ring format_, as explained in .


See also

-   Hot Standby Router Protocol
-   MAC filtering
-   Network management
-   Sleep Proxy Service, which may spoof another device's MAC address during certain periods
-   Transparent bridging
-   Virtual Router Redundancy Protocol


Notes


References


External links

-   IEEE Registration Authority Tutorials
-   IEEE Registration Authority - Frequently Asked Questions
-   IEEE Public OUI and Company ID, etc. Assignment lookup
-   IEEE Public OUI/MA-L list
-   IEEE Public OUI-28/MA-M list
-   IEEE Public OUI-36/MA-S list
-   IEEE Public IAB list
-   IEEE IAB and OUI MAC Address Lookup Database and API
-   RFC 7042. IANA Considerations and IETF Protocol and Documentation Usage for IEEE 802 Parameters
-   IANA list of Ethernet Numbers
-   Wireshark's OUI Lookup Tool and MAC address list

Category:Media access control Category:Network addressing Category:Unique identifiers

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

[15]  Getting Started with LANs {{!}} Cisco Support Community {{!}} 5896 {{!}} 68421|website=supportforums.cisco.com|access-date=2016-05-17}}

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