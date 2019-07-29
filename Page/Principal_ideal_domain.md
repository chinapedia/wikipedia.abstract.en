In abstract algebra, a PRINCIPAL IDEAL DOMAIN, or PID, is an integral domain in which every ideal is principal, i.e., can be generated by a single element. More generally, a principal ideal ring is a nonzero commutative ring whose ideals are principal, although some authors (e.g., Bourbaki) refer to PIDs as principal rings. The distinction is that a principal ideal ring may have zero divisors whereas a principal ideal domain cannot.

Principal ideal domains are thus mathematical objects that behave somewhat like the integers, with respect to divisibility: any element of a PID has a unique decomposition into prime elements (so an analogue of the fundamental theorem of arithmetic holds); any two elements of a PID have a greatest common divisor (although it may not be possible to find it using the Euclidean algorithm). If _x_ and _y_ are elements of a PID without common divisors, then every element of the PID can be written in the form _ax_ + _by_.

Principal ideal domains are noetherian, they are integrally closed, they are unique factorization domains and Dedekind domains. All Euclidean domains and all fields are principal ideal domains.

Principal ideal domains appear in the following chain of class inclusions:


Examples

Examples include:

-   K: any field,
-   ℤ: the ring of integers,[1]
-   K[x]: rings of polynomials in one variable with coefficients in a field. (The converse is also true, i.e. if A[x] is a PID then A is a field.) Furthermore, a ring of formal power series in one variable over a field is a PID since every ideal is of the form (x^(k)),
-   ℤ[i]: the ring of Gaussian integers[2],
-   ℤ[ω] (where ω is a primitive cube root of 1): the Eisenstein integers,
-   Any discrete valuation ring, for instance the ring of [[p-adic_integer| 2\right].[3][4] In this domain no and exist, with _r_{{!}} < 4}}, so that $(1+\sqrt{-19})=(4)q+r$, despite $1+\sqrt{-19}$ and 4 having a greatest common divisor of .

Every principal ideal domain is a unique factorization domain (UFD).[5][6][7][8] The converse does not hold since for any UFD , the ring of polynomials in 2 variables is a UFD but is not a PID. (To prove this look at the ideal generated by ⟨X,Y⟩. It is not the whole ring since it contains no polynomials of degree 0, but it cannot be generated by any one single element.)

1.  Every principal ideal domain is Noetherian.
2.  In all unital rings, maximal ideals are prime. In principal ideal domains a near converse holds: every nonzero prime ideal is maximal.
3.  All principal ideal domains are integrally closed.

The previous three statements give the definition of a Dedekind domain, and hence every principal ideal domain is a Dedekind domain.

Let _A_ be an integral domain. Then the following are equivalent.

1.  _A_ is a PID.
2.  Every prime ideal of _A_ is principal.[9]
3.  _A_ is a Dedekind domain that is a UFD.
4.  Every finitely generated ideal of _A_ is principal (i.e., _A_ is a Bézout domain) and _A_ satisfies the ascending chain condition on principal ideals.
5.  _A_ admits a Dedekind–Hasse norm.[10]

A field norm is a Dedekind-Hasse norm; thus, (5) shows that a Euclidean domain is a PID. (4) compares to:

-   An integral domain is a UFD if and only if it is a GCD domain (i.e., a domain where every two elements have a greatest common divisor) satisfying the ascending chain condition on principal ideals.

An integral domain is a Bézout domain if and only if any two elements in it have a gcd _that is a linear combination of the two._ A Bézout domain is thus a GCD domain, and (4) gives yet another proof that a PID is a UFD.


See also

-   Bézout's identity


Notes


References

-   Michiel Hazewinkel, Nadiya Gubareni, V. V. Kirichenko. _Algebras, rings and modules_. Kluwer Academic Publishers, 2004.
-   John B. Fraleigh, Victor J. Katz. _A first course in abstract algebra_. Addison-Wesley Publishing Company. 5 ed., 1967.
-   Nathan Jacobson. Basic Algebra I. Dover, 2009.
-   Paulo Ribenboim. _Classical theory of algebraic numbers_. Springer, 2001.


External links

-   Principal ring on MathWorld

Category:Commutative algebra Category:Ring theory

[1] See Fraleigh & Katz (1967), p. 73, Corollary of Theorem 1.7, and notes at p. 369, after the corollary of Theorem 7.2

[2] See Fraleigh & Katz (1967), p. 385, Theorem 7.8 and p. 377, Theorem 7.4.

[3] Wilson, Jack C. "A Principal Ring that is Not a Euclidean Ring." Math. Mag 46 (Jan 1973) 34-38 1

[4] George Bergman, _A principal ideal domain that is not Euclidean - developed as a series of exercises_ PostScript file

[5] Proof: every prime ideal is generated by one element, which is necessarily prime. Now refer to the fact that an integral domain is a UFD if and only if its prime ideals contain prime elements.

[6] Jacobson (2009), p. 148, Theorem 2.23.

[7] Fraleigh & Katz (1967), p. 368, Theorem 7.2

[8] Hazewinkel, Gubareni & Kirichenko (2004), p.166, Theorem 7.2.1.

[9] T. Y. Lam and Manuel L. Reyes, A Prime Ideal Principle in Commutative Algebra

[10] Hazewinkel, Gubareni & Kirichenko (2004), p.170, Proposition 7.3.3.