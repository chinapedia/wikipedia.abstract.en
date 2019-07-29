OSI_Model_v1.svg]] The PROTOCOL STACK or NETWORK STACK is an implementation of a computer networking PROTOCOL SUITE or PROTOCOL FAMILY. Some of these terms are used interchangeably but strictly speaking, the _suite_ is the definition of the communication protocols, and the _stack_ is the software implementation of them.[1]

Individual protocols within a suite are often designed with a single purpose in mind. This modularization simplifies design and evaluation. Because each protocol module usually communicates with two others, they are commonly imagined as layers in a stack of protocols. The lowest protocol always deals with low-level interaction with the communications hardware. Each higher layer adds additional capabilities. User applications usually deal only with the topmost layers.[2]

In practical implementation, protocol stacks are often divided into three major sections: media, transport, and applications. A particular operating system or platform will often have two well-defined software interfaces: one between the media and transport layers, and one between the transport layers and applications. The media-to-transport interface defines how transport protocol software makes use of particular media and hardware types and is associated with a device driver. For example, this interface level would define how TCP/IP transport software would talk to the network interface controller. Examples of these interfaces include ODI and NDIS in the Microsoft Windows and DOS environment. The application-to-transport interface defines how application programs make use of the transport layers. For example, this interface level would define how a web browser program would talk to TCP/IP transport software. Examples of these interfaces include Berkeley sockets and System V STREAMS in Unix-like environments, and Winsock for Microsoft Windows.


General protocol suite description

  T ~ ~ ~ T
 [A]     [B]_____[C]

Imagine three computers: _A_, _B_, and _C_. _A_ and _B_ both have radio equipment, and can communicate via the airwaves using a suitable network protocol (such as IEEE 802.11). _B_ and _C_ are connected via a cable, using it to exchange data (again, with the help of a protocol, for example Point-to-Point Protocol). However, neither of these two protocols will be able to transport information from _A_ to _C_, because these computers are conceptually on different networks. An inter-network protocol is required to connect them.

One could combine the two protocols to form a powerful third, mastering both cable and wireless transmission, but a different super-protocol would be needed for each possible combination of protocols. It is easier to leave the base protocols alone, and design a protocol that can work on top of any of them (the Internet Protocol is an example). This will make two stacks of two protocols each. The inter-network protocol will communicate with each of the base protocol in their simpler language; the base protocols will not talk directly to each other.

A request on computer _A_ to send a chunk of data to _C_ is taken by the upper protocol, which (through whatever means) knows that _C_ is reachable through _B_. It, therefore, instructs the wireless protocol to transmit the data packet to _B_. On this computer, the lower layer handlers will pass the packet up to the inter-network protocol, which, on recognizing that _B_ is not the final destination, will again invoke lower-level functions. This time, the cable protocol is used to send the data to _C_. There, the received packet is again passed to the upper protocol, which (with _C_ being the destination) will pass it on to a higher protocol or application on _C_.


Examples

amitcp.svg]]

  Protocol      Layer
  ------------- ---------------------
  HTTP          Application
  TCP           Transport
  IP            Internet or network
  Ethernet      Link or data link
  IEEE 802.3u   Physical

  : Example protocol stack and corresponding layers


Spanning layer

An important feature of many communities of interoperability based on a common protocol stacks is a SPANNING LAYER. a term coined by David Clark[3]

  "Certain protocols are designed with the specific purpose of bridging differences at the lower layers, so that common agreements are not required there. Instead, the layer provides the definitions that permit translation to occur between a range of services or technologies used below. Thus, in somewhat abstract terms, at and above such a layer common standards contribute to interoperation, while below the layer translation is used. Such a layer is called a "spanning layer" in this paper. As a practical matter, real interoperation is achieved by the definition and use of effective spanning layers. But there are many different ways that a spanning layer can be crafted."

In the Internet protocol stack, the Internet Protocol Suite constitutes a spanning layer that defines a best effort service for global routing of datagrams at Layer 3. The Internet is the community of interoperation based on this spanning layer.


See also

-   Cross-layer optimization
-   DECnet
-   Hierarchical internetworking model
-   IBM Systems Network Architecture
-   Recursive Internetwork Architecture
-   Service layer
-   Signalling System No. 7
-   Wireless Application Protocol
-   X.25


References

Category:Network protocols Category:Wikipedia articles with ASCII art

[1]

[2]

[3]