form the Rubik's Cube group.]]

In mathematics, a GROUP is a set equipped with a binary operation that combines any two elements to form a third element in such a way that four conditions called group axioms are satisfied, namely closure, associativity, identity and invertibility. One of the most familiar examples of a group is the set of integers together with the addition operation, but groups are encountered in numerous areas within and outside mathematics, and help focusing on essential structural aspects, by detaching them from the concrete nature of the subject of the study.[1][2]

Groups share a fundamental kinship with the notion of symmetry. For example, a symmetry group encodes symmetry features of a geometrical object: the group consists of the set of transformations that leave the object unchanged and the operation of combining two such transformations by performing one after the other. Lie groups are the symmetry groups used in the Standard Model of particle physics; Poincaré groups, which are also Lie groups, can express the physical symmetry underlying special relativity; and point groups are used to help understand symmetry phenomena in molecular chemistry.

The concept of a group arose from the study of polynomial equations, starting with Évariste Galois in the 1830s. After contributions from other fields such as number theory and geometry, the group notion was generalized and firmly established around 1870. Modern group theory—an active mathematical discipline—studies groups in their own right. To explore groups, mathematicians have devised various notions to break groups into smaller, better-understandable pieces, such as subgroups, quotient groups and simple groups. In addition to their abstract properties, group theorists also study the different ways in which a group can be expressed concretely, both from a point of view of representation theory (that is, through the representations of the group) and of computational group theory. A theory has been developed for finite groups, which culminated with the classification of finite simple groups, completed in 2004. Since the mid-1980s, geometric group theory, which studies finitely generated groups as geometric objects, has become an active area in group theory.


History

The modern concept of an abstract group developed out of several fields of mathematics.[3][4][5] The original motivation for group theory was the quest for solutions of polynomial equations of degree higher than 4. The 19th-century French mathematician Évariste Galois, extending prior work of Paolo Ruffini and Joseph-Louis Lagrange, gave a criterion for the solvability of a particular polynomial equation in terms of the symmetry group of its roots (solutions). The elements of such a Galois group correspond to certain permutations of the roots. At first, Galois' ideas were rejected by his contemporaries, and published only posthumously.[6][7] More general permutation groups were investigated in particular by Augustin Louis Cauchy. Arthur Cayley's _On the theory of groups, as depending on the symbolic equation θ^(n) = 1_ (1854) gives the first abstract definition of a finite group.[8]

Geometry was a second field in which groups were used systematically, especially symmetry groups as part of Felix Klein's 1872 Erlangen program.[9] After novel geometries such as hyperbolic and projective geometry had emerged, Klein used group theory to organize them in a more coherent way. Further advancing these ideas, Sophus Lie founded the study of Lie groups in 1884.[10]

The third field contributing to group theory was number theory. Certain abelian group structures had been used implicitly in Carl Friedrich Gauss' number-theoretical work _Disquisitiones Arithmeticae_ (1798), and more explicitly by Leopold Kronecker.[11] In 1847, Ernst Kummer made early attempts to prove Fermat's Last Theorem by developing groups describing factorization into prime numbers.[12]

The convergence of these various sources into a uniform theory of groups started with Camille Jordan's _Traité des substitutions et des équations algébriques_ (1870).[13] Walther von Dyck (1882) introduced the idea of specifying a group by means of generators and relations, and was also the first to give an axiomatic definition of an "abstract group", in the terminology of the time.[14] As of the 20th century, groups gained wide recognition by the pioneering work of Ferdinand Georg Frobenius and William Burnside, who worked on representation theory of finite groups, Richard Brauer's modular representation theory and Issai Schur's papers.[15] The theory of Lie groups, and more generally locally compact groups was studied by Hermann Weyl, Élie Cartan and many others.[16] Its algebraic counterpart, the theory of algebraic groups, was first shaped by Claude Chevalley (from the late 1930s) and later by the work of Armand Borel and Jacques Tits.[17]

The University of Chicago's 1960–61 Group Theory Year brought together group theorists such as Daniel Gorenstein, John G. Thompson and Walter Feit, laying the foundation of a collaboration that, with input from numerous other mathematicians, led to the classification of finite simple groups, with the final step taken by Aschbacher and Smith in 2004. This project exceeded previous mathematical endeavours by its sheer size, in both length of proof and number of researchers. Research is ongoing to simplify the proof of this classification.[18] These days, group theory is still a highly active mathematical branch, impacting many other fields.


Definition and illustration

First example: the integers

One of the most familiar groups is the set of integers ℤ which consists of the numbers

    ..., −4, −3, −2, −1, 0, 1, 2, 3, 4, ...,[19] together with addition.

The following properties of integer addition serve as a model for the group axioms given in the definition below.

-   For any two integers _a_ and _b_, the sum _a_ + _b_ is also an integer. That is, addition of integers always yields an integer. This property is known as _closure_ under addition.
-   For all integers _a_, _b_ and _c_, (_a_ + _b_) + _c_ = _a_ + (_b_ + _c_). Expressed in words, adding _a_ to _b_ first, and then adding the result to _c_ gives the same final result as adding _a_ to the sum of _b_ and _c_, a property known as _associativity_.
-   If _a_ is any integer, then 0 + _a_ = _a_ + 0 = _a_. Zero is called the _identity element_ of addition because adding it to any integer returns the same integer.
-   For every integer _a_, there is an integer _b_ such that _a_ + _b_ = _b_ + _a_ = 0. The integer _b_ is called the _inverse element_ of the integer _a_ and is denoted −_a_.

The integers, together with the operation +, form a mathematical object belonging to a broad class sharing similar structural aspects. To appropriately understand these structures as a collective, the following definition is developed.

Definition

A group is a set, _G_, together with an operation • (called the _group law_ of _G_) that combines any two elements _a_ and _b_ to form another element, denoted or _ab_. To qualify as a group, the set and operation, , must satisfy four requirements known as the _group axioms_:[20]

Closure: For all _a_, _b_ in _G_, the result of the operation, _a_ • _b_, is also in _G_.
Associativity: For all _a_, _b_ and _c_ in _G_, (_a_ • _b_) • _c_ = _a_ • (_b_ • _c_).
Identity element: There exists an element _e_ in _G_ such that, for every element _a_ in _G_, the equation  holds. Such an element is unique (see below), and thus one speaks of _the_ identity element.
Inverse element: For each _a_ in _G_, there exists an element _b_ in _G_, commonly denoted _a_^(−1) (or −_a_, if the operation is denoted "+"), such that _a_ • _b_ = _b_ • _a_ = _e_, where _e_ is the identity element.

The result of an operation may depend on the order of the operands. In other words, the result of combining element _a_ with element _b_ need not yield the same result as combining element _b_ with element _a_; the equation



may not always be true. This equation always holds in the group of integers under addition, because for any two integers (commutativity of addition). Groups for which the commutativity equation always holds are called _abelian groups_ (in honor of Niels Henrik Abel). The symmetry group described in the following section is an example of a group that is not abelian.

The identity element of a group _G_ is often written as 1 or 1_(_G_),[21] a notation inherited from the multiplicative identity. If a group is abelian, then one may choose to denote the group operation by + and the identity element by 0; in that case, the group is called an additive group. The identity element can also be written as _id_.

The set _G_ is called the _underlying set_ of the group . Often the group's underlying set _G_ is used as a short name for the group . Along the same lines, shorthand expressions such as "a subset of the group _G_" or "an element of group _G_" are used when what is actually meant is "a subset of the underlying set _G_ of the group " or "an element of the underlying set _G_ of the group ". Usually, it is clear from the context whether a symbol like _G_ refers to a group or to an underlying set.

An alternate (but equivalent) definition is to expand the structure of a group to define a group as a set equipped with three operations satisfying the same axioms as above, with the "there exists" part removed in the two last axioms, these operations being the group law, as above, which is a binary operation, the _inverse operation_, which is a unary operation and maps to a^( − 1), and the identity element, which is viewed as a 0-ary operation.

As this formulation of the definition avoids existential quantifiers, it is generally preferred for computing with groups and for computer-aided proofs. This formulation exhibits groups as a variety of universal algebra. It is also useful for talking of properties of the inverse operation, as needed for defining topological groups and group objects.

Second example: a symmetry group

Two figures in the plane are congruent if one can be changed into the other using a combination of rotations, reflections, and translations. Any figure is congruent to itself. However, some figures are congruent to themselves in more than one way, and these extra congruences are called symmetries. A square has eight symmetries. These are:

+-----------------------------+--------------------------------+---------------------------------+-------------------------------------+
| id (keeping it as it is)    | r₁ (rotation by 90° clockwise) | r₂ (rotation by 180° clockwise) | r₃ (rotation by 270° clockwise)     |
+-----------------------------+--------------------------------+---------------------------------+-------------------------------------+
| f_(v) (vertical reflection) | f_(h) (horizontal reflection)  | f_(d) (diagonal reflection)     | f_(c) (counter-diagonal reflection) |
+-----------------------------+--------------------------------+---------------------------------+-------------------------------------+

: The elements of the symmetry group of the square (D₄). Vertices are identified by color or number.

-   the identity operation leaving everything unchanged, denoted id;
-   rotations of the square around its center by 90° clockwise, 180° clockwise, and 270° clockwise, denoted by r₁, r₂ and r₃, respectively;
-   reflections about the vertical and horizontal middle line (f_(h) and f_(v)), or through the two diagonals (f_(d) and f_(c)).

These symmetries are represented by functions. Each of these functions sends a point in the square to the corresponding point under the symmetry. For example, r₁ sends a point to its rotation 90° clockwise around the square's center, and f_(h) sends a point to its reflection across the square's vertical middle line. Composing two of these symmetry functions gives another symmetry function. These symmetries determine a group called the dihedral group of degree 4, denoted . The underlying set of the group is the above set of symmetry functions, and the group operation is function composition.[22] Two symmetries are combined by composing them as functions, that is, applying the first one to the square, and the second one to the result of the first application. The result of performing first _a_ and then _b_ is written symbolically _from right to left_ as

    ("apply the symmetry _b_ after performing the symmetry _a_").

The right-to-left notation is the same notation that is used for composition of functions.

The group table on the right lists the results of all such compositions possible. For example, rotating by 270° clockwise (r₃) and then reflecting horizontally (f_(h)) is the same as performing a reflection along the diagonal (f_(d)). Using the above symbols, highlighted in blue in the group table:

    .

  •                                                                                                                                                                                                                    id      r₁      r₂      r₃      f_(v)   f_(h)   f_(d)   f_(c)
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------- ------- ------- ------- ------- ------- ------- -------
  id                                                                                                                                                                                                                   id      r₁      r₂      r₃      f_(v)   f_(h)   f_(d)   f_(c)
  r₁                                                                                                                                                                                                                   r₁      r₂      r₃      id      f_(c)   f_(d)   f_(v)   f_(h)
  r₂                                                                                                                                                                                                                   r₂      r₃      id      r₁      f_(h)   f_(v)   f_(c)   f_(d)
  r₃                                                                                                                                                                                                                   r₃      id      r₁      r₂      f_(d)   f_(c)   f_(h)   f_(v)
  f_(v)                                                                                                                                                                                                                f_(v)   f_(d)   f_(h)   f_(c)   id      r₂      r₁      r₃
  f_(h)                                                                                                                                                                                                                f_(h)   f_(c)   f_(v)   f_(d)   r₂      id      r₃      r₁
  f_(d)                                                                                                                                                                                                                f_(d)   f_(h)   f_(c)   f_(v)   r₃      r₁      id      r₂
  f_(c)                                                                                                                                                                                                                f_(c)   f_(v)   f_(d)   f_(h)   r₁      r₃      r₂      id
  The elements id, r₁, r₂, and r₃ form a subgroup, highlighted in red (upper left region). A left and right coset of this subgroup is highlighted in green (in the last row) and yellow (last column), respectively.

  : Group table of D₄

Given this set of symmetries and the described operation, the group axioms can be understood as follows: i.e., rotating 270° clockwise after reflecting horizontally equals reflecting along the counter-diagonal (f_(c)). Indeed every other combination of two symmetries still gives a symmetry, as can be checked using the group table.

|2= The associativity constraint deals with composing more than two symmetries: Starting with three elements _a_, _b_ and _c_ of D₄, there are two possible ways of using these three symmetries in this order to determine a symmetry of the square. One of these ways is to first compose _a_ and _b_ into a single symmetry, then to compose that symmetry with _c_. The other way is to first compose _b_ and _c_, then to compose the resulting symmetry with _a_. The associativity condition



means that these two ways are the same, i.e., a product of many group elements can be simplified in any grouping. For example, can be checked using the group table at the right  |r₃ • r₂| {{=}} |r₁, which equals |f_(d) • (f_(v) • r₂)|{{=}}|f_(d) • f_(h)|{{=}}|r₁. }} While associativity is true for the symmetries of the square and addition of numbers, it is not true for all operations. For instance, subtraction of numbers is not associative: 2}} is not the same as 6.}}

|3= The identity element is the symmetry id leaving everything unchanged: for any symmetry _a_, performing id after _a_ (or _a_ after id) equals _a_, in symbolic form,




|4= An inverse element undoes the transformation of some other element. Every symmetry can be undone: each of the following transformations—identity id, the reflections f_(h), f_(v), f_(d), f_(c) and the 180° rotation r₂—is its own inverse, because performing it twice brings the square back to its original orientation. The rotations r₃ and r₁ are each other's inverses, because rotating 90° and then rotation 270° (or vice versa) yields a rotation over 360° which leaves the square unchanged. In symbols,

    id,}}

    r₁ • r₃ {{=}} id.}}

}}

In contrast to the group of integers above, where the order of the operation is irrelevant, it does matter in D₄: f_(c)}} but f_(d).}} In other words, D₄ is not abelian, which makes the group structure more difficult than the integers introduced first.


Elementary consequences of the group axioms

Basic facts about all groups that can be obtained directly from the group axioms are commonly subsumed under _elementary group theory_.[23] For example, repeated applications of the associativity axiom show that the unambiguity of

    _a_ • _b_ • _c_ = (_a_ • _b_) • _c_ = _a_ • (_b_ • _c_)

generalizes to more than three factors. Because this implies that parentheses can be inserted anywhere within such a series of terms, parentheses are usually omitted.[24]

The axioms may be weakened to assert only the existence of a left identity and left inverses. Both can be shown to be actually two-sided, so the resulting definition is equivalent to the one given above.[25]

Uniqueness of identity element and inverses

Two important consequences of the group axioms are the uniqueness of the identity element and the uniqueness of inverse elements. There can be only one identity element in a group, and each element in a group has exactly one inverse element. Thus, it is customary to speak of _the_ identity, and _the_ inverse of an element.[26]

To prove the uniqueness of an inverse element of _a_, suppose that _a_ has two inverses, denoted _b_ and _c_, in a group (_G_, •). Then

    {|

|_b_ ||=||_b_ • _e_ ||    ||as _e_ is the identity element |- | ||=||_b_ • (_a_ • _c_) ||    ||because _c_ is an inverse of _a_, so _e_ = _a_ • _c_ |- | ||=||(_b_ • _a_) • _c_ ||    ||by associativity, which allows rearranging the parentheses |- | ||=||_e_ • _c_||    ||since _b_ is an inverse of _a_, i.e., _b_ • _a_ = _e_ |- | ||=||_c_||    || for _e_ is the identity element |}

The term _b_ on the first line above and the _c_ on the last are equal, since they are connected by a chain of equalities. In other words, there is only one inverse element of _a_. Similarly, to prove that the identity element of a group is unique, assume _G_ is a group with two identity elements _e_ and _f_. Then _e_ = _e_ • _f_ = _f_, hence _e_ and _f_ are equal.

Division

In groups, the existence of inverse elements implies that division is possible: given elements _a_ and _b_ of the group _G_, there is exactly one solution _x_ in _G_ to the equation , namely .[27] In fact, we have



Uniqueness results by multiplying the two sides of the equation by . The element , often denoted , is called the _right quotient_ of _b_ by _a_, or the result of the _right division_ of _b_ by _a_.

Similarly there is exactly one solution _y_ in _G_ to the equation , namely . This solution is the _left quotient_ of _b_ by _a_, and is sometimes denoted .

In general and may be different, but, if the group operation is commutative (that is, if the group is abelian), they are equal. In this case, the group operation is often denoted as an addition, and one talks of _subtraction_ and _difference_ instead of division and quotient.

A consequence of this is that multiplication by a group element _g_ is a bijection. Specifically, if _g_ is an element of the group _G_, the function from _G_ to itself that maps to is a bijection. This function is called the _left translation_ by _g_ . Similarly, the _right translation_ by _g_ is the bijection from _G_ to itself, that maps _h_ to . If _G_ is abelian, the left and the right translation by a group element are the same.


Basic concepts

    _The following sections use mathematical symbols such as_ _to denote a set_ _X_ _containing elements_ _x_, _y_, _and_ _z_, _or alternatively_ _to restate that_ _x_ _is an element of_ _X_. _The notation_ _means_ _f_ _is a function assigning to every element of_ _X_ _an element of_ _Y_.

To understand groups beyond the level of mere symbolic manipulations as above, more structural concepts have to be employed. There is a conceptual principle underlying all of the following notions: to take advantage of the structure offered by groups (which sets, being "structureless", do not have), constructions related to groups have to be _compatible_ with the group operation. This compatibility manifests itself in the following notions in various ways. For example, groups can be related to each other via functions called group homomorphisms. By the mentioned principle, they are required to respect the group structures in a precise sense. The structure of groups can also be understood by breaking them into pieces called subgroups and quotient groups. The principle of "preserving structures"—a recurring topic in mathematics throughout—is an instance of working in a category, in this case the category of groups.[28]

Group homomorphisms

_Group homomorphisms_ are functions that preserve group structure. A function between two groups and is called a _homomorphism_ if the equation



holds for all elements _g_, _k_ in _G_. In other words, the result is the same when performing the group operation after or before applying the map _a_. This requirement ensures that , and also for all _g_ in _G_. Thus a group homomorphism respects all the structure of _G_ provided by the group axioms.[29]

Two groups _G_ and _H_ are called _isomorphic_ if there exist group homomorphisms and , such that applying the two functions one after another in each of the two possible orders gives the identity functions of _G_ and _H_. That is, and for any _g_ in _G_ and _h_ in _H_. From an abstract point of view, isomorphic groups carry the same information. For example, proving that for some element _g_ of _G_ is equivalent to proving that , because applying _a_ to the first equality yields the second, and applying _b_ to the second gives back the first.

Subgroups

Informally, a _subgroup_ is a group _H_ contained within a bigger one, _G_.[30] Concretely, the identity element of _G_ is contained in _H_, and whenever _h_₁ and _h_₂ are in _H_, then so are and _h_₁^(−1), so the elements of _H_, equipped with the group operation on _G_ restricted to _H_, indeed form a group.

In the example above, the identity and the rotations constitute a subgroup highlighted in red in the group table above: any two rotations composed are still a rotation, and a rotation can be undone by (i.e., is inverse to) the complementary rotations 270° for 90°, 180° for 180°, and 90° for 270° (note that rotation in the opposite direction is not defined). The subgroup test is a necessary and sufficient condition for a nonempty subset _H_ of a group _G_ to be a subgroup: it is sufficient to check that for all elements . Knowing the subgroups is important in understanding the group as a whole.

Given any subset _S_ of a group _G_, the subgroup generated by _S_ consists of products of elements of _S_ and their inverses. It is the smallest subgroup of _G_ containing _S_.[31] In the introductory example above, the subgroup generated by r₂ and f_(v) consists of these two elements, the identity element id and . Again, this is a subgroup, because combining any two of these four elements or their inverses (which are, in this particular case, these same elements) yields an element of this subgroup.

Cosets

In many situations it is desirable to consider two group elements the same if they differ by an element of a given subgroup. For example, in D₄ above, once a reflection is performed, the square never gets back to the r₂ configuration by just applying the rotation operations (and no further reflections), i.e., the rotation operations are irrelevant to the question whether a reflection has been performed. Cosets are used to formalize this insight: a subgroup _H_ defines left and right cosets, which can be thought of as translations of _H_ by arbitrary group elements _g_. In symbolic terms, the _left_ and _right_ cosets of _H_ containing _g_ are

    and respectively.[32]

The left cosets of any subgroup _H_ form a partition of _G_; that is, the union of all left cosets is equal to _G_ and two left cosets are either equal or have an empty intersection.[33] The first case happens precisely when , i.e., if the two elements differ by an element of _H_. Similar considerations apply to the right cosets of _H_. The left and right cosets of _H_ may or may not be equal. If they are, i.e., for all _g_ in _G_, , then _H_ is said to be a _normal subgroup_.

In D₄, the introductory symmetry group, the left cosets _gR_ of the subgroup _R_ consisting of the rotations are either equal to _R_, if _g_ is an element of _R_ itself, or otherwise equal to (highlighted in green). The subgroup _R_ is also normal, because and similarly for any element other than f_(c). (In fact, in the case of D₄, observe that all such cosets are equal, such that .)

Quotient groups

In some situations the set of cosets of a subgroup can be endowed with a group law, giving a _quotient group_ or _factor group_. For this to be possible, the subgroup has to be normal. Given any normal subgroup _N_, the quotient group is defined by

    _G_ / _N_ = {_gN_, _g_ ∈ _G_}, "_G_ modulo _N_".[34]

This set inherits a group operation (sometimes called coset multiplication, or coset addition) from the original group _G_: for all _g_ and _h_ in _G_. This definition is motivated by the idea (itself an instance of general structural considerations outlined above) that the map that associates to any element _g_ its coset _gN_ be a group homomorphism, or by general abstract considerations called universal properties. The coset serves as the identity in this group, and the inverse of _gN_ in the quotient group is .

  •     R     U
  ----- ----- -----
  _R_   _R_   _U_
  _U_   _U_   _R_

  : Group table of the quotient group

The elements of the quotient group are _R_ itself, which represents the identity, and . The group operation on the quotient is shown at the right. For example, . Both the subgroup as well as the corresponding quotient are abelian, whereas D₄ is not abelian. Building bigger groups by smaller ones, such as D₄ from its subgroup _R_ and the quotient is abstracted by a notion called semidirect product.

Quotient groups and subgroups together form a way of describing every group by its _presentation_: any group is the quotient of the free group over the _generators_ of the group, quotiented by the subgroup of _relations_. The dihedral group D₄, for example, can be generated by two elements _r_ and _f_ (for example, _r_ = r₁, the right rotation and _f_ = f_(v) the vertical (or any other) reflection), which means that every symmetry of the square is a finite composition of these two symmetries or their inverses. Together with the relations

    ''r _⁴ = _f _² = (_r'' • _f_)² = 1,[35]

the group is completely described. A presentation of a group can also be used to construct the Cayley graph, a device used to graphically capture discrete groups.

Sub- and quotient groups are related in the following way: a subset _H_ of _G_ can be seen as an injective map , i.e., any element of the target has at most one element that maps to it. The counterpart to injective maps are surjective maps (every element of the target is mapped onto), such as the canonical map . Interpreting subgroup and quotients in light of these homomorphisms emphasizes the structural concept inherent to these definitions alluded to in the introduction. In general, homomorphisms are neither injective nor surjective. Kernel and image of group homomorphisms and the first isomorphism theorem address this phenomenon.


Examples and applications

Examples and applications of groups abound. A starting point is the group Z of integers with addition as group operation, introduced above. If instead of addition multiplication is considered, one obtains multiplicative groups. These groups are predecessors of important constructions in abstract algebra.

Groups are also applied in many other mathematical areas. Mathematical objects are often examined by associating groups to them and studying the properties of the corresponding groups. For example, Henri Poincaré founded what is now called algebraic topology by introducing the fundamental group.[36] By means of this connection, topological properties such as proximity and continuity translate into properties of groups. For example, elements of the fundamental group are represented by loops. The second image at the right shows some loops in a plane minus a point. The blue loop is considered null-homotopic (and thus irrelevant), because it can be continuously shrunk to a point. The presence of the hole prevents the orange loop from being shrunk to a point. The fundamental group of the plane with a point deleted turns out to be infinite cyclic, generated by the orange loop (or any other loop winding once around the hole). This way, the fundamental group detects the hole.

In more recent applications, the influence has also been reversed to motivate geometric constructions by a group-theoretical background. In a similar vein, geometric group theory employs geometric concepts, for example in the study of hyperbolic groups.[37] Further branches crucially applying groups include algebraic geometry and number theory.[38]

In addition to the above theoretical applications, many practical applications of groups exist. Cryptography relies on the combination of the abstract group theory approach together with algorithmical knowledge obtained in computational group theory, in particular when implemented for finite groups.[39] Applications of group theory are not restricted to mathematics; sciences such as physics, chemistry and computer science benefit from the concept.

Numbers

Many number systems, such as the integers and the rationals enjoy a naturally given group structure. In some cases, such as with the rationals, both addition and multiplication operations give rise to group structures. Such number systems are predecessors to more general algebraic structures known as rings and fields. Further abstract algebraic concepts such as modules, vector spaces and algebras also form groups.

Integers

The group of integers ℤ under addition, denoted (ℤ,+), has been described above. The integers, with the operation of multiplication instead of addition, (ℤ,⋅) do _not_ form a group. The closure, associativity and identity axioms are satisfied, but inverses do not exist: for example, is an integer, but the only solution to the equation in this case is , which is a rational number, but not an integer. Hence not every element of ℤ has a (multiplicative) inverse.

Rationals

The desire for the existence of multiplicative inverses suggests considering fractions

    \frac{a}{b}.

Fractions of integers (with _b_ nonzero) are known as rational numbers. The set of all such irreducible fractions is commonly denoted ℚ. There is still a minor obstacle for (ℚ,⋅), the rationals with multiplication, being a group: because the rational number 0 does not have a multiplicative inverse (i.e., there is no _x_ such that ), (ℚ,⋅) is still not a group.

However, the set of all _nonzero_ rational numbers ℚ \ {0} = {q∈ℚ∣q≠0} does form an abelian group under multiplication, generally denoted ℚ^(*). Associativity and identity element axioms follow from the properties of integers. The closure requirement still holds true after removing zero, because the product of two nonzero rationals is never zero. Finally, the inverse of _a_/_b_ is _b_/_a_, therefore the axiom of the inverse element is satisfied.

The rational numbers (including 0) also form a group under addition. Intertwining addition and multiplication operations yields more complicated structures called rings and—if division is possible, such as in ℚ—fields, which occupy a central position in abstract algebra. Group theoretic arguments therefore underlie parts of the theory of those entities.

Modular arithmetic

12. Here 9 + 4 = 1.]] In modular arithmetic, two integers are added and then the sum is divided by a positive integer called the _modulus._ The result of modular addition is the remainder of that division. For any modulus, _n_, the set of integers from 0 to forms a group under modular addition: the inverse of any element _a_ is , and 0 is the identity element. This is familiar from the addition of hours on the face of a clock: if the hour hand is on 9 and is advanced 4 hours, it ends up on 1, as shown at the right. This is expressed by saying that 9 + 4 equals 1 "modulo 12" or, in symbols,

    9 + 4 ≡ 1 modulo 12.

The group of integers modulo _n_ is written ℤ_(n) or ℤ/nℤ.

For any prime number _p_, there is also the multiplicative group of integers modulo _p_.[40] Its elements are the integers 1 to . The group operation is multiplication modulo _p_. That is, the usual product is divided by _p_ and the remainder of this division is the result of modular multiplication. For example, if , there are four group elements 1, 2, 3, 4. In this group, , because the usual product 16 is equivalent to 1, which divided by 5 yields a remainder of 1. for 5 divides , denoted

    16 ≡ 1 (mod 5).

The primality of _p_ ensures that the product of two integers neither of which is divisible by _p_ is not divisible by _p_ either, hence the indicated set of classes is closed under multiplication. The identity element is 1, as usual for a multiplicative group, and the associativity follows from the corresponding property of integers. Finally, the inverse element axiom requires that given an integer _a_ not divisible by _p_, there exists an integer _b_ such that

    _a_ · _b_ ≡ 1 (mod _p_), i.e., _p_ divides the difference .

The inverse _b_ can be found by using Bézout's identity and the fact that the greatest common divisor equals 1.[41] In the case above, the inverse of 4 is 4, and the inverse of 3 is 2, as . Hence all group axioms are fulfilled. Actually, this example is similar to (ℚ\{0},⋅) above: it consists of exactly those elements in ℤ/pℤ that have a multiplicative inverse.[42] These groups are denoted F_(_p_)^(×). They are crucial to public-key cryptography.

Cyclic groups

A _cyclic group_ is a group all of whose elements are powers of a particular element _a_.[43] In multiplicative notation, the elements of the group are:

    ..., _a_^(−3), _a_^(−2), _a_^(−1), _a_⁰ = _e_, _a_, _a_², _a_³, ...,

where _a_² means _a_ • _a_, and _a^(−3)_ stands for _a_^(−1) • _a_^(−1) • _a_^(−1) = (_a_ • _a_ • _a_)^(−1) etc. Such an element _a_ is called a generator or a primitive element of the group. In additive notation, the requirement for an element to be primitive is that each element of the group can be written as

    ..., −_a_−_a_, −_a_, 0, _a_, _a_+_a_, ...

In the groups Z/_n_Z introduced above, the element 1 is primitive, so these groups are cyclic. Indeed, each element is expressible as a sum all of whose terms are 1. Any cyclic group with _n_ elements is isomorphic to this group. A second example for cyclic groups is the group of _n_-th complex roots of unity, given by complex numbers _z_ satisfying . These numbers can be visualized as the vertices on a regular _n_-gon, as shown in blue at the right for . The group operation is multiplication of complex numbers. In the picture, multiplying with _z_ corresponds to a counter-clockwise rotation by 60°.[44] Using some field theory, the group F_(_p_)^(×) can be shown to be cyclic: for example, if , 3 is a generator since , , , and .

Some cyclic groups have an infinite number of elements. In these groups, for every non-zero element _a_, all the powers of _a_ are distinct; despite the name "cyclic group", the powers of the elements do not cycle. An infinite cyclic group is isomorphic to , the group of integers under addition introduced above.[45] As these two prototypes are both abelian, so is any cyclic group.

The study of finitely generated abelian groups is quite mature, including the fundamental theorem of finitely generated abelian groups; and reflecting this state of affairs, many group-related notions, such as center and commutator, describe the extent to which a given group is not abelian.[46]

Symmetry groups

_Symmetry groups_ are groups consisting of symmetries of given mathematical objects—be they of geometric nature, such as the introductory symmetry group of the square, or of algebraic nature, such as polynomial equations and their solutions.[47] Conceptually, group theory can be thought of as the study of symmetry. Symmetries in mathematics greatly simplify the study of geometrical or analytical objects. A group is said to act on another mathematical object _X_ if every group element performs some operation on _X_ compatibly to the group law. In the rightmost example below, an element of order 7 of the (2,3,7) triangle group acts on the tiling by permuting the highlighted warped triangles (and the other ones, too). By a group action, the group pattern is connected to the structure of the object being acted on.

.]] In chemical fields, such as crystallography, space groups and point groups describe molecular symmetries and crystal symmetries. These symmetries underlie the chemical and physical behavior of these systems, and group theory enables simplification of quantum mechanical analysis of these properties.[48] For example, group theory is used to show that optical transitions between certain quantum levels cannot occur simply because of the symmetry of the states involved.

Not only are groups useful to assess the implications of symmetries in molecules, but surprisingly they also predict that molecules sometimes can change symmetry. The Jahn-Teller effect is a distortion of a molecule of high symmetry when it adopts a particular ground state of lower symmetry from a set of possible ground states that are related to each other by the symmetry operations of the molecule.[49][50]

Likewise, group theory helps predict the changes in physical properties that occur when a material undergoes a phase transition, for example, from a cubic to a tetrahedral crystalline form. An example is ferroelectric materials, where the change from a paraelectric to a ferroelectric state occurs at the Curie temperature and is related to a change from the high-symmetry paraelectric state to the lower symmetry ferroelectric state, accompanied by a so-called soft phonon mode, a vibrational lattice mode that goes to zero frequency at the transition.[51]

Such spontaneous symmetry breaking has found further application in elementary particle physics, where its occurrence is related to the appearance of Goldstone bosons.

+-------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+
|                                                                                     |                                                                                                |                      |                                                                                                                                                                |                                                                                              |
+-------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+
| Buckminsterfullerene displays                                                       | Ammonia, NH₃. Its symmetry group is of order 6, generated by a 120° rotation and a reflection. | Cubane C₈H₈ features | Hexaaquacopper(II) complex ion, [Cu(OH₂)₆]²⁺. Compared to a perfectly symmetrical shape, the molecule is vertically dilated by about 22% (Jahn-Teller effect). | The (2,3,7) triangle group, a hyperbolic group, acts on this tiling of the hyperbolic plane. |
| icosahedral symmetry, though the double bonds reduce this to pyritohedral symmetry. |                                                                                                | octahedral symmetry. |                                                                                                                                                                |                                                                                              |
+-------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+

Finite symmetry groups such as the Mathieu groups are used in coding theory, which is in turn applied in error correction of transmitted data, and in CD players.[52] Another application is differential Galois theory, which characterizes functions having antiderivatives of a prescribed form, giving group-theoretic criteria for when solutions of certain differential equations are well-behaved. Geometric properties that remain stable under group actions are investigated in (geometric) invariant theory.[53]

General linear group and representation theory

(the left illustration) multiplied by matrices (the middle and right illustrations). The middle illustration represents a clockwise rotation by 90°, while the right-most one stretches the _x_-coordinate by factor 2.]] Matrix groups consist of matrices together with matrix multiplication. The _general linear group_ consists of all invertible _n_-by-_n_ matrices with real entries.[54] Its subgroups are referred to as _matrix groups_ or _linear groups_. The dihedral group example mentioned above can be viewed as a (very small) matrix group. Another important matrix group is the special orthogonal group SO(_n_). It describes all possible rotations in _n_ dimensions. Via Euler angles, rotation matrices are used in computer graphics.[55]

_Representation theory_ is both an application of the group concept and important for a deeper understanding of groups.[56][57] It studies the group by its group actions on other spaces. A broad class of group representations are linear representations, i.e., the group is acting on a vector space, such as the three-dimensional Euclidean space R³. A representation of _G_ on an _n_-dimensional real vector space is simply a group homomorphism

    _ρ_: _G_ → GL(_n_, R)

from the group to the general linear group. This way, the group operation, which may be abstractly given, translates to the multiplication of matrices making it accessible to explicit computations.

Given a group action, this gives further means to study the object being acted on. On the other hand, it also yields information about the group. Group representations are an organizing principle in the theory of finite groups, Lie groups, algebraic groups and topological groups, especially (locally) compact groups.[58][59]

Galois groups

_Galois groups_ were developed to help solve polynomial equations by capturing their symmetry features.[60][61] For example, the solutions of the quadratic equation are given by

    $x = \frac{-b \pm \sqrt {b^2-4ac}}{2a}.$

Exchanging "+" and "−" in the expression, i.e., permuting the two solutions of the equation can be viewed as a (very simple) group operation. Similar formulae are known for cubic and quartic equations, but do _not_ exist in general for degree 5 and higher.[62] Abstract properties of Galois groups associated with polynomials (in particular their solvability) give a criterion for polynomials that have all their solutions expressible by radicals, i.e., solutions expressible using solely addition, multiplication, and roots similar to the formula above.[63]

The problem can be dealt with by shifting to field theory and considering the splitting field of a polynomial. Modern Galois theory generalizes the above type of Galois groups to field extensions and establishes—via the fundamental theorem of Galois theory—a precise relationship between fields and groups, underlining once again the ubiquity of groups in mathematics.


Finite groups

A group is called _finite_ if it has a finite number of elements. The number of elements is called the order of the group.[64] An important class is the _symmetric groups_ S_(_N_), the groups of permutations of _N_ letters. For example, the symmetric group on 3 letters S₃ is the group consisting of all possible orderings of the three letters _ABC_, i.e., contains the elements _ABC_, _ACB_, _BAC_, _BCA_, _CAB_, _CBA_, in total 6 (factorial of 3) elements. This class is fundamental insofar as any finite group can be expressed as a subgroup of a symmetric group S_(_N_) for a suitable integer _N_, according to Cayley's theorem. Parallel to the group of symmetries of the square above, S₃ can also be interpreted as the group of symmetries of an equilateral triangle.

The order of an element _a_ in a group _G_ is the least positive integer _n_ such that _a_^(_n_) = _e_, where _a_^(_n_) represents

    $\underbrace{a \cdots a}_{n \text{ factors}},$

i.e., application of the operation • to _n_ copies of _a_. (If • represents multiplication, then _a_^(_n_) corresponds to the _n_th power of _a_.) In infinite groups, such an _n_ may not exist, in which case the order of _a_ is said to be infinity. The order of an element equals the order of the cyclic subgroup generated by this element.

More sophisticated counting techniques, for example counting cosets, yield more precise statements about finite groups: Lagrange's Theorem states that for a finite group _G_ the order of any finite subgroup _H_ divides the order of _G_. The Sylow theorems give a partial converse.

The dihedral group (discussed above) is a finite group of order 8. The order of r₁ is 4, as is the order of the subgroup _R_ it generates (see above). The order of the reflection elements f_(v) etc. is 2. Both orders divide 8, as predicted by Lagrange's theorem. The groups F_(_p_)^(×) above have order .

Classification of finite simple groups

Mathematicians often strive for a complete classification (or list) of a mathematical notion. In the context of finite groups, this aim leads to difficult mathematics. According to Lagrange's theorem, finite groups of order _p_, a prime number, are necessarily cyclic (abelian) groups Z_(_p_). Groups of order _p_² can also be shown to be abelian, a statement which does not generalize to order _p_³, as the non-abelian group D₄ of order 8 = 2³ above shows.[65] Computer algebra systems can be used to list small groups, but there is no classification of all finite groups. An intermediate step is the classification of finite simple groups. A nontrivial group is called _simple_ if its only normal subgroups are the trivial group and the group itself. The Jordan–Hölder theorem exhibits finite simple groups as the building blocks for all finite groups.[66] Listing all finite simple groups was a major achievement in contemporary group theory. 1998 Fields Medal winner Richard Borcherds succeeded in proving the monstrous moonshine conjectures, a surprising and deep relation between the largest finite simple sporadic group—the "monster group"—and certain modular functions, a piece of classical complex analysis, and string theory, a theory supposed to unify the description of many physical phenomena.[67]


Groups with additional structure

Many groups are simultaneously groups and examples of other mathematical structures. In the language of category theory, they are group objects in a category, meaning that they are objects (that is, examples of another mathematical structure) which come with transformations (called morphisms) that mimic the group axioms. For example, every group (as defined above) is also a set, so a group is a group object in the category of sets.

Topological groups

in the complex plane under complex multiplication is a Lie group and, therefore, a topological group. It is topological since complex multiplication and division are continuous. It is a manifold and thus a Lie group, because every small piece, such as the red arc in the figure, looks like a part of the real line (shown at the bottom). ]] Some topological spaces may be endowed with a group law. In order for the group law and the topology to interweave well, the group operations must be continuous functions, that is, , and _g_^(−1) must not vary wildly if _g_ and _h_ vary only little. Such groups are called _topological groups,_ and they are the group objects in the category of topological spaces.[68] The most basic examples are the reals R under addition, , and similarly with any other topological field such as the complex numbers or _p_-adic numbers. All of these groups are locally compact, so they have Haar measures and can be studied via harmonic analysis. The former offer an abstract formalism of invariant integrals. Invariance means, in the case of real numbers for example:

    ∫_(ℝ)f(x) dx = ∫_(ℝ)f(x + c) dx

for any constant _c_. Matrix groups over these fields fall under this regime, as do adele rings and adelic algebraic groups, which are basic to number theory.[69] Galois groups of infinite field extensions such as the absolute Galois group can also be equipped with a topology, the so-called Krull topology, which in turn is central to generalize the above sketched connection of fields and groups to infinite field extensions.[70] An advanced generalization of this idea, adapted to the needs of algebraic geometry, is the étale fundamental group.[71]

Lie groups

_Lie groups_ (in honor of Sophus Lie) are groups which also have a manifold structure, i.e., they are spaces looking locally like some Euclidean space of the appropriate dimension.[72] Again, the additional structure, here the manifold structure, has to be compatible, i.e., the maps corresponding to multiplication and the inverse have to be smooth.

A standard example is the general linear group introduced above: it is an open subset of the space of all _n_-by-_n_ matrices, because it is given by the inequality

    det (_A_) ≠ 0,

where _A_ denotes an _n_-by-_n_ matrix.[73]

Lie groups are of fundamental importance in modern physics: Noether's theorem links continuous symmetries to conserved quantities.[74] Rotation, as well as translations in space and time are basic symmetries of the laws of mechanics. They can, for instance, be used to construct simple models—imposing, say, axial symmetry on a situation will typically lead to significant simplification in the equations one needs to solve to provide a physical description. Another example are the Lorentz transformations, which relate measurements of time and velocity of two observers in motion relative to each other. They can be deduced in a purely group-theoretical way, by expressing the transformations as a rotational symmetry of Minkowski space. The latter serves—in the absence of significant gravitation—as a model of space time in special relativity.[75] The full symmetry group of Minkowski space, i.e., including translations, is known as the Poincaré group. By the above, it plays a pivotal role in special relativity and, by implication, for quantum field theories.[76] Symmetries that vary with location are central to the modern description of physical interactions with the help of gauge theory.[77]


Generalizations

In abstract algebra, more general structures are defined by relaxing some of the axioms defining a group.[78][79][80] For example, if the requirement that every element has an inverse is eliminated, the resulting algebraic structure is called a monoid. The natural numbers N (including 0) under addition form a monoid, as do the nonzero integers under multiplication , see above. There is a general method to formally add inverses to elements to any (abelian) monoid, much the same way as is derived from , known as the Grothendieck group. Groupoids are similar to groups except that the composition need not be defined for all _a_ and _b_. They arise in the study of more complicated forms of symmetry, often in topological and analytical structures, such as the fundamental groupoid or stacks. Finally, it is possible to generalize any of these concepts by replacing the binary operation with an arbitrary _n_-ary one (i.e., an operation taking _n_ arguments). With the proper generalization of the group axioms this gives rise to an _n_-ary group.[81] The table gives a list of several structures generalizing groups.


See also

-   List of group theory topics


Notes


Citations


References

General references

-   , Chapter 2 contains an undergraduate-level exposition of the notions covered in this article.

-   , Chapter 5 provides a layman-accessible explanation of groups.

-   , an elementary introduction.

-   .

-   .

-   -   .

-   .

-   .

-   .

Special references

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   -   .

-   .

-   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   -   .

-   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   .

-   .

-   .

Historical references

-   -   .

-   -   .

-   .

-   (Galois work was first published by Joseph Liouville in 1843).

-   .

-   .

-   .

-   -   .

-   .

Category:Algebraic structures * Category:Symmetry

[1]

[2] : "The idea of a group is one which pervades the whole of mathematics both pure and applied."

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38] for example, class groups and Picard groups; see , in particular §§I.12 and I.13

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48] . See also

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]  (see in particular p. 273 for concrete examples)

[63]

[64]

[65] . See also for similar results.

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]