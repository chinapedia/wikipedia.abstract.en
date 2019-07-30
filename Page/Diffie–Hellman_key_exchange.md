.]] DIFFIE–HELLMAN KEY EXCHANGE (DH)Synonyms of Diffie–Hellman key exchange include:

-   Diffie–Hellman–Merkle key exchange
-   Diffie–Hellman key agreement
-   Diffie–Hellman key establishment
-   Diffie–Hellman key negotiation
-   Exponential key exchange
-   Diffie–Hellman protocol
-   Diffie–Hellman handshake is a method of securely exchanging cryptographic keys over a public channel and was one of the first public-key protocols as originally conceptualized by Ralph Merkle and named after Whitfield Diffie and Martin Hellman.[1][2] DH is one of the earliest practical examples of public key exchange implemented within the field of cryptography.

Traditionally, secure encrypted communication between two parties required that they first exchange keys by some secure physical channel, such as paper key lists transported by a trusted courier. The Diffie–Hellman key exchange method allows two parties that have no prior knowledge of each other to jointly establish a shared secret key over an insecure channel. This key can then be used to encrypt subsequent communications using a symmetric key cipher.

Diffie–Hellman is used to secure a variety of Internet services. However, research published in October 2015 suggests that the parameters in use for many DH Internet applications at that time are not strong enough to prevent compromise by very well-funded attackers, such as the security services of large governments.[3]

The scheme was first published by Whitfield Diffie and Martin Hellman in 1976,[4] but in 1997 it was revealed that James H. Ellis,[5] Clifford Cocks, and Malcolm J. Williamson of GCHQ, the British signals intelligence agency, had previously, in 1969,[6] shown how public-key cryptography could be achieved.[7]

Although Diffie–Hellman key agreement itself is a non-authenticated key-agreement protocol, it provides the basis for a variety of authenticated protocols, and is used to provide forward secrecy in Transport Layer Security's ephemeral modes (referred to as EDH or DHE depending on the cipher suite).

The method was followed shortly afterwards by RSA, an implementation of public-key cryptography using asymmetric algorithms.

, from 1977, is now expired and describes the now-public-domain algorithm. It credits Hellman, Diffie, and Merkle as inventors.


Name

In 2002, Hellman suggested the algorithm be called DIFFIE–HELLMAN–MERKLE KEY EXCHANGE in recognition of Ralph Merkle's contribution to the invention of public-key cryptography (Hellman, 2002), writing:

    The system...has since become known as Diffie–Hellman key exchange. While that system was first described in a paper by Diffie and me, it is a public key distribution system, a concept developed by Merkle, and hence should be called 'Diffie–Hellman–Merkle key exchange' if names are to be associated with it. I hope this small pulpit might help in that endeavor to recognize Merkle's equal contribution to the invention of public key cryptography.[8]


Description

General overview

Diffie–Hellman key exchange establishes a shared secret between two parties that can be used for secret communication for exchanging data over a public network. The conceptual diagram to the right illustrates the general idea of the key exchange by using colors instead of very large numbers.

The process begins by having the two parties, Alice and Bob, agree on an arbitrary starting color that does not need to be kept secret (but should be different every time[9]); in this example, the color is yellow. Each of them also selects a secret color that they keep to themselves – in this case, red and blue-green. The crucial part of the process is that Alice and Bob each mix their own secret color together with their mutually shared color, resulting in orange-tan and light-blue mixtures respectively, and then publicly exchange the two mixed colors. Finally, each of the two mixes the color they received from the partner with their own private color. The result is a final color mixture (yellow-brown in this case) that is identical to the partner's final color mixture.

If a third party listened to the exchange, it would only know the common color (yellow) and the first mixed colors (orange-tan and light-blue), but it would be computationally difficult for this party to determine the final secret color (yellow-brown). In fact, when using large numbers rather than colors, this action is computationally expensive: It is impossible to do in a reasonable amount of time even for modern supercomputers.

Cryptographic explanation

The simplest and the original implementation[10] of the protocol uses the multiplicative group of integers modulo _p_, where _p_ is prime, and _g_ is a primitive root modulo _p_. These two values are chosen in this way to ensure that the resulting shared secret can take on any value from 1 to _p_–1. Here is an example of the protocol, with non-secret values in blue, and secret values in RED.

1.  Alice and Bob publicly agree to use a modulus _p_ = 23 and base _g_ = 5 (which is a primitive root modulo 23).
2.  Alice chooses a secret integer _A_ = 4, then sends Bob _A_ = _g^(A)_ mod _p_
    -   _A_ = 5⁴ mod 23 = 4
3.  Bob chooses a secret integer _B_ = 3, then sends Alice _B_ = _g^(B)_ mod _p_
    -   _B_ = 5³ mod 23 = 10
4.  Alice computes _S_ = _B^(A)_ mod _p_
    -   _S_ = 10⁴ mod 23 = 18
5.  Bob computes _S_ = _A^(B)_ mod _p_
    -   _S_ = 4³ mod 23 = 18
6.  Alice and Bob now share a secret (the number 18).

Both Alice and Bob have arrived at the same value s, because, under mod p,

$${\color{Blue}A}^{\color{Red}b}\bmod {\color{Blue}p} = {\color{Blue}g}^{\color{Red}ab}\bmod {\color{Blue}p} = {\color{Blue}g}^{\color{Red}ba}\bmod {\color{Blue}p} = {\color{Blue}B}^{\color{Red}a}\bmod {\color{Blue}p}$$
[11]

More specifically,

$$({\color{Blue}g}^{\color{Red}a}\bmod {\color{Blue}p})^{\color{Red}b}\bmod {\color{Blue}p} = ({\color{Blue}g}^{\color{Red}b}\bmod {\color{Blue}p})^{\color{Red}a}\bmod {\color{Blue}p}$$

Note that only _a_, _b_, and (_g^(ab)_ mod _p_ = _g^(ba)_ mod _p_) are kept secret. All the other values – _p_, _g_, _g^(a)_ mod _p_, and _g^(b)_ mod _p_ – are sent in the clear. Once Alice and Bob compute the shared secret they can use it as an encryption key, known only to them, for sending messages across the same open communications channel.

Of course, much larger values of _a_, _b_, and _p_ would be needed to make this example secure, since there are only 23 possible results of _n_ mod 23. However, if _p_ is a prime of at least 600 digits, then even the fastest modern computers cannot find _a_ given only _g_, _p_ and _g^(a)_ mod _p_. Such a problem is called the discrete logarithm problem.[12] The computation of _g^(a)_ mod _p_ is known as modular exponentiation and can be done efficiently even for large numbers. Note that _g_ need not be large at all, and in practice is usually a small integer (like 2, 3, ...).

Secrecy chart

The chart below depicts who knows what, again with non-secret values in blue, and secret values in RED. Here Eve is an eavesdropper – she watches what is sent between Alice and Bob, but she does not alter the contents of their communications.

-   _g_ = public (prime) base, known to Alice, Bob, and Eve. _g_ = 5
-   _p_ = public (prime) modulus, known to Alice, Bob, and Eve. _p_ = 23
-   _A_ = Alice's private key, known only to Alice. _A_ = 6
-   _B_ = Bob's private key known only to Bob. _B_ = 15
-   _A_ = Alice's public key, known to Alice, Bob, and Eve. _A_ = _g^(A)_ mod _p_ = 8
-   _B_ = Bob's public key, known to Alice, Bob, and Eve. _B_ = _g^(B)_ mod _p_ = 19

+-----------------------------------------+-----------------------------------------+----------------------------------+
|   Known                       Unknown   |   Known                       Unknown   |   Known               Unknown    |
|   --------------------------- --------- |   --------------------------- --------- |   ------------------- ---------- |
|   _p_ = 23                              |   _p_ = 23                              |   _p_ = 23                       |
|   _g_ = 5                               |   _g_ = 5                               |   _g_ = 5                        |
|   _A_ = 6                     _B_       |   _B_ = 15                    _A_       |                       _A_, _B_   |
|   _A_ = 5^(A) mod 23                    |   _B_ = 5^(_B_) mod 23                  |                                  |
|   _A_ = 5⁶ mod 23 = 8                   |   _B_ = 5¹⁵ mod 23 = 19                 |                                  |
|   _B_ = 19                              |   _A_ = 8                               |   _A_ = 8, _B_ = 19              |
|   ''S'' = B^(A) mod 23'''               |   ''S'' = A^(B) mod 23'''               |                                  |
|   _S_ = 19^(_6_) mod 23 = 2             |   _S_ = 8^(_15_) mod 23 = 2             |                       _S_        |
|                                         |                                         |                                  |
|   : Alice                               |   : Bob                                 |   : Eve                          |
+-----------------------------------------+-----------------------------------------+----------------------------------+

Now _S_ is the shared secret key and it is known to both Alice and Bob, but _not_ to Eve.

Note: It should be difficult for Alice to solve for Bob's private key or for Bob to solve for Alice's private key. If it is not difficult for Alice to solve for Bob's private key (or vice versa), Eve may simply substitute her own private / public key pair, plug Bob's public key into her private key, produce a fake shared secret key, and solve for Bob's private key (and use that to solve for the shared secret key. Eve may attempt to choose a public / private key pair that will make it easy for her to solve for Bob's private key).

Another demonstration of Diffie–Hellman (also using numbers too small for practical use) is given here.[13]

Generalization to finite cyclic groups

Here is a more general description of the protocol:[14]

1.  Alice and Bob agree on a finite cyclic group _G_ of order _n_ and a generating element _g_ in _G_. (This is usually done long before the rest of the protocol; _g_ is assumed to be known by all attackers.) The group _G_ is written multiplicatively.
2.  Alice picks a random natural number _a_, where 1 ≤ _a_ < _n_, and sends _g^(a)_ to Bob.
3.  Bob picks a random natural number _b_, which is also 1 ≤ _b_ < _n_, and sends _g^(b)_ to Alice.
4.  Alice computes (_g^(b)_)_^(a)_.
5.  Bob computes (_g^(a)_)_^(b)_.

Both Alice and Bob are now in possession of the group element _g^(ab)_, which can serve as the shared secret key. The group _G_ satisfies the requisite condition for secure communication if there is not an efficient algorithm for determining _g^(ab)_ given _g_, _g^(a)_, and _g^(b)_.

For example, the elliptic curve Diffie–Hellman protocol is a variant that uses elliptic curves instead of the multiplicative group of integers modulo p. Variants using hyperelliptic curves have also been proposed. The supersingular isogeny key exchange is a Diffie–Hellman variant that has been designed to be secure against quantum computers.


Operation with more than two parties

Diffie–Hellman key agreement is not limited to negotiating a key shared by only two participants. Any number of users can take part in an agreement by performing iterations of the agreement protocol and exchanging intermediate data (which does not itself need to be kept secret). For example, Alice, Bob, and Carol could participate in a Diffie–Hellman agreement as follows, with all operations taken to be modulo _p_:

1.  The parties agree on the algorithm parameters _p_ and _g_.
2.  The parties generate their private keys, named _a_, _b_, and _c_.
3.  Alice computes _g^(a)_ and sends it to Bob.
4.  Bob computes () = _g^(ab)_ and sends it to Carol.
5.  Carol computes () = _g^(abc)_ and uses it as her secret.
6.  Bob computes _g^(b)_ and sends it to Carol.
7.  Carol computes () = _g^(bc)_ and sends it to Alice.
8.  Alice computes () = _g^(bca)_ = _g^(abc)_ and uses it as her secret.
9.  Carol computes _g^(c)_ and sends it to Alice.
10. Alice computes () = _g^(ca)_ and sends it to Bob.
11. Bob computes () = _g^(cab)_ = _g^(abc)_ and uses it as his secret.

An eavesdropper has been able to see _g^(a)_, _g^(b)_, _g^(c)_, _g^(ab)_, _g^(ac)_, and _g^(bc)_, but cannot use any combination of these to efficiently reproduce _g^(abc)_.

To extend this mechanism to larger groups, two basic principles must be followed:

-   Starting with an "empty" key consisting only of _g_, the secret is made by raising the current value to every participant’s private exponent once, in any order (the first such exponentiation yields the participant’s own public key).
-   Any intermediate value (having up to _N_-1 exponents applied, where _N_ is the number of participants in the group) may be revealed publicly, but the final value (having had all _N_ exponents applied) constitutes the shared secret and hence must never be revealed publicly. Thus, each user must obtain their copy of the secret by applying their own private key last (otherwise there would be no way for the last contributor to communicate the final key to its recipient, as that last contributor would have turned the key into the very secret the group wished to protect).

These principles leave open various options for choosing in which order participants contribute to keys. The simplest and most obvious solution is to arrange the _N_ participants in a circle and have _N_ keys rotate around the circle, until eventually every key has been contributed to by all _N_ participants (ending with its owner) and each participant has contributed to _N_ keys (ending with their own). However, this requires that every participant perform _N_ modular exponentiations.

By choosing a more optimal order, and relying on the fact that keys can be duplicated, it is possible to reduce the number of modular exponentiations performed by each participant to using a divide-and-conquer-style approach, given here for eight participants:

1.  Participants A, B, C, and D each perform one exponentiation, yielding _g^(abcd)_; this value is sent to E, F, G, and H. In return, participants A, B, C, and D receive _g^(efgh)_.
2.  Participants A and B each perform one exponentiation, yielding _g^(efghab)_, which they send to C and D, while C and D do the same, yielding _g^(efghcd)_, which they send to A and B.
3.  Participant A performs an exponentiation, yielding _g^(efghcda)_, which it sends to B; similarly, B sends _g^(efghcdb)_ to A. C and D do similarly.
4.  Participant A performs one final exponentiation, yielding the secret _g^(efghcdba)_ = _g^(abcdefgh)_, while B does the same to get _g^(efghcdab)_ = _g^(abcdefgh)_; again, C and D do similarly.
5.  Participants E through H simultaneously perform the same operations using _g^(abcd)_ as their starting point.

Once this operation has been completed all participants will possess the secret _g^(abcdefgh)_, but each participant will have performed only four modular exponentiations, rather than the eight implied by a simple circular arrangement.


Security

The protocol is considered secure against eavesdroppers if _G_ and _g_ are chosen properly. In particular, the order of the group G must be large, particularly if the same group is used for large amounts of traffic. The eavesdropper ("Eve") has to solve the Diffie–Hellman problem to obtain _g_^(_ab_). This is currently considered difficult for groups whose order is large enough. An efficient algorithm to solve the discrete logarithm problem would make it easy to compute _a_ or _b_ and solve the Diffie–Hellman problem, making this and many other public key cryptosystems insecure. Fields of small characteristic may be less secure.[15]

The order of _G_ should have a large prime factor to prevent use of the Pohlig–Hellman algorithm to obtain _a_ or _b_. For this reason, a Sophie Germain prime _q_ is sometimes used to calculate , called a safe prime, since the order of _G_ is then only divisible by 2 and _q_. _g_ is then sometimes chosen to generate the order _q_ subgroup of _G_, rather than _G_, so that the Legendre symbol of _g^(a)_ never reveals the low order bit of _a_. A protocol using such a choice is for example IKEv2.[16]

_g_ is often a small integer such as 2. Because of the random self-reducibility of the discrete logarithm problem a small _g_ is equally secure as any other generator of the same group.

If Alice and Bob use random number generators whose outputs are not completely random and can be predicted to some extent, then Eve's task is much easier.

In the original description, the Diffie–Hellman exchange by itself does not provide authentication of the communicating parties and is thus vulnerable to a man-in-the-middle attack. Mallory (an active attacker executing the man-in-the-middle attack) may establish two distinct key exchanges, one with Alice and the other with Bob, effectively masquerading as Alice to Bob, and vice versa, allowing her to decrypt, then re-encrypt, the messages passed between them. Note that Mallory must continue to be in the middle, actively decrypting and re-encrypting messages every time Alice and Bob communicate. If she is ever absent, her previous presence is then revealed to Alice and Bob. They will know that all of their private conversations had been intercepted and decoded by someone in the channel. In most cases it will not help them get Mallory's private key, even if she used the same key for both exchanges.

A method to authenticate the communicating parties to each other is generally needed to prevent this type of attack. Variants of Diffie–Hellman, such as STS protocol, may be used instead to avoid these types of attacks.

Practical attacks on Internet traffic

The number field sieve algorithm, which is generally the most effective in solving the discrete logarithm problem, consists of four computational steps. The first three steps only depend on the order of the group G, not on the specific number whose finite log is desired.[17] It turns out that much Internet traffic uses one of a handful of groups that are of order 1024 bits or less.[18] By precomputing the first three steps of the number field sieve for the most common groups, an attacker need only carry out the last step, which is much less computationally expensive than the first three steps, to obtain a specific logarithm. The Logjam attack used this vulnerability to compromise a variety of Internet services that allowed the use of groups whose order was a 512-bit prime number, so called export grade. The authors needed several thousand CPU cores for a week to precompute data for a single 512-bit prime. Once that was done, individual logarithms could be solved in about a minute using two 18-core Intel Xeon CPUs.[19]

As estimated by the authors behind the Logjam attack, the much more difficult precomputation needed to solve the discrete log problem for a 1024-bit prime would cost on the order of $100 million, well within the budget of large national intelligence agency such as the U.S. National Security Agency (NSA). The Logjam authors speculate that precomputation against widely reused 1024-bit DH primes is behind claims in leaked NSA documents that NSA is able to break much of current cryptography.[20]

To avoid these vulnerabilities, authors recommend use of elliptic curve cryptography, for which no similar attack is known. Failing that, they recommend that the order, _p_, of the Diffie–Hellman group should be at least 2048 bits. They estimate that the pre-computation required for a 2048-bit prime is 10⁹ more difficult than for 1024-bit primes.[21]


Other uses

Encryption

Public key encryption schemes based on the Diffie–Hellman key exchange have been proposed. The first such scheme is the ElGamal encryption. A more modern variant is the Integrated Encryption Scheme.

Forward secrecy

Protocols that achieve forward secrecy generate new key pairs for each session and discard them at the end of the session. The Diffie–Hellman key exchange is a frequent choice for such protocols, because of its fast key generation.

Password-authenticated key agreement

When Alice and Bob share a password, they may use a password-authenticated key agreement (PK) form of Diffie–Hellman to prevent man-in-the-middle attacks. One simple scheme is to compare the hash of S concatenated with the password calculated independently on both ends of channel. A feature of these schemes is that an attacker can only test one specific password on each iteration with the other party, and so the system provides good security with relatively weak passwords. This approach is described in ITU-T Recommendation X.1035, which is used by the G.hn home networking standard.

An example of such a protocol is the Secure Remote Password protocol.

Public key

It is also possible to use Diffie–Hellman as part of a public key infrastructure, allowing Bob to encrypt a message so that only Alice will be able to decrypt it, with no prior communication between them other than Bob having trusted knowledge of Alice's public key. Alice's public key is (g^(a)mod p, g, p). To send her a message, Bob chooses a random _b_ and then sends Alice g^(b)mod p (unencrypted) together with the message encrypted with symmetric key (g^(a))^(b)mod p. Only Alice can determine the symmetric key and hence decrypt the message because only she has _a_ (the private key). A pre-shared public key also prevents man-in-the-middle attacks.

In practice, Diffie–Hellman is not used in this way, with RSA being the dominant public key algorithm. This is largely for historical and commercial reasons, namely that RSA Security created a certificate authority for key signing that became Verisign. Diffie–Hellman cannot be used to sign certificates. However, the ElGamal and DSA signature algorithms are mathematically related to it, as well as MQV, STS and the IKE component of the IPsec protocol suite for securing Internet Protocol communications.


See also

-   Elliptic-curve Diffie–Hellman key exchange


Notes


References

General references

-   -   -   -   The History of Non-Secret Encryption JH Ellis 1987 (28K PDF file) (HTML version)
-   The First Ten Years of Public-Key Cryptography Whitfield Diffie, Proceedings of the IEEE, vol. 76, no. 5, May 1988, pp: 560–577 (1.9MB PDF file)
-   Menezes, Alfred; van Oorschot, Paul; Vanstone, Scott (1997). _Handbook of Applied Cryptography_ Boca Raton, Florida: CRC Press. . (Available online)
-   Singh, Simon (1999) _The Code Book: the evolution of secrecy from Mary Queen of Scots to quantum cryptography_ New York: Doubleday
-   An Overview of Public Key Cryptography Martin E. Hellman, IEEE Communications Magazine, May 2002, pp. 42–49. (123kB PDF file)


External links

-   Oral history interview with Martin Hellman, Charles Babbage Institute, University of Minnesota. Leading cryptography scholar Martin Hellman discusses the circumstances and fundamental insights of his invention of public key cryptography with collaborators Whitfield Diffie and Ralph Merkle at Stanford University in the mid-1970s.
-   RFC 2631 – _Diffie–Hellman Key Agreement Method_. E. Rescorla. June 1999.
-   RFC 3526 – _More Modular Exponential (MODP) Diffie–Hellman groups for Internet Key Exchange (IKE)_. T. Kivinen, M. Kojo, SSH Communications Security. May 2003.
-   Summary of ANSI X9.42: Agreement of Symmetric Keys Using Discrete Logarithm Cryptography (64K PDF file) (Description of ANSI 9 Standards)
-   Talk by Martin Hellman in 2007, YouTube video
-   Crypto dream team Diffie & Hellman wins $1M 2015 Turing Award (a.k.a. "Nobel Prize of Computing")

Category:Key-agreement protocols Category:Public-key cryptography

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

[17] Whitfield Diffie, Paul C. Van Oorschot, and Michael J. Wiener "Authentication and Authenticated Key Exchanges", in Designs, Codes and Cryptography, 2, 107–125 (1992), Section 5.2, available as Appendix B to

[18]

[19]

[20]

[21]