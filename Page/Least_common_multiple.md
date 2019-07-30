showing the least common multiples of combinations of 2, 3, 4, 5 and 7 (6 is skipped as it is 2 × 3, both of which are already represented).
For example, a card game which requires its cards to be divided equally among up to 5 players requires at least 60 cards, the number at the intersection of the 2, 3, 4, and 5 sets, but not the 7 set.]]

In arithmetic and number theory, the LEAST COMMON MULTIPLE, LOWEST COMMON MULTIPLE, or SMALLEST COMMON MULTIPLE of two integers _a_ and _b_, usually denoted by LCM(_A_, _B_), is the smallest positive integer that is divisible by both _a_ and _b_.[1] Since division of integers by zero is undefined, this definition has meaning only if _a_ and _b_ are both different from zero.[2] However, some authors define LCM (_a_,0) as 0 for all _a_, which is the result of taking the LCM to be the least upper bound in the lattice of divisibility.

The LCM is the "lowest common denominator" (LCD) that can be used before fractions can be added, subtracted or compared. The LCM of more than two integers is also well-defined: it is the smallest positive integer that is divisible by each of them.


Overview

A multiple of a number is the product of that number and an integer. For example, 10 is a multiple of 5 because 5 × 2 = 10, so 10 is divisible by 5 and 2. Because 10 is the smallest positive integer that is divisible by both 5 and 2, it is the least common multiple of 5 and 2. By the same principle, 10 is the least common multiple of −5 and −2 as well.

Notation

In this article we will denote the least common multiple of two integers _a_ and _b_ as lcm(_a_, _b_).

Some older textbooks use [_a_, _b_].[3][4]

The programming language J uses a*.b

Example

What is the LCM of 4 and 6?

Multiples of 4 are:

    4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, ...

and the multiples of 6 are:

    6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, ...

_Common multiples_ of 4 and 6 are simply the numbers that are in both lists:

    12, 24, 36, 48, 60, 72, ....

So, from this list of the first few common multiples of the numbers 4 and 6, their _least common multiple_ is 12.


Applications

When adding, subtracting, or comparing vulgar fractions, it is useful to find the least common multiple of the denominators, often called the lowest common denominator, because each of the fractions can be expressed as a fraction with this denominator. For instance,

$${2\over21}+{1\over6}={4\over42}+{7\over42}={11\over42}$$

where the denominator 42 was used because it is the least common multiple of 21 and 6.

Gears problem

Suppose there are two meshing gears in a machine, having _m_ and _n_ teeth, respectively, and the gears are marked by a line segment drawn from the center of the first gear to the center of the second gear. When the gears begin rotating, we can determine how many rotations the first gear must complete to realign the line segment by making use of LCM(_m_, _n_). The first gear must complete LCM(_m_, _n_)/_m_ rotations for the realignment. By that time, the second gear will have made LCM(_m_, _n_)/_n_ rotations.

Planetary alignment

Suppose there are three planets revolving around a star which take _l_, _m_ and _n_ units of time respectively to complete their orbits. Assume that _l_, _m_ and _n_ are integers. Assuming the planets started moving around the star after an initial linear alignment, all the planets attain a linear alignment again after LCM(_l_, _m_, _n_) units of time. At this time, the first, second and third planet will have completed LCM(_l_, _m_, _n_)/_l_, LCM(_l_, _m_, _n_)/_m_ and LCM(_l_, _m_, _n_)/_n_ orbits respectively around the star.[5]


Calculation

Using the greatest common divisor

The following formula reduces the problem of computing the least common multiple to the problem of computing the greatest common divisor (GCD), also known as the greatest common factor:

$$\operatorname{lcm}(a,b)=\frac{|a\cdot b|}{\gcd(a,b)}.$$

This formula is also valid when exactly one of _a_ and _b_ is 0, since gcd(_a_, 0) = |_a_|. However, if both _a_ and _b_ are 0, this formula would cause division by zero; lcm(0, 0) = 0 is a special case.

There are fast algorithms for computing the GCD that do not require the numbers to be factored, such as the Euclidean algorithm. To return to the example above,

$$\operatorname{lcm}(21,6)
={21\cdot6\over\gcd(21,6)}
={21\cdot6\over\gcd(3,6)}
={21\cdot 6\over 3}= \frac{126}{3} = 42.$$

Because gcd(_a_, _b_) is a divisor of both _a_ and _b_, it is more efficient to compute the LCM by dividing _before_ multiplying:

$$\operatorname{lcm}(a,b)=\left({|a|\over\gcd(a,b)}\right)\cdot |b|=\left({|b|\over\gcd(a,b)}\right)\cdot |a|.$$

This reduces the size of one input for both the division and the multiplication, and reduces the required storage needed for intermediate results (overflow in the _a_×_b_ computation). Because gcd(_a_, _b_) is a divisor of both _a_ and _b_, the division is guaranteed to yield an integer, so the intermediate result can be stored in an integer. Done this way, the previous example becomes:

$$\operatorname{lcm}(21,6)={21\over\gcd(21,6)}\cdot6={21\over\gcd(3,6)}\cdot6={21\over3}\cdot6=7\cdot6=42.$$

Using prime factorization

The unique factorization theorem says that every positive integer greater than 1 can be written in only one way as a product of prime numbers. The prime numbers can be considered as the atomic elements which, when combined together, make up a composite number.

For example:

90 = 2¹ ⋅ 3² ⋅ 5¹ = 2 ⋅ 3 ⋅ 3 ⋅ 5.

Here we have the composite number 90 made up of one atom of the prime number 2, two atoms of the prime number 3 and one atom of the prime number 5.

This knowledge can be used to find the LCM of a set of numbers.

Example: Find the value of lcm(8,9,21).

First, factor each number and express it as a product of prime number powers.



\begin{align} 8 & = 2^3 \\ 9 & = 3^2 \\ 21 & = 3^1 \cdot 7^1 \end{align}

The lcm will be the product of multiplying the highest power of each prime number together. The highest power of the three prime numbers 2, 3, and 7 is 2³, 3², and 7¹, respectively. Thus,

lcm (8, 9, 21) = 2³ ⋅ 3² ⋅ 7¹ = 8 ⋅ 9 ⋅ 7 = 504.

This method is not as efficient as reducing to the greatest common divisor, since there is no known general efficient algorithm for integer factorization, but is useful for illustrating concepts.

This method can be illustrated using a Venn diagram as follows. Find the prime factorization of each of the two numbers. Put the prime factors into a Venn diagram with one circle for each of the two numbers, and _all_ factors they share in common in the intersection. To find the LCM, just multiply all of the prime numbers in the diagram.

Here is an example:

    48 = 2 × 2 × 2 × 2 × 3,
    180 = 2 × 2 × 3 × 3 × 5,

and what they share in common is two "2"s and a "3":



    Least common multiple = 2 × 2 × 2 × 2 × 3 × 3 × 5 = 720
    Greatest common divisor = 2 × 2 × 3 = 12

This also works for the greatest common divisor (GCD), except that instead of multiplying all of the numbers in the Venn diagram, one multiplies only the prime factors that are in the intersection. Thus the GCD of 48 and 180 is 2 × 2 × 3 = 12.

Using a simple algorithm

This method works as easily for finding the LCM of several integers.

Let there be a finite sequence of positive integers _X_ = (_x_₁, _x_₂, ..., _x__(_n_)), _n_ > 1. The algorithm proceeds in steps as follows: on each step _m_ it examines and updates the sequence _X_^((_m_)) = (_x_₁^((_m_)), _x_₂^((_m_)), ..., _x__(_n_)^((_m_))), _X_⁽¹⁾ = _X_, where _X_^((_m_)) is the _m_th iteration of _X_, that is, _X_ at step _m_ of the algorithm, etc. The purpose of the examination is to pick the least (perhaps, one of many) element of the sequence _X_^((_m_)). Assuming _x__(_k_₀)^((_m_)) is the selected element, the sequence _X_^((_m_+1)) is defined as

    _x__(_k_)^((_m_+1)) = _x__(_k_)^((_m_)), _k_ ≠ _k_₀
    _x__(_k_₀)^((_m_+1)) = _x__(_k_₀)^((_m_)) + _x__(_k_₀)⁽¹⁾.

In other words, the least element is increased by the corresponding _x_ whereas the rest of the elements pass from _X_^((_m_)) to _X_^((_m_+1)) unchanged.

The algorithm stops when all elements in sequence _X_^((_m_)) are equal. Their common value _L_ is exactly LCM(_X_).

Using the table-method

This method works for any number of factors. One begins by listing all of the numbers vertically in a table (in this example 4, 7, 12, 21, and 42):

    4
    7
    12
    21
    42

The process begins by dividing all of the factors by 2. If any of them divides evenly, write 2 at the top of the table and the result of division by 2 of each factor in the space to the right of each factor and below the 2. If a number does not divide evenly, just rewrite the number again. If 2 does not divide evenly into any of the numbers, try 3.

  _x_   2
  ----- ----
  4     2
  7     7
  12    6
  21    21
  42    21

Now, check if 2 divides again:

  _x_   2    2
  ----- ---- ----
  4     2    1
  7     7    7
  12    6    3
  21    21   21
  42    21   21

Once 2 no longer divides, divide by 3. If 3 no longer divides, try 5 and 7. Keep going until all of the numbers have been reduced to 1.

  _x_   2    2    3   7
  ----- ---- ---- --- ---
  4     2    1    1   1
  7     7    7    7   1
  12    6    3    1   1
  21    21   21   7   1
  42    21   21   7   1

Now, multiply the numbers on the top and you have the LCM. In this case, it is . You will get to the LCM the quickest if you use prime numbers and start from the lowest prime, 2.

As a general computational algorithm, the above is quite inefficient. One would never want to implement it in software: it takes too many steps, and requires too much storage space. A far more efficient numerical algorithm can be obtained simply by using Euclid's algorithm to compute the gcd first, and then obtaining the lcm by division.


Formulas

Fundamental theorem of arithmetic

According to the fundamental theorem of arithmetic a positive integer is the product of prime numbers, and, except for their order, this representation is unique:

_n_ = 2^(_n_₂)3^(_n_₃)5^(_n_₅)7^(_n_₇)⋯ = ∏_(_p_)_p_^(_n__(_p_)),

where the exponents _n_₂, _n_₃, ... are non-negative integers; for example, 84 = 2² 3¹ 5⁰ 7¹ 11⁰ 13⁰ ...

Given two positive integers their least common multiple and greatest common divisor are given by the formulas

gcd (_a_, _b_) = ∏_(_p_)_p_^(min (_a__(_p_), _b__(_p_)))
and

lcm (_a_, _b_) = ∏_(_p_)_p_^(max (_a__(_p_), _b__(_p_))).

Since

min (_x_, _y_) + max (_x_, _y_) = _x_ + _y_,
this gives

gcd (_a_, _b_)lcm (_a_, _b_) = _a_ _b_.

In fact, every rational number can be written uniquely as the product of primes if negative exponents are allowed. When this is done, the above formulas remain valid. For example:

$$\begin{array}{llll} 4 = 2^2 3^0, & 6 = 2^1 3^1, &  \gcd(4, 6) = 2^1 3^0 = 2, & \operatorname{lcm}(4,6) = 2^2  3^1 = 12.\\[8pt]
\tfrac{1}{3}=2^0 3^{-1} 5^0,&\tfrac{2}{5}=2^1 3^0 5^{-1}, & \gcd(\tfrac13, \tfrac25)= 2^0 3^{-1} 5^{-1} = \tfrac{1}{15}, &\operatorname{lcm}(\tfrac13, \tfrac25) = 2^1 3^0 5^0 = 2, \\[8pt]
\tfrac{1}{6}=2^{-1} 3^{-1} ,&\tfrac{3}{4}=2^{-2} 3^1, & \gcd(\tfrac16, \tfrac34)= 2^{-2} 3^{-1} = \tfrac{1}{12}, &\operatorname{lcm}(\tfrac16, \tfrac34) = 2^{-1} 3^1 = \tfrac{3}{2}. \end{array}$$

Lattice-theoretic

The positive integers may be partially ordered by divisibility: if _a_ divides _b_ (that is, if _b_ is an integer multiple of _a_) write _a_ ≤ _b_ (or equivalently, _b_ ≥ _a_). (Forget the usual magnitude-based definition of ≤ in this section - it is not used.)

Under this ordering, the positive integers become a lattice with meet given by the gcd and join given by the lcm. The proof is straightforward, if a bit tedious; it amounts to checking that lcm and gcd satisfy the axioms for meet and join. Putting the lcm and gcd into this more general context establishes a duality between them:

    '''If a formula involving integer variables, gcd, lcm, ≤ and ≥ is true, then the formula obtained by switching gcd with lcm and switching ≥ with ≤ is also true. ''' (Remember ≤ is defined as divides).

The following pairs of dual formulas are special cases of general lattice-theoretic identities.

+------------------------------+------+------------------------------------------------+------+------------------------------+
| Commutative laws             |      | Associative laws                               |      | Absorption laws:             |
|     lcm (a, b) = lcm (b, a), |      |     lcm (a, lcm (b, c)) = lcm (lcm (a, b), c), |      |     lcm (a, gcd (a, b)) = a, |
|     gcd (a, b) = gcd (b, a). |      |     gcd (a, gcd (b, c)) = gcd (gcd (a, b), c). |      |     gcd (a, lcm (a, b)) = a. |
+------------------------------+------+------------------------------------------------+------+------------------------------+

+---------------------+------+----------------------------------------+
| Idempotent laws     |      | Define divides in terms of lcm and gcd |
|     lcm (a, a) = a, |      |     a ≥ b ⇔ a = lcm (a, b),            |
|     gcd (a, a) = a. |      |     a ≤ b ⇔ a = gcd (a, b).            |
+---------------------+------+----------------------------------------+

It can also be shown[6] that this lattice is distributive, that is, lcm distributes over gcd and, dually, that gcd distributes over lcm:

lcm (_a_, gcd (_b_, _c_)) = gcd (lcm (_a_, _b_), lcm (_a_, _c_)),

gcd (_a_, lcm (_b_, _c_)) = lcm (gcd (_a_, _b_), gcd (_a_, _c_)).

This identity is self-dual:

gcd (lcm (_a_, _b_), lcm (_b_, _c_), lcm (_a_, _c_)) = lcm (gcd (_a_, _b_), gcd (_b_, _c_), gcd (_a_, _c_)).

Other

-   Let _D_ be the product of _ω_(_D_) distinct prime numbers (that is, _D_ is squarefree).

Then[7]

|{(_x_, _y_) : lcm (_x_, _y_) = _D_}| = 3^(_ω_(_D_)),

where the absolute bars || denote the cardinality of a set.

-   If none of a₁, a₂, …, a_(r) is zero, then

lcm (_a_₁, _a_₂, …, _a__(_r_)) = lcm (lcm (_a_₁, _a_₂, …, _a__(_r_ − 1)), _a__(_r_)).
[8][9]


In commutative rings

The least common multiple can be defined generally over commutative rings as follows: Let _a_ and _b_ be elements of a commutative ring _R_. A common multiple of _a_ and _b_ is an element _m_ of _R_ such that both _a_ and _b_ divide _m_ (that is, there exist elements _x_ and _y_ of _R_ such that _ax_ = _m_ and _by_ = _m_). A least common multiple of _a_ and _b_ is a common multiple that is minimal in the sense that for any other common multiple _n_ of _a_ and _b_, _m_ divides _n_.

In general, two elements in a commutative ring can have no least common multiple or more than one. However, any two least common multiples of the same pair of elements are associates. In a unique factorization domain, any two elements have a least common multiple. In a principal ideal domain, the least common multiple of _a_ and _b_ can be characterised as a generator of the intersection of the ideals generated by _a_ and _b_ (the intersection of a collection of ideals is always an ideal).


See also

-   Anomalous cancellation
-   Chebyshev function


Notes


References

-   -   -   -   -

Category:Elementary arithmetic Category:Arithmetic Category:Number theory

[1] Hardy & Wright, § 5.1, p. 48

[2]

[3]

[4]

[5]

[6] The next three formulas are from Landau, Ex. III.3, p. 254

[7] Crandall & Pomerance, ex. 2.4, p. 101.

[8]

[9]