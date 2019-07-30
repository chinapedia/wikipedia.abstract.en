WEBTORRENT is a peer-to-peer (P2P) streaming torrent client written completely in JavaScript by Feross Aboukhadijeh (who also created YouTube Instant) and the team at WebTorrent and on GitHub, for use in web browsers, as well as a WebTorrent Desktop stand alone version able to bridge WebTorrent and BitTorrent serverless networks.


History

The idea behind WebTorrent is to make BitTorrent work on the web in a browser.[1] Any web browser should be able to connect to a peer-to-peer swarm, fetch content, verify that it is correct, and display it to the user – all as much as possible without centralized servers relying on a network entirely of people's browsers.[2]

Before WebTorrent the developers first tried PeerCDN (content delivery network) as a start up that sold to Yahoo in 2013. A goal of WebTorrent is to maintain compatibility with BitTorrent as much as possible. WebTorrent uses the same protocol as BitTorrent but uses a different transport. WebTorrent primarily relies on WebRTC connections, while BitTorrent uses TCP connections and UDP datagrams directly.[3]


WebTorrent Desktop

The WEBTORRENT DESKTOP bridges the two networks of WebRTC-based WebTorrent and TCP/UDP-based BitTorrent simultaneously. The BitTorrent client Vuze (formerly Azureus) less gracefully but adequately functionally incorporated WebTorrent adding simultaneous network bridging to their software. The developers used Electron that makes desktop apps using JavaScript with access to all the APIs from Chrome and Node.[4]


Functionality

Online video is the core focus as that is where WebTorrent is most useful. It is less suited for smaller files or data sets but is ideal for larger files.[5]

File availability, as with BitTorrents, is dependent on torrent seeding. If few users are sharing a file an HTTP server providing webseeding would be the fall back. There is no sharing without webseeding. This is not necessarily a bad thing. Rather than using a middleman upload site to share a large private file with another person, with WebTorrent you may directly connect without leaving traces somewhere or potentially being archived on some upload site. You simply drag and drop your file to create a magnet link you may share with your friend. Connections are already encrypted but you may add extra layers of encryption with keys to send another way. RAM limits may be managed with IndexDB.[6]


Adoption

BitChute

BitChute is a video hosting service that uses WebTorrent P2P technology[7][8] in order to diffuse, redistribute, and ease bandwidth and issues of centralized streaming and to make it much more difficult for governments and corporations to censor, disrupt, and/or block access to videos after they are uploaded and sharing.

Brave

Brave web browser and PopChest are "open source supporters" of WebTorrent, as displayed on WebTorrent's homepage.[9]

Safari

The Safari web browser is incorporating WebRTC and data channel support, as it is going to be in iOS 11, however, it will be requesting permissions from users for access to webcams according to rumours.[10]

Instant.io

You may try out the WebTorrent magnets at Instant.io.


Reception




See also

-   BitChute, uses WebTorrent
-   PeerTube, uses WebTorrent
-   Comparison of BitTorrent clients
-   InterPlanetary File System
-   List of video hosting services
    -   DailyMotion
    -   Vidme
    -   Vimeo
    -   YouTube
-   "tube" sites of the MindGeek porn monopoly
-   YouTube Instant


References


External links

-   -   WebTorrent.io
-   Instant.io for WebTorrent magnets.
-   _Demuxed - Ep. #5, WebTorrent: Bringing BitTorrent to the Web_ on YouTube, 2017-07-06, is an audio interview (not video) that starts as an excellent introduction to WebTorrent, drifts into past projects for context, then gets very technical about hacking streams, before concluding on vacuum frying banana chips.
-   BitChute.com
-   PopChest.com, The Pop Network, "the hottest [new] video platform built on the Ethereum netowrk!"

Category:2013 establishments in California Category:American websites Category:Anonymity networks Category:Application layer protocols Category:BitTorrent Category:Computer-related introductions in 2013 Category:Distributed data storage Category:Distributed file systems Category:File sharing software Category:File transfer protocols Category:Free network-related software Category:Internet privacy software Category:Internet protocols Category:Internet properties established in 2013 Category:Network protocols Category:Peer-to-peer computing Category:Peer-to-peer software Category:Video hosting Category:World Wide Web

[1]

[2]  @4:35+

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]