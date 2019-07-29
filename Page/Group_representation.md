In the mathematical field of representation theory, GROUP REPRESENTATIONS describe abstract groups in terms of bijective linear transformations (i.e. automorphisms) of vector spaces; in particular, they can be used to represent group elements as invertible matrices so that the group operation can be represented by matrix multiplication. Representations of groups are important because they allow many group-theoretic problems to be reduced to problems in linear algebra, which is well understood. They are also important in physics because, for example, they describe how the symmetry group of a physical system affects the solutions of equations describing that system.

The term _representation of a group_ is also used in a more general sense to mean any "description" of a group as a group of transformations of some mathematical object. More formally, a "representation" means a homomorphism from the group to the automorphism group of an object. If the object is a vector space we have a _linear representation_. Some people use _realization_ for the general notion and reserve the term _representation_ for the special case of linear representations. The bulk of this article describes linear representation theory; see the last section for generalizations.


Branches of group representation theory

The representation theory of groups divides into subtheories depending on the kind of group being represented. The various theories are quite different in detail, though some basic definitions and concepts are similar. The most important divisions are:

-   _Finite groups_ — Group representations are a very important tool in the study of finite groups. They also arise in the applications of finite group theory to crystallography and to geometry. If the field of scalars of the vector space has characteristic _p_, and if _p_ divides the order of the group, then this is called _modular representation theory_; this special case has very different properties. See Representation theory of finite groups.
-   _Compact groups or locally compact groups_ — Many of the results of finite group representation theory are proved by averaging over the group. These proofs can be carried over to infinite groups by replacement of the average with an integral, provided that an acceptable notion of integral can be defined. This can be done for locally compact groups, using Haar measure. The resulting theory is a central part of harmonic analysis. The Pontryagin duality describes the theory for commutative groups, as a generalised Fourier transform. See also: Peter–Weyl theorem.
-   _Lie groups_ — Many important Lie groups are compact, so the results of compact representation theory apply to them. Other techniques specific to Lie groups are used as well. Most of the groups important in physics and chemistry are Lie groups, and their representation theory is crucial to the application of group theory in those fields. See Representations of Lie groups and Representations of Lie algebras.
-   _Linear algebraic groups_ (or more generally _affine group schemes_) — These are the analogues of Lie groups, but over more general fields than just R or C. Although linear algebraic groups have a classification that is very similar to that of Lie groups, and give rise to the same families of Lie algebras, their representations are rather different (and much less well understood). The analytic techniques used for studying Lie groups must be replaced by techniques from algebraic geometry, where the relatively weak Zariski topology causes many technical complications.
-   _Non-compact topological groups_ — The class of non-compact groups is too broad to construct any general representation theory, but specific special cases have been studied, sometimes using ad hoc techniques. The _semisimple Lie groups_ have a deep theory, building on the compact case. The complementary _solvable_ Lie groups cannot be classified in the same way. The general theory for Lie groups deals with semidirect products of the two types, by means of general results called _Mackey theory_, which is a generalization of Wigner's classification methods.

Representation theory also depends heavily on the type of vector space on which the group acts. One distinguishes between finite-dimensional representations and infinite-dimensional ones. In the infinite-dimensional case, additional structures are important (e.g. whether or not the space is a Hilbert space, Banach space, etc.).

One must also consider the type of field over which the vector space is defined. The most important case is the field of complex numbers. The other important cases are the field of real numbers, finite fields, and fields of p-adic numbers. In general, algebraically closed fields are easier to handle than non-algebraically closed ones. The characteristic of the field is also significant; many theorems for finite groups depend on the characteristic of the field not dividing the order of the group.


Definitions

A REPRESENTATION of a group _G_ on a vector space _V_ over a field _K_ is a group homomorphism from _G_ to GL(_V_), the general linear group on _V_. That is, a representation is a map

_ρ_: _G_ → _G__L_(_V_)
such that

_ρ_(_g_₁_g_₂) = _ρ_(_g_₁)_ρ_(_g_₂),  for all _g_₁, _g_₂ ∈ _G_.

Here _V_ is called the REPRESENTATION SPACE and the dimension of _V_ is called the DIMENSION of the representation. It is common practice to refer to _V_ itself as the representation when the homomorphism is clear from the context.

In the case where _V_ is of finite dimension _n_ it is common to choose a basis for _V_ and identify GL(_V_) with , the group of _n_-by-_n_ invertible matrices on the field _K_.

-   If _G_ is a topological group and _V_ is a topological vector space, a CONTINUOUS REPRESENTATION of _G_ on _V_ is a representation _ρ_ such that the application defined by is continuous.
-   The KERNEL of a representation _ρ_ of a group _G_ is defined as the normal subgroup of _G_ whose image under _ρ_ is the identity transformation:

ker _ρ_ = {_g_∈_G_∣_ρ_(_g_)=_i__d_}.

    A faithful representation is one in which the homomorphism is injective; in other words, one whose kernel is the trivial subgroup {_e_} consisting only of the group's identity element.

-   Given two _K_ vector spaces _V_ and _W_, two representations and are said to be EQUIVALENT or ISOMORPHIC if there exists a vector space isomorphism so that for all _g_ in _G_,

_α_ ∘ _ρ_(_g_) ∘ _α_^( − 1) = _π_(_g_).


Examples

Consider the complex number _u_ = e^(2πi\ /\ 3) which has the property _u_³ = 1. The cyclic group _C_₃ = {1, _u_, _u_²} has a representation ρ on C² given by:

$$\rho \left( 1 \right) =
\begin{bmatrix}
1 & 0 \\
0 & 1 \\
\end{bmatrix}
\qquad
\rho \left( u \right) =
\begin{bmatrix}
1 & 0 \\
0 & u \\
\end{bmatrix}
\qquad
\rho \left( u^2 \right) =
\begin{bmatrix}
1 & 0 \\
0 & u^2 \\
\end{bmatrix}.$$

This representation is faithful because ρ is a one-to-one map.

Another representation for _C_₃ on C², isomorphic to the previous one, is σ given by:

$$\sigma \left( 1 \right) =
\begin{bmatrix}
1 & 0 \\
0 & 1 \\
\end{bmatrix}
\qquad
\sigma \left( u \right) =
\begin{bmatrix}
u & 0 \\
0 & 1 \\
\end{bmatrix}
\qquad
\sigma \left( u^2 \right) =
\begin{bmatrix}
u^2 & 0 \\
0 & 1 \\
\end{bmatrix}.$$

The group _C_₃ may also be faithfully represented on R² by τ given by:

$$\tau \left( 1 \right) =
\begin{bmatrix}
1 & 0 \\
0 & 1 \\
\end{bmatrix}
\qquad
\tau \left( u \right) =
\begin{bmatrix}
a & -b \\
b & a \\
\end{bmatrix}
\qquad
\tau \left( u^2 \right) =
\begin{bmatrix}
a & b \\
-b & a \\
\end{bmatrix}$$

where

$$a=\text{Re}(u)=-\tfrac{1}{2}, \qquad b=\text{Im}(u)=\tfrac{\sqrt{3}}{2}.$$


Reducibility

A subspace _W_ of _V_ that is invariant under the group action is called a _subrepresentation_. If _V_ has exactly two subrepresentations, namely the zero-dimensional subspace and _V_ itself, then the representation is said to be IRREDUCIBLE; if it has a proper subrepresentation of nonzero dimension, the representation is said to be REDUCIBLE. The representation of dimension zero is considered to be neither reducible nor irreducible, just like the number 1 is considered to be neither composite nor prime.

Under the assumption that the characteristic of the field _K_ does not divide the size of the group, representations of finite groups can be decomposed into a direct sum of irreducible subrepresentations (see Maschke's theorem). This holds in particular for any representation of a finite group over the complex numbers, since the characteristic of the complex numbers is zero, which never divides the size of a group.

In the example above, the first two representations given (ρ and σ) are both decomposable into two 1-dimensional subrepresentations (given by span{(1,0)} and span{(0,1)}), while the third representation (τ) is irreducible.


Generalizations

Set-theoretical representations

A _set-theoretic representation_ (also known as a group action or _permutation representation_) of a group _G_ on a set _X_ is given by a function ρ : _G_ → _X_^(_X_), the set of functions from _X_ to _X_, such that for all _g_₁, _g_₂ in _G_ and all _x_ in _X_:

_ρ_(1)[_x_] = _x_

_ρ_(_g_₁_g_₂)[_x_] = _ρ_(_g_₁)[_ρ_(_g_₂)[_x_]],

where 1 is the identity element of _G_. This condition and the axioms for a group imply that ρ(_g_) is a bijection (or permutation) for all _g_ in _G_. Thus we may equivalently define a permutation representation to be a group homomorphism from G to the symmetric group S_(_X_) of _X_.

For more information on this topic see the article on group action.

Representations in other categories

Every group _G_ can be viewed as a category with a single object; morphisms in this category are just the elements of _G_. Given an arbitrary category _C_, a _representation_ of _G_ in _C_ is a functor from _G_ to _C_. Such a functor selects an object _X_ in _C_ and a group homomorphism from _G_ to Aut(_X_), the automorphism group of _X_.

In the case where _C_ is VECT_(_K_), the category of vector spaces over a field _K_, this definition is equivalent to a linear representation. Likewise, a set-theoretic representation is just a representation of _G_ in the category of sets.

When _C_ is AB, the category of abelian groups, the objects obtained are called _G_-modules.

For another example consider the category of topological spaces, TOP. Representations in TOP are homomorphisms from _G_ to the homeomorphism group of a topological space _X_.

Two types of representations closely related to linear representations are:

-   projective representations: in the category of projective spaces. These can be described as "linear representations up to scalar transformations".
-   affine representations: in the category of affine spaces. For example, the Euclidean group acts affinely upon Euclidean space.


See also

-   Character theory
-   List of harmonic analysis topics
-   List of representation theory topics
-   Representation theory of finite groups


References

-   . Introduction to representation theory with emphasis on Lie groups.

-   Yurii I. Lyubich. _Introduction to the Theory of Banach Representations of Groups_. Translated from the 1985 Russian-language edition (Kharkov, Ukraine). Birkhäuser Verlag. 1988.

Category:Group theory Category:Representation theory Representation_theory_of_groups