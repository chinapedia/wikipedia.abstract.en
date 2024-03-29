of the Blaster worm, showing a message left for Microsoft CEO Bill Gates by the worm programmer]] ]] A COMPUTER WORM is a standalone malware computer program that replicates itself in order to spread to other computers.[1] Often, it uses a computer network to spread itself, relying on security failures on the target computer to access it. Worms almost always cause at least some harm to the network, even if only by consuming bandwidth, whereas viruses almost always corrupt or modify files on a targeted computer.

Many worms are designed only to spread, and do not attempt to change the systems they pass through. However, as the Morris worm and Mydoom showed, even these "payload-free" worms can cause major disruption by increasing network traffic and other unintended effects.


History

source code floppy diskette at the Computer History Museum]] The actual term "worm" was first used in John Brunner's 1975 novel, _The Shockwave Rider_. In that novel, Nichlas Haflinger designs and sets off a data-gathering worm in an act of revenge against the powerful men who run a national electronic information web that induces mass conformity. "You have the biggest-ever worm loose in the net, and it automatically sabotages any attempt to monitor it... There's never been a worm with that tough a head or that long a tail!"[2]

On November 2, 1988, Robert Tappan Morris, a Cornell University computer science graduate student, unleashed what became known as the Morris worm, disrupting a large number of computers then on the Internet, guessed at the time to be one tenth of all those connected.[3] During the Morris appeal process, the U.S. Court of Appeals estimated the cost of removing the virus from each installation at between $200 and $53,000; this work prompted the formation of the CERT Coordination Center[4] and Phage mailing list.[5] Morris himself became the first person tried and convicted under the 1986 Computer Fraud and Abuse Act.[6]


Harm

Any code designed to do more than spread the worm is typically referred to as the "payload". Typical malicious payloads might delete files on a host system (e.g., the ExploreZip worm), encrypt files in a ransomware attack, or exfiltrate data such as confidential documents or passwords.

Probably the most common payload for worms is to install a backdoor. This allows the computer to be remotely controlled by the worm author as a "zombie". Networks of such machines are often referred to as botnets and are very commonly used for a range of malicious purposes, including sending spam or performing DoS attacks.[7][8][9][10][11]


Countermeasures

Worms spread by exploiting vulnerabilities in operating systems. Vendors with security problems supply regular security updates[12] (see "Patch Tuesday"), and if these are installed to a machine then the majority of worms are unable to spread to it. If a vulnerability is disclosed before the security patch released by the vendor, a zero-day attack is possible.

Users need to be wary of opening unexpected email,[13][14] and should not run attached files or programs, or visit web sites that are linked to such emails. However, as with the ILOVEYOU worm, and with the increased growth and efficiency of phishing attacks, it remains possible to trick the end-user into running malicious code.

Anti-virus and anti-spyware software are helpful, but must be kept up-to-date with new pattern files at least every few days. The use of a firewall is also recommended.

In the April–June 2008 issue of _IEEE Transactions on Dependable and Secure Computing_, computer scientists described a new and potentially effective way to combat internet worms. The researchers discovered how to contain worms that scanned the Internet randomly, looking for vulnerable hosts to infect. They found that the key was to use software to monitor the number of scans that machines on a network send out. When a machine started to send out too many scans, it was a sign that it has been infected, which allowed administrators to take it off line and check it for malware.[15][16] In addition, machine learning techniques can be used to detect new worms, by analyzing the behavior of the suspected computer.[17]

Users can minimize the threat posed by worms by keeping their computers' operating system and other software up to date, avoiding opening unrecognized or unexpected emails and running firewall and antivirus software.[18]

Mitigation techniques include:

-   ACLs in routers and switches
-   Packet-filters
-   TCP Wrapper/ACL enabled network service daemons
-   Nullroute


Worms with good intent

Beginning with the very first research into worms at Xerox PARC, there have been attempts to create useful worms. Those worms allowed testing by John Shoch and Jon Hupp of the Ethernet principles on their network of Xerox Alto computers. The Nachi family of worms tried to download and install patches from Microsoft's website to fix vulnerabilities in the host system—by exploiting those same vulnerabilities.[19] In practice, although this may have made these systems more secure, it generated considerable network traffic, rebooted the machine in the course of patching it, and did its work without the consent of the computer's owner or user. Regardless of their payload or their writers' intentions, most security experts regard all worms as malware.

Several worms, like XSS worms, have been written to research how worms spread. For example, the effects of changes in social activity or user behavior. One study proposed what seems to be the first computer worm that operates on the second layer of the OSI model (Data link Layer), it utilizes topology information such as Content-addressable memory (CAM) tables and Spanning Tree information stored in switches to propagate and probe for vulnerable nodes until the enterprise network is covered.[20]


See also

-   BlueKeep
-   Botnet
-   Code Shikara (Worm)
-   Computer and network surveillance
-   Computer virus
-   Email spam
-   Father Christmas (computer worm)
-   Self-replicating machine
-   Timeline of computer viruses and worms
-   Trojan horse (computing)
-   XSS worm
-   Zombie (computer science)


References


External links

-   Malware Guide – Guide for understanding, removing and preventing worm infections on Vernalex.com.
-   "The 'Worm' Programs – Early Experience with a Distributed Computation", John Shoch and Jon Hupp, _Communications of the ACM_, Volume 25 Issue 3 (March 1982), pages 172–180.
-   "The Case for Using Layered Defenses to Stop Worms", Unclassified report from the U.S. National Security Agency (NSA), 18 June 2004.
-   Worm Evolution, paper by Jago Maniscalchi on Digital Threat, 31 May 2009.

Computer_worms Category:Types of malware Category:Security breaches

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

[14] Threat Description Email-Worm: VBS/LoveLetter

[15]

[16]

[17]

[18]

[19]

[20]