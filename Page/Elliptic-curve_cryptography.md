ELLIPTIC-CURVE CRYPTOGRAPHY (ECC) is an approach to public-key cryptography based on the algebraic structure of elliptic curves over finite fields. ECC requires smaller keys compared to non-EC cryptography (based on plain Galois fields) to provide equivalent security.[1]

Elliptic curves are applicable for key agreement, digital signatures, pseudo-random generators and other tasks. Indirectly, they can be used for encryption by combining the key agreement with a symmetric encryption scheme. They are also used in several integer factorization algorithms based on elliptic curves that have applications in cryptography, such as Lenstra elliptic-curve factorization.


Resources

RFC https://tools.ietf.org/html/rfc6090


Rationale

Public-key cryptography is based on the intractability of certain mathematical problems. Early public-key systems are secure assuming that it is difficult to factor a large integer composed of two or more large prime factors. For elliptic-curve-based protocols, it is assumed that finding the discrete logarithm of a random elliptic curve element with respect to a publicly known base point is infeasible: this is the "elliptic curve discrete logarithm problem" (ECDLP). The security of elliptic curve cryptography depends on the ability to compute a point multiplication and the inability to compute the multiplicand given the original and product points. The size of the elliptic curve determines the difficulty of the problem.

The primary benefit promised by elliptic curve cryptography is a smaller key size, reducing storage and transmission requirements, i.e. that an elliptic curve group could provide the same level of security afforded by an RSA-based system with a large modulus and correspondingly larger key: for example, a 256-bit elliptic curve public key should provide comparable security to a 3072-bit RSA public key.

The U.S. National Institute of Standards and Technology (NIST) has endorsed elliptic curve cryptography in its Suite B set of recommended algorithms, specifically elliptic curve Diffie–Hellman (ECDH) for key exchange and Elliptic Curve Digital Signature Algorithm (ECDSA) for digital signature. The U.S. National Security Agency (NSA) allows their use for protecting information classified up to top secret with 384-bit keys.[2] However, in August 2015, the NSA announced that it plans to replace Suite B with a new cipher suite due to concerns about quantum computing attacks on ECC.[3][4]

While the RSA patent expired in 2000, there may be patents in force covering certain aspects of ECC technology. However some argue that the US government elliptic curve digital signature standard (ECDSA; NIST FIPS 186-3) and certain practical ECC-based key exchange schemes (including ECDH) can be implemented without infringing them, including RSA Laboratories[5] and Daniel J. Bernstein.[6]


History

The use of elliptic curves in cryptography was suggested independently by Neal Koblitz[7] and Victor S. Miller[8] in 1985. Elliptic curve cryptography algorithms entered wide use in 2004 to 2005.


Theory

For current cryptographic purposes, an _elliptic curve_ is a plane curve over a finite field (rather than the real numbers) which consists of the points satisfying the equation

    y² = x³ + ax + b, 

along with a distinguished point at infinity, denoted ∞. (The coordinates here are to be chosen from a fixed finite field of characteristic not equal to 2 or 3, or the curve equation will be somewhat more complicated.)

This set together with the group operation of elliptic curves is an abelian group, with the point at infinity as an identity element. The structure of the group is inherited from the divisor group of the underlying algebraic variety.

    Div⁰(E) → Pic⁰(E) ≃ E, 


Cryptographic schemes

Several discrete logarithm-based protocols have been adapted to elliptic curves, replacing the group (ℤ_(p))^(×) with an elliptic curve:

-   The Elliptic Curve Diffie–Hellman (ECDH) key agreement scheme is based on the Diffie–Hellman scheme,
-   The Elliptic Curve Integrated Encryption Scheme (ECIES), also known as Elliptic Curve Augmented Encryption Scheme or simply the Elliptic Curve Encryption Scheme,
-   The Elliptic Curve Digital Signature Algorithm (ECDSA) is based on the Digital Signature Algorithm,
-   The deformation scheme using Harrison's p-adic Manhattan metric,
-   The Edwards-curve Digital Signature Algorithm (EdDSA) is based on Schnorr signature and uses twisted Edwards curves,
-   The ECMQV key agreement scheme is based on the MQV key agreement scheme,
-   The ECQV implicit certificate scheme.

At the RSA Conference 2005, the National Security Agency (NSA) announced Suite B which exclusively uses ECC for digital signature generation and key exchange. The suite is intended to protect both classified and unclassified national security systems and information.[9]

Recently, a large number of cryptographic primitives based on bilinear mappings on various elliptic curve groups, such as the Weil and Tate pairings, have been introduced. Schemes based on these primitives provide efficient identity-based encryption as well as pairing-based signatures, signcryption, key agreement, and proxy re-encryption.


Implementation

Some common implementation considerations include:

Domain parameters

To use ECC, all parties must agree on all the elements defining the elliptic curve, that is, the _domain parameters_ of the scheme. The field is defined by _p_ in the prime case and the pair of _m_ and _f_ in the binary case. The elliptic curve is defined by the constants _a_ and _b_ used in its defining equation. Finally, the cyclic subgroup is defined by its _generator_ (a.k.a. _base point_) _G_. For cryptographic application the order of _G_, that is the smallest positive number _n_ such that nG = 𝒪 (the point at infinity of the curve, and the identity element), is normally prime. Since _n_ is the size of a subgroup of E(𝔽_(p)) it follows from Lagrange's theorem that the number $h = \frac{1}{n}|E(\mathbb{F}_p)|$ is an integer. In cryptographic applications this number _h_, called the _cofactor_, must be small (h ≤ 4) and, preferably, h = 1. To summarize: in the prime case, the domain parameters are (p, a, b, G, n, h); in the binary case, they are (m, f, a, b, G, n, h).

Unless there is an assurance that domain parameters were generated by a party trusted with respect to their use, the domain parameters _must_ be validated before use.

The generation of domain parameters is not usually done by each participant because this involves computing the number of points on a curve which is time-consuming and troublesome to implement. As a result, several standard bodies published domain parameters of elliptic curves for several common field sizes. Such domain parameters are commonly known as "standard curves" or "named curves"; a named curve can be referenced either by name or by the unique object identifier defined in the standard documents:

-   NIST, Recommended Elliptic Curves for Government Use
-   SECG, SEC 2: Recommended Elliptic Curve Domain Parameters
-   ECC Brainpool (RFC 5639), ECC Brainpool Standard Curves and Curve Generation

SECG test vectors are also available.[10] NIST has approved many SECG curves, so there is a significant overlap between the specifications published by NIST and SECG. EC domain parameters may be either specified by value or by name.

If one (despite the above) wants to construct one's own domain parameters, one should select the underlying field and then use one of the following strategies to find a curve with appropriate (i.e., near prime) number of points using one of the following methods:

-   Select a random curve and use a general point-counting algorithm, for example, Schoof's algorithm or Schoof–Elkies–Atkin algorithm,
-   Select a random curve from a family which allows easy calculation of the number of points (e.g., Koblitz curves), or
-   Select the number of points and generate a curve with this number of points using _complex multiplication_ technique.[11]

Several classes of curves are weak and should be avoided:

-   Curves over 𝔽_(2^(m)) with non-prime _m_ are vulnerable to Weil descent attacks.[12][13]
-   Curves such that _n_ divides p^(B) − 1 (where _p_ is the characteristic of the field: _q_ for a prime field, or 2 for a binary field) for sufficiently small _B_ are vulnerable to Menezes–Okamoto–Vanstone (MOV) attack[14][15] which applies usual discrete logarithm problem (DLP) in a small-degree extension field of 𝔽_(p) to solve ECDLP. The bound _B_ should be chosen so that discrete logarithms in the field 𝔽_(p^(B)) are at least as difficult to compute as discrete logs on the elliptic curve E(𝔽_(q)).[16]
-   Curves such that |E(𝔽_(q))| = q are vulnerable to the attack that maps the points on the curve to the additive group of 𝔽_(q).[17][18][19]

Key sizes

Because all the fastest known algorithms that allow one to solve the ECDLP (baby-step giant-step, Pollard's rho, etc.), need $O(\sqrt{n})$ steps, it follows that the size of the underlying field should be roughly twice the security parameter. For example, for 128-bit security one needs a curve over 𝔽_(q), where q ≈ 2²⁵⁶. This can be contrasted with finite-field cryptography (e.g., DSA) which requires[20] 3072-bit public keys and 256-bit private keys, and integer factorization cryptography (e.g., RSA) which requires a 3072-bit value of _n_, where the private key should be just as large. However, the public key may be smaller to accommodate efficient encryption, especially when processing power is limited.

The hardest ECC scheme (publicly) broken to date had a 112-bit key for the prime field case and a 109-bit key for the binary field case. For the prime field case, this was broken in July 2009 using a cluster of over 200 PlayStation 3 game consoles and could have been finished in 3.5 months using this cluster when running continuously.[21] The binary field case was broken in April 2004 using 2600 computers over 17 months.[22]

A current project is aiming at breaking the ECC2K-130 challenge by Certicom, by using a wide range of different hardware: CPUs, GPUs, FPGA.[23]

Projective coordinates

A close examination of the addition rules shows that in order to add two points, one needs not only several additions and multiplications in 𝔽_(q) but also an inversion operation. The inversion (for given x ∈ 𝔽_(q) find y ∈ 𝔽_(q) such that xy = 1) is one to two orders of magnitude slower[24] than multiplication. However, points on a curve can be represented in different coordinate systems which do not require an inversion operation to add two points. Several such systems were proposed: in the _projective_ system each point is represented by three coordinates (X, Y, Z) using the following relation: $x = \frac{X}{Z}$, $y = \frac{Y}{Z}$; in the _Jacobian system_ a point is also represented with three coordinates (X, Y, Z), but a different relation is used: $x = \frac{X}{Z^2}$, $y = \frac{Y}{Z^3}$; in the _López–Dahab system_ the relation is $x = \frac{X}{Z}$, $y = \frac{Y}{Z^2}$; in the _modified Jacobian_ system the same relations are used but four coordinates are stored and used for calculations (X, Y, Z, aZ⁴); and in the _Chudnovsky Jacobian_ system five coordinates are used (X, Y, Z, Z², Z³). Note that there may be different naming conventions, for example, IEEE P1363-2000 standard uses "projective coordinates" to refer to what is commonly called Jacobian coordinates. An additional speed-up is possible if mixed coordinates are used.[25]

Fast reduction (NIST curves)

Reduction modulo _p_ (which is needed for addition and multiplication) can be executed much faster if the prime _p_ is a pseudo-Mersenne prime, that is p ≈ 2^(d); for example, p = 2⁵²¹ − 1 or p = 2²⁵⁶ − 2³² − 2⁹ − 2⁸ − 2⁷ − 2⁶ − 2⁴ − 1. Compared to Barrett reduction, there can be an order of magnitude speed-up.[26] The speed-up here is a practical rather than theoretical one, and derives from the fact that the moduli of numbers against numbers near powers of two can be performed efficiently by computers operating on binary numbers with bitwise operations.

The curves over 𝔽_(p) with pseudo-Mersenne _p_ are recommended by NIST. Yet another advantage of the NIST curves is that they use _a_ = −3, which improves addition in Jacobian coordinates.

According to Bernstein and Lange, many of the efficiency-related decisions in NIST FIPS 186-2 are sub-optimal. Other curves are more secure and run just as fast.[27]


Applications

Elliptic curves are applicable for encryption, digital signatures, pseudo-random generators and other tasks. They are also used in several integer factorization algorithms that have applications in cryptography, such as Lenstra elliptic curve factorization.

In 1999, NIST recommended 15 elliptic curves. Specifically, FIPS 186-3 has 10 recommended finite fields:

-   Five prime fields 𝔽_(p) for certain primes _p_ of sizes 192, 224, 256, 384, and bits. For each of the prime fields, one elliptic curve is recommended.
-   Five binary fields 𝔽_(2^(m)) for _m_ equal 163, 233, 283, 409, and 571. For each of the binary fields, one elliptic curve and one Koblitz curve was selected.

The NIST recommendation thus contains a total of 5 prime curves and 10 binary curves. The curves were ostensibly chosen for optimal security and implementation efficiency.[28]

In 2013, _The New York Times_ stated that Dual Elliptic Curve Deterministic Random Bit Generation (or Dual_EC_DRBG) had been included as a NIST national standard due to the influence of NSA, which had included a deliberate weakness in the algorithm and the recommended elliptic curve[29]. RSA Security in September 2013 issued an advisory recommending that its customers discontinue using any software based on Dual_EC_DRBG.[30][31] In the wake of the exposure of Dual_EC_DRBG as "an NSA undercover operation", cryptography experts have also expressed concern over the security of the NIST recommended elliptic curves,[32] suggesting a return to encryption based on non-elliptic-curve groups.

Elliptic curve cryptography is used by the cryptocurrency Bitcoin.[33]


Security

Side-channel attacks

Unlike most other DLP systems (where it is possible to use the same procedure for squaring and multiplication), the EC addition is significantly different for doubling (_P_ = _Q_) and general addition (_P_ ≠ _Q_) depending on the coordinate system used. Consequently, it is important to counteract side channel attacks (e.g., timing or simple/differential power analysis attacks) using, for example, fixed pattern window (a.k.a. comb) methods[34] (note that this does not increase computation time). Alternatively one can use an Edwards curve; this is a special family of elliptic curves for which doubling and addition can be done with the same operation.[35] Another concern for ECC-systems is the danger of fault attacks, especially when running on smart cards.[36]

Backdoors

Cryptographic experts have expressed concerns that the National Security Agency has inserted a kleptographic backdoor into at least one elliptic curve-based pseudo random generator.[37] Internal memos leaked by former NSA contractor, Edward Snowden, suggest that the NSA put a backdoor in the Dual EC DRBG standard.[38] One analysis of the possible backdoor concluded that an adversary in possession of the algorithm's secret key could obtain encryption keys given only 32 bytes of PRNG output.[39]

The SafeCurves project has been launched in order to catalog curves that are easy to securely implement and are designed in a fully publicly verifiable way to minimize the chance of a backdoor.[40]

Quantum computing attacks

Shor's algorithm can be used to break elliptic curve cryptography by computing discrete logarithms on a hypothetical quantum computer. The latest quantum resource estimates for breaking a curve with a 256-bit modulus (128-bit security level) are 2330 qubits and 126 billion Toffoli gates.[41] In comparison, using Shor's algorithm to break the RSA algorithm requires 4098 qubits and 5.2 trillion Toffoli gates for a 2048-bit RSA key, suggesting that ECC is an easier target for quantum computers than RSA. All of these figures vastly exceed any quantum computer that has ever been built, and estimates place the creation of such computers as a decade or more away.

Supersingular Isogeny Diffie–Hellman Key Exchange provides a post-quantum secure form of elliptic curve cryptography by using isogenies to implement Diffie–Hellman key exchanges. This key exchange uses much of the same field arithmetic as existing elliptic curve cryptography and requires computational and transmission overhead similar to many currently used public key systems.[42]

In August 2015, NSA announced that it planned to transition "in the not distant future" to a new cipher suite that is resistant to quantum attacks. "Unfortunately, the growth of elliptic curve use has bumped up against the fact of continued progress in the research on quantum computing, necessitating a re-evaluation of our cryptographic strategy."[43][44]

Invalid curve attack

When ECC is utilized in Virtual machines, an attacker may use a invalid curve for get a complete PDH private key.[45]


Patents

At least one ECC scheme (ECMQV) and some implementation techniques are covered by patents.


Alternative representations

Alternative representations of elliptic curves include:

-   Hessian curves
-   Edwards curves
-   Twisted curves
-   Twisted Hessian curves
-   Twisted Edwards curve
-   Doubling-oriented Doche–Icart–Kohel curve
-   Tripling-oriented Doche–Icart–Kohel curve
-   Jacobian curve
-   Montgomery curves


See also

-   Cryptocurrency
-   Curve25519
-   FourQ
-   DNSCurve
-   ECC patents
-   ECDH
-   Elliptic Curve Digital Signature Algorithm
-   ECMQV
-   Elliptic curve point multiplication
-   Homomorphic Signatures for Network Coding
-   Hyperelliptic curve cryptography
-   Pairing-based cryptography
-   Public-key cryptography
-   Quantum cryptography


Notes


References

-   Standards for Efficient Cryptography Group (SECG), SEC 1: Elliptic Curve Cryptography, Version 1.0, September 20, 2000. (archived as if Nov 11, 2014)
-   D. Hankerson, A. Menezes, and S.A. Vanstone, _Guide to Elliptic Curve Cryptography_, Springer-Verlag, 2004.
-   I. Blake, G. Seroussi, and N. Smart, _Elliptic Curves in Cryptography_, London Mathematical Society 265, Cambridge University Press, 1999.
-   I. Blake, G. Seroussi, and N. Smart, editors, _Advances in Elliptic Curve Cryptography_, London Mathematical Society 317, Cambridge University Press, 2005.
-   L. Washington, _Elliptic Curves: Number Theory and Cryptography_, Chapman & Hall / CRC, 2003.
-   The Case for Elliptic Curve Cryptography, National Security Agency (archived January 17, 2009)
-   Online Elliptic Curve Cryptography Tutorial, Certicom Corp. (archived here as of March 3, 2016)
-   K. Malhotra, S. Gardner, and R. Patz, Implementation of Elliptic-Curve Cryptography on Mobile Healthcare Devices, Networking, Sensing and Control, 2007 IEEE International Conference on, London, 15–17 April 2007 Page(s):239–244
-   Saikat Basu, A New Parallel Window-Based Implementation of the Elliptic Curve Point Multiplication in Multi-Core Architectures, International Journal of Network Security, Vol. 13, No. 3, 2011, Page(s):234–241 (archived here as of March 4, 2016)
-   Christof Paar, Jan Pelzl, "Elliptic Curve Cryptosystems", Chapter 9 of "Understanding Cryptography, A Textbook for Students and Practitioners". (companion web site contains online cryptography course that covers elliptic curve cryptography), Springer, 2009. (archived here as of April 20, 2016)
-   Luca De Feo, David Jao, Jerome Plut, Towards quantum-resistant cryptosystems from supersingular elliptic curve isogenies, Springer 2011. (archived here as of May 7, 2012)

-   Jacques Vélu, _Courbes elliptiques (...)_, Société Mathématique de France, 57, 1-152, Paris, 1978.

Category:Elliptic curve cryptography Category:Public-key cryptography Category:Finite fields

[1] Commercial National Security Algorithm Suite and Quantum Computing FAQ U.S. National Security Agency, January 2016.

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

[16] IEEE P1363, section A.12.1

[17]

[18]

[19]

[20] NIST, Recommendation for Key Management—Part 1: general, Special Publication 800-57, August 2005.

[21]

[22]

[23]

[24]

[25]

[26]

[27] {{ cite web | author = Daniel J. Bernstein | author2 = Tanja Lange|author2-link=Tanja Lange | last-author-amp = yes | title = SafeCurves: choosing safe curves for elliptic-curve cryptography | url = https://safecurves.cr.yp.to/ | accessdate = 1 December 2013 }}

[28] FIPS PUB 186-3, Digital Signature Standard (DSS).

[29]

[30] Kim Zetter, RSA Tells Its Developer Customers: Stop Using NSA-Linked Algorithm _Wired_, 19 September 2013. "Recommending against the use of SP 800-90A Dual Elliptic Curve Deterministic Random Bit Generation: NIST strongly recommends that, pending the resolution of the security concerns and the re-issuance of SP 800-90A, the Dual_EC_DRBG, as specified in the January 2012 version of SP 800-90A, no longer be used."

[31]

[32] Bruce Schneier (5 September) "I no longer trust the constants. I believe the NSA has manipulated them through their relationships with industry." See Are the NIST Standard Elliptic Curves Back-doored?, _Slashdot_, 11 September 2013.

[33]

[34]

[35]

[36] See, for example,

[37] "Did NSA Put a Secret Backdoor in New Encryption Standard?". _www.schneier.com_.

[38]

[39] http://rump2007.cr.yp.to/15-shumow.pdf

[40]

[41]

[42]

[43]

[44]

[45] {{ cite web | url = https://seclists.org/fulldisclosure/2019/Jun/46 | title = AMD-SEV: Platform DH key recovery via invalid curve attack (CVE-2019-9836) | access-date = 4 July 2019 | first = Cfir | last = Cohen | date = 25 June 2019 | website = Seclist Org | quote = The SEV elliptic-curve (ECC) implementation was found to be vulnerable to an invalid curve attack. At launch-start command, an attacker can send small order ECC points not on the official NIST curves, and force the SEV firmware to multiply a small order point by the firmware’s private DH scalar. | format = html | archive-url = https://web.archive.org/web/20190702011957/https://seclists.org/fulldisclosure/2019/Jun/46 | archive-date = 2 July 2019 | df = dmy-all }}