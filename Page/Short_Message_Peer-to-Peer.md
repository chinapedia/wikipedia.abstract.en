SHORT MESSAGE PEER-TO-PEER (SMPP) in the telecommunications industry is an open, industry standard protocol designed to provide a flexible data communication interface for the transfer of short message data between External Short Messaging Entities (ESMEs), Routing Entities (REs) and Message Centres.[1]

SMPP is often used to allow third parties (e.g. value-added service providers like news organizations) to submit messages, often in bulk, but it may be used for SMS peering as well. SMPP is able to carry short messages including EMS, voicemail notifications, Cell Broadcasts, WAP messages including WAP Push messages (used to deliver MMS notifications), USSD messages and others. Because of its versatility and support for non-GSM SMS protocols, like UMTS, IS-95 (CDMA), CDMA2000, ANSI-136 (TDMA) and iDEN, SMPP is the most commonly used protocol for short message exchange outside SS7 networks.


History

SMPP (Short Message Peer-to-Peer) was originally designed by Aldiscon, a small Irish company that was later acquired by Logica (since 2016, after a number of changes Mavenir). The protocol was originally created by a developer, Ian J Chambers, to test the functionality of the SMSC without using SS7 test equipment to submit messages. In 1999, Logica formally handed over SMPP to the SMPP Developers Forum, later renamed as The SMS Forum and now disbanded. The SMPP protocol specifications are still available through the website which also carries a notice stating that it will be taken down at the end of 2007. As part of the original handover terms, SMPP ownership has now returned to Mavenir due to the disbanding of the SMS Forum.

To date, SMPP development is suspended and SMS Forum is disbanded. From the SMS Forum website:

  July 31, 2007 - The SMS Forum, a non-profit organization with a mission to develop, foster and promote SMS (short message service) to the benefit of the global wireless industry will disband by July 27, 2007

A press release, attached to the news, also warns that site will be suspended soon. In spite of this, the site is still mostly functioning and specifications can still be downloaded (as of 31 January 2012).

The site has ceased operation according to Cormac Long, former technical moderator and webmaster for the SMS Forum. Please contact Mavenir for the SMPP specification. The specifications are also available from the former site of the SMPP Developers Forum (predecessor to SMS Forum) at SMPP Protocol - SMS API.


Operation

Contrary to its name, the SMPP uses the client-server model of operation. The Short Message Service Center (SMSC) usually acts as a server, awaiting connections from ESMEs. When SMPP is used for SMS peering, the sending MC usually acts as a client.

The protocol is based on pairs of request/response PDUs (protocol data units, or packets) exchanged over OSI layer 4 (TCP session or X.25 SVC3) connections. The well-known port assigned by the IANA for SMPP when operating over TCP is 2775, but multiple arbitrary port numbers are often used in messaging environments.

Before exchanging any messages, a bind command must be sent and acknowledged. The bind command determines in which direction will be possible to send messages; bind_transmitter only allows client to submit messages to the server, bind_receiver means that the client will only receive the messages, and bind_transceiver (introduced in SMPP 3.4) allows message transfer in both directions. In the bind command the ESME identifies itself using system_id, system_type and password; the address_range field designed to contain ESME address is usually left empty. The bind command contains interface_version parameter to specify which version of SMPP protocol will be used.

Message exchange may be synchronous, where each peer waits for a response for each PDU being sent, or asynchronous, where multiple requests can be issued without waiting and acknowledged in a skew order by the other peer; the number of unacknowledged requests is called a _window_; for the best performance both communicating sides must be configured with the same window size.

Versions

The SMPP standard has evolved during the time. The most commonly used versions of SMPP are:

-   SMPP 3.3 the oldest used version (despite its limitations, it is still widely used); supports GSM only. All messages sent, generates immediate response.
-   SMPP 3.4 adds Tag-Length-Value (TLV) parameters, support of non-GSM SMS technologies and the transceiver support (single connections that can send and receive messages). The exchange of SMPP request and response PDUs between an ESME Transmitter and SMSC may occur synchronously or asynchronously.
-   SMPP 5.0 is the latest version of SMPP; adds support for cell broadcasting

The applicable version is passed in the interface_version parameter of a bind command.


PDU format (after version 3.4)

The SMPP PDUs are binary encoded for efficiency. They start with a header which may be followed by a body:

+------------------------+
| SMPP PDU               |
+------------------------+
| PDU Header (mandatory) |
+------------------------+
| Command                |
| length                 |
+------------------------+
| 4 octets               |
+------------------------+

PDU header

Each PDU starts with a header. The header consists of 4 fields, each of length of 4 octets:

command_length: Is the overall length of the PDU in octets (including command_length field itself); must be ≥ 16 as each PDU must contain the 16 octet header
command_id: Identifies the SMPP operation (or command)
command_status: Always has a value of 0 in requests; in responses it carries information about the result of the operation
sequence_number: Is used to correlate requests and responses within an SMPP session; allows asynchronous communication (using a sliding window method)

All numeric fields in SMPP use the big endian order, which means that the first octet is the Most Significant Byte (MSB).


Example

This is an example of the binary encoding of a 60-octet _submit_sm_ PDU. The data is shown in Hex octet values as a single dump and followed by a header and body break-down of that PDU.

This is best compared with the definition of the submit_sm PDU from the SMPP specification in order to understand how the encoding matches the field by field definition.

The value break-downs are shown with decimal in parentheses and Hex values after that. Where you see one or several hex octets appended, this is because the given field size uses 1 or more octets encoding.

Again, reading the definition of the submit_sm PDU from the spec will make all this clearer.

PDU header

'command_length', (60) ... 00 00 00 3C
'command_id', (4) ... 00 00 00 04
'command_status', (0) ... 00 00 00 00
'sequence_number', (5) ... 00 00 00 05

PDU body

'service_type', () ... 00
'source_addr_ton', (2) ... 02
'source_addr_npi', (8) ... 08
'source_addr', (555) ... 35 35 35 00
'dest_addr_ton', (1) ... 01
'dest_addr_npi', (1) ... 01
'dest_addr', (555555555) ... 35 35 35 35 35 35 35 35 35 00
'esm_class', (0) ... 00
'protocol_id', (0) ... 00
'priority_flag', (0) ... 00
'schedule_delivery_time', (0) ... 00
'validity_period', (0) ... 00
'registered_delivery', (0) ... 00
'replace_if_present_flag', (0) ... 00
'data_coding', (3) ... 03
'sm_default_msg_id', (0) ... 00
'sm_length', (15) ... 0F
'short_message', (Hello Wikipedia) ... 48 65 6C 6C 6F 20 57 69 6B 69 70 65 64 69 61

Note that the text in the short_message field must match the data_coding. When the data_coding is 8 (UCS2), the text must be in UCS-2BE (or its extension, UTF-16BE). When the data_coding indicates a 7-bit encoding, each septet is stored in a separate octet in the short_message field (with the most significant bit set to 0). SMPP 3.3 data_coding exactly copied TP-DCS values of GSM 03.38, which make it suitable only for GSM 7-bit default alphabet, UCS2 or binary messages; SMPP 3.4 introduced a new list of data_coding values:

  data_coding   Meaning
  ------------- -----------------------------------------------------------
  0             SMSC Default Alphabet (SMPP 3.4) / MC Specific (SMPP 5.0)
  1             IA5 (CCITT T.50)/ASCII (ANSI X3.4)
  2             Octet unspecified (8-bit binary)
  3             Latin 1 (ISO-8859-1)
  4             Octet unspecified (8-bit binary)
  5             JIS (X 0208-1990)
  6             Cyrillic (ISO-8859-5)
  7             Latin/Hebrew (ISO-8859-8)
  8             UCS2 (ISO/IEC-10646)
  9             Pictogram Encoding
  10            ISO-2022-JP (Music Codes)
  11            Reserved
  12            Reserved
  13            Extended Kanji JIS (X 0212-1990)
  14            KS C 5601
  15-191        reserved
  192-207       GSM MWI control - see GSM 03.38
  208-223       GSM MWI control - see GSM 03.38
  224-239       reserved
  240-255       GSM message class control - see GSM 03.38

The meaning of the data_coding=4 or 8 is the same as in SMPP 3.3. Other values in the range 1-15 are reserved in SMPP 3.3. Unfortunately, unlike SMPP 3.3, where data_coding=0 was unambiguously GSM 7-bit default alphabet, for SMPP 3.4 and higher the GSM 7-bit default alphabet is missing in this list, and data_coding=0 may differ for various Short message service centers—it may be ISO-8859-1, ASCII, GSM 7-bit default alphabet, UTF-8 or even configurable per ESME. When using data_coding=0, both sides (ESME and SMSC) must be sure they consider it the same encoding. Otherwise it is better not to use data_coding=0. It may be tricky to use GSM 7-bit default alphabet, some Short message service centers requires data_coding=0, others e.g. data_coding=241.


Quirks

Despite its wide acceptance, the SMPP has a number of problematic features:

-   No data_coding for GSM 7-bit default alphabet
-   Not standardized meaning of data_coding=0
-   Unclear support for Shift-JIS encoding
-   Incompatibility of submit_sm_resp between SMPP versions
-   Using of SMPP 3.3 SMSC Delivery Receipts, especially the Message Id format in them

No data_coding for GSM 7-bit default alphabet

Although data_coding values in SMPP 3.3 are based on the GSM 03.38, since SMPP 3.4 there is no data_coding value for GSM 7-bit alphabet (GSM 03.38). However, it is common for DCS=0 to indicate the GSM 7-bit alphabet, particularly for SMPP connections to SMSCs on GSM mobile networks.

=== Not standardized meaning of data_coding=0 ===

According to SMPP 3.4 and 5.0 the data_coding=0 means ″SMSC Default Alphabet″. Which encoding it really is, depends on the type of the SMSC and its configuration.

Unclear support for Shift-JIS encoding

One of the encodings in CDMA standard C.R1001 is Shift-JIS used for Japanese. SMPP 3.4 and 5.0 specifies three encodings for Japanese (JIS, ISO-2022-JP and Extended Kanji JIS), but none of them is identical with CDMA MSG_ENCODING 00101. It seems that the Pictogram encoding (data_coding=9) is used to carry the messages in Shift-JIS in SMPP.

Incompatibility of submit_sm_resp between SMPP versions

When a submit_sm fails, the SMSC returns a submit_sm_resp with non-zero value of command_status and ″empty″ message_id.

-   SMPP 3.3 explicitly states about the message_id field ″If absent this field must contain a single NULL byte″. The length of the PDU is at least 17 octets.
-   SMPP 3.4 contains an unfortunate note in the SUBMIT_SM_RESP section ″The submit_sm_resp PDU Body is not returned if the command_status field contains a non-zero value.″ Then the length of the PDU is 16 octets.
-   SMPP 5.0 just specifies that message_id is a mandatory parameter of the type C-Octet string of the submit_sm_resp message. According to the section 3.1.1 NULL Settings, ″A NULL string ″″ is encoded as 0x00″. The length of the PDU is at least 17 octets.

For the best compatibility, any SMPP implementation should accept both variants of negative submit_sm_resp regardless of the version of SMPP standard used for the communication.

Comment from Cormac Long (I worked on three versions of SMPP specification in Aldiscon/Logica and designed the ESME solution for Openmind Networks) The original intention of error scenarios was that no body would be returned in the PDU response. This was the standard behavior exhibited on all Aldiscon/Logica SMSC and also in most of the other vendors. When SMPP 3.4 was being taken on by the WAP forum, several clarifications were requested on whether a body should be included with NACKed response and measures were taken to clarify this in several places in the specification including the submit_sm section and also in the bind_transceiver section. What should have been done was to add the clarification that we eventually added in V5.0.. that bodies are not supposed to be included in error responses. Some vendors have been very silly in their implementations including bodies on rejected bind_transmitter responses but not on bind_transceiver responses etc. The recommendation I would make to vendors.. as suggested above.. accept both variants. But its also wise to allow yourself issue NACKed submit_sm_resp and deliver_sm_resp PDUs with and without an empty body. In the case of these two PDUs, that empty body will look like a single NULL octet at the end of the stream. The reason you may need this ability to include what I call dummy bodies with NACKed requests is that the other side of the equation may be unable or unwilling to change their implementation to tolerate the missing body.

Message ID in SMPP 3.3 SMSC Delivery Receipts

The only way how to pass delivery receipts in SMPP 3.3 is to put information in a text form to the short_message field; however, the format of the text is described in Appendix B of SMPP 3.4, although SMPP 3.4 may (and should) use receipted_message_id and message_state for the purpose. While SMPP 3.3 states that Message ID is a C-Octet String (Hex) of up to 8 characters (plus terminating '\0'), the SMPP 3.4 states that the id field in the Delivery Receipt Format is a C-Octet String (Decimal) of up to 10 characters. This splits SMPP implementations to 2 groups:

-   Implementations using the decimal representation of an integer Message Id in the id field of the Delivery Receipt body and the hexadecimal representation of an integer Message Id in message_id and receipted_message_id fields
-   Implementations using the same hexadecimal number (or even the same arbitrary string) both in message_id parameter and in the id field of the Delivery Receipt body, which strictly speaking, violates the SMPP standard


Extensibility, compatibility and interoperability

Since introduction of Tag-Length-Value (TLV) parameters in version 3.4, the SMPP may be regarded an extensible protocol. In order to achieve the highest possible degree of compatibility and interoperability any implementation should apply the Internet robustness principle: ″Be conservative in what you send, be liberal in what you accept″. It should use a minimal set of features which are necessary to accomplish a task. And if the goal is communication and not quibbling, each implementation should overcome minor nonconformities with standard:

-   Respond with a generic_nack with command_status=3 to any unrecognised SMPP command, but do not stop the communication.
-   Ignore any unrecognised, unexpected or unsupported TLV parameters.
-   The borders of PDUs are always given by the PDUs' command_length field. Any message field must not exceed the end of PDU. If a field is not properly finished, it should be treated as truncated at the end of PDU, and it should not affect further PDUs.

Information applicable to one version of SMPP can often be found in another version of SMPP; e.g. the only way how to pass delivery receipts in SMPP 3.3 is to put information in a text form to the short_message field; however, the format of the text is described in Appendix B of SMPP 3.4, although SMPP 3.4 may (and should) use receipted_message_id and message_state for the purpose.


Security

The SMPP protocol is designed on a clear-text binary protocol which needs to be considered if using for potentially sensitive information such as one-time passwords via SMS. There are, however, implementations of SMPP over secure SSL/TLS if required.


See also

-   Universal Computer Protocol/External Machine Interface (UCP/EMI)
-   Computer Interface for Message Distribution (CIMD)
-   Rich Communication Services


References


External links

-   Short Message Peer-to-Peer Protocol Specification v3.4
-   Short Message Peer-to-Peer Protocol Specification v5.0
-   SMPP v3.4 Protocol Implementation guide for GSM / UMTS
-   SMPP v3.4 Implementation Guide for WAP
-   About SMPP connection between a PC and the SMSC

Category:GSM standard Category:Mobile technology Category:Network protocols

[1] Short Message Peer-to-Peer Protocol Specification v5.0