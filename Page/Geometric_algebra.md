The GEOMETRIC ALGEBRA (GA) of a vector space is an algebra over a field, noted for its multiplication operation called the GEOMETRIC PRODUCT on a space of elements called multivectors, which is a superset of both the scalars F and the vector space V. Mathematically, a geometric algebra may be defined as the Clifford algebra of a vector space with a quadratic form. Clifford's contribution was to define a new product, the geometric product, that united the Grassmann and Hamilton algebras into a single structure. Adding the dual of the Grassmann exterior product (the "meet") allows the use of the Grassmann–Cayley algebra, and a conformal version of the latter together with a conformal Clifford algebra yields a conformal geometric algebra (CGA) providing a framework for classical geometries. In practice, these and several derived operations allow a correspondence of elements, subspaces and operations of the algebra with geometric interpretations.

The scalars and vectors have their usual interpretation, and make up distinct subspaces of a GA. Bivectors provide a more natural representation of pseudovector quantities in vector algebra such as oriented area, oriented angle of rotation, torque, angular momentum, electromagnetic field and the Poynting vector. A trivector can represent an oriented volume, and so on. An element called a blade may be used to represent a subspace of V and orthogonal projections onto that subspace. Rotations and reflections are represented as elements. Unlike vector algebra, a GA naturally accommodates any number of dimensions and any quadratic form such as in relativity.

Specific examples of geometric algebras applied in physics include the spacetime algebra (or the less common alternative formulation, the algebra of physical space) and the conformal geometric algebra. Geometric calculus, an extension of GA that incorporates differentiation and integration, can be used to formulate other theories such as complex analysis, differential geometry, e.g. by using the Clifford algebra instead of differential forms. Geometric algebra has been advocated, most notably by David Hestenes and Chris Doran, as the preferred mathematical framework for physics. Proponents claim that it provides compact and intuitive descriptions in many areas including classical and quantum mechanics, electromagnetic theory and relativity. GA has also found use as a computational tool in computer graphics and robotics.

The geometric product was first briefly mentioned by Hermann Grassmann, who was chiefly interested in developing the closely related exterior algebra. In 1878, William Kingdon Clifford greatly expanded on Grassmann's work to form what are now usually called Clifford algebras in his honor (although Clifford himself chose to call them "geometric algebras"). For several decades, geometric algebras went somewhat ignored, greatly eclipsed by the vector calculus then newly developed to describe electromagnetism. The term "geometric algebra" was repopularized in the 1960s by Hestenes, who advocated its importance to relativistic physics.


Definition and notation

There are a number of different ways to define a geometric algebra. Hestenes's original approach was axiomatic, "full of geometric significance" and equivalent to the universal Clifford algebra. Given a finite-dimensional quadratic space V over a field F with a symmetric bilinear form (the _inner product_, e.g. the Euclidean or Lorentzian metric) g : V × V → F, the GEOMETRIC ALGEBRA for this quadratic space is the Clifford algebra Cl (V, g). As usual in this domain, for the remainder of this article, only the real case, F = R, will be considered. The notation 𝒢(p, q) (respectively 𝒢(p, q, r)) will be used to denote a geometric algebra for which the bilinear form g has the signature (p, q) (respectively (p, q, r)).

The essential product in the algebra is called the _geometric product_, and the product in the contained exterior algebra is called the _exterior product_ (frequently called the _outer product_ and less often the _wedge product_). It is standard to denote these respectively by juxtaposition (i.e., suppressing any explicit multiplication symbol) and the symbol ∧. The above definition of the geometric algebra is abstract, so we summarize the properties of the geometric product by the following set of axioms. The geometric product has the following properties, for A, B, C ∈ 𝒢(p, q):

_A__B_ ∈ 𝒢(_p_, _q_)
(closure)

1_A_ = _A_1 = _A_
, where 1 is the identity element (existence of an identity element)

_A_(_B__C_) = (_A__B_)_C_
(associativity)

_A_(_B_ + _C_) = _A__B_ + _A__C_
and (B + C)A = BA + CA (distributivity)

_a_² = _g_(_a_, _a_)1
, where a is any element of the subspace V of the algebra.

The exterior product has the same properties, except that the last property above is replaced by a ∧ a = 0 for a ∈ V.

Note that in the last property above, the real number g(a, a) need not be nonnegative if g is not positive-definite. An important property of the geometric product is the existence of elements having a multiplicative inverse. If a² ≠ 0 for some vector a, then a^( − 1) exists and is equal to g(a, a)^( − 1)a. A nonzero element of the algebra does not necessarily have a multiplicative inverse. For example, if u is a vector in V such that u² = 1, the element $\textstyle\frac{1}{2}(1 + u)$ is both a nontrivial idempotent element and a nonzero zero divisor, and thus has no inverse.

It is usual to identify 1 ∈ R with 1 ∈ 𝒢(p, q), with associated natural embeddings R → 𝒢(p, q) and V → 𝒢(p, q). In this article, this identification is assumed. Throughout, the term _vector_ refers to an element of V (and its image under this embedding).

The geometric product

For vectors a and b, we may write the geometric product of any two vectors a and b as the sum of a symmetric product and an antisymmetric product:

$$ab=\frac{1}{2}(ab+ba)+\frac{1}{2}(ab-ba)$$

Thus we can define the _inner product_ of vectors as

_a_ ⋅ _b_ := _g_(_a_, _b_),

so that the symmetric product can be written as

$$\frac{1}{2}(ab + ba) = \frac{1}{2}\left((a + b)^2 - a^2 - b^2\right) = a \cdot b$$

Conversely, g is completely determined by the algebra. The antisymmetric part is the exterior product of the two vectors, the product of the contained exterior algebra:

$$a \wedge b := \frac{1}{2}(ab - ba) = -(b \wedge a)$$

Then by simple addition:

_a__b_ = _a_ ⋅ _b_ + _a_ ∧ _b_
the ungeneralized or vector form of the geometric product.

The inner and exterior products are associated with familiar concepts from standard vector algebra. Geometrically, a and b are parallel if their geometric product is equal to their inner product, whereas a and b are perpendicular if their geometric product is equal to their exterior product. In a geometric algebra for which the square of any nonzero vector is positive, the inner product of two vectors can be identified with the dot product of standard vector algebra. The exterior product of two vectors can be identified with the signed area enclosed by a parallelogram the sides of which are the vectors. The cross product of two vectors in 3 dimensions with positive-definite quadratic form is closely related to their exterior product.

Most instances of geometric algebras of interest have a nondegenerate quadratic form. If the quadratic form is fully degenerate, the inner product of any two vectors is always zero, and the geometric algebra is then simply an exterior algebra. Unless otherwise stated, this article will treat only nondegenerate geometric algebras.

The exterior product is naturally extended as an associative bilinear binary operator between any two elements of the algebra, satisfying the identities

$$\begin{align}
                          1 \wedge a_i &= a_i \wedge 1 = a_i \\
  a_1 \wedge a_2\wedge\cdots\wedge a_r &= \frac{1}{r!}\sum_{\sigma\in\mathfrak{S}_r} \operatorname{sgn}(\sigma) a_{\sigma(1)}a_{\sigma(2)} \cdots a_{\sigma(r)},
\end{align}$$

where the sum is over all permutations of the indices, with sgn (σ) the sign of the permutation, and a_(i) are vectors (not general elements of the algebra). Since every element of the algebra can be expressed as the sum of products of this form, this defines the exterior product for every pair of elements of the algebra. It follows from the definition that the exterior product forms an alternating algebra.

Blades, grades, and canonical basis

A multivector that is the exterior product of r linearly independent vectors is called a _blade_, and the blade is said to be a multivector of grade r. From the axioms, with closure, every multivector of the geometric algebra is a sum of blades.

Consider a set of r linearly independent vectors {a₁, …, a_(r)} spanning an r-dimensional subspace of the vector space. With these, we can define a real symmetric matrix (in the same way as a Gramian matrix)

[A]_(_i__j_) = _a__(_i_) ⋅ _a__(_j_)

By the spectral theorem, A can be diagonalized to diagonal matrix D by an orthogonal matrix O via

∑_(_k_, _l_)[O]_(_i__k_)[A]_(_k__l_)[O^(_T_)]_(_l__j_) = ∑_(_k_, _l_)[O]_(_i__k_)[O]_(_j__l_)[A]_(_k__l_) = [D]_(_i__j_)

Define a new set of vectors {e₁, …, e_(r)}, known as orthogonal basis vectors, to be those transformed by the orthogonal matrix:

_e__(_i_) = ∑_(_j_)[O]_(_i__j_)_a__(_j_)

Since orthogonal transformations preserve inner products, it follows that e_(i) ⋅ e_(j) = [D]_(ij) and thus the {e₁, …, e_(r)} are perpendicular. In other words, the geometric product of two distinct vectors e_(i) ≠ e_(j) is completely specified by their exterior product, or more generally

$$\begin{array}{rl}e_1e_2\cdots e_r &= e_1 \wedge e_2 \wedge \cdots \wedge e_r \\
&= \left(\sum_j [\mathbf{O}]_{1j}a_j\right) \wedge \left(\sum_j [\mathbf{O}]_{2j}a_j \right) \wedge \cdots \wedge \left(\sum_j [\mathbf{O}]_{rj}a_j\right) \\
&= \det [\mathbf{O}] a_1 \wedge a_2 \wedge \cdots \wedge a_r \end{array}$$

Therefore, every blade of grade r can be written as a geometric product of r vectors. More generally, if a degenerate geometric algebra is allowed, then the orthogonal matrix is replaced by a block matrix that is orthogonal in the nondegenerate block, and the diagonal matrix has zero-valued entries along the degenerate dimensions. If the new vectors of the nondegenerate subspace are normalized according to

$$\hat{e}_i=\frac{1}{\sqrt{|e_i \cdot e_i|}}e_i,$$

then these normalized vectors must square to  + 1 or  − 1. By Sylvester's law of inertia, the total number of  + 1s and the total number of  − 1s along the diagonal matrix is invariant. By extension, the total number p of these vectors that square to  + 1 and the total number q that square to  − 1 is invariant. (The total number of basis vectors that square to zero is also invariant, and may be nonzero if the degenerate case is allowed.) We denote this algebra 𝒢(p, q). For example, 𝒢(3, 0) models 3-dimensional Euclidean space, 𝒢(1, 3) relativistic spacetime and 𝒢(4, 1) a conformal geometric algebra of a 3-dimensional space.

The set of all possible products of n orthogonal basis vectors with indices in increasing order, including 1 as the empty product, forms a basis for the entire geometric algebra (an analogue of the PBW theorem). For example, the following is a basis for the geometric algebra 𝒢(3, 0):

{1, _e_₁, _e_₂, _e_₃, _e_₁_e_₂, _e_₁_e_₃, _e_₂_e_₃, _e_₁_e_₂_e_₃}
A basis formed this way is called a CANONICAL BASIS for the geometric algebra, and any other orthogonal basis for V will produce another canonical basis. Each canonical basis consists of 2^(n) elements. Every multivector of the geometric algebra can be expressed as a linear combination of the canonical basis elements. If the canonical basis elements are {B_(i)|i ∈ S} with S being an index set, then the geometric product of any two multivectors is

(∑_(_i_)_α__(_i_)_B__(_i_))(∑_(_j_)_β__(_j_)_B__(_j_)) = ∑_(_i_, _j_)_α__(_i_)_β__(_j_)_B__(_i_)_B__(_j_).

The terminology "k-vector" is often encountered to describe multivectors containing elements of only one grade. In higher dimensional space, some such multivectors are not blades (cannot be factored into the outer product of k vectors). By way of example, e₁ ∧ e₂ + e₃ ∧ e₄ in 𝒢(4, 0) cannot be factored; typically, however, such elements of the algebra do not yield to any geometric interpretation. Only 0, 1, (n − 1) and n-vectors are always blades in n-space.

Grade projection

Using an orthogonal basis, a graded vector space structure can be established. Elements of the geometric algebra that are scalar multiples of 1 are grade-0 blades and are called _scalars_. Multivectors that are in the span of {e₁, …, e_(n)} are grade-1 blades and are the ordinary vectors. Multivectors in the span of {e_(i)e_(j) ∣ 1 ≤ i < j ≤ n} are grade-2 blades and are the bivectors. This terminology continues through to the last grade of n-vectors. Alternatively, grade-n blades are called pseudoscalars, grade-(n − 1) blades pseudovectors, etc. Many of the elements of the algebra are not graded by this scheme since they are sums of elements of differing grade. Such elements are said to be of _mixed grade_. The grading of multivectors is independent of the basis chosen originally.

A multivector A may be decomposed with the GRADE-PROJECTION OPERATOR ⟨A⟩_(r), which outputs the grade-r portion of A. As a result:

$$A = \sum_{r=0}^{n} \langle A \rangle _r$$

As an example, the geometric product of two vectors ab = a ⋅ b + a ∧ b = ⟨ab⟩₀ + ⟨ab⟩₂ since ⟨ab⟩₀ = a ⋅ b and ⟨ab⟩₂ = a ∧ b and ⟨ab⟩_(i) = 0, for i other than 0 and 2.

The decomposition of a multivector A may also be split into those components that are even and those that are odd:

_A_⁺ = ⟨_A_⟩₀ + ⟨_A_⟩₂ + ⟨_A_⟩₄ + ⋯

_A_^(−) = ⟨_A_⟩₁ + ⟨_A_⟩₃ + ⟨_A_⟩₅ + ⋯

This makes the algebra a Z₂-graded algebra or superalgebra with the geometric product. Since the geometric product of two even multivectors is an even multivector, they define an _even subalgebra_. The even subalgebra of an n-dimensional geometric algebra is isomorphic to a full geometric algebra of (n − 1) dimensions. Examples include 𝒢⁺(2, 0) ≅ 𝒢(0, 1) and 𝒢⁺(1, 3) ≅ 𝒢(3, 0).

Representation of subspaces

Geometric algebra represents subspaces of V as blades, and so they coexist in the same algebra with vectors from V. A k-dimensional subspace W of V is represented by taking an orthogonal basis {b₁, b₂, …, b_(k)} and using the geometric product to form the blade D = b₁b₂⋯b_(k). There are multiple blades representing W; all those representing W are scalar multiples of D. These blades can be separated into two sets: positive multiples of D and negative multiples of D. The positive multiples of D are said to have _the same orientation_ as D, and the negative multiples the _opposite orientation_.

Blades are important since geometric operations such as projections, rotations and reflections depend on the factorability via the exterior product that (the restricted class of) n-blades provide but that (the generalized class of) grade-n multivectors do not when n ≥ 4.

Unit pseudoscalars

Unit pseudoscalars are blades that play important roles in GA. A UNIT PSEUDOSCALAR for a non-degenerate subspace W of V is a blade that is the product of the members of an orthonormal basis for W. It can be shown that if I and I′ are both unit pseudoscalars for W, then I =  ± I′ and I² =  ± 1.

Suppose the geometric algebra 𝒢(n, 0) with the familiar positive definite inner product on R^(n) is formed. Given a plane (2-dimensional subspace) of R^(n), one can find an orthonormal basis {b₁, b₂} spanning the plane, and thus find a unit pseudoscalar I = b₁b₂ representing this plane. The geometric product of any two vectors in the span of b₁ and b₂ lies in {α₀ + α₁I ∣ α_(i) ∈ R}, that is, it is the sum of a 0-vector and a 2-vector.

By the properties of the geometric product, I² = b₁b₂b₁b₂ =  − b₁b₂b₂b₁ =  − 1. The resemblance to the imaginary unit is not incidental: the subspace {α₀ + α₁I ∣ α_(i) ∈ R} is R-algebra isomorphic to the complex numbers. In this way, a copy of the complex numbers is embedded in the geometric algebra for each 2-dimensional subspace of V on which the quadratic form is definite.

It is sometimes possible to identify the presence of an imaginary unit in a physical equation. Such units arise from one of the many quantities in the real algebra that square to  − 1, and these have geometric significance because of the properties of the algebra and the interaction of its various subspaces.

In 𝒢(3, 0), a further familiar case occurs. Given a canonical basis consisting of orthonormal vectors e_(i) of V, the set of _all_ 2-vectors is spanned by

{_e_₃_e_₂, _e_₁_e_₃, _e_₂_e_₁}.
Labelling these i, j and k (momentarily deviating from our uppercase convention), the subspace generated by 0-vectors and 2-vectors is exactly {α₀ + iα₁ + jα₂ + kα₃ ∣ α_(i) ∈ R}. This set is seen to be a subalgebra of 𝒢(3, 0), and furthermore is isomorphic as an R-algebra to the quaternions, another important algebraic system.

Dual basis

Let {e₁, …, e_(n)} be a basis of V, i.e. a set of n linearly independent vectors that span the n-dimensional vector space V. The basis that is dual to {e₁, …, e_(n)} is the set of elements of the dual vector space V^(*) that forms a biorthogonal system with this basis, thus being the elements denoted {e¹, …, e^(n)} satisfying

_e_^(_i_) ⋅ _e__(_j_) = _δ_^(_i_)_(_j_),
where δ is the Kronecker delta.

Given a nondegenerate quadratic form on V, V^(*) becomes naturally identified with V, and the dual basis may be regarded as elements of V, but are not in general the same set as the original basis.

Given further a GA of V, let

_ϵ_ = _e_₁ ∧ ⋯ ∧ _e__(_n_)
be the pseudoscalar (which does not necessarily square to  ± 1) formed from the basis {e₁, …, e_(n)}. The dual basis vectors may be constructed as

_e_^(_i_) = ( − 1)^(_i_ − 1)(_e_₁ ∧ ⋯ ∧ _ě__(_i_) ∧ ⋯ ∧ _e__(_n_))_ϵ_^( − 1),
where the ě_(i) denotes that the ith basis vector is omitted from the product.

Extensions of the inner and exterior products

It is common practice to extend the exterior product on vectors to the entire algebra. This may be done through the use of the grade projection operator:

    C ∧ D := ∑_(r, s)⟨⟨C⟩_(r)⟨D⟩_(s)⟩_(r + s)     (the _exterior product_)

This generalization is consistent with the above definition involving antisymmetrization. Another generalization related to the exterior product is the commutator product:

    $C \times D := \tfrac{1}{2}(CD-DC)$     (the _commutator product_)

The regressive product (usually referred to as the "meet") is the dual of the exterior product (or "join" in this context). The dual specification of elements permits, for blades A and B, the intersection (or meet) where the duality is to be taken relative to the smallest grade blade containing both A and B (the join).


    C ∨ D := ((CI^( − 1)) ∧ (DI^( − 1)))I

with I the unit pseudoscalar of the algebra. The regressive product, like the exterior product, is associative.

The inner product on vectors can also be generalized, but in more than one non-equivalent way. The paper gives a full treatment of several different inner products developed for geometric algebras and their interrelationships, and the notation is taken from there. Many authors use the same symbol as for the inner product of vectors for their chosen extension (e.g. Hestenes and Perwass). No consistent notation has emerged.

Among these several different generalizations of the inner product on vectors are:

    C ⌋ D := ∑_(r, s)⟨⟨C⟩_(r)⟨D⟩_(s)⟩_(s − r)   (the _left contraction_)
    C ⌊ D := ∑_(r, s)⟨⟨C⟩_(r)⟨D⟩_(s)⟩_(r − s)   (the _right contraction_)
    C * D := ∑_(r, s)⟨⟨C⟩_(r)⟨D⟩_(s)⟩₀   (the _scalar product_)
    C • D := ∑_(r, s)⟨⟨C⟩_(r)⟨D⟩_(s)⟩_(|s − r|)   (the "(fat) dot" product)

makes an argument for the use of contractions in preference to Hestenes's inner product; they are algebraically more regular and have cleaner geometric interpretations. A number of identities incorporating the contractions are valid without restriction of their inputs. For example,

_C_ ⌋ _D_ = (_C_ ∧ (_D__I_^( − 1)))_I_

_C_ ⌊ _D_ = _I_((_I_^( − 1)_C_) ∧ _D_)

(_A_ ∧ _B_) * _C_ = _A_ * (_B_ ⌋ _C_)

_C_ * (_B_ ∧ _A_) = (_C_ ⌊ _B_) * _A_

_A_ ⌋ (_B_ ⌋ _C_) = (_A_ ∧ _B_) ⌋ _C_

(_A_ ⌋ _B_) ⌊ _C_ = _A_ ⌋ (_B_ ⌊ _C_).

Benefits of using the left contraction as an extension of the inner product on vectors include that the identity ab = a ⋅ b + a ∧ b is extended to aB = a ⌋ B + a ∧ B for any vector a and multivector B, and that the projection operation 𝒫_(b)(a) = (a ⋅ b^( − 1))b is extended to 𝒫_(B)(A) = (A ⌋ B^( − 1)) ⌋ B for any blade B and any multivector A (with a minor modification to accommodate null B, given below).

Linear functions

Although versors are easier to work with because they can be directly represented in the algebra as multivectors, they are a subgroup of linear functions on multivectors and these can still be used when necessary. The geometric algebra of an n-dimensional vector space is spanned by a basis of 2^(n) elements. If a multivector is represented by a 2^(n) × 1 real column matrix in terms of a basis, then all linear transformations of the multivector can be expressed as the matrix multiplication by a 2^(n) × 2^(n) real matrix. However, such a general linear transformation allows arbitrary exchanges among grades, such as a "rotation" of a scalar into a vector, which has no evident geometric interpretation.

A general linear transformation from vectors to vectors is of interest. With the natural restriction to preserving the induced exterior algebra, the _outermorphism_ of the linear transformation is its unique extension. If f is a linear function that maps vectors to vectors, then its outermorphism is the function that obeys the rule

$$\underline{\mathsf{f}}(a_1 \wedge a_2 \wedge \cdots \wedge a_r) = f(a_1) \wedge f(a_2) \wedge \cdots \wedge f(a_r)$$
for a blade, extended to the whole algebra through linearity.


Modeling geometries

Although a lot of attention has been placed on CGA, it is to be noted that GA is not just one algebra, it is one of a family of algebras with the same essential structure.

Vector space model

𝒢(3, 0) may be considered as an extension or completion of vector algebra. _From Vectors to Geometric Algebra_ covers basic analytic geometry and gives an introduction to stereographic projection.

The even subalgebra of 𝒢(2, 0) is isomorphic to the complex numbers, as may be seen by writing a vector P in terms of its components in an orthonormal basis and left multiplying by the basis vector e₁, yielding

_Z_ = _e_₁_P_ = _e_₁(_x__e_₁ + _y__e_₂) = _x_(1) + _y_(_e_₁_e_₂),

where we identify i ↦ e₁e₂ since

(_e_₁_e_₂)² = _e_₁_e_₂_e_₁_e_₂ =  − _e_₁_e_₁_e_₂_e_₂ =  − 1.

Similarly, the even subalgebra of 𝒢(3, 0) with basis {1, e₂e₃, e₃e₁, e₁e₂} is isomorphic to the quaternions as may be seen by identifying i ↦  − e₂e₃, j ↦  − e₃e₁ and k ↦  − e₁e₂.

Every associative algebra has a matrix representation; replacing the three Cartesian basis vectors by the Pauli matrices gives a representation of 𝒢(3, 0):

$$\begin{align}
 e_1 = \sigma_1 = \sigma_x &=
 \begin{pmatrix}
  0 & 1 \\
  1 & 0
 \end{pmatrix} \\
 e_2 = \sigma_2 = \sigma_y &=
 \begin{pmatrix}
  0 & -i \\
  i & 0
 \end{pmatrix} \\
 e_3 =\sigma_3 = \sigma_z &=
 \begin{pmatrix}
  1 & 0 \\
  0 & -1
 \end{pmatrix} \,.
\end{align}$$

Dotting the "Pauli vector" (a dyad):

_σ_ = _σ_₁_e_₁ + _σ_₂_e_₂ + _σ_₃_e_₃
with arbitrary vectors a and b and multiplying through gives:

(_σ_ ⋅ _a_)(_σ_ ⋅ _b_) = _a_ ⋅ _b_ + _a_ ∧ _b_
(Equivalently, by inspection, a ⋅ b + iσ⋅ (a × b))

Spacetime model

In physics, the main applications are the geometric algebra of Minkowski 3+1 spacetime, , called spacetime algebra (STA), or less commonly, , interpreted the algebra of physical space (APS).

While in STA points of spacetime are represented simply by vectors, in APS, points of (3 + 1)-dimensional spacetime are instead represented by paravectors: a 3-dimensional vector (space) plus a 1-dimensional scalar (time).

In spacetime algebra the electromagnetic field tensor has a bivector representation F = (E + icB)γ₀.[1] Here, the i = γ₀γ₁γ₂γ₃ is the unit pseudoscalar (or four-dimensional volume element), γ₀ is the unit vector in time direction, and E and B are the classic electric and magnetic field vectors (with a zero time component). Using the four-current J, Maxwell's equations then become

    {|class="wikitable" style="text-align: center;"

|- ! scope="column" style="width:160px;"|Formulation !| Homogeneous equations !| Non-homogeneous equations |- ! rowspan="2" |Fields | colspan="2" |DF = μ₀J |- | D ∧ F = 0 | D ⋅ F = μ₀J |- !Potentials (any gauge) ||F = D ∧ A ||D ⋅ D ∧ A = μ₀J |- !Potentials (Lorenz gauge) ||F = DA D ⋅ A = 0 ||D²A = μ₀J |}

In geometric calculus, juxtapositioning of vectors such as in DF indicate the geometric product and can be decomposed into parts as DF = D ⋅ F + D ∧ F. Here D is the covector derivative in any spacetime and reduces to ∇ in flat spacetime. Where ▽ plays a role in Minkowski 4-spacetime which is synonymous to the role of ∇ in Euclidean 3-space and is related to the d'Alembertian by □ = ▽². Indeed, given an observer represented by a future pointing timelike vector γ₀ we have

$$\gamma_0\cdot\bigtriangledown=\frac{1}{c}\frac{\partial}{\partial t}$$

_γ_₀ ∧  ▽  = ∇

Boosts in this Lorentzian metric space have the same expression e^(β) as rotation in Euclidean space, where β is the bivector generated by the time and the space directions involved, whereas in the Euclidean case it is the bivector generated by the two space directions, strengthening the "analogy" to almost identity.

The Dirac matrices are a representation of 𝒢(1, 3), showing the equivalence with matrix representations used by physicists.

Homogeneous model

The first model here is 𝒢(4, 0), the GA version of homogeneous coordinates used in projective geometry. Here a vector represents a point and an outer product of vectors an oriented length yet we may work with the algebra in just the same way as in 𝒢(3, 0). However, a useful inner product cannot be defined in the space and so there is no geometric product either leaving only outer product and non-metric uses of duality such as meet and join.

Nevertheless, there has been investigation of 4-dimensional alternatives to the full 5-dimensional CGA for limited geometries such as rigid body movements. A selection of these can be found in Part IV of _Guide to Geometric Algebra in Practice_. Note that the algebra 𝒢(3, 0, 1) appears as a subalgebra of CGA by selecting just one null vector and dropping the other and further that the "motor algebra" (isomorphic to dual quaternions) is the even subalgebra of 𝒢(3, 0, 1).

Conformal model

A compact description of the current state of the art is provided by , which also includes further references, in particular to . Other useful references are and .

Working within GA, Euclidean space ℰ³ (along with a conformal point at infinity) is embedded projectively in the CGA 𝒢(4, 1) via the identification of Euclidean points with 1-d subspaces in the 4-d null cone of the 5-d CGA vector subspace. This allows all conformal transformations to be done as rotations and reflections and is covariant, extending incidence relations of projective geometry to circles and spheres.

Specifically, we add orthogonal basis vectors e₊ and e_(−) such that e₊² =  + 1 and e_(−)² =  − 1 to the basis of the vector space that generates 𝒢(3, 0) and identify null vectors

_n__(∞) = _e__(−) + _e_₊
as a conformal point at infinity (see _Compactification_) and

$$n_\text{o} = \tfrac{1}{2}(e_- - e_+)$$
as the point at the origin, giving

_n__(∞) ⋅ _n__(o) =  − 1
.

This procedure has some similarities to the procedure for working with homogeneous coordinates in projective geometry and in this case allows the modeling of Euclidean transformations of R³ as orthogonal transformations of a subset of R^(4, 1).

A fast changing and fluid area of GA, CGA is also being investigated for applications to relativistic physics.

Models for projective transformation

Two potential candidates are currently under investigation as the foundation for affine and projective geometry in 3-dimensions ℛ(3, 3)and ℛ(4, 4)[2] which includes representations for shears and non-uniform scaling, as well as quadric surfaces and conic sections.

A new research model, Quadric Conformal Geometric Algebra (QCGA) ℛ(9, 6) is an extension of CGA, dedicated to quadric surfaces. The idea is to represent the objects in low dimensional subspaces of the algebra. QCGA is capable of constructing quadric surfaces either using control points or implicit equations. Moreover, QCGA can compute the intersection of quadric surfaces, as well as, the surface tangent and normal vectors at a point that lies in the quadric surface.[3]


Geometric interpretation

Projection and rejection

For any vector a and any invertible vector m,

_a_ = _a__m__m_^( − 1) = (_a_ ⋅ _m_ + _a_ ∧ _m_)_m_^( − 1) = _a__(∥_m_) + _a__( ⊥ _m_),
where the PROJECTION of a onto m (or the parallel part) is

_a__(∥_m_) = (_a_ ⋅ _m_)_m_^( − 1)
and the REJECTION of a from m (or the orthogonal part) is

_a__( ⊥ _m_) = _a_ − _a__(∥_m_) = (_a_ ∧ _m_)_m_^( − 1).

Using the concept of a k-blade B as representing a subspace of V and every multivector ultimately being expressed in terms of vectors, this generalizes to projection of a general multivector onto any invertible k-blade B as

𝒫_(_B_)(_A_) = (_A_ ⌋ _B_^( − 1)) ⌋ _B_,
with the rejection being defined as

𝒫_(_B_)^(⊥)(_A_) = _A_ − 𝒫_(_B_)(_A_).

The projection and rejection generalize to null blades B by replacing the inverse B^( − 1) with the pseudoinverse B⁺ with respect to the contractive product. The outcome of the projection coincides in both cases for non-null blades. For null blades B, the definition of the projection given here with the first contraction rather than the second being onto the pseudoinverse should be used, as only then is the result necessarily in the subspace represented by B. The projection generalizes through linearity to general multivectors A. The projection is not linear in B and does not generalize to objects B that are not blades.

Reflection

Simple reflections in a hyperplane are readily expressed in the algebra through conjugation with a single vector. These serve to generate the group of general rotoreflections and rotations.

The reflection c′ of a vector c along a vector m, or equivalently in the hyperplane orthogonal to m, is the same as negating the component of a vector parallel to m. The result of the reflection will be

_c_′ =  − _c__(∥_m_) + _c__( ⊥ _m_) =  − (_c_ ⋅ _m_)_m_^( − 1) + (_c_ ∧ _m_)_m_^( − 1) = ( − _m_ ⋅ _c_ − _m_ ∧ _c_)_m_^( − 1) =  − _m__c__m_^( − 1)

This is not the most general operation that may be regarded as a reflection when the dimension n ≥ 4. A general reflection may be expressed as the composite of any odd number of single-axis reflections. Thus, a general reflection a′ of a vector a may be written

_a_ ↦ _a_′ =  − _M__a__M_^( − 1),
where

_M_ = _p__q_⋯_r_
and M^( − 1) = (pq⋯r)^( − 1) = r^( − 1)⋯q^( − 1)p^( − 1).

If we define the reflection along a non-null vector m of the product of vectors as the reflection of every vector in the product along the same vector, we get for any product of an odd number of vectors that, by way of example,

(_a__b__c_)′ = _a_′_b_′_c_′ = ( − _m__a__m_^( − 1))( − _m__b__m_^( − 1))( − _m__c__m_^( − 1)) =  − _m__a_(_m_^( − 1)_m_)_b_(_m_^( − 1)_m_)_c__m_^( − 1) =  − _m__a__b__c__m_^( − 1) 
and for the product of an even number of vectors that

(_a__b__c__d_)′ = _a_′_b_′_c_′_d_′ = ( − _m__a__m_^( − 1))( − _m__b__m_^( − 1))( − _m__c__m_^( − 1))( − _m__d__m_^( − 1)) = _m__a__b__c__d__m_^( − 1).

Using the concept of every multivector ultimately being expressed in terms of vectors, the reflection of a general multivector A using any reflection versor M may be written

_A_ ↦ _M__α_(_A_)_M_^( − 1),
where α is the automorphism of reflection through the origin of the vector space (v ↦  − v) extended through linearity to the whole algebra.

Rotations

If we have a product of vectors R = a₁a₂⋯a_(r) then we denote the reverse as

    R^(†) = (a₁a₂⋯a_(r))^(†) = a_(r)⋯a₂a₁.

As an example, assume that R = ab we get

_R__R_^(†) = _a__b__b__a_ = _a__b_²_a_ = _a_²_b_² = _b__a_²_b_ = _b__a__a__b_ = _R_^(†)_R_.

Scaling R so that RR^(†) = 1 then

(_R__v__R_^(†))² = _R__v_²_R_^(†) = _v_²_R__R_^(†) = _v_²

so RvR^(†) leaves the length of v unchanged. We can also show that

(_R__v_₁_R_^(†)) ⋅ (_R__v_₂_R_^(†)) = _v_₁ ⋅ _v_₂

so the transformation RvR^(†) preserves both length and angle. It therefore can be identified as a rotation or rotoreflection; R is called a rotor if it is a proper rotation (as it is if it can be expressed as a product of an even number of vectors) and is an instance of what is known in GA as a _versor_.

There is a general method for rotating a vector involving the formation of a multivector of the form R = e^( − Bθ/2) that produces a rotation θ in the plane and with the orientation defined by a 2-blade B.

Rotors are a generalization of quaternions to n-dimensional spaces.

Versor

A k-versor is a multivector represented by the geometric product of k invertible vectors. Unit quaternions (originally called versors by Hamilton) may be identified with rotors in 3D space in much the same way as real 2D rotors subsume complex numbers; for the details refer to Dorst.

Some authors use the term “versor product” to refer to the frequently occurring case where an operand is "sandwiched" between operators. The descriptions for rotations and reflections, including their outermorphisms, are examples of such sandwiching. The outermorphisms have a particularly simple algebraic form. Specifically, a mapping of vectors of the form

_V_ → _V_ : _a_ ↦ _R__a__R_^( − 1)
extends to the outermorphism 𝒢(V) → 𝒢(V) : A ↦ RAR^( − 1).

Since both operators and operand are versors there is potential for alternative examples such as rotating a rotor or reflecting a spinor always provided that some geometrical or physical significance can be attached to such operations.

By the Cartan–Dieudonné theorem we have that every isometry can be given as reflections in hyperplanes and since composed reflections provide rotations then we have that orthogonal transformations are versors.

In group terms, for a real, non-degenerate 𝒢(p, q), having identified the group 𝒢^(×) as the group of all invertible elements of 𝒢, Lundholm gives a proof that the "versor group" {v₁v₂⋯v_(k) ∈ G : v_(i) ∈ V^(×)} (the set of invertible versors) is equal to the Lipschitz group Γ ( Clifford group, although Lundholm deprecates this usage).

Subgroups of

Lundholm defines the Pin , Spin , and Spin⁺ subgroups, generated by unit vectors, and in the case of Spin  and Spin⁺, only an even number of such vector factors can be present.

  Subgroup   Definition               Description
  ---------- ------------------------ -------------------
  Pin        x ∈ Γ : xx^(†) =  ± 1    unit versors
  Spin       Pin  ∩ 𝒢⁺                even unit versors
  Spin⁺      x ∈ Spin  : xx^(†) = 1   rotors

Spinors are defined as elements of the even subalgebra of a real GA; an analysis of the GA approach to spinors is given by Francis and Kosowsky.


Examples and applications

Hypervolume of a parallelotope spanned by vectors

For vectors a and b spanning a parallelogram we have

_a_ ∧ _b_ = ((_a_ ∧ _b_)_b_^( − 1))_b_ = _a__( ⊥ _b_)_b_
with the result that a ∧ b is linear in the product of the "altitude" and the "base" of the parallelogram, that is, its area.

Similar interpretations are true for any number of vectors spanning an n-dimensional parallelotope; the exterior product of vectors a₁, a₂, …, a_(n), that is $\textstyle \bigwedge_{i=1}^n a_i$, has a magnitude equal to the volume of the n-parallelotope. An n-vector does not necessarily have a shape of a parallelotope – this is a convenient visualization. It could be any shape, although the volume equals that of the parallelotope.

Intersection of a line and a plane

We may define the line parametrically by p = t + α v where p and t are position vectors for points P and T and v is the direction vector for the line.

Then

_B_ ∧ (_p_ − _q_) = 0
and B ∧ (t + αv − q) = 0 so

$$\alpha = \frac{B \wedge(q-t)}{B \wedge v}$$
and

$$p = t + \left(\frac{B \wedge (q-t)}{B \wedge v}\right) v.$$

Rotating systems

The mathematical description of rotational forces such as torque and angular momentum often makes use of the cross product of vector calculus in three dimensions with a convention of orientation (handedness).

The cross product can be viewed in terms of the exterior product allowing a more natural geometric interpretation of the cross product as a bivector using the dual relationship

_a_ × _b_ =  − _I_(_a_ ∧ _b_).

For example, torque is generally defined as the magnitude of the perpendicular force component times distance, or work per unit angle.

Suppose a circular path in an arbitrary plane containing orthonormal vectors û and v̂ is parameterized by angle.

R = _r_(_û_cos _θ_ + _v̂_sin _θ_) = _r__û_(cos _θ_ + _û__v̂_sin _θ_)

By designating the unit bivector of this plane as the imaginary number

_i_ = _û__v̂_ = _û_ ∧ _v̂_

_i_² =  − 1

this path vector can be conveniently written in complex exponential form

R = _r__û__e_^(_i__θ_)

and the derivative with respect to angle is

$$\frac{d \mathbf{r}}{d\theta} = r \hat{u} i e^{i\theta} = \mathbf{r} i .$$

So the torque, the rate of change of work W, due to a force F, is

$$\tau = \frac{dW}{d\theta} = F \cdot \frac{dr}{d\theta} = F \cdot (\mathbf{r} i) .$$

Unlike the cross product description of torque, τ = R × F, the geometric algebra description does not introduce a vector in the normal direction; a vector that does not exist in two and that is not unique in greater than three dimensions. The unit bivector describes the plane and the orientation of the rotation, and the sense of the rotation is relative to the angle between the vectors û and v̂.


Geometric calculus

Geometric calculus extends the formalism to include differentiation and integration including differential geometry and differential forms.

Essentially, the vector derivative is defined so that the GA version of Green's theorem is true,

∫_(_A_)_d__A_ ∇_f_ = ∮_(∂_A_)_d__x_ _f_
and then one can write

∇_f_ = ∇ ⋅ _f_ + ∇ ∧ _f_
as a geometric product, effectively generalizing Stokes' theorem (including the differential form version of it).

In 1D when A is a curve with endpoints a and b, then

∫_(_A_)_d__A_ ∇_f_ = ∮_(∂_A_)_d__x_ _f_
reduces to

∫_(_a_)^(_b_)_d__x_ ∇_f_ = ∫_(_a_)^(_b_)_d__x_ ⋅ ∇_f_ = ∫_(_a_)^(_b_)_d__f_ = _f_(_b_) − _f_(_a_)
or the fundamental theorem of integral calculus.

Also developed are the concept of vector manifold and geometric integration theory (which generalizes differential forms).


History

Before the 20th century

Although the connection of geometry with algebra dates as far back at least to Euclid's _Elements_ in the third century B.C. (see Greek geometric algebra), GA in the sense used in this article was not developed until 1844, when it was used in a _systematic way_ to describe the geometrical properties and _transformations_ of a space. In that year, Hermann Grassmann introduced the idea of a geometrical algebra in full generality as a certain calculus (analogous to the propositional calculus) that encoded all of the geometrical information of a space. Grassmann's algebraic system could be applied to a number of different kinds of spaces, the chief among them being Euclidean space, affine space, and projective space. Following Grassmann, in 1878 William Kingdon Clifford examined Grassmann's algebraic system alongside the quaternions of William Rowan Hamilton in . From his point of view, the quaternions described certain _transformations_ (which he called _rotors_), whereas Grassmann's algebra described certain _properties_ (or _Strecken_ such as length, area, and volume). His contribution was to define a new product — the _geometric product_ – on an existing Grassmann algebra, which realized the quaternions as living within that algebra. Subsequently, Rudolf Lipschitz in 1886 generalized Clifford's interpretation of the quaternions and applied them to the geometry of rotations in n dimensions. Later these developments would lead other 20th-century mathematicians to formalize and explore the properties of the Clifford algebra.

Nevertheless, another revolutionary development of the 19th-century would completely overshadow the geometric algebras: that of vector analysis, developed independently by Josiah Willard Gibbs and Oliver Heaviside. Vector analysis was motivated by James Clerk Maxwell's studies of electromagnetism, and specifically the need to express and manipulate conveniently certain differential equations. Vector analysis had a certain intuitive appeal compared to the rigors of the new algebras. Physicists and mathematicians alike readily adopted it as their geometrical toolkit of choice, particularly following the influential 1901 textbook _Vector Analysis_ by Edwin Bidwell Wilson, following lectures of Gibbs.

In more detail, there have been three approaches to geometric algebra: quaternionic analysis, initiated by Hamilton in 1843 and geometrized as rotors by Clifford in 1878; geometric algebra, initiated by Grassmann in 1844; and vector analysis, developed out of quaternionic analysis in the late 19th century by Gibbs and Heaviside. The legacy of quaternionic analysis in vector analysis can be seen in the use of i, j, k to indicate the basis vectors of R³: it is being thought of as the purely imaginary quaternions. From the perspective of geometric algebra, the even subalgebra of the Space Time Algebra is isomorphic to the GA of 3D Euclidean space and quaternions are isomorphic to the even subalgebra of the GA of 3D Euclidean space, which unifies the three approaches.

20th century and present

Progress on the study of Clifford algebras quietly advanced through the twentieth century, although largely due to the work of abstract algebraists such as Hermann Weyl and Claude Chevalley. The _geometrical_ approach to geometric algebras has seen a number of 20th-century revivals. In mathematics, Emil Artin's _Geometric Algebra_ discusses the algebra associated with each of a number of geometries, including affine geometry, projective geometry, symplectic geometry, and orthogonal geometry. In physics, geometric algebras have been revived as a "new" way to do classical mechanics and electromagnetism, together with more advanced topics such as quantum mechanics and gauge theory. David Hestenes reinterpreted the Pauli and Dirac matrices as vectors in ordinary space and spacetime, respectively, and has been a primary contemporary advocate for the use of geometric algebra.

In computer graphics and robotics, geometric algebras have been revived in order to efficiently represent rotations and other transformations. For applications of GA in robotics (screw theory, kinematics and dynamics using versors), computer vision, control and neural computing (geometric learning) see Bayro (2010).


Software

GA is a very application-oriented subject. There is a reasonably steep initial learning curve associated with it, but this can be eased somewhat by the use of applicable software. The following is a list of freely available software that does not require ownership of commercial software or purchase of any commercial products for this purpose:

Actively developed open source projects

-   clifford - Numeric Geometric Algebra Module for Python.
-   galgebra - Symbolic Geometric Algebra Module for Python by Alan Bromborsky (uses sympy).
-   GATL - A template C++ library that uses the lazy evaluation strategy to automatically execute low-level algebraic manipulations in compile time in order to produce more efficient programs.
-   ganja.js - Geometric Algebra for Javascript (with operator overloading and algebraic literals)
-   Versor, A lightweight templated C++ Library with an OpenGL interface for efficient geometric algebra programming in arbitrary metrics, including conformal
-   Grassmann.jl - Conformal geometric product algebra based on static dual multivectors with graded-blade indexing (written in Julia language)

Other projects

-   GA Viewer Fontijne, Dorst, Bouma & Mann
-   GAwxM GitHub - GA using wxMaxima, Open Source software using a free Computer Algebra System, includes readme files for motivation and setup.
-   CLUViz Perwass

Software allowing script creation and including sample visualizations, manual and GA introduction.

-   Gaigen Fontijne

For programmers, this is a code generator with support for C, C++, C# and Java.

-   Cinderella Visualizations Hitzer and Dorst.
-   Gaalop 1 Standalone GUI-Application that uses the Open-Source Computer Algebra Software Maxima to break down CLUViz code into C/C++ or Java code.
-   Gaalop Precompiler 2 Precompiler based on Gaalop integrated with CMake.
-   Gaalet, C++ Expression Template Library Seybold.
-   Clifford Algebra with Mathematica clifford.m
-   Clifford Algebra with GiNaC built-in classes

Benchmark project

-   ga-benchmark - A benchmark for C/C++ Geometric Algebra libraries and library generators.


See also

-   Comparison of vector algebra and geometric algebra
-   Clifford algebra
-   Grassmann–Cayley algebra
-   Spacetime algebra
-   Spinor
-   Quaternion
-   Algebra of physical space
-   Universal geometric algebra


Notes


Citations


References and further reading

    _Arranged chronologically_

-   -   (Reprint of the 1957 original)

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   . Extract online at http://www.worldscibooks.com/etextbook/6514/6514_chap01.pdf

-   -   -   -   -   Extract online at http://geocalc.clas.asu.edu/html/UAFCG.html #5 New Tools for Computational Geometry and rejuvenation of Screw Theory

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   A Survey of Geometric Algebra and Geometric Calculus Alan Macdonald, Luther College, Iowa.
-   Imaginary Numbers are not Real – the Geometric Algebra of Spacetime. Introduction (Cambridge GA group).
-   Geometric Algebra 2015, Masters Course in Scientific Computing, from Dr. Chris Doran (Cambridge).
-   Maths for (Games) Programmers: 5 – Multivector methods. Comprehensive introduction and reference for programmers, from Ian Bell.
-   IMPA Summer School 2010 Fernandes Oliveira Intro and Slides.
-   University of Fukui E.S.M. Hitzer and Japan GA publications.
-   Google Group for GA
-   Geometric Algebra Primer Introduction to GA, Jaap Suter.
-   Geometric Algebra Resources curated wiki, Pablo Bleyer.
-   Applied Geometric Algebras in Computer Science and Engineering 2018 Early Proceedings

ENGLISH TRANSLATIONS OF EARLY BOOKS AND PAPERS

-   G. Combebiac, "calculus of tri-quaternions" (Doctoral dissertation)
-   M. Markic, "Transformants: A new mathematical vehicle. A synthesis of Combebiac's tri-quaternions and Grassmann's geometric system. The calculus of quadri-quaternions"
-   [http://neo-classical-physics.info/uploads/3/0/6/5/3065888/burali-forti_-_grassman_and_proj._geom..pdf C. Burali-Forti, "The Grassmann method in projective geometry"] A compilation of three notes on the application of exterior algebra to projective geometry
-   C. Burali-Forti, "Introduction to Differential Geometry, following the method of H. Grassmann" Early book on the application of Grassmann algebra
-   H. Grassmann, "Mechanics, according to the principles of the theory of extension" One of his papers on the applications of exterior algebra.

RESEARCH GROUPS

-   Geometric Calculus International. Links to Research groups, Software, and Conferences, worldwide.
-   Cambridge Geometric Algebra group. Full-text online publications, and other material.
-   University of Amsterdam group
-   Geometric Calculus research & development (Arizona State University).
-   GA-Net blog and newsletter archive. Geometric Algebra/Clifford Algebra development news.
-   Geometric Algebra for Perception Action Systems. Geometric Cybernetics Group (CINVESTAV, Campus Guadalajara, Mexico).

Category:Clifford algebras Category:Ring theory Geometric_algebra

[1]

[2]

[3]