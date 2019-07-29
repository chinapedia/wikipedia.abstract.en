In algebra, a HOMOMORPHISM is a structure-preserving map between two algebraic structures of the same type (such as two groups, two rings, or two vector spaces). The word _homomorphism_ comes from the ancient Greek language: _ὁμός (homos)_ meaning "same" and _μορφή (morphe)_ meaning "form" or "shape". However, the word was apparently introduced to mathematics due to a (mis)translation of German _ähnlich_ meaning "similar" to _ὁμός_ meaning "same".[1]

Homomorphisms of vector spaces are also called linear maps, and their study is the object of linear algebra.

The concept of homomorphism has been generalized, under the name of morphism, to many other structures that either do not have an underlying set, or are not algebraic. This generalization is the starting point of category theory.

A homomorphism may also be an isomorphism, an endomorphism, an automorphism, etc. (see below). Each of those can be defined in a way that may be generalized to any class of morphisms.


Definition

A homomorphism is a map between two algebraic structures of the same type (that is of the same name), that preserves the operations of the structures. This means a map f : A → B between two sets , equipped with the same structure such that, if ⋅ is an operation of the structure (supposed here, for simplification, to be a binary operation), then

_f_(_x_ ⋅ _y_) = _f_(_x_) ⋅ _f_(_y_)
for every pair of elements of .[2] One says often that preserves the operation or is compatible with the operation.

Formally, a map f : A → B preserves an operation of arity , defined on both and if

_f_(_μ__(_A_)(_a_₁, …, _a__(_k_))) = _μ__(_B_)(_f_(_a_₁), …, _f_(_a__(_k_))),
for all elements in .

The operations that must be preserved by a homomorphism include 0-ary operations, that is the constants. In particular, when an identity element is required by the type of structure, the identity element of the first structure must be mapped to the corresponding identity element of the second structure.

For example:

-   A semigroup homomorphism is a map between semigroups that preserves the semigroup operation.
-   A monoid homomorphism is a map between monoids that preserves the monoid operation and maps the identity element of the first monoid to that of the second monoid (the identity element is a 0-ary operation).
-   A group homomorphism is a map between groups that preserves the group operation. This implies that the group homomorphism maps the identity element of the first group to the identity element of the second group, and maps the inverse of an element of the first group to the inverse of the image of this element. Thus a semigroup homomorphism between groups is necessarily a group homomorphism.
-   A ring homomorphism is a map between rings that preserves the ring addition, the ring multiplication, and the multiplicative identity. Whether the multiplicative identity is to be preserved depends upon the definition of _ring_ in use. If the multiplicative identity is not preserved, one has a rng homomorphism.
-   A linear map is a homomorphism of vector space, That is a group homomorphism between vector spaces that preserves the abelian group structure and scalar multiplication.
-   A module homomorphism, also called a linear map between modules, is defined similarly.
-   An algebra homomorphism is a map that preserves the algebra operations.

An algebraic structure may have more than one operation, and a homomorphism is required to preserve each operation. Thus a map that preserves only some of the operations is not a homomorphism of the structure, but only a homomorphism of the substructure obtained by considering only the preserved operations. For example, a map between monoids that preserves the monoid operation and not the identity element, is not a monoid homomorphism, but only a semigroup homomorphism.

The notation for the operations does not need to be the same in the source and the target of a homomorphism. For example, the real numbers form a group for addition, and the positive real numbers form a group for multiplication. The exponential function

_x_ ↦ _e_^(_x_)
satisfies

_e_^(_x_ + _y_) = _e_^(_x_)_e_^(_y_),
and is thus a homomorphism between these two groups. It is even an isomorphism (see below), as its inverse function, the natural logarithm, satisfies

ln (_x__y_) = ln (_x_) + ln (_y_),
and is also a group homomorphism.


Examples

Exponentiation_as_monoid_homomorphism_svg.svg homomorphism from the monoid to the monoid , defined by . It is injective, but not surjective.]] The real numbers are a ring, having both addition and multiplication. The set of all 2 × 2 matrices is also a ring, under matrix addition and matrix multiplication. If we define a function between these rings as follows:

$$f(r) = \begin{pmatrix}
   r & 0 \\
   0 & r
\end{pmatrix}$$
where is a real number, then is a homomorphism of rings, since preserves both addition:

$$f(r+s) = \begin{pmatrix}
  r+s & 0 \\
   0 & r+s
\end{pmatrix} = \begin{pmatrix}
  r & 0 \\
   0 & r
\end{pmatrix} + \begin{pmatrix}
   s & 0 \\
   0 & s
\end{pmatrix} = f(r) + f(s)$$
and multiplication:

$$f(rs) = \begin{pmatrix}
  rs & 0 \\
   0 & rs
\end{pmatrix} = \begin{pmatrix}
   r & 0 \\
   0 & r
\end{pmatrix} \begin{pmatrix}
   s & 0 \\
   0 & s
\end{pmatrix} = f(r)\,f(s).$$

For another example, the nonzero complex numbers form a group under the operation of multiplication, as do the nonzero real numbers. (Zero must be excluded from both groups since it does not have a multiplicative inverse, which is required for elements of a group.) Define a function from the nonzero complex numbers to the nonzero real numbers by

_f_(_z_) = |_z_|.
That is, is the absolute value (or modulus) of the complex number . Then is a homomorphism of groups, since it preserves multiplication:

_f_(_z_₁_z_₂) = |_z_₁_z_₂| = |_z_₁||_z_₂| = _f_(_z_₁)_f_(_z_₂).
Note that cannot be extended to a homomorphism of rings (from the complex numbers to the real numbers), since it does not preserve addition:

|_z_₁ + _z_₂| ≠ |_z_₁| + |_z_₂|.

As another example, the diagram shows a monoid homomorphism from the monoid to the monoid . Due to the different names of corresponding operations, the structure preservation properties satisfied by amount to and .

A composition algebra over a field has a quadratic form, called a _norm_, , which is a group homomorphism from the multiplicative group of to the multiplicative group of .


Special homomorphisms

Several kinds of homomorphisms have a specific name, which is also defined for general morphisms.

Isomorphism

An isomorphism between algebraic structures of the same type is commonly defined as a bijective homomorphism.[3] [4]

In the more general context of category theory, an isomorphism is defined as a morphism, which has an inverse that is also a morphism. In the specific case of algebraic structures, the two definitions are equivalent, although they may differ for non-algebraic structures, which have an underlying set.

More precisely, if

_f_ : _A_ → _B_
is a (homo)morphism, it has an inverse if there exists a homomorphism

_g_ : _B_ → _A_
such that

_f_ ∘ _g_ = Id_(_B_)  and  _g_ ∘ _f_ = Id_(_A_).

If and have underlying sets, and f : A → B has an inverse , then is bijective. In fact, is injective, as implies , and is surjective, as, for any in , one has , and is the image of an element of .

Conversely, if f : A → B is a bijective homomorphism between algebraic structures, let g : B → A be the map such that is the unique element of such that . One has f ∘ g = Id_(B) and g ∘ f = Id_(A), and it remains only to show that is a homomorphism. If * is a binary operation of the structure, for every pair of elements of , one has

_g_(_x_*_(_B_)_y_) = _g_(_f_(_g_(_x_))*_(_B_)_f_(_g_(_y_))) = _g_(_f_(_g_(_x_)*_(_A_)_g_(_y_))) = _g_(_x_)*_(_A_)_g_(_y_),
and is thus compatible with  * . As the proof is similar for any arity, this shows that is a homomorphism.

This proof does not work for non-algebraic structures. For examples, for topological spaces, a morphism is a continuous map, and the inverse of a bijective continuous map is not necessarily continuous. An isomorphism of topological spaces, called homeomorphism or bicontinuous map, is thus a bijective continuous map, whose inverse is also continuous.

Endomorphism

An endomorphism is a homomorphism whose domain equals the codomain, or, more generally, a morphism whose source is equal to the target.[5]

The endomorphisms of an algebraic structure, or of an object of a category form a monoid under composition.

The endomorphisms of a vector space or of a module form a ring. In the case of a vector space or a free module of finite dimension, the choice of a basis induces a ring isomorphism between the ring of endomorphisms and the ring of square matrices of the same dimension.

Automorphism

An automorphism is an endomorphism that is also an isomorphism.[6]

The automorphisms of an algebraic structure or of an object of a category form a group under composition, which is called the automorphism group of the structure.

Many groups that have received a name are automorphism groups of some algebraic structure. For example, the general linear group GL_(n)(k) is the automorphism group of a vector space of dimension over a field .

The automorphism groups of fields were introduced by Évariste Galois for studying the roots of polynomials, and are the basis of Galois theory.

Monomorphism

For algebraic structures, monomorphisms are commonly defined as injective homomorphisms.[7] [8]

In the more general context of category theory, a monomorphism is defined as a homomorphism that is LEFT CANCELABLE.[9] This means that a (homo)morphism f : A → B is a monomorphism if, for any pair of morphisms from any other object to , then f ∘ g = f ∘ h implies .

These two definitions of _monomorphism_ are equivalent for all common algebraic structures. More precisely, they are equivalent for fields, for which every homomorphism is a monomorphism, and for varieties of universal algebra, that is algebraic structures for which operations and axioms (identities) are defined without any restriction (fields are not a variety, as the multiplicative inverse is defined either as a unary operation or as a property of the multiplication, which are, in both cases, defined only for nonzero elements).

In particular, the two definitions of a monomorphism are equivalent for sets, magmas, semigroups, monoids, groups, rings, fields, vector spaces and modules.

A SPLIT MONOMORPHISM is a homomorphism that has a left inverse and thus it is itself a right inverse of that other homomorphism. That is, a homomorphism f: A → B is a split homomorphism if there exists a homomorphism g: B → A such that g ∘ f = Id_(A). A split monomorphism is always a monomorphism, for both meanings of _monomorphism_. For sets and vector spaces, every monomorphism is a split homomorphism, but this property does not hold for most common algebraic structures.

_An injective homomorphism is left cancelable_: If f ∘ g = f ∘ h, one has f(g(x)) = f(h(x)) for every in , the common source of and . If is injective, then , and thus . This proof works not only for algebraic structures, but also for any category whose objects are sets and arrows are maps between these sets. For example, an injective continuous map is a monomorphism in the category of topological spaces.

For proving that, conversely, a left cancelable homomorphism is injective, it is useful to consider a _free object on _. Given a variety of algebraic structures a free object on is a pair consisting of an algebraic structure of this variety and an element of satisfying the following universal property: for every structure of the variety, and every element of , there is a unique homomorphism f : L → S such that . For example, for sets, the free object on is simply ; for semigroups, the free object on is {x, x², …, x^(n), …}, which, as, a semigroup, is isomorphic to the additive semigroup of the positive integers; for monoids, the free object on is {1, x, x², …, x^(n), …}, which, as, a monoid, is isomorphic to the additive monoid of the nonnegative integers; for groups, the free object on is the infinite cyclic group {…, x^( − n), …, x^( − 1), 1, x, x², …, x^(n), …}, which, as, a group, is isomorphic to the additive group of the integers; for rings, the free object on is the polynomial ring ℤ[x]; for vector spaces or modules, the free object on is the vector space or free module that has as a basis.

_If a free object over exists, then every left cancelable homomorphism is injective_: let f: A → B be a left cancelable homomorphism, and and be two elements of such . By definition of the free object , there exist homomorphisms and from to such that and . As , one has f ∘ g = f ∘ h, by the uniqueness in the definition of a universal property. As is left cancelable, one has , and thus . Therefore, is injective.

_Existence of a free object on for a variety_ (see also ): For building a free object over , consider the set of the well-formed formulas built up from and the operations of the structure. Two such formulas are said equivalent if one may pass from one to the other by applying the axioms (identities of the structure). This defines an equivalence relation, if the identities are not subject to conditions, that is if one works with a variety. Then the operations of the variety are well defined on the set of equivalence classes of for this relation. It is straightforward to show that the resulting object is a free object on .

Epimorphism

In algebra, EPIMORPHISMS are often defined as surjective homomorphisms.[10][11] On the other hand, in category theory, epimorphisms are defined as RIGHT CANCELABLE.[12] This means that a (homo)morphism f : A → B is an epimorphism if, for any pair of morphisms from to any other object , the equality g ∘ f = h ∘ f implies .

A surjective homomorphism is always right cancelable, but the converse is not always true for algebraic structures. However, the two definitions of _epimorphism_ are equivalent for sets, vector spaces, abelian groups, modules (see below for a proof), and groups.[13] The importance of these structures in all mathematics, and specially in linear algebra and homological algebra, may explain the coexistence of two non-equivalent definitions.

Algebraic structures for which there exist non-surjective epimorphisms include semigroups and rings. The most basic example is the inclusion of integers into rational numbers, which is an homomorphism of rings and of multiplicative semigroups. For both structures it is a monomorphism and a non-surjective epimorphism, but not an isomorphism.[14][15]

A wide generalization of this example is the localization of a ring by a multiplicative set. Every localization is a ring epimorphism, which is not, in general, surjective. As localizations are fundamental in commutative algebra and algebraic geometry, this may explain why in these areas, the definition of epimorphisms as right cancelable homomorphisms is generally preferred.

A SPLIT EPIMORPHISM is a homomorphism that has a right inverse and thus it is itself a left inverse of that other homomorphism. That is, a homomorphism f: A → B is a split epimorphism if there exists a homomorphism g: B → A such that f ∘ g = Id_(B). A split epimorphism is always an epimorphism, for both meanings of _epimorphism_. For sets and vector spaces, every epimorphism is a split epimorphism, but this property does not hold for most common algebraic structures.

In summary, one has

split epimorphism ⟹ epimorphism (surjective) ⟹ epimorphism (right cancelable);
the last implication is an equivalence for sets, vector spaces, modules and abelian groups; the first implication is an equivalence for sets and vector spaces. Let f: A → B be a homomorphism. We want to prove that if it is not surjective, it is not right cancelable.

In the case of sets, let be an element of that not belongs to , and define g, h: B → B such that is the identity function, and that for every x ∈ B, except that is any other element of . Clearly is not right cancelable, as and g ∘ f = h ∘ f.

In the case of vector spaces, abelian groups and modules, the proof relies on the existence of cokernels and on the fact that the zero maps are homomorphisms: let be the cokernel of , and g: B → C be the canonical map, such that . Let h: B → C be the zero map. If is not surjective, , and thus (one is a zero map, while the other is not). Thus is not cancelable, as g ∘ f = h ∘ f (both are the zero map from to ).


Kernel

Any homomorphism defines an equivalence relation on by if and only if . The relation is called the KERNEL of . It is a congruence relation on . The quotient set can then be given a structure of the same type as , in a natural way, by defining the operations of the quotient set by , for each operation of . In that case the image of in under the homomorphism is necessarily isomorphic to ; this fact is one of the isomorphism theorems.

When the algebraic structure is a group for some operation, the equivalence class of the identity element of this operation suffices to characterize the equivalence relation. In this case, the quotient by the equivalence relation is denoted by (usually read as " mod "). Also in this case, it is , rather than , that is called the kernel of . The kernels of homomorphisms of a given type of algebraic structure are naturally equipped with some structure. This structure type of the kernels is the same as the considered structure, in the case of abelian groups, vector spaces and modules, but is different and has received a specific name in other cases, such as normal subgroup for kernels of group homomorphisms and ideals for kernels of ring homomorphisms (in the case of non-commutative rings, the kernels are the two-sided ideals).


Relational structures

In model theory, the notion of an algebraic structure is generalized to structures involving both operations and relations. Let _L_ be a signature consisting of function and relation symbols, and _A_, _B_ be two _L_-structures. Then a HOMOMORPHISM from _A_ to _B_ is a mapping _h_ from the domain of _A_ to the domain of _B_ such that

-   _h_(_F_^(_A_)(_a_₁,…,_a__(_n_))) = _F_^(_B_)(_h_(_a_₁),…,_h_(_a__(_n_))) for each _n_-ary function symbol _F_ in _L_,
-   _R_^(_A_)(_a_₁,…,_a__(_n_)) implies _R_^(_B_)(_h_(_a_₁),…,_h_(_a__(_n_))) for each _n_-ary relation symbol _R_ in _L_.

In the special case with just one binary relation, we obtain the notion of a graph homomorphism. For a detailed discussion of relational homomorphisms and isomorphisms see.[16]


Formal language theory

Homomorphisms are also used in the study of formal languages[17] and are often briefly referred to as morphisms.[18] Given alphabets Σ₁ and Σ₂, a function such that for all _u_ and _v_ in Σ₁^(∗) is called a _homomorphism_ on Σ₁^(∗).[19] If _h_ is a homomorphism on Σ₁^(∗) and _e_ denotes the empty word, then _h_ is called an _e-free homomorphism_ when for all in Σ₁^(∗).

The set Σ^(∗) of words formed from the alphabet Σ may be thought of as the free monoid generated by Σ. Here the monoid operation is concatenation and the identity element is the empty word. From this perspective, a language homormorphism is precisely a monoid homomorphism.[20]


See also

-   Continuous function
-   Diffeomorphism
-   Homomorphic encryption
-   Homomorphic secret sharing – a simplistic decentralized voting protocol
-   Morphism


Notes


References

Category:Morphisms

[1]

[2] As it is often the case, but not always, the same symbol for the operation of both and was used here.

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

[13] Linderholm, C. E. (1970). A group epimorphism is surjective. _The American Mathematical Monthly_, 77(2), 176-177.

[14]

[15]

[16] Section 17.4, in Gunther Schmidt, 2010. _Relational Mathematics_. Cambridge University Press,

[17] Seymour Ginsburg, _Algebraic and automata theoretic properties of formal languages_, North-Holland, 1975, ,

[18] T. Harju, J. Karhumӓki, Morphisms in _Handbook of Formal Languages_, Volume I, edited by G. Rozenberg, A. Salomaa, Springer, 1997, .

[19] The ∗ denotes the Kleene star operation, while Σ^(∗) denotes the set of words formed from the alphabet Σ, including the empty word. Juxtaposition of terms denotes concatenation. For example, _h_(_u_) _h_(_v_) denotes the concatenation of _h_(_u_) with _h_(_v_).

[20] We are assured that a language homomorphism _h_ maps the empty word _e_ to the empty word. Since _h_(_e_) = _h_(_ee_) = _h_(_e_)_h_(_e_), the number _w_ of characters in _h_(_e_) equals the number 2_w_ of characters in _h_(_e_)_h_(_e_). Hence _w_ = 0 and _h_(_e_) has null length.