SAMBA is a free software re-implementation of the SMB networking protocol, and was originally developed by Andrew Tridgell. Samba provides file and print services for various Microsoft Windows clients and can integrate with a Microsoft Windows Server domain, either as a Domain Controller (DC) or as a domain member. As of version 4, it supports Active Directory and Microsoft Windows NT domains.

Samba runs on most Unix, OpenVMS and Unix-like systems, such as Linux, Solaris, AIX and the BSD variants, including Apple's macOS Server, and macOS client (Mac OS X 10.2 and greater). Samba is standard on nearly all distributions of Linux and is commonly included as a basic system service on other Unix-based operating systems as well. Samba is released under the terms of the GNU General Public License. The name _Samba_ comes from SMB (Server Message Block), the name of the standard protocol used by the Microsoft Windows network file system.


Early history

Andrew Tridgell developed the first version of Samba Unix in December 1991 and January 1992, as a PhD student at the Australian National University, using a packet sniffer to do network analysis of the protocol used by DEC Pathworks server software. At the time of the first releases, versions 0.1, 0.5 and 1.0, all from the first half of January 1992, it did not have a proper name, and Tridgell just called it "a Unix file server for Dos Pathworks". At the time of version 1.0, he realized that he "had in fact implemented the netbios protocol" and that "this software could be used with other PC clients".

With a focus on interoperability with Microsoft's LAN Manager, Tridgell released "netbios for unix", observer, version 1.5 in December 1993. This release was the first to include client-software as well as a server. Also, at this time GPL2 was chosen as license.

Samba is one of the file sharing systems.

Midway through the 1.5-series, the name was changed to _smbserver_. However, Tridgell got a trademark notice from the company "Syntax", who sold a product named _TotalNet Advanced Server_ and owned the trademark for "SMBserver". The name "Samba" was derived by running the Unix command grep through the system dictionary looking for words that contained the letters S, M, and B, in that order (i.e. ).[1]

Versions 1.6, 1.7, 1.8, and 1.9 followed relatively quickly, with the latter being released in January 1995. Tridgell considers the adoption of CVS in May 1996 to mark the birth of the Samba Team, though there had been contributions from other people, especially Jeremy Allison, previously.[2]

Version 2.0.0 was released in January 1999, and version 2.2.0 in April 2001.


Version history

Version 3.0.0, released on 23 September 2003, was a major upgrade. Samba gained the ability to join Active Directory as a member, though not as a domain controller.[3] Subsequent point-releases to 3.0 have added minor new features. Currently, the latest release in this series is 3.0.37, released 1 October 2009, and shipped on a voluntary basis.[4] The 3.0.x series officially reached end-of-life on 5 August 2009.[5]

Version 3.1 was used only for development.

With version 3.2, the project decided to move to time-based releases. New major releases, such as 3.3, 3.4, etc. will appear every 6 months. New features will only be added when a major release is done, point-releases will be only for bug fixes.[6] Also, 3.2 marked a change of license from GPL2 to GPL3, with some parts released under LGPL3.[7] The main technical change in version 3.2 was to autogenerate much of the DCE/RPC-code that used to be handcrafted. Version 3.2.0 was released on 1 July 2008.[8] and its current release is 3.2.15 from 1 October 2009. The 3.2.x series officially reached end-of-life on 1 March 2010.[9]

  data-sort-type="date" | Date   Version   Description
  ------------------------------ --------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  23 September 2003              3.0.0     Active Directory support{{cite web|url=https://www.samba.org/samba/history/samba-3.0.0.html%7Ctitle=Samba Team announces the first official release of Samba 3.0
  1 July 2008                    3.2.0     It will be updated on an as-needed basis for security issues only[10]
  27 January 2009                3.3
  3 July 2009                    3.4       This was the first release to include both Samba 3 and Samba 4 source code.[11]
  30 April 2012                  3.4.17    It is the latest stable release of the Samba 3.4 series.[12]
  1 March 2010                   3.5       This was the first release to include experimental support for SMB2.[13]
  9 August 2011                  3.6       This is the first branch which includes full support for SMB2.[14]
  11 December 2012               4         It is a major rewrite that enables Samba to be an Active Directory domain controller, participating fully in a Windows Active Directory Domain. Its first technical preview (4.0.0TP1) was released in January 2006 after 3 years of development.[15][16]
  10 October 2013                4.1       support for SMB3
  4 March 2015                   4.2       Btrfs based file compression, snapshots and winbind integration[17]
  8 September 2015               4.3       New Logging features, SMB 3.1.1 support[18]
  22 March 2016                  4.4       Asynchronous flush requests[19]
  7 September 2016               4.5       NTLM v1 disabled by default, Virtual List View, Various performance improvements
  7 March 2017                   4.6       Multi-process Netlogon support
  21 September 2017              4.7       Samba AD with MIT Kerberos
  13 March 2018                  4.8       Apple Time Machine Support. Setups using 'domain' or 'ads' security modes now require 'winbindd' to be running.{{cite web
  20 December 2018               4.9.4     Many changes : see release notes


Security

Some versions of Samba 3.6.3 and lower suffer serious security issues which can allow anonymous users to gain root access to a system from an anonymous connection, through the exploitation of an error in Samba's remote procedure call.[20]

On 12 April 2016, Badlock,[21] a crucial security bug in Windows and Samba, was disclosed. Badlock for Samba is referenced by CVE-2016-2118 (SAMR and LSA man in the middle attacks possible).[22]

On 24 May 2017, it was announced that a remote code execution vulnerability had been found in Samba named _EternalRed_ or _SambaCry_, affecting all versions since 3.5.0.[23] This vulnerability was assigned identifier CVE-2017-7494.[24][25]


Features

Samba allows file and print sharing between computers running Microsoft Windows and computers running Unix. It is an implementation of dozens of services and a dozen protocols, including:

-   NetBIOS over TCP/IP (NBT)
-   SMB (known as CIFS in some versions)
-   DCE/RPC or more specifically, MSRPC, the Network Neighborhood suite of protocols
-   A WINS server also known as a NetBIOS Name Server (NBNS)
-   The NT Domain suite of protocols which includes NT Domain Logons
-   Security Account Manager (SAM) database
-   Local Security Authority (LSA) service
-   NT-style printing service (SPOOLSS)
-   NTLM
-   Active Directory Logon using modified versions of Kerberos and LDAP.
-   DFS server

All these services and protocols are frequently incorrectly referred to as just NetBIOS or SMB. The NBT (NetBIOS over TCP/IP) and WINS protocols, and their underlying SMB version 1 protocol, are deprecated on Windows. Since Windows Vista the WS-Discovery protocol has been included along with SMB2 and its successors, which supersede these. (WS-Discovery is implemented on Unix-like platforms by third party daemons which allow Samba shares to be discovered when the deprecated protocols are disabled).

Samba sets up network shares for chosen Unix directories (including all contained subdirectories). These appear to Microsoft Windows users as normal Windows folders accessible via the network. Unix users can either mount the shares directly as part of their file structure using the mount.cifs command or, alternatively, can use a utility, smbclient (libsmb) installed with Samba to read the shares with a similar interface to a standard command line FTP program. Each directory can have different access privileges overlaid on top of the normal Unix file protections. For example: home directories would have read/write access for all known users, allowing each to access their own files. However they would still not have access to the files of others unless that permission would normally exist. Note that the netlogon share, typically distributed as a read only share from /etc/samba/netlogon, is the logon directory for user logon scripts.

Samba services are implemented as two daemons:

-   smbd, which provides the file and printer sharing services, and
-   nmbd, which provides the NetBIOS-to-IP-address name service. NetBIOS over TCP/IP requires some method for mapping NetBIOS computer names to the IP addresses of a TCP/IP network.

Samba configuration is achieved by editing a single file (typically installed as /etc/smb.conf or /etc/samba/smb.conf). Samba can also provide user logon scripts and group policy implementation through poledit.

Samba is included in most Linux distributions and is started during the boot process. On Red Hat, for instance, the /etc/rc.d/init.d/smb script runs at boot time, and starts both daemons. Samba is not included in Solaris 8, but a Solaris 8-compatible version is available from the Samba website.

Samba includes a web administration tool called _Samba Web Administration Tool_ (SWAT).[26][27] SWAT was removed starting with version 4.1.[28]


Samba TNG

Samba TNG (The Next Generation) was forked in late 1999, after disagreements between the Samba Team leaders and Luke Leighton about the directions of the Samba project. They failed to come to an agreement on a development transition path which allowed the research version of Samba he was developing (known at the time as Samba-NTDOM) to slowly be integrated into Samba.[29]

Since the project started, development has been minimal, due to a lack of developers. As such the Samba TNG team frequently recommends to people who are unsure of which program to use, instead try Samba as they have more developers and are able to support more platforms and situations.[30]

One of the key goals of the Samba TNG project is to rewrite all of the NT Domains services as FreeDCE projects.[31] Making this rewriting goal difficult is the fact that services were all developed manually through network reverse-engineering, with limited or no reference to DCE/RPC documentation.

The key differences between the two programs are in the implementation of the NT Domains suite of protocols and MSRPC services. Samba makes all the NT Domains services available from a single place, whereas Samba TNG has separated each service into its own program.

ReactOS has started using Samba TNG services for its SMB implementation. The developers of both projects were interested in seeing the Samba TNG design used to help get ReactOS talking to Windows networks. They have been working together to adapt the network code and build system. The multi-layered and modular approach made it easy to port each service to ReactOS.[32]


See also

-   LM hash
-   SSLBridge


References


External links

-

Category:Free file transfer software Category:Free software programmed in C Category:Software forks Category:Unix network-related software

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

[20] CVE-2012-1182 - A security announcement regarding a major issue with Samba 3.6.3 and lower.

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