BLUETOOTH is a wireless technology standard for exchanging data between fixed and mobile devices over short distances using short-wavelength UHF radio waves in the industrial, scientific and medical radio bands, from 2.400 to 2.485GHz, and building personal area networks (PANs). It was originally conceived as a wireless alternative to RS-232 data cables.

Bluetooth is managed by the Bluetooth Special Interest Group (SIG), which has more than 30,000 member companies in the areas of telecommunication, computing, networking, and consumer electronics. The IEEE standardized Bluetooth as IEEE 802.15.1, but no longer maintains the standard. The Bluetooth SIG oversees development of the specification, manages the qualification program, and protects the trademarks.[1] A manufacturer must meet Bluetooth SIG standards to market it as a Bluetooth device.[2] A network of patents apply to the technology, which are licensed to individual qualifying devices.


History

The development of the "short-link" radio technology, later named Bluetooth, was initiated in 1989 by Nils Rydbeck, CTO at Ericsson Mobile in Lund, Sweden and by Johan Ullman. The purpose was to develop wireless headsets, according to two inventions by Johan Ullman, {{ cite patent |country=SE |number=8902098-6 |gdate=1989-06-12 }} and {{ cite patent |country=SE |number=9202239 |gdate=1992-07-24 }}. Nils Rydbeck tasked Tord Wingren with specifying and Jaap Haartsen and Sven Mattisson with developing. Both were working for Ericsson in Lund.[3] Invented by Dutch electrical engineer Jaap Haartsen, working for telecommunications company Ericsson in 1994.[4] The first consumer Bluetooth device launched in 1999. It was a hand free mobile headset which earned the "Best of show Technology Award" at COMDEX. The first Bluetooth mobile phone was the Ericsson T36 but it was the revised T39 model which actually made it to store shelves in 2001.


Name and logo

The name _Bluetooth_ is an Anglicised version of the Scandinavian _Blåtand_/_Blåtann_ (Old Norse _blátǫnn_), the epithet of the tenth-century king Harald Bluetooth who united dissonant Danish tribes into a single kingdom. The implication is that Bluetooth unites communication protocols.[5]

The idea of this name was proposed in 1997 by Jim Kardach of Intel who developed a system that would allow mobile phones to communicate with computers.[6] At the time of this proposal he was reading Frans G. Bengtsson's historical novel _The Long Ships_ about Vikings and King Harald Bluetooth.[7][8]

Logo

The Bluetooth logo Bluetooth.svg is a bind rune merging the Younger Futhark runes Runic_letter_ior.svg (ᚼ, Hagall) and Runic_letter_berkanan.svg (ᛒ, Bjarkan), Harald's initials.[9][10]


Implementation

Bluetooth operates at frequencies between 2402 and 2480MHz, or 2400 and 2483.5MHz including guard bands 2MHz wide at the bottom end and 3.5MHz wide at the top.[11] This is in the globally unlicensed (but not unregulated) industrial, scientific and medical (ISM) 2.4GHz short-range radio frequency band. Bluetooth uses a radio technology called frequency-hopping spread spectrum. Bluetooth divides transmitted data into packets, and transmits each packet on one of 79 designated Bluetooth channels. Each channel has a bandwidth of 1MHz. It usually performs 1600hops per second, with adaptive frequency-hopping (AFH) enabled.[12] Bluetooth Low Energy uses 2MHz spacing, which accommodates 40 channels.[13]

Originally, Gaussian frequency-shift keying (GFSK) modulation was the only modulation scheme available. Since the introduction of Bluetooth 2.0+EDR, π/4-DQPSK (differential quadrature phase-shift keying) and 8-DPSK modulation may also be used between compatible devices. Devices functioning with GFSK are said to be operating in basic rate (BR) mode where an instantaneous bit rate of 1Mbit/s is possible. The term Enhanced Data Rate (EDR) is used to describe π/4-DPSK and 8-DPSK schemes, each giving 2 and 3Mbit/s respectively. The combination of these (BR and EDR) modes in Bluetooth radio technology is classified as a _BR/EDR radio_.

Bluetooth is a packet-based protocol with a master/slave architecture. One master may communicate with up to seven slaves in a piconet. All devices share the master's clock. Packet exchange is based on the basic clock, defined by the master, which ticks at 312.5µs intervals. Two clock ticks make up a slot of 625µs, and two slots make up a slot pair of 1250µs. In the simple case of single-slot packets, the master transmits in even slots and receives in odd slots. The slave, conversely, receives in even slots and transmits in odd slots. Packets may be 1, 3 or 5 slots long, but in all cases the master's transmission begins in even slots and the slave's in odd slots.

The above excludes Bluetooth Low Energy, introduced in the 4.0 specification, which uses the same spectrum but somewhat differently.

Communication and connection

A master BR/EDR Bluetooth device can communicate with a maximum of seven devices in a piconet (an ad-hoc computer network using Bluetooth technology), though not all devices reach this maximum. The devices can switch roles, by agreement, and the slave can become the master (for example, a headset initiating a connection to a phone necessarily begins as master—as an initiator of the connection—but may subsequently operate as the slave).

The Bluetooth Core Specification provides for the connection of two or more piconets to form a scatternet, in which certain devices simultaneously play the master role in one piconet and the slave role in another.

At any given time, data can be transferred between the master and one other device (except for the little-used broadcast mode). The master chooses which slave device to address; typically, it switches rapidly from one device to another in a round-robin fashion. Since it is the master that chooses which slave to address, whereas a slave is (in theory) supposed to listen in each receive slot, being a master is a lighter burden than being a slave. Being a master of seven slaves is possible; being a slave of more than one master is possible. The specification is vague as to required behavior in scatternets.[14]


Uses

+----------------------------+-----------------+-----------+
| Class                      | permitted power | range[15] |
|                            |                 | (m)       |
+============================+=================+===========+
| (mW)                       | (dBm)           |           |
+----------------------------+-----------------+-----------+
| 1                          | 100             | 20        |
+----------------------------+-----------------+-----------+
| 1.5                        | 10              | 10        |
| (BT 5 Vol 6 Part A Sect 3) |                 |           |
+----------------------------+-----------------+-----------+
| 2                          | 2.5             | 4         |
+----------------------------+-----------------+-----------+
| 3                          | 1               | 0         |
+----------------------------+-----------------+-----------+
| 4                          | 0.5             | −3        |
+----------------------------+-----------------+-----------+

: Ranges of Bluetooth devices by class

Bluetooth is a standard wire-replacement communications protocol primarily designed for low power consumption, with a short range based on low-cost transceiver microchips in each device.[16] Because the devices use a radio (broadcast) communications system, they do not have to be in visual line of sight of each other; however, a _quasi optical_ wireless path must be viable.[17] Range is power-class-dependent, but effective ranges vary in practice. See the table "Ranges of Bluetooth devices by class".

Officially Class 3 radios have a range of up to , Class 2, most commonly found in mobile devices, , and Class 1, primarily for industrial use cases,.[18] Bluetooth Marketing qualifies that Class 1 range is in most cases , and Class 2 range .[19] The actual range achieved by a given link will depend on the qualities of the devices at both ends of the link, as well as the air conditions in between, and other factors.

The effective range varies depending on propagation conditions, material coverage, production sample variations, antenna configurations and battery conditions. Most Bluetooth applications are for indoor conditions, where attenuation of walls and signal fading due to signal reflections make the range far lower than specified line-of-sight ranges of the Bluetooth products.

Most Bluetooth applications are battery-powered Class 2 devices, with little difference in range whether the other end of the link is a Class 1 or Class 2 device as the lower-powered device tends to set the range limit. In some cases the effective range of the data link can be extended when a Class 2 device is connecting to a Class 1 transceiver with both higher sensitivity and transmission power than a typical Class 2 device.[20] Mostly, however, the Class 1 devices have a similar sensitivity to Class 2 devices. Connecting two Class 1 devices with both high sensitivity and high power can allow ranges far in excess of the typical 100m, depending on the throughput required by the application. Some such devices allow open field ranges of up to 1 km and beyond between two similar devices without exceeding legal emission limits.[21][22][23]

The Bluetooth Core Specification mandates a range of not less than , but there is no upper limit on actual range. Manufacturers' implementations can be tuned to provide the range needed for each case.[24]

Bluetooth profile

To use Bluetooth wireless technology, a device must be able to interpret certain Bluetooth profiles, which are definitions of possible applications and specify general behaviors that Bluetooth-enabled devices use to communicate with other Bluetooth devices. These profiles include settings to parameterize and to control the communication from the start. Adherence to profiles saves the time for transmitting the parameters anew before the bi-directional link becomes effective. There are a wide range of Bluetooth profiles that describe many different types of applications or use cases for devices.[25][26]

List of applications

Bluetooth_headset.jpg]]

-   Wireless control and communication between a mobile phone and a handsfree headset. This was one of the earliest applications to become popular.[27]
-   Wireless control of and communication between a mobile phone and a Bluetooth compatible car stereo system.
-   Wireless control of and communication with iOS and Android device phones, tablets and portable wireless speakers.[28]
-   Wireless Bluetooth headset and Intercom. Idiomatically, a headset is sometimes called "a Bluetooth".
-   Wireless streaming of audio to headphones with or without communication capabilities.
-   Wireless streaming of data collected by Bluetooth-enabled fitness devices to phone or PC.[29]
-   Wireless networking between PCs in a confined space and where little bandwidth is required.[30]
-   Wireless communication with PC input and output devices, the most common being the mouse, keyboard and printer.
-   Transfer of files, contact details, calendar appointments, and reminders between devices with OBEX.
-   Replacement of previous wired RS-232 serial communications in test equipment, GPS receivers, medical equipment, bar code scanners, and traffic control devices.
-   For controls where infrared was often used.
-   For low bandwidth applications where higher USB bandwidth is not required and cable-free connection desired.
-   Sending small advertisements from Bluetooth-enabled advertising hoardings to other, discoverable, Bluetooth devices.[31]
-   Wireless bridge between two Industrial Ethernet (e.g., PROFINET) networks.
-   Seventh and eighth generation game consoles such as Nintendo's Wii,[32] and Sony's PlayStation 3 use Bluetooth for their respective wireless controllers.
-   Dial-up internet access on personal computers or PDAs using a data-capable mobile phone as a wireless modem.
-   Short-range transmission of health sensor data from medical devices to mobile phone, set-top box or dedicated telehealth devices.[33][34]
-   Allowing a DECT phone to ring and answer calls on behalf of a nearby mobile phone.
-   Real-time location systems (RTLS) are used to track and identify the location of objects in real time using "Nodes" or "tags" attached to, or embedded in, the objects tracked, and "Readers" that receive and process the wireless signals from these tags to determine their locations.[35]
-   Personal security application on mobile phones for prevention of theft or loss of items. The protected item has a Bluetooth marker (e.g., a tag) that is in constant communication with the phone. If the connection is broken (the marker is out of range of the phone) then an alarm is raised. This can also be used as a man overboard alarm. A product using this technology has been available since 2009.[36]
-   Calgary, Alberta, Canada's Roads Traffic division uses data collected from travelers' Bluetooth devices to predict travel times and road congestion for motorists.[37]
-   Wireless transmission of audio (a more reliable alternative to FM transmitters)
-   Live video streaming to the visual cortical implant device by Nabeel Fattah in Newcastle university 2017.[38]
-   Connection of motion controllers to a PC when using VR headsets

Bluetooth vs. Wi-Fi (IEEE 802.11)

Bluetooth and Wi-Fi (Wi-Fi is the brand name for products using IEEE 802.11 standards) have some similar applications: setting up networks, printing, or transferring files. Wi-Fi is intended as a replacement for high-speed cabling for general local area network access in work areas or home. This category of applications is sometimes called wireless local area networks (WLAN). Bluetooth was intended for portable equipment and its applications. The category of applications is outlined as the wireless personal area network (WPAN). Bluetooth is a replacement for cabling in a variety of personally carried applications in any setting, and also works for fixed location applications such as smart energy functionality in the home (thermostats, etc.).

Wi-Fi and Bluetooth are to some extent complementary in their applications and usage. Wi-Fi is usually access point-centered, with an asymmetrical client-server connection with all traffic routed through the access point, while Bluetooth is usually symmetrical, between two Bluetooth devices. Bluetooth serves well in simple applications where two devices need to connect with a minimal configuration like a button press, as in headsets and remote controls, while Wi-Fi suits better in applications where some degree of client configuration is possible and high speeds are required, especially for network access through an access node. However, Bluetooth access points do exist, and ad-hoc connections are possible with Wi-Fi though not as simple as with Bluetooth. Wi-Fi Direct was recently developed to add a more Bluetooth-like ad-hoc functionality to Wi-Fi.

Devices

Drone_4.jpg dongle with a 100 m range.]] Bluetooth exists in numerous products such as telephones, speakers, tablets, media players, robotics systems, laptops, and console gaming equipment as well as some high definition headsets, modems, hearing aids[39] and even watches.[40] Given the variety of devices which use the Bluetooth, coupled with the contemporary deprecation of headphone jacks by Apple, Google, and other companies, and the lack of regulation by the FCC, the technology is prone to interference.[41] Nonetheless Bluetooth is useful when transferring information between two or more devices that are near each other in low-bandwidth situations. Bluetooth is commonly used to transfer sound data with telephones (i.e., with a Bluetooth headset) or byte data with hand-held computers (transferring files).

Bluetooth protocols simplify the discovery and setup of services between devices.[42] Bluetooth devices can advertise all of the services they provide.[43] This makes using services easier, because more of the security, network address and permission configuration can be automated than with many other network types.[44]


Computer requirements

BluetoothUSB.jpg dongle.]] DELL_TrueMobile_350_Bluetooth_card.jpg

A personal computer that does not have embedded Bluetooth can use a Bluetooth adapter that enables the PC to communicate with Bluetooth devices. While some desktop computers and most recent laptops come with a built-in Bluetooth radio, others require an external adapter, typically in the form of a small USB "dongle."

Unlike its predecessor, IrDA, which requires a separate adapter for each device, Bluetooth lets multiple devices communicate with a computer over a single adapter. [45]

Operating system implementation

For Microsoft platforms, Windows XP Service Pack 2 and SP3 releases work natively with Bluetooth v1.1, v2.0 and v2.0+EDR.[46] Previous versions required users to install their Bluetooth adapter's own drivers, which were not directly supported by Microsoft.[47] Microsoft's own Bluetooth dongles (packaged with their Bluetooth computer devices) have no external drivers and thus require at least Windows XP Service Pack 2. Windows Vista RTM/SP1 with the Feature Pack for Wireless or Windows Vista SP2 work with Bluetooth v2.1+EDR.[48] Windows 7 works with Bluetooth v2.1+EDR and Extended Inquiry Response (EIR).[49] The Windows XP and Windows Vista/Windows 7 Bluetooth stacks support the following Bluetooth profiles natively: PAN, SPP, DUN, HID, HCRP. The Windows XP stack can be replaced by a third party stack that supports more profiles or newer Bluetooth versions. The Windows Vista/Windows 7 Bluetooth stack supports vendor-supplied additional profiles without requiring that the Microsoft stack be replaced.[50] It is generally recommended to install the latest vendor driver and its associated stack to be able to use the Bluetooth device at its fullest extent.

Apple products have worked with Bluetooth since Mac OSX v10.2, which was released in 2002.[51]

Linux has two popular Bluetooth stacks, BlueZ and Fluoride. The BlueZ stack is included with most Linux kernels and was originally developed by Qualcomm.[52] Fluoride, earlier known as Bluedroid is included in Android OS and was originally developed by Broadcom.[53] There is also Affix stack, developed by Nokia. It was once popular, but has not been updated since 2005.[54]

FreeBSD features Bluetooth since its v5.0 release, implemented through netgraph.[55]

NetBSD features Bluetooth since its v4.0 release.[56] Its Bluetooth stack was ported to OpenBSD as well, however OpenBSD later removed it as unmaintained.[57][58]

DragonFly BSD has had NetBSD's Bluetooth implementation since 1.11 (2008).[59] A netgraph-based implementation from FreeBSD has also been available in the tree, possibly disabled until 2014-11-15, and may require more work.[60][61]


Specifications and features

The specifications were formalized by the Bluetooth Special Interest Group (SIG) and formally announced on the 20 of May 1998.[62] Today it has a membership of over 30,000 companies worldwide.[63] It was established by Ericsson, IBM, Intel, Nokia and Toshiba, and later joined by many other companies.

All versions of the Bluetooth standards support downward compatibility.1 That lets the latest standard cover all older versions.

The Bluetooth Core Specification Working Group (CSWG) produces mainly 4 kinds of specifications:

-   The Bluetooth Core Specification, release cycle is typically a few years in between
-   Core Specification Addendum (CSA), release cycle can be as tight as a few times per year
-   Core Specification Supplements (CSS), can be released very quickly
-   Errata (Available with a user account: Errata login)

Bluetooth 1.0 and 1.0B

Versions 1.0 and 1.0B had many problems, and manufacturers had difficulty making their products interoperable. Versions 1.0 and 1.0B also included mandatory Bluetooth hardware device address (BD_ADDR) transmission in the Connecting process (rendering anonymity impossible at the protocol level), which was a major setback for certain services planned for use in Bluetooth environments.

Bluetooth 1.1

-   Ratified as IEEE Standard 802.15.1–2002[64]
-   Many errors found in the v1.0B specifications were fixed.
-   Added possibility of non-encrypted channels.
-   Received Signal Strength Indicator (RSSI).

Bluetooth 1.2

Major enhancements include:

-   Faster Connection and Discovery
-   _Adaptive frequency-hopping spread spectrum (AFH)_, which improves resistance to radio frequency interference by avoiding the use of crowded frequencies in the hopping sequence.
-   Higher transmission speeds in practice than in v1.1, up to 721 kbit/s.[65]
-   Extended Synchronous Connections (eSCO), which improve voice quality of audio links by allowing retransmissions of corrupted packets, and may optionally increase audio latency to provide better concurrent data transfer.
-   Host Controller Interface (HCI) operation with three-wire UART.
-   Ratified as IEEE Standard 802.15.1–2005[66]
-   Introduced Flow Control and Retransmission Modes for L2CAP.

Bluetooth 2.0 + EDR

This version of the Bluetooth Core Specification was released in 2004. The main difference is the introduction of an Enhanced Data Rate (EDR) for faster data transfer. The bit rate of EDR is 3Mbit/s, although the maximum data transfer rate (allowing for inter-packet time and acknowledgements) is 2.1Mbit/s.[67] EDR uses a combination of GFSK and phase-shift keying modulation (PSK) with two variants, π/4-DQPSK and 8-DPSK.[68] EDR can provide a lower power consumption through a reduced duty cycle.

The specification is published as _Bluetooth v2.0 + EDR_, which implies that EDR is an optional feature. Aside from EDR, the v2.0 specification contains other minor improvements, and products may claim compliance to "Bluetooth v2.0" without supporting the higher data rate. At least one commercial device states "Bluetooth v2.0 without EDR" on its data sheet.[69]

Bluetooth 2.1 + EDR

Bluetooth Core Specification Version 2.1 + EDR was adopted by the Bluetooth SIG on 26 July 2007.[70]

The headline feature of v2.1 is secure simple pairing (SSP): this improves the pairing experience for Bluetooth devices, while increasing the use and strength of security.[71]

Version 2.1 allows various other improvements, including _extended inquiry response_ (EIR), which provides more information during the inquiry procedure to allow better filtering of devices before connection; and sniff subrating, which reduces the power consumption in low-power mode.

Bluetooth 3.0 + HS

Version 3.0 + HS of the Bluetooth Core Specification[72] was adopted by the Bluetooth SIG on 21 April 2009. Bluetooth v3.0 + HS provides theoretical data transfer speeds of up to 24 Mbit/s, though not over the Bluetooth link itself. Instead, the Bluetooth link is used for negotiation and establishment, and the high data rate traffic is carried over a colocated 802.11 link.

The main new feature is AMP (Alternative MAC/PHY), the addition of 802.11 as a high-speed transport. The high-speed part of the specification is not mandatory, and hence only devices that display the "+HS" logo actually support Bluetooth over 802.11 high-speed data transfer. A Bluetooth v3.0 device without the "+HS" suffix is only required to support features introduced in Core Specification Version 3.0[73] or earlier Core Specification Addendum 1.[74]

L2CAP Enhanced modes: Enhanced Retransmission Mode (ERTM) implements reliable L2CAP channel, while Streaming Mode (SM) implements unreliable channel with no retransmission or flow control. Introduced in Core Specification Addendum 1.
Alternative MAC/PHY: Enables the use of alternative MAC and PHYs for transporting Bluetooth profile data. The Bluetooth radio is still used for device discovery, initial connection and profile configuration. However, when large quantities of data must be sent, the high-speed alternative MAC PHY 802.11 (typically associated with Wi-Fi) transports the data. This means that Bluetooth uses proven low power connection models when the system is idle, and the faster radio when it must send large quantities of data. AMP links require enhanced L2CAP modes.
Unicast Connectionless Data: Permits sending service data without establishing an explicit L2CAP channel. It is intended for use by applications that require low latency between user action and reconnection/transmission of data. This is only appropriate for small amounts of data.
Enhanced Power Control: Updates the power control feature to remove the open loop power control, and also to clarify ambiguities in power control introduced by the new modulation schemes added for EDR. Enhanced power control removes the ambiguities by specifying the behaviour that is expected. The feature also adds closed loop power control, meaning RSSI filtering can start as the response is received. Additionally, a "go straight to maximum power" request has been introduced. This is expected to deal with the headset link loss issue typically observed when a user puts their phone into a pocket on the opposite side to the headset.

Ultra-wideband

The high-speed (AMP) feature of Bluetooth v3.0 was originally intended for UWB, but the WiMedia Alliance, the body responsible for the flavor of UWB intended for Bluetooth, announced in March 2009 that it was disbanding, and ultimately UWB was omitted from the Core v3.0 specification.[75]

On 16 March 2009, the WiMedia Alliance announced it was entering into technology transfer agreements for the WiMedia Ultra-wideband (UWB) specifications. WiMedia has transferred all current and future specifications, including work on future high-speed and power-optimized implementations, to the Bluetooth Special Interest Group (SIG), Wireless USB Promoter Group and the USB Implementers Forum. After successful completion of the technology transfer, marketing, and related administrative items, the WiMedia Alliance ceased operations.[76][77][78][79][80]

In October 2009 the Bluetooth Special Interest Group suspended development of UWB as part of the alternative MAC/PHY, Bluetooth v3.0 + HS solution. A small, but significant, number of former WiMedia members had not and would not sign up to the necessary agreements for the IP transfer. The Bluetooth SIG is now in the process of evaluating other options for its longer term roadmap.[81][82][83]

Bluetooth 4.0

The Bluetooth SIG completed the Bluetooth Core Specification version 4.0 (called Bluetooth Smart) and has been adopted . It includes _Classic Bluetooth_, _Bluetooth high speed_ and _Bluetooth Low Energy_ (BLE) protocols. Bluetooth high speed is based on Wi-Fi, and Classic Bluetooth consists of legacy Bluetooth protocols.

Bluetooth Low Energy, previously known as Wibree,[84] is a subset of Bluetooth v4.0 with an entirely new protocol stack for rapid build-up of simple links. As an alternative to the Bluetooth standard protocols that were introduced in Bluetooth v1.0 to v3.0, it is aimed at very low power applications powered by a coin cell. Chip designs allow for two types of implementation, dual-mode, single-mode and enhanced past versions.[85] The provisional names _Wibree_ and _Bluetooth ULP_ (Ultra Low Power) were abandoned and the BLE name was used for a while. In late 2011, new logos "Bluetooth Smart Ready" for hosts and "Bluetooth Smart" for sensors were introduced as the general-public face of BLE.[86]

Compared to _Classic Bluetooth_, Bluetooth Low Energy is intended to provide considerably reduced power consumption and cost while maintaining a similar communication range. In terms of lengthening the battery life of Bluetooth devices, represents a significant progression.

-   In a single-mode implementation, only the low energy protocol stack is implemented. Dialog Semiconductor,[87] STMicroelectronics,[88] AMICCOM,[89] CSR,[90] Nordic Semiconductor[91] and Texas Instruments[92] have released single mode Bluetooth Low Energy solutions.
-   In a dual-mode implementation, Bluetooth Smart functionality is integrated into an existing Classic Bluetooth controller. , the following semiconductor companies have announced the availability of chips meeting the standard: Qualcomm-Atheros, CSR, Broadcom[93][94] and Texas Instruments. The compliant architecture shares all of Classic Bluetooth's existing radio and functionality resulting in a negligible cost increase compared to Classic Bluetooth.

Cost-reduced single-mode chips, which enable highly integrated and compact devices, feature a lightweight Link Layer providing ultra-low power idle mode operation, simple device discovery, and reliable point-to-multipoint data transfer with advanced power-save and secure encrypted connections at the lowest possible cost.

General improvements in version 4.0 include the changes necessary to facilitate BLE modes, as well the Generic Attribute Profile (GATT) and Security Manager (SM) services with AES Encryption.

Core Specification Addendum 2 was unveiled in December 2011; it contains improvements to the audio Host Controller Interface and to the High Speed (802.11) Protocol Adaptation Layer.

Core Specification Addendum 3 revision 2 has an adoption date of 24 July 2012.

Core Specification Addendum 4 has an adoption date of 12 February 2013.

Bluetooth 4.1

The Bluetooth SIG announced formal adoption of the Bluetooth v4.1 specification on 4 December 2013. This specification is an incremental software update to Bluetooth Specification v4.0, and not a hardware update. The update incorporates Bluetooth Core Specification Addenda (CSA 1, 2, 3 & 4) and adds new features that improve consumer usability. These include increased co-existence support for LTE, bulk data exchange rates—and aid developer innovation by allowing devices to support multiple roles simultaneously.[95]

New features of this specification include:

-   Mobile Wireless Service Coexistence Signaling
-   Train Nudging and Generalized Interlaced Scanning
-   Low Duty Cycle Directed Advertising
-   L2CAP Connection Oriented and Dedicated Channels with Credit-Based Flow Control
-   Dual Mode and Topology
-   LE Link Layer Topology
-   802.11n PAL
-   Audio Architecture Updates for Wide Band Speech
-   Fast Data Advertising Interval
-   Limited Discovery Time[96]

Notice that some features were already available in a Core Specification Addendum (CSA) before the release of v4.1.

Bluetooth 4.2

Released on December 2, 2014, it introduces features for the Internet of Things.

The major areas of improvement are:

-   Low Energy Secure Connection with Data Packet Length Extension
-   Link Layer Privacy with Extended Scanner Filter Policies
-   Internet Protocol Support Profile (IPSP) version 6 ready for Bluetooth Smart things to support connected home

Older Bluetooth hardware may receive 4.2 features such as Data Packet Length Extension and improved privacy via firmware updates.[97][98]

Bluetooth 5

The Bluetooth SIG presented Bluetooth 5 on 16 June 2016. Its new features are mainly focused on emerging Internet of Things technology. The Samsung Galaxy S8 launched with Bluetooth 5 support in April 2017. In September 2017, the iPhone 8, 8 Plus and iPhone X launched with Bluetooth 5 support as well. Apple also integrated Bluetooth 5 in their new HomePod offering released on February 9, 2018.[99] Marketing drops the point number; so that it is just "Bluetooth 5" (unlike Bluetooth 4.0). The change is for the sake of "Simplifying our marketing, communicating user benefits more effectively and making it easier to signal significant technology updates to the market."[100]

Bluetooth 5 provides, for , options that can double the speed (2Mbit/s burst) at the expense of range, or up to fourfold the range at the expense of data rate, and eightfold the data broadcasting capacity of transmissions, by increasing the packet lengths. The increase in transmissions could be important for Internet of Things devices, where many nodes connect throughout a whole house. Bluetooth 5 adds functionality for connectionless services such as location-relevant navigation[101] of low-energy Bluetooth connections.[102][103][104]

The major areas of improvement are:

-   Slot Availability Mask (SAM)
-   2 Mbit/s PHY for LE
-   LE Long Range
-   High Duty Cycle Non-Connectable Advertising
-   LE Advertising Extensions
-   LE Channel Selection Algorithm #2

Features Added in CSA5 – Integrated in v5.0:

-   Higher Output Power

The following features were removed in this version of the specification:

-   Park State[105]

Bluetooth 5.1

The Bluetooth SIG presented Bluetooth 5.1 on 21 January 2019.

The major areas of improvement are:

-   Angle of Arrival (AoA) and Angle of Departure (AoD) which are used for location and tracking of devices
-   Advertising Channel Index
-   GATT Caching
-   Minor Enhancements batch 1:
    -   HCI support for debug keys in LE Secure Connections
    -   Sleep clock accuracy update mechanism
    -   ADI field in scan response data
    -   Interaction between QoS and Flow Specification
    -   Host channel classification for secondary advertising
    -   Allow the SID to appear in scan response reports
    -   Specify the behavior when rules are violated
-   Periodic Advertising Sync Transfer

Features Added in Core Specification Addendum (CSA) 6 – Integrated in v5.1:

-   Models
-   Mesh-based model hierarchy

The following features were removed in this version of the specification:

-   Unit keys


Technical information

Architecture

Software

Seeking to extend the compatibility of Bluetooth devices, the devices that adhere to the standard use as an interface between the host device (laptop, phone, etc.) and the Bluetooth device as such (Bluetooth chip) an interface called HCI (Host Controller Interface)

High-level protocols such as the SDP (Protocol used to find other Bluetooth devices within the communication range, also responsible for detecting the function of devices in range), RFCOMM (Protocol used to emulate serial port connections) and TCS (Telephony control protocol) interact with the baseband controller through the L2CAP Protocol (Logical Link Control and Adaptation Protocol). The L2CAP protocol is responsible for the segmentation and reassembly of the packets

Hardware

The hardware that makes up the Bluetooth device is made up of, logically, two parts; which may or may not be physically separate. A radio device, responsible for modulating and transmitting the signal; and a digital controller. The digital controller is likely a CPU, one of whose functions is to run a Link Controller; and interfaces with the host device; but some functions may be delegated to hardware. The Link Controller is responsible for the processing of the baseband and the management of ARQ and physical layer FEC protocols. In addition, it handles the transfer functions (both asynchronous and synchronous), audio coding and data encryption. The CPU of the device is responsible for attending the instructions related to Bluetooth of the host device, in order to simplify its operation. To do this, the CPU runs software called Link Manager that has the function of communicating with other devices through the LMP protocol.

Bluetooth protocol stack

Bluetooth_protokoly.svg

Bluetooth is defined as a layer protocol architecture consisting of core protocols, cable replacement protocols, telephony control protocols, and adopted protocols.[106] Mandatory protocols for all Bluetooth stacks are LMP, L2CAP and SDP. In addition, devices that communicate with Bluetooth almost universally can use these protocols: HCI and RFCOMM.

Link Manager

The Link Manager is the system that manages to establish the connection between devices. It is responsible for the establishment, authentication and configuration of the link. The Link Manager locates other managers and communicates with them thanks to the management protocol of the LMP link. In order to perform its function as a service provider, the LM uses the services included in the link controller (LC, "Link Controller"). The Link Manager Protocol basically consists of a number of PDUs (Protocol Data Units) that are sent from one device to another. The following is a list of supported services:

-   Transmission and reception of data.
-   Name request
-   Request of the link addresses.
-   Establishment of the connection.
-   Authentication.
-   Negotiation of link mode and connection establishment.

Host Controller Interface

The Host Controller Interface provides a command interface for the controller and for the link manager, which allows access to the hardware status and control registers. This interface provides an access layer for all Bluetooth devices. The HCI layer of the machine exchanges commands and data with the HCI firmware present in the Bluetooth device. One of the most important HCI tasks that must be performed is the automatic discovery of other Bluetooth devices that are within the coverage radius.

Logical Link Control and Adaptation Protocol

The _Logical Link Control and Adaptation Protocol_ (L2CAP) is used to multiplex multiple logical connections between two devices using different higher level protocols. Provides segmentation and reassembly of on-air packets.

In _Basic_ mode, L2CAP provides packets with a payload configurable up to 64 kB, with 672 bytes as the default MTU, and 48 bytes as the minimum mandatory supported MTU.

In _Retransmission and Flow Control_ modes, L2CAP can be configured either for isochronous data or reliable data per channel by performing retransmissions and CRC checks.

Bluetooth Core Specification Addendum 1 adds two additional L2CAP modes to the core specification. These modes effectively deprecate original Retransmission and Flow Control modes:

Enhanced Retransmission Mode (ERTM): This mode is an improved version of the original retransmission mode. This mode provides a reliable L2CAP channel.
Streaming Mode (SM): This is a very simple mode, with no retransmission or flow control. This mode provides an unreliable L2CAP channel.

Reliability in any of these modes is optionally and/or additionally guaranteed by the lower layer Bluetooth BDR/EDR air interface by configuring the number of retransmissions and flush timeout (time after which the radio flushes packets). In-order sequencing is guaranteed by the lower layer.

Only L2CAP channels configured in ERTM or SM may be operated over AMP logical links.

Service Discovery Protocol

The _Service Discovery Protocol_ (SDP) allows a device to discover services offered by other devices, and their associated parameters. For example, when you use a mobile phone with a Bluetooth headset, the phone uses SDP to determine which Bluetooth profiles the headset can use (Headset Profile, Hands Free Profile, Advanced Audio Distribution Profile (A2DP) etc.) and the protocol multiplexer settings needed for the phone to connect to the headset using each of them. Each service is identified by a Universally Unique Identifier (UUID), with official services (Bluetooth profiles) assigned a short form UUID (16 bits rather than the full 128).

Radio Frequency Communications

_Radio Frequency Communications_ (RFCOMM) is a cable replacement protocol used for generating a virtual serial data stream. RFCOMM provides for binary data transport and emulates EIA-232 (formerly RS-232) control signals over the Bluetooth baseband layer, i.e. it is a serial port emulation.

RFCOMM provides a simple reliable data stream to the user, similar to TCP. It is used directly by many telephony related profiles as a carrier for AT commands, as well as being a transport layer for OBEX over Bluetooth.

Many Bluetooth applications use RFCOMM because of its widespread support and publicly available API on most operating systems. Additionally, applications that used a serial port to communicate can be quickly ported to use RFCOMM.

Bluetooth Network Encapsulation Protocol

The _Bluetooth Network Encapsulation Protocol_ (BNEP) is used for transferring another protocol stack's data via an L2CAP channel. Its main purpose is the transmission of IP packets in the Personal Area Networking Profile. BNEP performs a similar function to SNAP in Wireless LAN.

Audio/Video Control Transport Protocol

The _Audio/Video Control Transport Protocol_ (AVCTP) is used by the remote control profile to transfer AV/C commands over an L2CAP channel. The music control buttons on a stereo headset use this protocol to control the music player.

Audio/Video Distribution Transport Protocol

The _Audio/Video Distribution Transport Protocol_ (AVDTP) is used by the advanced audio distribution (A2DP) profile to stream music to stereo headsets over an L2CAP channel intended for video distribution profile in the Bluetooth transmission.

Telephony Control Protocol

The _Telephony Control Protocol– Binary_ (TCS BIN) is the bit-oriented protocol that defines the call control signaling for the establishment of voice and data calls between Bluetooth devices. Additionally, "TCS BIN defines mobility management procedures for handling groups of Bluetooth TCS devices."

TCS-BIN is only used by the cordless telephony profile, which failed to attract implementers. As such it is only of historical interest.

Adopted protocols

Adopted protocols are defined by other standards-making organizations and incorporated into Bluetooth's protocol stack, allowing Bluetooth to code protocols only when necessary. The adopted protocols include:

Point-to-Point Protocol (PPP): Internet standard protocol for transporting IP datagrams over a point-to-point link.
TCP/IP/UDP: Foundation Protocols for TCP/IP protocol suite
Object Exchange Protocol (OBEX): Session-layer protocol for the exchange of objects, providing a model for object and operation representation
Wireless Application Environment/Wireless Application Protocol (WAE/WAP): WAE specifies an application framework for wireless devices and WAP is an open standard to provide mobile users access to telephony and information services.[107]

Baseband error correction

Depending on packet type, individual packets may be protected by error correction, either 1/3 rate forward error correction (FEC) or 2/3 rate. In addition, packets with CRC will be retransmitted until acknowledged by automatic repeat request (ARQ).

Setting up connections

Any Bluetooth device in _discoverable mode_ transmits the following information on demand:

-   Device name
-   Device class
-   List of services
-   Technical information (for example: device features, manufacturer, Bluetooth specification used, clock offset)

Any device may perform an inquiry to find other devices to connect to, and any device can be configured to respond to such inquiries. However, if the device trying to connect knows the address of the device, it always responds to direct connection requests and transmits the information shown in the list above if requested. Use of a device's services may require pairing or acceptance by its owner, but the connection itself can be initiated by any device and held until it goes out of range. Some devices can be connected to only one device at a time, and connecting to them prevents them from connecting to other devices and appearing in inquiries until they disconnect from the other device.

Every device has a unique 48-bit address. However, these addresses are generally not shown in inquiries. Instead, friendly Bluetooth names are used, which can be set by the user. This name appears when another user scans for devices and in lists of paired devices.

Most cellular phones have the Bluetooth name set to the manufacturer and model of the phone by default. Most cellular phones and laptops show only the Bluetooth names and special programs are required to get additional information about remote devices. This can be confusing as, for example, there could be several cellular phones in range named T610 (see Bluejacking).

Pairing and bonding

Motivation

Many services offered over Bluetooth can expose private data or let a connecting party control the Bluetooth device. Security reasons make it necessary to recognize specific devices, and thus enable control over which devices can connect to a given Bluetooth device. At the same time, it is useful for Bluetooth devices to be able to establish a connection without user intervention (for example, as soon as in range).

To resolve this conflict, Bluetooth uses a process called _bonding_, and a bond is generated through a process called _pairing_. The pairing process is triggered either by a specific request from a user to generate a bond (for example, the user explicitly requests to "Add a Bluetooth device"), or it is triggered automatically when connecting to a service where (for the first time) the identity of a device is required for security purposes. These two cases are referred to as dedicated bonding and general bonding respectively.

Pairing often involves some level of user interaction. This user interaction confirms the identity of the devices. When pairing successfully completes, a bond forms between the two devices, enabling those two devices to connect to each other in the future without repeating the pairing process to confirm device identities. When desired, the user can remove the bonding relationship.

Implementation

During pairing, the two devices establish a relationship by creating a shared secret known as a _link key_. If both devices store the same link key, they are said to be _paired_ or _bonded_. A device that wants to communicate only with a bonded device can cryptographically authenticate the identity of the other device, ensuring it is the same device it previously paired with. Once a link key is generated, an authenticated Asynchronous Connection-Less (ACL) link between the devices may be encrypted to protect exchanged data against eavesdropping. Users can delete link keys from either device, which removes the bond between the devices—so it is possible for one device to have a stored link key for a device it is no longer paired with.

Bluetooth services generally require either encryption or authentication and as such require pairing before they let a remote device connect. Some services, such as the Object Push Profile, elect not to explicitly require authentication or encryption so that pairing does not interfere with the user experience associated with the service use-cases.

Pairing mechanisms

Pairing mechanisms changed significantly with the introduction of Secure Simple Pairing in Bluetooth v2.1. The following summarizes the pairing mechanisms:

-   _Legacy pairing_: This is the only method available in Bluetooth v2.0 and before. Each device must enter a PIN code; pairing is only successful if both devices enter the same PIN code. Any 16-byte UTF-8 string may be used as a PIN code; however, not all devices may be capable of entering all possible PIN codes.
    -   _Limited input devices_: The obvious example of this class of device is a Bluetooth Hands-free headset, which generally have few inputs. These devices usually have a _fixed PIN_, for example "0000" or "1234", that are hard-coded into the device.
    -   _Numeric input devices_: Mobile phones are classic examples of these devices. They allow a user to enter a numeric value up to 16 digits in length.
    -   _Alpha-numeric input devices_: PCs and smartphones are examples of these devices. They allow a user to enter full UTF-8 text as a PIN code. If pairing with a less capable device the user must be aware of the input limitations on the other device; there is no mechanism available for a capable device to determine how it should limit the available input a user may use.
-   _Secure Simple Pairing_ (SSP): This is required by Bluetooth v2.1, although a Bluetooth v2.1 device may only use legacy pairing to interoperate with a v2.0 or earlier device. Secure Simple Pairing uses a form of public key cryptography, and some types can help protect against man in the middle, or MITM attacks. SSP has the following authentication mechanisms:
    -   _Just works_: As the name implies, this method just works, with no user interaction. However, a device may prompt the user to confirm the pairing process. This method is typically used by headsets with very limited IO capabilities, and is more secure than the fixed PIN mechanism this limited set of devices uses for legacy pairing. This method provides no man-in-the-middle (MITM) protection.
    -   _Numeric comparison_: If both devices have a display, and at least one can accept a binary yes/no user input, they may use Numeric Comparison. This method displays a 6-digit numeric code on each device. The user should compare the numbers to ensure they are identical. If the comparison succeeds, the user(s) should confirm pairing on the device(s) that can accept an input. This method provides MITM protection, assuming the user confirms on both devices and actually performs the comparison properly.
    -   _Passkey Entry_: This method may be used between a device with a display and a device with numeric keypad entry (such as a keyboard), or two devices with numeric keypad entry. In the first case, the display presents a 6-digit numeric code to the user, who then enters the code on the keypad. In the second case, the user of each device enters the same 6-digit number. Both of these cases provide MITM protection.
    -   _Out of band_ (OOB): This method uses an external means of communication, such as near-field communication (NFC) to exchange some information used in the pairing process. Pairing is completed using the Bluetooth radio, but requires information from the OOB mechanism. This provides only the level of MITM protection that is present in the OOB mechanism.

SSP is considered simple for the following reasons:

-   In most cases, it does not require a user to generate a passkey.
-   For use cases not requiring MITM protection, user interaction can be eliminated.
-   For _numeric comparison_, MITM protection can be achieved with a simple equality comparison by the user.
-   Using OOB with NFC enables pairing when devices simply get close, rather than requiring a lengthy discovery process.

Security concerns

Prior to Bluetooth v2.1, encryption is not required and can be turned off at any time. Moreover, the encryption key is only good for approximately 23.5 hours; using a single encryption key longer than this time allows simple XOR attacks to retrieve the encryption key.

-   Turning off encryption is required for several normal operations, so it is problematic to detect if encryption is disabled for a valid reason or for a security attack.

Bluetooth v2.1 addresses this in the following ways:

-   Encryption is required for all non-SDP (Service Discovery Protocol) connections
-   A new Encryption Pause and Resume feature is used for all normal operations that require that encryption be disabled. This enables easy identification of normal operation from security attacks.
-   The encryption key must be refreshed before it expires.

Link keys may be stored on the device file system, not on the Bluetooth chip itself. Many Bluetooth chip manufacturers let link keys be stored on the device—however, if the device is removable, this means that the link key moves with the device.


Security

Overview

Bluetooth implements confidentiality, authentication and key derivation with custom algorithms based on the SAFER+ block cipher. Bluetooth key generation is generally based on a Bluetooth PIN, which must be entered into both devices. This procedure might be modified if one of the devices has a fixed PIN (e.g., for headsets or similar devices with a restricted user interface). During pairing, an initialization key or master key is generated, using the E22 algorithm.[108] The E0 stream cipher is used for encrypting packets, granting confidentiality, and is based on a shared cryptographic secret, namely a previously generated link key or master key. Those keys, used for subsequent encryption of data sent via the air interface, rely on the Bluetooth PIN, which has been entered into one or both devices.

An overview of Bluetooth vulnerabilities exploits was published in 2007 by Andreas Becker.[109]

In September 2008, the National Institute of Standards and Technology (NIST) published a Guide to Bluetooth Security as a reference for organizations. It describes Bluetooth security capabilities and how to secure Bluetooth technologies effectively. While Bluetooth has its benefits, it is susceptible to denial-of-service attacks, eavesdropping, man-in-the-middle attacks, message modification, and resource misappropriation. Users and organizations must evaluate their acceptable level of risk and incorporate security into the lifecycle of Bluetooth devices. To help mitigate risks, included in the NIST document are security checklists with guidelines and recommendations for creating and maintaining secure Bluetooth piconets, headsets, and smart card readers.[110]

Bluetooth v2.1 – finalized in 2007 with consumer devices first appearing in 2009 – makes significant changes to Bluetooth's security, including pairing. See the pairing mechanisms section for more about these changes.

Bluejacking

Bluejacking is the sending of either a picture or a message from one user to an unsuspecting user through Bluetooth wireless technology. Common applications include short messages, e.g., "You've just been bluejacked!"[111] Bluejacking does not involve the removal or alteration of any data from the device.Kaviarasu, S., & Muthupandian, P. (2016). Bluejacking Technology: A Review. International

   Journal of Trend in Research and Development, 3(6), 1. Retrieved October, 2018, from https://www.researchgate.net/publication/314233155_Bluejacking_Technology_A_Review

Bluejacking can also involve taking control of a mobile device wirelessly and phoning a premium rate line, owned by the bluejacker. Security advances have alleviated this issue.

History of security concerns

2001–2004

In 2001, Jakobsson and Wetzel from Bell Laboratories discovered flaws in the Bluetooth pairing protocol and also pointed to vulnerabilities in the encryption scheme.[112] In 2003, Ben and Adam Laurie from A.L. Digital Ltd. discovered that serious flaws in some poor implementations of Bluetooth security may lead to disclosure of personal data.[113] In a subsequent experiment, Martin Herfurt from the trifinite.group was able to do a field-trial at the CeBIT fairgrounds, showing the importance of the problem to the world. A new attack called BlueBug was used for this experiment.[114] In 2004 the first purported virus using Bluetooth to spread itself among mobile phones appeared on the Symbian OS.[115] The virus was first described by Kaspersky Lab and requires users to confirm the installation of unknown software before it can propagate. The virus was written as a proof-of-concept by a group of virus writers known as "29A" and sent to anti-virus groups. Thus, it should be regarded as a potential (but not real) security threat to Bluetooth technology or Symbian OS since the virus has never spread outside of this system. In August 2004, a world-record-setting experiment (see also Bluetooth sniping) showed that the range of Class 2 Bluetooth radios could be extended to with directional antennas and signal amplifiers.[116] This poses a potential security threat because it enables attackers to access vulnerable Bluetooth devices from a distance beyond expectation. The attacker must also be able to receive information from the victim to set up a connection. No attack can be made against a Bluetooth device unless the attacker knows its Bluetooth address and which channels to transmit on, although these can be deduced within a few minutes if the device is in use.[117]

2005

In January 2005, a mobile malware worm known as Lasco surfaced. The worm began targeting mobile phones using Symbian OS (Series 60 platform) using Bluetooth enabled devices to replicate itself and spread to other devices. The worm is self-installing and begins once the mobile user approves the transfer of the file (Velasco.sis) from another device. Once installed, the worm begins looking for other Bluetooth enabled devices to infect. Additionally, the worm infects other .SIS files on the device, allowing replication to another device through the use of removable media (Secure Digital, CompactFlash, etc.). The worm can render the mobile device unstable.[118]

In April 2005, Cambridge University security researchers published results of their actual implementation of passive attacks against the PIN-based pairing between commercial Bluetooth devices. They confirmed that attacks are practicably fast, and the Bluetooth symmetric key establishment method is vulnerable. To rectify this vulnerability, they designed an implementation that showed that stronger, asymmetric key establishment is feasible for certain classes of devices, such as mobile phones.[119]

In June 2005, Yaniv Shaked[120] and Avishai Wool[121] published a paper describing both passive and active methods for obtaining the PIN for a Bluetooth link. The passive attack allows a suitably equipped attacker to eavesdrop on communications and spoof if the attacker was present at the time of initial pairing. The active method makes use of a specially constructed message that must be inserted at a specific point in the protocol, to make the master and slave repeat the pairing process. After that, the first method can be used to crack the PIN. This attack's major weakness is that it requires the user of the devices under attack to re-enter the PIN during the attack when the device prompts them to. Also, this active attack probably requires custom hardware, since most commercially available Bluetooth devices are not capable of the timing necessary.[122]

In August 2005, police in Cambridgeshire, England, issued warnings about thieves using Bluetooth enabled phones to track other devices left in cars. Police are advising users to ensure that any mobile networking connections are de-activated if laptops and other devices are left in this way.[123]

2006

In April 2006, researchers from Secure Network and F-Secure published a report that warns of the large number of devices left in a visible state, and issued statistics on the spread of various Bluetooth services and the ease of spread of an eventual Bluetooth worm.[124]

In October 2006, at the Luxemburgish Hack.lu Security Conference, Kevin Finistere and Thierry Zoller demonstrated and released a remote root shell via Bluetooth on Mac OS X v10.3.9 and v10.4. They also demonstrated the first Bluetooth PIN and Linkkeys cracker, which is based on the research of Wool and Shaked.[125]

2017

In April 2017, security researchers at Armis discovered multiple exploits in the Bluetooth software in various platforms, including Microsoft Windows, Linux, Apple iOS, and Google Android. These vulnerabilities are collectively called "BlueBorne." The exploits allow an attacker to connect to devices or systems without authentication and can give them "virtually full control over the device." Armis contacted Google, Microsoft, Apple, Samsung and Linux developers allowing them to patch their software before the coordinated announcement of the vulnerabilities on September 12, 2017.[126]


Health concerns

Bluetooth uses the microwave radio frequency spectrum in the 2.402GHz to 2.480GHz range,[127] which is non-ionizing radiation, of similar bandwidth to the one used by wireless and mobile phones. No specific demonstration of harm has been demonstrated up to date, even if wireless transmission has been included by IARC in the possible carcinogen list. Maximum power output from a Bluetooth radio is 100mW for class 1, 2.5mW for class 2, and 1mW for class 3 devices. Even the maximum power output of class1 is a lower level than the lowest-powered mobile phones.[128] UMTS and W-CDMA output 250mW, GSM1800/1900 outputs 1000mW, and GSM850/900 outputs 2000mW.


Award programs

The Bluetooth Innovation World Cup, a marketing initiative of the Bluetooth Special Interest Group (SIG), was an international competition that encouraged the development of innovations for applications leveraging Bluetooth technology in sports, fitness and health care products. The aim of the competition was to stimulate new markets.[129]

The Bluetooth Innovation World Cup morphed into the Bluetooth Breakthrough Awards in 2013. Bluetooth SIG subsequently launched the Imagine Blue Award in 2016 at Bluetooth World. [130]The Breakthrough Awards[131] Bluetooth program highlights the most innovative products and applications available today, prototypes coming soon, and student-led projects in the making.


See also

-   ANT+
-   Bluetooth stack – Key firmware to use bluetooth feature
-   Bluesniping
-   BlueSoleil – proprietary driver
-   Bluetooth Low Energy Beacons (AltBeacon, iBeacon, Eddystone)
-   Bluetooth Mesh
-   Continua Health Alliance
-   DASH7
-   Headset (audio)
-   Hotspot (Wi-Fi)
-   Java APIs for Bluetooth
-   Key finder
-   Li-Fi
-   MyriaNed
-   Near-field communication
-   RuBee – secure wireless protocol alternative
-   Tethering
-   Wi-Fi HaLow
-   ZigBee – low-power lightweight wireless protocol in the ISM band


References


External links

-   -   Specifications at Bluetooth SIG

Bluetooth Category:Mobile computers Category:Networking standards Category:Wireless Category:Telecommunications-related introductions in 1994 Category:Swedish inventions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Mark Forsyth. The etymologicon. - Icon Books Ltd. London N79DP, 2011. p. 139.

[9]

[10]

[11]

[12]

[13] _Bluetooth Specification Version 5.0_ (PDF download). Bluetooth Special Interest Group. Retrieved from Bluetooth Core Specifications, December 1, 2017. Page 2535.

[14]

[15]

[16]

[17] Newton, Harold. (2007). _Newton’s telecom dictionary._ New York: Flatiron Publishing.

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

[62]

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

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106] Stallings, William. (2005). _Wireless communications & networks.'=' Upper Saddle River, NJ: Pearson Prentice Hall._

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]