DIFFERENTIAL CRYPTANALYSIS is a general form of cryptanalysis applicable primarily to block ciphers, but also to stream ciphers and cryptographic hash functions. In the broadest sense, it is the study of how differences in information input can affect the resultant difference at the output. In the case of a block cipher, it refers to a set of techniques for tracing differences through the network of transformation, discovering where the cipher exhibits non-random behavior, and exploiting such properties to recover the secret key (cryptography key).


History

The discovery of differential cryptanalysis is generally attributed to Eli Biham and Adi Shamir in the late 1980s, who published a number of attacks against various block ciphers and hash functions, including a theoretical weakness in the Data Encryption Standard (DES). It was noted by Biham and Shamir that DES was surprisingly resistant to differential cryptanalysis but small modifications to the algorithm would make it much more susceptible.[1]

In 1994, a member of the original IBM DES team, Don Coppersmith, published a paper stating that differential cryptanalysis was known to IBM as early as 1974, and that defending against differential cryptanalysis had been a design goal.[2] According to author Steven Levy, IBM had discovered differential cryptanalysis on its own, and the NSA was apparently well aware of the technique.[3] IBM kept some secrets, as Coppersmith explains: "After discussions with NSA, it was decided that disclosure of the design considerations would reveal the technique of differential cryptanalysis, a powerful technique that could be used against many ciphers. This in turn would weaken the competitive advantage the United States enjoyed over other countries in the field of cryptography."[4] Within IBM, differential cryptanalysis was known as the "T-attack"[5] or "Tickle attack".[6]

While DES was designed with resistance to differential cryptanalysis in mind, other contemporary ciphers proved to be vulnerable. An early target for the attack was the FEAL block cipher. The original proposed version with four rounds (FEAL-4) can be broken using only eight chosen plaintexts, and even a 31-round version of FEAL is susceptible to the attack. In contrast, the scheme can successfully cryptanalyze DES with an effort on the order 2⁴⁷ chosen plaintexts.


Attack mechanics

Differential cryptanalysis is usually a chosen plaintext attack, meaning that the attacker must be able to obtain ciphertexts for some set of plaintexts of their choosing. There are, however, extensions that would allow a known plaintext or even a ciphertext-only attack. The basic method uses pairs of plaintext related by a constant _difference_; difference can be defined in several ways, but the eXclusive OR (XOR) operation is usual. The attacker then computes the differences of the corresponding ciphertexts, hoping to detect statistical patterns in their distribution. The resulting pair of differences is called a DIFFERENTIAL. Their statistical properties depend upon the nature of the S-boxes used for encryption, so the attacker analyses differentials (Δ_(_X_), Δ_(_Y_)), where Δ_(_Y_) = _S_(_X_ ⊕ Δ_(_X_)) ⊕ _S_(_X_) (and ⊕ denotes exclusive or) for each such S-box _S_. In the basic attack, one particular ciphertext difference is expected to be especially frequent; in this way, the cipher can be distinguished from random. More sophisticated variations allow the key to be recovered faster than exhaustive search.

In the most basic form of key recovery through differential cryptanalysis, an attacker requests the ciphertexts for a large number of plaintext pairs, then assumes that the differential holds for at least _r_ − 1 rounds, where _r_ is the total number of rounds. The attacker then deduces which round keys (for the final round) are possible, assuming the difference between the blocks before the final round is fixed. When round keys are short, this can be achieved by simply exhaustively decrypting the ciphertext pairs one round with each possible round key. When one round key has been deemed a potential round key considerably more often than any other key, it is assumed to be the correct round key.

For any particular cipher, the input difference must be carefully selected for the attack to be successful. An analysis of the algorithm's internals is undertaken; the standard method is to trace a path of highly probable differences through the various stages of encryption, termed a _differential characteristic_.

Since differential cryptanalysis became public knowledge, it has become a basic concern of cipher designers. New designs are expected to be accompanied by evidence that the algorithm is resistant to this attack, and many, including the Advanced Encryption Standard, have been proven secure against the attack.


Attack in detail

The attack relies primarily on the fact that a given input/output difference pattern only occurs for certain values of inputs. Usually the attack is applied in essence to the non-linear components as if they were a solid component (usually they are in fact look-up tables or _S-boxes_). Observing the desired output difference (between two chosen or known plaintext inputs) _suggests_ possible key values.

For example, if a differential of 1 => 1 (implying a difference in the least significant bit (LSB) of the input leads to an output difference in the LSB) occurs with probability of 4/256 (possible with the non-linear function in the AES cipher for instance) then for only 4 values (or 2 pairs) of inputs is that differential possible. Suppose we have a non-linear function where the key is XOR'ed before evaluation and the values that allow the differential are {2,3} and {4,5}. If the attacker sends in the values of {6, 7} and observes the correct output difference it means the key is either 6 ⊕ K = 2, or 6 ⊕ K = 4, meaning the key K is either 2 or 4.

In essence, for an n-bit non-linear function one would ideally seek as close to 2^(−(_n_\ −\ 1)) as possible to achieve _differential uniformity_. When this happens, the differential attack requires as much work to determine the key as simply brute forcing the key.

The AES non-linear function has a maximum differential probability of 4/256 (most entries however are either 0 or 2). Meaning that in theory one could determine the key with half as much work as brute force, however, the high branch of AES prevents any high probability trails from existing over multiple rounds. In fact, the AES cipher would be just as immune to differential and linear attacks with a much _weaker_ non-linear function. The incredibly high branch (active S-box count) of 25 over 4R means that over 8 rounds no attack involves fewer than 50 non-linear transforms, meaning that the probability of success does not exceed Pr[attack] ≤ Pr[best attack on S-box]⁵⁰. For example, with the current S-box AES emits no fixed differential with a probability higher than (4/256)⁵⁰ or 2^(−300) which is far lower than the required threshold of 2^(−128) for a 128-bit block cipher. This would have allowed room for a more efficient S-box, even if it is 16-uniform the probability of attack would have still been 2^(−200).

There exist no bijections for even sized inputs/outputs with 2-uniformity. They exist in odd fields (such as GF(2⁷)) using either cubing or inversion (there are other exponents that can be used as well). For instance S(x) = x³ in any odd binary field is immune to differential and linear cryptanalysis. This is in part why the MISTY designs use 7- and 9-bit functions in the 16-bit non-linear function. What these functions gain in immunity to differential and linear attacks they lose to algebraic attacks. That is, they are possible to describe and solve via a SAT solver. This is in part why AES (for instance) has an affine mapping after the inversion.


Specialized types

-   Higher-order differential cryptanalysis
-   Truncated differential cryptanalysis
-   Impossible differential cryptanalysis
-   Boomerang attack


See also

-   Cryptography
-   Linear cryptanalysis


References

General

-   Eli Biham, Adi Shamir, Differential Cryptanalysis of the Data Encryption Standard, Springer Verlag, 1993. , .
-   Biham, E. and A. Shamir. (1990). Differential Cryptanalysis of DES-like Cryptosystems. Advances in Cryptology — CRYPTO '90. Springer-Verlag. 2–21.
-   Eli Biham, Adi Shamir,"Differential Cryptanalysis of the Full 16-Round DES," CS 708, Proceedings of CRYPTO '92, Volume 740 of Lecture Notes in Computer Science, December 1991. (Postscript)


External links

-   A tutorial on differential (and linear) cryptanalysis
-   Helger Lipmaa's links on differential cryptanalysis
-

Category:Cryptographic attacks

[1] Biham and Shamir, 1993, pp. 8-9

[2]  (subscription required)

[3]

[4]

[5]

[6] Matt Blaze, sci.crypt, 15 August 1996, Re: Reverse engineering and the Clipper chip"