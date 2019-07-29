In linear algebra, the RANK of a matrix A is the dimension of the vector space generated (or spanned) by its columns.[1] This corresponds to the maximal number of linearly independent columns of A. This, in turn, is identical to the dimension of the space spanned by its rows.[2] Rank is thus a measure of the "nondegenerateness" of the system of linear equations and linear transformation encoded by A. There are multiple equivalent definitions of rank. A matrix's rank is one of its most fundamental characteristics.

The rank is commonly denoted by rank (A) or rk (A); sometimes the parentheses are not written, as in rank A.


Main definitions

In this section, we give some definitions of the rank of a matrix. Many definitions are possible; see Alternative definitions for several of these.

The COLUMN RANK of A is the dimension of the column space of A, while the ROW RANK of A is the dimension of the row space of A.

A fundamental result in linear algebra is that the column rank and the row rank are always equal. (Two proofs of this result are given in Proofs that column rank = row rank below.) This number (i.e., the number of linearly independent rows or columns) is simply called the RANK of A.

A matrix is said to have FULL RANK if its rank equals the largest possible for a matrix of the same dimensions, which is the lesser of the number of rows and columns. A matrix is said to be RANK DEFICIENT if it does not have full rank.

The rank is also the dimension of the image of the linear transformation that is given by multiplication by _A_. More generally, if a linear operator on a vector space (possibly infinite-dimensional) has finite-dimensional image (e.g., a finite-rank operator), then the rank of the operator is defined as the dimension of the image.


Examples

The matrix

$$\begin{bmatrix}1&0&1\\-2&-3&1\\3&3&0\end{bmatrix}$$

has rank 2: the first two columns are linearly independent, so the rank is at least 2, but since the third is a linear combination of the first two (the second subtracted from the first), the three columns are linearly dependent so the rank must be less than 3.

The matrix

$$A=\begin{bmatrix}1&1&0&2\\-1&-1&0&-2\end{bmatrix}$$

has rank 1: there are nonzero columns, so the rank is positive, but any pair of columns is linearly dependent. Similarly, the transpose

$$A^{\mathrm T} = \begin{bmatrix}1&-1\\1&-1\\0&0\\2&-2\end{bmatrix}$$

of A has rank 1. Indeed, since the column vectors of A are the row vectors of the transpose of A, the statement that the column rank of a matrix equals its row rank is equivalent to the statement that the rank of a matrix is equal to the rank of its transpose, i.e.,rank (A) = rank (A^(T)).


Computing the rank of a matrix

Rank from row echelon forms

A common approach to finding the rank of a matrix is to reduce it to a simpler form, generally row echelon form, by elementary row operations. Row operations do not change the row space (hence do not change the row rank), and, being invertible, map the column space to an isomorphic space (hence do not change the column rank). Once in row echelon form, the rank is clearly the same for both row rank and column rank, and equals the number of pivots (or basic columns) and also the number of non-zero rows.

For example, the matrix A given by

$$A=\begin{bmatrix}1&2&1\\-2&-3&1\\3&5&0\end{bmatrix}$$
can be put in reduced row-echelon form by using the following elementary row operations:

$$\begin{bmatrix}1&2&1\\-2&-3&1\\3&5&0\end{bmatrix}R_2\rightarrow 2r_1 + r_2 \begin{bmatrix}1&2&1\\0&1&3\\3&5&0\end{bmatrix} R_3 \rightarrow -3r_1 + r_3 \begin{bmatrix}1&2&1\\0&1&3\\0&-1&-3\end{bmatrix} R_3 \rightarrow r_2 + r_3 \begin{bmatrix}1&2&1\\0&1&3\\0&0&0\end{bmatrix} R_1 \rightarrow -2r_2 + r_1 \begin{bmatrix}1&0&-5\\0&1&3\\0&0&0\end{bmatrix}$$
. The final matrix (in row echelon form) has two non-zero rows and thus the rank of matrix A is 2.

Computation

When applied to floating point computations on computers, basic Gaussian elimination (LU decomposition) can be unreliable, and a rank-revealing decomposition should be used instead. An effective alternative is the singular value decomposition (SVD), but there are other less expensive choices, such as QR decomposition with pivoting (so-called rank-revealing QR factorization), which are still more numerically robust than Gaussian elimination. Numerical determination of rank requires a criterion for deciding when a value, such as a singular value from the SVD, should be treated as zero, a practical choice which depends on both the matrix and the application.

== Proofs that column rank = row rank == The fact that the column and row ranks of any matrix are equal forms an important part of the fundamental theorem of linear algebra. We present two proofs of this result. The first is short, uses only basic properties of linear combinations of vectors, and is valid over any field. The proof is based upon Wardlaw (2005).[3] The second is an elegant argument using orthogonality and is valid for matrices over the real numbers; it is based upon Mackiw (1995).[4] Both proofs can be found in the book by Banerjee and Roy (2014).[5]

First proof

Let _A_ be a matrix of size _m × n_ (with _m_ rows and _n_ columns). Let the column rank of _A_ be _r_ and let _c₁_,...,_c_(r)_ be any basis for the column space of _A_. Place these as the columns of an _m × r_ matrix _C_. Every column of _A_ can be expressed as a linear combination of the _r_ columns in _C_. This means that there is an _r × n_ matrix _R_ such that _A = CR_. _R_ is the matrix whose _i_-th column is formed from the coefficients giving the _i_-th column of _A_ as a linear combination of the _r_ columns of _C_. Now, each row of _A_ is given by a linear combination of the _r_ rows of _R_. Therefore, the rows of _R_ form a spanning set of the row space of _A_ and, by the Steinitz exchange lemma, the row rank of _A_ cannot exceed _r_. This proves that the row rank of _A_ is less than or equal to the column rank of _A_. This result can be applied to any matrix, so apply the result to the transpose of _A_. Since the row rank of the transpose of _A_ is the column rank of _A_ and the column rank of the transpose of _A_ is the row rank of _A_, this establishes the reverse inequality and we obtain the equality of the row rank and the column rank of _A_. (Also see rank factorization.)

Second proof

Let _A_ be an _m_ × _n_ matrix with entries in the real numbers whose row rank is _r_. Therefore, the dimension of the row space of _A_ is _r_. Let x₁, x₂, …, x_(r) be a basis of the row space of _A_. We claim that the vectors Ax₁, Ax₂, …, Ax_(r) are linearly independent. To see why, consider a linear homogeneous relation involving these vectors with scalar coefficients c₁, c₂, …, c_(r):

0 = _c_₁_A__x_₁ + _c_₂_A__x_₂ + ⋯ + _c__(_r_)_A__x__(_r_) = _A_(_c_₁_x_₁ + _c_₂_x_₂ + ⋯ + _c__(_r_)_x__(_r_)) = _A__v_,
where v = c₁x₁ + c₂x₂ + ⋯ + c_(r)x_(r). We make two observations: (a) _v_ is a linear combination of vectors in the row space of _A_, which implies that _v_ belongs to the row space of _A_, and (b) since _A_ _v_ = 0, the vector _v_ is orthogonal to every row vector of _A_ and, hence, is orthogonal to every vector in the row space of _A_. The facts (a) and (b) together imply that _v_ is orthogonal to itself, which proves that _v_ = 0 or, by the definition of _v_,

_c_₁_x_₁ + _c_₂_x_₂ + ⋯ + _c__(_r_)_x__(_r_) = 0.
But recall that the x_(i) were chosen as a basis of the row space of _A_ and so are linearly independent. This implies that c₁ = c₂ = ⋯ = c_(r) = 0. It follows that Ax₁, Ax₂, …, Ax_(r) are linearly independent.

Now, each Ax_(i) is obviously a vector in the column space of _A_. So, Ax₁, Ax₂, …, Ax_(r) is a set of _r_ linearly independent vectors in the column space of _A_ and, hence, the dimension of the column space of _A_ (i.e., the column rank of _A_) must be at least as big as _r_. This proves that row rank of _A_ is no larger than the column rank of _A_. Now apply this result to the transpose of _A_ to get the reverse inequality and conclude as in the previous proof.


Alternative definitions

In all the definitions in this section, the matrix _A_ is taken to be an _m_ × _n_ matrix over an arbitrary field _F_.

Dimension of image:

Given the matrix A, there is an associated linear mapping

_f_ : _F_^(_n_) ↦ _F_^(_m_)
defined by

_f_(_x_) = _A__x_
. The rank of A is the dimension of the image of f. This definition has the advantage that it can be applied to any linear map without need for a specific matrix.

Rank in terms of nullity:

Given the same linear mapping _f_ as above, the rank is _n_ minus the dimension of the kernel of _f_. The rank–nullity theorem states that this definition is equivalent to the preceding one.

Column rank – dimension of column space:

The rank of _A_ is the maximal number of linearly independent columns c₁, c₂, …, c_(k) of _A_; this is the dimension of the column space of _A_ (the column space being the subspace of _F_^(_m_) generated by the columns of _A_, which is in fact just the image of the linear map _f_ associated to _A_).

Row rank – dimension of row space:

The rank of _A_ is the maximal number of linearly independent rows of _A_; this is the dimension of the row space of _A_.

Decomposition rank:

The rank of _A_ is the smallest integer _k_ such that _A_ can be factored as A = CR, where _C_ is an _m_ × _k_ matrix and _R_ is a _k_ × _n_ matrix. In fact, for all integers _k_, the following are equivalent:

1.  the column rank of _A_ is less than or equal to _k_,
2.  there exist _k_ columns c₁, …, c_(k) of size _m_ such that every column of _A_ is a linear combination of c₁, …, c_(k),
3.  there exist an m × k matrix _C_ and a k × n matrix _R_ such that A = CR (when _k_ is the rank, this is a rank factorization of _A_),
4.  there exist _k_ rows r₁, …, r_(k) of size _n_ such that every row of _A_ is a linear combination of r₁, …, r_(k),
5.  the row rank of _A_ is less than or equal to _k_.

Indeed, the following equivalences are obvious: (1) ⇔ (2) ⇔ (3) ⇔ (4) ⇔ (5). For example, to prove (3) from (2), take _C_ to be the matrix whose columns are c₁, …, c_(k) from (2). To prove (2) from (3), take c₁, …, c_(k) to be the columns of _C_.

It follows from the equivalence (1) ⇔ (5) that the row rank is equal to the column rank.

As in the case of the "dimension of image" characterization, this can be generalized to a definition of the rank of any linear map: the rank of a linear map _f_ : _V_ → _W_ is the minimal dimension _k_ of an intermediate space _X_ such that _f_ can be written as the composition of a map _V_ → _X_ and a map _X_ → _W_. Unfortunately, this definition does not suggest an efficient manner to compute the rank (for which it is better to use one of the alternative definitions). See rank factorization for details.

Rank in terms of singular values

The rank of _A_ equals the number of non-zero singular values, which is the same as the number of non-zero diagonal elements in _Σ_ in the singular value decomposition A = UΣV^(*).

Determinantal rank – size of largest non-vanishing minor:

The rank of _A_ is the largest order of any non-zero minor in _A_. (The order of a minor is the side-length of the square sub-matrix of which it is the determinant.) Like the decomposition rank characterization, this does not give an efficient way of computing the rank, but it is useful theoretically: a single non-zero minor witnesses a lower bound (namely its order) for the rank of the matrix, which can be useful (for example) to prove that certain operations do not lower the rank of a matrix.

A non-vanishing _p_-minor (_p_ × _p_ submatrix with non-zero determinant) shows that the rows and columns of that submatrix are linearly independent, and thus those rows and columns of the full matrix are linearly independent (in the full matrix), so the row and column rank are at least as large as the determinantal rank; however, the converse is less straightforward. The equivalence of determinantal rank and column rank is a strengthening of the statement that if the span of _n_ vectors has dimension _p,_ then _p_ of those vectors span the space (equivalently, that one can choose a spanning set that is a _subset_ of the vectors): the equivalence implies that a subset of the rows and a subset of the columns simultaneously define an invertible submatrix (equivalently, if the span of _n_ vectors has dimension _p,_ then _p_ of these vectors span the space _and_ there is a set of _p_ coordinates on which they are linearly independent).

Tensor rank – minimum number of simple tensors:

The rank of _A_ is the smallest number _k_ such that _A_ can be written as a sum of _k_ rank 1 matrices, where a matrix is defined to have rank 1 if and only if it can be written as a nonzero product c ⋅ r of a column vector _c_ and a row vector _r_. This notion of rank is called tensor rank; it can be generalized in the separable models interpretation of the singular value decomposition.


Properties

We assume that _A_ is an matrix, and we define the linear map _f_ by as above.

-   The rank of an matrix is a nonnegative integer and cannot be greater than either _m_ or _n_. That is,

rank (_A_) ≤ min (_m_, _n_).

    A matrix that has rank is said to have _full rank_; otherwise, the matrix is _rank deficient_.

-   Only a zero matrix has rank zero.
-   _f_ is injective (or "one-to-one") if and only if _A_ has rank _n_ (in this case, we say that _A_ has _full column rank_).
-   _f_ is surjective (or "onto") if and only if _A_ has rank _m_ (in this case, we say that _A_ has _full row rank_).
-   If _A_ is a square matrix (i.e., ), then _A_ is invertible if and only if _A_ has rank _n_ (that is, _A_ has full rank).
-   If _A_ is a square matrix, then _A_ is invertible if and only if its determinant is non-zero.
-   If _B_ is any matrix, then

rank (_A__B_) ≤ min (rank (_A_), rank (_B_)).

-   If _B_ is an matrix of rank _n_, then

rank (_A__B_) = rank (_A_).

-   If _C_ is an matrix of rank _m_, then

rank (_C__A_) = rank (_A_).

-   The rank of _A_ is equal to _r_ if and only if there exists an invertible matrix _X_ and an invertible matrix _Y_ such that

$$XAY =
  \begin{bmatrix}
    I_r & 0 \\
    0 & 0 \\
  \end{bmatrix},$$

    where _I__(_r_) denotes the identity matrix.

-   SYLVESTER’S RANK INEQUALITY: if _A_ is an matrix and _B_ is , then

rank (_A_) + rank (_B_) − _n_ ≤ rank (_A__B_).

    This is a special case of the next inequality.

-   The inequality due to Frobenius: if _AB_, _ABC_ and _BC_ are defined, then

rank (_A__B_) + rank (_B__C_) ≤ rank (_B_) + rank (_A__B__C_).

-   Subadditivity:

rank (_A_ + _B_) ≤ rank (_A_) + rank (_B_)

    when _A_ and _B_ are of the same dimension. As a consequence, a rank-_k_ matrix can be written as the sum of _k_ rank-1 matrices, but not fewer.

-   The rank of a matrix plus the nullity of the matrix equals the number of columns of the matrix. (This is the rank–nullity theorem.)
-   If _A_ is a matrix over the real numbers then the rank of _A_ and the rank of its corresponding Gram matrix are equal. Thus, for real matrices

rank (_A_^(_T_)_A_) = rank (_A__A_^(_T_)) = rank (_A_) = rank (_A_^(_T_)).

    This can be shown by proving equality of their null spaces. The null space of the Gram matrix is given by vectors _x_ for which A^(T)Ax = 0. If this condition is fulfilled, we also have 0 = x^(T)A^(T)Ax = |Ax|².[6]

-   If _A_ is a matrix over the complex numbers and $\overline{A}$ denotes the complex conjugate of _A_ and _A_^(∗) the conjugate transpose of _A_ (i.e., the adjoint of _A_), then

$$\operatorname{rank}(A) = \operatorname{rank}(\overline{A}) = \operatorname{rank}(A^\mathrm{T}) = \operatorname{rank}(A^*) = \operatorname{rank}(A^*A) = \operatorname{rank}(AA^*).$$


Applications

One useful application of calculating the rank of a matrix is the computation of the number of solutions of a system of linear equations. According to the Rouché–Capelli theorem, the system is inconsistent if the rank of the augmented matrix is greater than the rank of the coefficient matrix. If, on the other hand, the ranks of these two matrices are equal, then the system must have at least one solution. The solution is unique if and only if the rank equals the number of variables. Otherwise the general solution has _k_ free parameters where _k_ is the difference between the number of variables and the rank. In this case (and assuming the system of equations is in the real or complex numbers) the system of equations has infinitely many solutions.

In control theory, the rank of a matrix can be used to determine whether a linear system is controllable, or observable.

In the field of communication complexity, the rank of the communication matrix of a function gives bounds on the amount of communication needed for two parties to compute the function.


Generalization

There are different generalizations of the concept of rank to matrices over arbitrary rings, where column rank, row rank, dimension of column space, and dimension of row space of a matrix may be different from the others or may not exist.

Thinking of matrices as tensors, the tensor rank generalizes to arbitrary tensors; note that for tensors of order greater than 2 (matrices are order 2 tensors), rank is very hard to compute, unlike for matrices.

There is a notion of rank for smooth maps between smooth manifolds. It is equal to the linear rank of the derivative.


Matrices as tensors

Matrix rank should not be confused with tensor order, which is called tensor rank. Tensor order is the number of indices required to write a tensor, and thus matrices all have tensor order 2. More precisely, matrices are tensors of type (1,1), having one row index and one column index, also called covariant order 1 and contravariant order 1; see Tensor (intrinsic definition) for details.

Note that the tensor rank of a matrix can also mean the minimum number of simple tensors necessary to express the matrix as a linear combination, and that this definition does agree with matrix rank as here discussed.


See also

-   Matroid rank
-   Nonnegative rank (linear algebra)
-   Rank (differential topology)
-   Multicollinearity
-   Linear dependence


Notes


References


Further reading

-   -   Kaw, Autar K. Two Chapters from the book Introduction to Matrix Algebra: 1. Vectors 1 and System of Equations 2
-   Mike Brookes: Matrix Reference Manual. 3

Category:Linear algebra

[1] Bourbaki, _Algebra_, ch. II, §10.12, p. 359

[2]

[3]

[4]

[5]

[6]