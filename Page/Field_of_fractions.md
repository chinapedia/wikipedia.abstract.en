In abstract algebra, the FIELD OF FRACTIONS of an integral domain is the smallest field in which it can be embedded. The elements of the field of fractions of the integral domain R are equivalence classes (see the construction below) written as $\frac{a}{b}$ with a and b in R and b ≠ 0. The field of fractions of R is sometimes denoted by Frac (R) or Quot (R).

Mathematicians refer to this construction as the field of fractions, FRACTION FIELD, FIELD OF QUOTIENTS, or QUOTIENT FIELD. All four are in common usage. The expression "quotient field" may sometimes run the risk of confusion with the quotient of a ring by an ideal, which is a quite different concept.


Examples

-   The field of fractions of the ring of integers is the field of rationals, $\Q=\operatorname{Frac}(\Z)$.
-   Let $R:=\{a+b\mathrm{i}\mid a,b\in\Z\}$ be the ring of Gaussian integers. Then $\operatorname{Frac}(R)=\{c+d\mathrm{i}\mid c,d\in\Q\}$, the field of Gaussian rationals.
-   The field of fractions of a field is canonically isomorphic to the field itself.
-   Given a field K, the field of fractions of the polynomial ring in one indeterminate K[X] (which is an integral domain), is called the __ or _field of rational fractions_[1][2][3] and is denoted K(X).


Construction

Let R be any integral domain. For n, d ∈ R with d ≠ 0, the fraction $\frac{n}{d}$ denotes the equivalence class of pairs (n, d), where (n, d) is equivalent to (m, b) if and only if nb = md. (The definition of equivalence is modelled on the property of rational numbers that $\frac{n}{d}=\frac{m}{b}$ if and only if nb = md.) The _field of fractions_ Frac (R) is defined as the set of all such fractions $\frac{n}{d}$. The sum of $\frac{n}{d}$ and $\frac{m}{b}$ is defined as $\frac{nb+md}{db}$, and the product of $\frac{n}{d}$ and $\frac{m}{b}$ is defined as $\frac{nm}{db}$ (one checks that these are well defined).

The embedding of R in Frac (R) maps each n in R to the fraction $\frac{en}{e}$ for any nonzero e ∈ R (the equivalence class is independent of the choice e). This is modelled on the identity $\frac{n}{1}=n$.

The field of fractions of R is characterised by the following universal property: if h : R → F is an injective ring homomorphism from R into a field F, then there exists a unique ring homomorphism g : Frac (R) → F which extends h.

There is a categorical interpretation of this construction. Let C be the category of integral domains and injective ring maps. The functor from C to the category of fields which takes every integral domain to its fraction field and every homomorphism to the induced map on fields (which exists by the universal property) is the left adjoint of the forgetful functor from the category of fields to C.

A multiplicative identity is not required for the role of the integral domain; this construction can be applied to any nonzero commutative rng R with no nonzero zero divisors. The embedding is given by $r\mapsto\frac{rs}{s}$ for any nonzero s ∈ R.[4]


Generalization

For any commutative ring R and any multiplicative set S in R, the localization S^( − 1)R is the commutative ring consisting of fractions $\frac{r}{s}$ with r ∈ R and s ∈ S, where now (r, s) is equivalent to (r′, s′) if and only if there exists t ∈ S such that t(rs′ − r′s) = 0. Two special cases of this are notable:

-   If S is the complement of a prime ideal P, then S^( − 1)R is also denoted R_(P). When R is an integral domain and P is the zero ideal, R_(P) is the field of fractions of R.
-   If S is the set of non-zero-divisors in R, then S^( − 1)R is called the total quotient ring. The total quotient ring of an integral domain is its field of fractions, but the total quotient ring is defined for any commutative ring.


See also

-   Ore condition; this is the condition one needs to consider in the noncommutative case.
-   Projective line over a ring; alternative structure not limited to integral domains.


References

Category:Field theory Category:Commutative algebra

[1]

[2]

[3]

[4]