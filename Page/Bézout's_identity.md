In elementary number theory, BÉZOUT'S IDENTITY (also called BÉZOUT'S LEMMA) is the following theorem:

The integers _x_ and _y_ are called BÉZOUT COEFFICIENTS for (_a_, _b_); they are not unique. A pair of Bézout coefficients can be computed by the extended Euclidean algorithm. If both _a_ and _b_ are nonzero, the extended Euclidean algorithm produces one of the two pairs such that $|x|\le \left |\frac{b}{d}\right |$ and $|y|\le\left |\frac{a}{d}\right |$ (equality may occur only if one of _a_ and _b_ is a multiple of the other).

Many other theorems in elementary number theory, such as Euclid's lemma or Chinese remainder theorem, result from Bézout's identity.

A Bézout domain is an integral domain in which Bézout's identity holds. In particular, Bézout's identity holds in principal ideal domains. Every theorem that results from Bézout's identity is thus true in all these domains.


Structure of solutions

When one pair of Bézout coefficients has been computed (e.g., using extended Euclidean algorithm), all pairs can be represented in the form

$$\left(x+k\frac{b}{\gcd(a,b)},\ y-k\frac{a}{\gcd(a,b)}\right),$$
where is an arbitrary integer and the fractions simplify to integers.

Among these pairs of Bézout coefficients, exactly two of them satisfy

$$|x| \le \left |\frac{b}{\gcd(a,b)}\right |\quad \text{and}\quad |y| \le \left |\frac{a}{\gcd(a,b)}\right |,$$
and equality may occur only if one of and divides the other.

This relies on a property of Euclidean division: given two integers _c_ and _d_, if _d_ does not divide _c_, there is exactly one pair such that and _d_{{!}}}}, and another one such that and _d_{{!}} < _r_ < 0}}.

The two pairs of small Bézout's coefficients are obtained from the given one by choosing for in the above formula either of the two integers next to $\frac{-x}{b/\gcd(a,b)}$.

The Extended Euclidean algorithm always produces one of these two minimal pairs.

Example

Let _a_ = 12 and _b_ = 42, gcd (12, 42) = 6. Then we have the following Bézout's identities, with the Bézout coefficients written in red for the minimal pairs and in blue for the other ones.

$$\begin{align}
\vdots \\
12 &\times ({\color{blue}{-10}}) & + \;\; 42  &\times \color{blue}{3} &= 6 \\
12 &\times ({\color{red}{-3}}) & + \;\;42  &\times \color{red}{1} &= 6 \\
12 &\times \color{red}{4}  & + \;\;42  &\times({\color{red}{-1}}) &= 6 \\
12 &\times \color{blue}{11} & + \;\;42  &\times ({\color{blue}{-3}}) &= 6 \\
12 &\times \color{blue}{18} & + \;\;42  &\times ({\color{blue}{-5}}) &= 6 \\
\vdots
\end{align}$$

If is the original pair of Bézout coefficients, then $\frac{-18}{42/6} \in [-3, -2]$ yields the minimal pairs via resp. : and .


Proof

Given any nonzero integers and , let S = {ax + by ∣ x, y ∈ ℤ and ax + by > 0}. The set is nonempty since it contains either or (with and ). Since is a nonempty set of positive integers, it has a minimum element d = as + bt, by the Well-ordering principle. To prove that is the greatest common divisor of and , we must prove that is a common divisor of and , and that for any other common divisor , one has .

The Euclidean division of by may be written

_a_ = _d__q_ + _r_ with 0 ≤ _r_ < _d_.
The remainder is in S ∪ {0}, because

$$\begin{align}
r  & = a - qd \\
& = a - q(as+bt)\\
& = a(1-qs) - bqt.
\end{align}$$
As is the smallest positive integer in , the remainder is necessarily 0, as, being a remainder, it has to be less than . This implies that is a divisor of . Similarly is also a divisor of , and is a common divisor of and .

Now, let be any common divisor of and ; that is there exist and such that and . One has thus

$$\begin{align}d&=as + bt\\
& =cus+cvt\\
&=c(us+vt).\end{align}$$
That is is a divisor of , and, therefore


Generalizations

For three or more integers

Bézout's identity can be extended to more than two integers: if

gcd (_a_₁, _a_₂, …, _a__(_n_)) = _d_

then there are integers x₁, x₂, …, x_(n) such that

_d_ = _a_₁_x_₁ + _a_₂_x_₂ + ⋯ + _a__(_n_)_x__(_n_)

has the following properties:

-   _d_ is the smallest positive integer of this form
-   every number of this form is a multiple of _d_

For polynomials

Bézout's identity works for univariate polynomials over a field exactly in the same ways as for integers. In particular the Bézout's coefficients and the greatest common divisor may be computed with the extended Euclidean algorithm.

As the common roots of two polynomials are the roots of their greatest common divisor, Bézout's identity and fundamental theorem of algebra imply the following result:

    For univariate polynomials _f_ and _g_ with coefficients in a field, there exist polynomials _a_ and _b_ such that _af_ + _bg_ = 1 if and only if _f_ and _g_ have no common root in any algebraically closed field (commonly the field of complex numbers).

The generalization of this result to any number of polynomials and indeterminates is Hilbert's Nullstellensatz.

For principal ideal domains

As noted in the introduction, Bézout's identity works not only in the ring of integers, but also in any other principal ideal domain (PID). That is, if _R_ is a PID, and _a_ and _b_ are elements of _R_, and _d_ is a greatest common divisor of _a_ and _b_, then there are elements _x_ and _y_ in _R_ such that _ax_ + _by_ = _d_. The reason is that the ideal _Ra_+_Rb_ is principal and equal to _Rd_.

An integral domain in which Bézout's identity holds is called a Bézout domain.


History

French mathematician Étienne Bézout (1730–1783) proved this identity for polynomials.[1] However, this statement for integers can be found already in the work of another French mathematician, Claude Gaspard Bachet de Méziriac (1581–1638).[2][3][4]


See also

-   AF+BG theorem, an analogue of Bézout's identity for homogeneous polynomials in three indeterminates
-   Fundamental theorem of arithmetic
-   Euclid's lemma


Notes


External links

-   Online calculator for Bézout's identity.
-

Category:Diophantine equations Category:Lemmas Category:Articles containing proofs

[1]

[2]

[3]  On these pages, Bachet proves (without equations) "Proposition XVIII. Deux nombres premiers entre eux estant donnez, treuver le moindre multiple de chascun d’iceux, surpassant de l’unité un multiple de l’autre." (Given two numbers [which are] relatively prime, find the lowest multiple of each of them [such that] one multiple exceeds the other by unity (1).) This problem (namely, ax - by = 1) is a special case of Bézout's equation and was used by Bachet to solve the problems appearing on pages 199 ff.

[4] See also: