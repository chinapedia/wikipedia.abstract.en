In mathematical group theory, given a prime number _p_, a _P_-GROUP is a group in which each element has a power of _p_ as its order. That is, for each element _g_ of a _p_-group, there exists a nonnegative integer _n_ such that the product of _p^(n)_ copies of _g_, and not fewer, is equal to the identity element. The orders of different elements may be different powers of _p_.

Abelian _p_-groups are also called _P_-PRIMARY or simply PRIMARY.

A finite group is a _p_-group if and only if its order (the number of its elements) is a power of _p_. Given a finite group _G_, the Sylow theorems guarantee, for every prime power _p^(n)_ that divides the order of _G,_ the existence of a subgroup of _G_ of order _p^(n)_.

The remainder of this article deals with finite _p_-groups. For an example of an infinite abelian _p_-group, see Prüfer group, and for an example of an infinite simple _p_-group, see Tarski monster group.


Properties

Every _p_-group is periodic since by definition every element has finite order.

If _p_ is prime and _G_ is a group of order _p_^(_k_), then _G_ has a normal subgroup of order _p_^(_m_) for every 1≤_m_≤_k_. This follows by induction, using Cauchy's theorem and the Correspondence Theorem for groups. A proof sketch is as follows: because the center _Z_ of _G_ is nontrivial (see below), according to Cauchy's theorem _Z_ has a subgroup _H_ of order _p_. Being central in _G_, _H_ is necessarily normal in _G_. We may now apply the inductive hypothesis to _G/H_, and the result follows from the Correspondence Theorem.

Non-trivial center

One of the first standard results using the class equation is that the center of a non-trivial finite _p_-group cannot be the trivial subgroup.[1]

This forms the basis for many inductive methods in _p_-groups.

For instance, the normalizer _N_ of a proper subgroup _H_ of a finite _p_-group _G_ properly contains _H_, because for any counterexample with _H_=_N_, the center _Z_ is contained in _N_, and so also in _H_, but then there is a smaller example _H_/_Z_ whose normalizer in _G_/_Z_ is _N_/_Z_=_H_/_Z_, creating an infinite descent. As a corollary, every finite _p_-group is nilpotent.

In another direction, every normal subgroup of a finite _p_-group intersects the center nontrivially as may be proved by considering the elements of _N_ which are fixed when _G_ acts on _N_ by conjugation. Since every central subgroup is normal, it follows that every minimal normal subgroup of a finite _p_-group is central and has order _p_. Indeed, the socle of a finite _p_-group is the subgroup of the center consisting of the central elements of order _p_.

If _G_ is a _p_-group, then so is _G_/_Z_, and so it too has a nontrivial center. The preimage in _G_ of the center of _G_/_Z_ is called the second center and these groups begin the upper central series. Generalizing the earlier comments about the socle, a finite _p_-group with order _p^(n)_ contains normal subgroups of order _p^(i)_ with 0 ≤ _i_ ≤ _n_, and any normal subgroup of order _p^(i)_ is contained in the _i_th center _Z__(_i_). If a normal subgroup is not contained in _Z__(_i_), then its intersection with _Z__(_i_+1) has size at least _p_^(_i_+1).

Automorphisms

The automorphism groups of _p_-groups are well studied. Just as every finite _p_-group has a nontrivial center so that the inner automorphism group is a proper quotient of the group, every finite _p_-group has a nontrivial outer automorphism group . Every automorphism of _G_ induces an automorphism on _G_/Φ(_G_), where Φ(_G_) is the Frattini subgroup of _G_. The quotient G/Φ(_G_) is an elementary abelian group and its automorphism group is a general linear group, so very well understood. The map from the automorphism group of _G_ into this general linear group has been studied by Burnside, who showed that the kernel of this map is a _p_-group.


Examples

_p_-groups of the same order are not necessarily isomorphic; for example, the cyclic group _C_₄ and the Klein four-group _V_₄ are both 2-groups of order 4, but they are not isomorphic.

Nor need a _p_-group be abelian; the dihedral group Dih₄ of order 8 is a non-abelian 2-group. However, every group of order _p_² is abelian.[2]

The dihedral groups are both very similar to and very dissimilar from the quaternion groups and the semidihedral groups. Together the dihedral, semidihedral, and quaternion groups form the 2-groups of maximal class, that is those groups of order 2^(_n_+1) and nilpotency class _n_.

Iterated wreath products

The iterated wreath products of cyclic groups of order _p_ are very important examples of _p_-groups. Denote the cyclic group of order _p_ as _W_(1), and the wreath product of _W_(_n_) with _W_(1) as _W_(_n_ + 1). Then _W_(_n_) is the Sylow _p_-subgroup of the symmetric group Sym(_p_^(_n_)). Maximal _p_-subgroups of the general linear group GL(_n_,Q) are direct products of various _W_(_n_). It has order _p_^(_k_) where _k_ = (_p_^(_n_) − 1)/(_p_ − 1). It has nilpotency class _p_^(_n_−1), and its lower central series, upper central series, lower exponent-_p_ central series, and upper exponent-_p_ central series are equal. It is generated by its elements of order _p_, but its exponent is _p_^(_n_). The second such group, _W_(2), is also a _p_-group of maximal class, since it has order _p_^(_p_+1) and nilpotency class _p_, but is not a regular _p_-group. Since groups of order _p_^(_p_) are always regular groups, it is also a minimal such example.

Generalized dihedral groups

When _p_ = 2 and _n_ = 2, _W_(_n_) is the dihedral group of order 8, so in some sense _W_(_n_) provides an analogue for the dihedral group for all primes _p_ when _n_ = 2. However, for higher _n_ the analogy becomes strained. There is a different family of examples that more closely mimics the dihedral groups of order 2^(_n_), but that requires a bit more setup. Let ζ denote a primitive _p_th root of unity in the complex numbers, let Z[ζ] be the ring of cyclotomic integers generated by it, and let _P_ be the prime ideal generated by 1−ζ. Let _G_ be a cyclic group of order _p_ generated by an element _z_. Form the semidirect product _E_(_p_) of Z[ζ] and _G_ where _z_ acts as multiplication by ζ. The powers _P_^(_n_) are normal subgroups of _E_(_p_), and the example groups are _E_(_p_,_n_) = _E_(_p_)/_P_^(_n_). _E_(_p_,_n_) has order _p_^(_n_+1) and nilpotency class _n_, so is a _p_-group of maximal class. When _p_ = 2, _E_(2,_n_) is the dihedral group of order 2^(_n_). When _p_ is odd, both _W_(2) and _E_(_p_,_p_) are irregular groups of maximal class and order _p_^(_p_+1), but are not isomorphic.

Unitriangular matrix groups

The Sylow subgroups of general linear groups are another fundamental family of examples. Let _V_ be a vector space of dimension _n_ with basis { _e_₁, _e_₂, …, _e__(_n_) } and define _V__(_i_) to be the vector space generated by { _e__(_i_), _e__(_i_+1), …, _e__(_n_) } for 1 ≤ _i_ ≤ _n_, and define _V__(_i_) = 0 when _i_ > _n_. For each 1 ≤ _m_ ≤ _n_, the set of invertible linear transformations of _V_ which take each _V__(_i_) to _V__(_i_+_m_) form a subgroup of Aut(_V_) denoted _U__(_m_). If _V_ is a vector space over Z/_p_Z, then _U_₁ is a Sylow _p_-subgroup of Aut(_V_) = GL(_n_, _p_), and the terms of its lower central series are just the _U__(_m_). In terms of matrices, _U__(_m_) are those upper triangular matrices with 1s one the diagonal and 0s on the first _m_−1 superdiagonals. The group _U_₁ has order _p_^(_n_·(_n_−1)/2), nilpotency class _n_, and exponent _p_^(_k_) where _k_ is the least integer at least as large as the base _p_ logarithm of _n_.


Classification

The groups of order _p_^(_n_) for 0 ≤ _n_ ≤ 4 were classified early in the history of group theory,[3] and modern work has extended these classifications to groups whose order divides _p_⁷, though the sheer number of families of such groups grows so quickly that further classifications along these lines are judged difficult for the human mind to comprehend.[4] For example, Marshall Hall Jr. and James K. Senior classified groups of order 2^(_n_) for _n_ ≤ 6 in 1964.[5]

Rather than classify the groups by order, Philip Hall proposed using a notion of isoclinism of groups which gathered finite _p_-groups into families based on large quotient and subgroups.[6]

An entirely different method classifies finite _p_-groups by their COCLASS, that is, the difference between their composition length and their nilpotency class. The so-called COCLASS CONJECTURES described the set of all finite _p_-groups of fixed coclass as perturbations of finitely many pro-p groups. The coclass conjectures were proven in the 1980s using techniques related to Lie algebras and powerful p-groups.[7] The final proofs of the COCLASS THEOREMS are due to A. Shalev and independently to C. R. Leedham-Green, both in 1994. They admit a classification of finite _p_-groups in directed coclass graphs consisting of only finitely many coclass trees whose (infinitely many) members are characterized by finitely many parametrized presentations.

Every group of order _p_⁵ is metabelian.[8]

Up to _p_³

The trivial group is the only group of order one, and the cyclic group _C__(_p_) is the only group of order _p_. There are exactly two groups of order _p_², both abelian, namely _C__(_p_²) and _C__(_p_) × _C__(_p_). For example, the cyclic group _C_₄ and the Klein four-group _V_₄ which is _C_₂ × _C_₂ are both 2-groups of order 4.

There are three abelian groups of order _p_³, namely _C__(_p_³), _C__(_p_²)×_C__(_p_), and _C__(_p_)×_C__(_p_)×_C__(_p_). There are also two non-abelian groups.

For _p_ ≠ 2, one is a semi-direct product of _C__(_p_)×_C__(_p_) with _C__(_p_), and the other is a semi-direct product of _C__(_p_²) with _C__(_p_). The first one can be described in other terms as group UT(3,_p_) of unitriangular matrices over finite field with _p_ elements, also called the Heisenberg group mod _p_.

For _p_ = 2, both the semi-direct products mentioned above are isomorphic to the dihedral group Dih₄ of order 8. The other non-abelian group of order 8 is the quaternion group _Q_₈.


Prevalence

Among groups

The number of isomorphism classes of groups of order _p^(n)_ grows as $p^{\frac{2}{27}n^3+O(n^{8/3})}$, and these are dominated by the classes that are two-step nilpotent.[9] Because of this rapid growth, there is a folklore conjecture asserting that almost all finite groups are 2-groups: the fraction of isomorphism classes of 2-groups among isomorphism classes of groups of order at most _n_ is thought to tend to 1 as _n_ tends to infinity. For instance, of the 49 910 529 484 different groups of order at most 2000, 49 487 365 422, or just over 99%, are 2-groups of order 1024.[10]

Within a group

Every finite group whose order is divisible by _p_ contains a subgroup which is a non-trivial _p_-group, namely a cyclic group of order _p_ generated by an element of order _p_ obtained from Cauchy's theorem. In fact, it contains a _p_-group of maximal possible order: if |G| = n = p^(k)m where _p_ does not divide _m,_ then _G_ has a subgroup _P_ of order p^(k), called a Sylow _p_-subgroup. This subgroup need not be unique, but any subgroups of this order are conjugate, and any _p_-subgroup of _G_ is contained in a Sylow _p_-subgroup. This and other properties are proved in the Sylow theorems.


Application to structure of a group

_p_-groups are fundamental tools in understanding the structure of groups and in the classification of finite simple groups. _p_-groups arise both as subgroups and as quotient groups. As subgroups, for a given prime _p_ one has the Sylow _p_-subgroups _P_ (largest _p_-subgroup not unique but all conjugate) and the _p_-core O_(p)(G) (the unique largest _normal_ _p_-subgroup), and various others. As quotients, the largest _p_-group quotient is the quotient of _G_ by the _p_-residual subgroup O^(p)(G). These groups are related (for different primes), possess important properties such as the focal subgroup theorem, and allow one to determine many aspects of the structure of the group.

Local control

Much of the structure of a finite group is carried in the structure of its so-called LOCAL SUBGROUPS, the normalizers of non-identity _p_-subgroups.[11]

The large elementary abelian subgroups of a finite group exert control over the group that was used in the proof of the Feit–Thompson theorem. Certain central extensions of elementary abelian groups called extraspecial groups help describe the structure of groups as acting on symplectic vector spaces.

Brauer classified all groups whose Sylow 2-subgroups are the direct product of two cyclic groups of order 4, and Walter, Gorenstein, Bender, Suzuki, Glauberman, and others classified those simple groups whose Sylow 2-subgroups were abelian, dihedral, semidihedral, or quaternion.


See also

-   Elementary group
-   Prüfer rank
-   Regular p-group


Footnotes

Notes

Citations


References

-   -   -   -   — An exhaustive catalog of the 340 non-abelian groups of order dividing 64 with detailed tables of defining relations, constants, and lattice presentations of each group in the notation the text defines. "Of enduring value to those interested in finite groups" (from the preface).

-   -   -


Further reading

-   -   -


External links

-

P-groups

[1] proof

[2] To prove that a group of order _p_² is abelian, note that it is a _p_-group so has non-trivial center, so given a non-trivial element of the center _g,_ this either generates the group (so _G_ is cyclic, hence abelian: G = C_(p²)), or it generates a subgroup of order _p,_ so _g_ and some element _h_ not in its orbit generate _G,_ (since the subgroup they generate must have order p²) but they commute since _g_ is central, so the group is abelian, and in fact G = C_(p) × C_(p).

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]