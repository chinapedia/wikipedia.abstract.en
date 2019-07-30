In computability theory, the ACKERMANN FUNCTION, named after Wilhelm Ackermann, is one of the simplest[1] and earliest-discovered examples of a total computable function that is not primitive recursive. All primitive recursive functions are total and computable, but the Ackermann function illustrates that not all total computable functions are primitive recursive.

After Ackermann's publication[2] of his function (which had three nonnegative integer arguments), many authors modified it to suit various purposes, so that today "the Ackermann function" may refer to any of numerous variants of the original function. One common version, the two-argument ACKERMANN–PÉTER FUNCTION, is defined as follows for nonnegative integers _m_ and _n_:

$$A(m, n) =
\begin{cases}
n+1 & \mbox{if } m = 0 \\
A(m-1, 1) & \mbox{if } m > 0 \mbox{ and } n = 0 \\
A(m-1, A(m, n-1)) & \mbox{if } m > 0 \mbox{ and } n > 0.
\end{cases}$$

Its value grows rapidly, even for small inputs. For example, is an integer of 19,729 decimal digits[3] (equivalent to 2⁶⁵⁵³⁶−3, or 2^(2^(2^(2²)))−3).


History

In the late 1920s, the mathematicians Gabriel Sudan and Wilhelm Ackermann, students of David Hilbert, were studying the foundations of computation. Both Sudan and Ackermann are credited[4] with discovering total computable functions (termed simply "recursive" in some references) that are not primitive recursive. Sudan published the lesser-known Sudan function, then shortly afterwards and independently, in 1928, Ackermann published his function φ (the Greek letter _phi_). Ackermann's three-argument function, φ(m, n, p), is defined such that for _p_ = 0, 1, 2, it reproduces the basic operations of addition, multiplication, and exponentiation as

_φ_(_m_, _n_, 0) = _m_ + _n_,

_φ_(_m_, _n_, 1) = _m_ ⋅ _n_,

_φ_(_m_, _n_, 2) = _m_^(_n_),
and for _p_ > 2 it extends these basic operations in a way that can be compared to the hyperoperations:

_φ_(_m_, _n_, 3) = _m_↑²(_n_ + 1), ​

_φ_(_m_, _n_, _p_) ⪆ _m_↑^(_p_ − 1)(_n_ + 1)  (_p_ ≥ 4). ​
(Aside from its historic role as a total-computable-but-not-primitive-recursive function, Ackermann's original function is seen to extend the basic arithmetic operations beyond exponentiation, although not as seamlessly as do variants of Ackermann's function that are specifically designed for that purpose—such as Goodstein's hyperoperation sequence.)

In _On the Infinite_, David Hilbert hypothesized that the Ackermann function was not primitive recursive, but it was Ackermann, Hilbert's personal secretary and former student, who actually proved the hypothesis in his paper _On Hilbert's Construction of the Real Numbers_.[5][6]

Rózsa Péter and Raphael Robinson later developed a two-variable version of the Ackermann function that became preferred by many authors.[7]


Definition and properties

Ackermann's original three-argument function φ(m, n, p) is defined recursively as follows for nonnegative integers _m_, _n_, and _p_:

$$\begin{array}{lr}
\varphi(m, n, 0) = m + n \\
\varphi(m, 0, 1) = 0 \\
\varphi(m, 0, 2) = 1 \\
\varphi(m, 0, p) = m \text{ for } p > 2 \\
\varphi(m, n, p) = \varphi(m, \varphi(m, n-1, p), p - 1) \text{ for } n > 0 \text{ and } p > 0.
\end{array}$$

Of the various two-argument versions, the one developed by Péter and Robinson (called "the" Ackermann function by some authors) is defined for nonnegative integers _m_ and _n_ as follows:

$$A(m, n) =
\begin{cases}
n+1 & \mbox{if } m = 0 \\
A(m-1, 1) & \mbox{if } m > 0 \mbox{ and } n = 0 \\
A(m-1, A(m, n-1)) & \mbox{if } m > 0 \mbox{ and } n > 0.
\end{cases}$$

It may not be immediately obvious that the evaluation of A(m, n) always terminates. However, the recursion is bounded because in each recursive application either _m_ decreases, or _m_ remains the same and _n_ decreases. Each time that _n_ reaches zero, _m_ decreases, so _m_ eventually reaches zero as well. (Expressed more technically, in each case the pair (_m_, _n_) decreases in the lexicographic order on pairs, which is a well-ordering, just like the ordering of single non-negative integers; this means one cannot go down in the ordering infinitely many times in succession.) However, when _m_ decreases there is no upper bound on how much _n_ can increase—and it will often increase greatly.

The Péter-Ackermann function can also be expressed in terms of various other versions of the Ackermann function:

-   the indexed version of Knuth's up-arrow notation (extended to integer indices ≥ −2):

_A_(_m_, _n_) = 2↑^(_m_ − 2)(_n_ + 3) − 3.

    The part of the definition corresponds to 2↑^(m + 1)3 = 2↑^(m)4.

-   Conway chained arrow notation:

_A_(_m_, _n_) = (2 → (_n_ + 3) → (_m_ − 2)) − 3
for m ≥ 3

    hence
    2 → _n_ → _m_ = _A_(_m_ + 2, _n_ − 3) + 3
    for n > 2.

    ( and would correspond with and , which could logically be added.)

-   Using the hyperoperations notation, can be expressed as , for .

For small values of _m_ like 1, 2, or 3, the Ackermann function grows relatively slowly with respect to _n_ (at most exponentially). For , however, it grows much more quickly; even is about 2, and the decimal expansion of is very large by any typical measure.

One interesting aspect of the Ackermann function is that the only arithmetic operations it ever uses are addition and subtraction of 1. Its properties come solely from the power of unlimited recursion. This also implies that its running time is at least proportional to its output, and so is also extremely huge. In actuality, for most cases the running time is far larger than the output; see below.

A single-argument version that increases both _m_ and _n_ at the same time dwarfs every primitive recursive function, including very fast-growing functions such as the exponential function, the factorial function, multi- and superfactorial functions, and even functions defined using Knuth's up-arrow notation (except when the indexed up-arrow is used). It can be seen that _f_(_n_) is roughly comparable to _f__(_ω_)(_n_) in the fast-growing hierarchy. This extreme growth can be exploited to show that _f_, which is obviously computable on a machine with infinite memory such as a Turing machine and so is a computable function, grows faster than any primitive recursive function and is therefore not primitive recursive.

In a category with exponentials, using the isomorphism ((X × Y) → Z) ≅ (X → (Y → Z)) (in computer science, this is called currying), the Ackermann function may be defined via primitive recursion over higher-order functionals as follows:

$$\begin{array}{lcl}
\operatorname{Ack}(0) & = & \operatorname{S} \\
\operatorname{Ack}(m+1) & = & \operatorname{Iter}(\operatorname{Ack}(m))
\end{array}$$

where _n_ + 1}} is the usual successor function and Iter denotes the functional power operator, defined by primitive recursion as well:

$$\begin{array}{lcl}
\operatorname{Iter}(f)(0) & = & f(1) \\
\operatorname{Iter}(f)(n+1) & = & f(\operatorname{Iter}(f)(n)).
\end{array}$$
The function Ack defined in this way agrees with the Ackermann function A defined above: Ack(m)(n) = A(m, n).


Example expansions

To see how the Ackermann function grows so quickly, it helps to expand out some simple expressions using the rules in the original definition. For example, one can fully evaluate A(1, 2) in the following way:

$$\begin{align}
A(1,2) & = A(0, A(1, 1)) \\
& = A(0, A(0, A(1, 0))) \\
& = A(0, A(0, A(0, 1))) \\
& = A(0, A(0, 2)) \\
& = A(0, 3) \\
& = 4.
\end{align}$$

To demonstrate how A(4, 3)'s computation results in many steps and in a large number:

$$\begin{align}
A(4, 3) & = A(3, A(4, 2)) \\
& = A(3, A(3, A(4, 1))) \\
& = A(3, A(3, A(3, A(4, 0)))) \\
& = A(3, A(3, A(3, A(3, 1)))) \\
& = A(3, A(3, A(3, A(2, A(3, 0))))) \\
& = A(3, A(3, A(3, A(2, A(2, 1))))) \\
& = A(3, A(3, A(3, A(2, A(1, A(2, 0)))))) \\
& = A(3, A(3, A(3, A(2, A(1, A(1, 1)))))) \\
& = A(3, A(3, A(3, A(2, A(1, A(0, A(1, 0))))))) \\
& = A(3, A(3, A(3, A(2, A(1, A(0, A(0, 1))))))) \\
& = A(3, A(3, A(3, A(2, A(1, A(0, 2)))))) \\
& = A(3, A(3, A(3, A(2, A(1, 3))))) \\
& = A(3, A(3, A(3, A(2, A(0, A(1, 2)))))) \\
& = A(3, A(3, A(3, A(2, A(0, A(0, A(1, 1))))))) \\
& = A(3, A(3, A(3, A(2, A(0, A(0, A(0, A(1, 0)))))))) \\
& = A(3, A(3, A(3, A(2, A(0, A(0, A(0, A(0, 1)))))))) \\
& = A(3, A(3, A(3, A(2, A(0, A(0, A(0, 2)) )) )) ) \\
& = A(3, A(3, A(3, A(2, A(0, A(0, 3)))))) \\
& = A(3, A(3, A(3, A(2, A(0, 4)))))  \\
& = A(3, A(3, A(3, A(2, 5)))) \\
& = \ldots \\
& = A(3, A(3, A(3, 13))) \\
& = \ldots \\
& = A(3, A(3, 65533)) \\
& = \ldots \\
& = A(3, 2^{65536} - 3) \\
& = \ldots \\
& = 2^{2^{ \overset{65536}{} }} - 3. \\
\end{align}$$


Table of values

Computing the Ackermann function can be restated in terms of an infinite table. First, place the natural numbers along the top row. To determine a number in the table, take the number immediately to the left. Then use that number to look up the required number in the column given by that number and one row up. If there is no number to its left, simply look at the column headed "1" in the previous row. Here is a small upper-left portion of the table:

+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
|   | 0                        | 1                       | 2                       | 3                         | 4                             | _n_                                                                                      |
+===+==========================+=========================+=========================+===========================+===============================+==========================================================================================+
| 0 | 1                        | 2                       | 3                       | 4                         | 5                             | n + 1                                                                                    |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| 1 | 2                        | 3                       | 4                       | 5                         | 6                             | n + 2 = 2 + (n + 3) − 3                                                                  |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| 2 | 3                        | 5                       | 7                       | 9                         | 11                            | 2n + 3 = 2 ⋅ (n + 3) − 3                                                                 |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| 3 | 5                        | 13                      | 29                      | 61                        | 125                           | 2^((n + 3)) − 3                                                                          |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| 4 | 13                       | 65533                   | 2⁶⁵⁵³⁶ − 3              | 2^(2⁶⁵⁵³⁶) − 3            | 2^(2^(2⁶⁵⁵³⁶)) − 3            | $\begin{matrix}\underbrace{{2^2}^{{\cdot}^{{\cdot}^{{\cdot}^2}}}}_{n+3} - 3\end{matrix}$ |
|   |  = 2^(2²) − 3            |  = 2^(2^(2²)) − 3       |  = 2^(2^(2^(2²))) − 3   |  = 2^(2^(2^(2^(2²)))) − 3 |  = 2^(2^(2^(2^(2^(2²))))) − 3 |  = 2 ↑  ↑ (n + 3) − 3                                                                    |
|   |  = 2 ↑  ↑ 3 − 3          |  = 2 ↑  ↑ 4 − 3         |  = 2 ↑  ↑ 5 − 3         |  = 2 ↑  ↑ 6 − 3           |  = 2 ↑  ↑ 7 − 3               |                                                                                          |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| 5 | 65533                    | 2 ↑  ↑  ↑ 4 − 3         | 2 ↑  ↑  ↑ 5 − 3         | 2 ↑  ↑  ↑ 6 − 3           | 2 ↑  ↑  ↑ 7 − 3               | 2 ↑  ↑  ↑ (n + 3) − 3                                                                    |
|   |  = 2 ↑  ↑ (2 ↑  ↑ 2) − 3 |                         |                         |                           |                               |                                                                                          |
|   |  = 2 ↑  ↑  ↑ 3 − 3       |                         |                         |                           |                               |                                                                                          |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| 6 | 2 ↑  ↑  ↑  ↑ 3 − 3       | 2 ↑  ↑  ↑  ↑ 4 − 3      | 2 ↑  ↑  ↑  ↑ 5 − 3      | 2 ↑  ↑  ↑  ↑ 6 − 3        | 2 ↑  ↑  ↑  ↑ 7 − 3            | 2 ↑  ↑  ↑  ↑ (n + 3) − 3                                                                 |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+
| m | (2 → (3) → (m − 2)) − 3  | (2 → (4) → (m − 2)) − 3 | (2 → (5) → (m − 2)) − 3 | (2 → (6) → (m − 2)) − 3   | (2 → (7) → (m − 2)) − 3       | (2 → (n + 3) → (m − 2)) − 3                                                              |
+---+--------------------------+-------------------------+-------------------------+---------------------------+-------------------------------+------------------------------------------------------------------------------------------+

: Values of _A_(_m_, _n_)

The numbers here which are only expressed with recursive exponentiation or Knuth arrows are very large and would take up too much space to notate in plain decimal digits.

Despite the large values occurring in this early section of the table, some even larger numbers have been defined, such as Graham's number, which cannot be written with any small number of Knuth arrows. This number is constructed with a technique similar to applying the Ackermann function to itself recursively.

This is a repeat of the above table, but with the values replaced by the relevant expression from the function definition to show the pattern clearly:

+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
|   | 0         | 1                 | 2                 | 3                 | 4                 | n                     |
+===+===========+===================+===================+===================+===================+=======================+
| 0 | 0 + 1     | 1 + 1             | 2 + 1             | 3 + 1             | 4 + 1             | _n_ + 1               |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
| 1 | _A_(0, 1) | _A_(0, _A_(1, 0)) | _A_(0, _A_(1, 1)) | _A_(0, _A_(1, 2)) | _A_(0, _A_(1, 3)) | _A_(0, _A_(1, _n_−1)) |
|   |           | = _A_(0, 2)       | = _A_(0, 3)       | = _A_(0, 4)       | = _A_(0, 5)       |                       |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
| 2 | _A_(1, 1) | _A_(1, _A_(2, 0)) | _A_(1, _A_(2, 1)) | _A_(1, _A_(2, 2)) | _A_(1, _A_(2, 3)) | _A_(1, _A_(2, _n_−1)) |
|   |           | = _A_(1, 3)       | = _A_(1, 5)       | = _A_(1, 7)       | = _A_(1, 9)       |                       |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
| 3 | _A_(2, 1) | _A_(2, _A_(3, 0)) | _A_(2, _A_(3, 1)) | _A_(2, _A_(3, 2)) | _A_(2, _A_(3, 3)) | _A_(2, _A_(3, _n_−1)) |
|   |           | = _A_(2, 5)       | = _A_(2, 13)      | = _A_(2, 29)      | = _A_(2, 61)      |                       |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
| 4 | _A_(3, 1) | _A_(3, _A_(4, 0)) | _A_(3, _A_(4, 1)) | _A_(3, _A_(4, 2)) | _A_(3, _A_(4, 3)) | _A_(3, _A_(4, _n_−1)) |
|   |           | = _A_(3, 13)      | = _A_(3, 65533)   |                   |                   |                       |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
| 5 | _A_(4, 1) | _A_(4, _A_(5, 0)) | _A_(4, _A_(5, 1)) | _A_(4, _A_(5, 2)) | _A_(4, _A_(5, 3)) | _A_(4, _A_(5, _n_−1)) |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+
| 6 | _A_(5, 1) | _A_(5, _A_(6, 0)) | _A_(5, _A_(6, 1)) | _A_(5, _A_(6, 2)) | _A_(5, _A_(6, 3)) | _A_(5, _A_(6, _n_−1)) |
+---+-----------+-------------------+-------------------+-------------------+-------------------+-----------------------+

: Values of _A_(_m_, _n_)


Proof that the Ackermann function is not primitive recursive

In a sense, the Ackermann function grows faster than any primitive recursive function and therefore is not itself primitive recursive.

Specifically, one shows that to every primitive recursive function f(x₁, …, x_(n)) there exists a non-negative integer t such that for all non-negative integers x₁, …, x_(n),

_f_(_x_₁, …, _x__(_n_)) < _A_(_t_, max_(_i_)_x__(_i_)).
Once this is established, it follows that A itself is not primitive recursive, since otherwise putting x₁ = x₂ = t would lead to the contradiction A(t, t) < A(t, t).

The proof[8] proceeds as follows: define the class 𝒜 of all functions that grow slower than the Ackermann function

𝒜 = {_f_∣∃_t_ ∀_x_₁⋯∀_x__(_n_): _f_(_x_₁,…,_x__(_n_))<_A_(_t_,max_(_i_)_x__(_i_))}
and show that 𝒜 contains all primitive recursive functions. The latter is achieved by showing that 𝒜 contains the constant functions, the successor function, the projection functions and that it is closed under the operations of function composition and primitive recursion.


Inverse

Since the function considered above grows very rapidly, its inverse function, _f_, grows very slowly. This INVERSE ACKERMANN FUNCTION _f_^(−1) is usually denoted by _Α_. In fact, _α_(_n_) is less than 5 for any practical input size _n_, since is on the order of 2^(2^(2^(2¹⁶))).

This inverse appears in the time complexity of some algorithms, such as the disjoint-set data structure and Chazelle's algorithm for minimum spanning trees. Sometimes Ackermann's original function or other variations are used in these settings, but they all grow at similarly high rates. In particular, some modified functions simplify the expression by eliminating the −3 and similar terms.

A two-parameter variation of the inverse Ackermann function can be defined as follows, where ⌊x⌋ is the floor function:

_α_(_m_, _n_) = min {_i_ ≥ 1 : _A_(_i_, ⌊_m_/_n_⌋) ≥ log₂_n_}.
This function arises in more precise analyses of the algorithms mentioned above, and gives a more refined time bound. In the disjoint-set data structure, _m_ represents the number of operations while _n_ represents the number of elements; in the minimum spanning tree algorithm, _m_ represents the number of edges while _n_ represents the number of vertices. Several slightly different definitions of exist; for example, is sometimes replaced by _n_, and the floor function is sometimes replaced by a ceiling.

Other studies might define an inverse function of one where m is set to a constant, such that the inverse applies to a particular row.[9]


Use as benchmark

The Ackermann function, due to its definition in terms of extremely deep recursion, can be used as a benchmark of a compiler's ability to optimize recursion. The first published use of Ackermann's function in this way was in 1970 by Dragoş Vaida[10] and, almost simultaneously, in 1971, by Yngve Sundblad.[11]

Sundblad's seminal paper was taken up by Brian Wichmann (co-author of the Whetstone benchmark) in a trilogy of papers written between 1975 and 1982.[12][13][14]


See also

-   Computability theory
-   Double recursion
-   Fast-growing hierarchy
-   Goodstein function
-   Primitive recursive function
-   Recursion (computer science)


References


External links

-   -   -   -   An animated Ackermann function calculator
-   Scott Aaronson, _Who can name the biggest number?_ (1999)
-   Ackermann functions. Includes a table of some values.
-   Hyper-operations: Ackermann's Function and New Arithmetical Operation
-   Robert Munafo's Large Numbers describes several variations on the definition of _A_.
-   Gabriel Nivasch, Inverse Ackermann without pain on the inverse Ackermann function.
-   Raimund Seidel, _Understanding the inverse Ackermann function_ (PDF presentation).
-   The Ackermann function written in different programming languages, (on Rosetta Code)
-   Ackermann's Function (Archived 2009-10-24)—Some study and programming by Harry J. Smith.

Category:Arithmetic Category:Large integers Category:Special functions Category:Theory of computation Category:Computability theory

[1]

[2]

[3] Decimal expansion of A(4,2)

[4]

[5]

[6] von Heijenoort. From Frege To Gödel , 1967.

[7]

[8]  planetmath.org|last=Woo|first=Chi|date=2009-12-17|website=planetmath.org|language=en|archive-url=https://web.archive.org/web/20130509202634/http://planetmath.org/ackermannfunctionisnotprimitiverecursive%7Carchive-date=2013-05-09%7Cdead-url=yes}}

[9] An inverse-Ackermann style lower bound for the online minimum spanning tree verification problem November 2002

[10]

[11]

[12]

[13]

[14]