In the mathematical field of category theory, the CATEGORY OF SETS, denoted as SET, is the category whose objects are sets. The arrows or morphisms between sets _A_ and _B_ are the total functions from _A_ to _B_, and the composition of morphisms is the composition of functions.

Many other categories (such as the category of groups, with group homomorphisms as arrows) add structure to the objects of the category of sets and/or restrict the arrows to functions of a particular kind.


Properties of the category of sets

The axioms of a category are satisfied by SET because composition of functions is associative, and because every set _X_ has an identity function _id_(X) : X → X_ which serves as identity element for function composition.

The epimorphisms in SET are the surjective maps, the monomorphisms are the injective maps, and the isomorphisms are the bijective maps.

The empty set serves as the initial object in SET with empty functions as morphisms. Every singleton is a terminal object, with the functions mapping all elements of the source sets to the single target element as morphisms. There are thus no zero objects in SET.

The category SET is complete and co-complete. The product in this category is given by the cartesian product of sets. The coproduct is given by the disjoint union: given sets _A__(_i_) where _i_ ranges over some index set _I_, we construct the coproduct as the union of _A__(_i_)×{_i_} (the cartesian product with _i_ serves to ensure that all the components stay disjoint).

SET is the prototype of a concrete category; other categories are concrete if they are "built on" SET in some well-defined way.

Every two-element set serves as a subobject classifier in SET. The power object of a set _A_ is given by its power set, and the exponential object of the sets _A_ and _B_ is given by the set of all functions from _A_ to _B_. SET is thus a topos (and in particular cartesian closed and exact in the sense of Barr).

SET is not abelian, additive nor preadditive.

Every non-empty set is an injective object in SET. Every set is a projective object in SET (assuming the axiom of choice).

The finitely presentable objects in SET are the finite sets. Since every set is a direct limit of its finite subsets, the category SET is a locally finitely presentable category.

If _C_ is an arbitrary category, the contravariant functors from _C_ to SET are often an important object of study. If _A_ is an object of _C_, then the functor from _C_ to SET that sends _X_ to Hom_(_C_)(_X_,_A_) (the set of morphisms in _C_ from _X_ to _A_) is an example of such a functor. If _C_ is a small category (i.e. the collection of its objects forms a set), then the contravariant functors from _C_ to SET, together with natural transformations as morphisms, form a new category, a functor category known as the category of presheaves on _C_.


Foundations for the category of sets

In Zermelo–Fraenkel set theory the collection of all sets is not a set; this follows from the axiom of foundation. One refers to collections that are not sets as proper classes. One cannot handle proper classes as one handles sets; in particular, one cannot write that those proper classes belong to a collection (either a set or a proper class). This is a problem because it means that the category of sets cannot be formalized straightforwardly in this setting. Categories like SET whose collection of objects forms a proper class are known as large categories, to distinguish them from the small categories whose objects form a set.

One way to resolve the problem is to work in a system that gives formal status to proper classes, such as NBG set theory. In this setting, categories formed from sets are said to be _small_ and those (like SET) that are formed from proper classes are said to be _large_.

Another solution is to assume the existence of Grothendieck universes. Roughly speaking, a Grothendieck universe is a set which is itself a model of ZF(C) (for instance if a set belongs to a universe, its elements and its powerset will belong to the universe). The existence of Grothendieck universes (other than the empty set and the set V_(ω) of all hereditarily finite sets) is not implied by the usual ZF axioms; it is an additional, independent axiom, roughly equivalent to the existence of strongly inaccessible cardinals. Assuming this extra axiom, one can limit the objects of SET to the elements of a particular universe. (There is no "set of all sets" within the model, but one can still reason about the class _U_ of all inner sets, i.e., elements of _U_.)

In one variation of this scheme, the class of sets is the union of the entire tower of Grothendieck universes. (This is necessarily a proper class, but each Grothendieck universe is a set because it is an element of some larger Grothendieck universe.) However, one does not work directly with the "category of all sets". Instead, theorems are expressed in terms of the category SET_(_U_) whose objects are the elements of a sufficiently large Grothendieck universe _U_, and are then shown not to depend on the particular choice of _U_. As a foundation for category theory, this approach is well matched to a system like Tarski–Grothendieck set theory in which one cannot reason directly about proper classes; its principal disadvantage is that a theorem can be true of all SET_(_U_) but not of SET.

Various other solutions, and variations on the above, have been proposed.[1][2][3]

The same issues arise with other concrete categories, such as the category of groups or the category of topological spaces.


See also

-   Set theory
-   Small set (category theory)


Notes


References

-   Blass, A. The interaction between category theory and set theory. Contemporary Mathematics 30 (1984).
-   Feferman, S. Set-theoretical foundations of category theory. Springer Lect. Notes Math. 106 (1969): 201–247.
-   Lawvere, F.W. An elementary theory of the category of sets (long version) with commentary
-   Mac Lane, S. One universe as a foundation for category theory. Springer Lect. Notes Math. 106 (1969): 192–200.
-   (Volume 5 in the series Graduate Texts in Mathematics)

-

Sets Category:Basic concepts in set theory

[1] Mac Lane 1969

[2] Feferman 1969

[3] Blass 1984