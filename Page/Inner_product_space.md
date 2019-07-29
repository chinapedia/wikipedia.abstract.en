Inner-product-angle.png Product_Spaces_Drawing_(1).png

In linear algebra, an INNER PRODUCT SPACE is a vector space with an additional structure called an INNER PRODUCT. This additional structure associates each pair of vectors in the space with a scalar quantity known as the inner product of the vectors. Inner products allow the rigorous introduction of intuitive geometrical notions such as the length of a vector or the angle between two vectors. They also provide the means of defining orthogonality between vectors (zero inner product). Inner product spaces generalize Euclidean spaces (in which the inner product is the dot product, also known as the scalar product) to vector spaces of any (possibly infinite) dimension, and are studied in functional analysis. The first usage of the concept of a vector space with an inner product is due to Giuseppe Peano, in 1898.[1]

An inner product naturally induces an associated norm, thus an inner product space is also a normed vector space. A complete space with an inner product is called a Hilbert space. An (incomplete) space with an inner product is called a PRE-HILBERT SPACE, since its completion with respect to the norm induced by the inner product is a Hilbert space. Inner product spaces over the field of complex numbers are sometimes referred to as UNITARY SPACES.


Definition

In this article, the field of scalars denoted is either the field of real numbers or the field of complex numbers .

Formally, an inner product space is a vector space over the field together with an _inner product_, i.e., with a map

⟨⋅, ⋅ ⟩ : _V_ × _V_ → _F_

that satisfies the following three properties for all vectors and all scalars :[2][3]

-   Conjugate symmetry:[4]

        $\langle x, y \rangle = \overline{\langle y, x \rangle}$

-   Linearity in the first argument:

        \begin{align}

    \langle ax, y \rangle &= a \langle x, y \rangle \\
 \langle x + y, z \rangle &= \langle x, z \rangle + \langle y, z \rangle

\end{align}

-   Positive-definite:

        ⟨x, x⟩ > 0, x ∈ V \ {0}.

Elementary properties

Positive-definiteness and linearity, respectively, ensure that:

$$\begin{align}
                    \langle x, x \rangle &= 0 \Rightarrow x = \mathbf{0} \\
  \langle \mathbf{0}, \mathbf{0} \rangle &= \langle 0x, 0x \rangle = 0 \langle x, 0x \rangle = 0
\end{align}$$

Notice that conjugate symmetry implies that is real for all , since we have:

    $\langle x, x \rangle = \overline{\langle x, x \rangle} \,.$

Conjugate symmetry and linearity in the first variable imply

$$\begin{align}
    \langle x, a y \rangle &= \overline{\langle a y, x \rangle} = \overline{a} \overline{\langle y, x \rangle} = \overline{a} \langle x, y \rangle \\
  \langle x, y + z \rangle &= \overline{\langle y + z, x \rangle} = \overline{\langle y, x \rangle} + \overline{\langle z, x \rangle} = \langle x, y \rangle + \langle x, z \rangle \,;
\end{align}$$

that is, conjugate linearity in the second argument. So, an inner product is a sesquilinear form. Conjugate symmetry is also called Hermitian symmetry, and a conjugate-symmetric sesquilinear form is called a _Hermitian form_. While the above axioms are more mathematically economical, a compact verbal definition of an inner product is a _positive-definite Hermitian form_.

This important generalization of the familiar square expansion follows:

    ⟨x + y, x + y⟩ = ⟨x, x⟩ + ⟨x, y⟩ + ⟨y, x⟩ + ⟨y, y⟩ .

These properties, constituents of the above linearity in the first and second argument:

$$\begin{align}
  \langle x + y, z \rangle &= \langle x, z \rangle + \langle y, z \rangle \,, \\
  \langle x, y + z \rangle &= \langle x, y\rangle + \langle x, z \rangle
\end{align}$$

are otherwise known as _additivity_.

In the case of R}}, conjugate-symmetry reduces to symmetry, and sesquilinearity reduces to bilinearity. So, an inner product on a real vector space is a _positive-definite symmetric bilinear form_. That is,

$$\begin{align}
               \langle x, y \rangle &= \langle y, x \rangle \\
  \Rightarrow \langle -x, x \rangle &= \langle x, -x \rangle \,,
\end{align}$$

and the binomial expansion becomes:

    ⟨x + y, x + y⟩ = ⟨x, x⟩ + 2⟨x, y⟩ + ⟨y, y⟩ .

Alternative definitions, notations and remarks

A common special case of the inner product, the scalar product or dot product, is written with a centered dot a ⋅ b.

Some authors, especially in physics and matrix algebra, prefer to define the inner product and the sesquilinear form with linearity in the second argument rather than the first. Then the first argument becomes conjugate linear, rather than the second. In those disciplines we would write the product as (the bra–ket notation of quantum mechanics), respectively (dot product as a case of the convention of forming the matrix product as the dot products of rows of with columns of ). Here the kets and columns are identified with the vectors of and the bras and rows with the linear functionals (covectors) of the dual space , with conjugacy associated with duality. This reverse order is now occasionally followed in the more abstract literature,[5] taking to be conjugate linear in rather than . A few instead find a middle ground by recognizing both and as distinct notations differing only in which argument is conjugate linear.

There are various technical reasons why it is necessary to restrict the basefield to and in the definition. Briefly, the basefield has to contain an ordered subfield in order for non-negativity to make sense,[6] and therefore has to have characteristic equal to 0 (since any ordered field has to have such characteristic). This immediately excludes finite fields. The basefield has to have additional structure, such as a distinguished automorphism. More generally any quadratically closed subfield of or will suffice for this purpose, e.g., the algebraic numbers or the constructible numbers. However in these cases when it is a proper subfield (i.e., neither nor ) even finite-dimensional inner product spaces will fail to be metrically complete. In contrast all finite-dimensional inner product spaces over or , such as those used in quantum computation, are automatically metrically complete and hence Hilbert spaces.

In some cases we need to consider non-negative _semi-definite_ sesquilinear forms. This means that is only required to be non-negative. We show how to treat these below.


Examples

Real numbers

A simple example is the real numbers with the standard multiplication as the inner product

⟨_x_, _y_⟩ := _x__y_.

Euclidean space

More generally, the [[real_coordinate_space|real 1}} (i.e., 0}} almost surely). This definition of expectation as inner product can be extended to random vectors as well.

Real matrices

For real square matrices of the same size, tr(_AB_)}} with transpose as conjugation

(⟨_A_,_B_⟩=⟨_B_^(T),_A_^(T)⟩)
is an inner product.

Vector spaces with forms

On an inner product space, or more generally a vector space with a nondegenerate form (so an isomorphism ) vectors can be sent to covectors (in coordinates, via transpose), so one can take the inner product and outer product of two vectors, not simply of a vector and a covector.


Norms on inner product spaces

A linear space with a norm such as:

$$\|x\|_p = \left( \sum_{i=1}^{\infty} \left| \xi_i \right|^p \right)^{\frac{1}{p}} \qquad x = \left\{ \xi_i \right\} \in l^p, \quad p \neq 2,$$

is a normed space but not an inner product space, because this norm does not satisfy the parallelogram equality required of a norm to have an inner product associated with it.[7][8]

However, inner product spaces have a naturally defined norm based upon the inner product of the space itself that does satisfy the parallelogram equality:

$$\|x\| = \sqrt{\langle x, x \rangle}.$$

This is well defined by the nonnegativity axiom of the definition of inner product space. The norm is thought of as the length of the vector . Directly from the axioms, we can prove the following:

by the identity

    $\angle(x, y) = \arccos \frac{\langle x, y \rangle}{\|x\| \, \|y\|}.$

We assume the value of the angle is chosen to be in the interval . This is in analogy to the situation in two-dimensional Euclidean space.

In the case C}}, the angle in the interval is typically defined by

    $\angle(x, y) = \arccos \frac{|\langle x, y \rangle|}{\|x\| \, \|y\|}.$

Correspondingly, we will say that non-zero vectors and of are orthogonal if and only if their inner product is zero. }} , then

    ∥x∥² + ∥y∥² = ∥x + y∥².

The proof of the identity requires only expressing the definition of norm in terms of the inner product and multiplying out, using the property of additivity of each component.

The name _Pythagorean theorem_ arises from the geometric interpretation of this result as an analogue of the theorem in synthetic geometry. Note that the proof of the Pythagorean theorem in synthetic geometry is considerably more elaborate because of the paucity of underlying structure. In this sense, the synthetic Pythagorean theorem, if correctly demonstrated, is deeper than the version given above. }} for distinct indices , , then

    $\sum_{i=1}^n \|x_i\|^2 = \left\|\sum_{i=1}^n x_i \right\|^2.$

In view of the Cauchy-Schwarz inequality, we also note that is continuous from to . This allows us to extend Pythagoras' theorem to infinitely many summands: suppose is a _complete_ inner product space. If are mutually orthogonal vectors in then

    $\sum_{i=1}^\infty\|x_i\|^2 = \left\|\sum_{i=1}^\infty x_i\right\|^2,$

provided the infinite series on the left is convergent. Completeness of the space is needed to ensure that the sequence of partial sums

    $S_k = \sum_{i=1}^k x_i,$

which is easily shown to be a Cauchy sequence, is convergent. }}


Orthonormal sequences

Let be a finite dimensional inner product space of dimension . Recall that every basis of consists of exactly linearly independent vectors. Using the Gram–Schmidt process we may start with an arbitrary basis and transform it into an orthonormal basis. That is, into a basis in which all the elements are orthogonal and have unit norm. In symbols, a basis is orthonormal if 0}} for every and {{=}} 1}} for each .

This definition of orthonormal basis generalizes to the case of infinite-dimensional inner product spaces in the following way. Let be any inner product space. Then a collection

_E_ = {_e__(_α_)}_(_α_ ∈ _A_)

is a _basis_ for if the subspace of generated by finite linear combinations of elements of is dense in (in the norm induced by the inner product). We say that is an _orthonormal basis_ for if it is a basis and

⟨_e__(_α_),_e__(_β_)⟩ = 0

if and {{=}} 1}} for all .

Using an infinite-dimensional analog of the Gram-Schmidt process one may show:

THEOREM. Any separable inner product space has an orthonormal basis.

Using the Hausdorff maximal principle and the fact that in a complete inner product space orthogonal projection onto linear subspaces is well-defined, one may also show that

THEOREM. Any complete inner product space has an orthonormal basis.

The two previous theorems raise the question of whether all inner product spaces have an orthonormal basis. The answer, it turns out is negative. This is a non-trivial result, and is proved below. The following proof is taken from Halmos's _A Hilbert Space Problem Book_ (see the references).

    {| class="toccolours collapsible collapsed" width="90%" style="text-align:left"

!Proof |- | Recall that the dimension of an inner product space is the cardinality of a maximal orthonormal system that it contains (by Zorn's lemma it contains at least one, and any two have the same cardinality). An orthonormal basis is certainly a maximal orthonormal system, but as we shall see, the converse need not hold. Observe that if is a dense subspace of an inner product space , then any orthonormal basis for is automatically an orthonormal basis for . Thus, it suffices to construct an inner product space with a dense subspace whose dimension is strictly smaller than that of .

Let be a Hilbert space of dimension (for instance, _l_(N)}}). Let be an orthonormal basis of , so ℵ₀}}. Extend to a Hamel basis for , where ∅}}. Since it is known that the Hamel dimension of is , the cardinality of the continuum, it must be that _c_}}.

Let be a Hilbert space of dimension (for instance, _l_(R)}}). Let be an orthonormal basis for , and let be a bijection. Then there is a linear transformation such that _φ_( _f_ )}} for , and 0}} for .

Let _K_ ⊕ _L_}} and let {(_k_, _Tk_) : _k_ ∈ _K_)}}} be the graph of . Let be the closure of in ; we will show H}}. Since for any we have , it follows that .

Next, if , then _Tf_}} for some , so ; since as well, we also have . It follows that , so _H_}}, and is dense in .

Finally, is a maximal orthonormal set in ; if

0 = ⟨(_e_, 0), (_k_, _T__k_)⟩ = ⟨_e_, _k_⟩ + ⟨0, _T__k_⟩ = ⟨_e_, _k_⟩

for all then certainly 0}}, so (0, 0)}} is the zero vector in . Hence the dimension of is ℵ₀}}, whereas it is clear that the dimension of is . This completes the proof. |}

Parseval's identity leads immediately to the following theorem:

THEOREM. Let be a separable inner product space and an orthonormal basis of . Then the map

_x_ ↦ {⟨_e__(_k_), _x_⟩}_(_k_ ∈ ℕ)
is an isometric linear map with a dense image.

This theorem can be regarded as an abstract form of Fourier series, in which an arbitrary orthonormal basis plays the role of the sequence of trigonometric polynomials. Note that the underlying index set can be taken to be any countable set (and in fact any set whatsoever, provided is defined appropriately, as is explained in the article Hilbert space). In particular, we obtain the following result in the theory of Fourier series:

THEOREM. Let be the inner product space . Then the sequence (indexed on set of all integers) of continuous functions

$$e_k(t) = \frac{e^{i k t}}{\sqrt{2 \pi}}$$

is an orthonormal basis of the space with the inner product. The mapping

$$f \mapsto \frac{1}{\sqrt{2 \pi}} \left\{\int_{-\pi}^\pi f(t) e^{-i k t} \, \mathrm{d}t \right\}_{k \in \mathbb{Z}}$$

is an isometric linear map with dense image.

Orthogonality of the sequence follows immediately from the fact that if , then

∫_( − _π_)^(_π_)_e_^( − _i_(_j_ − _k_)_t_) _d__t_ = 0.

Normality of the sequence is by design, that is, the coefficients are so chosen so that the norm comes out to 1. Finally the fact that the sequence has a dense algebraic span, in the _inner product norm_, follows from the fact that the sequence has a dense algebraic span, this time in the space of continuous periodic functions on with the uniform norm. This is the content of the Weierstrass theorem on the uniform density of trigonometric polynomials.


Operators on inner product spaces

Several types of linear maps from an inner product space to an inner product space are of relevance:

-   Continuous linear maps, i.e., is linear and continuous with respect to the metric defined above, or equivalently, is linear and the set of non-negative reals for all , in , or equivalently, is linear and }} for all in . All isometries are injective. Isometries are morphisms between inner product spaces, and morphisms of real inner product spaces are orthogonal transformations (compare with orthogonal matrix).
-   Isometrical isomorphisms, i.e., is an isometry which is surjective (and hence bijective). Isometrical isomorphisms are also known as unitary operators (compare with unitary matrix).

From the point of view of inner product space theory, there is no need to distinguish between two spaces which are isometrically isomorphic. The spectral theorem provides a canonical form for symmetric, unitary and more generally normal operators on finite dimensional inner product spaces. A generalization of the spectral theorem holds for continuous normal operators in Hilbert spaces.


Generalizations

Any of the axioms of an inner product may be weakened, yielding generalized notions. The generalizations that are closest to inner products occur where bilinearity and conjugate symmetry are retained, but positive-definiteness is weakened.

Degenerate inner products

If is a vector space and a semi-definite sesquilinear form, then the function:

$$\|x\| = \sqrt{\langle x, x\rangle}$$

makes sense and satisfies all the properties of norm except that 0}} does not imply 0}} (such a functional is then called a semi-norm). We can produce an inner product space by considering the quotient _V_/{_x_ : {{=}} 0}}}. The sesquilinear form factors through .

This construction is used in numerous contexts. The Gelfand–Naimark–Segal construction is a particularly important example of the use of this technique. Another example is the representation of semi-definite kernels on arbitrary sets.

Nondegenerate conjugate symmetric forms

Alternatively, one may require that the pairing be a nondegenerate form, meaning that for all non-zero there exists some such that , though need not equal ; in other words, the induced map to the dual space is injective. This generalization is important in differential geometry: a manifold whose tangent spaces have an inner product is a Riemannian manifold, while if this is related to nondegenerate conjugate symmetric form the manifold is a pseudo-Riemannian manifold. By Sylvester's law of inertia, just as every inner product is similar to the dot product with positive weights on a set of vectors, every nondegenerate conjugate symmetric form is similar to the dot product with _nonzero_ weights on a set of vectors, and the number of positive and negative weights are called respectively the positive index and negative index. Product of vectors in Minkowski space is an example of indefinite inner product, although, technically speaking, it is not an inner product according to the standard definition above. Minkowski space has four dimensions and indices 3 and 1 (assignment of "+" and "−" to them differs depending on conventions).

Purely algebraic statements (ones that do not use positivity) usually only rely on the nondegeneracy (the injective homomorphism ) and thus hold more generally.


Related products

The term "inner product" is opposed to outer product, which is a slightly more general opposite. Simply, in coordinates, the inner product is the product of a _covector_ with an vector, yielding a 1 × 1 matrix (a scalar), while the outer product is the product of an vector with a covector, yielding an matrix. Note that the outer product is defined for different dimensions, while the inner product requires the same dimension. If the dimensions are the same, then the inner product is the _trace_ of the outer product (trace only being properly defined for square matrices). In a quip: "inner is horizontal times vertical and shrinks down, outer is vertical times horizontal and expands out".

More abstractly, the outer product is the bilinear map sending a vector and a covector to a rank 1 linear transformation (simple tensor of type (1, 1)), while the inner product is the bilinear evaluation map given by evaluating a covector on a vector; the order of the domain vector spaces here reflects the covector/vector distinction.

The inner product and outer product should not be confused with the interior product and exterior product, which are instead operations on vector fields and differential forms, or more generally on the exterior algebra.

As a further complication, in geometric algebra the inner product and the _exterior_ (Grassmann) product are combined in the geometric product (the Clifford product in a Clifford algebra) – the inner product sends two vectors (1-vectors) to a scalar (a 0-vector), while the exterior product sends two vectors to a bivector (2-vector) – and in this context the exterior product is usually called the _outer product_ (alternatively, _wedge product_). The inner product is more correctly called a _scalar_ product in this context, as the nondegenerate quadratic form in question need not be positive definite (need not be an inner product).


See also

-   Space (mathematics)
-   Semi-inner-product
-   Normed vector space
-   Energetic space
-   Dual space
-   Biorthogonal system
-   Bilinear form


Notes


References


Sources

-   -   -

Category:Normed spaces Category:Bilinear forms

[1]

[2]

[3]

[4] A bar over an expression denotes complex conjugation; e.g., $\overline{x}$ is the complex conjugation of x. For real values, $x = \overline{x}$ and conjugate symmetry is just symmetry.

[5]

[6] .

[7]

[8]