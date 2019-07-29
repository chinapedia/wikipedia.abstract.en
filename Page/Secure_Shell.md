SECURE SHELL (SSH) is a cryptographic network protocol for operating network services securely over an unsecured network.

 Network Working Group of the IETF,
 January 2006,
 RFC 4251,
 The Secure Shell (SSH) Protocol Architecture

Typical applications include remote command-line, login, and remote command execution, but any network service can be secured with SSH.

SSH provides a secure channel over an unsecured network in a client–server architecture, connecting an SSH client application with an SSH server.

 Network Working Group of the IETF,
 January 2006,
 RFC 4252,
 The Secure Shell (SSH) Authentication Protocol

The protocol specification distinguishes between two major versions, referred to as SSH-1 and SSH-2. The standard TCP port for SSH is 22. SSH is generally used to access Unix-like operating systems, but it can also be used on Microsoft Windows. Windows 10 uses OpenSSH as its default SSH client.[1]

SSH was designed as a replacement for Telnet and for unsecured remote shell protocols such as the Berkeley rlogin, rsh, and rexec protocols. Those protocols send information, notably passwords, in plaintext, rendering them susceptible to interception and disclosure using packet analysis.[2] The encryption used by SSH is intended to provide confidentiality and integrity of data over an unsecured network, such as the Internet, although files leaked by Edward Snowden indicate that the National Security Agency can sometimes decrypt SSH, allowing them to read the contents of SSH sessions.[3]


Definition

SSH uses public-key cryptography to authenticate the remote computer and allow it to authenticate the user, if necessary.[4] There are several ways to use SSH; one is to use automatically generated public-private key pairs to simply encrypt a network connection, and then use password authentication to log on.

Another is to use a manually generated public-private key pair to perform the authentication, allowing users or programs to log in without having to specify a password. In this scenario, anyone can produce a matching pair of different keys (public and private). The public key is placed on all computers that must allow access to the owner of the matching private key (the owner keeps the private key secret). While authentication is based on the private key, the key itself is never transferred through the network during authentication. SSH only verifies whether the same person offering the public key also owns the matching private key. In all versions of SSH it is important to verify unknown public keys, i.e. associate the public keys with identities, before accepting them as valid. Accepting an attacker's public key without validation will authorize an unauthorized attacker as a valid user.


Key management

On Unix-like systems, the list of authorized public keys is typically stored in the home directory of the user that is allowed to log in remotely, in the file ~/.ssh/authorized_keys.[5] This file is respected by SSH only if it is not writable by anything apart from the owner and root. When the public key is present on the remote end and the matching private key is present on the local end, typing in the password is no longer required (some software like Message Passing Interface (MPI) stack may need this password-less access to run properly). However, for additional security the private key itself can be locked with a passphrase.

The private key can also be looked for in standard places, and its full path can be specified as a command line setting (the option _-i_ for ssh). The ssh-keygen utility produces the public and private keys, always in pairs.

SSH also supports password-based authentication that is encrypted by automatically generated keys. In this case, the attacker could imitate the legitimate server side, ask for the password, and obtain it (man-in-the-middle attack). However, this is possible only if the two sides have never authenticated before, as SSH remembers the key that the server side previously used. The SSH client raises a warning before accepting the key of a new, previously unknown server. Password authentication can be disabled.


Usage

SSH is typically used to log into a remote machine and execute commands, but it also supports tunneling, forwarding TCP ports and X11 connections; it can transfer files using the associated SSH file transfer (SFTP) or secure copy (SCP) protocols.[6] SSH uses the client-server model.

The standard TCP port 22 has been assigned for contacting SSH servers.[7]

An SSH client program is typically used for establishing connections to an SSH daemon accepting remote connections. Both are commonly present on most modern operating systems, including macOS, most distributions of Linux, OpenBSD, FreeBSD, NetBSD, Solaris and OpenVMS. Notably, versions of Windows prior to 1709 do not include SSH by default. Proprietary, freeware and open source (e.g. PuTTY,[8] and the version of OpenSSH which is part of Cygwin[9]) versions of various levels of complexity and completeness exist. File managers for UNIX-like systems (e.g. Konqueror) can use the FISH protocol to provide a split-pane GUI with drag-and-drop. The open source Windows program WinSCP[10] provides similar file management (synchronization, copy, remote delete) capability using PuTTY as a back-end. Both WinSCP[11] and PuTTY[12] are available packaged to run directly off a USB drive, without requiring installation on the client machine. Setting up an SSH server in Windows typically involves enabling a feature in Settings app. In Windows 10 version 1709, an official Win32 port of OpenSSH is available.

SSH is important in cloud computing to solve connectivity problems, avoiding the security issues of exposing a cloud-based virtual machine directly on the Internet. An SSH tunnel can provide a secure path over the Internet, through a firewall to a virtual machine.[13]


History and development

Version 1.x

In 1995, Tatu Ylönen, a researcher at Helsinki University of Technology, Finland, designed the first version of the protocol (now called SSH-1) prompted by a password-sniffing attack at his university network.[14] The goal of SSH was to replace the earlier rlogin, TELNET, FTP[15] and rsh protocols, which did not provide strong authentication nor guarantee confidentiality. Ylönen released his implementation as freeware in July 1995, and the tool quickly gained in popularity. Towards the end of 1995, the SSH user base had grown to 20,000 users in fifty countries.

In December 1995, Ylönen founded SSH Communications Security to market and develop SSH. The original version of the SSH software used various pieces of free software, such as GNU libgmp, but later versions released by SSH Communications Security evolved into increasingly proprietary software.

It was estimated that by the year 2000 the number of users had grown to 2 million.[16]

Version 2.x

"Secsh" was the official Internet Engineering Task Force's (IETF) name for the IETF working group responsible for version 2 of the SSH protocol.[17] In 2006, a revised version of the protocol, SSH-2, was adopted as a standard. This version is incompatible with SSH-1. SSH-2 features both security and feature improvements over SSH-1. Better security, for example, comes through Diffie–Hellman key exchange and strong integrity checking via message authentication codes. New features of SSH-2 include the ability to run any number of shell sessions over a single SSH connection.[18] Due to SSH-2's superiority and popularity over SSH-1, some implementations such as libssh(v0.8.0+),[19] Lsh[20] and Dropbear[21] support only the SSH-2 protocol.

Version 1.99

In January 2006, well after version 2.1 was established, RFC 4253 specified that an SSH server which supports both 2.0 and prior versions of SSH should identify its protoversion as 1.99.[22] This is not an actual version but a method to identify backward compatibility.

OpenSSH and OSSH

In 1999, developers, wanting a free software version to be available, went back to the older 1.2.12 release of the original SSH program, which was the last released under an open source license. Björn Grönvall's OSSH was subsequently developed from this codebase. Shortly thereafter, OpenBSD developers forked Grönvall's code and did extensive work on it, creating OpenSSH, which shipped with the 2.6 release of OpenBSD. From this version, a "portability" branch was formed to port OpenSSH to other operating systems.[23]

, OpenSSH was the single most popular SSH implementation, coming by default in a large number of operating systems. OSSH meanwhile has become obsolete.[24] OpenSSH continues to be maintained and supports the SSH-2 protocol, having expunged SSH-1 support from the codebase with the OpenSSH 7.6 release.


Uses

X11_ssh_tunnelling.png application over SSH: the user 'josh' has SSHed from the local machine 'foofighter' to the remote machine 'tengwar' to run xeyes.]] OpenWrtPuTTY.png via SSH using PuTTY running on Windows.]] SSH is a protocol that can be used for many applications across many platforms including most Unix variants (Linux, the BSDs including Apple's macOS, and Solaris), as well as Microsoft Windows. Some of the applications below may require features that are only available or compatible with specific SSH clients or servers. For example, using the SSH protocol to implement a VPN is possible, but presently only with the OpenSSH server and client implementation.

-   For login to a shell on a remote host (replacing Telnet and rlogin)
-   For executing a single command on a remote host (replacing rsh)
-   For setting up automatic (passwordless) login to a remote server (for example, using OpenSSH[25])
-   In combination with rsync to back up, copy and mirror files efficiently and securely
-   For forwarding or tunneling a port (not to be confused with a VPN, which routes packets between different networks, or bridges two broadcast domains into one).
-   For using as a full-fledged encrypted VPN. Note that only OpenSSH server and client supports this feature.
-   For forwarding X from a remote host (possible through multiple intermediate hosts)
-   For browsing the web through an encrypted proxy connection with SSH clients that support the SOCKS protocol.
-   For securely mounting a directory on a remote server as a filesystem on a local computer using SSHFS.
-   For automated remote monitoring and management of servers through one or more of the mechanisms discussed above.
-   For development on a mobile or embedded device that supports SSH.
-   For securing file transfer protocols.

File transfer protocols

The Secure Shell protocols are used in several file transfer mechanisms.

-   Secure copy (SCP), which evolved from RCP protocol over SSH
-   rsync, intended to be more efficient than SCP. Generally runs over an SSH connection.
-   SSH File Transfer Protocol (SFTP), a secure alternative to FTP (not to be confused with FTP over SSH or FTPS)
-   Files transferred over shell protocol (a.k.a. FISH), released in 1998, which evolved from Unix shell commands over SSH
-   Fast and Secure Protocol (FASP), aka _Aspera_, uses SSH for control and UDP ports for data transfer.


Architecture

Ssh_binary_packet_alt.svg

The SSH-2 protocol has an internal architecture (defined in RFC 4251) with well-separated layers, namely:

-   The _transport_ layer (RFC 4253), which typically runs on top of TCP/IP. This layer handles initial key exchange as well as server authentication, and sets up encryption, compression and integrity verification. It exposes to the upper layer an interface for sending and receiving plaintext packets with sizes of up to 32,768 bytes each (more can be allowed by the implementation). The transport layer also arranges for key re-exchange, usually after 1 GB of data has been transferred or after 1 hour has passed, whichever occurs first.
-   The _user authentication_ layer (RFC 4252). This layer handles client authentication and provides a number of authentication methods. Authentication is _client-driven_: when one is prompted for a password, it may be the SSH client prompting, not the server. The server merely responds to the client's authentication requests. Widely used user-authentication methods include the following:
    -   _password_: a method for straightforward password authentication, including a facility allowing a password to be changed. Not all programs implement this method.
    -   _publickey_: a method for public key-based authentication, usually supporting at least DSA, ECDSA or RSA keypairs, with other implementations also supporting X.509 certificates.
    -   _keyboard-interactive_ (RFC 4256): a versatile method where the server sends one or more prompts to enter information and the client displays them and sends back responses keyed-in by the user. Used to provide one-time password authentication such as S/Key or SecurID. Used by some OpenSSH configurations when PAM is the underlying host-authentication provider to effectively provide password authentication, sometimes leading to inability to log in with a client that supports just the plain _password_ authentication method.
    -   GSSAPI authentication methods which provide an extensible scheme to perform SSH authentication using external mechanisms such as Kerberos 5 or NTLM, providing single sign-on capability to SSH sessions. These methods are usually implemented by commercial SSH implementations for use in organizations, though OpenSSH does have a working GSSAPI implementation.
-   The _connection_ layer (RFC 4254). This layer defines the concept of channels, channel requests and global requests using which SSH services are provided. A single SSH connection can host multiple channels simultaneously, each transferring data in both directions. Channel requests are used to relay out-of-band channel-specific data, such as the changed size of a terminal window or the exit code of a server-side process. Additionally, each channel performs its own flow control using the receive window size. The SSH client requests a server-side port to be forwarded using a global request. Standard channel types include:
    -   _shell_ for terminal shells, SFTP and exec requests (including SCP transfers)
    -   _direct-tcpip_ for client-to-server forwarded connections
    -   _forwarded-tcpip_ for server-to-client forwarded connections
-   The SSHFP DNS record (RFC 4255) provides the public host key fingerprints in order to aid in verifying the authenticity of the host.

This open architecture provides considerable flexibility, allowing the use of SSH for a variety of purposes beyond a secure shell. The functionality of the transport layer alone is comparable to Transport Layer Security (TLS); the user-authentication layer is highly extensible with custom authentication methods; and the connection layer provides the ability to multiplex many secondary sessions into a single SSH connection, a feature comparable to BEEP and not available in TLS.


Enhancements

These are intended for performance enhancements of SSH products:

-   SSH-over-SCTP: support for SCTP rather than TCP as the connection oriented transport layer protocol.[26]
-   ECDSA: support for elliptic curve DSA rather than DSA or RSA for signing.[27]
-   ECDH: support for elliptic curve Diffie–Hellman rather than plain Diffie–Hellman for encryption key exchange.[28]
-   UMAC: support for UMAC rather than HMAC for MAC/integrity.[29]


Vulnerabilities

SSH-1

In 1998 a vulnerability was described in SSH 1.5 which allowed the unauthorized insertion of content into an encrypted SSH stream due to insufficient data integrity protection from CRC-32 used in this version of the protocol.[30][31] A fix known as SSH Compensation Attack Detector[32] was introduced into most implementations. Many of these updated implementations contained a new integer overflow vulnerability[33] that allowed attackers to execute arbitrary code with the privileges of the SSH daemon, typically root.

In January 2001 a vulnerability was discovered that allows attackers to modify the last block of an IDEA-encrypted session.[34] The same month, another vulnerability was discovered that allowed a malicious server to forward a client authentication to another server.[35]

Since SSH-1 has inherent design flaws which make it vulnerable, it is now generally considered obsolete and should be avoided by explicitly disabling fallback to SSH-1. Most modern servers and clients support SSH-2.

CBC plaintext recovery

In November 2008, a theoretical vulnerability was discovered for all versions of SSH which allowed recovery of up to 32 bits of plaintext from a block of ciphertext that was encrypted using what was then the standard default encryption mode, CBC.[36] The most straightforward solution is to use CTR, counter mode, instead of CBC mode, since this renders SSH resistant to the attack.[37]

Possible vulnerabilities

On December 28, 2014 Der Spiegel published classified information[38] leaked by whistleblower Edward Snowden which suggests that the National Security Agency may be able to decrypt some SSH traffic. The technical details associated with such a process were not disclosed.

An analysis in 2017 of the hacking tools BothanSpy & Gyrfalcon suggested that the SSH protocol itself was not compromised.[39]


Standards documentation

The following RFC publications by the IETF "secsh" working group document SSH-2 as a proposed Internet standard.

-   RFC 4250, The Secure Shell (SSH) Protocol Assigned Numbers
-   RFC 4251, The Secure Shell (SSH) Protocol Architecture
-   RFC 4252, The Secure Shell (SSH) Authentication Protocol
-   RFC 4253, The Secure Shell (SSH) Transport Layer Protocol
-   RFC 4254, The Secure Shell (SSH) Connection Protocol
-   RFC 4255, Using DNS to Securely Publish Secure Shell (SSH) Key Fingerprints
-   RFC 4256, Generic Message Exchange Authentication for the Secure Shell Protocol (SSH)
-   RFC 4335, The Secure Shell (SSH) Session Channel Break Extension
-   RFC 4344, The Secure Shell (SSH) Transport Layer Encryption Modes
-   RFC 4345, Improved Arcfour Modes for the Secure Shell (SSH) Transport Layer Protocol

It was later modified and expanded by the following publications.

-   RFC 4419, Diffie-Hellman Group Exchange for the Secure Shell (SSH) Transport Layer Protocol (March 2006)
-   RFC 4432, RSA Key Exchange for the Secure Shell (SSH) Transport Layer Protocol (March 2006)
-   RFC 4462, Generic Security Service Application Program Interface (GSS-API) Authentication and Key Exchange for the Secure Shell (SSH) Protocol (May 2006)
-   RFC 4716, The Secure Shell (SSH) Public Key File Format (November 2006)
-   RFC 4819: Secure Shell Public Key Subsystem (March 2007)
-   RFC 5647: AES Galois Counter Mode for the Secure Shell Transport Layer Protocol (August 2009)
-   RFC 5656, Elliptic Curve Algorithm Integration in the Secure Shell Transport Layer (December 2009)
-   RFC 6187: X.509v3 Certificates for Secure Shell Authentication (March 2011)
-   RFC 6239: Suite B Cryptographic Suites for Secure Shell (SSH) (May 2011)
-   RFC 6594: Use of the SHA-256 Algorithm with RSA, Digital Signature Algorithm (DSA), and Elliptic Curve DSA (ECDSA) in SSHFP Resource Records
-   RFC 6668, SHA-2 Data Integrity Verification for the Secure Shell (SSH) Transport Layer Protocol (July 2012)
-   RFC 7479: Ed25519 SSHFP Resource Records

In addition, the OpenSSH project includes several vendor protocol specifications/extensions:

-   OpenSSH PROTOCOL overview
-   OpenSSH certificate/key overview


See also

-   Brute-force attack
-   Comparison of SSH clients
-   Comparison of SSH servers
-   Corkscrew
-   Ident
-   OpenSSH
-   Secure Shell tunneling
-   Web-based SSH


References


Further reading

-   -   -   Original announcement of Ssh

-   -


External links

-   SSH Protocols
-   RFC7076
-   How to establish passwordless login with ssh

Secure_Shell Category:Application layer protocols

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

[22] , IETF

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

[39] Tatu Ylonen. "BothanSpy & Gyrfalcon - Analysis of CIA hacking tools for SSH", ssh.com, 3 August 2017. Retrieved 15 july 2018.