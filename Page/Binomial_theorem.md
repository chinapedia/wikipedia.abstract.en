 

In elementary algebra, the BINOMIAL THEOREM (or BINOMIAL EXPANSION) describes the algebraic expansion of powers of a binomial. According to the theorem, it is possible to expand the polynomial into a sum involving terms of the form , where the exponents and are nonnegative integers with _n_}}, and the coefficient of each term is a specific positive integer depending on and . For example (for 4}}),

(_x_ + _y_)⁴ = _x_⁴ + 4_x_³_y_ + 6_x_²_y_² + 4_x__y_³ + _y_⁴.

The coefficient in the term of is known as the binomial coefficient $\tbinom nb$ or $\tbinom nc$ (the two have the same value). These coefficients for varying and can be arranged to form Pascal's triangle. These numbers also arise in combinatorics, where $\tbinom nb$ gives the number of different combinations of elements that can be chosen from an -element set. Therefore $\tbinom nb$ is often pronounced as "_n_ choose _b_".


History

Special cases of the binomial theorem were known since at least the 4th century BC when Greek mathematician Euclid mentioned the special case of the binomial theorem for exponent 2.[1][2] There is evidence that the binomial theorem for cubes was known by the 6th century AD in India.[3][4]

Binomial coefficients, as combinatorial quantities expressing the number of ways of selecting _k_ objects out of _n_ without replacement, were of interest to ancient Indian mathematicians. The earliest known reference to this combinatorial problem is the _Chandaḥśāstra_ by the Indian lyricist Pingala (c. 200 BC), which contains a method for its solution.[5] The commentator Halayudha from the 10th century AD explains this method using what is now known as Pascal's triangle.[6] By the 6th century AD, the Indian mathematicians probably knew how to express this as a quotient $\frac{n!}{(n-k)!k!}$,[7] and a clear statement of this rule can be found in the 12th century text _Lilavati_ by Bhaskara.[8]

The first formulation of the binomial theorem and the table of binomial coefficients, to our knowledge, can be found in a work by Al-Karaji, quoted by Al-Samaw'al in his "al-Bahir".[9][10][11] Al-Karaji described the triangular pattern of the binomial coefficients[12] and also provided a mathematical proof of both the binomial theorem and Pascal's triangle, using an early form of mathematical induction.[13] The Persian poet and mathematician Omar Khayyam was probably familiar with the formula to higher orders, although many of his mathematical works are lost.[14] The binomial expansions of small degrees were known in the 13th century mathematical works of Yang Hui[15] and also Chu Shih-Chieh.[16] Yang Hui attributes the method to a much earlier 11th century text of Jia Xian, although those writings are now also lost.[17]

In 1544, Michael Stifel introduced the term "binomial coefficient" and showed how to use them to express (1 + a)^(n) in terms of (1 + a)^(n − 1), via "Pascal's triangle".[18] Blaise Pascal studied the eponymous triangle comprehensively in the treatise _Traité du triangle arithmétique_ (1653). However, the pattern of numbers was already known to the European mathematicians of the late Renaissance, including Stifel, Niccolò Fontana Tartaglia, and Simon Stevin.[19]

Isaac Newton is generally credited with the generalized binomial theorem, valid for any rational exponent.[20][21]


Theorem statement

According to the theorem, it is possible to expand any power of into a sum of the form

$$(x+y)^n = {n \choose 0}x^n y^0 + {n \choose 1}x^{n-1}y^1 + {n \choose 2}x^{n-2}y^2 + \cdots + {n \choose n-1}x^1 y^{n-1} + {n \choose n}x^0 y^n,$$
where each $\tbinom nk$ is a specific positive integer known as a binomial coefficient. (When an exponent is zero, the corresponding power expression is taken to be 1 and this multiplicative factor is often omitted from the term. Hence one often sees the right side written as $\binom{n}{0} x^n + \ldots$.) This formula is also referred to as the BINOMIAL FORMULA or the BINOMIAL IDENTITY. Using summation notation, it can be written as

$$(x+y)^n = \sum_{k=0}^n {n \choose k}x^{n-k}y^k = \sum_{k=0}^n {n \choose k}x^{k}y^{n-k}.$$
The final expression follows from the previous one by the symmetry of _x_ and _y_ in the first expression, and by comparison it follows that the sequence of binomial coefficients in the formula is symmetrical. A simple variant of the binomial formula is obtained by substituting 1 for _y_, so that it involves only a single variable. In this form, the formula reads

$$(1+x)^n = {n \choose 0}x^0 + {n \choose 1}x^1 + {n \choose 2}x^2 + \cdots + {n \choose {n-1}}x^{n-1} + {n \choose n}x^n,$$
or equivalently

$$(1+x)^n = \sum_{k=0}^n {n \choose k}x^k.$$


Examples

The most basic example of the binomial theorem is the formula for the square of :

(_x_ + _y_)² = _x_² + 2_x__y_ + _y_².

The binomial coefficients 1, 2, 1 appearing in this expansion correspond to the second row of Pascal's triangle. (Note that the top "1" of the triangle is considered to be row 0, by convention.) The coefficients of higher powers of correspond to lower rows of the triangle:

$$\begin{align}
(x+y)^3 & = x^3 + 3x^2y + 3xy^2 + y^3, \\[8pt]
(x+y)^4 & = x^4 + 4x^3y + 6x^2y^2 + 4xy^3 + y^4, \\[8pt]
(x+y)^5 & = x^5 + 5x^4y + 10x^3y^2 + 10x^2y^3 + 5xy^4 + y^5, \\[8pt]
(x+y)^6 & = x^6 + 6x^5y + 15x^4y^2 + 20x^3y^3 + 15x^2y^4 + 6xy^5 + y^6, \\[8pt]
(x+y)^7 & = x^7 + 7x^6y + 21x^5y^2 + 35x^4y^3 + 35x^3y^4 + 21x^2y^5 + 7xy^6 + y^7.
\end{align}$$
Several patterns can be observed from these examples. In general, for the expansion :

1.  the powers of start at and decrease by 1 in each term until they reach 0 (with , often unwritten);
2.  the powers of start at 0 and increase by 1 until they reach ;
3.  the th row of Pascal's Triangle will be the coefficients of the expanded binomial when the terms are arranged in this way;
4.  the number of terms in the expansion before like terms are combined is the sum of the coefficients and is equal to ; and
5.  there will be terms in the expression after combining like terms in the expansion.

The binomial theorem can be applied to the powers of any binomial. For example,

$$\begin{align}
(x+2)^3 &= x^3 + 3x^2(2) + 3x(2)^2 + 2^3 \\
&= x^3 + 6x^2 + 12x + 8.\end{align}$$

For a binomial involving subtraction, the theorem can be applied by using the form . This has the effect of changing the sign of every other term in the expansion:

(_x_ − _y_)³ = (_x_ + ( − _y_))³ = _x_³ + 3_x_²( − _y_) + 3_x_( − _y_)² + ( − _y_)³ = _x_³ − 3_x_²_y_ + 3_x__y_² − _y_³.

Geometric explanation

binomial_theorem_visualisation.svg For positive values of _a_ and _b_, the binomial theorem with is the geometrically evident fact that a square of side can be cut into a square of side _a_, a square of side _b_, and two rectangles with sides _a_ and _b_. With , the theorem states that a cube of side can be cut into a cube of side _a_, a cube of side _b_, three _a_×_a_×_b_ rectangular boxes, and three _a_×_b_×_b_ rectangular boxes.

In calculus, this picture also gives a geometric proof of the derivative (x^(n))′ = nx^(n − 1):[22] if one sets a = x and b = Δx, interpreting _b_ as an infinitesimal change in _a,_ then this picture shows the infinitesimal change in the volume of an _n_-dimensional hypercube, (x + Δx)^(n), where the coefficient of the linear term (in Δx) is nx^(n − 1), the area of the _n_ faces, each of dimension (n − 1):

$$(x+\Delta x)^n = x^n + nx^{n-1}\Delta x + \binom{n}{2}x^{n-2}(\Delta x)^2 + \cdots.$$
Substituting this into the definition of the derivative via a difference quotient and taking limits means that the higher order terms, (Δx)² and higher, become negligible, and yields the formula (x^(n))′ = nx^(n − 1), interpreted as

    "the infinitesimal rate of change in volume of an _n_-cube as side length varies is the area of _n_ of its (n − 1)-dimensional faces".

If one integrates this picture, which corresponds to applying the fundamental theorem of calculus, one obtains Cavalieri's quadrature formula, the integral $\textstyle{\int x^{n-1}\,dx = \tfrac{1}{n} x^n}$ – see proof of Cavalieri's quadrature formula for details.[23]


Binomial coefficients

The coefficients that appear in the binomial expansion are called BINOMIAL COEFFICIENTS. These are usually written $\tbinom nk$, and pronounced “_n_ choose _k_”.

Formulae

The coefficient of _x_^(_n_−_k_)_y_^(_k_) is given by the formula

$${n \choose k} = \frac{n!}{k! (n-k)!}$$

which is defined in terms of the factorial function _n_!. Equivalently, this formula can be written

$${n \choose k} = \frac{n (n-1) \cdots (n-k+1)}{k (k-1) \cdots 1} = \prod_{\ell=1}^k \frac{n-\ell+1}{\ell} = \prod_{\ell=0}^{k-1} \frac{n-\ell}{k - \ell}$$

with _k_ factors in both the numerator and denominator of the fraction. Note that, although this formula involves a fraction, the binomial coefficient $\tbinom nk$ is actually an integer.

Combinatorial interpretation

The binomial coefficient $\tbinom nk$ can be interpreted as the number of ways to choose _k_ elements from an _n_-element set. This is related to binomials for the following reason: if we write as a product

(_x_ + _y_)(_x_ + _y_)(_x_ + _y_)⋯(_x_ + _y_),
then, according to the distributive law, there will be one term in the expansion for each choice of either _x_ or _y_ from each of the binomials of the product. For example, there will only be one term _x_^(_n_), corresponding to choosing _x_ from each binomial. However, there will be several terms of the form _x_^(_n_−2)_y_², one for each way of choosing exactly two binomials to contribute a _y_. Therefore, after combining like terms, the coefficient of _x_^(_n_−2)_y_² will be equal to the number of ways to choose exactly 2 elements from an _n_-element set.


Proofs

Combinatorial proof

Example

The coefficient of _xy_² in

$$\begin{align}
(x+y)^3 &= (x+y)(x+y)(x+y) \\
&= xxx + xxy + xyx + \underline{xyy} + yxx + \underline{yxy} + \underline{yyx} + yyy \\
&= x^3 + 3x^2y + \underline{3xy^2} + y^3.
\end{align}$$

equals $\tbinom{3}{2}=3$ because there are three _x_,_y_ strings of length 3 with exactly two _y_'s, namely,

_x__y__y_, _y__x__y_, _y__y__x_,

corresponding to the three 2-element subsets of { 1, 2, 3 }, namely,

{2, 3}, {1, 3}, {1, 2},

where each subset specifies the positions of the _y_ in a corresponding string.

General case

Expanding yields the sum of the 2^( _n_) products of the form where each _e__( _i_) is _x_ or _y_. Rearranging factors shows that each product equals _x_^(_n_−_k_)_y_^(_k_) for some _k_ between 0 and _n_. For a given _k_, the following are proved equal in succession:

-   the number of copies of in the expansion
-   the number of _n_-character _x_,_y_ strings having _y_ in exactly _k_ positions
-   the number of _k_-element subsets of
-   ${n \choose k}$ (this is either by definition, or by a short combinatorial argument if one is defining ${n \choose k}$ as $\frac{n!}{k! (n-k)!}$).

This proves the binomial theorem.

Inductive proof

Induction yields another proof of the binomial theorem. When , both sides equal 1, since and $\tbinom{0}{0}=1$. Now suppose that the equality holds for a given _n_; we will prove it for . For , let denote the coefficient of in the polynomial . By the inductive hypothesis, is a polynomial in _x_ and _y_ such that is $\tbinom{n}{k}$ if , and 0 otherwise. The identity

(_x_ + _y_)^(_n_ + 1) = _x_(_x_ + _y_)^(_n_) + _y_(_x_ + _y_)^(_n_)

shows that also is a polynomial in _x_ and _y_, and

[(_x_ + _y_)^(_n_ + 1)]_(_j_, _k_) = [(_x_ + _y_)^(_n_)]_(_j_ − 1, _k_) + [(_x_ + _y_)^(_n_)]_(_j_, _k_ − 1),

since if , then and . Now, the right hand side is

$$\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k},$$

by Pascal's identity.[24] On the other hand, if , then and , so we get . Thus

$$(x+y)^{n+1} = \sum_{k=0}^{n+1} \binom{n+1}{k} x^{n+1-k} y^k,$$

which is the inductive hypothesis with substituted for _n_ and so completes the inductive step.


Generalizations

Newton's generalized binomial theorem

Around 1665, Isaac Newton generalized the binomial theorem to allow real exponents other than nonnegative integers. (The same generalization also applies to complex exponents.) In this generalization, the finite sum is replaced by an infinite series. In order to do this, one needs to give meaning to binomial coefficients with an arbitrary upper index, which cannot be done using the usual formula with factorials. However, for an arbitrary number _r_, one can define

$${r \choose k}=\frac{r(r-1) \cdots (r-k+1)}{k!} =\frac{(r)_k}{k!},$$
where ( ⋅ )_(k) is the Pochhammer symbol, here standing for a falling factorial. This agrees with the usual definitions when _r_ is a nonnegative integer. Then, if _x_ and _y_ are real numbers with |_x_| > |_y_|,[25] and _r_ is any complex number, one has

$$\begin{align}
(x+y)^r & =\sum_{k=0}^\infty {r \choose k} x^{r-k} y^k \\
& = x^r + r x^{r-1} y + \frac{r(r-1)}{2!} x^{r-2} y^2 + \frac{r(r-1)(r-2)}{3!} x^{r-3} y^3 + \cdots.
\end{align}$$
When _r_ is a nonnegative integer, the binomial coefficients for are zero, so this equation reduces to the usual binomial theorem, and there are at most nonzero terms. For other values of _r_, the series typically has infinitely many nonzero terms.

For example, gives the following series for the square root:

$$\sqrt{1+x} = 1 + \frac{1}{2}x - \frac{1}{8}x^2 + \frac{1}{16}x^3 - \frac{5}{128}x^4 + \frac{7}{256}x^5 - \cdots$$

Taking r =  − 1, the generalized binomial series gives the geometric series formula, valid for |x| < 1:

$$(1+x)^{-1} = \frac{1}{1+x} = 1 - x + x^2 - x^3 + x^4 - x^5 + \cdots$$

More generally, with :

$$\frac{1}{(1-x)^s} = \sum_{k=0}^\infty {s+k-1 \choose k} x^k.$$

So, for instance, when s = 1/2,

$$\frac{1}{\sqrt{1+x}} = 1 -\frac{1}{2}x + \frac{3}{8}x^2 - \frac{5}{16}x^3 + \frac{35}{128}x^4 - \frac{63}{256}x^5 + \cdots$$

Further generalizations

The generalized binomial theorem can be extended to the case where _x_ and _y_ are complex numbers. For this version, one should again assume |_x_| > |_y_|[26] and define the powers of and _x_ using a holomorphic branch of log defined on an open disk of radius |_x_| centered at _x_. The generalized binomial theorem is valid also for elements _x_ and _y_ of a Banach algebra as long as , _x_ is invertible, and ||_y/x_|| < 1.

A version of the binomial theorem is valid for the following Pochhammer symbol-like family of polynomials: for a given real constant _c_, define x⁽⁰⁾ = 1 and $x^{(n)} = \prod_{k=1}^{n}[x+(k-1)c]$ for n > 0. Then[27] $(a + b)^{(n)} = \sum_{k=0}^{n}\binom{n}{k}a^{(n-k)}b^{(k)}.$ The case 0}} recovers the usual binomial theorem.

More generally, a sequence {p_(n)}_(n = 0)^(∞) of polynomials is said to be BINOMIAL if

-   deg p_(n) = n for all n,
-   p₀(0) = 1, and
-   $p_n(x+y) = \sum_{k=0}^n \binom{n}{k} p_k(x) p_{n-k}(y)$ for all x, y, and n.

An operator Q on the space of polynomials is said to be the _basis operator_ of the sequence {p_(n)}_(n = 0)^(∞) if Qp₀ = 0 and Qp_(n) = np_(n − 1) for all n ≥ 1. A sequence {p_(n)}_(n = 0)^(∞) is binomial if and only if its basis operator is a Delta operator.[28] Writing E^(a) for the shift by a operator, the Delta operators corresponding to the above "Pochhammer" families of polynomials are the backward difference I − E^( − c) for c > 0, the ordinary derivative for c = 0, and the forward difference E^( − c) − I for c < 0.

Multinomial theorem

The binomial theorem can be generalized to include powers of sums with more than two terms. The general version is

$$(x_1 + x_2 + \cdots + x_m)^n
 = \sum_{k_1+k_2+\cdots +k_m = n} {n \choose k_1, k_2, \ldots, k_m}
 x_1^{k_1} x_2^{k_2} \cdots x_m^{k_m}.$$

where the summation is taken over all sequences of nonnegative integer indices _k_₁ through _k__(_m_) such that the sum of all _k__(_i_) is _n_. (For each term in the expansion, the exponents must add up to _n_). The coefficients $\tbinom n{k_1,\cdots,k_m}$ are known as multinomial coefficients, and can be computed by the formula

$${n \choose k_1, k_2, \ldots, k_m} = \frac{n!}{k_1! \cdot k_2! \cdots k_m!}.$$

Combinatorially, the multinomial coefficient $\tbinom n{k_1,\cdots,k_m}$ counts the number of different ways to partition an _n_-element set into disjoint subsets of sizes .

 Multi-binomial theorem

It is often useful when working in more dimensions, to deal with products of binomial expressions. By the binomial theorem this is equal to

$$(x_{1}+y_{1})^{n_{1}}\dotsm(x_{d}+y_{d})^{n_{d}} = \sum_{k_{1}=0}^{n_{1}}\dotsm\sum_{k_{d}=0}^{n_{d}} \binom{n_{1}}{k_{1}}\, x_{1}^{k_{1}}y_{1}^{n_{1}-k_{1}}\;\dotsc\;\binom{n_{d}}{k_{d}}\, x_{d}^{k_{d}}y_{d}^{n_{d}-k_{d}}.$$

This may be written more concisely, by multi-index notation, as

$$(x+y)^\alpha = \sum_{\nu \le \alpha} \binom{\alpha}{\nu} x^\nu y^{\alpha - \nu}.$$

General Leibniz rule

The general Leibniz rule gives the th derivative of a product of two functions in a form similar to that of the binomial theorem:[29]

$$(fg)^{(n)}(x) = \sum_{k=0}^n \binom{n}{k} f^{(n-k)}(x) g^{(k)}(x).$$

Here, the superscript indicates the th derivative of a function. If one sets and , and then cancels the common factor of from both sides of the result, the ordinary binomial theorem is recovered.


Applications

Multiple-angle identities

For the complex numbers the binomial theorem can be combined with de Moivre's formula to yield multiple-angle formulas for the sine and cosine. According to De Moivre's formula,

cos (_n__x_) + _i_sin (_n__x_) = (cos_x_+_i_sin_x_)^(_n_).

Using the binomial theorem, the expression on the right can be expanded, and then the real and imaginary parts can be taken to yield formulas for cos(_nx_) and sin(_nx_). For example, since

(cos_x_+_i_sin_x_)² = cos²_x_ + 2_i_cos _x_sin _x_ − sin²_x_,
De Moivre's formula tells us that

cos (2_x_) = cos²_x_ − sin²_x_ and sin (2_x_) = 2cos _x_sin _x_,
which are the usual double-angle identities. Similarly, since

(cos_x_+_i_sin_x_)³ = cos³_x_ + 3_i_cos²_x_sin _x_ − 3cos _x_sin²_x_ − _i_sin³_x_,
De Moivre's formula yields

cos (3_x_) = cos³_x_ − 3cos _x_sin²_x_ and sin (3_x_) = 3cos²_x_sin _x_ − sin³_x_.
In general,

$$\cos(nx) = \sum_{k\text{ even}} (-1)^{k/2} {n \choose k}\cos^{n-k} x \sin^k x$$
and

$$\sin(nx) = \sum_{k\text{ odd}} (-1)^{(k-1)/2} {n \choose k}\cos^{n-k} x \sin^k x.$$

Series for _e_

The number _e_ is often defined by the formula

$$e = \lim_{n\to\infty} \left(1 + \frac{1}{n}\right)^n.$$

Applying the binomial theorem to this expression yields the usual infinite series for _e_. In particular:

$$\left(1 + \frac{1}{n}\right)^n = 1 + {n \choose 1}\frac{1}{n} + {n \choose 2}\frac{1}{n^2} + {n \choose 3}\frac{1}{n^3} + \cdots + {n \choose n}\frac{1}{n^n}.$$

The _k_th term of this sum is

$${n \choose k}\frac{1}{n^k} = \frac{1}{k!}\cdot\frac{n(n-1)(n-2)\cdots (n-k+1)}{n^k}$$

As _n_ → ∞, the rational expression on the right approaches one, and therefore

$$\lim_{n\to\infty} {n \choose k}\frac{1}{n^k} = \frac{1}{k!}.$$

This indicates that _e_ can be written as a series:

$$e=\sum_{k=0}^\infty\frac{1}{k!}=\frac{1}{0!} + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \cdots.$$

Indeed, since each term of the binomial expansion is an increasing function of _n_, it follows from the monotone convergence theorem for series that the sum of this infinite series is equal to _e_.

Probability

The binomial theorem is closely related to the probability mass function of the negative binomial distribution. The probability of a (countable) collection of independent Bernoulli trials {X_(t)}_(t ∈ S) with probability of success p ∈ [0, 1] all not happening is $P\left(\bigcap_{t\in S} X_t^C\right) = (1-p)^{|S|} = \sum_{n=0}^{|S|} {|S| \choose n} (-p)^n$A useful upper bound for this quantity is e^( − pn). [30]


The binomial theorem in abstract algebra

Formula (1) is valid more generally for any elements _x_ and _y_ of a semiring satisfying . The theorem is true even more generally: alternativity suffices in place of associativity.

The binomial theorem can be stated by saying that the polynomial sequence is of binomial type.


In popular culture

-   The binomial theorem is mentioned in the Major-General's Song in the comic opera The Pirates of Penzance.
-   Professor Moriarty is described by Sherlock Holmes as having written a treatise on the binomial theorem.
-   The Portuguese poet Fernando Pessoa, using the heteronym Álvaro de Campos, wrote that "Newton's Binomial is as beautiful as the Venus de Milo. The truth is that few people notice it."[31]
-   In the 2014 film The Imitation Game, Alan Turing makes reference to Isaac Newton's work on the Binomial Theorem during his first meeting with Commander Denniston at Bletchley Park.


See also

-   Binomial approximation
-   Binomial distribution
-   Binomial inverse theorem
-   Stirling's approximation


Notes


References


Further reading

-   -


External links

-   -   Binomial Theorem by Stephen Wolfram, and "Binomial Theorem (Step-by-Step)" by Bruce Colletti and Jeff Bryant, Wolfram Demonstrations Project, 2007.

Category:Factorial and binomial topics Category:Theorems in algebra Category:Articles containing proofs

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

[20]

[21]

[22]

[23]

[24] Binomial theorem – inductive proofs

[25] This is to guarantee convergence. Depending on _r_, the series may also converge sometimes when |_x_| = |_y_|.

[26]

[27]

[28]

[29]

[30]

[31]