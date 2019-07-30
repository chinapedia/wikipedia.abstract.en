KEY FINDING ATTACKS are attacks on computer systems that make use of cryptography in which computer memory or non-volatile storage is searched for private cryptographic keys that can be used to decrypt or sign data. The term is generally used in the context of attacks which search memory much more efficiently than simply testing each sequence of bytes to determine if it provides the correct answer. They are often used in combination with cold boot attacks to extract key material from computers.


Approaches

In their seminal paper[1] on Key Finding attacks, Shamir and van Someren proposed two different approaches to key finding: statistical or entropic key finding and analytical key finding. The former relies on detecting differences in the statistical properties of the data that make up cryptographic keys while the later relies on determining specific byte patterns that must necessarily exist in the target key material and looking for these patterns.

Statistical key finding

In general for most cryptographic systems the cryptographic keys should be as random as possible. For most symmetric ciphers the keys can and should be a truly random set of bits. For most asymmetric ciphers the private keys are either numbers chosen at random with certain constraints (such as primality or being generators in a group) or are the result of computations based on a set of random numbers with some constraints. In either case the key material exhibits high entropy. In contrast to this, most uncompressed data in a computer's memory has relatively low entropy. As a result, if a key is known to exist in memory in its raw form then it is likely to stand out against the background of non-key data by virtue of its high entropy and an attacker needs to only test for matching keys in areas of memory or storage that have high entropy. High_entropy_keys.png The contrast between the low entropy of most data and the high entropy of key data is sufficient as to be apparent by visual inspection. The image to the right shows an example of this.

Analytical key finding

While statistical key finding can be effective for reducing the amount of memory that needs to be searched, it still requires high-entropy areas to be tested to check if they contain the correct key material. In certain cases, particularly in the context of public key encryption systems, it is possible to determine patterns that must occur in the key material and then limit the search to areas where these patterns are found.

Shamir and van Someren [2] demonstrated one example of this analytical approach for finding private RSA keys where the public key is known and has a small public exponent. In the RSA system the public key is a pair (n, e), where n = p.q with p and q being two large primes. The corresponding private key is (n, d) (or sometimes (p, q, d) or some variant thereof) where $e.d\equiv1\pmod{\phi(n)}$, which is to say that e multiplied by d is equivalent to 1, modulo ϕ(n) where φ represents Euler's totient function and is the size of the multiplicative group modulo n. In the case of an RSA key ϕ(n) = (p − 1)(q − 1) = n − p − q + 1. Finding the value of ϕ(n) from n allows for the factorization of n and the security of the RSA cryptosystem rests on the difficulty of doing so. As such an attacker can not determine d exactly given e and n. An attack can however know a fair amount about what d looks like, given the knowledge that p and q are typically chosen to be the same length in bits and are both 'close' to the square root of n. Thus an attacker can approximate a guess of $\phi(n)\approx \phi '(n) = n-2\sqrt{n}$ and typically this approximation will be correct in the more significant half of its bits of its binary representation. The relationship of e and d means that d = (1 + k.ϕ(n))/e, where the exact value of k is unknown but 0 < k < e. Using this fact and the approximation ϕ′(n), the attacker can enumerate a set of possible values for the top half of the binary representation of d for each possible value of k. These binary patterns can be tested for many orders of magnitude faster than performing a trail decryption. Furthermore, in the common case of e = 3 it can be shown that k = 2, which allows the top half of the bits of d to be determined exactly and searched for directly.


Application

Key finding attacks have been used in conjunction with cold boot attacks to extract keys from machines after they have been switched off.[3] Heninger and Shacham showed that keys can be extracted even when the data in memory has been corrupted by having the power removed.[4]

Statistical key finding was used by Nicko van Someren to locate the signature verification keys used by Microsoft to validate the signatures on MS-CAPI plug-ins. One of these key was later discovered to be referred to as the NSAKEY by Microsoft, sparking some controversy.[5]


Mitigations

Key finding attacks can be mitigated in several ways. For analytic attacks, randomized key blinding will prevent the expected patterns from being found in memory as well as protecting against some other sorts of side-channel attack. Statistical attacks can be made less effective by storing other sorts of high-entropy or compressed data in memory and key material can be spread over a larger block of memory when not in use to reduce the concentration of entropy in one place.


References

Category:Hacking (computer security)

[1]

[2]

[3]

[4]

[5]