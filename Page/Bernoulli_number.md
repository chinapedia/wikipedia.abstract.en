+----+----------+--------------------+---+---+--------------+
|    | fraction | decimal |- decimal | 0 | 1 | +1.000000000 |
+====+==========+====================+===+===+==============+
| 1  | ±        | ±0.500000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 2  |          | +0.166666666       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 3  | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 4  | −        | −0.033333333       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 5  | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 6  |          | +0.023809523       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 7  | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 8  | −        | −0.033333333       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 9  | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 10 |          | +0.075757575       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 11 | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 12 | −        | −0.253113553       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 13 | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 14 |          | +1.166666666       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 15 | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 16 | −        | −7.092156862       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 17 | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 18 |          | +54.97117794       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 19 | 0        | +0.000000000       |   |   |              |
+----+----------+--------------------+---+---+--------------+
| 20 | −        | −529.1242424       |   |   |              |
+----+----------+--------------------+---+---+--------------+

: Bernoulli numbers

In mathematics, the BERNOULLI NUMBERS are a sequence of rational numbers which occur frequently in number theory. The values of the first 20 Bernoulli numbers are given in the adjacent table. For every even other than 0, is negative if is divisible by 4 and positive otherwise. For every odd other than 1, 0}}.

The superscript ± used in this article designates the two sign conventions for Bernoulli numbers. Only the term is affected:

-   with ( / ) is the sign convention prescribed by NIST and most modern textbooks .

-   with ( / ) is sometimes used in the older literature .

In the formulas below, one can switch from one sign convention to the other with the relation B_(n) ⁺  = ( − 1)^(n)B_(n)^( − ).

The Bernoulli numbers are special values of the Bernoulli polynomials B_(n)(x), with B_(n)^( − ) = B_(n)(0) and B_(n)⁺ = B_(n)(1) .

Since for all odd , and many formulas only involve even-index Bernoulli numbers, some authors write "" to mean . This article does not follow this notation.

The Bernoulli numbers appear in the Taylor series expansions of the tangent and hyperbolic tangent functions, in Faulhaber's formula for the sum of powers of the first positive integers, in the Euler–Maclaurin formula, and in expressions for certain values of the Riemann zeta function.

The Bernoulli numbers were discovered around the same time by the Swiss mathematician Jacob Bernoulli, after whom they are named, and independently by Japanese mathematician Seki Kōwa. Seki's discovery was posthumously published in 1712 (; ) in his work _Katsuyo Sampo_; Bernoulli's, also posthumously, in his _Ars Conjectandi_ of 1713. Ada Lovelace's note G on the Analytical Engine from 1842 describes an algorithm for generating Bernoulli numbers with Babbage's machine . As a result, the Bernoulli numbers have the distinction of being the subject of the first published complex computer program.


History

Early history

The Bernoulli numbers are rooted in the early history of the computation of sums of integer powers, which have been of interest to mathematicians since antiquity.

Methods to calculate the sum of the first positive integers, the sum of the squares and of the cubes of the first positive integers were known, but there were no real 'formulas', only descriptions given entirely in words. Among the great mathematicians of antiquity to consider this problem were Pythagoras (c. 572–497 BCE, Greece), Archimedes (287–212 BCE, Italy), Aryabhata (b. 476, India), Abu Bakr al-Karaji (d. 1019, Persia) and Abu Ali al-Hasan ibn al-Hasan ibn al-Haytham (965–1039, Iraq).

During the late sixteenth and early seventeenth centuries mathematicians made significant progress. In the West Thomas Harriot (1560–1621) of England, Johann Faulhaber (1580–1635) of Germany, Pierre de Fermat (1601–1665) and fellow French mathematician Blaise Pascal (1623–1662) all played important roles.

Thomas Harriot seems to have been the first to derive and write formulas for sums of powers using symbolic notation, but even he calculated only up to the sum of the fourth powers. Johann Faulhaber gave formulas for sums of powers up to the 17th power in his 1631 _Academia Algebrae_, far higher than anyone before him, but he did not give a general formula.

Blaise Pascal in 1654 proved _Pascal's identity_ relating the sums of the th powers of the first positive integers for 0, 1, 2, …, _k_}}.

The Swiss mathematician Jakob Bernoulli (1654–1705) was the first to realize the existence of a single sequence of constants which provide a uniform formula for all sums of powers .

The joy Bernoulli experienced when he hit upon the pattern needed to compute quickly and easily the coefficients of his formula for the sum of the th powers for any positive integer can be seen from his comment. He wrote:

    "With the help of this table, it took me less than half of a quarter of an hour to find that the tenth powers of the first 1000 numbers being added together will yield the sum 91,409,924,241,424,243,424,241,924,242,500."

Bernoulli's result was published posthumously in _Ars Conjectandi_ in 1713. Seki Kōwa independently discovered the Bernoulli numbers and his result was published a year earlier, also posthumously, in 1712 . However, Seki did not present his method as a formula based on a sequence of constants.

Bernoulli's formula for sums of powers is the most useful and generalizable formulation to date. The coefficients in Bernoulli's formula are now called Bernoulli numbers, following a suggestion of Abraham de Moivre.

Bernoulli's formula is sometimes called Faulhaber's formula after Johann Faulhaber who found remarkable ways to calculate sum of powers but never stated Bernoulli's formula. To call Bernoulli's formula Faulhaber's formula does injustice to Bernoulli and simultaneously hides the genius of Faulhaber as Faulhaber's formula is in fact more efficient than Bernoulli's formula. According to Knuth a rigorous proof of Faulhaber's formula was first published by Carl Jacobi in 1834 . Knuth's in-depth study of Faulhaber's formula concludes (the nonstandard notation on the LHS is explained further on):

    _"Faulhaber never discovered the Bernoulli numbers; i.e., he never realized that a single sequence of constants_ _… would provide a uniform_



        $\quad \sum n^m = \frac 1{m+1}\left( B_0n^{m+1}+\binom{m+1} 1 B^+_1 n^m+\binom{m+1} 2B_2n^{m-1}+\cdots+\binom{m+1}mB_mn\right)$
        or
        $\quad \sum n^m = \frac 1{m+1}\left( B_0n^{m+1}-\binom{m+1} 1 B^{-{}}_1 n^m+\binom{m+1} 2B_2n^{m-1}-\cdots +(-1)^m\binom{m+1}mB_mn\right)$

    _for all sums of powers. He never mentioned, for example, the fact that almost half of the coefficients turned out to be zero after he had converted his formulas for_ _from polynomials in to polynomials in ." _

Reconstruction of "Summae Potestatum"

The Bernoulli numbers (n)/(n) were introduced by Jakob Bernoulli in the book _Ars Conjectandi_ published posthumously in 1713 page 97. The main formula can be seen in the second half of the corresponding facsimile. The constant coefficients denoted , , and by Bernoulli are mapped to the notation which is now prevalent as _B_₂}}, _B_₄}}, _B_₆}}, _B_₈}}. The expression means – the small dots are used as grouping symbols. Using today's terminology these expressions are falling factorial powers . The factorial notation as a shortcut for was not introduced until 100 years later. The integral symbol on the left hand side goes back to Gottfried Wilhelm Leibniz in 1675 who used it as a long letter for "summa" (sum). The letter on the left hand side is not an index of summation but gives the upper limit of the range of summation which is to be understood as . Putting things together, for positive , today a mathematician is likely to write Bernoulli's formula as:

    $\sum_{k=1}^n k^c = \frac{n^{c+1}}{c+1}+\frac 1 2 n^c+\sum_{k=2}^c \frac{B_k}{k!} c^{\underline{k-1}}n^{c-k+1}.$

This formula suggests setting }} when switching from the so-called 'archaic' enumeration which uses only the even indices 2, 4, 6… to the modern form (more on different conventions in the next paragraph). Most striking in this context is the fact that the falling factorial has for 0}} the value . Thus Bernoulli's formula can be written

    $\sum_{k=1}^n k^c = \sum_{k=0}^c \frac{B_k}{k!}c^{\underline{k-1}} n^{c-k+1}$

if 1/2}}, recapturing the value Bernoulli gave to the coefficient at that position.

Note that the formula for $\textstyle \sum_{k=1}^n k^9$ in the first half contains an error at the last term; it should be $-\tfrac {3}{20}n^2$ instead of $-\tfrac {1}{12}n^2$.


Definitions

Many characterizations of the Bernoulli numbers have been found in the last 300 years, and each could be used to introduce these numbers. Here only three of the most useful ones are mentioned:

-   a recursive equation,
-   an explicit formula,
-   a generating function.

For the proof of the equivalence of the three approaches see or .

Recursive definition

The Bernoulli numbers obey the sum formulas

    $\begin{align} \sum_{k=0}^{m}\binom {m+1} k B^{-{}}_k &= \delta_{m, 0} \\ \sum_{k=0}^{m}\binom {m+1} k B^{+{}}_k &= m+1 \end{align}$

where m = 0, 1, 2... and denotes the Kronecker delta. Solving for B_(m)^( ∓ ) gives the recursive formulas

    \begin{align}

 B_m^{-{}} &= \delta_{m, 0} - \sum_{k=0}^{m-1} \binom{m}{k} \frac{B^{-{}}_k}{m - k + 1} \\
 B_m^+ &= 1 - \sum_{k=0}^{m-1} \binom{m}{k} \frac{B^+_k}{m - k + 1}.

\end{align}

Explicit definition

In 1893 Louis Saalschütz listed a total of 38 explicit formulas for the Bernoulli numbers , usually giving some reference in the older literature. One of them is:

$$\begin{align}
  B^{-{}}_m &= \sum_{k=0}^m \sum_{v=0}^k (-1)^v \binom{k}{v} \frac{v^m}{k + 1} \\
  B^+_m &= \sum_{k=0}^m \sum_{v=0}^k (-1)^v \binom{k}{v} \frac{(v + 1)^m}{k + 1}.
\end{align}$$

Generating function

The exponential generating functions are

$$\begin{align}
  \frac{t}{e^t - 1}    &= \frac{t}{2} \left( \operatorname{coth} \frac{t}{2} -1 \right) &= \sum_{m=0}^\infty \frac{B^{-{}}_m t^m}{m!}\\
  \frac{t}{1 - e^{-t}} &= \frac{t}{2} \left( \operatorname{coth} \frac{t}{2} +1 \right) &= \sum_{m=0}^\infty \frac{B^+_m t^m}{m!}.
\end{align}$$

The (ordinary) generating function

    $z^{-1} \psi_1(z^{-1}) = \sum_{m=0}^{\infty} B^+_m z^m$

is an asymptotic series. It contains the trigamma function .


Bernoulli numbers and the Riemann zeta function

The Bernoulli numbers can be expressed in terms of the Riemann zeta function:

    for .

Here the argument of the zeta function is 0 or negative.

By means of the zeta functional equation and the gamma reflection formula the following relation can be obtained :

$$B_{2n} = \frac {(-1)^{n+1}2(2n)!} {(2\pi)^{2n}} \zeta(2n)$$
for .

Now the argument of the zeta function is positive.

It then follows from () and Stirling's formula that

    $|B_{2 n}| \sim 4 \sqrt{\pi n} \left(\frac{n}{ \pi e} \right)^{2n}$ for .


Efficient computation of Bernoulli numbers

In some applications it is useful to be able to compute the Bernoulli numbers through modulo , where is a prime; for example to test whether Vandiver's conjecture holds for , or even just to determine whether is an irregular prime. It is not feasible to carry out such a computation using the above recursive formulae, since at least (a constant multiple of) arithmetic operations would be required. Fortunately, faster methods have been developed which require only operations (see [[big-O_notation|big . Harvey's implementation has been included in SageMath since version 3.1. Prior to that, Bernd Kellner computed to full precision for 10⁶}} in December 2002 and Oleksandr Pavlyk for 10⁷}} with Mathematica in April 2008.

    {| class=wikitable style="text-align:right"

! Computer !! Year !! _n_ !! Digits* |- |align=left| J. Bernoulli || ~1689 || 10 || 1 |- |align=left| L. Euler || 1748 || 30 || 8 |- |align=left| J. C. Adams || 1878 || 62 || 36 |- |align=left| D. E. Knuth, T. J. Buckholtz || 1967 || || |- |align=left| G. Fee, S. Plouffe || 1996 || || |- |align=left| G. Fee, S. Plouffe || 1996 || || |- |align=left| B. C. Kellner || 2002 || || |- |align=left| O. Pavlyk || 2008 || || |- |align=left| D. Harvey || 2008 || || |}



        * _Digits_ is to be understood as the exponent of 10 when is written as a real number in normalized scientific notation.


Applications of the Bernoulli numbers

Asymptotic analysis

Arguably the most important application of the Bernoulli number in mathematics is their use in the Euler–Maclaurin formula. Assuming that is a sufficiently often differentiable function the Euler–Maclaurin formula can be written as

    $\sum_{k=a}^{b-1} f(k) = \int_a^b f(x)\,dx + \sum_{k=1}^m \frac{B^-_k}{k!} (f^{(k-1)}(b)-f^{(k-1)}(a))+R_-(f,m).$

This formulation assumes the convention . Using the convention the formula becomes

    $\sum_{k=a+1}^{b} f(k) = \int_a^b f(x)\,dx + \sum_{k=1}^m \frac{B^+_k}{k!} (f^{(k-1)}(b)-f^{(k-1)}(a))+R_+(f,m).$

Here (i.e. the zeroth-order derivative of a is just ). Moreover, let denote an antiderivative of . By the fundamental theorem of calculus,

    ∫_(a)^(b)f(x) dx = f^(( − 1))(b) − f^(( − 1))(a).

Thus the last formula can be further simplified to the following succinct form of the Euler–Maclaurin formula

    $\sum_{k=a}^{b}f(k)= \sum_{k=0}^m \frac{B_k}{k!} (f^{(k-1)}(b)-f^{(k-1)}(a))+R(f,m).$

This form is for example the source for the important Euler–Maclaurin expansion of the zeta function

    \begin{align}

 \zeta(s) & =\sum_{k=0}^m \frac{B^+_k}{k!} s^{\overline{k-1}} + R(s,m) \\
          & = \frac{B_0}{0!}s^{\overline{-1}} + \frac{B^+_1}{1!} s^{\overline{0}} + \frac{B_2}{2!} s^{\overline{1}} +\cdots+R(s,m) \\
          & = \frac{1}{s-1} + \frac{1}{2} + \frac{1}{12}s + \cdots + R(s,m).

\end{align}

Here denotes the rising factorial power .

Bernoulli numbers are also frequently used in other kinds of asymptotic expansions. The following example is the classical Poincaré-type asymptotic expansion of the digamma function .

$$\psi(z) \sim \ln z - \sum_{k=1}^\infty \frac{B^+_k}{k z^k}$$

Sum of powers

Bernoulli numbers feature prominently in the closed form expression of the sum of the th powers of the first positive integers. For define

$$S_m(n) = \sum_{k=1}^n k^m = 1^m + 2^m + \cdots + n^m.$$

This expression can always be rewritten as a polynomial in of degree . The coefficients of these polynomials are related to the Bernoulli numbers by BERNOULLI'S FORMULA:

    $S_m(n) = \frac{1}{m + 1} \sum_{k=0}^m \binom{m + 1}{k} B^+_k n^{m + 1 - k} = m! \sum_{k=0}^m \frac{B^+_k n^{m + 1 - k}}{k! (m+1-k)!} ,$

where denotes the binomial coefficient.

For example, taking to be 1 gives the triangular numbers .

$$1 + 2 + \cdots + n = \frac{1}{2} (B_0 n^2 + 2 B^+_1 n^1) = \tfrac12 (n^2 + n).$$

Taking to be 2 gives the square pyramidal numbers .

    $1^2 + 2^2 + \cdots + n^2 = \frac{1}{3} (B_0 n^3 + 3 B^+_1 n^2 + 3 B_2 n^1) = \tfrac13 \left(n^3 + \tfrac32 n^2 + \tfrac12 n\right).$

Some authors use the alternate convention for Bernoulli numbers and state Bernoulli's formula in this way:

    $S_m(n) = \frac{1}{m + 1} \sum_{k=0}^m (-1)^k \binom{m + 1}{k} B^{-{}}_k n^{m + 1 - k}.$

Bernoulli's formula is sometimes called Faulhaber's formula after Johann Faulhaber who also found remarkable ways to calculate sums of powers.

Faulhaber's formula was generalized by V. Guo and J. Zeng to a [[q-analog|{(2n)!},& \qquad 0 < |x| < \pi. \end{align}

Hyperbolic tangent
    \begin{align}

\tanh x &= \sum_{n=1}^\infty \frac{2^{2n}(2^{2n}-1)B_{2n}}{(2n)!}\;x^{2n-1},& |x| &< \frac \pi 2. \end{align}

Hyperbolic cotangent
    \begin{align}

\coth x & {} = \frac{1}{x} \sum_{n=0}^\infty \frac{B_{2n} (2x)^{2n}}{(2n)!},& \qquad \qquad 0 < |x| < \pi. \end{align}

Laurent series

The Bernoulli numbers appear in the following Laurent series :

Digamma function: $\psi(z)= \ln z- \sum_{k=1}^\infty \frac {B_k^{+{}}} {k z^k}$

Use in topology

The Kervaire–Milnor's formula for the order of the cyclic group of diffeomorphism classes of [[exotic_sphere|exotic {4n} \right) .

The Hirzebruch signature theorem for the [[Hirzebruch_signature_theorem#L_genus_and_the_Hirzebruch_signature_theorem|{k+1}\ =\ \sum_{k=0}^n \frac{1}{k+1} \sum_{v=0}^k (-1)^v (v+1)^n {k \choose v}\ .









This representation has +}}.

Consider the sequence , . From Worpitzky's numbers , applied to is identical to the Akiyama–Tanigawa transform applied to (see Connection with Stirling numbers of the first kind). This can be seen via the table:

    {| style="text-align:center"

|+ IDENTITY OF
WORPITZKY'S REPRESENTATION AND AKIYAMA–TANIGAWA TRANSFORM |- |1|| || || || || ||0||1|| || || || ||0||0||1|| || || ||0||0||0||1|| || ||0||0||0||0||1|| |- |1||−1|| || || || ||0||2||−2|| || || ||0||0||3||−3|| || ||0||0||0||4||−4|| || || || || || || |- |1||−3||2|| || || ||0||4||−10||6|| || ||0||0||9||−21||12|| || || || || || || || || || || || || |- |1||−7||12||−6|| || ||0||8||−38||54||−24|| || || || || || || || || || || || || || || || || || || |- |1||−15||50||−60||24|| || || || || || || || || || || || || || || || || || || || || || || || || |- |}

The first row represents .

Hence for the second fractional Euler numbers () / ():









A second formula representing the Bernoulli numbers by the Worpitzky numbers is for

    $B_n=\frac n {2^{n+1}-2}\sum_{k=0}^{n-1} (-2)^{-k}\, W_{n-1,k} .$

The simplified second Worpitzky's representation of the second Bernoulli numbers is:

() / () = × () / ()

which links the second Bernoulli numbers to the second fractional Euler numbers. The beginning is:

    (, , , , , , …) × (1, , 0, −, 0, , …)}}

The numerators of the first parentheses are (see Connection with Stirling numbers of the first kind).

Connection with Stirling numbers of the second kind

If denotes Stirling numbers of the second kind then one has:

    $j^k=\sum_{m=0}^k {j^{\underline{m}}} S(k,m)$

where denotes the falling factorial.

If one defines the Bernoulli polynomials as :

$$B_k(j)=k\sum_{m=0}^{k-1}\binom{j}{m+1}S(k-1,m)m!+B_k$$

where for 0, 1, 2,…}} are the Bernoulli numbers.

Then after the following property of binomial coefficient:

$$\binom{j}{m}=\binom{j+1}{m+1}-\binom{j}{m+1}$$

one has,

$$j^k=\frac{B_{k+1}(j+1)-B_{k+1}(j)}{k+1}.$$

One also has following for Bernoulli polynomials ,

$$B_k(j)=\sum_{n=0}^k \binom{k}{n} B_n j^{k-n}.$$

The coefficient of in is .

Comparing the coefficient of in the two expressions of Bernoulli polynomials, one has:

    $B_k=\sum_{m=0}^k (-1)^m \frac{m!}{m+1} S(k,m)$

(resulting in +}}) which is an explicit formula for Bernoulli numbers and can be used to prove Von-Staudt Clausen theorem (; ; ).

Connection with Stirling numbers of the first kind

The two main formulas relating the unsigned Stirling numbers of the first kind to the Bernoulli numbers (with +}}) are

    $\frac{1}{m!}\sum_{k=0}^m (-1)^{k} \left[{m+1\atop k+1}\right] B_k = \frac{1}{m+1},$

and the inversion of this sum (for , )

    $\frac{1}{m!}\sum_{k=0}^m (-1)^k \left[{m+1\atop k+1}\right] B_{n+k} = A_{n,m}.$

Here the number are the rational Akiyama–Tanigawa numbers, the first few of which are displayed in the following table.

    {| class="wikitable" style="text-align=center"

|+ Akiyama–Tanigawa number ! !!0!!1!!2!!3!!4 |- ! 0 | 1 || || || || |- ! 1 | || || || || … |- ! 2 | || || || … || … |- ! 3 | 0 || || … || … || … |- ! 4 | − || … || … || … || … |}

The Akiyama–Tanigawa numbers satisfy a simple recurrence relation which can be exploited to iteratively compute the Bernoulli numbers. This leads to the algorithm shown in the section 'algorithmic description' above. See /.

An _autosequence_ is a sequence which has its inverse binomial transform equal to the signed sequence. If the main diagonal is zeroes = , the autosequence is of the first kind. Example: , the Fibonacci numbers. If the main diagonal is the first upper diagonal multiplied by 2, it is of the second kind. Example: /, the second Bernoulli numbers (see ). The Akiyama–Tanigawa transform applied to = 1/ leads to (_n_) / (_n_ + 1). Hence:

    {| class="wikitable" style="text-align:center"

|+ Akiyama–Tanigawa transform for the second Euler numbers |- ! !! 0 !! 1 !! 2 !! 3 !! 4 |- ! 0 | 1 || || || || |- ! 1 | || || || || … |- ! 2 | 0 || || || … || … |- ! 3 | − || − || … || … || … |- ! 4 | 0 || … || … || … || … |}

See and . () / () are the second (fractional) Euler numbers and an autosequence of the second kind.

    ( = ) × ( = ) = = .

Also valuable for / (see Connection with Worpitzky numbers).

Connection with Pascal’s triangle

There are formulas connecting Pascal's triangle to Bernoulli numbers

$$B^{+}_n=\frac{|A_n|}{(n+1)!}~~~$$
where |A_(n)| is the determinant of a n-by-n square matrix part of Pascal’s triangle whose elements are: $a_{i, k} = \begin{cases}
0 & \text{if } k>1+i \\
{i+1 \choose k-1} & \text{otherwise}
\end{cases}$

Example:

$$B^{+}_6 =\frac{\det\begin{pmatrix}
1& 2& 0& 0& 0& 0\\
1& 3& 3& 0& 0& 0\\
1& 4& 6& 4& 0& 0\\
1& 5& 10& 10& 5& 0\\
1& 6& 15& 20& 15& 6\\
1& 7& 21& 35& 35& 21
\end{pmatrix}}{7!}=\frac{120}{5040}=\frac 1 {42}$$

Connection with Eulerian numbers

There are formulas connecting Eulerian numbers to Bernoulli numbers:

$$\begin{align}
\sum_{m=0}^n (-1)^m \left \langle {n\atop m} \right \rangle &= 2^{n+1} (2^{n+1}-1) \frac{B_{n+1}}{n+1}, \\
\sum_{m=0}^n (-1)^m \left \langle {n\atop m} \right \rangle \binom{n}{m}^{-1} &= (n+1) B_n.
\end{align}$$

Both formulae are valid for if is set to . If is set to − they are valid only for and respectively.


A binary tree representation

The Stirling polynomials are related to the Bernoulli numbers by _n_!_σ__(_n_)(1)}}. S. C. Woon described an algorithm to compute as a binary tree:



Woon's recursive algorithm (for ) starts by assigning to the root node [1,2]}}. Given a node [_a_₁, _a_₂, …, _a__(_k_)]}} of the tree, the left child of the node is [−_a_₁, _a_₂ + 1, _a_₃, …, _a__(_k_)]}} and the right child [_a_₁, 2, _a_₂, …, _a__(_k_)]}}. A node [_a_₁, _a_₂, …, _a__(_k_)]}} is written as in the initial part of the tree represented above with ± denoting the sign of .

Given a node the factorial of is defined as

$$N! = a_1 \prod_{k=2}^{\operatorname{length}(N)} a_k!.$$

Restricted to the nodes of a fixed tree-level the sum of is , thus

$$B_n = \sum_\stackrel{N \text{ node of}}{\text{ tree-level } n} \frac{n!}{N!}.$$

For example:






Integral representation and continuation

The integral

    $b(s) = 2e^{s i \pi/2}\int_0^\infty \frac{st^s}{1-e^{2\pi t}} \frac{dt}{t}$

has as special values _B__(2_n_)}} for .

For example, and . Here, is the Riemann zeta function, and is the imaginary unit. Leonhard Euler (_Opera Omnia_, Ser. 1, Vol. 10, p. 351) considered these numbers and calculated

    \begin{align}

 p &=  \frac{3}{2\pi^3}\left(1+\frac{1}{2^3}+\frac{1}{3^3}+\cdots \right) = 0.0581522\ldots \\
 q &= \frac{15}{2\pi^5}\left(1+\frac{1}{2^5}+\frac{1}{3^5}+\cdots \right) = 0.0254132\ldots

\end{align}


The relation to the Euler numbers and

The Euler numbers are a sequence of integers intimately connected with the Bernoulli numbers. Comparing the asymptotic expansions of the Bernoulli and the Euler numbers shows that the Euler numbers are in magnitude approximately times larger than the Bernoulli numbers . In consequence:

    $\pi \sim 2 (2^{2n} - 4^{2n}) \frac{B_{2n}}{E_{2n}}.$

This asymptotic equation reveals that lies in the common root of both the Bernoulli and the Euler numbers. In fact could be computed from these rational approximations.

Bernoulli numbers can be expressed through the Euler numbers and vice versa. Since, for odd , _E__(_n_) {{=}} 0}} (with the exception ), it suffices to consider the case when is even.

$$\begin{align}
 B_{n} &= \sum_{k=0}^{n-1}\binom{n-1}{k} \frac{n}{4^n-2^n}E_k & n&=2, 4, 6, \ldots \\
 E_{n} &= \sum_{k=1}^n \binom{n}{k-1} \frac{2^k-4^k}{k} B_k & n&=2,4,6,\ldots
\end{align}$$

These conversion formulas express an inverse relation between the Bernoulli and the Euler numbers. But more important, there is a deep arithmetic root common to both kinds of numbers, which can be expressed through a more fundamental sequence of numbers, also closely tied to . These numbers are defined for as

$$S_n = 2 \left(\frac{2}{\pi}\right)^n \sum_{k=-\infty}^\infty (4k+1)^{-n} \qquad k=0,-1,1,-2,2,\ldots$$

and 1}} by convention . The magic of these numbers lies in the fact that they turn out to be rational numbers. This was first proved by Leonhard Euler in a landmark paper _‘De summis serierum reciprocarum’_ (On the sums of series of reciprocals) and has fascinated mathematicians ever since. The first few of these numbers are

    $S_n = 1,1,\frac{1}{2},\frac{1}{3},\frac{5}{24}, \frac{2}{15},\frac{61}{720},\frac{17}{315},\frac{277}{8064},\frac{62}{2835},\ldots$ ( / )

These are the coefficients in the expansion of .

The Bernoulli numbers and Euler numbers are best understood as _special views_ of these numbers, selected from the sequence and scaled for use in special applications.

    \begin{align}

 B_{n} &= (-1)^{\left\lfloor \frac{n}{2}\right\rfloor} [ n \text{ even}] \frac{n! }{2^n - 4^n}\, S_{n}\ , & n&= 2, 3, \ldots \\
 E_n &= (-1)^{\left\lfloor \frac{n}{2}\right\rfloor} [ n \text{ even}] n! \, S_{n+1}  & n &= 0, 1, \ldots

\end{align}

The expression [ even] has the value 1 if is even and 0 otherwise (Iverson bracket).

These identities show that the quotient of Bernoulli and Euler numbers at the beginning of this section is just the special case of }} when is even. The are rational approximations to and two successive terms always enclose the true value of . Beginning with 1}} the sequence starts ( / ):

    $2, 4, 3, \frac{16}{5}, \frac{25}{8}, \frac{192}{61}, \frac{427}{136}, \frac{4352}{1385}, \frac{12465}{3968}, \frac{158720}{50521},\ldots \quad \longrightarrow \pi.$

These rational numbers also appear in the last paragraph of Euler's paper cited above.

Consider the Akiyama–Tanigawa transform for the sequence () / ():

    {| class="wikitable"

! 0 |1||||0||−||−||−||0 |- ! 1 | || 1|| || 0|| −|| −|| |- ! 2 | −|| || || || || || |- ! 3 | −1|| −|| −|| || || || |- ! 4 | || −|| −|| || || || |- ! 5 | 8|| || || || || || |- ! 6 | −|| || || || || || |}

From the second, the numerators of the first column are the denominators of Euler's formula. The first column is − × .


An algorithmic view: the Seidel triangle

The sequence _S__(_n_) has another unexpected yet important property: The denominators of _S__(_n_) divide the factorial . In other words: the numbers , sometimes called Euler zigzag numbers, are integers.

    T_(n) = 1, 1, 1, 2, 5, 16, 61, 272, 1385, 7936, 50521, 353792, … n = 0, 1, 2, 3, … (). See ().

Thus the above representations of the Bernoulli and Euler numbers can be rewritten in terms of this sequence as

$$\begin{align}
 B_n &= (-1)^{\left\lfloor \frac{n}{2}\right\rfloor} [n\text{ even}] \frac{n }{2^n-4^n}\, T_{n-1}\  & n &= 2, 3, \ldots \\
 E_n &= (-1)^{\left\lfloor \frac{n}{2}\right\rfloor} [n\text{ even}] T_{n+1} & n &= 0, 1, \ldots
\end{align}$$

These identities make it easy to compute the Bernoulli and Euler numbers: the Euler numbers are given immediately by and the Bernoulli numbers are obtained from by some easy shifting, avoiding rational arithmetic.

What remains is to find a convenient way to compute the numbers . However, already in 1877 Philipp Ludwig von Seidel published an ingenious algorithm which makes it extremely simple to calculate .



1.  Start by putting 1 in row 0 and let denote the number of the row currently being filled
2.  If is odd, then put the number on the left end of the row in the first position of the row , and fill the row from the left to the right, with every entry being the sum of the number to the left and the number to the upper
3.  At the end of the row duplicate the last number.
4.  If is even, proceed similar in the other direction.

Seidel's algorithm is in fact much more general (see the exposition of Dominique Dumont ) and was rediscovered several times thereafter.

Similar to Seidel's approach D. E. Knuth and T. J. Buckholtz gave a recurrence equation for the numbers and recommended this method for computing and ‘on electronic computers using only simple operations on integers’.

V. I. Arnold rediscovered Seidel's algorithm in and later Millar, Sloane and Young popularized Seidel's algorithm under the name boustrophedon transform.

Triangular form:

    {| style="text-align:right"

| || || || || || || 1|| || || || || || |- | || || || || || 1|| || 1|| || || || || |- | || || || || 2|| || 2|| || 1|| || || || |- | || || || 2|| || 4|| || 5|| || 5|| || || |- | || || 16|| || 16|| || 14|| || 10|| || 5|| || |- | || 16|| || 32|| || 46|| || 56|| || 61|| || 61|| |- |272|| ||272|| ||256|| ||224|| ||178|| ||122|| || 61 |}

Only , with one 1, and , with two 1s, are in the OEIS.

Distribution with a supplementary 1 and one 0 in the following rows:

    {| style="text-align:right"

| || || || || || || 1|| || || || || || |- | || || || || || 0|| || 1|| || || || || |- | || || || || −1|| || −1|| || 0|| || || || |- | || || || 0|| || −1|| || −2|| || −2|| || || |- | || || 5|| || 5|| || 4|| || 2|| || 0|| || |- | || 0|| || 5|| || 10|| || 14|| || 16|| || 16|| |- |−61|| ||−61|| ||−56|| ||−46|| ||−32|| ||−16|| || 0 |}

This is , a signed version of . The main andiagonal is . The main diagonal is . The central column is . Row sums: 1, 1, −2, −5, 16, 61…. See . See the array beginning with 1, 1, 0, −2, 0, 16, 0 below.

The Akiyama–Tanigawa algorithm applied to () / () yields:

    {| style="text-align:right"

| 1|| 1|| || 0|| −|| −|| − |- | 0|| 1|| || 1|| 0|| − |- | −1|| −1|| || 4|| |- | 0|| −5|| −|| 1 |- | 5|| 5|| − |- | 0|| 61 |- | −61 |}

1. The first column is . Its binomial transform leads to:

    {| style="text-align:right"

|- | 1|| 1|| 0|| −2|| 0|| 16|| 0 |- |0||−1||−2||2||16||−16 |- |−1||−1||4||14||−32 |- |0||5||10||−46 |- |5||5||−56 |- |0||−61 |- |−61 |}

The first row of this array is . The absolute values of the increasing antidiagonals are . The sum of the antidiagonals is

2. The second column is . Its binomial transform yields:

    {| style="text-align:right"

|- | 1|| 2|| 2|| −4|| −16|| 32|| 272 |- |1||0||−6||−12||48||240 |- |−1||−6||−6||60||192 |- |−5||0||66||32 |- |5||66||66 |- |61||0 |- |−61 |}

The first row of this array is . The absolute values of the second bisection are the double of the absolute values of the first bisection.

Consider the Akiyama-Tanigawa algorithm applied to () / ( () = abs( ()) + 1 = .

    {| style="text-align:right"

|1||2||2||||1|||| |- |−1||0||||2||||0 |- |−1||−3||−||3|| |- |2||−3||−||−13 |- |5||21||− |- |−16||45 |- |−61 |}

The first column whose the absolute values are could be the numerator of a trigonometric function.

is an autosequence of the first kind (the main diagonal is ). The corresponding array is:

    {| style="text-align:right"

|0||−1||−1||2||5||−16||−61 |- |−1||0||3||3||−21||−45 |- |1||3||0||−24||−24 |- |2||−3||−24||0 |- |−5||−21||24 |- |−16||45 |- |−61 |}

The first two upper diagonals are =  × . The sum of the antidiagonals is = 2 × (_n_ + 1).

− is an autosequence of the second kind, like for instance / . Hence the array:

    {| style="text-align:right"

|- |2||1||−1||−2||5||16||−61 |- |−1||−2||−1||7||11||−77 |- |−1||1||8||4||−88 |- |2||7||−4||−92 |- |5||−11||−88 |- |−16||−77 |- |−61 |}

The main diagonal, here , is the double of the first upper one, here . The sum of the antidiagonals is = 2 × (1). Note that  −  = 2 × .


A combinatorial view: alternating permutations

Around 1880, three years after the publication of Seidel's algorithm, Désiré André proved a now classic result of combinatorial analysis & . Looking at the first terms of the Taylor expansion of the trigonometric functions and André made a startling discovery.

$$\begin{align}
 \tan x &= x + \frac{2x^3}{3!} + \frac{16x^5}{5!} + \frac{272x^7}{7!} + \frac{7936x^9}{9!} + \cdots\\[6pt]
 \sec x &= 1 + \frac{x^2}{2!} + \frac{5x^4}{4!} + \frac{61x^6}{6!} + \frac{1385x^8}{8!} + \frac{50521x^{10}}{10!} + \cdots
\end{align}$$

The coefficients are the Euler numbers of odd and even index, respectively. In consequence the ordinary expansion of has as coefficients the rational numbers .

    $\tan x + \sec x = 1 + x + \tfrac{1}{2}x^2 + \tfrac{1}{3}x^3 + \tfrac{5}{24}x^4 + \tfrac{2}{15}x^5 + \tfrac{61}{720}x^6 + \cdots$

André then succeeded by means of a recurrence argument to show that the alternating permutations of odd size are enumerated by the Euler numbers of odd index (also called tangent numbers) and the alternating permutations of even size by the Euler numbers of even index (also called secant numbers).


Related sequences

The arithmetic mean of the first and the second Bernoulli numbers are the associate Bernoulli numbers: , , , , , / . Via the second row of its inverse Akiyama–Tanigawa transform , they lead to Balmer series / .

The Akiyama–Tanigawa algorithm applied to () / () leads to the Bernoulli numbers / , / , or without , named intrinsic Bernoulli numbers .

    {| style="text-align:center; padding-left; padding-right: 2em;"

|- |1|||||||| |- ||||||||| |- |0|||||||| |- |−||−||−||−||0 |- |0||−||−||−||− |}

Hence another link between the intrinsic Bernoulli numbers and the Balmer series via ().

() = 0, 2, 1, 6,… is a permutation of the non-negative numbers.

The terms of the first row are f(n) = . 2, f(n) is an autosequence of the second kind. 3/2, f(n) leads by its inverse binomial transform to 3/2 −1/2 1/3 −1/4 1/5 ... = 1/2 + log 2.

Consider g(n) = 1/2 - 1 / (n+2) = 0, 1/6, 1/4, 3/10, 1/3. The Akiyama-Tanagiwa transforms gives:

    {| style="text-align:center; padding-left; padding-right:2em;"

|- |0||||||||||||... |- |−||−||−||−||−||−||... |- |0||−||−||−||−||−||... |- |||||||||0||−||... |}

0, g(n), is an autosequence of the second kind.

Euler () / () without the second term () are the fractional intrinsic Euler numbers 1, 0, −, 0, , 0, −, 0, …}} The corresponding Akiyama transform is:

    {| style="text-align:center; padding-left; padding-right: 2em;"

|- |1||1|||||| |- |0|||||||| |- |−||−||0|||| |- |0||−||−||−||− |- |||||−||−||− |}

The first line is . preceded by a zero is an autosequence of the first kind. It is linked to the Oresme numbers. The numerators of the second line are preceded by 0. The difference table is:

    {| style="text-align:center; padding-left; padding-right: 2em;"

|- |0||1||1|||||||| |- |1||0||−||−||−||−||− |- |−1||−||0|||||||| |}


A companion to the Bernoulli numbers

See . The following fractional numbers are an autosequence of the first kind.

    / = 0, , , , , , , , , –, –, , , –, − …

Apply 2_T_(_n_, _k_ + 1) − _T_(_n_,_k_) to _T_(0,_k_)}} = ()/():

    {| style="text-align:center"

| 0|| || || || || |- | 1|| || || 0|| −|| 0 |- | 0|| −|| −|| −|| || |- | −|| −|| || || || − |- | 0|| || || −|| −|| − |- | || || −|| −5|| || 9 |}

The rows are alternatively autosequences of the first and of the second kind. The second row is /. For the third row, see .

The first column is from Mersenne primes, see . For the second column see .

Consider the triangle () = =

    {| style="text-align:center;"

|- |0|| |- | 1 || 0 |- | 1 || 1 || 0 |- | 1 || 2 || 1 || 0 |}

This is Pascal's triangle bordered by zeroes. The antidiagonals' sums are , the Fibonacci numbers. Two elementary transforms yield the array ASPEC0, a companion to ASPEC in .

    {| style="text-align:center"

|- |0||1||1||1||1 |- | 0|| 1|| 2|| 3|| 4 |- | 0|| 1|| 3|| 6|| 10 |- | 0|| 1|| 4|| 10|| 20 |- | 0|| 1|| 5|| 15|| 35 |}

Multiplying the SBD array in by ASPEC0, we have by row sums /:

    {| style="text-align:center"

|- | 0 |- | |- | || 0 |- | || − |- | || −|| 0 |- | || −|| |- | || −|| || 0 |- | || −|| || − |}

This triangle is unreduced.


Arithmetical properties of the Bernoulli numbers

The Bernoulli numbers can be expressed in terms of the Riemann zeta function as −_nζ_(1 − _n_)}} for integers provided for 0}} and 1}} the expression is understood as the limiting value and the convention }} is used. This intimately relates them to the values of the zeta function at negative integers. As such, they could be expected to have and do have deep arithmetical properties. For example, the Agoh–Giuga conjecture postulates that is a prime number if and only if is congruent to −1 modulo . Divisibility properties of the Bernoulli numbers are related to the ideal class groups of cyclotomic fields by a theorem of Kummer and its strengthening in the Herbrand-Ribet theorem, and to class numbers of real quadratic fields by Ankeny–Artin–Chowla.

The Kummer theorems

The Bernoulli numbers are related to Fermat's Last Theorem (FLT) by Kummer's theorem , which says:

    If the odd prime does not divide any of the numerators of the Bernoulli numbers then 0}} has no solutions in nonzero integers.

Prime numbers with this property are called regular primes. Another classical result of Kummer are the following congruences.

    Let be an odd prime and an even number such that does not divide . Then for any non-negative integer

        $\frac{B_{k(p-1)+b}}{k(p-1)+b} \equiv \frac{B_{b}}{b} \pmod{p}.$

A generalization of these congruences goes by the name of -adic continuity.

-adic continuity

If , and are positive integers such that and are not divisible by and , then

$$(1-p^{m-1})\frac{B_m}{m} \equiv (1-p^{n-1})\frac{B_n} n \pmod{p^b}.$$

Since −_nζ_(1 − _n_)}}, this can also be written

$$\left(1-p^{-u}\right)\zeta(u) \equiv \left(1-p^{-v}\right)\zeta(v) \pmod{p^b},$$

where 1 − _m_}} and 1 − _n_}}, so that and are nonpositive and not congruent to 1 modulo . This tells us that the Riemann zeta function, with taken out of the Euler product formula, is continuous in the [[p-adic_number|{(2\pi)^{2k}\left(\frac{B_{2k}}{2k}\right)}



2\SUM_{K


1}^\infty \frac{k^{\overline{k}}x^k}{(2\pi)^{2k}\beta_{2k}}.

denotes the rising factorial power in the notation of D. E. Knuth. The numbers }} occur frequently in the study of the zeta function and are significant because is a -integer for primes where does not divide . The are called _divided Bernoulli numbers_.


Generalized Bernoulli numbers

The GENERALIZED BERNOULLI NUMBERS are certain algebraic numbers, defined similarly to the Bernoulli numbers, that are related to special values of [[Dirichlet_L-function|Dirichlet {e^{ft}-1} = \sum_{k=0}^\infty B_{k,\chi}\frac{t^k}{k!}.

Apart from the exceptional }}, we have, for any Dirichlet character , that 0}} if .

Generalizing the relation between Bernoulli numbers and values of the Riemann zeta function at non-positive integers, one has the for all integers :

    $L(1-k,\chi)=-\frac{B_{k,\chi}}k,$

where is the Dirichlet -function of .


Appendix

Assorted identities

). More suggestively and mnemonically, this may be written as a definite integral:

_S__(_m_)(_n_) = ∫₀^(_n_)(B + _x_)^(_m_) _d__x_

Many other Bernoulli identities can be written compactly with this symbol, e.g.

(B + 1)^(_m_) = _B__(_m_)

|2 = Let be non-negative and even

$$\zeta(n) = \frac{(-1)^{\frac{n}{2} - 1} B_n (2\pi)^n}{2(n!)}$$

|3 = The th cumulant of the uniform probability distribution on the interval [−1, 0] is .

|4 = Let }} and . Then is the following determinant :



\begin{align} B_n & = n! \begin{vmatrix} 1 & 0 & \cdots & 0 & 1 \\ 2? & 1 & \cdots & 0 & 0 \\ \vdots & \vdots & & \vdots & \vdots \\ n? & (n-1)? & \cdots & 1 & 0 \\ (n+1)? & n? & \cdots & 2? & 0 \end{vmatrix} \\[8pt] & = n! \begin{vmatrix} 1 & 0 & \cdots & 0 & 1 \\ \frac{1}{2!} & 1 & \cdots & 0 & 0 \\ \vdots & \vdots & & \vdots & \vdots \\ \frac{1}{n!} & \frac{1}{(n-1)!} & \cdots & 1 & 0 \\ \frac{1}{(n+1)!} & \frac{1}{n!} & \cdots & \frac{1}{2!} & 0 \end{vmatrix} \end{align}

Thus the determinant is , the Stirling polynomial at 1}}.

|5 = For even-numbered Bernoulli numbers, is given by the determinant :

$$B_{2p} = -\frac{(2p)!}{2^{2p} - 2} \begin{vmatrix}
1 & 0 & 0 & \cdots & 0 & 1 \\
\frac{1}{3!} & 1 & 0 & \cdots & 0 & 0 \\
\frac{1}{5!} & \frac{1}{3!} & 1 & \cdots & 0 & 0 \\
\vdots & \vdots & \vdots & & \vdots& \vdots \\
\frac{1}{(2p+1)!} & \frac{1}{(2p-1)!} & \frac{1}{(2p-3)!} &\cdots & \frac{1}{3!} & 0
\end{vmatrix}$$

|6 = Let . Then (Leonhard Euler)

    $\frac{1}{n} \sum_{k=1}^n \binom{n}{k}B_k B_{n-k}+B_{n-1}=-B_n$

|7 = Let . Then

    $\sum_{k=0}^n \binom{n+1}k (n+k+1)B_{n+k}=0$

|8 = Let . Then (Leopold Kronecker 1883)

    $B_n = - \sum_{k=1}^{n+1} \frac{(-1)^k}{k} \binom{n+1}{k} \sum_{j=1}^k j^n$

|9 = Let and . Then

    $(-1)^m \sum_{r=0}^m \binom{m}{r} B_{n+r}=(-1)^n \sum_{s=0}^n \binom{n}{s} B_{m+s}$

|10 = Let and

    $H_n=\sum_{k=1}^n k^{-1}$

the harmonic number. Then (H. Miki 1978)

    $\frac{n}{2}\sum_{k=2}^{n-2}\frac{B_{n-k}}{n-k}\frac{B_k}{k} - \sum_{k=2}^{n-2} \binom{n}{k}\frac{B_{n-k}}{n-k} B_k =H_n B_n$

|11 = Let . Yuri Matiyasevich found (1997)

    $(n+2)\sum_{k=2}^{n-2}B_k B_{n-k}-2\sum_{l=2}^{n-2}\binom{n+2}{l} B_l B_{n-l}=n(n+1)B_n$

|12 = _Faber–Pandharipande–Zagier–Gessel identity_: for ,

    \frac{n}{2}\left(B_{n-1}(x)+\sum_{k=1}^{n-1}\frac{B_{k}(x)}{k}

\frac{B_{n-k}(x)}{n-k}\right) -\sum_{k=0}^{n-1}\binom{n}{k}\frac{B_{n-k}} {n-k} B_k(x) =H_{n-1}B_n(x).

Choosing 0}} or 1}} results in the Bernoulli number identity in one or another convention.

|13 = The next formula is true for if _B_₁(1) {{=}} }}, but only for if _B_₁(0) {{=}} −}}.

$$\sum_{k=0}^n \binom{n}{k} \frac{B_k}{n-k+2} = \frac{B_{n+1}}{n+1}$$

|14 = Let . Then

$$-1 + \sum_{k=0}^n \binom{n}{k} \frac{2^{n-k+1}}{n-k+1}B_k(1) = 2^n$$

and

$$-1 + \sum_{k=0}^n \binom{n}{k} \frac{2^{n-k+1}}{n-k+1}B_{k}(0) = \delta_{n,0}$$

|15 = A reciprocity relation of M. B. Gelfand :

    $(-1)^{m+1} \sum_{j=0}^k \binom{k}{j} \frac{B_{m+1+j}}{m+1+j} + (-1)^{k+1} \sum_{j=0}^m \binom{m}{j}\frac{B_{k+1+j}}{k+1+j} = \frac{k!m!}{(k+m+1)!}$

}}


See also

-   Bernoulli polynomial
-   Bernoulli polynomials of the second kind
-   Bell number
-   Euler number
-   Genocchi number
-   Kummer's congruences
-   Poly-Bernoulli number
-   Hurwitz zeta function
-   Euler summation
-   Stirling polynomial
-   Sums of powers


Notes


References

-   .

-   .

-   -   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   -   .

-   -   .

-   .

-   .

-   -   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   .

-   .

-   -   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .


External links

-   -   _The first 498 Bernoulli Numbers_ from Project Gutenberg
-   A multimodular algorithm for computing Bernoulli numbers
-   The Bernoulli Number Page
-   Bernoulli number programs at LiteratePrograms
-   -   -   -   -   -

Category:Number theory Category:Topology Category:Integer sequences