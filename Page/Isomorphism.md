In mathematics, an ISOMORPHISM (from the Ancient Greek: ἴσος _isos_ "equal", and μορφή _morphe_ "form" or "shape") is a homomorphism or morphism (i.e. a mathematical mapping) that can be reversed by an inverse morphism. Two mathematical objects are ISOMORPHIC if an isomorphism exists between them. An _automorphism_ is an isomorphism whose source and target coincide. The interest of isomorphisms lies in the fact that two isomorphic objects cannot be distinguished by using only the properties used to define morphisms; thus isomorphic objects may be considered the same as long as one considers only these properties and their consequences.

For most algebraic structures, including groups and rings, a homomorphism is an isomorphism if and only if it is bijective.

In topology, where the morphisms are continuous functions, isomorphisms are also called _homeomorphisms_ or _bicontinuous functions_. In mathematical analysis, where the morphisms are differentiable functions, isomorphisms are also called _diffeomorphisms_.

A CANONICAL ISOMORPHISM is a canonical map that is an isomorphism. Two objects are said to be CANONICALLY ISOMORPHIC if there is a canonical isomorphism between them. For example, the canonical map from a finite-dimensional vector space _V_ to its second dual space is a canonical isomorphism; on the other hand, _V_ is isomorphic to its dual space but not canonically in general.

Isomorphisms are formalized using category theory. A morphism in a category is an isomorphism if it admits a two-sided inverse, meaning that there is another morphism in that category such that 1_(_X_)}} and 1_(_Y_)}}, where 1_(_X_) and 1_(_Y_) are the identity morphisms of _X_ and _Y_ respectively.[1]


Examples

Logarithm and exponential

Let ℝ⁺ be the multiplicative group of positive real numbers, and let ℝ be the additive group of real numbers.

The logarithm function log : ℝ⁺ → ℝ satisfies log (xy) = log x + log y for all x, y ∈ ℝ⁺, so it is a group homomorphism. The exponential function exp : ℝ → ℝ⁺ satisfies exp (x + y) = (exp x)(exp y) for all x, y ∈ ℝ, so it too is a homomorphism.

The identities log exp x = x and exp log y = y show that log  and exp  are inverses of each other. Since log  is a homomorphism that has an inverse that is also a homomorphism, log  is an isomorphism of groups.

Because log  is an isomorphism, it translates multiplication of positive real numbers into addition of real numbers. This facility makes it possible to multiply real numbers using a ruler and a table of logarithms, or using a slide rule with a logarithmic scale.

Integers modulo 6

Consider the group (ℤ₆,  + ), the integers from 0 to 5 with addition modulo 6. Also consider the group (ℤ₂ × ℤ₃,  + ), the ordered pairs where the _x_ coordinates can be 0 or 1, and the y coordinates can be 0, 1, or 2, where addition in the _x_-coordinate is modulo 2 and addition in the _y_-coordinate is modulo 3.

These structures are isomorphic under addition, under the following scheme:

    (0,0) ↦ 0
    (1,1) ↦ 1
    (0,2) ↦ 2
    (1,0) ↦ 3
    (0,1) ↦ 4
    (1,2) ↦ 5

or in general mod 6.

For example, , which translates in the other system as .

Even though these two groups "look" different in that the sets contain different elements, they are indeed ISOMORPHIC: their structures are exactly the same. More generally, the direct product of two cyclic groups ℤ_(m) and ℤ_(n) is isomorphic to (ℤ_(mn),  + ) if and only if _m_ and _n_ are coprime, per the Chinese remainder theorem.

Relation-preserving isomorphism

If one object consists of a set _X_ with a binary relation R and the other object consists of a set _Y_ with a binary relation S then an isomorphism from _X_ to _Y_ is a bijective function such that:[2]

S (_f_(_u_), _f_(_v_)) ⇔ R (_u_, _v_)

S is reflexive, irreflexive, symmetric, antisymmetric, asymmetric, transitive, total, trichotomous, a partial order, total order, well-order, strict weak order, total preorder (weak order), an equivalence relation, or a relation with any other special properties, if and only if R is.

For example, R is an ordering ≤ and S an ordering $\scriptstyle \sqsubseteq$, then an isomorphism from _X_ to _Y_ is a bijective function such that

_f_(_u_) ⊑ _f_(_v_) ⇔ _u_ ≤ _v_.
Such an isomorphism is called an _order isomorphism_ or (less commonly) an _isotone isomorphism_.

If , then this is a relation-preserving automorphism.


Isomorphism vs. bijective morphism

In a concrete category (that is, a category whose objects are sets (perhaps with extra structure) and whose morphisms are structure-preserving functions), such as the category of topological spaces or categories of algebraic objects like groups, rings, and modules, an isomorphism must be bijective on the underlying sets. In algebraic categories (specifically, categories of varieties in the sense of universal algebra), an isomorphism is the same as a homomorphism which is bijective on underlying sets. However, there are concrete categories in which bijective morphisms are not necessarily isomorphisms (such as the category of topological spaces), and there are categories in which each object admits an underlying set but in which isomorphisms need not be bijective (such as the homotopy category of CW-complexes).


Applications

In abstract algebra, two basic isomorphisms are defined:

-   Group isomorphism, an isomorphism between groups
-   Ring isomorphism, an isomorphism between rings. (Isomorphisms between fields are actually ring isomorphisms)

Just as the automorphisms of an algebraic structure form a group, the isomorphisms between two algebras sharing a common structure form a heap. Letting a particular isomorphism identify the two structures turns this heap into a group.

In mathematical analysis, the Laplace transform is an isomorphism mapping hard differential equations into easier algebraic equations.

In category theory, let the category _C_ consist of two classes, one of _objects_ and the other of _morphisms_. Then a general definition of isomorphism that covers the previous and many other cases is that an isomorphism is a morphism that has an inverse morphism , i.e. and . For example, a bijective linear map is an isomorphism between vector spaces, and a bijective continuous function whose inverse is also continuous is an isomorphism between topological spaces, called a homeomorphism.

In graph theory, an isomorphism between two graphs _G_ and _H_ is a bijective map _f_ from the vertices of _G_ to the vertices of _H_ that preserves the "edge structure" in the sense that there is an edge from vertex _u_ to vertex _v_ in _G_ if and only if there is an edge from ƒ(_u_) to ƒ(_v_) in _H_. See graph isomorphism.

In mathematical analysis, an isomorphism between two Hilbert spaces is a bijection preserving addition, scalar multiplication, and inner product.

In early theories of logical atomism, the formal relationship between facts and true propositions was theorized by Bertrand Russell and Ludwig Wittgenstein to be isomorphic. An example of this line of thinking can be found in Russell's _Introduction to Mathematical Philosophy_.

In cybernetics, the good regulator or Conant–Ashby theorem is stated "Every good regulator of a system must be a model of that system". Whether regulated or self-regulating, an isomorphism is required between the regulator and processing parts of the system.


Relation with equality

In certain areas of mathematics, notably category theory, it is valuable to distinguish between _equality_ on the one hand and _isomorphism_ on the other.[3] Equality is when two objects are exactly the same, and everything that's true about one object is true about the other, while an isomorphism implies everything that's true about a designated part of one object's structure is true about the other's. For example, the sets

_A_ = {_x_ ∈ ℤ ∣ _x_² < 2}
and B = { − 1, 0, 1}  are _equal_; they are merely different representations—the first an intensional one (in set builder notation), and the second extensional (by explicit enumeration)—of the same subset of the integers. By contrast, the sets {_A_,_B_,_C_} and {1,2,3} are not _equal_—the first has elements that are letters, while the second has elements that are numbers. These are isomorphic as sets, since finite sets are determined up to isomorphism by their cardinality (number of elements) and these both have three elements, but there are many choices of isomorphism—one isomorphism is

A ↦ 1, B ↦ 2, C ↦ 3,
while another is A ↦ 3, B ↦ 2, C ↦ 1, and no one isomorphism is intrinsically better than any other._A_, _B_, _C_ have a conventional order, namely alphabetical order, and similarly 1, 2, 3 have the order from the integers, and thus one particular isomorphism is "natural", namely

A ↦ 1, B ↦ 2, C ↦ 3
. More formally, as _sets_ these are isomorphic, but not naturally isomorphic (there are multiple choices of isomorphism), while as _ordered sets_ they are naturally isomorphic (there is a unique isomorphism, given above), since finite total orders are uniquely determined up to unique isomorphism by cardinality.

This intuition can be formalized by saying that any two finite totally ordered sets of the same cardinality have a natural isomorphism, the one that sends the least element of the first to the least element of the second, the least element of what remains in the first to the least element of what remains in the second, and so forth, but in general, pairs of sets of a given finite cardinality are not naturally isomorphic because there is more than one choice of map—except if the cardinality is 0 or 1, where there is a unique choice.[4] On this view and in this sense, these two sets are not equal because one cannot consider them _identical_: one can choose an isomorphism between them, but that is a weaker claim than identity—and valid only in the context of the chosen isomorphism.

Sometimes the isomorphisms can seem obvious and compelling, but are still not equalities. As a simple example, the genealogical relationships among Joe, John, and Bobby Kennedy are, in a real sense, the same as those among the American football quarterbacks in the Manning family: Archie, Peyton, and Eli. The father-son pairings and the elder-brother-younger-brother pairings correspond perfectly. That similarity between the two family structures illustrates the origin of the word _isomorphism_ (Greek _iso_-, "same," and -_morph_, "form" or "shape"). But because the Kennedys are not the same people as the Mannings, the two genealogical structures are merely isomorphic and not equal.

Another example is more formal and more directly illustrates the motivation for distinguishing equality from isomorphism: the distinction between a finite-dimensional vector space _V_ and its dual space } of linear maps from _V_ to its field of scalars K. These spaces have the same dimension, and thus are isomorphic as abstract vector spaces (since algebraically, vector spaces are classified by dimension, just as sets are classified by cardinality), but there is no "natural" choice of isomorphism $\scriptstyle V \, \overset{\sim}{\to} \, V^*$. If one chooses a basis for _V_, then this yields an isomorphism: For all ,

$$v \ \overset{\sim}{\mapsto} \ \phi_v \in V^* \quad \text{such that} \quad \phi_v(u) = v^\mathrm{T} u$$
.

This corresponds to transforming a column vector (element of _V_) to a row vector (element of _V_*) by transpose, but a different choice of basis gives a different isomorphism: the isomorphism "depends on the choice of basis". More subtly, there _is_ a map from a vector space _V_ to its double dual } that does not depend on the choice of basis: For all

$$v \ \overset{\sim}{\mapsto} \ x_v \in V^{**} \quad \text{such that} \quad x_v(\phi) = \phi(v)$$
.

This leads to a third notion, that of a natural isomorphism: while _V_ and _V_** are different sets, there is a "natural" choice of isomorphism between them. This intuitive notion of "an isomorphism that does not depend on an arbitrary choice" is formalized in the notion of a natural transformation; briefly, that one may _consistently_ identify, or more generally map from, a finite-dimensional vector space to its double dual, $\scriptstyle V \, \overset{\sim}{\to} \, V^{**}$, for _any_ vector space in a consistent way. Formalizing this intuition is a motivation for the development of category theory.

However, there is a case where the distinction between natural isomorphism and equality is usually not made. That is for the objects that may be characterized by a universal property. In fact, there is a unique isomorphism, necessarily natural, between two objects sharing the same universal property. A typical example is the set of real numbers, which may be defined through infinite decimal expansion, infinite binary expansion, Cauchy sequences, Dedekind cuts and many other ways. Formally these constructions define different objects, which all are solutions of the same universal property. As these objects have exactly the same properties, one may forget the method of construction and considering them as equal. This is what everybody does when talking of "_the_ set of the real numbers". The same occurs with quotient spaces: they are commonly constructed as sets of equivalence classes. However, talking of set of sets may be counterintuitive, and quotient spaces are commonly considered as a pair of a set of undetermined objects, often called "points", and a surjective map onto this set.

If one wishes to draw a distinction between an arbitrary isomorphism (one that depends on a choice) and a natural isomorphism (one that can be done consistently), one may write for an unnatural isomorphism and for a natural isomorphism, as in and This convention is not universally followed, and authors who wish to distinguish between unnatural isomorphisms and natural isomorphisms will generally explicitly state the distinction.

Generally, saying that two objects are _equal_ is reserved for when there is a notion of a larger (ambient) space that these objects live in. Most often, one speaks of equality of two subsets of a given set (as in the integer set example above), but not of two objects abstractly presented. For example, the 2-dimensional unit sphere in 3-dimensional space

_S_² := {(_x_, _y_, _z_) ∈ ℝ³ ∣ _x_² + _y_² + _z_² = 1}
and the Riemann sphere $\widehat{\mathbb{C}}$

which can be presented as the one-point compactification of the complex plane } _or_ as the complex projective line (a quotient space)

P_(ℂ)¹ := (ℂ² \ {(0, 0)})/(ℂ^(*))

are three different descriptions for a mathematical object, all of which are isomorphic, but not _equal_ because they are not all subsets of a single space: the first is a subset of R³, the second is ²Being precise, the identification of the complex numbers with the real plane,

C ≅ R ⋅ 1 ⊕ R ⋅ _i_ = R²

depends on a choice of i; one can just as easily choose ( − i),, which yields a different identification—formally, complex conjugation is an automorphism—but in practice one often assumes that one has made such an identification. plus an additional point, and the third is a subquotient of C²

In the context of category theory, objects are usually at most isomorphic—indeed, a motivation for the development of category theory was showing that different constructions in homology theory yielded equivalent (isomorphic) groups. Given maps between two objects _X_ and _Y_, however, one asks if they are equal or not (they are both elements of the set Hom(_X_, _Y_), hence equality is the proper relationship), particularly in commutative diagrams.


See also

-   Bisimulation
-   Heap (mathematics)
-   Isometry
-   Isomorphism class
-   Isomorphism theorem
-   Universal property


Notes


References


Further reading

-


External links

-   -   -

Category:Morphisms Category:Equivalence (mathematics)

[1]

[2]

[3]

[4] In fact, there are precisely 3! = 6 different isomorphisms between two sets with three elements. This is equal to the number of automorphisms of a given three-element set (which in turn is equal to the order of the symmetric group on three letters), and more generally one has that the set of isomorphisms between two objects, denoted Iso (A, B), is a torsor for the automorphism group of _A,_ Aut (A) and also a torsor for the automorphism group of _B._ In fact, automorphisms of an object are a key reason to be concerned with the distinction between isomorphism and equality, as demonstrated in the effect of change of basis on the identification of a vector space with its dual or with its double dual, as elaborated in the sequel.