The CHINESE REMAINDER THEOREM is a theorem of number theory, which states that if one knows the remainders of the Euclidean division of an integer _n_ by several integers, then one can determine uniquely the remainder of the division of _n_ by the product of these integers, under the condition that the divisors are pairwise coprime.

The earliest known statement of the theorem is by the Chinese mathematician Sunzi in _Sunzi Suanjing_ in the 3rd century AD.

The Chinese remainder theorem is widely used for computing with large integers, as it allows replacing a computation for which one knows a bound on the size of the result by several similar computations on small integers.

The Chinese remainder theorem (expressed in terms of congruences) is true over every principal ideal domain. It has been generalized to any commutative ring, with a formulation involving ideals.


History

The earliest known statement of the theorem, as a problem with specific numbers, appears in the 3rd-century book _Sunzi Suanjing_ by the Chinese mathematician Sunzi:[1]

Sunzi's work contains neither a proof nor a full algorithm.[2] What amounts to an algorithm for solving this problem was described by Aryabhata (6th century).[3] Special cases of the Chinese remainder theorem were also known to Brahmagupta (7th century), and appear in Fibonacci's Liber Abaci (1202).[4] The result was later generalized with a complete solution called _Dayanshu_ () in Qin Jiushao's 1247 _Mathematical Treatise in Nine Sections_ (, _Shushu Jiuzhang_).[5]

's 1801 book _Disquisitiones Arithmeticae_.[6]]]

The notion of congruences was first introduced and used by Gauss in his _Disquisitiones Arithmeticae_ of 1801.[7] Gauss illustrates the Chinese remainder theorem on a problem involving calendars, namely, "to find the years that have a certain period number with respect to the solar and lunar cycle and the Roman indiction."[8] Gauss introduces a procedure for solving the problem that had already been used by Euler but was in fact an ancient method that had appeared several times.[9]


Theorem statement

Let _n_₁, ..., _n__(_k_) be integers greater than 1, which are often called _moduli_ or _divisors_. Let us denote by _N_ the product of the _n__(_i_).

The Chinese remainder theorem asserts that if the _n__(_i_) are pairwise coprime, and if _a_₁, ..., _a__(_k_) are integers such that 0 ≤ _a__(_i_) < _n__(_i_) for every _i_, then there is one and only one integer _x_, such that 0 ≤ _x_ < _N_ and the remainder of the Euclidean division of _x_ by _n__(_i_) is _a__(_i_) for every _i_.

This may be restated as follows in term of congruences: If the _n__(_i_) are pairwise coprime, and if _a_₁, ..., _a__(_k_) are any integers, then there exists an integer _x_ such that

$$\begin{align}
 x &\equiv a_1  \pmod{n_1} \\
  &\vdots \\
 x &\equiv a_k \pmod{n_k},
\end{align}$$
and any two such _x_ are congruent modulo _N_.[10]

In abstract algebra, the theorem is often restated as: if the _n__(_i_) are pairwise coprime, the map

_x_ mod _N_ ↦ (_x_ mod _n_₁, …, _x_ mod _n__(_k_))
defines a ring isomorphism[11]

ℤ/_N_ℤ ≅ ℤ/_n_₁ℤ × ⋯ × ℤ/_n__(_k_)ℤ
between the ring of integers modulo _N_ and the direct product of the rings of integers modulo the _n__(_i_). This means that for doing a sequence of arithmetic operations in ℤ/Nℤ, one may do the same computation independently in each ℤ/n_(i)ℤ and then get the result by applying the isomorphism (from the right to the left). This may be much faster than the direct computation if _N_ and the number of operations are large. This is widely used, under the name _multi-modular computation_, for linear algebra over the integers or the rational numbers.

The theorem can also be restated in the language of combinatorics as the fact that the infinite arithmetic progressions of integers form a Helly family.[12]


Proof

The existence and the uniqueness of the solution may be proven independently. However, the first proof of existence, given below, uses this uniqueness.

Uniqueness

Suppose that and are both solutions to all the congruences. As and give the same remainder, when divided by , their difference is a multiple of each . As the are pairwise coprime, their product divides also , and thus and are congruent modulo . If and are supposed to be non negative and less than (as in the first statement of the theorem), then their difference may be a multiple of only if .

Existence (first proof)

The map

_x_ ↦ (_x_mod _n_₁, …, _x_mod _n__(_k_))
maps congruence classes modulo to sequences of congruence classes modulo . The proof of uniqueness shows that this map is injective. As the domain and the codomain of this map have the same number of elements, the map is also surjective, which proves the existence of the solution.

This proof is very simple but does not provide any direct way for computing a solution. Moreover, it cannot be generalized to other situations where the following proof can.

Existence (constructive proof)

Existence may be established by an explicit construction of .[13] This construction may be split into two steps, firstly by solving the problem in the case of two moduli, and the second one by extending this solution to the general case by induction on the number of moduli.

Case of two moduli

We want to solve the system:

$$\begin{align}
  x &\equiv a_1 \pmod {n_1}\\
  x &\equiv a_2 \pmod {n_2},
\end{align}$$
where n₁ and n₂ are coprime.

Bézout's identity asserts the existence of two integers m₁ and m₂ such that

_m_₁_n_₁ + _m_₂_n_₂ = 1.
The integers m₁ and m₂ may be computed by the extended Euclidean algorithm.

A solution is given by

_x_ = _a_₁_m_₂_n_₂ + _a_₂_m_₁_n_₁.
Indeed,

$$\begin{align}
x&=a_1m_2n_2+a_2m_1n_1\\
&=a_1(1 - m_1n_1) + a_2m_1n_1 \\
&=a_1 + (a_2 - a_1)m_1n_1,
\end{align}$$
implying that $x \equiv a_1 \pmod {n_1}.$ The second congruence is proved similarly.

General case

Consider a sequence of congruence equations:

$$\begin{align}
  x &\equiv a_1 \pmod{n_1} \\
  &\vdots              \\
  x &\equiv a_k \pmod{n_k},
\end{align}$$
where the n_(i) are pairwise coprime. The two first equations have a solution a_(1, 2) provided by the method of the previous section. The set of the solutions of these two first equations is the set of all solutions of the equation

$$x \equiv a_{1,2} \pmod{n_1n_2}.$$

As the other n_(i) are coprime with n₁n₂, this reduces solving the initial problem of equations to a similar problem with k − 1 equations. Iterating the process, one gets eventually the solutions of the initial problem.

Existence (direct construction)

For constructing a solution, it is not necessary to make an induction on the number of moduli. However, such a direct construction involves more computation with large numbers, which makes it less efficient and less used. Nevertheless, Lagrange interpolation is a special case of this construction, applied to polynomials instead of integers.

Let N_(i) = N/n_(i) be the product of all moduli but one. As the n_(i) are pairwise coprime, N_(i) and n_(i) are coprime. Thus Bézout's identity applies, and there exist integers M_(i) and m_(i) such that

_M__(_i_)_N__(_i_) + _m__(_i_)_n__(_i_) = 1.

A solution of the system of congruences is

$$x=\sum_{i=1}^k a_iM_iN_i.$$
In fact, as N_(j) is a multiple of n_(i) for i ≠ j, we have

$$x \equiv a_iM_iN_i \equiv a_i(1-m_in_i) \equiv a_i \pmod{n_i},$$
for every i.


Computation

Consider a system of congruences:

$$\begin{align}
 x &\equiv a_1  \pmod{n_1} \\
 &\vdots             \\
 x &\equiv a_k \pmod{n_k}, \\
\end{align}$$
where the n_(i) are pairwise coprime, and let N = n₁n₂⋯n_(k). In this section several methods are described for computing the unique solution for x, such that 0 ≤ x < N, and these methods are applied on the example:

$$\begin{align}
 x &\equiv 0 \pmod{3} \\
 x &\equiv 3 \pmod{4} \\
 x &\equiv 4 \pmod{5}.\\
\end{align}$$

Systematic search

It is easy to check whether a value of is a solution: it suffices to compute the remainder of the Euclidean division of by each . Thus, to find the solution, it suffices to check successively the integers from to until finding the solution.

Although very simple this method is very inefficient: for the simple example considered here, integers (including ) have to be checked for finding the solution . This is an exponential time algorithm, as the size of the input is, up to a constant factor, the number of digits of , and the average number of operations is of the order of .

Therefore, this method is rarely used, neither for hand-written computation nor on computers.

Search by sieving

The search of the solution may be made dramatically faster by sieving. For this method, we suppose, without loss of generality, that 0 ≤ a_(i) < n_(i) (if it were not the case, it would suffice to replace each a_(i) by the remainder of its division by n_(i)). This implies that the solution belongs to the arithmetic progression

_a_₁, _a_₁ + _n_₁, _a_₁ + 2_n_₁, …
By testing the values of these numbers modulo n₂, one eventually finds a solution x₂ of the two first congruences. Then the solution belongs to the arithmetic progression

_x_₂, _x_₂ + _n_₁_n_₂, _x_₂ + 2_n_₁_n_₂, …
Testing the values of these numbers modulo n₃,, and continuing until every modulus has been tested gives eventually the solution.

This method is faster if the moduli have been ordered by decreasing value, that is if n₁ > n₂ > ⋯ > n_(k). For the example, this gives the following computation. We consider first the numbers that are congruent to 4 modulo 5 (the largest modulus), which are 4, , , ... For each of them, compute the remainder by 4 (the second largest modulus) until getting a number congruent to 3 modulo 4. Then one can proceed by adding at each step, and computing only the remainders by 3. This gives

    4 mod 4 → 0. Continue
    4 + 5 = 9 mod 4 →1. Continue
    9 + 5 = 14 mod 4 → 2. Continue
    14 + 5 = 19 mod 4 → 3. OK, continue by considering remainders modulo 3 and adding 5×4 = 20 each time
    19 mod 3 → 1. Continue
    19 + 20 = 39 mod 3 → 0. OK, this is the result.

This method works well for hand-written computation with a product of moduli that is not too big. However, it is much slower than other methods, for very large products of moduli. Although dramatically faster than the systematic search, this method also has an exponential time complexity and is therefore not used on computers.

Using the existence construction

The constructive existence proof shows that, in the case of two moduli, the solution may be obtained by the computation of the Bézout coefficients of the moduli, followed by a few multiplications, additions and reductions modulo n₁n₂ (for getting a result in the interval (0, n₁n₂ − 1)). As the Bézout's coefficients may be computed with the extended Euclidean algorithm, the whole computation, at most, has a quadratic time complexity of O((s₁ + s₂)²), where s_(i) denotes the number of digits of n_(i).

For more than two moduli, the method for two moduli allows the replacement of any two congruences by a single congruence modulo the product of the moduli. Iterating this process provides eventually the solution with a complexity, which is quadratic in the number of digits of the product of all moduli. This quadratic time complexity does not depend on the order in which the moduli are regrouped. One may regroup the two first moduli, then regroup the resulting modulus with the next one, and so on. This strategy is the easiest to implement, but it also requires more computation involving large numbers.

Another strategy consists in partitioning the moduli in pairs whose product have comparable sizes (as much as possible), applying, in parallel, the method of two moduli to each pair, and iterating with a number of moduli approximatively divided by two. This method allows an easy parallelization of the algorithm. Also, if fast algorithms (that is algorithms working in quasilinear time) are used for the basic operations, this method provides an algorithm for the whole computation that works in quasilinear time.

On the current example (which has only three moduli), both strategies are identical and work as follows.

Bézout's identity for 3 and 4 is

1 × 4 + ( − 1) × 3 = 1.
Putting this in the formula given for proving the existence gives

0 × 4 + ( − 3) × 3 =  − 9
for a solution of the two first congruences, the other solutions being obtained by adding to −9 any multiple of . One may continue with any of these solutions, but the solution is smaller (in absolute value) and thus leads probably to an easier computation

Bézout identity for 5 and 3×4 = 12 is

5 × 5 + ( − 2) × 12 = 1.
Applying the same formula again, we get a solution of the problem:

25 × 3 − 24 × 4 =  − 21.
The other solutions are obtained by adding any multiple of , and the smallest positive solution is .

As a linear Diophantine system

The system of congruences solved by the Chinese remainder theorem may be rewritten as a system of simultaneous linear Diophantine equations:

$$\begin{align}
 x &= a_1 +x_1n_1\\
 &\vdots   \\
 x &=a_k+x_kn_k,
\end{align}$$
where the unknown integers are x and the x_(i). Therefore, every general method for solving such systems may be used for finding the solution of Chinese remainder theorem, such as the reduction of the matrix of the system to Smith normal form or Hermite normal form. However, as usual when using a general algorithm for a more specific problem, this approach is less efficient than the method of the preceding section, based on a direct use of Bézout's identity.


Over principal ideal domains

In , the Chinese remainder theorem has been stated in three different ways: in terms of remainders, of congruences, and of a ring isomorphism. The statement in terms of remainders does not apply, in general, to principal ideal domains, as remainders are not defined in such rings. However, the two other versions make sense over a principal ideal domain : it suffices to replace "integer" by "element of the domain" and ℤ by . These two versions of the theorem are true in this context, because the proofs (except for the first existence proof), are based on Euclid's lemma and Bézout's identity, which are true over every principal domain.

However, in general, the theorem is only an existence theorem and does not provide any way for computing the solution, unless one has an algorithm for computing the coefficients of Bézout's identity.


Over univariate polynomial rings and Euclidean domains

The statement in terms of remainders given in cannot be generalized to any principal ideal domain, but its generalization to Euclidean domains is straightforward. The univariate polynomials over a field is the typical example of a Euclidean domain, which is not the integers. Therefore, we state the theorem for the case of a ring of univariate domain R = K[X] over a field K. For getting the theorem for a general Euclidean domain, it suffices to replace the degree by the Euclidean function of the Euclidean domain.

The Chinese remainder theorem for polynomials is thus: Let P_(i)(X) (the moduli) be, for , pairwise coprime polynomials in R = K[X]. Let d_(i) = deg P_(i) be the degree of P_(i)(X), and D be the sum of the d_(i). If A_(i)(X), …, A_(k)(X) are polynomials such that A_(i)(X) = 0 or deg A_(i) < d_(i) for every , then, there is one and only one polynomial P(X), such that deg P < D and the remainder of the Euclidean division of P(X) by P_(i)(X) is A_(i)(X) for every .

The construction of the solution may be done as in or . However, the latter construction may be simplified by using, as follows, partial fraction decomposition instead of extended Euclidean algorithm.

Thus, we want to find a polynomial P(X), which satisfies the congruences

$$P(X)\equiv A_i(X) \pmod {P_i(X)},$$
for i = 1, …, k.

Consider the polynomials

$$\begin{align}
    Q(X) &= \prod_{i=1}^{k}P_i(X) \\
  Q_i(X) &= \frac{Q(X)}{P_i(X)}.
\end{align}$$

The partial fraction decomposition of 1/Q(X) gives polynomials S_(i)(X) with degrees deg S_(i)(X) < d_(i), such that

$$\frac{1}{Q(X)} = \sum_{i=1}^k \frac{S_i(X)}{P_i(X)},$$
and thus

$$1 = \sum_{i=1}^{k}S_i(X) Q_i(X).$$

Then a solution of the simultaneous congruence system is given by the polynomial

$$\sum_{i=1}^k A_i(X) S_i(X) Q_i(X).$$

In fact, we have

    $\sum_{i=1}^k A_i(X) S_i(X) Q_i(X)= A_i(X)+ \sum_{j=1}^{k}(A_j(X) - A_i(X)) S_j(X) Q_j(X) \equiv A_i(X)\pmod{P_i(X)},$

for 1 ≤ i ≤ k.

This solution may have a degree larger that $D=\sum_{i=1}^k d_i.$ The unique solution of degree less than D may be deduced by considering the remainder B_(i)(X) of the Euclidean division of A_(i)(X)S_(i)(X) by P_(i)(X). This solution is

$$P(X)=\sum_{i=1}^k B_i(X) Q_i(X).$$

Lagrange interpolation

A special case of Chinese remainder theorem for polynomials is Lagrange interpolation. For this, consider monic polynomials of degree one:

_P__(_i_)(_X_) = _X_ − _x__(_i_).

They are pairwise coprime if the x_(i) are all different. The remainder of the division by P_(i)(X) of a polynomial P(X) is P(x_(i)).

Now, let A₁, …, A_(k) be constants (polynomials of degree 0) in K. Both Lagrange interpolation and Chinese remainder theorem assert the existence of a unique polynomial P(X), of degree less than k such that

_P_(_x__(_i_)) = _A__(_i_),

for every i.

Lagrange interpolation formula is exactly the result, in this case, of the above construction of the solution. More precisely, let

$$\begin{align}
  Q(X)  &= \prod_{i=1}^{k}(X-x_i) \\[6pt]
 Q_i(X) &= \frac{Q(X)}{X-x_i}.
\end{align}$$

The partial fraction decomposition of $\frac{1}{Q(X)}$ is

$$\frac{1}{Q(X)} = \sum_{i=1}^k \frac{1}{Q_i(x_i)(X-X_i)}.$$

In fact, reducing the right-hand side to a common denominator one gets

$$\sum_{i=1}^k \frac{1}{Q_i(x_i)(X-X_i)}= \frac{1}{Q(X)} \sum_{i=1}^k \frac{Q_i(X)}{Q_i(x_i)},$$

and the numerator is equal to one, as being a polynomial of degree less than k, which takes the value one for k different values of X.

Using the above general formula, we get the Lagrange interpolation formula:

$$P(X)=\sum_{i=1}^k A_i\frac{Q_i(X)}{Q_i(x_i)}.$$

Hermite interpolation

Hermite interpolation is an application of the Chinese remainder theorem for univariate polynomials, which may involve moduli of arbitrary degrees (Lagrange interpolation involves only moduli of degree one).

The problem consists of finding a polynomial of the least possible degree, such that the polynomial and its first derivatives take given values at some fixed points.

More precisely, let x₁, …, x_(k) be k elements of the ground field K, and, for i = 1, …, k, let a_(i, 0), a_(i, 1), …, a_(i, r_(i) − 1) be the values of the first r_(i) derivatives of the sought polynomial at x_(i) (including the 0th derivative, which is the value of the polynomial itself). The problem is to find a polynomial P(X) such that its _j_th derivative takes the value a_(i, j) at x_(i), for i = 1, …, k and j = 0, …, r_(j).

Consider the polynomial

$$P_i(X) = \sum_{j=0}^{r_i - 1}\frac{a_{i,j}}{j!}(X - x_i)^j.$$
This is the Taylor polynomial of order r_(i) − 1 at x_(i), of the unknown polynomial P(X). Therefore, we must have

$$P(X)\equiv P_i(X) \pmod {(X-x_i)^{r_i}}.$$

Conversely, any polynomial P(X) that satisfies these k congruences, in particular verifies, for any i = 1, …, k

_P_(_X_) = _P__(_i_)(_X_) + _o_(_X_ − _x__(_i_))^(_r__(_i_) − 1)
therefore P_(i)(X) is its Taylor polynomial of order r_(i) − 1 at x_(i), that is, P(X) solves the initial Hermite interpolation problem. The Chinese remainder theorem asserts that there exists exactly one polynomial of degree less than the sum of the r_(i), which satisfies these k congruences.

There are several ways for computing the solution P(X). One may use the method described at the beginning of . One may also use the constructions given in or .


Generalization to non-coprime moduli

The Chinese remainder theorem can be generalized to non-coprime moduli. Let m, n, a, b be any integers, let g = gcd (m, n), and consider the system of congruences:

$$\begin{align}
x &\equiv a \pmod {m} \\
x &\equiv b \pmod {n},
\end{align}$$
If $a \equiv b \pmod g$, then this system of equations has a unique solution modulo lcm (m, n) = mn/g. Otherwise, it has no solutions.

If we use Bézout's identity to write g = um + vn, then the solution is

$$x = \frac{avn+bum}{g}.$$
This defines an integer, as divides both and . Otherwise, the proof is very similar to that for coprime moduli.


Generalization to arbitrary rings

The Chinese remainder theorem can be generalized to any ring, by using coprime ideals (also called comaximal ideals). Two ideals and are coprime if there are elements i ∈ I and j ∈ J such that i + j = 1. This relation plays the role of Bézout's identity in the proofs related to this generalization, which, otherwise are very similar. The generalization may be stated as follows.[14]

Let be two-sided ideals of a ring R and let be their intersection. If the ideals are pairwise coprime, we have the isomorphism:

$$\begin{align}
    R/I &\to R/I_1 \times \cdots \times R/I_k \\
  x\ \operatorname{mod} I &\mapsto (x\ \operatorname{mod} I_1,\, \ldots,\, x\ \operatorname{mod} I_k),
\end{align}$$
between the quotient ring R/I and the direct product of the R/I_(i), where "xmod I" denotes the image of the element x in the quotient ring defined by the ideal I. Moreover, if R is commutative, then the ideal intersection is equal to the product of the ideals I_(i):

_I_ = _I_₁ ∩ _I_₂ ∩ ⋯ ∩ _I__(_k_) = _I_₁_I_₂⋯_I__(_k_).


Applications

Sequence numbering

The Chinese remainder theorem has been used to construct a Gödel numbering for sequences, which is involved in the proof of Gödel's incompleteness theorems.

Fast Fourier transform

The prime-factor FFT algorithm (also called Good-Thomas algorithm) uses the Chinese remainder theorem for reducing the computation of a fast Fourier transform of size n₁n₂ to the computation of two fast Fourier transforms of smaller sizes n₁ and n₂ (providing that n₁ and n₂ are coprime).

Encryption

Most implementations of RSA use the Chinese remainder theorem during signing of HTTPS certificates and during decryption.

The Chinese remainder theorem can also be used in secret sharing, which consists of distributing a set of shares among a group of people who, all together (but no one alone), can recover a certain secret from the given set of shares. Each of the shares is represented in a congruence, and the solution of the system of congruences using the Chinese remainder theorem is the secret to be recovered. Secret sharing using the Chinese remainder theorem uses, along with the Chinese remainder theorem, special sequences of integers that guarantee the impossibility of recovering the secret from a set of shares with less than a certain cardinality.

Range ambiguity resolution

The range ambiguity resolution techniques used with medium pulse repetition frequency radar can be seen as a special case of the Chinese remainder theorem.

Dedekind's theorem

DEDEKIND'S THEOREM ON THE LINEAR INDEPENDENCE OF CHARACTERS. Let be a monoid and an integral domain, viewed as a monoid by considering the multiplication on . Then any finite family of distinct monoid homomorphisms is linearly independent. In other words, every family of elements satisfying

∑_(_i_ ∈ _I_)_α__(_i_)_f__(_i_) = 0

must be equal to the family .

PROOF. First assume that is a field, otherwise, replace the integral domain by its quotient field, and nothing will change. We can linearly extend the monoid homomorphisms to -algebra homomorphisms , where is the monoid ring of over . Then, by linearity, the condition

∑_(_i_ ∈ _I_)_α__(_i_)_f__(_i_) = 0,

yields

∑_(_i_ ∈ _I_)_α__(_i_)_F__(_i_) = 0.

Next, for the two -linear maps and are not proportional to each other. Otherwise and would also be proportional, and thus equal since as monoid homomorphisms they satisfy: 1 {{=}}  _f_(j)_ (1)}}, which contradicts the assumption that they are distinct.

Therefore, the kernels and are distinct. Since _k_}} is a field, is a maximal ideal of for every . Because they are distinct and maximal the ideals and are coprime whenever . The Chinese Remainder Theorem (for general rings) yields an isomorphism:

$$\begin{align}
  \phi: k[M] / K &\to \prod_{i \in I}k[M] / \mathrm{Ker} F_i \\
     \phi(x + K) &= \left(x + \mathrm{Ker} F_i\right)_{i \in I}
\end{align}$$

where

_K_ = ∏_(_i_ ∈ _I_)_K__e__r__F__(_i_) = ⋂_(_i_ ∈ _I_)_K__e__r__F__(_i_).

Consequently, the map

$$\begin{align}
  \Phi: k[M] &\to \prod_{i \in I}k[M]/ \mathrm{Ker} F_i \\
     \Phi(x) &= \left(x + \mathrm{Ker} F_i\right)_{i \in I}
\end{align}$$

is surjective. Under the isomorphisms _k_,}} the map corresponds to:

$$\begin{align}
  \psi: k[M] &\to \prod_{i \in I}k \\
     \psi(x) &= \left[F_i(x)\right]_{i \in I}
\end{align}$$

Now,

∑_(_i_ ∈ _I_)_α__(_i_)_F__(_i_) = 0

yields

∑_(_i_ ∈ _I_)_α__(_i_)_u__(_i_) = 0

for every vector in the image of the map . Since is surjective, this means that

∑_(_i_ ∈ _I_)_α__(_i_)_u__(_i_) = 0

for every vector

(_u__(_i_))_(_i_ ∈ _I_) ∈ ∏_(_i_ ∈ _I_)_k_.

Consequently, (0)_(_i_∈_I_)}}. QED.


See also

-   Covering system
-   Hasse principle
-   Residue number system


Notes


References

-   -   . See in particular Section 2.5, "Helly Property", pp. 393–394.

-   -   -   -   -   -


Further reading

-   . See Section 31.5: The Chinese remainder theorem, pp. 873–876.

-   -   -   . See Section 4.3.2 (pp. 286–291), exercise 4.6.2–3 (page 456).


External links

-   -   -   -   Full text of the Sunzi Suanjing (Chinese) Chinese Text Project

Category:Articles containing proofs Sun, Master Category:Commutative algebra Category:Modular arithmetic Category:Theorems in number theory

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