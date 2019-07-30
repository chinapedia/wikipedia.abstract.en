utility)]]

A CHECKSUM is a small-sized datum derived from a block of digital data for the purpose of detecting errors that may have been introduced during its transmission or storage. It is usually applied to an installation file after it is received from the download server. By themselves, checksums are often used to verify data integrity but are not relied upon to verify data authenticity.

The actual procedure which yields the checksum from a data input is called a CHECKSUM FUNCTION or CHECKSUM ALGORITHM. Depending on its design goals, a good checksum algorithm will usually output a significantly different value, even for small changes made to the input. This is especially true of cryptographic hash functions, which may be used to detect many data corruption errors and verify overall data integrity; if the computed checksum for the current data input matches the stored value of a previously computed checksum, there is a very high probability the data has not been accidentally altered or corrupted.

Checksum functions are related to hash functions, fingerprints, randomization functions, and cryptographic hash functions. However, each of those concepts has different applications and therefore different design goals. For instance, a function returning the start of a string can provide a hash appropriate for some applications but will never be a suitable checksum. Checksums are used as cryptographic primitives in larger authentication algorithms. For cryptographic systems with these two specific design goals, see HMAC.

Check digits and parity bits are special cases of checksums, appropriate for small blocks of data (such as Social Security numbers, bank account numbers, computer words, single bytes, etc.). Some error-correcting codes are based on special checksums which not only detect common errors but also allow the original data to be recovered in certain cases.


Algorithms

Parity byte or parity word

The simplest checksum algorithm is the so-called longitudinal parity check, which breaks the data into "words" with a fixed number _n_ of bits, and then computes the exclusive or (XOR) of all those words. The result is appended to the message as an extra word. To check the integrity of a message, the receiver computes the exclusive or of all its words, including the checksum; if the result is not a word consisting of _n_ zeros, the receiver knows a transmission error occurred.

With this checksum, any transmission error which flips a single bit of the message, or an odd number of bits, will be detected as an incorrect checksum. However, an error which affects two bits will not be detected if those bits lie at the same position in two distinct words. Also swapping of two or more words will not be detected. If the affected bits are independently chosen at random, the probability of a two-bit error being undetected is 1/_n_.

Modular sum

A variant of the previous algorithm is to add all the "words" as unsigned binary numbers, discarding any overflow bits, and append the two's complement of the total as the checksum. To validate a message, the receiver adds all the words in the same manner, including the checksum; if the result is not a word full of zeros, an error must have occurred. This variant too detects any single-bit error, but the promodular sum is used in SAE J1708.[1]

Position-dependent

The simple checksums described above fail to detect some common errors which affect many bits at once, such as changing the order of data words, or inserting or deleting words with all bits set to zero. The checksum algorithms most used in practice, such as Fletcher's checksum, Adler-32, and cyclic redundancy checks (CRCs), address these weaknesses by considering not only the value of each word but also its position in the sequence. This feature generally increases the cost of computing the checksum.

General considerations

A message that is _m_ bits long can be viewed as a corner of the _m_-dimensional hypercube. The effect of a checksum algorithm that yields an n-bit checksum is to map each _m_-bit message to a corner of a larger hypercube, with dimension . The 2^(_m_+_n_) corners of this hypercube represent all possible received messages. The valid received messages (those that have the correct checksum) comprise a smaller set, with only 2^(_m_) corners.

A single-bit transmission error then corresponds to a displacement from a valid corner (the correct message and checksum) to one of the _m_ adjacent corners. An error which affects _k_ bits moves the message to a corner which is _k_ steps removed from its correct corner. The goal of a good checksum algorithm is to spread the valid corners as far from each other as possible, so as to increase the likelihood "typical" transmission errors will end up in an invalid corner.


See also

General topic

-   Algorithm
-   Check digit
-   Damm algorithm
-   Data rot
-   File verification
-   Fletcher's checksum
-   Frame check sequence
-   cksum
-   md5sum
-   sha1sum
-   Parchive
-   sum
-   SYSV checksum
-   BSD checksum
-   xxHash

Error correction

-   Hamming code
-   IPv4 header checksum

Hash functions

-   List of hash functions
-   Luhn algorithm
-   Parity bit
-   Rolling checksum
-   Verhoeff algorithm
-   ZFS — a file system which performs automatic file integrity checking using checksums

Related concepts

-   Isopsephy
-   Gematria


References


External links

-   Additive Checksums (C) theory from Barr Group
-   Practical Application of Cryptographic Checksums

*

[1]