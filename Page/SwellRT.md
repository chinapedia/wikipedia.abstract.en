SWELLRT is a free and open-source backend-as-a-service and API focused to ease development of apps featuring real-time collaboration. It supports the building of mobile and web apps, and aims to facilitate interoperability and federation.


History

Origins

SwellRT has its origins in the work done within the GRASIA research team at the Universidad Complutense de Madrid, as part of the EU-funded project P2Pvalue (2013-2016).[1] In 2014, the developer Pablo Ojanguren took the lead in forking Apache Wave, dropping several components, re-engineering it, and building a "Wave API" to build applications on top.[2] In 2015, such Wave API became a standalone product named SwellRT.[3][4]

Impact on Apache Wave project

In 2016, several discussions took place within the Apache Wave community, aiming to tackle the stagnation and crisis state of the project. The Apache Software Foundation mentor of Apache Wave, Upayavira,[5] was concerned on the project stagnation, but framed SwellRT as Wave's potential savior:

  Once more Wave is on the brink of retirement. However, this time, an offer has been made of code from SwellRT, which is a fork of Wave itself, and a concall has been scheduled for interested parties to discuss whether it is a go-er. It is my (limited) understanding that many of the complexity issues in the Wave code that have prevented community development have been resolved in SwellRT.[6]

Eventually, Wave was approved to continue within Apache incubator program, and a copy of SwellRT codebase was placed in the Apache Wave repository in order to grant the Wave community access to it.[7] In this regard, Intellectual Property of SwellRT was transferred to the Apache Foundation in 2017.[8] Audrey_Tang_showing_a_SwellRT_sticker_in_her_tablet_at_MediaLab-Prado._Madrid,_Nov_2016.jpg showing SwellRT sticker on her tablet (Medialab Prado, Madrid)]]

Recent recognition

In both 2016[9][10] and 2017,[11][12] SwellRT participated in the Google Summer of Code as part of the set of projects from the Berkman Klein Center for Internet and Society at Harvard University. In both years, the contributions were highly relevant. In 2016, SwellRT replaced its XMPP-based federation protocol (inherited from Apache Wave) for the Matrix.org federation protocol.[13] In 2017, end-to-end encryption was implemented,[14][15] following an innovative approach to encrypt communication in Operational Transformation collaborative documents.[16]

SwellRT received international recognition within the fields of decentralized technologies[17][18][19][20][21][22][23] and real-time collaboration.[24][25][26][27][28][29][30] In the Decentralized Web Summit, organized by the Internet Archive in San Francisco, it was selected as one of the current innovative decentralization technologies.[31] It was also selected by the Redecentralize advocacy group, as one of the redecentralization projects whose founders were interviewed,[32][33] It launched an international contest to develop apps using SwellRT,[34] which was awarded to free/open source developers in India.[35] And the project was presented as invited talk in the Center for Research in Computation and Society at Harvard's School of Engineering and Applied Sciences,[36][37] and in several international conferences.[38][39][40][41][42] SwellRT was one of the first adopters of the Contributor Covenant code of conduct.[43]


Technical approach

SwellRT is a fork from Apache Wave, inherits some of its architecture and technology stack. However, it grew beyond the limits of Wave, first presenting itself as a web framework and nowadays growing to a backend-as-a-service platform.[44][45] Its current technical approach covers the following:

-   It is fully free/open source software.
-   It is developed in Java. GWT with JSInterop is used to generate JavaScript API reusing the same source code. Android client is also built from the same Java sources.
-   It provides an extensible and pluggable rich-text editor component for Web (only) supporting custom annotations and widgets.
-   Real-time data storage is based on Wave's Operational Transformations model, thus it is eventually consistent.
-   It is designed to maximize interoperability, and follows a federation approach similar to Apache Wave, using XMPP or Matrix.org communication protocol. It aims to support the creation of apps that are federated, i.e. rely on multiple interoperable servers, and objects shared across servers. This allows organizations to control their own data.

Collaborative objects

SwellRT provides a programming model based on COLLABORATIVE OBJECTS. A collaborative object is a JSON-like object that can be shared by some users (or groups) that can make changes in real-time. Changes are propagated (and notified) in real-time to any user connected to the object.

A collaborative object can store properties of simple data types (string, integers, etc.) as well as rich-text and references to files or attachments. This approach is suitable to implement any document based collaborative application like text editors or spreadsheets.

Objects and participants are uniquely identified on the Internet enabling decentralized access from different federated servers.

Main features

-   Real-time storage (NoSQL)
-   User management
-   Event based integration
-   Federation (XMPP or Matrix.org)


Applications using SwellRT

SwellRT facilitates the development of mobile/web apps, and thus several apps have been built using this technology. Apart from the demos provided by SwellRT,[46] third-parties developed other demo apps such as a Q&A site,[47] an extension to extract keywords,[48] a collaborative scrollbar,[49] a political participation Android app,[50] a Trello-SwellRT connector.[51] Besides, two fully-fledged apps are currently using SwellRT technology:

-   JetPad, a GoogleDoc-like collaborative editor, free/open source and federated [52][53][54]
-   Teem, a free/open source web/mobile app for the management of communities and collectives[55][56][57]


See also

-   Apache Wave
-   Real-time text
-   Collaborative real-time editor
-   Operational transformation
-   Federated social network


References


External links

-   Official website
-

Category:2015 software Category:Software using the Apache license Category:Rich Internet application frameworks Category:Collaborative real-time editors Category:Real-time technology Category:Real-time web Category:Collaborative software Category:Federated identity Category:Cross-platform free software Category:Free software programmed in Java (programming language) Category:Web development software Category:Android (operating system) development software Category:Application programming interfaces Category:Distributed computing projects Category:Open-source cloud applications

[1]

[2]

[3]  SwellRT: el primer framework libre para apps colaborativas y descentralizadas|website=softlibre.barrapunto.com|access-date=2017-10-28}}

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]  Network of Centers|website=networkofcenters.net|language=en|access-date=2017-10-28}}

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]  OSS|website=www.opensourceschool.fr|access-date=2017-10-28}}

[20]  SwellRT: el primer framework libre para apps colaborativas y descentralizadas|website=softlibre.barrapunto.com|access-date=2017-10-28}}

[21]  Catalunya Vanguardista|website=www.catalunyavanguardista.com|language=es-ES|access-date=2017-10-28}}

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

[34]  P2P Foundation|date=2016-08-30|work=P2P Foundation|access-date=2017-10-28|language=en-US}}

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