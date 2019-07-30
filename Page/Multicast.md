In computer networking, MULTICAST is group communication[1] where data transmission is addressed to a group of destination computers simultaneously. Multicast can be one-to-many or many-to-many distribution.[2] Multicast should not be confused with physical layer point-to-multipoint communication.

Group communication may either be _application layer multicast_[3] or _network assisted multicast_, where the latter makes it possible for the source to efficiently send to the group in a single transmission. Copies are automatically created in other network elements, such as routers, switches and cellular network base stations, but only to network segments that currently contain members of the group. Network assisted multicast may be implemented at the data link layer using one-to-many addressing and switching such as Ethernet multicast addressing, Asynchronous Transfer Mode (ATM), point-to-multipoint virtual circuits (P2MP)[4] or Infiniband multicast. Network assisted multicast may also be implemented at the Internet layer using IP multicast. In IP multicast the implementation of the multicast concept occurs at the IP routing level, where routers create optimal distribution paths for datagrams sent to a multicast destination address.

Multicast is often employed in Internet Protocol (IP) applications of streaming media, such as IPTV and multipoint videoconferencing.


Ethernet multicast

Ethernet frames with a value of 1 in the least-significant bit of the first octet of the destination address are treated as multicast frames and are flooded to all points on the network. This mechanism constitutes multicast at the data link layer. This mechanism is used by IP multicast to achieve one-to-many transmission for IP on Ethernet networks. Modern Ethernet controllers filter received packets to reduce CPU load, by looking up the hash of a multicast destination address in a table, initialized by software, which controls whether a multicast packet is dropped or fully received.


IP multicast

IP multicast is a technique for one-to-many communication over an IP network. The destination nodes send Internet Group Management Protocol _join_ and _leave_ messages, for example in the case of IPTV when the user changes from one TV channel to another. IP multicast scales to a larger receiver population by not requiring prior knowledge of who or how many receivers there are. Multicast uses network infrastructure efficiently by requiring the source to send a packet only once, even if it needs to be delivered to a large number of receivers. The nodes in the network take care of replicating the packet to reach multiple receivers only when necessary.

The most common transport layer protocol to use multicast addressing is User Datagram Protocol (UDP). By its nature, UDP is not reliable—messages may be lost or delivered out of order. By adding loss detection and re-transmission mechanisms, reliable multicast has been implemented on top of UDP or IP by various middleware products, e.g. those that implement the Real-Time Publish-Subscribe (RTPS) Protocol of the Object Management Group (OMG) Data Distribution Service (DDS) standard, as well as by special transport protocols such as Pragmatic General Multicast (PGM).


Application layer multicast

Application layer multicast overlay services are not based on IP multicast or data link layer multicast. Instead they use multiple unicast transmissions to simulate a multicast. These services are designed for application-level group communication. Internet Relay Chat (IRC) implements a single spanning tree across its overlay network for all conference groups.[5] The lesser known PSYC technology uses custom multicast strategies per conference.[6] Some peer-to-peer technologies employ the multicast concept known as peercasting when distributing content to multiple recipients.

Explicit multi-unicast (Xcast) is an alternate multicast strategy that includes addresses of all intended destinations within each packet. As such, given maximum transmission unit limitations, Xcast cannot be used for multicast groups with many destinations. The Xcast model generally assumes that stations participating in the communication are known ahead of time, so that distribution trees can be generated and resources allocated by network elements in advance of actual data traffic.[7]


Multicast over wireless networks and cable-TV

Wireless communications (with exception to point-to-point radio links using directional antennas) are inherently broadcasting media. However, the communication service provided may be unicast, multicast as well as broadcast, depending on if the data is addressed to one, to a group or to all receivers in the covered network, respectively.

In digital television, the concept of multicast service sometimes is used to refer to content protection by broadcast encryption, i.e. encrypted content over a simplex broadcast channel only addressed to paying viewers (pay television). In this case, data is broadcast (or distributed) to all receivers, but only addressed to a specific group.

The concept of _interactive multicast_, for example using IP multicast, may be used over TV broadcast networks to improve efficiency, offer more TV programs, or reduce the required spectrum. Interactive multicast implies that TV programs are sent only over transmitters where there are viewers, and that only the most popular programs are transmitted. It relies on an additional interaction channel (a back-channel or return channel), where user equipment may send join and leave messages when the user changes TV channel. Interactive multicast has been suggested as an efficient transmission scheme in DVB-H and DVB-T2 terrestrial digital television systems,[8] A similar concept is _switched broadcast_ over cable-TV networks, where only the currently most popular content is delivered in the cable-TV network.[9] Scalable video multicast in an application of interactive multicast, where a subset of the viewers receive additional data for high-resolution video.

TV gateways converts Satellite (DVB-S, DVB-S2), Cable (DVB-C, DVB-C2) and Terrestrial television (DVB-T, DVB-T2) to IP for distribution using unicast and multicast in home, hospitality and enterprise applications

Another similar concept is Cell-TV, and implies TV distribution over 3G cellular networks using the network-assisted multicasting offered by the Multimedia Broadcast Multicast Service (MBMS) service, or over 4G/LTE cellular networks with the eMBMS (enhanced MBMS) service.


See also

-   Anycast
-   Any-source multicast
-   Broadcast address
-   Comparison of streaming media systems
-   Content delivery network
-   Flooding algorithm
-   Network speaker
-   Internet television
-   List of streaming media systems
-   Mbone, experimental _multicast backbone_ network
-   Multicast address
-   Multicast lightpaths
-   Non-broadcast multiple-access network
-   Packet forwarding
-   Push technology
-   Session Announcement Protocol
-   Source-specific multicast
-   Broadcast, Unknown-Unicast and Multicast traffic


References

Category:Internet architecture Category:Internet broadcasting Category:Television terminology

[1] Media-communication based on Application-Layer Multicast

[2] Lawrence Harte, _Introduction to Data Multicasting_, Althos Publishing 2008.

[3]

[4]

[5] RFC 1324 2.5.1 Size, IETF.

[6] .

[7]

[8] M. Eriksson, S.M. Hasibur Rahman, F. Fraille, M. Sjöström, ”Efficient Interactive Multicast over DVB-T2 - Utilizing Dynamic SFNs and PARPS”, 2013 IEEE International Conference on Computer and Information Technology (BMSB’13), London, UK, June 2013.

[9] N. Sinha, R. Oz and S. V. Vasudevan, “The statistics of switched broadcast”, Proceedings of the SCTE 2005 Conference on Emerging Technologies, Tampa, FL, USA, January 2005