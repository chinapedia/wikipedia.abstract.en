In mathematics, an OPERATOR is generally a mapping that acts on elements of a space to produce elements of another space (possibly the same space, sometimes required to be the same space). The most common operators are linear maps, which act on vector spaces. However, when using "linear operator" instead of "linear map", mathematicians often mean actions on vector spaces of functions, which also preserve other properties, such as continuity. For example, differentiation and indefinite integration are linear operators; operators that are built from them are called differential operators, integral operators or integro-differential operators.

OPERATOR is also used for denoting the symbol of a mathematical operation. This is related with the meaning of "operator" in computer programming, see operator (computer programming).


Linear operators

The most common kind of operator encountered are _linear operators_. Let _U_ and _V_ be vector spaces over a field _K_. A mapping _A_: _U_ → _V_ is linear if

_A_(_α_X + _β_Y) = _α__A_X + _β__A_Y
for all X, Y in _U_ and for all _α, β_ in _K_. This means that a linear operator preserves vector space operations, in the sense that it does not matter whether you apply the linear operator before or after the operations of addition and scalar multiplication. In more technical words, linear operators are morphisms between vector spaces.

In finite-dimensional case linear operators can be represented by matrices in the following way. Let K be a field, and U and V be finite-dimensional vector spaces over K. Let us select a basis U₁, …, U_(n) in U and V₁, …, V_(m) in V. Then let X = x^(i)U_(i) be an arbitrary vector in U (assuming Einstein convention), and A : U → V be a linear operator. Then

    AX = x^(i)AU_(i) = x^(i)(AU_(i))^(j)V_(j).

Then a_(i)^(j) := (AU_(i))^(j) ∈ K is the matrix of the operator A in fixed bases. a_(i)^(j) does not depend on the choice of x, and AX = Y if a_(i)^(j)x^(i) = y^(j). Thus in fixed bases n-by-m matrices are in bijective correspondence to linear operators from U to V.

The important concepts directly related to operators between finite-dimensional vector spaces are the ones of rank, determinant, inverse operator, and eigenspace.

Linear operators also play a great role in the infinite-dimensional case. The concepts of rank and determinant cannot be extended to infinite-dimensional matrices. This is why very different techniques are employed when studying linear operators (and operators in general) in the infinite-dimensional case. The study of linear operators in the infinite-dimensional case is known as functional analysis (so called because various classes of functions form interesting examples of infinite-dimensional vector spaces).

The space of sequences of real numbers, or more generally sequences of vectors in any vector space, themselves form an infinite-dimensional vector space. The most important cases are sequences of real or complex numbers, and these spaces, together with linear subspaces, are known as sequence spaces. Operators on these spaces are known as sequence transformations.

Bounded linear operators over Banach space form a Banach algebra in respect to the standard operator norm. The theory of Banach algebras develops a very general concept of spectra that elegantly generalizes the theory of eigenspaces.


Bounded operators

Let _U_ and _V_ be two vector spaces over the same ordered field (for example, R), and they are equipped with norms. Then a linear operator from _U_ to _V_ is called BOUNDED if there exists _C > 0_ such that

||_A_X||_(_V_) ≤ _C_||X||_(_U_)
for all X in _U_.

Bounded operators form a vector space. On this vector space we can introduce a norm that is compatible with the norms of _U_ and _V_:

||_A_|| = inf {_C_ : ||_A_X||_(_V_) ≤ _C_||X||_(_U_)}
.

In case of operators from _U_ to itself it can be shown that

||_A__B_|| ≤ ||_A_|| ⋅ ||_B_||
.

Any unital normed algebra with this property is called a Banach algebra. It is possible to generalize spectral theory to such algebras. C*-algebras, which are Banach algebras with some additional structure, play an important role in quantum mechanics.


Examples

Geometry

In geometry, additional structures on vector spaces are sometimes studied. Operators that map such vector spaces to themselves bijectively are very useful in these studies, they naturally form groups by composition.

For example, bijective operators preserving the structure of a vector space are precisely the invertible linear operators. They form the general linear group under composition. They _do not_ form a vector space under the addition of operators, e.g. both _id_ and _-id_ are invertible (bijective), but their sum, 0, is not.

Operators preserving the Euclidean metric on such a space form the isometry group, and those that fix the origin form a subgroup known as the orthogonal group. Operators in the orthogonal group that also preserve the orientation of vector tuples form the special orthogonal group, or the group of rotations.

Probability theory

Operators are also involved in probability theory, such as expectation, variance, and covariance. Indeed, every covariance is basically a dot product; every variance is a dot product of a vector with itself, and thus is a quadratic norm; every standard deviation is a norm (square root of the quadratic norm); the corresponding cosine to this dot product is the Pearson correlation coefficient; expected value is basically an integral operator (used to measure weighted shapes in the space).

Calculus

From the point of view of functional analysis, calculus is the study of two linear operators: the differential operator $\frac{\mathrm{d}}{\mathrm{d}t}$, and the Volterra operator ∫₀^(t).

Fourier series and Fourier transform

The Fourier transform is useful in applied mathematics, particularly physics and signal processing. It is another integral operator; it is useful mainly because it converts a function on one (temporal) domain to a function on another (frequency) domain, in a way effectively invertible. No information is lost, as there is an inverse transform operator. In the simple case of periodic functions, this result is based on the theorem that any continuous periodic function can be represented as the sum of a series of sine waves and cosine waves:

$$f(t) = {a_0 \over 2} + \sum_{n=1}^{\infty}{ a_n \cos ( \omega n t ) + b_n \sin ( \omega n t ) }$$
The tuple _(a₀, a₁, b₁, a₂, b₂, ...)_ is in fact an element of an infinite-dimensional vector space ℓ², and thus Fourier series is a linear operator.

When dealing with general function R → C, the transform takes on an integral form:

$$f(t) = {1 \over \sqrt{2 \pi}} \int_{- \infty}^{+ \infty}{g( \omega )e^{ i \omega t } \,d\omega }.$$

Laplace transform

The _Laplace transform_ is another integral operator and is involved in simplifying the process of solving differential equations.

Given _f_ = _f_(_s_), it is defined by:

_F_(_s_) = ℒ{_f_}(_s_) = ∫₀^(∞)_e_^( − _s__t_)_f_(_t_) _d__t_.

Fundamental operators on scalar and vector fields

Three operators are key to vector calculus:

-   Grad (gradient), (with operator symbol ∇) assigns a vector at every point in a scalar field that points in the direction of greatest rate of change of that field and whose norm measures the absolute value of that greatest rate of change.
-   Div (divergence), (with operator symbol ∇⋅) is a vector operator that measures a vector field's divergence from or convergence towards a given point.
-   Curl, (with operator symbol ∇×) is a vector operator that measures a vector field's curling (winding around, rotating around) trend about a given point.

As an extension of vector calculus operators to physics, engineering and tensor spaces, Grad, Div and Curl operators also are often associated with Tensor calculus as well as vector calculus.[1]


See also

-   Function
-   Operator algebra
-   List of operators
-   Operator (physics)


References

Category:Algebra Category:Functional analysis Category:Mathematical notation

[1]