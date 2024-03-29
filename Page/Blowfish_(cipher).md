BLOWFISH is a symmetric-key block cipher, designed in 1993 by Bruce Schneier and included in a large number of cipher suites and encryption products. Blowfish provides a good encryption rate in software and no effective cryptanalysis of it has been found to date. However, the Advanced Encryption Standard (AES) now receives more attention, and Schneier recommends Twofish for modern applications.[1]

Schneier designed Blowfish as a general-purpose algorithm, intended as an alternative to the aging DES and free of the problems and constraints associated with other algorithms. At the time Blowfish was released, many other designs were proprietary, encumbered by patents or were commercial or government secrets. Schneier has stated that, "Blowfish is unpatented, and will remain so in all countries. The algorithm is hereby placed in the public domain, and can be freely used by anyone."[2]

Notable features of the design include key-dependent S-boxes and a highly complex key schedule.


The algorithm

Blowfish has a 64-bit block size and a variable key length from 32 bits up to 448 bits.[3] It is a 16-round Feistel cipher and uses large key-dependent S-boxes. In structure it resembles CAST-128, which uses fixed S-boxes. The adjacent diagram shows Blowfish's encryption routine. Each line represents 32 bits. There are five subkey-arrays: one 18-entry P-array (denoted as K in the diagram, to avoid confusion with the Plaintext) and four 256-entry S-boxes (S0, S1, S2 and S3).

Every round _r_ consists of 4 actions:

  ---------- -----------------------------------------------------------------
  ACTION 1   XOR the left half (L) of the data with the _r_ th P-array entry
  ACTION 2   Use the XORed data as input for Blowfish's F-function
  ACTION 3   XOR the F-function's output with the right half (R) of the data
  ACTION 4   Swap L and R
  ---------- -----------------------------------------------------------------

The F-function splits the 32-bit input into four eight-bit quarters, and uses the quarters as input to the S-boxes. The S-boxes accept 8-bit input and produce 32-bit output. The outputs are added modulo 2³² and XORed to produce the final 32-bit output (see image in the upper right corner).[4]

After the 16th round, undo the last swap, and XOR L with K18 and R with K17 (output whitening).

Decryption is exactly the same as encryption, except that P1, P2, …, P18 are used in the reverse order. This is not so obvious because xor is commutative and associative. A common misconception is to use inverse order of encryption as decryption algorithm (i.e. first XORing P17 and P18 to the ciphertext block, then using the P-entries in reverse order).

Blowfish's key schedule starts by initializing the P-array and S-boxes with values derived from the hexadecimal digits of pi, which contain no obvious pattern (see nothing up my sleeve number). The secret key is then, byte by byte, cycling the key if necessary, XORed with all the P-entries in order. A 64-bit all-zero block is then encrypted with the algorithm as it stands. The resultant ciphertext replaces P₁ and P₂. The same ciphertext is then encrypted again with the new subkeys, and the new ciphertext replaces P₃ and P₄. This continues, replacing the entire P-array and all the S-box entries. In all, the Blowfish encryption algorithm will run 521 times to generate all the subkeys - about 4KB of data is processed.

Because the P-array is 576 bits long, and the key bytes are XORed through all these 576 bits during the initialization, many implementations support key sizes up to 576 bits. The reason for that is a discrepancy between the original Blowfish description, which uses 448-bit key, and its reference implementation, which uses 576-bit key. The test vectors for verifying third party implementations were also produced with 576-bit keys. When asked which Blowfish version is the correct one, Bruce Schneier answered: "_The test vectors should be used to determine the one true Blowfish_".

Another opinion is that the 448 bits limit is here to ensure that every bit of every subkey depends on every bit of the key,[5] as the last four values of the P-array don't affect every bit of the ciphertext. This point should be taken in consideration for implementations with a different number of rounds, as even though it increases security against an exhaustive attack, it weakens the security guaranteed by the algorithm. And given the slow initialization of the cipher with each change of key, it is granted a natural protection against brute-force attacks, which doesn't really justify key sizes longer than 448 bits.


Blowfish in pseudocode

    uint32_t P[18];
    uint32_t S[4][256];

    uint32_t f (uint32_t x) {
       uint32_t h = S[0][x >> 24] + S[1][x >> 16 & 0xff];
       return ( h ^ S[2][x >> 8 & 0xff] ) + S[3][x & 0xff];
    }

    void encrypt (uint32_t & L, uint32_t & R) {
       for (int i=0 ; i<16 ; i += 2) {
          L ^= P[i];
          R ^= f(L);
          R ^= P[i+1];
          L ^= f(R);
       }
       L ^= P[16];
       R ^= P[17];
       swap (L, R);
    }

    void decrypt (uint32_t & L, uint32_t & R) {
       for (int i=16 ; i > 0 ; i -= 2) {
          L ^= P[i+1];
          R ^= f(L);
          R ^= P[i];
          L ^= f(R);
       }
       L ^= P[1];
       R ^= P[0];
       swap (L, R);
    }

      // ...
      // initializing the P-array and S-boxes with values derived from pi; omitted in the example
      // ...
    {
       for (int i=0 ; i<18 ; ++i)
          P[i] ^= key[i % keylen];
       uint32_t L = 0, R = 0;
       for (int i=0 ; i<18 ; i+=2) {
          encrypt (L, R);
          P[i] = L; P[i+1] = R;
       }
       for (int i=0 ; i<4 ; ++i)
          for (int j=0 ; j<256; j+=2) {
             encrypt (L, R);
             S[i][j] = L; S[i][j+1] = R;
          }
    }


Blowfish in practice

Blowfish is a fast block cipher, except when changing keys. Each new key requires pre-processing equivalent to encrypting about 4 kilobytes of text, which is very slow compared to other block ciphers. This prevents its use in certain applications, but is not a problem in others.

In one application Blowfish's slow key changing is actually a benefit: the password-hashing method used in OpenBSD uses an algorithm derived from Blowfish that makes use of the slow key schedule; the idea is that the extra computational effort required gives protection against dictionary attacks. _See_ key stretching.

Blowfish has a memory footprint of just over 4 kilobytes of RAM. This constraint is not a problem even for older desktop and laptop computers, though it does prevent use in the smallest embedded systems such as early smartcards.

Blowfish was one of the first secure block ciphers not subject to any patents and therefore freely available for anyone to use. This benefit has contributed to its popularity in cryptographic software.

bcrypt is a password hashing function which, combined with a variable number of iterations (work "cost"), exploits the expensive key setup phase of Blowfish to increase the workload and duration of hash calculations, further reducing threats from brute force attacks.

bcrypt is also the name of a cross-platform file encryption utility implementing Blowfish developed in 2002.[6][7][8][9]


Weakness and successors

Blowfish's use of a 64-bit block size (as opposed to e.g. AES's 128-bit block size) makes it vulnerable to birthday attacks, particularly in contexts like HTTPS. In 2016, the SWEET32 attack demonstrated how to leverage birthday attacks to perform plaintext recovery (i.e. decrypting ciphertext) against ciphers with a 64-bit block size.[10] The GnuPG project recommends that Blowfish not be used to encrypt files larger than 4 GB[11] due to its small block size.[12]

A reduced-round variant of Blowfish is known to be susceptible to known-plaintext attacks on reflectively weak keys. Blowfish implementations use 16 rounds of encryption, and are not susceptible to this attack.[13][14] Nevertheless, Bruce Schneier has recommended migrating to his Blowfish successor, Twofish.[15]


See also

-   Twofish
-   Threefish
-   MacGuffin
-   AES


References


External links

-

-

-

Category:Feistel ciphers Category:Free ciphers Category:Articles with example pseudocode

[1]

[2]

[3]

[4]

[5]

[6] "Bcrypt - Blowfish File Encryption" bcrypt file encryption program homepage (bcrypt.sourceforge.net)

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]