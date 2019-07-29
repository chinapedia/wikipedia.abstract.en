In cryptography, a BLOCK CIPHER is a deterministic algorithm operating on fixed-length groups of bits, called a _block_, with an unvarying transformation that is specified by a symmetric key. Block ciphers operate as important elementary components in the design of many cryptographic protocols, and are widely used to implement encryption of bulk data.

The modern design of block ciphers is based on the concept of an iterated product cipher. In his seminal 1949 publication, _Communication Theory of Secrecy Systems_, Claude Shannon analyzed product ciphers and suggested them as a means of effectively improving security by combining simple operations such as substitutions and permutations.[1] Iterated product ciphers carry out encryption in multiple rounds, each of which uses a different subkey derived from the original key. One widespread implementation of such ciphers, named a Feistel network after Horst Feistel, is notably implemented in the DES cipher.[2] Many other realizations of block ciphers, such as the AES, are classified as substitution–permutation networks.

The publication of the DES cipher by the United States National Bureau of Standards (subsequently the U.S. National Institute of Standards and Technology, NIST) in 1977 was fundamental in the public understanding of modern block cipher design. It also influenced the academic development of cryptanalytic attacks. Both differential and linear cryptanalysis arose out of studies on the DES design. there is a palette of attack techniques against which a block cipher must be secure, in addition to being robust against brute-force attacks.

Even a secure block cipher is suitable only for the encryption of a single block under a fixed key. A multitude of modes of operation have been designed to allow their repeated use in a secure way, commonly to achieve the security goals of confidentiality and authenticity. However, block ciphers may also feature as building blocks in other cryptographic protocols, such as universal hash functions and pseudo-random number generators.


Definition

A block cipher consists of two paired algorithms, one for encryption, _E_, and the other for decryption, _D_.[3] Both algorithms accept two inputs: an input block of size _n_ bits and a key of size _k_ bits; and both yield an _n_-bit output block. The decryption algorithm _D_ is defined to be the inverse function of encryption, i.e., _D_ = _E_^(−1). More formally,[4][5] a block cipher is specified by an encryption function

_E__(_K_)(_P_) := _E_(_K_, _P_) : {0, 1}^(_k_) × {0, 1}^(_n_) → {0, 1}^(_n_),
which takes as input a key _K_ of bit length _k_, called the _key size_, and a bit string _P_ of length _n_, called the _block size_, and returns a string _C_ of _n_ bits. _P_ is called the plaintext, and _C_ is termed the ciphertext. For each _K_, the function _E__(_K_)(_P_) is required to be an invertible mapping on {0,1}^(_n_). The inverse for _E_ is defined as a function

_E__(_K_)^( − 1)(_C_) := _D__(_K_)(_C_) = _D_(_K_, _C_) : {0, 1}^(_k_) × {0, 1}^(_n_) → {0, 1}^(_n_),
taking a key _K_ and a ciphertext _C_ to return a plaintext value _P_, such that

∀_K_ : _D__(_K_)(_E__(_K_)(_P_)) = _P_.

For example, a block cipher encryption algorithm might take a 128-bit block of plaintext as input, and output a corresponding 128-bit block of ciphertext. The exact transformation is controlled using a second input – the secret key. Decryption is similar: the decryption algorithm takes, in this example, a 128-bit block of ciphertext together with the secret key, and yields the original 128-bit block of plain text.[6]

For each key _K_, _E_(K)_ is a permutation (a bijective mapping) over the set of input blocks. Each key selects one permutation from the set of (2^(n))! possible permutations.


Design

Iterated block ciphers

Most block cipher algorithms are classified as _iterated block ciphers_ which means that they transform fixed-size blocks of plaintext into identical size blocks of ciphertext, via the repeated application of an invertible transformation known as the _round function_, with each iteration referred to as a _round_.[7]

Usually, the round function _R_ takes different _round keys_ _K_(i)_ as second input, which are derived from the original key:

_M__(_i_) = _R__(_K__(_i_))(_M__(_i_ − 1))
where M₀ is the plaintext and M_(r) the ciphertext, with _r_ being the number of rounds.

Frequently, key whitening is used in addition to this. At the beginning and the end, the data is modified with key material (often with XOR, but simple arithmetic operations like adding and subtracting are also used):

_M_₀ = _M_ ⊕ _K_₀

_M__(_i_) = _R__(_K__(_i_))(_M__(_i_ − 1)) ; _i_ = 1…_r_

_C_ = _M__(_r_) ⊕ _K__(_r_ + 1)

Given one of the standard iterated block cipher design schemes, it is fairly easy to construct a block cipher that is cryptographically secure, simply by using a large number of rounds. However, this will make the cipher inefficient. Thus, efficiency is the most important additional design criterion for professional ciphers. Further, a good block cipher is designed to avoid side-channel attacks, such as input-dependent memory accesses that might leak secret data via the cache state or the execution time. In addition, the cipher should be concise, for small hardware and software implementations. Finally, the cipher should be easily cryptanalyzable, such that it can be shown how many rounds the cipher needs to be reduced to, so that the existing cryptographic attacks would work – and, conversely, that it can be shown that the number of actual rounds is large enough to protect against them.

Substitution–permutation networks

SubstitutionPermutationNetwork2.png

One important type of iterated block cipher known as a _substitution–permutation network (SPN)_ takes a block of the plaintext and the key as inputs, and applies several alternating rounds consisting of a substitution stage followed by a permutation stage—to produce each block of ciphertext output.[8] The non-linear substitution stage mixes the key bits with those of the plaintext, creating Shannon's _confusion_. The linear permutation stage then dissipates redundancies, creating _diffusion_.[9][10]

A _substitution box (S-box)_ substitutes a small block of input bits with another block of output bits. This substitution must be one-to-one, to ensure invertibility (hence decryption). A secure S-box will have the property that changing one input bit will change about half of the output bits on average, exhibiting what is known as the avalanche effect—i.e. it has the property that each output bit will depend on every input bit.[11]

A _permutation box (P-box)_ is a permutation of all the bits: it takes the outputs of all the S-boxes of one round, permutes the bits, and feeds them into the S-boxes of the next round. A good P-box has the property that the output bits of any S-box are distributed to as many S-box inputs as possible.

At each round, the round key (obtained from the key with some simple operations, for instance, using S-boxes and P-boxes) is combined using some group operation, typically XOR.

Decryption is done by simply reversing the process (using the inverses of the S-boxes and P-boxes and applying the round keys in reversed order).[12]

Feistel ciphers

Feistel_cipher_diagram_en.svgs'']] In a _Feistel cipher_, the block of plain text to be encrypted is split into two equal-sized halves. The round function is applied to one half, using a subkey, and then the output is XORed with the other half. The two halves are then swapped.

Let ${\rm F}$ be the round function and let K₀, K₁, …, K_(n) be the sub-keys for the rounds 0, 1, …, n respectively.

Then the basic operation is as follows:

Split the plaintext block into two equal pieces, (L₀, R₀)

For each round i = 0, 1, …, n, compute

_L__(_i_ + 1) = _R__(_i_) 

$$R_{i+1}= L_i \oplus {\rm F}(R_i, K_i)$$
.

Then the ciphertext is (R_(n + 1), L_(n + 1)).

Decryption of a ciphertext (R_(n + 1), L_(n + 1)) is accomplished by computing for i = n, n − 1, …, 0

_R__(_i_) = _L__(_i_ + 1) 

$$L_{i} = R_{i+1} \oplus {\rm F}(L_{i+1}, K_{i})$$
.

Then (L₀, R₀) is the plaintext again.

One advantage of the Feistel model compared to a substitution–permutation network is that the round function ${\rm F}$ does not have to be invertible.

Lai–Massey ciphers

Lai_Massey_scheme_diagram_en.svg.]]

The Lai–Massey scheme offers security properties similar to those of the Feistel structure. It also shares its advantage that the round function F does not have to be invertible. Another similarity is that is also splits the input block into two equal pieces. However, the round function is applied to the difference between the two, and the result is then added to both half blocks.

Let F be the round function and H a half-round function and let K₀, K₁, …, K_(n) be the sub-keys for the rounds 0, 1, …, n respectively.

Then the basic operation is as follows:

Split the plaintext block into two equal pieces, (L₀, R₀)

For each round i = 0, 1, …, n, compute

(_L__(_i_ + 1)′, _R__(_i_ + 1)′) = _H_(_L__(_i_)′ + _T__(_i_), _R__(_i_)′ + _T__(_i_))

where T_(i) = F(L_(i)′ − R_(i)′, K_(i)) and (L₀′, R₀′) = H(L₀, R₀)

Then the ciphertext is (L_(n + 1), R_(n + 1)) = (L_(n + 1)′, R_(n + 1)′).

Decryption of a ciphertext (L_(n + 1), R_(n + 1)) is accomplished by computing for i = n, n − 1, …, 0

(_L__(_i_)′, _R__(_i_)′) = _H_^( − 1)(_L__(_i_ + 1)′ − _T__(_i_), _R__(_i_ + 1)′ − _T__(_i_))

where T_(i) = F(L_(i + 1)′ − R_(i + 1)′, K_(i)) and (L_(n + 1)′, R_(n + 1)′) = H^( − 1)(L_(n + 1), R_(n + 1))

Then (L₀, R₀) = (L₀′, R₀′) is the plaintext again.

Operations

ARX (add–rotate–xor)

Many modern block ciphers and hashes are ARX algorithms—their round function involves only three operations: modular addition, rotation with fixed rotation amounts, and XOR (ARX). Examples include ChaCha20, Speck, XXTEA, and BLAKE. Many authors draw an ARX network, a kind of data flow diagram, to illustrate such a round function.[13]

These ARX operations are popular because they are relatively fast and cheap in hardware and software, and also because they run in constant time, and are therefore immune to timing attacks. The rotational cryptanalysis technique attempts to attack such round functions.

Other operations

Other operations often used in block ciphers include data-dependent rotations as in RC5 and RC6, a substitution box implemented as a lookup table as in Data Encryption Standard and Advanced Encryption Standard, a permutation box, and multiplication as in IDEA.


Modes of operation

Tux_ecb.jpg (ECB) mode encoding.]] A block cipher by itself allows encryption only of a single data block of the cipher's block length. For a variable-length message, the data must first be partitioned into separate cipher blocks. In the simplest case, known as the Electronic Codebook (ECB) mode, a message is first split into separate blocks of the cipher's block size (possibly extending the last block with padding bits), and then each block is encrypted and decrypted independently. However, such a naive method is generally insecure because equal plaintext blocks will always generate equal ciphertext blocks (for the same key), so patterns in the plaintext message become evident in the ciphertext output.

To overcome this limitation, several so called block cipher modes of operation have been designed[14] and specified in national recommendations such as NIST 800-38A[15] and BSI TR-02102[16] and international standards such as ISO/IEC 10116.[17] The general concept is to use randomization of the plaintext data based on an additional input value, frequently called an initialization vector, to create what is termed probabilistic encryption. In the popular cipher block chaining (CBC) mode, for encryption to be secure the initialization vector passed along with the plaintext message must be a random or pseudo-random value, which is added in an exclusive-or manner to the first plaintext block before it is being encrypted. The resultant ciphertext block is then used as the new initialization vector for the next plaintext block. In the cipher feedback (CFB) mode, which emulates a self-synchronizing stream cipher, the initialization vector is first encrypted and then added to the plaintext block. The output feedback (OFB) mode repeatedly encrypts the initialization vector to create a key stream for the emulation of a synchronous stream cipher. The newer counter (CTR) mode similarly creates a key stream, but has the advantage of only needing unique and not (pseudo-)random values as initialization vectors; the needed randomness is derived internally by using the initialization vector as a block counter and encrypting this counter for each block.[18]

From a security-theoretic point of view, modes of operation must provide what is known as semantic security. Informally, it means that given some ciphertext under an unknown key one cannot practically derive any information from the ciphertext (other than the length of the message) over what one would have known without seeing the ciphertext. It has been shown that all of the modes discussed above, with the exception of the ECB mode, provide this property under so-called chosen plaintext attacks.


Padding

Some modes such as the CBC mode only operate on complete plaintext blocks. Simply extending the last block of a message with zero-bits is insufficient since it does not allow a receiver to easily distinguish messages that differ only in the amount of padding bits. More importantly, such a simple solution gives rise to very efficient padding oracle attacks.[19] A suitable padding scheme is therefore needed to extend the last plaintext block to the cipher's block size. While many popular schemes described in standards and in the literature have been shown to be vulnerable to padding oracle attacks,[20][21] a solution which adds a one-bit and then extends the last block with zero-bits, standardized as "padding method 2" in ISO/IEC 9797-1,[22] has been proven secure against these attacks.[23]


Cryptanalysis

Brute-force attacks

This property results in the cipher's security degrading quadratically, and needs to be taken into account when selecting a block size. There is a trade-off though as large block sizes can result in the algorithm becoming inefficient to operate.[24] Earlier block ciphers such as the DES have typically selected a 64-bit block size, while newer designs such as the AES support block sizes of 128 bits or more, with some ciphers supporting a range of different block sizes.[25]

Differential cryptanalysis

Linear cryptanalysis

_Linear cryptanalysis_ is a form of cryptanalysis based on finding affine approximations to the action of a cipher. Linear cryptanalysis is one of the two most widely used attacks on block ciphers; the other being differential cryptanalysis.[26]

The discovery is attributed to Mitsuru Matsui, who first applied the technique to the FEAL cipher (Matsui and Yamagishi, 1992).[27]

Integral cryptanalysis

_Integral cryptanalysis_ is a cryptanalytic attack that is particularly applicable to block ciphers based on substitution–permutation networks. Unlike differential cryptanalysis, which uses pairs of chosen plaintexts with a fixed XOR difference, integral cryptanalysis uses sets or even multisets of chosen plaintexts of which part is held constant and another part varies through all possibilities. For example, an attack might use 256 chosen plaintexts that have all but 8 of their bits the same, but all differ in those 8 bits. Such a set necessarily has an XOR sum of 0, and the XOR sums of the corresponding sets of ciphertexts provide information about the cipher's operation. This contrast between the differences of pairs of texts and the sums of larger sets of texts inspired the name "integral cryptanalysis", borrowing the terminology of calculus.

Other techniques

Attaque_boomerang.png enabled differential cryptanalysis techniques to be applied to many ciphers that had previously been deemed secure against differential attacks]] In addition to linear and differential cryptanalysis, there is a growing catalog of attacks: truncated differential cryptanalysis, partial differential cryptanalysis, integral cryptanalysis, which encompasses square and integral attacks, slide attacks, boomerang attacks, the XSL attack, impossible differential cryptanalysis and algebraic attacks. For a new block cipher design to have any credibility, it must demonstrate evidence of security against known attacks.


Provable security

When a block cipher is used in a given mode of operation, the resulting algorithm should ideally be about as secure as the block cipher itself. ECB (discussed above) emphatically lacks this property: regardless of how secure the underlying block cipher is, ECB mode can easily be attacked. On the other hand, CBC mode can be proven to be secure under the assumption that the underlying block cipher is likewise secure. Note, however, that making statements like this requires formal mathematical definitions for what it means for an encryption algorithm or a block cipher to "be secure". This section describes two common notions for what properties a block cipher should have. Each corresponds to a mathematical model that can be used to prove properties of higher level algorithms, such as CBC.

This general approach to cryptography – proving higher-level algorithms (such as CBC) are secure under explicitly stated assumptions regarding their components (such as a block cipher) – is known as _provable security_.

Standard model

Informally, a block cipher is secure in the standard model if an attacker cannot tell the difference between the block cipher (equipped with a random key) and a random permutation.

To be a bit more precise, let _E_ be an _n_-bit block cipher. We imagine the following game:

1.  The person running the game flips a coin.
    -   If the coin lands on heads, he chooses a random key _K_ and defines the function _f = E_(K)_.
    -   If the coin lands on tails, he chooses a random permutation __ on the set of _n_-bit strings, and defines the function _f = _.
2.  The attacker chooses an _n_-bit string _X_, and the person running the game tells him the value of _f(X)_.
3.  Step 2 is repeated a total of _q_ times. (Each of these _q_ interactions is a _query_.)
4.  The attacker guesses how the coin landed. He wins if his guess is correct.

The attacker, which we can model as an algorithm, is called an _adversary_. The function _f_ (which the adversary was able to query) is called an _oracle_.

Note that an adversary can trivially ensure a 50% chance of winning simply by guessing at random (or even by, for example, always guessing "heads"). Therefore, let _P_(E)(A)_ denote the probability that the adversary _A_ wins this game against _E_, and define the _advantage_ of _A_ as 2(_P_(E)(A)_ − 1/2). It follows that if _A_ guesses randomly, its advantage will be 0; on the other hand, if _A_ always wins, then its advantage is 1. The block cipher _E_ is a _pseudo-random permutation_ (PRP) if no adversary has an advantage significantly greater than 0, given specified restrictions on _q_ and the adversary's running time. If in Step 2 above adversaries have the option of learning _f^(−1)(X)_ instead of _f(X)_ (but still have only small advantages) then _E_ is a _strong_ PRP (SPRP). An adversary is _non-adaptive_ if it chooses all _q_ values for _X_ before the game begins (that is, it does not use any information gleaned from previous queries to choose each _X_ as it goes).

These definitions have proven useful for analyzing various modes of operation. For example, one can define a similar game for measuring the security of a block cipher-based encryption algorithm, and then try to show (through a reduction argument) that the probability of an adversary winning this new game is not much more than _P_(E)(A)_ for some _A_. (The reduction typically provides limits on _q_ and the running time of _A_.) Equivalently, if _P_(E)(A)_ is small for all relevant _A_, then no attacker has a significant probability of winning the new game. This formalizes the idea that the higher-level algorithm inherits the block cipher's security.

Ideal cipher model


Practical evaluation

Block ciphers may be evaluated according to multiple criteria in practice. Common factors include:[28]

-   Key parameters, such as its key size and block size, both of which provide an upper bound on the security of the cipher.
-   The _estimated security level_, which is based on the confidence gained in the block cipher design after it has largely withstood major efforts in cryptanalysis over time, the design's mathematical soundness, and the existence of practical or certificational[29] attacks.
-   The cipher's _complexity_ and its suitability for implementation in hardware or software. Hardware implementations may measure the complexity in terms of gate count or energy consumption, which are important parameters for resource-constrained devices.
-   The cipher's _performance_ in terms of processing throughput on various platforms, including its memory requirements.
-   The _cost_ of the cipher, which refers to licensing requirements that may apply due to intellectual property rights.
-   The _flexibility_ of the cipher, which includes its ability to support multiple key sizes and block lengths.


Notable block ciphers

Lucifer / DES

Lucifer is generally considered to be the first civilian block cipher, developed at IBM in the 1970s based on work done by Horst Feistel. A revised version of the algorithm was adopted as a U.S. government Federal Information Processing Standard: FIPS PUB 46 Data Encryption Standard (DES).[30] It was chosen by the U.S. National Bureau of Standards (NBS) after a public invitation for submissions and some internal changes by NBS (and, potentially, the NSA). DES was publicly released in 1976 and has been widely used.

DES was designed to, among other things, resist a certain cryptanalytic attack known to the NSA and rediscovered by IBM, though unknown publicly until rediscovered again and published by Eli Biham and Adi Shamir in the late 1980s. The technique is called differential cryptanalysis and remains one of the few general attacks against block ciphers; linear cryptanalysis is another, but may have been unknown even to the NSA, prior to its publication by Mitsuru Matsui. DES prompted a large amount of other work and publications in cryptography and cryptanalysis in the open community and it inspired many new cipher designs.

DES has a block size of 64 bits and a key size of 56 bits. 64-bit blocks became common in block cipher designs after DES. Key length depended on several factors, including government regulation. Many observers in the 1970s commented that the 56-bit key length used for DES was too short. As time went on, its inadequacy became apparent, especially after a special purpose machine designed to break DES was demonstrated in 1998 by the Electronic Frontier Foundation. An extension to DES, Triple DES, triple-encrypts each block with either two independent keys (112-bit key and 80-bit security) or three independent keys (168-bit key and 112-bit security). It was widely adopted as a replacement. As of 2011, the three-key version is still considered secure, though the National Institute of Standards and Technology (NIST) standards no longer permit the use of the two-key version in new applications, due to its 80-bit security level.[31]

IDEA

The _International Data Encryption Algorithm_ (_IDEA_) is a block cipher designed by James Massey of ETH Zurich and Xuejia Lai; it was first described in 1991, as an intended replacement for DES.

IDEA operates on 64-bit blocks using a 128-bit key, and consists of a series of eight identical transformations (a _round_) and an output transformation (the _half-round_). The processes for encryption and decryption are similar. IDEA derives much of its security by interleaving operations from different groups – modular addition and multiplication, and bitwise _exclusive or (XOR)_ – which are algebraically "incompatible" in some sense.

The designers analysed IDEA to measure its strength against differential cryptanalysis and concluded that it is immune under certain assumptions. No successful linear or algebraic weaknesses have been reported. , the best attack which applies to all keys can break full 8.5-round IDEA using a narrow-bicliques attack about four times faster than brute force.

RC5

RC5_InfoBox_Diagram.svg RC5 is a block cipher designed by Ronald Rivest in 1994 which, unlike many other ciphers, has a variable block size (32, 64 or 128 bits), key size (0 to 2040 bits) and number of rounds (0 to 255). The original suggested choice of parameters were a block size of 64 bits, a 128-bit key and 12 rounds.

A key feature of RC5 is the use of data-dependent rotations; one of the goals of RC5 was to prompt the study and evaluation of such operations as a cryptographic primitive. RC5 also consists of a number of modular additions and XORs. The general structure of the algorithm is a Feistel-like network. The encryption and decryption routines can be specified in a few lines of code. The key schedule, however, is more complex, expanding the key using an essentially one-way function with the binary expansions of both e and the golden ratio as sources of "nothing up my sleeve numbers". The tantalising simplicity of the algorithm together with the novelty of the data-dependent rotations has made RC5 an attractive object of study for cryptanalysts.

12-round RC5 (with 64-bit blocks) is susceptible to a differential attack using 2⁴⁴ chosen plaintexts.[32] 18–20 rounds are suggested as sufficient protection.

Rijndael / AES

The _Rijndael_ cipher developed by Belgian cryptographers, Joan Daemen and Vincent Rijmen was one of the competing designs to replace DES. It won the 5-year public competition to become the AES, (Advanced Encryption Standard).

Adopted by NIST in 2001, AES has a fixed block size of 128 bits and a key size of 128, 192, or 256 bits, whereas Rijndael can be specified with block and key sizes in any multiple of 32 bits, with a minimum of 128 bits. The blocksize has a maximum of 256 bits, but the keysize has no theoretical maximum. AES operates on a 4×4 column-major order matrix of bytes, termed the _state_ (versions of Rijndael with a larger block size have additional columns in the state).

Blowfish

_Blowfish_ is a block cipher, designed in 1993 by Bruce Schneier and included in a large number of cipher suites and encryption products. Blowfish has a 64-bit block size and a variable key length from 1 bit up to 448 bits.[33] It is a 16-round Feistel cipher and uses large key-dependent S-boxes. Notable features of the design include the key-dependent S-boxes and a highly complex key schedule.

It was designed as a general-purpose algorithm, intended as an alternative to the ageing DES and free of the problems and constraints associated with other algorithms. At the time Blowfish was released, many other designs were proprietary, encumbered by patents or were commercial/government secrets. Schneier has stated that, "Blowfish is unpatented, and will remain so in all countries. The algorithm is hereby placed in the public domain, and can be freely used by anyone." The same applies to Twofish, a successor algorithm from Schneier.


Generalizations

Tweakable block ciphers

M. Liskov, R. Rivest, and D. Wagner have described a generalized version of block ciphers called "tweakable" block ciphers.[34] A tweakable block cipher accepts a second input called the _tweak_ along with its usual plaintext or ciphertext input. The tweak, along with the key, selects the permutation computed by the cipher. If changing tweaks is sufficiently lightweight (compared with a usually fairly expensive key setup operation), then some interesting new operation modes become possible. The disk encryption theory article describes some of these modes.

Format-preserving encryption

Block ciphers traditionally work over a binary alphabet. That is, both the input and the output are binary strings, consisting of _n_ zeroes and ones. In some situations, however, one may wish to have a block cipher that works over some other alphabet; for example, encrypting 16-digit credit card numbers in such a way that the ciphertext is also a 16-digit number might facilitate adding an encryption layer to legacy software. This is an example of _format-preserving encryption_. More generally, format-preserving encryption requires a keyed permutation on some finite language. This makes format-preserving encryption schemes a natural generalization of (tweakable) block ciphers. In contrast, traditional encryption schemes, such as CBC, are not permutations because the same plaintext can encrypt to multiple different ciphertexts, even when using a fixed key.


Relation to other cryptographic primitives

Block ciphers can be used to build other cryptographic primitives, such as those below. For these other primitives to be cryptographically secure, care has to be taken to build them the right way.

-   Stream ciphers can be built using block ciphers. OFB-mode and CTR mode are block modes that turn a block cipher into a stream cipher.
-   Cryptographic hash functions can be built using block ciphers.[35] See one-way compression function for descriptions of several such methods. The methods resemble the block cipher modes of operation usually used for encryption.
-   Cryptographically secure pseudorandom number generators (CSPRNGs) can be built using block ciphers.[36]
-   Secure pseudorandom permutations of arbitrarily sized finite sets can be constructed with block ciphers; see Format-Preserving Encryption.
-   Message authentication codes (MACs) are often built from block ciphers. CBC-MAC, OMAC and PMAC are such MACs.
-   Authenticated encryption is also built from block ciphers. It means to both encrypt and MAC at the same time. That is to both provide confidentiality and authentication. CCM, EAX, GCM and OCB are such authenticated encryption modes.

Just as block ciphers can be used to build hash functions, hash functions can be used to build block ciphers. Examples of such block ciphers are SHACAL, BEAR and LION.


See also

-   Cipher security summary
-   Topics in cryptography


References


Further reading

-


External links

-   A list of many symmetric algorithms, the majority of which are block ciphers.
-   The block cipher lounge
-   What is a block cipher? from RSA FAQ

* Category:Cryptographic primitives

[1]

[2] , p. 455.

[3]

[4]

[5] , chapter 3.

[6]

[7]

[8]

[9]

[10]

[11] , pages 166–167.

[12]

[13]

[14]

[15]

[16]

[17] ISO/IEC 10116:2006 _Information technology — Security techniques — Modes of operation for an n-bit block cipher_

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29] Attacks that show that the cipher does not perform as advertised (i.e., the level of difficulty involved in breaking it is lower than claimed), which are nevertheless of high enough complexity so that they are not practically achievable.

[30] FIPS PUB 46-3 _Data Encryption Standard (DES)_ (This is the third edition, 1999, but includes historical information in the preliminary section 12.)

[31] NIST Special Publication 800-57 _Recommendation for Key Management — Part 1: General (Revised)_, March, 2007

[32] Biryukov A. and Kushilevitz E. (1998). Improved Cryptanalysis of RC5. EUROCRYPT 1998.

[33]

[34]

[35] ISO/IEC 10118-2:2010 _Information technology — Security techniques — Hash-functions — Part 2: Hash-functions using an n-bit block cipher_

[36] NIST Special Publication 800-90A _Recommendation for Random Number Generation Using Deterministic Random Bit Generators_