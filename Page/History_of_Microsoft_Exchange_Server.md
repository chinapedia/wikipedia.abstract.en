The HISTORY OF MICROSOFT EXCHANGE SERVER begins with the first Microsoft Exchange Server product - Exchange Server 4.0 in March 1996 - and extends to the current day.

Microsoft had sold a number of email products before Exchange. Microsoft Mail v2.0 (written by Microsoft) was replaced in 1991 by "Microsoft Mail for PC Networks v2.1",[1] based on _Network Courier_, which Microsoft had acquired.[2] When the original version of Exchange Server was sold to the public, it was positioned as an upgrade to Microsoft Mail 3.5.

Exchange Server was an entirely new X.400-based client–server mail system with a single database store that also supported X.500 directory services. During its development, Microsoft migrated their own internal email from a XENIX-based system to Exchange Server from April 1993,[3] with all 32,000 Microsoft mailboxes on Exchange by late 1996.[4][5]

The directory used by Exchange Server eventually became Microsoft's Active Directory service, an LDAP-compliant directory service. Active Directory was integrated into Windows 2000 as the foundation of Windows Server domains.


Exchange Server 4.0

The first release of Exchange outside of Microsoft was Exchange Server 4.0 in March 1996,[6] with five service packs being released over the next two years.[7]


Exchange Server 5.0

Initial release: May 23, 1997.

Introduced the new Exchange Administrator console, as well as opening up "integrated" access to SMTP-based networks for the first time. Unlike Microsoft Mail (which required a standalone SMTP relay), Exchange Server 5.0 could, with the help of an add-in called the Internet Mail Connector, communicate directly with servers using SMTP. Version 5.0 also introduced a new Web-based e-mail interface called Exchange Web Access, which was rebranded as Outlook Web Access in a later service pack. Along with Exchange Server version 5.0, Microsoft released version 8.01 of Microsoft Outlook, version 5.0 of the Microsoft Exchange Client and version 7.5 of Microsoft Schedule+ to support the new features in the new version of Exchange Server.

Exchange Server 5.0 introduced a number of other new features including a new version of Outlook Web Access with calendar support, support for IMAP4 and LDAP v3 clients and the Deleted Item Recovery feature.


Exchange Server 5.5

Initial release: Nov. 5, 1997, released to manufacturing.

The last version of Exchange Server to have a separate directory, SMTP and NNTP services. There was no new version of Exchange Client and Schedule+ for version 5.5, instead version 8.03 of Microsoft Outlook was released to support the new features of Exchange Server 5.5.

It was sold in two editions: Standard and Enterprise. They differ in database store size, mail transport connectors, and clustering capabilities.

Standard Edition: Had the same 16 GB database size limitation as earlier versions of Exchange Server. It included the Site Connector, MS Mail Connector, Internet Mail Service (previously "Internet Mail Connector"), and Internet News Service (previously "Internet News Connector"), as well as software to interoperate with cc:Mail, Lotus Notes and Novell GroupWise.
Enterprise Edition: Had an increased limit of 16 TB (although Microsoft's best practices documentation recommends that the message store not exceed 100 GB). Adds an X.400 connector, and interoperability software with SNADS and PROFS. Introduced two node clustering capability.


Exchange Server 2000

Codenamed "Platinum", this version overcame many of the limitations of its predecessors. For example, it raised the maximum sizes of databases and increased the number of servers in a cluster from two to four. However, many customers were deterred from upgrading by the requirement for a full Microsoft Active Directory infrastructure to be in place, as unlike Exchange Server 5.5, Exchange 2000 Server had no built-in Directory Service, and had a dependency upon Active Directory. The migration process from Exchange Server 5.5 necessitated having the two systems online at the same time, with user-to-mailbox mapping and a temporary translation process between the two directories. Exchange 2000 Server also added support for instant messaging, but that capability was later spun off to Microsoft Office Live Communications Server.


Exchange Server 2003

Codenamed "Titanium", this version can be run on Windows 2000 Server (with Service Pack 4) and 32-bit Windows Server 2003, although some new features only work with the latter. Like Windows Server 2003, Exchange Server 2003 has many compatibility modes to allow users to slowly migrate to the new system. This is useful in large companies with distributed Exchange Server environments who cannot afford the downtime and expense that comes with a complete migration.

It made the migration from pre-2000 versions of Exchange significantly easier (although still involved the same basic steps), and many users of Exchange Server 5.5 waited for the release of Exchange Server 2003 to upgrade. The upgrade process also required upgrading a company's servers to Windows 2000. Some customers opted to stay on a combination of Exchange Server 5.5 and Windows NT 4.0, both of which are no longer supported by Microsoft.

One of the new features in Exchange Server 2003 is enhanced disaster recovery,[8] which allows administrators to bring the server online more quickly. This is done by allowing the server to send and receive mail while the message stores are being recovered from backup. Some features previously available in the Microsoft Mobile Information Server 2001/2002 products have been added to the core Exchange Server product, like Outlook Mobile Access and server-side Exchange ActiveSync, while the Mobile Information Server product itself has been dropped. Also new is the ability to drop inbound e-mail before being fully processed, thus preventing delays in the message routing system. There are also improved message and mailbox management tools, which allow administrators to execute common chores more quickly. Others, such as Instant Messaging and Exchange Conferencing Server have been extracted completely in order to form separate products. Microsoft now appears to be positioning a combination of Microsoft Office, Microsoft Office Live Communications Server, Live Meeting, and SharePoint as its collaboration software of choice. Exchange Server is now to be simply e-mail and calendaring.

Exchange Server 2003 added several basic filtering methods to Exchange Server. They are not sophisticated enough to eliminate spam, but they can protect against DoS and mailbox flooding attacks. Exchange Server 2000 supported the ability to block a sender's address, or e-mail domain by adding '*@domain.com', which is still supported in Exchange Server 2003.

New features

Added filtering methods in Exchange Server 2003 are:

-   CONNECTION FILTERING: Messages are blocked from DNS RBL lists[9] or from manually specified IP addresses/ranges
-   RECIPIENT FILTERING: Messages blocked when sent to manually specified recipients on the server (for intranet-only addresses) or to any recipients not on the server (stopping spammers from guessing addresses)
-   SENDER ID FILTERING: Sender ID, a form of Sender Policy Framework (SPF)
-   INTELLIGENT MESSAGE FILTER: Initially a free Microsoft add-on, later, part of service pack 2, that uses heuristic message analysis to block messages or direct them to the "Junk E-Mail" folder in Microsoft Outlook clients.[10]

It is included with both Windows Small Business Server 2003 Standard and Premium editions.

Editions

Standard Edition:

-   Supports up to two storage groups (with one of the storage groups, called the recovery storage group, being reserved for database recovery operations) and a maximum of two databases per storage group.
-   Each database is limited to a maximum size of 16 GB.
-   Beginning with the release of Service Pack 2, a maximum database size of 75 GB, but only supports 16 GB by default; larger sized databases have to be updated-in with a registry change.[11]

Enterprise Edition allows a 16 TB maximum database size, and supports up to four storage groups with 5 databases per storage group for a total of 20 databases per server.

Exchange 2003 mainstream support ended on April 14, 2009.[12] Extended support ended on April 8, 2014.[13]


Exchange Server 2007

Released to business customers as part of Microsoft's roll-out wave of new products. It includes new clustering options, x64 support for greater scalability, voice mail integration, better search and support for Web services, better filtering options, and a new Outlook Web Access interface. Exchange 2007 also dropped support for Exchange 5.5 migrations, routing groups, admin groups, Outlook Mobile Access, X.400, and some API interfaces, amongst other features.[14]

Exchange Server 2007 (v8, code name E12, or with SP1 v8.1) runs only on x64 versions of Windows Server. This requirement applies to supported production environments only; a 32-bit trial version is available for download and testing. Hence, companies currently running Exchange Server on 32-bit hardware will be required to replace or migrate hardware if they wish to upgrade to the new version. Companies that are currently running Exchange Server on 64-bit capable hardware are still required to migrate from their existing Exchange 2000/2003 servers to a new 2007 server since in-place upgrades are not supported in 2007.

The first beta of Exchange Server 2007 (then named "Exchange 12" or E12) was released in December 2005 to a very limited number of beta testers. A wider beta was made available via TechNet Plus and MSDN subscriptions in March 2006 according to the Microsoft Exchange team blog.[15] On April 25, 2006, Microsoft announced that the next version of Exchange Server would be called "Exchange Server 2007".

Exchange Server 2007 is an integrated part of the Innovative Communications Alliance products.[16]

New features

-   PROTECTION: Anti-spam, antivirus, compliance, clustering with data replication, improved security and encryption
-   IMPROVED INFORMATION WORKER ACCESS: Improved calendaring, unified messaging, improved mobility, improved web access
-   IMPROVED IT EXPERIENCE: 64-bit performance and scalability, command-line shell and simplified GUI, improved deployment, role separation, simplified routing
-   EXCHANGE MANAGEMENT SHELL: a new command-line shell and scripting language for system administration (based on Windows PowerShell). Shell users can perform every task that can be performed in the Exchange Server graphical user interface plus additional tasks, and can program often-used or complex tasks into scripts that can be saved, shared, and re-used. The Exchange Management Shell has over 375 unique commands to manage features of Microsoft Exchange Server 2007.[17]
-   "UNIFIED MESSAGING": Lets users receive voice mail, e-mail, and faxes in their mailboxes, and lets them access their mailboxes from cell phones and other wireless devices. Voice commands can be given to control and listen to e-mail over the phone (and also send some basic messages, like "I'll be late")
-   INCREASED DATABASE MAXIMUM SIZE LIMIT: Database size is now limited to 16TB per database[18]
-   INCREASED MAXIMUM STORAGE GROUPS AND MAIL DATABASES PER SERVER: 5 each for Standard Edition (from one each in Exchange Server 2003 Standard), and to 50 each for Enterprise Edition (from 4 groups and 20 databases in Exchange Server 2003 Enterprise).
-   CONFIGURE OUTLOOK ANYWHERE: Formerly known as RPC over HTTP provides external access to Microsoft Exchange Server 2007 for users. This also provides external URLs for Exchange services such as the Availability service and offline address book.

Editions

Standard edition: Can have 5 databases in up to 5 storage groups. Supports LCR (Local Continuous Replication) and SCR (Standby Continuous Replication).
Enterprise edition: This is extended to 50 databases in up to 50 storage groups. Supports LCR (Local Continuous Replication), SCR (Standby Continuous Replication), SCC (Single Copy Clustering), and CCR (Clustered Continuous Replication).


Exchange Server 2010

Exchange-2010logo.svg Exchange Server 2010 was released to manufacturing in May 2009, and reached general availability on November 9, 2009.[19]

New features

-   DAG (DATABASE AVAILABILITY GROUPS): SCC, CCR, LCR and site resiliency functionality SCR have been replaced by DAG. It provides database-level high availability (as opposed to server level) and supports a number of copies of each database (number based on Exchange Edition) and flexible configuration (databases copies may be added/ removed at will without requiring major server reconfiguration).
-   CLIENT ACCESS SERVER (CAS): High availability for the Client Access Server role is provided by using Client Access Server (CAS) arrays. A CAS array can contain multiple Client Access Servers in an Active Directory site and provide a single name endpoint for client connections. CAS arrays cannot span multiple Active Directory sites.
-   MAILBOX SERVER ROLE MAY BE COMBINED WITH THE CLIENT ACCESS SERVER: In Exchange Server 2007, a clustered mailbox server could not be combined with any other roles. In Exchange Server 2010, the Mailbox Server Role may be combined with the Client Access Server and/or Hub Transport roles, regardless of whether or not the mailbox server participates in a Database Availability Group. However, since Database Availability Groups use Windows Failover Clustering, and Microsoft does not support the combination of Windows Failover Clustering and Windows Network Load Balancing on the same server, a multi-role deployment will require the use of a 3rd party load balancer to provide load balancing and fault tolerance for the Client Access Server role.
-   RPC CLIENT ACCESS: With the introduction of the RPC Client Access service, all Outlook clients access their mailbox database through the Client Access Server role. This abstraction layer allows for improved load balancing and redundancy and minimal client impact in the event of a database level *-over ("switchover" or "failover") event.
-   COST SAVINGS IN REQUIRED HARDWARE: Exchange Server 2010 provides cost savings in required hardware. Storage performance requirements (measured in IOPS: Input/output operations per second) have been reduced by approximately 70% over Exchange Server 2007, and by approximately 90% over Exchange Server 2003. According to a case study, Microsoft IT was able to reduce hardware costs by 75% during the migration from Exchange Server 2007 to Exchange Server 2010.
-   PERSONAL ARCHIVE: Exchange Server 2010 extends the large mailbox support introduced in Exchange Server 2007, and also introduces a Personal Archive feature to allow messages to be retained longer without the need for a third-party archival system. The Personal Archive is implemented as a secondary mailbox for archive-enabled users, and in Exchange Server 2010 Service Pack 1, the Personal Archive may be located on a different database than the primary mailbox, which may reside on a different disk if desired. Backup can be performed via multiple solutions like Handy Backup or Acronis.
-   RECOVERABLE ITEMS: The compliance and legal search features have been enhanced. What was formerly known as the "Dumpster" in previous versions of Exchange (a special storage area for messages that have been deleted from the Deleted Items folder or "permanently deleted" from a regular folder, such as the Inbox) has been evolved into the Recoverable Items folder in Exchange Server 2010. If configured appropriately, the Recoverable Items folder allows for a "tamper proof" storage area (users cannot circumvent the Recoverable Items folder to bypass legal discovery), which also provides a revision history of any modified items.
-   ADMINISTRATION DELEGATION: Can now be performed at a granular level due to Exchange Server 2010's implementation of Role Based Access Control (RBAC). Users and administrators can be given extremely fine-grained abilities for functions provided both within the Exchange Management Console or Exchange Management Shell and in Outlook Web App. For example, a compliance officer may be given the ability to perform cross mailbox discovery searches within Outlook Web App; a help desk technician may be granted the ability to set an Out Of Office message for other employees within the company, or a branch administrator in a remote office may be granted the permission to perform specific Exchange Management Shell commands that pertain only to the Exchange server in their branch office.
-   OUTLOOK WEB APP INCLUDES IMPROVEMENTS: Including, for example, the ability for users to track their sent messages and printable calendar views and the "Premium" experience is now available across multiple browsers (including Safari and Firefox).
-   DISTRIBUTION GROUPS CAN NOW BE "MODERATED": Meaning that distribution groups can now be configured to allow users to join at will or only with a group moderator's permission, and individual messages sent to distribution groups can now be approved or denied by a moderator.
-   "SHADOW REDUNDANCY": Exchange Server 2010 introduces a transport concept called "Shadow Redundancy" that protects e-mail messages while they are in transit. If a Hub Transport server or an Edge Transport server fails after it has received a message for processing, but before it was able to deliver it to the next "hop" server, the server sending the message to the transport server is now able to detect the failure and redeliver the message to a different Hub Transport or Edge Transport server for processing...

Editions

Several high-availability options have been consolidated into just one option for Exchange Server 2010 (Mailbox Resiliency), which is now offered in both the Standard and Enterprise editions. The capabilities of Local Continuous Replication, Standby Continuous Replication, and Cluster Continuous Replication are now unified into the Exchange 2010 Mailbox Resiliency capability. These capabilities enable a simplified approach to high availability and disaster recovery. The Standard Edition supports up to 5 databases with each database being limited to a maximum size of 16 TB. While the Enterprise Edition supports up to 100 databases with no size limit.

Storage group is discontinued in Exchange 2010 and onward.

In January 2011, Microsoft Exchange Server 2010 won InfoWorld's 2011 Technology of the Year Award for Best Mail Server.


Exchange Server 2013

Microsoft reached the RTM milestone for Exchange Server 2013 on October 11, 2012.[20] A trial version of this product is available from Microsoft website.[21]

New features

New features include:[22][23][24][25]

-   OFFLINE SUPPORT IN OWA: Emails and actions are automatically synced the next time connectivity is restored.
-   CLIENT CONNECTIVITY: CAS role is the point of connectivity for all clients in Exchange 2013.
-   PUBLIC FOLDERS: In 2013, public folders are now part of mailbox databases and high availability is achieved using DAG.
-   SITE MAILBOXES: Brings Exchange emails and SharePoint documents together.
-   OUTLOOK WEB APP: Offers three different UI layouts optimized for desktop, tablet, and mobile phone browsers.
-   ABILITY TO CUSTOMIZE: Outlook and OWA by integrating apps from the Office marketplace. (Yes, this is a reference to the Agaves add-ins that Microsoft and partners will be making available via the new Office Store.) The new "Napa" tools and/or HTML5 are Microsoft's preferred ways for developers to build these.
-   EXCHANGE ADMINISTRATIVE CENTER (EAC): Replacement of the Exchange Management Console by a Web-based Exchange Administrative Center (EAC).
-   SUPPORT FOR UP TO 8 TB DISKS: And multiple databases per disk via Data Availability Group (DAG) management.
-   BUILT IN BASIC ANTI-MALWARE PROTECTION: Ability for administrators to configure and manage settings from inside EAC. (Note: this feature can be turned off, replaced or "paired with premium services such as Exchange Online Protection for layered protection.").
-   NEW DATA LOSS PREVENTION (DLP): Capabilities for identifying and protecting "sensitive data." DLP policies are based on regulatory standards, including PII and PCI. Also: new policy tips in Outlook 2013 can be set to inform users about potential policy violations.
-   IN-PLACE EDISCOVERY: Can be run across Exchange, SharePoint, and Lync (now Skype for Business) from a single interface.
-   COMBINE ROLES: A reduction in the number of available roles to two: a Client Access Server and a Mailbox Server role.
-   FAST SEARCH: Now integrated into Exchange 2013 managed store to provide a more consistent (across Microsoft servers) indexing and searching experience.
-   INCLUSION OF A "MANAGED STORE": The name of the rewritten information store processes, which are now written in C#.
-   REPLICATION: Public folders are now stored in mailbox databases and can take advantage of Database Availability Groups for replication and high availability.
-   DATA LOSS PREVENTION: Capabilities that can be integrated into Transport Rules.


Exchange Server 2016

On October 1, 2015, Microsoft announced the general availability (GA) of Exchange Server 2016.[26]

New features

-   COMBINE ROLES: A reduction in the number of available roles to two: Mailbox Server and Edge Transport
-   OUTLOOK ON THE WEB (FORMERLY OUTLOOK WEB APP): UI changes
-   OFFICE 365 HYBRID: The Hybrid Configuration Wizard (HCW) that was included with Exchange 2013 is moving to become a cloud-based application. When one chooses to configure a hybrid deployment in Exchange 2016, you'll be prompted to download and install the wizard as a small app.
-   MESSAGING POLICY AND COMPLIANCE: New DLP and Archiving/Retention/eDiscovery features.

For more detail on new features, see the following Microsoft TechNet article: [https://technet.microsoft.com/en-us/library/jj150540(v=exchg.160).aspx What's new in Exchange 2016]


Exchange Server 2019

Exchange Server 2019 was released in October 2018.[27] Unlike other Office Server 2019 products such as SharePoint and Skype for Business, Exchange Server 2019 can only be deployed on Windows Server 2019. One of the key features of the new release is that Exchange Server can be deployed onto Windows Server Core for the first time, additionally Microsoft has retired the Unified Messaging feature of Exchange, meaning that Skype for Business on-premises customers will have to use alternative solutions for voicemail, such as Azure cloud voicemail. Unified Messaging continues to exist in Exchange Online requiring an Exchange Plan 2 license.

A pre-release was released on 25th July.[28]

New Features

-   SECURITY: support for installing Exchange Server 2019 onto Windows Server Core
-   PERFORMANCE: supports running Exchange Server with up to 48 processor cores and 256 GB of RAM

Removed features

-   UNIFIED MESSAGING

For more detail on new features, see the following Microsoft blog article: Exchange Server 2019 Public Preview


References

Category:Groupware Exchange Exchange Server Exchange Server Category:1996 software

[1] "The box says Microsoft Mail for PC Networks v2.1, but under the hood users will find Consumer Software Inc's, Network Courier...", August 26, 1991, _Computerworld_

[2]

[3]

[4]

[5]

[6]

[7] "Microsoft Support Lifecycle/Exchange Server", Microsoft.com

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

[27] https://www.frankysweb.de/microsoft-kuendigt-exchange-2019-an/

[28] https://tweakers.net/downloads/45131/microsoft-exchange-server-2019-public-preview.html