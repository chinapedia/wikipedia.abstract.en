In abstract algebra, an ABELIAN GROUP, also called a COMMUTATIVE GROUP, is a group in which the result of applying the group operation to two group elements does not depend on the order in which they are written. That is, these are the groups that obey the axiom of commutativity. Abelian groups generalize the arithmetic of addition of integers. They are named after early 19th century mathematician Niels Henrik Abel.[1]

The concept of an abelian group is one of the first concepts encountered in undergraduate abstract algebra, from which many other basic concepts, such as modules and vector spaces, are developed. The theory of abelian groups is generally simpler than that of their non-abelian counterparts, and finite abelian groups are very well understood. On the other hand, the theory of infinite abelian groups is an area of current research.


Definition

An abelian group is a set, _A_, together with an operation • that combines any two elements _a_ and _b_ to form another element denoted . The symbol • is a general placeholder for a concretely given operation. To qualify as an abelian group, the set and operation, , must satisfy five requirements known as the _abelian group axioms_:

Closure: For all _a_, _b_ in _A_, the result of the operation  is also in _A_.
Associativity: For all _a_, _b_ and _c_ in _A_, the equation  holds.
Identity element: There exists an element _e_ in _A_, such that for all elements _a_ in _A_, the equation  holds.
Inverse element: For each _a_ in _A_, there exists an element _b_ in _A_ such that , where _e_ is the identity element.
Commutativity: For all _a_, _b_ in _A_, _a_ • _b_ = _b_ • _a_.

A group in which the group operation is not commutative is called a "non-abelian group" or "non-commutative group".


Facts

Notation

There are two main notational conventions for abelian groups – additive and multiplicative.

  Convention       Operation           Identity   Powers      Inverse
  ---------------- ------------------- ---------- ----------- ----------
  Addition         _x_ + _y_           0          _nx_        −_x_
  Multiplication   _x_ ⋅ _y_ or _xy_   _e_ or 1   _x_^(_n_)   _x_^(−1)

Generally, the multiplicative notation is the usual notation for groups, while the additive notation is the usual notation for modules and rings. The additive notation may also be used to emphasize that a particular group is abelian, whenever both abelian and non-abelian groups are considered, some notable exceptions being near-rings and partially ordered groups, where an operation is written additively even when non-abelian.

Multiplication table

To verify that a finite group is abelian, a table (matrix) – known as a Cayley table – can be constructed in a similar fashion to a multiplication table. If the group is under the operation ⋅, the entry of this table contains the product . The group is abelian if and only if this table is symmetric about the main diagonal.

This is true since if the group is abelian, then . This implies that the entry of the table equals the entry, thus the table is symmetric about the main diagonal.


Examples

-   For the integers and the operation addition "+", denoted , the operation + combines any two integers to form a third integer, addition is associative, zero is the additive identity, every integer _n_ has an additive inverse, −_n_, and the addition operation is commutative since for any two integers _m_ and _n_.
-   Every cyclic group _G_ is abelian, because if _x_, _y_ are in _G_, then . Thus the integers, Z, form an abelian group under addition, as do the integers modulo _n_, Z/_n_Z.
-   Every ring is an abelian group with respect to its addition operation. In a commutative ring the invertible elements, or units, form an abelian multiplicative group. In particular, the real numbers are an abelian group under addition, and the nonzero real numbers are an abelian group under multiplication.
-   Every subgroup of an abelian group is normal, so each subgroup gives rise to a quotient group. Subgroups, quotients, and direct sums of abelian groups are again abelian. The finite simple abelian groups are exactly the cyclic groups of prime order.[2]
-   The concepts of abelian group and Z-module agree. More specifically, every _Z_-module is an abelian group with its operation of addition, and every abelian group is a module over the ring of integers Z in a unique way.

In general, matrices, even invertible matrices, do not form an abelian group under multiplication because matrix multiplication is generally not commutative. However, some groups of matrices are abelian groups under matrix multiplication – one example is the group of 2×2 rotation matrices.


Historical remarks

Camille Jordan named abelian groups after Norwegian mathematician Niels Henrik Abel, because Abel found that the commutativity of the group of a polynomial implies that the roots of the polynomial can be calculated by using radicals. See Section 6.5 of Cox (2004) for more information on the historical background.


Properties

If _n_ is a natural number and _x_ is an element of an abelian group _G_ written additively, then _nx_ can be defined as (_n_ summands) and . In this way, _G_ becomes a module over the ring Z of integers. In fact, the modules over Z can be identified with the abelian groups.

Theorems about abelian groups (i.e. modules over the principal ideal domain Z) can often be generalized to theorems about modules over an arbitrary principal ideal domain. A typical example is the classification of finitely generated abelian groups which is a specialization of the structure theorem for finitely generated modules over a principal ideal domain. In the case of finitely generated abelian groups, this theorem guarantees that an abelian group splits as a direct sum of a torsion group and a free abelian group. The former may be written as a direct sum of finitely many groups of the form Z/_p_^(k)Z for _p_ prime, and the latter is a direct sum of finitely many copies of Z.

If are two group homomorphisms between abelian groups, then their sum , defined by , is again a homomorphism. (This is not true if _H_ is a non-abelian group.) The set of all group homomorphisms from _G_ to _H_ thus turns into an abelian group in its own right.

Somewhat akin to the dimension of vector spaces, every abelian group has a _rank_. It is defined as the maximal cardinality of a set of linearly independent elements of the group. The integers and the rational numbers have rank one, as well as every subgroup of the rationals.

The center _Z_(_G_) of a group _G_ is the set of elements that commute with every element of _G_. A group _G_ is abelian if and only if it is equal to its center _Z_(_G_). The center of a group _G_ is always a characteristic abelian subgroup of _G_. If the quotient group _G_/_Z_(_G_) of a group by its center is cyclic then _G_ is abelian.[3]


Finite abelian groups

Cyclic groups of integers modulo _n_, Z/_n_Z, were among the first examples of groups. It turns out that an arbitrary finite abelian group is isomorphic to a direct sum of finite cyclic groups of prime power order, and these orders are uniquely determined, forming a complete system of invariants. The automorphism group of a finite abelian group can be described directly in terms of these invariants. The theory had been first developed in the 1879 paper of Georg Frobenius and Ludwig Stickelberger and later was both simplified and generalized to finitely generated modules over a principal ideal domain, forming an important chapter of linear algebra.

Any group of prime order is isomorphic to a cyclic group and therefore abelian. Any group whose order is a square of a prime number is abelian.[4] In fact, for every prime number _p_ there are (up to isomorphism) exactly two groups of order _p_², namely Z_(_p_²) and Z_(_p_)×Z_(_p_).

Classification

The FUNDAMENTAL THEOREM OF FINITE ABELIAN GROUPS states that every finite abelian group _G_ can be expressed as the direct sum of cyclic subgroups of prime-power order; it is also known as the BASIS THEOREM FOR FINITE ABELIAN GROUPS.[5] This is generalized by the fundamental theorem of finitely generated abelian groups, with finite groups being the special case when _G_ has zero rank; this in turn admits numerous further generalizations.

The classification was proven by Leopold Kronecker in 1870, though it was not stated in modern group-theoretic terms until later, and was preceded by a similar classification of quadratic forms by Gauss in 1801; see history for details.

The cyclic group Z_(_mn_) of order _mn_ is isomorphic to the direct sum of Z_(_m_) and Z_(_n_) if and only if _m_ and _n_ are coprime. It follows that any finite abelian group _G_ is isomorphic to a direct sum of the form

$$\bigoplus_{i=1}^{u}\ \mathbf{Z}_{k_i}$$

in either of the following canonical ways:

-   the numbers _k_₁, ..., _k__(_u_) are powers of (not necessarily distinct) primes,
-   or _k_₁ divides _k_₂, which divides _k_₃, and so on up to _k__(_u_).

For example, Z₁₅ can be expressed as the direct sum of two cyclic subgroups of order 3 and 5: The same can be said for any abelian group of order 15, leading to the remarkable conclusion that all abelian groups of order 15 are isomorphic.

For another example, every abelian group of order 8 is isomorphic to either Z₈ (the integers 0 to 7 under addition modulo 8), (the odd integers 1 to 15 under multiplication modulo 16), or .

See also list of small groups for finite abelian groups of order 30 or less.

Automorphisms

One can apply the fundamental theorem to count (and sometimes determine) the automorphisms of a given finite abelian group _G_. To do this, one uses the fact that if _G_ splits as a direct sum of subgroups of coprime order, then .

Given this, the fundamental theorem shows that to compute the automorphism group of _G_ it suffices to compute the automorphism groups of the Sylow _p_-subgroups separately (that is, all direct sums of cyclic subgroups, each with order a power of _p_). Fix a prime _p_ and suppose the exponents _e__(_i_) of the cyclic factors of the Sylow _p_-subgroup are arranged in increasing order:

_e_₁ ≤ _e_₂ ≤ ⋯ ≤ _e__(_n_)

for some . One needs to find the automorphisms of

Z_(_p_^(_e_₁)) ⊕ ⋯ ⊕ Z_(_p_^(_e__(_n_))).

One special case is when _n_ = 1, so that there is only one cyclic prime-power factor in the Sylow _p_-subgroup _P_. In this case the theory of automorphisms of a finite cyclic group can be used. Another special case is when _n_ is arbitrary but . Here, one is considering _P_ to be of the form

Z_(_p_) ⊕ ⋯ ⊕ Z_(_p_),

so elements of this subgroup can be viewed as comprising a vector space of dimension _n_ over the finite field of _p_ elements F_(_p_). The automorphisms of this subgroup are therefore given by the invertible linear transformations, so

Aut (_P_) ≅ _G__L_(_n_, F_(_p_)),

where GL is the appropriate general linear group. This is easily shown to have order

|Aut(_P_)| = (_p_^(_n_) − 1)⋯(_p_^(_n_) − _p_^(_n_ − 1)).

In the most general case, where the _e__(_i_) and _n_ are arbitrary, the automorphism group is more difficult to determine. It is known, however, that if one defines

_d__(_k_) = max {_r_ ∣ _e__(_r_) = _e__(_k_) }

and

_c__(_k_) = min {_r_ ∣ _e__(_r_) = _e__(_k_)}

then one has in particular , , and

$$\left|\operatorname{Aut}(P)\right| = \prod_{k=1}^n (p^{d_k}-p^{k-1}) \prod_{j=1}^n (p^{e_j})^{n-d_j} \prod_{i=1}^n (p^{e_i-1})^{n-c_i+1}.$$

One can check that this yields the orders in the previous examples as special cases (see Hillar, C., & Rhea, D.).


Finitely generated abelian groups

An abelian group is finitely generated if it contains a finite set of elements (called _generators_) G = {x₁, …, x_(n)} such that every element of the group is a linear combination with integer coefficients of elements of .

Let be a free abelian group with basis B = {b₁, …, b_(n)}. There is a unique group homomorphism p: L → A, such that

_p_(_b__(_i_)) = _x__(_i_) for _i_ = 1, …, _n_.
This homomorphism is surjective, and its kernel is finitely generated (since integers form a Noetherian ring). Consider the matrix with integer entries, such that the entries of its th column are the coefficients of the th generator of the kernel. Then, the abelian group is isomorphic to the cokernel of linear map defined by . Conversely every integer matrix defines a finitely generated abelian group.

It follows that the study of finitely generated abelian groups is totally equivalent with the study of integer matrices. In particular, changing the generating set of is equivalent with multiplying on the left by a unimodular matrix (that is an invertible integer matrix whose inverse is also an integer matrix). Changing the generating set of the kernel of is equivalent with multiplying on the right by an unimodular matrix.

The Smith normal form of is a matrix

_S_ = _U__M__V_,
where and are unimodular, and is a matrix such that all non-diagonal entries are zero, the non-zero diagonal entries are the first ones, and is a divisor of for . The existence and the shape of the Smith normal proves that the finitely generated abelian group is the direct sum

$$\Z^r \oplus \Z/d_{1,1}\Z \oplus \cdots \oplus \Z/d_{k,k}\Z,$$
where is the number of zero rows at the bottom of (and also the rank of the group). This is the fundamental theorem of finitely generated abelian groups.

The existence of algorithms for Smith normal form shows that the fundamental theorem of finitely generated abelian groups is not only a theorem of abstract existence, but provides a way for computing expression of finitely generated abelian groups as direct sums.


Infinite abelian groups

The simplest infinite abelian group is the infinite cyclic group Z. Any finitely generated abelian group _A_ is isomorphic to the direct sum of _r_ copies of Z and a finite abelian group, which in turn is decomposable into a direct sum of finitely many cyclic groups of prime power orders. Even though the decomposition is not unique, the number _r_, called the rank of _A_, and the prime powers giving the orders of finite cyclic summands are uniquely determined.

By contrast, classification of general infinitely generated abelian groups is far from complete. Divisible groups, i.e. abelian groups _A_ in which the equation admits a solution for any natural number _n_ and element _a_ of _A_, constitute one important class of infinite abelian groups that can be completely characterized. Every divisible group is isomorphic to a direct sum, with summands isomorphic to Q and Prüfer groups Q_(_p_)/Z_(_p_) for various prime numbers _p_, and the cardinality of the set of summands of each type is uniquely determined.[6] Moreover, if a divisible group _A_ is a subgroup of an abelian group _G_ then _A_ admits a direct complement: a subgroup _C_ of _G_ such that . Thus divisible groups are injective modules in the category of abelian groups, and conversely, every injective abelian group is divisible (Baer's criterion). An abelian group without non-zero divisible subgroups is called REDUCED.

Two important special classes of infinite abelian groups with diametrically opposite properties are _torsion groups_ and _torsion-free groups_, exemplified by the groups Q/Z (periodic) and Q (torsion-free).

Torsion groups

An abelian group is called PERIODIC or TORSION, if every element has finite order. A direct sum of finite cyclic groups is periodic. Although the converse statement is not true in general, some special cases are known. The first and second Prüfer theorems state that if _A_ is a periodic group, and it either has a BOUNDED EXPONENT, i.e., for some natural number _n_, or is countable and the _p_-heights of the elements of _A_ are finite for each _p_, then _A_ is isomorphic to a direct sum of finite cyclic groups.[7] The cardinality of the set of direct summands isomorphic to Z/_p_^(_m_)Z in such a decomposition is an invariant of _A_. These theorems were later subsumed in the KULIKOV CRITERION. In a different direction, Helmut Ulm found an extension of the second Prüfer theorem to countable abelian _p_-groups with elements of infinite height: those groups are completely classified by means of their Ulm invariants.

Torsion-free and mixed groups

An abelian group is called TORSION-FREE if every non-zero element has infinite order. Several classes of torsion-free abelian groups have been studied extensively:

-   Free abelian groups, i.e. arbitrary direct sums of Z
-   Cotorsion and algebraically compact torsion-free groups such as the _p_-adic integers
-   Slender groups

An abelian group that is neither periodic nor torsion-free is called MIXED. If _A_ is an abelian group and _T_(_A_) is its torsion subgroup, then the factor group _A_/_T_(_A_) is torsion-free. However, in general the torsion subgroup is not a direct summand of _A_, so _A_ is _not_ isomorphic to . Thus the theory of mixed groups involves more than simply combining the results about periodic and torsion-free groups.

Invariants and classification

One of the most basic invariants of an infinite abelian group _A_ is its rank: the cardinality of the maximal linearly independent subset of _A_. Abelian groups of rank 0 are precisely the periodic groups, while torsion-free abelian groups of rank 1 are necessarily subgroups of Q and can be completely described. More generally, a torsion-free abelian group of finite rank _r_ is a subgroup of Q^(_r_). On the other hand, the group of _p_-adic integers Z_(_p_) is a torsion-free abelian group of infinite Z-rank and the groups Z with different _n_ are non-isomorphic, so this invariant does not even fully capture properties of some familiar groups.

The classification theorems for finitely generated, divisible, countable periodic, and rank 1 torsion-free abelian groups explained above were all obtained before 1950 and form a foundation of the classification of more general infinite abelian groups. Important technical tools used in classification of infinite abelian groups are pure and basic subgroups. Introduction of various invariants of torsion-free abelian groups has been one avenue of further progress. See the books by Irving Kaplansky, László Fuchs, Phillip Griffith, and David Arnold, as well as the proceedings of the conferences on Abelian Group Theory published in _Lecture Notes in Mathematics_ for more recent findings.

Additive groups of rings

The additive group of a ring is an abelian group, but not all abelian groups are additive groups of rings (with nontrivial multiplication). Some important topics in this area of study are:

-   Tensor product
-   Corner's results on countable torsion-free groups
-   Shelah's work to remove cardinality restrictions.


Relation to other mathematical topics

Many large abelian groups possess a natural topology, which turns them into topological groups.

The collection of all abelian groups, together with the homomorphisms between them, forms the category AB, the prototype of an abelian category.

Nearly all well-known algebraic structures other than Boolean algebras are undecidable. Hence it is surprising that Tarski's student proved that the first order theory of abelian groups, unlike its nonabelian counterpart, is decidable. This decidability, plus the fundamental theorem of finite abelian groups described above, highlight some of the successes in abelian group theory, but there are still many areas of current research:

-   Amongst torsion-free abelian groups of finite rank, only the finitely generated case and the rank 1 case are well understood;
-   There are many unsolved problems in the theory of infinite-rank torsion-free abelian groups;
-   While countable torsion abelian groups are well understood through simple presentations and Ulm invariants, the case of countable mixed groups is much less mature.
-   Many mild extensions of the first order theory of abelian groups are known to be undecidable.
-   Finite abelian groups remain a topic of research in computational group theory.

Moreover, abelian groups of infinite order lead, quite surprisingly, to deep questions about the set theory commonly assumed to underlie all of mathematics. Take the Whitehead problem: are all Whitehead groups of infinite order also free abelian groups? In the 1970s, Saharon Shelah proved that the Whitehead problem is:

-   Undecidable in ZFC (Zermelo–Fraenkel axioms), the conventional axiomatic set theory from which nearly all of present-day mathematics can be derived. The Whitehead problem is also the first question in ordinary mathematics proved undecidable in ZFC;
-   Undecidable even if ZFC is augmented by taking the generalized continuum hypothesis as an axiom;
-   Positively answered if ZFC is augmented with the axiom of constructibility (see statements true in L).


A note on the typography

Among mathematical adjectives derived from the proper name of a mathematician, the word "abelian" is rare in that it is often spelled with a lowercase A, rather than an uppercase A, indicating how ubiquitous the concept is in modern mathematics.[8]


See also

-   Abelianization
-   Class field theory
-   Commutator subgroup
-   Dihedral group of order 6, the smallest non-Abelian group
-   Symmetric group of degree 3, also the smallest non-Abelian group
-   Elementary abelian group
-   Pontryagin duality
-   Pure injective module
-   Pure projective module


Notes


References

-   -   -   -   -   Unabridged and unaltered republication of a work first published by the Cambridge University Press, Cambridge, England, in 1978.

-   -   -   -


External links

-

Category:Abelian group theory Category:Properties of groups Category:Niels Henrik Abel

[1] Jacobson 2009, p. 41

[2] Rose 2012, p. 32

[3] Rose 2012, p. 48

[4] Rose 2012, p. 79

[5] Kurzweil, H., & Stellmacher, B., _The Theory of Finite Groups: An Introduction_ (New York, Berlin, Heidelberg: Springer Verlag, 2004), pp. 43–54.

[6] For example, .

[7] Countability assumption in the second Prüfer theorem cannot be removed: the torsion subgroup of the direct product of the cyclic groups Z/_p_^(_m_)Z for all natural _m_ is not a direct sum of cyclic groups.

[8]