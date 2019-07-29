GIMPS_logo.png

The GREAT INTERNET MERSENNE PRIME SEARCH (GIMPS) is a collaborative project of volunteers who use freely available software to search for Mersenne prime numbers.

The GIMPS project was founded by George Woltman in 1996, who also wrote the software Prime95 and MPrime for the project. Scott Kurowski wrote the PrimeNet Internet server that supports the research to demonstrate Entropia-distributed computing software, a company he founded in 1997. GIMPS is registered as Mersenne Research, Inc. Kurowski is Executive Vice President and board director of Mersenne Research Inc. GIMPS is said to be one of the first large scale distributed computing projects over the Internet for research purposes.[1]

, the project has found a total of seventeen Mersenne primes, fifteen of which were the largest known prime number at their respective times of discovery. The largest known prime is 2^(82,589,933) − 1 (or M_(82,589,933) in short). This prime was discovered on December 7, 2018 by Patrick Laroche.[2]

To perform its testing, the project relies primarily on Lucas–Lehmer primality test,[3] an algorithm that is both specialized to testing Mersenne primes and particularly efficient on binary computer architectures. They also have a trial division phase, used to rapidly eliminate Mersenne numbers with small factors which make up a large proportion of candidates. Pollard's p − 1 algorithm is also used to search for larger factors.


History

The project began in early January 1996,[4][5] with a program that ran on i386 computers.[6][7] The name for the project was coined by Luther Welsh, one of its earlier searchers and the co-discoverer of the 29th Mersenne prime.[8] Within a few months, several dozen people had joined, and over a thousand by the end of the first year.[9][10] Joel Armengaud, a participant, discovered the primality of M_(1,398,269) on November 13, 1996.[11]


Status

, GIMPS has a sustained aggregate throughput of approximately 324 TeraFLOPS (or TFLOPS).[12] In November 2012, GIMPS maintained 95 TFLOPS,[13] theoretically earning the GIMPS virtual computer a rank of 330 among the TOP500 most powerful known computer systems in the world.[14] The preceding place was then held by an 'HP Cluster Platform 3000 BL460c G7' of Hewlett-Packard.[15] As of November 2014 TOP500 results, these old GIMPS numbers would no longer make the list.

Previously, this was approximately 50 TFLOPS in early 2010, 30 TFLOPS in mid-2008, 20 TFLOPS in mid-2006, and 14 TFLOPS in early 2004.


Software license

Although the GIMPS software's source code is publicly available,[16] technically it is not free software, since it has a restriction that users must abide by the project's distribution terms.[17] Specifically, if the software is used to discover a prime number with at least 100,000,000 decimal digits, the user will only win $50,000 of the $150,000 prize offered by the Electronic Frontier Foundation.[18][19]

Third-party programs for testing Mersenne numbers, such as Mlucas and Glucas (for non-x86 systems), do not have this restriction.

GIMPS also "reserves the right to change this EULA without notice and with reasonable retroactive effect_._"[20]


Primes found

All Mersenne primes are of the form 2^(_p_) − 1}}, where _p_ is a prime number itself. The smallest Mersenne prime in this table is

The first column is the rank of the Mersenne prime in the (ordered) sequence of all Mersenne primes;[21] GIMPS has found all known Mersenne primes beginning with the 35th.

  #    Discovery date      Prime M_(_p_)   Digits count   Processor
  ---- ------------------- --------------- -------------- ----------------------------------------
  35   November 13, 1996   M₁₃₉₈₂₆₉        420,921        Pentium (90 MHz)
  36   August 24, 1997     M₂₉₇₆₂₂₁        895,932        Pentium (100 MHz)
  37   January 27, 1998    M₃₀₂₁₃₇₇        909,526        Pentium (200 MHz)
  38   June 1, 1999        M₆₉₇₂₅₉₃        2,098,960      Pentium (350 MHz)
  39   November 14, 2001   M₁₃₄₆₆₉₁₇       4,053,946      AMD T-Bird (800 MHz)
  40   November 17, 2003   M₂₀₉₉₆₀₁₁       6,320,430      Pentium (2 GHz)
  41   May 15, 2004        M₂₄₀₃₆₅₈₃       7,235,733      Pentium 4 (2.4 GHz)
  42   February 18, 2005   M₂₅₉₆₄₉₅₁       7,816,230      Pentium 4 (2.4 GHz)
  43   December 15, 2005   M₃₀₄₀₂₄₅₇       9,152,052      Pentium 4 (2 GHz overclocked to 3 GHz)
  44   September 4, 2006   M₃₂₅₈₂₆₅₇       9,808,358      Pentium 4 (3 GHz)
  45   September 6, 2008   M₃₇₁₅₆₆₆₇       11,185,272     Intel Core 2 Duo (2.83 GHz)
  46   April 12, 2009      M₄₂₆₄₃₈₀₁       12,837,064     Intel Core 2 Duo (3 GHz)
  47   August 23, 2008     M₄₃₁₁₂₆₀₉       12,978,189     Intel Core 2 Duo E6600 CPU (2.4 GHz)
  48   January 25, 2013    M₅₇₈₈₅₁₆₁       17,425,170     Intel Core 2 Duo E8400 @ 3.00 GHz
  49   January 7, 2016     M₇₄₂₀₇₂₈₁       22,338,618     Intel Core i7-4790
  50   December 26, 2017   M₇₇₂₃₂₉₁₇       23,249,425     Intel Core i5-6600
  51   December 7, 2018    M₈₂₅₈₉₉₃₃       24,862,048     Intel Core i5-4590T

, 47,730,973 is the largest exponent below which all other prime exponents have been checked twice, so it is not verified whether any undiscovered Mersenne primes exist between the 47th (_M_₄₃₁₁₂₆₀₉) and the 51st (_M_₈₂₅₈₉₉₃₃) on this chart; the ranking is therefore provisional. Furthermore, 84,589,913 is the largest exponent below which all other prime exponents have been tested at least once, so all Mersenne numbers below the 51st (_M_₈₂₅₈₉₉₃₃) have been tested.[22]

The number M₈₂₅₈₉₉₃₃ has 24,862,048 decimal digits. To help visualize the size of this number, a standard word processor layout (50 lines per page, 75 digits per line) would require 6,629 pages to display it. If one were to print it out using standard printer paper, single-sided, it would require approximately 14 reams of paper.

Whenever a possible prime is reported to the server, it is verified first before it is announced. The importance of this was illustrated in 2003, when a false positive was reported to possibly be the 40th Mersenne prime but verification failed.[23]


See also

-   Berkeley Open Infrastructure for Network Computing
-   Distributed computing
-   List of distributed computing projects
-   PrimeGrid


References


External links

-   -   GIMPS Forum

Category:Great Internet Mersenne Prime Search Category:Distributed computing projects Category:Prime numbers

[1]

[2]

[3] _What are Mersenne primes? How are they useful?_ - GIMPS Home Page

[4] The Mersenne Newsletter, Issue #9. Retrieved 2011-10-02.

[5]

[6]

[7]

[8] The Mersenne Newsletter, Issue #9. Retrieved 2009-08-25.

[9]

[10]

[11]

[12]

[13]

[14]

[15] TOP500 per November 2012; HP BL460c with 95.1 TFLOP/s (R max).

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]