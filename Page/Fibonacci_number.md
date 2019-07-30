In mathematics, the FIBONACCI NUMBERS, commonly denoted form a sequence, called the FIBONACCI SEQUENCE, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

_F_₀ = 0, _F_₁ = 1,
and

_F__(_n_) = _F__(_n_ − 1) + _F__(_n_ − 2),
for .

One has . In some books, and particularly in old ones, , the "0" is omitted, and the Fibonacci sequence starts with . The beginning of the sequence is thus:

(0, ) 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, …
[1]

created by drawing circular arcs connecting the opposite corners of squares in the Fibonacci tiling;[2] this one uses squares of sizes 1, 1, 2, 3, 5, 8, 13 and 21. ]]

Fibonacci numbers are strongly related to the golden ratio: Binet's formula expresses the th Fibonacci number in terms of and the golden ratio, and implies that the ratio of two consecutive Fibonacci numbers tends to the golden ratio as increases.

Fibonacci numbers are named after Italian mathematician Leonardo of Pisa, later known as Fibonacci. They appear to have first arisen as early as 200 BC in work by Pingala on enumerating possible patterns of poetry formed from syllables of two lengths. In his 1202 book _Liber Abaci_, Fibonacci introduced the sequence to Western European mathematics, although the sequence had been described earlier in Indian mathematics.[3][4][5]

Fibonacci numbers appear unexpectedly often in mathematics, so much so that there is an entire journal dedicated to their study, the _Fibonacci Quarterly_. Applications of Fibonacci numbers include computer algorithms such as the Fibonacci search technique and the Fibonacci heap data structure, and graphs called Fibonacci cubes used for interconnecting parallel and distributed systems.

They also appear in biological settings, such as branching in trees, the arrangement of leaves on a stem, the fruit sprouts of a pineapple, the flowering of an artichoke, an uncurling fern and the arrangement of a pine cone's bracts.

Fibonacci numbers are also closely related to Lucas numbers L_(n) in that they form a complementary pair of Lucas sequences U_(n)(1,  − 1) = F_(n) and V_(n)(1,  − 1) = L_(n). Lucas numbers are also intimately connected with the golden ratio.


History

The Fibonacci sequence appears in Indian mathematics in connection with Sanskrit prosody, as pointed out by Parmanand Singh in 1985.[6][7] In the Sanskrit poetic tradition, there was interest in enumerating all patterns of long (L) syllables of 2 units duration, juxtaposed with short (S) syllables of 1 unit duration. Counting the different patterns of successive L and S with a given total duration results in the Fibonacci numbers: the number of patterns of duration _m_ units is _F__(_m_ + 1).[8]

Knowledge of the Fibonacci sequence was expressed as early as Pingala ( 450 BC–200 BC). Singh cites Pingala's cryptic formula _misrau cha_ ("the two are mixed") and scholars who interpret it in context as saying that the number of patterns for _m_ beats (_F__(_m+1_)) is obtained by adding one [S] to the _F__(_m_) cases and one [L] to the _F__(_m_−1) cases. [9] Bharata Muni also expresses knowledge of the sequence in the _Natya Shastra_ (c. 100 BC–c. 350 AD).[10][11] However, the clearest exposition of the sequence arises in the work of Virahanka (c. 700 AD), whose own work is lost, but is available in a quotation by Gopala (c. 1135):

  Variations of two earlier meters [is the variation]... For example, for [a meter of length] four, variations of meters of two [and] three being mixed, five happens. [works out examples 8, 13, 21]... In this way, the process should be followed in all _mātrā-vṛttas_ [prosodic combinations].

Hemachandra (c. 1150) is credited with knowledge of the sequence as well,[12] writing that "the sum of the last and the one before the last is the number ... of the next mātrā-vṛtta."[13]

's _Liber Abaci_ from the Biblioteca Nazionale di Firenze showing (in box on right) the Fibonacci sequence with the position in the sequence labeled in Latin and Roman numerals and the value in Hindu-Arabic numerals.]] Outside India, the Fibonacci sequence first appears in the book _Liber Abaci_ (1202) by Fibonacci.[14] using it to calculate the growth of rabbit populations.[15][16] Fibonacci considers the growth of a hypothetical, idealized (biologically unrealistic) rabbit population, assuming that: a newly born pair of rabbits, one male, one female, are put in a field; rabbits are able to mate at the age of one month so that at the end of its second month a female can produce another pair of rabbits; rabbits never die and a mating pair always produces one new pair (one male, one female) every month from the second month on. Fibonacci posed the puzzle: how many pairs will there be in one year?

-   At the end of the first month, they mate, but there is still only 1 pair.
-   At the end of the second month the female produces a new pair, so now there are 2 pairs of rabbits in the field.
-   At the end of the third month, the original female produces a second pair, making 3 pairs in all in the field.
-   At the end of the fourth month, the original female has produced yet another new pair, and the female born two months ago also produces her first pair, making 5 pairs.

At the end of the _n_th month, the number of pairs of rabbits is equal to the number of new pairs (that is, the number of pairs in month _n_ − 2) plus the number of pairs alive last month (that is, _n_ − 1). This is the _n_th Fibonacci number.[17]

The name "Fibonacci sequence" was first used by the 19th-century number theorist Édouard Lucas.[18]


Applications

-   The Fibonacci numbers are important in the computational run-time analysis of Euclid's algorithm to determine the greatest common divisor of two integers: the worst case input for this algorithm is a pair of consecutive Fibonacci numbers.[19]
-   Brasch et al. 2012 show how a generalised Fibonacci sequence also can be connected to the field of economics.[20] In particular, it is shown how a generalised Fibonacci sequence enters the control function of finite-horizon dynamic optimisation problems with one state and one control variable. The procedure is illustrated in an example often referred to as the Brock–Mirman economic growth model.
-   Yuri Matiyasevich was able to show that the Fibonacci numbers can be defined by a Diophantine equation, which led to his solving Hilbert's tenth problem.[21]
-   The Fibonacci numbers are also an example of a complete sequence. This means that every positive integer can be written as a sum of Fibonacci numbers, where any one number is used once at most.
-   Moreover, every positive integer can be written in a unique way as the sum of _one or more_ distinct Fibonacci numbers in such a way that the sum does not include any two consecutive Fibonacci numbers. This is known as Zeckendorf's theorem, and a sum of Fibonacci numbers that satisfies these conditions is called a Zeckendorf representation. The Zeckendorf representation of a number can be used to derive its Fibonacci coding.
-   Fibonacci numbers are used by some pseudorandom number generators.
-   They are also used in planning poker, which is a step in estimating in software development projects that use the Scrum methodology.
-   Fibonacci numbers are used in a polyphase version of the merge sort algorithm in which an unsorted list is divided into two lists whose lengths correspond to sequential Fibonacci numbers – by dividing the list so that the two parts have lengths in the approximate proportion _φ_. A tape-drive implementation of the polyphase merge sort was described in _The Art of Computer Programming_.
-   Fibonacci numbers arise in the analysis of the Fibonacci heap data structure.
-   The Fibonacci cube is an undirected graph with a Fibonacci number of nodes that has been proposed as a network topology for parallel computing.
-   A one-dimensional optimization method, called the Fibonacci search technique, uses Fibonacci numbers.[22]
-   The Fibonacci number series is used for optional lossy compression in the IFF 8SVX audio file format used on Amiga computers. The number series compands the original audio wave similar to logarithmic methods such as µ-law.[23][24]
-   Since the conversion factor 1.609344 for miles to kilometers is close to the golden ratio, the decomposition of distance in miles into a sum of Fibonacci numbers becomes nearly the kilometer sum when the Fibonacci numbers are replaced by their successors. This method amounts to a radix 2 number register in golden ratio base _φ_ being shifted. To convert from kilometers to miles, shift the register down the Fibonacci sequence instead.[25]
-   In optics, when a beam of light shines at an angle through two stacked transparent plates of different materials of different refractive indexes, it may reflect off three surfaces: the top, middle, and bottom surfaces of the two plates. The number of different beam paths that have reflections, for , is the kth Fibonacci number. (However, when , there are three reflection paths, not two, one for each of the three surfaces.)
-   Mario Merz included the Fibonacci sequence in some of his works beginning in 1970.
-   Fibonacci retracement levels are widely used in technical analysis for financial market trading.

Music

Joseph Schillinger (1895–1943) developed a system of composition which uses Fibonacci intervals in some of its melodies; he viewed these as the musical counterpart to the elaborate harmony evident within nature.

Nature

head showing the arrangement in 21 (blue) and 13 (aqua) spirals. Such arrangements involving consecutive Fibonacci numbers appear in a wide variety of plants.]]

Fibonacci sequences appear in biological settings,[26] such as branching in trees, arrangement of leaves on a stem, the fruitlets of a pineapple,[27] the flowering of artichoke, an uncurling fern and the arrangement of a pine cone,[28] and the family tree of honeybees.[29][30] Kepler pointed out the presence of the Fibonacci sequence in nature, using it to explain the (golden ratio-related) pentagonal form of some flowers. Field daisies most often have petals in counts of Fibonacci numbers. In 1754, Charles Bonnet discovered that the spiral phyllotaxis of plants were frequently expressed in Fibonacci number series.[31]

Przemysław Prusinkiewicz advanced the idea that real instances can in part be understood as the expression of certain algebraic constraints on free groups, specifically as certain Lindenmayer grammars.[32]

A model for the pattern of florets in the head of a sunflower was proposed by in 1979.[33] This has the form

$$\theta = \frac{2\pi}{\phi^2} n,\  r = c \sqrt{n}$$

where _n_ is the index number of the floret and _c_ is a constant scaling factor; the florets thus lie on Fermat's spiral. The divergence angle, approximately 137.51°, is the golden angle, dividing the circle in the golden ratio. Because this ratio is irrational, no floret has a neighbor at exactly the same angle from the center, so the florets pack efficiently. Because the rational approximations to the golden ratio are of the form _F_(_j_):_F_(_j_ + 1), the nearest neighbors of floret number _n_ are those at _n_ ± _F_(_j_) for some index _j_, which depends on _r_, the distance from the center. Sunflowers and similar flowers most commonly have spirals of florets in clockwise and counter-clockwise directions in the amount of adjacent Fibonacci numbers, typically counted by the outermost range of radii.[34]

Fibonacci numbers also appear in the pedigrees of idealized honeybees, according to the following rules:

-   If an egg is laid by an unmated female, it hatches a male or drone bee.
-   If, however, an egg was fertilized by a male, it hatches a female.

Thus, a male bee always has one parent, and a female bee has two. If one traces the pedigree of any male bee (1 bee), he has 1 parent (1 bee), 2 grandparents, 3 great-grandparents, 5 great-great-grandparents, and so on. This sequence of numbers of parents is the Fibonacci sequence. The number of ancestors at each level, _F__(_n_), is the number of female ancestors, which is _F__(_n_−1), plus the number of male ancestors, which is _F__(_n_−2).[35] This is under the unrealistic assumption that the ancestors at each level are otherwise unrelated.

Luke Hutchison noticed that the number of possible ancestors on the human X chromosome inheritance line at a given ancestral generation also follows the Fibonacci sequence.[36] A male individual has an X chromosome, which he received from his mother, and a Y chromosome, which he received from his father. The male counts as the "origin" of his own X chromosome (F₁ = 1), and at his parents' generation, his X chromosome came from a single parent (F₂ = 1). The male's mother received one X chromosome from her mother (the son's maternal grandmother), and one from her father (the son's maternal grandfather), so two grandparents contributed to the male descendant's X chromosome (F₃ = 2). The maternal grandfather received his X chromosome from his mother, and the maternal grandmother received X chromosomes from both of her parents, so three great-grandparents contributed to the male descendant's X chromosome (F₄ = 3). Five great-great-grandparents contributed to the male descendant's X chromosome (F₅ = 5), etc. (Note that this assumes that all ancestors of a given descendant are independent, but if any genealogy is traced far enough back in time, ancestors begin to appear on multiple lines of the genealogy, until eventually a population founder appears on all lines of the genealogy.)

The pathways of tubulins on intracellular microtubules arrange in patterns of 3, 5, 8 and 13.[37]


Mathematics

.]] The Fibonacci numbers occur in the sums of "shallow" diagonals in Pascal's triangle (see binomial coefficient):

$$F_n = \sum_{k=0}^{\left\lfloor\frac{n-1}{2}\right\rfloor} \binom{n-k-1}{k}.$$

These numbers also give the solution to certain enumerative problems,[38] the most common of which is that of counting the number of ways of writing a given number _n_ as an ordered sum of 1s and 2s (called compositions); there are _F__(_n_+1) ways to do this. For example, if _n_ = 5, then _F__(_n_+1) = _F_₆ = 8 counts the eight compositions summing to 5:

    5 = 1+1+1+1+1 = 1+1+1+2 = 1+1+2+1 = 1+2+1+1 = 2+1+1+1 = 2+2+1 = 2+1+2 = 1+2+2.

The Fibonacci numbers can be found in different ways among the set of binary strings, or equivalently, among the subsets of a given set.

-   The number of binary strings of length _n_ without consecutive 1s is the Fibonacci number _F__(_n_+2). For example, out of the 16 binary strings of length 4, there are _F_₆ = 8 without consecutive 1s – they are 0000, 0001, 0010, 0100, 0101, 1000, 1001, and 1010. Equivalently, _F__(_n_+2) is the number of subsets _S_ of without consecutive integers, that is, those _S_ for which ⊈ _S_ for every _i_.
-   The number of binary strings of length _n_ without an odd number of consecutive 1s is the Fibonacci number _F__(_n+1_). For example, out of the 16 binary strings of length 4, there are _F_₅ = 5 without an odd number of consecutive 1s – they are 0000, 0011, 0110, 1100, 1111. Equivalently, the number of subsets _S_ of without an odd number of consecutive integers is _F__(_n_+1).
-   The number of binary strings of length _n_ without an even number of consecutive 0s or 1s is 2_F__(_n_). For example, out of the 16 binary strings of length 4, there are 2_F_₄ = 6 without an even number of consecutive 0s or 1s – they are 0001, 0111, 0101, 1000, 1010, 1110. There is an equivalent statement about subsets.

Sequence properties

The first 21 Fibonacci numbers _F_(n)_ for _n_ = 0, 1, 2, ..., 20 are:[39]

    {| class="wikitable" style="text-align:right"

|- | _F_₀ | _F_₁ | _F_₂ | _F_₃ | _F_₄ | _F_₅ | _F_₆ | _F_₇ | _F_₈ | _F_₉ | _F_₁₀ | _F_₁₁ | _F_₁₂ | _F_₁₃ | _F_₁₄ | _F_₁₅ | _F_₁₆ | _F_₁₇ | _F_₁₈ | _F_₁₉ | _F_₂₀ |- | 0 | 1 | 1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 | 89 | 144 | 233 | 377 | 610 | 987 | 1597 | 2584 | 4181 | 6765 |}

The sequence can also be extended to negative index _n_ using the re-arranged recurrence relation

_F__(_n_ − 2) = _F__(_n_) − _F__(_n_ − 1),

which yields the sequence of "negafibonacci" numbers[40] satisfying

_F__( − _n_) = ( − 1)^(_n_ + 1)_F__(_n_).

Thus the bidirectional sequence is

    {| class="wikitable" style="text-align:right"

|- | _F__(−8) | _F__(−7) | _F__(−6) | _F__(−5) | _F__(−4) | _F__(−3) | _F__(−2) | _F__(−1) | _F_₀ | _F_₁ | _F_₂ | _F_₃ | _F_₄ | _F_₅ | _F_₆ | _F_₇ | _F_₈ |- | −21 | 13 | −8 | 5 | −3 | 2 | −1 | 1 | 0 | 1 | 1 | 2 | 3 | 5 | 8 | 13 | 21 |}

Relation to the golden ratio

Closed-form expression

Like every sequence defined by a linear recurrence with constant coefficients, the Fibonacci numbers have a closed-form solution. It has become known as "Binet's formula", though it was already known by Abraham de Moivre and Daniel Bernoulli:[41]

$$F_n = \frac{\varphi^n-\psi^n}{\varphi-\psi} = \frac{\varphi^n-\psi^n}{\sqrt 5}$$

where

$$\varphi = \frac{1 + \sqrt{5}}{2} \approx 1.61803\,39887\ldots$$

is the golden ratio (), and

$$\psi = \frac{1 - \sqrt{5}}{2} = 1 - \varphi = - {1 \over \varphi} \approx -0.61803\,39887\ldots.$$

Since ψ =  − φ^( − 1), this formula can also be written as

$F_n = \frac{\varphi^n-(-\varphi)^{-n}}{\sqrt 5} = \frac{\varphi^n-(-\varphi)^{-n}}{2 \varphi - 1}$

To see this, note that and are both solutions of the equations

_x_² = _x_ + 1 and _x_^(_n_) = _x_^(_n_ − 1) + _x_^(_n_ − 2),

so the powers of and satisfy the Fibonacci recursion. In other words,

_φ_^(_n_) = _φ_^(_n_ − 1) + _φ_^(_n_ − 2)

and

_ψ_^(_n_) = _ψ_^(_n_ − 1) + _ψ_^(_n_ − 2).

It follows that for any values _a_ and _b_, the sequence defined by

_U__(_n_) = _a__φ_^(_n_) + _b__ψ_^(_n_)

satisfies the same recurrence

_U__(_n_) = _a__φ_^(_n_ − 1) + _b__ψ_^(_n_ − 1) + _a__φ_^(_n_ − 2) + _b__ψ_^(_n_ − 2) = _U__(_n_ − 1) + _U__(_n_ − 2).

If _a_ and _b_ are chosen so that _U_₀ = 0 and _U_₁ = 1 then the resulting sequence _U__(_n_) must be the Fibonacci sequence. This is the same as requiring _a_ and _b_ satisfy the system of equations:

$$\left\{\begin{array}{l} a + b = 0\\ \varphi a + \psi b = 1\end{array}\right.$$
which has solution

$$a = \frac{1}{\varphi-\psi} = \frac{1}{\sqrt 5},\quad  b = -a,$$
producing the required formula.

Taking the starting values _U_₀ and _U_₁ to be arbitrary constants, a more general solution is:

_U__(_n_) = _a__φ_^(_n_) + _b__ψ_^(_n_)
where

$$a=\frac{U_1-U_0\psi}{\sqrt 5}$$

$$b=\frac{U_0\varphi-U_1}{\sqrt 5}$$
.

Computation by rounding

Since

$$\left|\frac{\psi^{n}}{\sqrt 5}\right| < \frac{1}{2}$$

for all _n_ ≥ 0, the number _F__(_n_) is the closest integer to $\frac{\varphi^n}{\sqrt 5}$. Therefore, it can be found by rounding, that is by the use of the nearest integer function:

$$F_n=\left[\frac{\varphi^n}{\sqrt 5}\right],\ n \geq 0,$$

or in terms of the floor function:

$$F_n=\left\lfloor\frac{\varphi^n}{\sqrt 5} + \frac{1}{2}\right\rfloor,\ n \geq 0.$$

Similarly, if we already know that the number _F_ > 1 is a Fibonacci number, we can determine its index within the sequence by

$$n(F) = \bigg\lfloor \log_\varphi \left(F\cdot\sqrt{5} + \frac{1}{2}\right) \bigg\rfloor,$$

where log_(φ)(x) can be computed using logarithms to other usual bases. For example, log_(φ)(x) = ln (x)/ln (φ) = log₁₀(x)/log₁₀(φ).

Limit of consecutive quotients

Johannes Kepler observed that the ratio of consecutive Fibonacci numbers converges. He wrote that "as 5 is to 8 so is 8 to 13, practically, and as 8 is to 13, so is 13 to 21 almost", and concluded that these ratios approach the golden ratio φ:[42][43]

$$\lim_{n\to\infty}\frac{F_{n+1}}{F_n}=\varphi.$$

This convergence holds regardless of the starting values, excluding 0 and 0, or any pair in the conjugate golden ratio,  − 1/φ. This can be verified using Binet's formula. For example, the initial values 3 and 2 generate the sequence 3, 2, 5, 7, 12, 19, 31, 50, 81, 131, 212, 343, 555, ... The ratio of consecutive terms in this sequence shows the same convergence towards the golden ratio.

Decomposition of powers

Since the golden ratio satisfies the equation

_φ_² = _φ_ + 1,

this expression can be used to decompose higher powers φ^(n) as a linear function of lower powers, which in turn can be decomposed all the way down to a linear combination of φ and 1. The resulting recurrence relationships yield Fibonacci numbers as the linear coefficients:

_φ_^(_n_) = _F__(_n_)_φ_ + _F__(_n_ − 1).
This equation can be proved by induction on _n_.

This expression is also true for _n_ < 1 if the Fibonacci sequence _F_(n)_ is extended to negative integers using the Fibonacci rule F_(n) = F_(n − 1) + F_(n − 2).

Matrix form

A 2-dimensional system of linear difference equations that describes the Fibonacci sequence is

$${F_{k+2} \choose F_{k+1}} = \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix} {F_{k+1} \choose F_{k}}$$
alternatively denoted

_F⃗__(_k_ + 1) = A_F⃗__(_k_),

which yields F⃗_(n) = A^(n)F⃗₀. The eigenvalues of the matrix are $\varphi=\frac12(1+\sqrt5)$ and $-\varphi^{-1}=\frac12(1-\sqrt5)$ corresponding to the respective eigenvectors

$$\vec \mu={\varphi \choose 1}$$
and

$$\vec\nu={-\varphi^{-1} \choose 1}.$$
As the initial value is

$$\vec F_0={1 \choose 0}=\frac{1}{\sqrt{5}}\vec{\mu}-\frac{1}{\sqrt{5}}\vec{\nu},$$
it follows that the th term is

$$\begin{align}\vec F_{n} &= \frac{1}{\sqrt{5}}A^n\vec\mu-\frac{1}{\sqrt{5}}A^n\vec\nu \\
&= \frac{1}{\sqrt{5}}\varphi^n\vec\mu-\frac{1}{\sqrt{5}}(-\varphi)^{-n}\vec\nu~\\
& =\cfrac{1}{\sqrt{5}}\left(\cfrac{1+\sqrt{5}}{2}\right)^n{\varphi \choose 1}-\cfrac{1}{\sqrt{5}}\left(\cfrac{1-\sqrt{5}}{2}\right)^n{-\varphi^{-1}\choose 1},
\end{align}$$
From this, the th element in the Fibonacci series may be read off directly as a closed-form expression:

$$F_{n} = \cfrac{1}{\sqrt{5}}\left(\cfrac{1+\sqrt{5}}{2}\right)^n-\cfrac{1}{\sqrt{5}}\left(\cfrac{1-\sqrt{5}}{2}\right)^n.$$

Equivalently, the same computation may performed by diagonalization of through use of its eigendecomposition:

$$\begin{align} A & = S\Lambda S^{-1} ,\\
 A^n & = S\Lambda^n S^{-1},
\end{align}$$
where $\Lambda=\begin{pmatrix} \varphi & 0 \\ 0 & -\varphi^{-1} \end{pmatrix}$ and $S=\begin{pmatrix} \varphi & -\varphi^{-1} \\ 1 & 1 \end{pmatrix}.$ The closed-form expression for the th element in the Fibonacci series is therefore given by

$$\begin{align} {F_{n+1} \choose F_{n}} & = A^{n} {F_1 \choose F_0} \\
 & = S \Lambda^n S^{-1} {F_1 \choose F_0} \\
 & = S \begin{pmatrix} \varphi^n & 0 \\ 0 & (-\varphi)^{-n} \end{pmatrix} S^{-1} {F_1 \choose F_0} \\
 & = \begin{pmatrix} \varphi & -\varphi^{-1} \\ 1 & 1 \end{pmatrix}
     \begin{pmatrix} \varphi^n & 0 \\ 0 & (-\varphi)^{-n} \end{pmatrix}
     \frac{1}{\sqrt{5}}\begin{pmatrix} 1 & \varphi^{-1} \\ -1 & \varphi \end{pmatrix} {1 \choose 0},
\end{align}$$

which again yields

$$F_{n} = \cfrac{\varphi^n-(-\varphi)^{-n}}{\sqrt{5}}.$$

The matrix has a determinant of −1, and thus it is a 2×2 unimodular matrix.

This property can be understood in terms of the continued fraction representation for the golden ratio:

$$\varphi = 1 + \cfrac{1}{1 + \cfrac{1}{1 + \cfrac{1}{1 + \ddots}}}.$$

The Fibonacci numbers occur as the ratio of successive convergents of the continued fraction for , and the matrix formed from successive convergents of any continued fraction has a determinant of +1 or −1. The matrix representation gives the following closed-form expression for the Fibonacci numbers:

$$\begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}^n = \begin{pmatrix} F_{n+1} & F_n \\ F_n & F_{n-1} \end{pmatrix}.$$

Taking the determinant of both sides of this equation yields Cassini's identity,

( − 1)^(_n_) = _F__(_n_ + 1)_F__(_n_ − 1) − _F__(_n_)².

Moreover, since A^(_n_+_m_)}} for any square matrix , the following identities can be derived (they are obtained from two different coefficients of the matrix product, and one may easily deduce the second one from the first one by changing into ),

$$\begin{align}
 {F_m}{F_n} + {F_{m-1}}{F_{n-1}} &= F_{m+n-1},\\
 F_{m} F_{n+1} + F_{m-1} F_n &= F_{m+n}  .
\end{align}$$
In particular, with ,

$$\begin{align}
 F_{2n-1} &= F_n^2 + F_{n-1}^2\\
 F_{2n}   &= (F_{n-1}+F_{n+1})F_n\\
          &= (2F_{n-1}+F_n)F_n  .
\end{align}$$

These last two identities provide a way to compute Fibonacci numbers recursively in arithmetic operations and in time , where is the time for the multiplication of two numbers of digits. This matches the time for computing the th Fibonacci number from the closed-form matrix formula, but with fewer redundant steps if one avoids recomputing an already computed Fibonacci number (recursion with memoization).[44]

Identification

The question may arise whether a positive integer _x_ is a Fibonacci number. This is true if and only if one or both of 5x² + 4 or 5x² − 4 is a perfect square.[45] This is because Binet's formula above can be rearranged to give

$$n = \log_{\varphi}\left(\frac{F_n\sqrt{5} + \sqrt{5F_n^2 \pm 4}}{2}\right)$$
,

which allows one to find the position in the sequence of a given Fibonacci number.

This formula must return an integer for all _n_, so the radical expression must be an integer (otherwise the logarithm does not even return a rational number).

Combinatorial identities

Most identities involving Fibonacci numbers can be proved using combinatorial arguments using the fact that _F__(_n_) can be interpreted as the number of sequences of 1s and 2s that sum to _n_ − 1. This can be taken as the definition of _F__(_n_), with the convention that _F_₀ = 0, meaning no sum adds up to −1, and that _F_₁ = 1, meaning the empty sum "adds up" to 0. Here, the order of the summand matters. For example, 1 + 2 and 2 + 1 are considered two different sums.

For example, the recurrence relation

    F_(n) = F_(n − 1) + F_(n − 2),

or in words, the _n_th Fibonacci number is the sum of the previous two Fibonacci numbers, may be shown by dividing the _F__(_n_) sums of 1s and 2s that add to _n_ − 1 into two non-overlapping groups. One group contains those sums whose first term is 1 and the other those sums whose first term is 2. In the first group the remaining terms add to _n_ − 2, so it has _F__(_n_-1) sums, and in the second group the remaining terms add to _n_ − 3, so there are _F__(_n_−2) sums. So there are a total of _F__(_n_−1) + _F__(_n_−2) sums altogether, showing this is equal to _F__(_n_).

Similarly, it may be shown that the sum of the first Fibonacci numbers up to the _n_th is equal to the (_n_ + 2)-nd Fibonacci number minus 1. In symbols:

$$\sum_{i=1}^n F_i = F_{n+2} - 1$$

This is done by dividing the sums adding to _n_ + 1 in a different way, this time by the location of the first 2. Specifically, the first group consists of those sums that start with 2, the second group those that start 1 + 2, the third 1 + 1 + 2, and so on, until the last group, which consists of the single sum where only 1's are used. The number of sums in the first group is _F_(_n_), _F_(_n_ − 1) in the second group, and so on, with 1 sum in the last group. So the total number of sums is _F_(_n_) + _F_(_n_ − 1) + ... + _F_(1) + 1 and therefore this quantity is equal to _F_(_n_ + 2).

A similar argument, grouping the sums by the position of the first 1 rather than the first 2, gives two more identities:

$$\sum_{i=0}^{n-1} F_{2i+1} = F_{2n}$$
and

$$\sum_{i=1}^{n} F_{2i} = F_{2n+1}-1.$$
In words, the sum of the first Fibonacci numbers with odd index up to _F__(2_n_−1) is the (2_n_)th Fibonacci number, and the sum of the first Fibonacci numbers with even index up to _F__(2_n_) is the (2_n_ + 1)th Fibonacci number minus 1.[46]

A different trick may be used to prove

$$\sum_{i=1}^n {F_i}^2 = F_{n} F_{n+1},$$
or in words, the sum of the squares of the first Fibonacci numbers up to _F__(_n_) is the product of the _n_th and (_n_ + 1)th Fibonacci numbers. In this case note that Fibonacci rectangle of size _F__(_n_) by _F_(_n_ + 1) can be decomposed into squares of size _F__(_n_), _F__(_n_−1), and so on to _F_₁ = 1, from which the identity follows by comparing areas.

Symbolic method

The sequence (F_(n))_(n ∈ ℕ) is also considered using the symbolic method.[47] More precisely, this sequence corresponds to a specifiable combinatorial class. The specification of this sequence is Seq (𝒵 + 𝒵²). Indeed, as stated above, the n-th Fibonacci numbes equals the number of way to partition n using segments of size 1 or 2.

It follows that the ordinary generating function of the Fibonacci sequence, i.e. $\sum_{i=0}^\infty F_iz^i$, is the complex function $\frac{z}{1-z-z^2}$.

Other identities

Numerous other identities can be derived using various methods. Some of the most noteworthy are:[48]

Cassini's and Catalan's identities

Cassini's identity states that

_F__(_n_)² − _F__(_n_ + 1)_F__(_n_ − 1) = ( − 1)^(_n_ − 1)
Catalan's identity is a generalization:

_F__(_n_)² − _F__(_n_ + _r_)_F__(_n_ − _r_) = ( − 1)^(_n_ − _r_)_F__(_r_)²

d'Ocagne's identity

_F__(_m_)_F__(_n_ + 1) − _F__(_m_ + 1)_F__(_n_) = ( − 1)^(_n_)_F__(_m_ − _n_)

_F__(2_n_) = _F__(_n_ + 1)² − _F__(_n_ − 1)² = _F__(_n_)(_F__(_n_ + 1)+_F__(_n_ − 1)) = _F__(_n_)_L__(_n_)
where _L__(_n_) is the _n_'th Lucas number. The last is an identity for doubling _n_; other identities of this type are

_F__(3_n_) = 2_F__(_n_)³ + 3_F__(_n_)_F__(_n_ + 1)_F__(_n_ − 1) = 5_F__(_n_)³ + 3( − 1)^(_n_)_F__(_n_)
by Cassini's identity.

_F__(3_n_ + 1) = _F__(_n_ + 1)³ + 3_F__(_n_ + 1)_F__(_n_)² − _F__(_n_)³

_F__(3_n_ + 2) = _F__(_n_ + 1)³ + 3_F__(_n_ + 1)²_F__(_n_) + _F__(_n_)³

_F__(4_n_) = 4_F__(_n_)_F__(_n_ + 1)(_F__(_n_ + 1)²+2_F__(_n_)²) − 3_F__(_n_)²(_F__(_n_)²+2_F__(_n_ + 1)²)
These can be found experimentally using lattice reduction, and are useful in setting up the special number field sieve to factorize a Fibonacci number.

More generally,[49]

$$F_{kn+c} = \sum_{i=0}^k {k\choose i} F_{c-i} F_n^i F_{n+1}^{k-i}.$$

Putting in this formula, one gets again the formulas of the end of above section Matrix form.

Power series

The generating function of the Fibonacci sequence is the power series

$$s(x)=\sum_{k=0}^{\infty} F_k x^k.$$

This series is convergent for $|x| < \frac{1}{\varphi},$ and its sum has a simple closed-form:[50]

$$s(x)=\frac{x}{1-x-x^2}$$

This can be proved by using the Fibonacci recurrence to expand each coefficient in the infinite sum:

$$\begin{align}
  s(x) &= \sum_{k=0}^{\infty} F_k x^k \\
       &= F_0 + F_1x + \sum_{k=2}^{\infty} \left( F_{k-1} + F_{k-2} \right) x^k \\
       &= x + \sum_{k=2}^{\infty} F_{k-1} x^k + \sum_{k=2}^{\infty} F_{k-2} x^k \\
       &= x + x\sum_{k=0}^{\infty} F_k x^k + x^2\sum_{k=0}^{\infty} F_k x^k \\
       &= x + x s(x) + x^2 s(x).
  \end{align}$$

Solving the equation

_s_(_x_) = _x_ + _x__s_(_x_) + _x_²_s_(_x_)

for _s_(_x_) results in the above closed form.

Setting , the closed form of the series becomes

$$\sum_{n=0}^\infty \frac{F_n}{k^{n}} = \frac{k}{k^{2}-k-1}.$$

In particular, if is an integer greater than 1, then this series converges. Further setting yields

$$\sum_{n = 1}^{\infty}{\frac {F_n}{10^{m(n + 1)}}} = \frac {1}{10^{2m} - 10^{m} - 1}$$
for all positive integers .

Some math puzzle-books present as curious the particular value that comes from , which is $\frac{s(1/10)}{10}=\frac{1}{89} = .011235\ldots$[51] Similarly, gives

$$\frac{s(1/100)}{100}=\frac{1}{9899} = .0001010203050813213455\ldots$$

Reciprocal sums

Infinite sums over reciprocal Fibonacci numbers can sometimes be evaluated in terms of theta functions. For example, we can write the sum of every odd-indexed reciprocal Fibonacci number as

$$\sum_{k=0}^\infty \frac{1}{F_{2k+1}} = \frac{\sqrt{5}}{4}\vartheta_2^2 \left(0, \frac{3-\sqrt 5}{2}\right) ,$$

and the sum of squared reciprocal Fibonacci numbers as

$$\sum_{k=1}^\infty \frac{1}{F_k^2} = \frac{5}{24} \left(\vartheta_2^4\left(0, \frac{3-\sqrt 5}{2}\right) - \vartheta_4^4\left(0, \frac{3-\sqrt 5}{2}\right) + 1 \right).$$

If we add 1 to each Fibonacci number in the first sum, there is also the closed form

$$\sum_{k=0}^\infty \frac{1}{1+F_{2k+1}} = \frac{\sqrt{5}}{2},$$

and there is a _nested_ sum of squared Fibonacci numbers giving the reciprocal of the golden ratio,

$$\sum_{k=1}^\infty \frac{(-1)^{k+1}}{\sum_{j=1}^k {F_{j}}^2} = \frac{\sqrt{5}-1}{2}.$$

No closed formula for the reciprocal Fibonacci constant

$$\psi = \sum_{k=1}^{\infty} \frac{1}{F_k} = 3.359885666243 \dots$$

is known, but the number has been proved irrational by Richard André-Jeannin.[52]

The MILLIN SERIES gives the identity[53]

$$\sum_{n=0}^{\infty} \frac{1}{F_{2^n}} = \frac{7 - \sqrt{5}}{2},$$
which follows from the closed form for its partial sums as _N_ tends to infinity:

$$\sum_{n=0}^N \frac{1}{F_{2^n}} = 3 - \frac{F_{2^N-1}}{F_{2^N}}.$$

Primes and divisibility

Divisibility properties

Every third number of the sequence is even and more generally, every _k_th number of the sequence is a multiple of _F_(k)_. Thus the Fibonacci sequence is an example of a divisibility sequence. In fact, the Fibonacci sequence satisfies the stronger divisibility property[54][55]

gcd (_F__(_m_), _F__(_n_)) = _F__(gcd (_m_, _n_)).

Any three consecutive Fibonacci numbers are pairwise coprime, which means that, for every _n_,

    gcd(_F__(_n_), _F__(_n_+1)) = gcd(_F__(_n_), _F__(_n_+2)) = gcd(_F__(_n_+1), _F__(_n_+2)) = 1.

Every prime number _p_ divides a Fibonacci number that can be determined by the value of _p_ modulo 5. If _p_ is congruent to 1 or 4 (mod 5), then _p_ divides _F__(_p_ − 1), and if _p_ is congruent to 2 or 3 (mod 5), then, _p_ divides _F__(_p_ + 1). The remaining case is that _p_ = 5, and in this case _p_ divides _F__(p).

$$\begin{cases} p =5 & \Rightarrow p \mid F_{p}, \\ p \equiv \pm1 \pmod 5 & \Rightarrow p \mid F_{p-1}, \\ p \equiv \pm2 \pmod 5 &  \Rightarrow p \mid F_{p+1}.\end{cases}$$
These cases can be combined into a single formula, using the Legendre symbol:[56]

$$p \mid F_{p-\left(\frac{5}{p}\right)}.$$

Primality testing

The above formula can be used as a primality test in the sense that if

$$n \mid F_{n-\left(\frac{5}{n}\right)},$$
where the Legendre symbol has been replaced by the Jacobi symbol, then this is evidence that _n_ is a prime, and if it fails to hold, then _n_ is definitely not a prime. If _n_ is composite and satisfies the formula, then _n_ is a _Fibonacci pseudoprime_. When _m_ is large—say a 500-bit number—then we can calculate _F__(_m_) (mod _n_) efficiently using the matrix form. Thus

$$\begin{pmatrix} F_{m+1} & F_m \\ F_m & F_{m-1} \end{pmatrix} \equiv \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}^m \pmod n.$$
Here the matrix power _A_^(_m_) is calculated using modular exponentiation, which can be adapted to matrices.[57]

Fibonacci primes

A _Fibonacci prime_ is a Fibonacci number that is prime. The first few are:

    2, 3, 5, 13, 89, 233, 1597, 28657, 514229, ... .

Fibonacci primes with thousands of digits have been found, but it is not known whether there are infinitely many.[58]

_F__(_kn_) is divisible by _F__(_n_), so, apart from _F_₄ = 3, any Fibonacci prime must have a prime index. As there are arbitrarily long runs of composite numbers, there are therefore also arbitrarily long runs of composite Fibonacci numbers.

No Fibonacci number greater than _F_₆ = 8 is one greater or one less than a prime number.[59]

The only nontrivial square Fibonacci number is 144.[60] Attila Pethő proved in 2001 that there is only a finite number of perfect power Fibonacci numbers.[61] In 2006, Y. Bugeaud, M. Mignotte, and S. Siksek proved that 8 and 144 are the only such non-trivial perfect powers.[62]

1, 3, 21, 55 are the only triangular Fibonacci numbers, which was conjectured by Vern Hoggatt and proved by Luo Ming.[63]

No Fibonacci number can be a perfect number.[64] More generally, no Fibonaci number other than 1 can be multiply perfect,[65] and no ratio of two Fibonacci numbers can be perfect.[66]

Prime divisors

With the exceptions of 1, 8 and 144 (_F_₁ = _F_₂, _F_₆ and _F_₁₂) every Fibonacci number has a prime factor that is not a factor of any smaller Fibonacci number (Carmichael's theorem).[67] As a result, 8 and 144 (_F_₆ and _F_₁₂) are the only Fibonacci numbers that are the product of other Fibonacci numbers .

The divisibility of Fibonacci numbers by a prime _p_ is related to the Legendre symbol $\left(\tfrac{p}{5}\right)$ which is evaluated as follows:

$$\left(\frac{p}{5}\right) = \begin{cases} 0 & \text{if } p = 5\\ 1 & \text{if } p \equiv \pm 1 \pmod 5\\ -1 & \text{if } p \equiv \pm 2 \pmod 5.\end{cases}$$

If _p_ is a prime number then

$$F_p \equiv \left(\frac{p}{5}\right) \pmod p \quad \text{and}\quad F_{p-\left(\frac{p}{5}\right)} \equiv 0 \pmod p.$$
[68]

For example,

$$\begin{align}
(\tfrac{2}{5}) &= -1, &F_3  &= 2, &F_2&=1, \\
(\tfrac{3}{5}) &= -1, &F_4  &= 3,&F_3&=2, \\
(\tfrac{5}{5}) &= 0, &F_5  &= 5, \\
(\tfrac{7}{5}) &= -1, &F_8  &= 21,&F_7&=13, \\
(\tfrac{11}{5})& = +1, &F_{10}&  = 55, &F_{11}&=89.
\end{align}$$

It is not known whether there exists a prime _p_ such that

$$F_{p-\left(\frac{p}{5}\right)} \equiv 0 \pmod{p^2}.$$

Such primes (if there are any) would be called Wall–Sun–Sun primes.

Also, if _p_ ≠ 5 is an odd prime number then:

$$5F^2_{\frac{p \pm 1}{2}} \equiv \begin{cases}
\tfrac{1}{2} \left (5\left(\frac{p}{5}\right)\pm 5 \right ) \pmod p & \text{if } p \equiv 1 \pmod 4\\
\tfrac{1}{2} \left (5\left(\frac{p}{5}\right)\mp 3 \right ) \pmod p & \text{if } p \equiv 3 \pmod 4.
\end{cases}$$

EXAMPLE 1. _p_ = 7, in this case _p_ ≡ 3 (mod 4) and we have:

$$(\tfrac{7}{5}) = -1: \qquad \tfrac{1}{2}\left (5(\tfrac{7}{5})+3 \right ) =-1, \quad \tfrac{1}{2} \left (5(\tfrac{7}{5})-3 \right )=-4.$$

_F_₃ = 2 and _F_₄ = 3.

$$5F_3^2=20\equiv -1 \pmod {7}\;\;\text{ and }\;\;5F_4^2=45\equiv -4 \pmod {7}$$

EXAMPLE 2. _p_ = 11, in this case _p_ ≡ 3 (mod 4) and we have:

$$(\tfrac{11}{5}) = +1: \qquad  \tfrac{1}{2}\left (5(\tfrac{11}{5})+3 \right )=4, \quad \tfrac{1}{2} \left (5(\tfrac{11}{5})- 3 \right )=1.$$

_F_₅ = 5 and _F_₆ = 8.

$$5F_5^2=125\equiv 4 \pmod {11} \;\;\text{ and }\;\;5F_6^2=320\equiv 1 \pmod {11}$$

EXAMPLE 3. _p_ = 13, in this case _p_ ≡ 1 (mod 4) and we have:

$$(\tfrac{13}{5}) = -1: \qquad \tfrac{1}{2}\left (5(\tfrac{13}{5})-5 \right ) =-5, \quad \tfrac{1}{2}\left (5(\tfrac{13}{5})+ 5 \right )=0.$$

_F_₆ = 8 and _F_₇ = 13.

$$5F_6^2=320\equiv -5 \pmod {13} \;\;\text{ and }\;\;5F_7^2=845\equiv 0 \pmod {13}$$

EXAMPLE 4. _p_ = 29, in this case _p_ ≡ 1 (mod 4) and we have:

$$(\tfrac{29}{5}) = +1: \qquad \tfrac{1}{2}\left (5(\tfrac{29}{5})-5 \right )=0, \quad \tfrac{1}{2}\left (5(\tfrac{29}{5})+5 \right )=5.$$

_F_₁₄ = 377 and _F_₁₅ = 610.

$$5F_{14}^2=710645\equiv 0 \pmod {29} \;\;\text{ and }\;\;5F_{15}^2=1860500\equiv 5 \pmod {29}$$

For odd _n_, all odd prime divisors of _F__(_n_) are congruent to 1 modulo 4, implying that all odd divisors of _F__(_n_) (as the products of odd prime divisors) are congruent to 1 modulo 4.

For example,

_F_₁ = 1, _F_₃ = 2, _F_₅ = 5, _F_₇ = 13, _F_₉ = 34 = 2 ⋅ 17, _F_₁₁ = 89, _F_₁₃ = 233, _F_₁₅ = 610 = 2 ⋅ 5 ⋅ 61.

All known factors of Fibonacci numbers _F_(_i_) for all _i_ < 50000 are collected at the relevant repositories.[69][70]

Periodicity modulo _n_

If the members of the Fibonacci sequence are taken mod _n_, the resulting sequence is periodic with period at most _6n_.[71] The lengths of the periods for various _n_ form the so-called Pisano periods . Determining a general formula for the Pisano periods is an open problem, which includes as a subproblem a special instance of the problem of finding the multiplicative order of a modular integer or of an element in a finite field. However, for any particular _n_, the Pisano period may be found as an instance of cycle detection.

Right triangles

Starting with 5, every second Fibonacci number is the length of the hypotenuse of a right triangle with integer sides, or in other words, the largest number in a Pythagorean triple. The length of the longer leg of this triangle is equal to the sum of the three sides of the preceding triangle in this series of triangles, and the shorter leg is equal to the difference between the preceding bypassed Fibonacci number and the shorter leg of the preceding triangle.

The first triangle in this series has sides of length 5, 4, and 3. Skipping 8, the next triangle has sides of length 13, 12 (5 + 4 + 3), and 5 (8 − 3). Skipping 21, the next triangle has sides of length 34, 30 (13 + 12 + 5), and 16 (21 − 5). This series continues indefinitely. The triangle sides _a_, _b_, _c_ can be calculated directly:

$$\begin{align}
a_n & = F_{2n-1} \\[4pt]
b_n & = 2 F_n F_{n-1} \\[4pt]
c_n & = F_n^2 - F_{n-1}^2.
\end{align}$$

These formulas satisfy a_(n)² = b_(n)² + c_(n)² for all _n_, but they only represent triangle sides when _n_ > 2.

Any four consecutive Fibonacci numbers _F__(_n_), _F__(_n_+1), _F__(_n_+2) and _F__(_n_+3) can also be used to generate a Pythagorean triple in a different way:[72]

$$\begin{align}
   a &= F_n F_{n+3} \\
   b &= 2 F_{n+1} F_{n+2} \\
   c &= F_{n+1}^2 + F_{n+2}^2.
 \end{align}$$

Magnitude

Since _F_(n)_ is asymptotic to $\varphi^n/\sqrt5$, the number of digits in _F__(_n_) is asymptotic to nlog₁₀φ ≈ 0.2090 n. As a consequence, for every integer _d_ > 1 there are either 4 or 5 Fibonacci numbers with _d_ decimal digits.

More generally, in the base _b_ representation, the number of digits in _F__(_n_) is asymptotic to nlog_(b)φ.

Generalizations

The Fibonacci sequence is one of the simplest and earliest known sequences defined by a recurrence relation, and specifically by a linear difference equation. All these sequences may be viewed as generalizations of the Fibonacci sequence. In particular, Binet's formula may be generalized to any sequence that is a solution of a homogeneous linear difference equation with constant coefficients.

Some specific examples that are close, in some sense, from Fibonacci sequence include:

-   Generalizing the index to negative integers to produce the negafibonacci numbers.
-   Generalizing the index to real numbers using a modification of Binet's formula.[73]
-   Starting with other integers. Lucas numbers have _L_₁ = 1, _L_₂ = 3, and _L_(n)_ = _L__(_n_−1) + _L__(_n_−2). Primefree sequences use the Fibonacci recursion with other starting points to generate sequences in which all numbers are composite.
-   Letting a number be a linear function (other than the sum) of the 2 preceding numbers. The Pell numbers have _P_(n)_ = 2_P__(_n_\ −\ 1) + _P__(_n_\ −\ 2). If the coefficient of the preceding value is assigned a variable value _x_, the result is the sequence of Fibonacci polynomials.
-   Not adding the immediately preceding numbers. The Padovan sequence and Perrin numbers have _P_(_n_) = _P_(_n_ − 2) + _P_(_n_ − 3).
-   Generating the next number by adding 3 numbers (tribonacci numbers), 4 numbers (tetranacci numbers), or more. The resulting sequences are known as _n-Step Fibonacci numbers_.[74]


See also

-   Elliott wave principle
-   Embree–Trefethen constant
-   The Fibonacci Association
-   Fibonacci numbers in popular culture
-   Fibonacci word
-   Strong Law of Small Numbers
-   Verner Emil Hoggatt Jr.
-   Wythoff array


References

FOOTNOTES

CITATIONS

Works cited

-   .

-   .

-   .

    -   .

-   .

-   -   .

-


External links

-   Periods of Fibonacci Sequences Mod m at MathPages
-   Scientists find clues to the formation of Fibonacci spirals in nature
-   -   -

* Category:Articles containing proofs

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

[21] .

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]  has the first 300 F_(_n_) factored into primes and links to more extensive tables.

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56] . Williams calls this property "well known".

[57] _Prime Numbers_, Richard Crandall, Carl Pomerance, Springer, second edition, 2005, p.142.

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]  collects all known factors of _F_(_i_) with _i_ < 10000.

[70]  collects all known factors of _F_(_i_) with 10000 < _i_ < 50000.

[71]

[72]

[73]

[74]