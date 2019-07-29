Linksys-Wireless-G-Router.jpg Wi-Fi router operates on the 2.4 GHz "G" standard, capable of transmitting 54 megabits per second.]] Netgear-Nighthawk-AC1900-WiFi-Router.jpg dual-band router from 2013 uses the AC standard, capable of transmitting 1900 megabits per second (combined).]]

IEEE 802.11 is part of the IEEE 802 set of LAN protocols, and specifies the set of media access control (MAC) and physical layer (PHY) protocols for implementing wireless local area network (WLAN) Wi-Fi computer communication in various frequencies, including but not limited to 2.4, 5, and 60 GHz frequency bands.

They are the world's most widely used wireless computer networking standards, used in most home and office networks to allow laptops, printers, and smartphones to talk to each other and access the Internet without connecting wires. They are created and maintained by the Institute of Electrical and Electronics Engineers (IEEE) LAN/MAN Standards Committee (IEEE 802). The base version of the standard was released in 1997, and has had subsequent amendments. The standard and amendments provide the basis for wireless network products using the Wi-Fi brand. While each amendment is officially revoked when it is incorporated in the latest version of the standard, the corporate world tends to market to the revisions because they concisely denote capabilities of their products. As a result, in the marketplace, each revision tends to become its own standard.

The protocols are typically used in conjunction with IEEE 802.2, and are designed to interwork seamlessly with Ethernet, and are very often used to carry Internet Protocol traffic.

Although IEEE 802.11 specifications list channels that might be used, the radio frequency spectrum availability allowed varies significantly by regulatory domain.


General description

The 802.11 family consists of a series of half-duplex over-the-air modulation techniques that use the same basic protocol. The 802.11 protocol family employ carrier-sense multiple access with collision avoidance whereby equipment listens to a channel for other users (including non 802.11 users) before transmitting each packet.

802.11-1997 was the first wireless networking standard in the family, but 802.11b was the first widely accepted one, followed by 802.11a, 802.11g, 802.11n, and 802.11ac. Other standards in the family (c–f, h, j) are service amendments that are used to extend the current scope of the existing standard, which may also include corrections to a previous specification.[1]

802.11b and 802.11g use the 2.4 GHz ISM band, operating in the United States under Part 15 of the U.S. Federal Communications Commission Rules and Regulations; 802.11n can also use that band. Because of this choice of frequency band, 802.11b/g/n equipment may occasionally suffer interference in the 2.4 GHz band from microwave ovens, cordless telephones, and Bluetooth devices etc. 802.11b and 802.11g control their interference and susceptibility to interference by using direct-sequence spread spectrum (DSSS) and orthogonal frequency-division multiplexing (OFDM) signaling methods, respectively.

802.11a uses the 5 GHz U-NII band, which, for much of the world, offers at least 23 non-overlapping 20 MHz-wide channels rather than the 2.4 GHz ISM frequency band offering only three non-overlapping 20 MHz-wide channels, where other adjacent channels overlap—see list of WLAN channels. Better or worse performance with higher or lower frequencies (channels) may be realized, depending on the environment. 802.11n can use either the 2.4 or 5 GHz band; 802.11ac uses only the 5 GHz band.

The segment of the radio frequency spectrum used by 802.11 varies between countries. In the US, 802.11a and 802.11g devices may be operated without a license, as allowed in Part 15 of the FCC Rules and Regulations. Frequencies used by channels one through six of 802.11b and 802.11g fall within the 2.4 GHz amateur radio band. Licensed amateur radio operators may operate 802.11b/g devices under Part 97 of the FCC Rules and Regulations, allowing increased power output but not commercial content or encryption.[2]

In 2018, the Wi-Fi Alliance began using a consumer-friendly generation numbering scheme for the publicly used 802.11 protocols. Wi-Fi generations 1–6 refer to the 802.11b, 802.11a, 802.11g, 802.11n, 802.11ac, and 802.11ax protocols, in that order.[3][4]


History

802.11 technology has its origins in a 1985 ruling by the U.S. Federal Communications Commission that released the ISM band[5] for unlicensed use.[6]

In 1991 NCR Corporation/AT&T (now Nokia Labs and LSI Corporation) invented a precursor to 802.11 in Nieuwegein, the Netherlands. The inventors initially intended to use the technology for cashier systems. The first wireless products were brought to the market under the name WaveLAN with raw data rates of 1 Mbit/s and 2 Mbit/s.

Vic Hayes, who held the chair of IEEE 802.11 for 10 years, and has been called the "father of Wi-Fi", was involved in designing the initial 802.11b and 802.11a standards within the IEEE.[7]

In 1999, the Wi-Fi Alliance was formed as a trade association to hold the Wi-Fi trademark under which most products are sold.[8]

The major commercial breakthrough came with Apple Inc. adopting Wi-Fi for their iBook series of laptops in 1999. It was the first mass consumer product to offer Wi-Fi network connectivity, which was then branded by Apple as AirPort.[9][10][11] One year later IBM followed with its ThinkPad 1300 series in 2000.[12]


Protocol

802.11-1997 (802.11 legacy)

The original version of the standard IEEE 802.11 was released in 1997 and clarified in 1999, but is now obsolete. It specified two net bit rates of 1 or 2 megabits per second (Mbit/s), plus forward error correction code. It specified three alternative physical layer technologies: diffuse infrared operating at 1 Mbit/s; frequency-hopping spread spectrum operating at 1 Mbit/s or 2 Mbit/s; and direct-sequence spread spectrum operating at 1 Mbit/s or 2 Mbit/s. The latter two radio technologies used microwave transmission over the Industrial Scientific Medical frequency band at 2.4 GHz. Some earlier WLAN technologies used lower frequencies, such as the U.S. 900 MHz ISM band.

Legacy 802.11 with direct-sequence spread spectrum was rapidly supplanted and popularized by 802.11b.

802.11a (OFDM waveform)

802.11a, published in 1999, uses the same data link layer protocol and frame format as the original standard, but an OFDM based air interface (physical layer). It operates in the 5 GHz band with a maximum net data rate of 54 Mbit/s, plus error correction code, which yields realistic net achievable throughput in the mid-20 Mbit/s.[13] It has seen widespread worldwide implementation, particularly within the corporate workspace.

Since the 2.4 GHz band is heavily used to the point of being crowded, using the relatively unused 5 GHz band gives 802.11a a significant advantage. However, this high carrier frequency also brings a disadvantage: the effective overall range of 802.11a is less than that of 802.11b/g. In theory, 802.11a signals are absorbed more readily by walls and other solid objects in their path due to their smaller wavelength, and, as a result, cannot penetrate as far as those of 802.11b. In practice, 802.11b typically has a higher range at low speeds (802.11b will reduce speed to 5.5 Mbit/s or even 1 Mbit/s at low signal strengths). 802.11a also suffers from interference,[14] but locally there may be fewer signals to interfere with, resulting in less interference and better throughput.

802.11b

The 802.11b standard has a maximum raw data rate of 11 Mbit/s, and uses the same media access method defined in the original standard. 802.11b products appeared on the market in early 2000, since 802.11b is a direct extension of the modulation technique defined in the original standard. The dramatic increase in throughput of 802.11b (compared to the original standard) along with simultaneous substantial price reductions led to the rapid acceptance of 802.11b as the definitive wireless LAN technology.

Devices using 802.11b experience interference from other products operating in the 2.4 GHz band. Devices operating in the 2.4 GHz range include microwave ovens, Bluetooth devices, baby monitors, cordless telephones, and some amateur radio equipment. As unlicensed intentional radiators in this ISM band, they must not interfere with and must tolerate interference from primary or secondary allocations (users) of this band, such as amateur radio.

802.11g

In June 2003, a third modulation standard was ratified: 802.11g. This works in the 2.4 GHz band (like 802.11b), but uses the same OFDM based transmission scheme as 802.11a. It operates at a maximum physical layer bit rate of 54 Mbit/s exclusive of forward error correction codes, or about 22 Mbit/s average throughput.[15] 802.11g hardware is fully backward compatible with 802.11b hardware, and therefore is encumbered with legacy issues that reduce throughput by ~21% when compared to 802.11a.

The then-proposed 802.11g standard was rapidly adopted in the market starting in January 2003, well before ratification, due to the desire for higher data rates as well as reductions in manufacturing costs. By summer 2003, most dual-band 802.11a/b products became dual-band/tri-mode, supporting a and b/g in a single mobile adapter card or access point. Details of making b and g work well together occupied much of the lingering technical process; in an 802.11g network, however, activity of an 802.11b participant will reduce the data rate of the overall 802.11g network.

Like 802.11b, 802.11g devices also suffer interference from other products operating in the 2.4 GHz band, for example wireless keyboards.

802.11-2007

In 2003, task group TGma was authorized to "roll up" many of the amendments to the 1999 version of the 802.11 standard. REVma or 802.11ma, as it was called, created a single document that merged 8 amendments (802.11a, b, d, e, g, h, i, j) with the base standard. Upon approval on March 8, 2007, 802.11REVma was renamed to the then-current base standard IEEE 802.11-2007.[16]

802.11n

802.11n is an amendment that improves upon the previous 802.11 standards by adding multiple-input multiple-output antennas (MIMO). 802.11n operates on both the 2.4 GHz and the 5 GHz bands. Support for 5 GHz bands is optional. Its net data rate ranges from 54 Mbit/s to 600 Mbit/s. The IEEE has approved the amendment, and it was published in October 2009.[17][18] Prior to the final ratification, enterprises were already migrating to 802.11n networks based on the Wi-Fi Alliance's certification of products conforming to a 2007 draft of the 802.11n proposal.

802.11-2012

In May 2007, task group TGmb was authorized to "roll up" many of the amendments to the 2007 version of the 802.11 standard.[19] REVmb or 802.11mb, as it was called, created a single document that merged ten amendments (802.11k, r, y, n, w, p, z, v, u, s) with the 2007 base standard. In addition much cleanup was done, including a reordering of many of the clauses.[20] Upon publication on March 29, 2012, the new standard was referred to as IEEE 802.11-2012.

802.11ac

IEEE 802.11ac-2013 is an amendment to IEEE 802.11, published in December 2013, that builds on 802.11n.[21] Changes compared to 802.11n include wider channels (80 or 160 MHz versus 40 MHz) in the 5 GHz band, more spatial streams (up to eight versus four), higher-order modulation (up to 256-QAM vs. 64-QAM), and the addition of Multi-user MIMO (MU-MIMO). As of October 2013, high-end implementations support 80 MHz channels, three spatial streams, and 256-QAM, yielding a data rate of up to 433.3 Mbit/s per spatial stream, 1300 Mbit/s total, in 80 MHz channels in the 5 GHz band.[22] Vendors have announced plans to release so-called "Wave 2" devices with support for 160 MHz channels, four spatial streams, and MU-MIMO in 2014 and 2015.[23][24][25]

802.11ad

IEEE 802.11ad is an amendment that defines a new physical layer for 802.11 networks to operate in the 60 GHz millimeter wave spectrum. This frequency band has significantly different propagation characteristics than the 2.4 GHz and 5 GHz bands where Wi-Fi networks operate. Products implementing the 802.11ad standard are being brought to market under the WiGig brand name. The certification program is now being developed by the Wi-Fi Alliance instead of the now defunct Wireless Gigabit Alliance.[26] The peak transmission rate of 802.11ad is 7 Gbit/s.[27]

IEEE 802.11ad is a protocol used for very high data rates (about 8 Gbit/s) and for short range communication (about 1-10 meters).[28]

TP-Link announced the world's first 802.11ad router in January 2016.[29]

The WiGig standard is not too well known, although it was announced in 2009 and added to the IEEE 802.11 family in December 2012.

802.11af

IEEE 802.11af, also referred to as "White-Fi" and "Super Wi-Fi",[30] is an amendment, approved in February 2014, that allows WLAN operation in TV white space spectrum in the VHF and UHF bands between 54 and 790 MHz.[31][32] It uses cognitive radio technology to transmit on unused TV channels, with the standard taking measures to limit interference for primary users, such as analog TV, digital TV, and wireless microphones.[33] Access points and stations determine their position using a satellite positioning system such as GPS, and use the Internet to query a geolocation database (GDB) provided by a regional regulatory agency to discover what frequency channels are available for use at a given time and position.[34] The physical layer uses OFDM and is based on 802.11ac.[35] The propagation path loss as well as the attenuation by materials such as brick and concrete is lower in the UHF and VHF bands than in the 2.4 and 5 GHz bands, which increases the possible range.[36] The frequency channels are 6 to 8 MHz wide, depending on the regulatory domain.[37] Up to four channels may be bonded in either one or two contiguous blocks.[38] MIMO operation is possible with up to four streams used for either space–time block code (STBC) or multi-user (MU) operation.[39] The achievable data rate per spatial stream is 26.7 Mbit/s for 6 and 7 MHz channels, and 35.6 Mbit/s for 8 MHz channels.[40] With four spatial streams and four bonded channels, the maximum data rate is 426.7 Mbit/s for 6 and 7 MHz channels and 568.9 Mbit/s for 8 MHz channels.[41]

802.11-2016

IEEE 802.11-2016 which was known as IEEE 802.11 REVmc,[42], is a revision based on IEEE 802.11-2012, incorporating 5 amendments (11ae, 11aa, 11ad, 11ac, 11af). In addition, existing MAC and PHY functions have been enhanced and obsolete features were removed or marked for removal. Some clauses and annexes have been renumbered.[43]

802.11ah

IEEE 802.11ah, published in 2017,[44] defines a WLAN system operating at sub-1 GHz license-exempt bands. Due to the favorable propagation characteristics of the low frequency spectra, 802.11ah can provide improved transmission range compared with the conventional 802.11 WLANs operating in the 2.4 GHz and 5 GHz bands. 802.11ah can be used for various purposes including large scale sensor networks,[45] extended range hotspot, and outdoor Wi-Fi for cellular traffic offloading, whereas the available bandwidth is relatively narrow. The protocol intends consumption to be competitive with low power Bluetooth, at a much wider range.[46]

802.11ai

IEEE 802.11ai is an amendment to the 802.11 standard that added new mechanisms for a faster initial link setup time.[47]

802.11aj

IEEE 802.11aj is a rebanding of 802.11ad for use in the 45 GHz unlicensed spectrum available in some regions of the world (specifically China).[48]

Alternatively known as China Milli-Meter Wave (CMMW).

802.11aq

IEEE 802.11aq is an amendment to the 802.11 standard that will enable pre-association discovery of services. This extends some of the mechanisms in 802.11u that enabled device discovery to further discover the services running on a device, or provided by a network.[49]

802.11ax

IEEE 802.11ax (aka "Wi-Fi 6") is the successor to 802.11ac, and will increase the efficiency of WLAN networks. Currently in development, this project has the goal of providing 4x the throughput of 802.11ac at the user layer,[50] having just 37% higher nominal data rates at the PHY layer.[51]

802.11ay

IEEE 802.11ay is a standard that is being developed. It is an amendment that defines a new physical layer for 802.11 networks to operate in the 60 GHz millimeter wave spectrum. It will be an extension of the existing 11ad, aimed to extend the throughput, range and use-cases. The main use-cases include: indoor operation, out-door back-haul and short range communications. The peak transmission rate of 802.11ay is 20 Gbit/s.[52] The main extensions include: channel bonding (2, 3 and 4), MIMO and higher modulation schemes.

802.11be

IEEE 802.11be Extremely High Throughput (EHT) is the potential next amendment of the 802.11 IEEE standard.[53] It will build upon 802.11ax, focusing on WLAN indoor and outdoor operation with stationary and pedestrian speeds in the 2.4, 5 and 6 GHz frequency bands. Being the potential successor of Wi-Fi 6, the Wi-Fi Alliance will most likely certify it as Wi-Fi 7.


Common misunderstandings about achievable throughput

Throughputenvelope80211g.png application specific (UDP) performance envelope 2.4 GHz band, with 802.11g. 1 Mbps = 1 Mbit/s]]

Across all variations of 802.11, maximum achievable throughputs are given either based on measurements under ideal conditions or in the layer-2 data rates. However, this does not apply to typical deployments in which data is being transferred between two endpoints, of which at least one is typically connected to a wired infrastructure and the other endpoint is connected to an infrastructure via a wireless link.

ThroughputEnvelope11n.png application specific (UDP) performance envelope 2.4 GHz band, with 802.11n with 40MHz]]

This means that, typically, data frames pass an 802.11 (WLAN) medium, and are being converted to 802.3 (Ethernet) or vice versa. Due to the difference in the frame (header) lengths of these two media, the application's packet size determines the speed of the data transfer. This means applications that use small packets (e.g., VoIP) create dataflows with high-overhead traffic (i.e., a low goodput). Other factors that contribute to the overall application data rate are the speed with which the application transmits the packets (i.e., the data rate) and, of course, the energy with which the wireless signal is received. The latter is determined by distance and by the configured output power of the communicating devices.[54][55]

The same references apply to the attached graphs that show measurements of UDP throughput. Each represents an average (UDP) throughput (please note that the error bars are there, but barely visible due to the small variation) of 25 measurements. Each is with a specific packet size (small or large) and with a specific data rate (10 kbit/s – 100 Mbit/s). Markers for traffic profiles of common applications are included as well. These figures assume there are no packet errors, which if occurring will lower transmission rate further.


Channels and frequencies

802.11b, 802.11g, and 802.11n-2.4 utilize the spectrum, one of the ISM bands. 802.11a, 802.11n and 802.11ac use the more heavily regulated band. These are commonly referred to as the "2.4 GHz and 5 GHz bands" in most sales literature. Each spectrum is sub-divided into _channels_ with a center frequency and bandwidth, analogous to the way radio and TV broadcast bands are sub-divided.

The 2.4 GHz band is divided into 14 channels spaced 5 MHz apart, beginning with channel 1, which is centered on 2.412 GHz. The latter channels have additional restrictions or are unavailable for use in some regulatory domains.

2.4_GHz_Wi-Fi_channels_(802.11b,g_WLAN).svg channels in the 2.4 GHz band]]

The channel numbering of the spectrum is less intuitive due to the differences in regulations between countries. These are discussed in greater detail on the list of WLAN channels.

Channel spacing within the 2.4 GHz band

In addition to specifying the channel center frequency, 802.11 also specifies (in Clause 17) a spectral mask defining the permitted power distribution across each channel. The mask requires the signal be attenuated a minimum of 20 dB from its peak amplitude at ±11 MHz from the centre frequency, the point at which a channel is effectively 22 MHz wide. One consequence is that stations can use only every fourth or fifth channel without overlap.

Availability of channels is regulated by country, constrained in part by how each country allocates radio spectrum to various services. At one extreme, Japan permits the use of all 14 channels for 802.11b, and for 802.11g/n-2.4. Other countries such as Spain initially allowed only channels 10 and 11, and France allowed only 10, 11, 12, and 13; however, Europe now allow channels 1 through 13.[56][57] North America and some Central and South American countries allow only

2.4_GHz_Wi-Fi_channels_(802.11g_WLAN).svg

Since the spectral mask defines only power output restrictions up to ±11 MHz from the center frequency to be attenuated by −50 dBr, it is often assumed that the energy of the channel extends no further than these limits. It is more correct to say that, given the separation between channels, the overlapping signal on any channel should be sufficiently attenuated to minimally interfere with a transmitter on any other channel. Due to the near-far problem a transmitter can impact (desense) a receiver on a "non-overlapping" channel, but only if it is close to the victim receiver (within a meter) or operating above allowed power levels. Conversely, a sufficiently distant transmitter on an overlapping channel can have little to no significant effect.

Confusion often arises over the amount of channel separation required between transmitting devices. 802.11b was based on direct-sequence spread spectrum (DSSS) modulation and utilized a channel bandwidth of 22 MHz, resulting in _three_ "non-overlapping" channels (1, 6, and 11). 802.11g was based on OFDM modulation and utilized a channel bandwidth of 20 MHz. This occasionally leads to the belief that _four_ "non-overlapping" channels (1, 5, 9, and 13) exist under 802.11g, although this is not the case as per 17.4.6.3 Channel Numbering of operating channels of the IEEE Std 802.11 (2012), which states "In a multiple cell network topology, overlapping and/or adjacent cells using different channels can operate simultaneously without interference if the distance between the center frequencies is at least 25 MHz."[58] and section 18.3.9.3 and Figure 18-13.

This does not mean that the technical overlap of the channels recommends the non-use of overlapping channels. The amount of inter-channel interference seen on a configuration using channels 1, 5, 9, and 13 (which is permitted in Europe, but not in North America) is barely different from a three-channel configuration, but with an entire extra channel.[59][60]

NonOverlappingChannels2.4GHz802.11-en.svg

However, overlap between channels with more narrow spacing (e.g. 1, 4, 7, 11 in North America) may cause unacceptable degradation of signal quality and throughput, particularly when users transmit near the boundaries of AP cells.[61]

Regulatory domains and legal compliance

IEEE uses the phrase _regdomain_ to refer to a legal regulatory region. Different countries define different levels of allowable transmitter power, time that a channel can be occupied, and different available channels.[62] Domain codes are specified for the United States, Canada, ETSI (Europe), Spain, France, Japan, and China.

Most Wi-Fi certified devices default to _regdomain_ 0, which means least common denominator settings, i.e., the device will not transmit at a power above the allowable power in any nation, nor will it use frequencies that are not permitted in any nation.

The _regdomain_ setting is often made difficult or impossible to change so that the end users do not conflict with local regulatory agencies such as the United States' Federal Communications Commission.


Layer 2 – Datagrams

The datagrams are called _frames_. Current 802.11 standards specify frame types for use in transmission of data as well as management and control of wireless links.

Frames are divided into very specific and standardized sections. Each frame consists of a MAC HEADER, PAYLOAD, and FRAME CHECK SEQUENCE (FCS). Some frames may not have a payload.

802.11_frame.png The first two bytes of the MAC header form a frame control field specifying the form and function of the frame. This frame control field is subdivided into the following sub-fields:

-   PROTOCOL VERSION: Two bits representing the protocol version. Currently used protocol version is zero. Other values are reserved for future use.
-   TYPE: Two bits identifying the type of WLAN frame. Control, Data, and Management are various frame types defined in IEEE 802.11.
-   SUBTYPE: Four bits providing additional discrimination between frames. Type and Subtype are used together to identify the exact frame.
-   TODS and FROMDS: Each is one bit in size. They indicate whether a data frame is headed for a distribution system. Control and management frames set these values to zero. All the data frames will have one of these bits set. However communication within an independent basic service set (IBSS) network always set these bits to zero.
-   MORE FRAGMENTS: The More Fragments bit is set when a packet is divided into multiple frames for transmission. Every frame except the last frame of a packet will have this bit set.
-   RETRY: Sometimes frames require retransmission, and for this there is a Retry bit that is set to one when a frame is resent. This aids in the elimination of duplicate frames.
-   POWER MANAGEMENT: This bit indicates the power management state of the sender after the completion of a frame exchange. Access points are required to manage the connection, and will never set the power-saver bit.
-   MORE DATA: The More Data bit is used to buffer frames received in a distributed system. The access point uses this bit to facilitate stations in power-saver mode. It indicates that at least one frame is available, and addresses all stations connected.
-   PROTECTED FRAME: The Protected Frame bit is set to one if the frame body is encrypted by a protection mechanism such as Wired Equivalent Privacy (WEP), Wi-Fi Protected Access (WPA), or Wi-Fi Protected Access II (WPA2).
-   ORDER: This bit is set only when the "strict ordering" delivery method is employed. Frames and fragments are not always sent in order as it causes a transmission performance penalty.

The next two bytes are reserved for the Duration ID field. This field can take one of three forms: Duration, Contention-Free Period (CFP), and Association ID (AID).

An 802.11 frame can have up to four address fields. Each field can carry a MAC address. Address 1 is the receiver, Address 2 is the transmitter, Address 3 is used for filtering purposes by the receiver. Address 4 is only present in data frames transmitted between access points in an Extended Service Set or between intermediate nodes in a mesh network.

The remaining fields of the header are:

-   The Sequence Control field is a two-byte section used for identifying message order as well as eliminating duplicate frames. The first 4 bits are used for the fragmentation number, and the last 12 bits are the sequence number.
-   An optional two-byte Quality of Service control field, present in QoS Data frames; it was added with 802.11e.

The payload or frame body field is variable in size, from 0 to 2304 bytes plus any overhead from security encapsulation, and contains information from higher layers.

The Frame Check Sequence (FCS) is the last four bytes in the standard 802.11 frame. Often referred to as the Cyclic Redundancy Check (CRC), it allows for integrity check of retrieved frames. As frames are about to be sent, the FCS is calculated and appended. When a station receives a frame, it can calculate the FCS of the frame and compare it to the one received. If they match, it is assumed that the frame was not distorted during transmission.[63]

Management frames

Management frames are not always authenticated, and allow for the maintenance, or discontinuance, of communication. Some common 802.11 subtypes include:

-   Authentication frame: 802.11 authentication begins with the wireless network interface card (WNIC) sending an authentication frame to the access point containing its identity. With an open system authentication, the WNIC sends only a single authentication frame, and the access point responds with an authentication frame of its own indicating acceptance or rejection. With shared key authentication, after the WNIC sends its initial authentication request it will receive an authentication frame from the access point containing challenge text. The WNIC sends an authentication frame containing the encrypted version of the challenge text to the access point. The access point ensures the text was encrypted with the correct key by decrypting it with its own key. The result of this process determines the WNIC's authentication status.
-   Association request frame: Sent from a station it enables the access point to allocate resources and synchronize. The frame carries information about the WNIC, including supported data rates and the SSID of the network the station wishes to associate with. If the request is accepted, the access point reserves memory and establishes an association ID for the WNIC.
-   Association response frame: Sent from an access point to a station containing the acceptance or rejection to an association request. If it is an acceptance, the frame will contain information such an association ID and supported data rates.
-   Beacon frame: Sent periodically from an access point to announce its presence and provide the SSID, and other parameters for WNICs within range.
-   : Sent from a station wishing to terminate connection from another station.

-   Disassociation frame: Sent from a station wishing to terminate connection. It's an elegant way to allow the access point to relinquish memory allocation and remove the WNIC from the association table.
-   Probe request frame: Sent from a station when it requires information from another station.
-   Probe response frame: Sent from an access point containing capability information, supported data rates, etc., after receiving a probe request frame.
-   Reassociation request frame: A WNIC sends a reassociation request when it drops from range of the currently associated access point and finds another access point with a stronger signal. The new access point coordinates the forwarding of any information that may still be contained in the buffer of the previous access point.
-   Reassociation response frame: Sent from an access point containing the acceptance or rejection to a WNIC reassociation request frame. The frame includes information required for association such as the association ID and supported data rates.
-   Action frame: extending management frame to control certain action. Some of action categories are Block Ack, Radio Measurement, Fast BSS Transition, etc. These frames are sent by a station when it needs to tell its peer for certain action to be taken. For example, a station can tell another station to set up a block acknowledgement by sending an _ADDBA Request_ action frame. The other station would then respond with an _ADDBA Response_ action frame.

The body of a management frame consists of frame-subtype-dependent fixed fields followed by a sequence of information elements (IEs).

The common structure of an IE is as follows:

 ← 1  → ← 1  → ←  1-252   →
----------------------------
| Type |Length|    Data    |
----------------------------

Control frames

Control frames facilitate in the exchange of data frames between stations. Some common 802.11 control frames include:

-   Acknowledgement (ACK) frame: After receiving a data frame, the receiving station will send an ACK frame to the sending station if no errors are found. If the sending station doesn't receive an ACK frame within a predetermined period of time, the sending station will resend the frame.
-   Request to Send (RTS) frame: The RTS and CTS frames provide an optional collision reduction scheme for access points with hidden stations. A station sends a RTS frame as the first step in a two-way handshake required before sending data frames.
-   Clear to Send (CTS) frame: A station responds to an RTS frame with a CTS frame. It provides clearance for the requesting station to send a data frame. The CTS provides collision control management by including a time value for which all other stations are to hold off transmission while the requesting station transmits.

Data frames

Data frames carry packets from web pages, files, etc. within the body.[64] The body begins with an IEEE 802.2 header, with the Destination Service Access Point (DSAP) specifying the protocol, followed by a Subnetwork Access Protocol (SNAP) header if the DSAP is hex AA, with the organizationally unique identifier (OUI) and protocol ID (PID) fields specifying the protocol. If the OUI is all zeroes, the protocol ID field is an EtherType value.[65] Almost all 802.11 data frames use 802.2 and SNAP headers, and most use an OUI of 00:00:00 and an EtherType value.

Similar to TCP congestion control on the internet, frame loss is built into the operation of 802.11. To select the correct transmission speed or Modulation and Coding Scheme, a rate control algorithm may test different speeds. The actual packet loss rate of an Access points vary widely for different link conditions. There are variations in the loss rate experienced on production Access points, between 10% and 80%, with 30% being a common average.[66] It is important to be aware that the link layer should recover these lost frames. If the sender does not receive an Acknowledgement (ACK) frame, then it will be resent.


Standards and amendments

Within the IEEE 802.11 Working Group,[67] the following IEEE Standards Association Standard and Amendments exist:

-   IEEE 802.11-1997: The WLAN standard was originally 1 Mbit/s and 2 Mbit/s, 2.4 GHz RF and infrared (IR) standard (1997), all the others listed below are Amendments to this standard, except for Recommended Practices 802.11F and 802.11T.
-   IEEE 802.11a: 54 Mbit/s, 5 GHz standard (1999, shipping products in 2001)
-   IEEE 802.11b: Enhancements to 802.11 to support 5.5 Mbit/s and 11 Mbit/s (1999)
-   IEEE 802.11c: Bridge operation procedures; included in the IEEE 802.1D standard (2001)
-   IEEE 802.11d: International (country-to-country) roaming extensions (2001)
-   IEEE 802.11e: Enhancements: QoS, including packet bursting (2005)
-   IEEE 802.11F: Inter-Access Point Protocol (2003) _(Withdrawn\ February\ 2006)
-   IEEE 802.11g: 54 Mbit/s, 2.4 GHz standard (backwards compatible with b) (2003)
-   IEEE 802.11h: Spectrum Managed 802.11a (5 GHz) for European compatibility (2004)
-   IEEE 802.11i: Enhanced security (2004)
-   IEEE 802.11j: Extensions for Japan (4.9-5.0 GHz) (2004)
-   IEEE 802.11-2007: A new release of the standard that includes amendments a, b, d, e, g, h, i, and j. (July 2007)
-   IEEE 802.11k: Radio resource measurement enhancements (2008)
-   IEEE 802.11n: Higher-throughput improvements using MIMO (multiple-input, multiple-output antennas) (September 2009)
-   IEEE 802.11p: WAVE—Wireless Access for the Vehicular Environment (such as ambulances and passenger cars) (July 2010)
-   IEEE 802.11r: Fast BSS transition (FT) (2008)
-   IEEE 802.11s: Mesh Networking, Extended Service Set (ESS) (July 2011)
-   IEEE 802.11T: Wireless Performance Prediction (WPP)—test methods and metrics Recommendation _(cancelled)
-   IEEE 802.11u: Improvements related to HotSpots and 3rd-party authorization of clients, e.g., cellular network offload (February 2011)
-   IEEE 802.11v: Wireless network management (February 2011)
-   IEEE 802.11w: Protected Management Frames (September 2009)
-   IEEE 802.11y: 3650–3700 MHz Operation in the U.S. (2008)
-   IEEE : Extensions to Direct Link Setup (DLS) (September 2010)
-   IEEE 802.11-2012: A new release of the standard that includes amendments k, n, p, r, s, u, v, w, y, and z (March 2012)
-   IEEE 802.11aa: Robust streaming of Audio Video Transport Streams (June 2012)
-   IEEE 802.11ac: Very High Throughput <6 GHz;[68] potential improvements over 802.11n: better modulation scheme (expected ~10% throughput increase), wider channels (estimate in future time 80 to 160 MHz), multi user MIMO;[69] (December 2013)
-   IEEE 802.11ad: Very High Throughput 60 GHz (December 2012) — see WiGig
-   IEEE 802.11ae: Prioritization of Management Frames (March 2012)
-   IEEE 802.11af: TV Whitespace (February 2014)
-   IEEE 802.11-2016: A new release of the standard that includes amendments ae, aa, ad, ac, and af (December 2016)
-   IEEE 802.11ah: Sub-1 GHz license exempt operation (e.g., sensor network, smart metering) (December 2016)
-   IEEE 802.11ai: Fast Initial Link Setup (December 2016)
-   IEEE 802.11aj: China Millimeter Wave (February 2018)
-   IEEE 802.11ak: General Links (June 2018)
-   IEEE 802.11aq: Pre-association Discovery (July 2018)

In process

-   IEEE 802.11ax: High Efficiency WLAN _(~ December 2019 for RevCom submittal)_[70]
-   IEEE 802.11ay: Enhancements for Ultra High Throughput in and around the 60 GHz Band _(~ November 2019 for final EC approval)_[71]
-   IEEE 802.11az: Next Generation Positioning _(~ March 2021 for .11az final)_[72]
-   IEEE 802.11ba: Wake Up Radio _(~ July 2020 for RevCom submittal)_[73]
-   IEEE 802.11bb: Light Communications[74]
-   P802.11REVmd: A new release of the standard that includes previous amendments.[75]

802.11F and 802.11T are recommended practices rather than standards, and are capitalized as such.

802.11m is used for standard maintenance. 802.11ma was completed for 802.11-2007, 802.11mb for 802.11-2012, and 802.11mc for 802.11-2016.

Standard vs. amendment

Both the terms "standard" and "amendment" are used when referring to the different variants of IEEE standards.[76]

As far as the IEEE Standards Association is concerned, there is only one current standard; it is denoted by IEEE 802.11 followed by the date that it was published. IEEE 802.11-2016 is the only version currently in publication, superseding previous releases. The standard is updated by means of amendments. Amendments are created by task groups (TG). Both the task group and their finished document are denoted by 802.11 followed by a non-capitalized letter, for example, IEEE 802.11a and IEEE 802.11b. Updating 802.11 is the responsibility of task group m. In order to create a new version, TGm combines the previous version of the standard and all published amendments. TGm also provides clarification and interpretation to industry on published documents. New versions of the IEEE 802.11 were published in 1999, 2007, 2012, and 2016.[77]


Nomenclature

Various terms in 802.11 are used to specify aspects of wireless local-area networking operation, and may be unfamiliar to some readers.

For example, Time Unit (usually abbreviated TU) is used to indicate a unit of time equal to 1024 microseconds. Numerous time constants are defined in terms of TU (rather than the nearly equal millisecond).

Also the term "Portal" is used to describe an entity that is similar to an 802.1H bridge. A Portal provides access to the WLAN by non-802.11 LAN STAs.


Security

In 2001, a group from the University of California, Berkeley presented a paper describing weaknesses in the 802.11 Wired Equivalent Privacy (WEP) security mechanism defined in the original standard; they were followed by Fluhrer, Mantin, and Shamir's paper titled "Weaknesses in the Key Scheduling Algorithm of RC4". Not long after, Adam Stubblefield and AT&T publicly announced the first verification of the attack. In the attack, they were able to intercept transmissions and gain unauthorized access to wireless networks.

The IEEE set up a dedicated task group to create a replacement security solution, 802.11i (previously this work was handled as part of a broader 802.11e effort to enhance the MAC layer). The Wi-Fi Alliance announced an interim specification called Wi-Fi Protected Access (WPA) based on a subset of the then current IEEE 802.11i draft. These started to appear in products in mid-2003. IEEE 802.11i (also known as WPA2) itself was ratified in June 2004, and uses the Advanced Encryption Standard AES, instead of RC4, which was used in WEP. The modern recommended encryption for the home/consumer space is WPA2 (AES Pre-Shared Key), and for the enterprise space is WPA2 along with a RADIUS authentication server (or another type of authentication server) and a strong authentication method such as EAP-TLS.

In January 2005, the IEEE set up yet another task group "w" to protect management and broadcast frames, which previously were sent unsecured. Its standard was published in 2009.[78]

In December 2011, a security flaw was revealed that affects some wireless routers with a specific implementation of the optional Wi-Fi Protected Setup (WPS) feature. While WPS is not a part of 802.11, the flaw allows an attacker within the range of the wireless router to recover the WPS PIN and, with it, the router's 802.11i password in a few hours.[79][80]

In late 2014, Apple announced that its iOS 8 mobile operating system would scramble MAC addresses[81] during the pre-association stage to thwart retail footfall tracking made possible by the regular transmission of uniquely identifiable probe requests.


Non-standard 802.11 extensions and equipment

Many companies implement wireless networking equipment with non-IEEE standard 802.11 extensions either by implementing proprietary or draft features. These changes may lead to incompatibilities between these extensions.


See also

-   802.11 Frame Types
-   Comparison of wireless data standards
-   Fujitsu Ltd. v. Netgear Inc.
-   Gi-Fi, a term used by some trade press to refer to faster versions of the IEEE 802.11 standards
-   LTE-WLAN Aggregation
-   OFDM system comparison table
-   TU (time unit)
-   TV White Space Database
-   Ultra-wideband
-   White spaces (radio)
-   Wi-Fi operating system support
-   Wibree or Bluetooth low energy
-   WiGig
-   Wireless USB – another wireless protocol primarily designed for shorter-range applications


Footnotes


References

-   -   -   -


External links

-   IEEE 802.11 working group
-   Official timelines of 802.11 standards from IEEE
-   List of all Wi-Fi Chipset Vendors – Including historical timeline of mergers and acquisitions

* Category:Computer-related introductions in 1997 Category:Wireless networking standards Category:Local area networks

[1]

[2]

[3]  Wi-Fi Alliance|website=www.wi-fi.org|access-date=2019-05-02}}

[4]

[5]

[6] Wolter Lemstra , Vic Hayes , John Groenewegen ,'' The Innovation Journey of Wi-Fi: The Road To Global Success'', Cambridge University Press, 2010,

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]  page 14

[16] IEEE 802.11-2007

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

[35]

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

[62] IEEE Standard 802.11-2007 page 531

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

[80] US CERT Vulnerability Note VU#723755

[81]