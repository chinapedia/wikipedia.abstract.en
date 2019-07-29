In cryptography, KEY SIZE or KEY LENGTH is the number of bits in a key used by a cryptographic algorithm (such as a cipher).

Key length defines the upper-bound on an algorithm's security (i.e., a logarithmic measure of the fastest known attack against an algorithm, relative to the key length), since the security of all algorithms can be violated by brute-force attacks. Ideally, key length would coincide with the lower-bound on an algorithm's security. Indeed, most symmetric-key algorithms are designed to have security equal to their key length. However, after design, a new attack might be discovered. For instance, Triple DES was designed to have a 168 bit key, but an attack of complexity 2¹¹² is now known (i.e., Triple DES has 112 bits of security). Nevertheless, as long as the relation between key length and security is sufficient for a particular application, then it doesn't matter if key length and security coincide. This is important for asymmetric-key algorithms, because no such algorithm is known to satisfy this property; elliptic curve cryptography comes the closest with an effective security of roughly half its key length.


Significance

Keys are used to control the operation of a cipher so that only the correct key can convert encrypted text (ciphertext) to plaintext. Many ciphers are actually based on publicly known algorithms or are open source and so it is only the difficulty of obtaining the key that determines security of the system, provided that there is no analytic attack (i.e., a 'structural weakness' in the algorithms or protocols used), and assuming that the key is not otherwise available (such as via theft, extortion, or compromise of computer systems). The widely accepted notion that the security of the system should depend on the key alone has been explicitly formulated by Auguste Kerckhoffs (in the 1880s) and Claude Shannon (in the 1940s); the statements are known as Kerckhoffs' principle and Shannon's Maxim respectively.

A key should therefore be large enough that a brute-force attack (possible against any encryption algorithm) is infeasible – i.e., would take too long to execute. Shannon's work on information theory showed that to achieve so called _perfect secrecy_, the key length must be at least as large as the message and only used once (this algorithm is called the One-time pad). In light of this, and the practical difficulty of managing such long keys, modern cryptographic practice has discarded the notion of perfect secrecy as a requirement for encryption, and instead focuses on _computational security_, under which the computational requirements of breaking an encrypted text must be infeasible for an attacker.


Key size and encryption system

Encryption systems are often grouped into families. Common families include symmetric systems (e.g. AES) and asymmetric systems (e.g. RSA); they may alternatively be grouped according to the central algorithm used (e.g. elliptic curve cryptography).

As each of these is of a different level of cryptographic complexity, it is usual to have different key sizes for the same level of security, depending upon the algorithm used. For example, the security available with a 1024-bit key using asymmetric RSA is considered approximately equal in security to an 80-bit key in a symmetric algorithm.[1]

The actual degree of security achieved over time varies, as more computational power and more powerful mathematical analytic methods become available. For this reason cryptologists tend to look at indicators that an algorithm or key length shows signs of potential vulnerability, to move to longer key sizes or more difficult algorithms. For example, , a 1039 bit integer was factored with the special number field sieve using 400 computers over 11 months.[2] The factored number was of a special form; the special number field sieve cannot be used on RSA keys. The computation is roughly equivalent to breaking a 700 bit RSA key. However, this might be an advance warning that 1024 bit RSA used in secure online commerce should be deprecated, since they may become breakable in the near future. Cryptography professor Arjen Lenstra observed that "Last time, it took nine years for us to generalize from a special to a nonspecial, hard-to-factor number" and when asked whether 1024-bit RSA keys are dead, said: "The answer to that question is an unqualified yes."[3]

The 2015 Logjam attack revealed additional dangers in using Diffie-Helman key exchange when only one or a few common 1024-bit or smaller prime moduli are in use. This common practice allows large amounts of communications to be compromised at the expense of attacking a small number of primes.[4]


Brute-force attack

Even if a symmetric cipher is currently unbreakable by exploiting structural weaknesses in its algorithm, it is possible to run through the entire space of keys in what is known as a _brute-force attack_. Since longer symmetric keys require exponentially more work to brute force search, a sufficiently long symmetric key makes this line of attack impractical.

With a key of length _n_ bits, there are 2^(n) possible keys. This number grows very rapidly as _n_ increases. The large number of operations (2¹²⁸) required to try all possible 128-bit keys is widely considered out of reach for conventional digital computing techniques for the foreseeable future.[5] However, experts anticipate alternative computing technologies that may have processing power superior to current computer technology. If a suitably sized quantum computer capable of running Grover's algorithm reliably becomes available, it would reduce a 128-bit key down to 64-bit security, roughly a DES equivalent. This is one of the reasons why AES supports a 256-bit key length. See the discussion on the relationship between key lengths and quantum computing attacks at the bottom of this page for more information.


Symmetric algorithm key lengths

US Government export policy has long restricted the 'strength' of cryptography that can be sent out of the country. For many years the limit was 40 bits. Today, a key length of 40 bits offers little protection against even a casual attacker with a single PC, a predictable and inevitable consequence of governmental restrictions limiting key length. In response, by the year 2000, most of the major US restrictions on the use of strong encryption were relaxed.[6] However, not all regulations have been removed, and encryption registration with the U.S. Bureau of Industry and Security is still required to export "mass market encryption commodities, software and components with encryption exceeding 64 bits" ().

IBM's Lucifer cipher was selected in 1974 as the base for what would become the Data Encryption Standard. Lucifer's key length was reduced from 128 bits to 56 bits, which the NSA and NIST argued was sufficient. The NSA has major computing resources and a large budget; some cryptographers including Whitfield Diffie and Martin Hellman complained that this made the cipher so weak that NSA computers would be able to break a DES key in a day through brute force parallel computing. The NSA disputed this, claiming brute forcing DES would take them something like 91 years.[7] However, by the late 90s, it became clear that DES could be cracked in a few days' time-frame with custom-built hardware such as could be purchased by a large corporation or government.[8][9] The book _Cracking DES_ (O'Reilly and Associates) tells of the successful attempt in 1998 to break 56-bit DES by a brute-force attack mounted by a cyber civil rights group with limited resources; see EFF DES cracker. Even before that demonstration, 56 bits was considered insufficient length for symmetric algorithm keys; DES has been replaced in many applications by Triple DES, which has 112 bits of security when used 168-bit keys (triple key)[10]. In 2002, Distributed.net and its volunteers broke a 64-bit RC5 key after several years effort, using about seventy thousand (mostly home) computers.

The Advanced Encryption Standard published in 2001 uses key sizes of 128 bits, 192 or 256 bits. Many observers consider 128 bits sufficient for the foreseeable future for symmetric algorithms of AES's quality until quantum computers become available. However, as of 2015, the U.S. National Security Agency has issued guidance that it plans to switch to quantum computing resistant algorithms and now requires 256-bit AES keys for data classified up to Top Secret.[11]

In 2003, the U.S. National Institute for Standards and Technology, NIST proposed phasing out 80-bit keys by 2015. At 2005, 80-bit keys were allowed only until 2010.[12]

Since 2015, NIST guidance says that "the use of keys that provide less than 112 bits of security strength for key agreement is now disallowed." NIST approved symmetric encryption algorithms include three-key Triple DES, and AES. Approvals for two-key Triple DES and Skipjack were withdrawn in 2015; the NSA's Skipjack algorithm used in its Fortezza program employs 80-bit keys.[13]


Asymmetric algorithm key lengths

The effectiveness of public key cryptosystems depends on the intractability (computational and theoretical) of certain mathematical problems such as integer factorization. These problems are time consuming to solve, but usually faster than trying all possible keys by brute force. Thus, asymmetric algorithm keys must be longer for equivalent resistance to attack than symmetric algorithm keys. As of 2002, an asymmetric key length of 1024 bits was generally considered by cryptology experts to be the minimum necessary for the RSA encryption algorithm.[14]

RSA Security claims that 1024-bit RSA keys are equivalent in strength to 80-bit symmetric keys, 2048-bit RSA keys to 112-bit symmetric keys and 3072-bit RSA keys to 128-bit symmetric keys.[15] RSA claims that 1024-bit keys are likely to become crackable some time between 2006 and 2010 and that 2048-bit keys are sufficient until 2030.[16] The NIST recommends 2048-bit keys for RSA. [17] An RSA key length of 3072 bits should be used if security is required beyond 2030.[18] NIST key management guidelines further suggest that 15360-bit RSA keys are equivalent in strength to 256-bit symmetric keys.[19]

The Finite Field Diffie-Hellman algorithm has roughly the same key strength as RSA for the same key sizes. The work factor for breaking Diffie-Hellman is based on the discrete logarithm problem, which is related to the integer factorization problem on which RSA's strength is based. Thus, a 3072-bit Diffie-Hellman key has about the same strength as a 3072-bit RSA key.

One of the asymmetric algorithm types, elliptic curve cryptography, or ECC, appears to be secure with shorter keys than other asymmetric key algorithms require. NIST guidelines state that ECC keys should be twice the length of equivalent strength symmetric key algorithms. So, for example, a 224-bit ECC key would have roughly the same strength as a 112-bit symmetric key. These estimates assume no major breakthroughs in solving the underlying mathematical problems that ECC is based on. A message encrypted with an elliptic key algorithm using a 109-bit long key has been broken by brute force.[20]

The NSA previously specified that "Elliptic Curve Public Key Cryptography using the 256-bit prime modulus elliptic curve as specified in FIPS-186-2 and SHA-256 are appropriate for protecting classified information up to the SECRET level. Use of the 384-bit prime modulus elliptic curve and SHA-384 are necessary for the protection of TOP SECRET information."[21] In 2015 the NSA announced that it plans to transition from Elliptic Curve Cryptography to new algorithms that are resistant to attack by future quantum computers. In the interim it recommends the larger 384-bit curve for all classified information.[22]


Effect of quantum computing attacks on key strength

The two best known quantum computing attacks are based on Shor's algorithm and Grover's algorithm. Of the two, Shor's offers the greater risk to current security systems.

Derivatives of Shor's algorithm are widely conjectured to be effective against all mainstream public-key algorithms including RSA, Diffie-Hellman and elliptic curve cryptography. According to Professor Gilles Brassard, an expert in quantum computing: "The time needed to factor an RSA integer is the same order as the time needed to use that same integer as modulus for a single RSA encryption. In other words, it takes no more time to break RSA on a quantum computer (up to a multiplicative constant) than to use it legitimately on a classical computer." The general consensus is that these public key algorithms are insecure at any key size if sufficiently large quantum computers capable of running Shor's algorithm become available. The implication of this attack is that all data encrypted using current standards based security systems such as the ubiquitous SSL used to protect e-commerce and Internet banking and SSH used to protect access to sensitive computing systems is at risk. Encrypted data protected using public-key algorithms can be archived and may be broken at a later time.

Mainstream symmetric ciphers (such as AES or Twofish) and collision resistant hash functions (such as SHA) are widely conjectured to offer greater security against known quantum computing attacks. They are widely thought most vulnerable to Grover's algorithm. Bennett, Bernstein, Brassard, and Vazirani proved in 1996 that a brute-force key search on a quantum computer cannot be faster than roughly 2^(_n_/2) invocations of the underlying cryptographic algorithm, compared with roughly 2^(_n_) in the classical case.[23] Thus in the presence of large quantum computers an _n_-bit key can provide at least _n_/2 bits of security. Quantum brute force is easily defeated by doubling the key length, which has little extra computational cost in ordinary use. This implies that at least a 256-bit symmetric key is required to achieve 128-bit security rating against a quantum computer. As mentioned above, the NSA announced in 2015 that it plans to transition to quantum-resistant algorithms.[24]

According to NSA "A sufficiently large quantum computer, if built, would be capable of undermining all widely-deployed public key algorithms used for key establishment and digital signatures. ... It is generally accepted that quantum computing techniques are much less effective against symmetric algorithms than against current widely used public key algorithms. While public key cryptography requires changes in the fundamental design to protect against a potential future quantum computer, symmetric key algorithms are believed to be secure provided a sufficiently large key size is used. ... In the longer term, NSA looks to NIST to identify a broadly accepted, standardized suite of commercial public key algorithms that are not vulnerable to quantum attacks.

, the NSA's Commercial National Security Algorithm Suite includes:[25]

  Algorithm                                Usage
  ---------------------------------------- --------------------------------------
  RSA 3072-bit or larger                   Key Establishment, Digital Signature
  Diffie-Hellman (DH) 3072-bit or larger   Key Establishment
  ECDH with NIST P-384                     Key Establishment
  ECDSA with NIST P-384                    Digital Signature
  SHA-384                                  Integrity
  AES-256                                  Confidentiality


See also

-   Key stretching


References

General

-   _Recommendation for Key Management — Part 1: general,_ NIST Special Publication 800-57. March, 2007
-   Blaze, Matt; Diffie, Whitfield; Rivest, Ronald L.; et al. "Minimal Key Lengths for Symmetric Ciphers to Provide Adequate Commercial Security". January, 1996
-   Arjen K. Lenstra, Eric R. Verheul: Selecting Cryptographic Key Sizes. J. Cryptology 14(4): 255-293 (2001) — Citeseer link


External links

-   www.keylength.com: An online keylength calculator
-   Articles discussing the implications of quantum computing
-   NIST cryptographic toolkit
-   Burt Kaliski: TWIRL and RSA key sizes (May 2003)

Category:Key management

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] Strong Cryptography The Global Tide of Change, Cato Institute Briefing Paper no. 51, Arnold G. Reinhold, 1999

[10]

[11]

[12] NIST Special Publication 800-57 Recommendation for Key Management – Part 1: General, original version 2005, Table 4, Csrc.nist.gov

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

[23] Bennett C.H., Bernstein E., Brassard G., Vazirani U., _The strengths and weaknesses of quantum computation_. SIAM Journal on Computing 26(5): 1510-1523 (1997).

[24]

[25] Commercial National Security Algorithm Suite and Quantum Computing FAQ U.S. National Security Agency, January 2016