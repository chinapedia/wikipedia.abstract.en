The ADVANCED ENCRYPTION STANDARD (AES), also known by its original name RIJNDAEL (),[1] is a specification for the encryption of electronic data established by the U.S. National Institute of Standards and Technology (NIST) in 2001.[2]

AES is a subset of the Rijndael block cipher[3] developed by two Belgian cryptographers, Vincent Rijmen and Joan Daemen, who submitted a proposal[4] to NIST during the AES selection process.[5] Rijndael is a family of ciphers with different key and block sizes.

For AES, NIST selected three members of the Rijndael family, each with a block size of 128 bits, but three different key lengths: 128, 192 and 256 bits.

AES has been adopted by the U.S. government and is now used worldwide. It supersedes the Data Encryption Standard (DES),[6] which was published in 1977. The algorithm described by AES is a symmetric-key algorithm, meaning the same key is used for both encrypting and decrypting the data.

In the United States, AES was announced by the NIST as U.S. FIPS PUB 197 (FIPS 197) on November 26, 2001.[7] This announcement followed a five-year standardization process in which fifteen competing designs were presented and evaluated, before the Rijndael cipher was selected as the most suitable (see Advanced Encryption Standard process for more details).

AES became effective as a federal government standard on May 26, 2002, after approval by the Secretary of Commerce. AES is included in the ISO/IEC 18033-3 standard. AES is available in many different encryption packages, and is the first (and only) publicly accessible cipher approved by the National Security Agency (NSA) for top secret information when used in an NSA approved cryptographic module (see Security of AES, below).


Definitive standards

The Advanced Encryption Standard (AES) is defined in each of:

-   FIPS PUB 197: Advanced Encryption Standard (AES)[8]
-   ISO/IEC 18033-3:: Block ciphers[9]


Description of the ciphers

AES is based on a design principle known as a substitution–permutation network, and is efficient in both software and hardware.[10] Unlike its predecessor DES, AES does not use a Feistel network. AES is a variant of Rijndael which has a fixed block size of 128 bits, and a key size of 128, 192, or 256 bits. By contrast, Rijndael _per se_ is specified with block and key sizes that may be any multiple of 32 bits, with a minimum of 128 and a maximum of 256 bits.

AES operates on a 4 × 4 column-major order array of bytes, termed the _state_.[11] Most AES calculations are done in a particular finite field.

For instance, if there are 16 bytes, b₀, b₁, ..., b₁₅, these bytes are represented as this two-dimensional array:

$$\begin{bmatrix}
b_0 & b_4 & b_8 & b_{12} \\
b_1 & b_5 & b_9 & b_{13} \\
b_2 & b_6 & b_{10} & b_{14} \\
b_3 & b_7 & b_{11} & b_{15}
\end{bmatrix}$$

The key size used for an AES cipher specifies the number of transformation rounds that convert the input, called the plaintext, into the final output, called the ciphertext. The number of rounds are as follows:

-   10 rounds for 128-bit keys.
-   12 rounds for 192-bit keys.
-   14 rounds for 256-bit keys.

Each round consists of several processing steps, including one that depends on the encryption key itself. A set of reverse rounds are applied to transform ciphertext back into the original plaintext using the same encryption key.

High-level description of the algorithm

1.  —round keys are derived from the cipher key using Rijndael's key schedule. AES requires a separate 128-bit round key block for each round plus one more.

2.  Initial round key addition:
    1.  —each byte of the state is combined with a block of the round key using bitwise xor.

3.  9, 11 or 13 rounds:
    1.  —a non-linear substitution step where each byte is replaced with another according to a lookup table.

    2.  —a transposition step where the last three rows of the state are shifted cyclically a certain number of steps.

    3.  —a linear mixing operation which operates on the columns of the state, combining the four bytes in each column.

    4.

4.  Final round (making 10, 12 or 14 rounds in total):
    1.  2.  3.

The  step

In the step, each byte a_(i, j) in the _state_ array is replaced with a S(a_(i, j)) using an 8-bit substitution box. This operation provides the non-linearity in the cipher. The S-box used is derived from the multiplicative inverse over , known to have good non-linearity properties. To avoid attacks based on simple algebraic properties, the S-box is constructed by combining the inverse function with an invertible affine transformation. The S-box is also chosen to avoid any fixed points (and so is a derangement), i.e., S(a_(i, j)) ≠ a_(i, j), and also any opposite fixed points, i.e., S(a_(i, j)) ⊕ a_(i, j) ≠ FF₁₆. While performing the decryption, the step (the inverse of ) is used, which requires first taking the inverse of the affine transformation and then finding the multiplicative inverse.

The  step

The step operates on the rows of the state; it cyclically shifts the bytes in each row by a certain offset. For AES, the first row is left unchanged. Each byte of the second row is shifted one to the left. Similarly, the third and fourth rows are shifted by offsets of two and three respectively.[12] In this way, each column of the output state of the step is composed of bytes from each column of the input state. The importance of this step is to avoid the columns being encrypted independently, in which case AES degenerates into four independent block ciphers.

The  step

In the step, the four bytes of each column of the state are combined using an invertible linear transformation. The function takes four bytes as input and outputs four bytes, where each input byte affects all four output bytes. Together with , provides diffusion in the cipher.

During this operation, each column is transformed using a fixed matrix (matrix left-multiplied by column gives new value of column in the state):

$$\begin{bmatrix}
b_{0,j} \\ b_{1,j} \\ b_{2,j} \\ b_{3,j}
\end{bmatrix} = \begin{bmatrix}
2 & 3 & 1 & 1 \\
1 & 2 & 3 & 1 \\
1 & 1 & 2 & 3 \\
3 & 1 & 1 & 2
\end{bmatrix} \begin{bmatrix}
a_{0,j} \\ a_{1,j} \\ a_{2,j} \\ a_{3,j}
\end{bmatrix}
\qquad 0 \le j \le 3$$

Matrix multiplication is composed of multiplication and addition of the entries. Entries are 8-bit bytes treated as coefficients of polynomial of order x⁷. Addition is simply XOR. Multiplication is modulo irreducible polynomial x⁸ + x⁴ + x³ + x + 1. If processed bit by bit, then, after shifting, a conditional XOR with 1B₁₆ should be performed if the shifted value is larger than FF₁₆ (overflow must be corrected by subtraction of generating polynomial). These are special cases of the usual multiplication in GF (2⁸).

In more general sense, each column is treated as a polynomial over GF (2⁸) and is then multiplied modulo 01₁₆ ⋅ z⁴ + 01₁₆ with a fixed polynomial c(z) = 03₁₆ ⋅ z³ + 01₁₆ ⋅ z² + 01₁₆ ⋅ z + 02₁₆. The coefficients are displayed in their hexadecimal equivalent of the binary representation of bit polynomials from GF (2)[x]. The step can also be viewed as a multiplication by the shown particular MDS matrix in the finite field GF (2⁸). This process is described further in the article Rijndael MixColumns.

The  step

operation (⊕).]] In the step, the subkey is combined with the state. For each round, a subkey is derived from the main key using Rijndael's key schedule; each subkey is the same size as the state. The subkey is added by combining each byte of the state with the corresponding byte of the subkey using bitwise XOR.

Optimization of the cipher

On systems with 32-bit or larger words, it is possible to speed up execution of this cipher by combining the and steps with the step by transforming them into a sequence of table lookups. This requires four 256-entry 32-bit tables (together occupying 4096 bytes). A round can then be performed with 16 table lookup operations and 12 32-bit exclusive-or operations, followed by four 32-bit exclusive-or operations in the step.[13] Alternatively, the table lookup operation can be performed with a single 256-entry 32-bit table (occupying 1024 bytes) followed by circular rotation operations.

Using a byte-oriented approach, it is possible to combine the , , and steps into a single round operation.[14]


Security

Until May 2009, the only successful published attacks against the full AES were side-channel attacks on some specific implementations. The National Security Agency (NSA) reviewed all the AES finalists, including Rijndael, and stated that all of them were secure enough for U.S. Government non-classified data. In June 2003, the U.S. Government announced that AES could be used to protect classified information:

  The design and strength of all key lengths of the AES algorithm (i.e., 128, 192 and 256) are sufficient to protect classified information up to the SECRET level. TOP SECRET information will require use of either the 192 or 256 key lengths. The implementation of AES in products intended to protect national security systems and/or information must be reviewed and certified by NSA prior to their acquisition and use.[15]

AES has 10 rounds for 128-bit keys, 12 rounds for 192-bit keys, and 14 rounds for 256-bit keys.

By 2006, the best known attacks were on 7 rounds for 128-bit keys, 8 rounds for 192-bit keys, and 9 rounds for 256-bit keys.[16]

Known attacks

For cryptographers, a cryptographic "break" is anything faster than a brute-force attack – i.e., performing one trial decryption for each possible key in sequence (see Cryptanalysis). A break can thus include results that are infeasible with current technology. Despite being impractical, theoretical breaks can sometimes provide insight into vulnerability patterns. The largest successful publicly known brute-force attack against a widely implemented block-cipher encryption algorithm was against a 64-bit RC5 key by distributed.net in 2006.[17]

The key space increases by a factor of 2 for each additional bit of key length, and if every possible value of the key is equiprobable, this translates into a doubling of the average brute-force key search time. This implies that the effort of a brute-force search increases exponentially with key length. Key length in itself does not imply security against attacks, since there are ciphers with very long keys that have been found to be vulnerable.

AES has a fairly simple algebraic framework.[18] In 2002, a theoretical attack, named the "XSL attack", was announced by Nicolas Courtois and Josef Pieprzyk, purporting to show a weakness in the AES algorithm, partially due to the low complexity of its nonlinear components.[19] Since then, other papers have shown that the attack, as originally presented, is unworkable; see XSL attack on block ciphers.

During the AES selection process, developers of competing algorithms wrote of Rijndael's algorithm "...we are concerned about [its] use ... in security-critical applications."[20] In October 2000, however, at the end of the AES selection process, Bruce Schneier, a developer of the competing algorithm Twofish, wrote that while he thought successful academic attacks on Rijndael would be developed someday, he did not "believe that anyone will ever discover an attack that will allow someone to read Rijndael traffic".[21]

In 2009, a new related-key attack was discovered that exploits the simplicity of AES's key schedule and has a complexity of 2¹¹⁹. In December 2009 it was improved to 2^(99.5).[22] This is a follow-up to an attack discovered earlier in 2009 by Alex Biryukov, Dmitry Khovratovich, and Ivica Nikolić, with a complexity of 2⁹⁶ for one out of every 2³⁵ keys.[23] However, related-key attacks are not of concern in any properly designed cryptographic protocol, as a properly designed protocol (i.e., implementational software) will take care not to allow related keys, essentially by constraining an attacker's means of selecting keys for relatedness.

Another attack was blogged by Bruce Schneier[24] on July 30, 2009, and released as a preprint[25] on August 3, 2009. This new attack, by Alex Biryukov, Orr Dunkelman, Nathan Keller, Dmitry Khovratovich, and Adi Shamir, is against AES-256 that uses only two related keys and 2³⁹ time to recover the complete 256-bit key of a 9-round version, or 2⁴⁵ time for a 10-round version with a stronger type of related subkey attack, or 2⁷⁰ time for an 11-round version. 256-bit AES uses 14 rounds, so these attacks aren't effective against full AES.

The practicality of these attacks with stronger related keys has been criticized,[26] for instance, by the paper on "chosen-key-relations-in-the-middle" attacks on AES-128 authored by Vincent Rijmen in 2010.[27]

In November 2009, the first known-key distinguishing attack against a reduced 8-round version of AES-128 was released as a preprint.[28] This known-key distinguishing attack is an improvement of the rebound, or the start-from-the-middle attack, against AES-like permutations, which view two consecutive rounds of permutation as the application of a so-called Super-Sbox. It works on the 8-round version of AES-128, with a time complexity of 2⁴⁸, and a memory complexity of 2³². 128-bit AES uses 10 rounds, so this attack isn't effective against full AES-128.

The first key-recovery attacks on full AES were due to Andrey Bogdanov, Dmitry Khovratovich, and Christian Rechberger, and were published in 2011.[29] The attack is a biclique attack and is faster than brute force by a factor of about four. It requires 2^(126.2) operations to recover an AES-128 key. For AES-192 and AES-256, 2^(190.2) and 2^(254.6) operations are needed, respectively. This result has been further improved to 2^(126.0) for AES-128, 2^(189.9) for AES-192 and 2^(254.3) for AES-256,[30] which are the current best results in key recovery attack against AES.

This is a very small gain, as a 126-bit key (instead of 128-bits) would still take billions of years to brute force on current and foreseeable hardware. Also, the authors calculate the best attack using their technique on AES with a 128 bit key requires storing 2⁸⁸ bits of data. That works out to about 38 trillion terabytes of data, which is more than all the data stored on all the computers on the planet in 2016. As such, there are no practical implications on AES security.[31] The space complexity has later been improved to 2⁵⁶ bits,[32] which is 9007 terabytes.

According to the Snowden documents, the NSA is doing research on whether a cryptographic attack based on tau statistic may help to break AES.[33]

At present, there is no known practical attack that would allow someone without knowledge of the key to read data encrypted by AES when correctly implemented.

Side-channel attacks

Side-channel attacks do not attack the cipher as a black box, and thus are not related to cipher security as defined in the classical context, but are important in practice. They attack implementations of the cipher on hardware or software systems that inadvertently leak data. There are several such known attacks on various implementations of AES.

In April 2005, D.J. Bernstein announced a cache-timing attack that he used to break a custom server that used OpenSSL's AES encryption.[34] The attack required over 200 million chosen plaintexts.[35] The custom server was designed to give out as much timing information as possible (the server reports back the number of machine cycles taken by the encryption operation); however, as Bernstein pointed out, "reducing the precision of the server's timestamps, or eliminating them from the server's responses, does not stop the attack: the client simply uses round-trip timings based on its local clock, and compensates for the increased noise by averaging over a larger number of samples."[36]

In October 2005, Dag Arne Osvik, Adi Shamir and Eran Tromer presented a paper demonstrating several cache-timing attacks against the implementations in AES found in OpenSSL and Linux's dm-crypt partition encryption function.[37] One attack was able to obtain an entire AES key after only 800 operations triggering encryptions, in a total of 65 milliseconds. This attack requires the attacker to be able to run programs on the same system or platform that is performing AES.

In December 2009 an attack on some hardware implementations was published that used differential fault analysis and allows recovery of a key with a complexity of 2³².[38]

In November 2010 Endre Bangerter, David Gullasch and Stephan Krenn published a paper which described a practical approach to a "near real time" recovery of secret keys from AES-128 without the need for either cipher text or plaintext. The approach also works on AES-128 implementations that use compression tables, such as OpenSSL.[39] Like some earlier attacks this one requires the ability to run unprivileged code on the system performing the AES encryption, which may be achieved by malware infection far more easily than commandeering the root account.[40]

In March 2016, Ashokkumar C., Ravi Prakash Giri and Bernard Menezes presented a very efficient side-channel attack on AES implementations that can recover the complete 128-bit AES key in just 6–7 blocks of plaintext/ciphertext which is a substantial improvement over previous works that require between 100 and a million encryptions.[41] The proposed attack requires standard user privilege as previous attacks and key-retrieval algorithms run under a minute.

Many modern CPUs have built-in hardware instructions for AES, which would protect against timing-related side-channel attacks.[42][43]


NIST/CSEC validation

The Cryptographic Module Validation Program (CMVP) is operated jointly by the United States Government's National Institute of Standards and Technology (NIST) Computer Security Division and the Communications Security Establishment (CSE) of the Government of Canada. The use of cryptographic modules validated to NIST FIPS 140-2 is required by the United States Government for encryption of all data that has a classification of Sensitive but Unclassified (SBU) or above. From NSTISSP #11, National Policy Governing the Acquisition of Information Assurance: "Encryption products for protecting classified information will be certified by NSA, and encryption products intended for protecting sensitive information will be certified in accordance with NIST FIPS 140-2."[44]

The Government of Canada also recommends the use of FIPS 140 validated cryptographic modules in unclassified applications of its departments.

Although NIST publication 197 ("FIPS 197") is the unique document that covers the AES algorithm, vendors typically approach the CMVP under FIPS 140 and ask to have several algorithms (such as Triple DES or SHA1) validated at the same time. Therefore, it is rare to find cryptographic modules that are uniquely FIPS 197 validated and NIST itself does not generally take the time to list FIPS 197 validated modules separately on its public web site. Instead, FIPS 197 validation is typically just listed as an "FIPS approved: AES" notation (with a specific FIPS 197 certificate number) in the current list of FIPS 140 validated cryptographic modules.

The Cryptographic Algorithm Validation Program (CAVP)[45] allows for independent validation of the correct implementation of the AES algorithm at a reasonable cost. Successful validation results in being listed on the NIST validations page.[46] This testing is a pre-requisite for the FIPS 140-2 module validation described below. However, successful CAVP validation in no way implies that the cryptographic module implementing the algorithm is secure. A cryptographic module lacking FIPS 140-2 validation or specific approval by the NSA is not deemed secure by the US Government and cannot be used to protect government data.[47]

FIPS 140-2 validation is challenging to achieve both technically and fiscally.[48] There is a standardized battery of tests as well as an element of source code review that must be passed over a period of a few weeks. The cost to perform these tests through an approved laboratory can be significant (e.g., well over $30,000 US)[49] and does not include the time it takes to write, test, document and prepare a module for validation. After validation, modules must be re-submitted and re-evaluated if they are changed in any way. This can vary from simple paperwork updates if the security functionality did not change to a more substantial set of re-testing if the security functionality was impacted by the change.


Test vectors

Test vectors are a set of known ciphers for a given input and key. NIST distributes the reference of AES test vectors as AES Known Answer Test (KAT) Vectors.[50]


Performance

High speed and low RAM requirements were criteria of the AES selection process. As the chosen algorithm, AES performed well on a wide variety of hardware, from 8-bit smart cards to high-performance computers.

On a Pentium Pro, AES encryption requires 18 clock cycles per byte,[51] equivalent to a throughput of about 11 Mbit/s for a 200 MHz processor. On a 1.7 GHz Pentium M throughput is about 60 Mbit/s.

On Intel Core i3/i5/i7 and AMD Ryzen CPUs supporting AES-NI instruction set extensions, throughput can be multiple GB/s (even over 10 GB/s).[52]


Implementations


See also

-   Disk encryption
-   Network encryption
-   Whirlpool – hash function created by Vincent Rijmen and Paulo S. L. M. Barreto


Notes


References

-   -   -   alternate link (companion web site contains online lectures on AES)


External links

-   -   -   AES algorithm archive information – (old, unmaintained)
-   -   Animation of Rijndael – AES deeply explained and animated using Flash (by Enrique Zabala / University ORT / Montevideo / Uruguay). This animation (in English, Spanish, and German) is also part of CrypTool 1 (menu Indiv. Procedures -> Visualization of Algorithms -> AES).

-   HTML5 Animation of Rijndael – Same Animation as above made in HTML5.

Advanced_Encryption_Standard

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

[11] Large-block variants of Rijndael use an array with additional columns, but always four rows.

[12] Rijndael variants with a larger block size have slightly different offsets. For blocks of sizes 128 bits and 192 bits, the shifting pattern is the same. Row n is shifted left circular by n − 1 bytes. For a 256-bit block, the first row is unchanged and the shifting for the second, third and fourth row is 1 byte, 3 bytes and 4 bytes respectively—this change only applies for the Rijndael cipher when used with a 256-bit block, as AES does not use 256-bit blocks.

[13] "Efficient software implementation of AES on 32-bit platforms". Lecture Notes in Computer Science: 2523. 2003

[14]

[15]

[16] John Kelsey, Stefan Lucks, Bruce Schneier, Mike Stay, David Wagner, and Doug Whiting, _Improved Cryptanalysis of Rijndael_, Fast Software Encryption, 2000 pp213–230

[17]

[18]

[19]

[20]

[21] Bruce Schneier, AES Announced , October 15, 2000

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

[40]  Hacker News |publisher=News.ycombinator.com |accessdate=2012-12-23 |deadurl=no |archiveurl=https://web.archive.org/web/20111003193004/http://news.ycombinator.com/item?id=1937902 |archivedate=2011-10-03 |df= }}

[41]

[42]

[43]  Securing the Enterprise with Intel AES-NI

[44]

[45]

[46]

[47]

[48]

[49]

[50] The AES Known Answer Test (KAT) Vectors are available in Zip format within the NIST site here

[51]

[52]