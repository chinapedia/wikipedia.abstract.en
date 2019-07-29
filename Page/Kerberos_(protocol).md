KERBEROS () is a computer-network authentication protocol that works on the basis of _tickets_ to allow nodes communicating over a non-secure network to prove their identity to one another in a secure manner. The protocol was named after the character _Kerberos_ (or _Cerberus_) from Greek mythology, the ferocious three-headed guard dog of Hades. Its designers aimed it primarily at a client–server model and it provides mutual authentication—both the user and the server verify each other's identity. Kerberos protocol messages are protected against eavesdropping and replay attacks.

Kerberos builds on symmetric key cryptography and requires a trusted third party, and optionally may use public-key cryptography during certain phases of authentication.[1] Kerberos uses UDP port 88 by default.


History and development

Massachusetts Institute of Technology (MIT) developed Kerberos to protect network services provided by Project Athena.[2][3] The protocol is based on the earlier Needham–Schroeder symmetric key protocol. Several versions of the protocol exist; versions 1–3 occurred only internally at MIT.

Kerberos version 4 was primarily designed by Steve Miller and Clifford Neuman.[4] Published in the late 1980s, version 4 was also targeted at Project Athena.

Neuman and Kohl published version 5 in 1993 with the intention of overcoming existing limitations and security problems. Version 5 appeared as RFC 1510, and was made obsolete by RFC 4120 in 2005.

Authorities in the United States classified Kerberos as "Auxiliary Military Equipment" on the US Munitions List and banned its export because it used the Data Encryption Standard (DES) encryption algorithm (with 56-bit keys). A non-US Kerberos 4 implementation, KTH-KRB developed at the Royal Institute of Technology in Sweden, made the system available outside the US before the US changed its cryptography export regulations (_circa_ 2000). The Swedish implementation was based on a limited version called eBones. eBones was based on the exported MIT Bones release (stripped of both the encryption functions and the calls to them) based on version Kerberos 4 patch-level 9.

In 2005, the Internet Engineering Task Force (IETF) Kerberos working group updated specifications. Updates included:

-   Encryption and Checksum Specifications (RFC 3961).
-   Advanced Encryption Standard (AES) Encryption for Kerberos 5 (RFC 3962).
-   A new edition of the Kerberos V5 specification "The Kerberos Network Authentication Service (V5)" (RFC 4120). This version obsoletes RFC 1510, clarifies aspects of the protocol and intended use in a more detailed and clearer explanation.
-   A new edition of the Generic Security Services Application Program Interface (GSS-API) specification "The Kerberos Version 5 Generic Security Service Application Program Interface (GSS-API) Mechanism: Version 2." (RFC 4121).

MIT makes an implementation of Kerberos freely available, under copyright permissions similar to those used for BSD. In 2007, MIT formed the Kerberos Consortium to foster continued development. Founding sponsors include vendors such as Oracle, Apple Inc., Google, Microsoft, Centrify Corporation and TeamF1 Inc., and academic institutions such as the Royal Institute of Technology in Sweden, Stanford University, MIT, and vendors such as CyberSafe offering commercially supported versions.


Microsoft Windows

Windows 2000 and later versions use Kerberos as its default authentication method.[5] Some Microsoft additions to the Kerberos suite of protocols are documented in RFC 3244 "Microsoft Windows 2000 Kerberos Change Password and Set Password Protocols". RFC 4757 documents Microsoft's use of the RC4 cipher. While Microsoft uses and extends the Kerberos protocol, it does not use the MIT software.

Kerberos is used as preferred authentication method: In general, joining a client to a Windows domain means enabling Kerberos as default protocol for authentications from that client to services in the Windows domain and all domains with trust relationships to that domain.[6]

In contrast, when either client or server or both are not joined to a domain (or not part of the same trusted domain environment), Windows will instead use NTLM for authentication between client and server.[7]

Intranet web applications can enforce Kerberos as an authentication method for domain joined clients by using APIs provided under SSPI.


UNIX and Unix-like operating systems

Many UNIX and UNIX-like operating systems, including FreeBSD, Apple's Mac OS X, Red Hat Enterprise Linux, Oracle's Solaris, IBM's AIX and Z/OS, HP's HP-UX and OpenVMS and others, include software for Kerberos authentication of users or services. Embedded implementation of the Kerberos V authentication protocol for client agents and network services running on embedded platforms is also available from companies.


Protocol

Description

The client authenticates itself to the SERVER (AS) which forwards the username to a KEY DISTRIBUTION CENTER (KDC). The KDC issues a TICKET-GRANTING TICKET (TGT), which is time stamped and encrypts it using the TICKET-GRANTING SERVICE'S (TGS) secret key and returns the encrypted result to the user's workstation. This is done infrequently, typically at user logon; the TGT expires at some point although it may be transparently renewed by the user's session manager while they are logged in.

When the client needs to communicate with another node ("principal" in Kerberos parlance) to some service on that node the client sends the TGT to the TGS, which usually shares the same host as the KDC. Service must be registered at TGT with a SERVICE PRINCIPAL NAME (SPN). The client uses the SPN to request access to this service. After verifying that the TGT is valid and that the user is permitted to access the requested service, the TGS issues ticket and session keys to the client. The client then sends the ticket to the SERVICE SERVER (SS) along with its service request.

Kerberos.svg

The protocol is described in detail below.

User Client-based Logon

1.  A user enters a username and password on the client machine(s). Other credential mechanisms like pkinit (RFC 4556) allow for the use of public keys in place of a password.
2.  The client transforms the password into the key of a symmetric cipher. This either uses the built-in key scheduling, or a one-way hash, depending on the cipher-suite used.

Client Authentication

1.  The client sends a cleartext message of the user ID to the AS (Authentication Server) requesting services on behalf of the user. (Note: Neither the secret key nor the password is sent to the AS.)
2.  The AS checks to see if the client is in its database. If it is, the AS generates the secret key by hashing the password of the user found at the database (e.g., Active Directory in Windows Server) and sends back the following two messages to the client:
    -   Message A: _Client/TGS Session Key_ encrypted using the secret key of the client/user.
    -   Message B: _Ticket-Granting-Ticket_ (TGT, which includes the client ID, client network address, ticket validity period, and the _client/TGS session key_) encrypted using the secret key of the TGS.
3.  Once the client receives messages A and B, it attempts to decrypt message A with the secret key generated from the password entered by the user. If the user entered password does not match the password in the AS database, the client's secret key will be different and thus unable to decrypt message A. With a valid password and secret key the client decrypts message A to obtain the _Client/TGS Session Key_. This session key is used for further communications with the TGS. (Note: The client cannot decrypt Message B, as it is encrypted using TGS's secret key.) At this point, the client has enough information to authenticate itself to the TGS.

Client Service Authorization

1.  When requesting services, the client sends the following messages to the TGS:
    -   Message C: Composed of the TGT from message B and the ID of the requested service.
    -   Message D: Authenticator (which is composed of the client ID and the timestamp), encrypted using the _Client/TGS Session Key_.
2.  Upon receiving messages C and D, the TGS retrieves message B out of message C. It decrypts message B using the TGS secret key. This gives it the "client/TGS session key". Using this key, the TGS decrypts message D (Authenticator) and compare client ID from message C and D, if they match server sends the following two messages to the client:
    -   Message E: _Client-to-server ticket_ (which includes the client ID, client network address, validity period and _Client/Server Session Key_) encrypted using the service's secret key.
    -   Message F: _Client/Server Session Key_ encrypted with the _Client/TGS Session Key_.

Client Service Request

1.  Upon receiving messages E and F from TGS, the client has enough information to authenticate itself to the Service Server (SS). The client connects to the SS and sends the following two messages:
    -   Message E: from the previous step (the _client-to-server ticket_, encrypted using service's secret key).
    -   Message G: a new Authenticator, which includes the client ID, timestamp and is encrypted using _Client/Server Session Key_.
2.  The SS decrypts the ticket (message E) using its own secret key to retrieve the _Client/Server Session Key_. Using the sessions key, SS decrypts the Authenticator and compares client ID from messages E and G, if they match server sends the following message to the client to confirm its true identity and willingness to serve the client:
    -   Message H: the timestamp found in client's Authenticator (plus 1 in version 4, but not necessary in version 5[8][9]), encrypted using the _Client/Server Session Key_.
3.  The client decrypts the confirmation (message H) using the _Client/Server Session Key_ and checks whether the timestamp is correct. If so, then the client can trust the server and can start issuing service requests to the server.
4.  The server provides the requested services to the client.


Drawbacks and limitations

-   Single point of failure: It requires continuous availability of a central server. When the Kerberos server is down, new users cannot log in. This can be mitigated by using multiple Kerberos servers and fallback authentication mechanisms.
-   Kerberos has strict time requirements, which means the clocks of the involved hosts must be synchronized within configured limits. The tickets have a time availability period and if the host clock is not synchronized with the Kerberos server clock, the authentication will fail. The default configuration per MIT requires that clock times be no more than five minutes apart. In practice Network Time Protocol daemons are usually used to keep the host clocks synchronized. Note that some servers (Microsoft's implementation being one of them) may return a KRB_AP_ERR_SKEW result containing the encrypted server time in case both clocks have an offset greater than the configured maximum value. In that case, the client could retry by calculating the time using the provided server time to find the offset. This behavior is documented in RFC 4430.
-   The administration protocol is not standardized and differs between server implementations. Password changes are described in RFC 3244.
-   In case of symmetric cryptography adoption (Kerberos can work using symmetric or asymmetric (public-key) cryptography), since all authentications are controlled by a centralized key distribution center (KDC), compromise of this authentication infrastructure will allow an attacker to impersonate any user.
-   Each network service which requires a different host name will need its own set of Kerberos keys. This complicates virtual hosting and clusters.
-   Kerberos requires user accounts, user clients and the services on the server to all have a trusted relationship to the Kerberos token server (All must be in the same Kerberos domain or in domains that have a trust relationship between each other). Kerberos cannot be used in scenarios where users want to connect to services from unknown/untrusted clients as in a typical Internet or cloud computer scenario, where the authentication provider typically does not have knowledge about the users client system.
-   The required client trust makes creating staged environments (e.g., separate domains for test environment, pre-production environment and production environment) difficult: Either domain trust relationships need to be created that prevent a strict separation of environment domains or additional user clients need to be provided for each environment.


Vulnerabilities

The Data Encryption Standard (DES) cipher can be used in combination with Kerberos, but is no longer an Internet standard because it is weak.[10] Security vulnerabilities exist in many legacy products that implement Kerberos because they have not been updated to use newer ciphers like AES instead of DES.

In November 2014, Microsoft released a patch (MS14-068) to rectify an exploitable vulnerability in Windows implementation of the Kerberos Key Distribution Center (KDC).[11] The vulnerability purportedly allows users to "elevate" (and abuse) their privileges, up to Domain level.


See also

-   Single sign-on
-   Identity management
-   SPNEGO
-   S/Key
-   Secure remote password protocol (SRP)
-   Generic Security Services Application Program Interface (GSS-API)
-   Host Identity Protocol (HIP)
-   List of single sign-on implementations


References

General

-   -   -   -   -   -   -   -   -

RFCs

-   RFC 1510 The Kerberos Network Authentication Service (V5) [Obsolete]
-   RFC 1964 The Kerberos Version 5 GSS-API Mechanism
-   RFC 3961 Encryption and Checksum Specifications for Kerberos 5
-   RFC 3962 Advanced Encryption Standard (AES) Encryption for Kerberos 5
-   RFC 4120 The Kerberos Network Authentication Service (V5) [Current]
-   RFC 4121 The Kerberos Version 5 Generic Security Service Application Program Interface (GSS-API) Mechanism: Version 2
-   RFC 4537 Kerberos Cryptosystem Negotiation Extension
-   RFC 4556 Public Key Cryptography for Initial Authentication in Kerberos (PKINIT)
-   RFC 4557 Online Certificate Status Protocol (OCSP) Support for Public Key Cryptography for Initial Authentication in Kerberos (PKINIT)
-   RFC 4757 The RC4-HMAC Kerberos Encryption Types Used by Microsoft Windows [Obsolete]
-   RFC 5021 Extended Kerberos Version 5 Key Distribution Center (KDC) Exchanges over TCP
-   RFC 5349 Elliptic Curve Cryptography (ECC) Support for Public Key Cryptography for Initial Authentication in Kerberos (PKINIT)
-   RFC 5868 Problem Statement on the Cross-Realm Operation of Kerberos
-   RFC 5896 Generic Security Service Application Program Interface (GSS-API): Delegate if Approved by Policy
-   RFC 6111 Additional Kerberos Naming Constraints
-   RFC 6112 Anonymity Support for Kerberos
-   RFC 6113 A Generalized Framework for Kerberos Pre-Authentication
-   RFC 6251 Using Kerberos Version 5 over the Transport Layer Security (TLS) Protocol
-   RFC 6448 The Unencrypted Form of Kerberos 5 KRB-CRED Message
-   RFC 6542 Kerberos Version 5 Generic Security Service Application Program Interface (GSS-API) Channel Binding Hash Agility
-   RFC 6560 One-Time Password (OTP) Pre-Authentication
-   RFC 6649 Deprecate DES, RC4-HMAC-EXP, and Other Weak Cryptographic Algorithms in Kerberos
-   RFC 6784 Kerberos Options for DHCPv6
-   RFC 6803 Camellia Encryption for Kerberos 5
-   RFC 6806 Kerberos Principal Name Canonicalization and Cross-Realm Referrals
-   RFC 6880 An Information Model for Kerberos Version 5


Further reading

1.  2.  3.


External links

-   Kerberos Consortium
-   Kerberos page at MIT website
-   Kerberos Working Group at IETF website
-   Kerberos Sequence Diagram

Category:Authentication protocols Category:Computer access control protocols Category:Computer network security Category:Key transport protocols Category:Symmetric-key algorithms Category:Massachusetts Institute of Technology software

[1] RFC 4556, abstract

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