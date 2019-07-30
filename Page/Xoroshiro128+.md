Main article: Xorshift#xoroshiro128+

XOROSHIRO128+ (named after its operations: XOR, rotate, shift, rotate) is a pseudorandom number generator intended as a successor to xorshift+. Instead of perpetuating Marsaglia's tradition of xorshift as a basic operation, xoroshiro128+ uses a shift/rotate-based linear transformation designed by Sebastiano Vigna in collaboration with David Blackman. The result is a significant improvement in speed (well below a nanosecond per integer) and a significant improvement in statistical quality.[1]


Statistical Quality

The authors of xoroshiro128+ acknowledge that it does not pass all statistical tests, stating

      /* This is xoroshiro128+ 1.0, our best and fastest small-state generator
         for floating-point numbers. We suggest to use its upper bits for
         floating-point generation, as it is slightly faster than
         xoroshiro128**. It passes all tests we are aware of except for the four
         lower bits, which might fail linearity tests (and just those), so if
         low linear complexity is not considered an issue (as it is usually the
         case) it can be used to generate 64-bit outputs, too; moreover, this
         generator has a very mild Hamming-weight dependency making our test
         (http://prng.di.unimi.it/hwd.php) fail after 5 TB of output; we believe
         this slight bias cannot affect any application. If you are concerned,
         use xoroshiro128** or xoshiro256+.

         We suggest to use a sign test to extract a random Boolean value, and
         right shifts to extract subsets of bits.

         The state must be seeded so that it is not everywhere zero. If you have
         a 64-bit seed, we suggest to seed a splitmix64 generator and use its
         output to fill s.

         NOTE: the parameters (a=24, b=16, b=37) of this version give slightly
         better results in our test than the 2016 version (a=55, b=14, c=36).
      */

  [2]

These claims about not passing tests can be confirmed by running PractRand on the input, resulting in output like that shown below:

    RNG_test using PractRand version 0.93
    RNG = RNG_stdin64, seed = 0xfac83126
    test set = normal, folding = standard (64 bit)

    rng=RNG_stdin64, seed=0xfac83126
    length= 128 megabytes (2^27 bytes), time= 2.1 seconds
      Test Name                         Raw       Processed     Evaluation
      [Low1/64]BRank(12):256(2)         R= +3748  p~=  3e-1129    FAIL !!!!!!!!
      [Low1/64]BRank(12):384(1)         R= +5405  p~=  3e-1628    FAIL !!!!!!!!
      ...and 146 test result(s) without anomalies

Acknowledging the weak low order bit, the authors go on to say:

  We suggest to use a sign test to extract a random Boolean value[3]

Thus, programmers should prefer the highest bits (e.g., making a heads/tails by writing random_number < 0 rather than random_number & 1). It must be noted, though, that the same test is failed by the Mersenne Twister, WELL, etc., so the issue is mainly of academic concern.

As stated in the comments, the generator fails a Hamming-weight dependency test developed by Blackman and Vigna[4] after 8 TB of data. As a comparison, for some choice of parameters the Mersenne Twister at 607 bits fails the same test after less than a gigabyte of data.


Quotations

David Meister, who implemented it in Clojure, made some valuable statements:

  "This is a clojure implementation of the xoroshiro128+ PRNG described at http://xoroshiro.di.unimi.it. The algorithm has been shown to be fast and produce superior statistical results to many PRNGs shipped with languages, including Java. The statistical results have been verified in both PractRand and TestU01 by the authors. xoroshiro128+ is designed to be the successor to xorshift128+, currently used in the JavaScript engines of Chrome, Firefox and Safari. Both xorshift128+ and xoroshiro128+ have a period of 2¹²⁸ but xoroshiro128+ is benchmarked by the authors as 20% faster and with 20% fewer failures in BigCrush than its predecessor."[5]

Matt Gallagher, in his study on random number generators in Swift made the following conclusion:

  It looks like Xoroshiro is the best general purpose algorithm currently available. Low memory (just 128 bits of storage), extremely high performance (1.2 nanoseconds per 64-bit number, after subtracting baseline overheads) and very well distributed (beating other algorithms on a range of automated tests). Mersenne Twister might still be a better choice for highly conservative projects unwilling to switch to such a new algorithm, but the current generation of statistically tested algorithms brings a baseline of assurance from the outset that previous generations lacked.[6]


Related generators

-   xoroshiro128** prevents linear artifacts in the low bits
-   xoshiro256+ has 256 bits of state allowing for more parallelism
-   xoshiro256** — "our all-purpose, rock-solid generator"

The generators ending with + have weak low bits, so they are recommended for floating point number generation, using only the 53 most significant bits.


Implementations

-   Original C source code implementation
-   Java Implementation
-   Clojure implementation
-   Swift implementation in this file and comparison with other RNG's here: "Random number generators in Swift".
-   Fortran implementation
-   C# Implementation
-   Another C# Implementation that also implements other generators listed in the "Related generators" section.


See also

-   List of Pseudorandom Number Generators
-   Pseudorandom Number Generator
-   Xorshift
-   Mersenne Twister
-   WELL


References


External links

-

Category:Pseudorandom number generators

[1]

[2]

[3]

[4]

[5]

[6]