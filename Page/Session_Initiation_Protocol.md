The SESSION INITIATION PROTOCOL (SIP) is a signaling protocol used for initiating, maintaining, and terminating real-time sessions that include voice, video and messaging applications.[1] SIP is used for signaling and controlling multimedia communication sessions in applications of Internet telephony for voice and video calls, in private IP telephone systems, in instant messaging over Internet Protocol (IP) networks as well as mobile phone calling over LTE (VoLTE).

The protocol defines the specific format of messages exchanged and the sequence of communications for cooperation of the participants. SIP is a text-based protocol, incorporating many elements of the Hypertext Transfer Protocol (HTTP) and the Simple Mail Transfer Protocol (SMTP).[2] A call established with SIP may consist of multiple media streams, but no separate streams are required for applications, such as text messaging, that exchange data as payload in the SIP message.

SIP works in conjunction with several other protocols that specify and carry the session media. Most commonly, media type and parameter negotiation and media setup is performed with the Session Description Protocol (SDP), which is carried as payload in SIP messages. SIP is designed to be independent of the underlying transport layer protocol, and can be used with the User Datagram Protocol (UDP), the Transmission Control Protocol (TCP), and the Stream Control Transmission Protocol (SCTP). For secure transmissions of SIP messages over insecure network links, the protocol may be encrypted with Transport Layer Security (TLS). For the transmission of media streams (voice, video) the SDP payload carried in SIP messages typically employs the Real-time Transport Protocol (RTP) or the Secure Real-time Transport Protocol (SRTP).


History

SIP was originally designed by Mark Handley, Henning Schulzrinne, Eve Schooler and Jonathan Rosenberg in 1996. The protocol was standardized as in 1999. In November 2000, SIP was accepted as a 3GPP signaling protocol and permanent element of the IP Multimedia Subsystem (IMS) architecture for IP-based streaming multimedia services in cellular networks. In June 2002 the specification was revised in [3] and various extensions and clarifications have been published since.[4]

SIP was designed to provide a signaling and call setup protocol for IP-based communications supporting the call processing functions and features present in the public switched telephone network (PSTN) with a vision of supporting new multimedia applications. It has been extended for video conferencing, streaming media distribution, instant messaging, presence information, file transfer, Internet fax and online games.[5][6][7]

SIP is distinguished by its proponents for having roots in the Internet community rather than in the telecommunications industry. SIP has been standardized primarily by the IETF, while other protocols, such as H.323, have traditionally been associated with the International Telecommunication Union (ITU).


Protocol operation

SIP is only involved for the signaling operations of a media communication session and is primarily used to set up and terminate voice or video calls. SIP can be used to establish two-party (unicast) or multiparty (multicast) sessions. It also allows modification of existing calls. The modification can involve changing addresses or ports, inviting more participants, and adding or deleting media streams. SIP has also found applications in messaging applications, such as instant messaging, and event subscription and notification.

SIP works in conjunction with several other protocols that specify the media format and coding and that carry the media once the call is set up. For call setup, the body of a SIP message contains a Session Description Protocol (SDP) data unit, which specifies the media format, codec and media communication protocol. Voice and video media streams are typically carried between the terminals using the Real-time Transport Protocol (RTP) or Secure Real-time Transport Protocol (SRTP).[8][9]

Every resource of a SIP network, such as user agents, call routers, and voicemail boxes, are identified by a Uniform Resource Identifier (URI). The syntax of the URI follows the general standard syntax also used in Web services and e-mail.[10] The URI scheme used for SIP is _sip_ and a typical SIP URI has the form _sip:username@domainname_ or _sip:username@hostport_, where _domainname_ requires DNS SRV records to locate the servers for SIP domain while _hostport_ can be an IP address or a fully qualified domain name of the host and port. If secure transmission is required, the scheme _sips_ is used.

SIP employs design elements similar to the HTTP request and response transaction model.[11] Each transaction consists of a client request that invokes a particular method or function on the server and at least one response. SIP reuses most of the header fields, encoding rules and status codes of HTTP, providing a readable text-based format.

SIP can be carried by several transport layer protocols including Transmission Control Protocol (TCP), User Datagram Protocol (UDP), and Stream Control Transmission Protocol (SCTP).[12][13] SIP clients typically use TCP or UDP on port numbers 5060 or 5061 for SIP traffic to servers and other endpoints. Port 5060 is commonly used for non-encrypted signaling traffic whereas port 5061 is typically used for traffic encrypted with Transport Layer Security (TLS).

SIP-based telephony networks often implement call processing features of Signaling System 7 (SS7), for which special SIP protocol extensions exist, although the two protocols themselves are very different. SS7 is a centralized protocol, characterized by a complex central network architecture and dumb endpoints (traditional telephone handsets). SIP is a client-server protocol of equipotent peers. SIP features are implemented in the communicating endpoints, while the traditional SS7 architecture is in use only between switching centers.


Network elements

The network elements that use the Session Initiation Protocol for communication are called _SIP user agents_. Each _user agent_ (UA) performs the function of a _user agent client_ (UAC) when it is requesting a service function, and that of a _user agent server_ (UAS) when responding to a request. Thus, any two SIP endpoints may in principle operate without any intervening SIP infrastructure. However, for network operational reasons, for provisioning public services to users, and for directory services, SIP defines several specific types of network server elements. Each of these service elements also communicates within the client-server model implemented in user agent clients and servers.

User agent

A user agent is a logical network end-point that sends or receives SIP messages and manages SIP sessions. User agents have client and server components. The user agent client (UAC) sends SIP requests. The user agent server (UAS) receives requests and returns a SIP response. Unlike other network protocols that fix the roles of client and server, e.g., in HTTP, in which a web browser only acts as a client, and never as a server, SIP requires both peers to implement both roles. The roles of UAC and UAS only last for the duration of a SIP transaction.[14]

A SIP phone is an IP phone that implements client and server functions of a SIP user agent and provides the traditional call functions of a telephone, such as dial, answer, reject, call hold, and call transfer.[15][16] SIP phones may be implemented as a hardware device or as a softphone. As vendors increasingly implement SIP as a standard telephony platform, the distinction between hardware-based and software-based SIP phones is blurred and SIP elements are implemented in the basic firmware functions of many IP-capable communications devices such as smartphones.

In SIP, as in HTTP, the user agent may identify itself using a message header field (_User-Agent_), containing a text description of the software, hardware, or the product name. The user agent field is sent in request messages, which means that the receiving SIP server can evaluate this information to perform device-specific configuration or feature activation. Operators of SIP network elements sometimes store this information in customer account portals,[17] where it can be useful in diagnosing SIP compatibility problems or in the display of service status.

Proxy server

A proxy server is a network server with UAC and UAS components that functions as an intermediary entity for the purpose of performing requests on behalf of other network elements. A proxy server primarily plays the role of routing, meaning that its job is to ensure that a request is sent to another entity closer to the targeted user. Proxies are also useful for enforcing policy, such as for determining whether a user is allowed to make a call. A proxy interprets, and, if necessary, rewrites specific parts of a request message before forwarding it.

SIP proxy servers that route messages to more than one destination are called forking proxies. The forking of SIP requests means that multiple dialogs can be established from a single request. This explains the need for the two-sided dialog identifier; without a contribution from the recipients, the originator could not disambiguate the multiple dialogs established from a single request.

SIP forking refers to the process of "forking" a single SIP call to multiple SIP endpoints. This is a very powerful feature of SIP. A single call can ring many endpoints at the same time. SIP forking allows a desk phone ring at the same time as a mobile, allowing a call to be taken from either device.

Redirect server

A redirect server is a user agent server that generates 3xx (redirection) responses to requests it receives, directing the client to contact an alternate set of URIs. A redirect server allows proxy servers to direct SIP session invitations to external domains.

Registrar

SIP-registration-flow.png

A registrar is a SIP endpoint that provides a location service. It accepts REGISTER requests, recording the address and other parameters from the user agent. For subsequent requests it provides an essential means to locate possible communication peers on the network. The location service links one or more IP addresses to the SIP URI of the registering agent. Multiple user agents may register for the same URI, with the result that all registered user agents receive the calls to the URI.

SIP registrars are logical elements, and are often co-located with SIP proxies. To improve network scalability, location services may instead be located with a redirect server.

Session border controller

SIP-B2BUA-call-flow.png

Session border controllers serve as middle boxes between user agents and SIP servers for various types of functions, including network topology hiding and assistance in NAT traversal.

Gateway

Gateways can be used to interconnect a SIP network to other networks, such as the public switched telephone network, which use different protocols or technologies.


SIP messages

SIP is a text-based protocol with syntax similar to that of HTTP. There are two different types of SIP messages: requests and responses. The first line of a request has a _method_, defining the nature of the request, and a Request-URI, indicating where the request should be sent.[18] The first line of a response has a _response code_.

Requests

Requests initiate a functionality of the protocol. They are sent by a user agent client to the server, and are answered with one or more SIP responses, which return a result code of the transaction, and generally indicate the success, failure, or other state of the transaction.

+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| Request name | Description                                                                                                                                         | Notes                                                                                                             | RFC references |
+==============+=====================================================================================================================================================+===================================================================================================================+================+
| REGISTER     | Register the URI listed in the To-header field with a location server and associates it with the network address given in a _Contact_ header field. | The command implements a location service.                                                                        |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| INVITE       | Initiate a dialog for establishing a call. The request is sent by a user agent client to a user agent server.                                       | When sent during an established dialog (_reinvite_) it modifies the sessions, for example placing a call on hold. |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| ACK          | Confirm that an entity has received a final response to an INVITE request.                                                                          |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| BYE          | Signal termination of a dialog and end a call.                                                                                                      | This message may be sent by either endpoint of a dialog.                                                          |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| CANCEL       | Cancel any pending request.                                                                                                                         | Usually means terminating a call while it is still ringing, before answer.                                        |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| UPDATE       | Modify the state of a session without changing the state of the dialog.                                                                             |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| REFER        | Ask recipient to issue a request for the purpose of call transfer.                                                                                  |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| PRACK        | Provisional acknowledgement.                                                                                                                        | PRACK is sent in response to provisional response (1xx).                                                          |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| SUBSCRIBE    | Initiates a subscription for notification of events from a notifier.                                                                                |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| NOTIFY       | Inform a subscriber of notifications of a new event.                                                                                                |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| PUBLISH      | Publish an event to a notification server.                                                                                                          |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| MESSAGE      | Deliver a text message.                                                                                                                             | Used in instant messaging applications.                                                                           |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| INFO         | Send mid-session information that does not modify the session state.                                                                                | This method is often used for DTMF relay.                                                                         |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
| OPTIONS      | Query the capabilities of an endpoint.                                                                                                              | It is often used for NAT keepalive purposes.                                                                      |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+
|              |                                                                                                                                                     |                                                                                                                   |                |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+----------------+

: SIP requests

Responses

Responses are sent by the user agent server indicating the result of a received request. Several classes of responses are recognized, determined by the numerical range of result codes:[19]

-   1xx: Provisional responses to requests indicate the request was valid and is being processed.
-   2xx: Successful completion of the request. As a response to an INVITE, it indicates a call is established. The most common code is 200, which is an unqualified success report.
-   3xx: Call redirection is needed for completion of the request. The request must be completed with a new destination.
-   4xx: The request cannot be completed at the server for a variety of reasons, including bad request syntax (code 400).
-   5xx: The server failed to fulfill an apparently valid request, including server internal errors (code 500).
-   6xx: The request cannot be fulfilled at any server. It indicates a global failure, including call rejection by the destination.


Transactions

SIP_signaling.png

SIP defines a transaction mechanism to control the exchanges between participants and deliver messages reliably. A transaction is a state of a session, which is controlled by various timers. Client transactions send requests and server transactions respond to those requests with one or more responses. The responses may include provisional responses with a response code in the form _1xx_, and one or multiple final responses (2xx – 6xx).

Transactions are further categorized as either type _invite_ or type _non-invite_. Invite transactions differ in that they can establish a long-running conversation, referred to as a _dialog_ in SIP, and so include an acknowledgment (ACK) of any non-failing final response, e.g., _200 OK_.


Instant messaging and presence

The Session Initiation Protocol for Instant Messaging and Presence Leveraging Extensions (SIMPLE) is the SIP-based suite of standards for instant messaging and presence information. Message Session Relay Protocol (MSRP) allows instant message sessions and file transfer.


Conformance testing

The SIP developer community meets regularly at conferences organized by SIP Forum to test interoperability of SIP implementations.[20] The TTCN-3 test specification language, developed by a task force at ETSI (STF 196), is used for specifying conformance tests for SIP implementations.[21]


Performance testing

When developing SIP software or deploying a new SIP infrastructure, it is very important to test capability of servers and IP networks to handle certain call load: number of concurrent calls and number of calls per second. SIP performance tester software is used to simulate SIP and RTP traffic to see if the server and IP network are stable under the call load.[22] The software measures performance indicators like answer delay, answer/seizure ratio, RTP jitter and packet loss, round-trip delay time.


Applications

_SIP connection_ is a marketing term for voice over Internet Protocol (VoIP) services offered by many Internet telephony service providers (ITSPs). The service provides routing of telephone calls from a client's private branch exchange (PBX) telephone system to the public switched telephone network (PSTN). Such services may simplify corporate information system infrastructure by sharing Internet access for voice and data, and removing the cost for Basic Rate Interface (BRI) or Primary Rate Interface (PRI) telephone circuits.

_SIP trunking_ is a similar marketing term preferred for when the service is used to simplify a telecom infrastructure by sharing the carrier access circuit for voice, data, and Internet traffic while removing the need for Primary Rate Interface (PRI) circuits.[23][24]

SIP-enabled video surveillance cameras can initiate calls to alert the operator of events, such as motion of objects in a protected area.

SIP is used in audio over IP for broadcasting applications where it provides an interoperable means for audio interfaces from different manufacturers to make connections with one another.[25]


Implementations

The U.S. National Institute of Standards and Technology (NIST), Advanced Networking Technologies Division provides a public-domain Java implementation[26] that serves as a reference implementation for the standard. The implementation can work in proxy server or user agent scenarios and has been used in numerous commercial and research projects. It supports in full and a number of extension RFCs including (event notification) and (reliable provisional responses).

Numerous other commercial and open-source SIP implementations exist. See List of SIP software.


SIP-ISUP interworking

SIP-I, or the Session Initiation Protocol with encapsulated ISUP, is a protocol used to create, modify, and terminate communication sessions based on ISUP using SIP and IP networks. Services using SIP-I include voice, video telephony, fax and data. SIP-I and SIP-T[27] are two protocols with similar features, notably to allow ISUP messages to be transported over SIP networks. This preserves all of the detail available in the ISUP header, which is important as there are many country-specific variants of ISUP that have been implemented over the last 30 years, and it is not always possible to express all of the same detail using a native SIP message. SIP-I was defined by the ITU-T, whereas SIP-T was defined via the IETF RFC route.[28]


Encryption

Concerns about the security of calls via the public Internet have been addressed by encryption of the SIP protocol for secure transmission. The URI scheme _sips_ is used to mandate that each hop over which the request is forwarded up to the target domain must be secured with Transport Layer Security (TLS). The last hop from the proxy of the target domain to the user agent has to be secured according to local policies. TLS protects against attackers who try to listen on the signaling link but it does not provide end-to-end security to prevent espionage and law enforcement interception, as the encryption is only hop-by-hop and every single intermediate proxy has to be trusted.

End-to-end security may also be achieved with secure tunneling and IPsec, but most service providers that offer secure connections use TLS for securing signaling. TLS connections use URIs in the form _sips:user@example.com_. The media streams which are separate connections from the signaling stream, may be encrypted with the Secure Real-time Transport Protocol (SRTP). The key exchange for SRTP is performed with SDES (), or with ZRTP (). One may also add a MIKEY () exchange to SIP to determine session keys for use with SRTP.


See also

-   Voice over IP
-   Rendezvous protocol
-   Peer-to-peer SIP
-   Computer telephony integration (CTI)
-   Computer-supported telecommunications applications (CSTA)
-   H.323 protocols H.225.0 and H.245
-   IP Multimedia Subsystem (IMS)
-   Extensions to the Session Initiation Protocol for the IP Multimedia Subsystem
-   Media Gateway Control Protocol (MGCP)
-   Message Session Relay Protocol (MSRP)
-   Mobile VoIP
-   MSCML (Media Server Control Markup Language)
-   Network convergence
-   RTP audio video profile
-   SIGTRAN (Signaling Transport)
-   SIP trunking
-   SIP provider
-   Skinny Client Control Protocol (SCCP)
-   T.38
-   XIMSS (XML Interface to Messaging, Scheduling, and Signaling)
-   ZRTP


References


Bibliography

-   -


External links

-   -   IANA: SIP Parameters
-   IANA: SIP Event Types Namespace

Category:VoIP protocols Category:Voice over IP Category:Videotelephony Category:Application layer protocols

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

[18] Stallings, p.214

[19] Stallings, pp.216-217

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28] White Paper: "Why SIP-I? A Switching Core Protocol Recommendation"