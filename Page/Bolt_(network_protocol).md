The BOLT PROTOCOL (BOLT) is a connection oriented network protocol used for client-server communication in database applications. It operates over a TCP connection or WebSocket.

Bolt is statement-oriented, allowing a client to send messages containing a statement consisting of a single string and a set of typed parameters. The server responds to each statement with a result message and an optional stream of result records.

Developed for use in the Neo4j graph database, Bolt was heavily inspired by the binary network protocol of PostgreSQL and features a data interchange format derived from MessagePack. The protocol is published on the website https://boltprotocol.org.


History

The Bolt protocol was first introduced to the public in November 2015, during an interview conducted by Duncan Brown and published on DZone.[1] The first release of software implementing the protocol occurred in December 2015, as part of a milestone release of Neo4j Server.[2] In April 2016, Neo4j Server 3.0 was released and contained the first server implementation of the protocol, accompanied by a suite of Bolt client drivers. This release received attention from several mainstream media outlets.[3][4][5]


Versioning

The protocol supports explicit versioning and version negotiation between the client and the server. There is only one published version of the protocol: version 1.


Protocol Overview - Version 1

Messaging

Bolt-typical-interaction.png

Bolt clients and servers both send data over the connection as a sequence of messages. Each message has a type (denoted by a "signature" byte) and may include additional data. The client drives the interaction, and each message sent by the client will cause one or more response messages to be sent by the server.

Client messages:

  Type          Signature
  ------------- -----------
  INIT          0x01[6]
  RUN           0x10[7]
  DISCARD_ALL   0x2F[8]
  PULL_ALL      0x3F[9]
  ACK_FAILURE   0x0E[10]
  RESET         0x0F[11]


Server messages:

  Type      Signature
  --------- -----------
  SUCCESS   0x70[12]
  FAILURE   0x7F[13]
  IGNORED   0x7E[14]
  RECORD    0x71[15]

Message Transfer Encoding

Each message is encoded into a sequence of bytes. These bytes are transferred using a binary chunked encoding, where each chunk is preceded by an unsigned, big-endian 16-bit integer denoting the number of bytes that immediately follow. A length of 0 is used to denote the end of the message.

Failure Handling

A client may send multiple messages to a server, without first waiting for a response.[16] The server processes each message sequentially. However, as there may be logical dependencies between messages sent by the client, the server will not evaluate requests it receives after sending FAILURE in response to a preceding message. Instead, it will send an IGNORED message in reply to every client message, until the client acknowledges the failure by sending an ACK_FAILURE message.

This is similar to the failure handling and recovery in the PostgreSQL wire protocol.

Data Encoding

Bolt supports encoding for a number of different data types.

  Type                Description
  ------------------- ---------------------------------------------------------------------------------------------------------------------------------------
  Null [17]           Represents the absence of a value.
  Boolean [18]        Boolean true or false.
  Integer [19]        64-bit signed integer.
  Float [20]          64-bit floating point number.
  String [21]         UTF-8 encoded string.
  List [22]           Ordered collection of values.
  Map [23]            Unordered, keyed collection of values.
  Node [24]           A node in a Property Graph with optional properties and labels.
  Relationship [25]   A directed, typed connection between two nodes in a Property Graph. Each relationship may have properties and always has an identity.
  Path [26]           The record of a directed walk through a Property Graph, consisting of a sequence of zero or more segments.



References


External links

-   Bolt protocol specification

Category:Network protocols

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

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]