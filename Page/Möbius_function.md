    _For the rational functions defined on the complex numbers, see Möbius transformation._

The classical MÖBIUS FUNCTION is an important multiplicative function in number theory and combinatorics. The German mathematician August Ferdinand Möbius introduced it in 1832.[1] It is a special case of a more general object in combinatorics.


Definition

For any positive integer , define as the sum of the [[Primitive_nth_root_of_unity|primitive whenever and are coprime).

The sum of the Möbius function over all positive divisors of (including itself and 1) is zero except when 1}}:

$$\sum_{d\mid n} \mu(d) = \begin{cases}1 & \text{if } n=1, \\ 0&\text{if } n>1.\end{cases}$$

The equality above leads to the important Möbius inversion formula and is the main reason why is of relevance in the theory of multiplicative and arithmetic functions.

Other applications of in combinatorics are connected with the use of the Pólya enumeration theorem in combinatorial groups and combinatorial enumerations.

There is a formula[2] for calculating the Möbius function without directly knowing the factorization of its argument:

$$\mu(n) = \sum_{\stackrel{1\le k \le n }{ \gcd(k,\,n)=1}} e^{2\pi i \frac{k}{n}},$$

i.e. is the sum of the primitive -th roots of unity. (However, the computational complexity of this definition is at least the same as that of the Euler product definition.)

Proof of the formula for _n_ _μ_(_d_)}}

Using

$$\mu(n)=\sum_{\stackrel{1\le k \le n }{\gcd(k,\,n)=1}}e^{2\pi i \frac{k}{n}},$$

the formula

$$\sum_{d \mid n} \mu(d)=\begin{cases} 1 & \text{if } n=1, \\ 0 & \text{if } n>1\end{cases}$$

can be seen as a consequence of the fact that the th roots of unity sum to 0, since each th root of unity is a primitive th root of unity for exactly one divisor of .

However it is also possible to prove this identity from first principles. First note that it is trivially true when 1}}. Suppose then that . Then there is a bijection between the factors of for which and the subsets of the set of all prime factors of . The asserted result follows from the fact that every non-empty finite set has an equal number of odd- and even-cardinality subsets.

This last fact can be shown easily by induction on the cardinality _S_{{!}}}} of a non-empty finite set . First, if _S_{{!}} {{=}} 1}}, there is exactly one odd-cardinality subset of , namely itself, and exactly one even-cardinality subset, namely . Next, if , then divide the subsets of into two subclasses depending on whether they contain or not some fixed element in . There is an obvious bijection between these two subclasses, pairing those subsets that have the same complement relative to the subset . Also, one of these two subclasses consists of all the subsets of the set , and therefore, by the induction hypothesis, has an equal number of odd- and even-cardinality subsets. These subsets in turn correspond bijectively to the even- and odd-cardinality -containing subsets of . The inductive step follows directly from these two bijections.

A related result is that the binomial coefficients exhibit alternating entries of odd and even power which sum symmetrically.

Mertens function

In number theory another arithmetic function closely related to the Möbius function is the Mertens function, defined by

$$M(n) = \sum_{k = 1}^n \mu(k)$$

for every natural number . This function is closely linked with the positions of zeroes of the Riemann zeta function. See the article on the Mertens conjecture for more information about the connection between and the Riemann hypothesis.

From the formula

$$\mu(n) = \sum_{\stackrel{1\le k \le n }{ \gcd(k,\,n)=1}} e^{2\pi i \frac{k}{n}},$$

it follows that the Mertens function is given by:

_M_(_n_) =  − 1 + ∑_(_a_ ∈ ℱ_(_n_))_e_^(2_π__i__a_),

where is the Farey sequence of order .

This formula is used in the proof of the Franel–Landau theorem.[3]

Applications

Mathematical series

The Dirichlet series that generates the Möbius function is the (multiplicative) inverse of the Riemann zeta function; if is a complex number with real part larger than 1 we have

$$\sum_{n=1}^\infty \frac{\mu(n)}{n^s}=\frac{1}{\zeta(s)}.$$

This may be seen from its Euler product

$$\frac{1}{\zeta(s)} = \prod_{p\in \mathbb{P}}{\left(1-\frac{1}{p^s}\right)}= \left(1-\frac{1}{2^s}\right)\left(1-\frac{1}{3^s}\right)\left(1-\frac{1}{5^s}\right)\cdots$$

The Lambert series for the Möbius function is:

$$\sum_{n=1}^\infty \frac{\mu(n)q^n}{1-q^n} = q,$$
which converges for . For prime α ≥ 2, we also have

$$\sum_{n=1}^\infty \frac{\mu(\alpha n)q^n}{1-q^n} = \sum_{n \geq } q^{\alpha^n}, |q| < 1.$$

The Möbius function is a sum of the number of integer points on _n_-dimensional hyperboloids:

$$\underset{n > 1}{\mu(n)} =  - \underset{a = n}{\sum_{a \geq 2}} 1 + \underset{ab = n}{\sum_{a \geq 2} \sum_{b \geq 2}} 1 - \underset{abc = n}{\sum_{a \geq 2} \sum_{b \geq 2} \sum_{c \geq 2}} 1 + \underset{abcd = n}{\sum_{a \geq 2} \sum_{b \geq 2} \sum_{c \geq 2} \sum_{d \geq 2}} 1 - \cdots$$

Algebraic number theory

Gauss[4] proved that for a prime number the sum of its primitive roots is congruent to .

If denotes the finite field of order (where is necessarily a prime power), then the number of monic irreducible polynomials of degree over is given by:[5]

$$N(q,n)=\frac{1}{n} \sum_{d\mid n} \mu(d)q^{n/d}.$$


Average order

The average order of the Möbius function is zero. This statement is, in fact, equivalent to the prime number theorem.[6]


 sections

0}} if and only if is divisible by the square of a prime. The first numbers with this property are :

    4, 8, 9, 12, 16, 18, 20, 24, 25, 27, 28, 32, 36, 40, 44, 45, 48, 49, 50, 52, 54, 56, 60, 63,....

If is prime, then −1}}, but the converse is not true. The first non prime for which −1}} is 2 × 3 × 5}}. The first such numbers with three distinct prime factors (sphenic numbers) are:

    30, 42, 66, 70, 78, 102, 105, 110, 114, 130, 138, 154, 165, 170, 174, 182, 186, 190, 195, 222, … .

and the first such numbers with 5 distinct prime factors are:

    2310, 2730, 3570, 3990, 4290, 4830, 5610, 6006, 6090, 6270, 6510, 6630, 7410, 7590, 7770, 7854, 8610, 8778, 8970, 9030, 9282, 9570, 9690, … .


Generalizations

Incidence algebras

In combinatorics, every locally finite partially ordered set (poset) is assigned an incidence algebra. One distinguished member of this algebra is that poset's "Möbius function". The classical Möbius function treated in this article is essentially equal to the Möbius function of the set of all positive integers partially ordered by divisibility. See the article on incidence algebras for the precise definition and several examples of these general Möbius functions.

Popovici's function

Constantin Popovici[7] defined a generalised Möbius function _μ_ ∗ '' ... '' ∗ _μ_}} to be the -fold Dirichlet convolution of the Möbius function with itself. It is thus again a multiplicative function with

$$\mu_k(p^a) = (-1)^a \binom{k}{a} \$$

where the binomial coefficient is taken to be zero if . The definition may be extended to complex by reading the binomial as a polynomial in .[8]


Physics

The Möbius function also arises in the primon gas or free Riemann gas model of supersymmetry. In this theory, the fundamental particles or "primons" have energies . Under second quantization, multiparticle excitations are considered; these are given by for any natural number . This follows from the fact that the factorization of the natural numbers into primes is unique.

In the free Riemann gas, any natural number can occur, if the primons are taken as bosons. If they are taken as fermions, then the Pauli exclusion principle excludes squares. The operator that distinguishes fermions and bosons is then none other than the Möbius function .

The free Riemann gas has a number of other interesting connections to number theory, including the fact that the partition function is the Riemann zeta function. This idea underlies Alain Connes's attempted proof of the Riemann hypothesis.[9]


See also

-   Liouville function
-   Mertens function
-   Ramanujan's sum
-   Sphenic number


Footnotes

Notes

Citations


References

The _Disquisitiones Arithmeticae_ has been translated from Latin into English and German. The German edition includes all of his papers on number theory: all the proofs of quadratic reciprocity, the determination of the sign of the Gauss sum, the investigations into biquadratic reciprocity, and unpublished notes.

-   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-

Category:Multiplicative functions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]