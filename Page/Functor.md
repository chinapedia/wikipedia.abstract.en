In mathematics, specifically category theory, a FUNCTOR is a map between categories. Functors were first considered in algebraic topology, where algebraic objects (such as the fundamental group) are associated to topological spaces, and maps between these algebraic objects are associated to continuous maps between spaces. Nowadays, functors are used throughout modern mathematics to relate various categories. Thus, functors are important in all areas within mathematics to which category theory is applied.

The word _functor_ was borrowed by mathematicians from the philosopher Rudolf Carnap,[1] who used the term in a linguistic context;[2] see function word.


Definition

Let _C_ and _D_ be categories. A FUNCTOR _F_ from _C_ to _D_ is a mapping that

-   associates to each object X in _C_ an object F(X) in _D_,
-   associates to each morphism f: X → Y in _C_ a morphism F(f): F(X) → F(Y) in _D_ such that the following two conditions hold:
    -   F(id_(X)) = id_(F(X)) ​ for every object X in _C_,
    -   F(g ∘ f) = F(g) ∘ F(f) for all morphisms f: X → Y ​ and g: Y → Z in _C_.

That is, functors must preserve identity morphisms and composition of morphisms.

Covariance and contravariance

There are many constructions in mathematics that would be functors but for the fact that they "turn morphisms around" and "reverse composition". We then define a CONTRAVARIANT FUNCTOR _F_ from _C_ to _D_ as a mapping that

-   associates to each object X in _C_ an object F(X) in _D_,
-   associates to each morphism f: X → Y in _C_ a morphism F(f): F(Y) → F(X) in _D_ such that the following two conditions hold:
    -   F(id_(X)) = id_(F(X)) ​ for every object X in _C_,
    -   F(g ∘ f) = F(f) ∘ F(g) for all morphisms f: X → Y and g: Y → Z in _C_.

Note that contravariant functors reverse the direction of composition.

Ordinary functors are also called COVARIANT FUNCTORS in order to distinguish them from contravariant ones. Note that one can also define a contravariant functor as a _covariant_ functor on the opposite category C^(op). Some authors prefer to write all expressions covariantly. That is, instead of saying F: C → D is a contravariant functor, they simply write F: C^(op) → D (or sometimes F: C → D^(op)) and call it a functor.

Contravariant functors are also occasionally called _cofunctors_.[3]

There is a convention which refers to "vectors"—i.e., vector fields, elements of the space of sections Γ(TM) of a tangent bundle TM—as "contravariant" and to "covectors"—i.e., 1-forms, elements of the space of sections Γ(T^(*)M) of a cotangent bundle T^(*)M—as "covariant". This terminology originates in physics, and its rationale has to do with the position of the indices ("upstairs" and "downstairs") in expressions such as x^(i) = Λ_(j)^(i)x^(j) for X′ = ΛX or ω_(i) = Λ_(i)^(j)ω_(j) for Ω′ = ΩΛ^(T). In this formalism it is observed that the coordinate transformation symbol Λ_(i)^(j) (representing the matrix Λ^(T)) acts on the basis vectors "in the same way" as on the "covector coordinates": E_(i) = Λ_(i)^(j)E_(j)—whereas it acts "in the opposite way" on the "vector coordinates" (but "in the same way" as on the basis covectors: E^(i) = Λ_(j)^(i)E^(j)). This terminology is contrary to the one used in category theory because it is the covectors that have _pullbacks_ in general and are thus _contravariant_, whereas vectors in general are _covariant_ since they can be _pushed forward_. See also Covariance and contravariance of vectors.

Opposite functor

Every functor F: C → D induces the OPPOSITE FUNCTOR F^(op): C^(op) → D^(op), where C^(op) and D^(op) are the opposite categories to C and D.[4] By definition, F^(op) maps objects and morphisms identically to F. Since C^(op) does not coincide with C as a category, and similarly for D, F^(op) is distinguished from F. For example, when composing F: C₀ → C₁ with G: C₁^(op) → C₂, one should use either G ∘ F^(op) or G^(op) ∘ F. Note that, following the property of opposite category, (F^(op))^(op) = F.

Bifunctors and multifunctors

A BIFUNCTOR (also known as a BINARY FUNCTOR) is a functor whose domain is a product category. For example, the Hom functor is of the type . It can be seen as a functor in _two_ arguments. The Hom functor is a natural example; it is contravariant in one argument, covariant in the other.

A MULTIFUNCTOR is a generalization of the functor concept to _n_ variables. So, for example, a bifunctor is a multifunctor with .


Examples

DIAGRAM: For categories _C_ and _J_, a diagram of type _J_ in _C_ is a covariant functor D: J → C.

(CATEGORY THEORETICAL) PRESHEAF: For categories _C_ and _J_, a _J_-presheaf on _C_ is a contravariant functor D: C → J.

PRESHEAVES: If _X_ is a topological space, then the open sets in _X_ form a partially ordered set Open(_X_) under inclusion. Like every partially ordered set, Open(_X_) forms a small category by adding a single arrow if and only if U ⊆ V. Contravariant functors on Open(_X_) are called _presheaves_ on _X_. For instance, by assigning to every open set _U_ the associative algebra of real-valued continuous functions on _U_, one obtains a presheaf of algebras on _X_.

CONSTANT FUNCTOR: The functor which maps every object of _C_ to a fixed object _X_ in _D_ and every morphism in _C_ to the identity morphism on _X_. Such a functor is called a _constant_ or _selection_ functor.

ENDOFUNCTOR: A functor that maps a category to that same category; e.g., polynomial functor.

IDENTITY FUNCTOR: in category _C_, written 1_(_C_) or id_(_C_), maps an object to itself and a morphism to itself. The identity functor is an endofunctor.

DIAGONAL FUNCTOR: The diagonal functor is defined as the functor from _D_ to the functor category _D_^(_C_) which sends each object in _D_ to the constant functor at that object.

LIMIT FUNCTOR: For a fixed index category _J_, if every functor has a limit (for instance if _C_ is complete), then the limit functor assigns to each functor its limit. The existence of this functor can be proved by realizing that it is the right-adjoint to the diagonal functor and invoking the Freyd adjoint functor theorem. This requires a suitable version of the axiom of choice. Similar remarks apply to the colimit functor (which is covariant).

POWER SETS: The power set functor maps each set to its power set and each function f: X → Y to the map which sends U ⊆ X to its image f(U) ⊆ Y. One can also consider the contravariant power set functor which sends f: X → Y to the map which sends V ⊆ Y to its inverse image f^( − 1)(V) ⊆ X.

For example, if X = {0, 1} then F(X) = 𝒫(X) = {{}, {0}, {1}, X}. Suppose f(0) = {} and f(1) = X. Then F(f) is the function which sends any subset U of X to its image f(U), which in this case means {} ↦ f({}) = {}, where ↦ denotes the mapping under F(f), so this could also be written as (F(f))({}) = {}. For the other values, {0} ↦ f({0}) = {f(0)} = {{}}, {1} ↦ f({1}) = {f(1)} = {X}, {0, 1} ↦ f({0, 1}) = {f(0), f(1)} = {{}, X}. Note that f({0, 1}) consequently generates the trivial topology on X. Also note that although the function f in this example mapped to the power set of X, that need not be the case in general.

: The map which assigns to every vector space its dual space and to every linear map its dual or transpose is a contravariant functor from the category of all vector spaces over a fixed field to itself.

FUNDAMENTAL GROUP: Consider the category of pointed topological spaces, i.e. topological spaces with distinguished points. The objects are pairs , where _X_ is a topological space and _x_₀ is a point in _X_. A morphism from to is given by a continuous map with .

To every topological space _X_ with distinguished point _x_₀, one can define the fundamental group based at _x_₀, denoted . This is the group of homotopy classes of loops based at _x_₀. If is a morphism of pointed spaces, then every loop in _X_ with base point _x_₀ can be composed with _f_ to yield a loop in _Y_ with base point _y_₀. This operation is compatible with the homotopy equivalence relation and the composition of loops, and we get a group homomorphism from to . We thus obtain a functor from the category of pointed topological spaces to the category of groups.

In the category of topological spaces (without distinguished point), one considers homotopy classes of generic curves, but they cannot be composed unless they share an endpoint. Thus one has the FUNDAMENTAL GROUPOID instead of the fundamental group, and this construction is functorial.

ALGEBRA OF CONTINUOUS FUNCTIONS: a contravariant functor from the category of topological spaces (with continuous maps as morphisms) to the category of real associative algebras is given by assigning to every topological space _X_ the algebra C(_X_) of all real-valued continuous functions on that space. Every continuous map induces an algebra homomorphism by the rule for every _φ_ in C(_Y_).

TANGENT AND COTANGENT BUNDLES: The map which sends every differentiable manifold to its tangent bundle and every smooth map to its derivative is a covariant functor from the category of differentiable manifolds to the category of vector bundles.

Doing this constructions pointwise gives the tangent space, a covariant functor from the category of pointed differentiable manifolds to the category of real vector spaces. Likewise, cotangent space is a contravariant functor, essentially the composition of the tangent space with the dual space above.

GROUP ACTIONS/REPRESENTATIONS: Every group _G_ can be considered as a category with a single object whose morphisms are the elements of _G_. A functor from _G_ to SET is then nothing but a group action of _G_ on a particular set, i.e. a _G_-set. Likewise, a functor from _G_ to the category of vector spaces, VECT_(_K_), is a linear representation of _G_. In general, a functor can be considered as an "action" of _G_ on an object in the category _C_. If _C_ is a group, then this action is a group homomorphism.

LIE ALGEBRAS: Assigning to every real (complex) Lie group its real (complex) Lie algebra defines a functor.

TENSOR PRODUCTS: If _C_ denotes the category of vector spaces over a fixed field, with linear maps as morphisms, then the tensor product V ⊗ W defines a functor which is covariant in both arguments.[5]

FORGETFUL FUNCTORS: The functor which maps a group to its underlying set and a group homomorphism to its underlying function of sets is a functor. Functors like these, which "forget" some structure, are termed _forgetful functors_. Another example is the functor which maps a ring to its underlying additive abelian group. Morphisms in RNG (ring homomorphisms) become morphisms in AB (abelian group homomorphisms).

FREE FUNCTORS: Going in the opposite direction of forgetful functors are free functors. The free functor sends every set _X_ to the free group generated by _X_. Functions get mapped to group homomorphisms between free groups. Free constructions exist for many categories based on structured sets. See free object.

HOMOMORPHISM GROUPS: To every pair _A_, _B_ of abelian groups one can assign the abelian group Hom(_A_, _B_) consisting of all group homomorphisms from _A_ to _B_. This is a functor which is contravariant in the first and covariant in the second argument, i.e. it is a functor (where AB denotes the category of abelian groups with group homomorphisms). If and are morphisms in AB, then the group homomorphism : is given by . See Hom functor.

REPRESENTABLE FUNCTORS: We can generalize the previous example to any category _C_. To every pair _X_, _Y_ of objects in _C_ one can assign the set of morphisms from _X_ to _Y_. This defines a functor to SET which is contravariant in the first argument and covariant in the second, i.e. it is a functor . If and are morphisms in _C_, then the group homomorphism is given by .

Functors like these are called representable functors. An important goal in many settings is to determine whether a given functor is representable.


Properties

Two important consequences of the functor axioms are:

-   _F_ transforms each commutative diagram in _C_ into a commutative diagram in _D_;
-   if _f_ is an isomorphism in _C_, then _F_(_f_) is an isomorphism in _D_.

One can compose functors, i.e. if _F_ is a functor from _A_ to _B_ and _G_ is a functor from _B_ to _C_ then one can form the composite functor from _A_ to _C_. Composition of functors is associative where defined. Identity of composition of functors is the identity functor. This shows that functors can be considered as morphisms in categories of categories, for example in the category of small categories.

A small category with a single object is the same thing as a monoid: the morphisms of a one-object category can be thought of as elements of the monoid, and composition in the category is thought of as the monoid operation. Functors between one-object categories correspond to monoid homomorphisms. So in a sense, functors between arbitrary categories are a kind of generalization of monoid homomorphisms to categories with more than one object.


Relation to other categorical concepts

Let _C_ and _D_ be categories. The collection of all functors from _C_ to _D_ forms the objects of a category: the functor category. Morphisms in this category are natural transformations between functors.

Functors are often defined by universal properties; examples are the tensor product, the direct sum and direct product of groups or vector spaces, construction of free groups and modules, direct and inverse limits. The concepts of limit and colimit generalize several of the above.

Universal constructions often give rise to pairs of adjoint functors.


Computer implementations

Functors sometimes appear in functional programming. For instance, the programming language Haskell has a class Functor where fmap is a polytypic function used to map functions (_morphisms_ on _Hask_, the category of Haskell types)[6] between existing types to functions between some new types.[7]


See also

-   Functor category
-   Kan extension
-   Pseudofunctor


Notes


References

-   .


External links

-   -   see and the variations discussed and linked to there.
-   André Joyal, CatLab, a wiki project dedicated to the exposition of categorical mathematics
-   formal introduction to category theory.

-   J. Adamek, H. Herrlich, G. Stecker, Abstract and Concrete Categories-The Joy of Cats
-   Stanford Encyclopedia of Philosophy: "Category Theory" — by Jean-Pierre Marquis. Extensive bibliography.
-   List of academic conferences on category theory
-   Baez, John, 1996,"The Tale of _n_-categories." An informal introduction to higher order categories.
-   WildCats is a category theory package for Mathematica. Manipulation and visualization of objects, morphisms, categories, functors, natural transformations, universal properties.
-   The catsters, a YouTube channel about category theory.
-   -   Video archive of recorded talks relevant to categories, logic and the foundations of physics.
-   Interactive Web page which generates examples of categorical constructions in the category of finite sets.

Functors

[1]

[2] Carnap, Rudolf (1937). _The Logical Syntax of Language_, Routledge & Kegan, pp. 13–14.

[3]

[4]

[5]

[6] It's not entirely clear that Haskell datatypes truly form a category. See https://wiki.haskell.org/Hask for more details.

[7] See https://wiki.haskell.org/Category_theory/Functor#Functors_in_Haskell for more information.