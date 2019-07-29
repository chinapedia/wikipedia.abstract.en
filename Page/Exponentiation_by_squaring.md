In mathematics and computer programming, EXPONENTIATING BY SQUARING is a general method for fast computation of large positive integer powers of a number, or more generally of an element of a semigroup, like a polynomial or a square matrix. Some variants are commonly referred to as SQUARE-AND-MULTIPLY algorithms or BINARY EXPONENTIATION. These can be of quite general use, for example in modular arithmetic or powering of matrices. For semigroups for which additive notation is commonly used, like elliptic curves used in cryptography, this method is also referred to as DOUBLE-AND-ADD.


Basic method

The method is based on the observation that, for a positive integer _n_, we have

$$x^n=
    \begin{cases}
                x \, ( x^{2})^{\frac{n - 1}{2}}, & \mbox{if } n \mbox{ is odd} \\
                (x^{2})^{\frac{n}{2}} , & \mbox{if } n \mbox{ is even}.
     \end{cases}$$

This method uses the bits of the exponent to determine which powers are computed.

This example shows how to compute x¹³ using this method. The exponent, 13, is 1101 in binary. The bits are used in left to right order. The exponent has 4 bits, so there are 4 iterations.

First, initialize the result to 1: r ← 1 ( = x⁰).

    Step 1) r ← r² ( = x⁰); bit 1 = 1, so compute r ← r ⋅ x ( = x¹);
    Step 2) r ← r² ( = x²); bit 2 = 1, so compute r ← r ⋅ x ( = x³);
    Step 3) r ← r² ( = x⁶); bit 3 = 0, so we are done with this step (equivalently, this corresponds to r ← r ⋅ x⁰ ( = x⁶));
    Step 4) r ← r² ( = x¹²); bit 4 = 1, so compute r ← r ⋅ x ( = x¹³).

If we write n in binary as b_(k)⋯b₀, then this is equivalent to defining a sequence r_(k + 1), …, r₀ by letting r_(k + 1) = 1 and then defining r_(i) = r_(i + 1)²x^(b_(i)) for i = k, …, 0, where r₀ will equal x^(n).

This may be implemented as the following recursive algorithm:

      Function exp_by_squaring(x, n)
        if n < 0  then return exp_by_squaring(1 / x, -n);
        else if n = 0  then return  1;
        else if n = 1  then return  x ;
        else if n is even  then return exp_by_squaring(x * x,  n / 2);
        else if n is odd  then return x * exp_by_squaring(x * x, (n - 1) / 2);

Although not tail-recursive, this algorithm may be rewritten into a tail recursive algorithm by introducing an auxiliary function:

      Function exp_by_squaring(x, n)
        exp_by_squaring2(1, x, n)
      Function exp_by_squaring2(y, x, n)
        if n < 0  then return exp_by_squaring2(y, 1 / x, - n);
        else if n = 0  then return  y;
        else if n = 1  then return  x * y;
        else if n is even  then return exp_by_squaring2(y, x * x,  n / 2);
        else if n is odd  then return exp_by_squaring2(x * y, x * x, (n - 1) / 2).

The iterative version of the algorithm also uses a bounded auxiliary space, and is given by

      Function exp_by_squaring_iterative(x, n)
        if n < 0 then
          x := 1 / x;
          n := -n;
        if n = 0 then return 1
        y := 1;
        while n > 1 do
          if n is even then
            x := x * x;
            n := n / 2;
          else
            y := x * y;
            x := x * x;
            n := (n – 1) / 2;
        return x * y


Computational complexity

A brief analysis shows that such an algorithm uses ⌊log₂n⌋ squarings and at most ⌊log₂n⌋ multiplications, where ⌊ ⌋ denotes the floor function. More precisely, the number of multiplications is one less than the number of ones present in the binary expansion of _n_. For _n_ greater than about 4 this is computationally more efficient than naively multiplying the base with itself repeatedly.

Each squaring results in approximately double the number of digits of the previous, and so, if multiplication of two _d_-digit numbers is implemented in O(_d_^(_k_)) operations for some fixed _k_, then the complexity of computing _x_^(_n_) is given by



\sum\limits_{i=0}^{O(\log n)} \big(2^i O(\log x)\big)^k = O\big((n \log x)^k\big).


2^(_k_)-ary method

This algorithm calculates the value of _x^(n)_ after expanding the exponent in base 2^(_k_). It was first proposed by Brauer in 1939. In the algorithm below we make use of the following function _f_(0) = (_k_, 0) and _f_(_m_) = (_s_, _u_), where _m_ = _u_·2^(_s_) with _u_ odd.

Algorithm:

Input: An element _x_ of _G_, a parameter _k_ > 0, a non-negative integer  and the precomputed values x³, x⁵, ..., x^(2^(k) − 1).

Output: The element _x^(n)_ in _G_

y := 1; i := l - 1
while i >= 0 do
    (s, u) := f(n_(i))
    for j := 1 to k - s do
        y := y² 
    y := y * x^(u)
    for j := 1 to s do
        y := y²
    i := i - 1
return y

For optimal efficiency, _k_ should be the smallest integer satisfying[1]

    $\log n < \frac{k(k + 1) \cdot 2^{2k}}{2^{k+1} - k - 2} + 1.$


Sliding-window method

This method is an efficient variant of the 2^(_k_)-ary method. For example, to calculate the exponent 398, which has binary expansion (110 001 110)₂, we take a window of length 3 using the 2^(_k_)-ary method algorithm and calculate 1, x³, x⁶, x¹², x²⁴, x⁴⁸, x⁴⁹, x⁹⁸, x⁹⁹, x¹⁹⁸, x¹⁹⁹, x³⁹⁸. But, we can also compute 1, x³, x⁶, x¹², x²⁴, x⁴⁸, x⁹⁶, x¹⁹², x¹⁹⁸, x¹⁹⁹, x³⁹⁸, which saves one multiplication and amounts to evaluating (110 001 110)₂

Here is the general algorithm:

Algorithm:

Input: An element _x_ of _G_, a non negative integer , a parameter _k_ > 0 and the pre-computed values x³, x⁵, ..., x^(2^(k) − 1).

Output: The element _x^(n)_ ∈ _G_.

Algorithm:

y := 1; i := l - 1
while i > -1 do
    if n_(i) = 0 then
        y := y²' i := i - 1
    else
        s := max{i - k + 1, 0}
        while n_(s) = 0 do
            s := s + 1[2]
        for h := 1 to i - s + 1 do
            y := y²
        u := (n_(i), n_(i-1), ..., n_(s))₂
        y := y * x^(u)
        i := s - 1
return y


Montgomery's ladder technique

Many algorithms for exponentiation do not provide defence against side-channel attacks. Namely, an attacker observing the sequence of squarings and multiplications can (partially) recover the exponent involved in the computation. This is a problem if the exponent should remain secret, as with many public-key cryptosystems. A technique called "Montgomery's ladder"[3] addresses this concern.

Given the binary expansion of a positive, non-zero integer _n_ = (_n__(_k_−1)..._n_₀)₂ with _n__(k−1) = 1, we can compute _x^(n)_ as follows:

x₁ = x; x₂ = x²
for i = k - 2 to 0 do
  If n_(i) = 0 then
    x₂ = x₁ * x₂; x₁ = x₁²
  else
    x₁ = x₁ * x₂; x₂ = x₂²
return x₁

The algorithm performs a fixed sequence of operations (up to log _n_): a multiplication and squaring takes place for each bit in the exponent, regardless of the bit's specific value.

This specific implementation of Montgomery's ladder is not yet protected against cache timing attacks: memory access latencies might still be observable to an attacker, as different variables are accessed depending on the value of bits of the secret exponent.


Fixed-base exponent

There are several methods which can be employed to calculate _x^(n)_ when the base is fixed and the exponent varies. As one can see, precomputations play a key role in these algorithms.

Yao's method

Yao's method is orthogonal to the -ary method where the exponent is expanded in radix and the computation is as performed in the algorithm above. Let , , , and be integers.

Let the exponent be written as

    $n = \sum_{i=0}^{w-1} n_i b_i,$

where 0 ≤ n_(i) < h for all i ∈ [0, w − 1].

Let .

Then the algorithm uses the equality

    $x^n = \prod_{i=0}^{w-1} x_i^{n_i} = \prod_{j=1}^{h-1} \bigg[\prod_{n_i=j} x_i\bigg]^j.$

Given the element of , and the exponent written in the above form, along with the precomputed values , the element is calculated using the algorithm below:

 y = 1, u = 1, j = h - 1
 while j > 0 do
   for i = 0 to w - 1 do
     if n_(i) = j then
        u = u * x^(b_(i))
   y = y * u
   j = j - 1
 return y

If we set and , then the values are simply the digits of in base . Yao's method collects in _u_ first those that appear to the highest power ; in the next round those with power are collected in as well etc. The variable _y_ is multiplied times with the initial , times with the next highest powers, and so on. The algorithm uses multiplications, and elements must be stored to compute .[4]

Euclidean method

The Euclidean method was first introduced in _Efficient exponentiation using precomputation and vector addition chains_ by P.D Rooij.

This method for computing x^(n) in group , where is a natural integer, whose algorithm is given below, is using the following equality recursively:

    x₀^(n₀) ⋅ x₁^(n₁) = (x₀⋅x₁^(q))^(n₀) ⋅ x₁^(n₁mod n₀),

where $q = \left\lfloor \frac{n_1}{n_0} \right\rfloor$. In other words, a Euclidean division of the exponent by is used to return a quotient and a rest .

Given the base element in group , and the exponent n written as in Yao's method, the element x^(n) is calculated using l precomputed values x^(b₀), ..., x^(b_(l_(i))) and then the algorithm below.

    Begin loop   
         
         
        Break loop 
         
         
    End loop;
    

The algorithm first finds the largest value among the and then the supremum within the set of _n__(_i_) \ _i_ ≠ _M_ {{)}}}}. Then it raises to the power , multiplies this value with , and then assigns the result of this computation and the value modulo .


Further applications

The same idea allows fast computation of large exponents modulo a number. Especially in cryptography, it is useful to compute powers in a ring of integers modulo _q_. It can also be used to compute integer powers in a group, using the rule

    Power(_x_, −_n_) = (Power(_x_, _n_))^(−1).

The method works in every semigroup and is often used to compute powers of matrices.

For example, the evaluation of

    13789⁷²²³⁴¹ (mod 2345) = 2029

would take a very long time and lots of storage space if the naïve method were used: compute 13789⁷²²³⁴¹, then take the remainder when divided by 2345. Even using a more effective method will take a long time: square 13789, take the remainder when divided by 2345, multiply the result by 13789, and so on. This will take less than 2log₂(722340) ≤ 40 modular multiplications.

Applying above _exp-by-squaring_ algorithm, with "*" interpreted as _x_ * _y_ = _xy_ mod 2345 (that is, a multiplication followed by a division with remainder) leads to only 27 multiplications and divisions of integers, which may all be stored in a single machine word.


Example implementations

Computation by powers of 2

This is a non-recursive implementation of the above algorithm in Ruby.

n = n - 1 is redundant when n = n / 2 implicitly rounds towards zero, as lower-level languages would do. n[0] is the rightmost bit of the binary representation of n, so if it is 1, then the number is odd, and if it is zero, then the number is even. It is also n modulo 2.

    def power(x, n)
      result = 1
      while n.nonzero?
        if n[0].nonzero?
          result *= x
          n -= 1
        end
        x *= x
        n /= 2
      end
      return result
    end

Runtime example: compute 3¹⁰

parameter x =  3
parameter n = 10
result := 1
Iteration 1
  n = 10 -> n is even
  x := x² = 3² = 9
  n := n / 2 = 5
Iteration 2
  n = 5 -> n is odd
      -> result := result * x = 1 * x = 1 * 3² = 9
         n := n - 1 = 4
  x := x² = 9² = 3⁴ = 81
  n := n / 2 = 2
Iteration 3
  n = 2 -> n is even
  x := x² = 81² = 3⁸ = 6561
  n := n / 2 = 1
Iteration 4
  n = 1 -> n is odd
      -> result := result * x = 3² * 3⁸ = 3¹⁰ = 9 * 6561 = 59049
         n := n - 1 = 0
return result

Runtime example: compute 3¹⁰

result := 3
bin := "1010"
Iteration for digit 4:
  result := result² = 3² = 9
  1010_(bin) - Digit equals "0"
  
Iteration for digit 3:
  result := result² = (3²)² = 3⁴  = 81
  1010_(bin) - Digit equals "1" --> result := result*3 = (3²)²*3 = 3⁵  = 243
Iteration for digit 2:
  result := result² = ((3²)²*3)² = 3¹⁰  = 59049
  1010_(bin) - Digit equals "0"   
return result

This example is based on the algorithm above. If calculated by hand, should go from left to right. If the start number is 1, just ignore it. Then if the next is one, square and multiply. If the next is zero, only square.

Calculation of products of powers

Exponentiation by squaring may also be used to calculate the product of 2 or more powers. If the underlying group or semigroup is commutative, then it is often possible to reduce the number of multiplications by computing the product simultaneously.

Example

The formula _a_⁷×_b_⁵ may be calculated within 3 steps:

    ((_a_)²×_a_)²×_a_ (4 multiplications for calculating _a_⁷),
    ((_b_)²)²×_b_ (3 multiplications for calculating _b_⁵),
    (_a_⁷)×(_b_⁵) (1 multiplication to calculate the product of the two),

so one gets 8 multiplications in total.

A faster solution is to calculate both powers simultaneously:

    ((_a_×_b_)²×_a_)²×_a_×_b_,

which needs only 6 multiplications in total. Note that _a_×_b_ is calculated twice; the result could be stored after the first calculation, which reduces the count of multiplication to 5.

Example with numbers:

    2⁷×3⁵ = ((2×3)²×2)²×2×3 = (6²×2)²×6 = 72²×6 = .

Calculating the powers simultaneously instead of calculating them separately always reduces the count of multiplications if at least two of the exponents are greater than 1.

Using transformation

The example above _a_⁷×_b_⁵ may also be calculated with only 5 multiplications if the expression is transformed before calculation:

    _a_⁷×_b_⁵ = _a_²×(_ab_)⁵, with _ab_ := _a_×_b_,

        _ab_ := _a_×_b_ (1 multiplication),
        _a_²×(_ab_)⁵ = ((_ab_)²×_a_)²×_ab_ (4 multiplications).

Generalization of transformation shows the following scheme:

For calculating _a^(A)_×_b^(B)_×...×_m^(M)_×_n^(N)_

1.  Define _ab_ := _a_×_b_, _abc_ = _ab_×_c_, ...
2.  Calculate the transformed expression _a_^(_A_−_B_)×_ab_^(_B_−_C_)×...×_abc_.._m_^(_M_−_N_)×_abc_.._mn_^(_N_).

Transformation before calculation often reduces the count of multiplications, but in some cases it also increases the count (see the last one of the examples below), so it may be a good idea to check the count of multiplications before using the transformed expression for calculation.

Examples

For the following expressions the count of multiplications is shown for calculating each power separately, calculating them simultaneously without transformation, and calculating them simultaneously after transformation.

+------------------------+----------------------------------------+--------------------------------------+----------------------------------+
| Example                | a⁷×b⁵×c³                               | a⁵×b⁵×c³                             | a⁷×b⁴×c¹                         |
+========================+========================================+======================================+==================================+
| separate               | [((a)²×a)²×a] × [((b)²)²×b] × [(c)²×c] | [((a)²)²×a] × [((b)²)²×b] × [(c)²×c] | [((a)²×a)²×a] × [((b)²)²] × [c]  |
|                        | (11 multiplications)                   | (10 multiplications)                 | (8 multiplications)              |
+------------------------+----------------------------------------+--------------------------------------+----------------------------------+
| simultaneous           | ((a×b)²×a×c)²×a×b×c                    | ((a×b)²×c)²×a×b×c                    | ((a×b)²×a)²×a×c                  |
|                        | (8 multiplications)                    | (7 multiplications)                  | (6 multiplications)              |
+------------------------+----------------------------------------+--------------------------------------+----------------------------------+
| transformation         | a := 2   ab := a×b   abc := ab×c       | a := 2   ab := a×b   abc := ab×c     | a := 2   ab := a×b   abc := ab×c |
|                        | (2 multiplications)                    | (2 multiplications)                  | (2 multiplications)              |
+------------------------+----------------------------------------+--------------------------------------+----------------------------------+
| calculation after that | (a×ab×abc)²×abc                        | (ab×abc)²×abc                        | (a×ab)²×a×ab×abc                 |
|                        | (4 multiplications ⇒ 6 in total)       | (3 multiplications ⇒ 5 in total)     | (5 multiplications ⇒ 7 in total) |
+------------------------+----------------------------------------+--------------------------------------+----------------------------------+


Signed-digit recoding

In certain computations it may be more efficient to allow negative coefficients and hence use the inverse of the base, provided inversion in is "fast" or has been precomputed. For example, when computing , the binary method requires multiplications and squarings. However, one could perform squarings to get and then multiply by to obtain .

To this end we define the signed-digit representation of an integer in radix as

    $n = \sum_{i=0}^{l-1} n_i b^i \text{  with  } |n_i| < b.$

_Signed binary representation_ corresponds to the particular choice and n_(i) ∈ { − 1, 0, 1}. It is denoted by (n_(l − 1)…n₀)_(s). There are several methods for computing this representation. The representation is not unique. For example, take : two distinct signed-binary representations are given by $(10\bar 1 1100\bar 1 10)_s$ and $(100\bar 1 1000\bar 1 0)_s$, where $\bar 1$ is used to denote . Since the binary method computes a multiplication for every non-zero entry in the base-2 representation of , we are interested in finding the signed-binary representation with the smallest number of non-zero entries, that is, the one with _minimal_ Hamming weight. One method of doing this is to compute the representation in non-adjacent form, or NAF for short, which is one that satisfies n_(i)n_(i + 1) = 0 for all i ≥ 0 and denoted by (n_(l − 1)…n₀)_(NAF). For example, the NAF representation of 478 is $(1000\bar 1 000\bar 1 0)_\text{NAF}$. This representation always has minimal Hamming weight. A simple algorithm to compute the NAF representation of a given integer n = (n_(l)n_(l − 1)…n₀)₂ with n_(l) = n_(l − 1) = 0 is the following:

for  to  do
  
  

Another algorithm by Koyama and Tsuruoka does not require the condition that n_(i) = n_(i + 1) = 0; it still minimizes the Hamming weight.


Alternatives and generalizations

Exponentiation by squaring can be viewed as a suboptimal addition-chain exponentiation algorithm: it computes the exponent by an addition chain consisting of repeated exponent doublings (squarings) and/or incrementing exponents by _one_ (multiplying by _x_) only. More generally, if one allows _any_ previously computed exponents to be summed (by multiplying those powers of _x_), one can sometimes perform the exponentiation using fewer multiplications (but typically using more memory). The smallest power where this occurs is for _n_ = 15:

    x¹⁵ = x × (x × [x × x²]²)² (squaring, 6 multiplies),
    x¹⁵ = x³ × ([x³]²)² (optimal addition chain, 5 multiplies if _x_³ is re-used).

In general, finding the _optimal_ addition chain for a given exponent is a hard problem, for which no efficient algorithms are known, so optimal chains are typically only used for small exponents (e.g. in compilers where the chains for small powers have been pre-tabulated). However, there are a number of heuristic algorithms that, while not being optimal, have fewer multiplications than exponentiation by squaring at the cost of additional bookkeeping work and memory usage. Regardless, the number of multiplications never grows more slowly than Θ(log _n_), so these algorithms only improve asymptotically upon exponentiation by squaring by a constant factor at best.


See also

-   Modular exponentiation
-   Vectorial addition chain
-   Montgomery reduction
-   Non-adjacent form
-   Addition chain


Notes


References

Category:Exponentials Category:Computer arithmetic algorithms Category:Computer arithmetic

[1]

[2] In this line, the loop finds the longest string of length less than or equal to _k_ ending in a non-zero value. Not all odd powers of 2 up to x^(2^(k) − 1) need be computed, and only those specifically involved in the computation need be considered.

[3]

[4]