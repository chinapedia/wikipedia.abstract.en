The DJBDNS software package is a DNS implementation. It was created by Daniel J. Bernstein in response to his frustrations with repeated security holes in the widely used BIND DNS software. As a challenge, Bernstein offered a $1000 prize[1] for the first person to find a security hole in djbdns, which was awarded[2] in March 2009 to Matthew Dempsky.

, djbdns's tinydns component was the second most popular DNS server in terms of the number of domains for which it was the authoritative server, and third most popular in terms of the number of DNS hosts running it.[3]

djbdns has never been vulnerable to the widespread cache poisoning vulnerability reported in July 2008,[4][5] but it has been discovered that it is vulnerable to a related attack.[6]

The source code has not been centrally managed since its release in 2001, and was released into the public domain in 2007.[7] As of March 2009, there are a number of forks, one of which is dbndns (part of the Debian Project), and more than a dozen patches to modify the released version.[8]

While djbdns does not directly support DNSSEC, there are third party patches to add DNSSEC support to djbdns' authoritative-only tinydns component.[9]


Components

The djbdns software consists of servers, clients, and miscellaneous configuration tools.

Servers

-   dnscache — the DNS resolver and cache.
-   tinydns — a database-driven DNS server.
-   walldns — a "reverse DNS wall", providing IP address-to-domain name lookup only.
-   rbldns — a server designed for DNS blacklisting service.
-   pickdns — a database-driven server that chooses from matching records depending on the requestor's location. (This feature is now a standard part of tinydns.)
-   axfrdns — a zone transfer server.

Client tools

-   axfr-get — a zone-transfer client.
-   dnsip — simple address from name lookup.
-   dnsipq — address from name lookup with rewriting rules.
-   dnsname — simple name from address lookup.
-   dnstxt — simple text record from name lookup.
-   dnsmx — mail exchanger lookup.
-   dnsfilter — looks up names for addresses read from stdin, in parallel.
-   dnsqr — recursive general record lookup.
-   dnsq — non-recursive general record lookup, useful for debugging.
-   dnstrace (and dnstracesort) — comprehensive testing of the chains of authority over DNS servers and their names.


Design

In djbdns, different features and services are split off into separate programs. For example, zone transfers, zone file parsing, caching, and recursive resolving are implemented as separate programs. The result of these design decisions is a reduction in code size and complexity of the daemon program that provides the core function of answering lookup requests. Bernstein asserts that this is true to the spirit of the Unix operating system, and makes security verification much simpler.


Copyright status

On December 28, 2007, Bernstein released djbdns into the public domain.[10] Previously the package was distributed free of charge as license-free software. However this did not permit the distribution of modified versions of djbdns, which was one of the core principles of open-source software. Consequently, it was not included in Linux distributions which required all components to be open-source.


See also

-   Comparison of DNS server software
-   dbndns
-   DNS management software


References


External links

-   djbdns official homepage
-   N-DJBDNS
-   A guide to djbdns
-   The djbdns section of FAQTS
-   A djbdns guide and tutorial with addon
-   — Jonathan de Boyne Pollard's debunking of several myths relating to djbdns

-   — Jonathan de Boyne Pollard's list of the several known problems in djbdns

-   Supporting newer record formats through generic records.
-   LWN (Linux weekly news) looks at djbdns

Category:DNS software Category:Public-domain software with source code Category:DNS server software for Linux

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] http://www.tinydnssec.org/

[10]