GNUTELLA is a large peer-to-peer network. It was the first decentralized peer-to-peer network of its kind, leading to other, later networks adopting the model.[1] It celebrated a decade of existence on March 14, 2010, and has a user base in the millions for peer-to-peer file sharing.

In June 2005, Gnutella's population was 1.81 million computers[2] increasing to over three million nodes by January 2006.[3] In late 2007, it was the most popular file-sharing network on the Internet with an estimated market share of more than 40%.[4]


History

The first client (also called Gnutella) from which the network got its name[5][6] was developed by Justin Frankel and Tom Pepper of Nullsoft in early 2000, soon after the company's acquisition by AOL. On March 14, the program was made available for download on Nullsoft's servers. The event was prematurely announced on Slashdot, and thousands downloaded the program that day.[7][8] The source code was to be released later, under the GNU General Public License (GPL); however, the original developers never got the chance to accomplish this purpose.[9]

The next day, AOL stopped the availability of the program over legal concerns and restrained Nullsoft from doing any further work on the project. This did not stop Gnutella; after a few days, the protocol had been reverse engineered, and compatible free and open source clones began to appear. This parallel development of different clients by different groups remains the _modus operandi_ of Gnutella development today.

Among the first independent Gnutella pioneers were Gene Kan and Spencer Kimball, they launched the first portal aimed to assemble the open-source community to work on Gnutella,[10][11] and also developed "GNUbile", one of the first open-source (GNU-GPL) programs to implement the Gnutella protocol.[12][13][14]

The Gnutella network is a fully distributed alternative to such semi-centralized systems as FastTrack (KaZaA) and the original Napster. The initial popularity of the network was spurred on by Napster's threatened legal demise in early 2001. This growing surge in popularity revealed the limits of the initial protocol's scalability. In early 2001, variations on the protocol (first implemented in proprietary and closed source clients) allowed an improvement in scalability. Instead of treating every user as client and server, some users were now treated as _ultrapeers_, routing search requests and responses for users connected to them.

This allowed the network to grow in popularity. In late 2001, the Gnutella client LimeWire Basic became free and open source. In February 2002, Morpheus, a commercial file sharing group, abandoned its FastTrack-based peer-to-peer software and released a new client based on the free and open source Gnutella client Gnucleus.

The word _Gnutella_ today refers not to any one project or piece of software, but to the open protocol used by the various clients.

The name is a portmanteau of _GNU_ and _Nutella_, the brand name of an Italian hazelnut flavored spread: supposedly, Frankel and Pepper ate a lot of Nutella working on the original project, and intended to license their finished program under the GNU General Public License. Gnutella is not associated with the GNU project[15] or GNU's own peer-to-peer network, GNUnet.

On October 26, 2010, the popular Gnutella client LimeWire was ordered shut down by Judge Kimba Wood of the United States District Court for the Southern District of New York when she signed a Consent Decree to which recording industry plaintiffs and LimeWire had agreed.[16] This event was the likely cause of a notable drop[17] in the size of the network, because, while negotiating the injunction, LimeWire staff had inserted remote-disabling code into the software. As the injunction came into force, users who had installed affected versions (newer than 5.5.10) were cut off from the P2P network. Since LimeWire was free software, nothing had prevented the creation of forks that omitted the disabling code, as long as LimeWire trademarks were not used. The shutdown did not affect, for example, FrostWire, a fork of LimeWire created in 2004 that carries neither the remote-disabling code nor adware.

On November 9, 2010, LimeWire was resurrected by a secret team of developers and named LimeWire Pirate Edition.[18] It was based on LimeWire 5.6 BETA. This version had its server dependencies removed and all the PRO features enabled for free.


Design

To envision how Gnutella originally worked, imagine a large circle of users _(called nodes),_ each of whom has Gnutella client software. On initial startup, the client software must bootstrap and find at least one other node. Various methods have been used for this, including a pre-existing address list of possibly working nodes shipped with the software, using updated web caches of known nodes (called _Gnutella Web Caches_), UDP host caches and, rarely, even IRC. Once connected, the client requests a list of working addresses. The client tries to connect to the nodes it was shipped with, as well as nodes it receives from other clients until it reaches a certain quota. It connects to only that many nodes, locally caching the addresses it has not yet tried and discards the addresses it tried that were invalid.

When the user wants to do a search, the client sends the request to each actively connected node. In version 0.4 of the protocol, the number of actively connected nodes for a client was quite small (around 5), so each node then forwarded the request to all its actively connected nodes, and they, in turn, forwarded the request, and so on, until the packet reached a predetermined number of _hops_ from the sender (maximum 7).

Since version 0.6 (2002[19]), Gnutella is a composite network made of leaf nodes and ultra nodes (also called ultrapeers). The leaf nodes are connected to a small number of ultrapeers (typically 3) while each ultrapeer is connected to more than 32 other ultrapeers. With this higher outdegree, the maximum number of _hops_ a query can travel was lowered to 4.

Leaves and ultrapeers use the Query Routing Protocol to exchange a Query Routing Table (QRT), a table of 64 Ki-slots and up to 2 Mi-slots consisting of hashed keywords. A leaf node sends its QRT to each of the ultrapeers it is connected to, and ultrapeers merge the QRT of all their leaves (downsized to 128 Ki-slots) plus their own QRT (if they share files) and exchange that with their own neighbors. Query routing is then done by hashing the words of the query and seeing whether all of them match in the QRT. Ultrapeers do that check before forwarding a query to a leaf node, and also before forwarding the query to a peer ultra node provided this is the last hop the query can travel.

If a search request turns up a result, the node that has the result contacts the searcher. In the classic Gnutella protocol, response messages were sent back along the route the query came through, as the query itself did not contain identifying information of the node. This scheme was later revised, so that search results now are delivered over User Datagram Protocol (UDP) directly to the node that initiated the search, usually an ultrapeer of the node. Thus, in the current protocol, the queries carry the IP address and port number of either node. This lowers the amount of traffic routed through the Gnutella network, making it significantly more scalable.

If the user decides to download the file, they negotiate the file transfer. If the node which has the requested file is not firewalled, the querying node can connect to it directly. However, if the node is firewalled, stopping the source node from receiving incoming connections, the client wanting to download a file sends it a so-called _push request_ to the server for the remote client to initiate the connection instead (to _push_ the file). At first, these push requests were routed along the original chain it used to send the query. This was rather unreliable because routes would often break and routed packets are always subject to flow control. Therefore, so-called _push proxies_ were introduced. These are usually the ultrapeers of a leaf node and they are announced in search results. The client connects to one of these _push proxies_ using an HTTP request and the proxy sends a _push request_ to leaf on behalf of the client. Normally, it is also possible to send a push request over UDP to the push proxy which is more efficient than using TCP. Push proxies have two advantages: First, ultrapeer-leaf connections are more stable than routes which makes push requests much more reliable. Second, it reduces the amount of traffic routed through the Gnutella network.

Finally, when a user disconnects, the client software saves the list of nodes that it was actively connected to and those collected from pong packets for use the next time it attempts to connect so that it becomes independent from any kind of bootstrap services.

In practice, this method of searching on the Gnutella network was often unreliable. Each node is a regular computer user; as such, they are constantly connecting and disconnecting, so the network is never completely stable. Also, the bandwidth cost of searching on Gnutella grew exponentially to the number of connected users,[20] often saturating connections and rendering slower nodes useless. Therefore, search requests would often be dropped, and most queries reached only a very small part of the network. This observation identified the Gnutella network as an unscalable distributed system, and inspired the development of distributed hash tables, which are much more scalable but support only exact-match, rather than keyword, search.

To address the problems of bottlenecks, Gnutella developers implemented a tiered system of _ultrapeers_ and _leaves_. Instead of all nodes being considered equal, nodes entering into the network were kept at the 'edge' of the network as a leaf, not responsible for any routing, and nodes which were capable of routing messages were promoted to ultrapeers, which would accept leaf connections and route searches and network maintenance messages. This allowed searches to propagate further through the network, and allowed for numerous alterations in the topology which have improved the efficiency and scalability greatly.

Additionally, gnutella adopted a number of other techniques to reduce traffic overhead and make searches more efficient. Most notable are Query Routing Protocol (QRP) and Dynamic Querying (DQ). With QRP a search reaches only those clients which are likely to have the files, so rare files searches grow vastly more efficient, and with DQ the search stops as soon as the program has acquired enough search results, which vastly reduces the amount of traffic caused by popular searches. Gnutella For Users has a vast amount of information about these and other improvements to Gnutella in user-friendly style.

One of the benefits of having Gnutella so decentralized is to make it very difficult to shut the network down and to make it a network in which the users are the only ones who can decide which content will be available. Unlike Napster, where the entire network relied on the central server, Gnutella cannot be shut down by shutting down any one node and it is impossible for any company to control the contents of the network, which is also due to the many free and open source Gnutella clients which share the network.


Protocol features and extensions

Gnutella did once operate on a purely query flooding-based protocol. The outdated Gnutella version 0.4 network protocol employs five different packet types, namely[21]

-   ping: discover hosts on network
-   pong: reply to ping
-   query: search for a file
-   query hit: reply to query
-   push: download request for firewalled servants

These are mainly concerned with searching the Gnutella network. File transfers are handled using HTTP.[22]

The development of the Gnutella protocol is currently led by the Gnutella Developers Forum (The GDF). Many protocol extensions have been and are being developed by the software vendors and free Gnutella developers of the GDF. These extensions include intelligent query routing, SHA-1 checksums, query hit transmission via UDP, querying via UDP, dynamic queries via TCP, file transfers via UDP, XML metadata, source exchange (also termed _the download mesh_) and parallel downloading in slices (swarming).[23]

There are efforts to finalize these protocol extensions in the Gnutella 0.6 specification at the Gnutella protocol development website. The Gnutella 0.4 standard, although still being the latest protocol specification since all extensions only exist as proposals so far, is outdated. In fact, it is hard or impossible to connect today with the 0.4 handshakes and according to developers in the GDF, version 0.6 is what new developers should pursue using the work-in-progress specifications.

The Gnutella protocol remains under development and in spite of attempts to make a clean break with the complexity inherited from the old Gnutella 0.4 and to design a clean new message architecture, it is still one of the most successful file-sharing protocols to date.


Software

The following tables compare general and technical information for a number of applications supporting the Gnutella network. The tables do NOT attempt to give a complete list of Gnutella clients. The tables are limited to clients that can participate in the current Gnutella network.

General specifications

+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Name                                      | Platform       | License | Project Status : active ? | Latest release        | Heritage        |
|                                           |                |         | (otherwise discontinued)  |                       |                 |
+===========================================+================+=========+===========================+=======================+=================+
| Acquisition                               | macOS          |         |                           |                       | LimeWire        |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| BearFlix                                  | Windows        |         |                           | 5.2.6.0               | BearShare       |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| BearShare                                 | Windows        |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Cabos                                     | Java           |         |                           |                       | LimeWire        |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| CitrixWire                                | Windows        |         |                           | 2014[24]              | Addax           |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| CocoGnut                                  | RISC_OS        |         |                           | 1.21 (2005-06-21)     | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| FilesWire (P2P)                           | Java           |         |                           | Beta 1.1 (2007)       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| giFT (Gnutella plug-in)                   | Cross-platform |         |                           | 0.0.11 (2006-08-06)   | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Gnucleus-GnucDNA                          | Windows        |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| gtk-gnutella                              | Cross-platform |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| KCeasy                                    | Windows        |         |                           |                       | giFT            |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Kiwi Alpha                                | Windows        |         |                           |                       | GnucDNA         |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| LimeWire                                  | Java           |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Morpheus                                  | Windows        |         |                           |                       | GnucDNA         |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Phex                                      | Java           |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Poisoned                                  | macOS          |         |                           |                       | giFT            |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Shareaza                                  | Windows        |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Symella                                   | Symbian        |         |                           |                       | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| WireShare (aka _LimeWire Pirate Edition_) | Java           |         |                           | 5.6.4.3a (2015-08-01) | LimeWire        |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+
| Zultrax                                   | Windows        |         |                           | 4.33 (April 2009)     | _Original work_ |
+-------------------------------------------+----------------+---------+---------------------------+-----------------------+-----------------+

Gnutella features

[TABLE]

Notes

-   Morpheus differs significantly and may have completely independent code from the GnucDNA engine. Morpheus can function as a _modern_ ultrapeer whereas other GnucDNA clients cannot.
-   Gnucleus and Kiwi Alpha use the GnucDNA engine.
-   BearFlix, a functionally limited version of the BearShare 5.2 series, can search only for images or videos and shared videos are limited to a relatively short length.
-   giFTcurs, Apollon, FilePipe, giFToxic, giFTui, giFTwin32, KCeasy, Poisoned, and Xfactor are GUI front-ends for the giFT engine.
-   etomi uses outdated Shareaza networking code.
-   MP3 Rocket, 360Share, LemonWire, MP3Torpedo, and DexterWire are variants of LimeWire.
-   FrostWire (up to version 4.21.8) is nearly identical to LimeWire 4.18 but versions greater than 5.00 no longer use gnutella.
-   Acquisition and Cabos are custom front-ends overlaying the LimeWire engine.
-   LimeWire Pirate Edition (5.6.2) is a resurrected version of the unreleased LimeWire 5.6.1 alpha, thus has similar features minus automatic updates (with nags) and centralized remote controls to disable core functions like searches and downloads were removed.


Gnutella2

The Gnutella2 protocol (often referred to as G2), despite its name, is not a successor protocol of Gnutella nor related to the original Gnutella project,[25] but rather is a completely different protocol that forked from the original project and piggybacked on the Gnutella name. A sore point with many Gnutella developers is that the _Gnutella2_ name conveys an upgrade or superiority, which led to a flame war. Other criticism included the use of the Gnutella network to bootstrap G2 peers and poor documentation of the G2 protocol. Additionally, the more frequent search retries of the Shareaza client, one of the initial G2 clients, could unnecessarily burden the Gnutella network.[26]

Both protocols have undergone significant changes since the fork in 2002. G2 has advantages and disadvantages compared to Gnutella. An advantage often cited is Gnutella2's hybrid search is more efficient than the original Gnutella's query flooding, which was later replaced by more efficient search methods, starting with Query Routing in 2002, which was proposed in 2001 by Limewire developers.[27][28][29] An advantage for Gnutella is that its users number in the millions,[30] whereas the G2 network is approximately an order of magnitude smaller.[31] It is difficult to compare the protocols in their current form; the individual client choice will probably have as much of an effect to an end user on either network.


See also

-   Bitzi
-   Gnutella crawler
-   GNUnet


References

-   Dye, Mark. McDonald, Rick. Rufi, Antoon W., 'Network Fundamentals', Cisco Networking Academy, Cisco Press, Ch 3. p91
-   Dye, Mark. McDonald, Rick. Rufi, Antoon W., 'Network Fundamentals', Cisco Networking Academy, Cisco Press, Ch 3. p90


External links

-   Gnutella Forums Official user support boards
-   Gnutella Protocol Development Wiki (on Internet Archive, 2009)
-   Gnutella Protocol Development Portal (on Internet Archive)
-   Gnutella official website (on Internet Archive)
-   GnuFU, _Gnutella For Users: A description of the inner workings of the gnutella network in User-Friendly Style_
-   _Regarding Gnutella_ by GNU
-   Glasnost test Gnutella traffic shaping (Max Planck Institute for Software Systems)

Gnutella Category:File sharing networks Category:Application layer protocols Category:Hash based data structures

[1]

[2] Slyck News - eDonkey2000 Nearly Double the Size of FastTrack, Thomas Mennecke for Slyck.com, June 2, 2005.

[3] On the Long-term Evolution of the Two-Tier Gnutella Overlay. Rasti, Stutzbach, Rejaie, 2006. See Figure 2a.

[4] Ars Technica Study: BitTorrent sees big growth, LimeWire still #1 P2P app Eric Bangeman, April 21, 2008.

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14] ftp://ftp.cs.umn.edu/pub/netbsd/NetBSD-current/pkgsrc/net/gnubile/README.html

[15]

[16]

[17]

[18]

[19]

[20] Why Gnutella Can't Scale. No, Really. February 2001.

[21] Dye, Mark. McDonald, Rick. Rufi, Antoon W., 'Network Fundamentals', Cisco Networking Academy, Cisco Press, Ch 3. p91

[22] Dye, Mark. McDonald, Rick. Rufi, Antoon W., 'Network Fundamentals', Cisco Networking Academy, Cisco Press, Ch 3. p90

[23]

[24]

[25] Gnutella vs. Gnutella2, Part 2 Thomas Mennecke for Slyck.com, February 25, 2003.

[26] Gnutella vs. Gnutella2, Part 1 Thomas Mennecke for Slyck.com, February 25, 2003

[27] A comparison of Peer-to-Peer search methods Dimitrios Tsoumakos, 2003

[28] Query Routing for the Gnutella Network proposal Christopher Rohrs, 2001-12-18

[29] Query Routing for the Gnutella Network 1.0 Christopher Rohrs, 2002-05-16

[30]

[31] G2 Network Statistics Population ~200,000 January 2010.