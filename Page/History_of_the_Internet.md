The HISTORY OF THE INTERNET begins with the development of electronic computers in the 1950s. Initial concepts of wide area networking originated in several computer science laboratories in the United States, United Kingdom, and France.[1] The U.S. Department of Defense awarded contracts as early as the 1960s, including for the development of the ARPANET project, directed by Robert Taylor and managed by Lawrence Roberts. The first message was sent over the ARPANET in 1969 from computer science Professor Leonard Kleinrock's laboratory at University of California, Los Angeles (UCLA) to the second network node at Stanford Research Institute (SRI).

Packet switching networks such as the NPL network, ARPANET, Merit Network, CYCLADES, and Telenet, were developed in the late 1960s and early 1970s using a variety of communications protocols.[2] Donald Davies first demonstrated packet switching in 1967 at the National Physics Laboratory (NPL) in the UK, which became a testbed for UK research for almost two decades.[3][4] The ARPANET project led to the development of protocols for internetworking, in which multiple separate networks could be joined into a network of networks.

The Internet protocol suite (TCP/IP) was developed by Robert E. Kahn and Vint Cerf in the 1970s and became the standard networking protocol on the ARPANET, incorporating concepts from the French CYCLADES project directed by Louis Pouzin. In the early 1980s the NSF funded the establishment for national supercomputing centers at several universities, and provided interconnectivity in 1986 with the NSFNET project, which also created network access to the supercomputer sites in the United States from research and education organizations. Commercial Internet service providers (ISPs) began to emerge in the very late 1980s. The ARPANET was decommissioned in 1990. Limited private connections to parts of the Internet by officially commercial entities emerged in several American cities by late 1989 and 1990,[5] and the NSFNET was decommissioned in 1995, removing the last restrictions on the use of the Internet to carry commercial traffic.

In the 1980s, research at CERN in Switzerland by British computer scientist Tim Berners-Lee resulted in the World Wide Web, linking hypertext documents into an information system, accessible from any node on the network.[6] Since the mid-1990s, the Internet has had a revolutionary impact on culture, commerce, and technology, including the rise of near-instant communication by electronic mail, instant messaging, voice over Internet Protocol (VoIP) telephone calls, two-way interactive video calls, and the World Wide Web with its discussion forums, blogs, social networking, and online shopping sites. The research and education community continues to develop and use advanced networks such as JANET in the United Kingdom and Internet2 in the United States. Increasing amounts of data are transmitted at higher and higher speeds over fiber optic networks operating at 1 Gbit/s, 10 Gbit/s, or more. The Internet's takeover of the global communication landscape was almost instant in historical terms: it only communicated 1% of the information flowing through two-way telecommunications networks in the year 1993, already 51% by 2000, and more than 97% of the telecommunicated information by 2007.[7] Today the Internet continues to grow, driven by ever greater amounts of online information, commerce, entertainment, and social networking. However, the future of the global internet may be shaped by regional differences in the world.[8]


Precursors

The concept of data communication – transmitting data between two different places through an electromagnetic medium such as radio or an electric wire – pre-dates the introduction of the first computers. Such communication systems were typically limited to point to point communication between two end devices. Semaphore lines, telegraph systems and telex machines can be considered early precursors of this kind of communication. The Telegraph in the late 19th century was the first fully digital communication system.

Fundamental theoretical work in data transmission and information theory was developed by Claude Shannon, Harry Nyquist, and Ralph Hartley in the early 20th century.

Early computers had a central processing unit and remote terminals. As the technology evolved, new systems were devised to allow communication over longer distances (for terminals) or with higher speed (for interconnection of local devices) that were necessary for the mainframe computer model. These technologies made it possible to exchange data (such as files) between remote computers. However, the point-to-point communication model was limited, as it did not allow for direct communication between any two arbitrary systems; a physical link was necessary. The technology was also considered unsafe for strategic and military use because there were no alternative paths for the communication in case of an enemy attack.


Development of wide area networking

With limited exceptions, the earliest computers were connected directly to terminals used by individual users, typically in the same building or site. Such networks became known as local area networks (LANs). Networking beyond this scope, known as wide area networks (WANs), emerged during the 1950s and became established during the 1960s.

Inspiration

J. C. R. Licklider, Vice President at Bolt Beranek and Newman, Inc., proposed a global network in his January 1960 paper _Man-Computer Symbiosis_:[9]

In August 1962, Licklider and Welden Clark published the paper "On-Line Man-Computer Communication"[10] which was one of the first descriptions of a networked future.

In October 1962, Licklider was hired by Jack Ruina as director of the newly established Information Processing Techniques Office (IPTO) within DARPA, with a mandate to interconnect the United States Department of Defense's main computers at Cheyenne Mountain, the Pentagon, and SAC HQ. There he formed an informal group within DARPA to further computer research. He began by writing memos describing a distributed network to the IPTO staff, whom he called "Members and Affiliates of the Intergalactic Computer Network".[11] As part of the information processing office's role, three network terminals had been installed: one for System Development Corporation in Santa Monica, one for Project Genie at University of California, Berkeley, and one for the Compatible Time-Sharing System project at Massachusetts Institute of Technology (MIT). Licklider's identified need for inter-networking would become obvious by the apparent waste of resources this caused.

  For each of these three terminals, I had three different sets of user commands. So if I was talking online with someone at S.D.C. and I wanted to talk to someone I knew at Berkeley or M.I.T. about this, I had to get up from the S.D.C. terminal, go over and log into the other terminal and get in touch with them....
  I said, oh man, it's obvious what to do: If you have these three terminals, there ought to be one terminal that goes anywhere you want to go where you have interactive computing. That idea is the ARPAnet.[12]

Although he left the IPTO in 1964, five years before the ARPANET went live, it was his vision of universal networking that provided the impetus for one of his successors, Robert Taylor, to initiate the ARPANET development. Licklider later returned to lead the IPTO in 1973 for two years.[13]

Development of packet switching

The issue of connecting separate physical networks to form one logical network was the first of many problems. Early networks used message switched systems that required rigid routing structures prone to single point of failure. In the 1960s, Paul Baran of the RAND Corporation produced a study of survivable networks for the U.S. military in the event of nuclear war.[14] Information transmitted across Baran's network would be divided into what he called "message blocks".[15] Independently, Donald Davies (National Physical Laboratory, UK), proposed and was the first to put into practice a local area network based on what he called packet switching, the term that would ultimately be adopted. Larry Roberts applied Davies' concepts of packet switching for the ARPANET wide area network,[16][17] and sought input from Paul Baran and Leonard Kleinrock. Kleinrock subsequently developed the mathematical theory behind the performance of this technology building on his earlier work on queueing theory.[18]

Packet switching is a rapid store and forward networking design that divides messages up into arbitrary packets, with routing decisions made per-packet. It provides better bandwidth utilization and response times than the traditional circuit-switching technology used for telephony, particularly on resource-limited interconnection links.[19]

Networks that led to the Internet

NPL network

Following discussions with J. C. R. Licklider, Donald Davies became interested in data communications for computer networks.[20][21] At the National Physical Laboratory (United Kingdom) in 1965, Davies designed and proposed a national data network based on packet switching. The following year, he described the use of an "Interface computer" to act as a router.[22] The proposal was not taken up nationally but by 1967, a pilot experiment had demonstrated the feasibility of packet switched networks.[23][24]

By 1969 he had begun building the Mark I packet-switched network to meet the needs of the multidisciplinary laboratory and prove the technology under operational conditions.[25][26][27] In 1976, 12 computers and 75 terminal devices were attached,[28] and more were added until the network was replaced in 1986. NPL, followed by ARPANET, were the first two networks in the world to use packet switching,[29][30] and were interconnected in the early 1970s.

ARPANET

Robert Taylor was promoted to the head of the information processing office at Defense Advanced Research Projects Agency (DARPA) in June 1966. He intended to realize Licklider's ideas of an interconnected networking system. Bringing in Larry Roberts from MIT, he initiated a project to build such a network. The first ARPANET link was established between the University of California, Los Angeles (UCLA) and the Stanford Research Institute at 22:30 hours on October 29, 1969.[31]

Stamps_of_Azerbaijan,_2004-683.jpg

By December 5, 1969, a 4-node network was connected by adding the University of Utah and the University of California, Santa Barbara. Building on ideas developed in ALOHAnet, the ARPANET grew rapidly. By 1981, the number of hosts had grown to 213, with a new host being added approximately every twenty days.[32][33]

ARPANET development was centered around the Request for Comments (RFC) process, still used today for proposing and distributing Internet Protocols and Systems. RFC 1, entitled "Host Software", was written by Steve Crocker from the University of California, Los Angeles, and published on April 7, 1969. These early years were documented in the 1972 film Computer Networks: The Heralds of Resource Sharing.

ARPANET became the technical core of what would become the Internet, and a primary tool in developing the technologies used. The early ARPANET used the Network Control Program (NCP, sometimes Network Control Protocol) rather than TCP/IP. On January 1, 1983, known as flag day, NCP on the ARPANET was replaced by the more flexible and powerful family of TCP/IP protocols, marking the start of the modern Internet.[34]

International collaborations on ARPANET were sparse. For various political reasons, European developers were concerned with developing the X.25 networks. Notable exceptions were the _Norwegian Seismic Array_ (NORSAR) in 1972, followed in 1973 by Sweden with satellite links to the Tanum Earth Station and Peter Kirstein's research group in the UK, initially at the Institute of Computer Science, London University and later at University College London.[35]

Merit Network

The Merit Network[36] was formed in 1966 as the Michigan Educational Research Information Triad to explore computer networking between three of Michigan's public universities as a means to help the state's educational and economic development.[37] With initial support from the State of Michigan and the National Science Foundation (NSF), the packet-switched network was first demonstrated in December 1971 when an interactive host to host connection was made between the IBM mainframe computer systems at the University of Michigan in Ann Arbor and Wayne State University in Detroit.[38] In October 1972 connections to the CDC mainframe at Michigan State University in East Lansing completed the triad. Over the next several years in addition to host to host interactive connections the network was enhanced to support terminal to host connections, host to host batch connections (remote job submission, remote printing, batch file transfer), interactive file transfer, gateways to the Tymnet and Telenet public data networks, X.25 host attachments, gateways to X.25 data networks, Ethernet attached hosts, and eventually TCP/IP and additional public universities in Michigan join the network.[39][40] All of this set the stage for Merit's role in the NSFNET project starting in the mid-1980s.

CYCLADES

The CYCLADES packet switching network was a French research network designed and directed by Louis Pouzin. First demonstrated in 1973, it was developed to explore alternatives to the early ARPANET design and to support network research generally. It was the first network to make the hosts responsible for reliable delivery of data, rather than the network itself, using unreliable datagrams and associated end-to-end protocol mechanisms. Concepts of this network influenced later ARPANET architecture.[41][42]

X.25 and public data networks

ABC_Clarke_predicts_internet_and_PC.ogv interview with Arthur C. Clarke, in which he describes a future of ubiquitous networked personal computers.]] Based on ARPA's research, packet switching network standards were developed by the International Telecommunication Union (ITU) in the form of X.25 and related standards. While using packet switching, X.25 is built on the concept of virtual circuits emulating traditional telephone connections. In 1974, X.25 formed the basis for the SERCnet network between British academic and research sites, which later became JANET. The initial ITU Standard on X.25 was approved in March 1976.[43]

The British Post Office, Western Union International and Tymnet collaborated to create the first international packet switched network, referred to as the International Packet Switched Service (IPSS), in 1978. This network grew from Europe and the US to cover Canada, Hong Kong, and Australia by 1981. By the 1990s it provided a worldwide networking infrastructure.[44]

Unlike ARPANET, X.25 was commonly available for business use. Telenet offered its Telemail electronic mail service, which was also targeted to enterprise use rather than the general email system of the ARPANET.

The first public dial-in networks used asynchronous TTY terminal protocols to reach a concentrator operated in the public network. Some networks, such as CompuServe, used X.25 to multiplex the terminal sessions into their packet-switched backbones, while others, such as Tymnet, used proprietary protocols. In 1979, CompuServe became the first service to offer electronic mail capabilities and technical support to personal computer users. The company broke new ground again in 1980 as the first to offer real-time chat with its CB Simulator. Other major dial-in networks were America Online (AOL) and Prodigy that also provided communications, content, and entertainment features. Many bulletin board system (BBS) networks also provided on-line access, such as FidoNet which was popular amongst hobbyist computer users, many of them hackers and amateur radio operators.

UUCP and Usenet

In 1979, two students at Duke University, Tom Truscott and Jim Ellis, originated the idea of using Bourne shell scripts to transfer news and messages on a serial line UUCP connection with nearby University of North Carolina at Chapel Hill. Following public release of the software in 1980, the mesh of UUCP hosts forwarding on the Usenet news rapidly expanded. UUCPnet, as it would later be named, also created gateways and links between FidoNet and dial-up BBS hosts. UUCP networks spread quickly due to the lower costs involved, ability to use existing leased lines, X.25 links or even ARPANET connections, and the lack of strict use policies compared to later networks like CSNET and Bitnet. All connects were local. By 1981 the number of UUCP hosts had grown to 550, nearly doubling to 940 in 1984. – Sublink Network, operating since 1987 and officially founded in Italy in 1989, based its interconnectivity upon UUCP to redistribute mail and news groups messages throughout its Italian nodes (about 100 at the time) owned both by private individuals and small companies. Sublink Network represented possibly one of the first examples of the Internet technology becoming progress through popular diffusion.[45]

Merging the networks and creating the Internet (1973–95)

Internet_map_in_February_82.png test network in February 1982]]

TCP/IP

First_Internet_Demonstration,_1977.jpg, PRNET, and SATNET on November 22, 1977]]With so many different network methods, something was needed to unify them. Robert E. Kahn of DARPA and ARPANET recruited Vinton Cerf of Stanford University to work with him on the problem. By 1973, they had worked out a fundamental reformulation, where the differences between network protocols were hidden by using a common internetwork protocol, and instead of the network being responsible for reliability, as in the ARPANET, the hosts became responsible. Cerf credits Hubert Zimmermann, Gerard LeLann and Louis Pouzin (designer of the CYCLADES network) with important work on this design.[46]

The specification of the resulting protocol, _RFC 675 – Specification of Internet Transmission Control Program_, by Vinton Cerf, Yogen Dalal and Carl Sunshine, Network Working Group, December 1974, contains the first attested use of the term _internet_, as a shorthand for _internetworking_; later RFCs repeat this use, so the word started out as an adjective rather than the noun it is today.

With the role of the network reduced to the bare minimum, it became possible to join almost any networks together, no matter what their characteristics were, thereby solving Kahn's initial problem. DARPA agreed to fund development of prototype software, and after several years of work, the first demonstration of a gateway between the Packet Radio network in the SF Bay area and the ARPANET was conducted by the Stanford Research Institute. On November 22, 1977 a three network demonstration was conducted including the ARPANET, the SRI's Packet Radio Van on the Packet Radio Network and the Atlantic Packet Satellite network.[47][48]

Stemming from the first specifications of TCP in 1974, TCP/IP emerged in mid-late 1978 in nearly its final form, as used for the first decades of the Internet, known as "IPv4".[49] which is described in IETF publication RFC 791 (September 1981).

Ipv4_address.svg value]] IPv4 uses 32-bit addresses which limits the address space to 2³² addresses, i.e. addresses.[50] The last available IPv4 address was assigned in January 2011.[51] IPv4 is being replaced by its successor, called "IPv6", which uses 128 bit addresses, providing 2¹²⁸ addresses, i.e. .[52] This is a vastly increased address space. The shift to IPv6 is expected to take many years, decades, or perhaps longer, to complete, since there were four billion machines with IPv4 when the shift began.[53]

The associated standards for IPv4 were published by 1981 as RFCs 791, 792 and 793, and adopted for use. DARPA sponsored or encouraged the development of TCP/IP implementations for many operating systems and then scheduled a migration of all hosts on all of its packet networks to TCP/IP. On January 1, 1983, known as flag day, TCP/IP protocols became the only approved protocol on the ARPANET, replacing the earlier NCP protocol.[54]

From ARPANET to NSFNET

InetCirca85.jpg TCP/IP Internet map of early 1986.]]

After the ARPANET had been up and running for several years, ARPA looked for another agency to hand off the network to; ARPA's primary mission was funding cutting edge research and development, not running a communications utility. Eventually, in July 1975, the network had been turned over to the Defense Communications Agency, also part of the Department of Defense. In 1983, the U.S. military portion of the ARPANET was broken off as a separate network, the MILNET. MILNET subsequently became the unclassified but military-only NIPRNET, in parallel with the SECRET-level SIPRNET and JWICS for TOP SECRET and above. NIPRNET does have controlled security gateways to the public Internet.

The networks based on the ARPANET were government funded and therefore restricted to noncommercial uses such as research; unrelated commercial use was strictly forbidden. This initially restricted connections to military sites and universities. During the 1980s, the connections expanded to more educational institutions, and even to a growing number of companies such as Digital Equipment Corporation and Hewlett-Packard, which were participating in research projects or providing services to those who were.

Several other branches of the U.S. government, the National Aeronautics and Space Administration (NASA), the National Science Foundation (NSF), and the Department of Energy (DOE) became heavily involved in Internet research and started development of a successor to ARPANET. In the mid-1980s, all three of these branches developed the first Wide Area Networks based on TCP/IP. NASA developed the NASA Science Network, NSF developed CSNET and DOE evolved the Energy Sciences Network or ESNet.

NSFNET-backbone-T3.png NASA developed the TCP/IP based NASA Science Network (NSN) in the mid-1980s, connecting space scientists to data and information stored anywhere in the world. In 1989, the DECnet-based Space Physics Analysis Network (SPAN) and the TCP/IP-based NASA Science Network (NSN) were brought together at NASA Ames Research Center creating the first multiprotocol wide area network called the NASA Science Internet, or NSI. NSI was established to provide a totally integrated communications infrastructure to the NASA scientific community for the advancement of earth, space and life sciences. As a high-speed, multiprotocol, international network, NSI provided connectivity to over 20,000 scientists across all seven continents.

In 1981 NSF supported the development of the Computer Science Network (CSNET). CSNET connected with ARPANET using TCP/IP, and ran TCP/IP over X.25, but it also supported departments without sophisticated network connections, using automated dial-up mail exchange.

In 1986, the NSF created NSFNET, a 56 kbit/s backbone to support the NSF-sponsored supercomputing centers. The NSFNET also provided support for the creation of regional research and education networks in the United States, and for the connection of university and college campus networks to the regional networks.[55] The use of NSFNET and the regional networks was not limited to supercomputer users and the 56 kbit/s network quickly became overloaded. NSFNET was upgraded to 1.5 Mbit/s in 1988 under a cooperative agreement with the Merit Network in partnership with IBM, MCI, and the State of Michigan. The existence of NSFNET and the creation of Federal Internet Exchanges (FIXes) allowed the ARPANET to be decommissioned in 1990. NSFNET was expanded and upgraded to 45 Mbit/s in 1991, and was decommissioned in 1995 when it was replaced by backbones operated by several commercial Internet Service Providers.

Transition towards the Internet

The term "internet" was adopted in the first RFC published on the TCP protocol (RFC 675:[56] Internet Transmission Control Program, December 1974) as an abbreviation of the term _internetworking_ and the two terms were used interchangeably. In general, an internet was any network using TCP/IP. It was around the time when ARPANET was interlinked with NSFNET in the late 1980s, that the term was used as the name of the network, Internet, being the large and global TCP/IP network.[57]

As interest in networking grew and new applications for it were developed, the Internet's technologies spread throughout the rest of the world. The network-agnostic approach in TCP/IP meant that it was easy to use any existing network infrastructure, such as the IPSS X.25 network, to carry Internet traffic. In 1982, one year earlier than ARPANET, University College London replaced its transatlantic satellite links with TCP/IP over IPSS.[58][59]

Many sites unable to link directly to the Internet created simple gateways for the transfer of electronic mail, the most important application of the time. Sites with only intermittent connections used UUCP or FidoNet and relied on the gateways between these networks and the Internet. Some gateway services went beyond simple mail peering, such as allowing access to File Transfer Protocol (FTP) sites via UUCP or mail.[60]

Finally, routing technologies were developed for the Internet to remove the remaining centralized routing aspects. The Exterior Gateway Protocol (EGP) was replaced by a new protocol, the Border Gateway Protocol (BGP). This provided a meshed topology for the Internet and reduced the centric architecture which ARPANET had emphasized. In 1994, Classless Inter-Domain Routing (CIDR) was introduced to support better conservation of address space which allowed use of route aggregation to decrease the size of routing tables.[61]

TCP/IP goes global (1980s)

CERN, the European Internet, the link to the Pacific and beyond

Between 1984 and 1988 CERN began installation and operation of TCP/IP to interconnect its major internal computer systems, workstations, PCs and an accelerator control system. CERN continued to operate a limited self-developed system (CERNET) internally and several incompatible (typically proprietary) network protocols externally. There was considerable resistance in Europe towards more widespread use of TCP/IP, and the CERN TCP/IP intranets remained isolated from the Internet until 1989.

In 1988, Daniel Karrenberg, from Centrum Wiskunde & Informatica (CWI) in Amsterdam, visited Ben Segal, CERN's TCP/IP Coordinator, looking for advice about the transition of the European side of the UUCP Usenet network (much of which ran over X.25 links) over to TCP/IP. In 1987, Ben Segal had met with Len Bosack from the then still small company Cisco about purchasing some TCP/IP routers for CERN, and was able to give Karrenberg advice and forward him on to Cisco for the appropriate hardware. This expanded the European portion of the Internet across the existing UUCP networks, and in 1989 CERN opened its first external TCP/IP connections.[62] This coincided with the creation of Réseaux IP Européens (RIPE), initially a group of IP network administrators who met regularly to carry out coordination work together. Later, in 1992, RIPE was formally registered as a cooperative in Amsterdam.

At the same time as the rise of internetworking in Europe, ad hoc networking to ARPA and in-between Australian universities formed, based on various technologies such as X.25 and UUCPNet. These were limited in their connection to the global networks, due to the cost of making individual international UUCP dial-up or X.25 connections. In 1989, Australian universities joined the push towards using IP protocols to unify their networking infrastructures. AARNet was formed in 1989 by the Australian Vice-Chancellors' Committee and provided a dedicated IP based network for Australia.

The Internet began to penetrate Asia in the 1980s. In May 1982 South Korea became the second country to successfully set up TCP/IP IPv4 network.[63][64] Japan, which had built the UUCP-based network JUNET in 1984, connected to NSFNET in 1989. It hosted the annual meeting of the Internet Society, INET'92, in Kobe. Singapore developed TECHNET in 1990, and Thailand gained a global Internet connection between Chulalongkorn University and UUNET in 1992.[65]

The early global "digital divide" emerges

InternetPenetrationWorldMap.svg'''

Source: International Telecommunications Union.[66]]]

FixedBroadbandInternetPenetrationWorldMap.svg
as a percentage of a country's population'''

Source: International Telecommunications Union.[67]]]

MobileBroadbandInternetPenetrationWorldMap.svg
as a percentage of a country's population'''

Source: International Telecommunications Union.[68]]]

While developed countries with technological infrastructures were joining the Internet, developing countries began to experience a digital divide separating them from the Internet. On an essentially continental basis, they are building organizations for Internet resource administration and sharing operational experience, as more and more transmission facilities go into place.

Africa

At the beginning of the 1990s, African countries relied upon X.25 IPSS and 2400 baud modem UUCP links for international and internetwork computer communications.

In August 1995, InfoMail Uganda, Ltd., a privately held firm in Kampala now known as InfoCom, and NSN Network Services of Avon, Colorado, sold in 1997 and now known as Clear Channel Satellite, established Africa's first native TCP/IP high-speed satellite Internet services. The data connection was originally carried by a C-Band RSCC Russian satellite which connected InfoMail's Kampala offices directly to NSN's MAE-West point of presence using a private network from NSN's leased ground station in New Jersey. InfoCom's first satellite connection was just 64 kbit/s, serving a Sun host computer and twelve US Robotics dial-up modems.

In 1996, a USAID funded project, the Leland Initiative, started work on developing full Internet connectivity for the continent. Guinea, Mozambique, Madagascar and Rwanda gained satellite earth stations in 1997, followed by Ivory Coast and Benin in 1998.

Africa is building an Internet infrastructure. AFRINIC, headquartered in Mauritius, manages IP address allocation for the continent. As do the other Internet regions, there is an operational forum, the Internet Community of Operational Networking Specialists.[69]

There are many programs to provide high-performance transmission plant, and the western and southern coasts have undersea optical cable. High-speed cables join North Africa and the Horn of Africa to intercontinental cable systems. Undersea cable development is slower for East Africa; the original joint effort between New Partnership for Africa's Development (NEPAD) and the East Africa Submarine System (Eassy) has broken off and may become two efforts.[70]

Asia and Oceania

The Asia Pacific Network Information Centre (APNIC), headquartered in Australia, manages IP address allocation for the continent. APNIC sponsors an operational forum, the Asia-Pacific Regional Internet Conference on Operational Technologies (APRICOT).[71]

South Korea's first Internet system, the System Development Network (SDN) began operation on 15 May 1982. SDN was connected to the rest of the world in August 1983 using UUCP (Unixto-Unix-Copy); connected to CSNET in December 1984; and formally connected to the U.S. Internet in 1990.[72]

In 1991, the People's Republic of China saw its first TCP/IP college network, Tsinghua University's TUNET. The PRC went on to make its first global Internet connection in 1994, between the Beijing Electro-Spectrometer Collaboration and Stanford University's Linear Accelerator Center. However, China went on to implement its own digital divide by implementing a country-wide content filter.[73]

Latin America

As with the other regions, the Latin American and Caribbean Internet Addresses Registry (LACNIC) manages the IP address space and other resources for its area. LACNIC, headquartered in Uruguay, operates DNS root, reverse DNS, and other key services.

Rise of the global Internet (late 1980s/early 1990s onward)

Initially, as with its predecessor networks, the system that would evolve into the Internet was primarily for government and government body use.

However, interest in commercial use of the Internet quickly became a commonly debated topic. Although commercial use was forbidden, the exact definition of commercial use was unclear and subjective. UUCPNet and the X.25 IPSS had no such restrictions, which would eventually see the official barring of UUCPNet use of ARPANET and NSFNET connections. (Some UUCP links still remained connecting to these networks however, as administrators cast a blind eye to their operation.)

Internet_Hosts_Count_log.svg.[74]]] As a result, during the late 1980s, the first Internet service provider (ISP) companies were formed. Companies like PSINet, UUNET, Netcom, and Portal Software were formed to provide service to the regional research networks and provide alternate network access, UUCP-based email and Usenet News to the public. The first commercial dialup ISP in the United States was The World, which opened in 1989.[75]

In 1992, the U.S. Congress passed the Scientific and Advanced-Technology Act, , which allowed NSF to support access by the research and education communities to computer networks which were not used exclusively for research and education purposes, thus permitting NSFNET to interconnect with commercial networks.[76][77] This caused controversy within the research and education community, who were concerned commercial use of the network might lead to an Internet that was less responsive to their needs, and within the community of commercial network providers, who felt that government subsidies were giving an unfair advantage to some organizations.[78]

By 1990, ARPANET's goals had been fulfilled and new networking technologies exceeded the original scope and the project came to a close. New network service providers including PSINet, Alternet, CERFNet, ANS CO+RE, and many others were offering network access to commercial customers. NSFNET was no longer the de facto backbone and exchange point of the Internet. The Commercial Internet eXchange (CIX), Metropolitan Area Exchanges (MAEs), and later Network Access Points (NAPs) were becoming the primary interconnections between many networks. The final restrictions on carrying commercial traffic ended on April 30, 1995 when the National Science Foundation ended its sponsorship of the NSFNET Backbone Service and the service ended.[79][80] NSF provided initial support for the NAPs and interim support to help the regional research and education networks transition to commercial ISPs. NSF also sponsored the very high speed Backbone Network Service (vBNS) which continued to provide support for the supercomputing centers and research and education in the United States.[81]

World Wide Web and introduction of browsers

The World Wide Web (sometimes abbreviated "www" or "W3") is an information space where documents and other web resources are identified by URIs, interlinked by hypertext links, and can be accessed via the Internet using a web browser and (more recently) web-based applications.[82] It has become known simply as "the Web". As of the 2010s, the World Wide Web is the primary tool billions use to interact on the Internet, and it has changed people's lives immeasurably.[83][84][85]

Precursors to the web browser emerged in the form of hyperlinked applications during the mid and late 1980s (the bare concept of hyperlinking had by then existed for some decades). Following these, Tim Berners-Lee is credited with inventing the World Wide Web in 1989 and developing in 1990 both the first web server, and the first web browser, called WorldWideWeb (no spaces) and later renamed Nexus.[86] Many others were soon developed, with Marc Andreessen's 1993 Mosaic (later Netscape),[87] being particularly easy to use and install, and often credited with sparking the internet boom of the 1990s.[88] Today, the major web browsers are Firefox, Internet Explorer, Google Chrome, Opera and Safari.[89]

A boost in web users was triggered in September 1993 by NCSA Mosaic, a graphical browser which eventually ran on several popular office and home computers.[90] This was the first web browser aiming to bring multimedia content to non-technical users, and therefore included images and text on the same page, unlike previous browser designs;[91] its founder, Marc Andreessen, also established the company that in 1994, released Netscape Navigator, which resulted in one of the early browser wars, when it ended up in a competition for dominance (which it lost) with Microsoft Windows' Internet Explorer. Commercial use restrictions were lifted in 1995. The online service America Online (AOL) offered their users a connection to the Internet via their own internal browser.

Use in wider society 1990s to early 2000s (Web 1.0)

During the first decade or so of the public internet, the immense changes it would eventually enable in the 2000s were still nascent. In terms of providing context for this period, mobile cellular devices ("smartphones" and other cellular devices) which today provide near-universal access, were used for business and not a routine household item owned by parents and children worldwide. Social media in the modern sense had yet to come into existence, laptops were bulky and most households did not have computers. Data rates were slow and most people lacked means to video or digitize video; media storage was transitioning slowly from analog tape to digital optical discs (DVD and to an extent still, floppy disc to CD). Enabling technologies used from the early 2000s such as PHP, modern JavaScript and Java, technologies such as AJAX, HTML 4 (and its emphasis on CSS), and various software frameworks, which enabled and simplified speed of web development, largely awaited invention and their eventual widespread adoption.

The Internet was widely used for mailing lists, emails, e-commerce and early popular online shopping (Amazon and eBay for example), online forums and bulletin boards, and personal websites and blogs, and use was growing rapidly, but by more modern standards the systems used were static and lacked widespread social engagement. It awaited a number of events in the early 2000s to change from a communications technology to gradually develop into a key part of global society's infrastructure.

Typical design elements of these "Web 1.0" era websites included:[92] Static pages instead of dynamic HTML;[93] content served from filesystems instead of relational databases; pages built using Server Side Includes or CGI instead of a web application written in a dynamic programming language; HTML 3.2-era structures such as frames and tables to create page layouts; online guestbooks; overuse of GIF buttons and similar small graphics promoting particular items;[94] and HTML forms sent via email. (Support for server side scripting was rare on shared servers so the usual feedback mechanism was via email, using mailto forms and their email program.[95]

During the period 1997 to 2001, the first speculative investment bubble related to the Internet took place, in which "dot-com" companies (referring to the ".com" top level domain used by businesses) were propelled to exceedingly high valuations as investors rapidly stoked stock values, followed by a market crash; the first dot-com bubble. However this only temporarily slowed enthusiasm and growth, which quickly recovered and continued to grow.

The changes that would propel the Internet into its place as a social system took place during a relatively short period of no more than five years, starting from around 2004. They included:

:* The call to "Web 2.0" in 2004 (first suggested in 1999),

:* Accelerating adoption and commoditization among households of, and familiarity with, the necessary hardware (such as computers).

:* Accelerating storage technology and data access speeds – hard drives emerged, took over from far smaller, slower floppy discs, and grew from megabytes to gigabytes (and by around 2010, terabytes), RAM from hundreds of kilobytes to gigabytes as typical amounts on a system, and Ethernet, the enabling technology for TCP/IP, moved from common speeds of kilobits to tens of megabits per second, to gigabits per second.

:* High speed Internet and wider coverage of data connections, at lower prices, allowing larger traffic rates, more reliable simpler traffic, and traffic from more locations,

:* The gradually accelerating perception of the ability of computers to create new means and approaches to communication, the emergence of social media and websites such as Twitter and Facebook to their later prominence, and global collaborations such as Wikipedia (which existed before but gained prominence as a result), and shortly after (approximately 2007–2008 onward):

:* The mobile revolution, which provided access to the Internet to much of human society of all ages, in their daily lives, and allowed them to share, discuss, and continually update, inquire, and respond.

:* Non-volatile RAM rapidly grew in size and reliability, and decreased in price, becoming a commodity capable of enabling high levels of computing activity on these small handheld devices as well as solid-state drives (SSD).

:* An emphasis on power efficient processor and device design, rather than purely high processing power; one of the beneficiaries of this was ARM, a British company which had focused since the 1980s on powerful but low cost simple microprocessors. ARM architecture rapidly gained dominance in the market for mobile and embedded devices. With the call to Web 2.0, the period up to around 2004–2005 was retrospectively named and described by some as Web 1.0.

Web 2.0

The term "Web 2.0" describes websites that emphasize user-generated content (including user-to-user interaction), usability, and interoperability. It first appeared in a January 1999 article called "Fragmented Future" written by Darcy DiNucci, a consultant on electronic information design, where she wrote:[96][97][98][99]

    _"The Web we know now, which loads into a browser window in essentially static screenfuls, is only an embryo of the Web to come. The first glimmerings of Web 2.0 are beginning to appear, and we are just starting to see how that embryo might develop. The Web will be understood not as screenfuls of text and graphics but as a transport mechanism, the ether through which interactivity happens. It will [...] appear on your computer screen, [...] on your TV set [...] your car dashboard [...] your cell phone [...] hand-held game machines [...] maybe even your microwave oven."_

The term resurfaced during 2002 – 2004,[100][101][102][103] and gained prominence in late 2004 following presentations by Tim O'Reilly and Dale Dougherty at the first Web 2.0 Conference. In their opening remarks, John Battelle and Tim O'Reilly outlined their definition of the "Web as Platform", where software applications are built upon the Web as opposed to upon the desktop. The unique aspect of this migration, they argued, is that "customers are building your business for you".[104] They argued that the activities of users generating content (in the form of ideas, text, videos, or pictures) could be "harnessed" to create value.

Web 2.0 does not refer to an update to any technical specification, but rather to cumulative changes in the way Web pages are made and used. Web 2.0 describes an approach, in which sites focus substantially upon allowing users to interact and collaborate with each other in a social media dialogue as creators of user-generated content in a virtual community, in contrast to Web sites where people are limited to the passive viewing of content. Examples of Web 2.0 include social networking sites, blogs, wikis, folksonomies, video sharing sites, hosted services, Web applications, and mashups.[105] Terry Flew, in his 3rd Edition of _New Media_ described what he believed to characterize the differences between Web 1.0 and Web 2.0:

    "[The] move from personal websites to blogs and blog site aggregation, from publishing to participation, from web content as the outcome of large up-front investment to an ongoing and interactive process, and from content management systems to links based on tagging (folksonomy)".[106]

This era saw several household names gain prominence through their community-oriented operation – YouTube, Twitter, Facebook, Reddit and Wikipedia being some examples.

The mobile revolution

The process of change generally described as "Web 2.0" was itself greatly accelerated and transformed only a short time later by the increasing growth in mobile devices. This mobile revolution meant that computers in the form of smartphones became something many people used, took with them everywhere, communicated with, used for photographs and videos they instantly shared or to shop or seek information "on the move" – and used socially, as opposed to items on a desk at home or just used for work.

Location-based services, services using location and other sensor information, and crowdsourcing (frequently but not always location based), became common, with posts tagged by location, or websites and services becoming location aware. Mobile-targeted websites (such as "m.website.com") became common, designed especially for the new devices used. Netbooks, ultrabooks, widespread 4G and Wi-Fi, and mobile chips capable or running at nearly the power of desktops from not many years before on far lower power usage, became enablers of this stage of Internet development, and the term "App" emerged (short for "Application program" or "Program") as did the "App store".

Networking in outer space

The first Internet link into low earth orbit was established on January 22, 2010 when astronaut T. J. Creamer posted the first unassisted update to his Twitter account from the International Space Station, marking the extension of the Internet into space.[107] (Astronauts at the ISS had used email and Twitter before, but these messages had been relayed to the ground through a NASA data link before being posted by a human proxy.) This personal Web access, which NASA calls the Crew Support LAN, uses the space station's high-speed Ku band microwave link. To surf the Web, astronauts can use a station laptop computer to control a desktop computer on Earth, and they can talk to their families and friends on Earth using Voice over IP equipment.[108]

Communication with spacecraft beyond earth orbit has traditionally been over point-to-point links through the Deep Space Network. Each such data link must be manually scheduled and configured. In the late 1990s NASA and Google began working on a new network protocol, Delay-tolerant networking (DTN) which automates this process, allows networking of spaceborne transmission nodes, and takes the fact into account that spacecraft can temporarily lose contact because they move behind the Moon or planets, or because space weather disrupts the connection. Under such conditions, DTN retransmits data packages instead of dropping them, as the standard TCP/IP Internet Protocol does. NASA conducted the first field test of what it calls the "deep space internet" in November 2008.[109] Testing of DTN-based communications between the International Space Station and Earth (now termed Disruption-Tolerant Networking) has been ongoing since March 2009, and is scheduled to continue until March 2014.[110]

This network technology is supposed to ultimately enable missions that involve multiple spacecraft where reliable inter-vessel communication might take precedence over vessel-to-earth downlinks. According to a February 2011 statement by Google's Vint Cerf, the so-called "Bundle protocols" have been uploaded to NASA's EPOXI mission spacecraft (which is in orbit around the Sun) and communication with Earth has been tested at a distance of approximately 80 light seconds.[111]


Internet governance

As a globally distributed network of voluntarily interconnected autonomous networks, the Internet operates without a central governing body. It has no centralized governance for either technology or policies, and each constituent network chooses what technologies and protocols it will deploy from the voluntary technical standards that are developed by the Internet Engineering Task Force (IETF).[112] However, throughout its entire history, the Internet system has had an "Internet Assigned Numbers Authority" (IANA) for the allocation and assignment of various technical identifiers needed for the operation of the Internet.[113] The Internet Corporation for Assigned Names and Numbers (ICANN) provides oversight and coordination for two principal name spaces in the Internet, the Internet Protocol address space and the Domain Name System.

NIC, InterNIC, IANA and ICANN

The IANA function was originally performed by USC Information Sciences Institute (ISI), and it delegated portions of this responsibility with respect to numeric network and autonomous system identifiers to the Network Information Center (NIC) at Stanford Research Institute (SRI International) in Menlo Park, California. ISI's Jonathan Postel managed the IANA, served as RFC Editor and performed other key roles until his premature death in 1998.[114]

As the early ARPANET grew, hosts were referred to by names, and a HOSTS.TXT file would be distributed from SRI International to each host on the network. As the network grew, this became cumbersome. A technical solution came in the form of the Domain Name System, created by ISI's Paul Mockapetris in 1983.[115] The Defense Data Network—Network Information Center (DDN-NIC) at SRI handled all registration services, including the top-level domains (TLDs) of .mil, .gov, .edu, .org, .net, .com and .us, root nameserver administration and Internet number assignments under a United States Department of Defense contract.[116] In 1991, the Defense Information Systems Agency (DISA) awarded the administration and maintenance of DDN-NIC (managed by SRI up until this point) to Government Systems, Inc., who subcontracted it to the small private-sector Network Solutions, Inc.[117][118]

The increasing cultural diversity of the Internet also posed administrative challenges for centralized management of the IP addresses. In October 1992, the Internet Engineering Task Force (IETF) published RFC 1366,[119] which described the "growth of the Internet and its increasing globalization" and set out the basis for an evolution of the IP registry process, based on a regionally distributed registry model. This document stressed the need for a single Internet number registry to exist in each geographical region of the world (which would be of "continental dimensions"). Registries would be "unbiased and widely recognized by network providers and subscribers" within their region. The RIPE Network Coordination Centre (RIPE NCC) was established as the first RIR in May 1992. The second RIR, the Asia Pacific Network Information Centre (APNIC), was established in Tokyo in 1993, as a pilot project of the Asia Pacific Networking Group.[120]

Since at this point in history most of the growth on the Internet was coming from non-military sources, it was decided that the Department of Defense would no longer fund registration services outside of the .mil TLD. In 1993 the U.S. National Science Foundation, after a competitive bidding process in 1992, created the InterNIC to manage the allocations of addresses and management of the address databases, and awarded the contract to three organizations. Registration Services would be provided by Network Solutions; Directory and Database Services would be provided by AT&T; and Information Services would be provided by General Atomics.[121]

Over time, after consultation with the IANA, the IETF, RIPE NCC, APNIC, and the Federal Networking Council (FNC), the decision was made to separate the management of domain names from the management of IP numbers.[122] Following the examples of RIPE NCC and APNIC, it was recommended that management of IP address space then administered by the InterNIC should be under the control of those that use it, specifically the ISPs, end-user organizations, corporate entities, universities, and individuals. As a result, the American Registry for Internet Numbers (ARIN) was established as in December 1997, as an independent, not-for-profit corporation by direction of the National Science Foundation and became the third Regional Internet Registry.[123]

In 1998, both the IANA and remaining DNS-related InterNIC functions were reorganized under the control of ICANN, a California non-profit corporation contracted by the United States Department of Commerce to manage a number of Internet-related tasks. As these tasks involved technical coordination for two principal Internet name spaces (DNS names and IP addresses) created by the IETF, ICANN also signed a memorandum of understanding with the IAB to define the technical work to be carried out by the Internet Assigned Numbers Authority.[124] The management of Internet address space remained with the regional Internet registries, which collectively were defined as a supporting organization within the ICANN structure.[125] ICANN provides central coordination for the DNS system, including policy coordination for the split registry / registrar system, with competition among registry service providers to serve each top-level-domain and multiple competing registrars offering DNS services to end-users.

Internet Engineering Task Force

The Internet Engineering Task Force (IETF) is the largest and most visible of several loosely related ad-hoc groups that provide technical direction for the Internet, including the Internet Architecture Board (IAB), the Internet Engineering Steering Group (IESG), and the Internet Research Task Force (IRTF).

The IETF is a loosely self-organized group of international volunteers who contribute to the engineering and evolution of Internet technologies. It is the principal body engaged in the development of new Internet standard specifications. Much of the work of the IETF is organized into _Working Groups_. Standardization efforts of the Working Groups are often adopted by the Internet community, but the IETF does not control or patrol the Internet.[126][127]

The IETF grew out of quarterly meeting of U.S. government-funded researchers, starting in January 1986. Non-government representatives were invited by the fourth IETF meeting in October 1986. The concept of Working Groups was introduced at the fifth meeting in February 1987. The seventh meeting in July 1987 was the first meeting with more than one hundred attendees. In 1992, the Internet Society, a professional membership society, was formed and IETF began to operate under it as an independent international standards body. The first IETF meeting outside of the United States was held in Amsterdam, The Netherlands, in July 1993. Today, the IETF meets three times per year and attendance has been as high as ca. 2,000 participants. Typically one in three IETF meetings are held in Europe or Asia. The number of non-US attendees is typically ca. 50%, even at meetings held in the United States.[128]

The IETF is not a legal entity, has no governing board, no members, and no dues. The closest status resembling membership is being on an IETF or Working Group mailing list. IETF volunteers come from all over the world and from many different parts of the Internet community. The IETF works closely with and under the supervision of the Internet Engineering Steering Group (IESG)[129] and the Internet Architecture Board (IAB).[130] The Internet Research Task Force (IRTF) and the Internet Research Steering Group (IRSG), peer activities to the IETF and IESG under the general supervision of the IAB, focus on longer term research issues.[131][132]

Request for Comments

Request for Comments (RFCs) are the main documentation for the work of the IAB, IESG, IETF, and IRTF. RFC 1, "Host Software", was written by Steve Crocker at UCLA in April 1969, well before the IETF was created. Originally they were technical memos documenting aspects of ARPANET development and were edited by Jon Postel, the first RFC Editor.[133][134]

RFCs cover a wide range of information from proposed standards, draft standards, full standards, best practices, experimental protocols, history, and other informational topics.[135] RFCs can be written by individuals or informal groups of individuals, but many are the product of a more formal Working Group. Drafts are submitted to the IESG either by individuals or by the Working Group Chair. An RFC Editor, appointed by the IAB, separate from IANA, and working in conjunction with the IESG, receives drafts from the IESG and edits, formats, and publishes them. Once an RFC is published, it is never revised. If the standard it describes changes or its information becomes obsolete, the revised standard or updated information will be re-published as a new RFC that "obsoletes" the original.[136][137]

The Internet Society

The Internet Society (ISOC) is an international, nonprofit organization founded during 1992 "to assure the open development, evolution and use of the Internet for the benefit of all people throughout the world". With offices near Washington, DC, USA, and in Geneva, Switzerland, ISOC has a membership base comprising more than 80 organizational and more than 50,000 individual members. Members also form "chapters" based on either common geographical location or special interests. There are currently more than 90 chapters around the world.[138]

ISOC provides financial and organizational support to and promotes the work of the standards settings bodies for which it is the organizational home: the Internet Engineering Task Force (IETF), the Internet Architecture Board (IAB), the Internet Engineering Steering Group (IESG), and the Internet Research Task Force (IRTF). ISOC also promotes understanding and appreciation of the Internet model of open, transparent processes and consensus-based decision-making.[139]

Globalization and Internet governance in the 21st century

Since the 1990s, the Internet's governance and organization has been of global importance to governments, commerce, civil society, and individuals. The organizations which held control of certain technical aspects of the Internet were the successors of the old ARPANET oversight and the current decision-makers in the day-to-day technical aspects of the network. While recognized as the administrators of certain aspects of the Internet, their roles and their decision-making authority are limited and subject to increasing international scrutiny and increasing objections. These objections have led to the ICANN removing themselves from relationships with first the University of Southern California in 2000,[140] and in September 2009, gaining autonomy from the US government by the ending of its longstanding agreements, although some contractual obligations with the U.S. Department of Commerce continued.[141][142][143] Finally, on October 1, 2016 ICANN ended its contract with the United States Department of Commerce National Telecommunications and Information Administration (NTIA), allowing oversight to pass to the global Internet community.[144]

The IETF, with financial and organizational support from the Internet Society, continues to serve as the Internet's ad-hoc standards body and issues Request for Comments.

In November 2005, the World Summit on the Information Society, held in Tunis, called for an Internet Governance Forum (IGF) to be convened by United Nations Secretary General. The IGF opened an ongoing, non-binding conversation among stakeholders representing governments, the private sector, civil society, and the technical and academic communities about the future of Internet governance. The first IGF meeting was held in October/November 2006 with follow up meetings annually thereafter.[145] Since WSIS, the term "Internet governance" has been broadened beyond narrow technical concerns to include a wider range of Internet-related policy issues.[146][147]


Politicization of the Internet

Due to its prominence and immediacy as an effective means of mass communication, the Internet has also become more politicized as it has grown. This has led in turn, to discourses and activities that would once have taken place in other ways, migrating to being mediated by internet.

Examples include political activities such as public protest and canvassing of support and votes, but also –

:* The spreading of ideas and opinions;

:* Recruitment of followers, and "coming together" of members of the public, for ideas, products, and causes;

:* Providing and widely distributing and sharing information that might be deemed sensitive or relates to whistleblowing (and efforts by specific countries to prevent this by censorship);

:* Criminal activity and terrorism (and resulting law enforcement use, together with its facilitation by mass surveillance);

:*Politically-motivated fake news.

Net neutrality

On April 23, 2014, the Federal Communications Commission (FCC) was reported to be considering a new rule that would permit Internet service providers to offer content providers a faster track to send content, thus reversing their earlier net neutrality position.[148][149][150] A possible solution to net neutrality concerns may be municipal broadband, according to Professor Susan Crawford, a legal and technology expert at Harvard Law School.[151] On May 15, 2014, the FCC decided to consider two options regarding Internet services: first, permit fast and slow broadband lanes, thereby compromising net neutrality; and second, reclassify broadband as a telecommunication service, thereby preserving net neutrality.[152][153] On November 10, 2014, President Obama recommended the FCC reclassify broadband Internet service as a telecommunications service in order to preserve net neutrality.[154][155][156] On January 16, 2015, Republicans presented legislation, in the form of a U.S. Congress HR discussion draft bill, that makes concessions to net neutrality but prohibits the FCC from accomplishing the goal or enacting any further regulation affecting Internet service providers (ISPs).[157][158] On January 31, 2015, AP News reported that the FCC will present the notion of applying ("with some caveats") Title II (common carrier) of the Communications Act of 1934 to the internet in a vote expected on February 26, 2015.[159][160][161][162][163] Adoption of this notion would reclassify internet service from one of information to one of telecommunications[164] and, according to Tom Wheeler, chairman of the FCC, ensure net neutrality.[165][166] The FCC is expected to enforce net neutrality in its vote, according to _The New York Times_.[167][168]

On February 26, 2015, the FCC ruled in favor of net neutrality by applying Title II (common carrier) of the Communications Act of 1934 and Section 706 of the Telecommunications act of 1996 to the Internet.[169][170][171] The FCC chairman, Tom Wheeler, commented, "This is no more a plan to regulate the Internet than the First Amendment is a plan to regulate free speech. They both stand for the same concept."[172]

On March 12, 2015, the FCC released the specific details of the net neutrality rules.[173][174][175] On April 13, 2015, the FCC published the final rule on its new "Net Neutrality" regulations.[176][177]

On December 14, 2017, the F.C.C Repealed their March 12, 2015 decision by a 3–2 vote regarding net neutrality rules.[178]


Use and culture

Email and Usenet

E-mail has often been called the killer application of the Internet. It predates the Internet, and was a crucial tool in creating it. Email started in 1965 as a way for multiple users of a time-sharing mainframe computer to communicate. Although the history is undocumented, among the first systems to have such a facility were the System Development Corporation (SDC) Q32 and the Compatible Time-Sharing System (CTSS) at MIT.[179]

The ARPANET computer network made a large contribution to the evolution of electronic mail. An experimental inter-system transferred mail on the ARPANET shortly after its creation.[180] In 1971 Ray Tomlinson created what was to become the standard Internet electronic mail addressing format, using the @ sign to separate mailbox names from host names.[181]

A number of protocols were developed to deliver messages among groups of time-sharing computers over alternative transmission systems, such as UUCP and IBM's VNET email system. Email could be passed this way between a number of networks, including ARPANET, BITNET and NSFNET, as well as to hosts connected directly to other sites via UUCP. See the history of SMTP protocol.

In addition, UUCP allowed the publication of text files that could be read by many others. The News software developed by Steve Daniel and Tom Truscott in 1979 was used to distribute news and bulletin board-like messages. This quickly grew into discussion groups, known as newsgroups, on a wide range of topics. On ARPANET and NSFNET similar discussion groups would form via mailing lists, discussing both technical issues and more culturally focused topics (such as science fiction, discussed on the sflovers mailing list).

During the early years of the Internet, email and similar mechanisms were also fundamental to allow people to access resources that were not available due to the absence of online connectivity. UUCP was often used to distribute files using the 'alt.binary' groups. Also, FTP e-mail gateways allowed people that lived outside the US and Europe to download files using ftp commands written inside email messages. The file was encoded, broken in pieces and sent by email; the receiver had to reassemble and decode it later, and it was the only way for people living overseas to download items such as the earlier Linux versions using the slow dial-up connections available at the time. After the popularization of the Web and the HTTP protocol such tools were slowly abandoned.

From Gopher to the WWW

As the Internet grew through the 1980s and early 1990s, many people realized the increasing need to be able to find and organize files and information. Projects such as Archie, Gopher, WAIS, and the FTP Archive list attempted to create ways to organize distributed data. In the early 1990s, Gopher, invented by Mark P. McCahill offered a viable alternative to the World Wide Web. However, in 1993 the World Wide Web saw many advances to indexing and ease of access through search engines, which often neglected Gopher and Gopherspace. As popularity increased through ease of use, investment incentives also grew until in the middle of 1994 the WWW's popularity gained the upper hand. Then it became clear that Gopher and the other projects were doomed fall short.[182]

One of the most promising user interface paradigms during this period was hypertext. The technology had been inspired by Vannevar Bush's "Memex"[183] and developed through Ted Nelson's research on Project Xanadu, Douglas Engelbart's research on NLS and Augment[184], and Andries van Dam's research from HES in 1968, through FRESS, Intermedia, and others. Many small self-contained hypertext systems had been created as well, such as Apple Computer's HyperCard (1987). Gopher became the first commonly used hypertext interface to the Internet. While Gopher menu items were examples of hypertext, they were not commonly perceived in that way.

First_Web_Server.jpg was used by Sir Tim Berners-Lee at CERN and became the world's first Web server.]] In 1989, while working at CERN, Tim Berners-Lee invented a network-based implementation of the hypertext concept. By releasing his invention to public use, he encouraged widespread use.[185] For his work in developing the World Wide Web, Berners-Lee received the Millennium technology prize in 2004.[186] One early popular web browser, modeled after HyperCard, was ViolaWWW.

A turning point for the World Wide Web began with the introduction[187] of the Mosaic web browser[188] in 1993, a graphical browser developed by a team at the National Center for Supercomputing Applications at the University of Illinois at Urbana–Champaign (NCSA-UIUC), led by Marc Andreessen. Funding for Mosaic came from the High-Performance Computing and Communications Initiative, a funding program initiated by the High Performance Computing and Communication Act of 1991, also known as the "Gore Bill".[189] Mosaic's graphical interface soon became more popular than Gopher, which at the time was primarily text-based, and the WWW became the preferred interface for accessing the Internet. (Gore's reference to his role in "creating the Internet", however, was ridiculed in his presidential election campaign. See the full article Al Gore and information technology).

Mosaic was superseded in 1994 by Andreessen's Netscape Navigator, which replaced Mosaic as the world's most popular browser. While it held this title for some time, eventually competition from Internet Explorer and a variety of other browsers almost completely displaced it. Another important event held on January 11, 1994, was _The Superhighway Summit_ at UCLA's Royce Hall. This was the "first public conference bringing together all of the major industry, government and academic leaders in the field [and] also began the national dialogue about the _Information Superhighway_ and its implications."[190]

_24 Hours in Cyberspace_, "the largest one-day online event" (February 8, 1996) up to that date, took place on the then-active website, _cyber24.com._[191][192] It was headed by photographer Rick Smolan.[193] A photographic exhibition was unveiled at the Smithsonian Institution's National Museum of American History on January 23, 1997, featuring 70 photos from the project.[194]

Search engines

Even before the World Wide Web, there were search engines that attempted to organize the Internet. The first of these was the Archie search engine from McGill University in 1990, followed in 1991 by WAIS and Gopher. All three of those systems predated the invention of the World Wide Web but all continued to index the Web and the rest of the Internet for several years after the Web appeared. There are still Gopher servers as of 2006, although there are a great many more web servers.

As the Web grew, search engines and Web directories were created to track pages on the Web and allow people to find things. The first full-text Web search engine was WebCrawler in 1994. Before WebCrawler, only Web page titles were searched. Another early search engine, Lycos, was created in 1993 as a university project, and was the first to achieve commercial success. During the late 1990s, both Web directories and Web search engines were popular—Yahoo! (founded 1994) and Altavista (founded 1995) were the respective industry leaders. By August 2001, the directory model had begun to give way to search engines, tracking the rise of Google (founded 1998), which had developed new approaches to relevancy ranking. Directory features, while still commonly available, became after-thoughts to search engines.

Database size, which had been a significant marketing feature through the early 2000s, was similarly displaced by emphasis on relevancy ranking, the methods by which search engines attempt to sort the best results first. Relevancy ranking first became a major issue circa 1996, when it became apparent that it was impractical to review full lists of results. Consequently, algorithms for relevancy ranking have continuously improved. Google's PageRank method for ordering the results has received the most press, but all major search engines continually refine their ranking methodologies with a view toward improving the ordering of results. As of 2006, search engine rankings are more important than ever, so much so that an industry has developed ("search engine optimizers", or "SEO") to help web-developers improve their search ranking, and an entire body of case law has developed around matters that affect search engine rankings, such as use of trademarks in metatags. The sale of search rankings by some search engines has also created controversy among librarians and consumer advocates.[195]

On June 3, 2009, Microsoft launched its new search engine, Bing.[196] The following month Microsoft and Yahoo! announced a deal in which Bing would power Yahoo! Search.[197]

File sharing

Resource or file sharing has been an important activity on computer networks from well before the Internet was established and was supported in a variety of ways including bulletin board systems (1978), Usenet (1980), Kermit (1981), and many others. The File Transfer Protocol (FTP) for use on the Internet was standardized in 1985 and is still in use today.[198] A variety of tools were developed to aid the use of FTP by helping users discover files they might want to transfer, including the Wide Area Information Server (WAIS) in 1991, Gopher in 1991, Archie in 1991, Veronica in 1992, Jughead in 1993, Internet Relay Chat (IRC) in 1988, and eventually the World Wide Web (WWW) in 1991 with Web directories and Web search engines.

In 1999, Napster became the first peer-to-peer file sharing system.[199] Napster used a central server for indexing and peer discovery, but the storage and transfer of files was decentralized. A variety of peer-to-peer file sharing programs and services with different levels of decentralization and anonymity followed, including: Gnutella, eDonkey2000, and Freenet in 2000, FastTrack, Kazaa, Limewire, and BitTorrent in 2001, and Poisoned in 2003.[200]

All of these tools are general purpose and can be used to share a wide variety of content, but sharing of music files, software, and later movies and videos are major uses.[201] And while some of this sharing is legal, large portions are not. Lawsuits and other legal actions caused Napster in 2001, eDonkey2000 in 2005, Kazaa in 2006, and Limewire in 2010 to shut down or refocus their efforts.[202][203] The Pirate Bay, founded in Sweden in 2003, continues despite a trial and appeal in 2009 and 2010 that resulted in jail terms and large fines for several of its founders.[204] File sharing remains contentious and controversial with charges of theft of intellectual property on the one hand and charges of censorship on the other.[205][206]

Dot-com bubble

Suddenly the low price of reaching millions worldwide, and the possibility of selling to or hearing from those people at the same moment when they were reached, promised to overturn established business dogma in advertising, mail-order sales, customer relationship management, and many more areas. The web was a new killer app—it could bring together unrelated buyers and sellers in seamless and low-cost ways. Entrepreneurs around the world developed new business models, and ran to their nearest venture capitalist. While some of the new entrepreneurs had experience in business and economics, the majority were simply people with ideas, and did not manage the capital influx prudently. Additionally, many dot-com business plans were predicated on the assumption that by using the Internet, they would bypass the distribution channels of existing businesses and therefore not have to compete with them; when the established businesses with strong existing brands developed their own Internet presence, these hopes were shattered, and the newcomers were left attempting to break into markets dominated by larger, more established businesses. Many did not have the ability to do so.

The dot-com bubble burst in March 2000, with the technology heavy NASDAQ Composite index peaking at 5,048.62 on March 10[207] (5,132.52 intraday), more than double its value just a year before. By 2001, the bubble's deflation was running full speed. A majority of the dot-coms had ceased trading, after having burnt through their venture capital and IPO capital, often without ever making a profit. But despite this, the Internet continues to grow, driven by commerce, ever greater amounts of online information and knowledge and social networking.

Mobile phones and the Internet

The first mobile phone with Internet connectivity was the Nokia 9000 Communicator, launched in Finland in 1996. The viability of Internet services access on mobile phones was limited until prices came down from that model, and network providers started to develop systems and services conveniently accessible on phones. NTT DoCoMo in Japan launched the first mobile Internet service, i-mode, in 1999 and this is considered the birth of the mobile phone Internet services. In 2001, the mobile phone email system by Research in Motion (now BlackBerry Limited) for their BlackBerry product was launched in America. To make efficient use of the small screen and tiny keypad and one-handed operation typical of mobile phones, a specific document and networking model was created for mobile devices, the Wireless Application Protocol (WAP). Most mobile device Internet services operate using WAP. The growth of mobile phone services was initially a primarily Asian phenomenon with Japan, South Korea and Taiwan all soon finding the majority of their Internet users accessing resources by phone rather than by PC. Developing countries followed, with India, South Africa, Kenya, the Philippines, and Pakistan all reporting that the majority of their domestic users accessed the Internet from a mobile phone rather than a PC. The European and North American use of the Internet was influenced by a large installed base of personal computers, and the growth of mobile phone Internet access was more gradual, but had reached national penetration levels of 20–30% in most Western countries.[208] The cross-over occurred in 2008, when more Internet access devices were mobile phones than personal computers. In many parts of the developing world, the ratio is as much as 10 mobile phone users to one PC user.[209]


Web technologies

Web pages were initially conceived as structured documents based upon Hypertext Markup Language (HTML) which can allow access to images, video, and other content. Hyperlinks in the page permit users to navigate to other pages. In the earliest browsers, images opened in a separate "helper" application. Marc Andreessen's 1993 Mosaic and 1994 Netscape[210] introduced mixed text and images for non-technical users. HTML evolved during the 1990s, leading to HTML 4 which introduced large elements of CSS styling and, later, extensions to allow browser code to make calls and ask for content from servers in a structured way (AJAX).


Historiography

There are nearly insurmountable problems in supplying a historiography of the Internet's development. The process of digitization represents a twofold challenge both for historiography in general and, in particular, for historical communication research.[211] A sense of the difficulty in documenting early developments that led to the internet can be gathered from the quote:


See also

-   History of hypertext
-   History of the Internet in Sweden
-   History of the web browser
-   Index of Internet-related articles
-   MH & xmh: Email for Users & Programmers
-   Net neutrality
-   Nerds 2.0.1: A Brief History of the Internet
-   On the Internet, nobody knows you're a dog
-   Outline of the Internet
-   Internet activism
-   Whistleblower
-   Internet censorship


References


Further reading

-   -   -   -


External links

-   Internet History Timeline – Computer History Museum
-   Histories of the Internet – Internet Society
-   Hobbes' Internet Timeline 12
-   _History of the Internet_, a short animated film (2009)
-

Category:American inventions History_of_the_Internet Category:Internet governance Category:Articles containing video clips

[1]

[2]

[3] _Turing's Legacy: A History of Computing at the National Physical Laboratory 1945–1995_, David M. Yates, National Museum of Science and Industry, 1997, pp. 126–146, . Retrieved 19 May 2015.

[4] "Data Communications at the National Physical Laboratory (1965–1975)", Martin Campbell-Kelly, _IEEE Annals of the History of Computing_, Volume 9 Issue 3–4 (July–Sept 1987), pp. 221–247. Retrieved 18 May 2015.

[5]

[6]

[7] "The World's Technological Capacity to Store, Communicate, and Compute Information", Martin Hilbert and Priscila López (2011), _Science_, 332(6025), pp. 60–65; free access to the article through here: martinhilbert.net/WorldInfoCapacity.html

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

[36] The Merit Network, Inc. is an independent non-profit 501(c)(3) corporation governed by Michigan's public universities. Merit receives administrative services under an agreement with the University of Michigan.

[37] _A Chronicle of Merit's Early History_, John Mulcahy, 1989, Merit Network, Ann Arbor, Michigan

[38] Merit Network Timeline: 1970–1979, Merit Network, Ann Arbor, Michigan

[39]

[40] Merit Network Timeline: 1980–1989, Merit Network, Ann Arbor, Michigan

[41]

[42] "The Cyclades Experience: Results and Impacts", Zimmermann, H., Proc. IFIP'77 Congress, Toronto, August 1977, pp. 465–469

[43]

[44]

[45] UUCP Internals Frequently Asked Questions

[46]

[47]

[48]

[49]

[50]

[51]

[52] 1

[53] 2

[54] Jon Postel, NCP/TCP Transition Plan, RFC 801

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

[66] "Percentage of Individuals using the Internet 2000–2012", International Telecommunications Union (Geneva), June 2013, retrieved 22 June 2013

[67] "Fixed (wired)-broadband subscriptions per 100 inhabitants 2012", Dynamic Report, ITU ITC EYE, International Telecommunication Union. Retrieved on 29 June 2013.

[68] "Active mobile-broadband subscriptions per 100 inhabitants 2012", Dynamic Report, ITU ITC EYE, International Telecommunication Union. Retrieved on 29 June 2013.

[69]

[70] Nepad, Eassy partnership ends in divorce,(South African) Financial Times FMTech, 2007

[71]

[72] "A Brief History of the Internet in Korea", Kilnam Chon, Hyunje Park, Kyungran Kang, and Youngeum Lee. Retrieved 16 April 2017.

[73]

[74]

[75]

[76]

[77] Even after the appropriations act was amended in 1992 to give NSF more flexibility with regard to commercial traffic, NSF never felt that it could entirely do away with its Acceptable Use Policy and its restrictions on commercial traffic, see the response to Recommendation 5 in NSF's response to the Inspector General's review (a April 19, 1993 memo from Frederick Bernthal, Acting Director, to Linda Sundro, Inspector General, that is included at the end of Review of NSFNET, Office of the Inspector General, National Science Foundation, March 23, 1993)

[78] Management of NSFNET, a transcript of the March 12, 1992 hearing before the Subcommittee on Science of the Committee on Science, Space, and Technology, U.S. House of Representatives, One Hundred Second Congress, Second Session, Hon. Rick Boucher, subcommittee chairman, presiding

[79] "Retiring the NSFNET Backbone Service: Chronicling the End of an Era" , Susan R. Harris, PhD, and Elise Gerich, _ConneXions_, Vol. 10, No. 4, April 1996

[80]

[81] NSF Solicitation 93-52 – Network Access Point Manager, Routing Arbiter, Regional Network Providers, and Very High Speed Backbone Network Services Provider for NSFNET and the NREN(SM) Program, May 6, 1993

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93] Web 1.0 defined – How stuff works

[94] "Web 1.0 Revisited – Too many stupid buttons". Complexify.com.

[95]

[96]

[97]

[98]

[99]

[100] Idehen, Kingsley. 2003. RSS: INJAN (It's not just about news). Blog. Blog Data Space. August 21 OpenLinkSW.com

[101] Idehen, Kingsley. 2003. Jeff Bezos Comments about Web Services. Blog. Blog Data Space. September 25. OpenLinkSW.com

[102] Knorr, Eric. 2003. The year of Web services. CIO, December 15.

[103]

[104] O'Reilly, Tim, and John Battelle. 2004. Opening Welcome: State of the Internet Industry. In San Francisco, California, October 5.

[105]

[106]

[107]

[108] NASA Extends the World Wide Web Out Into Space. NASA media advisory M10-012, January 22, 2010. Archived

[109] NASA Successfully Tests First Deep Space Internet. NASA media release 08-298, November 18, 2008 Archived

[110] Disruption Tolerant Networking for Space Operations (DTN). July 31, 2012

[111]

[112]

[113]

[114] Internet Hall of Fame

[115] Elizabeth Feinler, IEEE Annals [3B2-9] man2011030074.3d 29/7/011 11:54 Page 74

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

[126] "The Tao of IETF: A Novice's Guide to the Internet Engineering Task Force", FYI 17 and RFC 4677, P. Hoffman and S. Harris, Internet Society, September 2006

[127] "A Mission Statement for the IETF", H. Alvestrand, Internet Society, BCP 95 and RFC 3935, October 2004

[128]

[129] "An IESG charter", H. Alvestrand, RFC 3710, Internet Society, February 2004

[130] "Charter of the Internet Architecture Board (IAB)", B. Carpenter, BCP 39 and RFC 2850, Internet Society, May 2000

[131]

[132] "IAB Thoughts on the Role of the Internet Research Task Force (IRTF)", S. Floyd, V. Paxson, A. Falk (eds), RFC 4440, Internet Society, March 2006

[133]

[134] "The RFC Series and RFC Editor", L. Daigle, RFC 4844, Internet Society, July 2007

[135] "Not All RFCs are Standards", C. Huitema, J. Postel, S. Crocker, RFC 1796, Internet Society, April 1995

[136]

[137]

[138] Internet Society (ISOC) – Introduction to ISOC

[139] Internet Society (ISOC) – ISOC's Standards Activities

[140] USC/ICANN Transition Agreement

[141] ICANN cuts cord to US government, gets broader oversight: ICANN, which oversees the Internet's domain name system, is a private nonprofit that reports to the US Department of Commerce. Under a new agreement, that relationship will change, and ICANN's accountability goes global Nate Anderson, September 30, 2009

[142]

[143]

[144]

[145]

[146]

[147] DeNardis, Laura, The Emerging Field of Internet Governance (September 17, 2010). Yale Information Society Project Working Paper Series.

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161]

[162]

[163]

[164]

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191] Mirror of Official site map

[192] Mirror of Official Site

[193]

[194]

[195]

[196]

[197] "Microsoft and Yahoo seal web deal", _BBC Mobile News_, July 29, 2009.

[198] RFC 765: File Transfer Protocol (FTP), J. Postel and J. Reynolds, ISI, October 1985

[199]

[200]

[201] _Movie File-Sharing Booming: Study_ , Solutions Research Group, Toronto, 24 January 2006

[202]

[203]

[204]

[205] "Poll: Young Say File Sharing OK", Bootie Cosgrove-Mather, _CBS News_, 11 February 2009

[206]

[207] Nasdaq peak of 5,048.62

[208]

[209]

[210]

[211] Christoph Classen, Susanne Kinnebrock & Maria Löblich (Eds.): Towards Web History: Sources, Methods, and Challenges in the Digital Age . In Historical Social Research 37 (4): 97–188. 2012.