In cryptography, SHA-1 (SECURE HASH ALGORITHM 1) is a cryptographic hash function which takes an input and produces a 160-bit (20-byte) hash value known as a message digest – typically rendered as a hexadecimal number, 40 digits long. It was designed by the United States National Security Agency, and is a U.S. Federal Information Processing Standard.[1]

Since 2005 SHA-1 has not been considered secure against well-funded opponents,[2] and since 2010 many organizations have recommended its replacement by SHA-2 or SHA-3.[3][4][5]

All major web browser vendors ceased acceptance of SHA-1 SSL certificates in 2017.[6][7][8] In February 2017, CWI Amsterdam and Google announced they had performed a collision attack against SHA-1, publishing two dissimilar PDF files which produced the same SHA-1 hash.[9][10][11]


Development

One iteration within the SHA-1 compression function:
A, B, C, D and E are 32-bit words of the state;
_F_ is a nonlinear function that varies;
denotes a left bit rotation by _n_ places;
_n_ varies for each operation;
W_(t) is the expanded message word of round t;
K_(t) is the round constant of round t;
Addition denotes addition modulo 2³².

SHA-1 produces a message digest based on principles similar to those used by Ronald L. Rivest of MIT in the design of the MD2, MD4 and MD5 message digest algorithms, but generates a larger hash value (160 bits vs. 128 bits).

SHA-1 was developed as part of the U.S. Government's Capstone project.[12] The original specification of the algorithm was published in 1993 under the title _Secure Hash Standard_, FIPS PUB 180, by U.S. government standards agency NIST (National Institute of Standards and Technology).[13][14] This version is now often named _SHA-0_. It was withdrawn by the NSA shortly after publication and was superseded by the revised version, published in 1995 in FIPS PUB 180-1 and commonly designated _SHA-1_. SHA-1 differs from SHA-0 only by a single bitwise rotation in the message schedule of its compression function. According to the NSA, this was done to correct a flaw in the original algorithm which reduced its cryptographic security, but they did not provide any further explanation. Publicly available techniques did indeed demonstrate a compromise of SHA-0, in 2004, before SHA-1 in 2017. _See_ #Attacks


Applications

Cryptography

SHA-1 forms part of several widely used security applications and protocols, including TLS and SSL, PGP, SSH, S/MIME, and IPsec. Those applications can also use MD5; both MD5 and SHA-1 are descended from MD4.

SHA-1 and SHA-2 are the hash algorithms required by law for use in certain U.S. government applications, including use within other cryptographic algorithms and protocols, for the protection of sensitive unclassified information. FIPS PUB 180-1 also encouraged adoption and use of SHA-1 by private and commercial organizations. SHA-1 is being retired from most government uses; the U.S. National Institute of Standards and Technology said, "Federal agencies _SHOULD_ stop using SHA-1 for...applications that require collision resistance as soon as practical, and must use the SHA-2 family of hash functions for these applications after 2010" (emphasis in original),[15] though that was later relaxed to allow SHA-1 to be used for verifying old digital signatures and time stamps.[16]

A prime motivation for the publication of the Secure Hash Algorithm was the Digital Signature Standard, in which it is incorporated.

The SHA hash functions have been used for the basis of the SHACAL block ciphers.

Data integrity

Revision control systems such as Git, Mercurial, and Monotone use SHA-1 not for security but to identify revisions and to ensure that the data has not changed due to accidental corruption. Linus Torvalds said about Git:

    If you have disk corruption, if you have DRAM corruption, if you have any kind of problems at all, Git will notice them. It's not a question of _if_, it's a guarantee. You can have people who try to be malicious. They won't succeed. ... Nobody has been able to break SHA-1, but the point is the SHA-1, as far as Git is concerned, isn't even a security feature. It's purely a consistency check. The security parts are elsewhere, so a lot of people assume that since Git uses SHA-1 and SHA-1 is used for cryptographically secure stuff, they think that, Okay, it's a huge security feature. It has nothing at all to do with security, it's just the best hash you can get. ...
    I guarantee you, if you put your data in Git, you can trust the fact that five years later, after it was converted from your hard disk to DVD to whatever new technology and you copied it along, five years later you can verify that the data you get back out is the exact same data you put in. ...
    One of the reasons I care is for the kernel, we had a break in on one of the BitKeeper sites where people tried to corrupt the kernel source code repositories.[17] However Git does not require the second preimage resistance of SHA-1 as a security feature, since it will always prefer to keep the earliest version of an object in case of collision, preventing an attacker from surreptitiously overwriting files.[18]


Cryptanalysis and validation

For a hash function for which _L_ is the number of bits in the message digest, finding a message that corresponds to a given message digest can always be done using a brute force search in approximately 2^(_L_) evaluations. This is called a preimage attack and may or may not be practical depending on _L_ and the particular computing environment. However, a _collision_, consisting of finding two different messages that produce the same message digest, requires on average only about evaluations using a birthday attack. Thus the strength of a hash function is usually compared to a symmetric cipher of half the message digest length. SHA-1, which has a 160-bit message digest, was originally thought to have 80-bit strength.

In 2005, cryptographers Xiaoyun Wang, Yiqun Lisa Yin, and Hongbo Yu produced collision pairs for SHA-0 and have found algorithms that should produce SHA-1 collisions in far fewer than the originally expected 2⁸⁰ evaluations.[19]

Some of the applications that use cryptographic hashes, like password storage, are only minimally affected by a collision attack. Constructing a password that works for a given account requires a preimage attack, as well as access to the hash of the original password, which may or may not be trivial. Reversing password encryption (e.g. to obtain a password to try against a user's account elsewhere) is not made possible by the attacks. (However, even a secure password hash can't prevent brute-force attacks on weak passwords.)

In the case of document signing, an attacker could not simply fake a signature from an existing document: The attacker would have to produce a pair of documents, one innocuous and one damaging, and get the private key holder to sign the innocuous document. There are practical circumstances in which this is possible; until the end of 2008, it was possible to create forged SSL certificates using an MD5 collision.[20]

Due to the block and iterative structure of the algorithms and the absence of additional final steps, all SHA functions (except SHA-3[21]) are vulnerable to length-extension and partial-message collision attacks.[22] These attacks allow an attacker to forge a message signed only by a keyed hash— _key_)}} or _message_)}}—by extending the message and recalculating the hash without knowing the key. A simple improvement to prevent these attacks is to hash twice: _message_))}} (the length of 0^(_b_), zero block, is equal to the block size of the hash function).

Attacks

In early 2005, Rijmen and Oswald published an attack on a reduced version of SHA-1—53 out of 80 rounds—which finds collisions with a computational effort of fewer than 2⁸⁰ operations.[23]

In February 2005, an attack by Xiaoyun Wang, Yiqun Lisa Yin, and Hongbo Yu was announced.[24] The attacks can find collisions in the full version of SHA-1, requiring fewer than 2⁶⁹ operations. (A brute-force search would require 2⁸⁰ operations.)

The authors write: "In particular, our analysis is built upon the original differential attack on SHA-0, the near collision attack on SHA-0, the multiblock collision techniques, as well as the message modification techniques used in the collision search attack on MD5. Breaking SHA-1 would not be possible without these powerful analytical techniques."[25] The authors have presented a collision for 58-round SHA-1, found with 2³³ hash operations. The paper with the full attack description was published in August 2005 at the CRYPTO conference.

In an interview, Yin states that, "Roughly, we exploit the following two weaknesses: One is that the file preprocessing step is not complicated enough; another is that certain math operations in the first 20 rounds have unexpected security problems."[26]

On 17 August 2005, an improvement on the SHA-1 attack was announced on behalf of Xiaoyun Wang, Andrew Yao and Frances Yao at the CRYPTO 2005 Rump Session, lowering the complexity required for finding a collision in SHA-1 to 2⁶³.[27] On 18 December 2007 the details of this result were explained and verified by Martin Cochran.[28]

Christophe De Cannière and Christian Rechberger further improved the attack on SHA-1 in "Finding SHA-1 Characteristics: General Results and Applications,"[29] receiving the Best Paper Award at ASIACRYPT 2006. A two-block collision for 64-round SHA-1 was presented, found using unoptimized methods with 2³⁵ compression function evaluations. Since this attack requires the equivalent of about 2³⁵ evaluations, it is considered to be a significant theoretical break.[30] Their attack was extended further to 73 rounds (of 80) in 2010 by Grechnikov.[31] In order to find an actual collision in the full 80 rounds of the hash function, however, tremendous amounts of computer time are required. To that end, a collision search for SHA-1 using the distributed computing platform BOINC began August 8, 2007, organized by the Graz University of Technology. The effort was abandoned May 12, 2009 due to lack of progress.[32]

At the Rump Session of CRYPTO 2006, Christian Rechberger and Christophe De Cannière claimed to have discovered a collision attack on SHA-1 that would allow an attacker to select at least parts of the message.[33][34]

In 2008, an attack methodology by Stéphane Manuel reported hash collisions with an estimated theoretical complexity of 2⁵¹ to 2⁵⁷ operations.[35] However he later retracted that claim after finding that local collision paths were not actually independent, and finally quoting for the most efficient a collision vector that was already known before this work.[36]

Cameron McDonald, Philip Hawkes and Josef Pieprzyk presented a hash collision attack with claimed complexity 2⁵² at the Rump Session of Eurocrypt 2009.[37] However, the accompanying paper, "Differential Path for SHA-1 with complexity _O_(2⁵²)" has been withdrawn due to the authors' discovery that their estimate was incorrect.[38]

One attack against SHA-1 was Marc Stevens[39] with an estimated cost of $2.77M to break a single hash value by renting CPU power from cloud servers.[40] Stevens developed this attack in a project called HashClash,[41] implementing a differential path attack. On 8 November 2010, he claimed he had a fully working near-collision attack against full SHA-1 working with an estimated complexity equivalent to 2^(57.5) SHA-1 compressions. He estimated this attack could be extended to a full collision with a complexity around 2⁶¹.

The SHAppening

On , Marc Stevens, Pierre Karpman, and Thomas Peyrin published a freestart collision attack on SHA-1's compression function that requires only 2⁵⁷ SHA-1 evaluations. This does not directly translate into a collision on the full SHA-1 hash function (where an attacker is _not_ able to freely choose the initial internal state), but undermines the security claims for SHA-1. In particular, it was the first time that an attack on full SHA-1 had been _demonstrated_; all earlier attacks were too expensive for their authors to carry them out. The authors named this significant breakthrough in the cryptanalysis of SHA-1 _The SHAppening_.[42]

The method was based on their earlier work, as well as the auxiliary paths (or boomerangs) speed-up technique from Joux and Peyrin, and using high performance/cost efficient GPU cards from NVIDIA. The collision was found on a 16-node cluster with a total of 64 graphics cards. The authors estimated that a similar collision could be found by buying US$2,000 of GPU time on EC2.[43]

The authors estimated that the cost of renting enough of EC2 CPU/GPU time to generate a full collision for SHA-1 at the time of publication was between US$75K and 120K, and noted that was well within the budget of criminal organizations, not to mention national intelligence agencies. As such, the authors recommended that SHA-1 be deprecated as quickly as possible.[44]

SHAttered – first public collision

On , the CWI (Centrum Wiskunde & Informatica) and Google announced the _SHAttered_ attack, in which they generated two different PDF files with the same SHA-1 hash in roughly 2^(63.1) SHA-1 evaluations. This attack is about 100,000 times faster than brute forcing a SHA-1 collision with a birthday attack, which was estimated to take 2⁸⁰ SHA-1 evaluations. The attack required "the equivalent processing power of 6,500 years of single-CPU computations and 110 years of single-GPU computations".[45][46]

Birthday-Near-Collision Attack - first practical chosen-prefix attack

On a paper by Gaëtan Leurent and Thomas Peyrin presented at Eurocrypt 2019 described an enhancement to the previously best chosen-prefix attack in Merkle-Damgärd-like digest functions based on Davies-Meyer block ciphers. With these improvements, this method is capable of finding chosen-prefix collisions in approximately 2⁶⁸ SHA-1 evaluations. This is approximately 1 billion times faster (and now usable for many targetted attacks, thanks to the possibility of choosing a prefix, for example malicious code or faked identities in signed certificates) than the previous attack's 2^(77.1) evaluations (but without chosen prefix, which was impractical for most targetted attacks because the found collisions were almost random)[47] and is fast enough to be practical for resourceful attackers, requiring approximately $100,000 of cloud processing. This method is also capable of finding chosen-prefix collisions in the MD5 function, but at a complexity of 2^(46.3) does not surpass the prior best available method at a theoretical level (2³⁹), though potentially at a practical level (≤2⁴⁹).[48][49]

SHA-0

At CRYPTO 98, two French researchers, Florent Chabaud and Antoine Joux, presented an attack on SHA-0: collisions can be found with complexity 2⁶¹, fewer than the 2⁸⁰ for an ideal hash function of the same size.[50]

In 2004, Biham and Chen found near-collisions for SHA-0—two messages that hash to nearly the same value; in this case, 142 out of the 160 bits are equal. They also found full collisions of SHA-0 reduced to 62 out of its 80 rounds.[51]

Subsequently, on 12 August 2004, a collision for the full SHA-0 algorithm was announced by Joux, Carribault, Lemuet, and Jalby. This was done by using a generalization of the Chabaud and Joux attack. Finding the collision had complexity 2⁵¹ and took about 80,000 processor-hours on a supercomputer with 256 Itanium 2 processors (equivalent to 13 days of full-time use of the computer).

On 17 August 2004, at the Rump Session of CRYPTO 2004, preliminary results were announced by Wang, Feng, Lai, and Yu, about an attack on MD5, SHA-0 and other hash functions. The complexity of their attack on SHA-0 is 2⁴⁰, significantly better than the attack by Joux _et al._[52][53]

In February 2005, an attack by Xiaoyun Wang, Yiqun Lisa Yin, and Hongbo Yu was announced which could find collisions in SHA-0 in 2³⁹ operations.[54][55]

Another attack in 2008 applying the boomerang attack brought the complexity of finding collisions down to 2^(33.6), which is estimated to take 1 hour on an average PC.[56]

In light of the results for SHA-0, some experts suggested that plans for the use of SHA-1 in new cryptosystems should be reconsidered. After the CRYPTO 2004 results were published, NIST announced that they planned to phase out the use of SHA-1 by 2010 in favor of the SHA-2 variants.[57]

Official validation

Implementations of all FIPS-approved security functions can be officially validated through the CMVP program, jointly run by the National Institute of Standards and Technology (NIST) and the Communications Security Establishment (CSE). For informal verification, a package to generate a high number of test vectors is made available for download on the NIST site; the resulting verification, however, does not replace the formal CMVP validation, which is required by law for certain applications.

, there are over 2000 validated implementations of SHA-1, with 14 of them capable of handling messages with a length in bits not a multiple of eight (see SHS Validation List).


Examples and pseudocode

Example hashes

These are examples of SHA-1 message digests in hexadecimal and in Base64 binary to ASCII text encoding.

SHA1("The quick brown fox jumps over the lazy og")
gives hexadecimal: 2fd4e1c67a2d28fced849ee1bb76e7391b93eb12
gives Base64 binary to ASCII text encoding: L9ThxnotKPzthJ7hu3bnORuT6xI=

Even a small change in the message will, with overwhelming probability, result in many bits changing due to the avalanche effect. For example, changing dog to cog produces a hash with different values for 81 of the 160 bits:

SHA1("The quick brown fox jumps over the lazy og")
gives hexadecimal: de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3
gives Base64 binary to ASCII text encoding: 3p8sf9JeGzr60+haC9F9mxANtLM=

The hash of the zero-length string is:

SHA1("")
gives hexadecimal: da39a3ee5e6b4b0d3255bfef95601890afd80709
gives Base64 binary to ASCII text encoding: 2jmj7l5rSw0yVb/vlWAYkK/YBwk=

SHA-1 pseudocode

Pseudocode for the SHA-1 algorithm follows:

_Note 1: All variables are unsigned 32-bit quantities and wrap modulo 2³² when calculating, except for_
        _ml, the message length, which is a 64-bit quantity, and_
        _hh, the message digest, which is a 160-bit quantity._
_Note 2: All constants in this pseudo code are in big endian._
        _Within each word, the most significant byte is stored in the leftmost byte position_
_Initialize variables:_
h0 = 0x67452301
h1 = 0xEFCDAB89
h2 = 0x98BADCFE
h3 = 0x10325476
h4 = 0xC3D2E1F0
ml = message length in bits (always a multiple of the number of bits in a character).
_Pre-processing:_
append the bit '1' to the message e.g. by adding 0x80 if message length is a multiple of 8 bits.
append 0 ≤ k < 512 bits '0', such that the resulting message length in _bits_
   is congruent to −64 ≡ 448 (mod 512)
append ml, the original message length, as a 64-bit big-endian integer. 
   Thus, the total length is a multiple of 512 bits.
_Process the message in successive 512-bit chunks:_
break message into 512-bit chunks
for each chunk
    break chunk into sixteen 32-bit big-endian words w[i], 0 ≤ i ≤ 15
    _Extend the sixteen 32-bit words into eighty 32-bit words:_
    for i from 16 to 79
        w[i] = (w[i-3] xor w[i-8] xor w[i-14] xor w[i-16]) leftrotate 1
    _Initialize hash value for this chunk:_
    a = h0
    b = h1
    c = h2
    d = h3
    e = h4
    _Main loop:_[58][59]
    for i from 0 to 79
        if 0 ≤ i ≤ 19 then
            f = (b and c) or ((not b) and d)
            k = 0x5A827999
        else if 20 ≤ i ≤ 39
            f = b xor c xor d
            k = 0x6ED9EBA1
        else if 40 ≤ i ≤ 59
            f = (b and c) or (b and d) or (c and d) 
            k = 0x8F1BBCDC
        else if 60 ≤ i ≤ 79
            f = b xor c xor d
            k = 0xCA62C1D6
        temp = (a leftrotate 5) + f + e + k + w[i]
        e = d
        d = c
        c = b leftrotate 30
        b = a
        a = temp
    _Add this chunk's hash to result so far:_
    h0 = h0 + a
    h1 = h1 + b 
    h2 = h2 + c
    h3 = h3 + d
    h4 = h4 + e
_Produce the final hash value (big-endian) as a 160-bit number:_
hh = (h0 leftshift 128) or (h1 leftshift 96) or (h2 leftshift 64) or (h3 leftshift 32) or h4

The number hh is the message digest, which can be written in hexadecimal (base 16), but is often written using Base64 binary to ASCII text encoding.

The chosen constant values used in the algorithm were assumed to be nothing up my sleeve numbers:

-   The four round constants k are 2³⁰ times the square roots of 2, 3, 5 and 10. However they were incorrectly rounded to the nearest integer instead of being rounded to the nearest odd integer, with equilibrated proportions of zero and one bits. As well, choosing the square root of 10 (which is not a prime) made it a common factor for the two other chosen square roots of primes 2 and 5, with possibly usable arithmetic properties across successive rounds, reducing the strength of the algorithm against finding collisions on some bits.
-   The first four starting values for h0 through h3 are the same with the MD5 algorithm, and the fifth and sixth (for h4 and h5) are similar. However they were not properly verified for being resistant against inversion of the few first rounds to infer possible collisions on some bits, usable by multiblock differential attacks.

Instead of the formulation from the original FIPS PUB 180-1 shown, the following equivalent expressions may be used to compute f in the main loop above:

''Bitwise choice between _c_ and _d_, controlled by _b_.''
(0  ≤ i ≤ 19): f = d xor (b and (c xor d))                _(alternative 1)_
(0  ≤ i ≤ 19): f = (b and c) xor ((not b) and d)          _(alternative 2)_
(0  ≤ i ≤ 19): f = (b and c) + ((not b) and d)            _(alternative 3)_
(0  ≤ i ≤ 19): f = vec_sel(d, c, b)                       _(alternative 4)_
 
_Bitwise majority function._
(40 ≤ i ≤ 59): f = (b and c) or (d and (b or c))          _(alternative 1)_
(40 ≤ i ≤ 59): f = (b and c) or (d and (b xor c))         _(alternative 2)_
(40 ≤ i ≤ 59): f = (b and c) xor (d and (b xor c))        _(alternative 3)_
(40 ≤ i ≤ 59): f = (b and c) + (d and (b xor c))          _(alternative 4)_
(40 ≤ i ≤ 59): f = (b and c) xor (b and d) xor (c and d)  _(alternative 5)_
(40 ≤ i ≤ 59): f = vec_sel(c, b, c xor d)                 _(alternative 6)_

It was also shown[60] that for the rounds 32–79 the computation of:

w[i] = (w[i-3] xor w[i-8] xor w[i-14] xor w[i-16]) leftrotate 1

can be replaced with:

w[i] = (w[i-6] xor w[i-16] xor w[i-28] xor w[i-32]) leftrotate 2

This transformation keeps all operands 64-bit aligned and, by removing the dependency of w[i] on w[i-3], allows efficient SIMD implementation with a vector length of 4 like x86 SSE instructions.


Comparison of SHA functions

In the table below, _internal state_ means the "internal hash sum" after each compression of a data block.


Implementations

Below is a list of cryptography libraries that support SHA-1:

-   Botan
-   Bouncy Castle
-   cryptlib
-   Crypto++
-   Libgcrypt
-   Nettle
-   OpenSSL
-   wolfSSL


See also

-   Comparison of cryptographic hash functions
-   Hash function security summary
-   International Association for Cryptologic Research
-   Secure Hash Standard


Notes


References

-   Florent Chabaud, Antoine Joux: Differential Collisions in SHA-0. CRYPTO 1998. pp56–71
-   Eli Biham, Rafi Chen, Near-Collisions of SHA-0, Cryptology ePrint Archive, Report 2004/146, 2004 (appeared on CRYPTO 2004), IACR.org
-   Xiaoyun Wang, Hongbo Yu and Yiqun Lisa Yin, Efficient Collision Search Attacks on SHA-0, CRYPTO 2005, CMU.edu
-   Xiaoyun Wang, Yiqun Lisa Yin and Hongbo Yu, Finding Collisions in the Full SHA-1, Crypto 2005 MIT.edu
-   Henri Gilbert, Helena Handschuh: Security Analysis of SHA-256 and Sisters. Selected Areas in Cryptography 2003: pp175–193
-   unixwiz.net
-   -   A. Cilardo, L. Esposito, A. Veniero, A. Mazzeo, V. Beltran, E. Ayugadé, A CellBE-based HPC application for the analysis of vulnerabilities in cryptographic hash functions, High Performance Computing and Communication international conference, August 2010


External links

-   CSRC Cryptographic Toolkit – Official NIST site for the Secure Hash Standard
-   FIPS 180-4: Secure Hash Standard (SHS)
-   RFC 3174 (with sample C implementation)
-   Interview with Yiqun Lisa Yin concerning the attack on SHA-1
-   Explanation of the successful attacks on SHA-1 (3 pages, 2006)
-   Cryptography Research – Hash Collision Q&A
-   Hash Project Web Site: software- and hardware-based cryptanalysis of SHA-1
-   -   by Christof Paar

es:Secure Hash Algorithm#SHA-1

Category:Cryptographic hash functions Category:Broken hash functions Category:Articles with example pseudocode Category:Checksum algorithms Category:National Security Agency cryptography

[1] http://csrc.nist.gov/publications/fips/fips180-4/fips-180-4.pdf

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

[12] RSA FAQ on Capstone

[13]

[14]

[15] National Institute on Standards and Technology Computer Security Resource Center, NIST's March 2006 Policy on Hash Functions , accessed September 28, 2012.

[16] National Institute on Standards and Technology Computer Security Resource Center, NIST's Policy on Hash Functions , accessed September 28, 2012.

[17]

[18]

[19]

[20]

[21]

[22] Niels Ferguson, Bruce Schneier, and Tadayoshi Kohno, Cryptography Engineering, John Wiley & Sons, 2010.

[23]

[24]

[25] MIT.edu , Massachusetts Institute of Technology

[26]

[27]

[28] Notes on the Wang et al. 2⁶³ SHA-1 Differential Path

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]  _the most efficient disturbance vector is Codeword2 first reported by Jutla and Patthak_

[37] SHA-1 collisions now 2^52

[38]

[39] Cryptanalysis of MD5 & SHA-1

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]  Sdu.edu.cn , Shandong University

[56]

[57]

[58]

[59]

[60]