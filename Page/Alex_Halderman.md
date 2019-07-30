J. ALEX HALDERMAN (born 1981) is professor of Computer Science and Engineering at the University of Michigan, where he is also director of the Center for Computer Security & Society. Halderman's research focuses on computer security and privacy, with an emphasis on problems that broadly impact society and public policy.


Education

Halderman was awarded the A.B. _summa cum laude_ in June 2003, the M.A. in June 2005, and the Ph.D. in June 2009, all in Computer Science from Princeton University. His dissertation, _Investigating Security Failures and their Causes: An Analytic Approach to Computer Security_,[1] was prepared at Princeton's Center for Information Technology Policy under the mentorship of Ed Felten, Andrew Appel, and Brian Kernighan.


Academic career

As a student at Princeton, Halderman played a significant role exposing flaws in Digital Rights Management software used on compact discs. In 2004, he discovered that a DRM system called MediaMax CD-3 could be bypassed simply by holding down the shift key while inserting a CD. The company behind the system briefly threatened him with a $10 million lawsuit, landing him on the front page of USA Today.[2] Later, in 2005, he helped show that a DRM system called Extended Copy Protection functioned identically to a rootkit and weakened the security of computers in which audio CDs were played. The ensuing Sony BMG copy protection rootkit scandal led to the recall of millions of CDs, class action lawsuits, and enforcement action by the U.S. Federal Trade Commission.

In 2008, Halderman led the team that discovered the cold boot attack against disk encryption, which allows an attacker with physical access to a computer device to extract encryption keys or other secrets from its memory. The technique, which was initially effective against nearly ever full-disk encryption product on the market, exploits DRAM data remanence to retrieve memory contents even after the device has been briefly powered off.[3] One version of the technique involves cooling DRAM modules with freeze spray to slow data decay, then removing them from the computer and reading them in an external device. It has become an important part of computer forensics practice and has also inspired a wide variety of defensive research, such as leakage-resilient cryptography and hardware implementations of encrypted RAM. For their work developing the attack, Halderman and his coauthors received the Pwnie Award for Most Innovative Research and the Best Student Paper Award from the USENIX Security Symposium.

At the University of Michigan, Halderman and coauthors performed some of the first comprehensive studies of Internet censorship in China[4] and in Iran[5], and of underground "street networks" in Cuba[6]. In 2009, he led a team that uncovered security problems and copyright infringement in client-side censorship software mandated by the Chinese government.[7] The findings helped catalyze popular protest against the program, leading China to reverse its policy requiring its installation on new PCs. In 2011, Halderman and his students invented Telex, a new approach to circumventing Internet censorship, based on placing anticensorship technology into core network infrastructure outside the censoring country. With support from the United States Department of State, which called the technique a "generational jump forward" in censorship resistance [8], Halderman led a multi-institutional collaboration that further developed the technology and deployed it at ISP-scale under the name Refraction Networking.[9] In 2015, United State Ambassador to the United Nations Samantha Power brought him to New York to demonstrate the technology at a meeting alongside the General Assembly.[10]

In 2012, Halderman and coauthors discovered serious flaws in random number generators that weakened the public-key cryptography used for HTTPS and SSH servers in millions of Internet of things devices. They disclosed vulnerabilities to 60 device manufacturers and spurred changes to the Linux kernel.[11] Their work received the Best Paper Award at the USENIX Security Symposium and was named one of the notable computing articles of the year by ACM Computing Reviews.[12] Halderman played a significant role in fixing several major vulnerabilities in the TLS protocol. He was a co-discoverer of the Logjam[13] and DROWN[14] attacks, and conducted the first impact assessment of the FREAK attack[15]. The three flaws compromised the security of tens of millions of HTTPS websites and resulted in changes to HTTPS server software, web browsers, and the TLS protocol. Since they worked by exploiting remnants of ways in which older versions of the protocol had been deliberately weakened due to 1990s-era restrictions on the export of cryptography from the United States,[16] they carried lessons for the ongoing the public policy debate about cryptographic back doors for law enforcement.[17]

Halderman's Logjam work also provided a plausible explanation for a major question raised by the Edward Snowden revelations: how the National Security Agency could be decoding large volumes of encrypted network traffic. By extrapolating their results to the resources of a major government, the researchers concluded that nation-state attackers could plausibly break 1024-bit Diffie-Hellman key exchange using a purpose-built supercomputer.[18] For a cost on the order of a hundred million dollars, an intelligence agency could break the cryptography used by about two-thirds of all virtual private networks.[19] Snowden publicly responded that he shared the researchers suspicions and blamed the U.S. government for failing to close a vulnerability that left so many people at risk.[20] The work received the 2015 Pwnie Award for Most Innovative Research and was named Best Paper at the ACM Conference on Computer and Communications Security.

In 2013, Halderman and his graduate students created ZMap, a free and open-source security scanning tool designed for information security research.[21] By making efficient use of network bandwidth, ZMap can scan the Internet's entire IPv4 address space in under an hour, allowing researchers to quantify vulnerable systems, track the adoption of security patches, and even measure the impact of natural disasters that disrupt Internet access.[22] Halderman and collaborators used it to track the OpenSSL Heartbleed vulnerability[23] and raised the global rate of patching by 50% by warning the operators of unpatched web servers.[24] Their work won the Best Paper award at the ACM Internet Measurement Conference. In partnership with Google, Halderman's research group used ZMap to study the security of email delivery,[25] highlighting seven countries where more than 20% of inbound Gmail messages arrived unencrypted due to network attackers.[26] To mitigate the problem, Gmail added an indicator to let users know when they receive a message that wasn't delivered using encryption, resulting in a 25% increase in inbound messages sent over an encrypted connection.[27] Halderman and his collaborators were recognized with the 2015 IRTF Applied Networking Research Prize.

In order to accelerate the adoption of encryption by web servers, Halderman in 2012 partnered with Mozilla and the Electronic Frontier Foundation to found the Let’s Encrypt HTTPS certificate authority. Let's Encrypt provides HTTPS certificates at no cost through an automated protocol, significantly lower the complexity of setting up and maintaining TLS encryption. Since its launch in 2016, Let's Encrypt has grown to protecting more than 150 million web sites.[28] Halderman and his students layed the foundation for the IETF-standard protocol that clients use to interface with the CA, the Automated Certificate Management Environment.[29] He sits on the board of directors of the Internet Security Research Group, the non-profit that operates Let's Encrypt.[30] He is also a co-founder and chief scientist of Censys,[31] a network security company that he says aims to "change the way security works by making it more quantitative, more precise, and more accurate."[32]

Halderman was awarded a Sloan Research Fellowship in 2015 by the Alfred P. Sloan Foundation, and in 2019 he was named an Andrew Carnegie Fellow by the Carnegie Corporation of New York.[33] He was profiled in the November 2016 issue of _Playboy_.[34]


Electronic voting

After the 2016 United States presidential election, computer scientists, including Halderman, urged the Clinton campaign to request an election recount in Wisconsin, Michigan, and Pennsylvania (three swing states where Trump had won narrowly, while Clinton won New Hampshire and Maine narrowly) for the purpose of excluding the possibility that the hacking of electronic voting machines had influenced the recorded outcome.[35][36][37]

On 21 June 2017, Halderman testified before the United States Senate Select Committee on Intelligence.[38][39][40] The hearing, titled "Russian Interference in the 2016 U.S. Election" focused on the federal government’s role in safeguarding U.S. elections from outside interference. Halderman discussed his own research in computer science and cybersecurity. He discussed one instance where he tampered with a voting machine and demonstrated the ability to change the outcome of an election. He also made three policy recommendations to safeguard U.S. elections: upgrading and replacing obsolete and vulnerable voting machines; consistently and routinely checking that American elections results are accurate; and applying cybersecurity best practices to the design of voting equipment and the management of elections. Halderman fielded questions from the Senators about his research and policy recommendations. At the end of the hearing, Chairman Burr praised Halderman for his work and noted how important his research is.


References


External links

-   J. Alex Halderman homepage

Category:1980s births Category:Living people Category:American computer scientists Category:Computer security academics Category:Princeton University alumni Category:University of Michigan faculty

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