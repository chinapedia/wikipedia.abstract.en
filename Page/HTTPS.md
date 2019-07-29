HYPERTEXT TRANSFER PROTOCOL SECURE (HTTPS) is an extension of the Hypertext Transfer Protocol (HTTP). It is used for secure communication over a computer network, and is widely used on the Internet.[1][2] In HTTPS, the communication protocol is encrypted using Transport Layer Security (TLS), or, formerly, its predecessor, Secure Sockets Layer (SSL). The protocol is therefore also often referred to as HTTP OVER TLS,[3] or HTTP OVER SSL.

The principal motivation for HTTPS is authentication of the accessed website and protection of the privacy and integrity of the exchanged data while in transit. It protects against man-in-the-middle attacks. The bidirectional encryption of communications between a client and server protects against eavesdropping and tampering of the communication.[4][5] In practice, this provides a reasonable assurance that one is communicating without interference by attackers with the website that one intended to communicate with, as opposed to an impostor.

Historically, HTTPS connections were primarily used for payment transactions on the World Wide Web, e-mail and for sensitive transactions in corporate information systems. ,[6] HTTPS is used more often by web users than the original non-secure HTTP, primarily to protect page authenticity on all types of websites; secure accounts; and keep user communications, identity, and web browsing private.


Overview

Internet2.jpg beginning with the HTTPS scheme and the WWW domain name label]]

The Uniform Resource Identifier (URI) scheme _HTTPS_ has identical usage syntax to the HTTP scheme. However, HTTPS signals the browser to use an added encryption layer of SSL/TLS to protect the traffic. SSL/TLS is especially suited for HTTP, since it can provide some protection even if only one side of the communication is authenticated. This is the case with HTTP transactions over the Internet, where typically only the server is authenticated (by the client examining the server's certificate).

HTTPS creates a secure channel over an insecure network. This ensures reasonable protection from eavesdroppers and man-in-the-middle attacks, provided that adequate cipher suites are used and that the server certificate is verified and trusted.

Because HTTPS piggybacks HTTP entirely on top of TLS, the entirety of the underlying HTTP protocol can be encrypted. This includes the request URL (which particular web page was requested), query parameters, headers, and cookies (which often contain identity information about the user). However, because host (website) addresses and port numbers are necessarily part of the underlying TCP/IP protocols, HTTPS cannot protect their disclosure. In practice this means that even on a correctly configured web server, eavesdroppers can infer the IP address and port number of the web server (sometimes even the domain name e.g. www.example.org, but not the rest of the URL) that one is communicating with, as well as the amount (data transferred) and duration (length of session) of the communication, though not the content of the communication.[7]

Web browsers know how to trust HTTPS websites based on certificate authorities that come pre-installed in their software. Certificate authorities (such as Let's Encrypt, Digicert, Comodo, GoDaddy and GlobalSign) are in this way being trusted by web browser creators to provide valid certificates. Therefore, a user should trust an HTTPS connection to a website if and only if all of the following are true:

-   The user trusts that the browser software correctly implements HTTPS with correctly pre-installed certificate authorities.
-   The user trusts the certificate authority to vouch only for legitimate websites.
-   The website provides a valid certificate, which means it was signed by a trusted authority.
-   The certificate correctly identifies the website (e.g., when the browser visits "https://example.com", the received certificate is properly for "example.com" and not some other entity).
-   The user trusts that the protocol's encryption layer (SSL/TLS) is sufficiently secure against eavesdroppers.

HTTPS is especially important over insecure networks (such as public Wi-Fi access points), as anyone on the same local network can packet-sniff and discover sensitive information not protected by HTTPS. Additionally, many free to use and paid WLAN networks engage in packet injection in order to serve their own ads on webpages. However, this can be exploited maliciously in many ways, such as injecting malware onto webpages and stealing users' private information.[8]

HTTPS is also very important for connections over the Tor anonymity network, as malicious Tor nodes can damage or alter the contents passing through them in an insecure fashion and inject malware into the connection. This is one reason why the Electronic Frontier Foundation and the Tor project started the development of HTTPS Everywhere,[9] which is included in the Tor Browser Bundle.[10]

As more information is revealed about global mass surveillance and criminals stealing personal information, the use of HTTPS security on all websites is becoming increasingly important regardless of the type of Internet connection being used.[11][12] While metadata about individual pages that a user visits is not sensitive, when combined, they can reveal a lot about the user and compromise the user's privacy.[13][14][15]

Deploying HTTPS also allows the use of HTTP/2 (or its predecessor, the now-deprecated protocol SPDY), that are new generations of HTTP, designed to reduce page load times, size and latency.

It is recommended to use HTTP Strict Transport Security (HSTS) with HTTPS to protect users from man-in-the-middle attacks, especially SSL stripping.[16][17]

HTTPS should not be confused with the little-used Secure HTTP (S-HTTP) specified in RFC 2660.

Usage in websites

, 33.2% of Alexa top 1,000,000 websites use HTTPS as default,[18] 57.1% of the Internet's 137,971 most popular websites have a secure implementation of HTTPS,[19] and 70% of page loads (measured by Firefox Telemetry) use HTTPS.[20]

Browser integration

Most browsers display a warning if they receive an invalid certificate. Older browsers, when connecting to a site with an invalid certificate, would present the user with a dialog box asking whether they wanted to continue. Newer browsers display a warning across the entire window. Newer browsers also prominently display the site's security information in the address bar. Extended validation certificates turn the address bar green in newer browsers. Most browsers also display a warning to the user when visiting a site that contains a mixture of encrypted and unencrypted content.

The Electronic Frontier Foundation, opining that "In an ideal world, every web request could be defaulted to HTTPS", has provided an add-on called HTTPS Everywhere, for Mozilla Firefox, Google Chrome, Chromium, and Android, that enables HTTPS by default for hundreds of frequently used websites.[21][22]


Security

The security of HTTPS is that of the underlying TLS, which typically uses long-term public and private keys to generate a short-term session key, which is then used to encrypt the data flow between client and server. X.509 certificates are used to authenticate the server (and sometimes the client as well). As a consequence, certificate authorities and public key certificates are necessary to verify the relation between the certificate and its owner, as well as to generate, sign, and administer the validity of certificates. While this can be more beneficial than verifying the identities via a web of trust, the 2013 mass surveillance disclosures drew attention to certificate authorities as a potential weak point allowing man-in-the-middle attacks.[23][24] An important property in this context is forward secrecy, which ensures that encrypted communications recorded in the past cannot be retrieved and decrypted should long-term secret keys or passwords be compromised in the future. Not all web servers provide forward secrecy.[25]

A site must be completely hosted over HTTPS, without having part of its contents loaded over HTTP—for example, having scripts loaded insecurely—or the user will be vulnerable to some attacks and surveillance. Also having only a certain page that contains sensitive information (such as a log-in page) of a website loaded over HTTPS, while having the rest of the website loaded over plain HTTP, will expose the user to attacks. On a site that has sensitive information somewhere on it, every time that site is accessed with HTTP instead of HTTPS, the user and the session will get exposed. Similarly, cookies on a site served through HTTPS have to have the secure attribute enabled.[26]


Technical

Difference from HTTP

HTTPS URLs begin with "https://" and use port 443 by default, whereas HTTP URLs begin with "http://" and use port 80 by default.

HTTP is not encrypted and is vulnerable to man-in-the-middle and eavesdropping attacks, which can let attackers gain access to website accounts and sensitive information, and modify webpages to inject malware or advertisements. HTTPS is designed to withstand such attacks and is considered secure against them (with the exception of older, deprecated versions of SSL).

Network layers

HTTP operates at the highest layer of the TCP/IP model, the Application layer; as does the TLS security protocol (operating as a lower sublayer of the same layer), which encrypts an HTTP message prior to transmission and decrypts a message upon arrival. Strictly speaking, HTTPS is not a separate protocol, but refers to use of ordinary HTTP over an encrypted SSL/TLS connection.

HTTPS encrypts all message contents, including the HTTP headers and the request/response data. With the exception of the possible CCA cryptographic attack described in the limitations section below, an attacker should only be able to discover that a connection is taking place between the two parties and their domain names and IP addresses.

Server setup

To prepare a web server to accept HTTPS connections, the administrator must create a public key certificate for the web server. This certificate must be signed by a trusted certificate authority for the web browser to accept it without warning. The authority certifies that the certificate holder is the operator of the web server that presents it. Web browsers are generally distributed with a list of signing certificates of major certificate authorities so that they can verify certificates signed by them.

Acquiring certificates

A number of commercial certificate authorities exist, offering paid-for SSL/TLS certificates of a number of types, including Extended Validation Certificates.

Let's Encrypt, launched in April 2016,[27] provides free and automated service that delivers basic SSL/TLS certificates to websites.[28] According to the Electronic Frontier Foundation, "Let's Encrypt" will make switching from HTTP to HTTPS "as easy as issuing one command, or clicking one button."[29] The majority of web hosts and cloud providers now leverage Let's Encrypt, providing free certificates to their customers.

Use as access control

The system can also be used for client authentication in order to limit access to a web server to authorized users. To do this, the site administrator typically creates a certificate for each user, a certificate that is loaded into their browser. Normally, that contains the name and e-mail address of the authorized user and is automatically checked by the server on each reconnect to verify the user's identity, potentially without even entering a password.

In case of compromised secret (private) key

An important property in this context is perfect forward secrecy (PFS). Possessing one of the long-term asymmetric secret keys used to establish an HTTPS session should not make it easier to derive the short-term session key to then decrypt the conversation, even at a later time. Diffie–Hellman key exchange (DHE) and Elliptic curve Diffie–Hellman key exchange (ECDHE) are in 2013 the only ones known to have that property. In 2013, only 30% of Firefox, Opera, and Chromium Browser sessions used it, and nearly 0% of Apple's Safari and Microsoft Internet Explorer sessions.[30] TLS 1.3, published in August 2018, dropped support for ciphers without forward secrecy. , 96.6% of web servers surveyed support some form of forward secrecy, and 52.1% will use forward secrecy with most browsers.[31]

A certificate may be revoked before it expires, for example because the secrecy of the private key has been compromised. Newer versions of popular browsers such as Firefox,[32] Opera,[33] and Internet Explorer on Windows Vista[34] implement the Online Certificate Status Protocol (OCSP) to verify that this is not the case. The browser sends the certificate's serial number to the certificate authority or its delegate via OCSP and the authority responds, telling the browser whether the certificate is still valid.[35]

Limitations

SSL and TLS encryption can be configured in two modes: _simple_ and _mutual_. In simple mode, authentication is only performed by the server. The mutual version requires the user to install a personal client certificate in the web browser for user authentication.[36] In either case, the level of protection depends on the correctness of the implementation of software and the cryptographic algorithms in use.

SSL/TLS does not prevent the indexing of the site by a web crawler, and in some cases the URI of the encrypted resource can be inferred by knowing only the intercepted request/response size.[37] This allows an attacker to have access to the plaintext (the publicly available static content), and the encrypted text (the encrypted version of the static content), permitting a cryptographic attack.

Because TLS operates at a protocol level below that of HTTP, and has no knowledge of the higher-level protocols, TLS servers can only strictly present one certificate for a particular address and port combination.[38] In the past, this meant that it was not feasible to use name-based virtual hosting with HTTPS. A solution called Server Name Indication (SNI) exists, which sends the hostname to the server before encrypting the connection, although many old browsers do not support this extension. Support for SNI is available since Firefox 2, Opera 8, Safari 2.1, Google Chrome 6, and Internet Explorer 7 on Windows Vista.[39][40][41]

From an architectural point of view:

-   An SSL/TLS connection is managed by the first front machine that initiates the TLS connection. If, for any reasons (routing, traffic optimization, etc.), this front machine is not the application server and it has to decipher data, solutions have to be found to propagate user authentication information or certificate to the application server, which needs to know who is going to be connected.
-   For SSL/TLS with mutual authentication, the SSL/TLS session is managed by the first server that initiates the connection. In situations where encryption has to be propagated along chained servers, session timeOut management becomes extremely tricky to implement.
-   With mutual SSL/TLS, security is maximal, but on the client-side, there is no way to properly end the SSL/TLS connection and disconnect the user except by waiting for the server session to expire or closing all related client applications.

A sophisticated type of man-in-the-middle attack called SSL stripping was presented at the Blackhat Conference 2009. This type of attack defeats the security provided by HTTPS by changing the link into an link, taking advantage of the fact that few Internet users actually type "https" into their browser interface: they get to a secure site by clicking on a link, and thus are fooled into thinking that they are using HTTPS when in fact they are using HTTP. The attacker then communicates in clear with the client.[42] This prompted the development of a countermeasure in HTTP called HTTP Strict Transport Security.

HTTPS has been shown vulnerable to a range of traffic analysis attacks. Traffic analysis attacks are a type of side-channel attack that relies on variations in the timing and size of traffic in order to infer properties about the encrypted traffic itself. Traffic analysis is possible because SSL/TLS encryption changes the contents of traffic, but has minimal impact on the size and timing of traffic. In May 2010, a research paper by researchers from Microsoft Research and Indiana University discovered that detailed sensitive user data can be inferred from side channels such as packet sizes. More specifically, the researchers found that an eavesdropper can infer the illnesses/medications/surgeries of the user, his/her family income and investment secrets, despite HTTPS protection in several high-profile, top-of-the-line web applications in healthcare, taxation, investment and web search.[43] Although this work demonstrated vulnerability of HTTPS to traffic analysis, the approach presented by the authors required manual analysis and focused specifically on web applications protected by HTTPS.

The fact that most modern websites, including Google, Yahoo!, and Amazon, use HTTPS causes problems for many users trying to access public Wi-Fi hot spots, because a Wi-Fi hot spot login page fails to load if the user tries to open an HTTPS resource.[44][45] Several websites, such as neverssl.com or nonhttps.com, guarantee that they will always remain accessible by HTTP.[46][47]


History

Netscape Communications created HTTPS in 1994 for its Netscape Navigator web browser.[48] Originally, HTTPS was used with the SSL protocol. As SSL evolved into Transport Layer Security (TLS), HTTPS was formally specified by RFC 2818 in May 2000. Google announced its Chrome browser will mark HTTP sites as "Not Secure" after July 2018 in February 2018.[49] This move was to encourage website owners to implement HTTPS, as an effort to secure the internet.


See also

-   Bullrun (decryption program) a secret anti-encryption program run by the US National Security Agency
-   Computer security
-   curl-loader
-   Diameter protocol
-   HTTPsec
-   Moxie Marlinspike
-   Opportunistic encryption
-   Stunnel


References


External links

-   RFC 2818: HTTP Over TLS
-   RFC 5246: The Transport Layer Security Protocol 1.2
-   RFC 6101: The Secure Sockets Layer (SSL) Protocol Version 3.0
-   [https://howhttps.works: How HTTPS works ...in a comic!]

Category:Hypertext Transfer Protocol Category:Cryptographic protocols Category:Secure communication Category:URI schemes Category:Transport Layer Security Category:Computer-related introductions in 1994

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

[45]

[46]

[47]

[48]

[49]