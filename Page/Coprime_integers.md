In number theory, two integers and are said to be RELATIVELY PRIME, MUTUALLY PRIME,[1] or COPRIME (also written CO-PRIME) if the only positive integer (factor) that divides both of them is 1. Consequently, any prime number that divides one does not divide the other. This is equivalent to their greatest common divisor (gcd) being 1.[2]

The numerator and denominator of a reduced fraction are coprime. As specific examples, 14 and 15 are coprime, being commonly divisible only by 1, while 14 and 21 are not coprime, because they are both divisible by 7.

Standard notations for relatively prime integers and are: and . Graham, Knuth and Patashnik have proposed that the notation a ⊥ b be used to indicate that and are relatively prime and that the term "prime" be used instead of coprime (as in is _prime_ to ).[3]

A fast way to determine whether two numbers are coprime is given by the Euclidean algorithm and its faster variants such as binary GCD algorithm or Lehmer's GCD algorithm.

The number of integers coprime to a positive integer , between 1 and , is given by Euler's totient function (or Euler's phi function) .

A set of integers can also be called COPRIME if its elements share no common positive factor except 1. A stronger condition on a set of integers is PAIRWISE COPRIME, which means that and are coprime for every pair of different integers in the set. The set } is coprime, but it is not pairwise coprime since 2 and 4 are not relatively prime.


Properties

The numbers 1 and −1 are the only integers coprime to every integer, and they are the only integers that are coprime with 0.

A number of conditions are equivalent to and being coprime:

-   No prime number divides both and .
-   There exist integers and such that (see Bézout's identity).
-   The integer has a multiplicative inverse modulo , meaning that there exists an integer such that . In ring-theoretic language, is a unit in the ring of integers modulo .
-   Every pair of congruence relations for an unknown integer , of the form and , has a solution (Chinese remainder theorem); in fact the solutions are described by a single congruence relation modulo .
-   The least common multiple of and is equal to their product , i.e. .[4]

As a consequence of the third point, if _a_ and _b_ are coprime and _br_ ≡ _bs_ (mod _a_), then _r_ ≡ _s_ (mod _a_).[5] That is, we may "divide by _b_" when working modulo _a_. Furthermore, if _b_₁ and _b_₂ are both coprime with _a_, then so is their product _b_₁_b_₂ (i.e., modulo _a_ it is a product of invertible elements, and therefore invertible);[6] this also follows from the first point by Euclid's lemma, which states that if a prime number _p_ divides a product _bc_, then _p_ divides at least one of the factors _b_, _c_.

As a consequence of the first point, if _a_ and _b_ are coprime, then so are any powers _a_^(_k_) and _b_^(_m_).

If _a_ and _b_ are coprime and _a_ divides the product _bc_, then _a_ divides _c_.[7] This can be viewed as a generalization of Euclid's lemma.

]]

The two integers _a_ and _b_ are coprime if and only if the point with coordinates (_a_, _b_) in a Cartesian coordinate system is "visible" from the origin (0,0), in the sense that there is no point with integer coordinates on the line segment between the origin and (_a_, _b_). (See figure 1.)

In a sense that can be made precise, the probability that two randomly chosen integers are coprime is 6/π² (see pi), which is about 61%. See below.

Two natural numbers _a_ and _b_ are coprime if and only if the numbers 2^(_a_) − 1 and 2^(_b_) − 1 are coprime.[8] As a generalization of this, following easily from the Euclidean algorithm in base _n_ > 1:

    gcd (n^(a)−1,n^(b)−1) = n^(gcd (a, b)) − 1.


Coprimality in sets

A set of integers _S_ = {_a_₁, _a_₂, .... _a__(_n_)} can also be called _coprime_ or _setwise coprime_ if the greatest common divisor of all the elements of the set is 1. For example, the integers 6, 10, 15 are coprime because 1 is the only positive integer that divides all of them.

If every pair in a set of integers is coprime, then the set is said to be _pairwise coprime_ (or _pairwise relatively prime_, _mutually coprime_ or _mutually relatively prime_). Pairwise coprimality is a stronger condition than setwise coprimality; every pairwise coprime finite set is also setwise coprime, but the reverse is not true. For example, the integers 4, 5, 6 are (setwise) coprime (because the only positive integer dividing _all_ of them is 1), but they are not _pairwise_ coprime (because gcd(4, 6) = 2).

The concept of pairwise coprimality is important as a hypothesis in many results in number theory, such as the Chinese remainder theorem.

It is possible for an infinite set of integers to be pairwise coprime. Notable examples include the set of all prime numbers, the set of elements in Sylvester's sequence, and the set of all Fermat numbers.


Coprimality in ring ideals

Two ideals _A_ and _B_ in the commutative ring _R_ are called COPRIME (or COMAXIMAL) if _A_ + _B_ = _R_. This generalizes Bézout's identity: with this definition, two principal ideals (_a_) and (_b_) in the ring of integers Z are coprime if and only if _a_ and _b_ are coprime. If the ideals _A_ and _B_ of _R_ are coprime, then _AB_ = _A_∩_B_; furthermore, if _C_ is a third ideal such that _A_ contains _BC_, then _A_ contains _C_. The Chinese remainder theorem can be generalized to any commutative ring, using coprime ideals.


Probability of coprimality

Given two randomly chosen integers _a_ and _b_, it is reasonable to ask how likely it is that _a_ and _b_ are coprime. In this determination, it is convenient to use the characterization that _a_ and _b_ are coprime if and only if no prime number divides both of them (see Fundamental theorem of arithmetic).

Informally, the probability that any number is divisible by a prime (or in fact any integer) p is 1/p; for example, every 7th integer is divisible by 7. Hence the probability that two numbers are both divisible by _p_ is 1/p², and the probability that at least one of them is not is 1 − 1/p². Any finite collection of divisibility events associated to distinct primes is mutually independent. For example, in the case of two events, a number is divisible by primes _p_ and _q_ if and only if it is divisible by _pq_; the latter event has probability 1/_pq_. If one makes the heuristic assumption that such reasoning can be extended to infinitely many divisibility events, one is led to guess that the probability that two numbers are coprime is given by a product over all primes,

    $\prod_{\text{prime } p} \left(1-\frac{1}{p^2}\right) = \left( \prod_{\text{prime } p} \frac{1}{1-p^{-2}} \right)^{-1} = \frac{1}{\zeta(2)} = \frac{6}{\pi^2} \approx 0.607927102 \approx 61\%.$

Here _ζ_ refers to the Riemann zeta function, the identity relating the product over primes to _ζ_(2) is an example of an Euler product, and the evaluation of _ζ_(2) as _π_²/6 is the Basel problem, solved by Leonhard Euler in 1735.

There is no way to choose a positive integer at random so that each positive integer occurs with equal probability, but statements about "randomly chosen integers" such as the ones above can be formalized by using the notion of _natural density_. For each positive integer _N_, let _P__(_N_) be the probability that two randomly chosen numbers in {1, 2, …, N} are coprime. Although _P__(_N_) will never equal 6/π² exactly, with work[9] one can show that in the limit as N → ∞, the probability P_(N) approaches 6/π².

More generally, the probability of _k_ randomly chosen integers being coprime is 1/ζ(k).


Generating all coprime pairs

All pairs of positive coprime numbers (m, n) (with m > n) can be arranged in two disjoint complete ternary trees, one tree starting from (2, 1) (for even-odd and odd-even pairs),[10] and the other tree starting from (3, 1) (for odd-odd pairs).[11] The children of each vertex (m, n) are generated as follows:

-   Branch 1: (2m − n, m)
-   Branch 2: (2m + n, m)
-   Branch 3: (m + 2n, n)

This scheme is exhaustive and non-redundant with no invalid members.


See also

-   Superpartient number


Notes


References

-   -   -   -


Further reading

-   .

Category:Number theory

[1] Eaton, James S. Treatise on Arithmetic. 1872. May be downloaded from: https://archive.org/details/atreatiseonarit05eatogoog

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] This theorem was proved by Ernesto Cesàro in 1881. For a proof, see

[10] .

[11] .