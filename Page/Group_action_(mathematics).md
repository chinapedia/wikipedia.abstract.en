Group_action_on_equilateral_triangle.svg, the counterclockwise rotation by 120° around the center of the triangle maps every vertex of the triangle to another one. The cyclic group _C_₃ consisting of the rotations by 0°, 120° and 240° acts on the set of the three vertices.]]

In mathematics, a GROUP ACTION is a formal way of interpreting the manner in which the elements of a group correspond to transformations of some space in a way that preserves the structure of that space. Common examples of spaces that groups act on are sets, vector spaces, and topological spaces. Actions of groups on vector spaces are called representations of the group.

When there is a natural correspondence between the set of group elements and the set of space transformations, a group can be interpreted as acting on the space in a canonical way. For example, the symmetric group of a finite set consists of all bijective transformations of that set; thus, applying any element of the permutation group to an element of the set will produce another (not necessarily distinct) element of the set. More generally, symmetry groups such as the homeomorphism group of a topological space or the general linear group of a vector space, as well as their subgroups, also admit canonical actions. For other groups, an interpretation of the group in terms of an action may have to be specified, either because the group does not act canonically on any space or because the canonical action is not the action of interest. For example, we can specify an action of the two-element cyclic group C₂ = {0, 1} on the finite set {a, b, c} by specifying that 0 (the identity element) sends a ↦ a, b ↦ b, c ↦ c, and that 1 sends a ↦ b, b ↦ a, c ↦ c. This action is not canonical.

A common way of specifying non-canonical actions is to describe a homomorphism φ from a group _G_ to the group of symmetries of a set _X_. The action of an element g ∈ G on a point x ∈ X is assumed to be identical to the action of its image φ(g) ∈ Sym(X) on the point x. The homomorphism φ is also frequently called the "action" of _G_, since specifying φ is equivalent to specifying an action. Thus, if _G_ is a group and _X_ is a set, then an action of _G_ on _X_ may be formally defined as a group homomorphism φ from _G_ to the symmetric group of _X_. The action assigns a permutation of _X_ to each element of the group in such a way that:

-   the identity element of _G_ is assigned the identity transformation of _X_;
-   any product _gk_ of two elements of _G_ is assigned the composition of the permutations assigned to _g_ and _k_.

If _X_ has additional structure, then φ is only called an action if for each g ∈ G, the permutation φ(g) preserves the structure of _X_.

The abstraction provided by group actions is a powerful one, because it allows geometrical ideas to be applied to more abstract objects. Many objects in mathematics have natural group actions defined on them. In particular, groups can act on other groups, or even on themselves. Because of this generality, the theory of group actions contains wide-reaching theorems, such as the orbit-stabilizer theorem, which can be used to prove deep results in several fields.


Definition

Left group action

If _G_ is a group and _X_ is a set, then a (_left_) _group action_ _φ_ of _G_ on _X_ is a function

_φ_: _G_ × _X_ → _X_: (_g_, _x_) ↦ _φ_(_g_, _x_)
that satisfies the following two axioms (where we denote _φ_(_g_, _x_) as _g_⋅_x_):[1]

Identity:  for all _x_ in _X_. (Here, _e_ denotes the identity element of the group _G_.)
Compatibility:  for all _g_, _h_ in _G_ and all _x_ in _X_. (Here, _gh_ denotes the result of applying the group operation of _G_ to the elements _g_ and _h_.)

The group _G_ is said to act on _X_ (on the left). The set _X_ is called a (_left_) _G-set_.

From these two axioms, it follows that for every _g_ in _G_, the function which maps _x_ in _X_ to _g_⋅_x_ is a bijective map from _X_ to _X_ (its inverse being the function which maps _x_ to _g_^(−1)⋅_x_). Therefore, one may alternatively define a group action of _G_ on _X_ as a group homomorphism from _G_ into the symmetric group Sym(_X_) of all bijections from _X_ to _X_.[2]

Right group action

In complete analogy, one can define a _right group action_ of _G_ on _X_ as an operation mapping to _x_⋅_g_ and satisfying the two axioms:

Identity:  for all _x_ in _X_.
Compatibility:  for all _g_, _h_ in _G_ and all _x_ in _X_;

The difference between left and right actions is in the order in which a product like _gh_ acts on _x_. For a left action _h_ acts first and is followed by _g_, while for a right action _g_ acts first and is followed by _h_. Because of the formula , one can construct a left action from a right action by composing with the inverse operation of the group. Also, a right action of a group _G_ on _X_ is the same thing as a left action of its opposite group _G_^(op) on _X_. It is thus sufficient to only consider left actions without any loss of generality.


Types of actions

The action of _G_ on _X_ is called

-   __ if _X_ is non-empty and if for each pair _x_, _y_ in _X_ there exists a _g_ in _G_ such that . For example, the action of the symmetric group of _X_ is transitive, the action of the general linear group or the special linear group of a vector space _V_ on is transitive, but the action of the orthogonal group of a Euclidean space _E_ is not transitive on (it is transitive on the unit sphere of _E_, though).
-   __ (or __) if for every two distinct _g_, _h_ in _G_ there exists an _x_ in _X_ such that ; or equivalently, if for each in _G_ there exists an _x_ in _X_ such that . In other words, in a faithful group action, different elements of _G_ induce different permutations of _X_. In algebraic terms, a group _G_ acts faithfully on _X_ if and only if the corresponding homomorphism to the symmetric group, , has a trivial kernel. Thus, for a faithful action, _G_ embeds into a permutation group on _X_; specifically, _G_ is isomorphic to its image in Sym(_X_). If _G_ does not act faithfully on _X_, one can easily modify the group to obtain a faithful action. If we define , then _N_ is a normal subgroup of _G_; indeed, it is the kernel of the homomorphism . The factor group _G_/_N_ acts faithfully on _X_ by setting . The original action of _G_ on _X_ is faithful if and only if .
-   __ (or _semiregular_ or _fixed point free_) if, given _g_, _h_ in _G_, the existence of an _x_ in _X_ with implies . Equivalently: if _g_ is a group element and there exists an _x_ in _X_ with (that is, if _g_ has at least one fixed point), then _g_ is the identity. Note that a free action on a non-empty set is faithful.
-   __ (or __ or _sharply transitive_) if it is both transitive and free; this is equivalent to saying that for every two _x_, _y_ in _X_ there exists precisely one _g_ in _G_ such that . In this case, _X_ is called a principal homogeneous space for _G_ or a _G_-torsor. The action of any group _G_ on itself by left multiplication is regular, and thus faithful as well. Every group can, therefore, be embedded in the symmetric group on its own elements, Sym(_G_). This result is known as Cayley's theorem.
-   __ if _X_ has at least _n_ elements and for all pairwise distinct _x_₁, ..., _x_(n)_ and pairwise distinct _y_₁, ..., _y_(n)_ there is a _g_ in _G_ such that for . A 2-transitive action is also called __, a 3-transitive action is also called _triply transitive_, and so on. Such actions define interesting classes of subgroups in the symmetric groups: 2-transitive groups and more generally multiply transitive groups. The action of the symmetric group on a set with _n_ elements is always _n_-transitive; the action of the alternating group is _n-2_-transitive.
-   __ if there is exactly one such _g_.
-   __ if it is transitive and preserves no non-trivial partition of _X_. See primitive permutation group for details.
-   _Locally free_ if _G_ is a topological group, and there is a neighbourhood _U_ of _e_ in _G_ such that the restriction of the action to _U_ is free; that is, if for some _x_ and some _g_ in _U_ then .

Furthermore, if G acts on a topological space X, then the action is:

-   _Wandering_ if every point x ∈ X has a neighbourhood U such that {g ∈ G : g ⋅ U ∩ U ≠ ∅} is finite.[3] For example, the action of ℤ^(n) on ℝ^(n) by translations is wandering. The action of the modular group on the Poincaré half-plane is also wandering.
-   _Properly discontinuous_ if X is a locally compact space and for every compact subset K ⊂ X the set {g ∈ G : gK ∩ K ≠ ∅} is finite. The wandering actions given above are also properly discontinuous. On the other hand, the action of ℤ on ℝ² ∖ {0} by the linear map (x, y) ↦ (2x, 1/2y) is wandering and free but not properly discontinuous.
-   __ if G is a topological group and the map from G × X → X × X : (g, x) ↦ (g ⋅ x, x) is proper.[4] If _G_ is discrete then properness is equivalent to proper discontinuity for _G_-actions.
-   Said to have _discrete orbits_ if the orbit of each x ∈ X under the action of G is discrete in X.[5]
-   A _Covering space action_ if every point x ∈ X has a neighbourhood U such that {g ∈ G : g ⋅ U ∩ U ≠ ∅} = e.[6]

If _X_ is a non-zero module over a ring _R_ and the action of _G_ is _R_-linear then it is said to be

-   _Irreducible_ if there is no nonzero proper invariant submodule.


 Orbits and stabilizers

Compound_of_five_tetrahedra.png, the symmetry group is the (rotational) icosahedral group _I_ of order 60, while the stabilizer of a single chosen tetrahedron is the (rotational) tetrahedral group _T_ of order 12, and the orbit space _I_/_T_ (of order 60/12 = 5) is naturally identified with the 5 tetrahedra – the coset _gT_ corresponds to the tetrahedron to which _g_ sends the chosen tetrahedron.]]

Consider a group _G_ acting on a set _X_. The _orbit_ of an element _x_ in _X_ is the set of elements in _X_ to which _x_ can be moved by the elements of _G_. The orbit of _x_ is denoted by _G_⋅_x_:

_G_ ⋅ _x_ = {_g_⋅_x_∣_g_∈_G_}.

The defining properties of a group guarantee that the set of orbits of (points _x_ in) _X_ under the action of _G_ form a partition of _X_. The associated equivalence relation is defined by saying if and only if there exists a _g_ in _G_ with . The orbits are then the equivalence classes under this relation; two elements _x_ and _y_ are equivalent if and only if their orbits are the same, that is, .

The group action is transitive if and only if it has exactly one orbit, that is, if there exists _x_ in _X_ with . This is the case if and only if for _all_ _x_ in _X_.

The set of all orbits of _X_ under the action of _G_ is written as _X_/_G_ (or, less frequently: _G__X_), and is called the _quotient_ of the action. In geometric situations it may be called the __, while in algebraic situations it may be called the space of __, and written _X_(G)_, by contrast with the invariants (fixed points), denoted _X^(G)_: the coinvariants are a _quotient_ while the invariants are a _subset._ The coinvariant terminology and notation are used particularly in group cohomology and group homology, which use the same superscript/subscript convention.

Invariant subsets

If _Y_ is a subset of _X_, we write _GY_ for the set . We call the subset _Y_ _invariant under G_ if (which is equivalent to ). In that case, _G_ also operates on _Y_ by restricting the action to _Y_. The subset _Y_ is called _fixed under G_ if for all _g_ in _G_ and all _y_ in _Y_. Every subset that is fixed under _G_ is also invariant under _G_, but not conversely.

Every orbit is an invariant subset of _X_ on which _G_ acts transitively. The action of _G_ on _X_ is _transitive_ if and only if all elements are equivalent, meaning that there is only one orbit.

A _G-invariant_ element of _X_ is such that for all . The set of all such _x_ is denoted _X^(G)_ and called the _G-invariants_ of _X_. When _X_ is a _G_-module, _X^(G)_ is the zeroth cohomology group of _G_ with coefficients in _X_, and the higher cohomology groups are the derived functors of the functor of _G_-invariants.

Fixed points and stabilizer subgroups

Given _g_ in _G_ and _x_ in _X_ with , we say _x_ is a fixed point of _g_ and _g_ fixes _x_.

For every _x_ in _X_, we define the _stabilizer subgroup_ of _G_ with respect to _x_ (also called the _isotropy group_ or _little group_[7]) as the set of all elements in _G_ that fix _x_:

_G__(_x_) = {_g_ ∈ _G_ ∣ _g_ ⋅ _x_ = _x_}.
This is a subgroup of _G_, though typically not a normal one. The action of _G_ on _X_ is free if and only if all stabilizers are trivial. The kernel _N_ of the homomorphism with the symmetric group, , is given by the intersection of the stabilizers _G_(x)_ for all _x_ in _X_. If _N_ is trivial, the action is said to be faithful (or effective).

Let _x_ and _y_ be two elements in _X_, and let _g_ be a group element such that . Then the two stabilizer groups _G_(x)_ and _G_(y)_ are related by . Proof: by definition, if and only if . Applying _g_^(−1) to both sides of this equality yields ; that is, . An opposite inclusion follows similarly by taking and supposing .

The above says that the stabilizers of elements in the same orbit are conjugate to each other. Thus, to each orbit, one can associate a conjugacy class of a subgroup of _G_ (that is, the set of all conjugates of the subgroup). Let (H) denote the conjugacy class of _H_. Then one says that the orbit _O_ has type (H) if the stabilizer G_(x) of some/any _x_ in _O_ belongs to (H). A maximal orbit type is often called a principal orbit type.

 and Burnside's lemma

Orbits and stabilizers are closely related. For a fixed x ∈ X, consider the map G → X given by g ↦ g ⋅ x. This map induces a bijection from the set G/G_(x) of cosets of G_(x) in G to the orbit G ⋅ x, as the translate g ⋅ x depends only on the left coset gG_(x)[8]. This result is known as the _orbit-stabilizer theorem_.

If G is finite then the orbit-stabilizer theorem, together with Lagrange's theorem, gives

|_G_ ⋅ _x_| = [_G_ : _G__(_x_)] = |_G_|/|_G__(_x_)|.

This result is especially useful since it can be employed for counting arguments (typically in situations where X is finite as well).

Labeled_cube_graph.png

    EXAMPLE: One can use the orbit-stabilizer theorem to count the automorphisms of a graph. Consider the cubical graph as pictured, and let G denote its automorphism group. Then G acts on the set of vertices {1, 2, …, 8}, and this action is transitive as can be seen by composing rotations about the center of the cube. Thus, by the orbit-stabilizer theorem, we have that |G| = |G ⋅ 1||G₁| = 8|G₁|. Applying the theorem now to the stabilizer G₁, we obtain |G₁| = |(G₁) ⋅ 2||(G₁)₂|. Any element of G that fixes 1 must send 2 to either 2, 4 or 5. There are such automorphisms; consider for example the map that transposes 2 and 4, transposes 6 and 8, and fixes the other vertices. Thus, |(G₁)⋅2| = 3. Applying the theorem a third time gives |(G₁)₂| = |((G₁)₂) ⋅ 3||((G₁)₂)₃|. Any element of G that fixes 1 and 2 must send 3 to either 3 or 6, and one easily finds such automorphisms. Thus, |((G₁)₂)⋅3| = 2. One also sees that ((G₁)₂)₃ consists only of the identity automorphism, as any element of G fixing 1, 2 and 3 must also fix 4 and consequently all other vertices. Combining the preceding calculations, we now obtain |G| = 8 ⋅ 3 ⋅ 2 ⋅ 1 = 48.

A result closely related to the orbit-stabilizer theorem is Burnside's lemma:

$$|X/G|=\frac{1}{|G|}\sum_{g\in G} |X^g|,$$

where X^(g) the set of points fixed by g. This result is mainly of use when G and X are finite, when it can be interpreted as follows: the number of orbits is equal to the average number of points fixed per group element.

Fixing a group G, the set of formal differences of finite G-sets forms a ring called the Burnside ring of G, where addition corresponds to disjoint union, and multiplication to Cartesian product.


Examples

-   The __ action of any group _G_ on any set _X_ is defined by for all _g_ in _G_ and all _x_ in _X_; that is, every group element induces the identity permutation on _X_.[9]
-   In every group _G_, left multiplication is an action of _G_ on _G_: for all _g_, _x_ in _G_. This action forms the basis of a rapid proof of Cayley's theorem - that every group is isomorphic to a subgroup of the symmetric group of permutations of the set _G_.
-   In every group _G_ with subgroup _H_, left multiplication is an action of _G_ on the set of cosets _G/H_: for all _g_,_a_ in _G_. In particular if H contains no nontrivial normal subgroups of _G_ this induces an isomorphism from _G_ to a subgroup of the permutation group of degree _[G : H]_.
-   In every group _G_, conjugation is an action of _G_ on _G_: . An exponential notation is commonly used for the right-action variant: ; it satisfies (.
-   In every group _G_ with subgroup _H_, conjugation is an action of _G_ on conjugates of _H_: for all _g_ in _G_ and _K_ conjugates of _H_.
-   The symmetric group S_(_n_) and its subgroups act on the set by permuting its elements
-   The symmetry group of a polyhedron acts on the set of vertices of that polyhedron. It also acts on the set of faces or the set of edges of the polyhedron.
-   The symmetry group of any geometrical object acts on the set of points of that object.
-   The automorphism group of a vector space (or graph, or group, or ring…) acts on the vector space (or set of vertices of the graph, or group, or ring…).
-   The general linear group and its subgroups, particularly its Lie subgroups (including the special linear group , orthogonal group , special orthogonal group , and symplectic group ) are Lie groups that act on the vector space _K_^(_n_). The group operations are given by multiplying the matrices from the groups with the vectors from _K_^(_n_).
-   The general linear group acts on Z^(_n_) by natural matrix action. The orbits of its action are classified by the greatest common divisor of coordinates of the vector in Z^(_n_).
-   The affine group acts transitively on the points of an affine space, and the subgroup V of the affine group (that is, a vector space) transitive and free (that is, _regular_) action on these points;[10] indeed this can be used to give a definition of an affine space.
-   The projective linear group and its subgroups, particularly its Lie subgroups, which are Lie groups that act on the projective space P^(n)(_K_). This is a quotient of the action of the general linear group on projective space. Particularly notable is , the symmetries of the projective line, which is sharply 3-transitive, preserving the cross ratio; the Möbius group is of particular interest.
-   The isometries of the plane act on the set of 2D images and patterns, such as wallpaper patterns. The definition can be made more precise by specifying what is meant by image or pattern, for example, a function of position with values in a set of colors. Isometries are in fact one example of affine group (action).
-   The sets acted on by a group G comprise the category of G-sets in which the objects are G-sets and the morphisms are G-set homomorphisms: functions such that for every _g_ in _G_.
-   The Galois group of a field extension _L_/_K_ acts on the field L but has only a trivial action on elements of the subfield K. Subgroups of Gal(L/K) correspond to subfields of L that contain K, that is, intermediate field extensions between L and K.
-   The additive group of the real numbers acts on the phase space of "well-behaved" systems in classical mechanics (and in more general dynamical systems) by time translation: if _t_ is in R and _x_ is in the phase space, then _x_ describes a state of the system, and is defined to be the state of the system _t_ seconds later if _t_ is positive or −_t_ seconds ago if _t_ is negative.
-   The additive group of the real numbers acts on the set of real functions of a real variable in various ways, with (_t_⋅_f_)(_x_) equal to, for example, , , , , , or , but not .
-   Given a group action of _G_ on _X_, we can define an induced action of _G_ on the power set of _X_, by setting for every subset _U_ of _X_ and every _g_ in _G_. This is useful, for instance, in studying the action of the large Mathieu group on a 24-set and in studying symmetry in certain models of finite geometries.
-   The quaternions with norm 1 (the versors), as a multiplicative group, act on R³: for any such quaternion , the mapping is a counterclockwise rotation through an angle _α_ about an axis given by a unit vector V; _z_ is the same rotation; see quaternions and spatial rotation.


Group actions and groupoids

The notion of group action can be put in a broader context by using the _action groupoid_ $\scriptstyle G' \;=\;  G \,\ltimes\, X$ associated to the group action, thus allowing techniques from groupoid theory such as presentations and fibrations. Further the stabilizers of the action are the vertex groups, and the orbits of the action are the components, of the action groupoid. For more details, see the book _Topology and groupoids_ referenced below.

This action groupoid comes with a morphism $\scriptstyle p:\; G' \,\rightarrow\, G$ which is a _covering morphism of groupoids_. This allows a relation between such morphisms and covering maps in topology.


Morphisms and isomorphisms between _G_-sets

If _X_ and _Y_ are two _G_-sets, we define a _morphism_ from _X_ to _Y_ to be a function such that for all _g_ in _G_ and all _x_ in _X_. Morphisms of _G_-sets are also called _equivariant maps_ or _G-maps_.

The composition of two morphisms is again a morphism.

If a morphism _f_ is bijective, then its inverse is also a morphism, and we call _f_ an _isomorphism_ and the two _G_-sets _X_ and _Y_ are called _isomorphic_; for all practical purposes, they are indistinguishable in this case.

Some example isomorphisms:

-   Every regular _G_ action is isomorphic to the action of _G_ on _G_ given by left multiplication.
-   Every free _G_ action is isomorphic to , where _S_ is some set and _G_ acts on by left multiplication on the first coordinate. (_S_ can be taken to be the set of orbits _X_/_G_.)
-   Every transitive _G_ action is isomorphic to left multiplication by _G_ on the set of left cosets of some subgroup _H_ of _G_. (_H_ can be taken to be the stabilizer group of any element of the original _G_-set.the original action.)

With this notion of morphism, the collection of all _G_-sets forms a category; this category is a Grothendieck topos (in fact, assuming a classical metalogic, this topos will even be Boolean).


Continuous group actions

One often considers _continuous group actions_: the group _G_ is a topological group, _X_ is a topological space, and the map is continuous with respect to the product topology of . The space _X_ is also called a _G-space_ in this case. This is indeed a generalization, since every group can be considered a topological group by using the discrete topology. All the concepts introduced above still work in this context, however we define morphisms between _G_-spaces to be _continuous_ maps compatible with the action of _G_. The quotient _X_/_G_ inherits the quotient topology from _X_, and is called the _quotient space_ of the action. The above statements about isomorphisms for regular, free and transitive actions are no longer valid for continuous group actions.

If _X_ is a regular covering space of another topological space _Y_, then the action of the deck transformation group on _X_ is properly discontinuous as well as being free. Every free, properly discontinuous action of a group _G_ on a path-connected topological space _X_ arises in this manner: the quotient map is a regular covering map, and the deck transformation group is the given action of _G_ on _X_. Furthermore, if _X_ is simply connected, the fundamental group of _X_/_G_ will be isomorphic to _G_.

These results have been generalized in the book _Topology and Groupoids_ referenced below to obtain the fundamental groupoid of the orbit space of a discontinuous action of a discrete group on a Hausdorff space, as, under reasonable local conditions, the orbit groupoid of the fundamental groupoid of the space. This allows calculations such as the fundamental group of the symmetric square of a space _X_, namely the orbit space of the product of _X_ with itself under the twist action of the cyclic group of order 2 sending to .

An action of a group _G_ on a locally compact space _X_ is _cocompact_ if there exists a compact subset _A_ of _X_ such that . For a properly discontinuous action, cocompactness is equivalent to compactness of the quotient space _X/G_.

The action of _G_ on _X_ is said to be _proper_ if the mapping that sends is a proper map.

Strongly continuous group action and smooth points

A group action of a topological group _G_ on a topological space _X_ is said to be _strongly continuous_ if for all _x_ in _X_, the map is continuous with respect to the respective topologies. Such an action induces an action on the space of continuous functions on _X_ by defining for every _g_ in _G_, _f_ a continuous function on _X_, and _x_ in _X_. Note that, while every continuous group action is strongly continuous, the converse is not in general true.[11]

The subspace of _smooth points_ for the action is the subspace of _X_ of points _x_ such that is smooth, that is, it is continuous and all derivatives are continuous.


Variants and generalizations

One can also consider actions of monoids on sets, by using the same two axioms as above. This does not define bijective maps and equivalence relations however. See semigroup action.

Instead of actions on sets, one can define actions of groups and monoids on objects of an arbitrary category: start with an object _X_ of some category, and then define an action on _X_ as a monoid homomorphism into the monoid of endomorphisms of _X_. If _X_ has an underlying set, then all definitions and facts stated above can be carried over. For example, if we take the category of vector spaces, we obtain group representations in this fashion.

One can view a group _G_ as a category with a single object in which every morphism is invertible. A (left) group action is then nothing but a (covariant) functor from _G_ to the category of sets, and a group representation is a functor from _G_ to the category of vector spaces. A morphism between G-sets is then a natural transformation between the group action functors. In analogy, an action of a groupoid is a functor from the groupoid to the category of sets or to some other category.

In addition to continuous actions of topological groups on topological spaces, one also often considers smooth actions of Lie groups on smooth manifolds, regular actions of algebraic groups on algebraic varieties, and actions of group schemes on schemes. All of these are examples of group objects acting on objects of their respective category.


See also

-   Measurable group action
-   Gain graph
-   Group with operators
-   Monoid action


Notes


Citations


References

-   -   Brown, Ronald (2006). _Topology and groupoids_, Booksurge PLC, .
-   Categories and groupoids, P.J. Higgins, downloadable reprint of van Nostrand Notes in Mathematics, 1971, which deal with applications of groupoids in group theory and topology.
-   -   -   -


External links

-   -

Category:Group theory Group_actions_(mathematics) Category:Representation theory of groups Category:Symmetry

[1]

[2] This is done, for example, by

[3]

[4]

[5]

[6]

[7]

[8] M. Artin, Algebra, Proposition 6.4 on p. 179

[9]

[10]

[11]