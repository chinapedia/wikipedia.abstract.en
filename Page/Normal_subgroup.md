In abstract algebra, a NORMAL SUBGROUP is a subgroup that is invariant under conjugation by members of the group of which it is a part. In other words, a subgroup of the group is normal in if and only if for all and . The usual notation for this relation is N ⊲ G.

Normal subgroups are important because they (and only they) can be used to construct quotient groups of the given group. Furthermore, the normal subgroups of are precisely the kernels of group homomorphisms with domain , which means that they can be used to internally classify those homomorphisms.

Évariste Galois was the first to realize the importance of the existence of normal subgroups.


Definitions

A subgroup of a group is called a NORMAL SUBGROUP of if it is invariant under conjugation; that is, the conjugation of an element of by an element of is always in . The usual notation for this relation is N ⊲ G, and the definition may be written in symbols as N ⊲ G ⇔ ∀n ∈ N, ∀g ∈ G: gng^( − 1) ∈ N.

Equivalent conditions

For any subgroup of , the following conditions are equivalent to being a normal subgroup of . Therefore, any one of them may be taken as the definition:

-   Any two elements commute regarding the normal subgroup membership relation: .
-   The image of conjugation of by any element of is a subset of : . In other words, is preserved by inner automorphisms.
-   The image of conjugation of by any element of is : _N_}}.
-   _Ng_}}.

-   The sets of left and right cosets of in coincide.
-   The product of an element of the left coset of with respect to and an element of the left coset of with respect to is an element of the left coset of with respect to : , if and then .
-   is a union of conjugacy classes of : ⋃ Cl(_g_)}}.

-   For all n ∈ N and g ∈ G, the commutator [n, g] = n^( − 1)g^( − 1)ng is in .
-   There is some group homomorphism whose kernel is .


Examples

-   The trivial subgroup consisting of just the identity element of and itself are always normal subgroups of . If these are the only normal subgroups, then is said to be simple.
-   The translation group is a normal subgroup of the Euclidean group in any dimension. This means: applying a rigid transformation, followed by a translation and then the inverse rigid transformation, has the same effect as a single translation (though typically a different one than the one we used earlier). By contrast, the subgroup of all rotations about the origin is _not_ a normal subgroup of the Euclidean group, as long as the dimension is at least 2: first translating, then rotating about the origin, and then translating back will typically not fix the origin and will therefore not have the same effect as a single rotation about the origin.
-   Every subgroup of an abelian group is normal, because _Ng_}}. A group that is not abelian but for which every subgroup is normal is called a Hamiltonian group.
-   The center of a group is a normal subgroup.
-   The commutator subgroup is a normal subgroup.
-   More generally, any characteristic subgroup is normal, since conjugation is always an automorphism.
-   In the Rubik's Cube group, the subgroups consisting of operations which only affect the orientations of either the corner pieces or the edge pieces are normal.


Properties

-   If is a normal subgroup of , and is a subgroup of containing , then is a normal subgroup of .
-   A normal subgroup of a normal subgroup of a group need not be normal in the group. That is, normality is not a transitive relation. The smallest group exhibiting this phenomenon is the dihedral group of order 8. However, a characteristic subgroup of a normal subgroup is normal. A group in which normality is transitive is called a T-group.
-   The two groups and are normal subgroups of their direct product direct product .
-   If the group is a semidirect product G = N ⋊ H,, then is normal in , though need not be normal in .
-   Normality is preserved under surjective homomorphisms, i.e. if is a surjective group homomorphism and is normal in , then the image is normal in .
-   Normality is preserved by taking inverse images, i.e. if is a group homomorphism and is normal in , then the inverse image is normal in .
-   Normality is preserved on taking direct products, i.e. if N₁ ⊲ G₁ and N₂ ⊲ G₂, then N₁ × N₂ ⊲ G₁ × G₂.
-   Every subgroup of index 2 is normal. More generally, a subgroup, , of finite index, , in contains a subgroup, , normal in and of index dividing called the normal core. In particular, if is the smallest prime dividing the order of , then every subgroup of index is normal.
-   The fact that normal subgroups of are precisely the kernels of group homomorphisms defined on _G_ accounts for some of the importance of normal subgroups; they are a way to internally classify all homomorphisms defined on a group. For example, a non-identity finite group is simple if and only if it is isomorphic to all of its non-identity homomorphic images, a finite group is perfect if and only if it has no normal subgroups of prime index, and a group is imperfect if and only if the derived subgroup is not supplemented by any proper normal subgroup.

Lattice of normal subgroups

Given two normal subgroups, and , of , their intersection N ∩ Mand their product NM = {nm ∣ n ∈ N  and  m ∈ M} are also normal subgroups of .

The normal subgroups of form a lattice under subset inclusion with least element, , and greatest element, . The meet of two normal subgroups, and , in this lattice is their intersection and the join is their product.

The lattice is complete and modular.


Normal subgroups, quotient groups and homomorphisms

If is a normal subgroup, we can define a multiplication on cosets as follows:

    (a₁N)(a₂N) := (a₁a₂)N.

With this operation, the set of cosets is itself a group, called the quotient group and denoted . There is a natural homomorphism, given by _aN_}}. The image consists only of the identity element of , the coset _N_}}.

In general, a group homomorphism, sends subgroups of to subgroups of . Also, the preimage of any subgroup of is a subgroup of . We call the preimage of the trivial group in the KERNEL of the homomorphism and denote it by . As it turns out, the kernel is always normal and the image of , , is always isomorphic to (the first isomorphism theorem). In fact, this correspondence is a bijection between the set of all quotient groups of , , and the set of all homomorphic images of (up to isomorphism). It is also easy to see that the kernel of the quotient map, , is itself, so the normal subgroups are precisely the kernels of homomorphisms with domain .


See also

Operations taking subgroups to subgroups

-   Normalizer
-   Conjugate closure
-   Normal core

Subgroup properties complementary (or opposite) to normality

-   Malnormal subgroup
-   Contranormal subgroup
-   Abnormal subgroup
-   Self-normalizing subgroup

Subgroup properties stronger than normality

-   Characteristic subgroup
-   Fully characteristic subgroup

Subgroup properties weaker than normality

-   Subnormal subgroup
-   Ascendant subgroup
-   Descendant subgroup
-   Quasinormal subgroup
-   Seminormal subgroup
-   Conjugate permutable subgroup
-   Modular subgroup
-   Pronormal subgroup
-   Paranormal subgroup
-   Polynormal subgroup
-   C-normal subgroup

Related notions in algebra

-   Ideal (ring theory)


Notes


References

-   -   -   -   -   -   -   -   -


Further reading

-   I. N. Herstein, _Topics in algebra._ Second edition. Xerox College Publishing, Lexington, Mass.-Toronto, Ont., 1975. xi+388 pp.


External links

-   -   Normal subgroup in Springer's Encyclopedia of Mathematics
-   Robert Ash: Group Fundamentals in _Abstract Algebra. The Basic Graduate Year_
-   Timothy Gowers, Normal subgroups and quotient groups
-   John Baez, What's a Normal Subgroup?

Category:Subgroup properties