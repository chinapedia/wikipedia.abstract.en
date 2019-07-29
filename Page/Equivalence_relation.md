Equivalence}} Set_partitions_5;_matrices.svg equivalence relations on a 5-element set depicted as 5×5 logical matrices (colored fields, including those in light gray, stand for ones; white fields for zeros.) The row and column indices of nonwhite cells are the related elements, while the different colors, other than light gray, indicate the equivalence classes (each light gray cell is its own equivalence class).]]

In mathematics, an EQUIVALENCE RELATION is a binary relation that is reflexive, symmetric and transitive. The relation "is equal to" is the canonical example of an equivalence relation, where for any objects , , and :

-   _a_}} (reflexive property),

-   if _b_}} then _a_}} (symmetric property), and
-   if _b_}} and _c_}} then _c_}} (transitive property).

As a consequence of the reflexive, symmetric, and transitive properties, any equivalence relation provides a partition of the underlying set into disjoint equivalence classes. Two elements of the given set are equivalent to each other if and only if they belong to the same equivalence class.


Notation

Various notations are used in the literature to denote that two elements and of a set are equivalent with respect to an equivalence relation ; the most common are "" and "", which are used when is implicit, and variations of "", "", or "" to specify explicitly. Non-equivalence may be written "" or "$a \not\equiv b$".


Definition

A given binary relation ~ on a set _X_ is said to be an equivalence relation if and only if it is reflexive, symmetric and transitive. That is, for all _a_, _b_ and _c_ in _X_:

-   _a_ ~ _a_. (Reflexivity)
-   _a_ ~ _b_ if and only if _b_ ~ _a_. (Symmetry)
-   if _a_ ~ _b_ and _b_ ~ _c_ then _a_ ~ _c_. (Transitivity)

_X_ together with the relation ~ is called a setoid. The equivalence class of a under ~, denoted [a], is defined as [a] = {b ∈ X ∣ a ∼ b}.


Examples

Simple example

Let the set {a, b, c} have the equivalence relation {(a, a), (b, b), (c, c), (b, c), (c, b)}. The following sets are equivalence classes of this relation:

    [a] = {a},    [b] = [c] = {b, c}.

The set of all equivalence classes for this relation is {{a}, {b, c}}. This set is a partition of the set {a, b, c}.

Equivalence relations

The following are all equivalence relations:

-   "Is equal to" on the set of numbers. For example, $\tfrac{1}{2}$ is equal to $\tfrac{4}{8}$.
-   "Has the same birthday as" on the set of all people.
-   "Is similar to" on the set of all triangles.
-   "Is congruent to" on the set of all triangles.
-   "Is congruent to, modulo _n_" on the integers.
-   "Has the same image under a function" on the elements of the domain of the function.
-   "Has the same absolute value" on the set of real numbers
-   "Has the same cosine" on the set of all angles.

Relations that are not equivalences

-   The relation "≥" between real numbers is reflexive and transitive, but not symmetric. For example, 7 ≥ 5 does not imply that 5 ≥ 7. It is, however, a total order.
-   The relation "has a common factor greater than 1 with" between natural numbers greater than 1, is reflexive and symmetric, but not transitive. (Example: The natural numbers 2 and 6 have a common factor greater than 1, and 6 and 3 have a common factor greater than 1, but 2 and 3 do not have a common factor greater than 1).
-   The empty relation _R_ on a non-empty set _X_ (i.e. _aRb_ is never true) is vacuously symmetric and transitive, but not reflexive. (If _X_ is also empty then _R_ _is_ reflexive.)
-   The relation "is approximately equal to" between real numbers, even if more precisely defined, is not an equivalence relation, because although reflexive and symmetric, it is not transitive, since multiple small changes can accumulate to become a big change. However, if the approximation is defined asymptotically, for example by saying that two functions _f_ and _g_ are approximately equal near some point if the limit of _f − g_ is 0 at that point, then this defines an equivalence relation.


Connections to other relations

-   A partial order is a relation that is reflexive, _antisymmetric_, and transitive.
-   Equality is both an equivalence relation and a partial order. Equality is also the only relation on a set that is reflexive, symmetric and antisymmetric. In algebraic expressions, equal variables may be substituted for one another, a facility that is not available for equivalence related variables. The equivalence classes of an equivalence relation can substitute for one another, but not individuals within a class.
-   A strict partial order is irreflexive, transitive, and asymmetric.
-   A partial equivalence relation is transitive and symmetric. Transitive and symmetric imply reflexive if and only if for all ''a ''∈ _X_, there exists a ''b ''∈ _X_ such that ''a ''~ _b_.
-   A reflexive and symmetric relation is a dependency relation, if finite, and a tolerance relation if infinite.
-   A preorder is reflexive and transitive.
-   A congruence relation is an equivalence relation whose domain _X_ is also the underlying set for an algebraic structure, and which respects the additional structure. In general, congruence relations play the role of kernels of homomorphisms, and the quotient of a structure by a congruence relation can be formed. In many important cases congruence relations have an alternative representation as substructures of the structure on which they are defined. E.g. the congruence relations on groups correspond to the normal subgroups.
-   Any equivalence relation is the negation of an apartness relation, though the converse statement only holds in classical mathematics (as opposed to constructive mathematics), since it is equivalent to the law of excluded middle.
-   A serial relation ~ satisfies ∀ _a_ ∃ _b_   _a_ ~ _b_. Evidently it is sufficient for a serial relation ~ to be symmetric and transitive for it also to be reflexive. Indeed, since the relation is serial, every element is in the relation. Then, using symmetry, reflexivity can be concluded from transitivity by identifying the first and third variables in the transitive axiom. Therefore, an equivalence relation may be alternatively defined as a symmetric, transitive, serial relation.


Well-definedness under an equivalence relation

If ~ is an equivalence relation on _X_, and _P_(_x_) is a property of elements of _X_, such that whenever _x_ ~ _y_, _P_(_x_) is true if _P_(_y_) is true, then the property _P_ is said to be well-defined or a _class invariant_ under the relation ~.

A frequent particular case occurs when _f_ is a function from _X_ to another set _Y_; if _x_₁ ~ _x_₂ implies _f_(_x_₁) = _f_(_x_₂) then _f_ is said to be a _morphism_ for ~, a _class invariant under_ ~, or simply _invariant under_ ~. This occurs, e.g. in the character theory of finite groups. The latter case with the function _f_ can be expressed by a commutative triangle. See also invariant. Some authors use "compatible with ~" or just "respects ~" instead of "invariant under ~".

More generally, a function may map equivalent arguments (under an equivalence relation ~_(A)) to equivalent values (under an equivalence relation ~_(B)). Such a function is known as a morphism from ~_(A) to ~_(B).


Equivalence class, quotient set, partition

Let a, b ∈ X. Some definitions:

Equivalence class

A subset _Y_ of _X_ such that _a_ ~ _b_ holds for all _a_ and _b_ in _Y_, and never for _a_ in _Y_ and _b_ outside _Y_, is called an EQUIVALENCE CLASS of _X_ by ~. Let [a] := {x ∈ X ∣ a ∼ x} denote the equivalence class to which _a_ belongs. All elements of _X_ equivalent to each other are also elements of the same equivalence class.

Quotient set

The set of all possible equivalence classes of _X_ by ~, denoted X/∼ := {[x] ∣ x ∈ X}, is the QUOTIENT SET of _X_ by ~. If _X_ is a topological space, there is a natural way of transforming _X_/~ into a topological space; see quotient space for the details.

Projection

The PROJECTION of ~ is the function π : X → X/∼ defined by π(x) = [x] which maps elements of _X_ into their respective equivalence classes by ~.

    THEOREM on projections:[1] Let the function _f_: _X_ → _B_ be such that _a_ ~ _b_ → _f_(_a_) = _f_(_b_). Then there is a unique function _g_ : _X/~_ → _B_, such that _f_ = _g_π. If _f_ is a surjection and _a_ ~ _b_ ↔ _f_(_a_) = _f_(_b_), then _g_ is a bijection.

Equivalence kernel

The EQUIVALENCE KERNEL of a function _f_ is the equivalence relation ~ defined by x ∼ y ⇔ f(x) = f(y). The equivalence kernel of an injection is the identity relation.

Partition

A PARTITION of _X_ is a set _P_ of nonempty subsets of _X_, such that every element of _X_ is an element of a single element of _P_. Each element of _P_ is a _cell_ of the partition. Moreover, the elements of _P_ are pairwise disjoint and their union is _X_.

Counting possible partitions

Let _X_ be a finite set with _n_ elements. Since every equivalence relation over _X_ corresponds to a partition of _X_, and vice versa, the number of possible equivalence relations on _X_ equals the number of distinct partitions of _X_, which is the _n_th Bell number _B_(n)_:

    $B_n = \frac{1}{e}\sum_{k=0}^\infty \frac{k^n}{k!},$

where the above is one of the ways to write the _n_th Bell number.


Fundamental theorem of equivalence relations

A key result links equivalence relations and partitions:[2][3][4]

-   An equivalence relation ~ on a set _X_ partitions _X_.
-   Conversely, corresponding to any partition of _X_, there exists an equivalence relation ~ on _X_.

In both cases, the cells of the partition of _X_ are the equivalence classes of _X_ by ~. Since each element of _X_ belongs to a unique cell of any partition of _X_, and since each cell of the partition is identical to an equivalence class of _X_ by ~, each element of _X_ belongs to a unique equivalence class of _X_ by ~. Thus there is a natural bijection between the set of all possible equivalence relations on _X_ and the set of all partitions of _X_.


Comparing equivalence relations

If ~ and ≈ are two equivalence relations on the same set _S_, and _a_~_b_ implies _a_≈_b_ for all _a_,_b_ ∈ _S_, then ≈ is said to be a COARSER relation than ~, and ~ is a FINER relation than ≈. Equivalently,

-   ~ is finer than ≈ if every equivalence class of ~ is a subset of an equivalence class of ≈, and thus every equivalence class of ≈ is a union of equivalence classes of ~.
-   ~ is finer than ≈ if the partition created by ~ is a refinement of the partition created by ≈.

The equality equivalence relation is the finest equivalence relation on any set, while the trivial relation that makes all pairs of elements related is the coarsest.

The relation "~ is finer than ≈" on the collection of all equivalence relations on a fixed set is itself a partial order relation, which makes the collection a geometric lattice.[5]


Generating equivalence relations

Given any binary relation A ⊂ X × X on X, the EQUIVALENCE RELATION GENERATED BY A is the intersection of the equivalence relations on X that contain A. (Since X × X is an equivalence relation, the intersection is nontrivial.)

-   Given any set _X_, there is an equivalence relation over the set [_X_ → _X_] of all possible functions _X_→_X_. Two such functions are deemed equivalent when their respective sets of fixpoints have the same cardinality, corresponding to cycles of length one in a permutation. Functions equivalent in this manner form an equivalence class on [_X_ → _X_], and these equivalence classes partition [_X_ → _X_].
-   An equivalence relation ~ on _X_ is the equivalence kernel of its surjective projection π : _X_ → _X_/~.[6] Conversely, any surjection between sets determines a partition on its domain, the set of preimages of singletons in the codomain. Thus an equivalence relation over _X_, a partition of _X_, and a projection whose domain is _X_, are three equivalent ways of specifying the same thing.
-   The intersection of any collection of equivalence relations over _X_ (binary relations viewed as a subset of _X_ × _X_) is also an equivalence relation. This yields a convenient way of generating an equivalence relation: given any binary relation _R_ on _X_, the equivalence relation _generated by R_ is the smallest equivalence relation containing _R_. Concretely, _R_ generates the equivalence relation _a_ ~ _b_ if and only if there exist elements _x_₁, _x_₂, ..., _x__(_n_) in _X_ such that _a_ = _x_₁, _b_ = _x__(_n_), and (_x__(_i_), _x__(_i_+1)) ∈ _R_ or (_x__(_i_+1), _x__(_i_)) ∈ _R_, _i_ = 1, ..., _n_−1. Note that the equivalence relation generated in this manner can be trivial. For instance, the equivalence relation ~ generated by any total order on _X_ has exactly one equivalence class, _X_ itself, because _x_ ~ _y_ for all _x_ and _y_. As another example, any subset of the identity relation on _X_ has equivalence classes that are the singletons of _X_.
-   Equivalence relations can construct new spaces by "gluing things together." Let _X_ be the unit Cartesian square [0, 1] × [0, 1], and let ~ be the equivalence relation on _X_ defined by (_a_, 0) ~ (_a_, 1) for all _a_ ∈ [0, 1] and (0, _b_) ~ (1, _b_) for all _b_ ∈ [0, 1]. Then the quotient space _X_/~ can be naturally identified (homeomorphism) with a torus: take a square piece of paper, bend and glue together the upper and lower edge to form a cylinder, then bend the resulting cylinder so as to glue together its two open ends, resulting in a torus.


Algebraic structure

Much of mathematics is grounded in the study of equivalences, and order relations. Lattice theory captures the mathematical structure of order relations. Even though equivalence relations are as ubiquitous in mathematics as order relations, the algebraic structure of equivalences is not as well known as that of orders. The former structure draws primarily on group theory and, to a lesser extent, on the theory of lattices, categories, and groupoids.

Group theory

Just as order relations are grounded in ordered sets, sets closed under pairwise supremum and infimum, equivalence relations are grounded in partitioned sets, which are sets closed under bijections that preserve partition structure. Since all such bijections map an equivalence class onto itself, such bijections are also known as permutations. Hence permutation groups (also known as transformation groups) and the related notion of orbit shed light on the mathematical structure of equivalence relations.

Let '~' denote an equivalence relation over some nonempty set _A_, called the universe or underlying set. Let _G_ denote the set of bijective functions over _A_ that preserve the partition structure of _A_: ∀_x_ ∈ _A_ ∀_g_ ∈ _G_ (_g_(_x_) ∈ [_x_]). Then the following three connected theorems hold:[7]

-   ~ partitions _A_ into equivalence classes. (This is the _Fundamental Theorem of Equivalence Relations,_ mentioned above);
-   Given a partition of _A_, _G_ is a transformation group under composition, whose orbits are the cells of the partition;{{#tag:ref|

_Proof_.[8] Let function composition interpret group multiplication, and function inverse interpret group inverse. Then _G_ is a group under composition, meaning that ∀_x_ ∈ _A_ ∀_g_ ∈ _G_ ([_g_(_x_)] = [_x_]), because _G_ satisfies the following four conditions:

-   _G is closed under composition_. The composition of any two elements of _G_ exists, because the domain and codomain of any element of _G_ is _A_. Moreover, the composition of bijections is bijective;[9]
-   _Existence of identity function_. The identity function, _I_(_x_) = _x_, is an obvious element of _G_;
-   _Existence of inverse function_. Every bijective function _g_ has an inverse _g_^(−1), such that _gg_^(−1) = _I_;
-   _Composition associates_. _f_(_gh_) = (_fg_)_h_. This holds for all functions over all domains.[10]

Let _f_ and _g_ be any two elements of _G_. By virtue of the definition of _G_, [_g_(_f_(_x_))] = [_f_(_x_)] and [_f_(_x_)] = [_x_], so that [_g_(_f_(_x_))] = [_x_]. Hence _G_ is also a transformation group (and an automorphism group) because function composition preserves the partitioning of _A_.

▫}}

-   Given a transformation group _G_ over _A_, there exists an equivalence relation ~ over _A_, whose equivalence classes are the orbits of _G_.[11][12]

In sum, given an equivalence relation ~ over _A_, there exists a transformation group _G_ over _A_ whose orbits are the equivalence classes of _A_ under ~.

This transformation group characterisation of equivalence relations differs fundamentally from the way lattices characterize order relations. The arguments of the lattice theory operations meet and join are elements of some universe _A_. Meanwhile, the arguments of the transformation group operations composition and inverse are elements of a set of bijections, _A_ → _A_.

Moving to groups in general, let _H_ be a subgroup of some group _G_. Let ~ be an equivalence relation on _G_, such that _a_ ~ _b_ ↔ (_ab_^(−1) ∈ _H_). The equivalence classes of ~—also called the orbits of the action of _H_ on _G_—are the right COSETS of _H_ in _G_. Interchanging _a_ and _b_ yields the left cosets.

Related thinking can be found in Rosen (2008: chpt. 10).

Categories and groupoids

Let _G_ be a set and let "~" denote an equivalence relation over _G_. Then we can form a groupoid representing this equivalence relation as follows. The objects are the elements of _G_, and for any two elements _x_ and _y_ of _G_, there exists a unique morphism from _x_ to _y_ if and only if _x_~_y_.

The advantages of regarding an equivalence relation as a special case of a groupoid include:

-   Whereas the notion of "free equivalence relation" does not exist, that of a free groupoid on a directed graph does. Thus it is meaningful to speak of a "presentation of an equivalence relation," i.e., a presentation of the corresponding groupoid;
-   Bundles of groups, group actions, sets, and equivalence relations can be regarded as special cases of the notion of groupoid, a point of view that suggests a number of analogies;
-   In many contexts "quotienting," and hence the appropriate equivalence relations often called congruences, are important. This leads to the notion of an internal groupoid in a category.[13]

Lattices

The possible equivalence relations on any set _X_, when ordered by set inclusion, form a complete lattice, called CON _X_ by convention. The canonical map KER: _X_^_X_ → CON _X_, relates the monoid _X_^_X_ of all functions on _X_ and CON _X_. KER is surjective but not injective. Less formally, the equivalence relation KER on _X_, takes each function _f_: _X_→_X_ to its kernel KER _f_. Likewise, KER(KER) is an equivalence relation on _X_^_X_.


Equivalence relations and mathematical logic

Equivalence relations are a ready source of examples or counterexamples. For example, an equivalence relation with exactly two infinite equivalence classes is an easy example of a theory which is ω-categorical, but not categorical for any larger cardinal number.

An implication of model theory is that the properties defining a relation can be proved independent of each other (and hence necessary parts of the definition) if and only if, for each property, examples can be found of relations not satisfying the given property while satisfying all the other properties. Hence the three defining properties of equivalence relations can be proved mutually independent by the following three examples:

-   _Reflexive and transitive_: The relation ≤ on N. Or any preorder;
-   _Symmetric and transitive_: The relation _R_ on N, defined as _aRb_ ↔ _ab_ ≠ 0. Or any partial equivalence relation;
-   _Reflexive and symmetric_: The relation _R_ on Z, defined as _aRb_ ↔ "_a_ − _b_ is divisible by at least one of 2 or 3." Or any dependency relation.

Properties definable in first-order logic that an equivalence relation may or may not possess include:

-   The number of equivalence classes is finite or infinite;
-   The number of equivalence classes equals the (finite) natural number _n_;
-   All equivalence classes have infinite cardinality;
-   The number of elements in each equivalence class is the natural number _n_.


Euclidean relations

Euclid's _The Elements_ includes the following "Common Notion 1":

    Things which equal the same thing also equal one another.

Nowadays, the property described by Common Notion 1 is called Euclidean (replacing "equal" by "are in relation with"). By "relation" is meant a binary relation, in which _aRb_ is generally distinct from _bRa_. A Euclidean relation thus comes in two forms:

    (_aRc_ ∧ _bRc_) → _aRb_ (Left-Euclidean relation)
    (_cRa_ ∧ _cRb_) → _aRb_ (Right-Euclidean relation)

The following theorem connects Euclidean relations and equivalence relations:

Theorem
    If a relation is (left or right) Euclidean and reflexive, it is also symmetric and transitive.

Proof for a left-Euclidean relation:
    (_aRc_ ∧ _bRc_) → _aRb_ [_a/c_] = (_aRa_ ∧ _bRa_) → _aRb_ [_reflexive_; erase T∧] = _bRa_ → _aRb_. Hence _R_ is symmetric.
    (_aRc_ ∧ _bRc_) → _aRb_ [_symmetry_] = (_aRc_ ∧ _cRb_) → _aRb_. Hence _R_ is transitive. _(□)

with an analogous proof for a right-Euclidean relation. Hence an equivalence relation is a relation that is _Euclidean_ and _reflexive_. _The Elements_ mentions neither symmetry nor reflexivity, and Euclid probably would have deemed the reflexivity of equality too obvious to warrant explicit mention.


See also

-   Apartness relation
-   Conjugacy class
-   Equipollence (geometry)
-   Topological conjugacy
-   Up to


Notes


References

-   Brown, Ronald, 2006. _Topology and Groupoids._ Booksurge LLC. .
-   Castellani, E., 2003, "Symmetry and equivalence" in Brading, Katherine, and E. Castellani, eds., _Symmetries in Physics: Philosophical Reflections_. Cambridge Univ. Press: 422-433.
-   Robert Dilworth and Crawley, Peter, 1973. _Algebraic Theory of Lattices_. Prentice Hall. Chpt. 12 discusses how equivalence relations arise in lattice theory.
-   Higgins, P.J., 1971. _Categories and groupoids._ Van Nostrand. Downloadable since 2005 as a TAC Reprint.
-   John Randolph Lucas, 1973. _A Treatise on Time and Space_. London: Methuen. Section 31.
-   Rosen, Joseph (2008) _Symmetry Rules: How Science and Nature are Founded on Symmetry_. Springer-Verlag. Mostly chpts. 9,10.
-   Raymond Wilder (1965) _Introduction to the Foundations of Mathematics_ 2nd edition, Chapter 2-8: Axioms defining equivalence, pp 48–50, John Wiley & Sons.


External links

-   -   Bogomolny, A., "Equivalence Relationship" cut-the-knot. Accessed 1 September 2009
-   Equivalence relation at PlanetMath
-

Category:Reflexive relations Category:Symmetric relations Category:Transitive relations Category:Equivalence (mathematics)

[1] Garrett Birkhoff and Saunders Mac Lane, 1999 (1967). _Algebra_, 3rd ed. p. 35, Th. 19. Chelsea.

[2] Wallace, D. A. R., 1998. _Groups, Rings and Fields_. p. 31, Th. 8. Springer-Verlag.

[3] Dummit, D. S., and Foote, R. M., 2004. _Abstract Algebra_, 3rd ed. p. 3, Prop. 2. John Wiley & Sons.

[4] Karel Hrbacek & Thomas Jech (1999) _Introduction to Set Theory_, 3rd edition, pages 29–32, Marcel Dekker

[5] . Sect. IV.9, Theorem 12, page 95

[6] Garrett Birkhoff and Saunders Mac Lane, 1999 (1967). _Algebra_, 3rd ed. p. 33, Th. 18. Chelsea.

[7] Rosen (2008), pp. 243–45. Less clear is §10.3 of Bas van Fraassen, 1989. _Laws and Symmetry_. Oxford Univ. Press.

[8] Bas van Fraassen, 1989. _Laws and Symmetry_. Oxford Univ. Press: 246.

[9] Wallace, D. A. R., 1998. _Groups, Rings and Fields_. Springer-Verlag: 22, Th. 6.

[10] Wallace, D. A. R., 1998. _Groups, Rings and Fields_. Springer-Verlag: 24, Th. 7.

[11] Wallace, D. A. R., 1998. _Groups, Rings and Fields_. Springer-Verlag: 202, Th. 6.

[12] Dummit, D. S., and Foote, R. M., 2004. _Abstract Algebra_, 3rd ed. John Wiley & Sons: 114, Prop. 2.

[13] Borceux, F. and Janelidze, G., 2001. _Galois theories_, Cambridge University Press,