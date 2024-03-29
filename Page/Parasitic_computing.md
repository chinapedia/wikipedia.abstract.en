PARASITIC COMPUTING is programming technique where a program in normal authorized interactions with another program manages to get the other program to perform computations of a complex nature. It is, in a sense, a security exploit in that the program implementing the parasitic computing has no authority to consume resources made available to the other program.

It was first proposed by Albert-Laszlo Barabasi, Vincent W. Freeh, Hawoong Jeong & Jay B. Brockman from University of Notre Dame, Indiana, USA, in 2001.[1] The example given by the original paper was two computers communicating over the Internet, under disguise of a standard communications session. The first computer is attempting to solve a large and extremely difficult 3-SAT problem; it has decomposed the original 3-SAT problem in a considerable number of smaller problems. Each of these smaller problems is then encoded as a relation between a checksum and a packet such that whether the checksum is accurate or not is also the answer to that smaller problem. The packet/checksum is then sent to another computer. This computer will, as part of receiving the packet and deciding whether it is valid and well-formed, create a checksum of the packet and see whether it is identical to the provided checksum. If the checksum is invalid, it will then request a new packet from the original computer. The original computer now knows the answer to that smaller problem based on the second computer's response, and can transmit a fresh packet embodying a different sub-problem. Eventually, all the sub-problems will be answered and the final answer easily calculated.

The example is based on an exploit of the Transmission Control Protocol (TCP), used for internet connections, so in the end, the target computer(s) is unaware that it has performed computation for the benefit of the other computer, or even done anything besides have a normal TCP/IP session.

The proof-of-concept is obviously extremely inefficient as the amount of computation necessary to merely send the packets in the first place easily exceeds the computations leeched from the other program; and the 3-SAT problem would be solved much more quickly if just analyzed locally. In addition, in practice packets would probably have to be retransmitted occasionally when real checksum errors and network problems occur. However, parasitic computing on the level of checksums is a demonstration of the concept. The authors suggest that as one moves up the application stack, there might come a point where there is a net computational gain to the parasite - perhaps one could break down interesting problems into queries of complex cryptographic protocols using public keys. If there was a net gain, one could in theory use a number of control nodes for which many hosts on the Internet form a distributed computing network completely unawares.

Students of the University of Applied Sciences, Bern, Switzerland, extended this concept into a programmable virtual machine in 2002.[2]


See also

-   Denial of service attack


References

1.  "Parasitic computing", Barabasi et al., _Nature_, 412: 894-897 (2001).


External links

Category:Distributed computing architecture Category:Models of computation Category:Computer security

[1] Parasitic Computing

[2] Diploma thesis on Parasitic Computing