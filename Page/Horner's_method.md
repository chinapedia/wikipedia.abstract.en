In mathematics, the term HORNER'S RULE (or HORNER'S METHOD, HORNER'S SCHEME etc) refers to a polynomial evaluation method named after William George Horner expressed by

$\begin{align}
p(x) &= a_0 + a_1x + a_2x^2 + a_3x^3 + \cdots + a_nx^n \\
 &= a_0 + x \bigg(a_1 + x \Big(a_2 + x \big(a_3 + \cdots + x(a_{n-1} + x \, a_n) \cdots \big) \Big) \bigg) \\
\end{align}$

This allows evaluation of a polynomial of degree with only n multiplications and n additions. This is optimal, since there are polynomials of degree that cannot be evaluated with fewer arithmetic operations.

This algorithm is much older than Horner. He himself ascribed it to Joseph-Louis Lagrange but it can be traced back many hundreds of years to Chinese and Persian mathematicians.[1]

Horner's root-finding method: Until computers came into general use in about 1970 the term 'Horner's method' was used to refer to a root-finding method for polynomials named after Horner who described a similar method in 1819. This method was widely used and became a standard method for hand calculation. It gave a convenient way for using the Newton–Raphson method for polynomials. It relied on the algorithm for polynomial evaluation now named after Horner. After the introduction of computers this root-finding method went out of use and as a result the term Horner's method (rule etc) has become understood to mean just the polynomial evaluation algorithm.


Description of the algorithm

Given the polynomial

$$p(x) = \sum_{i=0}^n a_i x^i = a_0 + a_1 x + a_2 x^2 + a_3 x^3 + \cdots + a_n x^n,$$

where a₀, …, a_(n) are constant coefficients, we wish to evaluate the polynomial at a specific value of x that we'll call x₀.

To accomplish this, we define a new sequence of constants as follows:

$$\begin{align}
b_n & := a_n \\
b_{n-1} & := a_{n-1} + b_n x_0 \\
b_{n-2} & := a_{n-2} + b_{n-1} x_0 \\
 & ~~~ \vdots \\
b_0 & := a_0 + b_1 x_0.
\end{align}$$

Then b₀ is the value of p(x₀).

To see why this works, note that the polynomial can be written in the form

_p_(_x_) = _a_₀ + _x_(_a_₁ + _x_(_a_₂ + _x_(_a_₃ + ⋯ + _x_(_a__(_n_ − 1) + _x_ _a__(_n_))⋯))) .

Thus, by iteratively substituting the b_(i) into the expression,



\begin{align} p(x_0) & = a_0 + x_0\Big(a_1 + x_0\big(a_2 + \cdots + x_0(a_{n-1} + b_n x_0) \cdots \big)\Big) \\ & = a_0 + x_0\Big(a_1 + x_0\big(a_2 + \cdots + x_0 b_{n-1}\big)\Big) \\ & ~~ \vdots \\ & = a_0 + x_0 b_1 \\ & = b_0. \end{align}


Examples

Evaluate f(x) = 2x³ − 6x² + 2x − 1 for x = 3.

We use synthetic division as follows:

 _x₀_│   _x³_    _x²_    _x¹_    _x⁰_
 3 │   2    −6     2    −1
   │         6     0     6
   └────────────────────────
       2     0     2     5

The entries in the third row are the sum of those in the first two. Each entry in the second row is the product of the _x_-value (3 in this example) with the third-row entry immediately to the left. The entries in the first row are the coefficients of the polynomial to be evaluated. Then the remainder of f(x) on division by x − 3 is 5.

But by the polynomial remainder theorem, we know that the remainder is f(3). Thus f(3) = 5

In this example, if a₃ = 2, a₂ =  − 6, a₁ = 2, a₀ =  − 1 we can see that b₃ = 2, b₂ = 0, b₁ = 2, b₀ = 5, the entries in the third row. So, synthetic division is based on Horner's method.

As a consequence of the polynomial remainder theorem, the entries in the third row are the coefficients of the second-degree polynomial, the quotient of f(x) on division by x − 3. The remainder is 5. This makes Horner's method useful for polynomial long division.

Divide x³ − 6x² + 11x − 6 by x − 2:

 2 │   1    −6    11    −6
   │         2    −8     6
   └────────────────────────
       1    −4     3     0

The quotient is x² − 4x + 3.

Let f₁(x) = 4x⁴ − 6x³ + 3x − 5 and f₂(x) = 2x − 1. Divide f₁(x) by f₂ (x) using Horner's method.

  0.5 │ 4  -6   0   3  -5
      │     2  -2  -1   1
└───────────────────────
        2  -2  -1   1  -2

The third row is the sum of the first two rows, divided by 2. Each entry in the second row is the product of 1 with the third-row entry to the left. The answer is

$$\frac{f_1(x)}{f_2(x)}=2x^3-2x^2-x+1-\frac{4}{2x-1}.$$

Floating-point multiplication and division

Horner's method is a fast, code-efficient method for multiplication and division of binary numbers on a microcontroller with no hardware multiplier. One of the binary numbers to be multiplied is represented as a trivial polynomial, where (using the above notation) a_(i) = 1, and x = 2. Then, _x_ (or _x_ to some power) is repeatedly factored out. In this binary numeral system (base 2), x = 2, so powers of 2 are repeatedly factored out.

Example

For example, to find the product of two numbers (0.15625) and _m_:

$$\begin{align}
(0.15625) m & = (0.00101_b) m = ( 2^{-3} + 2^{-5}) m = (2^{-3})m + (2^{-5})m \\
 & = 2^{-3} (m + (2^{-2})m) = 2^{-3} (m + 2^{-2} (m)).
\end{align}$$

Method

To find the product of two binary numbers _d_ and _m_:

    1. A register holding the intermediate result is initialized to _d_.
    2. Begin with the least significant (rightmost) non-zero bit in _m_.

        2b. Count (to the left) the number of bit positions to the next most significant non-zero bit. If there are no more-significant bits, then take the value of the current bit position.
        2c. Using that value, perform a left-shift operation by that number of bits on the register holding the intermediate result

    3. If all the non-zero bits were counted, then the intermediate result register now holds the final result. Otherwise, add d to the intermediate result, and continue in step 2 with the next most significant bit in _m_.

Derivation

In general, for a binary number with bit values (d₃d₂d₁d₀) the product is

(_d_₃2³ + _d_₂2² + _d_₁2¹ + _d_₀2⁰)_m_ = _d_₃2³_m_ + _d_₂2²_m_ + _d_₁2¹_m_ + _d_₀2⁰_m_.
At this stage in the algorithm, it is required that terms with zero-valued coefficients are dropped, so that only binary coefficients equal to one are counted, thus the problem of multiplication or division by zero is not an issue, despite this implication in the factored equation:

$$= d_0\left(m + 2 \frac{d_1}{d_0} \left(m + 2 \frac{d_2}{d_1} \left(m + 2 \frac{d_3}{d_2} (m)\right)\right)\right).$$

The denominators all equal one (or the term is absent), so this reduces to

 = _d_₀(_m_ + 2_d_₁(_m_ + 2_d_₂(_m_ + 2_d_₃(_m_)))),
or equivalently (as consistent with the "method" described above)

 = _d_₃(_m_ + 2^( − 1)_d_₂(_m_ + 2^( − 1)_d_₁(_m_ + _d_₀(_m_)))).

In binary (base-2) math, multiplication by a power of 2 is merely a register shift operation. Thus, multiplying by 2 is calculated in base-2 by an arithmetic shift. The factor (2^(−1)) is a right arithmetic shift, a (0) results in no operation (since 2⁰ = 1 is the multiplicative identity element), and a (2¹) results in a left arithmetic shift. The multiplication product can now be quickly calculated using only arithmetic shift operations, addition and subtraction.

The method is particularly fast on processors supporting a single-instruction shift-and-addition-accumulate. Compared to a C floating-point library, Horner's method sacrifices some accuracy, however it is nominally 13 times faster (16 times faster when the "canonical signed digit" (CSD) form is used) and uses only 20% of the code space.[2]

Polynomial root finding

Using Horner's method in combination with Newton's method, it is possible to approximate the real roots of a polynomial. The algorithm works as follows. Given a polynomial p_(n)(x) of degree n with zeros z_(n) < z_(n − 1) < ⋯ < z₁, make some initial guess x₀ such that x₀ > z₁. Now iterate the following two steps:

1. Using Newton's method, find the largest zero z₁ of p_(n)(x) using the guess x₀.

2. Using Horner's method, divide out (x − z₁) to obtain p_(n − 1). Return to step 1 but use the polynomial p_(n − 1) and the initial guess z₁.

These two steps are repeated until all real zeros are found for the polynomial. If the approximated zeros are not precise enough, the obtained values can be used as initial guesses for Newton's method but using the full polynomial rather than the reduced polynomials.[3]

Example

HornerandNewton.gif

Consider the polynomial



p_6(x) = (x-3)(x+3)(x+5)(x+8)(x-2)(x-7)

which can be expanded to



p_6(x) = x^6 + 4x^5 - 72x^4 -214x^3 + 1127x^2 + 1602x -5040.

From the above we know that the largest root of this polynomial is 7 so we are able to make an initial guess of 8. Using Newton's method the first zero of 7 is found as shown in black in the figure to the right. Next p(x) is divided by (x − 7) to obtain



p_5(x) = x^5 + 11x^4 + 5x^3 - 179x^2 - 126x + 720

which is drawn in red in the figure to the right. Newton's method is used to find the largest zero of this polynomial with an initial guess of 7. The largest zero of this polynomial which corresponds to the second largest zero of the original polynomial is found at 3 and is circled in red. The degree 5 polynomial is now divided by (x − 3) to obtain



p_4(x) = x^4 + 14x^3 + 47x^2 - 38x - 240

which is shown in yellow. The zero for this polynomial is found at 2 again using Newton's method and is circled in yellow. Horner's method is now used to obtain



p_3(x) = x^3 + 16x^2 + 79x + 120

which is shown in green and found to have a zero at −3. This polynomial is further reduced to



p_2(x) = x^2 + 13x + 40

which is shown in blue and yields a zero of −5. The final root of the original polynomial may be found by either using the final zero as an initial guess for Newton's method, or by reducing p₂(x) and solving the linear equation. As can be seen, the expected roots of −8, −5, −3, 2, 3, and 7 were found.


Application

Horner's method can be used to convert between different positional numeral systems – in which case _x_ is the base of the number system, and the _a__(_i_) coefficients are the digits of the base-_x_ representation of a given number – and can also be used if _x_ is a matrix, in which case the gain in computational efficiency is even greater. In fact, when _x_ is a matrix, further acceleration is possible which exploits the structure of matrix multiplication, and only $\sqrt{n}$ instead of _n_ multiplies are needed (at the expense of requiring more storage) using the 1973 method of Paterson and Stockmeyer.[4]


Efficiency

Evaluation using the monomial form of a degree-_n_ polynomial requires at most _n_ additions and (_n_² + _n_)/2 multiplications, if powers are calculated by repeated multiplication and each monomial is evaluated individually. (This can be reduced to _n_ additions and 2_n_ − 1 multiplications by evaluating the powers of _x_ iteratively.) If numerical data are represented in terms of digits (or bits), then the naive algorithm also entails storing approximately 2_n_ times the number of bits of _x_ (the evaluated polynomial has approximate magnitude _x^(n)_, and one must also store _x^(n)_ itself). By contrast, Horner's method requires only _n_ additions and _n_ multiplications, and its storage requirements are only _n_ times the number of bits of _x_. Alternatively, Horner's method can be computed with _n_ fused multiply–adds. Horner's method can also be extended to evaluate the first _k_ derivatives of the polynomial with _kn_ additions and multiplications.[5]

Horner's method is optimal, in the sense that any algorithm to evaluate an arbitrary polynomial must use at least as many operations. Alexander Ostrowski proved in 1954 that the number of additions required is minimal.[6] Victor Pan proved in 1966 that the number of multiplications is minimal.[7] However, when _x_ is a matrix, Horner's method is not optimal.

This assumes that the polynomial is evaluated in monomial form and no preconditioning of the representation is allowed, which makes sense if the polynomial is evaluated only once. However, if preconditioning is allowed and the polynomial is to be evaluated many times, then faster algorithms are possible. They involve a transformation of the representation of the polynomial. In general, a degree-_n_ polynomial can be evaluated using only +2 multiplications and _n_ additions.[8]

Parallel evaluation

A disadvantage of Horner's rule is that all of the operations are sequentially dependent, so it is not possible to take advantage of instruction level parallelism on modern computers. In most applications where the efficiency of polynomial evaluation matters, many low-order polynomials are evaluated simultaneously (for each pixel or polygon in computer graphics, or for each grid square in a numerical simulation), so it is not necessary to find parallelism within a single polynomial evaluation.

If, however, one is evaluating a single polynomial of very high order, it may be useful to break it up as follows:

$$\begin{align}
p(x) & = \sum_{i=0}^n a_i x^i \\
     & = a_0 + a_1 x + a_2 x^2 + a_3 x^3 + \cdots + a_n x^n \\
     & = \left( a_0 + a_2 x^2 + a_4 x^4 + \cdots\right) + \left(a_1 x + a_3 x^3 + a_5 x^5 + \cdots \right) \\
     & = \left( a_0 + a_2 x^2 + a_4 x^4 + \cdots\right) + x \left(a_1 + a_3 x^2 + a_5 x^4 + \cdots \right) \\
     & = \sum_{i=0}^{\lfloor n/2 \rfloor} a_{2i} x^{2i} + x \sum_{i=0}^{\lfloor n/2 \rfloor} a_{2i+1} x^{2i} \\
     & = p_0(x^2) + x p_1(x^2). \\
\end{align}$$

More generally, the summation can be broken into _k_ parts:

$$\begin{align}
p(x) & = \sum_{i=0}^n a_i x^i \\
     & = \sum_{j=0}^{k-1} x^j \sum_{i=0}^{\lfloor n/k \rfloor} a_{ki+j} x^{ki} \\
     & = \sum_{j=0}^{k-1} x^j p_j(x^k) \\
\end{align}$$
where the inner summations may be evaluated using separate parallel instances of Horner's method. This requires slightly more operations than the basic Horner's method, but allows _k_-way SIMD execution of most of them.


Divided difference of a polynomial

Horner's method can be modified to compute the divided difference (p(y) − p(x))/(y − x). Given the polynomial (as before)

$$p(x) = \sum_{i=0}^n a_i x^i = a_0 + a_1 x + a_2 x^2 + a_3 x^3 + \cdots + a_n x^n,$$

proceed as follows[9]

$$\begin{align}
b_n & = a_n,                 &\quad d_n &= b_n, \\
b_{n-1} & = a_{n-1} + b_n x, &\quad d_{n-1} &= b_{n-1} + d_n y, \\
& {}\  \  \vdots             &\quad &  {}\ \ \vdots\\
b_1 & = a_1 + b_2 x,         &\quad d_1 &= b_1 + d_2 y,\\
b_0 & = a_0 + b_1 x.
\end{align}$$

At completion, we have

$$\begin{align}
p(x) &= b_0, \\
\frac{p(y) - p(x)}{y - x} &= d_1, \\
p(y) &= b_0 + (y - x) d_1.
\end{align}$$
This computation of the divided difference is subject to less round-off error than evaluating p(x) and p(y) separately, particularly when x ≈ y. Substituting y = x in this method gives d₁ = p′(x), the derivative of p(x).


History

Qingjiushaoquad1.GIF's algorithm for solving the quadratic polynomial equation − x⁴ + 763200x² − 40642560000 = 0
result: x=840[10]]] Horner's paper, titled "A new method of solving numerical equations of all orders, by continuous approximation",[11] was read before the Royal Society of London, at its meeting on July 1, 1819, with Davies Gilbert, Vice-President and Treasurer, in the chair; this was the final meeting of the session before the Society adjourned for its Summer recess. When a sequel was read before the Society in 1823, it was again at the final meeting of the session. On both occasions, papers by James Ivory, FRS, were also read. In 1819, it was Horner's paper that got through to publication in the "Philosophical Transactions".[12] later in the year, Ivory's paper falling by the way, despite Ivory being a Fellow; in 1823, when a total of ten papers were read, fortunes as regards publication, were reversed. Gilbert, who had strong connections with the West of England and may have had social contact with Horner, resident as Horner was in Bristol and Bath, published his own survey of Horner-type methods earlier in 1823.

Horner's paper in Part II of _Philosophical Transactions of the Royal Society of London_ for 1819 was warmly and expansively welcomed by a reviewer in the issue of _The Monthly Review: or, Literary Journal_ for April, 1820; in comparison, a technical paper by Charles Babbage is dismissed curtly in this review. However, the reviewer noted that another, similar method had also recently been published by the architect and mathematical expositor, Peter Nicholson. This theme is developed in a further review of some of Nicholson's books in the issue of _The Monthly Review_ for December, 1820, which in turn ends with notice of the appearance of a booklet by Theophilus Holdred, from whom Nicholson acknowledges he obtained the gist of his approach in the first place, although claiming to have improved upon it. The sequence of reviews is concluded in the issue of _The Monthly Review_ for September, 1821, with the reviewer concluding that whereas Holdred was the first person to discover a direct and general practical solution of numerical equations, he had not reduced it to its simplest form by the time of Horner's publication, and saying that had Holdred published forty years earlier when he first discovered his method, his contribution could be more easily recognized. The reviewer is exceptionally well-informed, even having cited Horner's preparatory correspondence with Peter Barlow in 1818, seeking work of Budan. The Bodlean Library, Oxford has the Editor's annotated copy of _The Monthly Review_ from which it is clear that the most active reviewer in mathematics in 1814 and 1815 (the last years for which this information has been published) was none other than Peter Barlow, one of the foremost specialists on approximation theory of the period, suggesting that it was Barlow, who wrote this sequence of reviews. As it also happened, Henry Atkinson, of Newcastle, devised a similar approximation scheme in 1809; he had consulted his fellow Geordie, Charles Hutton, another specialist and a senior colleague of Barlow at the Royal Military Academy, Woolwich, only to be advised that, while his work was publishable, it was unlikely to have much impact. J. R. Young, writing in the mid-1830s, concluded that Holdred's first method replicated Atkinson's while his improved method was only added to Holdred's booklet some months after its first appearance in 1820, when Horner's paper was already in circulation.

The feature of Horner's writing that most distinguishes it from his English contemporaries is the way he draws on the Continental literature, notably the work of Arbogast. The advocacy, as well as the detraction, of Horner's Method has this as an unspoken subtext. Quite how he gained that familiarity has not been determined. Horner is known to have made a close reading of John Bonneycastle's book on algebra. Bonneycastle recognizes that Arbogast has the general, combinatorial expression for the reversion of series, a project going back at least to Newton. But Bonneycastle's main purpose in mentioning Arbogast is not to praise him, but to observe that Arbogast's notation is incompatible with the approach he adopts. The gap in Horner's reading was the work of Paolo Ruffini, except that, as far as awareness of Ruffini goes, citations of Ruffini's work by authors, including medical authors, in _Philosophical Transactions_ speak volumes, as there are none — Ruffini's name[13] only appears in 1814, recording a work he donated to the Royal Society. Ruffini might have done better if his work had appeared in French, as had Malfatti's Problem in the reformulation of Joseph Diez Gergonne, or had he written in French, as had Antonio Cagnoli, a source quoted by Bonneycastle on series reversion. (Today, Cagnoli is in the Italian Wikipedia, as shown, but has yet to make it into either French or English.)

Fuller[14] showed that the method in Horner's 1819 paper differs from what afterwards became known as "Horner's method" and that in consequence the priority for this method should go to Holdred (1920). This view may be compared with the remarks concerning the works of Horner and Holdred in the previous paragraph. Fuller also takes aim at Augustus De Morgan. Precocious though Augustus de Morgan was, he was not the reviewer for _The Monthly Review_, while several others — Thomas Stephens Davies, J. R. Young, Stephen Fenwick, T. T. Wilkinson — wrote Horner firmly into their records, not least Horner, as he published extensively up until the year of his death in 1837. His paper in 1819 was one that would have been difficult to miss. In contrast, the only other mathematical sighting of Holdred is a single named contribution to _The Gentleman's Mathematical Companion_, an answer to a problem.

It is questionable to what extent it was De Morgan's advocacy of Horner's priority in discovery[15][16] that led to "Horner's method" being so called in textbooks, but it is true that those suggesting this tend to know of Horner largely through intermediaries, of whom De Morgan made himself a prime example. However, this method _qua_ method was known long before Horner. In reverse chronological order, Horner's method was already known to:

-   Paolo Ruffini in 1809 (see Ruffini's rule)[17][18]
-   Isaac Newton in 1669 (but precise reference needed)
-   the Chinese mathematician Zhu Shijie in the 14th century[19]
-   the Chinese mathematician Qin Jiushao in his _Mathematical Treatise in Nine Sections_ in the 13th century
-   the Persian mathematician Sharaf al-Dīn al-Ṭūsī in the 12th century (the first to use that method in a general case of cubic equation)[20]
-   the Chinese mathematician Jia Xian in the 11th century (Song dynasty)
-   _The Nine Chapters on the Mathematical Art_, a Chinese work of the Han dynasty (202 BC – 220 AD) edited by Liu Hui (fl. 3rd century).[21]

However, this observation on its own masks significant differences in conception and also, as noted with Ruffini's work, issues of accessibility.

Qin Jiushao, in his _Shu Shu Jiu Zhang_ (_Mathematical Treatise in Nine Sections_; 1247), presents a portfolio of methods of Horner-type for solving polynomial equations, which was based on earlier works of the 11th century Song dynasty mathematician Jia Xian; for example, one method is specifically suited to bi-quintics, of which Qin gives an instance, in keeping with the then Chinese custom of case studies. The first person writing in English to note the connection with Horner's method was Alexander Wylie, writing in _The North China Herald_ in 1852; perhaps conflating and misconstruing different Chinese phrases, Wylie calls the method _Harmoniously Alternating Evolution_ (which does not agree with his Chinese, _linglong kaifang_, not that at that date he uses pinyin), working the case of one of Qin's quartics and giving, for comparison, the working with Horner's method. Yoshio Mikami in _Development of Mathematics in China and Japan_ published in Leipzig in 1913, gave a detailed description of Qin's method, using the quartic illustrated to the above right in a worked example; he wrote: However, as Mikami is also aware, it was _not altogether impossible_ that a related work, _Si Yuan Yu Jian_ (_Jade Mirror of the Four Unknowns; 1303)_ by Zhu Shijie might make the shorter journey across to Japan, but seemingly it never did, although another work of Zhu, _Suan Xue Qi Meng_, had a seminal influence on the development of traditional mathematics in the Edo period, starting in the mid-1600s. Ulrich Libbrecht (at the time teaching in school, but subsequently a professor of comparative philosophy) gave a detailed description in his doctoral thesis of Qin's method, he concluded: _It is obvious that this procedure is a Chinese invention ... the method was not known in India_. He said, Fibonacci probably learned of it from Arabs, who perhaps borrowed from the Chinese.[22] Here, the problems is that there is no more evidence for this speculation than there is of the method being known in India. Of course, the extraction of square and cube roots along similar lines is already discussed by Liu Hui in connection with Problems IV.16 and 22 in _Jiu Zhang Suan Shu_, while Wang Xiaotong in the 7th century supposes his readers can solve cubics by an approximation method described in his book Jigu Suanjing.


See also

-   Clenshaw algorithm to evaluate polynomials in Chebyshev form
-   De Boor's algorithm to evaluate splines in B-spline form
-   De Casteljau's algorithm to evaluate polynomials in Bézier form
-   Estrin's scheme to facilitate parallelization on modern computer architectures
-   Lill's method to approximate roots graphically
-   Ruffini's rule to divide a polynomial by a binomial of the form x − r


Notes


References

-   -   Read before the Southwestern Section of the American Mathematical Society on November 26, 1910.

-   -   -   -   -

        Holdred's method is in the supplement following page numbered 45 (which is the 52nd page of the pdf version).

-

        Directly available online via the link, but also reprinted with appraisal in D.E. Smith: _A Source Book in Mathematics_, McGraw-Hill, 1929; Dover reprint, 2 vols, 1959.

-   -   -   -   -   -   -   -   -   -   -   -

        Reprinted from issues of _The North China Herald_ (1852).


External links

-   -   Qiu Jin-Shao, Shu Shu Jiu Zhang (Cong Shu Ji Cheng ed.)

Category:Algebra Category:Polynomials Category:Numerical analysis Category:Articles with example Python code Category:Articles with example MATLAB/Octave code Category:Articles with example C code

[1] 600 years earlier, by the Chinese mathematician Qin Jiushao and 700 years earlier, by the Persian mathematician Sharaf al-Dīn al-Ṭūsī

[2] .

[3] .

[4] .

[5] .

[6] .

[7] .

[8] .

[9]

[10] .

[11] .

[12]

[13] http://hdl.handle.net/2027/njp.32101013501372?urlappend=%3Bseq=695

[14] .

[15] .

[16]

[17]

[18]

[19]

[20] .

[21] .

[22] .