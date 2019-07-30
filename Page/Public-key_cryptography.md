) number is used to begin generation of an acceptable pair of keys suitable for use by an asymmetric key algorithm.]] scheme, each party generates a public/private key pair and distributes the public key. After obtaining an authentic copy of each other's public keys, Alice and Bob can compute a shared secret offline. The shared secret can be used, for instance, as the key for a symmetric cipher.]] and not encrypted. 1) Alice signs a message with her private key. 2) Bob can verify that Alice sent the message and that the message has not been modified.]]

PUBLIC-KEY CRYPTOGRAPHY, or ASYMMETRIC CRYPTOGRAPHY, is a cryptographic system that uses pairs of keys: _public keys_ which may be disseminated widely, and _private keys_ which are known only to the owner. The generation of such keys depends on cryptographic algorithms based on mathematical problems to produce one-way functions. Effective security only requires keeping the private key private; the public key can be openly distributed without compromising security.[1]

In such a system, any person can encrypt a message using the receiver's _public key_, but that encrypted message can only be decrypted with the receiver's _private key_.

Robust authentication is also possible. A sender can combine a message with a private key to create a short _digital signature_ on the message. Anyone with the corresponding public key can combine a message, a putative digital signature on it, and the known public key to verify whether the signature was valid, i.e. made by the owner of the corresponding private key.[2][3]

Public key algorithms are fundamental security ingredients in modern cryptosystems, applications and protocols assuring the confidentiality, authenticity and non-repudiability of electronic communications and data storage. They underpin various Internet standards, such as Transport Layer Security (TLS), S/MIME, PGP, and GPG. Some public key algorithms provide key distribution and secrecy (e.g., Diffie–Hellman key exchange), some provide digital signatures (e.g., Digital Signature Algorithm), and some provide both (e.g., RSA).


Description

Before the mid-1970s, all cipher systems were using symmetric key algorithms, in which the same cryptographic key is used with the underlying algorithm by both the sender and the recipient, who must both keep it secret. Of necessity, the key in every such system had to be exchanged between the communicating parties in some secure way prior to any use of the system - a secure channel. This requirement is never trivial and very rapidly becomes unmanageable as the number of participants increases, or when secure channels aren't available for key exchange, or when, (as is sensible cryptographic practice), keys are frequently changed. In particular, if messages are meant to be secure from other users, a separate key is required for each possible pair of users.

By contrast, in a public key system, the public keys can be disseminated widely and openly - and only the private key needs to be kept secure by its owner.

Two of the best-known uses of public key cryptography are:

-   _Public key encryption_, in which a message is encrypted with a recipient's public key. The message cannot be decrypted by anyone who does not possess the matching private key, who is thus presumed to be the owner of that key and the person associated with the public key. This is used in an attempt to ensure confidentiality.
-   _Digital signatures_, in which a message is signed with the sender's private key and can be verified by anyone who has access to the sender's public key. This verification proves that the sender had access to the private key, and therefore is likely to be the person associated with the public key. This also ensures that the message has not been tampered with, as a signature is mathematically bound to the message it originally was made with, and verification will fail for practically any other message, no matter how similar to the original message.

One important issue is confidence/proof that a particular public key is authentic, i.e. that it is correct and belongs to the person or entity claimed, and has not been tampered with or replaced by a malicious third party. There are several possible approaches, including:

A public key infrastructure (PKI), in which one or more third parties – known as certificate authorities – certify ownership of key pairs. TLS relies upon this.

A "web of trust" which decentralizes authentication by using individual endorsements of the link between user and public key. PGP uses this approach, as well as lookup in the domain name system (DNS). The DKIM system for digitally signing emails also uses this approach.


Applications

The most obvious application of a public key encryption system is in encrypting communication to provide confidentiality – a message that a sender encrypts using the recipient's public key can be decrypted only by the recipient's paired private key.

Another application in public key cryptography is the digital signature. Digital signature schemes can be used for sender authentication.

Non-repudiation system use digital signatures to ensure that one party cannot successfully dispute its authorship of a document or communication.

Further applications built on this foundation include: digital cash, password-authenticated key agreement, time-stamping services, non-repudiation protocols, etc.

Because asymmetric key algorithms are nearly always much more computationally intensive than symmetric ones, in many cases it is common to exchange a key using a key-exchange algorithm, then transmit data using that key and a symmetric key algorithm. PGP, SSH, and the SSL/TLS family of schemes use this procedure, and are thus called _hybrid cryptosystems_.


Weaknesses

Like all security-related systems, it is important to identify potential weaknesses.

Algorithms

All public key schemes are in theory susceptible to a "brute-force key search attack". Such attacks are however impractical if the amount of computation needed to succeed – termed the "work factor" by Claude Shannon – is out of reach of all potential attackers. In many cases, the work factor can be increased by simply choosing a longer key. But other algorithms may have much lower work factors, making resistance to a brute-force attack irrelevant. Some special and specific algorithms have been developed to aid in attacking some public key encryption algorithms – both RSA and ElGamal encryption have known attacks that are much faster than the brute-force approach.[4]

Major weaknesses have been found for several formerly promising asymmetric key algorithms. The 'knapsack packing' algorithm was found to be insecure after the development of a new attack. Recently, some attacks based on careful measurements of the exact amount of time it takes known hardware to encrypt plain text have been used to simplify the search for likely decryption keys (see "side channel attack"). A great deal of active research is currently underway to both discover, and to protect against, new attack algorithms.

Alteration of public keys

Another potential security vulnerability in using asymmetric keys is the possibility of a "man-in-the-middle" attack, in which the communication of public keys is intercepted by a third party (the "man in the middle") and then modified to provide different public keys instead. Encrypted messages and responses must also be intercepted, decrypted, and re-encrypted by the attacker using the correct public keys for different communication segments, in all instances, so as to avoid suspicion.

This attack may seem to be difficult to implement in practice, but it is not impossible when using insecure media (e.g., public networks, such as the Internet or wireless forms of communications) – for example, a malicious staff member at an Internet Service Provider (ISP) might find it quite easy to carry out.

Public key infrastructure

One approach to prevent such attacks involves the use of a public key infrastructure (PKI); a set of roles, policies, and procedures needed to create, manage, distribute, use, store and revoke digital certificates and manage public-key encryption. However, this in turn has potential weaknesses.

For example, the certificate authority issuing the certificate must be trusted to have properly checked the identity of the key-holder, must ensure the correctness of the public key when it issues a certificate, must be secure from computer piracy, and must have made arrangements with all participants to check all their certificates before protected communications can begin. Web browsers, for instance, are supplied with a long list of "self-signed identity certificates" from PKI providers – these are used to check the _bona fides_ of the certificate authority and then, in a second step, the certificates of potential communicators. An attacker who could subvert any single one of those certificate authorities into issuing a certificate for a bogus public key could then mount a "man-in-the-middle" attack as easily as if the certificate scheme were not used at all. In an alternate scenario rarely discussed, an attacker who penetrated an authority's servers and obtained its store of certificates and keys (public and private) would be able to spoof, masquerade, decrypt, and forge transactions without limit.

Despite its theoretical and potential problems, this approach is widely used. Examples include TLS and its predecessor SSL, which are commonly used to provide security for web browser transactions (for example, to securely send credit card details to an online store).

Aside from the resistance to attack of a particular key pair, the security of the certification hierarchy must be considered when deploying public key systems. Some certificate authority – usually a purpose-built program running on a server computer – vouches for the identities assigned to specific private keys by producing a digital certificate. Public key digital certificates are typically valid for several years at a time, so the associated private keys must be held securely over that time. When a private key used for certificate creation higher in the PKI server hierarchy is compromised, or accidentally disclosed, then a "man-in-the-middle attack" is possible, making any subordinate certificate wholly insecure.


Examples

EXAMPLES OF WELL-REGARDED ASYMMETRIC KEY TECHNIQUES FOR VARIED PURPOSES INCLUDE:

-   Diffie–Hellman key exchange protocol
-   DSS (Digital Signature Standard), which incorporates the Digital Signature Algorithm
-   ElGamal
-   Various elliptic curve techniques
-   Various password-authenticated key agreement techniques
-   Paillier cryptosystem
-   RSA encryption algorithm (PKCS#1)
-   Cramer–Shoup cryptosystem
-   YAK authenticated key agreement protocol

EXAMPLES OF ASYMMETRIC KEY ALGORITHMS NOT WIDELY ADOPTED INCLUDE:

-   NTRUEncrypt cryptosystem
-   McEliece cryptosystem

EXAMPLES OF NOTABLE – YET INSECURE – ASYMMETRIC KEY ALGORITHMS INCLUDE:

-   Merkle–Hellman knapsack cryptosystem

EXAMPLES OF PROTOCOLS USING ASYMMETRIC KEY ALGORITHMS INCLUDE:

-   S/MIME
-   GPG, an implementation of OpenPGP
-   Internet Key Exchange
-   PGP
-   ZRTP, a secure VoIP protocol
-   Transport Layer Security standardized by IETF and its predecessor Secure Socket Layer
-   SILC
-   SSH
-   Bitcoin
-   Off-the-Record Messaging


History

During the early history of cryptography, two parties would rely upon a key that they would exchange by means of a secure, but non-cryptographic, method such as a face-to-face meeting or a trusted courier. This key, which both parties kept absolutely secret, could then be used to exchange encrypted messages. A number of significant practical difficulties arise with this approach to distributing keys.

Anticipation

In his 1874 book _The Principles of Science_, William Stanley Jevons[5] wrote:

  Can the reader say what two numbers multiplied together will produce the number 8616460799?[6] I think it unlikely that anyone but myself will ever know.[7]

Here he described the relationship of one-way functions to cryptography, and went on to discuss specifically the factorization problem used to create a trapdoor function. In July 1996, mathematician Solomon W. Golomb said: "Jevons anticipated a key feature of the RSA Algorithm for public key cryptography, although he certainly did not invent the concept of public key cryptography."[8]

Classified discovery

In 1970, James H. Ellis, a British cryptographer at the UK Government Communications Headquarters (GCHQ), conceived of the possibility of "non-secret encryption", (now called public key cryptography), but could see no way to implement it.[9] In 1973, his colleague Clifford Cocks implemented what has become known as the RSA encryption algorithm, giving a practical method of "non-secret encryption", and in 1974, another GCHQ mathematician and cryptographer, Malcolm J. Williamson, developed what is now known as Diffie–Hellman key exchange. The scheme was also passed to the USA's National Security Agency.[10] With a military focus and low computing power, the power of public key cryptography was unrealised in both organisations:

  I judged it most important for military use ... if you can share your key rapidly and electronically, you have a major advantage over your opponent. Only at the end of the evolution from Berners-Lee designing an open internet architecture for CERN, its adaptation and adoption for the Arpanet ... did public key cryptography realise its full potential.

  —Ralph Benjamin[11]

Their discovery was not publicly acknowledged for 27 years, until the research was declassified by the British government in 1997.[12]

Public discovery

In 1976, an asymmetric key cryptosystem was published by Whitfield Diffie and Martin Hellman who, influenced by Ralph Merkle's work on public key distribution, disclosed a method of public key agreement. This method of key exchange, which uses exponentiation in a finite field, came to be known as Diffie–Hellman key exchange. This was the first published practical method for establishing a shared secret-key over an authenticated (but not confidential) communications channel without using a prior shared secret. Merkle's "public key-agreement technique" became known as Merkle's Puzzles, and was invented in 1974 and published in 1978.

In 1977, a generalization of Cocks' scheme was independently invented by Ron Rivest, Adi Shamir and Leonard Adleman, all then at MIT. The latter authors published their work in 1978, and the algorithm came to be known as RSA, from their initials. RSA uses exponentiation modulo a product of two very large primes, to encrypt and decrypt, performing both public key encryption and public key digital signature. Its security is connected to the extreme difficulty of factoring large integers, a problem for which there is no known efficient general technique.

Since the 1970s, a large number and variety of encryption, digital signature, key agreement, and other techniques have been developed in the field of public key cryptography, including the Rabin cryptosystem, ElGamal encryption, DSA - and elliptic curve cryptography.


See also

-   Books on cryptography
-   GNU Privacy Guard
-   ID-based encryption (IBE)
-   Key escrow
-   Key-agreement protocol
-   PGP word list
-   Pretty Good Privacy
-   Pseudonymity
-   Public key fingerprint
-   Public key infrastructure (PKI)
-   Quantum computing
-   Quantum cryptography
-   Secure Shell (SSH)
-   Transport Layer Security (TLS)
-   Symmetric-key algorithm
-   Threshold cryptosystem
-   Web of trust


Notes


References

-   . The first two sections contain a very good introduction to public-key cryptography.

-   -   -   -   IEEE 1363: Standard Specifications for Public-Key Cryptography
-   Christof Paar, Jan Pelzl, "Introduction to Public-Key Cryptography", Chapter 6 of "Understanding Cryptography, A Textbook for Students and Practitioners". (companion web site contains online cryptography course that covers public-key cryptography), Springer, 2009.


External links

-   Oral history interview with Martin Hellman, Charles Babbage Institute, University of Minnesota. Leading cryptography scholar Martin Hellman discusses the circumstances and fundamental insights of his invention of public key cryptography with collaborators Whitfield Diffie and Ralph Merkle at Stanford University in the mid-1970s.
-   An account of how GCHQ kept their invention of PKE secret until 1997

Category:Anonymity networks Category:Cryptographic software Category:Cryptographic protocols Category:Cryptography Category:Public-key cryptography Category:Banking technology Category:Public key infrastructure Category:Network architecture

[1]

[2]

[3]

[4] Mavroeidis, Vasileios, and Kamer Vishi, "The Impact of Quantum Computing on Present Cryptography", _International Journal of Advanced Computer Science and Applications_, 31 Mar. 2018

[5] Jevons, William Stanley, _The Principles of Science: A Treatise on Logic and Scientific Method_ p. 141, Macmillan & Co., London, 1874, 2nd ed. 1877, 3rd ed. 1879. Reprinted with a foreword by Ernst Nagel, Dover Publications, New York, NY, 1958.

[6] This came to be known as "Jevons's number". The only nontrivial factor pair is 89681 × 96079.

[7] _Principles of Science_, Macmillan & Co., 1874, p. 141.

[8]

[9]

[10]

[11]

[12]