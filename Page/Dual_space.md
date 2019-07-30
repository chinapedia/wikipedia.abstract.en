In mathematics, any vector space _V_ has a corresponding DUAL VECTOR SPACE (or just DUAL SPACE for short) consisting of all linear functionals on _V_, together with the vector space structure of pointwise addition and scalar multiplication by constants.

The dual space as defined above is defined for all vector spaces, and to avoid ambiguity may also be called the _algebraic dual space_. When defined for a topological vector space, there is a subspace of the dual space, corresponding to continuous linear functionals, called the _continuous dual space_.

Dual vector spaces find application in many branches of mathematics that use vector spaces, such as in tensor analysis with finite-dimensional vector spaces. When applied to vector spaces of functions (which are typically infinite-dimensional), dual spaces are used to describe measures, distributions, and Hilbert spaces. Consequently, the dual space is an important concept in functional analysis.


Algebraic dual space

Given any vector space _V_ over a field _F_, the (ALGEBRAIC) DUAL SPACE _V_^(∗) (alternatively denoted by V^(∨) or V′)For V^(∨) used in this way, see p. 19 of _An Introduction to Manifolds_ (2nd edition, 2011, Springer) by Loring Tu. This notation is sometimes used when ( ⋅ )^(*) is reserved for some other meaning. For instance, in the above text, F^(*) is frequently used to denote the codifferential of _F_, so that F^(*)ω represents the pullback of the form ω.

Halmos's _Finite-Dimensional Vector Spaces_ (2nd edition, 1958, Van Nostrand) uses V′ to denote the algebraic dual of _V_ ; see p. 20. However, other authors use V′ for the continuous dual, while reserving V^(*) for the algebraic dual. is defined as the set of all linear maps (linear functionals). Since linear maps are vector space homomorphisms, the dual space is also sometimes denoted by Hom(_V_, _F_). The dual space _V_^(∗) itself becomes a vector space over _F_ when equipped with an addition and scalar multiplication satisfying:



\begin{align}

 (\varphi + \psi)(x) &= \varphi(x) + \psi(x) \\
      (a \varphi)(x) &= a \left(\varphi(x)\right)

\end{align} for all _φ_ and , , and . Elements of the algebraic dual space _V_^(∗) are sometimes called COVECTORS or ONE-FORMS.

The pairing of a functional _φ_ in the dual space _V_^(∗) and an element _x_ of _V_ is sometimes denoted by a bracket: [1] or .[2] This pairing defines a nondegenerate bilinear mapping[3] called the natural pairing.

Finite-dimensional case

If _V_ is finite-dimensional, then _V_^(∗) has the same dimension as _V_. Given a basis in _V_, it is possible to construct a specific basis in _V_^(∗), called the DUAL BASIS. This dual basis is a set of linear functionals on _V_, defined by the relation

    E^(i)(c¹E₁ + ⋯ + c^(n)E_(n)) = c^(i), i = 1, …, n

for any choice of coefficients . In particular, letting in turn each one of those coefficients be equal to one and the other coefficients zero, gives the system of equations

    E^(i)(E_(j)) = δ_(j)^(i)

where δ_(j)^(i) is the Kronecker delta symbol. This property is referred to as _biorthogonality property_.

For example, if _V_ is R², let its basis be chosen as . Note that the basis vectors are not orthogonal to each other. Then, E¹ and E² are one-forms (functions that map a vector to a scalar) such that , , , and . (Note: The superscript here is the index, not an exponent). We can express this system of equations using matrix notation as

$$\begin{bmatrix}
e_{11} & e_{12} \\
e_{21} & e_{22}
\end{bmatrix}
\begin{bmatrix}
e^{11} & e^{21} \\
e^{12} & e^{22}
\end{bmatrix}
=
\begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}.$$
Solving this equation, we find the dual basis to be . Recalling that E¹ and E² are functionals, we can rewrite them as E¹(_x_, _y_) = 2_x_ and E²(_x_, _y_) = −_x_ + _y_. In general, when _V_ is R^(n), if E = (E₁, ..., E_(n)) is a matrix whose columns are the basis vectors and Ê = (E¹, ..., E^(n)) is a matrix whose columns are the dual basis vectors, then

_E_^(_T_)_Ê_ = _I__(_n_),
where I_(n) is an identity matrix of order _n_. The biorthogonality property of these two basis sets allows us to represent any point X in _V_ as

X = ∑_(_i_)⟨X, E^(_i_)⟩E_(_i_) = ∑_(_i_)⟨X, E_(_i_)⟩E^(_i_),
even when the basis vectors are not orthogonal to each other. Strictly speaking, the above statement only makes sense once the inner product ⟨⋅, ⋅ ⟩ and the corresponding duality pairing are introduced, as described below in Bilinear products and dual spaces.

In particular, if we interpret R^(_n_) as the space of columns of _n_ real numbers, its dual space is typically written as the space of _rows_ of _n_ real numbers. Such a row acts on R^(_n_) as a linear functional by ordinary matrix multiplication. One way to see this is that a functional maps every _n_-vector _x_ into a real number _y_. Then, seeing this functional as a matrix _M_, and _x_, _y_ as a matrix and a matrix (trivially, a real number) respectively, if we have , then, by dimension reasons, _M_ must be a matrix, i.e., _M_ must be a row vector.

If _V_ consists of the space of geometrical vectors in the plane, then the level curves of an element of _V_^(∗) form a family of parallel lines in _V_, because the range is 1-dimensional, so that every point in the range is a multiple of any one nonzero element. So an element of _V_^(∗) can be intuitively thought of as a particular family of parallel lines covering the plane. To compute the value of a functional on a given vector, one needs only to determine which of the lines the vector lies on. Or, informally, one "counts" how many lines the vector crosses. More generally, if _V_ is a vector space of any dimension, then the level sets of a linear functional in _V_^(∗) are parallel hyperplanes in _V_, and the action of a linear functional on a vector can be visualized in terms of these hyperplanes.[4]

Infinite-dimensional case

If _V_ is not finite-dimensional but has a basis[5] E_(_α_) indexed by an infinite set _A_, then the same construction as in the finite-dimensional case yields linearly independent elements E^(_α_) () of the dual space, but they will not form a basis.

Consider, for instance, the space R^(∞), whose elements are those sequences of real numbers that contain only finitely many non-zero entries, which has a basis indexed by the natural numbers N: for , E_(_i_) is the sequence consisting of all zeroes except in the _i_-th position, which is _1_. The dual space of R^(∞) is (isomorphic to) R^(N), the space of _all_ sequences of real numbers: such a sequence (_a_(n)_) is applied to an element (_x_(n)_) of R^(∞) to give the number

∑_(_n_)_a__(_n_)_x__(_n_),

which is a finite sum because there are only finitely many nonzero _x_(n)_. The dimension of R^(∞) is countably infinite, whereas R^(N) does not have a countable basis.

This observation generalizes to any[6] infinite-dimensional vector space _V_ over any field _F_: a choice of basis identifies _V_ with the space (_F^(A)_)₀ of functions such that is nonzero for only finitely many , where such a function _f_ is identified with the vector

∑_(_α_ ∈ _A_)_f__(_α_)E_(_α_)

in _V_ (the sum is finite by the assumption on _f_, and any may be written in this way by the definition of the basis).

The dual space of _V_ may then be identified with the space _F^(A)_ of _all_ functions from _A_ to _F_: a linear functional _T_ on _V_ is uniquely determined by the values it takes on the basis of _V_, and any function (with ) defines a linear functional _T_ on _V_ by

_T_(∑_(_α_ ∈ _A_)_f__(_α_)E_(_α_)) = ∑_(_α_ ∈ _A_)_f__(_α_)_T_(_e__(_α_)) = ∑_(_α_ ∈ _A_)_f__(_α_)_θ__(_α_).

Again the sum is finite because _f_(α)_ is nonzero for only finitely many _α_.

Note that (_F^(A)_)₀ may be identified (essentially by definition) with the direct sum of infinitely many copies of _F_ (viewed as a 1-dimensional vector space over itself) indexed by _A_, i.e., there are linear isomorphisms

_V_ ≅ (_F_^(_A_))₀ ≅ ⨁_(_α_ ∈ _A_)_F_.

On the other hand, _F^(A)_ is (again by definition), the direct product of infinitely many copies of _F_ indexed by _A_, and so the identification

_V_^(*) ≅ (⨁_(_α_ ∈ _A_)_F_)^(*) ≅ ∏_(_α_ ∈ _A_)_F_^(*) ≅ ∏_(_α_ ∈ _A_)_F_ ≅ _F_^(_A_)

is a special case of a general result relating direct sums (of modules) to direct products.

Thus if the basis is infinite, then the algebraic dual space is _always_ of larger dimension (as a cardinal number) than the original vector space. This is in contrast to the case of the continuous dual space, discussed below, which may be isomorphic to the original vector space even if the latter is infinite-dimensional.

Bilinear products and dual spaces

If _V_ is finite-dimensional, then _V_ is isomorphic to _V_^(∗). But there is in general no natural isomorphism between these two spaces.[7] Any bilinear form on _V_ gives a mapping of _V_ into its dual space via

_v_ ↦ ⟨_v_,  ⋅ ⟩

where the right hand side is defined as the functional on _V_ taking each to . In other words, the bilinear form determines a linear mapping

_Φ__(⟨⋅, ⋅ ⟩) : _V_ → _V_^(*)

defined by

[_Φ__(⟨⋅, ⋅ ⟩)(_v_),_w_] = ⟨_v_, _w_⟩.

If the bilinear form is nondegenerate, then this is an isomorphism onto a subspace of _V_^(∗). If _V_ is finite-dimensional, then this is an isomorphism onto all of _V_^(∗). Conversely, any isomorphism Φ from _V_ to a subspace of _V_^(∗) (resp., all of _V_^(∗) if _V_ is finite dimensional) defines a unique nondegenerate bilinear form on _V_ by

⟨_v_, _w_⟩_(_Φ_) = (_Φ_(_v_))(_w_) = [_Φ_(_v_), _w_]. 

Thus there is a one-to-one correspondence between isomorphisms of _V_ to subspaces of (resp., all of) _V_^(∗) and nondegenerate bilinear forms on _V_.

If the vector space _V_ is over the complex field, then sometimes it is more natural to consider sesquilinear forms instead of bilinear forms. In that case, a given sesquilinear form determines an isomorphism of _V_ with the complex conjugate of the dual space



   \Phi_{\langle\cdot,\cdot\rangle} : V\to \overline{V^*}.
 

The conjugate space _V_^(∗) can be identified with the set of all additive complex-valued functionals such that



   f(\alpha v) = \overline{\alpha}f(v).
 

Injection into the double-dual

There is a natural homomorphism Ψ from V into the double dual V^( * *) = {Φ : V^(*) → F : Φ linear}, defined by (Ψ(v))(φ) = φ(v) for all v ∈ V, φ ∈ V^(*). In other words, if ev_(v) : V^(*) → F is the evaluation map defined by φ ↦ φ(v), then we define Ψ : V → V^( * *) as the map v ↦ ev_(v). This map Ψ is always injective;[8] it is an isomorphism if and only if V is finite-dimensional.[9] Indeed, the isomorphism of a finite-dimensional vector space with its double dual is an archetypal example of a natural isomorphism. Note that infinite-dimensional Hilbert spaces are not a counterexample to this, as they are isomorphic to their continuous duals, not to their algebraic duals.

Transpose of a linear map

If is a linear map, then the _transpose_ (or _dual_) is defined by



   f^*(\varphi) = \varphi \circ f \,
 

for every . The resulting functional _f_(_φ_) in _V_ is called the _pullback_ of _φ_ along _f_.

The following identity holds for all and :



   [f^*(\varphi),\, v] = [\varphi,\, f(v)],
 

where the bracket [·,·] on the left is the natural pairing of _V_ with its dual space, and that on the right is the natural pairing of _W_ with its dual. This identity characterizes the transpose,[10] and is formally similar to the definition of the adjoint.

The assignment produces an injective linear map between the space of linear operators from _V_ to _W_ and the space of linear operators from _W_ to _V_; this homomorphism is an isomorphism if and only if _W_ is finite-dimensional. If then the space of linear maps is actually an algebra under composition of maps, and the assignment is then an antihomomorphism of algebras, meaning that . In the language of category theory, taking the dual of vector spaces and the transpose of linear maps is therefore a contravariant functor from the category of vector spaces over _F_ to itself. Note that one can identify (_f_) with _f_ using the natural injection into the double dual.

If the linear map _f_ is represented by the matrix _A_ with respect to two bases of _V_ and _W_, then _f_ is represented by the transpose matrix _A_^(T) with respect to the dual bases of _W_ and _V_, hence the name. Alternatively, as _f_ is represented by _A_ acting on the left on column vectors, _f_ is represented by the same matrix acting on the right on row vectors. These points of view are related by the canonical inner product on R^(_n_), which identifies the space of column vectors with the dual space of row vectors.

Quotient spaces and annihilators

Let _S_ be a subset of _V_. The ANNIHILATOR of _S_ in _V_^(∗), denoted here _S_, is the collection of linear functionals such that for all . That is, _S_ consists of all linear functionals such that the restriction to _S_ vanishes: _(_S_) = 0}}. Within finite dimensional vector spaces, the annihilator is dual to (isomorphic to) the orthogonal complement.

The annihilator of a subset is itself a vector space. In particular, the annihilator of the zero vector is the whole dual space: {0}⁰ = V^(*), and the annihilator of the whole space is just the zero covector: V⁰ = {0} ⊂ V^(*). Furthermore, the assignment of an annihilator to a subset of _V_ reverses inclusions, so that if , then



   0 \subset T^0 \subset S^0 \subset V^* .
 

Moreover, if _A_ and _B_ are two subsets of _V_, then



   (A \cap B)^0 \supseteq A^0 + B^0,
 

and equality holds provided _V_ is finite-dimensional. If _A_(i)_ is any family of subsets of _V_ indexed by _i_ belonging to some index set _I_, then



   \left(\bigcup_{i\in I} A_i\right)^0 = \bigcap_{i\in I} A_i^0 .
 

In particular if _A_ and _B_ are subspaces of _V_, it follows that



   (A + B)^0 = A^0 \cap B^0 .
 

If _V_ is finite-dimensional, and _W_ is a vector subspace, then



   W^{00} = W
 

after identifying _W_ with its image in the second dual space under the double duality isomorphism . Thus, in particular, forming the annihilator is a Galois connection on the lattice of subsets of a finite-dimensional vector space.

If _W_ is a subspace of _V_ then the quotient space _V_/_W_ is a vector space in its own right, and so has a dual. By the first isomorphism theorem, a functional factors through _V_/_W_ if and only if _W_ is in the kernel of _f_. There is thus an isomorphism

    (V/W)^(*) ≅ W⁰.

As a particular consequence, if _V_ is a direct sum of two subspaces _A_ and _B_, then _V_^(∗) is a direct sum of _A_ and _B_.


Continuous dual space

When dealing with topological vector spaces, one is typically only interested in the continuous linear functionals from the space into the base field $\mathbb{F}=\C$ (or $\R$). This gives rise to the notion of the "continuous dual space" or "topological dual" which is a linear subspace of the algebraic dual space V^(*), denoted by V′. For any _finite-dimensional_ normed vector space or topological vector space, such as Euclidean _n-_space, the continuous dual and the algebraic dual coincide. This is however false for any infinite-dimensional normed space, as shown by the example of discontinuous linear maps. Nevertheless, in the theory of topological vector spaces the terms "continuous dual space" and "topological dual space" are often replaced by "dual space", since there is no serious need to consider discontinuous maps in this field.

For a topological vector space V its _continuous dual space_,[11] or _topological dual space_,[12] or just _dual space_[13][14][15][16] (in the sense of the theory of topological vector spaces) V′ is defined as the space of all continuous linear functionals φ : V → 𝔽.

There is a standard construction for introducing a topology on the continuous dual V′ of a topological vector space V. Fix a collection 𝒜 of bounded subsets of V. Then one has the topology on V of uniform convergence on sets from 𝒜, or what is the same thing, the topology generated by seminorms of the form

∥_φ_∥_(_A_) = sup_(_x_ ∈ _A_)|_φ_(_x_)|,

where φ is a continuous linear functional on V, and A runs over the class 𝒜.

This means that a net of functionals φ_(i) tends to a functional φ in V′ if and only if

$$\forall A\in\mathcal{A}\qquad \|\varphi_i-\varphi\|_A = \sup_{x\in A} |\varphi_i(x)-\varphi(x)|\underset{i\to\infty}{\longrightarrow} 0.$$

Usually (but not necessarily) the class 𝒜 is supposed to satisfy the following conditions:

-   each point x of V belongs to some set A ∈ 𝒜

∀_x_ ∈ _V_  ∃_A_ ∈ 𝒜  _x_ ∈ _A_,

-   each two sets A ∈ 𝒜 and B ∈ 𝒜 are contained in some set C ∈ 𝒜:

∀_A_, _B_ ∈ 𝒜  ∃_C_ ∈ 𝒜  _A_ ∪ _B_ ⊆ _C_,

-   𝒜 is closed under the operation of multiplication by scalars:

∀_A_ ∈ 𝒜  ∀_λ_ ∈ 𝔽  _λ_ ⋅ _A_ ∈ 𝒜,

If these requirements are fulfilled then the corresponding topology on V′ is Hausdorff and the sets

_U__(_A_) = {_φ_∈_V_′: ∥_φ_∥_(_A_)<1},  _A_ ∈ 𝒜,

form its local base.

Here are the three most important special cases.

-   The strong topology on V′ is the topology of uniform convergence on bounded subsets in V (so here 𝒜 can be chosen as the class of all bounded subsets in V). If V is a normed vector space (e.g., a Banach space or a Hilbert space) then the strong topology on V′ is normed (in fact a Banach space if the field of scalars is complete), with the norm

∥_φ_∥ = sup_(∥_x_∥ ≤ 1)|_φ_(_x_)|.

-   The stereotype topology on V′ is the topology of uniform convergence on totally bounded sets in V (so here 𝒜 can be chosen as the class of all totally bounded subsets in V).

-   The weak topology on V′ is the topology of uniform convergence on finite subsets in V (so here 𝒜 can be chosen as the class of all finite subsets in V).

Each of these three choices of topology on V′ leads to a variant of reflexivity property for topological vector spaces.

Examples

Let 1 < _p_ < ∞ be a real number and consider the Banach space _ℓ^( p)_ of all sequences (_a__(_n_))}} for which

$$\|\mathbf{a}\|_p = \left ( \sum_{n=0}^\infty |a_n|^p \right) ^{\frac{1}{p}} < \infty.$$

Define the number _q_ by 1}}. Then the continuous dual of _ℓ^( p)_ is naturally identified with _ℓ^( q)_: given an element , the corresponding element of is the sequence (_φ_(E_(_n_))) where E_(_n_) denotes the sequence whose _n-_th term is 1 and all others are zero. Conversely, given an element (_a_(n)_) ∈ _ℓ^( q)_}}, the corresponding continuous linear functional _φ_ on is defined by

_ϕ_(B) = ∑_(_n_)_a__(_n_)_b__(_n_)

for all (_b_(n)_) ∈ _ℓ^( p)_}} (see Hölder's inequality).

In a similar manner, the continuous dual of is naturally identified with (the space of bounded sequences). Furthermore, the continuous duals of the Banach spaces _c_ (consisting of all convergent sequences, with the supremum norm) and _c_₀ (the sequences converging to zero) are both naturally identified with .

By the Riesz representation theorem, the continuous dual of a Hilbert space is again a Hilbert space which is anti-isomorphic to the original space. This gives rise to the bra–ket notation used by physicists in the mathematical formulation of quantum mechanics.

By the Riesz–Markov–Kakutani representation theorem, the continuous dual of certain spaces of continuous functions can be described using measures.

Transpose of a continuous linear map

If is a continuous linear map between two topological vector spaces, then the (continuous) transpose is defined by the same formula as before:

_T_′(_φ_) = _φ_ ∘ _T_, _φ_ ∈ _W_′.

The resulting functional is in. The assignment produces a linear map between the space of continuous linear maps from _V_ to _W_ and the space of linear maps from to . When _T_ and _U_ are composable continuous linear maps, then

(_U_ ∘ _T_)′ = _T_′ ∘ _U_′.

When _V_ and _W_ are normed spaces, the norm of the transpose in is equal to that of _T_ in. Several properties of transposition depend upon the Hahn–Banach theorem. For example, the bounded linear map _T_ has dense range if and only if the transpose is injective.

When _T_ is a compact linear map between two Banach spaces _V_ and _W_, then the transpose is compact. This can be proved using the Arzelà–Ascoli theorem.

When _V_ is a Hilbert space, there is an antilinear isomorphism _i_(V)_ from _V_ onto its continuous dual. For every bounded linear map _T_ on _V_, the transpose and the adjoint operators are linked by

_i__(_V_) ∘ _T_^(*) = _T_′ ∘ _i__(_V_).

When _T_ is a continuous linear map between two topological vector spaces _V_ and _W_, then the transpose is continuous when and are equipped with"compatible" topologies: for example when, for _V_}} and _W_}}, both duals have the strong topology of uniform convergence on bounded sets of _X_, or both have the weak-∗ topology of pointwise convergence on _X_. The transpose is continuous from to , or from to .

Annihilators

Assume that _W_ is a closed linear subspace of a normed space _V_, and consider the annihilator of _W_ in,

_W_^(⊥) = {_φ_ ∈ _V_′ : _W_ ⊂ ker _φ_}.

Then, the dual of the quotient can be identified with _W_^(⊥), and the dual of _W_ can be identified with the quotient .[17] Indeed, let _P_ denote the canonical surjection from _V_ onto the quotient ; then, the transpose is an isometric isomorphism from into, with range equal to _W_^(⊥). If _j_ denotes the injection map from _W_ into _V_, then the kernel of the transpose is the annihilator of _W_:

ker (_j_′) = _W_^(⊥)
and it follows from the Hahn–Banach theorem that induces an isometric isomorphism .

Further properties

If the dual of a normed space _V_ is separable, then so is the space _V_ itself. The converse is not true: for example the space is separable, but its dual is not.

Topologies on the dual

The topology of _V_ and the topology of real or complex numbers can be used to induce on _V′_ a dual space topology.

Double dual

of vector addition from a vector space to its double dual. denotes the ordered pair of two vectors. The addition + sends _x_₁ and _x_₂ to . The addition +′ induced by the transformation can be defined as for any _φ_ in the dual space.]] In analogy with the case of the algebraic double dual, there is always a naturally defined continuous linear operator from a normed space _V_ into its continuous double dual , defined by

_Ψ_(_x_)(_φ_) = _φ_(_x_), _x_ ∈ _V_, _φ_ ∈ _V_′.

As a consequence of the Hahn–Banach theorem, this map is in fact an isometry, meaning for all _x_ in _V_. Normed spaces for which the map Ψ is a bijection are called reflexive.

When _V_ is a topological vector space, one can still define Ψ(_x_) by the same formula, for every , however several difficulties arise. First, when _V_ is not locally convex, the continuous dual may be equal to {0} and the map Ψ trivial. However, if _V_ is Hausdorff and locally convex, the map Ψ is injective from _V_ to the algebraic dual of the continuous dual, again as a consequence of the Hahn–Banach theorem.[18]

Second, even in the locally convex setting, several natural vector space topologies can be defined on the continuous dual , so that the continuous double dual is not uniquely defined as a set. Saying that Ψ maps from _V_ to , or in other words, that Ψ(_x_) is continuous on for every , is a reasonable minimal requirement on the topology of , namely that the evaluation mappings

    φ ∈ V′ ↦ φ(x), x ∈ V,

be continuous for the chosen topology on . Further, there is still a choice of a topology on , and continuity of Ψ depends upon this choice. As a consequence, defining reflexivity in this framework is more involved than in the normed case.


See also

-   Duality (mathematics)
-   Duality (projective geometry)
-   Pontryagin duality
-   Reciprocal lattice – dual space basis, in crystallography
-   Covariance and contravariance of vectors
-   Dual norm
-   Dual module


Notes


References

-   -   -   -   -   .

-   -   -   -

Category:Linear algebra Category:Functional analysis Space

[1]

[2]

[3] In many areas, such as quantum mechanics, is reserved for a sesquilinear form defined on .

[4]

[5] Several assertions in this article require the axiom of choice for their justification. The axiom of choice is needed to show that an arbitrary vector space has a basis: in particular it is needed to show that R^(N) has a basis. It is also needed to show that the dual of an infinite-dimensional vector space _V_ is nonzero, and hence that the natural map from _V_ to its double dual is injective.

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

[18] If _V_ is locally convex but not Hausdorff, the kernel of Ψ is the smallest closed subspace containing {0}.