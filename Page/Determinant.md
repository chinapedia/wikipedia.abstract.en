In linear algebra, the DETERMINANT is a scalar value that can be computed from the elements of a square matrix and encodes certain properties of the linear transformation described by the matrix. The determinant of a matrix is denoted , , or . Geometrically, it can be viewed as the volume scaling factor of the linear transformation described by the matrix. This is also the signed volume of the _n_-dimensional parallelepiped spanned by the column or row vectors of the matrix. The determinant is positive or negative according to whether the linear mapping preserves or reverses the orientation of _n_-space.

In the case of a matrix the determinant may be defined as:

$$\begin{align}|A| = \begin{vmatrix} a & b\\c & d \end{vmatrix}=ad - bc .\end{align}$$

Similarly, for a 3 × 3 matrix _A_, its determinant is:

$$\begin{align}
  |A| = \begin{vmatrix} a & b & c \\ d & e & f \\ g & h & i \end{vmatrix}
     &= a\,\begin{vmatrix} \Box & \Box & \Box \\ \Box & e & f \\ \Box & h & i \end{vmatrix} -
        b\,\begin{vmatrix} \Box & \Box & \Box \\ d & \Box & f \\ g & \Box & i \end{vmatrix} +
        c\,\begin{vmatrix} \Box & \Box & \Box \\ d & e & \Box \\ g & h & \Box \end{vmatrix} \\[3pt]
     &= a\,\begin{vmatrix} e & f \\ h & i \end{vmatrix} -
        b\,\begin{vmatrix} d & f \\ g & i \end{vmatrix} +
        c\,\begin{vmatrix} d & e \\ g & h \end{vmatrix} \\[3pt]
     &= aei + bfg + cdh - ceg - bdi - afh.
\end{align}$$

Each determinant of a matrix in this equation is called a "minor" of the matrix . This procedure can be extended to give a recursive definition for the determinant of an matrix, the _minor expansion formula_.

Determinants occur throughout mathematics. For example, a matrix is often used to represent the coefficients in a system of linear equations, and the determinant can be used to solve those equations, although other methods of solution are much more computationally efficient. In linear algebra, a matrix (with entries in a field) is invertible (also called nonsingular) if and only if its determinant is non-zero, and correspondingly the matrix is singular if and only if its determinant is zero. This leads to the use of determinants in defining the characteristic polynomial of a matrix, whose roots are the eigenvalues. In analytic geometry, determinants express the signed _n_-dimensional volumes of _n_-dimensional parallelepipeds. This leads to the use of determinants in calculus, the Jacobian determinant in the change of variables rule for integrals of functions of several variables. Determinants appear frequently in algebraic identities such as the Vandermonde identity.

Determinants possess many algebraic properties, including that the determinant of a product of matrices is equal to the product of determinants. Special types of matrices have special determinants; for example, the determinant of an orthogonal matrix is always plus or minus one, and the determinant of a complex Hermitian matrix is always real.


Geometric meaning

If an real matrix _A_ is written in terms of its column vectors $A = [\begin{array}{c|c|c|c} \mathbf{a}_1 & \mathbf{a}_2 & \cdots & \mathbf{a}_n\end{array}]$ then

$$A\begin{pmatrix}1 \\ 0\\ \vdots \\0\end{pmatrix} = \mathbf{a}_1, \quad
  A\begin{pmatrix}0 \\ 1\\ \vdots \\0\end{pmatrix} = \mathbf{a}_2, \quad
                                                         \ldots, \quad
  A\begin{pmatrix}0 \\0 \\ \vdots \\1\end{pmatrix} = \mathbf{a}_n.$$

This means that A maps the unit _n_-cube to the _n_-dimensional parallelotope defined by the vectors A₁, A₂, …, A_(n), the region P = {c₁A₁+⋯+c_(n)A_(n)∣0≤c_(i)≤1 ∀i}.

The determinant gives the signed _n_-dimensional volume of this parallelotope, det (A) =  ± vol(P), and hence describes more generally the _n_-dimensional volume scaling factor of the linear transformation produced by _A_.[1] (The sign shows whether the transformation preserves or reverses orientation.) In particular, if the determinant is zero, then this parallelotope has volume zero and is not fully _n_-dimensional, which indicates that the dimension of the image of _A_ is less than _n_. This means that _A_ produces a linear transformation which is neither onto nor one-to-one, and so is not invertible.


Definition

There are various equivalent ways to define the determinant of a square matrix _A_, i.e. one with the same number of rows and columns. Perhaps the simplest way to express the determinant is by considering the elements in the top row and the respective minors; starting at the left, multiply the element by the minor, then subtract the product of the next element and its minor, and alternate adding and subtracting such products until all elements in the top row have been exhausted. For example, here is the result for a 4 × 4 matrix:

$$\begin{vmatrix} a & b & c & d\\ e & f & g & h\\ i & j & k & l\\ m & n & o & p \end{vmatrix} =
  a\,\begin{vmatrix} f & g & h\\ j & k & l\\ n & o & p \end{vmatrix} -
    b\,\begin{vmatrix} e & g & h\\ i & k & l\\ m & o & p \end{vmatrix} +
    c\,\begin{vmatrix} e & f & h\\ i & j & l\\ m & n & p \end{vmatrix} -
    d\,\begin{vmatrix} e & f & g\\ i & j & k\\ m & n & o \end{vmatrix}.$$
Another way to define the determinant is expressed in terms of the columns of the matrix. If we write an matrix _A_ in terms of its column vectors

    $A = \begin{bmatrix} a_1 & a_2 & \cdots & a_n \end{bmatrix}$

where the a_(j) are vectors of size _n_, then the determinant of _A_ is defined so that

$$\begin{align}
  \det \begin{bmatrix} a_1 & \cdots & b a_j + c v & \cdots & a_n \end{bmatrix}
          &= b\det(A) + c \det \begin{bmatrix} a_1 & \cdots & v & \cdots & a_n \end{bmatrix} \\
  \det \begin{bmatrix} a_1 & \cdots & a_j & a_{j+1} & \cdots & a_n \end{bmatrix}
          &= -\det \begin{bmatrix} a_1 & \cdots & a_{j+1} & a_j & \cdots & a_n \end{bmatrix} \\
  \det(I) &= 1
\end{align}$$

where _b_ and _c_ are scalars, _v_ is any vector of size _n_ and _I_ is the identity matrix of size _n_. These equations say that the determinant is a linear function of each column, that interchanging adjacent columns reverses the sign of the determinant, and that the determinant of the identity matrix is 1. These properties mean that the determinant is an alternating multilinear function of the columns that maps the identity matrix to the underlying unit scalar. These suffice to uniquely calculate the determinant of any square matrix. Provided the underlying scalars form a field (more generally, a commutative ring with unity), the definition below shows that such a function exists, and it can be shown to be unique.[2]

Equivalently, the determinant can be expressed as a sum of products of entries of the matrix where each product has _n_ terms and the coefficient of each product is −1 or 1 or 0 according to a given rule: it is a polynomial expression of the matrix entries. This expression grows rapidly with the size of the matrix (an matrix contributes _n_! terms), so it will first be given explicitly for the case of matrices and matrices, followed by the rule for arbitrary size matrices, which subsumes these two cases.

Assume _A_ is a square matrix with _n_ rows and _n_ columns, so that it can be written as

$$A = \begin{bmatrix}
  a_{1,1} & a_{1,2} &  \dots & a_{1,n} \\
  a_{2,1} & a_{2,2} &  \dots & a_{2,n} \\
   \vdots &  \vdots & \ddots &  \vdots \\
  a_{n,1} & a_{n,2} &  \dots & a_{n,n}
\end{bmatrix}.$$

The entries can be numbers or expressions (as happens when the determinant is used to define a characteristic polynomial); the definition of the determinant depends only on the fact that they can be added and multiplied together in a commutative manner.

The determinant of _A_ is denoted by det(_A_), or it can be denoted directly in terms of the matrix entries by writing enclosing bars instead of brackets:

$$\begin{vmatrix}
  a_{1,1} & a_{1,2} &  \dots & a_{1,n} \\
  a_{2,1} & a_{2,2} &  \dots & a_{2,n} \\
   \vdots &  \vdots & \ddots &  \vdots \\
  a_{n,1} & a_{n,2} &  \dots & a_{n,n}
\end{vmatrix}.$$

2 × 2 matrices

Area_parallellogram_as_determinant.svg The Leibniz formula for the determinant of a matrix is

$$\begin{vmatrix} a & b \\c & d \end{vmatrix} = ad - bc.$$

If the matrix entries are real numbers, the matrix _A_ can be used to represent two linear maps: one that maps the standard basis vectors to the rows of _A_, and one that maps them to the columns of _A_. In either case, the images of the basis vectors form a parallelogram that represents the image of the unit square under the mapping. The parallelogram defined by the rows of the above matrix is the one with vertices at , , , and , as shown in the accompanying diagram.

The absolute value of is the area of the parallelogram, and thus represents the scale factor by which areas are transformed by _A_. (The parallelogram formed by the columns of _A_ is in general a different parallelogram, but since the determinant is symmetric with respect to rows and columns, the area will be the same.)

The absolute value of the determinant together with the sign becomes the _oriented area_ of the parallelogram. The oriented area is the same as the usual area, except that it is negative when the angle from the first to the second vector defining the parallelogram turns in a clockwise direction (which is opposite to the direction one would get for the identity matrix).

To show that is the signed area, one may consider a matrix containing two vectors and representing the parallelogram's sides. The signed area can be expressed as A{{!}}{{!}}B{{!}}sin_θ_}} for the angle _θ_ between the vectors, which is simply base times height, the length of one vector times the perpendicular component of the other. Due to the sine this already is the signed area, yet it may be expressed more conveniently using the cosine of the complementary angle to a perpendicular vector, e.g. , such that A^(⊥){{!}}{{!}}B{{!}}cos''θ' ''}}, which can be determined by the pattern of the scalar product to be equal to :

    \text{Signed area} =

 |\boldsymbol{a}| |\boldsymbol{b}|\sin\theta = \left|\boldsymbol{a}^\perp\right| |\boldsymbol{b}|\cos\theta' =
 \begin{pmatrix} -b \\ a \end{pmatrix} \cdot \begin{pmatrix} c \\ d \end{pmatrix} = ad - bc.

Thus the determinant gives the scaling factor and the orientation induced by the mapping represented by _A_. When the determinant is equal to one, the linear mapping defined by the matrix is equi-areal and orientation-preserving.

The object known as the _bivector_ is related to these ideas. In 2D, it can be interpreted as an _oriented plane segment_ formed by imagining two vectors each with origin , and coordinates and . The bivector magnitude (denoted by ) is the _signed area_, which is also the determinant .[3]

3 × 3 matrices

Determinant_parallelepiped.svg is the absolute value of the determinant of the matrix formed by the rows constructed from the vectors r1, r2, and r3.]]

The Laplace formula for the determinant of a matrix is

$$\begin{vmatrix}a&b&c\\ d&e&f\\ g&h&i\end{vmatrix} =
  a\begin{vmatrix}e&f\\ h&i\end{vmatrix} - b\begin{vmatrix}d&f\\ g&i\end{vmatrix} + c\begin{vmatrix}d&e\\ g&h\end{vmatrix}$$

this can be expanded out to give

$$\begin{align}
  \begin{vmatrix}a&b&c\\d&e&f\\g&h&i\end{vmatrix}
    &= a(ei - fh) - b(di - fg) + c(dh - eg) \\
    &= aei + bfg + cdh - ceg - bdi - afh.
\end{align}$$

which is the Leibniz formula for the determinant of a matrix.

Sarrus_rule.svg

The rule of Sarrus is a mnemonic for the matrix determinant: the sum of the products of three diagonal north-west to south-east lines of matrix elements, minus the sum of the products of three diagonal south-west to north-east lines of elements, when the copies of the first two columns of the matrix are written beside it as in the illustration. This scheme for calculating the determinant of a matrix does not carry over into higher dimensions.

_n_ × _n_ matrices

The determinant of a matrix of arbitrary size can be defined by the Leibniz formula or the Laplace formula.

The Leibniz formula for the determinant of an matrix _A_ is

$$\det(A) = \sum_{\sigma \in S_n} \left( \sgn(\sigma) \prod_{i=1}^n a_{i,\sigma_i}\right).$$

Here the sum is computed over all permutations σ of the set A permutation is a function that reorders this set of integers. The value in the _i^(th)_ position after the reordering σ is denoted by σ_(_i_). For example, for , the original sequence 1, 2, 3 might be reordered to , with , , and . The set of all such permutations (also known as the symmetric group on _n_ elements) is denoted by S_(_n_). For each permutation σ, sgn(σ) denotes the signature of σ, a value that is +1 whenever the reordering given by σ can be achieved by successively interchanging two entries an even number of times, and −1 whenever it can be achieved by an odd number of such interchanges.

In any of the n! summands, the term

$$\prod_{i=1}^n a_{i, \sigma_i}$$

is notation for the product of the entries at positions , where _i_ ranges from 1 to _n_:

_a__(1, _σ_₁) ⋅ _a__(2, _σ_₂)⋯_a__(_n_, _σ__(_n_)).

For example, the determinant of a matrix _A_ () is

$$\begin{align}
      &\sum_{\sigma \in S_n} \sgn(\sigma) \prod_{i=1}^n a_{i,\sigma_i} \\
  ={} &\sgn([1,2,3]) \prod_{i=1}^n a_{i,[1,2,3]_i} + \sgn([1,3,2]) \prod_{i=1}^n a_{i,[1,3,2]_i} + \sgn([2,1,3]) \prod_{i=1}^n a_{i,[2,1,3]_i} +{} \\
      &\sgn([2,3,1]) \prod_{i=1}^n a_{i,[2,3,1]_i} + \sgn([3,1,2]) \prod_{i=1}^n a_{i,[3,1,2]_i} + \sgn([3,2,1]) \prod_{i=1}^n a_{i,[3,2,1]_i} \\
  ={} &\prod_{i=1}^n a_{i,[1,2,3]_i} - \prod_{i=1}^n a_{i,[1,3,2]_i} - \prod_{i=1}^n a_{i,[2,1,3]_i} + \prod_{i=1}^n a_{i,[2,3,1]_i} + \prod_{i=1}^n a_{i,[3,1,2]_i} - \prod_{i=1}^n a_{i,[3,2,1]_i} \\[2pt]
  ={} & a_{1,1}a_{2,2}a_{3,3} - a_{1,1}a_{2,3}a_{3,2} - a_{1,2}a_{2,1}a_{3,3} +
        a_{1,2}a_{2,3}a_{3,1} + a_{1,3}a_{2,1}a_{3,2} - a_{1,3}a_{2,2}a_{3,1}.
\end{align}$$

Levi-Civita symbol

It is sometimes useful to extend the Leibniz formula to a summation in which not only permutations, but all sequences of _n_ indices in the range occur, ensuring that the contribution of a sequence will be zero unless it denotes a permutation. Thus the totally antisymmetric Levi-Civita symbol ε_(i₁, ⋯, i_(n)) extends the signature of a permutation, by setting ε_(σ(1), ⋯, σ(n)) = sgn (σ) for any permutation σ of _n_, and ε_(i₁, ⋯, i_(n)) = 0 when no permutation σ exists such that σ(j) = i_(j) for j = 1, …, n (or equivalently, whenever some pair of indices are equal). The determinant for an matrix can then be expressed using an _n_-fold summation as

$$\det(A) = \sum_{i_1,i_2,\ldots,i_n=1}^n \varepsilon_{i_1\cdots i_n} a_{1,i_1} \cdots a_{n,i_n},$$

or using two epsilon symbols as

$$\det(A) = \frac{1}{n!}\sum\varepsilon_{i_1\cdots i_n} \varepsilon_{j_1\cdots j_n} a_{i_1 j_1} \cdots a_{i_n j_n},$$

where now each _i_(r)_ and each _j_(r)_ should be summed over .

However, through the use of tensor notation and the supression of the summation symbol (Einstein's summation convention) we can obtain a much more compact expression of the determinant of the second order system of n = 3 dimensions, a_(n)^(m);

det (_a__(_n_)^(_m_))_e__(_r__s__t_) = _e__(_i__j__k_)_a__(_r_)^(_i_)_a__(_s_)^(_j_)_a__(_t_)^(_k_)

where e_(rst) and e_(ijk) represent 'e-systems' that take on the values 0, +1 and -1 given the number of permutations of ijk and rst. More specifically, e_(ijk) is equal to 0 when there is a repeated index in ijk; +1 when an even number of permutations of ijk is present; -1 when an odd number of permutations of ijk is present. Note, that the number of indices present in the e-systems is equal to n and thus can be generalized in this manner [4].


Properties of the determinant

The determinant has many properties. Some basic properties of determinants are

1.  det (I_(n)) = 1 where _I__(_n_) is the identity matrix.
2.  det (A^(T)) = det (A), where A^(T) denotes the transpose of A.
3.  $\det\left(A^{-1}\right) = \frac{1}{\det(A)} = \det(A)^{-1}.$
4.  For square matrices _A_ and _B_ of equal size,

        det (AB) = det (A)det (B).

5.  det (cA) = c^(n)det (A) for an matrix, A.

6.  For positive semidefinite matrices _A_, _B_, and _C_ of equal size, det (A + B + C) + det (C) ≥ det (A + C) + det (B + C), for A, B, C ≥ 0 with the corollary det (A + B) ≥ det (A) + det (B).[5][6]
7.  If _A_ is a triangular matrix, i.e. whenever or, alternatively, whenever , then its determinant equals the product of the diagonal entries:
    $$\det(A) = a_{1,1} a_{2,2} \cdots a_{n,n} = \prod_{i=1}^n a_{i,i}.$$

This can be deduced from some of the properties below, but it follows most easily directly from the Leibniz formula (or from the Laplace expansion), in which the identity permutation is the only one that gives a non-zero contribution.

A number of additional properties relate to the effects on the determinant of changing particular rows or columns:

1.  Viewing an n × n matrix as being composed of n columns, the determinant is an _n_-linear function. This means that if the j^(th) column of a matrix A is written as a sum A_(j) = V + W of two column vectors, and all other columns are left unchanged, then the determinant of A is the sum of the determinants of the matrices obtained from A by replacing the j^(th) column by V (denoted A_(v)) and then by W (denoted A_(w)) (and a similar relation holds when writing a column as a scalar multiple of a column vector).

        \begin{align}\det(A)

 &= \det([\mathbf{a}_1|\dots|\mathbf{a}_j|\dots|\mathbf{a}_n]) \\
 &= \det([\dots|\mathbf{v} + \mathbf{w}|\dots]) \\
 &= \det([\dots|\mathbf{v}|\dots]) + \det([\dots|\mathbf{w}|\dots]) \\
 &= \det\left(A_v\right) + \det\left(A_w\right)

\end{align}

1.  If in a matrix, any row or column has all elements equal to zero, then the determinant of that matrix is 0.

2.  This _n_-linear function is an alternating form. This means that whenever two columns of a matrix are identical, or more generally some column can be expressed as a linear combination of the other columns (i.e. the columns of the matrix form a linearly dependent set), its determinant is 0.

Properties 1, 8 and 10 — which all follow from the Leibniz formula — completely characterize the determinant; in other words the determinant is the unique function from matrices to scalars that is _n_-linear alternating in the columns, and takes the value 1 for the identity matrix (this characterization holds even if scalars are taken in any given commutative ring). To see this it suffices to expand the determinant by multi-linearity in the columns into a (huge) linear combination of determinants of matrices in which each column is a standard basis vector. These determinants are either 0 (by property 9) or else ±1 (by properties 1 and 12 below), so the linear combination gives the expression above in terms of the Levi-Civita symbol. While less technical in appearance, this characterization cannot entirely replace the Leibniz formula in defining the determinant, since without it the existence of an appropriate function is not clear. For matrices over non-commutative rings, properties 8 and 9 are incompatible for ,In a non-commutative setting left-linearity (compatibility with left-multiplication by scalars) should be distinguished from right-linearity. Assuming linearity in the columns is taken to be left-linearity, one would have, for non-commuting scalars _a_, _b_:

$$ab =
  ab \left|\begin{matrix}1&0 \\ 0&1\end{matrix} \right| =
   a \left|\begin{matrix}1&0 \\ 0&b\end{matrix} \right| =
     \left|\begin{matrix}a&0 \\ 0&b\end{matrix} \right| =
   b \left|\begin{matrix}a&0 \\ 0&1\end{matrix} \right| =
  ba \left|\begin{matrix}1&0 \\ 0&1\end{matrix} \right|= ba,$$

a contradiction. There is no useful notion of multi-linear functions over a non-commutative ring. so there is no good definition of the determinant in this setting.

Property 2 above implies that properties for columns have their counterparts in terms of rows:

1.  Viewing an matrix as being composed of _n_ rows, the determinant is an _n_-linear function.

2.  This _n_-linear function is an alternating form: whenever two rows of a matrix are identical, its determinant is 0.
3.  Interchanging any pair of columns or rows of a matrix multiplies its determinant by −1. This follows from properties 8 and 10 (it is a general property of multilinear alternating maps). More generally, any permutation of the rows or columns multiplies the determinant by the sign of the permutation. By permutation, it is meant viewing each row as a vector R_(_i_) (equivalently each column as C_(_i_)) and reordering the rows (or columns) by interchange of R_(_j_) and R_(_k_) (or C_(_j_) and C_(_k_)), where _j_,_k_ are two indices chosen from 1 to _n_ for an square matrix.
4.  Adding a scalar multiple of one column to _another_ column does not change the value of the determinant. This is a consequence of properties 8 and 10 in the following way: by property 8 the determinant changes by a multiple of the determinant of a matrix with two equal columns, which determinant is 0 by property 10. Similarly, adding a scalar multiple of one row to another row leaves the determinant unchanged.

Property 5 says that the determinant on matrices is homogeneous of degree _n_. These properties can be used to facilitate the computation of determinants by simplifying the matrix to the point where the determinant can be determined immediately. Specifically, for matrices with coefficients in a field, properties 13 and 14 can be used to transform any matrix into a triangular matrix, whose determinant is given by property 7; this is essentially the method of Gaussian elimination.

For example, the determinant of

$$A = \begin{bmatrix}
  -2 & 2 & -3 \\
  -1 & 1 &  3 \\
   2 & 0 & -1
\end{bmatrix}$$

can be computed using the following matrices:

$$B = \begin{bmatrix}
    -2 & 2 & -3\\
     0 & 0 &  4.5\\
     2 & 0 & -1
  \end{bmatrix},\quad
  C = \begin{bmatrix}
    -2 & 2 & -3\\
     0 & 0 &  4.5\\
     0 & 2 & -4
  \end{bmatrix},\quad
  D = \begin{bmatrix}
    -2 & 2 & -3\\
     0 & 2 & -4\\
     0 & 0 &  4.5
  \end{bmatrix}.$$

Here, _B_ is obtained from _A_ by adding −1/2×the first row to the second, so that . _C_ is obtained from _B_ by adding the first to the third row, so that . Finally, _D_ is obtained from _C_ by exchanging the second and third row, so that . The determinant of the (upper) triangular matrix _D_ is the product of its entries on the main diagonal: . Therefore, .

Schur complement

The following identity holds for a Schur complement of a square matrix:

The Schur complement arises as the result of performing a block Gaussian elimination by multiplying the matrix _M_ from the right with a _block lower triangular_ matrix

$$L = \left[\begin{matrix} I_p & 0 \\ -D^{-1}C & I_q \end{matrix}\right].$$

Here _I__(_p_) denotes a _p_×_p_ identity matrix. After multiplication with the matrix _L_ the Schur complement appears in the upper _p_×_p_ block. The product matrix is

$$\begin{align}
  ML &= \left[\begin{matrix} A & B \\ C & D \end{matrix}\right]\left[\begin{matrix} I_p & 0 \\ -D^{-1}C & I_q \end{matrix}\right] = \left[\begin{matrix} A - BD^{-1}C & B \\ 0 & D \end{matrix}\right] \\
     &= \left[\begin{matrix} I_p & BD^{-1} \\ 0 & I_q \end{matrix}\right] \left[\begin{matrix} A - BD^{-1}C & 0 \\ 0 & D \end{matrix}\right].
\end{align}$$

That is, we have effected a Gaussian decomposition

$$\left[\begin{matrix} A & B \\ C & D \end{matrix}\right] =
  \left[\begin{matrix} I_p & BD^{-1} \\ 0 & I_q \end{matrix}\right]
    \left[\begin{matrix} A-BD^{-1}C & 0 \\ 0 & D \end{matrix}\right]
    \left[\begin{matrix} I_p & 0 \\ D^{-1}C & I_q \end{matrix}\right],$$

The first and last matrices on the RHS have determinant unity, so we have

$${\rm det}\left|\begin{matrix} A & B \\ C & D \end{matrix}\right| =
  {\rm det}|D|\,{\rm det} \left|A - BD^{-1} C\right|.$$

This is Schur's determinant identity.

Multiplicativity and matrix groups

The determinant of a matrix product of square matrices equals the product of their determinants:

det (_A__B_) = det (_A_)det (_B_).

Thus the determinant is a _multiplicative map_. This property is a consequence of the characterization given above of the determinant as the unique _n_-linear alternating function of the columns with value 1 on the identity matrix, since the function that maps can easily be seen to be _n_-linear and alternating in the columns of _M_, and takes the value det(_A_) at the identity. The formula can be generalized to (square) products of rectangular matrices, giving the Cauchy–Binet formula, which also provides an independent proof of the multiplicative property.

The determinant det(_A_) of a matrix _A_ is non-zero if and only if _A_ is invertible or, yet another equivalent statement, if its rank equals the size of the matrix. If so, the determinant of the inverse matrix is given by

$$\det\left(A^{-1}\right) = \frac{1}{\det(A)}.$$

In particular, products and inverses of matrices with determinant one still have this property. Thus, the set of such matrices (of fixed size _n_) form a group known as the special linear group. More generally, the word "special" indicates the subgroup of another matrix group of matrices of determinant one. Examples include the special orthogonal group (which if _n_ is 2 or 3 consists of all rotation matrices), and the special unitary group.

Laplace's formula and the adjugate matrix

Laplace's formula expresses the determinant of a matrix in terms of its minors. The minor _M__(_i_,_j_) is defined to be the determinant of the -matrix that results from _A_ by removing the _i_-th row and the _j_-th column. The expression is known as a cofactor. The determinant of _A_ is given by

$$\det(A) = \sum_{j=1}^n (-1)^{i+j} a_{i,j} M_{i,j}$$
(for a fixed i) $= \sum_{i=1}^n (-1)^{i+j} a_{i,j} M_{i,j}$ (for a fixed j)

Calculating det(_A_) by means of this formula is referred to as expanding the determinant along a row, the _i_-th row using the first form with fixed _i_, or expanding along a column, using the second form with fixed _j_. For example, the Laplace expansion of the matrix

$$A = \begin{bmatrix}
 -2 & 2 & -3\\
 -1 & 1 &  3\\
  2 & 0 & -1
\end{bmatrix},$$

along the second column ( and the sum runs over _i_) is given by,

  --------- --- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  det (A)   =   $(-1)^{1+2}\cdot 2 \cdot \begin{vmatrix}-1&3\\ 2 &-1\end{vmatrix} + (-1)^{2+2}\cdot 1 \cdot \begin{vmatrix}-2&-3\\ 2&-1\end{vmatrix} + (-1)^{3+2}\cdot 0 \cdot \begin{vmatrix}-2&-3\\ -1&3\end{vmatrix}$
            =   ( − 2) ⋅ (( − 1) ⋅ ( − 1) − 2 ⋅ 3) + 1 ⋅ (( − 2) ⋅ ( − 1) − 2 ⋅ ( − 3))
            =   ( − 2) ⋅ ( − 5) + 8 = 18.

  --------- --- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

However, Laplace expansion is efficient for small matrices only.

The adjugate matrix adj(_A_) is the transpose of the matrix consisting of the cofactors, i.e.,

(adj (_A_))_(_i_, _j_) = ( − 1)^(_i_ + _j_)_M__(_j_, _i_).

In terms of the adjugate matrix, Laplace's expansion can be written as[7]

(det _A_)_I_ = _A_ adj _A_ = (adj _A_) _A_.

Sylvester's determinant theorem

Sylvester's determinant theorem states that for _A_, an matrix, and _B_, an matrix (so that _A_ and _B_ have dimensions allowing them to be multiplied in either order forming a square matrix):

det (_I__(_m_)+_A__B_) = det (_I__(_n_)+_B__A_)
,

where _I__(_m_) and _I__(_n_) are the and identity matrices, respectively.

From this general result several consequences follow.


Properties of the determinant in relation to other notions

Relation to eigenvalues and trace

Let be an arbitrary matrix of complex numbers with eigenvalues λ₁, λ₂, …, λ_(n). (Here it is understood that an eigenvalue with algebraic multiplicity occurs times in this list.) Then the determinant of is the product of all eigenvalues,

$$\operatorname{det}(A) = \prod_{i=1}^n \lambda_i=\lambda_1\lambda_2\cdots\lambda_n$$
. The product of all non-zero eigenvalues is referred to as pseudo-determinant.

Conversely, determinants can be used to find the eigenvalues of the matrix : they are the solutions of the characteristic equation

det (_A_ − _λ__I_) = 0 ,
where _I_ is the identity matrix of the same dimension as and is a (scalar) number which solves the equation (there are no more than solutions, where is the dimension of ).

A Hermitian matrix is positive definite if all its eigenvalues are positive. Sylvester's criterion asserts that this is equivalent to the determinants of the submatrices

$$A_k := \begin{bmatrix}
  a_{1,1} & a_{1,2} &  \dots & a_{1,k} \\
  a_{2,1} & a_{2,2} &  \dots & a_{2,k} \\
   \vdots &  \vdots & \ddots &  \vdots \\
  a_{k,1} & a_{k,2} &  \dots & a_{k,k}
\end{bmatrix}$$

being positive, for all between 1 and .

The trace tr(_A_) is by definition the sum of the diagonal entries of and also equals the sum of the eigenvalues. Thus, for complex matrices ,

det (exp (_A_)) = exp (tr (_A_))

or, for real matrices ,

tr (_A_) = log (det (exp (_A_))).

Here exp() denotes the matrix exponential of , because every eigenvalue of corresponds to the eigenvalue exp() of exp(). In particular, given any logarithm of , that is, any matrix satisfying

exp (_L_) = _A_

the determinant of is given by

det (_A_) = exp (tr (_L_)).

For example, for , , and , respectively,

$$\begin{align}
  \det(A) &= \frac{1}{2}\left(\left(\operatorname{tr}(A)\right)^2 -  \operatorname{tr}\left(A^2\right)\right), \\
  \det(A) &= \frac{1}{6}\left(\left(\operatorname{tr}(A)\right)^3 - 3\operatorname{tr}(A) ~ \operatorname{tr}\left(A^2\right) + 2 \operatorname{tr}\left(A^3\right)\right), \\
  \det(A) &= \frac{1}{24}\left(\left(\operatorname{tr}(A)\right)^4 - 6\operatorname{tr}\left(A^2\right)\left(\operatorname{tr}(A)\right)^2 + 3\left(\operatorname{tr}\left(A^2\right)\right)^2 + 8\operatorname{tr}\left(A^3\right)~\operatorname{tr}(A) - 6\operatorname{tr}\left(A^4\right)\right).
\end{align}$$

cf. Cayley-Hamilton theorem. Such expressions are deducible from combinatorial arguments, Newton's identities, or the Faddeev–LeVerrier algorithm. That is, for generic , (−)^(_n_)_c_₀}} the signed constant term of the characteristic polynomial, determined recursively from

$$c_n = 1; ~~~c_{n-m} = -\frac{1}{m}\sum_{k=1}^m c_{n-m+k}  \operatorname{tr}\left(A^k\right) ~~(1 \le m \le n)~.$$

In the general case, this may also be obtained from[8]

$$\det(A) = \sum_{k_1,k_2,\ldots,k_n}\prod_{l=1}^n \frac{(-1)^{k_l+1}}{l^{k_l}k_l!} \operatorname{tr}\left(A^l\right)^{k_l},$$

where the sum is taken over the set of all integers _k_(l)_ ≥ 0 satisfying the equation

$$\sum_{l=1}^n lk_l = n.$$

The formula can be expressed in terms of the complete exponential Bell polynomial of _n_ arguments _s__(_l_) = −(_l_ – 1)! tr(_A_^(_l_)) as

$$\det(A) = \frac{(-1)^n}{n!} B_n(s_1, s_2, \ldots, s_n).$$

This formula can also be used to find the determinant of a matrix with multidimensional indices and . The product and trace of such matrices are defined in a natural way as

(_A__B_)_(_J_)^(_I_) = ∑_(_K_)_A__(_K_)^(_I_)_B__(_J_)^(_K_), tr (_A_) = ∑_(_I_)_A__(_I_)^(_I_).

An important arbitrary dimension identity can be obtained from the Mercator series expansion of the logarithm when the expansion converges. If every eigenvalue of _A_ is less than 1 in absolute value,

$$\det(I + A) = \sum_{k=0}^\infty \frac{1}{k!} \left(-\sum_{j=1}^\infty \frac{(-1)^j}{j} \operatorname{tr}\left(A^j\right)\right)^k\,,$$

where is the identity matrix. More generally, if

$$\sum_{k=0}^\infty \frac{1}{k!} \left(-\sum_{j=1}^\infty \frac{(-1)^j s^j}{j}\operatorname{tr}\left(A^j\right)\right)^k\,,$$

is expanded as a formal power series in then all coefficients of for are zero and the remaining polynomial is .

Upper and lower bounds

For a positive definite matrix , the trace operator gives the following tight lower and upper bounds on the log determinant

tr (_I_−_A_^( − 1)) ≤ log det (_A_) ≤ tr (_A_ − _I_)

with equality if and only if _I_}}. This relationship can be derived via the formula for the KL-divergence between two multivariate normal distributions.

Also,

$$\frac{n}{\operatorname{tr}(A^{-1})} \leq \det (A)^\frac{1}{n} \leq \frac{1}{n}\operatorname{tr}(A) \leq \sqrt{\frac{1}{n}\operatorname{tr}\left(A^2\right)}.$$

These inequalities can be proved by bringing the matrix _A_ to the diagonal form. As such, they represent the well-known fact that the harmonic mean is less than the geometric mean, which is less than the arithmetic mean, which is, in turn, less than the root mean square.

Cramer's rule

For a matrix equation

_A__x_ = _b_
, given that A has a nonzero determinant,

the solution is given by Cramer's rule:

$$x_i = \frac{\det(A_i)}{\det(A)} \qquad i = 1, 2, 3, \ldots, n$$
where _A__(_i_) is the matrix formed by replacing the _i_th column of _A_ by the column vector _b_. This follows immediately by column expansion of the determinant, i.e.

$$\det(A_i) = \det\begin{bmatrix}a_1, & \ldots, & b, & \ldots, & a_n\end{bmatrix} = \sum_{j=1}^n x_j\det\begin{bmatrix}a_1, & \ldots, a_{i-1}, & a_j, & a_{i+1}, & \ldots, & a_n \end{bmatrix} = x_i \det(A)$$
where the vectors a_(j) are the columns of _A_. The rule is also implied by the identity

_A_ adj (_A_) = adj (_A_) _A_ = det (_A_) _I__(_n_).

It has recently been shown that Cramer's rule can be implemented in O(_n_³) time,[9] which is comparable to more common methods of solving systems of linear equations, such as LU, QR, or singular value decomposition.

Block matrices

Suppose _A_, _B_, _C_, and _D_ are matrices of dimension , , , and , respectively. Then

$$\det\begin{pmatrix}A& 0\\ C& D\end{pmatrix} = \det(A)\det(D) = \det\begin{pmatrix}A& B\\ 0& D\end{pmatrix}.$$

This can be seen from the Leibniz formula, or from a decomposition like (for the former case)

$$\begin{pmatrix}A& 0\\ C& D\end{pmatrix} = \begin{pmatrix}A& 0\\ C& I_m\end{pmatrix}\begin{pmatrix}I_n& 0\\ 0& D\end{pmatrix}.$$

When _A_ is invertible, one has

$$\det\begin{pmatrix}A& B\\ C& D\end{pmatrix} = \det(A) \det\left(D - C A^{-1} B\right) .$$

as can be seen by employing the decomposition

$$\begin{pmatrix}A& B\\ C& D\end{pmatrix} = \begin{pmatrix}A& 0\\ C& I_m\end{pmatrix} \begin{pmatrix}I_n& A^{-1} B\\ 0& D - C A^{-1} B\end{pmatrix}.$$

When _D_ is invertible, a similar identity with det (D) factored out can be derived analogously,[10] that is,

$$\det\begin{pmatrix}A& B\\ C& D\end{pmatrix} = \det(D)\det\left(A - B D^{-1} C\right).$$

When the blocks are square matrices of the same order further formulas hold. For example, if _C_ and _D_ commute (i.e., ), then the following formula comparable to the determinant of a matrix holds:[11]

$$\det\begin{pmatrix}A& B\\ C& D\end{pmatrix} = \det(AD - BC).$$

Generally, if all pairs of matrices of the block matrix commute, then the determinant of the block matrix is equal to the determinant of the matrix obtained by computing the determinant of the block matrix considering its entries as the entries of a matrix.[12] As the previous formula shows, for _p_ = 2, this criterion is sufficient, but not necessary.

When _A_ = _D_ and _B_ = _C_, the blocks are square matrices of the same order and the following formula holds (even if _A_ and _B_ do not commute)

$$\det\begin{pmatrix}A& B\\ B& A\end{pmatrix} = \det(A - B)\det(A + B).$$

When _D_ is a 1×1 matrix, _B_ is a column vector, and _C_ is a row vector then

$$\det\begin{pmatrix}A& B\\ C& D\end{pmatrix} = \left(D - CA^{-1}B\right)\det(A) \,.$$

Let s be a scalar complex number. If a block matrix is square, its characteristic polynomial can be factored with

    \begin{align}

 \det\begin{pmatrix}
   A - sI & B \\
        C & D - sI
 \end{pmatrix}
   &= \det(A - sI)\det\left(D - \frac{C\operatorname{adj}(A - sI)B}{\det(A - sI)} - sI\right)\quad\mathrm{if}\quad s \notin \operatorname{eig}(A)\\
   &= \det(A - sI)^{1-n-m}\det\left(\det(A - sI)D - C\operatorname{adj}(A - sI)B - \det(A - sI)sI\right)

\end{align}

Derivative

It can be seen, e.g. using the Leibniz formula, that the determinant of real (or analogously for complex) square matrices is a polynomial function from to R, and so it is everywhere differentiable. Its derivative can be expressed using Jacobi's formula:[13]

$$\frac{d \det(A)}{d \alpha} = \operatorname{tr}\left(\operatorname{adj}(A) \frac{d A}{d \alpha}\right).$$

where adj(_A_) denotes the adjugate of _A_. In particular, if _A_ is invertible, we have

$$\frac{d \det(A)}{d \alpha} = \det(A) \operatorname{tr}\left(A^{-1} \frac{d A}{d \alpha}\right).$$

Expressed in terms of the entries of _A_, these are

    $\frac{\partial \det(A)}{\partial A_{ij}}= \operatorname{adj}(A)_{ji} = \det(A)\left(A^{-1}\right)_{ji}.$

Yet another equivalent formulation is

det (_A_ + _ϵ__X_) − det (_A_) = tr (adj (_A_)_X_)_ϵ_ + _O_(_ϵ_²) = det (_A_)tr (_A_^( − 1)_X_)_ϵ_ + _O_(_ϵ_²)
,

using big O notation. The special case where A = I, the identity matrix, yields

det (_I_ + _ϵ__X_) = 1 + tr (_X_)_ϵ_ + _O_(_ϵ_²).

This identity is used in describing the tangent space of certain matrix Lie groups.

If the matrix A is written as $A = \begin{bmatrix}\mathbf{a} & \mathbf{b} & \mathbf{c}\end{bmatrix}$ where A, B, C are column vectors of length 3, then the gradient over one of the three vectors may be written as the cross product of the other two:

    \begin{align}

 \nabla_\mathbf{a}\det(A) &= \mathbf{b} \times \mathbf{c} \\
 \nabla_\mathbf{b}\det(A) &= \mathbf{c} \times \mathbf{a} \\
 \nabla_\mathbf{c}\det(A) &= \mathbf{a} \times \mathbf{b}.

\end{align}


Abstract algebraic aspects

Determinant of an endomorphism

The above identities concerning the determinant of products and inverses of matrices imply that similar matrices have the same determinant: two matrices _A_ and _B_ are similar, if there exists an invertible matrix _X_ such that . Indeed, repeatedly applying the above identities yields

det (_A_) = det (_X_)^( − 1)det (_B_)det (_X_) = det (_B_)det (_X_)^( − 1)det (_X_) = det (_B_).

The determinant is therefore also called a similarity invariant. The determinant of a linear transformation

_T_ : _V_ → _V_
for some finite-dimensional vector space _V_ is defined to be the determinant of the matrix describing it, with respect to an arbitrary choice of basis in _V_. By the similarity invariance, this determinant is independent of the choice of the basis for _V_ and therefore only depends on the endomorphism _T_.

Exterior algebra

The determinant of a linear transformation of an _n_-dimensional vector space _V_ can be formulated in a coordinate-free manner by considering the _n_th exterior power Λ^(_n_)_V_ of _V_. _A_ induces a linear map

$$\begin{align}
                \Lambda^n A: \Lambda^n V &\rightarrow \Lambda^n V \\
  v_1 \wedge v_2 \wedge \dots \wedge v_n &\mapsto A v_1 \wedge A v_2 \wedge \dots \wedge A v_n.
\end{align}$$

As Λ^(_n_)_V_ is one-dimensional, the map Λ^(_n_)A is given by multiplying with some scalar. This scalar coincides with the determinant of _A_, that is to say

(_Λ_^(_n_)_A_)(_v_₁∧…∧_v__(_n_)) = det (_A_) ⋅ _v_₁ ∧ … ∧ _v__(_n_).

This definition agrees with the more concrete coordinate-dependent definition. This follows from the characterization of the determinant given above. For example, switching two columns changes the sign of the determinant; likewise, permuting the vectors in the exterior product to , say, also changes its sign.

For this reason, the highest non-zero exterior power Λ^(_n_)(_V_) is sometimes also called the determinant of _V_ and similarly for more involved objects such as vector bundles or chain complexes of vector spaces. Minors of a matrix can also be cast in this setting, by considering lower alternating forms Λ^(_k_)_V_ with .

Transformation on alternating multilinear _n_-forms

The vector space _W_ of all alternating multilinear _n_-forms on an _n_-dimensional vector space _V_ has dimension one. To each linear transformation _T_ on _V_ we associate a linear transformation _T_′ on _W_, where for each _w_ in _W_ we define . As a linear transformation on a one-dimensional space, _T_′ is equivalent to a scalar multiple. We call this scalar the determinant of _T_.

Square matrices over commutative rings and abstract properties

The determinant can also be characterized as the unique function

_D_ : _M__(_n_)(_K_) → _K_
from the set of all matrices with entries in a field _K_ to this field satisfying the following three properties: first, _D_ is an _n_-linear function: considering all but one column of _A_ fixed, the determinant is linear in the remaining column, that is

_D_(_v_₁, …, _v__(_i_ − 1), _a__v__(_i_) + _b__w_, _v__(_i_ + 1), …, _v__(_n_)) = _a__D_(_v_₁, …, _v__(_i_ − 1), _v__(_i_), _v__(_i_ + 1), …, _v__(_n_)) + _b__D_(_v_₁, …, _v__(_i_ − 1), _w_, _v__(_i_ + 1), …, _v__(_n_))
for any column vectors _v_₁, ..., _v__(_n_), and _w_ and any scalars (elements of _K_) _a_ and _b_. Second, _D_ is an alternating function: for any matrix _A_ with two identical columns, . Finally, , where _I__(_n_) is the identity matrix.

This fact also implies that every other _n_-linear alternating function satisfies

_F_(_M_) = _F_(_I_)_D_(_M_).

This definition can also be extended where _K_ is a commutative ring _R_, in which case a matrix is invertible if and only if its determinant is an invertible element in _R_. For example, a matrix _A_ with entries in Z, the integers, is invertible (in the sense that there exists an inverse matrix with integer entries) if the determinant is +1 or −1. Such a matrix is called unimodular.

The determinant defines a mapping

GL_(_n_)(_R_) → _R_^(×),
between the group of invertible matrices with entries in _R_ and the multiplicative group of units in _R_. Since it respects the multiplication in both groups, this map is a group homomorphism. Secondly, given a ring homomorphism , there is a map given by replacing all entries in _R_ by their images under _f_. The determinant respects these maps, i.e., given a matrix with entries in _R_, the identity

_f_(det ((_a__(_i_, _j_)))) = det ((_f_(_a__(_i_, _j_))))
holds. In other words, the following diagram commutes:

    Determinant_as_a_natural_transformation.svg

For example, the determinant of the complex conjugate of a complex matrix (which is also the determinant of its conjugate transpose) is the complex conjugate of its determinant, and for integer matrices: the reduction modulo _m_ of the determinant of such a matrix is equal to the determinant of the matrix reduced modulo _m_ (the latter determinant being computed using modular arithmetic). In the language of category theory, the determinant is a natural transformation between the two functors GL_(_n_) and (⋅)^(×) (see also Natural transformation#Determinant).[14] Adding yet another layer of abstraction, this is captured by saying that the determinant is a morphism of algebraic groups, from the general linear group to the multiplicative group,

det  : GL_(_n_) → 𝔾_(_m_).


Generalizations and related notions

Infinite matrices

For matrices with an infinite number of rows and columns, the above definitions of the determinant do not carry over directly. For example, in the Leibniz formula, an infinite sum (all of whose terms are infinite products) would have to be calculated. Functional analysis provides different extensions of the determinant for such infinite-dimensional situations, which however only work for particular kinds of operators.

The Fredholm determinant defines the determinant for operators known as trace class operators by an appropriate generalization of the formula

det (_I_ + _A_) = exp (tr (log (_I_ + _A_))).

Another infinite-dimensional notion of determinant is the functional determinant.

Operators in von Neumann algebras

For operators in a finite factor, one may define a positive real-valued determinant called the Fuglede−Kadison determinant using the canonical trace. In fact, corresponding to every tracial state on a von Neumann algebra there is a notion of Fuglede−Kadison determinant.

Related notions for non-commutative rings

For square matrices with entries in a non-commutative ring, there are various difficulties in defining determinants analogously to that for commutative rings. A meaning can be given to the Leibniz formula provided that the order for the product is specified, and similarly for other ways to define the determinant, but non-commutativity then leads to the loss of many fundamental properties of the determinant, for instance the multiplicative property or the fact that the determinant is unchanged under transposition of the matrix. Over non-commutative rings, there is no reasonable notion of a multilinear form (existence of a nonzero with a regular element of _R_ as value on some pair of arguments implies that _R_ is commutative). Nevertheless, various notions of non-commutative determinant have been formulated, which preserve some of the properties of determinants, notably quasideterminants and the Dieudonné determinant. It may be noted that if one considers certain specific classes of matrices with non-commutative elements, then there are examples where one can define the determinant and prove linear algebra theorems that are very similar to their commutative analogs. Examples include quantum groups and _q_-determinant, Capelli matrix and Capelli determinant, super-matrices and Berezinian; Manin matrices is the class of matrices which is most close to matrices with commutative elements.

Further variants

Determinants of matrices in superrings (that is, Z₂-graded rings) are known as Berezinians or superdeterminants.[15]

The permanent of a matrix is defined as the determinant, except that the factors sgn(_σ_) occurring in Leibniz's rule are omitted. The immanant generalizes both by introducing a character of the symmetric group S_(_n_) in Leibniz's rule.


Calculation

Determinants are mainly used as a theoretical tool. They are rarely calculated explicitly in numerical linear algebra, where for applications like checking invertibility and finding eigenvalues the determinant has largely been supplanted by other techniques.[16] Computational geometry, however, does frequently use calculations related to determinants.[17]

Naive methods of implementing an algorithm to compute the determinant include using the Leibniz formula or Laplace's formula. Both these approaches are extremely inefficient for large matrices, though, since the number of required operations grows very quickly: it is of order _n_! (_n_ factorial) for an matrix _M_. For example, Leibniz's formula requires calculating _n_! products. Therefore, more involved techniques have been developed for calculating determinants.

Decomposition methods

Given a matrix _A_, some methods compute its determinant by writing _A_ as a product of matrices whose determinants can be more easily computed. Such techniques are referred to as decomposition methods. Examples include the LU decomposition, the QR decomposition or the Cholesky decomposition (for positive definite matrices). These methods are of order O(_n_³), which is a significant improvement over O(_n_!)

The LU decomposition expresses _A_ in terms of a lower triangular matrix _L_, an upper triangular matrix _U_ and a permutation matrix _P_:

_A_ = _P__L__U_.
The determinants of _L_ and _U_ can be quickly calculated, since they are the products of the respective diagonal entries. The determinant of _P_ is just the sign ε of the corresponding permutation (which is +1 for an even number of permutations and is −1 for an uneven number of permutations). The determinant of _A_ is then

det (_A_) = _ε_det (_L_) ⋅ det (_U_).

(See determinant identities.) Moreover, the decomposition can be chosen such that _L_ is a unitriangular matrix and therefore has determinant 1, in which case the formula further simplifies to

det (_A_) = _ε_det (_U_).

Further methods

If the determinant of _A_ and the inverse of _A_ have already been computed, the matrix determinant lemma allows rapid calculation of the determinant of , where _u_ and _v_ are column vectors.

Since the definition of the determinant does not need divisions, a question arises: do fast algorithms exist that do not need divisions? This is especially interesting for matrices over rings. Indeed, algorithms with run-time proportional to _n_⁴ exist. An algorithm of Mahajan and Vinay, and Berkowitz[18] is based on closed ordered walks (short _clow_). It computes more products than the determinant definition requires, but some of these products cancel and the sum of these products can be computed more efficiently. The final algorithm looks very much like an iterated product of triangular matrices.

If two matrices of order _n_ can be multiplied in time _M_(_n_), where for some , then the determinant can be computed in time O(_M_(_n_)).[19] This means, for example, that an O(_n_^(2.376)) algorithm exists based on the Coppersmith–Winograd algorithm.

Charles Dodgson (i.e. Lewis Carroll of Alice's Adventures in Wonderland fame) invented a method for computing determinants called Dodgson condensation. Unfortunately this interesting method does not always work in its original form.

Algorithms can also be assessed according to their bit complexity, i.e., how many bits of accuracy are needed to store intermediate values occurring in the computation. For example, the Gaussian elimination (or LU decomposition) method is of order O(_n_³), but the bit length of intermediate values can become exponentially long.[20] The Bareiss Algorithm, on the other hand, is an exact-division method based on Sylvester's identity is also of order _n_³, but the bit complexity is roughly the bit size of the original entries in the matrix times _n_.[21]


History

Historically, determinants were used long before matrices: originally, a determinant was defined as a property of a system of linear equations. The determinant "determines" whether the system has a unique solution (which occurs precisely if the determinant is non-zero). In this sense, determinants were first used in the Chinese mathematics textbook _The Nine Chapters on the Mathematical Art_ (九章算術, Chinese scholars, around the 3rd century BCE). In Europe, determinants were considered by Cardano at the end of the 16th century and larger ones by Leibniz.[22][23][24][25]

In Japan, Seki Takakazu (関 孝和) is credited with the discovery of the resultant and the determinant (at first in 1683, the complete version no later than 1710). In Europe, Cramer (1750) added to the theory, treating the subject in relation to sets of equations. The recurrence law was first announced by Bézout (1764).

It was Vandermonde (1771) who first recognized determinants as independent functions.[26] Laplace (1772)[27][28] gave the general method of expanding a determinant in terms of its complementary minors: Vandermonde had already given a special case. Immediately following, Lagrange (1773) treated determinants of the second and third order and applied it to questions of elimination theory; he proved many special cases of general identities.

Gauss (1801) made the next advance. Like Lagrange, he made much use of determinants in the theory of numbers. He introduced the word _DETERMINANT_ (Laplace had used _resultant_), though not in the present signification, but rather as applied to the discriminant of a quantic. Gauss also arrived at the notion of reciprocal (inverse) determinants, and came very near the multiplication theorem.

The next contributor of importance is Binet (1811, 1812), who formally stated the theorem relating to the product of two matrices of _m_ columns and _n_ rows, which for the special case of reduces to the multiplication theorem. On the same day (November 30, 1812) that Binet presented his paper to the Academy, Cauchy also presented one on the subject. (See Cauchy–Binet formula.) In this he used the word _DETERMINANT_ in its present sense,[29][30] summarized and simplified what was then known on the subject, improved the notation, and gave the multiplication theorem with a proof more satisfactory than Binet's.[31][32] With him begins the theory in its generality.

The next important figure was Jacobi[33] (from 1827). He early used the functional determinant which Sylvester later called the Jacobian, and in his memoirs in _Crelle's Journal_ for 1841 he specially treats this subject, as well as the class of alternating functions which Sylvester has called _alternants_. About the time of Jacobi's last memoirs, Sylvester (1839) and Cayley began their work.[34][35]

The study of special forms of determinants has been the natural result of the completion of the general theory. Axisymmetric determinants have been studied by Lebesgue, Hesse, and Sylvester; persymmetric determinants by Sylvester and Hankel; circulants by Catalan, Spottiswoode, Glaisher, and Scott; skew determinants and Pfaffians, in connection with the theory of orthogonal transformation, by Cayley; continuants by Sylvester; Wronskians (so called by Muir) by Christoffel and Frobenius; compound determinants by Sylvester, Reiss, and Picquet; Jacobians and Hessians by Sylvester; and symmetric gauche determinants by Trudi. Of the textbooks on the subject Spottiswoode's was the first. In America, Hanus (1886), Weld (1893), and Muir/Metzler (1933) published treatises.


Applications

Linear independence

As mentioned above, the determinant of a matrix (with real or complex entries, say) is zero if and only if the column vectors (or the row vectors) of the matrix are linearly dependent. Thus, determinants can be used to characterize linearly dependent vectors. For example, given two linearly independent vectors _v_₁, _v_₂ in R³, a third vector _v_₃ lies in the plane spanned by the former two vectors exactly if the determinant of the matrix consisting of the three vectors is zero. The same idea is also used in the theory of differential equations: given _n_ functions _f_₁(_x_), …, _f__(_n_)(_x_) (supposed to be times differentiable), the Wronskian is defined to be

$$W(f_1, \ldots, f_n)(x) =
  \begin{vmatrix}
            f_1(x) &         f_2(x) & \cdots &         f_n(x) \\
           f_1'(x) &        f_2'(x) & \cdots &        f_n'(x) \\
            \vdots &         \vdots & \ddots &         \vdots \\
    f_1^{(n-1)}(x) & f_2^{(n-1)}(x) & \cdots & f_n^{(n-1)}(x)
\end{vmatrix}.$$

It is non-zero (for some _x_) in a specified interval if and only if the given functions and all their derivatives up to order _n_−1 are linearly independent. If it can be shown that the Wronskian is zero everywhere on an interval then, in the case of analytic functions, this implies the given functions are linearly dependent. See the Wronskian and linear independence.

Orientation of a basis

The determinant can be thought of as assigning a number to every sequence of _n_ vectors in R^(_n_), by using the square matrix whose columns are the given vectors. For instance, an orthogonal matrix with entries in R^(_n_) represents an orthonormal basis in Euclidean space. The determinant of such a matrix determines whether the orientation of the basis is consistent with or opposite to the orientation of the standard basis. If the determinant is +1, the basis has the same orientation. If it is −1, the basis has the opposite orientation.

More generally, if the determinant of _A_ is positive, _A_ represents an orientation-preserving linear transformation (if _A_ is an orthogonal or matrix, this is a rotation), while if it is negative, _A_ switches the orientation of the basis.

Volume and Jacobian determinant

As pointed out above, the absolute value of the determinant of real vectors is equal to the volume of the parallelepiped spanned by those vectors. As a consequence, if is the linear map represented by the matrix _A_, and _S_ is any measurable subset of R^(_n_), then the volume of _f_(_S_) is given by times the volume of _S_. More generally, if the linear map is represented by the matrix _A_, then the _n_-dimensional volume of _f_(_S_) is given by:

$$\operatorname{volume}(f(S)) = \sqrt{\det\left(A^\textsf{T} A\right)} \times \operatorname{volume}(S).$$

By calculating the volume of the tetrahedron bounded by four points, they can be used to identify skew lines. The volume of any tetrahedron, given its vertices A, B, C, and D, is , or any other combination of pairs of vertices that would form a spanning tree over the vertices.

For a general differentiable function, much of the above carries over by considering the Jacobian matrix of _f_. For

_f_ : R^(_n_) → R^(_n_),

the Jacobian matrix is the matrix whose entries are given by

$$D(f) = \left(\frac {\partial f_i}{\partial x_j}\right)_{1 \leq i, j \leq n}.$$

Its determinant, the Jacobian determinant, appears in the higher-dimensional version of integration by substitution: for suitable functions _f_ and an open subset _U_ of R^(_n_) (the domain of _f_), the integral over _f_(_U_) of some other function is given by

∫_(_f_(_U_))_ϕ_(V) _d_V = ∫_(_U_)_ϕ_(_f_(U))|det(D_f_)(U)| _d_U.

The Jacobian also occurs in the inverse function theorem.

Vandermonde determinant (alternant)

The third order Vandermonde determinant is

$$\left|
\begin{array}{ccc}
 1 & 1 & 1 \\
 x_1 & x_2 & x_3 \\
 x_1^2 & x_2^2 & x_3^2
\end{array}
\right|=(x_3-x_2)(x_3-x_1)(x_2-x_1).$$
In general, the _n_th-order Vandermonde determinant is[36]

$$\left|\begin{array}{ccccc}
            1 &         1 &         1 & \cdots &         1 \\
          x_1 &       x_2 &       x_3 & \cdots &       x_n \\
        x_1^2 &     x_2^2 &     x_3^2 & \cdots &     x_n^2 \\
       \vdots &    \vdots &    \vdots & \ddots &    \vdots \\
    x_1^{n-1} & x_2^{n-1} & x_3^{n-1} & \cdots & x_n^{n-1}
  \end{array}\right| =
  \prod_{1 \leq i < j \leq n} \left(x_j - x_i\right),$$

where the right-hand side is the continued product of all the differences that can be formed from the _n_(_n_−1)/2 pairs of numbers taken from _x_₁, _x_₂, …, _x__(_n_), with the order of the differences taken in the reversed order of the suffixes that are involved.

Circulants

Second order

$$\left|\begin{array}{cc}
  x_1 & x_2 \\
  x_2 & x_1
\end{array}\right| = \left(x_1 + x_2\right)\left(x_1 - x_2\right).$$

Third order

$$\left|\begin{array}{ccc}
    x_1 & x_2 & x_3 \\
    x_3 & x_1 & x_2 \\
    x_2 & x_3 & x_1
  \end{array}\right| =
  \left(x_1 + x_2 + x_3\right)\left(x_1 + \omega x_2 + \omega^2 x_3\right)\left(x_1 + \omega^2 x_2 + \omega x_3\right),$$

where _ω_ and _ω_² are the complex cube roots of 1. In general, the _n_th-order circulant determinant is[37]

$$\left|\begin{array}{ccccc}
    x_1     & x_2    & x_3    & \cdots & x_n     \\
    x_n     & x_1    & x_2    & \cdots & x_{n-1} \\
    x_{n-1} & x_n    & x_1    & \cdots & x_{n-2} \\
    \vdots  & \vdots & \vdots & \ddots & \vdots  \\
    x_2     & x_3    & x_4    & \cdots & x_1
  \end{array}\right| =
  \prod_{j=1}^n \left(x_1 + x_2\omega_j + x_3\omega_j^2 + \cdots + x_n\omega_j^{n-1}\right),$$

where _ω__(_j_) is an _n_th root of 1.


See also

-   Cauchy determinant
-   Dieudonné determinant
-   Functional determinant
-   Immanant
-   Matrix determinant lemma
-   Permanent
-   Slater determinant


Notes


References

-   -   .

-   -   -   -   -   G. Baley Price (1947) "Some identities in the theory of determinants", American Mathematical Monthly 54:75–90
-   -   -


External links

-   -   -   -   Determinant Interactive Program and Tutorial
-   Linear algebra: determinants. Compute determinants of matrices up to order 6 using Laplace expansion you choose.
-   Matrices and Linear Algebra on the Earliest Uses Pages
-   Determinants explained in an easy fashion in the 4th chapter as a part of a Linear Algebra course.
-   Instructional Video on taking the determinant of an nxn matrix (Khan Academy)
-

Determinants Category:Matrix theory Category:Linear algebra Category:Homogeneous polynomials Category:Algebra

[1]

[2] Serge Lang, _Linear Algebra_, 2nd Edition, Addison-Wesley, 1971, pp 173, 191.

[3] WildLinAlg episode 4, Norman J Wildberger, Univ. of New South Wales, 2010, lecture via youtube

[4]

[5]

[6]

[7] § 0.8.2 of R. A. Horn & C. R. Johnson: _Matrix Analysis_ 2nd ed. (2013) Cambridge University Press. .

[8] A proof can be found in the Appendix B of

[9]

[10] These identities were taken from http://www.ee.ic.ac.uk/hp/staff/dmb/matrix/proof003.html

[11] Proofs are given in

[12]

[13] § 0.8.10 of R. A. Horn & C. R. Johnson: _Matrix Analysis_ 2nd ed. (2013) Cambridge University Press. .

[14]

[15]

[16] L. N. Trefethen and D. Bau, _Numerical Linear Algebra_ (SIAM, 1997). e.g. in Lecture 1: "... we mention that the determinant, though a convenient notion theoretically, rarely finds a useful role in numerical algorithms."

[17] A survey of state-of-the-art algorithms for computing determinants and their advantages and disadvantages including results of performance tests, is included in The survey is section 1.1 Previous work, and the results of tests are in section 4.3 Determinant computation experiments.

[18] http://page.inf.fu-berlin.de/~rote/Papers/pdf/Division-free+algorithms.pdf

[19]

[20]

[21]

[22]

[23] Eves, H: "An Introduction to the History of Mathematics", pages 405, 493–494, Saunders College Publishing, 1990.

[24] A Brief History of Linear Algebra and Matrix Theory :

[25] Cajori, F. _A History of Mathematics_ p. 80

[26] Campbell, H: "Linear Algebra With Applications", pages 111–112. Appleton Century Crofts, 1971

[27] Expansion of determinants in terms of minors: Laplace, Pierre-Simon (de) "Researches sur le calcul intégral et sur le systéme du monde," _Histoire de l'Académie Royale des Sciences_ (Paris), seconde partie, pages 267–376 (1772).

[28] Muir, Sir Thomas, _The Theory of Determinants in the historical Order of Development_ [London, England: Macmillan and Co., Ltd., 1906].

[29] The first use of the word "determinant" in the modern sense appeared in: Cauchy, Augustin-Louis "Memoire sur les fonctions qui ne peuvent obtenir que deux valeurs égales et des signes contraires par suite des transpositions operées entre les variables qu'elles renferment," which was first read at the Institute de France in Paris on November 30, 1812, and which was subsequently published in the _Journal de l'Ecole Polytechnique_, Cahier 17, Tome 10, pages 29–112 (1815).

[30] Origins of mathematical terms: http://jeff560.tripod.com/d.html

[31]

[32] History of matrices and determinants: http://www-history.mcs.st-and.ac.uk/history/HistTopics/Matrices_and_determinants.html

[33]

[34] The first use of vertical lines to denote a determinant appeared in: Cayley, Arthur "On a theorem in the geometry of position," _Cambridge Mathematical Journal_, vol. 2, pages 267–271 (1841).

[35] History of matrix notation: http://jeff560.tripod.com/matrices.html

[36]

[37]