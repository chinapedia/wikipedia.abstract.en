border | caption = File list in Nextcloud 14.0 -->| screenshot = Nextcloud 15.0.2 Screenshot.png | screenshot alt = Nextcloud 15.0.2 (Browser view) | developer = Nextcloud GmbH.,[1] Community | programming language = PHP, JavaScript | operating system = SERVER: Linux
CLIENTS: Windows, macOS, Linux, Android, iOS | language = | genre = Online storage, data synchronization | licence = AGPLv3 | website = | latest release version = 16.0.3 | latest release date = [2] }}

NEXTCLOUD is a suite of client-server software for creating and using file hosting services. Nextcloud application functionally is similar to Dropbox. Unlike Dropbox, Nextcloud does not offer off-premises file storage hosting. Nextcloud is free and open-source, which means that anyone is allowed to install and operate it on their own private server devices.

In contrast to proprietary services like Dropbox, the open architecture allows adding functionality to the server in the form of applications and enables users to have full control of their data.

The original ownCloud developer Frank Karlitschek forked ownCloud and created Nextcloud, which continues to be actively developed by Karlitschek and other members of the original ownCloud team.


Features

Nextcloud files are stored in conventional directory structures, accessible via WebDAV if necessary. User files are encrypted during transit and optionally at rest. Nextcloud can synchronise with local clients running Windows (Windows XP, Vista, 7 and 8), macOS (10.6 or later), or various Linux distributions.

Nextcloud permits user and group administration (via OpenID or LDAP). Content can be shared by defining granular read/write permissions between users and groups. Alternatively, Nextcloud users can create public URLs when sharing files. Logging of file-related actions, as well as disallowing access based on file access rules is also available.[3]

Nextcloud is introducing new features such as monitoring capabilities, full-text search and Kerberos authentication, as well as audio/video conferencing, expanded federation and smaller user interface improvements.[4]

Since the software is modular, it can be extended with plugins to implement extra functionality. Developers can offer their extensions to other users for installation via a manufacturer-operated platform. This platform communicates with the Nextcloud instances via an open protocol. The App Store[5] already contains over 200 extensions. With the help of these extensions, many functionalities can be added, including:

-   calendars (CalDAV)
-   contacts (CardDAV)
-   streaming media (Ampache)
-   browser-based text editor
-   bookmarking service
-   URL shortening suite
-   gallery
-   RSS feed reader
-   document viewer tools from within Nextcloud
-   connection to Dropbox, Google Drive and Amazon S3


Architecture

In order for desktop machines to synchronize files with their Nextcloud server, desktop clients are available for PCs running Windows, macOS, FreeBSD or Linux. Mobile clients exist for iOS and Android devices. Files and other data (such as calendars, contacts or bookmarks) can also be accessed, managed, and uploaded using a web browser without any additional software. Any updates to the file system are pushed to all computers and mobile devices connected to a user's account.

The Nextcloud server is written in the PHP and JavaScript scripting languages. For remote access, it employs sabre/dav, an open-source WebDAV server.[6] Nextcloud is designed to work with several database management systems, including SQLite, MariaDB, MySQL, Oracle Database, and PostgreSQL.[7]

With Nextcloud 12, a new architecture was developed with the name Global Scale, with the goal of scaling to hundreds of millions of users. It splits users over separate nodes and introduces components to manage the interaction between them.[8]


Nextcloud Box

In September 2016, Nextcloud, in cooperation with Western Digital Labs and Canonical (the company behind Ubuntu), released the Nextcloud Box. The announcement was made by Jane Silber, CEO of Canonical and Frank Karlitschek.[9] The Nextcloud box was based on a Raspberry Pi, running Ubuntu Core with Snappy; it was intended to serve as a reference device for other vendors.[10] In June 2017, Western Digital shut down Western Digital Labs,[11] which caused the production of the box to end.[12]

Alternative hardware is available[13] from other vendors, including:

-   several do-it-yourself kits based on the Raspberry Pi and other boards;
-   fully configured servers based on the Intel NUC.

Others have been announced.


History of the fork from ownCloud

In April 2016 Karlitschek and most core contributors [14] left ownCloud Inc.[15] These included some of ownCloud's staff according to sources near to the ownCloud community.[16]

The fork was preceded by a blog post of Karlitschek, asking questions such as "Who owns the community? Who owns ownCloud itself? And what matters more, short term money or long term responsibility and growth?"[17] There have been no official statements about the reason for the fork. However, Karlitschek mentioned the fork several times in a talk at the 2018 FOSDEM conference, emphasizing cultural mismatch between open source developers and business oriented people not used to the open source community.[18]

On June 2, within 12 hours of the announcement of the fork, the American entity "ownCloud Inc." announced that it is shutting down with immediate effect, stating that "[…] main lenders in the US have cancelled our credit. Following American law, we are forced to close the doors of ownCloud, Inc. with immediate effect and terminate the contracts of 8 employees.". ownCloud Inc. accused Karlitschek of poaching developers, while Nextcloud developers such as Arthur Schiwon stated that he "decided to quit because not everything in the ownCloud Inc. company world evolved as I imagined".[19] ownCloud GmbH continued operations, secured financing from new investors and took over the business of the ownCloud Inc.[20]


Differences to ownCloud

While Nextcloud was originally a fork of the ownCloud project, there are now many differences. While ownCloud offers an open-source community edition, they also offer a proprietary Enterprise Edition with additional features and support subscriptions — Nextcloud instead uses the same public code base for both free and paid users.

Nextcloud's popularity also appears to have overtaken that of ownCloud, at least based on Google Trends data.[21]


Release history

+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Version | Original release date | Latest version | Release date   | Major features                                                                                                                                                                                                       |
+=========+=======================+================+================+======================================================================================================================================================================================================================+
|         | [22]                  | 9.0.58         | 2017-04-24[23] |                                                                                                                                                                                                                      |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         | [24]                  | 10.0.6         | 2017-08-07[25] |                                                                                                                                                                                                                      |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         | [26]                  | 11.0.8         | 2018-03-15[27] |                                                                                                                                                                                                                      |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         | [28]                  | 12.0.13        | 2018-11-22[29] |                                                                                                                                                                                                                      |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         | [30]                  | 13.0.12        | 2019-02-29[31] | improved UI, video and text chat, end-to-end encryption, improved performance[32]                                                                                                                                    |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         | [33]                  | 14.0.11        | 2019-05-11[34] | video verification, signal/telegram 2FA support, improved collaboration, GDPR compliance[35]                                                                                                                         |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         | [36]                  | 15.0.8         | 2019-05-16[37] | Mastodon integration, PDF conversion, collaborative editing app via Collabora Online[38]                                                                                                                             |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         |                       | 16.0.3         | 2019-07-09[39] | -   Access Control Lists to replace classic File Servers[40].                                                                                                                                                        |
|         |                       |                |                | -   Authentication: Detection of suspicious logins uses a locally trained neural network[41]                                                                                                                         |
|         |                       |                |                | -   Projects allows users to link different types of information together like chats, calendars, todos and files. Useful for collaboration of teams. Projects can be shared complete or in parts with colleagues[42] |
|         |                       |                |                | -   Talk 6 brings commands and improved user experience[43]                                                                                                                                                          |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         |                       |                |                |                                                                                                                                                                                                                      |
+---------+-----------------------+----------------+----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Maintenance and release schedule[44]


See also

-   Seafile (FOSS client-server software for file storage and transfer)
-   Comparison of file hosting services
-   Comparison of file synchronization software
-   Comparison of online backup services


References


External links

-

Category:Cloud computing Category:Cloud storage Category:File hosting Category:Free software for cloud computing Category:Free software programmed in JavaScript Category:Free software programmed in PHP Nextcloud Category:Software using the GNU AGPL license

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