PRINCE is a block cipher targeting low latency, unrolled hardware implementations. It is based on the so-called FX construction.[1] Its most notable feature is the "alpha reflection": the decryption is the encryption with a related key which is very cheap to compute. Unlike most other "lightweight" ciphers, it has a small number of rounds and the layers constituting a round have low logic depth. As a result, fully unrolled implementation are able to reach much higher frequencies than AES or PRESENT. According to the authors, for the same time constraints and technologies, PRINCE uses 6-7 times less area than PRESENT-80 and 14-15 times less area than AES-128.[2]


Overview

The block size is 64 bits and the key size is 128 bits. The key is split into two 64 bit keys K₀ and K₁. The input is XORed with K₀, then is processed by a core function using K₁. The output of the core function is xored by K′₀ to produce the final output (K₀′ is a value derived from K₀). The decryption is done by exchanging K₀ and K′₀ and by feeding the core function with K₁ xored with a constant denoted alpha.

The core function contain 5 "forward" rounds, a middle round, and 5 "backward" rounds, for 11 rounds in total. The original paper mentions 12 rounds without explicitly depicting them; if the middle round is counted as two rounds (as it contains two nonlinear layers), then the total number of rounds is 12.

A forward round starts with a round constant XORed with K₁, then a nonlinear layer S, and finally a linear layer M. The "backward" rounds are exactly the inverse of the "forward" rounds except for the round constants.

The nonlinear layer is based on a single 4-bit S-box which can be chosen among the affine-equivalent of 8 specified s-boxes.

The linear layer consists of multiplication by a 64x64 matrix M′ and a shift row similar to the one in AES but operating on 4-bit nibbles rather than bytes.

M′ is constructed from 16x16 matrices M₀ and M₁ in such a way that the multiplication by M′ can be computed by four smaller multiplications, two using M₀ and two using M₁.

The middle round consists of the S layer followed by M′ followed by the S^( − 1) layer.


Cryptoanalysis

To encourage cryptoanalysis of the Prince cipher, the organizations behind it created the

The paper "Security analysis of PRINCE"[3] presents several attacks on full and round reduced variants, in particular, an attack of complexity 2^(125.1) and a related key attack requiring 2³³ data.

A generic time-memory-data tradeoff for FX constructions has been published, with an application to Prince.[4] The paper argues that the FX construction is a fine solution to improve the security of a widely deployed cipher (like DES-X did for DES) but that it is a questionable choice for new designs. It presents a tweak to the Prince cipher to strengthen it against this particular kind of attack.

A biclique cryptanalysis attack has been published on the full cipher. It is somewhat inline with the estimation of the designers since it reduces the key search space by 2^(1.28) (the original paper mentions a factor 2). [5]

The paper "Reflection Cryptanalysis of PRINCE-Like Ciphers" focuses on the alpha reflection and establishes choice criteria for the alpha constant. It shows that a poorly chosen alpha would lead to efficient attacks on the full cipher; but the value randomly chosen by the designers is not among the weak ones.[6]

Several meet-in-the-middle attacks have been published on round reduced versions.[7][8][9]

An attack in the multi-user setting can find the keys of 2 users among a set of 2³² users in time 2⁶⁵.[10]

An attack on 10 rounds with overall complexity of 118.56 bits has been published.[11]

An attack on 7 rounds with time complexity of 2⁵⁷ operations has been published.[12]

A differential fault attack has been published using 7 faulty cipher texts under random 4 bit nibble fault model.[13]

The paper "New approaches for round-reduced PRINCE cipher cryptanalysis"[14] presents boomerang attack and known-plaintext attack on reduced round versions up to 6 rounds.

In 2015 few additional attacks have been published but are not freely available.[15][16]

Most practical attacks on reduced round versions

  Number of rounds   Time                                Data                                 Method
  ------------------ ----------------------------------- ------------------------------------ --------------------------------
  4                  data-sort-value="43.4" | 2^(43.4)   33                                   Meet-in-the-Middle[17]
  4                  data-sort-value="8.5" | 5*2⁸        80                                   Integral[18]
  5                  data-sort-value="29" | 2²⁹          96                                   Integral[19]
  6                  data-sort-value="33.7" |2^(25.1)    30574                                Differential cryptanalysis[20]
  6                  data-sort-value="41" |2⁴¹           393216                               Integral[21]
  6                  data-sort-value="34" | 2³⁴          data-sort-value="2000000.32" | 2³²   Boomerang[22]
  8                  data-sort-value="50.7" | 2^(50.7)   data-sort-value="2000000.16" | 2¹⁶   Meet-in-the-Middle[23]



References


External links

-   http://eprint.iacr.org/2012/529.pdf original paper: "PRINCE – A Low-latency Block Cipher for Pervasive Computing Applications"
-   https://www.emsec.rub.de/research/research_startseite/prince-challenge The Prince challenge home page
-   https://github.com/sebastien-riou/prince-c-ref Software Implementations in C
-   https://github.com/weedegee/prince Software Implementations in Python
-   https://github.com/huljar/prince-vhdl Hardware Implementation in VHDL

Category:Block ciphers Category:Cryptography

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

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]