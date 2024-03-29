INTEGRATED SERVICES DIGITAL NETWORK (ISDN) is a set of communication standards for simultaneous digital transmission of voice, video, data, and other network services over the traditional circuits of the public switched telephone network. It was first defined in 1988 in the CCITT red book.[1] Prior to ISDN, the telephone system was viewed as a way to transport voice, with some special services available for data. The key feature of ISDN is that it integrates speech and data on the same lines, adding features that were not available in the classic telephone system. The ISDN standards define several kinds of access interfaces, such as Basic Rate Interface (BRI), Primary Rate Interface (PRI), Narrowband ISDN (N-ISDN), and Broadband ISDN (B-ISDN).

ISDN is a circuit-switched telephone network system, which also provides access to packet switched networks, designed to allow digital transmission of voice and data over ordinary telephone copper wires, resulting in potentially better voice quality than an analog phone can provide. It offers circuit-switched connections (for either voice or data), and packet-switched connections (for data), in increments of 64 kilobit/s. In some countries, ISDN found major market application for Internet access, in which ISDN typically provides a maximum of 128 kbit/s bandwidth in both upstream and downstream directions. Channel bonding can achieve a greater data rate; typically the ISDN B-channels of three or four BRIs (six to eight 64 kbit/s channels) are bonded.

ISDN is employed as the network, data-link and physical layers in the context of the OSI model. In common use, ISDN is often limited to usage to Q.931 and related protocols, which are a set of signaling protocols establishing and breaking circuit-switched connections, and for advanced calling features for the user. They were introduced in 1986.[2]

In a videoconference, ISDN provides simultaneous voice, video, and text transmission between individual desktop videoconferencing systems and group (room) videoconferencing systems.


ISDN elements

_Integrated services_ refers to ISDN's ability to deliver at minimum two simultaneous connections, in any combination of data, voice, video, and fax, over a single line. Multiple devices can be attached to the line, and used as needed. That means an ISDN line can take care of what were expected to be most people's complete communications needs (apart from broadband Internet access and entertainment television) at a much higher transmission rate, without forcing the purchase of multiple analog phone lines. It also refers to integrated switching and transmission[3] in that telephone switching and carrier wave transmission are integrated rather than separate as in earlier technology.


Basic Rate Interface

The entry level interface to ISDN is the Basic Rate Interface (BRI), a 128 kbit/s service delivered over a pair of standard telephone copper wires.[4] The 144 kbit/s overall payload rate is divided into two 64 kbit/s bearer channels ('B' channels) and one 16 kbit/s signaling channel ('D' channel or data channel). This is sometimes referred to as 2B+D.[5]

The interface specifies the following network interfaces:

-   The _U interface_ is a two-wire interface between the exchange and a _network terminating unit_, which is usually the demarcation point in non-North American networks.
-   The _T interface_ is a serial interface between a computing device and a _terminal adapter_, which is the digital equivalent of a modem.
-   The _S interface_ is a four-wire bus that ISDN consumer devices plug into; the S & T reference points are commonly implemented as a single interface labeled 'S/T' on a Network termination 1 (NT1).
-   The _R interface_ defines the point between a non-ISDN device and a terminal adapter (TA) which provides translation to and from such a device.

BRI-ISDN is very popular in Europe but is much less common in North America. It is also common in Japan — where it is known as INS64.[6][7]


Primary Rate Interface

The other ISDN access available is the Primary Rate Interface (PRI), which is carried over T-carrier (T1) with 24 time slots (channels) in North America, and over E-carrier (E1) with 32 channels in most other countries. Each channel provides transmission at a 64 kbit/s data rate.

With the E1 carrier, the available channels are divided into 30 bearer (_B_) channels, one data (_D_) channel, and one timing and alarm channel. This scheme is often referred to as 30B+2D.[8]

In North America, PRI service is delivered via T1 carriers with only one data channel, often referred to as 23B+D, and a total data rate of 1544 kbit/s. Non-Facility Associated Signalling (NFAS) allows two or more PRI circuits to be controlled by a single D channel, which is sometimes called _23B+D + n*24B_. D-channel backup allows for a second D channel in case the primary fails. NFAS is commonly used on a Digital Signal 3 (DS3/T3).

PRI-ISDN is popular throughout the world, especially for connecting private branch exchanges to the public switched telephone network (PSTN).

Even though many network professionals use the term _ISDN_ to refer to the lower-bandwidth BRI circuit, in North America BRI is relatively uncommon whilst PRI circuits serving PBXs are commonplace.


Bearer channel

The bearer channel (B) is a standard 64 kbit/s voice channel of 8 bits sampled at 8 kHz with G.711 encoding. B-channels can also be used to carry data, since they are nothing more than digital channels.

Each one of these channels is known as a DS0.

Most B channels can carry a 64kbit/s signal, but some were limited to 56K because they traveled over RBS lines. This was commonplace in the 20th century, but has since become less so.


X.25

X.25 can be carried over the B or D channels of a BRI line, and over the B channels of a PRI line. X.25 over the D channel is used at many point-of-sale (credit card) terminals because it eliminates the modem setup, and because it connects to the central system over a B channel, thereby eliminating the need for modems and making much better use of the central system's telephone lines.

X.25 was also part of an ISDN protocol called "Always On/Dynamic ISDN", or AO/DI. This allowed a user to have a constant multi-link PPP connection to the internet over X.25 on the D channel, and brought up one or two B channels as needed.


Frame Relay

In theory, Frame Relay can operate over the D channel of BRIs and PRIs, but it is seldom, if ever, used.


Consumer and industry perspectives

There is a second viewpoint: that of the telephone industry, where ISDN is a core technology. A telephone network can be thought of as a collection of wires strung between switching systems. The common electrical specification for the signals on these wires is T1 or E1. Between telephone company switches, the signaling is performed via SS7. Normally, a PBX is connected via a T1 with robbed bit signaling to indicate on-hook or off-hook conditions and MF and DTMF tones to encode the destination number. ISDN is much better because messages can be sent much more quickly than by trying to encode numbers as long (100 ms per digit) tone sequences. This results in faster call setup times. Also, a greater number of features are available and fraud is reduced.

ISDN is also used as a smart-network technology intended to add new services to the public switched telephone network (PSTN) by giving users direct access to end-to-end circuit-switched digital services and as a backup or failsafe circuit solution for critical use data circuits.

ISDN and broadcast industry

ISDN is used heavily by the broadcast industry as a reliable way of switching low-latency, high-quality, long-distance audio circuits. In conjunction with an appropriate codec using MPEG or various manufacturers' proprietary algorithms, an ISDN BRI can be used to send stereo bi-directional audio coded at 128 kbit/s with 20 Hz – 20 kHz audio bandwidth, although commonly the G.722 algorithm is used with a single 64 kbit/s B channel to send much lower latency mono audio at the expense of audio quality. Where very high quality audio is required multiple ISDN BRIs can be used in parallel to provide a higher bandwidth circuit switched connection. BBC Radio 3 commonly makes use of three ISDN BRIs to carry 320 kbit/s audio stream for live outside broadcasts. ISDN BRI services are used to link remote studios, sports grounds and outside broadcasts into the main broadcast studio. ISDN via satellite is used by field reporters around the world. It is also common to use ISDN for the return audio links to remote satellite broadcast vehicles.

In many countries, such as the UK and Australia, ISDN has displaced the older technology of equalised analogue landlines, with these circuits being phased out by telecommunications providers. Use of IP-based streaming codecs such as Comrex ACCESS and ipDTL is becoming more widespread in the broadcast sector, using broadband internet to connect remote studios.[9]

Global usage

United States and Canada

ISDN-BRI never gained popularity as a general use telephone access technology in Canada and the US, and remains a niche product. The service was seen as _a solution in search of a problem_,[10] and the extensive array of options and features were difficult for customers to understand and use. ISDN has long been known by derogatory backronyms highlighting these issues, such as _It Still Does Nothing, Innovations Subscribers Don't Need,_ and _I Still Don't kNow._[11][12]

Once the concept of "broadband Internet access" came to be associated with data rates incoming to the customer at 256 kbit/s or more, and alternatives like ADSL grew in popularity, the consumer market for BRI did not develop. Its only remaining advantage is that, while ADSL has a functional distance limitation and can use ADSL loop extenders, BRI has a greater limit and can use repeaters. As such, BRI may be acceptable for customers who are too remote for ADSL. Widespread use of BRI is further stymied by some small North American CLECs such as CenturyTel having given up on it and not providing Internet access using it.[13] However, AT&T in most states (especially the former SBC/SWB territory) will still install an ISDN BRI line anywhere a normal analog line can be placed and the monthly charge is roughly $55.

ISDN-BRI is currently primarily used in industries with specialized and very specific needs. High-end videoconferencing hardware made by companies such as Sony, Polycom, Tandberg, and LifeSize via the LifeSize Networker[14] can bond up to 8 B-channels together (using a BRI circuit for every 2 channels) to provide digital, circuit-switched video connections to almost anywhere in the world. This is very expensive, and is being replaced by IP-based conferencing, but where cost concern is less of an issue than predictable quality and where a QoS-enabled IP does not exist, BRI is the preferred choice.

Most modern non-VoIP PBXs use ISDN-PRI circuits. These are connected via T1 lines with the central office switch, replacing older analog two-way and direct inward dialing (DID) trunks. PRI is capable of delivering Calling Line Identification (CLID) in both directions so that the telephone number of an extension, rather than a company's main number, can be sent. It is still commonly used in recording studios, when a voice-over actor is in one studio (possibly telecommuting from home), but the director and producer are in a studio at another location.[15] The ISDN protocol delivers channelized, not-over-the-Internet service, powerful call setup and routing features, faster setup and tear down, superior audio fidelity as compared to POTS (plain old telephone service), lower delay and, at higher densities, lower cost.

In 2013, Verizon announced it would no longer take orders for ISDN service in the Northeastern United States.[16]

Australia

Telstra provides the business customer with the ISDN services. There are five types of ISDN services which are ISDN2, ISDN2 Enhanced, ISDN10, ISDN20 and ISDN30. Telstra changed the minimum monthly charge for voice and data calls. In general, there are two group of ISDN service types; The Basic Rate services – ISDN 2 or ISDN 2 Enhanced. Another group of types are the Primary Rate services, ISDN 10/20/30 [17]. Telstra announced that the new sales of ISDN product would be unavailable as of 31 January 2018. The final exit date of ISDN service and migration to the new service would be confirmed by 2022. [18]

India

Bharat Sanchar Nigam Limited, Reliance Communications and Bharti Airtel are the largest communication service providers, and offer both ISDN BRI and PRI services across the country. Reliance Communications and Bharti Airtel uses the DLC technology for providing these services. With the introduction of broadband technology, the load on bandwidth is being absorbed by ADSL. ISDN continues to be an important backup network for point-to-point leased line customers such as banks, Eseva Centers,[19] Life Insurance Corporation of India, and SBI ATMs.

Japan

On April 19, 1988, Japanese telecommunications company NTT began offering nationwide ISDN services trademarked INS Net 64, and INS Net 1500, a fruition of NTT's independent research and trial from the 1970s of what it referred to the INS (Information Network System).[20]

Previously, in April 1985, Japanese digital telephone exchange hardware made by Fujitsu was used to experimentally deploy the world's first I interface ISDN. The I interface, unlike the older and incompatible Y interface, is what modern ISDN services use today.

Since 2000, NTT's ISDN offering have been known as FLET's ISDN, incorporating the "FLET's" brand that NTT uses for all of its ISP offerings.

In Japan, the number of ISDN subscribers dwindled as alternative technologies such as ADSL, cable Internet access, and fiber to the home gained greater popularity. On November 2, 2010, NTT announced plans to migrate their backend from PSTN to the IP network from around 2020 to around 2025. For this migration, ISDN services will be retired, and fiber optic services are recommended as an alternative.[21]

United Kingdom

In the United Kingdom, British Telecom (BT) provides ISDN2e (BRI) as well as ISDN30 (PRI). Until April 2006, they also offered services named Home Highway and Business Highway, which were BRI ISDN-based services that offered integrated analogue connectivity as well as ISDN. Later versions of the Highway products also included built-in USB sockets for direct computer access. Home Highway was bought by many home users, usually for Internet connection, although not as fast as ADSL, because it was available before ADSL and in places where ADSL does not reach.

In early 2015, BT announced their intention to retire the UK's ISDN infrastructure by 2025.[22]

France

France Telecom offers ISDN services under their product name Numeris (2 B+D), of which a professional Duo and home Itoo version is available. ISDN is generally known as RNIS in France and has widespread availability. The introduction of ADSL is reducing ISDN use for data transfer and Internet access, although it is still common in more rural and outlying areas, and for applications such as business voice and point-of-sale terminals.

Germany

In Germany, ISDN was very popular with an installed base of 25 million channels (29% of all subscriber lines in Germany as of 2003 and 20% of all ISDN channels worldwide). Due to the success of ISDN, the number of installed analog lines was decreasing. Deutsche Telekom (DTAG) offered both BRI and PRI. Competing phone companies often offered ISDN only and no analog lines. However, these operators generally offered free hardware that also allows the use of POTS equipment, such as NTBAs with integrated terminal adapters. Because of the widespread availability of ADSL services, ISDN was primarily used for voice and fax traffic.

Until 2007 ISDN (BRI) and ADSL/VDSL were often bundled on the same line, mainly because the combination of DSL with an analog line had no cost advantage over a combined ISDN-DSL line. This practice turned into an issue for the operators when vendors of ISDN technology stopped manufacturing it and spare parts became hard to come by. Since then phone companies started introducing cheaper xDSL-only products using VoIP for telephony,[23] also in an effort to reduce their costs by operating separate data & voice networks.

Since approximately 2010, most german operators are offering more and more VoIP on top of DSL lines and ceased offering ISDN lines. As from 2018 on, new ISDN lines are not available anymore in Germany, existing ISDN lines are phased out from 2016 onwards and existing customers are encouraged to move to DSL-based VoIP products. Deutsche Telekom expected to complete this phase-out by 2018[24] but postponed the date to 2020, other provides like Vodafone estimate to have their phase-out completed by 2022.

Greece

OTE, the incumbent telecommunications operator, offers ISDN BRI (BRA) services in Greece. Following the launch of ADSL in 2003, the importance of ISDN for data transfer began to decrease and is today limited to niche business applications with point-to-point requirements.

International deployment

A study[25] of the German Department of Science shows the following spread of ISDN-channels per 1,000 inhabitants in the year 2005:

-   Norway 401
-   Denmark 339
-   Germany 333
-   Switzerland 331
-   Japan 240
-   United Kingdom 160
-   Finland 160
-   Sweden 135
-   Italy 105
-   France 85
-   Spain 58
-   United States 47


Configurations

In ISDN, there are two types of channels, _B_ (for "bearer") and _D_ (for "data"). _B channels_ are used for data (which may include voice), and _D channels_ are intended for signaling and control (but can also be used for data).

There are two ISDN implementations. Basic Rate Interface (BRI), also called basic rate access (BRA) — consists of two B channels, each with bandwidth of 64 kbit/s, and one D channel with a bandwidth of 16 kbit/s. Together these three channels can be designated as 2B+D. Primary Rate Interface (PRI), also called primary rate access (PRA) in Europe — contains a greater number of B channels and a D channel with a bandwidth of 64 kbit/s. The number of B channels for PRI varies according to the nation: in North America and Japan it is 23B+1D, with an aggregate bit rate of 1.544 Mbit/s (T1); in Europe, India and Australia it is 30B+2D, with an aggregate bit rate of 2.048 Mbit/s (E1). Broadband Integrated Services Digital Network (BISDN) is another ISDN implementation and it is able to manage different types of services at the same time. It is primarily used within network backbones and employs ATM.

Another alternative ISDN configuration can be used in which the B channels of an ISDN BRI line are bonded to provide a total duplex bandwidth of 128 kbit/s. This precludes use of the line for voice calls while the internet connection is in use. The B channels of several BRIs can be bonded, a typical use is a 384K videoconferencing channel.

Using bipolar with eight-zero substitution encoding technique, call data is transmitted over the data (B) channels, with the signaling (D) channels used for call setup and management. Once a call is set up, there is a simple 64 kbit/s synchronous bidirectional data channel (actually implemented as two simplex channels, one in each direction) between the end parties, lasting until the call is terminated. There can be as many calls as there are bearer channels, to the same or different end-points. Bearer channels may also be multiplexed into what may be considered single, higher-bandwidth channels via a process called B channel BONDING, or via use of Multi-Link PPP "bundling" or by using an H0, H11, or H12 channel on a PRI.

The D channel can also be used for sending and receiving X.25 data packets, and connection to X.25 packet network, this is specified in X.31. In practice, X.31 was only commercially implemented in the UK, France, Japan and Germany.


Reference points

A set of _reference points_ are defined in the ISDN standard to refer to certain points between the telco and the end user ISDN equipment.

-   R – defines the point between a non-ISDN terminal equipment 2 (TE2) device and a _terminal adapter_ (TA) which provides translation to and from such a device
-   S – defines the point between the ISDN terminal equipment 1 (TE1) or TA and a _Network Termination Type 2_ (NT2) device
-   T – defines the point between the NT2 and network termination 1 (NT1) devices.

Most NT-1 devices can perform the functions of the NT2 as well, and so the S and T reference points are generally collapsed into the S/T reference point.

In North America, the NT1 device is considered customer premises equipment (CPE) and must be maintained by the customer, thus, the U interface is provided to the customer. In other locations, the NT1 device is maintained by the telco, and the S/T interface is provided to the customer. In India, service providers provide U interface and an NT1 may be supplied by Service provider as part of service offering.


Types of communications

Among the kinds of data that can be moved over the 64 kbit/s channels are pulse-code modulated voice calls, providing access to the traditional voice PSTN. This information can be passed between the network and the user end-point at call set-up time. In North America, ISDN is now used mostly as an alternative to analog connections, most commonly for Internet access. Some of the services envisioned as being delivered over ISDN are now delivered over the Internet instead. In Europe, and in Germany in particular, ISDN has been successfully marketed as a phone with features, as opposed to a POTS phone with few or no features. Meanwhile, features that were first available with ISDN (such as Three-Way Calling, Call Forwarding, Caller ID, etc.) are now commonly available for ordinary analog phones as well, eliminating this advantage of ISDN. Another advantage of ISDN was the possibility of multiple simultaneous calls (one call per B channel), e.g. for big families, but with the increased popularity and reduced prices of mobile telephony this has become less interesting as well, making ISDN unappealing to the private customer. However, ISDN is typically more reliable than POTS, and has a significantly faster call setup time compared with POTS, and IP connections over ISDN typically have some 30–35ms round trip time, as opposed to 120–180ms (both measured with otherwise unused lines) over 56k or V.34/V.92 modems, making ISDN more reliable and more efficient for telecommuters.

Where an analog connection requires a modem, an ISDN connection requires a terminal adapter (TA). The function of an ISDN terminal adapter is often delivered in the form of a PC card with an S/T interface, and single-chip solutions seem to exist, considering the plethora of combined ISDN- and ADSL-routers.

ISDN is commonly used in radio broadcasting. Since ISDN provides a high quality connection this assists in delivering good quality audio for transmission in radio. Most radio studios are equipped with ISDN lines as their main form of communication with other studios or standard phone lines. Equipment made by companies such as Telos/Omnia (the popular Zephyr codec), Comrex, Tieline and others are used regularly by radio broadcasters. Almost all live sports broadcasts on radio are backhauled to their main studios via ISDN connections.


Sample call

The following is an example of a Primary Rate (PRI) ISDN call showing the Q.921/LAPD and the Q.931/Network message intermixed (i.e. exactly what was exchanged on the D-channel). The call is originating from the switch where the trace was taken and goes out to some other switch, possibly an end-office LEC, who terminates the call.

The first line format is . If the message is an ISDN level message, then a decoding of the message is attempted showing the various Information Elements that make up the message. All ISDN messages are tagged with an ID number relative to the switch that started the call (local/remote). Following this optional decoding is a dump of the bytes of the message in ... ... format.

The RR messages at the beginning prior to the call are the keep alive messages. SETUP message indicate the start of the call. Each message is acknowledged by the other side with a RR.

    10:49:47.33  21/1/24  R  RR
    0000  02 01 01 a5                                          ....

    10:49:47.34  21/1/24  T  RR
    0000  02 01 01 b9                                          ....

    10:50:17.57  21/1/24  R  RR
    0000  02 01 01 a5                                          ....

    10:50:17.58  21/1/24  T  RR
    0000  02 01 01 b9                                          ....

    10:50:24.37  21/1/24  T  SETUP
        Call Reference       : 000062-local
        Bearer Capability    : CCITT, Speech, Circuit mode, 64 kbit/s
        Channel ID           : Implicit Interface ID implies current span, 21/1/5, Exclusive
        Calling Party Number : 8018023000 National number  User-provided, not screened  Presentation allowed
        Called Party Number  : 3739120 Type: SUBSCRB
    0000  00 01 a4 b8  08 02 00 3e  05 04 03 80  90 a2 18 03   .......>........
    0010  a9 83 85 6c  0c 21 80 38  30 31 38 30  32 33 30 30   ...l.!.801802300
    0020  30 70 08 c1  33 37 33 39  31 32 30                   0p..3739120

    10:50:24.37  21/1/24  R  RR
    0000  00 01 01 a6                                          ....

    10:50:24.77  21/1/24  R  CALL PROCEEDING
        Call Reference       : 000062-local
        Channel ID           : Implicit Interface ID implies current span, 21/1/5, Exclusive
    0000  02 01 b8 a6  08 02 80 3e  02 18 03 a9  83 85         .......>......

    10:50:24.77  21/1/24  T  RR
    0000  02 01 01 ba                                          ....

    10:50:25.02  21/1/24  R  ALERTING
        Call Reference       : 000062-local
        Progress Indicator   : CCITT, Public network serving local user,
    In-band information or an appropriate pattern is now available
    0000  02 01 ba a6  08 02 80 3e  01 1e 02 82  88            .......>.....

    10:50:25.02  21/1/24  T  RR
    0000  02 01 01 bc                                          ....

    10:50:28.43  21/1/24  R  CONNECT
        Call Reference       : 000062-local
    0000  02 01 bc a6  08 02 80 3e  07                         .......>.

    10:50:28.43  21/1/24  T  RR
    0000  02 01 01 be                                          ....

    10:50:28.43  21/1/24  T  CONNECT_ACK
        Call Reference       : 000062-local
    0000  00 01 a6 be  08 02 00 3e  0f                         .......>.

    10:50:28.44  21/1/24  R  RR
    0000  00 01 01 a8                                          ....

    10:50:35.69  21/1/24  T  DISCONNECT
        Call Reference       : 000062-local
        Cause                : 16, Normal call clearing.
    0000  00 01 a8 be  08 02 00 3e  45 08 02 8a  90            .......>E....

    10:50:35.70  21/1/24  R  RR
    0000  00 01 01 aa                                          ....

    10:50:36.98  21/1/24  R  RELEASE
        Call Reference       : 000062-local
    0000  02 01 be aa  08 02 80 3e  4d                         .......>M

    10:50:36.98  21/1/24  T  RR
    0000  02 01 01 c0                                          ....

    10:50:36.99  21/1/24  T  RELEASE COMPLETE
        Call Reference       : 000062-local
    0000  00 01 aa c0  08 02 00 3e  5a                         .......>Z

    10:50:36.00  21/1/24  R  RR
    0000  00 01 01 ac                                          ....

    10:51:06.10  21/1/24  R  RR
    0000  02 01 01 ad                                          ....

    10:51:06.10  21/1/24  T  RR
    0000  02 01 01 c1                                          ....

    10:51:36.37  21/1/24  R  RR
    0000  02 01 01 ad                                          ....

    10:51:36.37  21/1/24  T  RR
    0000  02 01 01 c1                                          ....


See also

Protocols

-   ISDN User Part (ISUP)
-   DSS1 (ETSI "Euro-ISDN", also used in many non-European countries)
-   DSS2 (Digital Subscriber Signalling System No. 2)
-   ETS 300 specification at ETSI

-   NI-1 (US National ISDN Phase 1)
-   NI-2 (US National ISDN Phase 2)
-   4ESS (Lucent 4ESS specific protocol defined in AT&T TR 41459)

-   INS-NET 64/1500 (Japanese national/NTT carrier-specific protocol)
-   DACS used in the UK by British Telecom it uses non standard D channel signalling for pair gain

-   QSIG
-   Remote Operations Service Element protocol (ROSE)
-   Q.931

-   FTZ 1 TR 6 (obsolete German national protocol)
-   TS.013/TS.014 (obsolete Australian national protocol)
-   VN2/VN3/VN4 (obsolete French national protocols)

Specifications defining the physical layer and part of the data link layers of ISDN:

-   ISDN BRI: ITU-T I.430.
-   ISDN PRI: ITU-T I.431.

From the point of view of the OSI architecture, an ISDN line has a stack of three protocols

-   physical layer
-   data link layer
-   network layer (the ISDN protocol, properly)

Other

-   CAPI
-   ADSL
-   ATM
-   B-ISDN
-   Internet
-   IpDTL
-   H.320
-   ETSI
-   List of device bandwidths


Notes


References


External links

-   .

-   .

-   .

-   .

Integrated_Services_Digital_Network Category:Audio network protocols Category:ITU-T recommendations Category:Network access Category:Telephony Category:Videotelephony Category:1986 introductions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] .

[11]

[12]

[13] .

[14] .

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

[25] .