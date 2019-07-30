PROOF OF SPACE (POSPACE), also called PROOF-OF-CAPACITY (POC), is a means of showing that one has a legitimate interest in a service (such as sending an email) by allocating a non-trivial amount of memory or disk space to solve a challenge presented by the service provider. The concept was formulated by Dziembowski _et al._[1] in 2015 and with a different formal definition by Ateniese _et al._ [2] in 2014.

Proofs of space are very similar to proofs of work, except that instead of computation, storage is used. Proof-of-space is related to, but also considerably different from, memory-hard functions and proofs of retrievability.

After the release of Bitcoin, alternatives to its PoW mining mechanism were researched and PoSpace was studied in the context of cryptocurrencies. Proofs of space are seen as a fairer and greener alternative due to the general-purpose nature of storage and the lower energy cost required by storage. Several theoretical and practical implementations of PoSpace have been released and discussed, such as SpaceMint and Burstcoin.


Concept description

A proof-of-space is a piece of data that a prover sends to a verifier to prove that the prover has reserved a certain amount of space. For practicality, the verification process needs to be efficient, namely, consume a small amount of space and time. For soundness, it should be hard for the prover to pass the verification if it does not actually reserve the claimed amount of space. One way of implementing PoSpace is by using hard-to-pebble graphs.[3][4] The verifier asks the prover to build a labeling of a hard-to-pebble graph. The prover commits to the labeling. The verifier then asks the prover to open several random locations in the commitment.


Uses

Proofs of space could be used as an alternative to proofs of work in the traditional client puzzle applications such as anti-spam measures and denial of service attack prevention. Proof-of-Space has also been used for malware detection, by determining whether the L1 cache of a processor is empty (e.g., has enough space to evaluate the PoSpace routine without cache misses) or contains a routine that resisted being evicted.[5][6]

Proofs of space have been developed further in several concept papers and in one live cryptocurrency implementation.

Implementations

Burstcoin

Proof of space or Proof of capacity is used in the Burstcoin cryptocurrency founded in August 2014.[7] Proof of capacity consumes disk space rather than computing resources to mine a block. Unlike PoW, where the miners keep changing the block header and hash to find the solution, the Proof of capacity implementation in Burstcoin generates random solutions, also called plots, using the Shabal cryptographic algorithm in advance and stores it on hard drives. This stage is called plotting and it may take days or even weeks depending on the storage capacity of the drive. In the next stage - mining, miners match their solutions to the most recent puzzle and the node with the fastest solution gets to mine the next block.[8][9]

Concepts

SpaceMint

In 2015, a paper proposed a cryptocurrency called SpaceMint.[10] It attempts to solve some of the practical design problems associated with the pebbling-based PoSpace schemes. In using PoSpace for decentralized cryptocurrency, the protocol has to be adapted to work in a non-interactive protocol since each individual in the network has to behave as a verifier.[11]

Chia

In 2018, a proposed cryptocurrency Chia presented two papers presenting a new protocol based on proof of space[12] and proof of time.[13] The authors of the project are suggesting that they will publish at least one more paper to fully present the new protocol.[14]


References


External links

-   Burstcoin web site
-   Chia web site

Category:Cryptocurrencies Category:Algorithms and data structures Category:Cryptography

[1]

[2]

[3]

[4]

[5]

[6] Markus Jakobsson Secure Remote Attestation _Cryptology ePrint Archive._ Retrieved 8 January 2018.

[7]

[8]

[9]

[10] Park et al. SpaceMint: A Cryptocurrency Based on Proofs of Space. _Cryptology ePrint Archive._ Retrieved 31 October 2016.

[11]

[12]

[13]

[14]