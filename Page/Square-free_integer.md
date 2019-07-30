In mathematics, a SQUARE-FREE INTEGER (or SQUAREFREE INTEGER) is an integer which is divisible by no perfect square other than 1. That is, its prime factorization has exactly one factor for each prime that appears in it. For example, is square-free, but is not, because 18 is divisible by . The smallest positive square-free numbers are

    1, 2, 3, 5, 6, 7, 10, 11, 13, 14, 15, 17, 19, 21, 22, 23, 26, 29, 30, 31, 33, 34, 35, 37, 38, 39, ...


Square-free factors of integers

The radical of an integer is its largest square-free factor. An integer is square-free if and only if it is equal to its radical.

Any arbitrary positive integer can be represented in a unique way as the product of a powerful number (that is a integer such that is divisible by the square of every prime factor) and a square-free integer, which are coprime. The square-free factor, called the _square-free part_ of the number, is the largest square-free divisor of that is coprime with . The square-free part of an integer may be smaller than the largest square-free divisor.

Any arbitrary positive integer can be represented in a unique way as the product of a square and a square-free integer :

_n_ = _m_²_k_
In this factorization, is the largest divisor of '' such that is a divisor of .

In summary, there are three square-free factors that are naturally associated to every integer: the square-free part, the above factor , and the largest square-free factor. Each is a factor of the next one. All are easily deduced from a prime factorization: if

$$n=\prod_{i=1}^h p_i^{e_i}$$
is the prime factorization of , where p₁, …, p_(h) are distinct prime numbers, then the square-free part is

∏_(_e__(_i_) = 1)_p__(_i_),
The square-free factor such the quotient is a square is

∏_(_e__(_i_) odd)_p__(_i_),
and the largest square-free factor is

$$\prod_{i=1}^h p_i.$$

For example, if n = 75600 = 2⁴ ⋅ 3³ ⋅ 5² ⋅ 7, the square-free part is , the square-free factor such that the quotient is a square is , and the largest square-free factor is .

No algorithm is known for computing any of these square-free factors, which is faster than computing the complete prime factorization. In particular, there is no known polynomial-time algorithm for computing the square-free part of an integer, and no known polynomial-time algorithm for determining whether a number is square-free.[1] On the opposite, polynomial-time algorithms are known for primality testing.[2] This is a major difference between the arithmetic of the integers, and the arithmetic of the univariate polynomials, as polynomial-time algorithms are known for square-free factorization of polynomials (in short, the largest square-free factor of a polynomial is its quotient by the greatest common divisor of the polynomial and its formal derivative).[3]


Equivalent characterizations

A positive integer _n_ is square-free if and only if in the prime factorization of _n_, no prime factor occurs with an exponent larger than one. Another way of stating the same is that for every prime factor _p_ of _n_, the prime _p_ does not evenly divide _n_ / _p_. Also _n_ is square-free if and only if in every factorization _n_ = _ab_, the factors _a_ and _b_ are coprime. An immediate result of this definition is that all prime numbers are square-free.

A positive integer _n_ is square-free if and only if all abelian groups of order _n_ are isomorphic, which is the case if and only if any such group is cyclic. This follows from the classification of finitely generated abelian groups.

A integer _n_ is square-free if and only if the factor ring Z / _n_Z (see modular arithmetic) is a product of fields. This follows from the Chinese remainder theorem and the fact that a ring of the form Z / _k_Z is a field if and only if _k_ is a prime.

For every positive integer _n_, the set of all positive divisors of _n_ becomes a partially ordered set if we use divisibility as the order relation. This partially ordered set is always a distributive lattice. It is a Boolean algebra if and only if _n_ is square-free.

A positive integer _n_ is square-free if and only if _μ_(_n_) ≠ 0, where _μ_ denotes the Möbius function.


Dirichlet series

The absolute value of the Möbius function is the indicator function for the square-free integers – that is, is equal to 1 if is square-free, and 0 if it is not. The Dirichlet series of this indicator function is

$$\sum_{n=1}^{\infty}\frac{|\mu(n)|}{n^{s}} = \frac{\zeta(s)}{\zeta(2s)},$$
where is the Riemann zeta function. This follows from the Euler product

$$\frac{\zeta(s)}{\zeta(2s) } =\prod_p \frac{(1-p^{-2s})}{(1-p^{-s})}=\prod_p (1+p^{-s}),$$
where the products are taken over the prime numbers.


Distribution

Let _Q_(_x_) denote the number of square-free integers between 1 and _x_ ( shifting index by 1). For large _n_, 3/4 of the positive integers less than _n_ are not divisible by 4, 8/9 of these numbers are not divisible by 9, and so on. Because these ratios satisfy the multiplicative property (this follows from Chinese remainder theorem), we obtain the approximation:

$$\begin{align}Q(x) &\approx x\prod_{p\ \text{prime}} \left(1-\frac{1}{p^2}\right) = x\prod_{p\ \text{prime}} \frac{1}{(1-\frac{1}{p^2})^{-1}}\\
&\approx x\prod_{p\ \text{prime}} \frac{1}{1+\frac{1}{p^2}+\frac{1}{p^4}+\cdots} = \frac{x}{\sum_{k=1}^\infty \frac{1}{k^2}} = \frac{x}{\zeta(2)} = \frac{6x}{\pi^2}.\end{align}$$

This argument can be made rigorous for getting the estimate (using big O notation)

$$Q(x) =  \frac{6x}{\pi^2} + O\left(\sqrt{x}\right).$$

_Sketch of a proof:_ the above characterization gives

$$Q(x)=\sum_{n\leq x} \sum_{d^2\mid n} \mu(d)=\sum_{d\leq x} \mu(d)\sum_{n\leq x, d^2\mid n}1=\sum_{d\leq x} \mu(d)\left\lfloor\frac{x}{d^2}\right\rfloor;$$
observing that the last summand is zero for $d>\sqrt{x}$, it results that

$$\begin{align}Q(x)&=\sum_{d\leq\sqrt{x}} \mu(d)\left\lfloor\frac{x}{d^2}\right\rfloor
=\sum_{d\leq\sqrt{x}} \frac{x\mu(d)}{d^2}+O(\sum_{d\leq\sqrt{x}} 1)
=x\sum_{d\leq\sqrt{x}} \frac{\mu(d)}{d^2}+O(\sqrt{x})\\
&=x\sum_{d} \frac{\mu(d)}{d^2}+O\left(x\sum_{d>\sqrt{x}}\frac{1}{d^2}+\sqrt{x}\right)
=\frac{x}{\zeta(2)}+O(\sqrt{x}).
\end{align}$$

By exploiting the largest known zero-free region of the Riemann zeta function Arnold Walfisz improved the approximation to[4]

$$Q(x) = \frac{6x}{\pi^2} + O\left(x^{1/2}\exp\left(-c\frac{(\log x)^{3/5}}{(\log\log x)^{1/5}}\right)\right),$$
for some positive constant .

Under the Riemann hypothesis, the error term can be reduced to[5]

$$Q(x) = \frac{x}{\zeta(2)} + O\left(x^{17/54+\varepsilon}\right) = \frac{6}{\pi^2}x + O\left(x^{17/54+\varepsilon}\right).$$

Recently (2015) the error term has been further reduced to [6]

$$Q(x) =  \frac{6}{\pi^2}x + O\left(x^{11/35+\varepsilon}\right).$$

The asymptotic/natural density of square-free numbers is therefore

$$\lim_{x\to\infty} \frac{Q(x)}{x} = \frac{6}{\pi^2}\approx 0.6079$$

Therefore over 3/5 of the integers are square-free.

Likewise, if _Q_(_x_,_n_) denotes the number of _n_-free integers (e.g. 3-free integers being cube-free integers) between 1 and _x_, one can show

$$Q(x,n) = \frac{x}{\sum_{k=1}^\infty \frac{1}{k^n}} + O\left(\sqrt[n]{x}\right) = \frac{x}{\zeta(n)} + O\left(\sqrt[n]{x}\right).$$

Since a multiple of 4 must have a square factor 4=2², it cannot occur that four consecutive integers are all square-free. On the other hand, there exist infinitely many integers _n_ for which 4_n_ +1, 4_n_ +2, 4_n_ +3 are all square-free. Otherwise, observing that 4_n_ and at least one of 4_n_ +1, 4_n_ +2, 4_n_ +3 among four could be non-square-free for sufficiently large _n_, half of all positive integers minus finitely many must be non-square-free and therefore

$$Q(x) \leq \frac{x}{2}+C$$
for some constant _C_, contrary to the above asymptotic estimate for Q(x).

There exist sequences of consecutive non-square-free integers of arbitrary length. Indeed, if _n_ satisfies a simultaneous congruence

$$n\equiv -i\pmod{p_i^2} \qquad (i=1, 2, \ldots, l)$$
for distinct primes p₁, p₂, …, p_(l), then each n + i is divisible by _p_(i)_².[7] On the other hand, the above-mentioned estimate $Q(x) = 6x/\pi^2 + O\left(\sqrt{x}\right)$ implies that, for some constant _c_, there always exists a square-free integer between _x_ and $x+c\sqrt{x}$ for positive _x_. Moreover, an elementary argument allows us to replace $x+c\sqrt{x}$ by x + cx^(1/5)log x.[8] The ABC conjecture would allow x + x^(o(1)).[9]

Table of $Q(x),\frac{6}{\pi^2}x$ and R(x)

The table shows how Q(x) and $\frac{6}{\pi^2}x$ compare at powers of 10.

$R(x) = Q(x) -\frac{6}{\pi^2}x$ , also denoted as Δ(x).

    {| class="wikitable" style="text-align: right"

! x ! Q(x) ! $\frac{6}{\pi^2}x$ !R(x) |- | 10 | 7 | 6.1 | 0.9 |- | 10² | 61 | 60.8 | 0.2 |- | 10³ | 608 | 607.9 | 0.1 |- | 10⁴ | 6,083 | 6,079.3 | 3.7 |- | 10⁵ | 60,794 | 60,792.7 | 1.3 |- | 10⁶ | 607,926 | 607,927.1 | |- | 10⁷ | 6,079,291 | 6,079,271.0 | 20.0 |- | 10⁸ | 60,792,694 | 60,792,710.2 | |- | 10⁹ | 607,927,124 | 607,927,101.9 | 22.1 |- | 10¹⁰ | 6,079,270,942 | 6,079,271,018.5 | |- | 10¹¹ | 60,792,710,280 | 60,792,710,185.4 | 94.6 |- | 10¹² | 607,927,102,274 | 607,927,101,854.0 | 420.0 |- | 10¹³ | 6,079,271,018,282 | 6,079,271,018,540.3 | |- | 10¹⁴ | 60,792,710,185,947 | 60,792,710,185,402.7 | 544.3 |- | 10¹⁵ | 607,927,101,854,135 | 607,927,101,854,027.0 | 108.4 |- |} R(x) changes its sign infinitely often as x tends to infinity. [10]

The absolute value of R(x) is astonishingly small compared with x.


Encoding as binary numbers

If we represent a square-free number as the infinite product

$$\prod_{n=0}^\infty (p_{n+1})^{a_n}, a_n \in \lbrace 0, 1 \rbrace,\text{ and }p_n\text{ is the }n\text{th prime},$$

then we may take those a_(n) and use them as bits in a binary number with the encoding

$$\sum_{n=0}^\infty {a_n}\cdot 2^n .$$

The square-free number 42 has factorization 2 × 3 × 7, or as an infinite product 2¹ · 3¹  · 5⁰ · 7¹ · 11⁰ · 13⁰ ··· Thus the number 42 may be encoded as the binary sequence ...001011 or 11 decimal. (Note that the binary digits are reversed from the ordering in the infinite product.)

Since the prime factorization of every number is unique, so also is every binary encoding of the square-free integers.

The converse is also true. Since every positive integer has a unique binary representation it is possible to reverse this encoding so that they may be decoded into a unique square-free integer.

Again, for example, if we begin with the number 42, this time as simply a positive integer, we have its binary representation 101010. This decodes to 2⁰ · 3¹ · 5⁰ · 7¹ · 11⁰ · 13¹ = 3 × 7 × 13 = 273.

Thus binary encoding of squarefree numbers describes a bijection between the nonnegative integers and the set of positive squarefree integers.

(See sequences A019565, A048672 and A064273 in the OEIS.)


Erdős squarefree conjecture

The central binomial coefficient

    ${2n \choose n}$

is never squarefree for _n_ > 4. This was proven in 1985 for all sufficiently large integers by András Sárközy,[11] and for all integers > 4 in 1996 by Olivier Ramaré and Andrew Granville.[12]


Squarefree core

The multiplicative function core_(t)(n) is defined to map positive integers _n_ to _t_-free numbers by reducing the exponents in the prime power representation modulo _t_:

    core_(t)(p^(e)) = p^(emod t).

The value set of core₂, in particular, are the square-free integers. Their Dirichlet generating functions are

    \sum_{n\ge 1}\frac{\mathrm{core}_t(n)}{n^s}

= \frac{\zeta(ts)\zeta(s-1)}{\zeta(ts-t)}.

OEIS representatives are (_t_=2), (_t_=3) and (_t_=4).


Notes


References

-   -   -

Category:Number theory Category:Integer sequences

[1]

[2]

[3] Richards, C.: Algorithms for factoring square-free polynomials over finite fields. Master thesis, Simon Fraser University, Canada (2009)

[4] A. Walfisz. "Weylsche Exponentialsummen in der neueren Zahlentheorie" (VEB Deutscher Verlag der Wissenschaften, Berlin 1963.

[5] Jia, Chao Hua. "The distribution of square-free numbers", _Science in China Series A: Mathematics_ 36:2 (1993), pp. 154–169. Cited in Pappalardi 2003, A Survey on _k_-freeness; also see Kaneenika Sinha, "Average orders of certain arithmetical functions", _Journal of the Ramanujan Mathematical Society_ 21:3 (2006), pp. 267–277.

[6]

[7]

[8]

[9]

[10]

[11] András Sárközy. On divisors of binomial coefficients, I. J. Number Theory 20 (1985), no. 1, 70–80.

[12] Olivier Ramaré and Andrew Granville. Explicit bounds on exponential sums and the scarcity of squarefree binomial coefficients. Mathematika 43 (1996), no. 1, 73–107