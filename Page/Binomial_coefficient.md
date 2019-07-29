Pascal's_triangle_5.svg, in which each entry is the sum of the two immediately above.]] binomial_theorem_visualisation.svg

In mathematics, the BINOMIAL COEFFICIENTS are the positive integers that occur as coefficients in the binomial theorem. Commonly, a binomial coefficient is indexed by a pair of integers and is written $\tbinom{n}{k}.$ It is the coefficient of the term in the polynomial expansion of the binomial power , and it is given by the formula

$$\binom{n}{k} = \frac{n!}{k! (n-k)!}.$$

For example, the fourth power of is

$$\begin{align}
   (1 + x)^4 &= \tbinom{4}{0} x^0 + \tbinom{4}{1} x^1 + \tbinom{4}{2} x^2 + \tbinom{4}{3} x^3 + \tbinom{4}{4} x^4 \\
   &= 1 + 4x + 6 x^2 + 4x^3 + x^4,
 \end{align}$$
and the binomial coefficient $\tbinom{4}{2} =\tfrac{4!}{2!2!} = 6$ is the coefficient of the term.

Arranging the numbers $\tbinom{n}{0}, \tbinom{n}{1}, \ldots, \tbinom{n}{n}$ in successive rows for n = 0, 1, 2, … gives a triangular array called Pascal's triangle, satisfying the recurrence relation

$$\binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1}.$$

The binomial coefficients occur in many areas of mathematics, and especially in combinatorics. The symbol $\tbinom{n}{k}$ is usually read as " choose " because there are $\tbinom{n}{k}$ ways to choose an (unordered) subset of elements from a fixed set of elements. For example, there are $\tbinom{4}{2}=6$ ways to choose 2 elements from {1, 2, 3, 4}, namely {1, 2}, {1, 3}, {1, 4}, {2, 3}, {2, 4}, and {3, 4}.

The binomial coefficients can be generalized to $\tbinom{z}{k}$ for any complex number and integer , and many of their properties continue to hold in this more general form.


History and notation

Andreas von Ettingshausen introduced the notation $\tbinom nk$ in 1826,[1] although the numbers were known centuries earlier (see Pascal's triangle). The earliest known detailed discussion of binomial coefficients is in a tenth-century commentary, by Halayudha, on an ancient Sanskrit text, Pingala's _Chandaḥśāstra_. In about 1150, the Indian mathematician Bhaskaracharya gave an exposition of binomial coefficients in his book _Līlāvatī_.[2]

Alternative notations include , , , , , and in all of which the stands for _combinations_ or _choices_. Many calculators use variants of the because they can represent it on a single-line display. In this form the binomial coefficients are easily compared to [[permutation#k-permutations_of_n|}{k!} = \frac{n(n-1)(n-2)\cdots(n-(k-1))}{k(k-1)(k-2)\cdots 1}=\prod_{i=1}^k \frac{n+1-i}{i},

where the numerator of the first fraction $n^{\underline{k}}$ is expressed as a falling factorial power. This formula is easiest to understand for the combinatorial interpretation of binomial coefficients. The numerator gives the number of ways to select a sequence of _k_ distinct objects, retaining the order of selection, from a set of _n_ objects. The denominator counts the number of distinct sequences that define the same _k_-combination when order is disregarded.

Due to the symmetry of the binomial coefficient with regard to _k_ and _n_−_k_, calculation may be optimised by setting the upper limit of the product above to the smaller of _k_ and _n_−_k_.

Factorial formula

Finally, though computationally unsuitable, there is the compact form, often used in proofs and derivations, which makes repeated use of the familiar factorial function:

$$\binom nk = \frac{n!}{k!\,(n-k)!} \quad \text{for }\ 0\leq k\leq n,$$

where _n_! denotes the factorial of _n_. This formula follows from the multiplicative formula above by multiplying numerator and denominator by ; as a consequence it involves many factors common to numerator and denominator. It is less practical for explicit computation (in the case that _k_ is small and _n_ is large) unless common factors are first cancelled (in particular since factorial values grow very rapidly). The formula does exhibit a symmetry that is less evident from the multiplicative formula (though it is from the definitions)

which leads to a more efficient multiplicative computational routine. Using the falling factorial notation,

$$\binom nk =
\begin{cases}
 n^{\underline{k}}/k! & \text{if }\ k \le \frac{n}{2} \\
 n^{\underline{n-k}}/(n-k)! & \text{if }\ k > \frac{n}{2}
\end{cases}.$$

Generalization and connection to the binomial series

The multiplicative formula allows the definition of binomial coefficients to be extended[3] by replacing _n_ by an arbitrary number _α_ (negative, real, complex) or even an element of any commutative ring in which all positive integers are invertible:

$$\binom \alpha k = \frac{\alpha^{\underline k}}{k!} = \frac{\alpha(\alpha-1)(\alpha-2)\cdots(\alpha-k+1)}{k(k-1)(k-2)\cdots 1}
  \quad\text{for } k\in\N \text{ and arbitrary } \alpha.$$

With this definition one has a generalization of the binomial formula (with one of the variables set to 1), which justifies still calling the $\tbinom\alpha k$ binomial coefficients:

This formula is valid for all complex numbers _α_ and _X_ with |_X_| < 1. It can also be interpreted as an identity of formal power series in _X_, where it actually can serve as definition of arbitrary powers of power series with constant coefficient equal to 1; the point is that with this definition all identities hold that one expects for exponentiation, notably

(1 + _X_)^(_α_)(1 + _X_)^(_β_) = (1 + _X_)^(_α_ + _β_) and ((1 + _X_)^(_α_))^(_β_) = (1 + _X_)^(_α__β_).

If _α_ is a nonnegative integer _n_, then all terms with _k_ > _n_ are zero, and the infinite series becomes a finite sum, thereby recovering the binomial formula. However, for other values of _α_, including negative integers and rational numbers, the series is really infinite.


Pascal's triangle

Pascal's_triangle_-_1000th_row.png.]]

Pascal's rule is the important recurrence relation which can be used to prove by mathematical induction that $\tbinom n k$ is a natural number for all _n_ and _k_, a fact that is not immediately obvious from formula (1).

Pascal's rule also gives rise to Pascal's triangle:

    {|

|- |0: || || || || || || || || ||1|| || || || || || || || |- |1: || || || || || || || ||1|| ||1|| || || || || || || |- |2: || || || || || || ||1|| ||2|| ||1|| || || || || || |- |3: || || || || || ||1|| ||3|| ||3|| ||1|| || || || || |- |4: || || || || ||1|| ||4|| ||6|| ||4|| ||1|| || || || |- |5: || || || ||1|| ||5|| ||10|| ||10|| ||5|| ||1|| || || |- |6: || || ||1|| ||6|| ||15|| ||20|| ||15|| ||6|| ||1|| || |- |7: || ||1 || ||7 || ||21|| ||35|| ||35|| ||21|| ||7 || ||1 || |- |8: ||1 || ||8 || ||28|| ||56|| ||70|| ||56|| ||28|| ||8 || ||1  |}

Row number contains the numbers $\tbinom{n}{k}$ for . It is constructed by first placing 1s in the outermost positions, and then filling each inner position with the sum of the two numbers directly above. This method allows the quick calculation of binomial coefficients without the need for fractions or multiplications. For instance, by looking at row number 5 of the triangle, one can quickly read off that

$$(x + y)^5 = \underline{1}x^5 + \underline{5}x^4y + \underline{10}x^3y^2 + \underline{10}x^2y^3 + \underline{5}xy^4 + \underline{1}y^5.$$


Combinatorics and statistics

Binomial coefficients are of importance in combinatorics, because they provide ready formulas for certain frequent counting problems:

-   There are $\tbinom n k$ ways to choose _k_ elements from a set of _n_ elements. See Combination.
-   There are $\tbinom {n+k-1}k$ ways to choose _k_ elements from a set of _n_ elements if repetitions are allowed. See Multiset.
-   There are $\tbinom {n+k} k$ strings containing _k_ ones and _n_ zeros.
-   There are $\tbinom {n+1} k$ strings consisting of _k_ ones and _n_ zeros such that no two ones are adjacent.[4]
-   The Catalan numbers are $\tfrac{1}{n+1}\tbinom{2n}{n}.$
-   The binomial distribution in statistics is $\tbinom n k p^k (1-p)^{n-k} \!.$


Binomial coefficients as polynomials

For any nonnegative integer _k_, the expression $\scriptstyle{\binom{t}{k}}$ can be simplified and defined as a polynomial divided by _k_!:

$$\binom{t}{k} =\frac{(t)_k}{k!}=\frac{(t)_k}{(k)_k}= \frac{t(t-1)(t-2)\cdots(t-k+1)}{k(k-1)(k-2)\cdots2 \cdot 1};$$

this presents a polynomial in _t_ with rational coefficients.

As such, it can be evaluated at any real or complex number _t_ to define binomial coefficients with such first arguments. These "generalized binomial coefficients" appear in Newton's generalized binomial theorem.

For each _k_, the polynomial $\tbinom{t}{k}$ can be characterized as the unique degree _k_ polynomial _p_(_t_) satisfying _p_(0) = _p_(1) = ... = _p_(_k_ − 1) = 0 and _p_(_k_) = 1.

Its coefficients are expressible in terms of Stirling numbers of the first kind:

$$\binom{t}{k} = \sum_{i=0}^k s(k,i)\frac{t^i}{k!}.$$
The derivative of $\tbinom{t}{k}$ can be calculated by logarithmic differentiation:

$$\frac{\mathrm{d}}{\mathrm{d}t} \binom{t}{k} = \binom{t}{k} \sum_{i=0}^{k-1} \frac{1}{t-i}\,.$$

Binomial coefficients as a basis for the space of polynomials

Over any field of characteristic 0 (that is, any field that contains the rational numbers), each polynomial _p_(_t_) of degree at most _d_ is uniquely expressible as a linear combination $\sum_{k=0}^d a_k \binom{t}{k}$ of binomial coefficients. The coefficient _a__(_k_) is the _k_th difference of the sequence _p_(0), _p_(1), …, _p_(_k_). Explicitly,[5]

Integer-valued polynomials

Each polynomial $\tbinom{t}{k}$ is integer-valued: it has an integer value at all integer inputs t. (One way to prove this is by induction on _k_, using Pascal's identity.) Therefore, any integer linear combination of binomial coefficient polynomials is integer-valued too. Conversely, () shows that any integer-valued polynomial is an integer linear combination of these binomial coefficient polynomials. More generally, for any subring _R_ of a characteristic 0 field _K_, a polynomial in _K_[_t_] takes values in _R_ at all integers if and only if it is an _R_-linear combination of binomial coefficient polynomials.

Example

The integer-valued polynomial 3_t_(3_t_ + 1)/2 can be rewritten as

$$9\tbinom{t}{2} + 6 \tbinom{t}{1} + 0\tbinom{t}{0}.$$


Identities involving binomial coefficients

The factorial formula facilitates relating nearby binomial coefficients. For instance, if _k_ is a positive integer and _n_ is arbitrary, then and, with a little more work,

$$\binom {n-1}{k} - \binom{n-1}{k-1} = \frac{n-2k}{n} \binom{n}{k}.$$
Moreover, the following may be useful:

$$\binom{n}{h}\binom{n-h}{k}=\binom{n}{k}\binom{n-k}{h}.$$
For constant _n_, we have the following recurrence:

$$\binom{n}{k} = \frac{n+1-k}{k} \binom{n}{k-1}.$$

Sums of the binomial coefficients

The formula says the elements in the _n_^(th) row of Pascal's triangle always add up to 2 raised to the _n_^(th) power. This is obtained from the binomial theorem () by setting _x_ = 1 and _y_ = 1. The formula also has a natural combinatorial interpretation: the left side sums the number of subsets of {1,...,_n_} of sizes _k_ = 0,1,...,_n_, giving the total number of subsets. (That is, the left side counts the power set of {1,...,_n_}.) However, these subsets can also be generated by successively choosing or excluding each element 1,...,_n_; the _n_ independent binary choices (bit-strings) allow a total of 2^(n) choices. The left and right sides are two ways to count the same collection of subsets, so they are equal.

The formulas and $\sum_{k=0}^n k^2 \binom n k = (n + n^2)2^{n-2}$ follow from () after differentiating with respect to _x_ (twice in the latter) and then substituting _x_ = 1.

The Chu–Vandermonde identity, which holds for any complex-values _m_ and _n_ and any non-negative integer _k_, is and can be found by examination of the coefficient of x^(k) in the expansion of using equation (). When , equation () reduces to equation (). In the special case , using (), the expansion () becomes (as seen in Pascal's triangle at right) where the term on the right side is a central binomial coefficient.

Another form of the Chu–Vandermonde identity, which applies for any integers _j_, _k_, and _n_ satisfying , is The proof is similar, but uses the binomial series expansion () with negative integer exponents. When , equation () gives the hockey-stick identity

$$\sum_{m=k}^n \binom m k = \binom {n+1}{k+1}$$
and its relative

$$\sum_{r=0}^m \binom {n+r} r = \binom {n+m+1}{m}.$$

Let _F_(_n_) denote the _n_-th Fibonacci number. Then

$$\sum_{k=0}^{\lfloor n/2\rfloor} \binom {n-k} k = F(n+1).$$
This can be proved by induction using () or by Zeckendorf's representation. A combinatorial proof is given below.

Multisections of sums

For integers _s_ and _t_ such that 0 ≤ t < s, series multisection gives the following identity for the sum of binomial coefficients:

    $\binom{n}{t}+\binom{n}{t+s}+\binom{n}{t+2s}+\ldots=\frac{1}{s}\sum_{j=0}^{s-1}\left(2\cos\frac{\pi j}{s}\right)^n\cos\frac{\pi(n-2t)j}{s}.$

For small _s_, these series have particularly nice forms; for example,[6]

$$\binom{n}{0} + \binom{n}{3}+\binom{n}{6}+\cdots = \frac{1}{3}\left(2^n +2 \cos\frac{n\pi}{3}\right)$$

$$\binom{n}{1} + \binom{n}{4}+\binom{n}{7}+\cdots = \frac{1}{3}\left(2^n +2 \cos\frac{(n-2)\pi}{3}\right)$$

$$\binom{n}{2} + \binom{n}{5}+\binom{n}{8}+\cdots = \frac{1}{3}\left(2^n +2 \cos\frac{(n-4)\pi}{3}\right)$$

$$\binom{n}{0} + \binom{n}{4}+\binom{n}{8}+\cdots = \frac{1}{2}\left(2^{n-1} +2^{\frac{n}{2}} \cos\frac{n\pi}{4}\right)$$

$$\binom{n}{1} + \binom{n}{5}+\binom{n}{9}+\cdots = \frac{1}{2}\left(2^{n-1} +2^{\frac{n}{2}} \sin\frac{n\pi}{4}\right)$$

$$\binom{n}{2} + \binom{n}{6}+\binom{n}{10}+\cdots = \frac{1}{2}\left(2^{n-1} -2^{\frac{n}{2}} \cos\frac{n\pi}{4}\right)$$

$$\binom{n}{3} + \binom{n}{7}+\binom{n}{11}+\cdots = \frac{1}{2}\left(2^{n-1} -2^{\frac{n}{2}} \sin\frac{n\pi}{4}\right)$$

Partial sums

Although there is no closed formula for partial sums

$$\sum_{j=0}^k \binom n j$$

of binomial coefficients,[7] one can again use () and induction to show that for _k_ = 0, ..., _n_ − 1,

$$\sum_{j=0}^k (-1)^j\binom n j = (-1)^k\binom {n-1}k$$
,

with special case[8]

$$\sum_{j=0}^n (-1)^j\binom n j = 0$$

for _n_ > 0. This latter result is also a special case of the result from the theory of finite differences that for any polynomial _P_(_x_) of degree less than _n_,[9]

$$\sum_{j=0}^n (-1)^j\binom n j P(j) = 0.$$
Differentiating () _k_ times and setting _x_ = −1 yields this for P(x) = x(x − 1)⋯(x − k + 1), when 0 ≤ _k_ < _n_, and the general case follows by taking linear combinations of these.

When _P_(_x_) is of degree less than or equal to _n_,

where a_(n) is the coefficient of degree _n_ in _P_(_x_).

More generally for (),

$$\sum_{j=0}^n (-1)^j\binom n j P(m+(n-j)d) = d^n n! a_n$$
where _m_ and _d_ are complex numbers. This follows immediately applying () to the polynomial instead of , and observing that has still degree less than or equal to _n_, and that its coefficient of degree _n_ is _d^(n)a_(n)_.

The series $\frac{k-1}k\sum_{j=0}^\infty \frac 1 {\binom {j+x} k}= \frac 1 {\binom{x-1}{k-1}}$ is convergent for _k_ ≥ 2. This formula is used in the analysis of the German tank problem. It follows from $\frac{k-1}k\sum_{j=0}^{M}\frac 1 {\binom{j+x} k}=\frac 1{\binom{x-1}{k-1}}-\frac 1{\binom{M+x}{k-1}}$ which is proved by induction on _M_.

Identities with combinatorial proofs

Many identities involving binomial coefficients can be proved by combinatorial means. For example, for nonnegative integers n ≥ q, the identity

$$\sum_{k=q}^n \binom{n}{k} \binom{k}{q} = 2^{n-q}\binom{n}{q}$$

(which reduces to () when _q_ = 1) can be given a double counting proof, as follows. The left side counts the number of ways of selecting a subset of [_n_] = {1, 2, …, _n_} with at least _q_ elements, and marking _q_ elements among those selected. The right side counts the same thing, because there are $\tbinom n q$ ways of choosing a set of _q_ elements to mark, and 2^(n − q) to choose which of the remaining elements of [_n_] also belong to the subset.

In Pascal's identity

$${n \choose k} = {n-1 \choose k-1} + {n-1 \choose k},$$
both sides count the number of _k_-element subsets of [_n_]: the two terms on the right side group them into those that contain element _n_ and those that do not.

The identity () also has a combinatorial proof. The identity reads

$$\sum_{k=0}^n \binom{n}{k}^2 = \binom{2n}{n}.$$

Suppose you have 2n empty squares arranged in a row and you want to mark (select) _n_ of them. There are $\tbinom {2n}n$ ways to do this. On the other hand, you may select your _n_ squares by selecting _k_ squares from among the first _n_ and n − k squares from the remaining _n_ squares; any _k_ from 0 to _n_ will work. This gives

$$\sum_{k=0}^n\binom  n k\binom n{n-k} = \binom {2n} n.$$
Now apply () to get the result.

If one denotes by the sequence of Fibonacci numbers, indexed so that _F_(1) {{=}} 1}}, then the identity $\sum_{k=0}^{\left\lfloor\frac{n}{2}\right\rfloor} \tbinom {n-k} k = F(n)$ has the following combinatorial proof.[10] One may show by induction that counts the number of ways that a strip of squares may be covered by and tiles. On the other hand, if such a tiling uses exactly of the tiles, then it uses of the tiles, and so uses tiles total. There are $\tbinom{n-k}{k}$ ways to order these tiles, and so summing this coefficient over all possible values of gives the identity.

Sum of coefficients row

The number of _k_-combinations for all _k_, $\sum_{0\leq{k}\leq{n}}\binom nk = 2^n$, is the sum of the _n_th row (counting from 0) of the binomial coefficients. These combinations are enumerated by the 1 digits of the set of base 2 numbers counting from 0 to 2^(n) − 1, where each digit position is an item from the set of _n_.

Dixon's identity

Dixon's identity is

$$\sum_{k=-a}^{a}(-1)^{k}{2a\choose k+a}^3 =\frac{(3a)!}{(a!)^3}$$

or, more generally,

$$\sum_{k=-a}^a(-1)^k{a+b\choose a+k} {b+c\choose b+k}{c+a\choose c+k}  = \frac{(a+b+c)!}{a!\,b!\,c!}\,,$$

where _a_, _b_, and _c_ are non-negative integers.

Continuous identities

Certain trigonometric integrals have values expressible in terms of binomial coefficients:

For $\textstyle m, n \in \mathbb{N}$



\int_{-\pi}^{\pi} \cos((2m-n)x)\cos^n x\ dx = \frac{\pi}{2^{n-1}} \binom{n}{m}



\int_{-\pi}^{\pi} \sin((2m-n)x)\sin^n x\ dx = \left \{ \begin{array}{cc} (-1)^{m+(n+1)/2} \frac{\pi}{2^{n-1}} \binom{n}{m} & n \text{ odd} \\ 0 & \text{otherwise} \\ \end{array} \right.



\int_{-\pi}^{\pi} \cos((2m-n)x)\sin^n x\ dx = \left \{ \begin{array}{cc} (-1)^{m+(n/2)} \frac{\pi}{2^{n-1}} \binom{n}{m} & n \text{ even} \\ 0 & \text{otherwise} \\ \end{array} \right.

These can be proved by using Euler's formula to convert trigonometric functions to complex exponentials, expanding using the binomial theorem, and integrating term by term.


Generating functions

Ordinary generating functions

For a fixed , the ordinary generating function of the sequence $\tbinom n0,\tbinom n1,\tbinom n2,\ldots$ is

    $\sum_{k=0}^\infty {n\choose k} x^k = (1+x)^n.$

For a fixed , the ordinary generating function of the sequence $\tbinom 0k,\tbinom 1k, \tbinom 2k,\ldots,$ is

    $\sum_{n=k}^\infty {n\choose k} y^n = \frac{y^k}{(1-y)^{k+1}}.$

The bivariate generating function of the binomial coefficients is

    $\sum_{n=0}^\infty \sum_{k=0}^n {n\choose k} x^k y^n = \frac{1}{1-y-xy}.$

Another, symmetric, bivariate generating function of the binomial coefficients is

    $\sum_{n=0}^\infty \sum_{k=0}^\infty {n+k\choose k} x^k y^n = \frac{1}{1-x-y}.$

Exponential generating function

A symmetric exponential bivariate generating function of the binomial coefficients is:

    $\sum_{n=0}^\infty \sum_{k=0}^\infty {n+k\choose k} \frac{x^k y^n}{(n+k)!} = e^{x+y}.$


Divisibility properties

In 1852, Kummer proved that if _m_ and _n_ are nonnegative integers and _p_ is a prime number, then the largest power of _p_ dividing $\tbinom{m+n}{m}$ equals _p_^(_c_), where _c_ is the number of carries when _m_ and _n_ are added in base _p_. Equivalently, the exponent of a prime _p_ in $\tbinom n k$ equals the number of nonnegative integers _j_ such that the fractional part of _k_/_p_^(_j_) is greater than the fractional part of _n_/_p_^(_j_). It can be deduced from this that $\tbinom n k$ is divisible by _n_/gcd(_n_,_k_). In particular therefore it follows that _p_ divides $\tbinom{p^r}{s}$ for all positive integers _r_ and _s_ such that . However this is not true of higher powers of _p_: for example 9 does not divide $\tbinom{9}{6}$.

A somewhat surprising result by David Singmaster (1974) is that any integer divides almost all binomial coefficients. More precisely, fix an integer _d_ and let _f_(_N_) denote the number of binomial coefficients $\tbinom n k$ with _n_ < _N_ such that _d_ divides $\tbinom n k$. Then

$$\lim_{N\to\infty} \frac{f(N)}{N(N+1)/2} = 1.$$
Since the number of binomial coefficients $\tbinom n k$ with _n_ < _N_ is _N_(_N_ + 1) / 2, this implies that the density of binomial coefficients divisible by _d_ goes to 1.

Binomial coefficients have divisibility properties related to least common multiples of consecutive integers. For example:[11]

$\binom{n+k}k$ divides $\frac{\text{lcm}(n,n+1,\ldots,n+k)}n$.

$\binom{n+k}k$ is a multiple of $\frac{\text{lcm}(n,n+1,\ldots,n+k)}{n\cdot \text{lcm}(\binom{k}0,\binom{k}1,\ldots,\binom{k}k)}$.

Another fact: An integer is prime if and only if all the intermediate binomial coefficients

    $\binom n 1, \binom n 2, \ldots, \binom n{n-1}$

are divisible by _n_.

Proof: When _p_ is prime, _p_ divides

$$\binom p k = \frac{p \cdot (p-1) \cdots (p-k+1)}{k \cdot (k-1) \cdots 1}$$
for all because $\tbinom p k$ is a natural number and _p_ divides the numerator but not the denominator. When _n_ is composite, let _p_ be the smallest prime factor of _n_ and let . Then and

$$\binom n p = \frac{n(n-1)(n-2)\cdots(n-p+1)}{p!}=\frac{k(n-1)(n-2)\cdots(n-p+1)}{(p-1)!}\not\equiv 0 \pmod{n}$$
otherwise the numerator has to be divisible by , this can only be the case when is divisible by _p_. But _n_ is divisible by _p_, so _p_ does not divide and because _p_ is prime, we know that _p_ does not divide and so the numerator cannot be divisible by _n_.


Bounds and asymptotic formulas

The following bounds for $\tbinom n k$ hold for all values of _n_ and _k_ such that 1 ≤ _k_ ≤ _n_:

$$\frac{n^k}{k^k} \le {n \choose k}  \le \frac{n^k}{k!} < \left(\frac{n\cdot e}{k}\right)^k$$
.

The first inequality follows from the fact that

$${n \choose k} = \frac{n}{k} \cdot \frac{n-1}{k-1} \cdots \frac{n-(k-1)}{1}$$

and each of these k terms in this product is $\geq \frac{n}{k}$. A similar argument can be made to show

$${n \choose k}  \le \frac{n^k}{k!}$$
.

The final strict inequality follows from multiplying $\left(\frac{n}{k}\right)^k$ by the Taylor series for e^(k).

From the divisibility properties we can infer that

$$\frac{\text{lcm}(n-k,\ldots,n)}{(n-k)\cdot \text{lcm}(\binom{k}0,\ldots,\binom{k}k)}\leq\binom{n}k\leq\frac{\text{lcm}(n-k,\ldots,n)}{n-k}$$
,

where both equalities can be achieved.[12]

Both  and  large

Stirling's approximation yields the following approximation, when n, i are sufficiently large:

    {n \choose i} \sim

\sqrt{n\over 2\pi i (n-i)} \cdot {n^n \over i^i (n-i)^{n-i}}

Because the inequality forms of Stirling's formula also bound the factorials, slight variants on the above asymptotic approximation give exact bounds.

In particular, when n is sufficiently large:

    ${2n \choose n} \sim \frac{2^{2n}}{\sqrt{\pi n}}$and $\sqrt{n}{2n \choose n} \ge 2^{2n-1}$

and, in general, for _m_ ≥ 2 and _n_ ≥ 1,

$$\sqrt{n}{mn \choose n} \ge \frac{m^{m(n-1)+1}}{(m-1)^{(m-1)(n-1)}}$$

 much larger than

When n is large and k is much smaller than n, one can also write

$${n \choose k} = \frac{n(n-1)\dots(n-k+1)}{k!} \approx \frac{(n-k/2)^k }{ k^k e^{-k} \sqrt{2\pi k}} = \frac{(n/k-0.5)^k e^k }{ \sqrt{2\pi k}}\,,$$

This gives the following analogue of Stirling's formula:

$$\ln{n \choose k} \approx k \ln(n/k-0.5) + k - 0.5 \ln(2 \pi k)\,.$$

If more precision is desired, one can approximate ln (n(n − 1)…(n − k + 1)) with an integral, obtaining

$$\ln{n \choose k} \approx (n+0.5) \ln\frac{n+0.5}{n-k+0.5} + k \ln \frac{n-k+0.5}{k} - 0.5 \ln(2 \pi k)$$

For n = 20 and k = 10, $\ln{\tbinom n k} \approx 12.127$, and these approximations yield 12.312 and 12.133 respectively.

If _n_ is large and _k_ is linear in _n_, various precise asymptotic estimates exist for the binomial coefficient $\binom{n}{k}$. For example, if |n/2 − k| = o(n^(2/3)) then[13]

$$\binom{n}{k} \sim \binom{n}{\frac{n}{2}} e^{-d^2/(2n)} \sim \frac{2^n}{\sqrt{\frac{1}{2}n \pi }} e^{-d^2/(2n)}$$

where _d_ = _n_ − 2_k_.

Sums of binomial coefficients

A simple and rough upper bound for the sum of binomial coefficients can be obtained using the binomial theorem:

$$\sum_{i=0}^k {n \choose i} \leq \sum_{i=0}^k n^i\cdot 1^{k-i} \leq (1+n)^k$$

For k and n − k both much larger than 1, Stirling's approximation also yields the following asymptotic approximation:

$$\log_2{n \choose k} \sim n H(k/n)  = k\log_2(n/k) + (n-k)\log_2(n/(n-k))$$

where H(ϵ) =  − ϵlog₂(ϵ) − (1 − ϵ)log₂(1 − ϵ) is the binary entropy of ϵ. More precisely, for all integers n ≥ k ≥ 1 with ϵ ≐ k/n ≤ 1/2, we can estimate the sum of the first k + 1 binomial coefficients as follows:[14]

$$\frac{1}{\sqrt{8n\epsilon(1-\epsilon)}} \cdot 2^{H(\epsilon) \cdot n} \leq \sum_{i=0}^{k} \binom{n}{i} \leq 2^{H(\epsilon) \cdot n}\,.$$

Generalized binomial coefficients

The infinite product formula for the Gamma function also gives an expression for binomial coefficients

$$(-1)^k {z \choose k}= {-z+k-1 \choose k} = \frac{1}{\Gamma(-z)} \frac{1}{(k+1)^{z+1}} \prod_{j=k+1} \frac{(1+\frac{1}{j})^{-z-1}}{1-\frac{z+1}{j}}$$

which yields the asymptotic formulas

$${z \choose k} \approx \frac{(-1)^k}{\Gamma(-z) k^{z+1}} \qquad  \mathrm{and}  \qquad {z+k \choose k} = \frac{k^z}{\Gamma(z+1)}\left( 1+\frac{z(z+1)}{2k}+\mathcal{O}\left(k^{-2}\right)\right)$$

as k → ∞.

This asymptotic behaviour is contained in the approximation

$${z+k \choose k}\approx \frac{e^{z(H_k-\gamma)}}{\Gamma(z+1)}$$
as well. (Here H_(k) is the _k_-th harmonic number and γ is the Euler–Mascheroni constant.)

Further, the asymptotic formula

$$\frac{{z+k\choose j}}{{k\choose j}}\to \left(1-\frac{j}{k}\right)^{-z}\quad\text{and}\quad \frac{{j\choose j-k}}{{j-z\choose j-k}}\to \left(\frac{j}{k}\right)^z$$
hold true, whenever k → ∞ and j/k → x for some complex number x.


Generalizations

Generalization to multinomials

Binomial coefficients can be generalized to MULTINOMIAL COEFFICIENTS defined to be the number:

$${n\choose k_1,k_2,\ldots,k_r} =\frac{n!}{k_1!k_2!\cdots k_r!}$$
where

$$\sum_{i=1}^rk_i=n.$$

While the binomial coefficients represent the coefficients of (_x_+_y_)^(_n_), the multinomial coefficients represent the coefficients of the polynomial

(_x_₁ + _x_₂ + ⋯ + _x__(_r_))^(_n_).
The case _r_ = 2 gives binomial coefficients:

$${n\choose k_1,k_2}={n\choose k_1, n-k_1}={n\choose k_1}= {n\choose k_2}.$$

The combinatorial interpretation of multinomial coefficients is distribution of _n_ distinguishable elements over _r_ (distinguishable) containers, each containing exactly _k_(i)_ elements, where _i_ is the index of the container.

Multinomial coefficients have many properties similar to those of binomial coefficients, for example the recurrence relation:

$${n\choose k_1,k_2,\ldots,k_r} ={n-1\choose k_1-1,k_2,\ldots,k_r}+{n-1\choose k_1,k_2-1,\ldots,k_r}+\ldots+{n-1\choose k_1,k_2,\ldots,k_r-1}$$
and symmetry:

$${n\choose k_1,k_2,\ldots,k_r} ={n\choose k_{\sigma_1},k_{\sigma_2},\ldots,k_{\sigma_r}}$$
where (σ_(i)) is a permutation of (1,2,...,_r_).

Taylor series

Using Stirling numbers of the first kind the series expansion around any arbitrarily chosen point z₀ is

$$\begin{align} {z \choose k} = \frac{1}{k!}\sum_{i=0}^k z^i s_{k,i}&=\sum_{i=0}^k (z- z_0)^i \sum_{j=i}^k {z_0 \choose j-i} \frac{s_{k+i-j,i}}{(k+i-j)!} \\ &=\sum_{i=0}^k (z-z_0)^i \sum_{j=i}^k z_0^{j-i} {j \choose i} \frac{s_{k,j}}{k!}.\end{align}$$

=== Binomial coefficient with _n_ = 1/2 === The definition of the binomial coefficients can be extended to the case where n is real and k is integer.

In particular, the following identity holds for any non-negative integer k :

$${{1/2}\choose{k}}={{2k}\choose{k}}\frac{(-1)^{k+1}}{2^{2k}(2k-1)}.$$

This shows up when expanding $\sqrt{1+x}$ into a power series using the Newton binomial series :

$$\sqrt{1+x}=\sum_{k\geq 0}{\binom{1/2}{k}}x^k.$$

Identity for the product of binomial coefficients

One can express the product of binomial coefficients as a linear combination of binomial coefficients:

$${z \choose m} {z\choose n} = \sum_{k=0}^m {m + n - k \choose k, m - k, n - k} {z \choose m + n - k},$$

where the connection coefficients are multinomial coefficients. In terms of labelled combinatorial objects, the connection coefficients represent the number of ways to assign _m_ + _n_ − _k_ labels to a pair of labelled combinatorial objects—of weight _m_ and _n_ respectively—that have had their first _k_ labels identified, or glued together to get a new labelled combinatorial object of weight _m_ + _n_ − _k_. (That is, to separate the labels into three portions to apply to the glued part, the unglued part of the first object, and the unglued part of the second object.) In this regard, binomial coefficients are to exponential generating series what falling factorials are to ordinary generating series.

Partial fraction decomposition

The partial fraction decomposition of the reciprocal is given by

$$\frac{1}{{z \choose n}}= \sum_{i=0}^{n-1} (-1)^{n-1-i} {n \choose i} \frac{n-i}{z-i},
\qquad \frac{1}{{z+n \choose n}}= \sum_{i=1}^n (-1)^{i-1} {n \choose i} \frac{i}{z+i}.$$

Newton's binomial series

Newton's binomial series, named after Sir Isaac Newton, is a generalization of the binomial theorem to infinite series:

$$(1+z)^{\alpha} = \sum_{n=0}^{\infty}{\alpha\choose n}z^n = 1+{\alpha\choose1}z+{\alpha\choose 2}z^2+\cdots.$$

The identity can be obtained by showing that both sides satisfy the differential equation (1 + _z_) _f_'(_z_) = α _f_(_z_).

The radius of convergence of this series is 1. An alternative expression is

$$\frac{1}{(1-z)^{\alpha+1}} = \sum_{n=0}^{\infty}{n+\alpha \choose n}z^n$$

where the identity

$${n \choose k} = (-1)^k {k-n-1 \choose k}$$

is applied.

Multiset (rising) binomial coefficient

Binomial coefficients count subsets of prescribed size from a given set. A related combinatorial problem is to count multisets of prescribed size with elements drawn from a given set, that is, to count the number of ways to select a certain number of elements from a given set with the possibility of selecting the same element repeatedly. The resulting numbers are called _multiset coefficients_;[15] the number of ways to "multichoose" (i.e., choose with replacement) _k_ items from an _n_ element set is denoted $\left(\!\!\binom n k\!\!\right)$.

To avoid ambiguity and confusion with _n_'s main denotation in this article,
let _f_ = _n_ = _r_ + (_k_ – 1) and _r_ = _f_ – (_k_ – 1).

Multiset coefficients may be expressed in terms of binomial coefficients by the rule

$$\binom{f}{k}=\left(\!\!\binom{r}{k}\!\!\right)=\binom{r+k-1}{k}.$$
One possible alternative characterization of this identity is as follows: We may define the falling factorial as

$$(f)_{k}=f^{\underline k}=(f-k+1)\cdots(f-3)\cdot(f-2)\cdot(f-1)\cdot f$$
, and the corresponding rising factorial as

$${\color{white}{ \big|}}r^{(k)}=\,r^{\overline k}=\,r\cdot(r+1)\cdot(r+2)\cdot(r+3)\cdots(r+k-1)$$
; so, for example,

$$17\cdot18\cdot19\cdot20\cdot21=(21)_{5}=21^{\underline 5}=17^{\overline 5}=17^{(5)}$$
. Then the binomial coefficients may be written as

$$\binom{f}{k} = \frac{(f)_{k}}{k!} =\frac{(f-k+1)\cdots(f-2)\cdot(f-1)\cdot f}{1\cdot2\cdot3\cdot4\cdot5\cdots k}$$
, while the corresponding multiset coefficient is defined by replacing the falling with the rising factorial:

$$\left(\!\!\binom{r}{k}\!\!\right)=\frac{r^{(k)}}{k!}=\frac{r\cdot(r+1)\cdot(r+2)\cdots(r+k-1)}{1\cdot2\cdot3\cdot4\cdot5\cdots k}$$
.

Generalization to negative integers

For any _n_,

$$\begin{align}\binom{-n}{k} &= \frac{-n\cdot-(n+1)\dots-(n+k-2)\cdot-(n+k-1)}{k!}\\
&=(-1)^k\;\frac{n\cdot(n+1)\cdot(n+2)\cdots (n + k - 1)}{k!}\\
&=(-1)^k\binom{n + k - 1}{k}\\
&=(-1)^k\left(\!\!\binom{n}{k}\!\!\right)\;.\end{align}$$
In particular, binomial coefficients evaluated at negative integers are given by signed multiset coefficients. In the special case n =  − 1, this reduces to $(-1)^k=\binom{-1}{k}=\left(\!\!\binom{-k}{k}\!\!\right) \,.$

For example, if _n_ = -4 and _k_ = 7, then _r_ = 4 and _f_ = 10:

$$\begin{align}\binom{-4}{7} &= \frac
{-10\cdot-9\cdot-8\cdot-7\cdot-6\cdot-5\cdot-4}
{1\cdot2\cdot3\cdot4\cdot5\cdot6\cdot7}\\
&=(-1)^7\;\frac{4\cdot5\cdot6\cdot7\cdot8\cdot9\cdot10}
{1\cdot2\cdot3\cdot4\cdot5\cdot6\cdot7}\\
&=\left(\!\!\binom{-7}{7}\!\!\right)\left(\!\!\binom{4}{7}\!\!\right)=\binom{-1}{7}\binom{10}{7}.\end{align}$$

Two real or complex valued arguments

The binomial coefficient is generalized to two real or complex valued arguments using the gamma function or beta function via

$${x \choose y}= \frac{\Gamma(x+1)}{\Gamma(y+1) \Gamma(x-y+1)}= \frac{1}{(x+1) \Beta(x-y+1,y+1)}.$$
This definition inherits these following additional properties from Γ:

$${x \choose y}= \frac{\sin (y \pi)}{\sin(x \pi)} {-y-1 \choose -x-1}= \frac{\sin((x-y) \pi)}{\sin (x \pi)} {y-x-1 \choose y};$$
moreover,

$${x \choose y} \cdot {y \choose x}= \frac{\sin((x-y) \pi)}{(x-y) \pi}.$$

The resulting function has been little-studied, apparently first being graphed in . Notably, many binomial identities fail: $\textstyle{{n \choose m} = {n \choose n-m}}$ but $\textstyle{{-n \choose m} \neq {-n \choose -n-m}}$ for _n_ positive (so  − n negative). The behavior is quite complex, and markedly different in various octants (that is, with respect to the _x_ and _y_ axes and the line y = x), with the behavior for negative _x_ having singularities at negative integer values and a checkerboard of positive and negative regions:

-   in the octant 0 ≤ y ≤ x it is a smoothly interpolated form of the usual binomial, with a ridge ("Pascal's ridge").
-   in the octant 0 ≤ x ≤ y and in the quadrant x ≥ 0, y ≤ 0 the function is close to zero.
-   in the quadrant x ≤ 0, y ≥ 0 the function is alternatingly very large positive and negative on the parallelograms with vertices

( − _n_, _m_ + 1), ( − _n_, _m_), ( − _n_ − 1, _m_ − 1), ( − _n_ − 1, _m_)

-   in the octant 0 > x > y the behavior is again alternatingly very large positive and negative, but on a square grid.
-   in the octant  − 1 > y > x + 1 it is close to zero, except for near the singularities.

Generalization to _q_-series

The binomial coefficient has a q-analog generalization known as the Gaussian binomial coefficient.

Generalization to infinite cardinals

The definition of the binomial coefficient can be generalized to infinite cardinals by defining:

$${\alpha \choose \beta} = | \{ B \subseteq A : |B| = \beta \} |$$

where A is some set with cardinality α. One can show that the generalized binomial coefficient is well-defined, in the sense that no matter what set we choose to represent the cardinal number α, ${\alpha \choose \beta}$ will remain the same. For finite cardinals, this definition coincides with the standard definition of the binomial coefficient.

Assuming the Axiom of Choice, one can show that ${\alpha \choose \alpha} = 2^{\alpha}$ for any infinite cardinal α.


Binomial coefficient in programming languages

The notation ${n \choose k}$ is convenient in handwriting but inconvenient for typewriters and computer terminals. Many programming languages do not offer a standard subroutine for computing the binomial coefficient, but for example both the APL programming language and the (related) J programming language use the exclamation mark: k ! n .

Naive implementations of the factorial formula, such as the following snippet in Python:

    from math import factorial
    def binomialCoefficient(n, k):
        return factorial(n) // (factorial(k) * factorial(n - k))

are very slow and are useless for calculating factorials of very high numbers (in languages such as C or Java they suffer from overflow errors because of this reason). A direct implementation of the multiplicative formula works well:

    def binomialCoefficient(n, k):
        if k < 0 or k > n:
            return 0
        if k == 0 or k == n:
            return 1
        k = min(k, n - k) # take advantage of symmetry
        c = 1
        for i in range(k):
            c = c * (n - i) / (i + 1)
        return c

(In Python, range(k) produces a list from 0 to k–1.)

Pascal's rule provides a recursive definition which can also be implemented in Python, although it is less efficient:

    def binomialCoefficient(n, k):
        if k < 0 or k > n:
            return 0
        if k > n - k: # take advantage of symmetry
            k = n - k
        if k == 0 or n <= 1:
            return 1
        return binomialCoefficient(n-1, k) + binomialCoefficient(n-1, k-1)

The example mentioned above can be also written in functional style. The following Scheme example uses the recursive definition

$${n \choose k+1} = \frac{n-k}{k+1} {n \choose k}$$
Rational arithmetic can be easily avoided using integer division

$${n \choose k+1} = \left[(n-k) {n \choose k}\right] \div (k+1)$$
The following implementation uses all these ideas

    (define (binomial n k)
    ;; Helper function to compute C(n,k) via forward recursion
      (define (binomial-iter n k i prev)
        (if (>= i k)
          prev
         (binomial-iter n k (+ i 1) (/ (* (- n i) prev) (+ i 1)))))
    ;; Use symmetry property C(n,k)=C(n, n-k)
      (if (< k (-  n k))
        (binomial-iter n k 0 1)
        (binomial-iter n (- n k) 0 1)))

When computing $\textstyle {n \choose k+1} = \left[(n-k) {n \choose k}\right] \div (k+1)$ in a language with fixed-length integers, the multiplication by (n − k) may overflow even when the result would fit. The overflow can be avoided by dividing first and fixing the result using the remainder:

$${n \choose k+1} = \left[\textstyle {n \choose k} \div (k+1)\right](n-k) + {\left[{n\choose k}\ \mathrm{mod}\ (k+1)\right](n-k) \over (k+1)}$$

Implementation in the C language:

    #include <limits.h>

    unsigned long binomial(unsigned long n, unsigned long k) {
      unsigned long c = 1, i;

      if (k > n-k) // take advantage of symmetry
        k = n-k;

      for (i = 1; i <= k; i++, n--) {
        if (c/i > UINT_MAX/n) // return 0 on overflow
          return 0;

        c = c / i * n + c % i * n / i;  // split c * n / i into (c / i * i + c % i) * n / i
      }

      return c;
    }

Another way to compute the binomial coefficient when using large numbers is to recognize that

$${n \choose k} = \frac{n!}{k!\,(n-k)!} = \frac{\Gamma(n+1)}{\Gamma(k+1)\,\Gamma(n-k+1)} = \exp(\ln\Gamma(n+1)-\ln\Gamma(k+1)-\ln\Gamma(n-k+1)),$$

where ln  Γ(n) denotes the natural logarithm of the gamma function at n. It is a special function that is easily computed and is standard in some programming languages such as using _log_gamma_ in Maxima, _LogGamma_ in Mathematica, _gammaln_ in MATLAB and Python's SciPy module, _lngamma_ in PARI/GP or _lgamma_ in C, R,[16] and Julia. Roundoff error may cause the returned value to not be an integer.


See also

-   Binomial transform
-   Delannoy number
-   Eulerian number
-   Hypergeometric function
-   List of factorial and binomial topics
-   Macaulay representation of an integer
-   Motzkin number
-   Multiplicities of entries in Pascal's triangle
-   Narayana number
-   Star of David theorem
-   Sun's curious identity
-   Table of Newtonian series
-   Trinomial expansion


Notes


References

-   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   -

Category:Combinatorics Category:Factorial and binomial topics Category:Integer sequences Category:Triangles of numbers Category:Articles with example Python code Category:Articles with example Scheme code Category:Articles with example C code

[1]

[2] Lilavati Section 6, Chapter 4 (see ).

[3] See , which also defines $\tbinom n k = 0$ for k < 0. Alternative generalizations, such as to two real or complex valued arguments using the Gamma function assign nonzero values to $\tbinom n k$ for k < 0, but this causes most binomial coefficient identities to fail, and thus is not widely used by the majority of definitions. One such choice of nonzero values leads to the aesthetically pleasing "Pascal windmill" in Hilton, Holton and Pedersen, _Mathematical reflections: in a room with many mirrors_, Springer, 1997, but causes even Pascal's identity to fail (at the origin).

[4]

[5] This can be seen as a discrete analog of Taylor's theorem. It is closely related to Newton's polynomial. Alternating sums of this form may be expressed as the Nörlund–Rice integral.

[6]  .

[7] .

[8] see induction developed in eq (7) p. 1389 in .

[9]

[10]

[11]

[12]

[13]

[14] see e.g. or .

[15] .

[16]