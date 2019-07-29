In mathematics, an ASSOCIATIVE ALGEBRA is an algebraic structure with compatible operations of addition, multiplication (assumed to be associative), and a scalar multiplication by elements in some field. The addition and multiplication operations together give _A_ the structure of a ring; the addition and scalar multiplication operations together give _A_ the structure of a vector space over _K_. In this article we will also use the term _K_-algebra''' to mean an associative algebra over the field _K_. A standard first example of a _K_-algebra is a ring of square matrices over a field _K_, with the usual matrix multiplication.

In this article associative algebras are assumed to have a multiplicative unit, denoted 1; they are sometimes called UNITAL ASSOCIATIVE ALGEBRAS for clarification. In some areas of mathematics this assumption is not made, and we will call such structures non-unital associative algebras. We will also assume that all rings are unital, and all ring homomorphisms are unital.

Many authors consider the more general concept of an associative algebra over a commutative ring _R_, instead of a field: An _R_-ALGEBRA is an _R_-module with an associative _R_-bilinear binary operation, which also contains a multiplicative identity. For examples of this concept, if _S_ is any ring with center _C_, then _S_ is an associative _C_-algebra.


Definition

Let _R_ be a fixed commutative ring (so _R_ could be a field). An ASSOCIATIVE _R_-ALGEBRA (or more simply, an _R_-ALGEBRA) is an additive abelian group _A_ which has the structure of both a ring and an _R_-module in such a way that the scalar multiplication satisfies

_r_ ⋅ (_x__y_) = (_r_ ⋅ _x_)_y_ = _x_(_r_ ⋅ _y_)
for all _r_ ∈ _R_ and _x_, _y_ ∈ _A_. Furthermore, _A_ is assumed to be unital, which is to say it contains an element 1 such that

1_x_ = _x_ = _x_1
for all _x_ ∈ _A_. Note that such an element 1 must be unique.

In other words, _A_ is an _R_-module together with (1) an _R_-bilinear map _A_ × _A_ → _A_, called the multiplication, and (2) the multiplicative identity, such that the multiplication is associative:

_x_(_y__z_) = (_x__y_)_z_ 
for all _x_, _y_, and _z_ in _A_. (Technical note: the multiplicative identity is a datum,[1] while associativity is a property. By the uniqueness of the multiplicative identity, "unitarity" is often treated like a property.) If one drops the requirement for the associativity, then one obtains a non-associative algebra.

If _A_ itself is commutative (as a ring) then it is called a COMMUTATIVE _R_-ALGEBRA.

As a monoid object in the category of modules

The definition is equivalent to saying that a unital associative _R_-algebra is a monoid object in _R_-MOD (the monoidal category of _R_-modules). By definition, a ring is a monoid object in the category of abelian groups; thus, the notion of an associative algebra is obtained by replacing the category of abelian groups with the category of modules.

Pushing this idea further, some authors have introduced a "generalized ring" as a monoid object in some other category that behaves like the category of modules. Indeed, this reinterpretation allows one to avoid making an explicit reference to elements of an algebra _A_. For example, the associativity can be expressed as follows. By the universal property of a tensor product of modules, the multiplication (the _R_-bilinear map) corresponds to a unique _R_-linear map

_m_ : _A_⊗_(_R_)_A_ → _A_
. The associativity then refers to the identity:

_m_ ∘ (id  ⊗ _m_) = _m_ ∘ (_m_ ⊗ id ).

From ring homomorphisms

An associative algebra amounts to a ring homomorphism whose image lies in the center. Indeed, starting with a ring _A_ and a ring homomorphism η: R → A whose image lies in the center of _A_, we can make _A_ an _R_-algebra by defining

_r_ ⋅ _x_ = _η_(_r_)_x_
for all _r_ ∈ _R_ and _x_ ∈ _A_. If _A_ is an _R_-algebra, taking _x_ = 1, the same formula in turn defines a ring homomorphism η: R → A whose image lies in the center.

If a ring is commutative then it equals its center, so that a commutative _R_-algebra can be defined simply as a commutative ring _A_ together with a commutative ring homomorphism η: R → A.

The ring homomorphism η appearing in the above is often called a structure map. In the commutative case, one can consider the category whose objects are ring homomorphisms _R_ → _A_; i.e., commutative _R_-algebras and whose morphisms are ring homomorphisms _A_ → _A{{'}}_ that are under _R_; i.e., _R_ → _A_ → _A{{'}}_ is _R_ → _A{{'}}_ (i.e., the coslice category of the category of commutative rings under _R_.) The prime spectrum functor Spec then determines an anti-equivalence of this category to the category of affine schemes over Spec _R_.

How to weaken the commutativity assumption is a subject matter of noncommutative algebraic geometry and, more recently, of derived algebraic geometry. See also: generic matrix ring.


Algebra homomorphisms

A homomorphism between two _R_-algebras is an _R_-linear ring homomorphism. Explicitly, φ : A₁ → A₂ is an ASSOCIATIVE ALGEBRA HOMOMORPHISM if

_φ_(_r_ ⋅ _x_) = _r_ ⋅ _φ_(_x_)

_φ_(_x_ + _y_) = _φ_(_x_) + _φ_(_y_) 

_φ_(_x__y_) = _φ_(_x_)_φ_(_y_) 

_φ_(1) = 1 

The class of all _R_-algebras together with algebra homomorphisms between them form a category, sometimes denoted _R_-ALG.

The subcategory of commutative _R_-algebras can be characterized as the coslice category _R_/CRING where CRING is the category of commutative rings.


Examples

The most basic example is a ring itself; it is an algebra over its center or any subring lying in the center. In particular, any commutative ring is an algebra over any of its subrings. Other examples abound both from algebra and other fields of mathematics.

Algebra

-   Any ring _A_ can be considered as a Z-algebra. The unique ring homomorphism from Z to _A_ is determined by the fact that it must send 1 to the identity in A. Therefore, rings and Z-algebras are equivalent concepts, in the same way that abelian groups and Z-modules are equivalent.
-   Any ring of characteristic _n_ is a (Z/_n_Z)-algebra in the same way.
-   Given an _R_-module _M_, the endomorphism ring of _M_, denoted End_(_R_)(_M_) is an _R_-algebra by defining (_r_·φ)(_x_) = _r_·φ(_x_).
-   Any ring of matrices with coefficients in a commutative ring _R_ forms an _R_-algebra under matrix addition and multiplication. This coincides with the previous example when _M_ is a finitely-generated, free _R_-module.
-   The square _n_-by-_n_ matrices with entries from the field _K_ form an associative algebra over _K_. In particular, the 2 × 2 real matrices form an associative algebra useful in plane mapping.
-   The complex numbers form a 2-dimensional associative algebra over the real numbers.
-   The quaternions form a 4-dimensional associative algebra over the reals (but not an algebra over the complex numbers, since the complex numbers are not in the center of the quaternions).
-   The polynomials with real coefficients form an associative algebra over the reals.
-   Every polynomial ring _R_[_x_₁, ..., _x_(n)_] is a commutative _R_-algebra. In fact, this is the free commutative _R_-algebra on the set {_x_₁, ..., _x_(n)_}.
-   The free _R_-algebra on a set _E_ is an algebra of polynomials with coefficients in _R_ and noncommuting indeterminates taken from the set _E_.
-   The tensor algebra of an _R_-module is naturally an _R_-algebra. The same is true for quotients such as the exterior and symmetric algebras. Categorically speaking, the functor which maps an _R_-module to its tensor algebra is left adjoint to the functor which sends an _R_-algebra to its underlying _R_-module (forgetting the ring structure).
-   The following ring is used in the theory of λ-rings. Given a commutative ring _A_, let G(A) = 1 + tA[​[t]​], the set of formal power series with constant term 1. It is an abelian group with the group operation that is the multiplication of power series. It is then a ring with the multiplication, denoted by ∘, such that (1 + at) ∘ (1 + bt) = 1 + abt, determined by this condition and the ring axioms. The additive identity is 1 and the multiplicative identity is 1 + t. Then A has a canonical structure of a G(A)-algebra given by the ring homomorphism

$$\begin{cases} G(A) \to A \\ 1 + \sum_{i > 0} a_i t^i \mapsto a_1 \end{cases}$$

    On the other hand, if _A_ is a λ-ring, then there is a ring homomorphism
    $$\begin{cases} A \to G(A) \\ a \mapsto 1 + \sum_{i > 0} \lambda^i(a)t^i \end{cases}$$

    giving G(A) a structure of an _A_-algebra.

Representation theory

-   The universal enveloping algebra of a Lie algebra is an associative algebra that can be used to study the given Lie algebra.
-   If _G_ is a group and _R_ is a commutative ring, the set of all functions from _G_ to _R_ with finite support form an _R_-algebra with the convolution as multiplication. It is called the group algebra of _G_. The construction is the starting point for the application to the study of (discrete) groups.
-   If _G_ is an algebraic group (e.g., semisimple complex Lie group), then the coordinate ring of _G_ is the Hopf algebra _A_ corresponding to _G_. Many structures of _G_ translate to those of _A_.

Analysis

-   Given any Banach space _X_, the continuous linear operators _A_ : _X_ → _X_ form an associative algebra (using composition of operators as multiplication); this is a Banach algebra.
-   Given any topological space _X_, the continuous real- or complex-valued functions on _X_ form a real or complex associative algebra; here the functions are added and multiplied pointwise.
-   The set of semimartingales defined on the filtered probability space (Ω,_F_,(_F_(t)_)_(_t_ ≥ 0),P) forms a ring under stochastic integration.
-   The Weyl algebra
-   An Azumaya algebra

Geometry and combinatorics

-   The Clifford algebras, which are useful in geometry and physics.
-   Incidence algebras of locally finite partially ordered sets are associative algebras considered in combinatorics.


Constructions

Subalgebras: A subalgebra of an _R_-algebra _A_ is a subset of _A_ which is both a subring and a submodule of _A_. That is, it must be closed under addition, ring multiplication, scalar multiplication, and it must contain the identity element of _A_.
Quotient algebras: Let _A_ be an _R_-algebra. Any ring-theoretic ideal _I_ in _A_ is automatically an _R_-module since _r_·_x_ = (_r_1_(_A_))_x_. This gives the quotient ring _A_/_I_ the structure of an _R_-module and, in fact, an _R_-algebra. It follows that any ring homomorphic image of _A_ is also an _R_-algebra.
Direct products: The direct product of a family of _R_-algebras is the ring-theoretic direct product. This becomes an _R_-algebra with the obvious scalar multiplication.
Free products: One can form a free product of _R_-algebras in a manner similar to the free product of groups. The free product is the coproduct in the category of _R_-algebras.
Tensor products: The tensor product of two _R_-algebras is also an _R_-algebra in a natural way. See tensor product of algebras for more details. Given a commutative ring _R_ and any ring _A_ the tensor product _R_⊗_(Z)_A_ can be given the structure of an _R_-algebra by defining _r_·(_s_⊗_a_) = (_rs_⊗_a_). The functor which sends _A_ to _R_⊗_(Z)_A_ is left adjoint to the functor which sends an _R_-algebra to its underlying ring (forgetting the module structure). See also: change of rings.


Coalgebras

An associative algebra over _K_ is given by a _K_-vector space _A_ endowed with a bilinear map _A_×_A_→_A_ having 2 inputs (multiplicator and multiplicand) and one output (product), as well as a morphism _K_→_A_ identifying the scalar multiples of the multiplicative identity. If the bilinear map _A_×_A_→_A_ is reinterpreted as a linear map (i. e., morphism in the category of _K_-vector spaces) _A_⊗_A_→_A_ (by the universal property of the tensor product), then we can view an associative algebra over _K_ as a _K_-vector space _A_ endowed with two morphisms (one of the form _A_⊗_A_→_A_ and one of the form _K_→_A_) satisfying certain conditions which boil down to the algebra axioms. These two morphisms can be dualized using categorial duality by reversing all arrows in the commutative diagrams which describe the algebra axioms; this defines the structure of a coalgebra.

There is also an abstract notion of F-coalgebra, where _F_ is a functor. This is vaguely related to the notion of coalgebra discussed above.


Representations

A representation of an algebra _A_ is an algebra homomorphism ρ: _A_ → End(_V_) from _A_ to the endomorphism algebra of some vector space (or module) _V_. The property of ρ being an algebra homomorphism means that ρ preserves the multiplicative operation (that is, ρ(_xy_)=ρ(_x_)ρ(_y_) for all _x_ and _y_ in _A_), and that ρ sends the unity of _A_ to the unity of End(_V_) (that is, to the identity endomorphism of _V_).

If _A_ and _B_ are two algebras, and ρ: _A_ → End(_V_) and τ: _B_ → End(_W_) are two representations, then there is a (canonical) representation _A ⊗ B_ → End(_V ⊗ W_) of the tensor product algebra _A ⊗ B_ on the vector space _V ⊗ W_. However, there is no natural way of defining a tensor product of two representations of a single associative algebra in such a way that the result is still a representation of that same algebra (not of its tensor product with itself), without somehow imposing additional conditions. Here, by _tensor product of representations_, the usual meaning is intended: the result should be a linear representation of the same algebra on the product vector space. Imposing such additional structure typically leads to the idea of a Hopf algebra or a Lie algebra, as demonstrated below.

Motivation for a Hopf algebra

Consider, for example, two representations σ : A → End(V) and τ : A → End(W). One might try to form a tensor product representation ρ : x ↦ σ(x) ⊗ τ(x) according to how it acts on the product vector space, so that

_ρ_(_x_)(_v_ ⊗ _w_) = (_σ_(_x_)(_v_)) ⊗ (_τ_(_x_)(_w_)).

However, such a map would not be linear, since one would have

_ρ_(_k__x_) = _σ_(_k__x_) ⊗ _τ_(_k__x_) = _k__σ_(_x_) ⊗ _k__τ_(_x_) = _k_²(_σ_(_x_) ⊗ _τ_(_x_)) = _k_²_ρ_(_x_)

for _k_ ∈ _K_. One can rescue this attempt and restore linearity by imposing additional structure, by defining an algebra homomorphism Δ: _A_ → _A_ ⊗ _A_, and defining the tensor product representation as

_ρ_ = (_σ_ ⊗ _τ_) ∘ _Δ_.

Such a homomorphism Δ is called a comultiplication if it satisfies certain axioms. The resulting structure is called a bialgebra. To be consistent with the definitions of the associative algebra, the coalgebra must be co-associative, and, if the algebra is unital, then the co-algebra must be co-unital as well. A Hopf algebra is a bialgebra with an additional piece of structure (the so-called antipode), which allows not only to define the tensor product of two representations, but also the Hom module of two representations (again, similarly to how it is done in the representation theory of groups).

Motivation for a Lie algebra

One can try to be more clever in defining a tensor product. Consider, for example,

_x_ ↦ _ρ_(_x_) = _σ_(_x_) ⊗ Id_(_W_) + Id_(_V_) ⊗ _τ_(_x_)

so that the action on the tensor product space is given by

_ρ_(_x_)(_v_ ⊗ _w_) = (_σ_(_x_)_v_) ⊗ _w_ + _v_ ⊗ (_τ_(_x_)_w_)
.

This map is clearly linear in _x_, and so it does not have the problem of the earlier definition. However, it fails to preserve multiplication:

_ρ_(_x__y_) = _σ_(_x_)_σ_(_y_) ⊗ Id_(_W_) + Id_(_V_) ⊗ _τ_(_x_)_τ_(_y_)
.

But, in general, this does not equal

_ρ_(_x_)_ρ_(_y_) = _σ_(_x_)_σ_(_y_) ⊗ Id_(_W_) + _σ_(_x_) ⊗ _τ_(_y_) + _σ_(_y_) ⊗ _τ_(_x_) + Id_(_V_) ⊗ _τ_(_x_)_τ_(_y_)
.

This shows that this definition of a tensor product is too naive; the obvious fix is to define it such that it is antisymmetric, so that the middle two terms cancel. This leads to the concept of a Lie algebra.


Non-unital algebras

Some authors use the term "associative algebra" to refer to structures which do not necessarily have a multiplicative identity, and hence consider homomorphisms which are not necessarily unital.

One example of a non-unital associative algebra is given by the set of all functions _f_: R → R whose limit as _x_ nears infinity is zero.

Another example is the vector space of continuous periodic functions, together with the convolution product.


See also

-   Abstract algebra
-   Algebraic structure
-   Algebra over a field
-   Sheaf of algebras, a sort of an algebra over a ringed space


Notes


References

-   -   James Byrnie Shaw (1907) A Synopsis of Linear Associative Algebra, link from Cornell University Historical Math Monographs.
-   Ross Street (1998) _Quantum Groups: an entrée to modern algebra_, an overview of index-free notation.

Category:Algebras Category:Algebraic geometry

[1] Put in another way, there is the forgetful functor from the category of unital associative algebras to the category of possibly non-unital associative algebras.