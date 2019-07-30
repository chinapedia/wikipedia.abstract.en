, these three planes represent solutions of linear equations and their intersection represents the set of common solutions: in this case, a unique point. The blue line is the common solution of a pair of linear equations. ]]

LINEAR ALGEBRA is the branch of mathematics concerning linear equations such as

_a_₁_x_₁ + ⋯ + _a__(_n_)_x__(_n_) = _b_,
linear functions such as

(_x_₁, …, _x__(_n_)) ↦ _a_₁_x_₁ + … + _a__(_n_)_x__(_n_),
and their representations through matrices and vector spaces.[1][2][3]

Linear algebra is central to almost all areas of mathematics. For instance, linear algebra is fundamental in modern presentations of geometry, including for defining basic objects such as lines, planes and rotations. Also, functional analysis may be basically viewed as the application of linear algebra to spaces of functions. Linear algebra is also used in most sciences and engineering areas, because it allows modeling many natural phenomena, and efficiently computing with such models. For nonlinear systems, which cannot be modeled with linear algebra, linear algebra is often used as a first-order approximation.


History

The procedure for solving simultaneous linear equations now called Gaussian elimination appears in the ancient Chinese mathematical text Chapter Eight: _Rectangular Arrays_ of _The Nine Chapters on the Mathematical Art_. Its use is illustrated in eighteen problems, with two to five equations. [4]

Systems of linear equations arose in Europe with the introduction in 1637 by René Descartes of coordinates in geometry. In fact, in this new geometry, now called Cartesian geometry, lines and planes are represented by linear equations, and computing their intersections amounts to solving systems of linear equations.

The first systematic methods for solving linear systems used determinants, first considered by Leibniz in 1693. In 1750, Gabriel Cramer used them for giving explicit solutions of linear systems, now called Cramer's rule. Later, Gauss further described the method of elimination, which was initially listed as an advancement in geodesy.[5]

In 1844 Hermann Grassmann published his "Theory of Extension" which included foundational new topics of what is today called linear algebra. In 1848, James Joseph Sylvester introduced the term _matrix_, which is Latin for _womb_.

Linear algebra grew with ideas noted in the complex plane. For instance, two numbers _w_ and _z_ in ℂ have a difference _w_ – _z_, and the line segments $\overline{w z} \ \ \text{and}\ \  \overline{0(w-z)}$ are of the same length and direction. The segments are equipollent. The four-dimensional system ℍ of quaternions was started in 1843. The term _vector_ was introduced as _v_ = _x_ i + _y_ j + _z_ k representing a point in space. The quaternion difference _p_ – _q_ also produces a segment equipollent to $\overline{p q} .$ Other hypercomplex number systems also used the idea of a linear space with a basis.

Arthur Cayley introduced matrix multiplication and the inverse matrix in 1856, making possible the general linear group. The mechanism of group representation became available for describing complex and hypercomplex numbers. Crucially, Cayley used a single letter to denote a matrix, thus treating a matrix as an aggregate object. He also realized the connection between matrices and determinants, and wrote "There would be many things to say about this theory of matrices which should, it seems to me, precede the theory of determinants".[6]

Benjamin Peirce published his _Linear Associative Algebra_ (1872), and his son Charles Sanders Peirce extended the work later.[7]

The telegraph required an explanatory system, and the 1873 publication of A Treatise on Electricity and Magnetism instituted a field theory of forces and required differential geometry for expression. Linear algebra is flat differential geometry and serves in tangent spaces to manifolds. Electromagnetic symmetries of spacetime are expressed by the Lorentz transformations, and much of the history of linear algebra is the history of Lorentz transformations.

The first modern and more precise definition of a vector space was introduced by Peano in 1888;[8] by 1900, a theory of linear transformations of finite-dimensional vector spaces had emerged. Linear algebra took its modern form in the first half of the twentieth century, when many ideas and methods of previous centuries were generalized as abstract algebra. The development of computers led to increased research in efficient algorithms for Gaussian elimination and matrix decompositions, and linear algebra became an essential tool for modelling and simulations.[9]

See also and .


Vector spaces

Until the 19th century, linear algebra was introduced through systems of linear equations and matrices. In modern mathematics, the presentation through _vector spaces_ is generally preferred, since it is more synthetic, more general (not limited to the finite-dimensional case), and conceptually simpler, although more abstract.

A vector space over a field (often the field of the real numbers) is a set equipped with two binary operations satisfying the following axioms. Elements of are called _vectors_, and elements of _F_ are called _scalars_. The first operation, _vector addition_, takes any two vectors and and outputs a third vector . The second operation, _scalar multiplication_, takes any scalar and any vector and outputs a new . The axioms that addition and scalar multiplication must satisfy are the following. (In the list below, and are arbitrary elements of , and and are arbitrary scalars in the field .)[10]

+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| AXIOM                                                                     | SIGNIFICATION                                                                                    |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Associativity of addition                                                 |                                                                                                  |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Commutativity of addition                                                 |                                                                                                  |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Identity element of addition                                              | There exists an element in , called the _zero vector_ (or simply _zero_), such that for all in . |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Inverse elements of addition                                              | For every in , there exists an element in , called the _additive inverse_ of , such that         |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Distributivity of scalar multiplication with respect to vector addition   |                                                                                                  |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Distributivity of scalar multiplication with respect to field addition    |                                                                                                  |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Compatibility of scalar multiplication with field multiplication          | [11]                                                                                             |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Identity element of scalar multiplication                                 | , where denotes the multiplicative identity of .                                                 |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+

The first four axioms mean that is an abelian group under addition.

Elements of a vector space may have various nature; for example, they can be sequences, functions, polynomials or matrices. Linear algebra is concerned with properties common to all vector spaces.

Linear maps

LINEAR MAPS are mappings between vector spaces that preserve the vector-space structure. Given two vector spaces and over a field , a linear map (also called, in some contexts, linear transformation, linear mapping or linear operator) is a map

    T : V → W

that is compatible with addition and scalar multiplication, that is

    T(u + v) = T(u) + T(v), T(av) = aT(v)

for any vectors in and scalar in .

This implies that for any vectors in and scalars in , one has

    T(au + bv) = T(au) + T(bv) = aT(u) + bT(v)

When a bijective linear map exists between two vector spaces (that is, every vector from the second space is associated with exactly one in the first), the two spaces are isomorphic. Because an isomorphism preserves linear structure, two isomorphic vector spaces are "essentially the same" from the linear algebra point of view, in the sense that they cannot be distinguished by using vector space properties. An essential question in linear algebra is testing whether a linear map is an isomorphism or not, and, if it is not an isomorphism, finding its range (or image) and the set of elements that are mapped to the zero vector, called the kernel of the map. All these questions can be solved by using Gaussian elimination or some variant of this algorithm.

Subspaces, span, and basis

The study of subsets of vector spaces that are themselves vector spaces for the induced operations is fundamental, similarly as for many mathematical structures. These subsets are called linear subspaces. More precisely, a linear subspace of a vector space over a field is a subset of such that and are in , for every , in , and every in . (These conditions suffices for implying that is a vector space.)

For example, the image of a linear map, and the inverse image of 0 by a linear map (called kernel or null space) are linear subspaces.

Another important way of forming a subspace is to consider linear combinations of a set of vectors: the set of all sums

    a₁v₁ + a₂v₂ + ⋯ + a_(k)v_(k),

where are in , and are in form a linear subspace called the span of . The span of is also the intersection of all linear subspaces containing . In other words, it is the (smallest for the inclusion relation) linear subspace containing .

A set of vectors is linearly independent if none is in the span of the others. Equivalently, a set of vector is linearly independent if the only way to express the zero vector as a linear combination of elements of is to take zero for every coefficient a_(i).

A set of vectors that spans a vector space is called a spanning set or generating set. If a spanning set is _linearly dependent_ (that is not linearly independent), then some element of is in the span of the other elements of , and the span would remain the same if one remove from . One may continue to remove elements of until getting a _linearly independent spanning set_. Such a linearly independent set that spans a vector space is called a basis of . The importance of bases lies in the fact that there are together minimal generating sets and maximal independent sets. More precisely, if is a linearly independent set, and is a spanning set such that S ⊆ T, then there is a basis such that S ⊆ B ⊆ T.

Any two bases of a vector space have the same cardinality, which is called the dimension of ; this is the dimension theorem for vector spaces. Moreover, two vector spaces over the same field are isomorphic if and only if they have the same dimension.[12]

If any basis of (and therefore every basis) has a finite number of elements, is a _finite-dimensional vector space_. If is a subspace of , then . In the case where is finite-dimensional, the equality of the dimensions implies .

If _U_₁ and _U_₂ are subspaces of _V_, then

dim (_U_₁ + _U_₂) = dim _U_₁ + dim _U_₂ − dim (_U_₁ ∩ _U_₂),
where U₁ + U₂denotes the span of U₁ ∪ U₂.[13]


Matrices

Matrices allow explicit manipulation of finite-dimensional vector spaces and linear maps. Their theory is thus an essential part of linear algebra.

Let be a finite-dimensional vector space over a field , and be a basis of (thus is the dimension of ). By definition of a basis, the map

$$\begin{align}
(a_1, \ldots, a_m)&\mapsto a_1v_1+\cdots a_mv_m\\
F^m &\to V
\end{align}$$
is a bijection from F^(m), the set of the sequences of elements of , onto . This is an isomorphism of vector spaces, if F^(m) is equipped of its standard structure of vector space, where vector addition and scalar multiplication are done component by component.

This isomorphism allows representing a vector by its inverse image under this isomorphism, that is by the coordinates vector (a₁, …, a_(m)) or by the column matrix

$$\begin{bmatrix}a_1\\\vdots\\a_m\end{bmatrix}.$$

If is another finite dimensional vector space (possibly the same), with a basis (w₁, …, w_(n)), a linear map from to is well defined by its values on the basis elements, that is (f(w₁), …, f(w_(n))). Thus, is well represented by the list of the corresponding column matrices. That is, if

_f_(_w__(_j_)) = _a__(1, _j_)_v_₁ + ⋯ + _a__(_m_, _j_)_v__(_m_),
for , then is represented by the matrix

$$\begin{bmatrix}a_{1,1}&\ldots&a_{1,n}\\
\vdots&\ldots&\vdots\\
a_{m,1}&\ldots&a_{m,n}\end{bmatrix},$$
with rows and columns.

Matrix multiplication is defined in such a way that the product of two matrices is the matrix of the composition of the corresponding linear maps, and the product of a matrix and a column matrix is the column matrix representing the result of applying the represented linear map to the represented vector. It follows that the theory of finite-dimensional vector spaces and the theory of matrices are two different languages for expressing exactly the same concepts.

Two matrices that encode the same linear transformation in different bases are called similar. Equivalently, two matrices are similar if one can transform one in the other by elementary row and column operations. For a matrix representing a linear map from to , the row operations correspond to change of bases in and the column operations correspond to change of bases in . Every matrix is similar to an identity matrix possibly bordered by zero rows and zero columns. In terms of vector space, this means that, for any linear map from to , there are bases such that a part of the basis of is mapped bijectively on a part of the basis of , and that the remaining basis elements of , if any, are mapped to zero (this is a way of expressing the fundamental theorem of linear algebra). Gaussian elimination is the basic algorithm for finding these elementary operations, and proving this theorem.


Linear systems

Systems of linear equations form a fundamental part of linear algebra. Historically, linear algebra and matrix theory has been developed for solving such systems. In the modern presentation of linear algebra through vector spaces and matrices, many problems may be interpreted in terms of linear systems.

For example, let

$$\begin{alignat}{7}
2x &&\; + \;&& y             &&\; - \;&& z  &&\; = \;&& 8  \\
-3x &&\; - \;&& y             &&\; + \;&& 2z &&\; = \;&& -11 \\
-2x &&\; + \;&& y &&\; +\;&& 2z  &&\; = \;&& -3
\end{alignat}\qquad \text{(S)}$$
be a linear system.

To such a system, one may associate its matrix

$$M\left[\begin{array}{rrr}
2 & 1 & -1\\
-3 & -1 & 2  \\
-2 & 1 & 2
\end{array}\right]\text{.}$$
and its right member vector

$$v=\begin{bmatrix}
8\\-11\\-3
\end{bmatrix}.$$

Let be the linear transformation associated to the matrix . A solution of the system is a vector

$$X=\begin{bmatrix}
x\\y\\z
\end{bmatrix}$$
such that

_T_(_X_) = _v_,
that is an element of the preimage of by .

Let be the associated homogeneous system, where the right-hand sides of the equations are put to zero. The solutions of are exactly the elements of the kernel of or, equivalently, .

The Gaussian-elimination consists of performing elementary row operations on the augmented matrix

$$M\left[\begin{array}{rrr|r}
2 & 1 & -1&8\\
-3 & -1 & 2&-11  \\
-2 & 1 & 2&-3
\end{array}\right]$$
for putting it in reduced row echelon form. These row operations do not change the set of solutions of the system of equations. In the example, the reduced echelon form is

$$M\left[\begin{array}{rrr|r}
1 & 0 & 0&2\\
0 & 1 & 0&3  \\
0 & 0 & 1&-1
\end{array}\right],$$
showing that the system has the unique solution

$$\begin{align}x&=2\\y&=3\\z&=-1.\end{align}$$

It follows from this matrix interpretation of linear systems that the same methods can be applied for solving linear systems and for many operations on matrices and linear transformations, which include the computation of the ranks, kernels, matrix inverses.


Endomorphisms and square matrices

A linear endomorphism is a linear map that maps a vector space to itself. If has a basis of elements, such an endomorphism is represented by a square matrix of size .

With respect to general linear maps, linear endomorphisms and square matrices have some specific properties that make their study an important part of linear algebra, which is used in many parts of mathematics, including geometric transformations, coordinate changes, quadratic forms, and many other part of mathematics.

Determinant

The _determinant_ of a square matrix is a polynomial function of the entries of the matrix, such that the matrix is invertible if and only if the determinant is not zero. This results from the fact that the determinant of a product of matrices is the product of the determinants, and thus that a matrix is invertible if and only if its determinant is invertible.

Cramer's rule is a closed-form expression, in terms of determinants, of the solution of a system of {{mvar. Cramer's rule is useful for reasoning about the solution, but, except for or , it is rarely used for computing a solution, since Gaussian elimination is a faster algorithm.

The _determinant of an endomorphism_ is the determinant of the matrix representing the endomorphism in terms of some ordered basis. This definition makes sense, since this determinant is independent of the choice of the basis.

Eigenvalues and eigenvectors

If is a linear endomorphism of a vector space over a field , an _eigenvector_ of is a nonzero vector of such that for some scalar in . This scalar is an _eigenvalue_ of .

If the dimension of is finite, and a basis has been chosen, and may be represented, respectively, by a square matrix and a column matrix ; the equation defining eigenvectors and eigenvalues becomes

_M__z_ = _a__z_.
Using the identity matrix , whose entries are all zero, except those of the main diagonal, which are equal to one, this may be rewritten

(_M_ − _a__I_)_z_ = 0.
As is supposed to be nonzero, this means that is a singular matrix, and thus that its determinant det (M − aI) equals zero. The eigenvalues are thus the roots of the polynomial

det (_x__I_ − _M_).
If is of dimension , this is a monic polynomial of degree , called the characteristic polynomial of the matrix (or of the endomorphism), and there are, at most, eigenvalues.

If a basis exists that consists only of eigenvectors, the matrix of on this basis has a very simple structure: it is a diagonal matrix such that the entries on the main diagonal are eigenvalues, and the other entries are zero. In this case, the endomorphism and the matrix are said diagonalizable. More generally, an endomorphism and a matrix are also said diagonalizable, if they become diagonalizable after extending the field of scalars. In this extended sense, if the characteristic polynomial is square-free, then the matrix is diagonalizable.

A symmetric matrix is always diagonalizable. There are non-diagonalizable matrices, the simplest being

$$\begin{bmatrix}0&1\\0&0\end{bmatrix}$$
(it cannot be diagonalizable since its square is the zero matrix, and the square of a nonzero diagonal matrix is never zero).

When an endomorphism is not diagonalizable, there are bases on which it has a simple form, although not as simple as the diagonal form. The Frobenius normal form does not need of extending the field of scalars and makes the characteristic polynomial immediately readable on the matrix. The Jordan normal form requires to extend the field of scalar for containing all eigenvalues, and differs from the diagonal form only by some entries that are just above the main diagonal and are equal to 1.


Duality

A linear form is a linear map from a vector space over a field to the field of scalars , viewed as a vector space over itself. Equipped by pointwise addition and multiplication by a scalar, the linear forms form a vector space, called the DUAL SPACE of , and usually denoted V^(*).

If v₁, …, v_(n) is a basis of (this implies that is finite-dimensional), then one can define, for , a linear map v_(i)^(*) such that v_(i)^(*)(e_(i)) = 1 and v_(i)^(*)(e_(j)) = 0 if . These linear maps form a basis of V^(*), called the dual basis of v₁, …, v_(n). (If is not finite-dimensional, the v_(i)^(*) may be defined similarly; they are linearly independent, but do not form a basis.)

For in , the map

_f_ → _f_(_v_)
is a linear form on V^(*). This defines the canonical linear map from into V^( * *), the dual of V^(*), called the BIDUAL of . This canonical map is an isomorphism if is finite-dimensional, and this allows identifying with its bidual. (In the infinite dimensional case, the canonical map is injective, but not surjective.)

There is thus a complete symmetry between a finite-dimensional vector space and its dual. This motivates the frequent use, in this context, of the bra–ket notation

⟨_f_, _x_⟩
for denoting .

Dual map

Let

_f_ : _V_ → _W_
be a linear map. For every linear form on , the composite function is a linear form on . This defines a linear map

_f_^(*) : _W_^(*) → _V_^(*)
between the dual spaces, which is called the DUAL or the TRANSPOSE of .

If and are finite dimensional, and is the matrix of in terms of some ordered bases, then the matrix of f^(*) over the dual bases is the transpose M^(T) of , obtained by exchanging rows and columns.

If elements of vector spaces and their duals are represented by column vectors, this duality may be expressed in bra–ket notation by

⟨_h_^(T), _M__v_⟩ = ⟨_h_^(T)_M_, _v_⟩.
For highlighting this symmetry, the two members of this equality are sometimes written

⟨_h_^(T) ∣ _M_ ∣ _v_⟩.

Inner-product spaces

Besides these basic concepts, linear algebra also studies vector spaces with additional structure, such as an inner product. The inner product is an example of a bilinear form, and it gives the vector space a geometric structure by allowing for the definition of length and angles. Formally, an _inner product_ is a map

⟨⋅, ⋅ ⟩ : _V_ × _V_ → _F_

that satisfies the following three axioms for all vectors _u_, _v_, _w_ in _V_ and all scalars _a_ in _F_:[14][15]

-   Conjugate symmetry:

$$\langle u,v\rangle =\overline{\langle v,u\rangle}.$$
Note that in R, it is symmetric.

-   Linearity in the first argument:

⟨_a__u_, _v_⟩ = _a_⟨_u_, _v_⟩.

⟨_u_ + _v_, _w_⟩ = ⟨_u_, _w_⟩ + ⟨_v_, _w_⟩.

-   Positive-definiteness:

⟨_v_, _v_⟩ ≥ 0
with equality only for _v_ = 0.

We can define the length of a vector _v_ in _V_ by

∥_v_∥² = ⟨_v_, _v_⟩,
and we can prove the Cauchy–Schwarz inequality:

|⟨_u_, _v_⟩| ≤ ∥_u_∥ ⋅ ∥_v_∥.

In particular, the quantity

$$\frac{|\langle u,v\rangle|}{\|u\| \cdot \|v\|} \leq 1,$$
and so we can call this quantity the cosine of the angle between the two vectors.

Two vectors are orthogonal if ⟨u, v⟩ = 0. An orthonormal basis is a basis where all basis vectors have length 1 and are orthogonal to each other. Given any finite-dimensional vector space, an orthonormal basis could be found by the Gram–Schmidt procedure. Orthonormal bases are particularly easy to deal with, since if _v_ = _a_₁ _v_₁ + ... + _a_(n) v_(n)_, then a_(i) = ⟨v, v_(i)⟩.

The inner product facilitates the construction of many useful concepts. For instance, given a transform _T_, we can define its Hermitian conjugate _T*_ as the linear transform satisfying

⟨_T__u_, _v_⟩ = ⟨_u_, _T_^(*)_v_⟩.
If _T_ satisfies _TT*_ = _T*T_, we call _T_ normal. It turns out that normal matrices are precisely the matrices that have an orthonormal system of eigenvectors that span _V_.


Relationship with geometry

There is a strong relationship between linear algebra and geometry, which started with the introduction by René Descartes, in 1637, of Cartesian coordinates. In this new (at that time) geometry, now called Cartesian geometry, points are represented by Cartesian coordinates, which are sequences of three real numbers (in the case of the usual three-dimensional space). The basic objects of geometry, which are lines and planes are represented by linear equations. Thus, computing intersections of lines and planes amounts to solving systems of linear equations. This was one of the main motivations for developing linear algebra.

Most geometric transformation, such as translations, rotations, reflections, rigid motions, isometries, and projections transform lines into lines. It follows that they can be defined, specified and studied in terms of linear maps. This is also the case of homographies and Möbius transformations, when considered as transformations of a projective space.

Until the end of 19th century, geometric spaces were defined by axioms relating points, lines and planes (synthetic geometry). Around this date, it appeared that one may also define geometric spaces by constructions involving vector spaces (see, for example, Projective space and Affine space) It has been shown that the two approaches are essentially equivalent.[16] In classical geometry, the involved vector spaces are vector spaces over the reals, but the constructions may be extended to vector spaces over any field, allowing considering geometry over arbitrary fields, including finite fields.

Presently, most textbooks, introduce geometric spaces from linear algebra, and geometry is often presented, at elementary level, as a subfield of linear algebra.


Usage and applications

Linear algebra is used in almost all areas of mathematics, thus making it relevant in almost all scientific domains that use mathematics. These applications may be divided into several wide categories.

Geometry of our ambient space

The modeling of our ambient space is based on geometry. Sciences concerned with this space use geometry widely. This is the case with mechanics and robotics, for describing rigid body dynamics; geodesy for describing Earth shape; perspectivity, computer vision, and computer graphics, for describing the relationship between a scene and its plane representation; and many other scientific domains.

In all these applications, synthetic geometry is often used for general descriptions and a qualitative approach, but for the study of explicit situations, one must compute with coordinates. This requires the heavy use of linear algebra.

Functional analysis

Functional analysis studies function spaces. These are vector spaces with additional structure, such as Hilbert spaces. Linear algebra is thus a fundamental part of functional analysis and its applications, which include, in particular, quantum mechanics (wave functions).

Study of complex systems

Most physical phenomena are modeled by partial differential equations. To solve them, one usually decomposes the space in which the solutions are searched into small, mutually interacting cells. For linear systems this interaction involves linear functions. For nonlinear systems, this interaction is often approximated by linear functions.[17] In both cases, very large matrices are generally involved. Weather forecasting is a typical example, where the whole Earth atmosphere is divided in cells of, say, 100 km of width and 100 m of height.

Scientific computation

Nearly all scientific computations involve linear algebra. Consequently, linear algebra algorithms have been highly optimized. BLAS and LAPACK are the best known implementations. For improving efficiency, some of them configure the algorithms automatically, at run time, for adapting them to the specificities of the computer (cache size, number of available cores, ...).

Some processors, typically graphics processing units (GPU), are designed with a matrix structure, for optimizing the operations of linear algebra.


Extensions and generalizations

This section presents several related topics that do not appear generally in elementary textbooks on linear algebra, but are commonly considered, in advanced mathematics, as parts of linear algebra.

Module theory

The existence of multiplicative inverses in fields is not involved in the axioms defining a vector space. One may thus replace the field of scalars by a ring , and this gives a structure called MODULE over , or -module.

The concepts of linear independence, span, basis, and linear maps (also called module homomorphisms) are defined for modules exactly as for vector spaces, with the essential difference that, if is not a field, there are modules that do not have any basis. The modules that have a basis are the free modules, and those that are spanned by a finite set are the finitely generated modules. Module homomorphisms between finitely generated free modules may be represented by matrices. The theory of matrices over a ring is similar to that of matrices over a field, except that determinants exist only if the ring is commutative, and that a square matrix over a commutative ring is invertible only if its determinant has a multiplicative inverse in the ring.

Vector spaces are completely characterized by their dimension (up to an isomorphism). In general, there is not such a complete classification for modules, even if one restricts oneself to finitely generated modules. However, every module is a cokernel of a homomorphism of free modules.

Modules over the integers can be identified with abelian groups, since the multiplication by an integer may identified to a repeated addition. Most of the theory of abelian groups may be extended to modules over a principal ideal domain. In particular, over a principal ideal domain, every submodule of a free module is free, and the fundamental theorem of finitely generated abelian groups may be extended straightforwardly to finitely generated modules over a principal ring.

There are many rings for which there are algorithms for solving linear equations and systems of linear equations. However, these algorithms have generally a computational complexity that is much higher than the similar algorithms over a field. For more details, see Linear equation over a ring.

Multilinear algebra and tensors

In multilinear algebra, one considers multivariable linear transformations, that is, mappings that are linear in each of a number of different variables. This line of inquiry naturally leads to the idea of the dual space, the vector space _V_^(∗) consisting of linear maps where _F_ is the field of scalars. Multilinear maps can be described via tensor products of elements of _V_^(∗).

If, in addition to vector addition and scalar multiplication, there is a bilinear vector product , the vector space is called an algebra; for instance, associative algebras are algebras with an associate vector product (like the algebra of square matrices, or the algebra of polynomials).

Topological vector spaces

Vector spaces that are not finite dimensional often require additional structure to be tractable. A normed vector space is a vector space along with a function called a norm, which measures the "size" of elements. The norm induces a metric, which measures the distance between elements, and induces a topology, which allows for a definition of continuous maps. The metric also allows for a definition of limits and completeness - a metric space that is complete is known as a Banach space. A complete metric space along with the additional structure of an inner product (a conjugate symmetric sesquilinear form) is known as a Hilbert space, which is in some sense a particularly well-behaved Banach space. Functional analysis applies the methods of linear algebra alongside those of mathematical analysis to study various function spaces; the central objects of study in functional analysis are L^(_p_) spaces, which are Banach spaces, and especially the _L²_ space of square integrable functions, which is the only Hilbert space among them. Functional analysis is of particular importance to quantum mechanics, the theory of partial differential equations, digital signal processing, and electrical engineering. It also provides the foundation and theoretical framework that underlies the Fourier transform and related methods.

Homological algebra


See also

-   -   Linear equation over a ring
-   Fundamental matrix in computer vision
-   Linear regression, a statistical estimation method
-   List of linear algebra topics
-   Numerical linear algebra
-   Linear programming
-   Transformation matrix


Notes


Further reading

History

-   Fearnley-Sander, Desmond, "Hermann Grassmann and the Creation of Linear Algebra", American Mathematical Monthly 86 (1979), pp. 809–817.
-

Introductory textbooks

-   -   -   -   -   -   -   -   -   Murty, Katta G. (2014) _Computational and Algorithmic Linear Algebra and n-Dimensional Geometry_, World Scientific Publishing, . _Chapter 1: Systems of Simultaneous Linear Equations_
-   -   -   -   -   The Manga Guide to Linear Algebra (2012), by Shin Takahashi, Iroha Inoue and Trend-Pro Co., Ltd.,

Advanced textbooks

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -

Study guides and outlines

-   -   -   -   -


External links

Online Resources

-   MIT Linear Algebra Video Lectures, a series of 34 recorded lectures by professor Gilbert Strang (Spring 2010)
-   International Linear Algebra Society
-   -   Linear Algebra on MathWorld.
-   Matrix and Linear Algebra Terms on Earliest Known Uses of Some of the Words of Mathematics
-   Earliest Uses of Symbols for Matrices and Vectors on Earliest Uses of Various Mathematical Symbols
-   Essence of linear algebra, a video presentation of the basics of linear algebra, with emphasis on the relationship between the geometric, the matrix and the abstract points of view

Online books

-   Beezer, Rob, _A First Course in Linear Algebra_
-   Connell, Edwin H., _Elements of Abstract and Linear Algebra_
-   Hefferon, Jim, _Linear Algebra_
-   Matthews, Keith, _Elementary Linear Algebra_
-   Sharipov, Ruslan, _Course of linear algebra and multidimensional geometry_
-   Treil, Sergei, _Linear Algebra Done Wrong_

Linear_algebra Category:Numerical analysis

[1]

[2]

[3]

[4]

[5]

[6]

[7] Benjamin Peirce (1872) _Linear Associative Algebra_, lithograph, new edition with corrections, notes, and an added 1875 paper by Peirce, plus notes by his son Charles Sanders Peirce, published in the _American Journal of Mathematics_ v. 4, 1881, Johns Hopkins University, pp. 221–226, _Google_ Eprint and as an extract, D. Van Nostrand, 1882, _Google_ Eprint.

[8]

[9]

[10]

[11] This axiom is not asserting the associativity of an operation, since there are two operations in question, scalar multiplication: _bv_; and field multiplication: _ab_.

[12] Axler (2004), p. 55

[13] Axler (2204), p. 33

[14]

[15]

[16] Emil Artin (1957) _Geometric Algebra_ Interscience Publishers

[17] This may have the consequence that some physically interesting solutions are omitted.