Bind}} BIND (), or NAMED (pronounced _name-dee_: , short for _name daemon_), is the most widely used Domain Name System (DNS) software on the Internet.[1][2][3] On Unix-like operating systems it is the _de facto_ standard.[4][5] It performs both of the main DNS server roles – acting as an authoritative name server for one or more specific domains, and acting as a recursive resolver for the DNS system generally.

The software was originally designed at the University of California, Berkeley (UCB) in the early 1980s. The name originates as an acronym of _Berkeley Internet Name Domain_,[6] reflecting the application's use within UCB. The software consists, most prominently, of the DNS server component, called _named_, a contracted form of _name daemon_. In addition the suite contains various administration tools, and a DNS resolver interface library. The latest version of BIND is BIND 9, first released in 2000. BIND 9 is actively maintained, with new releases issued several times a year.

Starting in 2009, the Internet Software Consortium (ISC) developed a software suite, initially called BIND10. With release version 1.2.0 the project was renamed _Bundy_[7] to terminate ISC involvement in the project.


Key features

BIND 9 is intended to be fully compliant with the IETF DNS standards and draft standards. Important features of BIND 9 include: TSIG, nsupdate, IPv6, RNDC (remote name daemon control), views, multiprocessor support, Response Rate Limiting (RRL), DNSSEC, and broad portability. RNDC enables remote configuration updates, using a shared secret to provide encryption for local and remote terminals during each session.


Database support

While earlier versions of BIND offered no mechanism to store and retrieve zone data in anything other than flat text files, in 2007 BIND 9.4[8] DLZ provided a compile-time option for zone storage in a variety of database formats including LDAP, Berkeley DB, PostgreSQL, MySQL, and ODBC.

BIND 10 planned to make the data store modular, so that a variety of databases may be connected.[9] In 2016 ISC added support for the 'dyndb' interface, contributed by RedHat, with BIND version 9.11.0. [10]


Security

Security issues that are discovered in BIND 9 are patched and publicly disclosed in keeping with common principles of open source software. A complete list of security defects that have been discovered and disclosed in BIND9 is maintained by Internet Systems Consortium, the current authors of the software.[11]

The BIND 4 and BIND 8 releases both had serious security vulnerabilities. Use of these ancient versions, or any un-maintained, non-supported version is strongly discouraged.[12] BIND 9 was a complete rewrite, in part to mitigate these ongoing security issues. The downloads page on the ISC web site clearly shows which versions are currently maintained and which are end of life.


History

Originally written by four graduate students at the Computer Systems Research Group at the University of California, Berkeley (UCB), BIND was first released with Berkeley Software Distribution 4.3BSD. Paul Vixie started maintaining it in 1988 while working for Digital Equipment Corporation. , the Internet Systems Consortium maintains, updates, and writes new versions of BIND.

BIND was written by Douglas Terry, Mark Painter, David Riggle and Songnian Zhou in the early 1980s at the University of California, Berkeley as a result of a DARPA grant. The acronym _BIND_ is for _Berkeley Internet Name Domain_, from a technical paper published in 1984.[13]

Versions of BIND through 4.8.3 were maintained by the Computer Systems Research Group (CSRG) at UC Berkeley.[14]

In the mid-1980s, Paul Vixie of DEC took over BIND development, releasing versions 4.9 and 4.9.1. Paul Vixie continued to work on BIND after leaving DEC. BIND Version 4.9.2 was sponsored by Vixie Enterprises. Vixie eventually founded the ISC, which became the entity responsible for BIND versions starting with 4.9.3.[15]

BIND 8 was released by ISC in May 1997.[16]

Version 9 was developed by Nominum, Inc. under an ISC outsourcing contract, and the first version was released 9 October 2000.[17] It was written from scratch in part to address the architectural difficulties with auditing the earlier BIND code bases, and also to support DNSSEC (DNS Security Extensions). The development of BIND 9 took place under a combination of commercial and military contracts. Most of the features of BIND 9 were funded by UNIX vendors who wanted to ensure that BIND stayed competitive with Microsoft's DNS offerings; the DNSSEC features were funded by the US military, which regarded DNS security as important. BIND 9 was released in September 2000.[18]

In 2009, ISC started an effort to develop a new version of the software suite, called BIND10. In addition to DNS service, the BIND10 suite also included IPv4 and IPv6 DHCP server components. In April 2014, with the BIND10 release 1.2.0 the ISC concluded its development work of the project and renamed the project to _Bundy_[19], moving the source code repository to GitHub[20] for further development by outside public efforts.[21]. ISC discontinued its involvement in the project due to cost-cutting measures.[22] The development of DHCP components was split off to become a new Kea project.


See also

-   Comparison of DNS server software
-   DNS management software
-   Zone file


References


Further reading

-   -


External links

-   The official BIND site at Internet Systems Consortium (ISC.org)
-   History of BIND
-   BIND Release Strategy
-   -   Bundy Project
-   Create new BIND zonefile
-   Geo-IP Info graphic

Category:DNS software Category:Free network-related software Category:Software using the ISC license

[1]

[2]

[3]

[4]

[5]

[6]

[7] Bundy, authoritative DNS and DHCP server

[8]

[9]

[10] https://kb.isc.org/article/AA-01420/219/What-is-dyndb-and-how-is-it-better-than-DLZ.html

[11]

[12] P. Hudson, A. Hudson, B. Ball, H. Duff: Red Hat Fedora 4 Unleashed, page 723. Sams Publishing, 2005

[13]

[14]

[15]

[16]

[17]

[18]

[19] Bundy, authoritative DNS and DHCP server

[20] bundy repo at GitHub

[21]

[22]