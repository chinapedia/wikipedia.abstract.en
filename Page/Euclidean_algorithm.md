' example with numbers 49 and 21 resulting in their GCD of 7 (derived from Heath 1908:300).]]

In mathematics, the EUCLIDEAN ALGORITHM,[1] or EUCLID'S ALGORITHM, is an efficient method for computing the greatest common divisor (GCD) of two numbers, the largest number that divides both of them without leaving a remainder. It is named after the ancient Greek mathematician Euclid, who first described it in his _Elements_ (c. 300 BC). It is an example of an _algorithm_, a step-by-step procedure for performing a calculation according to well-defined rules, and is one of the oldest algorithms in common use. It can be used to reduce fractions to their simplest form, and is a part of many other number-theoretic and cryptographic calculations.

The Euclidean algorithm is based on the principle that the greatest common divisor of two numbers does not change if the larger number is replaced by its difference with the smaller number. For example, 21 is the GCD of 252 and 105 (as 252 = 21 × 12 and 105 = 21 × 5), and the same number 21 is also the GCD of 105 and 252 − 105 = 147. Since this replacement reduces the larger of the two numbers, repeating this process gives successively smaller pairs of numbers until the two numbers become equal. When that occurs, they are the GCD of the original two numbers. By reversing the steps, the GCD can be expressed as a sum of the two original numbers each multiplied by a positive or negative integer, e.g., 21 = 5 × 105 + (−2) × 252. The fact that the GCD can always be expressed in this way is known as Bézout's identity.

The version of the Euclidean algorithm described above (and by Euclid) can take many subtraction steps to find the GCD when one of the given numbers is much bigger than the other. A more efficient version of the algorithm shortcuts these steps, instead replacing the larger of the two numbers by its remainder when divided by the smaller of the two (with this version, the algorithm stops when reaching a zero remainder). With this improvement, the algorithm never requires more steps than five times the number of digits (base 10) of the smaller integer. This was proven by Gabriel Lamé in 1844, and marks the beginning of computational complexity theory. Additional methods for improving the algorithm's efficiency were developed in the 20th century.

The Euclidean algorithm has many theoretical and practical applications. It is used for reducing fractions to their simplest form and for performing division in modular arithmetic. Computations using this algorithm form part of the cryptographic protocols that are used to secure internet communications, and in methods for breaking these cryptosystems by factoring large composite numbers. The Euclidean algorithm may be used to solve Diophantine equations, such as finding numbers that satisfy multiple congruences according to the Chinese remainder theorem, to construct continued fractions, and to find accurate rational approximations to real numbers. Finally, it can be used as a basic tool for proving theorems in number theory such as Lagrange's four-square theorem and the uniqueness of prime factorizations. The original algorithm was described only for natural numbers and geometric lengths (real numbers), but the algorithm was generalized in the 19th century to other types of numbers, such as Gaussian integers and polynomials of one variable. This led to modern abstract algebraic notions such as Euclidean domains.


Background: greatest common divisor

The Euclidean algorithm calculates the greatest common divisor (GCD) of two natural numbers _a_ and _b_. The greatest common divisor _g_ is the largest natural number that divides both _a_ and _b_ without leaving a remainder. Synonyms for the GCD include the _greatest common factor_ (GCF), the _highest common factor_ (HCF), the _highest common divisor_ (HCD), and the _greatest common measure_ (GCM). The greatest common divisor is often written as gcd(_a_, _b_) or, more simply, as (_a_, _b_),[2] although the latter notation is ambiguous, also used for concepts such as an ideal in the ring of integers, which is closely related to GCD.

If gcd(_a_, _b_) = 1, then _a_ and _b_ are said to be coprime (or relatively prime).[3] This property does not imply that _a_ or _b_ are themselves prime numbers.[4] For example, neither 6 nor 35 is a prime number, since they both have two prime factors: 6 = 2 × 3 and 35 = 5 × 7. Nevertheless, 6 and 35 are coprime. No natural number other than 1 divides both 6 and 35, since they have no prime factors in common.

Let _g_ = gcd(_a_, _b_). Since _a_ and _b_ are both multiples of _g_, they can be written _a_ = _mg_ and _b_ = _ng_, and there is no larger number _G_ > _g_ for which this is true. The natural numbers _m_ and _n_ must be coprime, since any common factor could be factored out of _m_ and _n_ to make _g_ greater. Thus, any other number _c_ that divides both _a_ and _b_ must also divide _g_. The greatest common divisor _g_ of _a_ and _b_ is the unique (positive) common divisor of _a_ and _b_ that is divisible by any other common divisor _c_.[5]

The GCD can be visualized as follows.[6] Consider a rectangular area _a_ by _b_, and any common divisor _c_ that divides both _a_ and _b_ exactly. The sides of the rectangle can be divided into segments of length _c_, which divides the rectangle into a grid of squares of side length _c_. The greatest common divisor _g_ is the largest value of _c_ for which this is possible. For illustration, a 24-by-60 rectangular area can be divided into a grid of: 1-by-1 squares, 2-by-2 squares, 3-by-3 squares, 4-by-4 squares, 6-by-6 squares or 12-by-12 squares. Therefore, 12 is the greatest common divisor of 24 and 60. A 24-by-60 rectangular area can be divided into a grid of 12-by-12 squares, with two squares along one edge (24/12 = 2) and five squares along the other (60/12 = 5).

The GCD of two numbers _a_ and _b_ is the product of the prime factors shared by the two numbers, where a same prime factor can be used multiple times, but only as long as the product of these factors divides both _a_ and _b_.[7] For example, since 1386 can be factored into 2 × 3 × 3 × 7 × 11, and 3213 can be factored into 3 × 3 × 3 × 7 × 17, the greatest common divisor of 1386 and 3213 equals 63 = 3 × 3 × 7, the product of their shared prime factors. If two numbers have no prime factors in common, their greatest common divisor is 1 (obtained here as an instance of the empty product), in other words they are coprime. A key advantage of the Euclidean algorithm is that it can find the GCD efficiently without having to compute the prime factors.[8][9] Factorization of large integers is believed to be a computationally very difficult problem, and the security of many widely used cryptographic protocols is based upon its infeasibility.[10]

Another definition of the GCD is helpful in advanced mathematics, particularly ring theory.[11] The greatest common divisor _g_  of two nonzero numbers _a_ and _b_ is also their smallest positive integral linear combination, that is, the smallest positive number of the form _ua_ + _vb_ where _u_ and _v_ are integers. The set of all integral linear combinations of _a_ and _b_ is actually the same as the set of all multiples of _g_ (_mg_, where _m_ is an integer). In modern mathematical language, the ideal generated by _a_ and _b_ is the ideal generated by _g_ alone (an ideal generated by a single element is called a principal ideal, and all ideals of the integers are principal ideals). Some properties of the GCD are in fact easier to see with this description, for instance the fact that any common divisor of _a_ and _b_ also divides the GCD (it divides both terms of _ua_ + _vb_). The equivalence of this GCD definition with the other definitions is described below.

The GCD of three or more numbers equals the product of the prime factors common to all the numbers,[12] but it can also be calculated by repeatedly taking the GCDs of pairs of numbers.[13] For example,



Thus, Euclid's algorithm, which computes the GCD of two integers, suffices to calculate the GCD of arbitrarily many integers.


Description

Procedure

The Euclidean algorithm proceeds in a series of steps such that the output of each step is used as an input for the next one. Let _k_ be an integer that counts the steps of the algorithm, starting with zero. Thus, the initial step corresponds to _k_ = 0, the next step corresponds to _k_ = 1, and so on.

Each step begins with two nonnegative remainders _r__(_k_−1) and _r__(_k_−2). Since the algorithm ensures that the remainders decrease steadily with every step, _r__(_k_−1) is less than its predecessor _r__(_k_−2). The goal of the _k_th step is to find a quotient _q__(_k_) and remainder _r__(_k_) that satisfy the equation

_r__(_k_ − 2) = _q__(_k_)_r__(_k_ − 1) + _r__(_k_)

and that have _r__(_k_) < _r__(_k_−1). In other words, multiples of the smaller number _r__(_k_−1) are subtracted from the larger number _r__(_k_−2) until the remainder _r__(_k_) is smaller than _r__(_k_−1).

In the initial step (_k_ = 0), the remainders _r__(−2) and _r__(−1) equal _a_ and _b_, the numbers for which the GCD is sought. In the next step (_k_ = 1), the remainders equal _b_ and the remainder _r_₀ of the initial step, and so on. Thus, the algorithm can be written as a sequence of equations

$$\begin{align}
a &= q_0  b + r_0 \\
b &= q_1 r_0 + r_1 \\
r_0 &= q_2 r_1 + r_2 \\
r_1 &=q_3 r_2 + r_3 \\
&\,\,\,\vdots
\end{align}$$

If _a_ is smaller than _b_, the first step of the algorithm swaps the numbers. For example, if _a_ < _b_, the initial quotient _q_₀ equals zero, and the remainder _r_₀ is _a_. Thus, _r__(_k_) is smaller than its predecessor _r__(_k_−1) for all _k_ ≥ 0.

Since the remainders decrease with every step but can never be negative, a remainder _r__(_N_) must eventually equal zero, at which point the algorithm stops.[14] The final nonzero remainder _r__(_N_−1) is the greatest common divisor of _a_ and _b_. The number _N_ cannot be infinite because there are only a finite number of nonnegative integers between the initial remainder _r_₀ and zero.

Proof of validity

The validity of the Euclidean algorithm can be proven by a two-step argument.[15] In the first step, the final nonzero remainder _r__(_N_−1) is shown to divide both _a_ and _b_. Since it is a common divisor, it must be less than or equal to the greatest common divisor _g_. In the second step, it is shown that any common divisor of _a_ and _b_, including _g_, must divide _r__(_N_−1); therefore, _g_ must be less than or equal to _r__(_N_−1). These two conclusions are inconsistent unless _r__(_N_−1) = _g_.

To demonstrate that _r__(_N_−1) divides both _a_ and _b_ (the first step), _r__(_N_−1) divides its predecessor _r__(_N_−2)



since the final remainder _r__(_N_) is zero. _r__(_N_−1) also divides its next predecessor _r__(_N_−3)



because it divides both terms on the right-hand side of the equation. Iterating the same argument, _r__(_N_−1) divides all the preceding remainders, including _a_ and _b_. None of the preceding remainders _r__(_N_−2), _r__(_N_−3), etc. divide _a_ and _b_, since they leave a remainder. Since _r__(_N_−1) is a common divisor of _a_ and _b_, _r__(_N_−1) ≤ _g_.

In the second step, any natural number _c_ that divides both _a_ and _b_ (in other words, any common divisor of _a_ and _b_) divides the remainders _r__(_k_). By definition, _a_ and _b_ can be written as multiples of _c_ : _a_ = _mc_ and _b_ = _nc_, where _m_ and _n_ are natural numbers. Therefore, _c_ divides the initial remainder _r_₀, since _r_₀ = _a_ − _q_₀_b_ = _mc_ − _q_₀_nc_ = (_m_ − _q_₀_n_)_c_. An analogous argument shows that _c_ also divides the subsequent remainders _r_₁, _r_₂, etc. Therefore, the greatest common divisor _g_ must divide _r__(_N_−1), which implies that _g_ ≤ _r__(_N_−1). Since the first part of the argument showed the reverse (_r__(_N_−1) ≤ _g_), it follows that _g_ = _r__(_N_−1). Thus, _g_ is the greatest common divisor of all the succeeding pairs:[16][17]



Worked example

For illustration, the Euclidean algorithm can be used to find the greatest common divisor of _a_ = 1071 and _b_ = 462. To begin, multiples of 462 are subtracted from 1071 until the remainder is less than 462. Two such multiples can be subtracted (_q_₀ = 2), leaving a remainder of 147:



Then multiples of 147 are subtracted from 462 until the remainder is less than 147. Three multiples can be subtracted (_q_₁ = 3), leaving a remainder of 21:



Then multiples of 21 are subtracted from 147 until the remainder is less than 21. Seven multiples can be subtracted (_q_₂ = 7), leaving no remainder:



Since the last remainder is zero, the algorithm ends with 21 as the greatest common divisor of 1071 and 462. This agrees with the gcd(1071, 462) found by prime factorization above. In tabular form, the steps are

+----------+----------+------------------------+
| Step _k_ | Equation | Quotient and remainder |
+==========+==========+========================+
| 0        |          | and                    |
+----------+----------+------------------------+
| 1        |          | and                    |
+----------+----------+------------------------+
| 2        |          | and ; algorithm ends   |
+----------+----------+------------------------+

Visualization

The Euclidean algorithm can be visualized in terms of the tiling analogy given above for the greatest common divisor.[18] Assume that we wish to cover an _a_-by-_b_ rectangle with square tiles exactly, where _a_ is the larger of the two numbers. We first attempt to tile the rectangle using _b_-by-_b_ square tiles; however, this leaves an _r_₀-by-_b_ residual rectangle untiled, where _r_₀ < _b_. We then attempt to tile the residual rectangle with _r_₀-by-_r_₀ square tiles. This leaves a second residual rectangle _r_₁-by-_r_₀, which we attempt to tile using _r_₁-by-_r_₁ square tiles, and so on. The sequence ends when there is no residual rectangle, i.e., when the square tiles cover the previous residual rectangle exactly. The length of the sides of the smallest square tile is the GCD of the dimensions of the original rectangle. For example, the smallest square tile in the adjacent figure is 21-by-21 (shown in red), and 21 is the GCD of 1071 and 462, the dimensions of the original rectangle (shown in green).

Euclidean division

At every step _k_, the Euclidean algorithm computes a quotient _q__(_k_) and remainder _r__(_k_) from two numbers _r__(_k_−1) and _r__(_k_−2)



where the magnitude of _r__(_k_) is strictly less than that of _r__(_k_−1). The theorem which underlies the definition of the Euclidean division ensures that such a quotient and remainder always exist and are unique.[19]

In Euclid's original version of the algorithm, the quotient and remainder are found by repeated subtraction; that is, _r__(_k_−1) is subtracted from _r__(_k_−2) repeatedly until the remainder _r__(_k_) is smaller than _r__(_k_−1). After that _r__(_k_) and _r__(_k_−1) are exchanged and the process is iterated. Euclidean division reduces all the steps between two exchanges into a single step, which is thus more efficient. Moreover, the quotients are not needed, thus one may replace Euclidean division by the modulo operation, which gives only the remainder. Thus the iteration of the Euclidean algorithm becomes simply



Implementations

Implementations of the algorithm may be expressed in pseudocode. For example, the division-based version may be programmed as[20]

function gcd(a, b)
    while b ≠ 0
       t := b; 
       b := a mod b; 
       a := t; 
    return a;

At the beginning of the _k_th iteration, the variable _b_ holds the latest remainder _r__(_k_−1), whereas the variable _a_ holds its predecessor, _r__(_k_−2). The step _b_ := _a_ mod _b_ is equivalent to the above recursion formula _r__(_k_) ≡ _r__(_k_−2) mod _r__(_k_−1). The temporary variable _t_ holds the value of _r__(_k_−1) while the next remainder _r__(_k_) is being calculated. At the end of the loop iteration, the variable _b_ holds the remainder _r__(_k_), whereas the variable _a_ holds its predecessor, _r__(_k_−1).

In the subtraction-based version which was Euclid's original version, the remainder calculation (_b_ = _a_ mod _b_) is replaced by repeated subtraction.[21] Contrary to the division-based version, which works with arbitrary integers as input, the subtraction-based version supposes that the input consists of positive integers and stops when _a_ = _b_:

function gcd(a, b)
    while a ≠ b 
        if a > b
           a := a − b; 
        else
           b := b − a; 
    return a;

The variables _a_ and _b_ alternate holding the previous remainders _r__(_k_−1) and _r__(_k_−2). Assume that _a_ is larger than _b_ at the beginning of an iteration; then _a_ equals _r__(_k_−2), since _r__(_k_−2) > _r__(_k_−1). During the loop iteration, _a_ is reduced by multiples of the previous remainder _b_ until _a_ is smaller than _b_. Then _a_ is the next remainder _r__(_k_). Then _b_ is reduced by multiples of _a_ until it is again smaller than _a_, giving the next remainder _r__(_k_+1), and so on.

The recursive version[22] is based on the equality of the GCDs of successive remainders and the stopping condition gcd(_r__(_N_−1), 0) = _r__(_N_−1).

function gcd(a, b)
    if b = 0
       return a; 
    else
       return gcd(b, a mod b);

For illustration, the gcd(1071, 462) is calculated from the equivalent gcd(462, 1071 mod 462) = gcd(462, 147). The latter GCD is calculated from the gcd(147, 462 mod 147) = gcd(147, 21), which in turn is calculated from the gcd(21, 147 mod 21) = gcd(21, 0) = 21.

Method of least absolute remainders

In another version of Euclid's algorithm, the quotient at each step is increased by one if the resulting negative remainder is smaller in magnitude than the typical positive remainder.[23][24] Previously, the equation



assumed that _r__(_k_−1){{!}} > _r__(_k_) > 0}}. However, an alternative negative remainder can be computed:



if or



if .

If is replaced by when _e__(_k_){{!}} < {{!}}_r__(_k_){{!}}}}, then one gets a variant of Euclidean algorithm such that

    _r__(_k_){{!}} ≤ {{!}}_r__(_k_−1){{!}} / 2 }}

at each step.

Leopold Kronecker has shown that this version requires the least number of steps of any version of Euclid's algorithm.[25][26] More generally, it has been proven that, for every input numbers _a_ and _b_, the number of steps is minimal if and only if is chosen in order that $\left |\frac{r_{k+1}}{r_k}\right |<\frac{1}{\varphi}\sim 0.618,$ where φ is the golden ratio.[27]


Historical development

, depicted here holding a compass in a painting of about 1474.]]

The Euclidean algorithm is one of the oldest algorithms in common use.[28] It appears in Euclid's _Elements_ (c. 300 BC), specifically in Book 7 (Propositions 1–2) and Book 10 (Propositions 2–3). In Book 7, the algorithm is formulated for integers, whereas in Book 10, it is formulated for lengths of line segments. (In modern usage, one would say it was formulated there for real numbers. But lengths, areas, and volumes, represented as real numbers in modern usage, are not measured in the same units and there is no natural unit of length, area, or volume; the concept of real numbers was unknown at that time.) The latter algorithm is geometrical. The GCD of two lengths _a_ and _b_ corresponds to the greatest length _g_ that measures _a_ and _b_ evenly; in other words, the lengths _a_ and _b_ are both integer multiples of the length _g_.

The algorithm was probably not discovered by Euclid, who compiled results from earlier mathematicians in his _Elements_.[29][30] The mathematician and historian B. L. van der Waerden suggests that Book VII derives from a textbook on number theory written by mathematicians in the school of Pythagoras.[31] The algorithm was probably known by Eudoxus of Cnidus (about 375 BC).[32][33] The algorithm may even pre-date Eudoxus,[34][35] judging from the use of the technical term ἀνθυφαίρεσις (_anthyphairesis_, reciprocal subtraction) in works by Euclid and Aristotle.[36]

Centuries later, Euclid's algorithm was discovered independently both in India and in China,[37] primarily to solve Diophantine equations that arose in astronomy and making accurate calendars. In the late 5th century, the Indian mathematician and astronomer Aryabhata described the algorithm as the "pulverizer",[38] perhaps because of its effectiveness in solving Diophantine equations.[39] Although a special case of the Chinese remainder theorem had already been described in the Chinese book _Sunzi Suanjing_,[40] the general solution was published by Qin Jiushao in his 1247 book _Shushu Jiuzhang_ (數書九章 _Mathematical Treatise in Nine Sections_).[41] The Euclidean algorithm was first described _numerically_ and popularized in Europe in the second edition of Bachet's _Problèmes plaisants et délectables_ (_Pleasant and enjoyable problems_, 1624).[42] In Europe, it was likewise used to solve Diophantine equations and in developing continued fractions. The extended Euclidean algorithm was published by the English mathematician Nicholas Saunderson,[43] who attributed it to Roger Cotes as a method for computing continued fractions efficiently.[44]

In the 19th century, the Euclidean algorithm led to the development of new number systems, such as Gaussian integers and Eisenstein integers. In 1815, Carl Gauss used the Euclidean algorithm to demonstrate unique factorization of Gaussian integers, although his work was first published in 1832.[45] Gauss mentioned the algorithm in his _Disquisitiones Arithmeticae_ (published 1801), but only as a method for continued fractions.[46] Peter Gustav Lejeune Dirichlet seems to have been the first to describe the Euclidean algorithm as the basis for much of number theory.[47] Lejeune Dirichlet noted that many results of number theory, such as unique factorization, would hold true for any other system of numbers to which the Euclidean algorithm could be applied.[48] Lejeune Dirichlet's lectures on number theory were edited and extended by Richard Dedekind, who used Euclid's algorithm to study algebraic integers, a new general type of number. For example, Dedekind was the first to prove Fermat's two-square theorem using the unique factorization of Gaussian integers.[49] Dedekind also defined the concept of a Euclidean domain, a number system in which a generalized version of the Euclidean algorithm can be defined (as described below). In the closing decades of the 19th century, the Euclidean algorithm gradually became eclipsed by Dedekind's more general theory of ideals.[50]

  ------------------------------------------------------------------------------------------------------------------------------------------------------
  "[The Euclidean algorithm] is the granddaddy of all algorithms, because it is the oldest nontrivial algorithm that has survived to the present day."
  Donald Knuth, _The Art of Computer Programming, Vol. 2: Seminumerical Algorithms_, 2nd edition (1981), p. 318.
  ------------------------------------------------------------------------------------------------------------------------------------------------------

Other applications of Euclid's algorithm were developed in the 19th century. In 1829, Charles Sturm showed that the algorithm was useful in the Sturm chain method for counting the real roots of polynomials in any given interval.[51]

The Euclidean algorithm was the first integer relation algorithm, which is a method for finding integer relations between commensurate real numbers. Several novel integer relation algorithms have been developed, such as the algorithm of Helaman Ferguson and R.W. Forcade (1979)[52] and the LLL algorithm.[53][54]

In 1969, Cole and Davie developed a two-player game based on the Euclidean algorithm, called _The Game of Euclid_,[55] which has an optimal strategy.[56] The players begin with two piles of _a_ and _b_ stones. The players take turns removing _m_ multiples of the smaller pile from the larger. Thus, if the two piles consist of _x_ and _y_ stones, where _x_ is larger than _y_, the next player can reduce the larger pile from _x_ stones to _x_ − _my_ stones, as long as the latter is a nonnegative integer. The winner is the first player to reduce one pile to zero stones.[57][58]


Mathematical applications

Bézout's identity

Bézout's identity states that the greatest common divisor _g_ of two integers _a_ and _b_ can be represented as a linear sum of the original two numbers _a_ and _b_.[59] In other words, it is always possible to find integers _s_ and _t_ such that _g_ = _sa_ + _tb_.[60][61]

The integers _s_ and _t_ can be calculated from the quotients _q_₀, _q_₁, etc. by reversing the order of equations in Euclid's algorithm.[62] Beginning with the next-to-last equation, _g_ can be expressed in terms of the quotient _q__(_N_−1) and the two preceding remainders, _r__(_N_−2) and _r__(_N_−3):



Those two remainders can be likewise expressed in terms of their quotients and preceding remainders,

    and



Substituting these formulae for _r__(_N_−2) and _r__(_N_−3) into the first equation yields _g_ as a linear sum of the remainders _r__(_N_−4) and _r__(_N_−5). The process of substituting remainders by formulae involving their predecessors can be continued until the original numbers _a_ and _b_ are reached:





After all the remainders _r_₀, _r_₁, etc. have been substituted, the final equation expresses _g_ as a linear sum of _a_ and _b_: _g_ = _sa_ + _tb_. Bézout's identity, and therefore the previous algorithm, can both be generalized to the context of Euclidean domains.

Principal ideals and related problems

Bézout's identity provides yet another definition of the greatest common divisor _g_ of two numbers _a_ and _b_.[63] Consider the set of all numbers _ua_ + _vb_, where _u_ and _v_ are any two integers. Since _a_ and _b_ are both divisible by _g_, every number in the set is divisible by _g_. In other words, every number of the set is an integer multiple of _g_. This is true for every common divisor of _a_ and _b_. However, unlike other common divisors, the greatest common divisor is a member of the set; by Bézout's identity, choosing _u_ = _s_ and _v_ = _t_ gives _g_. A smaller common divisor cannot be a member of the set, since every member of the set must be divisible by _g_. Conversely, any multiple _m_ of _g_ can be obtained by choosing _u_ = _ms_ and _v_ = _mt_, where _s_ and _t_ are the integers of Bézout's identity. This may be seen by multiplying Bézout's identity by _m_,



Therefore, the set of all numbers _ua_ + _vb_ is equivalent to the set of multiples _m_ of _g_. In other words, the set of all possible sums of integer multiples of two numbers (_a_ and _b_) is equivalent to the set of multiples of gcd(_a_, _b_). The GCD is said to be the generator of the ideal of _a_ and _b_. This GCD definition led to the modern abstract algebraic concepts of a principal ideal (an ideal generated by a single element) and a principal ideal domain (a domain in which every ideal is a principal ideal).

Certain problems can be solved using this result.[64] For example, consider two measuring cups of volume _a_ and _b_. By adding/subtracting _u_ multiples of the first cup and _v_ multiples of the second cup, any volume _ua_ + _vb_ can be measured out. These volumes are all multiples of _g_ = gcd(_a_, _b_).

Extended Euclidean algorithm

The integers _s_ and _t_ of Bézout's identity can be computed efficiently using the extended Euclidean algorithm. This extension adds two recursive equations to Euclid's algorithm[65]




with the starting values




Using this recursion, Bézout's integers _s_ and _t_ are given by _s_ = _s__(_N_) and _t_ = _t__(_N_), where _N+1_ is the step on which the algorithm terminates with _r__(_N+1_) = 0.

The validity of this approach can be shown by induction. Assume that the recursion formula is correct up to step _k_ − 1 of the algorithm; in other words, assume that



for all _j_ less than _k_. The _k_th step of the algorithm gives the equation



Since the recursion formula has been assumed to be correct for _r__(_k_−2) and _r__(_k_−1), they may be expressed in terms of the corresponding _s_ and _t_ variables



Rearranging this equation yields the recursion formula for step _k_, as required



Matrix method

The integers _s_ and _t_ can also be found using an equivalent matrix method.[66] The sequence of equations of Euclid's algorithm



\begin{align} a & = q_0 b + r_0 \\ b & = q_1 r_0 + r_1 \\ & \,\,\,\vdots \\ r_{N-2} & = q_N r_{N-1} + 0 \end{align}

can be written as a product of 2-by-2 quotient matrices multiplying a two-dimensional remainder vector

$$\begin{pmatrix} a \\ b \end{pmatrix} =
\begin{pmatrix} q_0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} b \\ r_0 \end{pmatrix} =
\begin{pmatrix} q_0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} q_1 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} r_0 \\ r_1 \end{pmatrix} =
\cdots =
\prod_{i=0}^N \begin{pmatrix} q_i & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} r_{N-1} \\ 0 \end{pmatrix} \,.$$

Let M represent the product of all the quotient matrices

$$\mathbf{M} = \begin{pmatrix} m_{11} & m_{12} \\ m_{21} & m_{22} \end{pmatrix} =
\prod_{i=0}^N \begin{pmatrix} q_i & 1 \\ 1 & 0 \end{pmatrix} =
\begin{pmatrix} q_0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} q_1 & 1 \\ 1 & 0 \end{pmatrix} \cdots \begin{pmatrix} q_{N} & 1 \\ 1 & 0 \end{pmatrix} \,.$$

This simplifies the Euclidean algorithm to the form

$$\begin{pmatrix} a \\ b \end{pmatrix} =
\mathbf{M} \begin{pmatrix} r_{N-1} \\ 0 \end{pmatrix} =
\mathbf{M} \begin{pmatrix} g \\ 0 \end{pmatrix} \,.$$

To express _g_ as a linear sum of _a_ and _b_, both sides of this equation can be multiplied by the inverse of the matrix M.[67][68] The determinant of M equals (−1)^(_N_+1), since it equals the product of the determinants of the quotient matrices, each of which is negative one. Since the determinant of M is never zero, the vector of the final remainders can be solved using the inverse of M

$$\begin{pmatrix} g \\ 0 \end{pmatrix} =
\mathbf{M}^{-1} \begin{pmatrix} a \\ b \end{pmatrix} =
(-1)^{N+1} \begin{pmatrix} m_{22} & -m_{12} \\ -m_{21} & m_{11} \end{pmatrix} \begin{pmatrix} a \\ b \end{pmatrix} \,.$$

Since the top equation gives



the two integers of Bézout's identity are _s_ = (−1)^(_N_+1)_m_₂₂ and _t_ = (−1)^(_N_)_m_₁₂. The matrix method is as efficient as the equivalent recursion, with two multiplications and two additions per step of the Euclidean algorithm.

Euclid's lemma and unique factorization

Bézout's identity is essential to many applications of Euclid's algorithm, such as demonstrating the unique factorization of numbers into prime factors.[69] To illustrate this, suppose that a number _L_ can be written as a product of two factors _u_ and _v_, that is, _L_ = _uv_. If another number _w_ also divides _L_ but is coprime with _u_, then _w_ must divide _v_, by the following argument: If the greatest common divisor of _u_ and _w_ is 1, then integers _s_ and _t_ can be found such that



by Bézout's identity. Multiplying both sides by _v_ gives the relation



Since _w_ divides both terms on the right-hand side, it must also divide the left-hand side, _v_. This result is known as Euclid's lemma.[70] Specifically, if a prime number divides _L_, then it must divide at least one factor of _L_. Conversely, if a number _w_ is coprime to each of a series of numbers _a_₁, _a_₂, ..., _a__(_n_), then _w_ is also coprime to their product, _a_₁ × _a_₂ × ... × _a__(_n_).[71]

Euclid's lemma suffices to prove that every number has a unique factorization into prime numbers.[72] To see this, assume the contrary, that there are two independent factorizations of _L_ into _m_ and _n_ prime factors, respectively



Since each prime _p_ divides _L_ by assumption, it must also divide one of the _q_ factors; since each _q_ is prime as well, it must be that _p_ = _q_. Iteratively dividing by the _p_ factors shows that each _p_ has an equal counterpart _q_; the two prime factorizations are identical except for their order. The unique factorization of numbers into primes has many applications in mathematical proofs, as shown below.

Linear Diophantine equations

, 9_x_ + 12_y_ = 483. The solutions are shown as blue circles.]]

Diophantine equations are equations in which the solutions are restricted to integers; they are named after the 3rd-century Alexandrian mathematician Diophantus.[73] A typical _linear_ Diophantine equation seeks integers _x_ and _y_ such that[74]



where _a_, _b_ and _c_ are given integers. This can be written as an equation for _x_ in modular arithmetic:



Let _g_ be the greatest common divisor of _a_ and _b_. Both terms in _ax_ + _by_ are divisible by _g_; therefore, _c_ must also be divisible by _g_, or the equation has no solutions. By dividing both sides by _c_/_g_, the equation can be reduced to Bezout's identity



where _s_ and _t_ can be found by the extended Euclidean algorithm.[75] This provides one solution to the Diophantine equation, _x_₁ = _s_ (_c_/_g_) and _y_₁ = _t_ (_c_/_g_).

In general, a linear Diophantine equation has no solutions, or an infinite number of solutions.[76] To find the latter, consider two solutions, (_x_₁, _y_₁) and (_x_₂, _y_₂), where



or equivalently



Therefore, the smallest difference between two _x_ solutions is _b_/_g_, whereas the smallest difference between two _y_ solutions is _a_/_g_. Thus, the solutions may be expressed as


    .

By allowing _u_ to vary over all possible integers, an infinite family of solutions can be generated from a single solution (_x_₁, _y_₁). If the solutions are required to be _positive_ integers (_x_ > 0, _y_ > 0), only a finite number of solutions may be possible. This restriction on the acceptable solutions allows some systems of Diophantine equations with more unknowns than equations to have a finite number of solutions;[77] this is impossible for a system of linear equations when the solutions can be any real number (see Underdetermined system).

Multiplicative inverses and the RSA algorithm

A finite field is a set of numbers with four generalized operations. The operations are called addition, subtraction, multiplication and division and have their usual properties, such as commutativity, associativity and distributivity. An example of a finite field is the set of 13 numbers {0, 1, 2, ..., 12} using modular arithmetic. In this field, the results of any mathematical operation (addition, subtraction, multiplication, or division) is reduced modulo 13; that is, multiples of 13 are added or subtracted until the result is brought within the range 0–12. For example, the result of 5 × 7 = 35 mod 13 = 9. Such finite fields can be defined for any prime _p_; using more sophisticated definitions, they can also be defined for any power _m_ of a prime _p_^( _m_). Finite fields are often called Galois fields, and are abbreviated as GF(_p_) or GF(_p_^( _m_)).

In such a field with _m_ numbers, every nonzero element _a_ has a unique modular multiplicative inverse, _a_^(−1) such that This inverse can be found by solving the congruence equation _ax_ ≡ 1 mod _m_,[78] or the equivalent linear Diophantine equation[79]



This equation can be solved by the Euclidean algorithm, as described above. Finding multiplicative inverses is an essential step in the RSA algorithm, which is widely used in electronic commerce; specifically, the equation determines the integer used to decrypt the message.[80] Note that although the RSA algorithm uses rings rather than fields, the Euclidean algorithm can still be used to find a multiplicative inverse where one exists. The Euclidean algorithm also has other applications in error-correcting codes; for example, it can be used as an alternative to the Berlekamp–Massey algorithm for decoding BCH and Reed–Solomon codes, which are based on Galois fields.[81]

Chinese remainder theorem

Euclid's algorithm can also be used to solve multiple linear Diophantine equations.[82] Such equations arise in the Chinese remainder theorem, which describes a novel method to represent an integer _x_. Instead of representing an integer by its digits, it may be represented by its remainders _x__(_i_) modulo a set of _N_ coprime numbers _m__(_i_):[83]



\begin{align} x_1 & \equiv x \pmod {m_1} \\ x_2 & \equiv x \pmod {m_2} \\ & \,\,\,\vdots \\ x_N & \equiv x \pmod {m_N} \,. \end{align}

The goal is to determine _x_ from its _N_ remainders _x__(_i_). The solution is to combine the multiple equations into a single linear Diophantine equation with a much larger modulus _M_ that is the product of all the individual moduli _m__(_i_), and define _M__(_i_) as

    $M_i = \frac M {m_i}.$

Thus, each _M__(_i_) is the product of all the moduli _except_ _m__(_i_). The solution depends on finding _N_ new numbers _h__(_i_) such that

    $M_i h_i \equiv 1 \pmod {m_i} \,.$

With these numbers _h__(_i_), any integer _x_ can be reconstructed from its remainders _x__(_i_) by the equation

    $x \equiv (x_1 M_1 h_1 + x_2 M_2 h_2 + \cdots + x_N M_N h_N) \pmod M \,.$

Since these numbers _h__(_i_) are the multiplicative inverses of the _M__(_i_), they may be found using Euclid's algorithm as described in the previous subsection.

Stern–Brocot tree

The Euclidean algorithm can be used to arrange the set of all positive rational numbers into an infinite binary search tree, called the Stern–Brocot tree. The number 1 (expressed as a fraction 1/1) is placed at the root of the tree, and the location of any other number _a_/_b_ can be found by computing gcd(_a_,_b_) using the original form of the Euclidean algorithm, in which each step replaces the larger of the two given numbers by its difference with the smaller number (not its remainder), stopping when two equal numbers are reached. A step of the Euclidean algorithm that replaces the first of the two numbers corresponds to a step in the tree from a node to its right child, and a step that replaces the second of the two numbers corresponds to a step in the tree from a node to its left child. The sequence of steps constructed in this way does not depend on whether _a_/_b_ is given in lowest terms, and forms a path from the root to a node containing the number _a_/_b_.[84] This fact can be used to prove that each positive rational number appears exactly once in this tree.

For example, 3/4 can be found by starting at the root, going to the left once, then to the right twice:

$$\begin{align}
 & \gcd(3,4) & \leftarrow \\
= {} & \gcd(3,1) & \rightarrow \\
= {} & \gcd(2,1) & \rightarrow \\
= {} & \gcd(1,1).
\end{align}$$

The Euclidean algorithm has almost the same relationship to another binary tree on the rational numbers called the Calkin–Wilf tree. The difference is that the path is reversed: instead of producing a path from the root of the tree to a target, it produces a path from the target to the root.

Continued fractions

The Euclidean algorithm has a close relationship with continued fractions.[85] The sequence of equations can be written in the form

$$\begin{align}
\frac a b &= q_0 + \frac{r_0} b \\
\frac b {r_0} &= q_1 + \frac{r_1}{r_0} \\
\frac{r_0}{r_1} &= q_2 + \frac{r_2}{r_1} \\
& \,\,\, \vdots \\
\frac{r_{k-2}}{r_{k-1}} &= q_k + \frac{r_k}{r_{k-1}} \\
& \,\,\,  \vdots \\
\frac{r_{N-2}}{r_{N-1}} &= q_N\,.
\end{align}$$

The last term on the right-hand side always equals the inverse of the left-hand side of the next equation. Thus, the first two equations may be combined to form

$$\frac a b = q_0 + \cfrac 1 {q_1 + \cfrac{r_1}{r_0}} \,.$$

The third equation may be used to substitute the denominator term _r_₁/_r_₀, yielding

$$\frac a b = q_0 + \cfrac 1 {q_1 + \cfrac 1 {q_2 + \cfrac{r_2}{r_1}}}\,.$$

The final ratio of remainders _r__(_k_)/_r__(_k_−1) can always be replaced using the next equation in the series, up to the final equation. The result is a continued fraction

$$\frac a b = q_0 + \cfrac 1 {q_1 + \cfrac 1 {q_2 + \cfrac{1}{\ddots + \cfrac 1 {q_N}}}} = [ q_0; q_1, q_2, \ldots , q_N ] \,.$$

In the worked example above, the gcd(1071, 462) was calculated, and the quotients _q__(_k_) were 2, 3 and 7, respectively. Therefore, the fraction 1071/462 may be written

$$\frac{1071}{462} = 2 + \cfrac 1 {3 + \cfrac 1 7} = [2; 3, 7]$$

as can be confirmed by calculation.

Factorization algorithms

Calculating a greatest common divisor is an essential step in several integer factorization algorithms,[86] such as Pollard's rho algorithm,[87] Shor's algorithm,[88] Dixon's factorization method[89] and the Lenstra elliptic curve factorization.[90] The Euclidean algorithm may be used to find this GCD efficiently. Continued fraction factorization uses continued fractions, which are determined using Euclid's algorithm.[91]


Algorithmic efficiency

.]]

The computational efficiency of Euclid's algorithm has been studied thoroughly.[92] This efficiency can be described by the number of division steps the algorithm requires, multiplied by the computational expense of each step. The first known analysis of Euclid's algorithm is due to A. A. L. Reynaud in 1811,[93] who showed that the number of division steps on input (_u_, _v_) is bounded by _v_; later he improved this to _v_/2  + 2. Later, in 1841, P. J. E. Finck showed[94] that the number of division steps is at most 2 log₂ _v_ + 1, and hence Euclid's algorithm runs in time polynomial in the size of the input.[95] Émile Léger, in 1837, studied the worst case, which is when the inputs are consecutive Fibonacci numbers.[96] Finck's analysis was refined by Gabriel Lamé in 1844,[97] who showed that the number of steps required for completion is never more than five times the number _h_ of base-10 digits of the smaller number _b_.[98][99]

In the uniform cost model (suitable for analyzing the complexity of gcd calculation on numbers that fit into a single machine word), each step of the algorithm takes constant time, and Lamé's analysis implies that the total running time is also _O_(_h_). However, in a model of computation suitable for computation with larger numbers, the computational expense of a single remainder computation in the algorithm can be as large as _O_(_h_²).[100] In this case the total time for all of the steps of the algorithm can be analyzed using a telescoping series, showing that it is also _O_(_h_²). Modern algorithmic techniques based on the Schönhage–Strassen algorithm for fast integer multiplication can be used to speed this up, leading to quasilinear algorithms for the GCD.[101][102]

Number of steps

The number of steps to calculate the GCD of two natural numbers, _a_ and _b_, may be denoted by _T_(_a_, _b_).[103] If _g_ is the GCD of _a_ and _b_, then _a_ = _mg_ and _b_ = _ng_ for two coprime numbers _m_ and _n_. Then



as may be seen by dividing all the steps in the Euclidean algorithm by _g_.[104] By the same argument, the number of steps remains the same if _a_ and _b_ are multiplied by a common factor _w_: _T_(_a_, _b_) = _T_(_wa_, _wb_). Therefore, the number of steps _T_ may vary dramatically between neighboring pairs of numbers, such as T(_a_, _b_) and T(_a_, _b_ + 1), depending on the size of the two GCDs.

The recursive nature of the Euclidean algorithm gives another equation



where _T_(_x_, 0) = 0 by assumption.[105]

Worst-case

If the Euclidean algorithm requires _N_ steps for a pair of natural numbers _a_ > _b_ > 0, the smallest values of _a_ and _b_ for which this is true are the Fibonacci numbers _F__(_N_+2) and _F__(_N_+1), respectively.[106] More precisely, if the Euclidean algorithm requires _N_ steps for the pair _a_ > _b_, then one has _a_ ≥ _F__(_N_+2) and _b_ ≥ _F__(_N_+1). This can be shown by induction.[107] If _N_ = 1, _b_ divides _a_ with no remainder; the smallest natural numbers for which this is true is _b_ = 1 and _a_ = 2, which are _F_₂ and _F_₃, respectively. Now assume that the result holds for all values of _N_ up to _M_ − 1. The first step of the _M_-step algorithm is _a_ = _q_₀_b_ + _r_₀, and the Euclidean algorithm requires _M_ − 1 steps for the pair _b_ > _r_₀. By induction hypothesis, one has _b_ ≥ _F__(_M_+1) and _r_₀ ≥ _F__(_M_). Therefore, _a_ = _q_₀_b_ + _r_₀ ≥ _b_ + _r_₀ ≥ _F__(_M_+1) + _F__(_M_) = _F__(_M_+2), which is the desired inequality. This proof, published by Gabriel Lamé in 1844, represents the beginning of computational complexity theory,[108] and also the first practical application of the Fibonacci numbers.[109]

This result suffices to show that the number of steps in Euclid's algorithm can never be more than five times the number of its digits (base 10).[110] For if the algorithm requires _N_ steps, then _b_ is greater than or equal to _F__(_N_+1) which in turn is greater than or equal to _φ_^(_N_−1), where _φ_ is the golden ratio. Since _b_ ≥ _φ_^(_N_−1), then _N_ − 1 ≤ log_(_φ_)_b_. Since log₁₀_φ_ > 1/5, (_N_ − 1)/5 < log₁₀_φ_ log_(_φ_)_b_ = log₁₀_b_. Thus, _N_ ≤ 5 log₁₀_b_. Thus, the Euclidean algorithm always needs less than _O_(_h_) divisions, where _h_ is the number of digits in the smaller number _b_.

Average

The average number of steps taken by the Euclidean algorithm has been defined in three different ways. The first definition is the average time _T_(_a_) required to calculate the GCD of a given number _a_ and a smaller natural number _b_ chosen with equal probability from the integers 0 to _a_ − 1[111]

$$T(a) = \frac 1 a \sum_{0 \leq b<a} T(a, b).$$

However, since _T_(_a_, _b_) fluctuates dramatically with the GCD of the two numbers, the averaged function _T_(_a_) is likewise "noisy".[112]

To reduce this noise, a second average _τ_(_a_) is taken over all numbers coprime with _a_

$$\tau(a) = \frac 1 {\varphi(a)} \sum_{\begin{smallmatrix} 0 \leq b<a \\  \gcd(a, b) = 1 \end{smallmatrix}} T(a, b).$$

There are _φ_(_a_) coprime integers less than _a_, where _φ_ is Euler's totient function. This tau average grows smoothly with _a_[113][114]

$$\tau(a) = \frac{12}{\pi^2}\ln 2 \ln a + C + O(a^{-1/6-\varepsilon})$$

with the residual error being of order _a_^(−(1/6)\ +\ _ε_), where _ε_ is infinitesimal. The constant _C_ (_Porter's Constant_[115]) in this formula equals

$$C= -\frac 1 2 + \frac{6 \ln 2}{\pi^2}\left(4\gamma -\frac{24}{\pi^2}\zeta'(2) + 3\ln 2 - 2\right) \approx 1.467$$

where _γ_ is the Euler–Mascheroni constant and ζ' is the derivative of the Riemann zeta function.[116][117] The leading coefficient (12/π²) ln 2 was determined by two independent methods.[118][119]

Since the first average can be calculated from the tau average by summing over the divisors _d_ of _a_[120]

$$T(a) = \frac 1 a \sum_{d \mid a} \varphi(d) \tau(d)$$

it can be approximated by the formula[121]

$$T(a) \approx C + \frac{12}{\pi^2} \ln 2 \left(\ln a - \sum_{d \mid a} \frac{\Lambda(d)} d\right)$$

where Λ(_d_) is the Mangoldt function.[122]

A third average _Y_(_n_) is defined as the mean number of steps required when both _a_ and _b_ are chosen randomly (with uniform distribution) from 1 to _n_[123]

$$Y(n) = \frac 1 {n^2} \sum_{a=1}^n \sum_{b=1}^n T(a, b) = \frac 1 n \sum_{a=1}^n T(a).$$

Substituting the approximate formula for _T_(_a_) into this equation yields an estimate for _Y_(_n_)[124]

    $Y(n) \approx \frac{12}{\pi^2} \ln 2 \ln n + 0.06.$

Computational expense per step

In each step _k_ of the Euclidean algorithm, the quotient _q__(_k_) and remainder _r__(_k_) are computed for a given pair of integers _r__(_k_−2) and _r__(_k_−1)



The computational expense per step is associated chiefly with finding _q__(_k_), since the remainder _r__(_k_) can be calculated quickly from _r__(_k_−2), _r__(_k_−1), and _q__(_k_)



The computational expense of dividing _h_-bit numbers scales as _O_(_h_(_ℓ_+1)), where _ℓ_ is the length of the quotient.[125]

For comparison, Euclid's original subtraction-based algorithm can be much slower. A single integer division is equivalent to the quotient _q_ number of subtractions. If the ratio of _a_ and _b_ is very large, the quotient is large and many subtractions will be required. On the other hand, it has been shown that the quotients are very likely to be small integers. The probability of a given quotient _q_ is approximately ln|_u_/(_u_ − 1)| where _u_ = (_q_ + 1)².[126] For illustration, the probability of a quotient of 1, 2, 3, or 4 is roughly 41.5%, 17.0%, 9.3%, and 5.9%, respectively. Since the operation of subtraction is faster than division, particularly for large numbers,[127] the subtraction-based Euclid's algorithm is competitive with the division-based version.[128] This is exploited in the binary version of Euclid's algorithm.[129]

Combining the estimated number of steps with the estimated computational expense per step shows that the Euclid's algorithm grows quadratically (_h_²) with the average number of digits _h_ in the initial two numbers _a_ and _b_. Let _h_₀, _h_₁, ..., _h__(_N_−1) represent the number of digits in the successive remainders _r_₀, _r_₁, ..., _r__(_N_−1). Since the number of steps _N_ grows linearly with _h_, the running time is bounded by

_O_(∑_(_i_ < _N_)_h__(_i_)(_h__(_i_) − _h__(_i_ + 1) + 2)) ⊆ _O_(_h_∑_(_i_ < _N_)(_h__(_i_) − _h__(_i_ + 1) + 2)) ⊆ _O_(_h_(_h_₀ + 2_N_)) ⊆ _O_(_h_²).

Alternative methods

Euclid's algorithm is widely used in practice, especially for small numbers, due to its simplicity.[130] For comparison, the efficiency of alternatives to Euclid's algorithm may be determined.

One inefficient approach to finding the GCD of two natural numbers _a_ and _b_ is to calculate all their common divisors; the GCD is then the largest common divisor. The common divisors can be found by dividing both numbers by successive integers from 2 to the smaller number _b_. The number of steps of this approach grows linearly with _b_, or exponentially in the number of digits. Another inefficient approach is to find the prime factors of one or both numbers. As noted above, the GCD equals the product of the prime factors shared by the two numbers _a_ and _b_.[131] Present methods for prime factorization are also inefficient; many modern cryptography systems even rely on that inefficiency.[132]

The binary GCD algorithm is an efficient alternative that substitutes division with faster operations by exploiting the binary representation used by computers.[133][134] However, this alternative also scales like _O_(_h_²). It is generally faster than the Euclidean algorithm on real computers, even though it scales in the same way.[135] Additional efficiency can be gleaned by examining only the leading digits of the two numbers _a_ and _b_.[136][137] The binary algorithm can be extended to other bases (_k_-ary algorithms),[138] with up to fivefold increases in speed.[139] Lehmer's GCD algorithm uses the same general principle as the binary algorithm to speed up GCD computations in arbitrary bases.

A recursive approach for very large integers (with more than 25,000 digits) leads to quasilinear integer GCD algorithms,[140] such as those of Schönhage,[141][142] and Stehlé and Zimmermann.[143] These algorithms exploit the 2×2 matrix form of the Euclidean algorithm given above. These quasilinear methods generally scale as [144][145]


Generalizations

Although the Euclidean algorithm is used to find the greatest common divisor of two natural numbers (positive integers), it may be generalized to the real numbers, and to other mathematical objects, such as polynomials,[146] quadratic integers[147] and Hurwitz quaternions.[148] In the latter cases, the Euclidean algorithm is used to demonstrate the crucial property of unique factorization, i.e., that such numbers can be factored uniquely into irreducible elements, the counterparts of prime numbers. Unique factorization is essential to many proofs of number theory.

Rational and real numbers

Euclid's algorithm can be applied to real numbers, as described by Euclid in Book 10 of his _Elements_. The goal of the algorithm is to identify a real number such that two given real numbers, and , are integer multiples of it: and , where and are integers.[149] This identification is equivalent to finding an integer relation among the real numbers and ; that is, it determines integers and such that . Euclid uses this algorithm to treat the question of incommensurable lengths.[150][151]

The real-number Euclidean algorithm differs from its integer counterpart in two respects. First, the remainders are real numbers, although the quotients are integers as before. Second, the algorithm is not guaranteed to end in a finite number of steps. If it does, the fraction is a rational number, i.e., the ratio of two integers

$$\frac{a}{b} = \frac{mg}{ng} = \frac{m}{n},$$

and can be written as a finite continued fraction . If the algorithm does not stop, the fraction is an irrational number and can be described by an infinite continued fraction .[152] Examples of infinite continued fractions are the golden ratio and the square root of two, .[153] The algorithm is unlikely to stop, since almost all ratios of two real numbers are irrational.[154]

An infinite continued fraction may be truncated at a step to yield an approximation to that improves as is increased. The approximation is described by convergents ; the numerator and denominators are coprime and obey the recurrence relation

$$\begin{align}
   m_k &= q_k m_{k-1} + m_{k-2} \\
   n_k &= q_k n_{k-1} + n_{k-2},
 \end{align}$$

where and are the initial values of the recursion. The convergent is the best rational number approximation to with denominator :[155]

$$\left|\frac{a}{b} - \frac{m_k}{n_k}\right| < \frac{1}{n_k^2}.$$

Polynomials

Polynomials in a single variable _x_ can be added, multiplied and factored into irreducible polynomials, which are the analogs of the prime numbers for integers. The greatest common divisor polynomial of two polynomials and is defined as the product of their shared irreducible polynomials, which can be identified using the Euclidean algorithm.[156] The basic procedure is similar to that for integers. At each step , a quotient polynomial and a remainder polynomial are identified to satisfy the recursive equation

_r__(_k_ − 2)(_x_) = _q__(_k_)(_x_)_r__(_k_ − 1)(_x_) + _r__(_k_)(_x_),

where and . The quotient polynomial is chosen so that the leading term of equals the leading term of ; this ensures that the degree of each remainder is smaller than the degree of its predecessor: . Since the degree is a nonnegative integer, and since it decreases with every step, the Euclidean algorithm concludes in a finite number of steps. The final nonzero remainder is the greatest common divisor of the original two polynomials, and .[157]

For example, consider the following two quartic polynomials, which each factor into two quadratic polynomials

$$\begin{align}
   a(x) &= x^4 - 4x^3 + 4x^2 - 3x + 14 = (x^2 - 5x + 7)(x^2 + x + 2) \qquad \text{and}\\
   b(x) &= x^4 + 8x^3 + 12x^2 + 17x + 6 = (x^2 + 7x + 3)(x^2 + x + 2).
 \end{align}$$

Dividing by yields a remainder . In the next step, is divided by yielding a remainder . Finally, dividing by yields a zero remainder, indicating that is the greatest common divisor polynomial of and , consistent with their factorization.

Many of the applications described above for integers carry over to polynomials.[158] The Euclidean algorithm can be used to solve linear Diophantine equations and Chinese remainder problems for polynomials; continued fractions of polynomials can also be defined.

The polynomial Euclidean algorithm has other applications, such as Sturm chains, a method for counting the zeros of a polynomial that lie inside a given real interval.[159] This in turn has applications in several areas, such as the Routh–Hurwitz stability criterion in control theory.[160]

Finally, the coefficients of the polynomials need not be drawn from integers, real numbers or even the complex numbers. For example, the coefficients may be drawn from a general field, such as the finite fields described above. The corresponding conclusions about the Euclidean algorithm and its applications hold even for such polynomials.[161]

Gaussian integers

The Gaussian integers are complex numbers of the form , where and are ordinary integers[162] and is the square root of negative one.[163] By defining an analog of the Euclidean algorithm, Gaussian integers can be shown to be uniquely factorizable, by the argument above.[164] This unique factorization is helpful in many applications, such as deriving all Pythagorean triples or proving Fermat's theorem on sums of two squares.[165] In general, the Euclidean algorithm is convenient in such applications, but not essential; for example, the theorems can often be proven by other arguments.

The Euclidean algorithm developed for two Gaussian integers and is nearly the same as that for ordinary integers,[166] but differs in two respects. As before, the task at each step is to identify a quotient and a remainder such that

_r__(_k_) = _r__(_k_ − 2) − _q__(_k_)_r__(_k_ − 1),

where , where , and where every remainder is strictly smaller than its predecessor: . The first difference is that the quotients and remainders are themselves Gaussian integers, and thus are complex numbers. The quotients are generally found by rounding the real and complex parts of the exact ratio (such as the complex number ) to the nearest integers.[167] The second difference lies in the necessity of defining how one complex remainder can be "smaller" than another. To do this, a norm function is defined, which converts every Gaussian integer into an ordinary integer. After each step of the Euclidean algorithm, the norm of the remainder is smaller than the norm of the preceding remainder, . Since the norm is a nonnegative integer and decreases with every step, the Euclidean algorithm for Gaussian integers ends in a finite number of steps.[168] The final nonzero remainder is , the Gaussian integer of largest norm that divides both and ; it is unique up to multiplication by a unit, or .[169]

Many of the other applications of the Euclidean algorithm carry over to Gaussian integers. For example, it can be used to solve linear Diophantine equations and Chinese remainder problems for Gaussian integers;[170] continued fractions of Gaussian integers can also be defined.[171]

Euclidean domains

A set of elements under two binary operations, denoted as addition and multiplication, is called a Euclidean domain if it forms a commutative ring and, roughly speaking, if a generalized Euclidean algorithm can be performed on them.[172][173] The two operations of such a ring need not be the addition and multiplication of ordinary arithmetic; rather, they can be more general, such as the operations of a mathematical group or monoid. Nevertheless, these general operations should respect many of the laws governing ordinary arithmetic, such as commutativity, associativity and distributivity.

The generalized Euclidean algorithm requires a _Euclidean function_, i.e., a mapping from into the set of nonnegative integers such that, for any two nonzero elements and in , there exist and in such that and .[174] An example of this mapping is the norm function used to order the Gaussian integers above.[175] The function can be the magnitude of the number or the degree of a polynomial.[176] The basic principle is that each step of the algorithm reduces _f_ inexorably; hence, if can be reduced only a finite number of times, the algorithm must stop in a finite number of steps. This principle relies on the natural well-ordering of the non-negative integers;[177] roughly speaking, this requires that every non-empty set of non-negative integers has a smallest member.

The fundamental theorem of arithmetic applies to any Euclidean domain: Any number from a Euclidean domain can be factored uniquely into irreducible elements. Any Euclidean domain is a unique factorization domain (UFD), although the converse is not true.[178] The Euclidean domains and the UFD's are subclasses of the GCD domains, domains in which a greatest common divisor of two numbers always exists.[179] In other words, a greatest common divisor may exist (for all pairs of elements in a domain), although it may not be possible to find it using a Euclidean algorithm. A Euclidean domain is always a principal ideal domain (PID), an integral domain in which every ideal is a principal ideal.[180] Again, the converse is not true: not every PID is a Euclidean domain.

The unique factorization of Euclidean domains is useful in many applications. For example, the unique factorization of the Gaussian integers is convenient in deriving formulae for all Pythagorean triples and in proving Fermat's theorem on sums of two squares.[181] Unique factorization was also a key element in an attempted proof of Fermat's Last Theorem published in 1847 by Gabriel Lamé, the same mathematician who analyzed the efficiency of Euclid's algorithm, based on a suggestion of Joseph Liouville.[182] Lamé's approach required the unique factorization of numbers of the form , where and are integers, and {2} .

If the function corresponds to a norm function, such as that used to order the Gaussian integers above, then the domain is known as _norm-Euclidean_. The norm-Euclidean rings of quadratic integers are exactly those where is one of the values −11, −7, −3, −2, −1, 2, 3, 5, 6, 7, 11, 13, 17, 19, 21, 29, 33, 37, 41, 57, or 73.[183][184] The cases and yield the Gaussian integers and Eisenstein integers, respectively.

If is allowed to be any Euclidean function, then the list of possible values of for which the domain is Euclidean is not yet known.[185] The first example of a Euclidean domain that was not norm-Euclidean (with ) was published in 1994.[186] In 1973, Weinberger proved that a quadratic integer ring with is Euclidean if, and only if, it is a principal ideal domain, provided that the generalized Riemann hypothesis holds.[187]

Noncommutative rings

The Euclidean algorithm may be applied to some noncommutative rings such as the set of Hurwitz quaternions.[188] Let and represent two elements from such a ring. They have a common right divisor if and for some choice of and in the ring. Similarly, they have a common left divisor if and for some choice of and in the ring. Since multiplication is not commutative, there are two versions of the Euclidean algorithm, one for right divisors and one for left divisors.[189] Choosing the right divisors, the first step in finding the by the Euclidean algorithm can be written

_ρ_₀ = _α_ − _ψ_₀_β_ = (_ξ_ − _ψ_₀_η_)_δ_,

where represents the quotient and the remainder. This equation shows that any common right divisor of and is likewise a common divisor of the remainder . The analogous equation for the left divisors would be

_ρ_₀ = _α_ − _β__ψ_₀ = _δ_(_ξ_ − _η__ψ_₀).

With either choice, the process is repeated as above until the greatest common right or left divisor is identified. As in the Euclidean domain, the "size" of the remainder must be strictly smaller than , and there must be only a finite number of possible sizes for , so that the algorithm is guaranteed to terminate.[190]

Most of the results for the GCD carry over to noncommutative numbers. For example, Bézout's identity states that the right can be expressed as a linear combination of and .[191] In other words, there are numbers and such that

_Γ__(right) = _σ__α_ + _τ__β_.

The analogous identity for the left GCD is nearly the same:

_Γ__(left) = _α__σ_ + _β__τ_.

Bézout's identity can be used to solve Diophantine equations. For instance, one of the standard proofs of Lagrange's four-square theorem, that every positive integer can be represented as a sum of four squares, is based on quaternion GCDs in this way.[192]


See also

-   Euclidean rhythm, a method for using the Euclidean algorithm to generate musical rhythms


Notes


References


Bibliography

-   -   -   -   -   . See also Vorlesungen über Zahlentheorie

-   -   -   -   -   -   -   -   -   -


External links

-   Demonstrations of Euclid's algorithm
-   -   Euclid's Algorithm at cut-the-knot
-   -   The Euclidean Algorithm at MathPages
-   Euclid's Game at cut-the-knot
-   Music and Euclid's algorithm

Category:Number theoretic algorithms Category:Articles with example pseudocode Category:Articles containing proofs Algorithm

[1] Some widely used textbooks, such as I. N. Herstein's _Topics in Algebra_ and Serge Lang's _Algebra_, use the term "Euclidean algorithm" to refer to Euclidean division

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

[24]

[25]

[26]

[27]

[28] , p. 318

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

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49] Richard Dedekind in

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

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

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86] , pp. 225–349

[87] , pp. 369–371

[88]

[89]

[90]

[91] , pp. 380–384

[92] , pp. 339–364

[93]  As cited by .

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103] , p. 344

[104]

[105]

[106] , p. 343

[107]

[108]

[109]

[110]

[111]

[112] , p. 353

[113] , p. 357

[114]

[115]

[116]

[117]

[118]

[119]

[120] , p. 354

[121]

[122] , p. 355

[123]

[124] , p. 356

[125] , pp. 257–261

[126] , p. 352

[127]

[128]

[129]

[130]

[131]

[132]

[133] , pp. 321–323

[134]

[135] , pp. 77–79, 81–85, 425–431

[136] , p. 328

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161]

[162] The phrase "ordinary integer" is commonly used for distinguishing usual integers from Gaussian integers, and more generally from algebraic integers.

[163]

[164]  Reprinted in and

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175] , p. 132

[176] , p. 161

[177]

[178]

[179] , p. 52

[180] , p. 131

[181]

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191]

[192]