
                        __
                       /  \
                      /|oo \
                     (_|  /_)
                      _`@/_ \    _
                     |     | \   \\
                     | (*) |  \   ))
        ______       |__U__| /  \//
       / FIDO \       _//|| _\   /
      (________)     (_/(_|(____/
     (c) John Madil

Traditional FidoNet logo by John Madil

FIDONET is a worldwide computer network that is used for communication between bulletin board systems (BBSes). It uses a store-and-forward system to exchange private (email) and public (forum) messages between the BBSes in the network, as well as other files and protocols in some cases.

The FidoNet system was based on a number of small interacting programs. Only one of these interacted with the BBS system directly and was the only portion that had to be ported to support other BBS software. This greatly eased porting, and FidoNet was one of the few networks that was widely supported by almost all BBS software, as well as a number of non-BBS online services. This modular construction also allowed FidoNet to easily upgrade to new data compression systems, which was important in an era using modem-based communications over telephone links with high long-distance calling charges.

The rapid improvement in modem speeds during the early 1990s, combined with the rapid decrease in price of computer systems and storage, made BBSes increasingly popular. By the mid-1990s there were almost 40,000 FidoNet systems in operation, and it was possible to communicate with millions of users around the world. Only UUCPNET came close in terms of breadth or numbers; FidoNet's user base far surpassed other networks like BITNET.[1]

The broad availability of low-cost Internet connections starting in the mid-1990s lessened the need for FidoNet's store-and-forward system, as any system in the world could be reached for equal cost. Direct dialing into local BBS systems rapidly declined. Although FidoNet has shrunk considerably since the late 1990s, it has remained in use even today despite internet connectivity becoming universally available.


History

Origins

There are two major accounts of the development of the FidoNet, differing only in small details.

Tom Jennings' account

Around Christmas 1983, Tom Jennings started work on a new MS-DOS–hosted bulletin board system that would emerge as Fido BBS. Jennings set up the system in San Francisco some time in early 1984. Another early user was John Madil, who was trying to set up a similar system in Baltimore on his Rainbow 100. Fido started spreading to new systems, and Jennings eventually started keeping an informal list of their phone numbers, with Jennings becoming #1 and Madil #2.[2]

Jennings released the first version of the FidoNet software in June 1984. In early 1985 he wrote a document explaining the operations of the FidoNet, along with a short portion on the history of the system. In this version, FidoNet was developed as a way to exchange mail between the first two Fido BBS systems, Jennings' and Madil's, to "see if it could be done, merely for the fun of it". This was first supported in Fido V7, "sometime in June 84 or so".[3][4][5]

Ben Baker's account

In early 1984, Ben Baker was planning on starting a BBS for the newly forming computer club at the McDonnell Douglas automotive division in St. Louis. Baker was part of the CP/M special interest group within the club.[6] He intended to use the seminal, CP/M-hosted, CBBS system, and went looking for a machine to run it on. The club's president told Baker that DEC would be giving them a Rainbow 100 computer on indefinite loan, so he made plans to move the CBBS onto this machine. The Rainbow contained two processors, an Intel 8088 and a Zilog Z80, allowing it to run both MS-DOS and CP/M, with the BBS running on the latter. When the machine arrived, they learned that the Z80 side had no access to the I/O ports, so CBBS could not communicate with a modem. While searching for software that would run on the MS-DOS side of the system, Baker learned of Fido through Madil.[7]

The Fido software required changes to the serial drivers to work properly on the Rainbow. A porting effort started, involving Jennings, Madil and Baker. This caused all involved to rack up considerable long distance charges as they all called each other during development, or called into each other's BBSes to leave email. During one such call "in May or early June", Baker and Jennings discussed how great it would be if the BBS systems could call each other automatically, exchanging mail and files between them.[8] This would allow them to compose mail on their local machines, and then deliver it quickly, as opposed to calling in and typing the message in while on a long-distance telephone connection. Jennings responded by calling into Baker's system that night and uploading a new version of the software consisting of three files: FIDO_DECV6 (the new version of the BBS program itself), FIDONET, and NODELIST.BBS. The new version of FIDO BBS had a timer that caused it to exit at a specified time, normally at night, and as it exited it would run the separate FIDONET program. NODELIST was the list of Fido BBS systems, which Jennings had already been compiling.[9]

The FIDONET program was what later became known as a _mailer_. FIDO was modified to use a previously unused numeric field in the message headers to store a _node number_ for the machine the message should be delivered to. When FIDONET ran, it would search through the email database for any messages with a number in this field. FIDONET collected all of the messages for a particular node number into a file known as a _message packet_. After all the packets were generated, one for each node, the FIDONET program would look up the destination node's phone number in NODELIST.BBS, and call the remote system. Provided that FIDONET was running on that system, the two systems would handshake and, if this succeeded, the calling system would upload its packet, download a return packet if there was one, and disconnect. FIDONET would then unpack the return packet, place the received messages into the local system's storage, and move onto the next packet. When there were no remaining packet, it would exit, and run the FIDO BBS program.[10]

In order to lower long distance charges, the mail exchanges were timed to run late at night, normally 4 AM.[11] This would later be known as _national mail hour_,[12] and, later still, as _Zone Mail Hour_.

Up and running

By June 1984 Version 7 of the system was being run in production, and nodes were rapidly being added to the network. By August there were almost 30 systems in the nodelist, 50 by September, and over 160 by January 1985. As the network grew, the maintenance of the nodelist became prohibitive, and errors were common. In these cases people would start receiving phone calls at 4 AM, from a caller that would say nothing and then hang up. In other cases the system would be listed before it was up and running, resulting in long distance calls that accomplished nothing.[13]

In August 1984 Jennings handed off control of the nodelist to the group in St. Louis, mostly Ken Kaplan and Ben Baker. Kaplan had come across Fido as part of finding a BBS solution for his company, which worked with DEC computers and had been given a Rainbow computer and a USRobotics 1200bit/s modem.[14] From then on, joining FidoNet required one to set up their system and use it to deliver a netmail message to a special system, Node 51. The message contained various required contact information. If this message was transmitted successfully, it ensured that at least some of the system was working properly. The nodelist team would then reply with another netmail message back to the system in question, containing the assigned node number. If delivery succeeded, the system was considered to be working properly, and it was added to the nodelist.[15] The first new nodelist was published on 21 September 1984.[16]

Nets and nodes

Growth continued to accelerate, and by the spring of 1985 the system was already reaching its limit of 250 nodes. In addition to the limits on growth of what was clearly a popular system, nodelist maintenance continued to grow more and more time consuming.[17]

It was also realized that Fido systems were generally clustered – of the 15 systems running by the start of June 1984, 5 of them were in St. Louis.[18] A user on Jennings's system in San Francisco that addressed emails to different systems in St. Louis would cause calls to be made to each of those BBSes in turn. Local calls were normally free or charged at a low rate. Additionally, the initial call setup, generally the first minute of the call, was normally billed at a higher rate than continuing an existing connection. Therefore, it would make sense to deliver all the messages from all the users in San Francisco to all of the users in St. Louis in a single call. Packets were generally small enough to be delivered within a minute or two, so delivering all the messages in a single call could greatly reduce costs by avoiding multiple first-minute charges. Once delivered, the packet would be broken out into separate packets for local systems, and delivered using multiple local free calls.

The team settled on the concept of adding a new _network number_ patterned on the idea of area codes.[19] A complete network address would now consist of the network and node number pair, which would be written with a slash between them. All mail travelling between networks would first be sent to their local _network host_, someone who volunteered to pay for any long distance charges. That single site would collect up all the netmail from all of the systems in their network, then re-package it into single packets destined to each network. They would then call any required network admin sites and deliver the packet to them. That site would then process the mail as normal, although all of the messages in the packet would be guaranteed to be local calls.[20]

The network address was placed in an unused field in the Fido message database, which formerly always held a zero. Systems running existing versions of the software already ignored the fields containing the new addressing, so they would continue to work as before; when noticing a message addressed to another node they would look it up and call that system. Newer systems would recognize the network number and instead deliver that message to the network host. To ensure backward compatibility, existing systems retained their original node numbers through this period.[21]

A huge advantage of the new scheme was that node numbers were now unique only within their network, not globally. This meant the previous 250 node limit was gone, but for a variety of reasons this was initially limited to about 1,200. This change also devolved the maintenance of the nodelists down to the network hosts, who then sent updated lists back to Node 51 to be collected into the master list. The St. Louis group now had to only maintain their own local network, and do basic work to compile the global list.[22]

At a meeting held in Kaplan's living room in St. Louis on 11 April 1985[23] the various parties hammered out all of the details of the new concept. As part of this meeting, they also added the concept of a _region_, a purely administrative level that was not part of the addressing scheme. Regional hosts would handle any stragglers in the network maps, remote systems that had no local network hosts. They then divided up the US into ten regions that they felt would have roughly equal populations.[24]

By May, Jennings had early versions of the new software running. These early versions specified the routing manually through a new ROUTE.BBS file that listed network hosts for each node. For instance, an operator might want to forward all mail to St. Louis through a single node, node 10. ROUTE.BBS would then include a list of all the known systems in that area, with instructions to forward mail to each of those nodes through node 10. This process was later semi-automated by John Warren's NODELIST program.[25] Over time, this information was folded into updated versions of the nodelist format, and the ROUTES file is no longer used.[26]

A new version of FIDO and FIDONET, 10C, was released containing all of these features. On 12 June 1985 the core group brought up 10C, and most Fido systems had upgraded within a few months.[27] The process went much smoother than anyone imagined, and very few nodes had any problems.[28]

Echomail

Some time during the evolution of Fido, file attachments were added to the system, allowing a file to be referenced from an email message. During the normal exchange between two instances of FIDONET, any files attached to the messages in the packets were delivered after the packet itself had been up or downloaded. It is not clear when this was added, but it was already a feature of the basic system when the 8 February 1985 version of the FidoNet standards document was released, so this was added very early in Fido's history.

At a sysop meeting in Dallas, the idea was raised that it would be nice if there was some way for the sysops to post messages that would be shared among the systems.[29] In February 1986 Jeff Rush, one of the group members, introduced a new mailer that extracted messages from public forums that the sysop selected, in a manner similar to the way the original mailer handled private messages. The new program was known as a _tosser/scanner_. The tosser produced a file that was similar (or identical) to the output from the normal netmail scan, however, these files were then compressed and attached to a normal netmail message as an attachment. This message was then sent to a special address on the remote system. After receiving netmail as normal, the scanner on the remote system looked for these messages, unpacked them, and put them into the same public forum on the original system.[30]

In this fashion, Rush's system implemented a store and forward public message system similar to Usenet, but based on, and hosted by, the FidoNet system. The first such _echomail_ forum was one created by the Dallas area sysops to discuss business, known as SYSOP. Another called TECH soon followed. Several public _echos_ soon followed, including GAYNET and CLANG. These spawned hundreds of new echos, and led to the creation of the Echomail Conference List (Echolist) by Thomas Kenny in January 1987.[31] Echomail produced world-spanning shared forums, and its traffic volume quickly surpassed the original netmail system. By the early 1990s, echo mail was carrying over 8 MB of compressed message traffic a day, many times that when uncompressed.[32]

Echomail did not necessarily use the same distribution pathways as normal netmail, and the distribution routing was stored in a separate setup file not unlike the original ROUTES.BBS. At the originating site a header line was added to the message indicating the origin system's name and address. After that, each system that the message traveled through added itself to a growing PATH header, as well as a SEENBY header. SEENBY prevented the message from looping around the network in the case of mis-configured routing information.[33]

Echomail was not the only system to use the file attachment feature of netmail to implement store-and-forward capabilities. Similar concepts were used by online games and other systems as well.

Zones and points

The evolution towards the net/node addressing scheme was also useful for reducing communications costs between continents, where timezone differences on either end of the connection might also come into play. For instance, the best time to forward mail in the US was at night, but that might not be the best time for European hosts to exchange. Efforts towards introducing a continental level to the addressing system started in 1986.[34]

At the same time, it was noted that some power users were interested in using FidoNet protocols as a way of delivering the large quantities of echomail to their local machines where it could be read offline. These users did not want their systems to appear in the nodelist - they did not (necessarily) run a bulletin board system and were not publicly accessible.[35] A mechanism allowing netmail delivery to these systems without the overhead of nodelist maintenance was desirable.

In October 1986 the last major change to the FidoNet network was released, adding _zones_ and _points_. Zones represented major geographical areas roughly corresponding to continents. There were six zones in total, North America, South America, Europe, Oceania, Asia, and Africa. Points represented non-public nodes, which were created privately on a BBS system. Point mail was delivered to a selected host BBS as normal, but then re-packaged into a packet for the point to pick up on-demand. The complete addressing format was now zone:net/node.point, so a real example might be Bob Smith@1:250/250.10.[36] Points were widely used only for a short time, the introduction of offline reader systems filled this role with systems that were much easier to use. Points remain in use to this day, but are less popular than when they were introduced.

Other extensions

Although FidoNet supported file attachments from even the earliest standards, this feature tended to be rarely used and was often turned off. File attachments followed the normal mail routing through multiple systems, and could back up transfers all along the line as the files were copied. A solution was offered in the form of _file requests_, which made file transfers driven by the _calling_ system and used one-time point-to-point connections instead of the traditional routing. Two such standards became common, "WaZOO" and "Bark", which saw varying support among different mailers. Both worked in a similar fashion, with the mailer calling the remote system and sending a new handshake packet to request the files.[37][38]

Although FidoNet was, by far, the best known BBS-based network, it was by no means the only one. From 1988 on, PCBoard systems were able to host similar functionality known as RelayNet, while other popular networks included RBBSNet from the Commodore 64 world, and AlterNet. Late in the evolution of the FidoNet system, there was a proposal to allow mail (but not forum messages) from these systems to switch into the FidoNet structure.[39] This was not adopted, and the rapid rise of the internet made this superfluous as these networks rapidly added internet exchange, which acted as a lingua franca.

Peak

FidoNet started in 1984 and listed 100 nodes by the end of that year. Steady growth continued through the 1980s, but a combination of factors led to rapid growth after 1988. These included faster and less expensive modems, and rapidly declining costs of hard drives and computer systems in general. By April 1993 the FidoNet nodelist contained over 20,000 systems. At that time it was estimated that each node had, on average, about 200 active users. Of these 4 million users in total, 2 million users commonly used echomail, the shared public forums, while about 200,000 used the private netmail system.[40] At its peak, FidoNet listed approximately 39,000 systems.[41][42]

Throughout its lifetime, FidoNet was beset with management problems and infighting. Much of this can be traced to the fact that the inter-net delivery cost real money, and the traffic grew more rapidly than decreases caused by improving modem speeds and downward trending long distance rates. As they increased, various methods of recouping the costs were attempted, all of which caused friction in the groups. The problems were so bad that Jennings came to refer to the system as the "fight-o-net".[43]

Decline

As modems reached speeds of 28.8 kbit/s, the overhead of the TCP/IP protocols were no longer so egregious and dial-up Internet became increasingly common. By 1995 the bulletin board market was reeling as users abandoned local BBS systems in favour of larger sites and web pages, which could be accessed worldwide for the same cost as accessing a local BBS system. This also made FidoNet less expensive to implement, because inter-net transfers could be delivered over the Internet as well, at little or no marginal cost. But this seriously diluted the entire purpose of the store-and-forward model, which had been built up specifically to address a long-distance problem that no longer existed.

The FidoNet nodelist started shrinking, especially in areas with widespread availability of internet connections. This downward trend continues, but has levelled out at approximately 2,500 nodes.[44] FidoNet remains popular in areas where Internet access is difficult to come by, or expensive.

Resurgence

There is now (~2014) a retro movement which is resulting in a slow increase in internet connected BBS and nodes. Telnet, Rlogin, and SSH are being used between systems. This means you can telnet to many BBS worldwide as cheaply as ones next door. Also Usenet and internet mail has been added, along with long file names to many newer versions of BBS software, some being free-ware, resulting in increasing use. Nodelists are no longer declining in all cases.


FidoNet organizational structure

FidoNet is governed in a hierarchical structure according to FidoNet policy, with designated coordinators at each level to manage the administration of FidoNet nodes and resolve disputes between members.[45] Network coordinators are responsible for managing the individual nodes within their area, usually a city or similar sized area. Regional coordinators are responsible for managing the administration of the network coordinators within their region, typically the size of a state, or small country. Zone coordinators are responsible for managing the administration of all of the regions within their zone. The world is divided into six zones, the coordinators of which elect one of themselves to be the _International Coordinator_ of FidoNet.


Technical structure

FidoNet was historically designed to use modem-based dial-up (POTS) access between bulletin board systems, and much of its policy and structure reflected this.

The FidoNet system officially referred only to transfer of _Netmail_—the individual private messages between people using bulletin boards—including the protocols and standards with which to support it. A netmail message would contain the name of the person sending, the name of the intended recipient, and the respective FidoNet addresses of each. The FidoNet system was responsible for routing the message from one system to the other (details below), with the bulletin board software on each end being responsible for ensuring that only the intended recipient could read it. Due to the hobbyist nature of the network, any privacy between sender and recipient was only the result of politeness from the owners of the FidoNet systems involved in the mail's transfer. It was common, however, for system operators to reserve the right to review the content of mail that passed through their system.

Netmail allowed for the _attachment_ of a single file to every message. This led to a series of _piggyback_ protocols that built additional features onto FidoNet by passing information back and forth as file attachments. These included the automated distribution of files, and transmission of data for inter-BBS games.

By far the most commonly used of these piggyback protocols was _Echomail_, public discussions similar to Usenet newsgroups in nature. Echomail was supported by a variety of software that collected up new messages from the local BBSes' public forums (the _scanner_), compressed it using ARC or ZIP, attached the resulting archive to a Netmail message, and sent that message to a selected system. On receiving such a message, identified because it was addressed to a particular _user_, the reverse process was used to extract the messages, and a _tosser_ put them back into the new system's forums.

Echomail was so popular that for many users, Echomail _was_ the FidoNet. Private person-to-person Netmail was relatively rare.

Geographical structure

FidoNet is politically organized into a tree structure, with different parts of the tree electing their respective coordinators. The FidoNet hierarchy consists of _zones_, _regions_, _networks_, _nodes_ and _points_ broken down more-or-less geographically.

The highest level is the zone, which is largely continent-based:

-   Zone 1 is North America
-   Zone 2 is Europe, Former Soviet Union countries, and Israel
-   Zone 3 is Australasia
-   Zone 4 is Latin America (except Puerto Rico)
-   Zone 5 was Africa
-   Zone 6 was Asia, Israel and the Asian parts of Russia, (which are listed in Zone 2). On 26 July 2007 zone 6 was removed, and all remaining nodes were moved to zone 3.[46]

Each zone is broken down into regions, which are broken down into nets, which consist of individual nodes. Zones 7-4095 are used for _othernets_; groupings of nodes which use Fido-compatible software to carry their own independent message areas without being in any way controlled by FidoNet's political structure. Using un-used zone numbers would ensure that each network would have a unique set of addresses, avoiding potential routing conflicts and ambiguities for systems that belonged to more than one network.

FidoNet addresses

FidoNet addresses explicitly consist of a _zone_ number, a _network_ number (or region number), and a _node_ number. They are written in the form Zone:Network/Node. The FidoNet structure also allows for semantic designation of region, host, and hub status for particular nodes, but this status is not directly indicated by the main address.

For example, consider a node located in Tulsa, Oklahoma, United States with an assigned node number is 918, located in Zone 1 (North America), Region 19, and Network 170. The full FidoNet address for this system would be 1:170/918. The _region_ was used for administrative purposes, and was only part of the address if the node was listed directly underneath the Regional Coordinator, rather than one of the networks that were used to divide the region further.

FidoNet policy requires that each FidoNet system maintain a _nodelist_ of every other member system. Information on each node includes the name of the system or BBS, the name of the node operator, the geographic location, the telephone number, and software capabilities. The nodelist is updated weekly, to avoid unwanted calls to nodes that had shut down, with their phone numbers possibly having been reassigned for voice use by the respective telephone company.

To accomplish regular updates, coordinators of each network maintain the list of systems in their local areas. The lists are forwarded back to the International Coordinator via automated systems on a regular basis. The International Coordinator would then compile a new nodelist, and generate the list of changes (nodediff) to be distributed for node operators to apply to their existing nodelist.

Routing of FidoNet mail

In a theoretical situation, a node would normally forward messages to a _hub_. The hub, acting as a distribution point for mail, might then send the message to the Net Coordinator. From there it may be sent through a Regional Coordinator, or to some other system specifically set up for the function. Mail to other zones might be sent through a Zone Gate.

For example, a FidoNet message might follow the path:

-   1:170/918 _(node)_ to 1:170/900 _(hub)_ to 1:170/0 _(net coordinator)_ to 1:19/0 _(region coordinator)_ to 1:1/0 _(zone coordinator)_. From there, it was distributed 'down stream' to the destination node(s).

Originally there was no specific relationship between network numbers and the regions they reside in. In some areas of FidoNet, most notably in Zone 2, the relationship between region number and network number are entwined. For example, 2:201/329 is in Net 201 which is in Region 20 while 2:2410/330 is in Net 2410 which is in Region 24. Zone 2 also relates the node number to the hub number if the network is large enough to contain any hubs. This effect may be seen in the nodelist by looking at the structure of Net 2410 where node 2:2410/330 is listed under Hub 300. This is not the case in other zones.

In Zone 1, things are much different. Zone 1 was the starting point and when Zones and Regions were formed, the existing nets were divided up regionally with no set formula. The only consideration taken was where they were located geographically in respect to the region's mapped outline. As net numbers got added, the following formula was used.

  Region number × 20

Then when some regions started running out of network numbers, the following was also used.

  Region number × 200

Region 19, for instance, contains nets 380-399 and 3800-3999 in addition to those that were in Region 19 when it was formed.

Part of the objective behind the formation of local nets was to implement cost reduction plans by which all messages would be sent to one or more hubs or hosts in compressed form (ARC was nominally standard, but PKZIP is universally supported); one toll call could then be made during off-peak hours to exchange entire message-filled archives with an out-of-town uplink for further redistribution.

In practice, the FidoNet structure allows for any node to connect directly to any other, and node operators would sometimes form their own toll-calling arrangements on an ad-hoc basis, allowing for a balance between collective cost saving and timely delivery. For instance, if one node operator in a network offered to make regular toll calls to a particular system elsewhere, other operators might arrange to forward all of their mail destined for the remote system, and those near it, to the local volunteer. Operators within individual networks would sometimes have cost-sharing arrangements, but it was also common for people to volunteer to pay for regular toll calls either out of generosity, or to build their status in the community.

This ad-hoc system was particularly popular with networks that were built on top of FidoNet. Echomail, for instance, often involved relatively large file transfers due to its popularity. If official FidoNet distributors refused to transfer Echomail due to additional toll charges, other node operators would sometimes volunteer. In such cases, Echomail messages would be routed to the volunteers' systems instead.

The FidoNet system was best adapted to an environment in which local telephone service was inexpensive and long-distance calls (or intercity data transfer via packet-switched networks) costly. Therefore, it fared somewhat poorly in Japan, where even local lines are expensive, or in France, where tolls on local calls and competition with Minitel or other data networks limited its growth.

Points

As the number of messages in Echomail grew over time, it became very difficult for users to keep up with the volume while logged into their local BBS. _Points_ were introduced to address this, allowing technically savvy users to receive the already compressed and batched Echomail (and Netmail) and read it locally on their own machines.

To do this, the FidoNet addressing scheme was extended with the addition of a final address segment, the point number. For instance, a user on the example system above might be given point number 10, and thus could be sent mail at the address 1:170/918.10.

In real-world use, points are fairly difficult to set up. The FidoNet software typically consisted of a number of small utility programs run by manually edited scripts that required some level of technical ability. Reading and editing the mail required either a "sysop editor" program, or a BBS program to be run locally.

In North America (Zone 1), where local calls are generally free, the benefits of the system were offset by its complexity. Points were used only briefly, and even then only to a limited degree. Dedicated offline mail reader programs such as Blue Wave, Squiggy and Silver Xpress (OPX) were introduced in the mid-1990s, and quickly rendered the point system obsolete. Many of these packages supported the QWK offline mail standard.

In other parts of the world, especially Europe, this was different. In Europe, even local calls are generally metered, so there was a strong incentive to keep the duration of the calls as short as possible. Point software employs standard compression (ZIP, ARJ, etc.) and so keeps the calls down to a few minutes a day at most. In contrast to North America, pointing saw rapid and fairly widespread uptake in Europe.

Many regions distribute a pointlist in parallel with the nodelist. The pointlist segments are maintained by Net- and Region Pointlist Keepers and the Zone Point List Keeper assembles them into the Zone pointlist. At the peak of FidoNet there were over 120,000 points listed in the Zone 2 pointlist. Listing points is on a voluntary basis and not every point is listed, so how many points there really were is anybody's guess. As of June 2006, there are still some 50,000 listed points. Most of them are in Russia and Ukraine.

Technical specifications

FidoNet contained several technical specifications for compatibility between systems. The most basic of all is _FTS-0001_,[47] with which all FidoNet systems are required to comply as a minimal requirement. FTS-0001 defined:

-   Handshaking - the protocols used by mailer software to identify each other and exchange meta information about the session.
-   Transfer protocol _(XMODEM)_ - the protocols to be used for transferring files containing FidoNet mail between systems.
-   Message format - the standard format for FidoNet messages during the time which they were exchanged between systems.

Other specifications that were commonly used provided for _echomail_, different transfer protocols and handshake methods (_e.g.: Yoohoo/Yoohoo2u2, EMSI_), file compression, nodelist format, transfer over reliable connections such as the Internet (Binkp), and other aspects.

Zone mail hour

Since computer bulletin boards historically used the same telephone lines for transferring mail as were used for dial-in human users of the BBS, FidoNet policy dictates that at least one designated line of each FidoNet node must be available for accepting mail from other FidoNet nodes during a particular hour of each day.

_Zone Mail Hour_, as it was named, varies depending on the geographic location of the node, and was designated to occur during the early morning. The exact hour varies depending on the time zone, and any node with only one telephone line is required to reject human callers. In practice, particularly in later times, most FidoNet systems tend to accept mail at any time of day when the phone line is not busy, usually during night.


FidoNet deployments

Most FidoNet deployments were designed in a modular fashion. A typical deployment would involve several applications that would communicate through shared files and directories, and switch between each other through carefully designed scripts or batch files. However, monolithic software that encompassed all required functions in one package is available, such as D'Bridge. Such software eliminated the need for custom batch files and is tightly integrated in operation. The preference of deployment was that of the operator and there were both pros and cons of running in either fashion.

Arguably the most important piece of software on a DOS-based Fido system was the _FOSSIL driver_, which was a small device driver which provided a standard way for the Fido software to talk to the modem. This driver needed to be loaded before any Fido software would work. An efficient FOSSIL driver meant faster, more reliable connections.

_Mailer software_ was responsible for transferring files and messages between systems, as well as passing control to other applications, such as the BBS software, at appropriate times. The mailer would initially answer the phone and, if necessary, deal with incoming mail via FidoNet transfer protocols. If the mailer answered the phone and a human caller was detected rather than other mailer software, the mailer would exit, and pass control to the BBS software, which would then initialise for interaction with the user. When outgoing mail was waiting on the local system, the mailer software would attempt to send it from time to time by dialing and connecting to other systems who would accept and route the mail further. Due to the costs of toll calls which often varied between peak and off-peak times, mailer software would usually allow its operator to configure the optimal times in which to attempt to send mail to other systems.

_BBS software_ was used to interact with human callers to the system. BBS software would allow dial-in users to use the system's message bases and write mail to others, locally or on other BBSes. Mail directed to other BBSes would later be routed and sent by the mailer, usually after the user had finished using the system. Many BBSes also allowed users to exchange files, play games, and interact with other users in a variety of ways (i.e.: node to node chat).

A _scanner/tosser_ application, such as FastEcho, FMail, TosScan and Squish, would normally be invoked when a BBS user had entered a new FidoNet message that needed to be sent, or when a mailer had received new mail to be imported into the local messages bases. This application would be responsible for handling the packaging of incoming and outgoing mail, moving it between the local system's message bases and the mailer's inbound and outbound directories. The scanner/tosser application would generally be responsible for basic routing information, determining which systems to forward mail to.

In later times, _message readers_ or _editors_ that were independent of BBS software were also developed. Often the System Operator of a particular BBS would use a devoted message reader, rather than the BBS software itself, to read and write FidoNet and related messages. One of the most popular editors in 2008 was GoldED+. In some cases FidoNet nodes, or more often FidoNet points, had no public bulletin board attached, and existed only for the transfer of mail for the benefit of the node's operator. Most nodes in 2009 had no BBS access, but only points, if anything.

The original _Fido BBS_ software, and some other FidoNet-supporting software from the 1980s, is no longer functional on modern systems. This is for several reasons, including problems related to the Y2K bug. In some cases, the original authors have left the BBS or shareware community, and the software, much of which was closed source, has been rendered abandonware.

Several DOS based legacy FidoNet Mailers such as FrontDoor, Intermail, MainDoor and D'Bridge from the early 1990s can still be run today under Windows without a modem, by using the freeware NetFoss Telnet FOSSIL driver, and by using a Virtual Modem such as NetSerial. This allows the mailer to _dial_ an IP address or hostname via Telnet, rather than dialing a real POTS phone number. There are similar solutions for Linux such as MODEMU (modem emulator) which has limited success when combined with DOSEMU (DOS emulator). Mail Tossers such as FastEcho and FMail are still used today under both Windows and Linux/DOSEMU.

There are several modern Windows based FidoNet Mailers available today with source code, including Argus, Radius, and Taurus . MainDoor is another Windows based Fidonet mailer, which also can be run using either a modem or directly over TCP/IP. Two popular free and open source software FidoNet mailers for Unix-like systems are the binkd (cross-platform, IP-only, uses the binkp protocol) and qico (supports modem communication as well as the IP protocol of ifcico and binkp).

On the _hardware_ side, Fido systems were usually well-equipped machines, for their day, with quick CPUs, high-speed modems and 16550 UARTs, which were at the time an upgrade. As a Fidonet system was usually a BBS, it needed to quickly process any new mail events before returning to its 'waiting for call' state. In addition, the BBS itself usually necessitated lots of storage space. Finally, a FidoNet system usually had at least one dedicated phoneline. Consequently, operating a Fidonet system often required significant financial investment, a cost usually met by the owner of the system.


FidoNet availability

While the use of FidoNet has dropped dramatically compared with its use up to the mid-1990s, it is still used in many countries and especially Russia and former republics of the USSR. Some BBSes, including those that are now available for users with Internet connections via telnet, also retain their FidoNet netmail and echomail feeds.

Some of FidoNet's echomail conferences are available via gateways with the Usenet news hierarchy using software like UFGate. There are also mail gates for exchanging messages between Internet and FidoNet. Widespread net abuse and e-mail spam on the Internet side has caused some gateways (such as the former 1:1/31 IEEE fidonet.org gateway) to become unusable or cease operation entirely.


FidoNews

_FidoNews_ is the newsletter of the FidoNet community. Affectionately nicknamed _The Snooze_, it is published weekly. It was first published in 1984. Throughout its history, it has been published by various people and entities, including the short-lived International FidoNet Association.


See also

-   PODSnet
-   RelayNet
-   UUCP


References

Notes

Citations


Further reading

-   -


External links

-   -   Alternate US FidoNet Home Page
-   Alternate EU FidoNet Home Page
-   FidoNet Technical Standards Committee Home Page
-   FidoNews, the weekly newsletter of the FidoNet community
-   International Echolist Home Page
-   IFDC FileGate Project
-   Fidonet Showcase Project

FidoNet Category:Computer-related introductions in 1984 Category:Computer-mediated communication Category:Pre–World Wide Web online services Category:Wikipedia articles with ASCII art Category:BBS networks

[1]

[2] Ben Baker, "Fidonet History", 2 May 1987

[3] Tom Jennings, "FidoNet History and Operation", February 1985

[4] Jason Scott Sadofsky, "BBS: The Documentary", FIDONET Episode, 21 May 2005.

[5]

[6] Baker provides details of the club and the SIG at about the 8- to 10-minute mark during BBS interviews by Jason Scott Sadofsky, "BBS Documentary Interview Collection: Ben Baker, Ken Kaplan, That Old Frog (Ryugen Fisher) Part 1 (2004)"

[7]

[8]

[9]

[10] Baker at the 35 minute mark, "BBS Documentary Interview Collection: Ben Baker, Ken Kaplan, That Old Frog (Ryugen Fisher) Part 1 (2004)"

[11]

[12]

[13]

[14] Kaplan provides details 14 to 16 minute mark during this inverview, "BBS Documentary Interview Collection: Ben Baker, Ken Kaplan, That Old Frog (Ryugen Fisher) Part 1 (2004)"

[15]

[16]

[17]

[18]

[19] Details of the sequence of events leading to the new routing scheme differ slightly between accounts.

[20]

[21]

[22]

[23] In the interviews, Baker says this took place in May.

[24]

[25] Tom Jennings, "FidoNet History #2", 20 August 1985

[26]

[27]

[28]

[29] Wynn Wagner, "History of Echomail", July 1985

[30] Randy Bush, "FidoNet: Technology, Use, Tools, and History", 1992

[31] Frank Robbins, "FidoNet History Timeline"

[32]

[33]

[34]

[35]

[36]

[37] Philip Becker "An Enhanced FidoNet Technical Standard Extending FTS-0001 to include Bark requests", 15 October 1990

[38] Vince Perriello, "YOOHOO and YOOHOO/2U2", 30 November 1991

[39] Steve Gove, "A Proposal for NetMail AreaTags", 3 December 1993

[40]

[41]

[42] The Jargon File puts it at 38,000 at its peak.

[43] "fight-o-net", Jargon File, 4 November 1996

[44] The exact number can be determined by examining the official nodelist. However, the format is difficult to parse and many systems deliberately appear more than once, in different sections. The 2,500 node limit is an estimate made by the current maintainer as of 2013, Janis Kracht.

[45]

[46]

[47] http://ftsc.org/docs/fts-0001.016