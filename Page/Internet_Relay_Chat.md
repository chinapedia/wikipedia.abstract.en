INTERNET RELAY CHAT (IRC) is an application layer protocol that facilitates communication in the form of text. The chat process works on a client/server networking model. IRC clients are computer programs that users can install on their system or web based applications running either locally in the browser or on a 3rd party server. These clients communicate with chat servers to transfer messages to other clients.[1] IRC is mainly designed for group communication in discussion forums, called channels,[2] but also allows one-on-one communication via private messages[3] as well as chat and data transfer,[4] including file sharing.[5]

Client software is available for every major operating system that supports Internet access.[6] As of April 2011, the top 100 IRC networks served more than half a million users at a time,[7] with hundreds of thousands of channels[8] operating on a total of roughly 1,500 servers[9] out of roughly 3,200 servers worldwide.[10] IRC usage has been declining steadily since 2003, losing 60% of its users (from 1 million to about 400,000 in 2012) and half of its channels (from half a million in 2003).[11]


 History

Beginning

IRC was created by Jarkko Oikarinen in August 1988 to replace a program called MUT (MultiUser Talk) on a BBS called OuluBox at the University of Oulu in Finland, where he was working at the Department of Information Processing Science. Jarkko intended to extend the BBS software he administered, to allow news in the Usenet style, real time discussions and similar BBS features. The first part he implemented was the chat part, which he did with borrowed parts written by his friends Jyrki Kuoppala and Jukka Pihl. The first IRC network was running on a single server named tolsun.oulu.fi.[12] Oikarinen found inspiration in a chat system known as Bitnet Relay, which operated on the BITNET.[13]

Jyrki Kuoppala pushed Jarkko to ask Oulu University to free the IRC code so that it also could be run outside of Oulu, and after they finally got it released, Jyrki Kuoppala immediately installed another server. This was the first "irc network". Jarkko got some friends at the Helsinki University and Tampere University to start running IRC servers when his number of users increased and other universities soon followed. At this time Jarkko realized that the rest of the BBS features probably wouldn't fit in his program.[14]

Jarkko got in touch with people at the University of Denver and Oregon State University. They had their own IRC network running and wanted to connect to the Finnish network. They had obtained the program from one of Jarkko's friends, Vijay Subramaniam—the first non-Finnish person to use IRC. IRC then grew larger and got used on the entire Finnish national network—Funet—and then connected to Nordunet, the Scandinavian branch of the Internet. In November 1988, IRC had spread across the Internet and in the middle of 1989, there were some 40 servers worldwide.[15]

EFnet

In August 1990, the first major disagreement took place in the IRC world. The "A-net" (Anarchy net) included a server named eris.berkeley.edu. It was all open, required no passwords and had no limit on the number of connects. As Greg "wumpus" Lindahl explains: "it had a wildcard server line, so people were hooking up servers and nick-colliding everyone". The "Eris Free Network", EFnet, made the eris machine the first to be Q-lined (Q for quarantine) from IRC. In wumpus' words again: "Eris refused to remove that line, so I formed EFnet. It wasn't much of a fight; I got all the hubs to join, and almost everyone else got carried along." A-net was formed with the eris servers, EFnet was formed with the non-eris servers. History showed most servers and users went with EFnet. Once ANet disbanded, the name EFnet became meaningless, and once again it was the one and only IRC network.[16]

It is around that time that IRC was used to report on the 1991 Soviet coup d'état attempt throughout a media blackout.[17] It was previously used in a similar fashion during the Gulf War.[18] Chat logs of these and other events are kept in the ibiblio archive.[19]

The Undernet fork

Another fork effort, the first that really made a big and lasting difference, was initiated by 'Wildthang' in the U.S. October 1992 (it forked off the EFnet ircd version 2.8.10). It was meant to be just a test network to develop bots on but it quickly grew to a network "for friends and their friends". In Europe and Canada a separate new network was being worked on and in December the French servers connected to the Canadian ones, and by the end of the month, the French and Canadian network was connected to the US one, forming the network that later came to be called "The Undernet".[20]

The "undernetters" wanted to take ircd further in an attempt to make it less bandwidth consumptive and to try to sort out the channel chaos (netsplits and takeovers) that EFnet started to suffer from. For the latter purpose, the Undernet implemented timestamps, new routing and offered the CService—a program that allowed users to register channels and then attempted to protect them from troublemakers. The very first server list presented, from February 15, 1993, includes servers from USA, Canada, France, Croatia and Japan. On August 15, the new user count record was set to 57 users.[21]

Standardization

In May 1993, RFC 1459[22] was published and details a simple protocol for client/server operation, channels, one-to-one and one-to-many conversations.[23] It is notable that a significant number of extensions like CTCP, colors and formats are not included in the protocol specifications, nor is character encoding,[24] which led various implementations of servers and clients to diverge. In fact, software implementation varied significantly from one network to the other, each network implementing their own policies and standards in their own code bases.

The DALnet fork

During the summer of 1994, the Undernet was itself forked. The new network was called DALnet (named after its founder: dalvenjah), formed for better user service and more user and channel protections. One of the more significant changes in DALnet was use of longer nicknames (the original ircd limit being 9 letters). DALnet ircd modifications were made by Alexei "Lefler" Kosut. DALnet was thus based on the Undernet ircd server, although the DALnet pioneers were EFnet abandoners. According to James Ng the initial DALnet people were "ops in #StarTrek sick from the constant splits/lags/takeovers/etc".[25]

DALnet quickly offered global WallOps (IRCop messages that can be seen by users who are +w (/mode NickName +w)), longer nicknames, Q:Lined nicknames (nicknames that cannot be used i.e. ChanServ, IRCop, NickServ, etc.), global K:Lines (ban of one person or an entire domain from a server or the entire network), IRCop only communications: GlobOps, +H mode showing that an IRCop is a "helpop" etc. Much of DALnet's new functions were written in early 1995 by Brian "Morpher" Smith and allow users to own nicknames, control channels, send memos, and more.[26]

The IRCnet fork or the Great Split

In July 1996, after months of flame wars and discussions on the mailing list, there was yet another split due to disagreement in how the development of the ircd should evolve. Most notably, the "european" (most of those servers were in Europe) side that later named itself IRCnet argued for nick and channel delays where the EFnet side argued for timestamps.[27] There were also disagreements about policies: the European side had started to establish a set of rules directing what IRCops could and could not do, a point of view opposed by the US side.[28]

Most (not all) of the IRCnet servers were in Europe, while most of the EFnet servers were in the US. This event is also known as "The Great Split" in many IRC societies. EFnet has since (as of August 1998) grown and passed the number of users it had then. In the (northern) autumn of the year 2000, EFnet had some 50,000 users and IRCnet 70,000.[29]

Present day

After its golden era during the 1990s and early 2000s (240,000 users on QuakeNet in 2004), IRC has seen a significant decline, losing around 60% of users between 2003 and 2012, with users moving to more modern social media platforms like Facebook or Twitter,[30] but also to open platforms like XMPP which was developed in 1999. Certain networks like Freenode have not followed the overall trend and have more than quadrupled in size during the same period.[31] As of 2016, Freenode is the largest IRC network with around 90,000 users.[32]

As of 2016, a new standardization effort is under way under a working group called IRCv3, which focuses on more advanced client features like instant notifications, better history support and improved security.[33]


Technical information

, an IRC client for GTK environments.]] . Shown are two IRC channels and a private conversation with the software author.]] IRC is an open protocol that uses TCP[34] and, optionally, TLS. An IRC server can connect to other IRC servers to expand the IRC network.[35] Users access IRC networks by connecting a client to a server.[36] There are many client implementations, such as mIRC, HexChat and irssi, and server implementations, e.g. the original IRCd. Most IRC servers do not require users to register an account but a nick (nickname) is required before being connected.[37]

IRC was originally a plain text protocol[38] (although later extended), which on request was assigned port 194/TCP by IANA.[39] However, the _de facto_ standard has always been to run IRC on 6667/TCP[40] and nearby port numbers (for example TCP ports 6660–6669, 7000)[41] to avoid having to run the IRCd software with root privileges.

The protocol specified that characters were 8-bit but did not specify the character encoding the text was supposed to use.[42] This can cause problems when users using different clients and/or different platforms want to converse.

All client-to-server IRC protocols in use today are descended from the protocol implemented in the irc2.4.0 version of the IRC2 server, and documented in RFC 1459. Since RFC 1459 was published, the new features in the irc2.10 implementation led to the publication of several revised protocol documents (RFC 2810, RFC 2811, RFC 2812 and RFC 2813); however, these protocol changes have not been widely adopted among other implementations.

Although many specifications on the IRC protocol have been published, there is no official specification, as the protocol remains dynamic. Virtually no clients and very few servers rely strictly on the above RFCs as a reference.

Microsoft made an extension for IRC in 1998 via the proprietary IRCX.[43] They later stopped distributing software supporting IRCX, instead developing the proprietary MSNP.

The standard structure of a network of IRC servers is a tree.[44] Messages are routed along only necessary branches of the tree but network state is sent to every server[45] and there is generally a high degree of implicit trust between servers. This architecture has a number of problems. A misbehaving or malicious server can cause major damage to the network[46] and any changes in structure, whether intentional or a result of conditions on the underlying network, require a net-split and net-join. This results in a lot of network traffic and spurious quit/join messages to users[47] and temporary loss of communication to users on the splitting servers. Adding a server to a large network means a large background bandwidth load on the network and a large memory load on the server. Once established however, each message to multiple recipients is delivered in a fashion similar to multicast, meaning each message travels a network link exactly once.[48] This is a strength in comparison to non-multicasting protocols such as Simple Mail Transfer Protocol (SMTP) or Extensible Messaging and Presence Protocol (XMPP).

An IRC daemon can also be used on a local area network (LAN). IRC can thus be used to facilitate communication between people within the local area network (internal communication).[49][50]

Commands and replies

IRC has a line-based structure. Clients send single-line messages to the server,[51] receive replies to those messages[52] and receive copies of some messages sent by other clients. In most clients, users can enter commands by prefixing them with a '/'. Depending on the command, these may either be handled entirely by the client, or (generally for commands the client does not recognize) passed directly to the server, possibly with some modification.

Due to the nature of the protocol, automated systems cannot always correctly pair a sent command with its reply with full reliability and are subject to guessing.[53]

Channels

The basic means of communicating to a group of users in an established IRC session is through a _channel_.[54] Channels on a network can be displayed using the IRC command _LIST_,[55] which lists all currently available channels that do not have the modes +s or +p set, on that particular network.

Users can _join_ a channel using the _JOIN_ command,[56] in most clients available as _/join #channelname_. Messages sent to the joined channels are then relayed to all other users.[57]

Channels that are available across an entire IRC network are prefixed with a '#', while those local to a server use '&'.[58] Other less common channel types include '+' channels—'modeless' channels without operators —[59] and '!' channels, a form of timestamped channel on normally non-timestamped networks.[60]

Modes

Users and channels may have _modes_ that are represented by single case-sensitive letters[61] and are set using the _MODE_ command.[62] User modes and channel modes are separate and can use the same letter to mean different things (e.g. user mode "i" is invisible mode while channel mode "i" is invite only.[63]) Modes are usually set and unset using the mode command that takes a target (user or channel), a set of modes to set (+) or unset (-) and any parameters the modes need.

Some but not all channel modes take parameters and some channel modes apply to a user on a channel or add or remove a mask (e.g. a ban mask) from a list associated with the channel rather than applying to the channel as a whole.[64] Modes that apply to users on a channel have an associated symbol that is used to represent the mode in names replies[65] (sent to clients on first joining a channel[66] and use of the names command) and in many clients also used to represent it in the client's displayed list of users in a channel or to display an own indicator for a user's modes.

In order to correctly parse incoming mode messages and track channel state the client must know which mode is of which type and for the modes that apply to a user on a channel which symbol goes with which letter. In early implementations of IRC this had to be hard-coded in the client but there is now a de facto standard extension to the protocol called ISUPPORT that sends this information to the client at connect time using numeric 005.[67][68]

There is a small design fault in IRC regarding modes that apply to users on channels: the names message used to establish initial channel state can only send one such mode per user on the channel,[69] but multiple such modes can be set on a single user. For example, if a user holds both operator status (+o) and voice status (+v) on a channel, a new client will be unable to see the mode with less priority (i.e. voice). Workarounds for this are possible on both the client and server side but none are widely implemented.

Standard (RFC 1459) modes

  Letter   Symbol   Description
  -------- -------- -----------------------------------------------------------------------------
  I                 Invisible—cannot be seen without a common channel or knowing the exact name
  S                 Receives server notices
  W                 Receives wallops{{cite IETF
  O                 User is an IRC operator (ircop)

  : User modes

  Letter   Symbol   Parameter(s)                                       Description
  -------- -------- -------------------------------------------------- ------------------------------------------------------------------------------------------------------------
  O        @        Name of affected user                              Channel operator—can change channel modes and kick users out of the channel among other things
  S                                                                    Secret channel—not shown in channel list or user whois except to users already on the channel
  P                                                                    Private channel—listed in channel list as "prv" according to RFC 1459
  N                                                                    Users cannot send messages to the channel externally
  M                                                                    Channel is moderated (only those who hold operator or voice status on the channel can send messages to it)
  I                                                                    Only users with invites may enter the channel.
  T                                                                    Only operators can change the channel topic.
  L                 Limit number                                       Limits number of users able to be on channel (when full, no new users can join)
  B                 Ban mask (nick!user@host with wildcards allowed)   Bans hostmasks from channel
  V        +        Name of affected user                              Gives a user voice status on channel (see +m above)
  K                 New channel key                                    Sets a channel key such that only users knowing the key can enter

  : Channel modes

Many daemons and networks have added extra modes or modified the behavior of modes in the above list.[70][71][72][73]

Channel Operators

A _Channel Operator_ is a client on an IRC channel that manages the channel. IRC Channel Operators can be easily seen by the a symbol or icon next to their name (varies by client implementation, commonly a "@" symbol prefix, a green circle, or a Latin letter "+o"/"o"). On most networks, an operator can:

-   Kick a user
-   Ban a user
-   Give another user IRC Channel Operator Status or IRC Channel Voice Status.
-   Change the IRC Channel topic while channel mode +t is set.
-   Change the IRC Channel Mode locks.

IRC operators

There are also users who maintain elevated rights on their local server, or the entire network; these are called IRC operators,[74] sometimes shortened to IRCops or Opers (not to be confused with channel operators). As the implementation of the IRCd varies, so do the privileges of the IRC operator on the given IRCd. RFC 1459[75] claims that IRC operators are "a necessary evil" to keep clean state of the network, and as such they need to be able to disconnect and reconnect servers. Additionally, to prevent malicious users or even harmful automated programs from entering IRC, IRC operators are usually allowed to disconnect clients and completely ban IP addresses or complete subnets. Networks that carry services (NickServ et al.) usually allow their IRC operators also to handle basic "ownership" matters. Further privileged rights may include overriding channel bans (being able to join channels they would not be allowed to join, if they were not opered), being able to op themselves on channels where they would not be able without being opered, being auto-opped on channels always and so forth.

Hostmasks

A hostmask is a unique identifier of an IRC client connected to an IRC server.[76][77] IRC servers, services, and other clients including bots can use it to identify a specific IRC session.

The format of a hostmask is nick!user@host. The hostmask looks similar to, but should not be confused with an e-mail address.

The nick part is the nickname chosen by the user and may be changed while connected. The user part is the username reported by ident on the client.[78] If ident is not available on the client, the username specified when the client connected is used after being prefixed with a tilde.[79]

The host part is the hostname the client is connecting from. If the IP address of the client cannot be resolved to a valid hostname by the server, it is used instead of the hostname.

Because of the privacy implications of exposing the IP address or hostname of a client, some IRC daemons also provide privacy features, such as InspIRCD or UnrealIRCd's "+x" mode. This hashes a client IP address or masks part of a client's hostname, making it unreadable to users other than IRCops. Users may also have the option of requesting a "virtual host" (or "vhost"), to be displayed in the hostmask to allow further anonymity. Some IRC networks such as Freenode use these as "cloaks" to indicate that a user is affiliated with a group or project.[80]


Challenges

Issues in the original design of IRC were the amount of shared state data[81][82] being a limitation on its scalability,[83] the absence of unique user identifications leading to the nickname collision problem,[84] lack of protection from netsplits by means of cyclic routing,[85][86] the trade-off in scalability for the sake of real-time user presence information,[87] protocol weaknesses providing a platform for abuse,[88] no transparent and optimizable message passing,[89] and no encryption.[90] Some of these issues have been addressed in _Modern IRC_.

Attacks

Because IRC connections are usually unencrypted and typically span long time periods, they are an attractive target for DoS/DDoS attackers and hackers. Because of this, careful security policy is necessary to ensure that an IRC network is not susceptible to an attack such as a takeover war. IRC networks may also K-line or G-line users or servers that have a harming effect.

Some IRC servers support SSL/TLS connections for security purposes. This helps stop the use of packet sniffer programs to obtain the passwords of IRC users, but has little use beyond this scope due to the public nature of IRC channels. SSL connections require both client and server support (that may require the user to install SSL binaries and IRC client specific patches or modules on their computers). Some networks also use SSL for server to server connections, and provide a special channel flag (such as +S) to only allow SSL-connected users on the channel, while disallowing operator identification in clear text, to better utilize the advantages that SSL provides.[91][92]

IRC served as an early laboratory for many kinds of Internet attacks, such as using fake ICMP unreachable messages to break TCP-based IRC connections (nuking) to annoy users or facilitate takeovers.

Abuse prevention

One of the most contentious technical issues surrounding IRC implementations, which survives to this day, is the merit of "Nick/Channel Delay" vs. "Timestamp" protocols. Both methods exist to solve the problem of denial-of-service attacks, but take very different approaches. The problem with the original IRC protocol as implemented was that when two servers split and rejoined, the two sides of the network would simply merge their channels. If a user could join on a "split" server, where a channel that existed on the other side of the network was empty, and gain operator status, they would become a channel operator of the "combined" channel after the netsplit ended; if a user took a nickname that existed on the other side of the network, the server would kill both users when rejoining (i.e., 'nick-collision'). This was often abused to "mass-kill" all users on a channel, thus creating "opless" channels where no operators were present to deal with abuse. Apart from causing problems within IRC, this encouraged people to conduct denial of service attacks against IRC servers in order to cause netsplits, which they would then abuse.

Nick/channel delay

The nick/channel delay (abbreviated ND/CD) solution to this problem is very simple. After a user signs off and the nickname becomes available, or a channel ceases to exist because all its users parted (as often happens during a netsplit), the server will not allow any user to use that nickname or join that channel, until a certain period of time (the _delay_) has passed. The idea behind this is that even if a netsplit occurs, it is useless to an abuser because they cannot take the nickname or gain operator status on a channel, and thus no collision of a nickname or 'merging' of a channel can occur. To some extent, this inconveniences legitimate users, who might be forced to briefly use a different name after rejoining (appending an underscore is popular).

Timestamping

The alternative, the timestamp or _TS_ protocol, takes a different approach. Every nickname and channel on the network is assigned a timestampthe date and time when it was created. When a netsplit occurs, two users on each side are free to use the same nickname or channel, but when the two sides are joined, only one can survive. In the case of nicknames, the newer user, according to their TS, is killed; when a channel collides, the members (users on the channel) are merged, but the channel operators on the "losing" side of the split lose their channel operator status.

TS is a much more complicated protocol than ND/CD, both in design and implementation, and despite having gone through several revisions, some implementations still have problems with "desyncs" (where two servers on the same network disagree about the current state of the network), and allowing too much leniency in what was allowed by the 'losing' side. Under the original TS protocols, for example, there was no protection against users setting bans or other modes in the losing channel that would then be merged when the split rejoined, even though the users who had set those modes lost their channel operator status. Some modern TS-based IRC servers have also incorporated some form of ND and/or CD in addition to timestamping in an attempt to further curb abuse.

Most networks today use the timestamping approach. The timestamp versus ND/CD disagreements caused several servers to split away from EFnet and form the newer IRCnet. After the split, EFnet moved to a TS protocol, while IRCnet used ND/CD.

SAVE

In recent versions of the IRCnet ircd, as well as ircds using the TS6 protocol (including Charybdis), ND has been extended/replaced by a mechanism called SAVE. This mechanism assigns every client a UID upon connecting to an IRC server. This ID starts with a number, which is forbidden in nicks (although some ircds, namely IRCnet and InspIRCd, allow clients to switch to their own UID as the nickname).

If two clients with the same nickname join from different sides of a netsplit ("nick collision"), the first server to see this collision will force _both_ clients to change their nick to their UID, thus saving both clients from being disconnected. On IRCnet, the nickname will also be locked for some time (ND) to prevent both clients from changing back to the original nickname, thus colliding again.


Networks

server on display near the University of Oulu computer centre. (2001)]]

There are thousands of running IRC networks in the world. They run various implementations of IRC servers, and are administered by various groups of IRC operators, but the protocol exposed to IRC users is very similar, and all IRC networks can be accessed by the same client software, although there might be slight incompatibilities and limited functionality due to the differing server software implementations.

The largest IRC networks have traditionally been grouped as the "Big Four"[93][94][95][96] a designation for networks that top the statistics. The Big Four networks change periodically, but due to the community nature of IRC there are a large number of other networks for users to choose from.

Historically the "Big Four" were:[97][98][99]

-   EFnet
-   IRCnet
-   Undernet
-   DALnet

IRC reached 6 million simultaneous users in 2001 and 10 million users in 2003, dropping to 371k in 2018.

As of October 2018 the largest IRC networks are:

-   freenode – around 90k users at peak hours
-   IRCnet – around 30k users at peak hours
-   EFnet – around 18k users at peak hours
-   Undernet – around 17k users at peak hours
-   QuakeNet – around 15k users at peak hours
-   Rizon – around 14k users at peak hours
-   OFTC – around 13k users at peak hours
-   DALnet – around 8k users at peak hours

Today, the top 100 IRC networks have around 370k users connected at peak hours.[100]

Timeline


URI scheme

There are three recognized uniform resource identifier (URI) schemes for Internet Relay Chat: irc, ircs, and irc6.[101] When supported, they allow hyperlinks of various forms, including

irc://<host>[:<port>]/[<channel>[?<channel_keyword>]]
ircs://<host>[:<port>]/[<channel>[?<channel_keyword>]]
irc6://<host>[:<port>]/[<channel>[?<channel_keyword>]]

(where items enclosed within brackets ([,]) are optional) to be used to (if necessary) connect to the specified host (or network, if known to the IRC client) and join the specified channel.[102] (This can be used within the client itself, or from another application such as a Web browser). irc is the default URI, irc6 specifies a connection to be made using IPv6, and ircs specifies a secure connection.

Per the specification, the usual hash symbol (#) will be prepended to channel names that begin with an alphanumeric character—allowing it to be omitted. Some implementations (for example, mIRC) will do so _unconditionally_ resulting in a (usually unintended) extra (for example, ##channel), if included in the URL.

Some implementations allow multiple channels to be specified, separated by commas.1


Clients

Client software

(green), bots (blue) and bouncers (orange)]]

Client software exists for various operating systems or software packages, as well as web-based or inside games. Many different clients are available for the various operating systems, including Windows, Unix and Linux, Mac OS X and mobile operating systems (such as iOS and Android). On Windows, mIRC is one of the most popular clients.[103]

Some programs which are extensible through plug-ins also serve as platforms for IRC clients. For instance, a client called ERC, written entirely in Emacs Lisp, is included in v.22.3 of Emacs. Therefore, any platform that can run Emacs can run ERC.

A number of web browsers have built-in IRC clients, such as Opera (version 12.17 and earlier)[104] and the ChatZilla add-on for Mozilla Firefox (included as a built-in component of SeaMonkey). Web-based clients, such as Mibbit and open source KiwiIRC, can run in most browsers.

Games such as _War§ow_,[105] _Unreal Tournament_ (up to Unreal Tournament 2004),[106] _Uplink_,[107] _Spring Engine_-based games, 0 A.D. and _ZDaemon_ have included IRC.[108]

Ustream's chat interface is IRC with custom authentication[109] as well as Twitch.tv's (formerly Justin.tv).[110][111]

Bots

A typical use of bots in IRC is to provide IRC services or specific functionality within a channel such as to host a chat-based game or provide notifications of external events. However some IRC bots are used to launch malicious attacks such as denial of service, spamming, or exploitation.[112]

Bouncer

A program that runs as a daemon on a server and functions as a persistent proxy is known as a BNC or bouncer. The purpose is to maintain a connection to an IRC server, acting as a relay between the server and client, or simply to act as a proxy. Should the client lose network connectivity, the BNC may stay connected and archive all traffic for later delivery, allowing the user to resume their IRC session without disrupting their connection to the server.[113]

Furthermore, as a way of obtaining a bouncer-like effect, an IRC client (typically text-based, for example Irssi) may be run on an always-on server to which the user connects via ssh. This also allows devices that only have ssh functionality, but no actual IRC client installed themselves, to connect to the IRC, and it allows sharing of IRC sessions.[114]

To keep the IRC client from quitting when the ssh connection closes, the client can be run inside a terminal multiplexer such as GNU Screen or tmux, thus staying connected to the IRC network(s) constantly and able to log conversation in channels that the user is interested in, or to maintain a channel's presence on the network. Modelled after this setup, in 2004 an IRC client following the client-server model, called Smuxi, was launched.[115][116]


Search engines

There are numerous search engines available to aid the user in finding what they are looking for on IRC.[117][118] Generally the search engine consists of two parts, a "back-end" (or "spider/crawler") and a front-end "search engine".

The back-end (spider/webcrawler) is the work horse of the search engine. It is responsible for crawling IRC servers to index the information being sent across them. The information that is indexed usually consists solely of channel text (text that is publicly displayed in public channels). The storage method is usually some sort of relational database, like MySQL or Oracle.

The front-end "search engine" is the user interface to the database. It supplies users with a way to search the database of indexed information to retrieve the data they are looking for. These front-end search engines can also be coded in numerous programming languages.

Most search engines have their own spider that is a single application responsible for crawling IRC and indexing data itself; however, others are "user based" indexers. The latter rely on users to install their "add-on" to their IRC client; the add-on is what sends the database the channel information of whatever channels the user happens to be on.

Many users have implemented their own ad hoc search engines using the logging features built into many IRC clients. These search engines are usually implemented as bots and dedicated to a particular channel or group of associated channels.


Modern IRC

IRC has changed much over its life on the Internet. New server software has added a multitude of new features.

-   Services: Network-operated bots to facilitate registration of nicknames and channels, sending messages for offline users and network operator functions.
-   Extra modes: While the original IRC system used a set of standard user and channel modes, new servers add many new modes for features such as removing color codes from text,[119] or obscuring a user's hostmask ("cloaking") to protect from denial-of-service attacks.[120]
-   Proxy detection: Most modern servers support detection of users attempting to connect through an insecure (misconfigured or exploited) proxy server, which can then be denied a connection. This proxy detection software is used by several networks, although that real time list of proxies is defunct since early 2006.[121]
-   Additional commands: New commands can be such things as shorthand commands to issue commands to Services, to network operator only commands to manipulate a user's hostmask.
-   Encryption: For the client-to-server leg of the connection SSL might be used (messages cease to be secure once they are relayed to other users on standard connections, but it makes eavesdropping on or wiretapping an individual's IRC sessions difficult). For client-to-client communication, SDCC (Secure DCC) can be used.
-   Connection protocol: IRC can be connected to via IPv4, the current standard version of the Internet Protocol, or by IPv6, the next-generation version of the protocol.

There is an effort of standardization and adding new features to the IRC protocol by IRCv3 working group.[122]


Character encoding

IRC still lacks a single globally accepted standard convention for how to transmit characters outside the 7-bit ASCII repertoire. IRC servers normally transfer messages from a client to another client just as byte sequences, without any interpretation or recoding of characters. The IRC protocol (unlike e.g. MIME or HTTP) lacks mechanisms for announcing and negotiating character encoding options. This has put the responsibility for choosing the appropriate character codec on the client. In practice, IRC channels have largely used the same character encodings that were also used by operating systems (in particular Unix derivatives) in the respective language communities:

-   7-BIT ERA: In the early days of IRC, especially among Scandinavian and Finnish language users, national variants of ISO 646 were the dominant character encodings. These encode non-ASCII characters like Ä Ö Å ä ö å at code positions 0x5B 0x5C 0x5D 0x7B 0x7C 0x7D (US-ASCII: [ \ ] { | }). That is why these codes are always allowed in nicknames. According to RFC 1459, { | } in nicknames should be treated as lowercase equivalents of [ \ ] respectively.[123] By the late 1990s, the use of 7-bit encodings had disappeared in favour of ISO 8859-1, and such equivalence mappings were dropped from some IRC daemons.
-   8-BIT ERA: Since the early 1990s, 8-bit encodings such as ISO 8859-1 have become commonly used for European languages. Russian users had a choice of KOI8-R, ISO 8859-5 and CP1251, and since about 2000, modern Russian IRC networks convert between these different commonly used encodings of the Cyrillic script.
-   MULTI-BYTE ERA: For a long time, East Asian IRC channels with ideographic scripts in China, Japan, and Korea have been using multi-byte encodings such as EUC or ISO-2022-JP. With the common migration from ISO 8859 to UTF-8 on Linux and Unix platforms since about 2002, UTF-8 has become an increasingly popular substitute for many of the previously used 8-bit encodings in European channels. Some IRC clients are now capable of reading messages both in ISO 8859-1 or UTF-8 in the same channel, heuristically autodetecting which encoding is used. The shift to UTF-8 began in particular on Finnish-speaking IRC (Merkistö (Finnish)).

Today, the UTF-8 encoding of Unicode/ISO 10646 would be the most likely contender for a single future standard character encoding for all IRC communication, if such standard ever relaxed the 510-byte message size restriction. UTF-8 is ASCII compatible and covers the superset of all other commonly used coded character set standards.


File sharing

Much like conventional P2P file sharing, users can create file servers that allow them to share files with each other by using customised IRC bots or scripts for their IRC client. Often users will group together to distribute warez via a network of IRC bots.[124]

Technically, IRC provides no file transfer mechanisms itself; file sharing is implemented by IRC _clients_, typically using the Direct Client-to-Client (DCC) protocol, in which file transfers are negotiated through the exchange of private messages between clients. The vast majority of IRC clients feature support for DCC file transfers, hence the view that file sharing is an integral feature of IRC.[125] The commonplace usage of this protocol, however, sometimes also causes DCC spam. DCC commands have also been used to exploit vulnerable clients into performing an action such as disconnecting from the server or exiting the client.


See also

-   Chat room
-   Client-to-client protocol
-   Comparison of instant messaging protocols
-   Comparison of IRC clients
-   Comparison of IRC daemons
-   Comparison of mobile IRC clients

-   The Hamnet Players
-   Internet slang
-   List of IRC commands
-   Serving channel


References


Bibliography

-   -   -   -   -


Further reading

-   -   -   -


External links

-   -   IRC Numerics List
-   History of IRC
-   IRC.org – Technical and Historical IRC6 information; Articles on the history of IRC
-   IRChelp.org – Internet Relay Chat (IRC) help archive; Large archive of IRC-related documents
-   IRCv3 – Working group of developers, who add new features to the protocol and write specs for them
-   IRC-Source – Internet Relay Chat (IRC) network and channel search engine with historical data
-   irc.netsplit.de – Internet Relay Chat (IRC) network listing with historical data

Internet_Relay_Chat Category:Application layer protocols Category:Finnish inventions Category:Internet terminology Category:Virtual communities Category:Computer-related introductions in 1988 Category:1988 software

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

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

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

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]  1.2.1 Growth

[84]

[85]

[86]  1.2.2 Network failures

[87]

[88]  1.2.3 Sociological and security aspects

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]