SESSION ANNOUNCEMENT PROTOCOL (SAP) is an experimental protocol for broadcasting multicast session information. SAP was published by the IETF as RFC 2974.

SAP typically uses Session Description Protocol (SDP) as the format for Real-time Transport Protocol session descriptions. Announcement data is sent using IP multicast and User Datagram Protocol.

Under SAP, senders periodically broadcast SDP descriptions to a well-known multicast address and port.[1] A SAP listening application can listen to the SAP multicasts and construct a guide of all advertised multicast sessions.


Announcement interval

The announcement interval is cooperatively modulated such that all SAP announcements in the multicast delivery scope, by default, consume 4000 bits per second. Regardless, the maximum announce interval is 300 seconds (5 minutes). Announcements automatically expire after 10 times the announcement interval or one hour, whichever is greater. Announcements may also be explicitly withdrawn by the original issuer.


Authentication, encryption and compression

SAP features separate methods for authenticating and encrypting announcements. Use of encryption is not recommended. Authentication prevents unauthorized modification and other DoS attacks. Authentication is optional. Two authentication schemes are supported:

1.  Pretty Good Privacy as defined in RFC 2440
2.  Cryptographic Message Syntax as defined in RFC 5652

The message body may optionally be compressed using the zlib format as defined in RFC 1950.


Applications and implementations

VLC media player monitors SAP announcements and presents the user a list of available streams.

SAP is one of the optional discovery and connection management techniques described in the AES67 audio-over-Ethernet interoperability standard.[2]


References


External links

-   Session Announcement Protocol (SAP)
-   SAP/SDP Listener

Category:Internet protocols Category:Internet Standards

[1]

[2]