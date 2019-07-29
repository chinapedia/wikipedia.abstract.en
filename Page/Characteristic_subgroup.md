In mathematics, particularly in the area of abstract algebra known as group theory, a CHARACTERISTIC SUBGROUP is a subgroup that is mapped to itself by every automorphism of the parent group.[1][2] Because every conjugation map is an inner automorphism, every characteristic subgroup is normal; though the converse is not guaranteed. Examples of characteristic subgroups include the commutator subgroup and the center of a group.


Definition

A subgroup of a group is called CHARACTERISTIC SUBGROUP, , if for every automorphism of , holds, i.e. if every automorphism of the parent group maps the subgroup to within itself.

Every automorphism of induces an automorphism of the quotient group, , which yields a map .

If has a unique subgroup of a given (finite) index, then is characteristic in .


Related concepts

Normal subgroup

A subgroup of that is invariant under all inner automorphisms is called normal; also, an invariant subgroup.



Since and a characteristic subgroup is invariant under all automorphisms, every characteristic subgroup is normal. However, not every normal subgroup is characteristic. Here are several examples:

-   Let be a nontrivial group, and let be the direct product, . Then the subgroups, and }}, are both normal, but neither is characteristic. In particular, neither of these subgroups is invariant under the automorphism, , that switches the two factors.
-   For a concrete example of this, let be the Klein four-group (which is isomorphic to the direct product, . Consider {_e_, _a_{{)}}}} and consider the automorphism, _e_, T(_a_) {{=}} _b_, T(_b_) {{=}} _a_, T(_ab_) {{=}} _ab_}}; then is not contained in .
-   In the quaternion group of order 8, each of the cyclic subgroups of order 4 is normal, but none of these are characteristic. However, the subgroup, }}, is characteristic, since it is the only subgroup of order 2.
-   If is even, the dihedral group of order has 3 subgroups of index 2, all of which are normal. One of these is the cyclic subgroup, which is characteristic. The other two subgroups are dihedral; these are permuted by an outer automorphism of the parent group, and are therefore not characteristic.

Strictly characteristic subgroup

A __, or a __, which is invariant under surjective endomorphisms. For finite groups, surjectivity of an endomorphism implies injectivity, so a surjective endomorphism is an automorphism; thus being _strictly characteristic_ is equivalent to _characteristic_. This is not the case anymore for infinite groups.

Fully characteristic subgroup

For an even stronger constraint, a _fully characteristic subgroup_ (also, _fully invariant subgroup_; cf. invariant subgroup), , of a group, is a group remaining invariant under every endomorphism of ; that is,

    .

Every group has itself (the improper subgroup) and the trivial subgroup as two of its fully characteristic subgroups. The commutator subgroup of a group is always a fully characteristic subgroup.[3][4]

Every endomorphism of induces an endomorphism of , which yields a map .

Verbal subgroup

An even stronger constraint is verbal subgroup, which is the image of a fully invariant subgroup of a free group under a homomorphism. More generally, any verbal subgroup is always fully characteristic. For any reduced free group, and, in particular, for any free group, the converse also holds: every fully characteristic subgroup is verbal.


Transitivity

The property of being characteristic or fully characteristic is transitive; if is a (fully) characteristic subgroup of , and is a (fully) characteristic subgroup of , then is a (fully) characteristic subgroup of .

    .

Moreover, while normality is not transitive, it is true that every characteristic subgroup of a normal subgroup is normal.



Similarly, while being strictly characteristic (distinguished) is not transitive, it is true that every fully characteristic subgroup of a strictly characteristic subgroup is strictly characteristic.

However, unlike normality, if and is a subgroup of containing , then in general is not necessarily characteristic in .




Containments

Every subgroup that is fully characteristic is certainly strictly characteristic and characteristic; but a characteristic or even strictly characteristic subgroup need not be fully characteristic.

The center of a group is always a strictly characteristic subgroup, but it is not always fully characteristic. For example, the finite group of order 12, , has a homomorphism taking to which takes the center, , into a subgroup of , which meets the center only in the identity.

The relationship amongst these subgroup properties can be expressed as:

    Subgroup ⇐ Normal subgroup ⇐ CHARACTERISTIC SUBGROUP ⇐ Strictly characteristic subgroup ⇐ Fully characteristic subgroup ⇐ Verbal subgroup


Examples

Finite example

Consider the group S × ℤ}} (the group of order 12 which is the direct product of the symmetric group of order 6 and a cyclic group of order 2). The center of is its second factor . Note that the first factor, , contains subgroups isomorphic to , for instance ; let be the morphism mapping onto the indicated subgroup. Then the composition of the projection of onto its second factor , followed by , followed by the inclusion of into as its first factor, provides an endomorphism of under which the image of the center, , is not contained in the center, so here the center is not a fully characteristic subgroup of .

Cyclic groups

Every subgroup of a cyclic group is characteristic.

Subgroup functors

The derived subgroup (or commutator subgroup) of a group is a verbal subgroup. The torsion subgroup of an abelian group is a fully invariant subgroup.

Topological groups

The identity component of a topological group is always a characteristic subgroup.


See also

-   Characteristically simple group


References

Category:Subgroup properties

[1]

[2]

[3]

[4]