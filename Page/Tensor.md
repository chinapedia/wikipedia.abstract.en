in the basis (E₁, E₂, E₃): $\mathbf{T} = \begin{bmatrix}\mathbf{T}^{(\mathbf{e}_1)} \mathbf{T}^{(\mathbf{e}_2)} \mathbf{T}^{(\mathbf{e}_3)} \end{bmatrix},$ or
$\mathbf{T}  = \begin{bmatrix} \sigma_{11} & \sigma_{12} & \sigma_{13} \\ \sigma_{21} & \sigma_{22} & \sigma_{23} \\ \sigma_{31} & \sigma_{32} & \sigma_{33} \end{bmatrix}.$
The columns are the respective stress vectors that act in the center of the cube, regarding to planes orthogonal to E₁, E₂, and E₃. When V is given in this basis, the product of the two tensors, T ⋅ V, performed as matrix multiplication, yields the stress vector T^((V)) in that point, which has its shear part in the plane orthogonal to V.]]

In mathematics, a TENSOR is an algebraic object related to a vector space and its dual space that can be defined in several different ways, often a scalar, tangent vector at a point, a cotangent vector (dual vector) at a point or a multi-linear map from vector spaces to a resulting vector space. Euclidean vectors and scalars (which are often used in elementary physics and engineering applications where general relativity is irrelevant) are the simplest tensors.[1] While tensors are defined independent of any basis, the literature on physics often refers to them by their components in a basis related to a particular coordinate system.

An elementary example of mapping, describable as a tensor, is the dot product, which maps two vectors to a scalar. A more complex example is the Cauchy stress tensor T, which takes a directional unit vector V as input and maps it to the stress vector T^((V)), which is the force (per unit area) exerted by material on the negative side of the plane orthogonal to V against the material on the positive side of the plane, thus expressing a relationship between these two vectors, shown in the figure (right). The cross product, where two vectors are mapped to a third one, is strictly speaking not a tensor, because it changes its sign under those transformations that change the orientation of the coordinate system. The totally anti-symmetric symbol ε_(ijk) nevertheless allows a convenient handling of the cross product in equally oriented three dimensional coordinate systems.

Assuming a basis of a real vector space, e.g., a coordinate frame in the ambient space, a tensor can be represented as an organized multidimensional array of numerical values with respect to this specific basis. Changing the basis transforms the values in the array in a characteristic way that allows to _define_ tensors as objects adhering to this transformational behavior. For example, there are invariants of tensors that must be preserved under any change of the basis, thereby making only certain multidimensional arrays of numbers a tensor. Compare this to the array representing ε_(ijk) not being a tensor, for the sign change under transformations changing the orientation.

Because the components of vectors and their duals transform differently under the change of their dual bases, there is a covariant and/or contravariant transformation law that relates the arrays, which represent the tensor with respect to one basis and that with respect to the other one. The numbers of, respectively, (contravariant indices) and dual (covariant indices) in the input and output of a tensor determine the _type_ (or _valence_) of the tensor, a pair of natural numbers , which determine the precise form of the transformation law. The __ of a tensor is the sum of these two numbers.

The order (also _degree_ or __) of a tensor is thus the sum of the orders of its arguments plus the order of the resulting tensor. This is also the dimensionality of the array of numbers needed to represent the tensor with respect to a specific basis, or equivalently, the number of indices needed to label each component in that array. For example in a fixed basis, a standard linear map that maps a vector to a vector, is represented by a matrix (a 2-dimensional array), and therefore is a 2nd-order tensor. A simple vector can be represented as a 1-dimensional array, and is therefore a 1st-order tensor. Scalars are simple numbers and are thus 0th-order tensors. This way the tensor representing the scalar product, taking two vectors and resulting in a scalar has order 2}}, equal to the stress tensor, taking one vector and returning another 2}}. The mapping two vectors to one vector, would have order 3.}}

The collection of tensors on a vector space and its dual forms a tensor algebra, which allows products of arbitrary tensors. Simple applications of tensors of order , which can be represented as a square matrix, can be solved by clever arrangement of transposed vectors and by applying the rules of matrix multiplication, but the tensor product should not be confused with this.

Tensors are important in physics because they provide a concise mathematical framework for formulating and solving physics problems in areas such as mechanics (stress, elasticity, fluid mechanics, moment of inertia, ...), electrodynamics (electromagnetic tensor, Maxwell tensor, permittivity, magnetic susceptibility, ...), or general relativity (stress–energy tensor, curvature tensor, ... ) and others. In applications, it is common to study situations in which a different tensor can occur at each point of an object; for example the stress within an object may vary from one location to another. This leads to the concept of a tensor field. In some areas, tensor fields are so ubiquitous that they are simply called "tensors".

Tensors were conceived in 1900 by Tullio Levi-Civita and Gregorio Ricci-Curbastro, who continued the earlier work of Bernhard Riemann and Elwin Bruno Christoffel and others, as part of the _absolute differential calculus_. The concept enabled an alternative formulation of the intrinsic differential geometry of a manifold in the form of the Riemann curvature tensor.[2]


Definition

Although seemingly different, the various approaches to defining tensors describe the same geometric concept using different language and at different levels of abstraction.

As multidimensional arrays

A tensor may be represented as a (potentially multidimensional) array (although a multidimensional array is not necessarily a representation of a tensor, as discussed below with regard to holors). Just as a vector in an -dimensional space is represented by a one-dimensional array of length with respect to a given basis, any tensor with respect to a basis is represented by a multidimensional array. For example, a linear operator is represented in a basis as a two-dimensional square array. The numbers in the multidimensional array are known as the _scalar components_ of the tensor or simply its _components_. They are denoted by indices giving their position in the array, as subscripts and superscripts, following the symbolic name of the tensor. For example, the components of an order tensor could be denoted  , where and are indices running from to , or also by . Whether an index is displayed as a superscript or subscript depends on the transformation properties of the tensor, described below. Thus while and can both be expressed as _n_ by _n_ matrices, and are numerically related via index juggling, the difference in their transformation laws indicates it would be improper to add them together. The total number of indices required to identify each component uniquely is equal to the dimension of the array, and is called the _order_, _degree_ or _rank_ of the tensor. However, the term "rank" generally has another meaning in the context of matrices and tensors.

Just as the components of a vector change when we change the basis of the vector space, the components of a tensor also change under such a transformation. Each type of tensor comes equipped with a _transformation law_ that details how the components of the tensor respond to a change of basis. The components of a vector can respond in two distinct ways to a change of basis (see covariance and contravariance of vectors), where the new basis vectors Ê_(i) are expressed in terms of the old basis vectors E_(j) as,

$$\mathbf{\hat{e}}_i = \sum_{j=1}^n \mathbf{e}_j R^j_i = \mathbf{e}_j R^j_i .$$

Here _R_^(''\ j'')_(_i_) are the entries of the change of basis matrix, and in the rightmost expression the summation sign was suppressed: this is the Einstein summation convention, which will be used throughout this article.[3] The components _v_^(_i_) of a column vector V transform with the inverse of the matrix _R_,

_v̂_^(_i_) = (_R_^( − 1))_(_j_)^(_i_)_v_^(_j_),
where the hat denotes the components in the new basis. This is called a _contravariant_ transformation law, because the vector transforms by the _inverse_ of the change of basis. In contrast, the components, _w__(_i_), of a covector (or row vector), W transform with the matrix _R_ itself,

_ŵ__(_i_) = _w__(_j_)_R__(_i_)^(_j_).

This is called a _covariant_ transformation law, because the covector transforms by the _same matrix_ as the change of basis matrix. The components of a more general tensor transform by some combination of covariant and contravariant transformations, with one transformation law for each index. If the transformation matrix of an index is the inverse matrix of the basis transformation, then the index is called _contravariant_ and is conventionally denoted with an upper index (superscript). If the transformation matrix of an index is the basis transformation itself, then the index is called _covariant_ and is denoted with a lower index (subscript).

As a simple example, the matrix of a linear operator with respect to a basis is a rectangular array T that transforms under a change of basis matrix R = (R_(i)^(j)) by T̂ = R^( − 1)TR. For the individual matrix entries, this transformation law has the form T̂_(j′)^(i′) = (R^( − 1))_(i)^(i′)T_(j)^(i)R_(j′)^(j) so the tensor corresponding to the matrix of a linear operator has one covariant and one contravariant index: it is of type (1,1).

Combinations of covariant and contravariant components with the same index allow us to express geometric invariants. For example, the fact that a vector is the same object in different coordinate systems can be captured by the following equations, using the formulas defined above:

V = _v̂_^(_i_) Ê_(_i_) = ((_R_^( − 1))_(_j_)^(_i_)_v_^(_j_))(E_(_k_)_R__(_i_)^(_k_)) = ((_R_^( − 1))_(_j_)^(_i_)_R__(_i_)^(_k_))_v_^(_j_)E_(_k_) = _δ__(_j_)^(_k_)_v_^(_j_)E_(_k_) = _v_^(_k_) E_(_k_) = _v_^(_i_) E_(_i_)
,

where δ_(j)^(k) is the Kronecker delta, which functions similarly to the identity matrix, and has the effect of renaming indices (_j_ into _k_ in this example). This shows several features of the component notation: the ability to re-arrange terms at will (commutativity), the need to use different indices when working with multiple objects in the same expression, the ability to rename indices, and the manner in which contravariant and covariant tensors combine so that all instances of the transformation matrix and its inverse cancel, so that expressions like v^(i) E_(i) can immediately be seen to be geometrically identical in all coordinate systems.

Similarly, a linear operator, viewed as a geometric object, does not actually depend on a basis: it is just a linear map that accepts a vector as an argument and produces another vector. The transformation law for how the matrix of components of a linear operator changes with the basis is consistent with the transformation law for a contravariant vector, so that the action of a linear operator on a contravariant vector is represented in coordinates as the matrix product of their respective coordinate representations. That is, the components (Tv)^(i) are given by (Tv)^(i) = T_(j)^(i)v^(j). These components transform contravariantly, since

$$\left(\widehat{Tv}\right)^{i'} = \hat{T}^{i'}_{j'} \hat{v}^{j'} = \left[ \left(R^{-1}\right)^{i'}_i T^i_j R^j_{j'} \right] \left[ \left(R^{-1}\right)^{j'}_j v^j \right] = \left(R^{-1}\right)^{i'}_i (Tv)^i .$$

The transformation law for an order tensor with _p_ contravariant indices and _q_ covariant indices is thus given as,

_T̂__(_j_′₁, …, _j_′_(_q_))^(_i_′₁, …, _i_′_(_p_)) = (_R_^( − 1))_(_i_₁)^(_i_′₁)⋯(_R_^( − 1))_(_i__(_p_))^(_i_′_(_p_))
T_(j₁, …, j_(q))^(i₁, …, i_(p)) R_(j′₁)^(j₁)⋯R_(j′_(q))^(j_(q)).

Here the primed indices denote components in the new coordinates, and the unprimed indices denote the components in the old coordinates. Such a tensor is said to be of order or _type_ . The terms "order", "type", "rank", "valence", and "degree" are all sometimes used for the same concept. Here, the term "order" or "total order" will be used for the total dimension of the array (or its generalisation in other definitions), in the preceding example, and the term "type" for the pair giving the number of contravariant and covariant indices. A tensor of type is also called a -tensor for short.

This discussion motivates the following formal definition:[4][5]

[\mathbf{f}] to each basis (E₁, ..., E_(_n_))}} of an _n_-dimensional vector space such that, if we apply the change of basis

F ↦ F ⋅ _R_ = (E_(_i_)_R_₁^(_i_),…,E_(_i_)_R__(_n_)^(_i_))
then the multidimensional array obeys the transformation law

_T__(_j_′₁…_j_′_(_q_))^(_i_′₁…_i_′_(_p_))[F ⋅ _R_] = (_R_^( − 1))_(_i_₁)^(_i_′₁)⋯(_R_^( − 1))_(_i__(_p_))^(_i_′_(_p_))
T_(j₁, …, j_(q))^(i₁, …, i_(p))[F] R_(j′₁)^(j₁)⋯R_(j′_(q))^(j_(q)). }}

The definition of a tensor as a multidimensional array satisfying a transformation law traces back to the work of Ricci.[6]

An equivalent definition of a tensor uses the representations of the general linear group. There is an action of the general linear group on the set of all ordered bases of an _n_-dimensional vector space. If F = (F₁, …, F_(n)) is an ordered basis, and R = (R_(j)^(i)) is an invertible n × n matrix, then the action is given by

F_R_ = (F_(_i_)_R_₁^(_i_), …, F_(_i_)_R__(_n_)^(_i_)).
Let _F_ be the set of all ordered bases. Then _F_ is a principal homogeneous space for GL(_n_). Let _W_ be a vector space and let ρ be a representation of GL(_n_) on _W_ (that is, a group homomorphism ρ : GL(n) → GL(W)). Then a tensor of type ρ is an equivariant map T : F → W. Equivariance here means that

_T_(_F__R_) = _ρ_(_R_^( − 1))_T_(_F_).

When ρ is a tensor representation of the general linear group, this gives the usual definition of tensors as multidimensional arrays. This definition is often used to describe tensors on manifolds,[7] and readily generalizes to other groups.[8]

As multilinear maps

A downside to the definition of a tensor using the multidimensional array approach is that it is not apparent from the definition that the defined object is indeed basis independent, as is expected from an intrinsically geometric object. Although it is possible to show that transformation laws indeed ensure independence from the basis, sometimes a more intrinsic definition is preferred. One approach that is common in differential geometry is to define tensors relative to a fixed (finite-dimensional) vector space _V_, which is usually taken to be a particular vector space of some geometrical significance like the tangent space to a manifold.[9] In this approach, a type tensor _T_ is defined as a multilinear map,

$$T: \underbrace{ V^* \times\dots\times V^*}_{p \text{ copies}} \times \underbrace{ V \times\dots\times V}_{q \text{ copies}} \rightarrow \mathbf{R},$$
where _V_^(∗) is the corresponding dual space of covectors, which is linear in each of its arguments. The above assumes _V_ is a vector space over the real numbers, ℝ. More generally, _V_ can be taken over an arbitrary field of numbers, _F_ (e.g. the complex numbers) with a one-dimensional vector space over _F_ replacing ℝ as the codomain of the multilinear maps.

By applying a multilinear map _T_ of type to a basis {E_(_j_)} for _V_ and a canonical cobasis {Ε^(_i_)} for _V_^(∗),

_T__(_j_₁…_j__(_q_))^(_i_₁…_i__(_p_)) ≡ _T_(Ε^(_i_₁),…,Ε^(_i__(_p_)),E_(_j_₁),…,E_(_j__(_q_))),
a -dimensional array of components can be obtained. A different choice of basis will yield different components. But, because _T_ is linear in all of its arguments, the components satisfy the tensor transformation law used in the multilinear array definition. The multidimensional array of components of _T_ thus form a tensor according to that definition. Moreover, such an array can be realized as the components of some multilinear map _T_. This motivates viewing multilinear maps as the intrinsic objects underlying tensors.

In viewing a tensor as a multilinear map, it is conventional to identify the double dual _V_^(∗∗) of the vector space _V_, i.e., the space of linear functionals on the dual vector space _V_^(∗), with the vector space _V_. There is always a natural linear map from _V_ to its double dual, given by evaluating a linear form in _V_^(∗) against a vector in _V_. This linear mapping is an isomorphism in finite dimensions, and it is often then expedient to identify _V_ with its double dual.

Using tensor products

For some mathematical applications, a more abstract approach is sometimes useful. This can be achieved by defining tensors in terms of elements of tensor products of vector spaces, which in turn are defined through a universal property. A type tensor is defined in this context as an element of the tensor product of vector spaces,[10][11]

$$T\in \underbrace{V \otimes\dots\otimes V}_{p\text{ copies}} \otimes \underbrace{V^* \otimes\dots\otimes V^*}_{q \text{ copies}}.$$

A basis of and basis of naturally induce a basis of the tensor product . The components of a tensor are the coefficients of the tensor with respect to the basis obtained from a basis for and its dual basis , i.e.

_T_ = _T__(_j_₁…_j__(_q_))^(_i_₁…_i__(_p_)) E_(_i_₁) ⊗ ⋯ ⊗ E_(_i__(_p_)) ⊗ Ε^(_j_₁) ⊗ ⋯ ⊗ Ε^(_j__(_q_)).
Using the properties of the tensor product, it can be shown that these components satisfy the transformation law for a type tensor. Moreover, the universal property of the tensor product gives a [[bijection|{\partial x^{i_1}}

 \cdots
 \frac{\partial \bar{x}^{i'_p}}{\partial x^{i_p}}
 \frac{\partial x^{j_1}}{\partial \bar{x}^{j'_1}}
 \cdots
 \frac{\partial x^{j_q}}{\partial \bar{x}^{j'_q}}
 T^{i_1\dots i_p}_{j_1\dots j_q}\left(x^1, \ldots, x^n\right).


Examples

This table shows important examples of tensors on vector spaces and tensor fields on manifolds. The tensors are classified according to their type , where _n_ is the number of contravariant indices, _m_ is the number of covariant indices, and gives the total order of the tensor. For example, a bilinear form is the same thing as a -tensor; an inner product is an example of a -tensor, but not all -tensors are inner products. In the -entry of the table, _M_ denotes the dimensionality of the underlying vector space or manifold because for each dimension of the space, a separate index is needed to select that dimension to get a maximally covariant antisymmetric tensor.

    {| class = "wikitable"

|- ! colspan=2 rowspan=2 width="75px" | ! colspan=7 | _m_ |- ! scope="col" width="175px" | 0 ! scope="col" width="175px" | 1 ! scope="col" width="175px" | 2 ! scope="col" width="175px" | 3 ! scope="col" width="75px" | ⋯ ! scope="col" width="175px" | _M_ ! scope="col" width="75px" | ⋯ |- ! rowspan=6 | _n_ ! scope="row" | 0 | Scalar, e.g. scalar curvature | Covector, linear functional, 1-form, e.g. dipole moment, gradient of a scalar field | Bilinear form, e.g. inner product, quadrupole moment, metric tensor, Ricci curvature, 2-form, symplectic form | 3-form E.g. octupole moment | | E.g. _M_-form i.e. volume form | |- ! scope="row" | 1 | Euclidean vector | Linear transformation,[12] Kronecker delta | E.g. cross product in three dimensions | E.g. Riemann curvature tensor | | | |- ! scope="row" | 2 | Inverse metric tensor, bivector, e.g., Poisson structure | | E.g. elasticity tensor | | | | |- ! scope="row" | ⋮ | | | | | | | |- ! scope="row" | _N_ |Multivector | | | | | | |- ! scope="row" | ⋮ | | | | | | | |}

Raising an index on an -tensor produces an -tensor; this corresponds to moving diagonally down and to the left on the table. Symmetrically, lowering an index corresponds to moving diagonally up and to the right on the table. Contraction of an upper with a lower index of an -tensor produces an -tensor; this corresponds to moving diagonally up and to the left on the table.

 


Notation

There are several notational systems that are used to describe tensors and perform calculations involving them.

Ricci calculus

Ricci calculus is the modern formalism and notation for tensor indices: indicating inner and outer products, covariance and contravariance, summations of tensor components, symmetry and antisymmetry, and partial and covariant derivatives.

Einstein summation convention

The Einstein summation convention dispenses with writing summation signs, leaving the summation implicit. Any repeated index symbol is summed over: if the index is used twice in a given term of a tensor expression, it means that the term is to be summed for all . Several distinct pairs of indices may be summed this way.

Penrose graphical notation

Penrose graphical notation is a diagrammatic notation which replaces the symbols for tensors with shapes, and their indices by lines and curves. It is independent of basis elements, and requires no symbols for the indices.

Abstract index notation

The abstract index notation is a way to write tensors such that the indices are no longer thought of as numerical, but rather are indeterminates. This notation captures the expressiveness of indices and the basis-independence of index-free notation.

Component-free notation

A component-free treatment of tensors uses notation that emphasises that tensors do not rely on any basis, and is defined in terms of the tensor product of vector spaces.


Operations

There are several operations on tensors that again produce a tensor. The linear nature of tensor implies that two tensors of the same type may be added together, and that tensors may be multiplied by a scalar with results analogous to the scaling of a vector. On components, these operations are simply performed component-wise. These operations do not change the type of the tensor; but there are also operations that produce a tensor of different type.

Tensor product

The tensor product takes two tensors, _S_ and _T_, and produces a new tensor, , whose order is the sum of the orders of the original tensors. When described as multilinear maps, the tensor product simply multiplies the two tensors, i.e.

(_S_ ⊗ _T_)(_v_₁, …, _v__(_n_), _v__(_n_ + 1), …, _v__(_n_ + _m_)) = _S_(_v_₁, …, _v__(_n_))_T_(_v__(_n_ + 1), …, _v__(_n_ + _m_)),

which again produces a map that is linear in all its arguments. On components, the effect is to multiply the components of the two input tensors pairwise, i.e.

(_S_ ⊗ _T_)_(_j_₁…_j__(_k_)_j__(_k_ + 1)…_j__(_k_ + _m_))^(_i_₁…_i__(_l_)_i__(_l_ + 1)…_i__(_l_ + _n_)) = _S__(_j_₁…_j__(_k_))^(_i_₁…_i__(_l_))_T__(_j__(_k_ + 1)…_j__(_k_ + _m_))^(_i__(_l_ + 1)…_i__(_l_ + _n_)),

If is of type and is of type , then the tensor product has type .

Contraction

Tensor contraction is an operation that reduces a type tensor to a type tensor, of which the trace is a special case. It thereby reduces the total order of a tensor by two. The operation is achieved by summing components for which one specified contravariant index is the same as one specified covariant index to produce a new component. Components for which those two indices are different are discarded. For example, a -tensor T_(i)^(j) can be contracted to a scalar through

_T__(_i_)^(_i_)
. Where the summation is again implied. When the -tensor is interpreted as a linear map, this operation is known as the trace.

The contraction is often used in conjunction with the tensor product to contract an index from each tensor.

The contraction can also be understood using the definition of a tensor as an element of a tensor product of copies of the space _V_ with the space _V_^(∗) by first decomposing the tensor into a linear combination of simple tensors, and then applying a factor from _V_^(∗) to a factor from _V_. For example, a tensor

_T_ ∈ _V_ ⊗ _V_ ⊗ _V_^(*)
can be written as a linear combination

_T_ = _v_₁ ⊗ _w_₁ ⊗ _α_₁ + _v_₂ ⊗ _w_₂ ⊗ _α_₂ + ⋯ + _v__(_N_) ⊗ _w__(_N_) ⊗ _α__(_N_).
The contraction of _T_ on the first and last slots is then the vector

_α_₁(_v_₁)_w_₁ + _α_₂(_v_₂)_w_₂ + ⋯ + _α__(_N_)(_v__(_N_))_w__(_N_).

In a vector space with an inner product (also known as a metric) _g_, the term contraction is used for removing two contravariant or two covariant indices by forming a trace with the metric tensor or its inverse. For example, a -tensor T^(ij) can be contracted to a scalar through

_T_^(_i__j_)_g__(_i__j_)
(yet again assuming the summation convention).

Raising or lowering an index

When a vector space is equipped with a nondegenerate bilinear form (or _metric tensor_ as it is often called in this context), operations can be defined that convert a contravariant (upper) index into a covariant (lower) index and vice versa. A metric tensor is a (symmetric) (-tensor; it is thus possible to contract an upper index of a tensor with one of the lower indices of the metric tensor in the product. This produces a new tensor with the same index structure as the previous tensor, but with lower index generally shown in the same position of the contracted upper index. This operation is quite graphically known as _lowering an index_.

Conversely, the inverse operation can be defined, and is called _raising an index_. This is equivalent to a similar contraction on the product with a -tensor. This _inverse metric tensor_ has components that are the matrix inverse of those of the metric tensor.


Applications

Continuum mechanics

Important examples are provided by continuum mechanics. The stresses inside a solid body or fluid are described by a tensor field. The stress tensor and strain tensor are both second-order tensor fields, and are related in a general linear elastic material by a fourth-order elasticity tensor field. In detail, the tensor quantifying stress in a 3-dimensional solid object has components that can be conveniently represented as a 3 × 3 array. The three faces of a cube-shaped infinitesimal volume segment of the solid are each subject to some given force. The force's vector components are also three in number. Thus, 3 × 3, or 9 components are required to describe the stress at this cube-shaped infinitesimal segment. Within the bounds of this solid is a whole mass of varying stress quantities, each requiring 9 quantities to describe. Thus, a second-order tensor is needed.

If a particular surface element inside the material is singled out, the material on one side of the surface will apply a force on the other side. In general, this force will not be orthogonal to the surface, but it will depend on the orientation of the surface in a linear manner. This is described by a tensor of type {{nowrap, in linear elasticity, or more precisely by a tensor field of type , since the stresses may vary from point to point.

Other examples from physics

Common applications include:

-   Electromagnetic tensor (or Faraday tensor) in electromagnetism
-   Finite deformation tensors for describing deformations and strain tensor for strain in continuum mechanics
-   Permittivity and electric susceptibility are tensors in anisotropic media
-   Four-tensors in general relativity (e.g. stress–energy tensor), used to represent momentum fluxes
-   Spherical tensor operators are the eigenfunctions of the quantum angular momentum operator in spherical coordinates
-   Diffusion tensors, the basis of diffusion tensor imaging, represent rates of diffusion in biological environments
-   Quantum mechanics and quantum computing utilize tensor products for combination of quantum states

Applications of tensors of order > 2

The concept of a tensor of order two is often conflated with that of a matrix. Tensors of higher order do however capture ideas important in science and engineering, as has been shown successively in numerous areas as they develop. This happens, for instance, in the field of computer vision, with the trifocal tensor generalizing the fundamental matrix.

The field of nonlinear optics studies the changes to material polarization density under extreme electric fields. The polarization waves generated are related to the generating electric fields through the nonlinear susceptibility tensor. If the polarization P is not linearly proportional to the electric field E, the medium is termed _nonlinear_. To a good approximation (for sufficiently weak fields, assuming no permanent dipole moments are present), P is given by a Taylor series in E whose coefficients are the nonlinear susceptibilities:

$$\frac{P_i}{\varepsilon_0} = \sum_j  \chi^{(1)}_{ij} E_j  +  \sum_{jk} \chi_{ijk}^{(2)} E_j E_k + \sum_{jk\ell} \chi_{ijk\ell}^{(3)} E_j E_k E_\ell  + \cdots. \!$$

Here χ⁽¹⁾ is the linear susceptibility, χ⁽²⁾ gives the Pockels effect and second harmonic generation, and χ⁽³⁾ gives the Kerr effect. This expansion shows the way higher-order tensors arise naturally in the subject matter.


Generalizations

Holors

As discussed above, a tensor can be represented as a (potentially multidimensional, multi-indexed) array of quantities. To distinguish tensors (when denoted as tensorial arrays of quantities with respect to a fixed basis) from arbitrary arrays of quantities the term _holor_ was coined for the latter.[13]

So tensors can be analyzed as a particular type of holor, alongside other not strictly tensorial holors, such as neural network (node and/or link) values, indexed inventory tables, and so on. Another group of holors that transform like tensors up to a so called _weight_, derived from the transformation equations, are the tensor densities, e.g. the Levi-Civita Symbol. The Christoffel symbols also belong to the holors.

The term _holor_ is not in widespread use, and unfortunately the word "tensor" is often misused when referring to the multidimensional array representation of a holor, causing confusion regarding the strict meaning of _tensor_.

The concept of holors and the associated terminology provide an algebra and calculus for holors in a more general setting than what is seen for tensorial arrays.

Tensor products of vector spaces

The vector spaces of a tensor product need not be the same, and sometimes the elements of such a more general tensor product are called "tensors". For example, an element of the tensor product space is a second-order "tensor" in this more general sense,[14] and an order- tensor may likewise be defined as an element of a tensor product of different vector spaces.[15] A type tensor, in the sense defined previously, is also a tensor of order in this more general sense. The concept of tensor product can be extended to arbitrary modules over a ring.

Tensors in infinite dimensions

The notion of a tensor can be generalized in a variety of ways to infinite dimensions. One, for instance, is via the tensor product of Hilbert spaces.[16] Another way of generalizing the idea of tensor, common in nonlinear analysis, is via the multilinear maps definition where instead of using finite-dimensional vector spaces and their algebraic duals, one uses infinite-dimensional Banach spaces and their continuous dual.[17] Tensors thus live naturally on Banach manifolds[18] and Fréchet manifolds.

Tensor densities

Suppose that a homogeneous medium fills , so that the density of the medium is described by a single scalar value in . The mass, in kg, of a region is obtained by multiplying by the volume of the region , or equivalently integrating the constant over the region:

_m_ = ∫_(_Ω_)_ρ_ _d__x_ _d__y_ _d__z_
where the Cartesian coordinates are measured in m. If the units of length are changed into cm, then the numerical values of the coordinate functions must be rescaled by a factor of 100:

_x_′ = 100_x_, _y_′ = 100_y_, _z_′ = 100_z_
The numerical value of the density must then also transform by 100^( − 3)m³/cm³ to compensate, so that the numerical value of the mass in kg is still given by integral of ρ dx dy dz. Thus ρ′ = 100^( − 3)ρ (in units of ).

More generally, if the Cartesian coordinates undergo a linear transformation, then the numerical value of the density must change by a factor of the reciprocal of the absolute value of the determinant of the coordinate transformation, so that the integral remains invariant, by the change of variables formula for integration. Such a quantity that scales by the reciprocal of the absolute value of the determinant of the coordinate transition map is called a scalar density. To model a non-constant density, is a function of the variables (a scalar field), and under a curvilinear change of coordinates, it transforms by the reciprocal of the Jacobian of the coordinate change. For more on the intrinsic meaning, see Density on a manifold.

A tensor density transforms like a tensor under a coordinate change, except that it in addition picks up a factor of the absolute value of the determinant of the coordinate transition:[19]

_T__(_j_′₁…_j_′_(_q_))^(_i_′₁…_i_′_(_p_))[F ⋅ _R_] = |det _R_|^( − _w_)(_R_^( − 1))_(_i_₁)^(_i_′₁)⋯(_R_^( − 1))_(_i__(_p_))^(_i_′_(_p_))
T_(j₁, …, j_(q))^(i₁, …, i_(p))[F] R_(j′₁)^(j₁)⋯R_(j′_(q))^(j_(q)). Here _w_ is called the weight. In general, any tensor multiplied by a power of this function or its absolute value is called a tensor density, or a weighted tensor.[20] An example of a tensor density is the current density of electromagnetism.

Under an affine transformation of the coordinates, a tensor transforms by the linear part of the transformation itself (or its inverse) on each index. These come from the rational representations of the general linear group. But this is not quite the most general linear transformation law that such an object may have: tensor densities are non-rational, but are still semisimple representations. A further class of transformations come from the logarithmic representation of the general linear group, a reducible but not semisimple representation,[21] consisting of an with the transformation law

(_x_, _y_) ↦ (_x_ + _y_log |det _R_|,_y_).

Geometric objects

The transformation law for a tensor behaves as a functor on the category of admissible coordinate systems, under general linear transformations (or, other transformations within some class, such as local diffeomorphisms.) This makes a tensor a special case of a geometrical object, in the technical sense that it is a function of the coordinate system transforming functorially under coordinate changes.[22] Examples of objects obeying more general kinds of transformation laws are jets and, more generally still, natural bundles.[23][24]

Spinors

When changing from one orthonormal basis (called a _frame_) to another by a rotation, the components of a tensor transform by that same rotation. This transformation does not depend on the path taken through the space of frames. However, the space of frames is not simply connected (see orientation entanglement and plate trick): there are continuous paths in the space of frames with the same beginning and ending configurations that are not deformable one into the other. It is possible to attach an additional discrete invariant to each frame that incorporates this path dependence, and which turns out (locally) to have values of ±1.[25] A spinor is an object that transforms like a tensor under rotations in the frame, apart from a possible sign that is determined by the value of this discrete invariant.[26][27]

Succinctly, spinors are elements of the spin representation of the rotation group, while tensors are elements of its tensor representations. Other classical groups have tensor representations, and so also tensors that are compatible with the group, but all non-compact classical groups have infinite-dimensional unitary representations as well.


History

The concepts of later tensor analysis arose from the work of Carl Friedrich Gauss in differential geometry, and the formulation was much influenced by the theory of algebraic forms and invariants developed during the middle of the nineteenth century.[28] The word "tensor" itself was introduced in 1846 by William Rowan Hamilton[29] to describe something different from what is now meant by a tensor.[30] The contemporary usage was introduced by Woldemar Voigt in 1898.[31]

Tensor calculus was developed around 1890 by Gregorio Ricci-Curbastro under the title _absolute differential calculus_, and originally presented by Ricci in 1892.[32] It was made accessible to many mathematicians by the publication of Ricci and Tullio Levi-Civita's 1900 classic text _Méthodes de calcul différentiel absolu et leurs applications_ (Methods of absolute differential calculus and their applications).

In the 20th century, the subject came to be known as _tensor analysis_, and achieved broader acceptance with the introduction of Einstein's theory of general relativity, around 1915. General relativity is formulated completely in the language of tensors. Einstein had learned about them, with great difficulty, from the geometer Marcel Grossmann.[33] Levi-Civita then initiated a correspondence with Einstein to correct mistakes Einstein had made in his use of tensor analysis. The correspondence lasted 1915–17, and was characterized by mutual respect:

Tensors were also found to be useful in other fields such as continuum mechanics. Some well-known examples of tensors in differential geometry are quadratic forms such as metric tensors, and the Riemann curvature tensor. The exterior algebra of Hermann Grassmann, from the middle of the nineteenth century, is itself a tensor theory, and highly geometric, but it was some time before it was seen, with the theory of differential forms, as naturally unified with tensor calculus. The work of Élie Cartan made differential forms one of the basic kinds of tensors used in mathematics.

From about the 1920s onwards, it was realised that tensors play a basic role in algebraic topology (for example in the Künneth theorem).[34] Correspondingly there are types of tensors at work in many branches of abstract algebra, particularly in homological algebra and representation theory. Multilinear algebra can be developed in greater generality than for scalars coming from a field. For example, scalars can come from a ring. But the theory is then less geometric and computations more technical and less algorithmic.[35] Tensors are generalized within category theory by means of the concept of monoidal category, from the 1960s.[36]


See also

-

Foundational

-   Cartesian tensor
-   Fibre bundle
-   Glossary of tensor theory
-   Multilinear projection
-   One-form
-   Tensor product of modules

Applications

-   Application of tensor theory in engineering
-   Continuum mechanics
-   Covariant derivative
-   Curvature
-   Diffusion tensor MRI
-   Einstein field equations
-   Fluid mechanics
-   Gravity
-   Multilinear subspace learning
-   Riemannian geometry
-   Structure tensor
-   Tensor decomposition
-   Tensor derivative
-   Tensor software


Notes


References

Specific

General

-   -   -   -

-   -   -   -   Chapter six gives a "from scratch" introduction to covariant tensors.

-   -   -   -

-


External links

-   -   Introduction to Vectors and Tensors, Vol 1: Linear and Multilinear Algebra by Ray M. Bowen and C. C. Wang.
-   Introduction to Vectors and Tensors, Vol 2: Vector and Tensor Analysis by Ray M. Bowen and C. C. Wang.
-   An Introduction to Tensors for Students of Physics and Engineering by Joseph C. Kolecki, Glenn Research Center, Cleveland, Ohio, released by NASA
-   Foundations of Tensor Analysis for Students of Physics and Engineering With an Introduction to the Theory of Relativity by Joseph C. Kolecki, Glenn Research Center, Cleveland, Ohio, released by NASA
-   A discussion of the various approaches to teaching tensors, and recommendations of textbooks
-   Introduction to tensors an original approach by S Poirier
-   A Quick Introduction to Tensor Analysis by R. A. Sharipov.
-   Richard P. Feynman's Lecture on tensors.

Category:Concepts in physics Tensors

[1]

[2]

[3] The Einstein summation convention, in brief, requires the sum to be taken over all values of the index whenever the same symbol appears as a subscript and superscript in the same term. For example, under this convention B_(i)C^(i) = B₁C¹ + B₂C² + ⋯B_(n)C^(n)

[4]

[5]

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

[18]

[19] , §II.8: Densities.

[20]

[21]

[22] Haantjes, J., & Laman, G. (1953). On the definition of geometric objects. I.

[23] .

[24] .

[25]

[26]

[27]

[28]

[29]  From p. 498: "And if we agree to call the _square root_ (taken with a suitable sign) of this scalar product of two conjugate polynomes, P and KP, the common TENSOR of each, … "

[30] Namely, the norm operation in a certain type of algebraic system (now known as a Clifford algebra).

[31]

[32]

[33]

[34]

[35]

[36]