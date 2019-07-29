C^(∗)-ALGEBRAS (pronounced "C-star") are subjects of research in functional analysis, a branch of mathematics. A C*-algebra is a complex algebra _A_ of continuous linear operators on a complex Hilbert space with two additional properties:

-   _A_ is a topologically closed set in the norm topology of operators.
-   _A_ is closed under the operation of taking adjoints of operators.

C*-algebras were first considered primarily for their use in quantum mechanics to model algebras of physical observables. This line of research began with Werner Heisenberg's matrix mechanics and in a more mathematically developed form with Pascual Jordan around 1933. Subsequently, John von Neumann attempted to establish a general framework for these algebras which culminated in a series of papers on rings of operators. These papers considered a special class of C*-algebras which are now known as von Neumann algebras.

Around 1943, the work of Israel Gelfand and Mark Naimark yielded an abstract characterisation of C*-algebras making no reference to operators on a Hilbert space.

C*-algebras are now an important tool in the theory of unitary representations of locally compact groups, and are also used in algebraic formulations of quantum mechanics. Another active area of research is the program to obtain classification, or to determine the extent of which classification is possible, for separable simple nuclear C*-algebras.


Abstract characterization

We begin with the abstract characterization of C*-algebras given in the 1943 paper by Gelfand and Naimark.

A C*-algebra, _A_, is a Banach algebra over the field of complex numbers, together with a map x ↦ x^(*) for x ∈ A with the following properties:

-   It is an involution, for every _x_ in _A_:

_x_^( * *) = (_x_^(*))^(*) = _x_

-   For all _x_, _y_ in _A_:

(_x_ + _y_)^(*) = _x_^(*) + _y_^(*)

(_x__y_)^(*) = _y_^(*)_x_^(*)

-   For every complex number λ in C and every _x_ in _A_:

$$(\lambda x)^* = \overline{\lambda} x^* .$$

-   For all _x_ in _A_:

∥_x_^(*)_x_∥ = ∥_x_∥∥_x_^(*)∥.

REMARK. The first three identities say that _A_ is a *-algebra. The last identity is called the C* IDENTITY and is equivalent to:

∥xx^(*)∥ = ∥x∥²,

which is sometimes called the B*-identity. For history behind the names C*- and B*-algebras, see the history section below.

The C*-identity is a very strong requirement. For instance, together with the spectral radius formula, it implies that the C*-norm is uniquely determined by the algebraic structure:

∥_x_∥² = ∥_x_^(*)_x_∥ = sup {|_λ_| : _x_^(*)_x_ − _λ_ 1 is not invertible}.

A bounded linear map, π : _A_ → _B_, between C*-algebras _A_ and _B_ is called a *-HOMOMORPHISM if

-   For _x_ and _y_ in _A_

_π_(_x__y_) = _π_(_x_)_π_(_y_) 

-   For _x_ in _A_

_π_(_x_^(*)) = _π_(_x_)^(*) 

In the case of C*-algebras, any *-homomorphism π between C*-algebras is contractive, i.e. bounded with norm ≤ 1. Furthermore, an injective *-homomorphism between C*-algebras is isometric. These are consequences of the C*-identity.

A bijective *-homomorphism π is called a C*-ISOMORPHISM, in which case _A_ and _B_ are said to be ISOMORPHIC.


Some history: B*-algebras and C*-algebras

The term B*-algebra was introduced by C. E. Rickart in 1946 to describe Banach *-algebras that satisfy the condition:

-   ∥xx^(*)∥ = ∥x∥² for all _x_ in the given B*-algebra. (B*-condition)

This condition automatically implies that the *-involution is isometric, that is, ∥x∥ = ∥x^(*)∥. Hence, ∥xx^(*)∥ = ∥x∥∥x^(*)∥, and therefore, a B*-algebra is also a C*-algebra. Conversely, the C*-condition implies the B*-condition. This is nontrivial, and can be proved without using the condition ∥x∥ = ∥x^(*)∥.[1] For these reasons, the term B*-algebra is rarely used in current terminology, and has been replaced by the term 'C*-algebra'.

The term C*-algebra was introduced by I. E. Segal in 1947 to describe norm-closed subalgebras of _B_(_H_), namely, the space of bounded operators on some Hilbert space _H_. 'C' stood for 'closed'.[2][3] In his paper Segal defines a C*-algebra as a "uniformly closed, self-adjoint algebra of bounded operators on a Hilbert space".[4]


Structure of C*-algebras

C*-algebras have a large number of properties that are technically convenient. Some of these properties can be established by using the continuous functional calculus or by reduction to commutative C*-algebras. In the latter case, we can use the fact that the structure of these is completely determined by the Gelfand isomorphism.

Self-adjoint elements

Self-adjoint elements are those of the form _x_=_x_*. The set of elements of a C*-algebra _A_ of the form _x*x_ forms a closed convex cone. This cone is identical to the elements of the form _xx*_. Elements of this cone are called _non-negative_ (or sometimes _positive_, even though this terminology conflicts with its use for elements of R.)

The set of self-adjoint elements of a C*-algebra _A_ naturally has the structure of a partially ordered vector space; the ordering is usually denoted ≥. In this ordering, a self-adjoint element _x_ of _A_ satisfies _x_ ≥ 0 if and only if the spectrum of _x_ is non-negative, if and only if _x_ = _s*s_ for some _s_. Two self-adjoint elements _x_ and _y_ of _A_ satisfy _x_ ≥ _y_ if _x_−_y_ ≥ 0.

This partially ordered subspace allows the definition of a positive linear functional on a C*-algebra, which in turn is used to define the states of a C*-algebra, which in turn can be used to construct the spectrum of a C*-algebra using the GNS construction.

Quotients and approximate identities

Any C*-algebra _A_ has an approximate identity. In fact, there is a directed family {_e__(λ)}_(λ∈I) of self-adjoint elements of _A_ such that



        xe_(λ) → x
        0 ≤ e_(λ) ≤ e_(μ) ≤ 1  whenever λ ≤ μ.

    In case _A_ is separable, _A_ has a sequential approximate identity. More generally, _A_ will have a sequential approximate identity if and only if _A_ contains a STRICTLY POSITIVE ELEMENT, i.e. a positive element _h_ such that _hAh_ is dense in _A_.

Using approximate identities, one can show that the algebraic quotient of a C*-algebra by a closed proper two-sided ideal, with the natural norm, is a C*-algebra.

Similarly, a closed two-sided ideal of a C*-algebra is itself a C*-algebra.


Examples

Finite-dimensional C*-algebras

The algebra M(_n_, C) of _n_ × _n_ matrices over C becomes a C*-algebra if we consider matrices as operators on the Euclidean space, C^(_n_), and use the operator norm ||·|| on matrices. The involution is given by the conjugate transpose. More generally, one can consider finite direct sums of matrix algebras. In fact, all C*-algebras that are finite dimensional as vector spaces are of this form, up to isomorphism. The self-adjoint requirement means finite-dimensional C*-algebras are semisimple, from which fact one can deduce the following theorem of Artin–Wedderburn type:

  THEOREM. A finite-dimensional C*-algebra, _A_, is canonically isomorphic to a finite direct sum

  _A_ = ⨁_(_e_ ∈ min _A_)_A__e_
  where min _A_ is the set of minimal nonzero self-adjoint central projections of _A_.

Each C*-algebra, _Ae_, is isomorphic (in a noncanonical way) to the full matrix algebra M(dim(_e_), C). The finite family indexed on min _A_ given by {dim(_e_)}_(_e_) is called the _dimension vector_ of _A_. This vector uniquely determines the isomorphism class of a finite-dimensional C*-algebra. In the language of K-theory, this vector is the positive cone of the _K_₀ group of _A_.

A †-ALGEBRA (or, more explicitly, a _†-closed algebra_) is the name occasionally used in physics[5] for a finite-dimensional C*-algebra. The dagger, †, is used in the name because physicists typically use the symbol to denote a Hermitian adjoint, and are often not worried about the subtleties associated with an infinite number of dimensions. (Mathematicians usually use the asterisk, *, to denote the Hermitian adjoint.) †-algebras feature prominently in quantum mechanics, and especially quantum information science.

An immediate generalization of finite dimensional C*-algebras are the approximately finite dimensional C*-algebras.

C*-algebras of operators

The prototypical example of a C*-algebra is the algebra _B(H)_ of bounded (equivalently continuous) linear operators defined on a complex Hilbert space _H_; here _x*_ denotes the adjoint operator of the operator _x_ : _H_ → _H_. In fact, every C*-algebra, _A_, is *-isomorphic to a norm-closed adjoint closed subalgebra of _B_(_H_) for a suitable Hilbert space, _H_; this is the content of the Gelfand–Naimark theorem.

C*-algebras of compact operators

Let _H_ be a separable infinite-dimensional Hilbert space. The algebra _K_(_H_) of compact operators on _H_ is a norm closed subalgebra of _B_(_H_). It is also closed under involution; hence it is a C*-algebra.

Concrete C*-algebras of compact operators admit a characterization similar to Wedderburn's theorem for finite dimensional C*-algebras:

  THEOREM. If _A_ is a C*-subalgebra of _K_(_H_), then there exists Hilbert spaces {_H_(i)_}_(_i_∈_I_) such that

  _A_ ≅ ⨁_(_i_ ∈ _I_)_K_(_H__(_i_)),
  where the (C*-)direct sum consists of elements (_T_(i)_) of the Cartesian product Π _K_(_H_(i)_) with ||_T_(i)_|| → 0.

Though _K_(_H_) does not have an identity element, a sequential approximate identity for _K_(_H_) can be developed. To be specific, _H_ is isomorphic to the space of square summable sequences _l_²; we may assume that _H_ = _l_². For each natural number _n_ let _H_(n)_ be the subspace of sequences of _l_² which vanish for indices _k_ ≤ _n_ and let _e_(n)_ be the orthogonal projection onto _H_(n)_. The sequence {_e_(n)_}_(_n_) is an approximate identity for _K_(_H_).

_K_(_H_) is a two-sided closed ideal of _B_(_H_). For separable Hilbert spaces, it is the unique ideal. The quotient of _B_(_H_) by _K_(_H_) is the Calkin algebra.

Commutative C*-algebras

Let _X_ be a locally compact Hausdorff space. The space C₀(X) of complex-valued continuous functions on _X_ that _vanish at infinity_ (defined in the article on local compactness) form a commutative C*-algebra C₀(X) under pointwise multiplication and addition. The involution is pointwise conjugation. C₀(X) has a multiplicative unit element if and only if X is compact. As does any C*-algebra, C₀(X) has an approximate identity. In the case of C₀(X) this is immediate: consider the directed set of compact subsets of X, and for each compact K let f_(K) be a function of compact support which is identically 1 on K. Such functions exist by the Tietze extension theorem which applies to locally compact Hausdorff spaces. Any such sequence of functions {f_(K)} is an approximate identity.

The Gelfand representation states that every commutative C*-algebra is *-isomorphic to the algebra C₀(X), where X is the space of characters equipped with the weak* topology. Furthermore, if C₀(X) is isomorphic to C₀(Y) as C*-algebras, it follows that X and Y are homeomorphic. This characterization is one of the motivations for the noncommutative topology and noncommutative geometry programs.

C*-enveloping algebra

Given a Banach *-algebra _A_ with an approximate identity, there is a unique (up to C*-isomorphism) C*-algebra E(_A_) and *-morphism π from _A_ into E(_A_) which is universal, that is, every other continuous *-morphism factors uniquely through π. The algebra E(_A_) is called the C*-ENVELOPING ALGEBRA of the Banach *-algebra _A_.

Of particular importance is the C*-algebra of a locally compact group _G_. This is defined as the enveloping C*-algebra of the group algebra of _G_. The C*-algebra of _G_ provides context for general harmonic analysis of _G_ in the case _G_ is non-abelian. In particular, the dual of a locally compact group is defined to be the primitive ideal space of the group C*-algebra. See spectrum of a C*-algebra.

Von Neumann algebras

Von Neumann algebras, known as W* algebras before the 1960s, are a special kind of C*-algebra. They are required to be closed in the weak operator topology, which is weaker than the norm topology.

The Sherman–Takeda theorem implies that any C*-algebra has a universal enveloping W*-algebra, such that any homomorphism to a W*-algebra factors through it.


Type for C*-algebras

A C*-algebra _A_ is of type I if and only if for all non-degenerate representations π of _A_ the von Neumann algebra π(_A_)′′ (that is, the bicommutant of π(_A_)) is a type I von Neumann algebra. In fact it is sufficient to consider only factor representations, i.e. representations π for which π(_A_)′′ is a factor.

A locally compact group is said to be of type I if and only if its group C*-algebra is type I.

However, if a C*-algebra has non-type I representations, then by results of James Glimm it also has representations of type II and type III. Thus for C*-algebras and locally compact groups, it is only meaningful to speak of type I and non type I properties.


C*-algebras and quantum field theory

In quantum mechanics, one typically describes a physical system with a C*-algebra _A_ with unit element; the self-adjoint elements of _A_ (elements _x_ with _x*_ = _x_) are thought of as the _observables_, the measurable quantities, of the system. A _state_ of the system is defined as a positive functional on _A_ (a C-linear map φ : _A_ → C with φ(_u*u_) ≥ 0 for all _u_ ∈ _A_) such that φ(1) = 1. The expected value of the observable _x_, if the system is in state φ, is then φ(_x_).

This C*-algebra approach is used in the Haag-Kastler axiomatization of local quantum field theory, where every open set of Minkowski spacetime is associated with a C*-algebra.


See also

-   Banach algebra
-   *-algebra
-   Hilbert C*-module
-   Operator K-theory
-   Operator system, a unital subspace of a C*-algebra that is *-closed.
-   Gelfand–Naimark–Segal construction


Notes


References

-   . An excellent introduction to the subject, accessible for those with a knowledge of basic functional analysis.

-   . This book is widely regarded as a source of new research material, providing much supporting intuition, but it is difficult.

-   . This is a somewhat dated reference, but is still considered as a high-quality technical exposition. It is available in English from North Holland press.

-   .

-   . Mathematically rigorous reference which provides extensive physics background.

-   -   .

-   .

* Category:Functional analysis

[1] , Google Books.

[2] , Google Books.

[3]

[4]

[5] John A. Holbrook, David W. Kribs, and Raymond Laflamme. "Noiseless Subsystems and the Structure of the Commutant in Quantum Error Correction." _Quantum Information Processing_. Volume 2, Number 5, pp. 381–419. Oct 2003.