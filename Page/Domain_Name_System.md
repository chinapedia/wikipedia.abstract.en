The DOMAIN NAME SYSTEM (DNS) is a hierarchical and decentralized naming system for computers, services, or other resources connected to the Internet or a private network. It associates various information with domain names assigned to each of the participating entities. Most prominently, it translates more readily memorized domain names to the numerical IP addresses needed for locating and identifying computer services and devices with the underlying network protocols. By providing a worldwide, distributed directory service, the Domain Name System has been an essential component of the functionality of the Internet since 1985.

The Domain Name System delegates the responsibility of assigning domain names and mapping those names to Internet resources by designating authoritative name servers for each domain. Network administrators may delegate authority over sub-domains of their allocated name space to other name servers. This mechanism provides distributed and fault-tolerant service and was designed to avoid a single large central database.

The Domain Name System also specifies the technical functionality of the database service that is at its core. It defines the DNS protocol, a detailed specification of the data structures and data communication exchanges used in the DNS, as part of the Internet Protocol Suite.

The Internet maintains two principal namespaces, the domain name hierarchy[1] and the Internet Protocol (IP) address spaces.[2] The Domain Name System maintains the domain name hierarchy and provides translation services between it and the address spaces. Internet name servers and a communication protocol implement the Domain Name System.[3] A DNS name server is a server that stores the DNS records for a domain; a DNS name server responds with answers to queries against its database.

The most common types of records stored in the DNS database are for Start of Authority (SOA), IP addresses (A and AAAA), SMTP mail exchangers (MX), name servers (NS), pointers for reverse DNS lookups (PTR), and domain name aliases (CNAME). Although not intended to be a general purpose database, DNS has been expanded over time to store records for other types of data for either automatic lookups, such as DNSSEC records, or for human queries such as _responsible person_ (RP) records. As a general purpose database, the DNS has also been used in combating unsolicited email (spam) by storing a real-time blackhole list (RBL). The DNS database is traditionally stored in a structured text file, the zone file, but other database systems are common.


Function

An often-used analogy to explain the Domain Name System is that it serves as the phone book for the Internet by translating human-friendly computer hostnames into IP addresses. For example, the domain name www.example.com translates to the addresses (IPv4) and (IPv6). The DNS can be quickly and transparently updated, allowing a service's location on the network to change without affecting the end users, who continue to use the same hostname. Users take advantage of this when they use meaningful Uniform Resource Locators (URLs) and e-mail addresses without having to know how the computer actually locates the services.

An important and ubiquitous function of DNS is its central role in distributed Internet services such as cloud services and content delivery networks.[4] When a user accesses a distributed Internet service using a URL, the domain name of the URL is translated to the IP address of a server that is proximal to the user. The key functionality of DNS exploited here is that different users can _simultaneously_ receive different translations for the _same_ domain name, a key point of divergence from a traditional phone-book view of the DNS. This process of using the DNS to assign proximal servers to users is key to providing faster and more reliable responses on the Internet and is widely used by most major Internet services.[5]

The DNS reflects the structure of administrative responsibility in the Internet.[6] Each subdomain is a zone of administrative autonomy delegated to a manager. For zones operated by a registry, administrative information is often complemented by the registry's RDAP and WHOIS services. That data can be used to gain insight on, and track responsibility for, a given host on the Internet.[7]


History

Using a simpler, more memorable name in place of a host's numerical address dates back to the ARPANET era. The Stanford Research Institute (now SRI International) maintained a text file named HOSTS.TXT that mapped host names to the numerical addresses of computers on the ARPANET.[8][9] Elizabeth Feinler developed and maintained the first ARPANET directory. Maintenance of numerical addresses, called the Assigned Numbers List, was handled by Jon Postel at the University of Southern California's Information Sciences Institute (ISI), whose team worked closely with SRI.[10]

Addresses were assigned manually. Computers, including their hostnames and addresses, were added to the master file by contacting the SRI's Network Information Center (NIC), directed by Elizabeth Feinler, by telephone during business hours.[11] Later, Feinler set up a WHOIS directory on a server in the NIC for retrieval of information about resources, contacts, and entities. She and her team developed the concept of domains. Feinler suggested that domains should be based on the location of the physical address of the computer. Computers at educational institutions would have the domain _edu_, for example. She and her team managed the Host Naming Registry from 1972 to 1989.[12]

By the early 1980s, maintaining a single, centralized host table had become slow and unwieldy and the emerging network required an automated naming system to address technical and personnel issues. Postel directed the task of forging a compromise between five competing proposals of solutions to Paul Mockapetris. Mockapetris instead created the Domain Name System.[13]

The Internet Engineering Task Force published the original specifications in RFC 882 and RFC 883 in November 1983.[14][15]

In 1984, four UC Berkeley students, Douglas Terry, Mark Painter, David Riggle, and Songnian Zhou, wrote the first Unix name server implementation for the Berkeley Internet Name Domain, commonly referred to as BIND.[16] In 1985, Kevin Dunlap of DEC substantially revised the DNS implementation. Mike Karels, Phil Almquist, and Paul Vixie have maintained BIND since then.[17] In the early 1990s, BIND was ported to the Windows NT platform. It was widely distributed, especially on Unix systems, and is still the most widely used DNS software on the Internet.[18]

In November 1987, RFC 1034[19] and RFC 1035[20] superseded the 1983 DNS specifications. Several additional Request for Comments have proposed extensions to the core DNS protocols.[21]


Structure

Domain name space

The domain name space consists of a tree data structure. Each node or leaf in the tree has a _label_ and zero or more _resource records_ (RR), which hold information associated with the domain name. The domain name itself consists of the label, possibly concatenated with the name of its parent node on the right, separated by a dot.[22]

The tree sub-divides into _zones_ beginning at the root zone. A DNS zone may consist of only one domain, or may consist of many domains and sub-domains, depending on the administrative choices of the zone manager. DNS can also be partitioned according to _class_ where the separate classes can be thought of as an array of parallel namespace trees.[23]

Domain_name_space.svg

Administrative responsibility for any zone may be divided by creating additional zones. Authority over the new zone is said to be _delegated_ to a designated name server. The parent zone ceases to be authoritative for the new zone.[24]

Domain name syntax, internationalization

The definitive descriptions of the rules for forming domain names appear in RFC 1035, RFC 1123, RFC 2181, and RFC 5892. A domain name consists of one or more parts, technically called _labels_, that are conventionally concatenated, and delimited by dots, such as example.com.

The right-most label conveys the top-level domain; for example, the domain name www.example.com belongs to the top-level domain _com_.

The hierarchy of domains descends from right to left; each label to the left specifies a subdivision, or subdomain of the domain to the right. For example, the label _example_ specifies a subdomain of the _com_ domain, and _www_ is a subdomain of example.com. This tree of subdivisions may have up to 127 levels.[25]

A label may contain zero to 63 characters. The null label, of length zero, is reserved for the root zone. The full domain name may not exceed the length of 253 characters in its textual representation.[26] In the internal binary representation of the DNS the maximum length requires 255 octets of storage, as it also stores the length of the name.[27]

Although no technical limitation exists to use any character in domain name labels which are representable by an octet, hostnames use a preferred format and character set. The characters allowed in labels are a subset of the ASCII character set, consisting of characters _a_ through _z_, _A_ through _Z_, digits _0_ through _9_, and hyphen. This rule is known as the _LDH rule_ (letters, digits, hyphen). Domain names are interpreted in case-independent manner.[28] Labels may not start or end with a hyphen.[29] An additional rule requires that top-level domain names should not be all-numeric.[30]

The limited set of ASCII characters permitted in the DNS prevented the representation of names and words of many languages in their native alphabets or scripts. To make this possible, ICANN approved the Internationalizing Domain Names in Applications (IDNA) system, by which user applications, such as web browsers, map Unicode strings into the valid DNS character set using Punycode. In 2009 ICANN approved the installation of internationalized domain name country code top-level domains (_ccTLD_s). In addition, many registries of the existing top-level domain names (_TLD_s) have adopted the IDNA system, guided by RFC 5890, RFC 5891, RFC 5892, RFC 5893.

Name servers

The Domain Name System is maintained by a distributed database system, which uses the client–server model. The nodes of this database are the name servers. Each domain has at least one authoritative DNS server that publishes information about that domain and the name servers of any domains subordinate to it. The top of the hierarchy is served by the root name servers, the servers to query when looking up (_resolving_) a TLD.

Authoritative name server

An _authoritative_ name server is a name server that only gives answers to DNS queries from data that has been configured by an original source, for example, the domain administrator or by dynamic DNS methods, in contrast to answers obtained via a query to another name server that only maintains a cache of data.

An authoritative name server can either be a _master_ server or a _slave_ server. A master server is a server that stores the original (_master_) copies of all zone records. A slave server uses a special automatic updating mechanism in the DNS protocol in communication with its master to maintain an identical copy of the master records.

Every DNS zone must be assigned a set of authoritative name servers. This set of servers is stored in the parent domain zone with name server (NS) records.

An authoritative server indicates its status of supplying definitive answers, deemed _authoritative_, by setting a protocol flag, called the "_Authoritative Answer_" (_AA_) bit in its responses.[31] This flag is usually reproduced prominently in the output of DNS administration query tools, such as dig, to indicate _that the responding name server is an authority for the domain name in question._[32]


Operation

Address resolution mechanism

Domain name resolvers determine the domain name servers responsible for the domain name in question by a sequence of queries starting with the right-most (top-level) domain label.

An_example_of_theoretical_DNS_recursion.svg "www.wikipedia.org".]]

For proper operation of its domain name resolver, a network host is configured with an initial cache (_hints_) of the known addresses of the root name servers. The hints are updated periodically by an administrator by retrieving a dataset from a reliable source.

Assuming the resolver has no cached records to accelerate the process, the resolution process starts with a query to one of the root servers. In typical operation, the root servers do not answer directly, but respond with a referral to more authoritative servers, e.g., a query for "www.wikipedia.org" is referred to the _org_ servers. The resolver now queries the servers referred to, and iteratively repeats this process until it receives an authoritative answer. The diagram illustrates this process for the host that is named by the fully qualified domain name "www.wikipedia.org".

This mechanism would place a large traffic burden on the root servers, if every resolution on the Internet required starting at the root. In practice caching is used in DNS servers to off-load the root servers, and as a result, root name servers actually are involved in only a relatively small fraction of all requests.

Recursive and caching name server

In theory, authoritative name servers are sufficient for the operation of the Internet. However, with only authoritative name servers operating, every DNS query must start with recursive queries at the root zone of the Domain Name System and each user system would have to implement resolver software capable of recursive operation.

To improve efficiency, reduce DNS traffic across the Internet, and increase performance in end-user applications, the Domain Name System supports DNS cache servers which store DNS query results for a period of time determined in the configuration (_time-to-live_) of the domain name record in question. Typically, such caching DNS servers also implement the recursive algorithm necessary to resolve a given name starting with the DNS root through to the authoritative name servers of the queried domain. With this function implemented in the name server, user applications gain efficiency in design and operation.

The combination of DNS caching and recursive functions in a name server is not mandatory; the functions can be implemented independently in servers for special purposes.

Internet service providers typically provide recursive and caching name servers for their customers. In addition, many home networking routers implement DNS caches and recursors to improve efficiency in the local network.

DNS resolvers

The client side of the DNS is called a DNS resolver. A resolver is responsible for initiating and sequencing the queries that ultimately lead to a full resolution (translation) of the resource sought, e.g., translation of a domain name into an IP address. DNS resolvers are classified by a variety of query methods, such as _recursive_, _non-recursive_, and _iterative_. A resolution process may use a combination of these methods.[33]

In a _non-recursive query_, a DNS resolver queries a DNS server that provides a record either for which the server is authoritative, or it provides a partial result without querying other servers. In case of a caching DNS resolver, the non-recursive query of its local DNS cache delivers a result and reduces the load on upstream DNS servers by caching DNS resource records for a period of time after an initial response from upstream DNS servers.

In a _recursive query_, a DNS resolver queries a single DNS server, which may in turn query other DNS servers on behalf of the requester. For example, a simple stub resolver running on a home router typically makes a recursive query to the DNS server run by the user's ISP. A recursive query is one for which the DNS server answers the query completely by querying other name servers as needed. In typical operation, a client issues a recursive query to a caching recursive DNS server, which subsequently issues non-recursive queries to determine the answer and send a single answer back to the client. The resolver, or another DNS server acting recursively on behalf of the resolver, negotiates use of recursive service using bits in the query headers. DNS servers are not required to support recursive queries.

The _iterative query_ procedure is a process in which a DNS resolver queries a chain of one or more DNS servers. Each server refers the client to the next server in the chain, until the current server can fully resolve the request. For example, a possible resolution of www.example.com would query a global root server, then a "com" server, and finally an "example.com" server.

Circular dependencies and glue records

Name servers in delegations are identified by name, rather than by IP address. This means that a resolving name server must issue another DNS request to find out the IP address of the server to which it has been referred. If the name given in the delegation is a subdomain of the domain for which the delegation is being provided, there is a circular dependency.

In this case, the name server providing the delegation must also provide one or more IP addresses for the authoritative name server mentioned in the delegation. This information is called _glue_. The delegating name server provides this glue in the form of records in the _additional section_ of the DNS response, and provides the delegation in the _authority section_ of the response. A glue record is a combination of the name server and IP address.

For example, if the authoritative name server for example.org is ns1.example.org, a computer trying to resolve www.example.org first resolves ns1.example.org. As ns1 is contained in example.org, this requires resolving example.org first, which presents a circular dependency. To break the dependency, the name server for the top level domain org includes glue along with the delegation for example.org. The glue records are address records that provide IP addresses for ns1.example.org. The resolver uses one or more of these IP addresses to query one of the domain's authoritative servers, which allows it to complete the DNS query.

Record caching

A standard practice in implementing name resolution in applications is to reduce the load on the Domain Name System servers by caching results locally, or in intermediate resolver hosts. Results obtained from a DNS request are always associated with the time to live (TTL), an expiration time after which the results must be discarded or refreshed. The TTL is set by the administrator of the authoritative DNS server. The period of validity may vary from a few seconds to days or even weeks.

As a result of this distributed caching architecture, changes to DNS records do not propagate throughout the network immediately, but require all caches to expire and to be refreshed after the TTL. RFC 1912 conveys basic rules for determining appropriate TTL values.

Some resolvers may override TTL values, as the protocol supports caching for up to sixty-eight years or no caching at all. Negative caching, i.e. the caching of the fact of non-existence of a record, is determined by name servers authoritative for a zone which must include the Start of Authority (SOA) record when reporting no data of the requested type exists. The value of the _minimum_ field of the SOA record and the TTL of the SOA itself is used to establish the TTL for the negative answer.

Reverse lookup

A reverse DNS lookup is a query of the DNS for domain names when the IP address is known. Multiple domain names may be associated with an IP address. The DNS stores IP addresses in the form of domain names as specially formatted names in pointer (PTR) records within the infrastructure top-level domain arpa. For IPv4, the domain is in-addr.arpa. For IPv6, the reverse lookup domain is ip6.arpa. The IP address is represented as a name in reverse-ordered octet representation for IPv4, and reverse-ordered nibble representation for IPv6.

When performing a reverse lookup, the DNS client converts the address into these formats before querying the name for a PTR record following the delegation chain as for any DNS query. For example, assuming the IPv4 address 208.80.152.2 is assigned to Wikimedia, it is represented as a DNS name in reverse order: 2.152.80.208.in-addr.arpa. When the DNS resolver gets a pointer (PTR) request, it begins by querying the root servers, which point to the servers of American Registry for Internet Numbers (ARIN) for the 208.in-addr.arpa zone. ARIN's servers delegate 152.80.208.in-addr.arpa to Wikimedia to which the resolver sends another query for 2.152.80.208.in-addr.arpa, which results in an authoritative response.

Client lookup

DNS_in_the_real_world.svg Users generally do not communicate directly with a DNS resolver. Instead DNS resolution takes place transparently in applications such as web browsers, e-mail clients, and other Internet applications. When an application makes a request that requires a domain name lookup, such programs send a resolution request to the DNS resolver in the local operating system, which in turn handles the communications required.

The DNS resolver will almost invariably have a cache (see above) containing recent lookups. If the cache can provide the answer to the request, the resolver will return the value in the cache to the program that made the request. If the cache does not contain the answer, the resolver will send the request to one or more designated DNS servers. In the case of most home users, the Internet service provider to which the machine connects will usually supply this DNS server: such a user will either have configured that server's address manually or allowed DHCP to set it; however, where systems administrators have configured systems to use their own DNS servers, their DNS resolvers point to separately maintained name servers of the organization. In any event, the name server thus queried will follow the process outlined above, until it either successfully finds a result or does not. It then returns its results to the DNS resolver; assuming it has found a result, the resolver duly caches that result for future use, and hands the result back to the software which initiated the request.

Broken resolvers

Some large ISPs have configured their DNS servers to violate rules, such as by disobeying TTLs, or by indicating that a domain name does not exist just because one of its name servers does not respond.[34]

Some applications, such as web browsers, maintain an internal DNS cache to avoid repeated lookups via the network. This practice can add extra difficulty when debugging DNS issues, as it obscures the history of such data. These caches typically use very short caching times – in the order of one minute.[35]

Internet Explorer represents a notable exception: versions up to IE 3.x cache DNS records for 24 hours by default. Internet Explorer 4.x and later versions (up to IE 8) decrease the default time out value to half an hour, which may be changed by modifying default configuration.[36]

Google Chrome triggers a specific error message for DNS issues. When the DNS server is down or broken, Google Chrome returns an error message.

Other applications

The Domain Name System includes several other functions and features.

Hostnames and IP addresses are not required to match in a one-to-one relationship. Multiple hostnames may correspond to a single IP address, which is useful in virtual hosting, in which many web sites are served from a single host. Alternatively, a single hostname may resolve to many IP addresses to facilitate fault tolerance and load distribution to multiple server instances across an enterprise or the global Internet.

DNS serves other purposes in addition to translating names to IP addresses. For instance, mail transfer agents use DNS to find the best mail server to deliver e-mail: An MX record provides a mapping between a domain and a mail exchanger; this can provide an additional layer of fault tolerance and load distribution.

The DNS is used for efficient storage and distribution of IP addresses of blacklisted email hosts. A common method is to place the IP address of the subject host into the sub-domain of a higher level domain name, and to resolve that name to a record that indicates a positive or a negative indication.

For example:

-   The address 102.3.4.5 is blacklisted. It points to 5.4.3.102.blacklist.example, which resolves to 127.0.0.1.
-   The address 102.3.4.6 is not blacklisted and points to 6.4.3.102.blacklist.example. This hostname is either not configured, or resolves to 127.0.0.2.

E-mail servers can query blacklist.example to find out if a specific host connecting to them is in the blacklist. Many of such blacklists, either subscription-based or free of cost, are available for use by email administrators and anti-spam software.

To provide resilience in the event of computer or network failure, multiple DNS servers are usually provided for coverage of each domain. At the top level of global DNS, thirteen groups of root name servers exist, with additional "copies" of them distributed worldwide via anycast addressing.

Dynamic DNS (DDNS) updates a DNS server with a client IP address on-the-fly, for example, when moving between ISPs or mobile hot spots, or when the IP address changes administratively.


DNS message format

The DNS protocol uses two types of DNS messages, queries and replies, and they both have the same format. Each message consists of a header and four sections: question, answer, authority, and an additional space. A header field (_flags_) controls the content of these four sections.[37]

The header section consists of the following fields: _Identification_, _Flags_, _Number of questions_, _Number of answers_, _Number of authority resource records_ (RRs), and _Number of additional RRs_. Each field is 16 bit long, and appears in the order given. The identification field is used to match responses with queries. The flag field consists of sub-fields as follows:

  Field    Description                                                                                                              Length (bits)
  -------- ------------------------------------------------------------------------------------------------------------------------ ---------------
  QR       Indicates if the message is a query (0) or a reply (1)                                                                   1
  OPCODE   The type can be QUERY (standard query, 0), IQUERY (inverse query, 1), or STATUS (server status request, 2)               4
  AA       Authoritative Answer, in a response, indicates if the DNS server is authoritative for the queried hostname               1
  TC       TrunCation, indicates that this message was truncated due to excessive length                                            1
  RD       Recursion Desired , indicates if the client means a recursive query                                                      1
  RA       Recursion Available, in a response, indicates if the replying DNS server supports recursion                              1
  Z        Zero, reserved for future use                                                                                            3
  RCODE    Response code, can be NOERROR (0), FORMERR(1, Format error), SERVFAIL (2), NXDOMAIN (3, Non existent domain), etc.[38]   4

  : Header flags format

After the flag, the header ends with four 16-bit integers which contain the number of records in each of the sections that follow, in the same order.

Question section

The question section has a simpler format than the resource record format used in the other sections. Each record, usually 1, contains just the following fileds:

  Field   Description                           Length (octets)
  ------- ------------------------------------- -----------------
  NAME    Name of the requested resource        Variable
  TYPE    Type of RR (A, AAAA, MX, TXT, etc.)   2
  CLASS   Class code                            2

  : Resource record (RR) fields

The domain name is broken into discrete labels which are concatenated; each label is prefixed by the length of that label.[39]


DNS protocol transport

DNS primarily uses the User Datagram Protocol (UDP) on port number 53 to serve requests.[40] DNS queries consist of a single UDP request from the client followed by a single UDP reply from the server. When the length of the answer exceeds 512 bytes and both client and server support EDNS, larger UDP packets are used. Otherwise, the query is sent again using the Transmission Control Protocol (TCP). TCP is also used for tasks such as zone transfers. Some resolver implementations use TCP for all queries.


Resource records

The Domain Name System specifies a database of information elements for network resources. The types of information elements are categorized and organized with a list of DNS record types, the resource records (RRs). Each record has a type (name and number), an expiration time (time to live), a class, and type-specific data. Resource records of the same type are described as a _resource record set_ (RRset), having no special ordering. DNS resolvers return the entire set upon query, but servers may implement round-robin ordering to achieve load balancing. In contrast, the Domain Name System Security Extensions (DNSSEC) work on the complete set of resource record in canonical order.

When sent over an Internet Protocol network, all records use the common format specified in RFC 1035:[41]

  Field      Description                                                                                Length (octets)
  ---------- ------------------------------------------------------------------------------------------ ---------------------------
  NAME       Name of the node to which this record pertains                                             Variable
  TYPE       Type of RR in numeric form (e.g., 15 for MX RRs)                                           2
  CLASS      Class code                                                                                 2
  TTL        Count of seconds that the RR stays valid (The maximum is 2³¹−1, which is about 68 years)   4
  RDLENGTH   Length of RDATA field (specified in octets)                                                2
  RDATA      Additional RR-specific data                                                                Variable, as per RDLENGTH

  : Resource record (RR) fields

_NAME_ is the fully qualified domain name of the node in the tree . On the wire, the name may be shortened using label compression where ends of domain names mentioned earlier in the packet can be substituted for the end of the current domain name. A free standing _@_ is used to denote the current origin.

_TYPE_ is the record type. It indicates the format of the data and it gives a hint of its intended use. For example, the _A_ record is used to translate from a domain name to an IPv4 address, the _NS_ record lists which name servers can answer lookups on a DNS zone, and the _MX_ record specifies the mail server used to handle mail for a domain specified in an e-mail address.

_RDATA_ is data of type-specific relevance, such as the IP address for address records, or the priority and hostname for MX records. Well known record types may use label compression in the RDATA field, but "unknown" record types must not (RFC 3597).

The _CLASS_ of a record is set to IN (for _Internet_) for common DNS records involving Internet hostnames, servers, or IP addresses. In addition, the classes Chaos (CH) and Hesiod (HS) exist.[42] Each class is an independent name space with potentially different delegations of DNS zones.

In addition to resource records defined in a zone file, the domain name system also defines several request types that are used only in communication with other DNS nodes (_on the wire_), such as when performing zone transfers (AXFR/IXFR) or for EDNS (OPT).

Wildcard DNS records

The domain name system supports wildcard DNS records which specify names that start with the _asterisk label_, '*', e.g., *.example.[43][44] DNS records belonging to wildcard domain names specify rules for generating resource records within a single DNS zone by substituting whole labels with matching components of the query name, including any specified descendants. For example, in the following configuration, the DNS zone _x.example_ specifies that all subdomains, including subdomains of subdomains, of _x.example_ use the mail exchanger (MX) _a.x.example_. The A record for _a.x.example_ is needed to specify the mail exchanger IP address. As this has the result of excluding this domain name and its subdomains from the wildcard matches, an additional MX record for the subdomain _a.x.example_, as well as a wildcarded MX record for all of its subdomains, must also be defined in the DNS zone.

    x.example.       MX   10 a.x.example.
    *.x.example.     MX   10 a.x.example.
    *.a.x.example.   MX   10 a.x.example.
    a.x.example.     MX   10 a.x.example.
    a.x.example.     AAAA 2001:db8::1

The role of wildcard records was refined in RFC 4592, because the original definition in RFC 1034 was incomplete and resulted in misinterpretations by implementers.[45]


Protocol extensions

The original DNS protocol had limited provisions for extension with new features. In 1999, Paul Vixie published in RFC 2671 (superseded by RFC 6891) an extension mechanism, called Extension mechanisms for DNS (EDNS) that introduced optional protocol elements without increasing overhead when not in use. This was accomplished through the OPT pseudo-resource record that only exists in wire transmissions of the protocol, but not in any zone files. Initial extensions were also suggested (EDNS0), such as increasing the DNS message size in UDP datagrams.


Dynamic zone updates

Dynamic DNS updates use the UPDATE DNS opcode to add or remove resource records dynamically from a zone database maintained on an authoritative DNS server. The feature is described in RFC 2136. This facility is useful to register network clients into the DNS when they boot or become otherwise available on the network. As a booting client may be assigned a different IP address each time from a DHCP server, it is not possible to provide static DNS assignments for such clients.


Security issues

Originally, security concerns were not major design considerations for DNS software or any software for deployment on the early Internet, as the network was not open for participation by the general public. However, the expansion of the Internet into the commercial sector in the 1990s changed the requirements for security measures to protect data integrity and user authentication.

Several vulnerability issues were discovered and exploited by malicious users. One such issue is DNS cache poisoning, in which data is distributed to caching resolvers under the pretense of being an authoritative origin server, thereby polluting the data store with potentially false information and long expiration times (time-to-live). Subsequently, legitimate application requests may be redirected to network hosts operated with malicious intent.

DNS responses traditionally do not have a cryptographic signature, leading to many attack possibilities; the Domain Name System Security Extensions (DNSSEC) modify DNS to add support for cryptographically signed responses. DNSCurve has been proposed as an alternative to DNSSEC. Other extensions, such as TSIG, add support for cryptographic authentication between trusted peers and are commonly used to authorize zone transfer or dynamic update operations.

Some domain names may be used to achieve spoofing effects. For example, and paypa1.com are different names, yet users may be unable to distinguish them in a graphical user interface depending on the user's chosen typeface. In many fonts the letter _l_ and the numeral _1_ look very similar or even identical. This problem is acute in systems that support internationalized domain names, as many character codes in ISO 10646 may appear identical on typical computer screens. This vulnerability is occasionally exploited in phishing.[46]

Techniques such as forward-confirmed reverse DNS can also be used to help validate DNS results.


Privacy and tracking issues

A device looking up a DNS record must communicate with a DNS server to do so. Considerable attention has been given to the adverse privacy implications. Even if DNS records cannot easily be read, modified or spoofed due to security extensions, a person with access to the DNS server or the traffic stream "on the wire" may have little difficulty in matching the IP address of the device (which often identifies the user), to the websites, email or other domains they visit, and track how often and when these records are queried, since DNS records typically expire and must be requeried regularly.

DNS can also "leak" from otherwise secure or private connections, if attention is not paid to their configuration, and at times DNS has been used to bypass firewalls by malicious persons, and exfiltrate data, since it is often seen as innocuous.

Two main approaches are in use to counter privacy issues with DNS:

-   Proxies (including Tor) and VPNs which can reroute or anonymize DNS inquiries in order to mask the source IP address.
-   Intermediate DNS servers that are configured with minimal logging, and which can be queried instead of querying usual DNS servers whose privacy policy may be untrusted. In 2018, Cloudflare launched a DNS server of this kind.[47]


Domain name registration

The right to use a domain name is delegated by domain name registrars which are accredited by the Internet Corporation for Assigned Names and Numbers (ICANN) or other organizations such as OpenNIC, that are charged with overseeing the name and number systems of the Internet. In addition to ICANN, each top-level domain (TLD) is maintained and serviced technically by an administrative organization, operating a registry. A _registry_ is responsible for operating the database of names within its authoritative zone, although the term is most often used for TLDs. A _registrant_ is a person or organization who asked for domain registration.[48] The registry receives registration information from each domain name _registrar_, which is authorized (accredited) to assign names in the corresponding zone and publishes the information using the WHOIS protocol. As of 2015, usage of RDAP is being considered.[49]

ICANN publishes the complete list of TLDs, TLD registries, and domain name registrars. Registrant information associated with domain names is maintained in an online database accessible with the WHOIS service. For most of the more than 290 country code top-level domains (ccTLDs), the domain registries maintain the WHOIS (Registrant, name servers, expiration dates, etc.) information. For instance, DENIC, Germany NIC, holds the DE domain data. From about 2001, most Generic top-level domain (gTLD) registries have adopted this so-called _thick_ registry approach, i.e. keeping the WHOIS data in central registries instead of registrar databases.

For top-level domains on COM and NET, a _thin_ registry model is used. The domain registry (e.g., GoDaddy, BigRock and PDR, VeriSign, etc., etc.) holds basic WHOIS data (i.e., registrar and name servers, etc.). Organizations, or registrants using ORG on the other hand, are on the Public Interest Registry exclusively.

Some domain name registries, often called _network information centers_ (NIC), also function as registrars to end-users, in addition to providing access to the WHOIS datasets. The top-level domain registries, such as for the domains COM, NET, and ORG use a registry-registrar model consisting of many domain name registrars.[50] In this method of management, the registry only manages the domain name database and the relationship with the registrars. The _registrants_ (users of a domain name) are customers of the registrar, in some cases through additional subcontracting of resellers.


RFC documents

Standards

The Domain Name System is defined by Request for Comments (RFC) documents published by the Internet Engineering Task Force (Internet standards). The following is a list of RFCs that define the DNS protocol.

-   RFC 1034, _Domain Names - Concepts and Facilities_
-   RFC 1035, _Domain Names - Implementation and Specification_
-   RFC 1123, _Requirements for Internet Hosts—Application and Support_
-   RFC 1995, _Incremental Zone Transfer in DNS_
-   RFC 1996, _A Mechanism for Prompt Notification of Zone Changes (DNS NOTIFY)_
-   RFC 2136, _Dynamic Updates in the domain name system (DNS UPDATE)_
-   RFC 2181, _Clarifications to the DNS Specification_
-   RFC 2308, _Negative Caching of DNS Queries (DNS NCACHE)_
-   RFC 2672, _Non-Terminal DNS Name Redirection_
-   RFC 2845, _Secret Key Transaction Authentication for DNS (TSIG)_
-   RFC 3225, _Indicating Resolver Support of DNSSEC_
-   RFC 3226, _DNSSEC and IPv6 A6 aware server/resolver message size requirements_
-   RFC 3596, _DNS Extensions to Support IP Version 6_
-   RFC 3597, _Handling of Unknown DNS Resource Record (RR) Types_
-   RFC 4343, _Domain Name System (DNS) Case Insensitivity Clarification_
-   RFC 4592, _The Role of Wildcards in the Domain Name System_
-   RFC 4635, _HMAC SHA TSIG Algorithm Identifiers_
-   RFC 5001, _DNS Name Server Identifier (NSID) Option_
-   RFC 5011, _Automated Updates of DNS Security (DNSSEC) Trust Anchors_
-   RFC 5452, _Measures for Making DNS More Resilient against Forged Answers_
-   RFC 5890, _Internationalized Domain Names for Applications (IDNA):Definitions and Document Framework_
-   RFC 5891, _Internationalized Domain Names in Applications (IDNA): Protocol_
-   RFC 5892, _The Unicode Code Points and Internationalized Domain Names for Applications (IDNA)_
-   RFC 5893, _Right-to-Left Scripts for Internationalized Domain Names for Applications (IDNA)_
-   RFC 6891, _Extension Mechanisms for DNS (EDNS0)_
-   RFC 7766, _DNS Transport over TCP - Implementation Requirements_

Proposed security standards

-   RFC 4033, _DNS Security Introduction and Requirements_
-   RFC 4034, _Resource Records for the DNS Security Extensions_
-   RFC 4035, _Protocol Modifications for the DNS Security Extensions_
-   RFC 4509, _Use of SHA-256 in DNSSEC Delegation Signer (DS) Resource Records_
-   RFC 4470, _Minimally Covering NSEC Records and DNSSEC On-line Signing_
-   RFC 5155, _DNS Security (DNSSEC) Hashed Authenticated Denial of Existence_
-   RFC 5702, _Use of SHA-2 Algorithms with RSA in DNSKEY and RRSIG Resource Records for DNSSEC_
-   RFC 5910, _Domain Name System (DNS) Security Extensions Mapping for the Extensible Provisioning Protocol (EPP)_
-   RFC 5933, _Use of GOST Signature Algorithms in DNSKEY and RRSIG Resource Records for DNSSEC_
-   RFC 7830, _The EDNS(0) Padding Option_
-   RFC 7858, _Specification for DNS over Transport Layer Security (TLS)_
-   RFC 8310, _Usage Profiles for DNS over TLS and DNS over DTLS_
-   RFC 8484, _DNS Queries over HTTPS (DoH)_

Experimental RFCs

-   RFC 1183, _New DNS RR Definitions_

Best Current Practices

-   RFC 2182, _Selection and Operation of Secondary DNS Servers_ (BCP 16)
-   RFC 2317, _Classless IN-ADDR.ARPA delegation_ (BCP 20)
-   RFC 5625, _DNS Proxy Implementation Guidelines_ (BCP 152)
-   RFC 6895, _Domain Name System (DNS) IANA Considerations_ (BCP 42)
-   RFC 7720, _DNS Root Name Service Protocol and Deployment Requirements_ (BCP 40)

Informational RFCs

These RFCs are advisory in nature, but may provide useful information despite defining neither a standard or BCP. (RFC 1796)

-   RFC 1178, _Choosing a Name for Your Computer_ (FYI 5)''
-   RFC 1591, _Domain Name System Structure and Delegation_
-   RFC 1912, _Common DNS Operational and Configuration Errors_
-   RFC 2100, _The Naming of Hosts_
-   RFC 3696, _Application Techniques for Checking and Transformation of Names_
-   RFC 4892, _Requirements for a Mechanism Identifying a Name Server Instance_
-   RFC 5894, _Internationalized Domain Names for Applications (IDNA):Background, Explanation, and Rationale_
-   RFC 5895, _Mapping Characters for Internationalized Domain Names in Applications (IDNA) 2008_
-   RFC 7626, _DNS Privacy Considerations_
-   RFC 7706, _Decreasing Access Time to Root Servers by Running One on Loopback_

Unknown

These RFCs have an official status of Unknown, but due to their age are not clearly labeled as such.

-   RFC 920, _Domain Requirements_ – Specified original top-level domains
-   RFC 1032, _Domain Administrators Guide_
-   RFC 1033, _Domain Administrators Operations Guide_
-   RFC 1101, _DNS Encodings of Network Names and Other Types_


See also

-   Alternative DNS root
-   Comparison of DNS server software
-   Domain hijacking
-   DNS hijacking
-   DNS management software
-   DNS over HTTPS
-   DNS over TLS
-   Hierarchical namespace
-   IPv6 brokenness and DNS whitelisting
-   Multicast DNS
-   Public recursive name server
-   resolv.conf
-   Split-horizon DNS
-   List of DNS record types
-   List of managed DNS providers


References

Sources

-


External links

-   -   Zytrax.com, Open Source Guide – DNS for Rocket Scientists.
-   Internet Governance and the Domain Name System: Issues for Congress Congressional Research Service
-

Category:Computer-related introductions in 1983 Domain_name_system Category:Application layer protocols Category:Internet Standards

[1] RFC 1034, _Domain Names - Concepts and Facilities_, P. Mockapetris, The Internet Society (November 1987)

[2] RFC 781, _Internet Protocol - DARPA Internet Program Protocol Specification_, Information Sciences Institute, J. Postel (Ed.), The Internet Society (September 1981)

[3] RFC 1035, _Domain Names - Implementation and Specification_, P. Mockapetris, The Internet Society (November 1987)

[4] J. Dilley, B. Maggs, J. Parikh, H. Prokop, R. Sitaraman, and B. Weihl.

[5]

[6]

[7]

[8] RFC 3467, "Role of the Domain Name System (DNS)", J.C. Klensin, J. Klensin (February 2003).

[9]

[10] IEEE Annals [3B2-9] man2011030074.3d 29/7/011 11:54 Page 74

[11]

[12]

[13]

[14]

[15] Elizabeth Feinler, IEEE Annals, 3B2-9 man2011030074.3d 29/7/011 11:54 Page 74

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

[28] Network Working Group of the IETF, January 2006, RFC 4343: Domain Name System (DNS) Case Insensitivity Clarification

[29] RFC 3696, _Application Techniques for Checking and Transformation of Names_, J. Klensin

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39] James F. Kurose and Keith W. Ross, Computer Networking: A Top-Down Approach, 6th ed. Essex, England: Pearson Educ. Limited, 2012

[40]

[41] RFC 5395, _Domain Name System (DNS) IANA Considerations_, D. Eastlake 3rd (November 2008), Section 3

[42] RFC 5395, _Domain Name System (DNS) IANA Considerations_, D. Eastlake 3rd (November 2008), p. 11

[43]

[44] RFC 4592, _The Role of Wildcards in the Domain Name System_, E. Lewis (July 2006)

[45]

[46] APWG. "Global Phishing Survey: Domain Name Use and Trends in 1H2010." 10/15/2010 apwg.org

[47]

[48]

[49]

[50]