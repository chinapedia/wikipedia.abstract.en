In mathematics, the GREATEST COMMON DIVISOR (GCD) of two or more integers, which are not all zero, is the largest positive integer that divides each of the integers. For example, the gcd of 8 and 12 is 4.[1][2]

The greatest common divisor is also known as the GREATEST COMMON FACTOR (GCF),[3] HIGHEST COMMON FACTOR (HCF),[4] GREATEST COMMON MEASURE (GCM),[5] or HIGHEST COMMON DIVISOR.[6]

This notion can be extended to polynomials (see Polynomial greatest common divisor) and other commutative rings (see below).


Overview

Notation

In this article we will denote the greatest common divisor of two integers _a_ and _b_ as gcd(_a_,_b_). Some authors use (_a_,_b_).[7][8][9][10]

Example

What is the greatest common divisor of 54 and 24?

The number 54 can be expressed as a product of two integers in several different ways:

    54 × 1 = 27 × 2 = 18 × 3 = 9 × 6. 

Thus the DIVISORS OF 54 are: 1, 2, 3, 6, 9, 18, 27, 54. 

Similarly, THE DIVISORS OF 24 are: 1, 2, 3, 4, 6, 8, 12, 24. 

The numbers that these two lists share in common are the COMMON DIVISORS of 54 and 24:

    1, 2, 3, 6. 

The greatest of these is 6. That is, the GREATEST COMMON DIVISOR of 54 and 24. One writes:

    gcd (54, 24) = 6. 

Coprime numbers

Two numbers are called relatively prime, or coprime, if their greatest common divisor equals 1. For example, 9 and 28 are relatively prime.

A geometric view

24x60.svg For example, a 24-by-60 rectangular area can be divided into a grid of: 1-by-1 squares, 2-by-2 squares, 3-by-3 squares, 4-by-4 squares, 6-by-6 squares or 12-by-12 squares. Therefore, 12 is the greatest common divisor of 24 and 60. A 24-by-60 rectangular area can be divided into a grid of 12-by-12 squares, with two squares along one edge (24/12 = 2) and five squares along the other (60/12 = 5).


Applications

Reducing fractions

The greatest common divisor is useful for reducing fractions to be in lowest terms. For example, gcd(42, 56) = 14, therefore,

$$\frac{42}{56}=\frac{3 \cdot 14 }{ 4 \cdot 14}=\frac{3 }{ 4}.$$

Least common multiple

The greatest common divisor can be used to find the least common multiple of two numbers when the greatest common divisor is known, using the relation,

$$\operatorname{lcm}(a,b)=\frac{|a\cdot b|}{\operatorname{gcd}(a,b)}.$$


Calculation

Using prime factorizations

Greatest common divisors can in principle be computed by determining the prime factorizations of the two numbers and comparing factors, as in the following example: to compute gcd(18, 84), we find the prime factorizations 18 = 2 · 3² and 84 = 2² · 3 · 7 and notice that the "overlap" of the two expressions is 2 · 3; so gcd(18, 84) = 6. In practice, this method is only feasible for small numbers; computing prime factorizations in general takes far too long.

Here is another concrete example, illustrated by a Venn diagram. Suppose it is desired to find the greatest common divisor of 48 and 180. First, find the prime factorizations of the two numbers:

    48 = 2 × 2 × 2 × 2 × 3,
    180 = 2 × 2 × 3 × 3 × 5.

What they share in common is two "2"s and a "3":

    least_common_multiple.svgGustavo Delfino, "Understanding the Least Common Multiple and Greatest Common Divisor", Wolfram Demonstrations Project, Published: February 1, 2013.

    Least common multiple = 2 × 2 × ( 2 × 2 × 3 ) × 3 × 5 = 720
    Greatest common divisor = 2 × 2 × 3 = 12.

Euclid's algorithm

A much more efficient method is the Euclidean algorithm, which uses a division algorithm such as long division in combination with the observation that the gcd of two numbers also divides their difference. To compute gcd(48,18), divide 48 by 18 to get a quotient of 2 and a remainder of 12. Then divide 18 by 12 to get a quotient of 1 and a remainder of 6. Then divide 12 by 6 to get a remainder of 0, which means that 6 is the gcd. Note that we ignored the quotient in each step except to notice when the remainder reached 0, signalling that we had arrived at the answer. Formally the algorithm can be described as:

gcd (_a_, 0) = _a_

gcd (_a_, _b_) = gcd (_b_, _a_ _m__o__d_ _b_)
, where

$$a \,\mathrm{mod}\, b = a - b \left\lfloor {a \over b} \right\rfloor$$
.

If the arguments are both greater than zero then the algorithm can be written in more elementary terms as follows:

gcd (_a_, _a_) = _a_
,

gcd (_a_, _b_) = gcd (_a_ − _b_, _b_) ,
if _a_ > _b_

gcd (_a_, _b_) = gcd (_a_, _b_ − _a_) ,
if _b_ > _a_

The_Great_Common_Divisor_of_62_and_36_is_2.ogv

Lehmer's GCD algorithm

Lehmer's algorithm is based on the observation that the initial quotients produced by Euclid's algorithm can be determined based on only the first few digits; this is useful for numbers that are larger than a computer word. In essence, one extracts initial digits, typically forming one or two computer words, and runs Euclid's algorithms on these smaller numbers, as long as it is guaranteed that the quotients are the same with those that would be obtained with the original numbers. Those quotients are collected into a small 2-by-2 transformation matrix (that is a matrix of single-word integers), for using them all at once for reducing the original numbers. This process is repeated until numbers have a size for which the binary algorithm (see below) is more efficient.

This algorithm improves speed, because it reduces the number of operations on very large numbers and can use the speed of hardware arithmetic for most operations. In fact, most of the quotients are very small, so a fair number of steps of the Euclidean algorithm can be collected in a 2-by-2 matrix of single-word integers. When Lehmer's algorithm encounters a too large quotient, it must fall back to one iteration of Euclidean algorithm, with a Euclidean division of large numbers.

Binary GCD algorithm

An alternative method of computing the gcd is the binary GCD algorithm which uses only subtraction and division by 2. In outline the method is as follows: Let _a_ and _b_ be the two non negative integers. Also set the integer _d_ to 0. There are five possibilities:

-   _a_ = _b_.

As gcd(_a_, _a_) = _a_, the desired gcd is _a_ × 2^(_d_) (as _a_ and _b_ are changed in the other cases, and _d_ records the number of times that _a_ and _b_ have been both divided by 2 in the next step, the gcd of the initial pair is the product of _a_ and 2^(_d_)).

-   Both _a_ and _b_ are even.

In this case 2 is a common divisor. Divide both _a_ and _b_ by 2, increment _d_ by 1 to record the number of times 2 is a common divisor and continue.

-   _a_ is even and _b_ is odd.

In this case 2 is not a common divisor. Divide _a_ by 2 and continue.

-   _a_ is odd and _b_ is even.

As in the previous case 2 is not a common divisor. Divide _b_ by 2 and continue.

-   Both _a_ and _b_ are odd.

As gcd(_a_,_b_) = gcd(_b_,_a_) and we have already considered the case _a_ = _b_, we may assume that _a_ > _b_. The number _c_ = _a_ − _b_ is smaller than _a_ yet still positive. Any number that divides _a_ and _b_ must also divide _c_ so every common divisor of _a_ and _b_ is also a common divisor of _b_ and _c_. Similarly, _a_ = _b_ + _c_ and every common divisor of _b_ and _c_ is also a common divisor of _a_ and _b_. So the two pairs (_a_, _b_) and (_b_, _c_) have the same common divisors, and thus gcd(_a_,_b_) = gcd(_b_,_c_). Moreover, as _a_ and _b_ are both odd, _c_ is even, and one may replace _c_ by _c_/2 without changing the gcd. Thus the process can be continued with the pair (_a_, _b_) replaced by the smaller numbers (_c_/2, _b_).

Each of the above steps reduces at least one of _a_ and _b_ towards 0 and so can only be repeated a finite number of times. Thus one must eventually reach the case _a_ = _b_, which is the only stopping case. Then, as quoted above, the gcd is _a_ × 2^(_d_).

This algorithm can be programmed as follows:

Input: _a_, _b_ positive integers
Output: _g_ and _d_ such that _g_ is odd and gcd(_a_, _b_) = _g_ × 2^(_d_)
    _d_ := 0
    while _a_ and _b_ are both even
        _a_ := _a_/2
        _b_ := _b_/2
        _d_ := _d_ + 1
    while _a_ ≠ _b_
        if _a_ is even then _a_ := _a_/2
        else if _b_ is even then _b_ := _b_/2
        else if _a_ > _b_ then _a_ := (_a_ – _b_)/2
        else _b_ := (_b_ – _a_)/2
    _g_ := _a_
    output _g_, _d_

Example: (_a_, _b_, _d_) = (48, 18, 0) → (24, 9, 1) → (12, 9, 1) → (6, 9, 1) → (3, 9, 1) → (3, 6, 1) → (3, 3, 1) ; the original gcd is thus the product 6 of 2^(_d_) = 2¹ and _a_= _b_= 3.

The binary GCD algorithm is particularly easy to implement on binary computers. The test for whether a number is divisible by two can be performed by testing the lowest bit in the number. Division by two can be achieved by shifting the input number by one bit. Each step of the algorithm makes at least one such shift. Subtracting two numbers smaller than _a_ and _b_ costs O(log a + log b) bit operations. Each step makes at most one such subtraction. The total number of steps is at most the sum of the numbers of bits of _a_ and _b_, hence the computational complexity is

_O_((log _a_ + log _b_)²)

The computational complexity is usually given in terms of the length of the input. Here, this length is n = log a + log b, and the complexity is thus

_O_(_n_²)
.

Other methods

Greatest_common_divisor.png

If _a_ and _b_ are both nonzero, the greatest common divisor of _a_ and _b_ can be computed by using least common multiple (lcm) of _a_ and _b_:

$$\gcd(a,b)=\frac{|a\cdot b|}{\operatorname{lcm}(a,b)}$$
,

but more commonly the lcm is computed from the gcd.

Using Thomae's function _f_,

$$\gcd(a,b) = a f\left(\frac b a\right),$$
which generalizes to _a_ and _b_ rational numbers or commensurable real numbers.

Keith Slavin has shown that for odd _a_ ≥ 1:

$$\gcd(a,b)=\log_2\prod_{k=0}^{a-1} (1+e^{-2i\pi k b/a})$$

which is a function that can be evaluated for complex _b_.[11] Wolfgang Schramm has shown that

$$\gcd(a,b)=\sum\limits_{k=1}^a \exp (2\pi ikb/a) \cdot \sum\limits_{d\left| a\right.} \frac{c_d (k)}{d}$$

is an entire function in the variable _b_ for all positive integers _a_ where _c__(_d_)(_k_) is Ramanujan's sum.[12]

Complexity

The computational complexity of the computation of greatest common divisors has been widely studied.[13] If one uses the Euclidean algorithm and the elementary algorithms for multiplication and division, the computation of the greatest common divisor of two integers of at most bits is O(n²). This means that the computation of greatest common divisor has, up to a constant factor, the same complexity as the multiplication.

However, if a fast multiplication algorithm is used, one may modify the Euclidean algorithm for improving the complexity, but the computation of a greatest common divisor becomes slower than the multiplication. More precisely, if the multiplication of two integers of bits takes a time of , then the fastest known algorithm for greatest common divisor has a complexity O(T(n)logn). This implies that the fastest known algorithm has a complexity of O(n (logn)²loglogn).

Previous complexities are valid for the usual models of computation, specifically multitape Turing machines and random-access machines.

The computation of the greatest common divisors belongs thus to the class of problems solvable in quasilinear time. _A fortiori_, the corresponding decision problem belongs to the class P of problems solvable in polynomial time. The GCD problem is not known to be in NC, and so there is no known way to parallelize it efficiently; nor is it known to be P-complete, which would imply that it is unlikely to be possible to efficiently parallelize GCD computation. Shallcross et al. showed that a related problem (EUGCD, determining the remainder sequence arising during the Euclidean algorithm) is NC-equivalent to the problem of integer linear programming with two variables; if either problem is in NC or is P-COMPLETE, the other is as well.[14] Since NC contains NL, it is also unknown whether a space-efficient algorithm for computing the GCD exists, even for nondeterministic Turing machines.

Although the problem is not known to be in NC, parallel algorithms asymptotically faster than the Euclidean algorithm exist; the fastest known deterministic algorithm is by Chor and Goldreich, which (in the CRCW-PRAM model) can solve the problem in time with processors.[15] Randomized algorithms can solve the problem in time on $\exp\left(O\left(\sqrt{n \log n}\right)\right)$ processors (note this is superpolynomial).[16]


Properties

-   Every common divisor of _a_ and _b_ is a divisor of .
-   , where _a_ and _b_ are not both zero, may be defined alternatively and equivalently as the smallest positive integer _d_ which can be written in the form , where _p_ and _q_ are integers. This expression is called Bézout's identity. Numbers _p_ and _q_ like this can be computed with the extended Euclidean algorithm.

-   , for , since any number is a divisor of 0, and the greatest divisor of _a_ is .[17][18] This is usually used as the base case in the Euclidean algorithm.

-   If _a_ divides the product _b_⋅_c_, and , then _a_/_d_ divides _c_.
-   If _m_ is a non-negative integer, then .
-   If _m_ is any integer, then .
-   If _m_ is a positive common divisor of _a_ and _b_, then .
-   The gcd is a multiplicative function in the following sense: if _a_₁ and _a_₂ are relatively prime, then . In particular, recalling that gcd is a positive integer valued function (that is, gets natural values only) we obtain that if and only if and .
-   The gcd is a commutative function: .
-   The gcd is an associative function: .
-   If none of _a_₁, _a_₂, . . . , _a__(_r_) is zero, then gcd( _a_₁, _a_₂, . . . , _a__(_r_) ) = gcd( gcd( _a_₁, _a_₂, . . . , _a__(_r_-1) ), _a__(_r_) ).[19][20]
-   is closely related to the least common multiple : we have

        .

    This formula is often used to compute least common multiples: one first computes the gcd with Euclid's algorithm and then divides the product of the given numbers by their gcd.

-   The following versions of distributivity hold true:


        .

-   If we have the unique prime factorizations of and where and , then the gcd of _a_ and _b_ is

        .

-   It is sometimes useful to define and because then the natural numbers become a complete distributive lattice with gcd as meet and lcm as join operation.[21] This extension of the definition is also compatible with the generalization for commutative rings given below.
-   In a Cartesian coordinate system, can be interpreted as the number of segments between points with integral coordinates on the straight line segment joining the points and .
-   For non-negative integers _a_ and _b_, where _a_ and _b_ are not both zero, provable by considering the Euclidean algorithm in base _n_:[22]

        .

-   An identity involving Euler's totient function:
    gcd (_a_, _b_) = ∑_(_k_|_a_ and _k_|_b_)_φ_(_k_).


Probabilities and expected value

In 1972, James E. Nymann showed that _k_ integers, chosen independently and uniformly from {_1_,...,_n_}, are coprime with probability 1/_ζ_(_k_) as _n_ goes to infinity, where _ζ_ refers to the Riemann zeta function.[23] (See coprime for a derivation.) This result was extended in 1987 to show that the probability that _k_ random integers have greatest common divisor _d_ is _d_^(_−k_)/ζ(_k_).[24]

Using this information, the expected value of the greatest common divisor function can be seen (informally) to not exist when _k_ = 2. In this case the probability that the gcd equals _d_ is _d_^(−2)/ζ(2), and since ζ(2) = π²/6 we have

    $\mathrm{E}( \mathrm{2} ) = \sum_{d=1}^\infty d \frac{6}{\pi^2 d^2} = \frac{6}{\pi^2} \sum_{d=1}^\infty \frac{1}{d}.$

This last summation is the harmonic series, which diverges. However, when _k_ ≥ 3, the expected value is well-defined, and by the above argument, it is

    $\mathrm{E}(k) = \sum_{d=1}^\infty d^{1-k} \zeta(k)^{-1} = \frac{\zeta(k-1)}{\zeta(k)}.$

For _k_ = 3, this is approximately equal to 1.3684. For _k_ = 4, it is approximately 1.1106.


In commutative rings

The notion of greatest common divisor can more generally be defined for elements of an arbitrary commutative ring, although in general there need not exist one for every pair of elements.

If is a commutative ring, and and are in , then an element of is called a _common divisor_ of and if it divides both and (that is, if there are elements and in such that _d_·_x_ = _a_ and _d_·_y_ = _b_). If is a common divisor of and , and every common divisor of and divides , then is called a _greatest common divisor_ of and _b_.

Note that with this definition, two elements and may very well have several greatest common divisors, or none at all. If is an integral domain then any two gcd's of and must be associate elements, since by definition either one must divide the other; indeed if a gcd exists, any one of its associates is a gcd as well. Existence of a gcd is not assured in arbitrary integral domains. However if is a unique factorization domain, then any two elements have a gcd, and more generally this is true in gcd domains. If is a Euclidean domain in which euclidean division is given algorithmically (as is the case for instance when _R_ = _F_[_X_] where is a field, or when is the ring of Gaussian integers), then greatest common divisors can be computed using a form of the Euclidean algorithm based on the division procedure.

The following is an example of an integral domain with two elements that do not have a gcd:

$$R = \mathbb{Z}\left[\sqrt{-3}\,\,\right],\quad a = 4 = 2\cdot 2 = \left(1+\sqrt{-3}\,\,\right)\left(1-\sqrt{-3}\,\,\right),\quad b = \left(1+\sqrt{-3}\,\,\right)\cdot 2.$$

The elements 2 and 1 +  are two maximal common divisors (that is, any common divisor which is a multiple of 2 is associated to 2, the same holds for 1 + , but they are not associated, so there is no greatest common divisor of and _b_.

Corresponding to the Bézout property we may, in any commutative ring, consider the collection of elements of the form _pa_ + _qb_, where and range over the ring. This is the ideal generated by and , and is denoted simply (_a_, _b_). In a ring all of whose ideals are principal (a principal ideal domain or PID), this ideal will be identical with the set of multiples of some ring element _d_; then this is a greatest common divisor of and _b_. But the ideal (_a_, _b_) can be useful even when there is no greatest common divisor of and _b_. (Indeed, Ernst Kummer used this ideal as a replacement for a gcd in his treatment of Fermat's Last Theorem, although he envisioned it as the set of multiples of some hypothetical, or _ideal_, ring element , whence the ring-theoretic term.)


See also

-   Bézout domain
-   Lowest common denominator


Notes


References

-   -   -   -


Further reading

-   Donald Knuth. _The Art of Computer Programming_, Volume 2: _Seminumerical Algorithms_, Third Edition. Addison-Wesley, 1997. . Section 4.5.2: The Greatest Common Divisor, pp. 333–356.
-   Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. _Introduction to Algorithms_, Second Edition. MIT Press and McGraw-Hill, 2001. . Section 31.2: Greatest common divisor, pp. 856–862.
-   Saunders MacLane and Garrett Birkhoff. _A Survey of Modern Algebra_, Fourth Edition. MacMillan Publishing Co., 1977. . 1–7: "The Euclidean Algorithm."


External links

-   Greatest Common Measure: The Last 2500 Years, by Alexander Stepanov

Category:Multiplicative functions Category:Articles containing video clips

[1]

[2]

[3] .

[4] .

[5] .

[6]

[7]

[8]

[9]

[10]  explains his choice of notation: "Many authors write (_a_,_b_) for . We do not, because we shall often use (_a_,_b_) to represent a point in the Euclidean plane."

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

[21] . Footnote 27, p. 9: "For example, the natural numbers with _gcd_ (greatest common divisor) as meet and _lcm_ (least common multiple) as join operation determine a (complete distributive) lattice." Including these definitions for 0 is necessary for this result: if one instead omits 0 from the set of natural numbers, the resulting lattice is not complete.

[22]

[23]

[24]