GENERAL PACKET RADIO SERVICE (GPRS) is a packet oriented mobile data standard on the 2G and 3G cellular communication network's global system for mobile communications (GSM). GPRS was established by European Telecommunications Standards Institute (ETSI) in response to the earlier CDPD and i-mode packet-switched cellular technologies. It is now maintained by the 3rd Generation Partnership Project (3GPP).[1][2]

GPRS is typically sold according to the total volume of data transferred during the billing cycle, in contrast with circuit switched data, which is usually billed per minute of connection time, or sometimes by one-third minute increments. Usage above the GPRS bundled data cap may be charged per MB of data, speed limited, or disallowed.

GPRS is a best-effort service, implying variable throughput and latency that depend on the number of other users sharing the service concurrently, as opposed to circuit switching, where a certain quality of service (QoS) is guaranteed during the connection. In 2G systems, GPRS provides data rates of 56–114 kbit/sec.[3] 2G cellular technology combined with GPRS is sometimes described as _2.5G_, that is, a technology between the second (2G) and third (3G) generations of mobile telephony.[4] It provides moderate-speed data transfer, by using unused time division multiple access (TDMA) channels in, for example, the GSM system. GPRS is integrated into GSM Release 97 and newer releases.


Technical overview

The GPRS core network allows 2G, 3G and WCDMA mobile networks to transmit IP packets to external networks such as the Internet. The GPRS system is an integrated part of the GSM network switching subsystem.

Services offered

GPRS extends the GSM Packet circuit switched data capabilities and makes the following services possible:

-   SMS messaging and broadcasting
-   "Always on" internet access
-   Multimedia messaging service (MMS)
-   Push-to-talk over cellular (PoC)
-   Instant messaging and presence—wireless village
-   Internet applications for smart devices through wireless application protocol (WAP)
-   Point-to-point (P2P) service: inter-networking with the Internet (IP)
-   Point-to-multipoint (P2M) service: point-to-multipoint multicast and point-to-multipoint group calls

If SMS over GPRS is used, an SMS transmission speed of about 30 SMS messages per minute may be achieved. This is much faster than using the ordinary SMS over GSM, whose SMS transmission speed is about 6 to 10 SMS messages per minute.

Protocols supported

GPRS supports the following protocols:

-   Internet Protocol (IP). In practice, built-in mobile browsers use IPv4 before IPv6 is widespread.
-   Point-to-Point Protocol (PPP) is typically not supported by mobile phone operators but if a cellular phone is used as a modem for a connected computer, PPP may be used to tunnel IP to the phone. This allows an IP address to be dynamically assigned (using IPCP rather than DHCP) to the mobile equipment.
-   X.25 connections are typically used for applications like wireless payment terminals, although it has been removed from the standard. X.25 can still be supported over PPP, or even over IP, but this requires either a network-based router to perform encapsulation or software built into the end-device/terminal; e.g., user equipment (UE).

When TCP/IP is used, each phone can have one or more IP addresses allocated. GPRS will store and forward the IP packets to the phone even during handover. The TCP restores any packets lost (e.g. due to a radio noise induced pause).

Hardware

Devices supporting GPRS are grouped into three classes:

Class A: Can be connected to GPRS service and GSM service (voice, SMS) simultaneously. Such devices are now available.
Class B: Can be connected to GPRS service and GSM service (voice, SMS), but using only one at a time. During GSM service (voice call or SMS), GPRS service is suspended and resumed automatically after the GSM service (voice call or SMS) has concluded. Most GPRS mobile devices are Class B.
Class C: Are connected to either GPRS service or GSM service (voice, SMS) and must be switched manually between one service and the other.

Because a Class A device must service GPRS and GSM networks together, it effectively needs two radios. To avoid this hardware requirement, a GPRS mobile device may implement the dual transfer mode (DTM) feature. A DTM-capable mobile can handle both GSM packets and GPRS packets with network coordination to ensure both types are not transmitted at the same time. Such devices are considered pseudo-Class A, sometimes referred to as "simple class A". Some networks have supported DTM since 2007.

3G/GPRS Modem]] USB 3G/GPRS modems have a terminal-like interface over USB with V.42bis, and RFC 1144 data formats. Some models include an external antenna connector. Modem cards for laptop PCs, or external USB modems are available, similar in shape and size to a computer mouse, or a pendrive.

Addressing

A GPRS connection is established by reference to its access point name (APN). The APN defines the services such as wireless application protocol (WAP) access, short message service (SMS), multimedia messaging service (MMS), and for Internet communication services such as email and World Wide Web access.

In order to set up a GPRS connection for a wireless modem, a user must specify an APN, optionally a user name and password, and very rarely an IP address, provided by the network operator.

GPRS modems and modules

GSM module or GPRS modules are similar to modems, but there’s one difference: the modem is an external piece of equipment, whereas the GSM module or GPRS module can be integrated within an electrical or electronic equipment. It is an embedded piece of hardware. A GSM mobile, on the other hand, is a complete embedded system in itself. It comes with embedded processors dedicated to provide a functional interface between the user and the mobile network.


Coding schemes and speeds

The upload and download speeds that can be achieved in GPRS depend on a number of factors such as:

-   the number of BTS TDMA time slots assigned by the operator
-   the channel encoding used.
-   the maximum capability of the mobile device expressed as a GPRS multislot class

Multiple access schemes

The multiple access methods used in GSM with GPRS are based on frequency division duplex (FDD) and TDMA. During a session, a user is assigned to one pair of up-link and down-link frequency channels. This is combined with time domain statistical multiplexing which makes it possible for several users to share the same frequency channel. The PACKETS have constant length, corresponding to a GSM time slot. The down-link uses first-come first-served packet scheduling, while the up-link uses a scheme very similar to reservation ALOHA (R-ALOHA). This means that slotted ALOHA (S-ALOHA) is used for reservation inquiries during a contention phase, and then the actual data is transferred using dynamic TDMA with first-come first-served.

Channel encoding

The channel encoding process in GPRS consists of two steps: first, a cyclic code is used to add parity bits, which are also referred to as the Block Check Sequence, followed by coding with a possibly punctured convolutional code.[5] The Coding Schemes CS-1 to CS-4 specify the number of parity bits generated by the cyclic code and the puncturing rate of the convolutional code.[6] In Coding Schemes CS-1 through CS-3, the convolutional code is of rate 1/2, i.e. each input bit is converted into two coded bits.[7] In Coding Schemes CS-2 and CS-3, the output of the convolutional code is punctured to achieve the desired code rate.[8] In Coding Scheme CS-4, no convolutional coding is applied.[9] The following table summarises the options.

+---------------+------------------------------------+------------------------------------+------------+-----------+
| GPRS          | Bitrate including RLC/MAC overhead | Bitrate excluding RLC/MAC overhead | Modulation | Code rate |
| Coding scheme | (kbit/s/slot)                      | (kbit/s/slot)                      |            |           |
+===============+====================================+====================================+============+===========+
| CS-1          | 9.20                               | 8.00                               | GMSK       | 1/2       |
+---------------+------------------------------------+------------------------------------+------------+-----------+
| CS-2          | 13.55                              | 12.00                              | GMSK       | ≈2/3      |
+---------------+------------------------------------+------------------------------------+------------+-----------+
| CS-3          | 15.75                              | 14.40                              | GMSK       | ≈3/4      |
+---------------+------------------------------------+------------------------------------+------------+-----------+
| CS-4          | 21.55                              | 20.00                              | GMSK       | 1         |
+---------------+------------------------------------+------------------------------------+------------+-----------+

The least robust, but fastest, coding scheme (CS-4) is available near a base transceiver station (BTS), while the most robust coding scheme (CS-1) is used when the mobile station (MS) is further away from a BTS.

Using the CS-4 it is possible to achieve a user speed of 20.0 kbit/s per time slot. However, using this scheme the cell coverage is 25% of normal. CS-1 can achieve a user speed of only 8.0 kbit/s per time slot, but has 98% of normal coverage. Newer network equipment can adapt the transfer speed automatically depending on the mobile location.

In addition to GPRS, there are two other GSM technologies which deliver data services: circuit-switched data (CSD) and high-speed circuit-switched data (HSCSD). In contrast to the shared nature of GPRS, these instead establish a dedicated circuit (usually billed per minute). Some applications such as video calling may prefer HSCSD, especially when there is a continuous flow of data between the endpoints.

The following table summarises some possible configurations of GPRS and circuit switched data services.

    {| class="wikitable" align=center

! Technology ! Download (kbit/s) ! Upload (kbit/s) ! TDMA timeslots allocated (DL+UL) |- style="text-align:center;" | CSD | 9.6 | 9.6 | 1+1 |- style="text-align:center;" | HSCSD | 28.8 | 14.4 | 2+1 |- style="text-align:center;" | HSCSD | 43.2 | 14.4 | 3+1 |- style="text-align:center;" | GPRS | 85.6 | 21.4 (Class 8 & 10 and CS-4) | 4+1 |- style="text-align:center;" | GPRS | 64.2 | 42.8 (Class 10 and CS-4) | 3+2 |- style="text-align:center;" | EGPRS (EDGE) | 236.8 | 59.2 (Class 8, 10 and MCS-9) | 4+1 |- style="text-align:center;" | EGPRS (EDGE) | 177.6 | 118.4 (Class 10 and MCS-9) | 3+2 |}

Multislot Class

The multislot class determines the speed of data transfer available in the Uplink and Downlink directions. It is a value between 1 and 45 which the network uses to allocate radio channels in the uplink and downlink direction. Multislot class with values greater than 31 are referred to as high multislot classes.

A multislot allocation is represented as, for example, 5+2. The first number is the number of downlink timeslots and the second is the number of uplink timeslots allocated for use by the mobile station. A commonly used value is class 10 for many GPRS/EGPRS mobiles which uses a maximum of 4 timeslots in downlink direction and 2 timeslots in uplink direction. However simultaneously a maximum number of 5 simultaneous timeslots can be used in both uplink and downlink. The network will automatically configure for either 3+2 or 4+1 operation depending on the nature of data transfer.

Some high end mobiles, usually also supporting UMTS, also support GPRS/EDGE multislot class 32. According to 3GPP TS 45.002 (Release 12), Table B.1,[10] mobile stations of this class support 5 timeslots in downlink and 3 timeslots in uplink with a maximum number of 6 simultaneously used timeslots. If data traffic is concentrated in downlink direction the network will configure the connection for 5+1 operation. When more data is transferred in the uplink the network can at any time change the constellation to 4+2 or 3+3. Under the best reception conditions, i.e. when the best EDGE modulation and coding scheme can be used, 5 timeslots can carry a bandwidth of 5*59.2 kbit/s = 296 kbit/s. In uplink direction, 3 timeslots can carry a bandwidth of 3*59.2 kbit/s = 177.6 kbit/s.[11]

Multislot Classes for GPRS/EGPRS

    {| class="wikitable"

! Multislot Class ! Downlink TS ! Uplink TS ! Active TS |- style="text-align:center;" | 1 | 1 | 1 | 2 |- style="text-align:center;" | 2 | 2 | 1 | 3 |- style="text-align:center;" | 3 | 2 | 2 | 3 |- style="text-align:center;" | 4 | 3 | 1 | 4 |- style="text-align:center;" | 5 | 2 | 2 | 4 |- style="text-align:center;" | 6 | 3 | 2 | 4 |- style="text-align:center;" | 7 | 3 | 3 | 4 |- style="text-align:center;" | 8 | 4 | 1 | 5 |- style="text-align:center;" | 9 | 3 | 2 | 5 |- style="text-align:center;" | 10 | 4 | 2 | 5 |- style="text-align:center;" | 11 | 4 | 3 | 5 |- style="text-align:center;" | 12 | 4 | 4 | 5 |- style="text-align:center;" | 30 | 5 | 1 | 6 |- style="text-align:center;" | 31 | 5 | 2 | 6 |- style="text-align:center;" | 32 | 5 | 3 | 6 |- style="text-align:center;" | 33 | 5 | 4 | 6 |- style="text-align:center;" | 34 | 5 | 5 | 6 |}

Attributes of a multislot class

Each multislot class identifies the following:

-   the maximum number of Timeslots that can be allocated on uplink
-   the maximum number of Timeslots that can be allocated on downlink
-   the total number of timeslots which can be allocated by the network to the mobile
-   the time needed for the MS to perform adjacent cell signal level measurement and get ready to transmit
-   the time needed for the MS to get ready to transmit
-   the time needed for the MS to perform adjacent cell signal level measurement and get ready to receive
-   the time needed for the MS to get ready to receive.

The different multislot class specification is detailed in the Annex B of the 3GPP Technical Specification 45.002 (Multiplexing and multiple access on the radio path)


Usability

The maximum speed of a GPRS connection offered in 2003 was similar to a modem connection in an analog wire telephone network, about 32–40 kbit/s, depending on the phone used. Latency is very high; round-trip time (RTT) is typically about 600–700 ms and often reaches 1s. GPRS is typically prioritized lower than speech, and thus the quality of connection varies greatly.

Devices with latency/RTT improvements (via, for example, the extended UL TBF mode feature) are generally available. Also, network upgrades of features are available with certain operators. With these enhancements the active round-trip time can be reduced, resulting in significant increase in application-level throughput speeds.


History of GPRS

GPRS opened in 2000 as a packet-switched data service embedded to the channel-switched cellular radio network GSM. GPRS extends the reach of the fixed Internet by connecting mobile terminals worldwide.

The CELLPAC[12] protocol developed 1991-1993 was the trigger point for starting in 1993 specification of standard GPRS by ETSI SMG. Especially, the CELLPAC Voice & Data functions introduced in a 1993 ETSI Workshop contribution[13] anticipate what was later known to be the roots of GPRS. This workshop contribution is referenced in 22 GPRS related US-Patents.[14] Successor systems to GSM/GPRS like W-CDMA (UMTS) and LTE rely on key GPRS functions for mobile Internet access as introduced by CELLPAC.

According to a study on history of GPRS development,[15] Bernhard Walke and his student Peter Decker are the inventors of GPRS – the first system providing worldwide mobile Internet access.


See also

-   Code division multiple access (CDMA)
-   Enhanced Data Rates for GSM Evolution (EDGE)
-   GPRS core network
-   High Speed Packet Access (HSDPA)
-   IP Multimedia Subsystem
-   List of device bit rates
-   Sub-network dependent convergence protocol (SNDCP)
-   UMTS


References


External links

-   3GPP AT command set for user equipment (UE)
-   -   Free GPRS resources
-   GSM World, the trade association for GSM and GPRS network operators.
-   Palowireless GPRS resource center
-   GPRS attach and PDP context activation sequence diagram

ja:GSM#GPRS

Category:3GPP standards Category:Link protocols Category:Telecommunications-related introductions in 1997

[1] ETSI

[2] 3GPP

[3] General packet radio service from Qkport

[4] Mobile Phone Generations from

[5]

[6]

[7]

[8]

[9]

[10]

[11] GPRS and EDGE Multislot Classes

[12] Bernhard Walke, Wolf Mende, Georgios Hatziliadis: “CELLPAC: A packet radio protocol applied to the cellular GSM mobile radio network”, Proceedings of 41st IEEE Vehicular Technology Conference, May 1991, 408-413.

[13] Peter Decker, Bernhard Walke: “A General Packet Radio Service proposed for GSM”, ETSI SMG Workshop “GSM in a Future Competitive Environment”, Helsinki, Finland, Oct. 13, 1993, pp. 1-20.

[14] Program “Publish or Perish”, see 1 returns to a search for P. Decker, B. Walke their most cited paper that (after double click) unveils US patents referencing that paper

[15] Bernhard Walke: „The Roots of GPRS: The First System for Mobile Packet-Based Global Internet Access“, IEEE Wireless Communications, Oct. 2013, 12-23.