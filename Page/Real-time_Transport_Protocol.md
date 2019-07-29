The REAL-TIME TRANSPORT PROTOCOL (RTP) is a network protocol for delivering audio and video over IP networks. RTP is used in communication and entertainment systems that involve streaming media, such as telephony, video teleconference applications including WebRTC, television services and web-based push-to-talk features.

RTP typically runs over User Datagram Protocol (UDP). RTP is used in conjunction with the RTP Control Protocol (RTCP). While RTP carries the media streams (e.g., audio and video), RTCP is used to monitor transmission statistics and quality of service (QoS) and aids synchronization of multiple streams. RTP is one of the technical foundations of Voice over IP and in this context is often used in conjunction with a signaling protocol such as the Session Initiation Protocol (SIP) which establishes connections across the network.

RTP was developed by the Audio-Video Transport Working Group of the Internet Engineering Task Force (IETF) and first published in 1996 as , superseded by in 2003.


Overview

RTP is designed for end-to-end, real-time, transfer of streaming media. The protocol provides facilities for jitter compensation and detection of packet loss and out-of-order delivery, which are common especially during UDP transmissions on an IP network. RTP allows data transfer to multiple destinations through IP multicast.[1] RTP is regarded as the primary standard for audio/video transport in IP networks and is used with an associated profile and payload format.[2] The design of RTP is based on the architectural principle known as application-layer framing where protocol functions are implemented in the application as opposed to in the operating system's protocol stack.

Real-time multimedia streaming applications require timely delivery of information and often can tolerate some packet loss to achieve this goal. For example, loss of a packet in audio application may result in loss of a fraction of a second of audio data, which can be made unnoticeable with suitable error concealment algorithms.[3] The Transmission Control Protocol (TCP), although standardized for RTP use,[4] is not normally used in RTP applications because TCP favors reliability over timeliness. Instead the majority of the RTP implementations are built on the User Datagram Protocol (UDP).[5] Other transport protocols specifically designed for multimedia sessions are SCTP[6] and DCCP,[7] although, , they are not in widespread use.[8]

RTP was developed by the Audio/Video Transport working group of the IETF standards organization. RTP is used in conjunction with other protocols such as H.323 and RTSP.[9] The RTP specification describes two protocols: RTP and RTCP. RTP is used for transfer of multimedia data, and the RTCP is used to periodically send control information and QoS parameters.[10]

The data transfer protocol, RTP, carries real-time data. Information provided by this protocol include timestamps (for synchronization), sequence numbers (for packet loss and reordering detection) and the payload format which indicates the encoded format of the data.[11] The control protocol, RTCP, is used for quality of service (QoS) feedback and synchronization between the media streams. The bandwidth of RTCP traffic compared to RTP is small, typically around 5%.[12][13]

RTP sessions are typically initiated between communicating peers using a signaling protocol, such as H.323, the Session Initiation Protocol (SIP), RTSP, or Jingle (XMPP). These protocols may use the Session Description Protocol to specify the parameters for the sessions.[14]

An RTP session is established for each multimedia stream. Audio and video streams may use separate RTP sessions, enabling a receiver to selectively receive components of a particular stream.[15] A session consists of a destination IP address with a pair of ports for RTP and RTCP. The specification recommends that RTP port numbers are chosen to be even and that each associated RTCP port be the next higher odd number.[16] However, a single port is chosen for RTP and RTCP in applications that multiplex the protocols.[17] RTP and RTCP typically use unprivileged UDP ports (1024 to 65535),[18] but may also use other transport protocols, most notably, SCTP and DCCP, as the protocol design is transport independent.


Profiles and payload formats

One of the design considerations for RTP is to carry a range of multimedia formats and allow new formats without revising the RTP standard. To this end, the information required by a specific application of the protocol is not included in the generic RTP header, but is instead provided through separate RTP profiles and associated payload formats. For each class of application (e.g., audio, video), RTP defines a _profile_ and one or more associated _payload formats_.[19] A complete specification of RTP for a particular application usage requires profile and payload format specifications.[20]

The profile defines the codecs used to encode the payload data and their mapping to payload format codes in the _Payload Type_ (PT) field of the RTP header. Each profile is accompanied by several payload format specifications, each of which describes the transport of a particular encoded data.[21] The audio payload formats include G.711, G.723, G.726, G.729, GSM, QCELP, MP3, and DTMF, and the video payload formats include H.261, H.263, H.264, H.265 and MPEG-1/MPEG-2.[22] The mapping of MPEG-4 audio/video streams to RTP packets is specified in , and H.263 video payloads are described in .[23]

Examples of RTP profiles include:

-   The _RTP profile for Audio and video conferences with minimal control_ () defines a set of static payload type assignments, and a dynamic mechanism for mapping between a payload format, and a PT value using Session Description Protocol (SDP).
-   The Secure Real-time Transport Protocol (SRTP) () defines an RTP profile that provides cryptographic services for the transfer of payload data.[24]
-   The experimental _Control Data Profile for RTP_ (RTP/CDP) for machine-to-machine communications.[25]


Packet header

RTP packets are created at the application layer and handed to the transport layer for delivery. Each unit of RTP media data created by an application begins with the RTP packet header.

+-----------+-----------+--------------------------------------+-------------------------+---+----+
| _Offsets_ | Octet     | 0                                    | 1                       | 2 | 3  |
+===========+===========+======================================+=========================+===+====+
| Octet     | Bit       | 0                                    | 1                       | 2 | 3  |
+-----------+-----------+--------------------------------------+-------------------------+---+----+
| 0         | 0         | Version                              | P                       | X | CC |
+-----------+-----------+--------------------------------------+-------------------------+---+----+
| 4         | 32        | Timestamp                            |                         |   |    |
+-----------+-----------+--------------------------------------+-------------------------+---+----+
| 8         | 64        | SSRC identifier                      |                         |   |    |
+-----------+-----------+--------------------------------------+-------------------------+---+----+
| 12        | 96        | CSRC identifiers                     |                         |   |    |
|           |           | ...                                  |                         |   |    |
+-----------+-----------+--------------------------------------+-------------------------+---+----+
| 12+4×CC   | 96+32×CC  | Profile-specific extension header ID | Extension header length |   |    |
+-----------+-----------+--------------------------------------+-------------------------+---+----+
| 16+4×CC   | 128+32×CC | Extension header                     |                         |   |    |
|           |           | ...                                  |                         |   |    |
+-----------+-----------+--------------------------------------+-------------------------+---+----+

: RTP packet header

The RTP header has a minimum size of 12 bytes. After the header, optional header extensions may be present. This is followed by the RTP payload, the format of which is determined by the particular class of application.[26] The fields in the header are as follows:

-   VERSION: (2 bits) Indicates the version of the protocol. Current version is 2.[27]
-   P (PADDING): (1 bit) Used to indicate if there are extra padding bytes at the end of the RTP packet. Padding may be used to fill up a block of certain size, for example as required by an encryption algorithm. The last byte of the padding contains the number of padding bytes that were added (including itself).[28][29]
-   X (EXTENSION): (1 bit) Indicates presence of an _extension header_ between standard header and payload data. The extension header is application or profile specific.[30]
-   CC (CSRC COUNT): (4 bits) Contains the number of CSRC identifiers (defined below) that follow the fixed header.[31]
-   M (MARKER): (1 bit) Used at the application level and defined by a profile. If it is set, it means that the current data has some special relevance for the application.[32]
-   PT (PAYLOAD TYPE): (7 bits) Indicates the format of the payload and determines its interpretation by the application. This is specified by an RTP profile. For example, see _RTP Profile for audio and video conferences with minimal control_ ().[33]
-   SEQUENCE NUMBER: (16 bits) The sequence number is incremented by one for each RTP data packet sent and is to be used by the receiver to detect packet loss and to restore packet sequence. The RTP does not specify any action on packet loss; it is left to the application to take appropriate action. For example, video applications may play the last known frame in place of the missing frame.[34] According to , the initial value of the sequence number should be random to make known-plaintext attacks on encryption more difficult.[35] RTP provides no guarantee of delivery, but the presence of sequence numbers makes it possible to detect missing packets.[36]
-   TIMESTAMP: (32 bits) Used by the receiver to play back the received samples at appropriate time and interval. When several media streams are present, the timestamps may be independent in each stream. The granularity of the timing is application specific. For example, an audio application that samples data once every 125 µs (8 kHz, a common sample rate in digital telephony) would use that value as its clock resolution. Video streams typically use a 90 kHz clock. The clock granularity is one of the details that is specified in the RTP profile for an application.[37]
-   SSRC: (32 bits) Synchronization source identifier uniquely identifies the source of a stream. The synchronization sources within the same RTP session will be unique.[38]
-   CSRC: (32 bits each, number indicated by _CSRC count_ field) Contributing source IDs enumerate contributing sources to a stream which has been generated from multiple sources.[39]
-   HEADER EXTENSION: (optional, presence indicated by _Extension_ field) The first 32-bit word contains a profile-specific identifier (16 bits) and a length specifier (16 bits) that indicates the length of the extension (EHL = extension header length) in 32-bit units, excluding the 32 bits of the extension header.[40]


System operation

A functional network-based system includes other protocols and standards in conjunction with RTP. Protocols such as SIP, Jingle, RTSP, H.225 and H.245 are used for session initiation, control and termination. Other standards, such as H.264, MPEG and H.263, are used to encode the payload data as specified by the applicable RTP profile.[41]

An RTP sender captures the multimedia data, then encodes, frames and transmits it as RTP packets with appropriate timestamps and increasing timestamps and sequence numbers. The sender sets the _payload type_ field in accordance with connection negotiation and the RTP profile in use. The RTP receiver detects missing packets and may reorder packets. It decodes the media data in the packets according to the payload type and presents the stream to its user.[42]


Standards documents

-   , _RTP: A Transport Protocol for Real-Time Applications_, Obsoleted by .

-   , Standard 64, _RTP: A Transport Protocol for Real-Time Applications_

-   , Standard 65, _RTP Profile for Audio and Video Conferences with Minimal Control_

-   , _RTP Payload Format for 12-bit DAT Audio and 20- and 24-bit Linear Sampled Audio_

-   , _RTP Payload Format for H.264 Video_

-   , _RTP Payload Format for Text Conversation_

-   , _RTP Payload Format for Transport of MPEG-4 Elementary Streams_

-   , _RTP Payload Format for MPEG-4 Audio/Visual Streams_

-   , _RTP Payload Format for MPEG1/MPEG2 Video_

-   , _RTP Payload Format for Uncompressed Video_

-   , _RTP Payload Format for MIDI_

-   , _An Implementation Guide for RTP MIDI_

-   , _RTP Payload Format for the Opus Speech and Audio Codec_

-   , _A Taxonomy of Semantics and Mechanisms for Real-Time Transport Protocol (RTP) Sources_

-   , _RTP Payload Format for High Efficiency Video Coding (HEVC)_


See also

-   Real Time Streaming Protocol
-   Real Data Transport
-   ZRTP


Notes


References

-   -   -   -


External links

-   oRTP, RTP library from Linphone written in C
-   Henning Schulzrinne's RTP page (including FAQ)
-   GNU ccRTP
-   JRTPLIB, a C++ RTP library
-   Managed Media Aggregation: .NET C# RFC compliant implementation of RTP / RTCP written in completely managed code.

Category:Streaming Category:Application layer protocols Category:VoIP protocols Category:Audio network protocols

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

[14] : _SDP: Session Description Protocol_, M. Handley, V. Jacobson, C. Perkins, IETF (July 2006)

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

[34] Peterson, p.432

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]