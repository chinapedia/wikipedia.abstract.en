In number theory, INTEGER FACTORIZATION is the decomposition of a composite number into a product of smaller integers. If these integers are further restricted to prime numbers, the process is called PRIME FACTORIZATION.

When the numbers are sufficiently large, no efficient, non-quantum integer factorization algorithm is known. An effort by several researchers, concluded in 2009, to factor a 232-digit number (RSA-768) utilizing hundreds of machines took two years and the researchers estimated that a 1024-bit RSA modulus would take about a thousand times as long.[1] However, it has not been proven that no efficient algorithm exists. The presumed difficulty of this problem is at the heart of widely used algorithms in cryptography such as RSA. Many areas of mathematics and computer science have been brought to bear on the problem, including elliptic curves, algebraic number theory, and quantum computing.

Not all numbers of a given length are equally hard to factor. The hardest instances of these problems (for currently known techniques) are semiprimes, the product of two prime numbers. When they are both large, for instance more than two thousand bits long, randomly chosen, and about the same size (but not too close, e.g., to avoid efficient factorization by Fermat's factorization method), even the fastest prime factorization algorithms on the fastest computers can take enough time to make the search impractical; that is, as the number of digits of the primes being factored increases, the number of operations required to perform the factorization on any computer increases drastically.

Many cryptographic protocols are based on the difficulty of factoring large composite integers or a related problem—for example, the RSA problem. An algorithm that efficiently factors an arbitrary integer would render RSA-based public-key cryptography insecure.


Prime decomposition

PrimeDecompositionExample.svg By the fundamental theorem of arithmetic, every positive integer has a unique prime factorization. (By convention, 1 is the empty product.) If the integer is prime then it can be recognized as such in polynomial time, for example, by the AKS primality test. If composite however, the theorem gives no insight into how to obtain the factors.

Given a general algorithm for integer factorization, any integer can be factored into its constituent prime factors by repeated application of this algorithm. The situation is more complicated with special-purpose factorization algorithms, whose benefits may not be realized as well or even at all with the factors produced during decomposition. For example, if where are very large primes, trial division will quickly produce the factors 3 and 19 but will take _p_ divisions to find the next factor. As a contrasting example, if _N_ is the product of the primes 13729, 1372933, and 18848997161, where , Fermat's factorization method will begin with which immediately yields and hence the factors and . While these are easily recognized as composite and prime respectively, Fermat's method will take much longer to factor the composite number because the starting value of for _a_ is nowhere near 1372933.


Current state of the art

Among the _b_-bit numbers, the most difficult to factor in practice using existing algorithms are those that are products of two primes of similar size. For this reason, these are the integers used in cryptographic applications. The largest such semiprime yet factored was RSA-768, a 768-bit number with 232 decimal digits, on December 12, 2009.[2] This factorization was a collaboration of several research institutions, spanning two years and taking the equivalent of almost 2000 years of computing on a single-core 2.2 GHz AMD Opteron. Like all recent factorization records, this factorization was completed with a highly optimized implementation of the general number field sieve run on hundreds of machines.

Difficulty and complexity

No algorithm has been published that can factor all integers in polynomial time, i.e., that can factor _b_-bit numbers in time O(_b_^(_k_)) for some constant _k_. Neither the existence nor non-existence of such algorithms has been proved, but it is generally suspected that they do not exist and hence that the problem is not in class P.[3][4] The problem is clearly in class NP but has not been proved to be or not be NP-complete. It is generally suspected not to be NP-complete.[5]

There are published algorithms that are faster than O((1 + _ε_)^(_b_)) for all positive _ε_, i.e., sub-exponential. The best published asymptotic running time is for the general number field sieve (GNFS) algorithm, which, for a _b_-bit number _n_, is

    $O\left(\exp\sqrt[3]{\frac{64}{9} b (\log b)^2}\right).$

For current computers, GNFS is the best published algorithm for large _n_ (more than about 400 bits). For a quantum computer, however, Peter Shor discovered an algorithm in 1994 that solves it in polynomial time. This will have significant implications for cryptography if quantum computation becomes scalable. Shor's algorithm takes only time and O(_b_) space on _b_-bit number inputs. In 2001, Shor's algorithm was implemented for the first time, by using NMR techniques on molecules that provide 7 qubits.[6]

When discussing what complexity classes the integer factorization problem falls into, it is necessary to distinguish two slightly different versions of the problem:

-   The function problem version: given an integer _N_, find an integer _d_ with that divides _N_ (or conclude that _N_ is prime). This problem is trivially in FNP, and it is not known whether it lies in FP or not. This is the version solved by practical implementations.
-   The decision problem version: given an integer _N_ and an integer _M_ with , does _N_ have a factor _d_ with ? This version is useful because most well studied complexity classes are defined as classes of decision problems, not function problems.

For , the decision problem is equivalent to asking whether _N_ is not prime.

An algorithm for either version provides one for the other. Repeated application of the function problem (applied to _d_ and _N_/_d_, and their factors, if needed) will eventually provide either a factor of _N_ no larger than _M_ or a factorization into primes all greater than _M_. All known algorithms for the decision problem work in this way. Hence it is only of theoretical interest that, with at most log _N_ queries using an algorithm for the decision problem, one would isolate a factor of _N_ (or prove it prime) by binary search.

It is not known exactly which complexity classes contain the decision version of the integer factorization problem. It is known to be in both NP and co-NP. This is because both "yes" and "no" answers can be verified in polynomial time. An answer of "yes" can be certified by exhibiting a factorization with . An answer of "no" can be certified by exhibiting the factorization of _N_ into distinct primes, all larger than _M_. We can verify their primality using the AKS primality test and that their product is _N_ by multiplication. The fundamental theorem of arithmetic guarantees that there is only one possible string that will be accepted (providing the factors are required to be listed in order), which shows that the problem is in both UP and CO-UP.[7] It is known to be in BQP because of Shor's algorithm. It is suspected to be outside of all three of the complexity classes P, NP-complete, and co-NP-complete. It is therefore a candidate for the NP-intermediate complexity class. If it could be proved that it is in either NP-complete or co-NP-complete, that would imply NP = co-NP. That would be a very surprising result, and therefore integer factorization is widely suspected to be outside both of those classes. Many people have tried to find classical polynomial-time algorithms for it and failed, and therefore it is widely suspected to be outside P.

In contrast, the decision problem "is _N_ a composite number?" (or equivalently: "is _N_ a prime number?") appears to be much easier than the problem of actually finding the factors of _N_. Specifically, the former can be solved in polynomial time (in the number _n_ of digits of _N_) with the AKS primality test. In addition, there are a number of probabilistic algorithms that can test primality very quickly in practice if one is willing to accept the vanishingly small possibility of error. The ease of primality testing is a crucial part of the RSA algorithm, as it is necessary to find large prime numbers to start with.


Factoring algorithms

Special-purpose

A special-purpose factoring algorithm's running time depends on the properties of the number to be factored or on one of its unknown factors: size, special form, etc. Exactly what the running time depends on varies between algorithms.

An important subclass of special-purpose factoring algorithms is the _Category 1_ or _First Category_ algorithms, whose running time depends on the size of smallest prime factor. Given an integer of unknown form, these methods are usually applied before general-purpose methods to remove small factors.[8] For example, trial division is a Category 1 algorithm.

-   Trial division
-   Wheel factorization
-   Pollard's rho algorithm
-   Algebraic-group factorisation algorithms, among which are Pollard's _p_ − 1 algorithm, Williams' _p_ + 1 algorithm, and Lenstra elliptic curve factorization
-   Fermat's factorization method
-   Euler's factorization method
-   Special number field sieve

General-purpose

A general-purpose factoring algorithm, also known as a _Category 2_, _Second Category_, or _Kraitchik family_ algorithm (after Maurice Kraitchik),[9] has a running time which depends solely on the size of the integer to be factored. This is the type of algorithm used to factor RSA numbers. Most general-purpose factoring algorithms are based on the congruence of squares method.

-   Dixon's algorithm
-   Continued fraction factorization (CFRAC)
-   Quadratic sieve
-   Rational sieve
-   General number field sieve
-   Shanks's square forms factorization (SQUFOF)

Other notable algorithms

-   Shor's algorithm, for quantum computers


Heuristic running time

In number theory, there are many integer factoring algorithms that heuristically have expected running time

$$L_n\left[\tfrac12,1+o(1)\right]=e^{(1+o(1))\sqrt{(\log n)(\log \log n)}}$$

in big O and L-notation. Some examples of those algorithms are the elliptic curve method and the quadratic sieve. Another such algorithm is the CLASS GROUP RELATIONS METHOD proposed by Schnorr,[10] Seysen,[11] and Lenstra,[12] that is proved under the assumption of the Generalized Riemann Hypothesis (GRH).


Rigorous running time

The Schnorr-Seysen-Lenstra probabilistic algorithm has been rigorously proven by Lenstra and Pomerance[13] to have expected running time $L_n\left[\tfrac12,1+o(1)\right]$ by replacing the GRH assumption with the use of multipliers. The algorithm uses the class group of positive binary quadratic forms of discriminant Δ denoted by _G__(Δ). _G__(Δ) is the set of triples of integers (_a_, _b_, _c_) in which those integers are relative prime.

Schnorr-Seysen-Lenstra Algorithm

Given an integer _n_ that will be factored, where _n_ is an odd positive integer greater than a certain constant. In this factoring algorithm the discriminant Δ is chosen as a multiple of _n_, , where _d_ is some positive multiplier. The algorithm expects that for one _d_ there exist enough smooth forms in _G__(Δ). Lenstra and Pomerance show that the choice of _d_ can be restricted to a small set to guarantee the smoothness result.

Denote by _P__(Δ) the set of all primes _q_ with Kronecker symbol $\left(\tfrac{\Delta}{q}\right)=1$. By constructing a set of generators of _G__(Δ) and prime forms _f__(q) of _G__(Δ) with _q_ in _P__(Δ) a sequence of relations between the set of generators and _f__(q) are produced. The size of _q_ can be bounded by c₀(log |Δ|)² for some constant c₀.

The relation that will be used is a relation between the product of powers that is equal to the neutral element of _G__(Δ). These relations will be used to construct a so-called ambiguous form of _G__(Δ), which is an element of _G__(Δ) of order dividing 2. By calculating the corresponding factorization of Δ and by taking a gcd, this ambiguous form provides the complete prime factorization of _n_. This algorithm has these main steps:

Let _n_ be the number to be factored.

1.  Let Δ be a negative integer with , where _d_ is a multiplier and Δ is the negative discriminant of some quadratic form.
2.  Take the _t_ first primes p₁ = 2, p₂ = 3, p₃ = 5, …, p_(t), for some t ∈ ℕ.
3.  Let f_(q) be a random prime form of _G__(Δ) with $\left(\tfrac{\Delta}{q}\right)=1$.
4.  Find a generating set _X_ of _G__(Δ)
5.  Collect a sequence of relations between set _X_ and } satisfying: (∏_(x ∈ X)x^(r(x))).(∏_(q ∈ P_(Δ))f_(q)^(t(q))) = 1
6.  Construct an ambiguous form that is an element _f_ ∈ _G__(Δ) of order dividing 2 to obtain a coprime factorization of the largest odd divisor of Δ in which Δ =  − 4ac or a(a − 4c) or (b − 2a)(b + 2a)
7.  If the ambiguous form provides a factorization of _n_ then stop, otherwise find another ambiguous form until the factorization of _n_ is found. In order to prevent useless ambiguous forms from generating, build up the 2-Sylow group Sll₂(Δ) of _G_(Δ).

To obtain an algorithm for factoring any positive integer, it is necessary to add a few steps to this algorithm such as trial division, and the Jacobi sum test.

Expected running time

The algorithm as stated is a probabilistic algorithm as it makes random choices. Its expected running time is at most $L_n\left[\tfrac12,1+o(1)\right]$.[14]


See also

-   Bach's algorithm for generating random numbers with their factorizations
-   Canonical representation of a positive integer
-   Factorization
-   Multiplicative partition
-   Partition (number theory) – a way of writing a number as a sum of positive integers.


Notes


References

-   Chapter 5: Exponential Factoring Algorithms, pp. 191–226. Chapter 6: Subexponential Factoring Algorithms, pp. 227–284. Section 7.4: Elliptic curve method, pp. 301–313.

-   Donald Knuth. _The Art of Computer Programming_, Volume 2: _Seminumerical Algorithms_, Third Edition. Addison-Wesley, 1997. . Section 4.5.4: Factoring into Primes, pp. 379–417.
-   .

-


External links

-   msieve - SIQS and NFS - has helped complete some of the largest public factorizations known
-   Richard P. Brent, "Recent Progress and Prospects for Integer Factorisation Algorithms", _Computing and Combinatorics"_, 2000, pp. 3–22. download
-   Manindra Agrawal, Neeraj Kayal, Nitin Saxena, "PRIMES is in P." Annals of Mathematics 160(2): 781-793 (2004). August 2005 version PDF
-   Eric W. Weisstein, “RSA-640 Factored” _MathWorld Headline News_, November 8, 2005

Integer_factorization_algorithms Category:Computational hardness assumptions Category:Unsolved problems in computer science

[1]

[2]

[3]

[4]

[5] . See in particular p. 583.

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]