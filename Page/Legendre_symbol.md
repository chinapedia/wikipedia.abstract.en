[TABLE]

: Legendre symbol ()
for various _a_ (along top) and _p_ (along left side).

In number theory, the LEGENDRE SYMBOL is a multiplicative function with values 1, −1, 0 that is a quadratic character modulo an odd prime number _p_: its value at a (nonzero) quadratic residue mod _p_ is 1 and at a non-quadratic residue (_non-residue_) is −1. Its value at zero is 0.

The Legendre symbol was introduced by Adrien-Marie Legendre in 1798[1] in the course of his attempts at proving the law of quadratic reciprocity. Generalizations of the symbol include the Jacobi symbol and Dirichlet characters of higher order. The notational convenience of the Legendre symbol inspired introduction of several other "symbols" used in algebraic number theory, such as the Hilbert symbol and the Artin symbol.


Definition

Let p be an odd prime number. An integer a is a quadratic residue modulo p if it is congruent to a perfect square modulo p and is a quadratic nonresidue modulo p otherwise. The LEGENDRE SYMBOL is a function of a and p defined as

$$\left(\frac{a}{p}\right) =
\begin{cases}
 1 & \text{if } a \text{ is a quadratic residue modulo } p \text{ and } a \not\equiv 0\pmod p, \\
-1 & \text{if } a \text{ is a non-quadratic residue modulo } p, \\
 0 & \text{if } a \equiv 0 \pmod p.
\end{cases}$$

Legendre's original definition was by means of the explicit formula

$$\left(\frac{a}{p}\right) \equiv a^{\frac{p-1}{2}} \pmod p \quad \text{ and } \quad\left(\frac{a}{p}\right) \in \{-1,0,1\}.$$

By Euler's criterion, which had been discovered earlier and was known to Legendre, these two definitions are equivalent.[2] Thus Legendre's contribution lay in introducing a convenient _notation_ that recorded quadratic residuosity of _a_ mod _p_. For the sake of comparison, Gauss used the notation _a_R_p_, _a_N_p_ according to whether _a_ is a residue or a non-residue modulo _p_. For typographical convenience, the Legendre symbol is sometimes written as (_a_ | _p_) or (_a_/_p_). The sequence (_a_ | _p_) for _a_ equal to 0, 1, 2,... is periodic with period _p_ and is sometimes called the LEGENDRE SEQUENCE, with {0,1,−1} values occasionally replaced by {1,0,1} or {0,1,0}.[3] Each row in the following table can be seen to exhibit periodicity, just as described.


Table of values

The following is a table of values of Legendre symbol $\left(\frac{a}{p}\right)$ with _p_ ≤ 127, _a_ ≤ 30, _p_ odd prime.

[TABLE]


Properties of the Legendre symbol

There are a number of useful properties of the Legendre symbol which, together with the law of quadratic reciprocity, can be used to compute it efficiently.

-   The Legendre symbol reveals the parity of a non-zero integer mod p. That is, given a generator g ∈ 𝔽_(p)^(*), if x = g^(r)then x is a quadratic residue if and only if r is even. This also shows that half of the non-zero elements in 𝔽_(p)^(*) are quadratic residues.
-   If p ≡ 3 mod 4 then the fact that
    $$\frac{p+1}{4} + \frac{p+1}{4} = \frac{(p-1)+2}{2}$$
    gives us that a = x^((p + 1)/4) is the square root of the quadratic residue x.

-   The Legendre symbol is periodic in its first (or top) argument: if _a_ ≡ _b_ (mod _p_), then
    $$\left(\frac{a}{p}\right) = \left(\frac{b}{p}\right).$$

-   The Legendre symbol is a completely multiplicative function of its top argument:
    $$\left(\frac{ab}{p}\right) = \left(\frac{a}{p}\right)\left(\frac{b}{p}\right).$$

-   In particular, the product of two numbers that are both quadratic residues or quadratic non-residues modulo _p_ is a residue, whereas the product of a residue with a non-residue is a non-residue. A special case is the Legendre symbol of a square:
    $$\left(\frac{x^2}{p}\right) = \begin{cases} 1 & \mbox{if }p\nmid x\\ 0 & \mbox{if }p\mid x. \end{cases}$$

-   When viewed as a function of _a_, the Legendre symbol $\left(\frac{a}{p}\right)$ is the unique quadratic (or order 2) Dirichlet character modulo _p_.
-   The first supplement to the law of quadratic reciprocity:
    :\left(\frac{-1}{p}\right) = (-1)^{\frac{p-1}{2}} =

 \begin{cases}
    1 & \mbox{ if }p \equiv 1\pmod{4} \\
   -1 & \mbox{ if }p \equiv 3\pmod{4}.  
 \end{cases}

-   The second supplement to the law of quadratic reciprocity:
    : \left(\frac{2}{p}\right) = (-1)^\tfrac{p^2-1}{8} =

 \begin{cases}
    1 & \mbox{ if }p \equiv 1\mbox{ or }7 \pmod{8} \\
   -1 & \mbox{ if }p \equiv 3\mbox{ or }5 \pmod{8}.
 \end{cases}

-   Special formulas for the Legendre symbol $\left(\frac{a}{p}\right)$ for small values of _a_:
    -   For an odd prime _p_ ≠ 3,
        : \left(\frac{3}{p}\right) = (-1)^{\big\lfloor \frac{p+1}{6}\big\rfloor} =

 \begin{cases}
    1 & \mbox{ if }p \equiv 1\mbox{ or }11 \pmod{12} \\
   -1 & \mbox{ if }p \equiv 5\mbox{ or }7 \pmod{12}.
 \end{cases}

-   -   For an odd prime _p_ ≠ 5,
        : \left(\frac{5}{p}\right) =(-1)^{\big\lfloor \frac{2p+2}{5}\big \rfloor} =

 \begin{cases}
    1 & \mbox{ if }p \equiv 1\mbox{ or }4 \pmod5 \\
   -1 & \mbox{ if }p \equiv 2\mbox{ or }3 \pmod5.
 \end{cases}

-   The Fibonacci numbers 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, … are defined by the recurrence _F_₂ {{=}} 1,}} _F_(n)_ + _F__(_n_−1).}} If _p_ is a prime number then
    $$F_{p-\left(\frac{p}{5}\right)} \equiv 0 \pmod p, \qquad F_{p} \equiv \left(\frac{p}{5}\right) \pmod p.$$

    For example,
    :\begin{align}

   \left(\tfrac{2}{5}\right)  &= -1, &    F_3 &= 2,  &    F_2 &= 1,  \\ 
   \left(\tfrac{3}{5}\right)  &= -1, &    F_4 &= 3,  &    F_3 &= 2,  \\ 
   \left(\tfrac{5}{5}\right)  &=  0, &    F_5 &= 5,  &        &      \\ 
   \left(\tfrac{7}{5}\right)  &= -1, &    F_8 &= 21, &    F_7 &= 13, \\ 
   \left(\tfrac{11}{5}\right) &=  1, & F_{10} &= 55, & F_{11} &= 89.
 \end{align} 

-   This result comes from the theory of Lucas sequences, which are used in primality testing.[4] See Wall–Sun–Sun prime.


Legendre symbol and quadratic reciprocity

Let _p_ and _q_ be distinct odd primes. Using the Legendre symbol, the quadratic reciprocity law can be stated concisely:

    $\left(\frac{q}{p}\right)\left(\frac{p}{q}\right) = (-1)^{\tfrac{p-1}{2}\cdot\tfrac{q-1}{2}}.$

Many proofs of quadratic reciprocity are based on Legendre's formula

$$\left(\frac{a}{p}\right) \equiv a^{\tfrac{p-1}{2}} \pmod p.$$

In addition, several alternative expressions for the Legendre symbol were devised in order to produce various proofs of the quadratic reciprocity law.

-   Gauss introduced the quadratic Gauss sum and used the formula

$$\sum_{k=0}^{p-1}\zeta^{ak^2}=\left(\frac{a}{p}\right)\sum_{k=0}^{p-1}\zeta^{k^2},\qquad \zeta = e^{\frac{2\pi i}{p}}$$

    in his fourth[5] and sixth[6] proofs of quadratic reciprocity.

-   Kronecker's proof[7] first establishes that

$$\left(\frac{p}{q}\right) =\sgn\left(\prod_{i=1}^{\frac{q-1}{2}}\prod_{k=1}^{\frac{p-1}{2}}\left(\frac{k}{p}-\frac{i}{q}\right)\right).$$

    Reversing the roles of _p_ and _q_, he obtains the relation between () and ().

-   One of Eisenstein's proofs[8] begins by showing that

$$\left(\frac{q}{p}\right) =\prod_{n=1}^{\frac{p-1}{2}} \frac{\sin\left(\frac{2\pi qn}{p}\right)}{\sin\left(\frac{2\pi n}{p}\right)}.$$

    Using certain elliptic functions instead of the sine function, Eisenstein was able to prove cubic and quartic reciprocity as well.


Related functions

-   The Jacobi symbol () is a generalization of the Legendre symbol that allows for a composite second (bottom) argument _n_, although _n_ must still be odd and positive. This generalization provides an efficient way to compute all Legendre symbols without performing factorization along the way.
-   A further extension is the Kronecker symbol, in which the bottom argument may be any integer.
-   The power residue symbol () generalizes the Legendre symbol to higher power _n_. The Legendre symbol represents the power residue symbol for _n_ = 2.


Computational example

The above properties, including the law of quadratic reciprocity, can be used to evaluate any Legendre symbol. For example:

$$\begin{align}
\left ( \frac{12345}{331}\right )&=\left ( \frac{3}{331}\right ) \left ( \frac{5}{331}\right ) \left ( \frac{823}{331}\right ) \\
&= \left ( \frac{3}{331}\right ) \left ( \frac{5}{331}\right ) \left ( \frac{161}{331}\right ) \\
&= \left ( \frac{3}{331}\right ) \left ( \frac{5}{331}\right ) \left ( \frac{7}{331}\right ) \left ( \frac{23}{331}\right ) \\
&= (-1)\left (\frac{331}{3}\right) \left(\frac{331}{5}\right) (-1) \left(\frac{331}{7}\right) (-1)\left (\frac{331}{23}\right ) \\
&= -\left ( \frac{1}{3}\right ) \left ( \frac{1}{5}\right ) \left ( \frac{2}{7}\right ) \left ( \frac{9}{23}\right )\\
&= -\left ( \frac{1}{3}\right ) \left ( \frac{1}{5}\right ) \left ( \frac{2}{7}\right ) \left ( \frac{3^2}{23}\right )\\
&= -(1) (1) (1) (1) \\
&= -1.
\end{align}$$

Or using a more efficient computation:

$$\left ( \frac{12345}{331}\right )=\left ( \frac{98}{331}\right )=\left ( \frac{2 \cdot 7^2}{331}\right )=\left ( \frac{2}{331}\right )=(-1)^\tfrac{331^2-1}{8}=-1.$$
The article Jacobi symbol has more examples of Legendre symbol manipulation.


Notes


References

-   -   -   -   -   -   -


External links

-   Jacobi symbol calculator

Category:Modular arithmetic Category:Quadratic residue

[1]

[2] Hardy & Wright, Thm. 83.

[3]

[4] Ribenboim, p. 64; Lemmermeyer, ex. 2.25–2.28, pp. 73–74.

[5] Gauss, "Summierung gewisser Reihen von besonderer Art" (1811), reprinted in _Untersuchungen ..._ pp. 463–495

[6] Gauss, "Neue Beweise und Erweiterungen des Fundamentalsatzes in der Lehre von den quadratischen Resten" (1818) reprinted in _Untersuchungen ..._ pp. 501–505

[7] Lemmermeyer, ex. p. 31, 1.34

[8] Lemmermeyer, pp. 236 ff.