published the first and second proofs of the law of quadratic reciprocity on arts 125–146 and 262 of _Disquisitiones Arithmeticae_ in 1801.]] In number theory, the LAW OF QUADRATIC RECIPROCITY is a theorem about modular arithmetic that gives conditions for the solvability of quadratic equations modulo prime numbers. Due to its subtlety, it has many formulations, but the most standard statement is: . }}

This law allows the easy calculation of any Legendre symbol, making it possible to determine whether there is an integer solution for any quadratic equation of the form $x^2\equiv a \!\!\!\pmod{p}$ for _p_ an odd prime; that is, to determine the "perfect squares" mod _p_. However, this is a non-constructive result: it gives no help at all for _finding_ a specific solution; for this, one uses quadratic residues.

The theorem was conjectured by Euler and Legendre and first proved by Gauss.[1] He refers to it as the "fundamental theorem" in the _Disquisitiones Arithmeticae_ and his papers, writing

    _The fundamental theorem must certainly be regarded as one of the most elegant of its type._ (Art. 151)

Privately he referred to it as the "golden theorem."[2] He published six proofs, and two more were found in his posthumous papers. There are now over 240 published proofs.[3]

Since Gauss, generalizing the reciprocity law has been a leading problem in mathematics, and has been crucial to the development of much of the machinery of modern algebra, number theory, and algebraic geometry, culminating in Artin reciprocity, class field theory, and the Langlands program.


Motivating examples

Quadratic reciprocity arises from certain subtle factorization patterns involving perfect square numbers. In this section, we give examples which lead to the general case.

Factoring _n_² − 5

Consider the polynomial f(n) = n² − 5 and its values for $n \in \N.$ The prime factorizations of these values are given as follows:

+-----+-----+---------+-----+----+---------+----------+--+
| _n_ |     |         | _n_ |    |         | _n_      |  |
+=====+=====+=========+=====+====+=========+==========+==+
| 1   | −4  | −2²     |     | 16 | 251     | 251      |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 2   | −1  | −1      |     | 17 | 284     | 2²⋅71    |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 3   | 4   | 2²      |     | 18 | 319     | 11⋅29    |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 4   | 11  | 11      |     | 19 | 356     | 2²⋅89    |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 5   | 20  | 2²⋅5    |     | 20 | 395     | 5⋅79     |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 6   | 31  | 31      |     | 21 | 436     | 2²⋅109   |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 7   | 44  | 2²⋅11   |     | 22 | 479     | 479      |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 8   | 59  | 59      |     | 23 | 524     | 2²⋅131   |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 9   | 76  | 2²⋅19   |     | 24 | 571     | 571      |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 10  | 95  | 5⋅19    |     | 25 | 620     | 2²⋅5⋅31  |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 11  | 116 | 2²⋅29   |     | 26 | 671     | 11⋅61    |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 12  | 139 | 139     |     | 27 | 724     | 2²⋅181   |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 13  | 164 | 2²⋅41   |     | 28 | 779     | 19⋅41    |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 14  | 191 | 191     |     | 29 | 836     | 2²⋅11⋅19 |  |
+-----+-----+---------+-----+----+---------+----------+--+
| 15  | 220 | 2²⋅5⋅11 |     | 30 | 895     | 5⋅179    |  |
+-----+-----+---------+-----+----+---------+----------+--+

The prime factors p dividing f(n) are p = 2, 5, and every prime whose final digit is 1 or 9; no primes ending in 3 or 7 ever appear. Now, p is a prime factor of some n² − 5 whenever n² − 5 ≡ 0 (mod p), i.e. whenever n² ≡ 5 (mod p), i.e. whenever 5 is a quadratic residue modulo p. This happens for p = 2, 5 and those primes with p ≡ 1, 4 (mod 5)​, and note that the latter numbers 1 = ( ± 1)² and 4 = ( ± 2)² are precisely the quadratic residues modulo 5. Therefore, except for p = 2, 5, we have that 5 is a quadratic residue modulo p iff p is a quadratic residue modulo 5.

The law of quadratic reciprocity gives a similar characterization of prime divisors of f(n) = n² − q for any prime _q_, which leads to a characterization for any integer q.

Patterns among quadratic residues

Let _p_ be an odd prime. A number modulo _p_ is a quadratic residue whenever it is congruent to a square (mod _p_); otherwise it is a quadratic non-residue. ("Quadratic" can be dropped if it is clear from the context.) Here we exclude zero as a special case. Then as a consequence of the fact that the multiplicative group of a finite field of order _p_ is cyclic of order _p-1_, the following statements hold:

-   There are an equal number of quadratic residues and non-residues; and
-   The product of two quadratic residues is a residue, the product of a residue and a non-residue is a non-residue, and the product of two non-residues is a residue.

For the avoidance of doubt, these statements do _not_ hold if the modulus is not prime. For example, there are only 2 quadratic residues (1 and 4) in the multiplicative group modulo 15. Moreover although 7 and 8 are quadratic non-residues, their product 7x8 = 11 is also a quadratic non-residue, in contrast to the prime case.

Quadratic residues are entries in the following table:

  _n_      1   2   3   4    5    6    7    8    9    10    11    12    13    14    15    16    17    18    19    20    21    22    23    24    25
  -------- --- --- --- ---- ---- ---- ---- ---- ---- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  _n_²     1   4   9   16   25   36   49   64   81   100   121   144   169   196   225   256   289   324   361   400   441   484   529   576   625
  mod 3    1   1   0   1    1    0    1    1    0    1     1     0     1     1     0     1     1     0     1     1     0     1     1     0     1
  mod 5    1   4   4   1    0    1    4    4    1    0     1     4     4     1     0     1     4     4     1     0     1     4     4     1     0
  mod 7    1   4   2   2    4    1    0    1    4    2     2     4     1     0     1     4     2     2     4     1     0     1     4     2     2
  mod 11   1   4   9   5    3    3    5    9    4    1     0     1     4     9     5     3     3     5     9     4     1     0     1     4     9
  mod 13   1   4   9   3    12   10   10   12   3    9     4     1     0     1     4     9     3     12    10    10    12    3     9     4     1
  mod 17   1   4   9   16   8    2    15   13   13   15    2     8     16    9     4     1     0     1     4     9     16    8     2     15    13
  mod 19   1   4   9   16   6    17   11   7    5    5     7     11    17    6     16    9     4     1     0     1     4     9     16    6     17
  mod 23   1   4   9   16   2    13   3    18   12   8     6     6     8     12    18    3     13    2     16    9     4     1     0     1     4
  mod 29   1   4   9   16   25   7    20   6    23   13    5     28    24    22    22    24    28    5     13    23    6     20    7     25    16
  mod 31   1   4   9   16   25   5    18   2    19   7     28    20    14    10    8     8     10    14    20    28    7     19    2     18    5
  mod 37   1   4   9   16   25   36   12   27   7    26    10    33    21    11    3     34    30    28    28    30    34    3     11    21    33
  mod 41   1   4   9   16   25   36   8    23   40   18    39    21    5     32    20    10    2     37    33    31    31    33    37    2     10
  mod 43   1   4   9   16   25   36   6    21   38   14    35    15    40    24    10    41    31    23    17    13    11    11    13    17    23
  mod 47   1   4   9   16   25   36   2    17   34   6     27    3     28    8     37    21    7     42    32    24    18    14    12    12    14

  : Squares mod primes

This table is complete for odd primes less than 50. To check whether a number _m_ is a quadratic residue mod one of these primes _p_, find _a_ ≡ _m_ (mod _p_) and 0 ≤ _a_ < _p_. If _a_ is in row _p_, then _m_ is a residue (mod _p_); if _a_ is not in row _p_ of the table, then _m_ is a nonresidue (mod _p_).

The quadratic reciprocity law is the statement that certain patterns found in the table are true in general.

===_q_ = ±1 and the first supplement===

Trivially 1 is a quadratic residue for all primes. The question becomes more interesting for −1. Examining the table, we find −1 in rows 5, 13, 17, 29, 37, and 41 but not in rows 3, 7, 11, 19, 23, 31, 43 or 47. The former set of primes are all congruent to 1 modulo 4, and the latter are congruent to 3 modulo 4.

    FIRST SUPPLEMENT TO QUADRATIC RECIPROCITY. The congruence $x^2 \equiv -1 \pmod{p}$ is solvable if and only if p is congruent to 1 modulo 4.

===_q_ = ±2 and the second supplement=== Examining the table, we find 2 in rows 7, 17, 23, 31, 41, and 47, but not in rows 3, 5, 11, 13, 19, 29, 37, or 43. The former primes are all ≡ ±1 (mod 8), and the latter are all ≡ ±3 (mod 8). This leads to

    SECOND SUPPLEMENT TO QUADRATIC RECIPROCITY. The congruence $x^2 \equiv 2 \pmod{p}$ is solvable if and only if p is congruent to ±1 modulo 8.

−2 is in rows 3, 11, 17, 19, 41, 43, but not in rows 5, 7, 13, 23, 29, 31, 37, or 47. The former are ≡ 1 or ≡ 3 (mod 8), and the latter are ≡ 5, 7 (mod 8).

===_q_ = ±3=== 3 is in rows 11, 13, 23, 37, and 47, but not in rows 5, 7, 17, 19, 29, 31, 41, or 43. The former are ≡ ±1 (mod 12) and the latter are all ≡ ±5 (mod 12).

−3 is in rows 7, 13, 19, 31, 37, and 43 but not in rows 5, 11, 17, 23, 29, 41, or 47. The former are ≡ 1 (mod 3) and the latter ≡ 2 (mod 3).

Since the only residue (mod 3) is 1, we see that −3 is a quadratic residue modulo every prime which is a residue modulo 3.

===_q_ = ±5=== 5 is in rows 11, 19, 29, 31, and 41 but not in rows 3, 7, 13, 17, 23, 37, 43, or 47. The former are ≡ ±1 (mod 5) and the latter are ≡ ±2 (mod 5).

Since the only residues (mod 5) are ±1, we see that 5 is a quadratic residue modulo every prime which is a residue modulo 5.

−5 is in rows 3, 7, 23, 29, 41, 43, and 47 but not in rows 11, 13, 17, 19, 31, or 37. The former are ≡ 1, 3, 7, 9 (mod 20) and the latter are ≡ 11, 13, 17, 19 (mod 20).

Higher _q_

The observations about −3 and 5 continue to hold: −7 is a residue modulo _p_ if and only if _p_ is a residue modulo 7, −11 is a residue modulo _p_ if and only if _p_ is a residue modulo 11, 13 is a residue (mod _p_) if and only if _p_ is a residue modulo 13, etc. The more complicated-looking rules for the quadratic characters of 3 and −5, which depend upon congruences modulo 12 and 20 respectively, are simply the ones for −3 and 5 working with the first supplement.

    EXAMPLE. For −5 to be a residue (mod _p_), either both 5 and −1 have to be residues (mod _p_) or they both have to be non-residues: i.e., _p_ ≡ ±1 (mod 5) _and_ _p_ ≡ 1 (mod 4) or _p_ ≡ ±2 (mod 5) _and_ _p_ ≡ 3 (mod 4). Using the Chinese remainder theorem these are equivalent to _p_ ≡ 1, 9 (mod 20) or _p_ ≡ 3, 7 (mod 20).

The generalization of the rules for −3 and 5 is Gauss's statement of quadratic reciprocity.

Legendre's version

Another way to organize the data is to see which primes are residues mod which other primes, as illustrated in the following table. The entry in row _p_ column _q_ is R if _q_ is a quadratic residue (mod _p_); if it is a nonresidue the entry is N.

If the row, or the column, or both, are ≡ 1 (mod 4) the entry is blue or green; if both row and column are ≡ 3 (mod 4), it is yellow or orange.

The blue and green entries are symmetric around the diagonal: The entry for row _p_, column _q_ is R (resp N) if and only if the entry at row _q_, column _p_, is R (resp N).

The yellow and orange ones, on the other hand, are antisymmetric: The entry for row _p_, column _q_ is R (resp N) if and only if the entry at row _q_, column _p_, is N (resp R).

The reciprocity law states that these patterns hold for all _p_ and _q_.

  --- --------------------------------- ---------------------------------------------------
  R   _q_ is a residue (mod _p_)           _q_ ≡ 1 (mod 4) or _p_ ≡ 1 (mod 4) (or both)  
  N   _q_ is a nonresidue (mod _p_)  
  R   _q_ is a residue (mod _p_)        both _q_ ≡ 3 (mod 4) and _p_ ≡ 3 (mod 4)
  N   _q_ is a nonresidue (mod _p_)  
  --- --------------------------------- ---------------------------------------------------

  : Legend

  ----- -----
        _q_
  3     5
  _p_   3
  5     N
  7     N
  11    R
  13    R
  17    N
  19    N
  23    R
  29    N
  31    N
  37    R
  41    N
  43    N
  47    R
  53    N
  59    R
  61    R
  67    N
  71    R
  73    R
  79    N
  83    R
  89    N
  97    R
  ----- -----


Statement of the theorem

QUADRATIC RECIPROCITY (GAUSS'S STATEMENT). If $q \equiv 1\!\!\! \pmod{4}$ then the congruence $x^2 \equiv p\!\!\! \pmod{q}$ is solvable if and only if $x^2 \equiv q\!\!\! \pmod{p}$ is solvable. If $q \equiv 3\!\!\! \pmod{4}$ then the congruence $x^2 \equiv p\!\!\! \pmod{q}$ is solvable if and only if $x^2 \equiv -q\!\!\! \pmod{p}$ is solvable.

QUADRATIC RECIPROCITY (COMBINED STATEMENT). Define $q^* = (-1)^{\frac{q-1}{2}}q$. Then the congruence $x^2 \equiv p\!\!\! \pmod{q}$ is solvable if and only if $x^2 \equiv q^*\!\!\! \pmod{p}$ is solvable.

QUADRATIC RECIPROCITY (LEGENDRE'S STATEMENT). If _p_ or _q_ are congruent to 1 modulo 4, then: $x^2 \equiv q\!\!\! \pmod{p}$ is solvable if and only if $x^2 \equiv p\!\!\! \pmod{q}$ is solvable. If _p_ and _q_ are congruent to 3 modulo 4, then: $x^2 \equiv q\!\!\! \pmod{p}$ is solvable if and only if $x^2 \equiv p\!\!\! \pmod{q}$ is not solvable.

The last is immediately equivalent to the modern form stated in the introduction above. It is a simple exercise to prove that Legendre's and Gauss's statements are equivalent – it requires no more than the first supplement and the facts about multiplying residues and nonresidues.


History and alternative statements

The theorem was formulated in many ways before its modern form: Euler and Legendre did not have Gauss's congruence notation, nor did Gauss have the Legendre symbol.

In this article _p_ and _q_ always refer to distinct positive odd primes, and _x_ and _y_ to unspecified integers.

Fermat

Fermat proved[4] (or claimed to have proved)[5] a number of theorems about expressing a prime by a quadratic form:

$$\begin{align}
p=x^2+ y^2 \qquad &\Longleftrightarrow \qquad p=2 \quad  \text{ or } \quad p\equiv 1 \pmod{4} \\
p=x^2+2y^2 \qquad &\Longleftrightarrow \qquad p=2 \quad  \text{ or } \quad p\equiv 1, 3 \pmod{8} \\
p=x^2+3y^2 \qquad &\Longleftrightarrow \qquad p=3 \quad \text{ or } \quad p\equiv 1 \pmod{3} \\
\end{align}$$

He did not state the law of quadratic reciprocity, although the cases −1, ±2, and ±3 are easy deductions from these and other of his theorems.

He also claimed to have a proof that if the prime number _p_ ends with 7, (in base 10) and the prime number _q_ ends in 3, and _p_ ≡ _q_ ≡ 3 (mod 4), then

_p__q_ = _x_² + 5_y_².

Euler conjectured, and Lagrange proved, that[6]

$$\begin{align}
p &\equiv 1, 9 \pmod{20}\quad \Longrightarrow \quad p = x^2+5y^2 \\
p, q &\equiv 3, 7 \pmod{20} \quad \Longrightarrow  \quad pq=x^2+5y^2
\end{align}$$

Proving these and other statements of Fermat was one of the things that led mathematicians to the reciprocity theorem.

Euler

Translated into modern notation, Euler stated [7] that for distinct odd primes _p_ and _q_:

1.  If _q_ ≡ 1 (mod 4) then _q_ is a quadratic residue (mod _p_) if and only if there exists some integer _b_ such that _p_ ≡ _b_² (mod _q_).
2.  If _q_ ≡ 3 (mod 4) then _q_ is a quadratic residue (mod _p_) if and only if there exists some integer _b_ which is odd and not divisible by _q_ such that _p_ ≡ ±_b_² (mod 4_q_).

This is equivalent to quadratic reciprocity.

He could not prove it, but he did prove the second supplement.[8]

Legendre and his symbol

Fermat proved that if _p_ is a prime number and _a_ is an integer,

$$a^p\equiv a \pmod{p}.$$

Thus if _p_ does not divide _a_, using the non-obvious fact (see for example Ireland and Rosen below) that the residues modulo _p_ form a field and therefore in particular the multiplicative group is cyclic, hence there can be at most two solutions to a quadratic equation:

$$a^{\frac{p-1}{2}} \equiv \pm 1 \pmod{p}.$$

Legendre[9] lets _a_ and _A_ represent positive primes ≡ 1 (mod 4) and _b_ and _B_ positive primes ≡ 3 (mod 4), and sets out a table of eight theorems that together are equivalent to quadratic reciprocity:

  Theorem   When                                    it follows that
  --------- --------------------------------------- ---------------------------------------
  I         $b^{\frac{a-1}{2}}\equiv 1 \pmod{a}$    $a^{\frac{b-1}{2}}\equiv 1 \pmod{b}$
  II        $a^{\frac{b-1}{2}}\equiv -1 \pmod{b}$   $b^{\frac{a-1}{2}}\equiv -1 \pmod{a}$
  III       $a^{\frac{A-1}{2}}\equiv 1 \pmod{A}$    $A^{\frac{a-1}{2}}\equiv 1 \pmod{a}$
  IV        $a^{\frac{A-1}{2}}\equiv -1 \pmod{A}$   $A^{\frac{a-1}{2}}\equiv -1 \pmod{a}$
  V         $a^{\frac{b-1}{2}}\equiv 1 \pmod{b}$    $b^{\frac{a-1}{2}}\equiv 1 \pmod{a}$
  VI        $b^{\frac{a-1}{2}}\equiv -1 \pmod{a}$   $a^{\frac{b-1}{2}}\equiv -1 \pmod{b}$
  VII       $b^{\frac{B-1}{2}}\equiv 1 \pmod{B}$    $B^{\frac{b-1}{2}}\equiv -1 \pmod{b}$
  VIII      $b^{\frac{B-1}{2}}\equiv -1 \pmod{B}$   $B^{\frac{b-1}{2}}\equiv 1 \pmod{b}$

He says that since expressions of the form

$$N^{\frac{c-1}{2}}\pmod{c}, \qquad \gcd(N, c) = 1$$

will come up so often he will abbreviate them as:

$$\left(\frac{N}{c}\right) \equiv N^{\frac{c-1}{2}} \pmod{c} = \pm 1.$$

This is now known as the Legendre symbol, and an equivalent[10][11] definition is used today: for all integers _a_ and all odd primes _p_

$$\left(\frac{a}{p}\right)  = \left\{\begin{array}{rl} 0 & a \equiv 0 \pmod{p} \\ 1 & a \not\equiv 0\pmod{p} \text{ and } \exists x : a\equiv x^2\pmod{p} \\-1 &a \not\equiv 0\pmod{p} \text{ and there is no such } x. \end{array}\right.$$

Legendre's version of quadratic reciprocity

$$\left(\frac{p}{q}\right) = \left\{\begin{array}{rl}
  \left(\tfrac{q}{p}\right) & p\equiv 1 \pmod{4} \quad \text{ or } \quad q \equiv 1 \pmod{4} \\
-\left(\tfrac{q}{p}\right) & p \equiv 3 \pmod{4} \quad \text{ and } \quad q \equiv 3 \pmod{4}
\end{array}\right.$$

He notes that these can be combined:

$$\left(\frac{p}{q}\right) \left(\frac{q}{p}\right) = (-1)^{\frac{p-1}{2}\frac{q-1}{2}}.$$

A number of proofs, especially those based on Gauss's Lemma,E.g. Kronecker's proof (Lemmermeyer, ex. p. 31, 1.34) is to use Gauss's lemma to establish that

$$\left(\frac{p}{q}\right) =\sgn\prod_{i=1}^{\frac{q-1}{2}}\prod_{k=1}^{\frac{p-1}{2}}\left(\frac{k}{p}-\frac{i}{q}\right)$$
and then switch _p_ and _q_. explicitly calculate this formula.

The supplementary laws using Legendre symbols

$$\begin{align}
\left(\frac{-1}{p}\right)  &= (-1)^{\frac{p-1}{2}} = \left\{\begin{array}{rl} 1 &p \equiv 1 \pmod{4}\\ -1 & p \equiv 3 \pmod{4}\end{array}\right. \\
\left(\frac{2}{p}\right)  &= (-1)^{\frac{p^2-1}{8}}  = \left\{\begin{array}{rl} 1 & p \equiv 1, 7 \pmod{8}\\ -1 & p \equiv 3, 5\pmod{8}\end{array}\right.
\end{align}$$

Legendre's attempt to prove reciprocity is based on a theorem of his:

    LEGENDRE'S THEOREM. Let _a_, _b_ and _c_ be integers where any pair of the three are relatively prime. Moreover assume that at least one of _ab_, _bc_ or _ca_ is negative (i.e. they don't all have the same sign). If
    :\begin{align}

u^2 &\equiv -bc \pmod{a} \\ v^2 &\equiv -ca \pmod{b} \\ w^2 &\equiv -ab \pmod{c} \end{align}

    are solvable then the following equation has a nontrivial solution in integers:
    _a__x_² + _b__y_² + _c__z_² = 0.

EXAMPLE. Theorem I is handled by letting _a_ ≡ 1 and _b_ ≡ 3 (mod 4) be primes and assuming that $\left (\tfrac{b}{a} \right) = 1$ and, contrary the theorem, that $\left (\tfrac{a}{b} \right ) = -1.$ Then x² + ay² − bz² = 0 has a solution, and taking congruences (mod 4) leads to a contradiction.

This technique doesn't work for Theorem VIII. Let _b_ ≡ _B_ ≡ 3 (mod 4), and assume

$$\left (\frac{B}{b} \right ) = \left (\frac{b}{B} \right ) = -1.$$

Then if there is another prime _p_ ≡ 1 (mod 4) such that

$$\left (\frac{p}{b} \right ) = \left (\frac{p}{B} \right ) = -1,$$

the solvability of Bx² + by² − pz² = 0 leads to a contradiction (mod 4). But Legendre was unable to prove there has to be such a prime _p_; he was later able to show that all that is required is:

    LEGENDRE'S LEMMA. If _p_ is a prime that is congruent to 1 modulo 4 then there exists an odd prime _q_ such that $\left (\tfrac{p}{q} \right ) = -1.$

but he couldn't prove that either. Hilbert symbol (below) discusses how techniques based on the existence of solutions to ax² + by² + cz² = 0 can be made to work.

Gauss

'', listing the 8 cases of quadratic reciprocity]]

Gauss first proves[12] the supplementary laws. He sets[13] the basis for induction by proving the theorem for ±3 and ±5. Noting[14] that it is easier to state for −3 and +5 than it is for +3 or −5, he states[15] the general theorem in the form:

    If _p_ is a prime of the form 4_n_ + 1 then _p_, but if _p_ is of the form 4_n_ + 3 then −_p_, is a quadratic residue (resp. nonresidue) of every prime, which, with a positive sign, is a residue (resp. nonresidue) of _p_. In the next sentence, he christens it the "fundamental theorem" (Gauss never used the word "reciprocity").

Introducing the notation _a_ R _b_ (resp. _a_ N _b_) to mean _a_ is a quadratic residue (resp. nonresidue) (mod _b_), and letting _a_, _a_′, etc. represent positive primes ≡ 1 (mod 4) and _b_, _b_′, etc. positive primes ≡ 3 (mod 4), he breaks it out into the same 8 cases as Legendre:

+------+-------------+-------------+
| Case | If          | Then        |
+======+=============+=============+
| 1)   | ±_a_ R _a_′ | ±_a_′ R _a_ |
+------+-------------+-------------+
| 2)   | ±_a_ N _a_′ | ±_a_′ N _a_ |
+------+-------------+-------------+
| 3)   | +_a_ R _b_  | ±_b_ R _a_  |
|      | −_a_ N _b_  |             |
+------+-------------+-------------+
| 4)   | +_a_ N _b_  | ±_b_ N _a_  |
|      | −_a_ R _b_  |             |
+------+-------------+-------------+
| 5)   | ±_b_ R _a_  | +_a_ R _b_  |
|      |             | −_a_ N _b_  |
+------+-------------+-------------+
| 6)   | ±_b_ N _a_  | +_a_ N _b_  |
|      |             | −_a_ R _b_  |
+------+-------------+-------------+
| 7)   | +_b_ R _b_′ | −_b_′ N _b_ |
|      | −_b_ N _b_′ | +_b_′ R _b_ |
+------+-------------+-------------+
| 8)   | −_b_ N _b_′ | +_b_′ R _b_ |
|      | +_b_ R _b_′ | −_b_′ N _b_ |
+------+-------------+-------------+

In the next Article he generalizes this to what are basically the rules for the Jacobi symbol (below). Letting _A_, _A_′, etc. represent any (prime or composite) positive numbers ≡ 1 (mod 4) and _B_, _B_′, etc. positive numbers ≡ 3 (mod 4):

+------+------------+------------+
| Case | If         | Then       |
+======+============+============+
| 9)   | ±_a_ R _A_ | ±_A_ R _a_ |
+------+------------+------------+
| 10)  | ±_b_ R _A_ | +_A_ R _b_ |
|      |            | −_A_ N _b_ |
+------+------------+------------+
| 11)  | +_a_ R _B_ | ±_B_ R _a_ |
+------+------------+------------+
| 12)  | −_a_ R _B_ | ±_B_ N _a_ |
+------+------------+------------+
| 13)  | +_b_ R _B_ | −_B_ N _b_ |
|      |            | +_N_ R _b_ |
+------+------------+------------+
| 14)  | −_b_ R _B_ | +_B_ R _b_ |
|      |            | −_B_ N _b_ |
+------+------------+------------+

All of these cases take the form "if a prime is a residue (mod a composite), then the composite is a residue or nonresidue (mod the prime), depending on the congruences (mod 4)". He proves that these follow from cases 1) - 8).

Gauss needed, and was able to prove,[16] a lemma similar to the one Legendre needed:

    GAUSS'S LEMMA. If _p_ is a prime congruent to 1 modulo 8 then there exists an odd prime _q_ such that:
    $$q <2\sqrt p+1 \quad \text{and} \quad \left(\frac{p}{q}\right) = -1.$$

The proof of quadratic reciprocity uses complete induction.

    GAUSS'S VERSION IN LEGENDRE SYMBOLS.
    $$\left(\frac{p}{q}\right) = \begin{cases}  \left(\frac{q}{p}\right) & q \equiv 1 \pmod{4} \\ \left(\frac{-q}{p}\right) & q \equiv 3 \pmod{4} \end{cases}$$

These can be combined:

    GAUSS'S COMBINED VERSION IN LEGENDRE SYMBOLS. Let
    $$q^* = (-1)^{\frac{q-1}{2}}q.$$

    In other words:
    $$|q^*|=|q| \quad \text{and} \quad q^*\equiv 1 \pmod{4}.$$

    Then:
    $$\left(\frac{p}{q}\right) = \left(\frac{q^*}{p}\right).$$

A number of proofs of the theorem, especially those based on Gauss sums derive this formula.[17] or the splitting of primes in algebraic number fields,[18]

Other statements

Note that the statements in this section are equivalent to quadratic reciprocity: if, for example, Euler's version is assumed, the Legendre-Gauss version can be deduced from it, and vice versa.

    EULER'S FORMULATION OF QUADRATIC RECIPROCITY.[19] If $p \equiv \pm q \pmod{4a}$ then $\left(\tfrac{a}{p}\right)=\left(\tfrac{a}{q}\right).$

This can be proven using Gauss's lemma.

    QUADRATIC RECIPROCITY (GAUSS; FOURTH PROOF).[20] Let _a_, _b_, _c_, ... be unequal positive odd primes, whose product is _n_, and let _m_ be the number of them that are ≡ 3 (mod 4); check whether _n_/_a_ is a residue of _a_, whether _n_/_b_ is a residue of _b_, .... The number of nonresidues found will be even when _m_ ≡ 0, 1 (mod 4), and it will be odd if _m_ ≡ 2, 3 (mod 4).

Gauss's fourth proof consists of proving this theorem (by comparing two formulas for the value of Gauss sums) and then restricting it to two primes. He then gives an example: Let _a_ = 3, _b_ = 5, _c_ = 7, and _d_ = 11. Three of these, 3, 7, and 11 ≡ 3 (mod 4), so _m_ ≡ 3 (mod 4). 5×7×11 R 3; 3×7×11 R 5; 3×5×11 R 7;  and  3×5×7 N 11, so there are an odd number of nonresidues.

    EISENSTEIN'S FORMULATION OF QUADRATIC RECIPROCITY.[21] Assume
    $$p\ne q,  \quad p'\ne q', \quad p \equiv p' \pmod{4}, \quad  q \equiv q' \pmod{4}.$$

    Then
    $$\left(\frac{p}{q}\right) \left(\frac{q}{p}\right) =\left(\frac{p'}{q'}\right) \left(\frac{q'}{p'}\right).$$

    MORDELL'S FORMULATION OF QUADRATIC RECIPROCITY.[22] Let _a_, _b_ and _c_ be integers. For every prime, _p_, dividing _abc_ if the congruence
    $$ax^2 + by^2 + cz^2 \equiv 0 \pmod{\tfrac{4abc}{p}}$$

    has a nontrivial solution, then so does:
    $$ax^2 + by^2 + cz^2 \equiv 0 \pmod{4abc}.$$

    ZETA FUNCTION FORMULATION
    As mentioned in the article on Dedekind zeta functions, quadratic reciprocity is equivalent to the zeta function of a quadratic field being the product of the Riemann zeta function and a certain Dirichlet L-function

Jacobi symbol

The Jacobi symbol is a generalization of the Legendre symbol; the main difference is that the bottom number has to be positive and odd, but does not have to be prime. If it is prime, the two symbols agree. It obeys the same rules of manipulation as the Legendre symbol. In particular

$$\begin{align}
\left(\frac{-1}{n}\right) = (-1)^{\frac{n-1}{2}} &= \left\{\begin{array}{rl} 1 & n \equiv 1 \pmod{4}\\ -1 & n \equiv 3 \pmod{4}\end{array}\right. \\
\left(\frac{2}{n}\right)  = (-1)^{\frac{n^2-1}{8}} &= \left\{\begin{array}{rl} 1 & n \equiv 1, 7 \pmod{8}\\ -1 & n \equiv 3, 5\pmod{8}\end{array}\right.
\end{align}$$

and if both numbers are positive and odd (this is sometimes called "Jacobi's reciprocity law"):

$$\left(\frac{m}{n}\right) = (-1)^{\frac{(m-1)(n-1)}{4}}\left(\frac{n}{m}\right).$$

However, if the Jacobi symbol is 1 but the denominator is not a prime, it does not necessarily follow that the numerator is a quadratic residue of the denominator. Gauss's cases 9) - 14) above can be expressed in terms of Jacobi symbols:

$$\biggl(\frac{M}{p}\biggr) = (-1)^{\frac{(p-1)(M-1)}{4}} \biggl (\frac{p}{M}\biggr),$$

and since _p_ is prime the left hand side is a Legendre symbol, and we know whether _M_ is a residue modulo _p_ or not.

The formulas listed in the preceding section are true for Jacobi symbols as long as the symbols are defined. Euler's formula may be written

$$\biggl(\frac{a}{m}\biggr) =\biggl(\frac{a}{m \pm 4an}\biggr), \qquad n \in \Z,  m\pm4an>0.$$

EXAMPLE.

$$\left (\frac{2}{7} \right ) = \left (\frac{2}{15} \right ) = \left (\frac{2}{23} \right ) = \left (\frac{2}{31} \right ) = \cdots = 1.$$

2 is a residue modulo the primes 7, 23 and 31:

$$3^2 \equiv 2 \pmod{7}, \quad 5^2 \equiv 2 \pmod{23}, \quad 8^2 \equiv 2 \pmod{31}.$$

But 2 is not a quadratic residue modulo 5, so it can't be one modulo 15. This is related to the problem Legendre had: if $\left (\tfrac{a}{m} \right) = -1,$ then _a_ is a non-residue modulo every prime in the arithmetic progression _m_ + 4_a_, _m_ + 8_a_, ..., if there _are_ any primes in this series, but that wasn't proved until decades after Legendre.[23]

Eisenstein's formula requires relative primality conditions (which are true if the numbers are prime)

    Let a, b, a′, b′ be positive odd integers such that:
    :\begin{align}

\gcd &(a,b) =\gcd(a',b')= 1 \\ &a \equiv a' \pmod{4} \\ &b \equiv b' \pmod{4} \end{align}

    Then
    $$\biggl(\frac{a}{b}\biggr) \biggl(\frac{b}{a}\biggr) =\biggl(\frac{a'}{b'}\biggr) \biggl(\frac{b'}{a'}\biggr).$$

Hilbert symbol

The quadratic reciprocity law can be formulated in terms of the Hilbert symbol (a, b)_(v) where _a_ and _b_ are any two nonzero rational numbers and _v_ runs over all the non-trivial absolute values of the rationals (the archimedean one and the _p_-adic absolute values for primes _p_). The Hilbert symbol (a, b)_(v) is 1 or −1. It is defined to be 1 if and only if the equation ax² + by² = z² has a solution in the completion of the rationals at _v_ other than x = y = z = 0. The Hilbert reciprocity law states that (a, b)_(v), for fixed _a_ and _b_ and varying _v_, is 1 for all but finitely many _v_ and the product of (a, b)_(v) over all _v_ is 1. (This formally resembles the residue theorem from complex analysis.)

The proof of Hilbert reciprocity reduces to checking a few special cases, and the non-trivial cases turn out to be equivalent to the main law and the two supplementary laws of quadratic reciprocity for the Legendre symbol. There is no kind of reciprocity in the Hilbert reciprocity law; its name simply indicates the historical source of the result in quadratic reciprocity. Unlike quadratic reciprocity, which requires sign conditions (namely positivity of the primes involved) and a special treatment of the prime 2, the Hilbert reciprocity law treats all absolute values of the rationals on an equal footing. Therefore, it is a more natural way of expressing quadratic reciprocity with a view towards generalization: the Hilbert reciprocity law extends with very few changes to all global fields and this extension can rightly be considered a generalization of quadratic reciprocity to all global fields.


Connection with cyclotomic fields

The early proofs of quadratic reciprocity are relatively unilluminating. The situation changed when Gauss used Gauss sums to show that quadratic fields are subfields of cyclotomic fields, and implicitly deduced quadratic reciprocity from a reciprocity theorem for cyclotomic fields. His proof was cast in modern form by later algebraic number theorists. This proof served as a template for class field theory, which can be viewed as a vast generalization of quadratic reciprocity.

Robert Langlands formulated the Langlands program, which gives a conjectural vast generalization of class field theory. He wrote:[24]

    _I confess that, as a student unaware of the history of the subject and unaware of the connection with cyclotomy, I did not find the law or its so-called elementary proofs appealing. I suppose, although I would not have (and could not have) expressed myself in this way that I saw it as little more than a mathematical curiosity, fit more for amateurs than for the attention of the serious mathematician that I then hoped to become. It was only in Hermann Weyl's book on the algebraic theory of numbers[25] that I appreciated it as anything more._


Other rings

There are also quadratic reciprocity laws in rings other than the integers.

Gaussian integers

In his second monograph on quartic reciprocity[26] Gauss stated quadratic reciprocity for the ring $\Z[i]$ of Gaussian integers, saying that it is a corollary of the biquadratic law in $\Z[i],$ but did not provide a proof of either theorem. Dirichlet[27] showed that the law in $\Z[i]$ can be deduced from the law for $\Z$ without using biquadratic reciprocity.

For an odd Gaussian prime π and a Gaussian integer α relatively prime to π, define the quadratic character for $\Z[i]$ by:

    \left[\frac{\alpha}{\pi}\right]_2 \equiv \alpha^\frac{\mathrm{N} \pi - 1}{2}\pmod{\pi} =

\left\{\begin{array}{rl} 1 & \exists\, \eta \in \Z[i]: \alpha \equiv \eta^2 \pmod{\pi} \\ -1 & \text{otherwise} \end{array}\right.

Let λ = a + bi, μ = c + di be distinct Gaussian primes where _a_ and _c_ are odd and _b_ and _d_ are even. Then[28]

    $\left [\frac{\lambda}{\mu}\right ]_2 = \left [\frac{\mu}{\lambda}\right ]_2, \qquad \left [\frac{i}{\lambda}\right ]_2 =(-1)^\frac{b}{2}, \qquad \left [\frac{1+i}{\lambda}\right ]_2 =\left(\frac{2}{a+b}\right).$

Eisenstein integers

Consider the following third root of unity:

$$\omega = \frac{-1 + \sqrt{-3}}{2}=e^\frac{2\pi \imath}{3}.$$

The ring of Eisenstein integers is $\Z[\omega].$[29] For an Eisenstein prime π, Nπ ≠ 3, and an Eisenstein integer α with gcd (α, π) = 1, define the quadratic character for $\Z[\omega]$ by the formula

$$\left[\frac{\alpha}{\pi}\right]_2 \equiv \alpha^\frac{\mathrm{N} \pi - 1}{2}\pmod{\pi} =
\left\{\begin{array}{rl}
1 &\exists \eta \in \Z[\omega]: \alpha \equiv \eta^2 \pmod{\pi} \\
-1 &\text{otherwise}
\end{array}\right.$$

Let λ = _a_ + _bω_ and μ = _c_ + _dω_ be distinct Eisenstein primes where _a_ and _c_ are not divisible by 3 and _b_ and _d_ are divisible by 3. Eisenstein proved[30]

$$\left[\frac{\lambda}{\mu}\right]_2  \left [\frac{\mu}{\lambda}\right ]_2 = (-1)^{\frac{\mathrm{N} \lambda - 1}{2}\frac{\mathrm{N} \mu-1}{2}}, \qquad \left [\frac{1-\omega}{\lambda}\right ]_2 =\left(\frac{a}{3}\right), \qquad \left [\frac{2}{\lambda}\right ]_2 =\left (\frac{2}{\mathrm{N} \lambda }\right).$$

Imaginary quadratic fields

The above laws are special cases of more general laws that hold for the ring of integers in any imaginary quadratic number field. Let _k_ be an imaginary quadratic number field with ring of integers 𝒪_(k). For a prime ideal 𝔭 ⊂ 𝒪_(k) with odd norm N𝔭 and α ∈ 𝒪_(k), define the quadratic character for 𝒪_(k) as

$$\left[\frac{\alpha}{\mathfrak{p} }\right]_2 \equiv \alpha^{\frac{\mathrm{N} \mathfrak{p} - 1}{2}} \pmod{\mathfrak{p}} =
\left\{\begin{array}{rl}
1 &\alpha\not\in \mathfrak{p}   \text{ and } \exists \eta \in \mathcal{O}_k \text{ such that } \alpha - \eta^2 \in \mathfrak{p}  \\
-1 & \alpha\not\in \mathfrak{p}  \text{ and there is no such } \eta \\
0 & \alpha\in \mathfrak{p}
\end{array}\right.$$

for an arbitrary ideal 𝔞 ⊂ 𝒪_(k) factored into prime ideals 𝔞 = 𝔭₁⋯𝔭_(n) define

$$\left [\frac{\alpha}{\mathfrak{a}}\right ]_2 = \left[\frac{\alpha}{\mathfrak{p}_1 }\right]_2\cdots \left[\frac{\alpha}{\mathfrak{p}_n }\right]_2,$$

and for β ∈ 𝒪_(k) define

$$\left [\frac{\alpha}{\beta}\right ]_2 = \left [\frac{\alpha}{\beta \mathcal{O}_k}\right ]_2.$$

Let 𝒪_(k) = ℤω₁ ⊕ ℤω₂, i.e. {ω₁,ω₂} is an integral basis for 𝒪_(k). For ν ∈ 𝒪_(k) with odd norm Nν, define (ordinary) integers _a_, _b_, _c_, _d_ by the equations,

$$\begin{align}
\nu\omega_1&=a\omega_1+b\omega_2\\
\nu\omega_2&=c\omega_1+d\omega_2
\end{align}$$

and a function

_χ_(_ν_) := ı^((_b_² − _a_ + 2)_c_ + (_a_² − _b_ + 2)_d_ + _a__d_).

If _m_ = _Nμ_ and _n_ = _Nν_ are both odd, Herglotz proved[31]

$$\left [\frac{\mu}{\nu}\right ]_2 \left[\frac{\nu}{\mu}\right]_2 =  (-1)^{\frac{m-1}{2}\frac{n-1}{2}} \chi(\mu)^{m\frac{n-1}{2}} \chi(\nu)^{-n\frac{m-1}{2}}.$$

Also, if

$$\mu \equiv\mu' \pmod{4} \quad \text{and} \quad \nu \equiv\nu' \pmod{4}$$

Then[32]

$$\left [\frac{\mu}{\nu}\right ]_2 \left[\frac{\nu}{\mu}\right]_2 =  \left [\frac{\mu'}{\nu'}\right ]_2 \left[\frac{\nu'}{\mu'}\right]_2.$$

Polynomials over a finite field

Let _F_ be a finite field with _q_ = _p^(n)_ elements, where _p_ is an odd prime number and _n_ is positive, and let _F_[_x_] be the ring of polynomials in one variable with coefficients in _F_. If f, g ∈ F[x] and _f_ is irreducible, monic, and has positive degree, define the quadratic character for _F_[_x_] in the usual manner:

$$\left(\frac{g}{f}\right) = \left\{\begin{array}{rl}
1 & \gcd(f,g)=1 \text{ and } \exists h,k \in F[x] \text{ such that  }g-h^2 = kf \\
-1 & \gcd(f,g)=1 \text{ and } g \text{ is not a square}\pmod{f}\\
0 & \gcd(f,g)\ne 1
\end{array}\right.$$

If f = f₁⋯f_(n) is a product of monic irreducibles let

$$\left(\frac{g}{f}\right) = \left(\frac{g}{f_1}\right) \cdots \left(\frac{g}{f_n}\right).$$

Dedekind proved that if f, g ∈ F[x] are monic and have positive degrees,[33]

$$\left(\frac{g}{f}\right) \left(\frac{f}{g}\right) =  (-1)^{\frac{q-1}{2}(\deg f)(\deg g)}.$$


Higher powers

The attempt to generalize quadratic reciprocity for powers higher than the second was one of the main goals that led 19th century mathematicians, including Carl Friedrich Gauss, Peter Gustav Lejeune Dirichlet, Carl Gustav Jakob Jacobi, Gotthold Eisenstein, Richard Dedekind, Ernst Kummer, and David Hilbert to the study of general algebraic number fields and their rings of integers;[34] specifically Kummer invented ideals in order to state and prove higher reciprocity laws.

The ninth in the list of 23 unsolved problems which David Hilbert proposed to the Congress of Mathematicians in 1900 asked for the "Proof of the most general reciprocity law [f]or an arbitrary number field".[35] In 1923 Emil Artin, building upon work by Philipp Furtwängler, Teiji Takagi, Helmut Hasse and others, discovered a general theorem for which all known reciprocity laws are special cases; he proved it in 1927.[36]

The links below provide more detailed discussions of these theorems.


See also

-   Artin reciprocity
-   Cubic reciprocity
-   Dedekind zeta function
-   Eisenstein reciprocity
-   Euler's criterion
-   Jacobi symbol
-   Proofs of quadratic reciprocity
-   Quartic reciprocity
-   Zolotarev's lemma


Notes


References

The _Disquisitiones Arithmeticae_ has been translated (from Latin) into English and German. The German edition includes all of Gauss's papers on number theory: all the proofs of quadratic reciprocity, the determination of the sign of the Gauss sum, the investigations into biquadratic reciprocity, and unpublished notes. Footnotes referencing the _Disquisitiones Arithmeticae_ are of the form "Gauss, DA, Art. _n_".

-   -

The two monographs Gauss published on biquadratic reciprocity have consecutively numbered sections: the first contains §§ 1–23 and the second §§ 24–76. Footnotes referencing these are of the form "Gauss, BQ, § _n_".

-   -

These are in Gauss's _Werke_, Vol II, pp. 65–92 and 93–148. German translations are in pp. 511–533 and 534–586 of _Untersuchungen über höhere Arithmetik._

Every textbook on elementary number theory (and quite a few on algebraic number theory) has a proof of quadratic reciprocity. Two are especially noteworthy:

Franz Lemmermeyer's _Reciprocity Laws: From Euler to Eisenstein_ has _many_ proofs (some in exercises) of both quadratic and higher-power reciprocity laws and a discussion of their history. Its immense bibliography includes literature citations for 196 different published proofs for the quadratic reciprocity law.

Kenneth Ireland and Michael Rosen's _A Classical Introduction to Modern Number Theory_ also has many proofs of quadratic reciprocity (and many exercises), and covers the cubic and biquadratic cases as well. Exercise 13.26 (p. 202) says it all

    Count the number of proofs to the law of quadratic reciprocity given thus far in this book and devise another one.

-   -   -   -


External links

-   -   Quadratic Reciprocity Theorem from MathWorld
-   A _play_ comparing two proofs of the quadratic reciprocity law
-   A proof of this theorem at PlanetMath
-   A different proof at MathPages
-   F. Lemmermeyer's chronology and bibliography of proofs of the Quadratic Reciprocity Law (246 proofs)

Category:Algebraic number theory Category:Modular arithmetic Category:Number theory Category:Quadratic residue Category:Theorems in number theory

[1] Gauss, DA § 4, arts 107–150

[2] E.g. in his mathematical diary entry for April 8, 1796 (the date he first proved quadratic reciprocity). See facsimile page from Felix Klein's _Development of Mathematics in the 19th century_

[3] See F. Lemmermeyer's chronology and bibliography of proofs in the external references

[4] Lemmermeyer, pp. 2–3

[5] Gauss, DA, art. 182

[6] Lemmermeyer, p. 3

[7] Lemmermeyer, p. 5, Ireland & Rosen, pp. 54, 61

[8] Ireland & Rosen, pp. 69–70. His proof is based on what are now called Gauss sums.

[9] This section is based on Lemmermeyer, pp. 6–8

[10] The equivalence is Euler's criterion

[11] The analogue of Legendre's original definition is used for higher-power residue symbols

[12] Gauss, DA, arts 108–116

[13] Gauss, DA, arts 117–123

[14] Gauss, DA, arts 130

[15] Gauss, DA, Art 131

[16] Gauss, DA, arts. 125–129

[17] Because the basic Gauss sum equals $\sqrt{q^*}.$

[18] Because the quadratic field $\Q(\sqrt{q^*})$ is a subfield of the cyclotomic field $\Q(e^{\frac{2\pi i}{q}})$

[19] Ireland & Rosen, pp 60–61.

[20] Gauss, "Summierung gewisser Reihen von besonderer Art", reprinted in _Untersuchumgen uber hohere Arithmetik_, pp.463–495

[21] Lemmermeyer, Th. 2.28, pp 63–65

[22] Lemmermeyer, ex. 1.9, p. 28

[23] By Peter Gustav Lejeune Dirichlet in 1837

[24]

[25] https://www.amazon.com/Algebraic-Theory-Numbers-Hermann-Weyl/dp/0691059179

[26] Gauss, BQ § 60

[27] Dirichlet's proof is in Lemmermeyer, Prop. 5.1 p.154, and Ireland & Rosen, ex. 26 p. 64

[28] Lemmermeyer, Prop. 5.1, p. 154

[29] See the articles on Eisenstein integer and cubic reciprocity for definitions and notations.

[30] Lemmermeyer, Thm. 7.10, p. 217

[31] Lemmermeyer, Thm 8.15, p.256 ff

[32] Lemmermeyer Thm. 8.18, p. 260

[33] Bach & Shallit, Thm. 6.7.1

[34] Lemmermeyer, p. 15, and Edwards, pp.79–80 both make strong cases that the study of higher reciprocity was much more important as a motivation than Fermat's Last Theorem was

[35] Lemmermeyer, p. viii

[36] Lemmermeyer, p. ix ff