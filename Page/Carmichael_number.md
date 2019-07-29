In number theory, a CARMICHAEL NUMBER is a composite number n which satisfies the modular arithmetic congruence relation:

$$b^{n-1}\equiv 1\pmod{n}$$
for all integers b which are relatively prime to n.[1] They are named for Robert Carmichael. The Carmichael numbers are the subset _K_₁ of the Knödel numbers.

Equivalently, a Carmichael number is a composite number n for which

$$b^n\equiv b\pmod{n}$$
for all integers b.[2]


Overview

Fermat's little theorem states that if _p_ is a prime number, then for any integer _b_, the number _b_ − _b_ is an integer multiple of _p_. Carmichael numbers are composite numbers which have this property. Carmichael numbers are also called Fermat pseudoprimes or ABSOLUTE FERMAT PSEUDOPRIMES. A Carmichael number will pass a Fermat primality test to every base _b_ relatively prime to the number, even though it is not actually prime. This makes tests based on Fermat's Little Theorem less effective than strong probable prime tests such as the Baillie–PSW primality test and the Miller–Rabin primality test.

However, no Carmichael number is either an Euler–Jacobi pseudoprime or a strong pseudoprime to every base relatively prime to it[3] so, in theory, either an Euler or a strong probable prime test could prove that a Carmichael number is, in fact, composite.

Arnault[4] gives a 397-digit Carmichael number N that is a _strong_ pseudoprime to all _prime_ bases less than 307:

_N_ = _p_ ⋅ (313(_p_ − 1) + 1) ⋅ (353(_p_ − 1) + 1)
where

_p_=
29674495668685510550154174642905332730771991799853043350995075531276838753171770199594238596428121188033664754218345562493168782883
is a 131-digit prime. p is the smallest prime factor of N, so this Carmichael number is also a (not necessarily strong) pseudoprime to all bases less than p.

As numbers become larger, Carmichael numbers become increasingly rare. For example, there are 20,138,200 Carmichael numbers between 1 and 10²¹ (approximately one in 50 trillion (5·10¹³) numbers).[5]

Korselt's criterion

An alternative and equivalent definition of Carmichael numbers is given by KORSELT'S CRITERION.

    THEOREM (A. Korselt 1899): A positive composite integer n is a Carmichael number if and only if n is square-free, and for all prime divisors p of n, it is true that p − 1 ∣ n − 1.

It follows from this theorem that all Carmichael numbers are odd, since any even composite number that is square-free (and hence has only one prime factor of two) will have at least one odd prime factor, and thus p − 1 ∣ n − 1 results in an even dividing an odd, a contradiction. (The oddness of Carmichael numbers also follows from the fact that  − 1 is a Fermat witness for any even composite number.) From the criterion it also follows that Carmichael numbers are cyclic.[6][7] Additionally, it follows that there are no Carmichael numbers with exactly two prime factors.


Discovery

Korselt was the first who observed the basic properties of Carmichael numbers, but he did not give any examples. In 1910, Carmichael[8] found the first and smallest such number, 561, which explains the name "Carmichael number".

Vaclav_Simerka.jpg listed the first seven Carmichael numbers]] That 561 is a Carmichael number can be seen with Korselt's criterion. Indeed, 561 = 3 ⋅ 11 ⋅ 17 is square-free and 2 ∣ 560, 10 ∣ 560 and 16 ∣ 560.

The next six Carmichael numbers are :

1105 = 5 ⋅ 13 ⋅ 17  (4 ∣ 1104; 12 ∣ 1104; 16 ∣ 1104)

1729 = 7 ⋅ 13 ⋅ 19  (6 ∣ 1728; 12 ∣ 1728; 18 ∣ 1728)

2465 = 5 ⋅ 17 ⋅ 29  (4 ∣ 2464; 16 ∣ 2464; 28 ∣ 2464)

2821 = 7 ⋅ 13 ⋅ 31  (6 ∣ 2820; 12 ∣ 2820; 30 ∣ 2820)

6601 = 7 ⋅ 23 ⋅ 41  (6 ∣ 6600; 22 ∣ 6600; 40 ∣ 6600)

8911 = 7 ⋅ 19 ⋅ 67  (6 ∣ 8910; 18 ∣ 8910; 66 ∣ 8910).

These first seven Carmichael numbers, from 561 to 8911, were all found by the Czech mathematician Václav Šimerka in 1885[9] (thus preceding not just Carmichael but also Korselt, although Šimerka did not find anything like Korselt's criterion).[10] His work, however, remained unnoticed.

J. Chernick[11] proved a theorem in 1939 which can be used to construct a subset of Carmichael numbers. The number (6k + 1)(12k + 1)(18k + 1) is a Carmichael number if its three factors are all prime. Whether this formula produces an infinite quantity of Carmichael numbers is an open question (though it is implied by Dickson's conjecture).

Paul Erdős heuristically argued there should be infinitely many Carmichael numbers. In 1994 W. R. (Red) Alford, Andrew Granville and Carl Pomerance used a bound on Olson's constant to show that there really do exist infinitely many Carmichael numbers. Specifically, they showed that for sufficiently large n, there are at least n^(2/7) Carmichael numbers between 1 and n.[12]

Löh and Niebuhr in 1992 found some very large Carmichael numbers, including one with 1,101,518 factors and over 16 million digits. This has been improved to 10,333,229,505 prime factors and 295,486,761,787 digits,[13] so the largest known Carmichael number is much greater than the largest known prime.


Properties

Factorizations

Carmichael numbers have at least three positive prime factors. For some fixed _R_, there are infinitely many Carmichael numbers with exactly _R_ factors; in fact, there are infinitely many such R.[14]

The first Carmichael numbers with k = 3, 4, 5, … prime factors are :

  _k_    
  ----- -------------------------------------------------------------
  3     561 = 3 ⋅ 11 ⋅ 17 
  4     41041 = 7 ⋅ 11 ⋅ 13 ⋅ 41 
  5     825265 = 5 ⋅ 7 ⋅ 17 ⋅ 19 ⋅ 73 
  6     321197185 = 5 ⋅ 19 ⋅ 23 ⋅ 29 ⋅ 37 ⋅ 137 
  7     5394826801 = 7 ⋅ 13 ⋅ 17 ⋅ 23 ⋅ 31 ⋅ 67 ⋅ 73 
  8     232250619601 = 7 ⋅ 11 ⋅ 13 ⋅ 17 ⋅ 31 ⋅ 37 ⋅ 73 ⋅ 163 
  9     9746347772161 = 7 ⋅ 11 ⋅ 13 ⋅ 17 ⋅ 19 ⋅ 31 ⋅ 37 ⋅ 41 ⋅ 641 

The first Carmichael numbers with 4 prime factors are :

  _i_    
  ----- -----------------------------
  1     41041 = 7 ⋅ 11 ⋅ 13 ⋅ 41 
  2     62745 = 3 ⋅ 5 ⋅ 47 ⋅ 89 
  3     63973 = 7 ⋅ 13 ⋅ 19 ⋅ 37 
  4     75361 = 11 ⋅ 13 ⋅ 17 ⋅ 31 
  5     101101 = 7 ⋅ 11 ⋅ 13 ⋅ 101 
  6     126217 = 7 ⋅ 13 ⋅ 19 ⋅ 73 
  7     172081 = 7 ⋅ 13 ⋅ 31 ⋅ 61 
  8     188461 = 7 ⋅ 13 ⋅ 19 ⋅ 109 
  9     278545 = 5 ⋅ 17 ⋅ 29 ⋅ 113 
  10    340561 = 13 ⋅ 17 ⋅ 23 ⋅ 67 

The second Carmichael number (1105) can be expressed as the sum of two squares in more ways than any smaller number. The third Carmichael number (1729) is the Hardy-Ramanujan Number: the smallest number that can be expressed as the sum of two cubes (of positive numbers) in two different ways.

Distribution

Let C(X) denote the number of Carmichael numbers less than or equal to X. The distribution of Carmichael numbers by powers of 10 :[15]

  n           1   2   3   4   5    6    7     8     9     10     11     12     13      14      15       16       17       18        19        20        21
  ----------- --- --- --- --- ---- ---- ----- ----- ----- ------ ------ ------ ------- ------- -------- -------- -------- --------- --------- --------- ----------
  C(10^(n))   0   0   1   7   16   43   105   255   646   1547   3605   8241   19279   44706   105212   246683   585355   1401644   3381806   8220777   20138200

In 1953, Knödel proved the upper bound:

$$C(X) < X \exp\left({-k_1 \left( \log X \log \log X\right)^\frac{1}{2}}\right)$$

for some constant k₁.

In 1956, Erdős improved the bound to

$$C(X) < X \exp\left(\frac{-k_2 \log X \log \log \log X}{\log \log X}\right)$$

for some constant k₂.[16] He further gave a heuristic argument suggesting that this upper bound should be close to the true growth rate of C(X).

In the other direction, Alford, Granville and Pomerance proved in 1994[17] that for sufficiently large _X_,

$$C(X) > X^\frac{2}{7}.$$

In 2005, this bound was further improved by Harman[18] to

_C_(_X_) > _X_^(0.332)

who subsequently improved the exponent to 0.7039 ⋅ 0.4736 = 0.33336704 > 1/3. [19]

Regarding the asymptotic distribution of Carmichael numbers, there have been several conjectures. In 1956, Erdős[20] conjectured that there were X^(1 − o(1)) Carmichael numbers for _X_ sufficiently large. In 1981, Pomerance[21] sharpened Erdős' heuristic arguments to conjecture that there are at least

_X_ ⋅ _L_(_X_)^( − 1 + _o_(1))
Carmichael numbers up to X, where $L(x) = \exp{ \left( \frac{\log x \log\log\log x} {\log\log x} \right) }$.

However, inside current computational ranges (such as the counts of Carmichael numbers performed by Pinch[22] up to 10²¹), these conjectures are not yet borne out by the data.


Generalizations

The notion of Carmichael number generalizes to a Carmichael ideal in any number field _K_. For any nonzero prime ideal 𝔭 in 𝒪_(K), we have $\alpha^{{\rm N}(\mathfrak p)} \equiv \alpha \bmod {\mathfrak p}$ for all α in 𝒪_(K), where ${\rm N}(\mathfrak p)$ is the norm of the ideal 𝔭. (This generalizes Fermat's little theorem, that m^(p) ≡ mmod p for all integers _m_ when _p_ is prime.) Call a nonzero ideal 𝔞 in 𝒪_(K) Carmichael if it is not a prime ideal and $\alpha^{{\rm N}(\mathfrak a)} \equiv \alpha \bmod {\mathfrak a}$ for all α ∈ 𝒪_(K), where ${\rm N}(\mathfrak a)$ is the norm of the ideal 𝔞. When _K_ is Q, the ideal 𝔞 is principal, and if we let _a_ be its positive generator then the ideal 𝔞 = (a) is Carmichael exactly when _a_ is a Carmichael number in the usual sense.

When _K_ is larger than the rationals it is easy to write down Carmichael ideals in 𝒪_(K): for any prime number _p_ that splits completely in _K_, the principal ideal p𝒪_(K) is a Carmichael ideal. Since infinitely many prime numbers split completely in any number field, there are infinitely many Carmichael ideals in 𝒪_(K). For example, if _p_ is any prime number that is 1 mod 4, the ideal (_p_) in the Gaussian integers Z[_i_] is a Carmichael ideal.

Both prime and Carmichael numbers satisfy the following equality:

$$\gcd \left(\sum_{x=1}^{n-1} x^{n-1}, n\right)=1$$


Higher-order Carmichael numbers

Carmichael numbers can be generalized using concepts of abstract algebra.

The above definition states that a composite integer _n_ is Carmichael precisely when the _n_th-power-raising function _p__(_n_) from the ring Z_(_n_) of integers modulo _n_ to itself is the identity function. The identity is the only Z_(_n_)-algebra endomorphism on Z_(_n_) so we can restate the definition as asking that _p__(_n_) be an algebra endomorphism of Z_(_n_). As above, _p__(_n_) satisfies the same property whenever _n_ is prime.

The _n_th-power-raising function _p__(_n_) is also defined on any Z_(_n_)-algebra A. A theorem states that _n_ is prime if and only if all such functions _p__(_n_) are algebra endomorphisms.

In-between these two conditions lies the definition of CARMICHAEL NUMBER OF ORDER M for any positive integer _m_ as any composite number _n_ such that _p__(_n_) is an endomorphism on every Z_(_n_)-algebra that can be generated as Z_(_n_)-module by _m_ elements. Carmichael numbers of order 1 are just the ordinary Carmichael numbers.

An order 2 Carmichael number

According to Howe, 17 · 31 · 41 · 43 · 89 · 97 · 167 · 331 is an order 2 Carmichael number. This product is equal to 443,372,888,629,441.[23]

Properties

Korselt's criterion can be generalized to higher-order Carmichael numbers, as shown by Howe.

A heuristic argument, given in the same paper, appears to suggest that there are infinitely many Carmichael numbers of order _m_, for any _m_. However, not a single Carmichael number of order 3 or above is known.


Notes


References

-   -   -   -   -   -   -


External links

-   -   Table of Carmichael numbers
-   Tables of Carmichael numbers below 10¹⁸
-   -   -   Final Answers Modular Arithmetic

Category:Integer sequences Category:Modular arithmetic Category:Pseudoprimes

[1]

[2]

[3]  Lehmer proved that no Carmichael number is an Euler-Jacobi pseudoprime to every base relatively prime to it. He used the term _strong pseudoprime_, but the terminology has changed since then. Strong pseudoprimes are a subset of Euler-Jacobi pseudoprimes. Therefore, no Carmichael number is a strong pseudoprime to every base relatively prime to it.

[4]

[5]

[6] Carmichael Multiples of Odd Cyclic Numbers "Any divisor of a Carmichael number must be an odd cyclic number"

[7] Proof sketch: If n is square-free but not cyclic, p_(i) ∣ p_(j) − 1 for two prime factors p_(i) and p_(j) of n. But if n satisfies Korselt then p_(j) − 1 ∣ n − 1, so by transitivity of the "divides" relation p_(i) ∣ n − 1. But p_(i) is also a factor of n, a contradiction.

[8]

[9]

[10]

[11]

[12]

[13] Shallue et al., .

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