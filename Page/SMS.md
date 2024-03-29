, a common mobile keypad alphabet layout]] SMS (SHORT MESSAGE SERVICE) is a text messaging service component of most telephone, Internet, and mobile device systems.[1] It uses standardized communication protocols to enable mobile devices to exchange short text messages. An intermediary service can facilitate a text-to-voice conversion to be sent to landlines.[2] SMS was the most widely used data application at the end of 2010, with an estimated 3.5 billion active users, or about 80% of all mobile subscribers.[3]

SMS, as used on modern devices, originated from radio telegraphy in radio memo pagers that used standardized phone protocols. These were defined in 1985 as part of the Global System for Mobile Communications (GSM) series of standards.[4]GSM Doc 28/85 "Services and Facilities to be provided in the GSM System" rev2, June 1985 The first SMS message was sent in 1992.[5]

The protocols allowed users to send and receive messages of up to 160 alpha-numeric characters to and from GSM mobiles. Although most SMS messages are mobile-to-mobile text messages, support for the service has expanded to include other mobile technologies, such as ANSI CDMA networks and Digital AMPS.[6]

SMS is also employed in mobile marketing, a type of direct marketing.[7] According to one market research report, as of 2014, the global SMS messaging business was estimated to be worth over $100 billion, accounting for almost 50 percent of all the revenue generated by mobile messaging.[8]


History

Initial concept

Adding text messaging functionality to mobile devices began in the early 1980s. The first action plan of the CEPT Group GSM was approved in December 1982, requesting that "The services and facilities offered in the public switched telephone networks and public data networks ... should be available in the mobile system."[9] This plan included the exchange of text messages either directly between mobile stations, or transmitted via message handling systems in use at that time.[10]

The SMS concept was developed in the Franco-German GSM cooperation in 1984 by Friedhelm Hillebrand and Bernard Ghillebaert.[11] The GSM is optimized for telephony, since this was identified as its main application. The key idea for SMS was to use this telephone-optimized system, and to transport messages on the signalling paths needed to control the telephone traffic during periods when no signalling traffic existed. In this way, unused resources in the system could be used to transport messages at minimal cost. However, it was necessary to limit the length of the messages to 128 bytes (later improved to 160 seven-bit characters) so that the messages could fit into the existing signalling formats. Based on his personal observations and on analysis of the typical lengths of postcard and Telex messages, Hillebrand argued that 160 characters was sufficient to express most messages succinctly.[12]

SMS could be implemented in every mobile station by updating its software. Hence, a large base of SMS-capable terminals and networks existed when people began to use SMS.[13] A new network element required was a specialized short message service centre, and enhancements were required to the radio capacity and network transport infrastructure to accommodate growing SMS traffic.

Early development

The technical development of SMS was a multinational collaboration supporting the framework of standards bodies. Through these organizations the technology was made freely available to the whole world.[14]

The first proposal which initiated the development of SMS was made by a contribution of Germany and France into the GSM group meeting in February 1985 in Oslo.[15] This proposal was further elaborated in GSM subgroup WP1 Services (Chairman Martine Alvernhe, France Telecom) based on a contribution from Germany. There were also initial discussions in the subgroup WP3 network aspects chaired by Jan Audestad (Telenor). The result was approved by the main GSM group in a June '85 document which was distributed to industry.[16] The input documents on SMS had been prepared by Friedhelm Hillebrand (Deutsche Telekom) with contributions from Bernard Ghillebaert (France Télécom). The definition that Friedhelm Hillebrand and Bernard Ghillebaert brought into GSM called for the provision of a message transmission service of alphanumeric messages to mobile users "with acknowledgement capabilities". The last three words transformed SMS into something much more useful than the prevailing messaging paging that some in GSM might have had in mind.[17]

SMS was considered in the main GSM group as a possible service for the new digital cellular system. In GSM document "_Services and Facilities to be provided in the GSM System,_"[18] both mobile-originated and mobile-terminated short messages appear on the table of GSM teleservices.

The discussions on the GSM services were concluded in the recommendation GSM 02.03 "_TeleServices supported by a GSM PLMN._"[19] Here a rudimentary description of the three services was given:

1.  Short message mobile-terminated (SMS-MT)/ Point-to-Point: the ability of a network to transmit a Short Message to a mobile phone. The message can be sent by phone or by a software application.
2.  Short message mobile-originated (SMS-MO)/ Point-to-Point: the ability of a network to transmit a Short Message sent by a mobile phone. The message can be sent to a phone or to a software application.
3.  Short message cell broadcast.

The material elaborated in GSM and its WP1 subgroup was handed over in Spring 1987 to a new GSM body called IDEG (the Implementation of Data and Telematic Services Experts Group), which had its kickoff in May 1987 under the chairmanship of Friedhelm Hillebrand (German Telecom). The technical standard known today was largely created by IDEG (later WP4) as the two recommendations GSM 03.40 (the two point-to-point services merged) and GSM 03.41 (cell broadcast).

WP4 created a Drafting Group Message Handling (DGMH), which was responsible for the specification of SMS. Finn Trosby of Telenor chaired the draft group through its first 3 years, in which the design of SMS was established. DGMH had five to eight participants, and Finn Trosby mentions as major contributors Kevin Holley, Eija Altonen, Didier Luizard and Alan Cox. The first action plan[20] mentions for the first time the Technical Specification 03.40 "Technical Realisation of the Short Message Service". Responsible editor was Finn Trosby. The first and very rudimentary draft of the technical specification was completed in November 1987.[21] However, drafts useful for the manufacturers followed at a later stage in the period. A comprehensive description of the work in this period is given in.[22]

The work on the draft specification continued in the following few years, where Kevin Holley of Cellnet (now Telefónica O2 UK) played a leading role. Besides the completion of the main specification GSM 03.40, the detailed protocol specifications on the system interfaces also needed to be completed.

Support in other architectures

The Mobile Application Part (MAP) of the SS7 protocol included support for the transport of Short Messages through the Core Network from its inception.[23] MAP Phase 2 expanded support for SMS by introducing a separate operation code for Mobile Terminated Short Message transport.[24] Since Phase 2, there have been no changes to the Short Message operation packages in MAP, although other operation packages have been enhanced to support CAMEL SMS control.

From 3GPP Releases 99 and 4 onwards, CAMEL Phase 3 introduced the ability for the Intelligent Network (IN) to control aspects of the Mobile Originated Short Message Service,[25] while CAMEL Phase 4, as part of 3GPP Release 5 and onwards, provides the IN with the ability to control the Mobile Terminated service.[26] CAMEL allows the gsmSCP to block the submission (MO) or delivery (MT) of Short Messages, route messages to destinations other than that specified by the user, and perform real-time billing for the use of the service. Prior to standardized CAMEL control of the Short Message Service, IN control relied on switch vendor specific extensions to the Intelligent Network Application Part (INAP) of SS7.

Early implementations

The first SMS message[27] was sent over the Vodafone GSM network in the United Kingdom on 3 December 1992, from Neil Papworth of Sema Group (now Mavenir Systems) using a personal computer to Richard Jarvis of Vodafone using an Orbitel 901 handset. The text of the message was "Merry Christmas."[28]

The first commercial deployment of a short message service center (SMSC) was by Aldiscon part of Logica (now part of Acision) with Telia (now TeliaSonera) in Sweden in 1993,[29] followed by Fleet Call (now Nextel)[30] in the US, Telenor in Norway and BT Cellnet (now O2 UK) later in 1993. All first installations of SMS gateways were for network notifications sent to mobile phones, usually to inform of voice mail messages.

The first commercially sold SMS service was offered to consumers, as a person-to-person text messaging service by Radiolinja (now part of Elisa) in Finland in 1993. Most early GSM mobile phone handsets did not support the ability to send SMS text messages, and Nokia was the only handset manufacturer whose total GSM phone line in 1993 supported user-sending of SMS text messages. According to Matti Makkonen, an engineer at Nokia at the time, the Nokia 2010, which was released in January 1994, was the first mobile phone to support composing SMSes easily.[31]

Initial growth was slow, with customers in 1995 sending on average only 0.4 messages per GSM customer per month.[32] One factor in the slow takeup of SMS was that operators were slow to set up charging systems, especially for prepaid subscribers, and eliminate billing fraud which was possible by changing SMSC settings on individual handsets to use the SMSCs of other operators. Initially, networks in the UK only allowed customers to send messages to other users on the same network, limiting the usefulness of the service. This restriction was lifted in 1999.[33]

Over time, this issue was eliminated by switch billing instead of billing at the SMSC and by new features within SMSCs to allow blocking of foreign mobile users sending messages through it. By the end of 2000, the average number of messages reached 35 per user per month,[34] and on Christmas Day 2006, over 205 million messages were sent in the UK alone.[35]

Text messaging outside GSM

SMS was originally designed as part of GSM, but is now available on a wide range of networks, including 3G networks. However, not all text messaging systems use SMS, and some notable alternative implementations of the concept include J-Phone's _SkyMail_ and NTT Docomo's _Short Mail_, both in Japan. Email messaging from phones, as popularized by NTT Docomo's i-mode and the RIM BlackBerry, also typically uses standard mail protocols such as SMTP over TCP/IP.

SMS today

, 6.1 trillion (6.1 × 10¹²) SMS text messages were sent,[36] which is an average of 193,000 SMS per second. SMS has become a large commercial industry, earning $114.6 billion globally in 2010.[37] The global average price for an SMS message is US$0.11, while mobile networks charge each other interconnect fees of at least US$0.04 when connecting between different phone networks.

In 2015, the actual cost of sending an SMS in Australia was found to be $0.00016 per SMS.[38]

In 2014, Caktus Group[39] developed the world's first SMS-based voter registration system in Libya. So far, more than 1.5 million people have registered using that system, providing Libyan voters with unprecedented access to the democratic process.[40]

While SMS is still a growing market, it is being increasingly challenged by Internet Protocol-based messaging services such as Apple's iMessage, Facebook Messenger, WhatsApp, Viber, WeChat (in China) and Line (in Japan), available on smart phones with data connections.[41] It has been reported that over 97% of smart phone owners use alternative messaging services at least once a day.[42] However, in the U.S. these Internet-based services have not caught on as much, and SMS continues to be highly popular there. One of the reasons is because the top three American carriers offer free SMS with almost all phone bundles since 2010, a contrast to Europe where SMS costs are high.[43]

Enterprise SMS-messaging, also known as application-to-peer messaging (A2P Messaging) or 2-way SMS, continue to grow steadily at a rate of 4% annually.[44] Enterprise SMS applications are primarily focused on CRM and delivering highly targeted service messages such as parcel-delivery alerts, real-time notification of credit/debit card purchase confirmations to protect against fraud, and appointment confirmations. Another primary source of growing A2P message volumes is two-step verification (alternatively referred to as 2-factor authentication) processes whereby users are delivered a one-time passcode over SMS and then are asked to enter that passcode online in order to verify their identity.[45]

SMS Enablement

SMS enablement allows individuals to send an SMS message to a business phone number (traditional landline) and receive a SMS in return. Providing customers with the ability to text to a phone number allows organizations to offer new services that deliver value. Examples include chat bots, and text enabled customer service and call centers.


Technical details

GSM

The _Short Message Service—Point to Point (SMS-PP)_—was originally defined in GSM recommendation 03.40, which is now maintained in 3GPP as TS 23.040.[46][47] GSM 03.41 (now 3GPP TS 23.041) defines the _Short Message Service—Cell Broadcast (SMS-CB)_, which allows messages (advertising, public information, etc.) to be broadcast to all mobile users in a specified geographical area.[48][49]

Messages are sent to a short message service center (SMSC), which provides a "store and forward" mechanism. It attempts to send messages to the SMSC's recipients. If a recipient is not reachable, the SMSC queues the message for later retry.[50] Some SMSCs also provide a "forward and forget" option where transmission is tried only once. Both mobile terminated (MT, for messages sent _to_ a mobile handset) and mobile originating (MO, for those sent _from_ the mobile handset) operations are supported. Message delivery is "best effort," so there are no guarantees that a message will actually be delivered to its recipient, but delay or complete loss of a message is uncommon, typically affecting less than 5 percent of messages.[51] Some providers allow users to request delivery reports, either via the SMS settings of most modern phones, or by prefixing each message with *0# or *N#. However, the exact meaning of confirmations varies from reaching the network, to being queued for sending, to being sent, to receiving a confirmation of receipt from the target device, and users are often not informed of the specific type of success being reported.

SMS is a stateless communication protocol in which every SMS message is considered entirely independent of other messages. Enterprise applications using SMS as a communication channel for stateful dialogue (where an MO reply message is paired to a specific MT message) requires that session management be maintained external to the protocol.

Message size

Transmission of short messages between the SMSC and the handset is done whenever using the Mobile Application Part (MAP) of the SS7 protocol.[52] Messages are sent with the MAP MO- and MT-ForwardSM operations, whose payload length is limited by the constraints of the signaling protocol to precisely 140 bytes (140 bytes * 8 bits / byte = 1120 bits).

Short messages can be encoded using a variety of alphabets: the default GSM 7-bit alphabet, the 8-bit data alphabet, and the 16-bit UCS-2 alphabet.[53] Depending on which alphabet the subscriber has configured in the handset, this leads to the maximum individual short message sizes of 160 7-bit characters, 140 8-bit characters, or 70 16-bit characters. GSM 7-bit alphabet support is mandatory for GSM handsets and network elements,[54] but characters in languages such as Hindi, Arabic, Chinese, Korean, Japanese, or Cyrillic alphabet languages (e.g., Russian, Ukrainian, Serbian, Bulgarian, etc.) must be encoded using the 16-bit UCS-2 character encoding (see Unicode). Routing data and other metadata is additional to the payload size.

Larger content (concatenated SMS, multipart or segmented SMS, or "long SMS") can be sent using multiple messages, in which case each message will start with a User Data Header (UDH) containing segmentation information. Since UDH is part of the payload, the number of available characters per segment is lower: 153 for 7-bit encoding, 134 for 8-bit encoding and 67 for 16-bit encoding. The receiving handset is then responsible for reassembling the message and presenting it to the user as one long message. While the standard theoretically permits up to 255 segments,[55] 10 segments is the practical maximum with some carriers,[56] and long messages are often billed as equivalent to multiple SMS messages. Some providers have offered length-oriented pricing schemes for messages, although that type of pricing structure is rapidly disappearing.

Gateway providers

SMS gateway providers facilitate SMS traffic between businesses and mobile subscribers, including SMS for enterprises, content delivery, and entertainment services involving SMS, e.g. TV voting. Considering SMS messaging performance and cost, as well as the level of messaging services, SMS gateway providers can be classified as aggregators or SS7 providers.

The aggregator model is based on multiple agreements with mobile carriers to exchange two-way SMS traffic into and out of the operator's SMSC, also known as "local termination model". Aggregators lack direct access into the SS7 protocol, which is the protocol where the SMS messages are exchanged. SMS messages are delivered to the operator's SMSC, but not the subscriber's handset; the SMSC takes care of further handling of the message through the SS7 network.

Another type of SMS gateway provider is based on SS7 connectivity to route SMS messages, also known as "international termination model". The advantage of this model is the ability to route data directly through SS7, which gives the provider total control and visibility of the complete path during SMS routing. This means SMS messages can be sent directly to and from recipients without having to go through the SMSCs of other mobile operators. Therefore, it is possible to avoid delays and message losses, offering full delivery guarantees of messages and optimized routing. This model is particularly efficient when used in mission-critical messaging and SMS used in corporate communications. Moreover, these SMS gateway providers are providing branded SMS services with masking but after misuse of these gateways most countries's Governments have taken serious steps to block these gateways.

Interconnectivity with other networks

Message Service Centers communicate with the Public Land Mobile Network (PLMN) or PSTN via Interworking and Gateway MSCs.

Subscriber-originated messages are transported from a handset to a service center, and may be destined for mobile users, subscribers on a fixed network, or Value-Added Service Providers (VASPs), also known as application-terminated. Subscriber-terminated messages are transported from the service center to the destination handset, and may originate from mobile users, from fixed network subscribers, or from other sources such as VASPs.

On some carriers nonsubscribers can send messages to a subscriber's phone using an Email-to-SMS gateway. Additionally, many carriers, including AT&T Mobility, T-Mobile USA,[57] Sprint,[58] and Verizon Wireless,[59] offer the ability to do this through their respective web sites.

For example, an AT&T subscriber whose phone number was 555-555-5555 would receive e-mails addressed to 5555555555@txt.att.net as text messages. Subscribers can easily reply to these SMS messages, and the SMS reply is sent back to the original email address. Sending email to SMS is free for the sender, but the recipient is subject to the standard delivery charges. Only the first 160 characters of an email message can be delivered to a phone, and only 160 characters can be sent from a phone. However, longer messages may be broken up into multiple texts, depending upon the telephone service provider.[60][61]

Text-enabled fixed-line handsets are required to receive messages in text format. However, messages can be delivered to nonenabled phones using text-to-speech conversion.[62]

Short messages can send binary content such as ringtones or logos, as well as Over-the-air programming (OTA) or configuration data. Such uses are a vendor-specific extension of the GSM specification and there are multiple competing standards, although Nokia's Smart Messaging is common. An alternative way for sending such binary content is EMS messaging, which is standardized and not dependent on vendors.

SMS is used for M2M (Machine to Machine) communication. For instance, there is an LED display machine controlled by SMS, and some vehicle tracking companies use SMS for their data transport or telemetry needs. SMS usage for these purposes is slowly being superseded by GPRS services owing to their lower overall cost. GPRS is offered by smaller telco players as a route of sending SMS text to reduce the cost of SMS texting internationally.[63]

AT commands

Many mobile and satellite transceiver units support the sending and receiving of SMS using an extended version of the Hayes command set. The extensions were standardised as part of the GSM Standards and extended as part of the 3GPP standards process in document 27.05 Use of Data Terminal Equipment - Data Circuit terminating Equipment (DTE - DCE) interface for Short Message Service (SMS) and Cell Broadcast Service (CBS)[64]

The connection between the terminal equipment and the transceiver can be realized with a serial cable (e.g., USB), a Bluetooth link, an infrared link, etc. Common AT commands include AT+CMGS (send message), AT+CMSS (send message from storage), AT+CMGL (list messages) and AT+CMGR (read message).[65]

However, not all modern devices support receiving of messages if the message storage (for instance the device's internal memory) is not accessible using AT commands.

Premium-rated short messages

Short messages may be used normally to provide premium rate services to subscribers of a telephone network.

Mobile-terminated short messages can be used to deliver digital content such as news alerts, financial information, logos, and ring tones. The first premium-rate media content delivered via the SMS system was the world's first paid downloadable ringing tones, as commercially launched by Saunalahti (later Jippii Group, now part of Elisa Grous), in 1998. Initially, only Nokia branded phones could handle them. By 2002 the ringtone business globally had exceeded $1 billion of service revenues, and nearly US$5 billion by 2008. Today, they are also used to pay smaller payments online—for example, for file-sharing services, in mobile application stores, or VIP section entrance. Outside the online world, one can buy a bus ticket or beverages from ATM, pay a parking ticket, order a store catalog or some goods (e.g., discount movie DVDs), make a donation to charity, and much more.

Premium-rated messages are also used in Donors Message Service to collect money for charities and foundations. DMS was first launched at April 1, 2004, and is very popular in the Czech Republic. For example, the Czech people sent over 1.5 million messages to help South Asia recover from the 2004 Indian Ocean earthquake and tsunami.

The Value-added service provider (VASP) providing the content submits the message to the mobile operator's SMSC(s) using an TCP/IP protocol such as the short message peer-to-peer protocol (SMPP) or the External Machine Interface (EMI). The SMSC delivers the text using the normal Mobile Terminated delivery procedure. The subscribers are charged extra for receiving this premium content; the revenue is typically divided between the mobile network operator and the VASP either through revenue share or a fixed transport fee. Submission to the SMSC is usually handled by a third party.

Mobile-originated short messages may also be used in a premium-rated manner for services such as televoting. In this case, the VASP providing the service obtains a short code from the telephone network operator, and subscribers send texts to that number. The payouts to the carriers vary by carrier; percentages paid are greatest on the lowest-priced premium SMS services. Most information providers should expect to pay about 45 percent of the cost of the premium SMS up front to the carrier. The submission of the text to the SMSC is identical to a standard MO Short Message submission, but once the text is at the SMSC, the Service Center (SC) identifies the Short Code as a premium service. The SC will then direct the content of the text message to the VASP, typically using an IP protocol such as SMPP or EMI. Subscribers are charged a premium for the sending of such messages, with the revenue typically shared between the network operator and the VASP. Short codes only work within one country, they are not international.

An alternative to inbound SMS is based on long numbers (international number format, such as "+44 762 480 5000"), which can be used in place of short codes for SMS reception in several applications, such as TV voting, product promotions and campaigns. Long numbers work internationally, allow businesses to use their own numbers, rather than short codes, which are usually shared across many brands. Additionally, long numbers are nonpremium inbound numbers.

Threaded SMS

Threaded SMS is a visual styling orientation of SMS message history that arranges messages to and from a contact in chronological order on a single screen.

It was first invented by a developer working to implement the SMS client for the BlackBerry, who was looking to make use of the blank screen left below the message on a device with a larger screen capable of displaying far more than the usual 160 characters, and was inspired by threaded Reply conversations in email.[66]

Visually, this style of representation provides a back-and-forth chat-like history for each individual contact.[67] Hierarchical-threading at the conversation-level (as typical in blogs and on-line messaging boards)is not widely supported by SMS messaging clients. This limitation is due to the fact that there is no session identifier or subject-line passed back and forth between sent and received messages in the header data (as specified by SMS protocol) from which the client device can properly thread an incoming message to a specific dialogue, or even to a specific message within a dialogue.

Most smart phone text-messaging-clients are able to create some contextual threading of "group messages" which narrows the context of the thread around the common interests shared by group members. On the other hand, advanced enterprise messaging applications which push messages from a remote server often display a dynamically changing reply number (multiple numbers used by the same sender), which is used along with the sender's phone number to create session-tracking capabilities analogous to the functionality that cookies provide for web-browsing. As one pervasive example, this technique is used to extend the functionality of many Instant Messenger (IM) applications such that they are able to communicate over two-way dialogues with the much larger SMS user-base.[68] In cases where multiple reply numbers are used by the enterprise server to maintain the dialogue, the visual conversation threading on the client may be separated into multiple threads.

Application-to-person (A2P) SMS

While SMS reached its popularity as a person-to-person messaging, another type of SMS is growing fast: application-to-person (A2P) messaging. A2P is a type of SMS sent from a subscriber to an application or sent from an application to a subscriber. It is commonly used by businesses, such as banks, to send SMS messages from their systems to their customers.[69]

In the US, A2P messages must be sent using a short code rather than a standard long code.[70] In the United Kingdom A2P messages can be sent with a dynamic 11 character sender ID; however, short codes are used for OPTOUT commands. There are specialist companies such as MMG Mobile Marketing Group which provide these services to businesses and enterprises.

Satellite phone networks

All commercial satellite phone networks except ACeS and OptusSat support SMS. While early Iridium handsets only support incoming SMS, later models can also send messages. The price per message varies for different networks. Unlike some mobile phone networks, there is no extra charge for sending international SMS or to send one to a different satellite phone network. SMS can sometimes be sent from areas where the signal is too poor to make a voice call.

Satellite phone networks usually have web-based or email-based SMS portals where one can send free SMS to phones on that particular network.

Unreliability

Unlike dedicated texting systems like the Simple Network Paging Protocol and Motorola's ReFLEX protocol,[71] SMS message delivery is not guaranteed, and many implementations provide no mechanism through which a sender can determine whether an SMS message has been delivered in a timely manner.[72] SMS messages are generally treated as lower-priority traffic than voice, and various studies have shown that around 1% to 5% of messages are lost entirely, even during normal operation conditions,[73] and others may not be delivered until long after their relevance has passed.[74] The use of SMS as an emergency notification service in particular has been questioned.[75]

Vulnerabilities

The Global Service for Mobile communications (GSM), with the greatest worldwide number of users, succumbs to several security vulnerabilities. In the GSM, only the airway traffic between the Mobile Station (MS) and the Base Transceiver Station (BTS) is optionally encrypted with a weak and broken stream cipher (A5/1 or A5/2). The authentication is unilateral and also vulnerable. There are also many other security vulnerabilities and shortcomings.[76] Such vulnerabilities are inherent to SMS as one of the superior and well-tried services with a global availability in the GSM networks. SMS messaging has some extra security vulnerabilities due to its store-and-forward feature, and the problem of fake SMS that can be conducted via the Internet. When a user is roaming, SMS content passes through different networks, perhaps including the Internet, and is exposed to various vulnerabilities and attacks. Another concern arises when an adversary gets access to a phone and reads the previous unprotected messages.[77]

In October 2005, researchers from Pennsylvania State University published an analysis of vulnerabilities in SMS-capable cellular networks. The researchers speculated that attackers might exploit the open functionality of these networks to disrupt them or cause them to fail, possibly on a nationwide scale.[78]

SMS spoofing

The GSM industry has identified a number of potential fraud attacks on mobile operators that can be delivered via abuse of SMS messaging services. The most serious threat is SMS Spoofing, which occurs when a fraudster manipulates address information in order to impersonate a user that has roamed onto a foreign network and is submitting messages to the home network. Frequently, these messages are addressed to destinations outside the home network—with the home SMSC essentially being "hijacked" to send messages into other networks.

The only sure way of detecting and blocking spoofed messages is to screen incoming mobile-originated messages to verify that the sender is a valid subscriber and that the message is coming from a valid and correct location. This can be implemented by adding an intelligent routing function to the network that can query originating subscriber details from the home location register (HLR) before the message is submitted for delivery. This kind of intelligent routing function is beyond the capabilities of legacy messaging infrastructure.[79]

Limitation

In an effort to limit telemarketers who had taken to bombarding users with hordes of unsolicited messages, India introduced new regulations in September 2011, including a cap of 3,000 SMS messages per subscriber per month, or an average of 100 per subscriber per day.[80] Due to representations received from some of the service providers and consumers, TRAI (Telecom Regulatory Authority of India) has raised this limit to 200 SMS messages per SIM per day in case of prepaid services, and up to 6,000 SMS messages per SIM per month in case of postpaid services with effect from 1 November 2011.[81] However, it was ruled unconstitutional by the Delhi high court, but there are some limitations.[82]

Flash SMS

A Flash SMS is a type of SMS that appears directly on the main screen without user interaction and is not automatically stored in the inbox.[83] It can be useful in emergencies, such as a fire alarm or cases of confidentiality, as in delivering one-time passwords.[84]

Silent SMS

In Germany in 2010 almost half a million "silent SMS" messages were sent by the federal police, customs and the secret service "Verfassungsschutz" (offices for protection of the constitution).[85] These silent messages, also known as "silent TMS", "stealth SMS", "stealth ping" or "Short Message Type 0",[86] are used to locate a person and thus to create a complete movement profile. They do not show up on a display, nor trigger any acoustical signal when received. Their primary purpose was to deliver special services of the network operator to any cell phone. The mobile provider, often at the behest of the police, will capture data such as subscriber identification IMSI.


See also

-   Process Driven Messaging Service
-   Comparison of mobile phone standards
-   iMessage
-   SMS language
-   Messaging apps
-   Text messaging
-   Social messaging
-   Thumbing
-   GSM 03.40
-   Short Message Service Center (SMSC)
-   Short message service technical realisation (GSM)
-   SMS gateway (sending text to or from devices other than phones)
-   SMS hubbing
-   SMS home routing
-   Multimedia Messaging Service (MMS)
-   Enhanced Messaging Service (EMS)
-   Rich Communication Services (RCS)


References


External links

-   3GPP – the organization that maintains the SMS specification
-   ISO Standards (In Zip file format)
-   GSM 03.38 to Unicode – how the GSM 7-bit default alphabet characters map into Unicode

Category:3GPP standards Category:Mobile telecommunication services Category:Mobile telecommunications standards Category:Text messaging Category:Finnish inventions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] see GSM document 02/82 available the ETSI archive

[10] These Message Handling Systems had been standardized in the ITU, see specifications X.400 series

[11] See the book Hillebrand, Trosby, Holley, Harris: SMS the creation of Personal Global Text Messaging, Wiley 2010

[12]

[13] See GSM document 28/85rev.2 June 85 and GSM WP1 document 66/86 available in the ETSI archive

[14] See also Friedhelm Hillebrand "GSM and UMTS, the creation of Global Mobile Communication", Wiley 2002, chapters 10 and 16,

[15] GSM document 19/85, available in the ETSI archive

[16] GSM document 28/85r2, available in the ETSI archive

[17]

[18]

[19] GSM TS 02.03, Teleservices Supported by a GSM Public Land Mobile Network (PLMN).

[20] Document GSM IDEG 79/87r3, available in the ETSI archive

[21] GSM 03.40, WP4 document 152/87, available in the ETSI archive

[22] Finn Trosby, "the strange duckling of GSM SMS" , Telektronikk Vol.3 2004.

[23] MAP phase 1 specification, available from the 3GPP web site.

[24] MAP phase 2 specification, available from the 3GPP web site.

[25] CAMEL Phase 3 specification, available from the 3GPP web site.

[26] CAMEL Phase 4 specification, also available from the 3GPP specification page.

[27] Hppy bthdy txt! December 2002, BBC News.

[28] UK hails 10th birthday of SMS, December 2002, The Times of India.

[29]

[30]

[31]

[32] GSM World press release

[33]

[34]

[35]

[36]

[37]

[38]

[39] Caktus Group

[40]

[41]

[42]

[43]

[44]

[45]

[46] GSM 03.40 Technical realization of the Short Message Service (SMS).

[47]

[48] GSM 03.41, Technical Realization of Short Message Service Cell Broadcast (SMSCB).

[49]

[50] Gil Held: "Data over Wireless Networks." pages 105–11, 137–38. Wiley, 2001.

[51] https://cs.uwaterloo.ca/research/tr/2007/CS-2007-42.pdf

[52]

[53] 3GPP TS 23.038, Alphabets and language-specific information.

[54]

[55] Ian Groves: "Mobile Systems", page 70, 79, 163–66. Chapman & Hall, 1998.

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

[66] [USPTO - https://www.google.com/patents/US7028263 US Patent 7028263 2001]

[67] From Phone Scoop definitions - Threaded Messaging definition (Phone Scoop) - Retrieved December 29, 2012

[68] "Whitepaper: Market Opportunities for Text and MMS Messaging" ABI Research, 2011

[69]  Glossary|website=www.infobip.com|access-date=2019-04-13}}

[70]

[71]

[72]

[73]

[74] Text Message Delivery Time and Reliability

[75]

[76] Solutions to the GSM Security Weaknesses, Proceedings of the 2nd IEEE International Conference on Next Generation Mobile Applications, Services, and Technologies (NGMAST2008), pp.576–581, Cardiff, UK, September 2008,

[77] SSMS – A Secure SMS Messaging Protocol for the M-Payment Systems, Proceedings of the 13th IEEE Symposium on Computers and Communications (ISCC'08), pp. 700–705, July 2008

[78] An Analysis of Vulnerabilities in SMS-Capable Cellular Networks: Exploiting Open Functionality in SMS-Capable Cellular Networks (Website)

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]