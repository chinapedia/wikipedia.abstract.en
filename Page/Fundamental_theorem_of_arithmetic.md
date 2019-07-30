with his 1801 book _Disquisitiones Arithmeticae_.[1] In this book, Gauss used the fundamental theorem for proving the law of quadratic reciprocity.[2]]] In number theory, the FUNDAMENTAL THEOREM OF ARITHMETIC, also called the UNIQUE FACTORIZATION THEOREM or the UNIQUE-PRIME-FACTORIZATION THEOREM, states that every integer greater than 1[3] either is a prime number itself or can be represented as the product of prime numbers and that, moreover, this representation is unique, up to (except for) the order of the factors.[4][5][6] For example,

    1200 = 2 × 3 × 5 = 2 × 2 × 2 × 2 × 3 × 5 × 5 = 5 × 2 × 5 × 2 × 3 × 2 × 2 = ...

The theorem says two things for this example: first, that 1200 be represented as a product of primes, and second, that no matter how this is done, there will always be exactly four 2s, one 3, two 5s, and no other primes in the product.

The requirement that the factors be prime is necessary: factorizations containing composite numbers may not be unique (e.g., 12 = 2 × 6 = 3 × 4).

This theorem is one of the main reasons why 1 is not considered a prime number: if 1 were prime, then factorization into primes would not be unique; for example,


Euclid's original version

Book VII, propositions 30, 31 and 32, and Book IX, proposition 14 of Euclid's _Elements_ are essentially the statement and proof of the fundamental theorem.

(In modern terminology: if a prime _p_ divides the product _ab_, then _p_ divides either _a_ or _b_ or both.) Proposition 30 is referred to as Euclid's lemma, and it is the key in the proof of the fundamental theorem of arithmetic.

(In modern terminology: every integer greater than one is divided evenly by some prime number.) Proposition 31 is proved directly by infinite descent.

Proposition 32 is derived from proposition 31, and proves that the decomposition is possible.

(In modern terminology: a least common multiple of several prime numbers is not a multiple of any other prime number.) Book IX, proposition 14 is derived from Book VII, proposition 30, and proves partially that the decomposition is unique – a point critically noted by André Weil.[7] Indeed, in this proposition the exponents are all equal to one, so nothing is said for the general case.

Article 16 of Gauss' _Disquisitiones Arithmeticae_ is an early modern statement and proof employing modular arithmetic.[8]


Applications

Canonical representation of a positive integer

Every positive integer _n_ > 1 can be represented in exactly one way as a product of prime powers:

$$n = p_1^{n_1}p_2^{n_2} \cdots p_k^{n_k}
= \prod_{i=1}^{k} p_i^{n_i}$$
where _p_₁ < _p_₂ < ... < _p__(k) are primes and the _n__(_i_) are positive integers. This representation is commonly extended to all positive integers, including 1, by the convention that the empty product is equal to 1 (the empty product corresponds to _k_ = 0).

This representation is called the CANONICAL REPRESENTATION[9] of _n_, or the STANDARD FORM[10][11] of _n_. For example,

    999 = 3³×37,
    1000 = 2³×5³,
    1001 = 7×11×13.

Note that factors _p_⁰ = 1 may be inserted without changing the value of _n_ (e.g., 1000 = 2³×3⁰×5³).
In fact, any positive integer can be uniquely represented as an infinite product taken over all the positive prime numbers:

$$n=2^{n_1}3^{n_2}5^{n_3}7^{n_4}\cdots=\prod_{i=1}^\infty p_i^{n_i},$$
where a finite number of the _n__(_i_) are positive integers, and the rest are zero. Allowing negative exponents provides a canonical form for positive rational numbers.

Arithmetic operations

The canonical representations of the product, greatest common divisor (GCD), and least common multiple (LCM) of two numbers _a_ and _b_ can be expressed simply in terms of the canonical representations of _a_ and _b_ themselves:

$$\begin{alignat}{2}
 a\cdot b &{}={} 2^{a_1+b_1}3^{a_2+b_2}5^{a_3+b_3}7^{a_4+b_4}\cdots
   &&{}={} \prod p_i^{a_i+b_i},\\
 \gcd(a,b) &{}={} 2^{\min(a_1,b_1)}3^{\min(a_2,b_2)}5^{\min(a_3,b_3)}7^{\min(a_4,b_4)}\cdots
   &&{}={} \prod p_i^{\min(a_i,b_i)},\\
 \operatorname{lcm}(a,b) &{}={} 2^{\max(a_1,b_1)}3^{\max(a_2,b_2)}5^{\max(a_3,b_3)}7^{\max(a_4,b_4)}\cdots
   &&{}={} \prod p_i^{\max(a_i,b_i)}.
 \end{alignat}$$

However, integer factorization, especially of large numbers, is much more difficult than computing products, GCDs, or LCMs. So these formulas have limited use in practice.

Arithmetic functions

Many arithmetic functions are defined using the canonical representation. In particular, the values of additive and multiplicative functions are determined by their values on the powers of prime numbers.


Proof

The proof uses Euclid's lemma (_Elements_ VII, 30): if a prime _p_ divides the product of two natural numbers _a_ and _b_, then _p_ divides _a_ or _p_ divides _b_.

Existence

It must be shown that every integer greater than 1 is either prime or a product of primes. First, 2 is prime. Then, by strong induction, assume this is true for all numbers greater than 1 and less than _n_. If _n_ is prime, there is nothing more to prove. Otherwise, there are integers _a_ and _b_, where _n_ = _ab_, and . By the induction hypothesis, and are products of primes. But then is a product of primes.

Uniqueness

Suppose, to the contrary, there is an integer that has two distinct prime factorizations. Let _n_ be the least such integer and write _n_ = _p_₁ _p_₂ ... _p__(_j_) = _q_₁ _q_₂ ... _q__(_k_), where each _p__(_i_) and _q__(_i_) is prime. (Note _j_ and _k_ are both at least 2.) We see _p_₁ divides _q_₁ _q_₂ ... _q__(_k_), so _p_₁ divides some _q__(_i_) by Euclid's lemma. Without loss of generality, say _p_₁ divides _q_₁. Since _p_₁ and _q_₁ are both prime, it follows that _p_₁ = _q_₁. Returning to our factorizations of _n_, we may cancel these two terms to conclude _p_₂ ... _p__(_j_) = _q_₂ ... _q__(_k_). We now have two distinct prime factorizations of some integer strictly smaller than _n_, which contradicts the minimality of _n_.

Elementary proof of uniqueness

The fundamental theorem of arithmetic can also be proved without using Euclid's lemma, as follows:

Assume that _s_ > 1 is the smallest positive integer which is the product of prime numbers in two different ways. If _s_ were prime then it would factor uniquely as itself, so there must be at least two primes in each factorization of _s_:

$$\begin{align}
s
&=p_1 p_2 \cdots p_m \\
&=q_1 q_2 \cdots q_n.
\end{align}$$

If any _p__(_i_) = _q__(_j_) then, by cancellation, _s_/_p__(_i_) = _s_/_q__(_j_) would be another positive integer, different from s, which is greater than 1 and also has two distinct factorizations. But _s_/_p__(_i_) is smaller than _s_, meaning _s_ would not actually be the smallest such integer. Therefore every _p__(_i_) must be distinct from every _q__(_j_).

Without loss of generality, take _p_₁ < _q_₁ (if this is not already the case, switch the _p_ and _q_ designations.) Consider

_t_ = (_q_₁ − _p_₁)(_q_₂⋯_q__(_n_)),

and note that 1 < _q_₂ ≤ _t_ < _s_. Therefore _t_ must have a unique prime factorization. By rearrangement we see,

$$\begin{align}
t
&= q_1(q_2 \cdots q_n) - p_1(q_2 \cdots q_n) \\
&= s - p_1(q_2 \cdots q_n) \\
&= p_1((p_2 \cdots p_m) - (q_2 \cdots q_n)).
\end{align}$$

Here _u_ = ((_p_₂ ... _p__(_m_)) - (_q_₂ ... _q__(_n_))) is positive, for if it were negative or zero then so would be its product with _p__(_1_), but that product equals _t_ which is positive. So _u_ is either 1 or factors into primes. In either case, _t_ = _p_₁_u_ yields a prime factorization of _t_, which we know to be unique, so _p_₁ appears in the prime factorization of _t_.

If (_q_₁ - _p_₁) equaled 1 then the prime factorization of _t_ would be all _q_'s, which would preclude _p_₁ from appearing. Thus (_q_₁ - _p_₁) is not 1, but is positive, so it factors into primes: (_q_₁ - _p_₁) = (_r_₁ ... _r__(_h_)). This yields a prime factorization of

_t_ = (_r_₁⋯_r__(_h_))(_q_₂⋯_q__(_n_)),

which we know is unique. Now, _p_₁ appears in the prime factorization of _t_, and it is not equal to any _q_, so it must be one of the _r_'s. That means _p_₁ is a factor of (_q_₁ - _p_₁), so there exists a positive integer _k_ such that _p_₁_k_ = (_q_₁ - _p_₁), and therefore

_p_₁(_k_ + 1) = _q_₁.

But that means _q_₁ has a proper factorization, so it is not a prime number. This contradiction shows that _s_ does not actually have two different prime factorizations. As a result, there is no smallest positive integer with multiple prime factorizations, hence all positive integers greater than 1 factor uniquely into primes.


Generalizations

The first generalization of the theorem is found in Gauss's second monograph (1832) on biquadratic reciprocity. This paper introduced what is now called the ring of Gaussian integers, the set of all complex numbers _a_ + _bi_ where _a_ and _b_ are integers. It is now denoted by ℤ[i]. He showed that this ring has the four units ±1 and ±_i_, that the non-zero, non-unit numbers fall into two classes, primes and composites, and that (except for order), the composites have unique factorization as a product of primes.[12]

Similarly, in 1844 while working on cubic reciprocity, Eisenstein introduced the ring ℤ[ω], where $\omega=\frac{-1+\sqrt{-3}}{2},$   ω³ = 1 is a cube root of unity. This is the ring of Eisenstein integers, and he proved it has the six units  ± 1,  ± ω,  ± ω² and that it has unique factorization.

However, it was also discovered that unique factorization does not always hold. An example is given by $\mathbb{Z}[\sqrt{-5}]$. In this ring one has[13]

$$6=
2\cdot 3=
(1+\sqrt{-5})(1-\sqrt{-5}).$$

Examples like this caused the notion of "prime" to be modified. In $\mathbb{Z}[\sqrt{-5}]$ it can be proven that if any of the factors above can be represented as a product, e.g., 2 = _ab_, then one of _a_ or _b_ must be a unit. This is the traditional definition of "prime". It can also be proven that none of these factors obeys Euclid's lemma; e.g., 2 divides neither (1 + ) nor (1 − ) even though it divides their product 6. In algebraic number theory 2 is called irreducible in $\mathbb{Z}[\sqrt{-5}]$ (only divisible by itself or a unit) but not prime in $\mathbb{Z}[\sqrt{-5}]$ (if it divides a product it must divide one of the factors). The mention of $\mathbb{Z}[\sqrt{-5}]$ is required because 2 is prime and irreducible in ℤ. Using these definitions it can be proven that in any integral domain a prime must be irreducible. Euclid's classical lemma can be rephrased as "in the ring of integers ℤ every irreducible is prime". This is also true in ℤ[i] and ℤ[ω], but not in $\mathbb{Z}[\sqrt{-5}].$

The rings in which factorization into irreducibles is essentially unique are called unique factorization domains. Important examples are polynomial rings over the integers or over a field, Euclidean domains and principal ideal domains.

In 1843 Kummer introduced the concept of ideal number, which was developed further by Dedekind (1876) into the modern theory of ideals, special subsets of rings. Multiplication is defined for ideals, and the rings in which they have unique factorization are called Dedekind domains.

There is a version of unique factorization for ordinals, though it requires some additional conditions to ensure uniqueness.


See also

-   Euler product formula
-   Integer factorization
-   Noetherian ring
-   Prime signature


Notes


References

The _Disquisitiones Arithmeticae_ has been translated from Latin into English and German. The German edition includes all of his papers on number theory: all the proofs of quadratic reciprocity, the determination of the sign of the Gauss sum, the investigations into biquadratic reciprocity, and unpublished notes.

-   -

The two monographs Gauss published on biquadratic reciprocity have consecutively numbered sections: the first contains §§ 1–23 and the second §§ 24–76. Footnotes referencing these are of the form "Gauss, BQ, § _n_". Footnotes referencing the _Disquisitiones Arithmeticae_ are of the form "Gauss, DA, Art. _n_".

-   -

These are in Gauss's _Werke_, Vol II, pp. 65–92 and 93–148; German translations are pp. 511–533 and 534–586 of the German edition of the _Disquisitiones_.

-   -   -   -   -   .

-   .

-   -   -   -


External links

-   Why isn’t the fundamental theorem of arithmetic obvious?
-   GCD and the Fundamental Theorem of Arithmetic at cut-the-knot.
-   PlanetMath: Proof of fundamental theorem of arithmetic
-   Fermat's Last Theorem Blog: Unique Factorization, a blog that covers the history of Fermat's Last Theorem from Diophantus of Alexandria to the proof by Andrew Wiles.
-   "Fundamental Theorem of Arithmetic" by Hector Zenil, Wolfram Demonstrations Project, 2007.
-

de:Primfaktorzerlegung#Fundamentalsatz der Arithmetik

Category:Theorems about prime numbers Category:Articles containing proofs Arithmetic

[1]

[2]

[3] Using the empty product rule one need not exclude the number 1, and the theorem can be stated as: every positive integer has unique prime factorization.

[4]

[5]

[6]

[7] : "Even in Euclid, we fail to find a general statement about the uniqueness of the factorization of an integer into primes; surely he may have been aware of it, but all he has is a statement (Eucl.IX.I4) about the l.c.m. of any number of given primes."

[8]

[9]

[10]

[11]

[12] Gauss, BQ, §§ 31–34

[13]