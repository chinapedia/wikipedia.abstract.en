In cryptography, an HMAC (sometimes expanded as either KEYED-HASH MESSAGE AUTHENTICATION CODE or HASH-BASED MESSAGE AUTHENTICATION CODE) is a specific type of message authentication code (MAC) involving a cryptographic hash function and a secret cryptographic key. It may be used to simultaneously verify both the _data integrity_ and the _authentication_ of a message, as with any MAC. Any cryptographic hash function, such as SHA-256 or SHA-3, may be used in the calculation of an HMAC; the resulting MAC algorithm is termed HMAC-X, where X is the hash function used (e.g. HMAC-SHA256 or HMAC-SHA3). The cryptographic strength of the HMAC depends upon the cryptographic strength of the underlying hash function, the size of its hash output, and the size and quality of the key.

HMAC uses two passes of hash computation. The secret key is first used to derive two keys – inner and outer. The first pass of the algorithm produces an internal hash derived from the message and the inner key. The second pass produces the final HMAC code derived from the inner hash result and the outer key. Thus the algorithm provides better immunity against length extension attacks.

An iterative hash function breaks up a message into blocks of a fixed size and iterates over them with a compression function. For example, SHA-256 operates on 512-bit blocks. The size of the output of HMAC is the same as that of the underlying hash function (e.g., 256 and 1600 bits in the case of SHA-256 and SHA-3, respectively), although it can be truncated if desired.

HMAC does not encrypt the message. Instead, the message (encrypted or not) must be sent alongside the HMAC hash. Parties with the secret key will hash the message again themselves, and if it is authentic, the received and computed hashes will match.

The definition and analysis of the HMAC construction was first published in 1996 in a paper by Mihir Bellare, Ran Canetti, and Hugo Krawczyk,[1] and they also wrote RFC 2104 in 1997. The 1996 paper also defined a variant called NMAC. FIPS PUB 198 generalizes and standardizes the use of HMACs. HMAC is used within the IPsec and TLS protocols and for JSON Web Tokens.


Definition

This definition is taken from RFC 2104:

$$\begin{align}
  \operatorname{HMAC}(K, m) &= \operatorname{H}\Bigl(\bigl(K' \oplus opad\bigr) \parallel
\operatorname{H} \bigl(\left(K' \oplus ipad\right) \parallel m\bigr)\Bigr) \\
                         K' &= \begin{cases}
                                 \operatorname{H}\left(K\right) & K\text{ is larger than block size} \\
                                 K                              & \text{otherwise}
                                \end{cases}
\end{align}$$

where

    H is a cryptographic hash function
    _m_ is the message to be authenticated
    _K_ is the secret key
    _K_' is a block-sized key derived from the secret key, _K_; either by padding to the right with 0s up to the block size, or by hashing down to less than the block size first and then padding to the right with zeros
    ∥ denotes concatenation
    ⊕ denotes bitwise exclusive or (XOR)
    _opad_ is the block-sized outer padding, consisting of repeated bytes valued 0x5c
    is the block-sized inner padding, consisting of repeated bytes valued 0x36


Implementation

The following pseudocode demonstrates how HMAC may be implemented. Blocksize is 64 (bytes) when using one of the following hash functions: SHA-1, MD5, RIPEMD-128/160.[2]

Function hmac
   Inputs:
      key:        Bytes     //array of bytes
      message:    Bytes     //array of bytes to be hashed
      hash:       Function  //the hash function to use (e.g. SHA-1)
      blockSize:  Integer   //the block size of the underlying hash function (e.g. 64 bytes for SHA-1)
      outputSize: Integer   //the output size of the underlying hash function (e.g. 20 bytes for SHA-1)
   //Keys longer than _blockSize_ are shortened by hashing them
   if (length(key) > blockSize) then
      key ← hash(key) //Key becomes _outputSize_ bytes long
   
   //Keys shorter than _blockSize_ are padded to _blockSize_ by padding with zeros on the right
   if (length(key) < blockSize) then
      key ← Pad(key, blockSize) //pad key with zeros to make it _blockSize_ bytes long
    
   o_key_pad ← key xor [0x5c * blockSize]   //Outer padded key
   i_key_pad ← key xor [0x36 * blockSize]   //Inner padded key
    
   return hash(o_key_pad ∥ hash(i_key_pad ∥ message)) //Where ∥ is concatenation


Design principles

The design of the HMAC specification was motivated by the existence of attacks on more trivial mechanisms for combining a key with a hash function. For example, one might assume the same security that HMAC provides could be achieved with MAC = H(_key_ || _message_). However, this method suffers from a serious flaw: with most hash functions, it is easy to append data to the message without knowing the key and obtain another valid MAC ("length-extension attack"). The alternative, appending the key using MAC = H(_message_ || _key_), suffers from the problem that an attacker who can find a collision in the (unkeyed) hash function has a collision in the MAC (as two messages m1 and m2 yielding the same hash will provide the same start condition to the hash function before the appended key is hashed, hence the final hash will be the same). Using MAC = H(_key_ || _message_ || _key_) is better, but various security papers have suggested vulnerabilities with this approach, even when two different keys are used.[3][4][5]

No known extension attacks have been found against the current HMAC specification which is defined as H(_key_ || H(_key_ || _message_)) because the outer application of the hash function masks the intermediate result of the internal hash. The values of _ipad_ and _opad_ are not critical to the security of the algorithm, but were defined in such a way to have a large Hamming distance from each other and so the inner and outer keys will have fewer bits in common. The security reduction of HMAC does require them to be different in at least one bit.

The Keccak hash function, that was selected by NIST as the SHA-3 competition winner, doesn't need this nested approach and can be used to generate a MAC by simply prepending the key to the message, as it is not susceptible to length-extension attacks.[6]


Security

The cryptographic strength of the HMAC depends upon the size of the secret key that is used. The most common attack against HMACs is brute force to uncover the secret key. HMACs are substantially less affected by collisions than their underlying hashing algorithms alone.[7][8] In particular, in 2006 Mihir Bellare proved that HMAC is a PRF under the sole assumption that the compression function is a PRF.[9] Therefore, HMAC-MD5 does not suffer from the same weaknesses that have been found in MD5.

In 2006, Jongsung Kim, Alex Biryukov, Bart Preneel, and Seokhie Hong showed how to distinguish HMAC with reduced versions of MD5 and SHA-1 or full versions of HAVAL, MD4, and SHA-0 from a random function or HMAC with a random function. Differential distinguishers allow an attacker to devise a forgery attack on HMAC. Furthermore, differential and rectangle distinguishers can lead to second-preimage attacks. HMAC with the full version of MD4 can be forged with this knowledge. These attacks do not contradict the security proof of HMAC, but provide insight into HMAC based on existing cryptographic hash functions.[10]

In 2009, Xiaoyun Wang et al. presented a distinguishing attack on HMAC-MD5 without using related keys. It can distinguish an instantiation of HMAC with MD5 from an instantiation with a random function with 2⁹⁷ queries with probability 0.87.[11]

In 2011 an informational RFC 6151[12] was published to summarize security considerations in MD5 and HMAC-MD5. For HMAC-MD5 the RFC summarizes that – although the security of the MD5 hash function itself is severely compromised – the currently known _"attacks on HMAC-MD5 do not seem to indicate a practical vulnerability when used as a message authentication code"_, but it also adds that _"for a new protocol design, a ciphersuite with HMAC-MD5 should not be included"_.

In May 2011, RFC 6234 was published detailing the abstract theory and source code for SHA-based HMACS.


Examples

Here are some non-empty HMAC values, assuming 8-bit ASCII or UTF-8 encoding:

HMAC_MD5("key", "The quick brown fox jumps over the lazy dog")    = 80070713463e7749b90c2dc24911e275
HMAC_SHA1("key", "The quick brown fox jumps over the lazy dog")   = de7c9b85b8b78aa6bc8a7a36f70a90701c9db4d9
HMAC_SHA256("key", "The quick brown fox jumps over the lazy dog") = f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8


References

Notes

-   Mihir Bellare, Ran Canetti and Hugo Krawczyk, Keying Hash Functions for Message Authentication, CRYPTO 1996, pp. 1–15 (PS or PDF).
-   Mihir Bellare, Ran Canetti and Hugo Krawczyk, Message authentication using hash functions: The HMAC construction, _CryptoBytes_ 2(1), Spring 1996 (PS or PDF).


External links

-   RFC2104
-   Online HMAC Calculator for dozens of underlying hashing algorithms
-   Online HMAC Generator / Tester Tool
-   FIPS PUB 198-1, _The Keyed-Hash Message Authentication Code (HMAC)_
-   C HMAC implementation
-   Python HMAC implementation
-   Java implementation
-   HMAC-SHA-256 online tester tool

Category:Message authentication codes Category:Hashing

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