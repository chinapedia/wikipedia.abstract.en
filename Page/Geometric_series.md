GeometricSquares.svg

In mathematics, a GEOMETRIC SERIES is a series with a constant ratio between successive terms. For example, the series

$$\frac{1}{2} \,+\, \frac{1}{4} \,+\, \frac{1}{8} \,+\, \frac{1}{16} \,+\, \cdots$$

is geometric, because each successive term can be obtained by multiplying the previous term by 1/2.

Geometric series are among the simplest examples of infinite series with finite sums, although not all of them have this property. Historically, geometric series played an important role in the early development of calculus, and they continue to be central in the study of convergence of series. Geometric series are used throughout mathematics, and they have important applications in physics, engineering, biology, economics, computer science, queueing theory, and finance.


Common ratio

Geometric_Segment.svg Geometrische_reihe.svg The terms of a geometric series form a geometric progression, meaning that the ratio of successive terms in the series is constant. This relationship allows for the representation of a geometric series using only two terms, _r_ and _a_. The term _r_ is the common ratio, and _a_ is the first term of the series. As an example the geometric series given in the introduction,

    $\frac{1}{2} \,+\, \frac{1}{4} \,+\, \frac{1}{8} \,+\, \frac{1}{16} \,+\, \cdots$

may simply be written as

_a_ + _a__r_ + _a__r_² + _a__r_³ + ⋯
, with $a = \frac{1}{2}$ and $r = \frac{1}{2}$.

The following table shows several geometric series with different start terms and common ratios:

  Start term, _a_   Common ratio, _r_   Example series
  ----------------- ------------------- -----------------------------------------
  4                 10                  4 + 40 + 400 + 4000 + 40,000 + ···
  9                 1/3                 9 + 3 + 1 + 1/3 + 1/9 + ···
  7                 1/10                7 + 0.7 + 0.07 + 0.007 + 0.0007 + ···
  3                 1                   3 + 3 + 3 + 3 + 3 + ···
  1                 −1/2                1 − 1/2 + 1/4 − 1/8 + 1/16 − 1/32 + ···
  3                 –1                  3 − 3 + 3 − 3 + 3 − ···

The behavior of the terms depends on the common ratio _r_:

    If _r_ is between −1 and +1, the terms of the series approach zero in the limit (becoming smaller and smaller in magnitude), and the series converges to a sum. In the case above, where _r_ is 1/2, the series converges to 1.
    If _r_ is GREATER THAN ONE or LESS THAN MINUS ONE the terms of the series become larger and larger in magnitude. The sum of the terms also gets larger and larger, and the series has no sum. (The series diverges.)
    If _r_ is EQUAL TO ONE, all of the terms of the series are the same. The series diverges.
    If _r_ is MINUS ONE the terms take two values alternately (e.g. 2, −2, 2, −2, 2,... ). The sum of the terms oscillates between two values (e.g. 2, 0, 2, 0, 2,... ). This is a different type of divergence and again the series has no sum. See for example Grandi's series: 1 − 1 + 1 − 1 + ···.


Sum

The sum of a geometric series is finite as long as the absolute value of the ratio is less than 1; as the numbers near zero, they become insignificantly small, allowing a sum to be calculated despite the series containing infinitely many terms. The sum can be computed using the self-similarity of the series.

Example

Infinite_geometric_series_sum.svg Consider the sum of the following geometric series:

$$s \;=\; 1 \,+\, \frac{2}{3} \,+\, \frac{4}{9} \,+\, \frac{8}{27} \,+\, \cdots .$$
This series has common ratio 2/3. If we multiply through by this common ratio, then the initial 1 becomes a 2/3, the 2/3 becomes a 4/9, and so on:

$$\frac{2}{3}s \;=\; \frac{2}{3} \,+\, \frac{4}{9} \,+\, \frac{8}{27} \,+\, \frac{16}{81} \,+\, \cdots .$$
This new series is the same as the original, except that the first term is missing. Subtracting the new series (2/3)_s_ from the original series _s_ cancels every term in the original but the first,

$$s \,-\, \frac{2}{3}s \;=\; 1,\;\;\;\mbox{so }s=3.$$
A similar technique can be used to evaluate any self-similar expression.

Formula

For r ≠ 1, the sum of the first _n_ terms of a geometric series is

$$a + ar + a r^2 + a r^3 + \cdots + a r^{n-1} = \sum_{k=0}^{n-1} ar^k= a \left(\frac{1-r^{n}}{1-r}\right),$$

where is the first term of the series, and is the common ratio. We can derive this formula as follows:

$$\begin{align}
s &= a + ar + ar^2 + ar^3 + \cdots + ar^{n-1}, \\
rs &= ar + ar^2 + ar^3 + ar^4 + \cdots + ar^{n},  \\
s - rs &= a-ar^{n},  \\
s(1-r) &= a(1-r^{n}),
\end{align}$$
so,

$$s = a \left(\frac{1-r^{n}}{1-r}\right) \quad \text{(if } r \neq 1 \text{)}.$$
As goes to infinity, the absolute value of must be less than one for the series to converge. The sum then becomes

$$a+ar+ar^2+ar^3+ar^4+\cdots = \sum_{k=0}^\infty ar^k = \frac{a}{1-r}, \text{ for } |r|<1.$$

When , this can be simplified to

$$1 \,+\, r \,+\, r^2 \,+\, r^3 \,+\, \cdots \;=\; \frac{1}{1-r},$$

the left-hand side being a geometric series with common ratio .

The formula also holds for complex , with the corresponding restriction, the modulus of is strictly less than one.

Proof of convergence

We can prove that the geometric series converges using the sum formula for a geometric progression:

$$\begin{align}
1 + r + r^2 + r^3 + \cdots \ &= \lim_{n\rightarrow\infty} \left(1 + r + r^2 + \cdots + r^n\right) \\
&= \lim_{n\rightarrow\infty} \frac{1-r^{n+1}}{1-r}.
\end{align}$$
Since (1 + _r_ + _r_² + ... + _r_^(_n_))(1−_r_) = 1−_r_^(_n_+1) and for | _r_ | < 1.

Convergence of geometric series can also be demonstrated by rewriting the series as an equivalent telescoping series. Consider the function,

$$g(K) = \frac{r^{K}}{1-r}.$$
Note that

1 = _g_(0) − _g_(1) , _r_ = _g_(1) − _g_(2) , _r_² = _g_(2) − _g_(3) , …
Thus,

_S_ = 1 + _r_ + _r_² + _r_³ + ⋯ = (_g_(0) − _g_(1)) + (_g_(1) − _g_(2)) + (_g_(2) − _g_(3)) + ⋯.
If

|_r_| < 1
then

_g_(_K_) → 0 as _K_ → ∞.
So _S_ converges to

$$g(0) = \frac{1}{1-r}.$$


Applications

Repeating decimals

A repeating decimal can be thought of as a geometric series whose common ratio is a power of 1/10. For example:

$$0.7777\ldots \;=\; \frac{7}{10} \,+\, \frac{7}{100} \,+\, \frac{7}{1000} \,+\, \frac{7}{10000} \,+\, \cdots.$$

The formula for the sum of a geometric series can be used to convert the decimal to a fraction,

$$0.7777\ldots \;=\; \frac{a}{1-r} \;=\; \frac{7/10}{1-1/10} \;=\; \frac{7/10}{9/10} \;=\; \frac{7}{9}.$$

The formula works not only for a single repeating figure, but also for a repeating group of figures. For example:

$$0.123412341234\ldots \;=\; \frac{a}{1-r} \;=\; \frac{1234/10000}{1-1/10000} \;=\; \frac{1234/10000}{9999/10000} \;=\; \frac{1234}{9999}.$$

Note that every series of repeating consecutive decimals can be conveniently simplified with the following:

$$0.09090909\ldots \;=\; \frac{09}{99} \;=\; \frac{1}{11}.$$

$$0.143814381438\ldots \;=\; \frac{1438}{9999}.$$

$$0.9999\ldots \;=\; \frac{9}{9} \;=\; 1.$$

That is, a repeating decimal with repeat length is equal to the quotient of the repeating part (as an integer) and .

Archimedes' quadrature of the parabola

Parabolic_Segment_Dissection.svg Archimedes used the sum of a geometric series to compute the area enclosed by a parabola and a straight line. His method was to dissect the area into an infinite number of triangles.

Archimedes' Theorem states that the total area under the parabola is 4/3 of the area of the blue triangle.

Archimedes determined that each green triangle has 1/8 the area of the blue triangle, each yellow triangle has 1/8 the area of a green triangle, and so forth.

Assuming that the blue triangle has area 1, the total area is an infinite sum:

$$1 \,+\, 2\left(\frac{1}{8}\right) \,+\, 4\left(\frac{1}{8}\right)^2 \,+\, 8\left(\frac{1}{8}\right)^3 \,+\, \cdots.$$

The first term represents the area of the blue triangle, the second term the areas of the two green triangles, the third term the areas of the four yellow triangles, and so on. Simplifying the fractions gives

$$1 \,+\, \frac{1}{4} \,+\, \frac{1}{16} \,+\, \frac{1}{64} \,+\, \cdots.$$

This is a geometric series with common ratio and the fractional part is equal to

$$\sum_{n=0}^\infty 4^{-n} = 1 + 4^{-1} + 4^{-2} + 4^{-3} + \cdots = {4\over 3}.$$

The sum is

$$\frac{1}{1 -r}\;=\;\frac{1}{1 -\frac{1}{4}}\;=\;\frac{4}{3}.$$

This computation uses the method of exhaustion, an early version of integration. Using calculus, the same area could be found by a definite integral.

Fractal geometry

Koch_Snowflake_Triangles.png is a union of infinitely many triangles.]] In the study of fractals, geometric series often arise as the perimeter, area, or volume of a self-similar figure.

For example, the area inside the Koch snowflake can be described as the union of infinitely many equilateral triangles (see figure). Each side of the green triangle is exactly 1/3 the size of a side of the large blue triangle, and therefore has exactly 1/9 the area. Similarly, each yellow triangle has 1/9 the area of a green triangle, and so forth. Taking the blue triangle as a unit of area, the total area of the snowflake is

$$1 \,+\, 3\left(\frac{1}{9}\right) \,+\, 12\left(\frac{1}{9}\right)^2 \,+\, 48\left(\frac{1}{9}\right)^3 \,+\, \cdots.$$

The first term of this series represents the area of the blue triangle, the second term the total area of the three green triangles, the third term the total area of the twelve yellow triangles, and so forth. Excluding the initial 1, this series is geometric with constant ratio _r_ = 4/9. The first term of the geometric series is _a_ = 3(1/9) = 1/3, so the sum is

$$1\,+\,\frac{a}{1-r}\;=\;1\,+\,\frac{\frac{1}{3}}{1-\frac{4}{9}}\;=\;\frac{8}{5}.$$

Thus the Koch snowflake has 8/5 of the area of the base triangle.

Zeno's paradoxes

The convergence of a geometric series reveals that a sum involving an infinite number of summands can indeed be finite, and so allows one to resolve many of Zeno's paradoxes. For example, Zeno's dichotomy paradox maintains that movement is impossible, as one can divide any finite path into an infinite number of steps wherein each step is taken to be half the remaining distance. Zeno's mistake is in the assumption that the sum of an infinite number of finite steps cannot be finite. This is of course not true, as evidenced by the convergence of the geometric series with r = 1/2.

Euclid

Book IX, Proposition 35[1] of Euclid's _Elements_ expresses the partial sum of a geometric series in terms of members of the series. It is equivalent to the modern formula.

Economics

In economics, geometric series are used to represent the present value of an annuity (a sum of money to be paid in regular intervals).

For example, suppose that a payment of $100 will be made to the owner of the annuity once per year (at the end of the year) in perpetuity. Receiving $100 a year from now is worth less than an immediate $100, because one cannot invest the money until one receives it. In particular, the present value of $100 one year in the future is $100 / (1 + I ), where I is the yearly interest rate.

Similarly, a payment of $100 two years in the future has a present value of $100 / (1 + I)² (squared because two years' worth of interest is lost by not receiving the money right now). Therefore, the present value of receiving $100 per year in perpetuity is

$$\sum_{n=1}^\infty \frac{\$100}{(1+I)^n},$$

which is the infinite series:

$$\frac{\$ 100}{(1+I)} \,+\, \frac{\$ 100}{(1+I)^2} \,+\, \frac{\$ 100}{(1+I)^3} \,+\, \frac{\$ 100}{(1+I)^4} \,+\, \cdots.$$

This is a geometric series with common ratio 1 / (1 + I ). The sum is the first term divided by (one minus the common ratio):

$$\frac{\$ 100/(1+I)}{1 - 1/(1+I)} \;=\; \frac{\$ 100}{I}.$$

For example, if the yearly interest rate is 10% (I = 0.10), then the entire annuity has a present value of $100 / 0.10 = $1000.

This sort of calculation is used to compute the APR of a loan (such as a mortgage loan). It can also be used to estimate the present value of expected stock dividends, or the terminal value of a security.

Geometric power series

The formula for a geometric series

$$\frac{1}{1-x}=1+x+x^2+x^3+x^4+\cdots$$

can be interpreted as a power series in the Taylor's theorem sense, converging where |x| < 1. From this, one can extrapolate to obtain other power series. For example,

$$\begin{align}
\tan^{-1}(x)&=\int\frac{dx}{1+x^2}\\
&=\int\frac{dx}{1-(-x^2)}\\
&=\int\left(1 + \left(-x^2\right) + \left(-x^2\right)^2 + \left(-x^2\right)^3+\cdots\right)dx\\
&=\int\left(1-x^2+x^4-x^6+\cdots\right)dx\\
&=x-\frac{x^3}{3}+\frac{x^5}{5}-\frac{x^7}{7}+\cdots\\
&=\sum^{\infty}_{n=0} \frac{(-1)^n}{2n+1} x^{2n+1}.
\end{align}$$

By differentiating the geometric series, one obtains the variant[2]

$$\sum^{\infty}_{n=1}n x^{n-1}=\frac{1}{(1-x)^2}\quad\text{ for }|x| < 1.$$

Similarly obtained are:

$$\sum^{\infty}_{n=2} n (n-1) x^{n-2}=\frac{2}{(1-x)^3}\quad\text{ for }|x| < 1,$$
and

$$\sum^{\infty}_{n=3} n (n-1)(n-2) x^{n-3}=\frac{6}{(1-x)^4} \quad\text{ for }|x| < 1.$$


See also

-   0.999...
-   Asymptote
-   Divergent geometric series
-   Generalized hypergeometric function
-   Geometric progression
-   Neumann series
-   Ratio test
-   Root test
-   Series (mathematics)

Specific geometric series

-   Grandi's series: 1 − 1 + 1 − 1 + ⋯
-   1 + 2 + 4 + 8 + ⋯
-   1 − 2 + 4 − 8 + ⋯
-   1/2 + 1/4 + 1/8 + 1/16 + ⋯
-   1/2 − 1/4 + 1/8 − 1/16 + ⋯
-   1/4 + 1/16 + 1/64 + 1/256 + ⋯


References

-   Abramowitz, M. and Stegun, I. A. (Eds.). Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables, 9th printing. New York: Dover, p. 10, 1972.
-   Arfken, G. Mathematical Methods for Physicists, 3rd ed. Orlando, FL: Academic Press, pp. 278–279, 1985.
-   Beyer, W. H. CRC Standard Mathematical Tables, 28th ed. Boca Raton, FL: CRC Press, p. 8, 1987.
-   Courant, R. and Robbins, H. "The Geometric Progression." §1.2.3 in What Is Mathematics?: An Elementary Approach to Ideas and Methods, 2nd ed. Oxford, England: Oxford University Press, pp. 13–14, 1996.
-   Pappas, T. "Perimeter, Area & the Infinite Series." The Joy of Mathematics. San Carlos, CA: Wide World Publ./Tetra, pp. 134–135, 1989.
-   James Stewart (2002). _Calculus_, 5th ed., Brooks Cole.
-   Larson, Hostetler, and Edwards (2005). _Calculus with Analytic Geometry_, 8th ed., Houghton Mifflin Company.
-   Roger B. Nelsen (1997). _Proofs without Words: Exercises in Visual Thinking_, The Mathematical Association of America.
-

History and philosophy

-   C. H. Edwards, Jr. (1994). _The Historical Development of the Calculus_, 3rd ed., Springer. .
-   -   Eli Maor (1991). _To Infinity and Beyond: A Cultural History of the Infinite_, Princeton University Press.
-   Morr Lazerowitz (2000). _The Structure of Metaphysics (International Library of Philosophy)_, Routledge.

Economics

-   Carl P. Simon and Lawrence Blume (1994). _Mathematics for Economists_, W. W. Norton & Company.
-   Mike Rosser (2003). _Basic Mathematics for Economists_, 2nd ed., Routledge.

Biology

-   Edward Batschelet (1992). _Introduction to Mathematics for Life Scientists_, 3rd ed., Springer.
-   Richard F. Burton (1998). _Biology by Numbers: An Encouragement to Quantitative Thinking_, Cambridge University Press.

Computer science

-   John Rast Hubbard (2000). _Schaum's Outline of Theory and Problems of Data Structures With Java_, McGraw-Hill.


External links

-   -   -   -   -   -   "Geometric Series" by Michael Schreiber, Wolfram Demonstrations Project, 2007.

he:סדרה הנדסית zh:等比数列

Category:Geometric series Category:Ratios Category:Articles containing proofs

[1]

[2]