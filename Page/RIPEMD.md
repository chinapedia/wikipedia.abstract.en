RIPEMD (RIPE MESSAGE DIGEST) is a family of cryptographic hash functions developed in 1992 (the original RIPEMD) and 1996 (other variants). There are five functions in the family: RIPEMD, RIPEMD-128, RIPEMD-160, RIPEMD-256, and RIPEMD-320, of which RIPEMD-160 is the most common.

The original RIPEMD, as well as RIPEMD-128, is not considered secure because 128-bit result is too small and also (for the original RIPEMD) because of design weaknesses. The 256- and 320-bit versions of RIPEMD provide the same level of security as RIPEMD-128 and RIPEMD-160, respectively; they are designed for applications where the security level is sufficient but longer hash result is necessary.

While RIPEMD functions are less popular than SHA-1 and SHA-2, they are used, among others, in Bitcoin and other cryptocurrencies based on Bitcoin.


History

The original RIPEMD function was designed in the framework of the EU project RIPE (RACE Integrity Primitives Evaluation) in 1992.[1][2] Its design was based on the MD4 hash function. In 1996, in response to security weaknesses found in the original RIPEMD,[3] Hans Dobbertin, Antoon Bosselaers and Bart Preneel at the COSIC research group at the Katholieke Universiteit Leuven in Leuven, Belgium published four strengthened variants: RIPEMD-128, RIPEMD-160, RIPEMD-256, and RIPEMD-320.[4]

In August 2004, a collision was reported for the original RIPEMD.[5] This does not apply to RIPEMD-160.[6]


RIPEMD-160 hashes

The 160-bit RIPEMD-160 hashes (also termed RIPE _message digests_) are typically represented as 40-digit hexadecimal numbers. The following demonstrates a 43-byte ASCII input and the corresponding RIPEMD-160 hash:

 RIPEMD-160("The quick brown fox jumps over the lazy og") =
 37f332f68db77bd9d7edd4969571ad671cf9dd3b

RIPEMD-160 behaves with the desired avalanche effect of cryptographic hash functions (small changes, e.g. changing d to c, result in a completely different hash):

 RIPEMD-160("The quick brown fox jumps over the lazy og") =
 132072df690933835eb8b6ad0b77e7b6f14acad7

The hash of a zero-length string is:

 RIPEMD-160("") =
 9c1185a5c5e9fc54612808977ee8f548b2258d31


Implementations

Below is a list of cryptography libraries that support RIPEMD (specifically RIPEMD-160):

-   Botan
-   Bouncy Castle
-   Cryptlib
-   Crypto++
-   Libgcrypt
-   mbed TLS
-   Nettle
-   OpenSSL
-   wolfSSL


See also

-   Hash function security summary
-   Comparison of cryptographic hash functions
-   Comparison of cryptography libraries
-   Topics in cryptography


References


External links

-   The hash function RIPEMD-160
-   RIPEMD-160 Ecrypt page
-   RIPEMD-128bit Algorithm

Category:Cryptographic hash functions

[1]

[2]

[3]

[4]

[5]

[6]