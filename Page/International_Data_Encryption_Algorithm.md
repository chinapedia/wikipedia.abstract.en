In cryptography, the INTERNATIONAL DATA ENCRYPTION ALGORITHM (IDEA), originally called IMPROVED PROPOSED ENCRYPTION STANDARD (IPES), is a symmetric-key block cipher designed by James Massey of ETH Zurich and Xuejia Lai and was first described in 1991. The algorithm was intended as a replacement for the Data Encryption Standard (DES). IDEA is a minor revision of an earlier cipher Proposed Encryption Standard (PES).

The cipher was designed under a research contract with the Hasler Foundation, which became part of Ascom-Tech AG. The cipher was patented in a number of countries but was freely available for non-commercial use. The name "IDEA" is also a trademark. The last patents expired in 2012, and IDEA is now patent-free and thus completely free for all uses.[1][2]

IDEA was used in Pretty Good Privacy (PGP) v2.0 and was incorporated after the original cipher used in v1.0, BassOmatic, was found to be insecure.[3] IDEA is an optional algorithm in the OpenPGP standard.


Operation

IDEA operates on 64-bit blocks using a 128-bit key and consists of a series of 8 identical transformations (a _round_, see the illustration) and an output transformation (the _half-round_). The processes for encryption and decryption are similar. IDEA derives much of its security by interleaving operations from different groups — modular addition and multiplication, and bitwise eXclusive OR (XOR) — which are algebraically "incompatible" in some sense. In more detail, these operators, which all deal with 16-bit quantities, are:

-   Bitwise XOR (exclusive OR) (denoted with a blue circled plus ).
-   Addition modulo 2¹⁶ (denoted with a green boxed plus ).
-   Multiplication modulo 2¹⁶ + 1, where the all-zero word (0x0000) in inputs is interpreted as 2¹⁶, and 2¹⁶ in output is interpreted as the all-zero word (0x0000) (denoted by a red circled dot ).

After the 8 rounds comes a final “half-round”, the output transformation illustrated below (the swap of the middle two values cancels out the swap at the end of the last round, so that there is no net swap):



Structure

The overall structure of IDEA follows the Lai–Massey scheme. XOR is used for both subtraction and addition. IDEA uses a key-dependent half-round function. To work with 16-bit words (meaning 4 inputs instead of 2 for the 64-bit block size), IDEA uses the Lai–Massey scheme twice in parallel, with the two parallel round functions being interwoven with each other. To ensure sufficient diffusion, two of the sub-blocks are swapped after each round.

Key schedule

Each round uses 6 16-bit sub-keys, while the half-round uses 4, a total of 52 for 8.5 rounds. The first 8 sub-keys are extracted directly from the key, with K1 from the first round being the lower 16 bits; further groups of 8 keys are created by rotating the main key left 25 bits between each group of 8. This means that it is rotated less than once per round, on average, for a total of 6 rotations.

Decryption

Decryption works like encryption, but the order of the round keys is inverted, and the subkeys for the odd rounds are inversed. For instance, the values of subkeys K1–K4 are replaced by the inverse of K49–K52 for the respective group operation, K5 and K6 of each group should be replaced by K47 and K48 for decryption.


Security

The designers analysed IDEA to measure its strength against differential cryptanalysis and concluded that it is immune under certain assumptions. No successful linear or algebraic weaknesses have been reported. , the best attack applied to all keys could break IDEA reduced to 6 rounds (the full IDEA cipher uses 8.5 rounds).[4] Note that a "break" is any attack that requires less than 2¹²⁸ operations; the 6-round attack requires 2⁶⁴ known plaintexts and 2^(126.8) operations.

Bruce Schneier thought highly of IDEA in 1996, writing: "In my opinion, it is the best and most secure block algorithm available to the public at this time." (_Applied Cryptography_, 2nd ed.) However, by 1999 he was no longer recommending IDEA due to the availability of faster algorithms, some progress in its cryptanalysis, and the issue of patents.[5]

In 2011 full 8.5-round IDEA was broken using a meet-in-the-middle attack.[6] Independently in 2012, full 8.5-round IDEA was broken using a narrow-bicliques attack, with a reduction of cryptographic strength of about 2 bits, similar to the effect of the previous bicliques attack on AES; however, this attack does not threaten the security of IDEA in practice.[7]

Weak keys

The very simple key schedule makes IDEA subject to a class of weak keys; some keys containing a large number of 0 bits produce weak encryption.[8] These are of little concern in practice, being sufficiently rare that they are unnecessary to avoid explicitly when generating keys randomly. A simple fix was proposed: XORing each subkey with a 16-bit constant, such as 0x0DAE.[9][10]

Larger classes of weak keys were found in 2002.[11]

This is still of negligible probability to be a concern to a randomly chosen key, and some of the problems are fixed by the constant XOR proposed earlier, but the paper is not certain if all of them are. A more comprehensive redesign of the IDEA key schedule may be desirable.[12]


Availability

A patent application for IDEA was first filed in Switzerland (CH A 1690/90) on May 18, 1990, then an international patent application was filed under the Patent Cooperation Treaty on May 16, 1991. Patents were eventually granted in Austria, France, Germany, Italy, the Netherlands, Spain, Sweden, Switzerland, the United Kingdom, (, filed May 16, 1991, issued June 22, 1994 and expired May 16, 2011), the United States (, issued May 25, 1993 and expired January 7, 2012) and Japan (JP 3225440) (expired May 16, 2011).[13]

MediaCrypt AG is now offering a successor to IDEA and focuses on its new cipher (official release on May 2005) IDEA NXT, which was previously called FOX.


Literature

-   Hüseyin Demirci, Erkan Türe, Ali Aydin Selçuk, A New Meet in the Middle Attack on The IDEA Block Cipher, 10th Annual Workshop on Selected Areas in Cryptography, 2004.
-   Xuejia Lai and James L. Massey, A Proposal for a New Block Encryption Standard, EUROCRYPT 1990, pp. 389–404
-   Xuejia Lai and James L. Massey and S. Murphy, Markov ciphers and differential cryptanalysis, _Advances in Cryptology — Eurocrypt '91_, Springer-Verlag (1992), pp. 17–38.


References


External links

-   RSA FAQ on Block Ciphers
-   SCAN entry for IDEA
-   IDEA in 448 bytes of 80x86
-   IDEA Applet
-   Java source code

Category:Block ciphers Category:Broken block ciphers

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