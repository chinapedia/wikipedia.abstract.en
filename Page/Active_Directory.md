ACTIVE DIRECTORY (AD) is a directory service developed by Microsoft for Windows domain networks. It is included in most Windows Server operating systems as a set of processes and services. Initially, Active Directory was only in charge of centralized domain management. Starting with Windows Server 2008, however, Active Directory became an umbrella title for a broad range of directory-based identity-related services.[1]

A server running Active Directory Domain Service (AD DS) is called a domain controller. It authenticates and authorizes all users and computers in a Windows domain type network—assigning and enforcing security policies for all computers and installing or updating software. For example, when a user logs into a computer that is part of a Windows domain, Active Directory checks the submitted password and determines whether the user is a system administrator or normal user.[2] Also, it allows management and storage of information, provides authentication and authorization mechanisms, and establishes a framework to deploy other related services: Certificate Services, Active Directory Federation Services, Lightweight Directory Services and Rights Management Services.[3]

Active Directory uses Lightweight Directory Access Protocol (LDAP) versions 2 and 3, Microsoft's version of Kerberos, and DNS.


History

Active Directory, like many information-technology efforts, originated out of a democratization of design using Request for Comments or RFCs. The Internet Engineering Task Force (IETF), which oversees the RFC process, has accepted numerous RFCs initiated by widespread participants. Active Directory incorporates decades of communication technologies into the overarching Active Directory concept then makes improvements upon them. For example, LDAP underpins Active Directory. Also X.500 directories and the Organizational Unit preceded the Active Directory concept that makes use of those methods. The LDAP concept began to emerge even before the founding of Microsoft in April 1975, with RFCs as early as 1971. RFCs contributing to LDAP include RFC 1823 (on the LDAP API, August 1995),[4]RFC 2307, RFC 3062, and RFC 4533.[5][6][7]

Microsoft previewed Active Directory in 1999, released it first with Windows 2000 Server edition, and revised it to extend functionality and improve administration in Windows Server 2003. Additional improvements came with subsequent versions of Windows Server. In Windows Server 2008, additional services were added to Active Directory, such as Active Directory Federation Services.[8] The part of the directory in charge of management of domains, which was previously a core part of the operating system,[9] was renamed Active Directory Domain Services (ADDS) and became a server role like others.[10] "Active Directory" became the umbrella title of a broader range of directory-based services.[11] According to Bryon Hynes, everything related to identity was brought under Active Directory's banner.[12]


Active Directory Services

Active Directory Services consist of multiple directory services. The best known is Active Directory Domain Services, commonly abbreviated as AD DS or simply AD.[13]

Domain Services

Active Directory Domain Services (AD DS) is the cornerstone of every Windows domain network. It stores information about members of the domain, including devices and users, verifies their credentials and defines their access rights. The server running this service is called a domain controller. A domain controller is contacted when a user logs into a device, accesses another device across the network, or runs a line-of-business Metro-style app sideloaded into a device.

Other Active Directory services (excluding LDS, as described below) as well as most of Microsoft server technologies rely on or use Domain Services; examples include Group Policy, Encrypting File System, BitLocker, Domain Name Services, Remote Desktop Services, Exchange Server and SharePoint Server.

 Lightweight Directory Services

Active Directory Lightweight Directory Services (_AD LDS_), formerly known as _Active Directory Application Mode_ (ADAM),[14] is a light-weight implementation of AD DS.[15] AD LDS runs as a service on Windows Server. AD LDS shares the code base with AD DS and provides the same functionality, including an identical API, but does not require the creation of domains or domain controllers. It provides a _Data Store_ for storage of directory data and a _Directory Service_ with an LDAP _Directory Service Interface_. Unlike AD DS, however, multiple AD LDS instances can run on the same server.

Certificate Services

Active Directory Certificate Services (AD CS) establishes an on-premises public key infrastructure. It can create, validate and revoke public key certificates for internal uses of an organization. These certificates can be used to encrypt files (when used with Encrypting File System), emails (per S/MIME standard), and network traffic (when used by virtual private networks, Transport Layer Security protocol or IPSec protocol).

AD CS predates Windows Server 2008, but its name was simply Certificate Services.[16]

AD CS requires an AD DS infrastructure.[17]

Federation Services

Active Directory Federation Services (AD FS) is a single sign-on service. With an AD FS infrastructure in place, users may use several web-based services (e.g. internet forum, blog, online shopping, webmail) or network resources using only one set of credentials stored at a central location, as opposed to having to be granted a dedicated set of credentials for each service. AD FS's purpose is an extension of that of AD DS: The latter enables users to authenticate with and use the devices that are part of the same network, using one set of credentials. The former enables them to use the same set of credentials in a different network.

As the name suggests, AD FS works based on the concept of federated identity.

AD FS requires an AD DS infrastructure, although its federation partner may not.[18]

Rights Management Services

ACTIVE DIRECTORY RIGHTS MANAGEMENT SERVICES (AD RMS, known as RIGHTS MANAGEMENT SERVICES or RMS before Windows Server 2008) is a server software for information rights management shipped with Windows Server. It uses encryption and a form of selective functionality denial for limiting access to documents such as corporate e-mails, Microsoft Word documents, and web pages, and the operations authorized users can perform on them.


Logical structure

As a directory service, an Active Directory instance consists of a database and corresponding executable code responsible for servicing requests and maintaining the database. The executable part, known as Directory System Agent, is a collection of Windows services and processes that run on Windows 2000 and later.[19] Objects in Active Directory databases can be accessed via LDAP, ADSI (a component object model interface), messaging API and Security Accounts Manager services.[20]

Objects

Publishing_Company_Network_Diagram.pngActive Directory structures are arrangements of information about objects. The objects fall into two broad categories: resources (e.g., printers) and security principals (user or computer accounts and groups). Security principals are assigned unique security identifiers (SIDs).

Each object represents a single entity—whether a user, a computer, a printer, or a group—and its attributes. Certain objects can contain other objects. An object is uniquely identified by its name and has a set of attributes—the characteristics and information that the object represents— defined by a schema, which also determines the kinds of objects that can be stored in Active Directory.

The schema object lets administrators extend or modify the schema when necessary. However, because each schema object is integral to the definition of Active Directory objects, deactivating or changing these objects can fundamentally change or disrupt a deployment. Schema changes automatically propagate throughout the system. Once created, an object can only be deactivated—not deleted. Changing the schema usually requires planning.[21]

Forests, trees and domains

The Active Directory framework that holds the objects can be viewed at a number of levels. The forest, tree, and domain are the logical divisions in an Active Directory network.

Within a deployment, objects are grouped into domains. The objects for a single domain are stored in a single database (which can be replicated). Domains are identified by their DNS name structure, the namespace.

A domain is defined as a logical group of network objects (computers, users, devices) that share the same Active Directory database.

A tree is a collection of one or more domains and domain trees in a contiguous namespace, and is linked in a transitive trust hierarchy.

At the top of the structure is the _forest._ A forest is a collection of trees that share a common global catalog, directory schema, logical structure, and directory configuration. The forest represents the security boundary within which users, computers, groups, and other objects are accessible.

+---------------------------------------------------------------------------------------+---------------------------------------------------------------+
|                                                                                       |   ------------------------------ ---------------------------- |
|                                                                                       |   File:Icons-mini-page url.gif   Domain-Dallas                |
|                                                                                       |                                  File:Icons-mini-folder.gif   |
|                                                                                       |                                                               |
|                                                                                       |                                                               |
|                                                                                       |                                                               |
|                                                                                       |                                  File:Icons-mini-folder.gif   |
|                                                                                       |                                                               |
|                                                                                       |                                                               |
|                                                                                       |   ------------------------------ ---------------------------- |
+---------------------------------------------------------------------------------------+---------------------------------------------------------------+
| Example of the geographical organizing of zones of interest within trees and domains. |                                                               |
+---------------------------------------------------------------------------------------+---------------------------------------------------------------+

Organizational units

The objects held within a domain can be grouped into Organizational Units (OUs).[22] OUs can provide hierarchy to a domain, ease its administration, and can resemble the organization's structure in managerial or geographical terms. OUs can contain other OUs—domains are containers in this sense. Microsoft recommends using OUs rather than domains for structure and to simplify the implementation of policies and administration. The OU is the recommended level at which to apply group policies, which are Active Directory objects formally named Group Policy Objects (GPOs), although policies can also be applied to domains or sites (see below). The OU is the level at which administrative powers are commonly delegated, but delegation can be performed on individual objects or attributes as well.

Organizational units do not each have a separate namespace. As a consequence, for compatibility with Legacy NetBios implementations, user accounts with an identical sAMAccountName are not allowed within the same domain even if the accounts objects are in separate OUs. This is because sAMAccountName, a user object attribute, must be unique within the domain.[23]. However, two users in different OUs can have the same Common Name (CN), the name under which they are stored in the directory itself such as "fred.staff-ou.domain" and "fred.student-ou.domain", where "staff-ou" and "student-ou" are the OUs.

In general the reason for this lack of allowance for duplicate names through hierarchical directory placement, is that Microsoft primarily relies on the principles of NetBIOS, which is a flat-file method of network object management that for Microsoft software, goes all the way back to Windows NT 3.1 and MS-DOS LAN Manager. Allowing for duplication of object names in the directory, or completely removing the use of NetBIOS names, would prevent backward compatibility with legacy software and equipment. However, disallowing duplicate object names in this way is a violation of the LDAP RFCs on which Active Directory is supposedly based.

As the number of users in a domain increases, conventions such as "first initial, middle initial, last name" (Western order) or the reverse (Eastern order) fail for common family names like _Li (李)_, _Smith_ or _Garcia_. Workarounds include adding a digit to the end of the username. Alternatives include creating a separate ID system of unique employee/student id numbers to use as account names in place of actual user's names, and allowing users to nominate their preferred word sequence within an acceptable use policy.

Because duplicate usernames cannot exist within a domain, account name generation poses a significant challenge for large organizations that cannot be easily subdivided into separate domains, such as students in a public school system or university who must be able to use any computer across the network.

Shadow groups

Active_directory_-_OUs_can_not_be_given_rights_to_objects.png In Microsoft's Active Directory, OUs do not confer access permissions, and objects placed within OUs are not automatically assigned access privileges based on their containing OU. This is a design limitation specific to Active Directory. Other competing directories such as Novell NDS are able to assign access privileges through object placement within an OU.

Active Directory requires a separate step for an administrator to assign an object in an OU as a member of a group also within that OU. Relying on OU location alone to determine access permissions is unreliable, because the object may not have been assigned to the group object for that OU.

A common workaround for an Active Directory administrator is to write a custom PowerShell or Visual Basic script to automatically create and maintain a _user group_ for each OU in their directory. The scripts are run periodically to update the group to match the OU's account membership, but are unable to instantly update the security groups anytime the directory changes, as occurs in competing directories where security is directly implemented into the directory itself. Such groups are known as _Shadow Groups_. Once created, these shadow groups are selectable in place of the OU in the administrative tools.

Microsoft refers to shadow groups in the Server 2008 Reference documentation, but does not explain how to create them. There are no built-in server methods or console snap-ins for managing shadow groups.[24]

The division of an organization's information infrastructure into a hierarchy of one or more domains and top-level OUs is a key decision. Common models are by business unit, by geographical location, by IT Service, or by object type and hybrids of these. OUs should be structured primarily to facilitate administrative delegation, and secondarily, to facilitate group policy application. Although OUs form an administrative boundary, the only true security boundary is the forest itself and an administrator of any domain in the forest must be trusted across all domains in the forest.[25]

Partitions

The Active Directory database is organized in _partitions_, each holding specific object types and following a specific replication pattern. Microsoft often refers to these partitions as 'naming contexts'.[26] The 'Schema' partition contains the definition of object classes and attributes within the Forest. The 'Configuration' partition contains information on the physical structure and configuration of the forest (such as the site topology). Both replicate to all domains in the Forest. The 'Domain' partition holds all objects created in that domain and replicates only within its domain.,,


Physical structure

_Sites_ are physical (rather than logical) groupings defined by one or more IP subnets.

  

AD also holds the definitions of connections, distinguishing low-speed (e.g., WAN, VPN) from high-speed (e.g., LAN) links. Site definitions are independent of the domain and OU structure and are common across the forest. Sites are used to control network traffic generated by replication and also to refer clients to the nearest domain controllers (DCs). Microsoft Exchange Server 2007 uses the site topology for mail routing. Policies can also be defined at the site level.

Physically, the Active Directory information is held on one or more peer domain controllers, replacing the NT PDC/BDC model. Each DC has a copy of the Active Directory. Servers joined to Active Directory that are not domain controllers are called Member Servers.[27] A subset of objects in the domain partition replicate to domain controllers that are configured as global catalogs. Global catalog (GC) servers provide a global listing of all objects in the Forest.[28][29] Global Catalog servers replicate to themselves all objects from all domains and hence, provide a global listing of objects in the forest. However, to minimize replication traffic and keep the GC's database small, only selected attributes of each object are replicated. This is called the partial attribute set (PAS). The PAS can be modified by modifying the schema and marking attributes for replication to the GC.[30] Earlier versions of Windows used NetBIOS to communicate. Active Directory is fully integrated with DNS and requires TCP/IP—DNS. To be fully functional, the DNS server must support SRV resource records, also known as service records.

Replication

Active Directory synchronizes changes using _multi-master replication_.[31] Replication by default is 'pull' rather than 'push', meaning that replicas pull changes from the server where the change was effected.[32] The _Knowledge Consistency Checker_ (KCC) creates a replication topology of _site links_ using the defined _sites_ to manage traffic. Intrasite replication is frequent and automatic as a result of change notification, which triggers peers to begin a pull replication cycle. Intersite replication intervals are typically less frequent and do not use change notification by default, although this is configurable and can be made identical to intrasite replication.

Each link can have a 'cost' (e.g., DS3, T1, ISDN etc.) and the KCC alters the site link topology accordingly. Replication may occur transitively through several site links on same-protocol _site link bridges_, if the cost is low, although KCC automatically costs a direct site-to-site link lower than transitive connections. Site-to-site replication can be configured to occur between a _bridgehead server_ in each site, which then replicates the changes to other DCs within the site. Replication for Active Directory zones is automatically configured when DNS is activated in the domain based by site.

Replication of Active Directory uses Remote Procedure Calls (RPC) over IP (RPC/IP). Between Sites SMTP can be used for replication, but only for changes in the Schema, Configuration, or Partial Attribute Set (Global Catalog) GCs. SMTP cannot be used for replicating the default Domain partition.[33]


Implementation

In general, a network utilizing Active Directory has more than one licensed Windows server computer. Backup and restore of Active Directory is possible for a network with a single domain controller,[34] but Microsoft recommends more than one domain controller to provide automatic failover protection of the directory.[35] Domain controllers are also ideally single-purpose for directory operations only, and should not run any other software or role.[36]

Certain Microsoft products such as SQL Server[37][38] and Exchange[39] can interfere with the operation of a domain controller, necessitating isolation of these products on additional Windows servers. Combining them can make configuration or troubleshooting of either the domain controller or the other installed software more difficult.[40] A business intending to implement Active Directory is therefore recommended to purchase a number of Windows server licenses, to provide for at least two separate domain controllers, and optionally, additional domain controllers for performance or redundancy, a separate file server, a separate Exchange server, a separate SQL Server,[41] and so forth to support the various server roles.

Physical hardware costs for the many separate servers can be reduced through the use of virtualization, although for proper failover protection, Microsoft recommends not running multiple virtualized domain controllers on the same physical hardware.[42]


Database

The Active-Directory database, the _directory store_, in Windows 2000 Server uses the JET Blue-based Extensible Storage Engine (ESE98) and is limited to 16 terabytes and 2 billion objects (but only 1 billion security principals) in each domain controller's database. Microsoft has created NTDS databases with more than 2 billion objects.[43] (NT4's Security Account Manager could support no more than 40,000 objects). Called NTDS.DIT, it has two main tables: the _data table_ and the _link table_. Windows Server 2003 added a third main table for security descriptor single instancing.[44]

Programs may access the features of Active Directory[45] via the COM interfaces provided by _Active Directory Service Interfaces_.[46]


Trusting

To allow users in one domain to access resources in another, Active Directory uses trusts.[47]

Trusts inside a forest are automatically created when domains are created. The forest sets the default boundaries of trust, and implicit, transitive trust is automatic for all domains within a forest.

Terminology

One-way trust
    One domain allows access to users on another domain, but the other domain does not allow access to users on the first domain.

Two-way trust
    Two domains allow access to users on both domains.

Trusted domain
    The domain that is trusted; whose users have access to the trusting domain.

Transitive trust
    A trust that can extend beyond two domains to other trusted domains in the forest.

Intransitive trust
    A one way trust that does not extend beyond two domains.

Explicit trust
    A trust that an admin creates. It is not transitive and is one way only.

Cross-link trust
    An explicit trust between domains in different trees or in the same tree when a descendant/ancestor (child/parent) relationship does not exist between the two domains.

Shortcut
    Joins two domains in different trees, transitive, one- or two-way.

Forest trust
    Applies to the entire forest. Transitive, one- or two-way.

Realm
    Can be transitive or nontransitive (intransitive), one- or two-way.

External
    Connect to other forests or non-AD domains. Nontransitive, one- or two-way.[48]

PAM trust
    A one-way trust used by Microsoft Identity Manager from a (possibly low-level) production forest to a (Windows Server 2016 functionality level) 'bastion' forest, which issues time-limited group memberships.[49][50]


Management solutions

Microsoft Active Directory management tools include:

-   Active Directory Administrative Center (Introduced with Windows Server 2012 and above),
-   Active Directory Users and Computers,
-   Active Directory Domains and Trusts,
-   Active Directory Sites and Services,
-   ADSI Edit,
-   Local Users and Groups,
-   Active Directory Schema snap-ins for Microsoft Management Console (MMC),

These management tools may not provide enough functionality for efficient workflow in large environments. Some third-party solutions extend the administration and management capabilities. They provide essential features for a more convenient administration processes, such as automation, reports, integration with other services, etc.


Unix integration

Varying levels of interoperability with Active Directory can be achieved on most Unix-like operating systems (including Unix, Linux, Mac OS X or Java and Unix-based programs) through standards-compliant LDAP clients, but these systems usually do not interpret many attributes associated with Windows components, such as Group Policy and support for one-way trusts.

Third parties offer Active Directory integration for Unix-like platforms, including:

-   _PowerBroker Identity Services_, formerly _Likewise_ (BeyondTrust, formerly Likewise Software) – Allows a non-Windows client to join Active Directory[51]
-   _ADmitMac_ (Thursby Software Systems)[52]
-   _Samba_ – Can act as a domain controller[53][54]

The schema additions shipped with Windows Server 2003 R2 include attributes that map closely enough to RFC 2307 to be generally usable. The reference implementation of RFC 2307, nss_ldap and pam_ldap provided by PADL.com, support these attributes directly. The default schema for group membership complies with RFC 2307bis (proposed).[55] Windows Server 2003 R2 includes a Microsoft Management Console snap-in that creates and edits the attributes.

An alternative option is to use another directory service as non-Windows clients authenticate to this while Windows Clients authenticate to AD. Non-Windows clients include 389 Directory Server (formerly Fedora Directory Server, FDS), ViewDS Identity Solutions - ViewDS v7.2 XML Enabled Directory and Sun Microsystems Sun Java System Directory Server. The latter two both being able to perform two-way synchronization with AD and thus provide a "deflected" integration.

Another option is to use OpenLDAP with its _translucent_ overlay, which can extend entries in any remote LDAP server with additional attributes stored in a local database. Clients pointed at the local database see entries containing both the remote and local attributes, while the remote database remains completely untouched.

Administration (querying, modifying, and monitoring) of Active Directory can be achieved via many scripting languages, including PowerShell, VBScript, JScript/JavaScript, Perl, Python, and Ruby.[56][57][58][59] Free and non-free AD administration tools can help to simplify and possibly automate AD management tasks.

Since October 2017 Amazon AWS offers integration with Microsoft Active Directory.[60]


See also

-   AGDLP (implementing role based access controls using nested groups)
-   Flexible single master operation
-   Apple Open Directory
-   FreeIPA
-   List of LDAP software
-   Univention Corporate Server


References


External links

-   Microsoft Technet: White paper: Active Directory Architecture (Single technical document that gives an overview about Active Directory.)
-   Microsoft Technet: Detailed description of [https://technet.microsoft.com/en-us/library/cc782657(WS.10).aspx Active Directory on Windows Server 2003]
-   Microsoft MSDN Library: [MS-ADTS]: Active Directory Technical Specification (part of the Microsoft Open Specification Promise)
-   Active Directory Application Mode (ADAM)
-   Microsoft MSDN: [AD-LDS]: Active Directory Lightweight Directory Services
-   Microsoft TechNet: [AD-LDS]: Active Directory Lightweight Directory Services
-   Microsoft MSDN: [http://msdn.microsoft.com/en-us/library/ms675085(VS.85).aspx Active Directory Schema]
-   Microsoft TechNet: [https://technet.microsoft.com/en-us/library/cc739086(WS.10).aspx Understanding Schema]
-   Microsoft TechNet Magazine: Extending the Active Directory Schema
-   Microsoft MSDN: Active Directory Certificate Services
-   Microsoft TechNet: Active Directory Certificate Services

Active_Directory Category:Directory services Category:Microsoft server technology Category:Windows components Category:Windows 2000

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

[13] Active Directory Services technet.microsoft.com

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

[24] Microsoft Server 2008 Reference, discussing shadow groups used for fine-grained password policies: https://technet.microsoft.com/en-us/library/cc770394%28WS.10%29.aspx

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

[46] Active Directory Service Interfaces, Microsoft

[47]

[48]

[49] Microsoft Identity Manager: Privileged Access Management for Active Directory Domain Services

[50] TechNet: MIM 2016: Privileged Access Management (PAM) - FAQ

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60] https://aws.amazon.com/blogs/security/introducing-aws-directory-service-for-microsoft-active-directory-standard-edition/