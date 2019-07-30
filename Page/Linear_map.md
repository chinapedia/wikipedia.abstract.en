In mathematics, a LINEAR MAP (also called a LINEAR MAPPING, LINEAR TRANSFORMATION or, in some contexts, LINEAR FUNCTION) is a mapping between two modules (including vector spaces) that preserves (in the sense defined below) the operations of addition and scalar multiplication.

An important special case is when , an endomorphism of , sometimes the term LINEAR OPERATOR refers to this case[1]. In another convention, _linear operator_ allows and to differ, while requiring them to be real vector spaces[2]. Sometimes the term _linear function_ has the same meaning as _linear map_, while in analytic geometry it does not.

A linear map always maps linear subspaces onto linear subspaces (possibly of a lower dimension);[3] for instance it maps a plane through the origin to a plane, straight line or point. Linear maps can often be represented as matrices, and simple examples include rotation and reflection linear transformations.

In the language of abstract algebra, a linear map is a module homomorphism. In the language of category theory it is a morphism in the category of modules over a given ring.


Definition and first consequences

Let V and W be vector spaces over the same field K. A function f : V → W is said to be a _linear map_ if for any two vectors U, V ∈ V and any scalar c ∈ K the following two conditions are satisfied:

  ------------------------ --------------------------------------------------------------
  f(U + V) = f(U) + f(V)   additivity / operation of addition
  f(cU) = cf(U)            homogeneity of degree 1 / operation of scalar multiplication
  ------------------------ --------------------------------------------------------------

Thus, a linear map is said to be _operation preserving_. In other words, it does not matter whether the linear map is applied before or after the operations of addition and scalar multiplication.

This is equivalent to requiring the same for any linear combination of vectors, i.e. that for any vectors U₁, …, U_(n) ∈ V and scalars c₁, …, c_(n) ∈ K, the following equality holds:[4][5]

    f(c₁U₁+⋯+c_(n)U_(n)) = c₁f(U₁) + ⋯ + c_(n)f(U_(n)).

Denoting the zero elements of the vector spaces V and W by 0_(V) and 0_(W) respectively, it follows that f(0_(V)) = 0_(W). Let c = 0 and V ∈ V in the equation for homogeneity of degree 1:

_f_(0_(_V_)) = _f_(0V) = 0_f_(V) = 0_(_W_).

Occasionally, V and W can be considered to be vector spaces over different fields. It is then necessary to specify which of these ground fields is being used in the definition of "linear". If V and W are considered as spaces over the field K as above, we talk about K-linear maps. For example, the conjugation of complex numbers is an R-linear map C → C, but it is not C-linear.

A linear map V → K with K viewed as a vector space over itself is called a linear functional.[6]

These statements generalize to any left-module _(R)M over a ring R without modification, and to any right-module upon reversing of the scalar multiplication.


Examples

-   The zero map between two left-modules (or two right-modules) over the same ring is always linear.
-   The identity map on any module is a linear operator.
-   Any homothecy centered in the origin of a vector space, v ↦ cv where _c_ is a scalar, is a linear operator. This does not hold in general for modules, where such a map might only be semilinear.
-   For real numbers, the map is not linear.
-   For real numbers, the map is not linear (but is an affine transformation; is a linear equation, as the term is used in analytic geometry.)
-   If _A_ is a real matrix, then _A_ defines a linear map from R^(_n_) to R^(_m_) by sending the column vector to the column vector . Conversely, any linear map between finite-dimensional vector spaces can be represented in this manner; see the following section.
-   Differentiation defines a linear map from the space of all differentiable functions to the space of all functions. It also defines a linear operator on the space of all smooth functions.
-   The (definite) integral over some interval _I_ is a linear map from the space of all real-valued integrable functions on _I_ to R.
-   The (indefinite) integral (or antiderivative) with a fixed starting point defines a linear map from the space of all real-valued integrable functions on R to the space of all real-valued, differentiable, functions on R. Without a fixed starting point, an exercise in group theory will show that the antiderivative maps to the quotient space of the differentiables over the equivalence relation, "differ by a constant", which yields an identity class of the constant valued functions ( ∫​: I(ℜ) → D(ℜ)/ℜ ).
-   If _V_ and _W_ are finite-dimensional vector spaces over a field _F_, then functions that send linear maps to matrices in the way described in the sequel are themselves linear maps (indeed linear isomorphisms).
-   The expected value of a random variable (which is in fact a function, and as such a member of a vector space) is linear, as for random variables _X_ and _Y_ we have and , but the variance of a random variable is not linear.

File:Streckung eines Vektors.gif|The function $f:\R^2 \to \R^2$ with f(x, y) = (2x, y) is a linear map. This function scales the x component of a vector by the factor 2. File:Streckung der Summe zweier Vektoren.gif|The function is additive: It doesn't matter whether first vectors are added and then mapped or whether they are mapped and finally added: f(a + b) = f(a) + f(b) File:Streckung homogenitaet Version 3.gif|The function is homogeneous: It doesn't matter whether a vector is first scaled and then mapped or first mapped and then scaled: f(λa) = λf(a)


Matrices

If _V_ and _W_ are finite-dimensional vector spaces and a basis is defined for each vector space, then every linear map from _V_ to _W_ can be represented by a matrix.

Suppose $\left\{\bf{x}_1, \ldots, \bf{x}_n\right\}$ and $\left\{\bf{y}_1, \ldots, \bf{y}_m\right\}$ are bases of vector spaces and , respectively. Then every A ∈ L(X, Y) determines a set of numbers a_(i, j) such that

    $A\bf{x}_j = \sum_{i=1}^m a_{i,j}\bf{y}_i\quad (1 \leq j \leq n).$

It is convenient to represent these numbers in a rectangular array of rows and columns, called an _by_ _matrix_:

    [A] = \begin{bmatrix}

 a_{1,1} & a_{1,2} & \ldots & a_{1,n} \\
 a_{2,1} & a_{2,2} & \ldots & a_{2,n} \\ 
  \vdots &  \vdots & \ddots &  \vdots \\
 a_{m,1} & a_{m,2} & \ldots & a_{m,n}

\end{bmatrix}

Observe that the coordinates a_(i, j) of the vector $A{\bf x}_j$ (with respect to the basis $\{\bf{y}_1, \ldots, \bf{y}_m\}$) appear in the _j_^(th) column of [A]. The vectors $A{\bf x}_j$ are therefore sometimes called the _column vectors_ of [A]. With this terminology, the _range_ of _is spanned by the column vectors of [A]_. This is useful because it allows concrete calculations. Matrices yield examples of linear maps: if _A_ is a real matrix, then describes a linear map (see Euclidean space).

Let {V₁, …, V_(_n_)} be a basis for _V_. Then every vector V in _V_ is uniquely determined by the coefficients _c_₁, …, _c__(_n_) in the field R:

    c₁V₁ + ⋯ + c_(n)V_(n).

If is a linear map,

    f(c₁V₁+⋯+c_(n)V_(n)) = c₁f(V₁) + ⋯ + c_(n)f(V_(n)),

which implies that the function _f_ is entirely determined by the vectors _f_(V₁), …, _f_(V_(_n_)). Now let be a basis for _W_. Then we can represent each vector _f_(V_(_j_)) as

    f(V_(j)) = a_(1j)W₁ + ⋯ + a_(mj)W_(m).

Thus, the function _f_ is entirely determined by the values of _a__(_ij_). If we put these values into an matrix _M_, then we can conveniently use it to compute the vector output of _f_ for any vector in _V_. To get _M_, every column _j_ of _M_ is a vector

    $\begin{pmatrix} a_{1j} & \cdots & a_{mj} \end{pmatrix}^\textsf{T}$

corresponding to _f_(V_(_j_)) as defined above. To define it more clearly, for some column _j_ that corresponds to the mapping _f_(V_(_j_)),

    \mathbf{M} = \begin{pmatrix}

 \ \cdots & a_{1j} & \cdots\  \\
          & \vdots &          \\
          & a_{mj} &

\end{pmatrix}

where M is the matrix of _f_. In other words, every column has a corresponding vector _f_(V_(_j_)) whose coordinates _a__(1_j_), …, _a__(_mj_) are the elements of column _j_. A single linear map may be represented by many matrices. This is because the values of the elements of a matrix depend on the bases chosen.

The matrices of a linear transformation can be represented visually:

1.  Matrix for T relative to B: A
2.  Matrix for T relative to B′: A′
3.  Transition matrix from B′ to B: P
4.  Transition matrix from B to B′: P^( − 1)

Such that starting in the bottom left corner [v⃗]_(B′) and looking for the bottom right corner [T(v⃗)]_(B′), one would left-multiply—that is, A′[v⃗]_(B′) = [T(v⃗)]_(B′). The equivalent method would be the "longer" method going clockwise from the same point such that [v⃗]_(B′) is left-multiplied with P^( − 1)AP, or P^( − 1)AP[v⃗]_(B′) = [T(v⃗)]_(B′).


Examples of linear transformation matrices

In two-dimensional space R² linear maps are described by 2 × 2 real matrices. These are some examples:

-   rotation
    -   by 90 degrees counterclockwise:

            $\mathbf{A} = \begin{pmatrix} 0 & -1\\ 1 & 0\end{pmatrix}$

    -   by an angle _θ_ counterclockwise:

            $\mathbf{A} = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$
-   reflection
    -   about the _x_ axis:

            $\mathbf{A} = \begin{pmatrix} 1 & 0\\ 0 & -1\end{pmatrix}$

    -   about the _y_ axis:

            $\mathbf{A} = \begin{pmatrix}-1 & 0\\ 0 & 1\end{pmatrix}$
-   scaling by 2 in all directions:

        $\mathbf{A} = \begin{pmatrix} 2 & 0\\ 0 & 2\end{pmatrix} = 2\mathbf{I}$

-   horizontal shear mapping:

        $\mathbf{A} = \begin{pmatrix} 1 & m\\ 0 & 1\end{pmatrix}$

-   squeeze mapping:

        $\mathbf{A} = \begin{pmatrix} k & 0\\ 0 & \frac{1}{k}\end{pmatrix}$

-   projection onto the _y_ axis:

        $\mathbf{A} = \begin{pmatrix} 0 & 0\\ 0 & 1\end{pmatrix}.$


Forming new linear maps from given ones

The composition of linear maps is linear: if and are linear, then so is their composition . It follows from this that the class of all vector spaces over a given field _K_, together with _K_-linear maps as morphisms, forms a category.

The inverse of a linear map, when defined, is again a linear map.

If and are linear, then so is their pointwise sum (which is defined by .

If is linear and _a_ is an element of the ground field _K_, then the map _af_, defined by , is also linear.

Thus the set of linear maps from _V_ to _W_ itself forms a vector space over _K_, sometimes denoted . Furthermore, in the case that , this vector space (denoted End(_V_)) is an associative algebra under composition of maps, since the composition of two linear maps is again a linear map, and the composition of maps is always associative. This case is discussed in more detail below.

Given again the finite-dimensional case, if bases have been chosen, then the composition of linear maps corresponds to the matrix multiplication, the addition of linear maps corresponds to the matrix addition, and the multiplication of linear maps with scalars corresponds to the multiplication of matrices with scalars.


Endomorphisms and automorphisms

A linear transformation _f_: _V_ → _V_ is an endomorphism of _V_; the set of all such endomorphisms End(_V_) together with addition, composition and scalar multiplication as defined above forms an associative algebra with identity element over the field _K_ (and in particular a ring). The multiplicative identity element of this algebra is the identity map id: _V_ → _V_.

An endomorphism of _V_ that is also an isomorphism is called an automorphism of _V_. The composition of two automorphisms is again an automorphism, and the set of all automorphisms of _V_ forms a group, the automorphism group of _V_ which is denoted by Aut(_V_) or GL(_V_). Since the automorphisms are precisely those endomorphisms which possess inverses under composition, Aut(_V_) is the group of units in the ring End(_V_).

If _V_ has finite dimension _n_, then End(_V_) is isomorphic to the associative algebra of all _n_ × _n_ matrices with entries in _K_. The automorphism group of _V_ is isomorphic to the general linear group GL(_n_, _K_) of all _n_ × _n_ invertible matrices with entries in _K_.


Kernel, image and the rank–nullity theorem

If _f_ : _V_ → _W_ is linear, we define the kernel and the image or range of _f_ by

    \begin{align}

 \operatorname{\ker}(f) &= \{\,x \in V: f(x) = 0\,\} \\
   \operatorname{im}(f) &= \{\,w \in W: w = f(x), x \in V\,\}

\end{align}

ker(_f_) is a subspace of _V_ and im(_f_) is a subspace of _W_. The following dimension formula is known as the rank–nullity theorem:

    dim (ker (f)) + dim (im (f)) = dim (V).[7]

The number dim(im(_f_)) is also called the _rank of f_ and written as rank(_f_), or sometimes, ρ(_f_); the number dim(ker(_f_)) is called the _nullity of f_ and written as null(_f_) or ν(_f_). If _V_ and _W_ are finite-dimensional, bases have been chosen and _f_ is represented by the matrix _A_, then the rank and nullity of _f_ are equal to the rank and nullity of the matrix _A_, respectively.


Cokernel

A subtler invariant of a linear transformation f : V → W is the _co_kernel, which is defined as

    coker (f) := W/f(V) = W/im (f).

This is the _dual_ notion to the kernel: just as the kernel is a _sub_space of the _domain,_ the co-kernel is a _quotient_ space of the _target._ Formally, one has the exact sequence

    0 → ker (f) → V → W → coker (f) → 0.

These can be interpreted thus: given a linear equation _f_(V) = W to solve,

-   the kernel is the space of _solutions_ to the _homogeneous_ equation _f_(V) = 0, and its dimension is the number of _degrees of freedom_ in a solution, if it exists;
-   the co-kernel is the space of _constraints_ that must be satisfied if the equation is to have a solution, and its dimension is the number of constraints that must be satisfied for the equation to have a solution.

The dimension of the co-kernel and the dimension of the image (the rank) add up to the dimension of the target space. For finite dimensions, this means that the dimension of the quotient space _W_/_f_(_V_) is the dimension of the target space minus the dimension of the image.

As a simple example, consider the map _f_: R² → R², given by _f_(_x_, _y_) = (0, _y_). Then for an equation _f_(_x_, _y_) = (_a_, _b_) to have a solution, we must have _a_ = 0 (one constraint), and in that case the solution space is (_x_, _b_) or equivalently stated, (0, _b_) + (_x_, 0), (one degree of freedom). The kernel may be expressed as the subspace (_x_, 0) < _V_: the value of _x_ is the freedom in a solution – while the cokernel may be expressed via the map _W_ → R, (a, b) ↦ (a): given a vector (_a_, _b_), the value of _a_ is the _obstruction_ to there being a solution.

An example illustrating the infinite-dimensional case is afforded by the map _f_: R^(∞) → R^(∞), {a_(n)} ↦ {b_(n)} with _b_₁ = 0 and _b__(_n_\ +\ 1) = _a_(n)_ for _n_ > 0. Its image consists of all sequences with first element 0, and thus its cokernel consists of the classes of sequences with identical first element. Thus, whereas its kernel has dimension 0 (it maps only the zero sequence to the zero sequence), its co-kernel has dimension 1. Since the domain and the target space are the same, the rank and the dimension of the kernel add up to the same sum as the rank and the dimension of the co-kernel ( ℵ₀ + 0 = ℵ₀ + 1 ), but in the infinite-dimensional case it cannot be inferred that the kernel and the co-kernel of an endomorphism have the same dimension (0 ≠ 1). The reverse situation obtains for the map _h_: R^(∞) → R^(∞), {a_(n)} ↦ {c_(n)} with _c_(n)_ = _a__(_n_\ +\ 1). Its image is the entire target space, and hence its co-kernel has dimension 0, but since it maps all sequences in which only the first element is non-zero to the zero sequence, its kernel has dimension 1.

Index

For a linear operator with finite-dimensional kernel and co-kernel, one may define _index_ as:

    ind (f) := dim (ker (f)) − dim (coker (f)),

namely the degrees of freedom minus the number of constraints.

For a transformation between finite-dimensional vector spaces, this is just the difference dim(_V_) − dim(_W_), by rank–nullity. This gives an indication of how many solutions or how many constraints one has: if mapping from a larger space to a smaller one, the map may be onto, and thus will have degrees of freedom even without constraints. Conversely, if mapping from a smaller space to a larger one, the map cannot be onto, and thus one will have constraints even without degrees of freedom.

The index of an operator is precisely the Euler characteristic of the 2-term complex 0 → _V_ → _W_ → 0. In operator theory, the index of Fredholm operators is an object of study, with a major result being the Atiyah–Singer index theorem.[8]


Algebraic classifications of linear transformations

No classification of linear maps could hope to be exhaustive. The following incomplete list enumerates some important classifications that do not require any additional structure on the vector space.

Let _V_ and _W_ denote vector spaces over a field, _F_. Let _T_: _V_ → _W_ be a linear map.

-   _T_ is said to be _injective_ or a _monomorphism_ if any of the following equivalent conditions are true:
    -   _T_ is one-to-one as a map of sets.
    -   ker_T_ = {0_(_V_)}
    -   dim(ker_T_) = 0
    -   _T_ is monic or left-cancellable, which is to say, for any vector space _U_ and any pair of linear maps _R_: _U_ → _V_ and _S_: _U_ → _V_, the equation _TR_ = _TS_ implies _R_ = _S_.
    -   _T_ is left-invertible, which is to say there exists a linear map _S_: _W_ → _V_ such that _ST_ is the identity map on _V_.
-   _T_ is said to be _surjective_ or an _epimorphism_ if any of the following equivalent conditions are true:
    -   _T_ is onto as a map of sets.
    -   coker _T_ = {0_(_W_)}
    -   _T_ is epic or right-cancellable, which is to say, for any vector space _U_ and any pair of linear maps _R_: _W_ → _U_ and _S_: _W_ → _U_, the equation _RT_ = _ST_ implies _R_ = _S_.
    -   _T_ is right-invertible, which is to say there exists a linear map _S_: _W_ → _V_ such that _TS_ is the identity map on _W_.
-   _T_ is said to be an _isomorphism_ if it is both left- and right-invertible. This is equivalent to _T_ being both one-to-one and onto (a bijection of sets) or also to _T_ being both epic and monic, and so being a bimorphism.
-   If _T_: _V_ → _V_ is an endomorphism, then:
    -   If, for some positive integer _n_, the _n_-th iterate of _T_, _T^(n)_, is identically zero, then _T_ is said to be nilpotent.
    -   If _T_² = _T_, then _T_ is said to be idempotent
    -   If _T_ = _kI_, where _k_ is some scalar, then _T_ is said to be a scaling transformation or scalar multiplication map; see scalar matrix.


Change of basis

Given a linear map which is an endomorphism whose matrix is _A_, in the basis _B_ of the space it transforms vector coordinates [u] as [v] = _A_[u]. As vectors change with the inverse of _B_ (vectors are contravariant) its inverse transformation is [v] = _B_[v'].

Substituting this in the first expression

_B_[_v_′] = _A__B_[_u_′]

hence

[_v_′] = _B_^( − 1)_A__B_[_u_′] = _A_′[_u_′].

Therefore, the matrix in the new basis is _A′_ = _B_^(−1)_AB_, being _B_ the matrix of the given basis.

Therefore, linear maps are said to be 1-co- 1-contra-variant objects, or type (1, 1) tensors.


Continuity

A _linear transformation_ between topological vector spaces, for example normed spaces, may be continuous. If its domain and codomain are the same, it will then be a continuous linear operator. A linear operator on a normed linear space is continuous if and only if it is bounded, for example, when the domain is finite-dimensional.

1.18 THEOREM ''Let Λ be a linear functional on a topological vector space . Assume Λx ≠ 0 for some x ∈ X. Then each of the following four properties implies the other three: An infinite-dimensional domain may have discontinuous linear operators.

An example of an unbounded, hence discontinuous, linear transformation is differentiation on the space of smooth functions equipped with the supremum norm (a function with small values can have a derivative with large values, while the derivative of 0 is 0). For a specific example, sin(_nx_)/_n_ converges to 0, but its derivative cos(_nx_) does not, so differentiation is not continuous at 0 (and by a variation of this argument, it is not continuous anywhere).


Applications

A specific application of linear maps is for geometric transformations, such as those performed in computer graphics, where the translation, rotation and scaling of 2D or 3D objects is performed by the use of a transformation matrix. Linear mappings also are used as a mechanism for describing change: for example in calculus correspond to derivatives; or in relativity, used as a device to keep track of the local transformations of reference frames.

Another application of these transformations is in compiler optimizations of nested-loop code, and in parallelizing compiler techniques.


See also

-   Antilinear map
-   Bent function
-   Bounded operator


Notes


References

-   -   -   -   -

Category:Abstract algebra Category:Functions and mappings Category:Linear algebra Category:Transformation (function)

[1] Linear transformations of into are often called _linear operators_ on

[2] Let and be two real vector spaces. A mapping a from into Is called a 'linear mapping' or 'linear transformation' or 'linear operator' [...] from into , if
a(u + v) = au + av for all u, v ∈ V,
a(λu) = λau for all u ∈ V and all real .

[3]
Here are some properties of linear mappings Λ : X → Y whose proofs are so easy that we omit them; it is assumed that A ⊂ X and B ⊂ Y:

[4] . Suppose now that and are vector spaces _over the same scalar field_. A mapping Λ : X → Y is said to be _linear_ if Λ(αx + βy) = αΛx + βΛy for all x, y ∈ X and all scalars α and β. Note that one often writes Λx, rather than Λ(x), when Λ is linear.

[5] . A mapping of a vector space into a vector space is said to be a _linear transformation_ if: $A\left(\bf{x}_1 + \bf{x}_2\right) = A\bf{x}_1 + A\bf{x}_2,\  A(c\bf{x}) = cA\bf{x}$ for all $\bf{x}, \bf{x}_1, \bf{x}_2 \in X$ and all scalars . Note that one often writes $A\bf{x}$ instead of $A(\bf {x})$ if is linear.

[6] . Linear mappings of onto its scalar field are called _linear functionals_.

[7]

[8] : "The main question in index theory is to provide index formulas for classes of Fredholm operators ... Index theory has become a subject on its own only after M. F. Atiyah and I. Singer published their index theorems"