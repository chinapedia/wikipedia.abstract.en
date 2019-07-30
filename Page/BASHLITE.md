BASHLITE (also known as GAFGYT, LIZKEBAB, QBOT, TORLUS and LIZARDSTRESSER) is malware which infects Linux systems in order to launch distributed denial-of-service attacks (DDoS).[1] Originally it was also known under the name BASHDOOR,[2] but this term now refers to the exploit method used by the malware. It has been used to launch attacks of up to 400 Gbps.[3]

The original version in 2014 exploited a flaw in the bash shell - the Shellshock software bug - to exploit devices running BusyBox.[4][5][6][7] A few months later a variant was detected that could also infect other vulnerable devices in the local network.[8] In 2015 its source code was leaked, causing a proliferation of different variants,[9] and by 2016 it was reported that one million devices have been infected.[10][11][12][13]

Of the identifiable devices participating in these botnets in August 2016 almost 96 percent were IoT devices (of which 95 percent were cameras and DVRs), roughly 4 percent were home routers - and less than 1 percent were compromised Linux servers.[14]


Design

BASHLITE is written in C, and designed to easily cross-compile to various computer architectures.[15]

Exact capabilities differ between variants, but the most common features[16] generate several different types of DDoS attacks: it can hold open TCP connections, send a random string of junk characters to a TCP or a UDP port, or repeatedly send TCP packets with specified flags. They may also have a mechanism to run arbitrary shell commands on the infected machine. There are no facilities for reflected or amplification attacks.

BASHLITE uses a client–server model for command and control. The protocol used for communication is essentially a lightweight version of Internet Relay Chat (IRC).[17] Even though it supports multiple command and control servers, most variants only have a single command and control IP-address hardcoded.

It propagates via brute forcing, using a built-in dictionary of common usernames and passwords. The malware connects to random IP addresses and attempts to login, with successful logins reported back to the command and control server.


See also

-   Low Orbit Ion Cannon – a stress test tool that has been used for DDoS attacks
-   High Orbit Ion Cannon – the replacement for LOIC used in DDoS attacks
-   Denial-of-service attack (DoS)
-   Fork bomb
-   Mirai (malware)
-   Hajime (malware)
-   Slowloris (computer security)
-   ReDoS


References

Category:Denial-of-service attacks Category:Botnets Category:IoT malware Category:Linux malware

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