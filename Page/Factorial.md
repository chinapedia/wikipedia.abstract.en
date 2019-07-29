+-------+-----+
|       |     |
+=======+=====+
| 0     | 1   |
+-------+-----+
| 1     | 1   |
+-------+-----+
| 2     | 2   |
+-------+-----+
| 3     | 6   |
+-------+-----+
| 4     | 24  |
+-------+-----+
| 5     | 120 |
+-------+-----+
| 6     | 720 |
+-------+-----+
| 7     |     |
+-------+-----+
| 8     |     |
+-------+-----+
| 9     |     |
+-------+-----+
| 10    |     |
+-------+-----+
| 11    |     |
+-------+-----+
| 12    |     |
+-------+-----+
| 13    |     |
+-------+-----+
| 14    |     |
+-------+-----+
| 15    |     |
+-------+-----+
| 16    |     |
+-------+-----+
| 17    |     |
+-------+-----+
| 18    |     |
+-------+-----+
| 19    |     |
+-------+-----+
| 20    |     |
+-------+-----+
| 25    |     |
+-------+-----+
| 50    |     |
+-------+-----+
| 70    |     |
+-------+-----+
| 100   |     |
+-------+-----+
| 450   |     |
+-------+-----+
|       |     |
+-------+-----+
|       |     |
+-------+-----+
|       |     |
+-------+-----+
|       |     |
+-------+-----+
|       |     |
+-------+-----+
|       |     |
+-------+-----+
|       |     |
+-------+-----+
| {{val | 10  |
+-------+-----+

: Selected members of the factorial sequence ; values specified in scientific notation are rounded to the displayed precision

In mathematics, the FACTORIAL of a positive integer , denoted by , is the product of all positive integers less than or equal to :

_n_! = _n_ × (_n_ − 1) × (_n_ − 2) × (_n_ − 3) × ... × 3 × 2 × 1 .
For example,

5! = 5 × 4 × 3 × 2 × 1 = 120 .

The value of 0! is 1, according to the convention for an empty product.

The factorial operation is encountered in many areas of mathematics, notably in combinatorics, algebra, and mathematical analysis. Its most basic use counts the possible distinct sequences – the permutations – of distinct objects: there are .

The factorial function can also be extended to non-integer arguments while retaining its most important properties. This involves using gamma function to define . However, this extension does not work when x is a negative integer.


History

Factorials were used to count permutations at least as early as the 12th century, by Indian scholars.[1] In 1677, Fabian Stedman described factorials as applied to change ringing, a musical art involving the ringing of many tuned bells. After describing a recursive approach, Stedman gives a statement of a factorial (using the language of the original): The notation was introduced by the French mathematician Christian Kramp in 1808.[2]


Definition

The factorial function is defined by the product

_n_! = 1 ⋅ 2 ⋅ 3⋯(_n_ − 2) ⋅ (_n_ − 1) ⋅ _n_,

for integer . This may be written in the Pi product notation as

$$n!  = \prod_{i = 1}^n i.$$

From these formulas, one may derive the recurrence relation

_n_! = _n_ ⋅ (_n_ − 1)!.

For example, one has

    \begin{align}

5! &=  5 \cdot  4! \\
6! &=  6 \cdot  5! \\

50! &= 50 \cdot 49! \end{align} and so on.

Factorial of zero

The factorial of 0, 0!, is 1.

There are several motivations for this definition:

-   For , the definition of as a product involves the product of no numbers at all, and so is an example of the broader convention that the product of no factors is equal to the multiplicative identity (see empty product).
-   There is exactly one permutation of zero objects (with nothing to permute, the only rearrangement is to do nothing).
-   It makes many identities in combinatorics valid for all applicable sizes. The number of ways to choose 0 elements from the empty set is given by the binomial coefficient

$$\binom{0}{0} = \frac{0!}{0!0!} = 1$$
.

    More generally, the number of ways to choose all elements among a set of is
    $$\binom{n}{n} = \frac{n!}{n!0!} = 1$$
    .

-   It allows for the compact expression of many formulae, such as the exponential function, as a power series:



        $e^x = \sum_{n = 0}^\infty \frac{x^n}{n!}.$

-   It extends the recurrence relation to 0.

Factorial of a non-integer

The factorial function can also be defined for non-integer values using more advanced mathematics (the gamma function ), detailed in the section below. This more generalized definition is used by advanced calculators and mathematical software such as Maple, Mathematica, or APL.


Applications

Although the factorial function has its roots in combinatorics, formulas involving factorials occur in many areas of mathematics.

-   There are different ways of arranging distinct objects into a sequence, the permutations of those objects.[3][4]
-   Often factorials appear in the denominator of a formula to account for the fact that ordering is to be ignored. A classical example is counting -combinations (subsets of elements) from a set with elements. One can obtain such a combination by choosing a -permutation: successively selecting and removing one element of the set, times, for a total of

$$(n-0)(n-1)(n-2)\cdots\left(n-(k-1)\right) = \tfrac{n!}{(n-k)!} = n^{\underline k}$$

    possibilities. This however produces the -combinations in a particular order that one wishes to ignore; since each -combination is obtained in different ways, the correct number of -combinations is
    $$\frac{n(n-1)(n-2)\cdots(n-k+1)}{k(k-1)(k-2)\cdots 1} = \frac{n^{\underline k}}{k!}=  \frac{n!}{(n-k)!k!} = \binom {n}{k}.$$

    This number is known[5] as the binomial coefficient, because it is also the coefficient of in . The term $n^{\underline k}$ is often called a falling factorial (pronounced "_n_ to the falling _k_").

-   Factorials occur in algebra for various reasons, such as via the already mentioned coefficients of the binomial formula, or through averaging over permutations for symmetrization of certain operations.
-   Factorials also turn up in calculus; for example, they occur in the denominators of the terms of Taylor's formula,[6] where they are used as compensation terms due to the th derivative of being equivalent to .
-   Factorials are also used extensively in probability theory[7] and number theory (see below).
-   Factorials can be useful to facilitate expression manipulation. For instance the number of -permutations of can be written as

$$n^{\underline k}=\frac{n!}{(n-k)!}\,;$$

    while this is inefficient as a means to compute that number, it may serve to prove a symmetry property[8][9] of binomial coefficients:
    $$\binom nk=\frac{n^{\underline k}}{k!}=\frac{n!}{(n-k)!k!} = \frac{n^{\underline{n-k}}}{(n-k)!} = \binom n{n-k}\,.$$

-   The factorial function can be shown, using the power rule, to be

$$n! = D^n\,x^n = \frac{d^n}{dx^n}\,x^n$$

    where is Euler's notation for the th derivative of .[10]


Rate of growth and approximations for large __

upright=1.35 As grows, the factorial increases faster than all polynomials and exponential functions (but slower than double exponential functions) in .

Most approximations for _n_! are based on approximating its natural logarithm

$$\ln n! = \sum_{x=1}^n \ln x \,.$$

The graph of the function ln _n_!}} is shown in the figure on the right. It looks approximately linear for all reasonable values of , but this intuition is false. We get one of the simplest approximations for by bounding the sum with an integral from above and below as follows:

$$\int_1^n \ln x \, dx \leq \sum_{x=1}^n \ln x \leq \int_0^n \ln (x+1) \, dx$$

which gives us the estimate

$$n\ln\left(\frac{n}{e}\right)+1 \leq \ln n! \leq (n+1)\ln\left( \frac{n+1}{e} \right) + 1 \,.$$

Hence (see [[Big_O_notation#Family_of_Bachmann–Landau_notations|Big \right) \,.


Computation

If efficiency is not a concern, computing factorials is trivial from an algorithmic point of view: successively multiplying a variable initialized to 1 by the integers up to (if any) will compute , provided the result fits in the variable. In functional languages, the recursive definition is often implemented directly to illustrate recursive functions.

The main practical difficulty in computing factorials is the size of the result. To assure that the exact result will fit for all legal values of even the smallest commonly used integral type (8-bit signed integers) would require more than 700 bits, so no reasonable specification of a factorial function using fixed-size types can avoid questions of overflow. The values 12! and 20! are the largest factorials that can be stored in, respectively, the 32-bit and 64-bit integers commonly used in personal computers, however many languages support variable length integer types capable of calculating very large values.[11] Floating-point representation of an approximated result allows going a bit further, but this also remains quite limited by possible overflow. Most calculators use scientific notation with 2-digit decimal exponents, and the largest factorial that fits is then 69!, because . Other implementations (such as computer software such as spreadsheet programs) can often handle larger values.

Most software applications will compute small factorials by direct multiplication or table lookup. Larger factorial values can be approximated using Stirling's formula. Wolfram Alpha can calculate exact results for the ceiling function and floor function applied to the binary, natural and common logarithm of for values of up to , and up to for the integers.

If the exact values of large factorials are needed, they can be computed using arbitrary-precision arithmetic. Instead of doing the sequential multiplications , a program can partition the sequence into two parts, whose products are roughly the same size, and multiply them using a divide-and-conquer method. This is often more efficient.[12]

The asymptotically best efficiency is obtained by computing from its prime factorization. As documented by Peter Borwein, prime factorization allows to be computed in time , provided that a fast multiplication algorithm is used (for example, the Schönhage–Strassen algorithm).[13] Peter Luschny presents source code and benchmarks for several efficient factorial algorithms, with or without the use of a prime sieve.[14]


Number theory

Factorials have many applications in number theory. In particular, is necessarily divisible by all prime numbers up to and including . As a consequence, is a composite number if and only if

$$(n-1)! \equiv 0 \pmod n.$$

A stronger result is Wilson's theorem, which states that

$$(p-1)! \equiv -1 \pmod p$$
if and only if is prime.[15][16]

Legendre's formula gives the multiplicity of the prime occurring in the prime factorization of as

$$\sum_{i=1}^\infty \left \lfloor \frac n {p^i} \right \rfloor$$
or, equivalently,

$$\frac{n - s_p(n)}{p - 1},$$
where denotes the sum of the standard base- digits of .

Adding 1 to a factorial yields a number that is divisible by a prime larger than . This fact can be used to prove Euclid's theorem that the number of primes is infinite. Primes of the form are called factorial primes.


Series of reciprocals

The reciprocals of factorials produce a convergent series whose sum is [[e_(mathematical_constant)|the exponential base , is meromorphic on the complex numbers, and is log-convex on the positive real axis. A similar statement holds for the pi function as well, using the _n_Π(_n_ − 1)}} functional equation.

However, there exist complex functions that are probably simpler in the sense of analytic function theory and which interpolate the factorial values. For example, Hadamard's 'gamma' function which, unlike the gamma function, is an entire function.[17]

Euler also developed a convergent product approximation for the non-integer factorials, which can be seen to be equivalent to the formula for the gamma function above:

$$\begin{align}
n! = \Pi(n) &= \prod_{k = 1}^\infty \left(\frac{k+1}{k}\right)^n\!\!\frac{k}{n+k} \\
&= \left[ \left(\frac{2}{1}\right)^n\frac{1}{n+1}\right]\left[ \left(\frac{3}{2}\right)^n\frac{2}{n+2}\right]\left[ \left(\frac{4}{3}\right)^n\frac{3}{n+3}\right]\cdots \end{align}$$

However, this formula does not provide a practical means of computing the pi function or the gamma function, as its rate of convergence is slow.

Applications of the gamma function

The volume of an [[Dimension|{\Gamma\left(\frac{n}{2}+1\right)}R^n\,.

Factorial in the complex plane

upright=1.8 Representation through the gamma function allows evaluation of factorial of complex argument. Equilines of amplitude and phase of factorial are shown in figure. Let

_f_ = _ρ__e_^(_i__φ_) = (_x_ + _i__y_)! = _Γ_(_x_ + _i__y_ + 1) .
Several levels of constant modulus (amplitude) and constant phase are shown. The grid covers the range , , with unit steps. The scratched line shows the level ±π}}.

Thin lines show intermediate levels of constant modulus and constant phase. At the poles at every negative integer, phase and amplitude are not defined. Equilines are dense in vicinity of singularities along negative integer values of the argument.

For , the Taylor expansions can be used:

$$z!=\sum_{n=0}^\infty g_n z^n\,.$$
The first coefficients of this expansion are

+---+---+---------------+
|   |   | approximation |
+===+===+===============+
| 0 | 1 | 1             |
+---+---+---------------+
| 1 |   |               |
+---+---+---------------+
| 2 |   |               |
+---+---+---------------+
| 3 |   |               |
+---+---+---------------+

where is the Euler–Mascheroni constant and is the Riemann zeta function. Computer algebra systems such as SageMath can generate many terms of this expansion.

Approximations of the factorial

For the large values of the argument, the factorial can be approximated through the integral of the digamma function, using the continued fraction representation. This approach is due to T. J. Stieltjes (1894). Writing _e_^(_P_(_z_))}} where is

    $P(z) = p(z) + \frac{\ln 2\pi}{2} - z + \left(z+\frac{1}{2}\right)\ln(z) \,,$

Stieltjes gave a continued fraction for :



p(z)=\cfrac{a_0}{z+ \cfrac{a_1}{z+ \cfrac{a_2}{z+ \cfrac{a_3}{z+\ddots}}}} The first few coefficients are[18]

    {| class="wikitable"

|- ! ! |- | 0 | |- | 1 | |- | 2 | |- | 3 | |- | 4 | |- | 5 | |- | 6 | |}

There is a misconception that _P_(_z_)}} or _P_(_z_)}} for any complex . Indeed, the relation through the logarithm is valid only for a specific range of values of in the vicinity of the real axis, where . The larger the real part of the argument, the smaller the imaginary part should be. However, the inverse relation, _e_^(_P_(_z_))}}, is valid for the whole complex plane apart from 0}}. The convergence is poor in the vicinity of the negative part of the real axis; it is difficult to have good convergence of any approximation in the vicinity of the singularities. When or , the six coefficients above are sufficient for the evaluation of the factorial with complex double precision. For higher precision more coefficients can be computed by a rational QD scheme (Rutishauser's QD algorithm).[19]

Non-extendability to negative integers

The relation _n_ × (_n_ − 1)!}} allows one to compute the factorial for an integer given the factorial for a smaller integer. The relation can be inverted so that one can compute the factorial for an integer given the factorial for a larger integer:

$$(n-1)! = \frac{n!}{n} .$$

Note, however, that this recursion does not permit us to compute the factorial of a negative integer; use of the formula to compute (−1)! would require a division by zero, and thus blocks us from computing a factorial value for every negative integer. Similarly, the gamma function is not defined for zero or negative integers, though it is defined for all other complex numbers.


Factorial-like products and functions

There are several other integer sequences similar to the factorial that are used in mathematics:

Double factorial

The product of all the odd integers up to some odd positive integer is called the DOUBLE FACTORIAL of , and denoted by .[20] That is,

$$(2k-1)!! = \prod_{i=1}^k (2i-1) = \frac{(2k)!}{2^k k!} = \frac {_{2k}P_k} {2^k} = \frac {\left(2k\right)^{\underline k}} {2^k}\,.$$
For example, .

The sequence of double factorials for 1, 3, 5, 7,...}} starts as

    1, 3, 15, 105, 945, , ,...

Double factorial notation may be used to simplify the expression of certain trigonometric integrals,[21] to provide an expression for the values of the gamma function at half-integer arguments and the volume of hyperspheres,[22] and to solve many counting problems in combinatorics including counting binary trees with labeled leaves and perfect matchings in complete graphs.[23][24]

Multifactorials

A common related notation is to use multiple exclamation points to denote a MULTIFACTORIAL, the product of integers in steps of two (), three (), or more (see generalizations of the double factorial). The double factorial is the most commonly used variant, but one can similarly define the triple factorial () and so on. One can define the -tuple factorial, denoted by , recursively for positive integers as

$$n!^{(k)} = \begin{cases}
n & \text{if } 0 < n \leq k \\
n\left({(n-k)!}^{(k)}\right) & \text{if } n > k
\end{cases}.$$
In addition, similarly to {{=}} 1}}, one can define:

_n_!^((_k_)) = 1 if  − _k_ < _n_ ≤ 0

For sufficiently large , the ordinary single factorial function is expanded through the multifactorial functions as follows:

$$\begin{align}
n! & = n!! \cdot (n-1)!!\,, &n &\geq 1 \\ [5px]
   & = n!!! \cdot (n-1)!!! \cdot (n-2)!!!\,, &n &\geq 2 \\ [5px]
   & = \prod_{i=0}^{k-1} (n-i)!^{(k)},\quad \text{ for } k \in \mathbb{Z}^{+}\,, &n &\geq k-1\,.
\end{align}$$

In the same way that is not defined for negative integers, and is not defined for negative even integers, is not defined for negative integers divisible by .

Primorial

The PRIMORIAL () is similar to the factorial, but with the product taken only over the prime numbers. For example the primorial of 11 is

11# = 11 × 7 × 5 × 3 × 2 = 2310

In general, For the __th prime number __

$p_n\# \equiv \prod_{k=1}^n p_k$

where __ is the __th prime number.

Superfactorial

Neil Sloane and Simon Plouffe defined a SUPERFACTORIAL in The Encyclopedia of Integer Sequences (Academic Press, 1995) to be the product of the first factorials. So the superfactorial of 4 is

sf (4) = 1! × 2! × 3! × 4! = 288 .

In general

$$\begin{align}
\operatorname{sf}(n) =\prod_{k=1}^n k! &=\prod_{k=1}^n k^{n-k+1}\\
 & =1^n\cdot2^{n-1}\cdot3^{n-2}\cdots(n-1)^2\cdot n^1\,.
\end{align}$$

Equivalently, the superfactorial is given by the formula

sf (_n_) = ∏_(0 ≤ _i_ < _j_ ≤ _n_)(_j_ − _i_)
which is the determinant of a Vandermonde matrix.

The sequence of superfactorials starts (from 0}}) as

    1, 1, 2, 12, 288, , , ,...

By this definition, we can define the -superfactorial of (denoted ) as:

$$\operatorname{sf}_k(n) = \begin{cases}
n & \text{if } k=0\\
\prod_{r=1}^n \operatorname{sf}_{k-1}(r) & \text{if } k \ge 1
\end{cases}$$

The 2-superfactorials of are

    1, 1, 2, 24, , , , ,...

The 0-superfactorial of is .

Pickover’s superfactorial

In his 1995 book _Keys to Infinity_, Clifford Pickover defined a different function that he called the superfactorial. It is defined by

$$n\$\equiv \begin{matrix} \underbrace{ n!^{{n!}^{{\cdot}^{{\cdot}^{{\cdot}^{n!}}}}}} \\ n! \mbox{ copies of } n! \end{matrix}.$$
This sequence of superfactorials starts

$$\begin{align}
1\$&=1\,,\\
2\$&=2^2=4\,,\\
3\$&=6^{6^{6^{6^{6^6}}}}\,.
\end{align}$$
(Here, as is usual for compound exponentiation, the grouping is understood to be from right to left: _a_^((_b^(c)_))}}.)

This operation may also be expressed as the tetration

_n_$ = ^(_n_!)(_n_!) ,
or using Knuth's up-arrow notation as

_n_$ = (_n_!) ↑  ↑ (_n_!) .

Hyperfactorial

Occasionally the HYPERFACTORIAL of _n_ is considered. It is written as and defined by

$$\begin{align}
H(n)  &=\prod_{k=1}^n k^k \\
& =1^1\cdot2^2\cdot3^3\cdots(n-1)^{n-1}\cdot n^n.
\end{align}$$

For 1, 2, 3, 4,...}} the values of are 1, 4, 108, ,... .

The asymptotic growth rate is

    $H(n) \sim A n^\frac{6n^2 + 6n + 1}{12} e^{-\frac{n^2}{4}}$

where = 1.2824... is the Glaisher–Kinkelin constant.[25] ≈  is already almost equal to a googol, and ≈  is almost of the same magnitude as the Shannon number, the theoretical number of possible chess games. Compared to the Pickover definition of the superfactorial, the hyperfactorial grows relatively slowly.

The hyperfactorial function can be generalized to complex numbers in a similar way as the factorial function. The resulting function is called the {{mvar.


See also

-   Alternating factorial
-   Bhargava factorial
-   Digamma function
-   Exponential factorial
-   Factorial number system
-   Factorial prime
-   Factorion
-   List of factorial and binomial topics
-   Pochhammer symbol, which gives the falling or rising factorial
-   Subfactorial
-   Trailing zeros of factorial
-   Triangular number, the additive analogue of factorial


References

Sources

-   -   -   -   -   The publisher is given as "W.S." who may have been William Smith, possibly acting as agent for the Society of College Youths, to which society the "Dedicatory" is addressed.

Further reading

-   -


External links

-   -   -

Category:Combinatorics Category:Gamma and related functions Category:Factorial and binomial topics Category:Unary operations

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

[20] .

[21]

[22] .

[23]

[24] .

[25]