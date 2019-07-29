In mathematics, especially in category theory and homotopy theory, a GROUPOID (less often BRANDT GROUPOID or VIRTUAL GROUP) generalises the notion of group in several equivalent ways. A groupoid can be seen as a:

-   _Group_ with a partial function replacing the binary operation;
-   _Category_ in which every morphism is invertible. A category of this sort can be viewed as augmented with a unary operation, called _inverse_ by analogy with group theory.[1] Notice that a groupoid where there is only one object is a usual group.

In the presence of dependent typing, a category in general can be viewed as a typed monoid, and similarly, a groupoid can be viewed as simply a typed group. The morphisms take one from one object to another, and form a dependent family of types, thus morphisms might be typed g : A → B, h : B → C, say. Composition is then a total function:  ∘  : (B → C) → (A → B) → A → C, so that h ∘ g : A → C.

Special cases include:

-   _Setoids_: sets that come with an equivalence relation,
-   _G-sets_: sets equipped with an action of a group G.

Groupoids are often used to reason about geometrical objects such as manifolds. introduced groupoids implicitly via Brandt semigroups.[2]


Definitions

A groupoid is an algebraic structure (G,  * ) consisting of a non-empty set G and a binary partial function '*' defined on G.

Algebraic

A groupoid is a set G with a unary operation ^( − 1) : G → G, and a partial function  *  : G × G ⇀ G. Here * is not a binary operation because it is not necessarily defined for all pairs of elements of G. The precise conditions under which * is defined are not articulated here and vary by situation.

* and ^(−1) have the following axiomatic properties: For all a, b, and c in G,

1.  _Associativity_: If a * b and b * c are defined, then (a * b) * c and a * (b * c) are defined and are equal. Conversely, if one of (a * b) * c and a * (b * c) is defined, then so are both a * b and b * c as well as (a * b) * c = a * (b * c).
2.  _Inverse_: a^( − 1) * a and a * a^( − 1) are always defined.
3.  _Identity_: If a * b is defined, then a * b * b^( − 1) = a, and a^( − 1) * a * b = b. (The previous two axioms already show that these expressions are defined and unambiguous.)

Two easy and convenient properties follow from these axioms:

-   (a^( − 1))^( − 1) = a,
-   If a * b is defined, then (a * b)^( − 1) = b^( − 1) * a^( − 1).

Proof of first property: from 2. and 3. we obtain _a_^(−1) = _a_^(−1) * _a_ * _a_^(−1) and (_a_^(−1))^(−1) = (_a_^(−1))^(−1) * _a_^(−1) * (_a_^(−1))^(−1). Substituting the first into the second and applying 3. two more times yields (_a_^(−1))^(−1) = (_a_^(−1))^(−1) * _a_^(−1) * _a_ * _a_^(−1) * (_a_^(−1))^(−1) = (_a_^(−1))^(−1) * _a_^(−1) * _a_ = _a_. ✓
Proof of second property: since _a_ * _b_ is defined, so is (_a_ * _b_)^(−1) * _a_ * _b_. Therefore (_a_ * _b_)^(−1) * _a_ * _b_ * _b_^(−1) = (_a_ * _b_)^(−1) * _a_ is also defined. Moreover since _a_ * _b_ is defined, so is _a_ * _b_ * _b_^(−1) = _a_. Therefore _a_ * _b_ * _b_^(−1) * _a_^(−1) is also defined. From 3. we obtain (_a_ * _b_)^(−1) = (_a_ * _b_)^(−1) * _a_ * _a_^(−1) = (_a_ * _b_)^(−1) * _a_ * _b_ * _b_^(−1) * _a_^(−1) = _b_^(−1) * _a_^(−1). ✓

Category theoretic

A groupoid is a small category in which every morphism is an isomorphism, i.e. invertible.[3] More precisely, a groupoid _G_ is:

-   A set _G_₀ of _objects_;
-   For each pair of objects _x_ and _y_ in _G_₀, there exists a (possibly empty) set _G_(_x_,_y_) of _morphisms_ (or _arrows_) from _x_ to _y_. We write _f_ : _x_ → _y_ to indicate that _f_ is an element of _G_(_x_,_y_).
-   For every object _x_, a designated element id_(x) of _G_(_x_,_x_);
-   For each triple of objects _x_, _y_, and _z_, a function comp_(x, y, z) : G(y, z) × G(x, y) → G(x, z) : (g, f) ↦ gf;
-   For each pair of objects _x_, _y_ a function inv : G(x, y) → G(y, x) : f ↦ f^( − 1);

satisfying, for any _f_ : _x_ → _y_, _g_ : _y_ → _z_, and _h_ : _z_ → _w_:

-   f id_(x) = f and id_(y) f = f;
-   (hg)f = h(gf);
-   ff^( − 1) = id_(y) and f^( − 1)f = id_(x).

If _f_ is an element of _G_(_x_,_y_) then _x_ is called the SOURCE of _f_, written _s_(_f_), and _y_ is called the TARGET of _f_, written _t_(_f_).

More generally, one can consider a groupoid object in an arbitrary category admitting finite fiber products.

Comparing the definitions

The algebraic and category-theoretic definitions are equivalent, as we now show. Given a groupoid in the category-theoretic sense, let _G_ be the disjoint union of all of the sets _G_(_x_,_y_) (i.e. the sets of morphisms from _x_ to _y_). Then comp and inv become partial operations on _G_, and inv will in fact be defined everywhere. We define ∗ to be comp and ^(−1) to be inv, which gives a groupoid in the algebraic sense. Explicit reference to _G_₀ (and hence to id) can be dropped.

Conversely, given a groupoid _G_ in the algebraic sense, define an equivalence relation ∼ on its elements by a ∼ b iff _a_ ∗ _a_^(−1) = _b_ ∗ _b_^(−1). Let _G_₀ be the set of equivalence classes of ∼, i.e. G₀ := G/​​∼. Denote _a_ ∗ _a_^(−1) by 1_(x) if a ∈ x with x ∈ G₀.

Now define G(x, y) as the set of all elements _f_ such that 1_(x) * f * 1_(y) exists. Given f ∈ G(x, y) and g ∈ G(y, z), their composite is defined as gf := f * g ∈ G(x, z). To see that this is well defined, observe that since (1_(x) * f) * 1_(y) and 1_(y) * (g * 1_(z)) exist, so does (1_(x) * f * 1_(y)) * (g * 1_(z)) = f * g. The identity morphism on _x_ is then 1_(x), and the category-theoretic inverse of _f_ is _f_^(−1).

_Sets_ in the definitions above may be replaced with classes, as is generally the case in category theory.

Vertex groups

Given a groupoid _G_, the VERTEX GROUPS or ISOTROPY GROUPS or OBJECT GROUPS in _G_ are the subsets of the form _G_(_x_,_x_), where _x_ is any object of _G_. It follows easily from the axioms above that these are indeed groups, as every pair of elements is composable and inverses are in the same vertex group.

Category of groupoids

A SUBGROUPOID is a subcategory that is itself a groupoid. A GROUPOID MORPHISM is simply a functor between two (category-theoretic) groupoids. The category whose objects are groupoids and whose morphisms are groupoid morphisms is called the GROUPOID CATEGORY, or the CATEGORY OF GROUPOIDS, denoted GRPD.

It is useful that this category is, like the category of small categories, Cartesian closed. That is, we can construct for any groupoids H, K a groupoid CGPD (H, K) whose objects are the morphisms H → K and whose arrows are the natural equivalences of morphisms. Thus if H, K are just groups, then such arrows are the conjugacies of morphisms. The main result is that for any groupoids G, H, K there is a natural bijection

Grpd (G × H, K) ≅ Grpd (G, GPD (H, K)).

This result is of interest even if all the groupoids G, H, K are just groups.

Fibrations and coverings

Particular kinds of morphisms of groupoids are of interest. A morphism p : E → B of groupoids is called a fibration if for each object x of E and each morphism b of B starting at p(x) there is a morphism e of E starting at x such that p(e) = b. A fibration is called a covering morphism or covering of groupoids if further such an e is unique. The covering morphisms of groupoids are especially useful because they can be used to model covering maps of spaces.[4]

It is also true that the category of covering morphisms of a given groupoid B is equivalent to the category of actions of the groupoid B on sets.


Examples

Linear algebra

Given a field _K_, the corresponding GENERAL LINEAR GROUPOID _GL__(*)(_K_) consists of all invertible matrices, of any size, whose entries range over _K_. Matrix multiplication interprets composition. If _G_ = _GL__(*)(_K_), then the set of natural numbers is a proper subset of _G_₀, since for each natural number _n_, there is a corresponding identity matrix of dimension _n_. _G_(_m_,_n_) is empty unless _m_=_n_, in which case it is the set of all _n_x_n_ invertible matrices.

Topology

Given a topological space X, let G₀ be the set X. The morphisms from the point p to the point q are equivalence classes of continuous paths from p to q, with two paths being equivalent if they are homotopic. Two such morphisms are composed by first following the first path, then the second; the homotopy equivalence guarantees that this composition is associative. This groupoid is called the fundamental groupoid of X, denoted π₁(X) (or sometimes, Π₁(X)).[5] The usual fundamental group π₁(X, x) is then the vertex group for the point x.

An important extension of this idea is to consider the fundamental groupoid π₁(X, A) where A ⊂ X is a chosen set of "base points". Here, one considers only paths whose endpoints belong to A. π₁(X, A) is a sub-groupoid of π₁(X). The set A may be chosen according to the geometry of the situation at hand.

Equivalence relation

If X is a set with an equivalence relation denoted by infix ∼, then a groupoid "representing" this equivalence relation can be formed as follows:

-   The objects of the groupoid are the elements of X;
-   For any two elements x and y in X, there is a single morphism from x to y if and only if x ∼ y.

Group action

If the group G acts on the set X, then we can form the ACTION GROUPOID (or TRANSFORMATION GROUPOID) representing this group action as follows:

-   The objects are the elements of X;
-   For any two elements x and y in X, the morphisms from x to y correspond to the elements g of G such that gx = y;
-   Composition of morphisms interprets the binary operation of G.

More explicitly, the _action groupoid_ is a small category with ob(C) = X and hom(C) = G × X with source and target maps s(g, x) = x and t(g, x) = gx. It is often denoted G ⋉ X (or X ⋊ G). Multiplication (or composition) in the groupoid is then (h, y)(g, x) = (hg, x) which is defined provided y = gx.

For x in X, the vertex group consists of those (g, x) with gx = x, which is just the isotropy subgroup at x for the given action (which is why vertex groups are also called isotropy groups).

Another way to describe G-sets is the functor category [Gr, Set], where Gr is the groupoid (category) with one element and isomorphic to the group G. Indeed, every functor F of this category defines a set X = F(Gr) and for every g in G (i.e. for every morphism in Gr) induces a bijection F_(g) : X → X. The categorical structure of the functor F assures us that F defines a G-action on the set G. The (unique) representable functor F : Gr→Set is the Cayley representation of G. In fact, this functor is isomorphic to Hom(Gr,  − ) and so sends ob(Gr) to the set Hom(Gr, Gr) which is by definition the "set" G and the morphism g of Gr (i.e. the element g of G) to the permutation F_(g) of the set G. We deduce from the Yoneda embedding that the group G is isomorphic to the group F_(g) ∣ g ∈ G, a subgroup of the group of permutations of G.

Fifteen puzzle

The transformations of the fifteen puzzle form a groupoid (not a group, as not all moves can be composed).[6][7][8] This groupoid acts on configurations.

Mathieu groupoid

The Mathieu groupoid is a groupoid introduced by John Horton Conway acting on 13 points such that the elements fixing a point form a copy of the Mathieu group M₁₂.


Relation to groups

If a groupoid has only one object, then the set of its morphisms forms a group. Using the algebraic definition, such a groupoid is literally just a group.[9] Many concepts of group theory generalize to groupoids, with the notion of functor replacing that of group homomorphism.

If x is an object of the groupoid G, then the set of all morphisms from x to x forms a group G(x) (called the vertex group, defined above). If there is a morphism f from x to y, then the groups G(x) and G(y) are isomorphic, with an isomorphism given by the mapping g → fgf^( − 1).

Every connected groupoid - that is, one in which any two objects are connected by at least one morphism - is isomorphic to an action groupoid (as defined above) (G, X). By connectedness, there will only be one orbit under the action. If the groupoid is not connected, then it is isomorphic to a disjoint union of groupoids of the above type (possibly with different groups G and sets X for each connected component).

Note that the isomorphism described above is not unique, and there is no natural choice. Choosing such an isomorphism for a connected groupoid essentially amounts to picking one object x₀, a group isomorphism h from G(x₀) to G, and for each x other than x₀, a morphism in G from x₀ to x.

In category-theoretic terms, each connected component of a groupoid is equivalent (but not isomorphic) to a groupoid with a single object, that is, a single group. Thus any groupoid is equivalent to a multiset of unrelated groups. In other words, for equivalence instead of isomorphism, one need not specify the sets X, only the groups G.

Consider the examples in the previous section. The general linear groupoid is both equivalent and isomorphic to the disjoint union of the various general linear groups GL_(n)(F). On the other hand:

-   The fundamental groupoid of X is equivalent to the collection of the fundamental groups of each path-connected component of X, but an isomorphism requires specifying the set of points in each component;
-   The set X with the equivalence relation ∼ is equivalent (as a groupoid) to one copy of the trivial group for each equivalence class, but an isomorphism requires specifying what each equivalence class is:
-   The set X equipped with an action of the group G is equivalent (as a groupoid) to one copy of G for each orbit of the action, but an isomorphism requires specifying what set each orbit is.

The collapse of a groupoid into a mere collection of groups loses some information, even from a category-theoretic point of view, because it is not natural. Thus when groupoids arise in terms of other structures, as in the above examples, it can be helpful to maintain the full groupoid. Otherwise, one must choose a way to view each G(x) in terms of a single group, and this choice can be arbitrary. In our example from topology, you would have to make a coherent choice of paths (or equivalence classes of paths) from each point p to each point q in the same path-connected component.

As a more illuminating example, the classification of groupoids with one endomorphism does not reduce to purely group theoretic considerations. This is analogous to the fact that the classification of vector spaces with one endomorphism is nontrivial.

Morphisms of groupoids come in more kinds than those of groups: we have, for example, fibrations, covering morphisms, universal morphisms, and quotient morphisms. Thus a subgroup H of a group G yields an action of G on the set of cosets of H in G and hence a covering morphism p from, say, K to G, where K is a groupoid with vertex groups isomorphic to H. In this way, presentations of the group G can be "lifted" to presentations of the groupoid K, and this is a useful way of obtaining information about presentations of the subgroup H. For further information, see the books by Higgins and by Brown in the References.


Properties of the category Grpd

-   GRPD both complete and cocomplete
-   GRPD is a cartesian closed category

Relation to Cat

The inclusion i : GRPD → CAT has both a left and a right adjoint:

hom_(GRPD)(_C_[_C_^( − 1)], _G_) ≅ hom_(CAT)(_C_, _i_(_G_))

hom_(CAT)(_i_(_G_), _C_) ≅ hom_(GRPD)(_G_, _C__o__r__e_(_C_))

Here, C[C^( − 1)] denotes the localization of a category that inverts every morphism, and Core(C) denotes the subcategory of all isomorphisms.

Relation to sSet

The nerve functor N : GRPD → SSET embeds GRPD as a full subcategory of the category of simplicial sets. The nerve of a groupoid is always Kan complex.

The nerve has a left adjoint

hom_(GRPD)(_π_₁(_X_), _G_) ≅ hom_(SSET)(_X_, _N_(_G_))
Here, π₁(X) denotes the fundamental groupoid of the simplicial set X.


Lie groupoids and Lie algebroids

When studying geometrical objects, the arising groupoids often carry some differentiable structure, turning them into Lie groupoids. These can be studied in terms of Lie algebroids, in analogy to the relation between Lie groups and Lie algebras.


See also

-   ∞-groupoid
-   Homotopy type theory
-   Inverse category
-   groupoid algebra (not to be confused with algebraic groupoid.)
-   R-algebroid


Notes


References

-   -   Brown, Ronald, 1987, "From groups to groupoids: a brief survey," _Bull. London Math. Soc._ 19: 113-34. Reviews the history of groupoids up to 1987, starting with the work of Brandt on quadratic forms. The downloadable version updates the many references.
-   —, 2006. _Topology and groupoids._ Booksurge. Revised and extended edition of a book previously published in 1968 and 1988. Groupoids are introduced in the context of their topological application.
-   —, Higher dimensional group theory Explains how the groupoid concept has led to higher-dimensional homotopy groupoids, having applications in homotopy theory and in group cohomology. Many references.
-   -   -   F. Borceux, G. Janelidze, 2001, _Galois theories._ Cambridge Univ. Press. Shows how generalisations of Galois theory lead to Galois groupoids.
-   Cannas da Silva, A., and A. Weinstein, _Geometric Models for Noncommutative Algebras._ Especially Part VI.
-   Golubitsky, M., Ian Stewart, 2006, "Nonlinear dynamics of networks: the groupoid formalism", _Bull. Amer. Math. Soc._ 43: 305-64
-   -   Higgins, P. J., "The fundamental groupoid of a graph of groups", J. London Math. Soc. (2) 13 (1976) 145—149.
-   Higgins, P. J. and Taylor, J., "The fundamental groupoid and the homotopy crossed complex of an orbit space", in Category theory (Gummersbach, 1981), Lecture Notes in Math., Volume 962. Springer, Berlin (1982), 115—122.
-   Higgins, P. J., 1971. _Categories and groupoids._ Van Nostrand Notes in Mathematics. Republished in _Reprints in Theory and Applications of Categories_, No. 7 (2005) pp. 1–195; freely downloadable. Substantial introduction to category theory with special emphasis on groupoids. Presents applications of groupoids in group theory, for example to a generalisation of Grushko's theorem, and in topology, e.g. fundamental groupoid.
-   Mackenzie, K. C. H., 2005. _General theory of Lie groupoids and Lie algebroids._ Cambridge Univ. Press.
-   Weinstein, Alan, "Groupoids: unifying internal and external symmetry — A tour through some examples." Also available in Postscript., Notices of the AMS, July 1996, pp. 744–752.
-   Weinstein, Alan, "The Geometry of Momentum" (2002)
-   R.T. Zivaljevic. "Groupoids in combinatorics—applications of a theory of local symmetries". In _Algebraic and geometric combinatorics_, volume 423 of _Contemp. Math_., 305–324. Amer. Math. Soc., Providence, RI (2006)
-   -

Category:Algebraic structures Category:Category theory Category:Homotopy theory

[1]

[2] Brandt semigroup in Springer Encyclopaedia of Mathematics -

[3]

[4] J.P. May, _A Concise Course in Algebraic Topology_, 1999, The University of Chicago Press (_see chapter 2_)

[5]

[6] Jim Belk (2008) Puzzles, Groups, and Groupoids, The Everything Seminar

[7] The 15-puzzle groupoid (1), Never Ending Books

[8] The 15-puzzle groupoid (2), Never Ending Books

[9] Mapping a group to the corresponding groupoid with one object is sometimes called delooping, especially in the context of homotopy theory, see .