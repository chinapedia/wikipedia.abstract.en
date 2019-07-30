In mathematics, the FROBENIUS INNER PRODUCT is a binary operation that takes two matrices and returns a number. It is often denoted ⟨A, B⟩_(F). The operation is a component-wise inner product of two matrices as though they are vectors. The two matrices must have the same dimension—same number of rows and columns—but are not restricted to be square matrices.


Definition

Given two complex number-valued _n_×_m_ matrices A and B, written explicitly as

$$\mathbf {A} ={\begin{pmatrix}A_{11}&A_{12}&\cdots &A_{1m}\\A_{21}&A_{22}&\cdots &A_{2m}\\\vdots &\vdots &\ddots &\vdots \\A_{n1}&A_{n2}&\cdots &A_{nm}\\\end{pmatrix}} \,, \quad \mathbf {B} ={\begin{pmatrix}B_{11}&B_{12}&\cdots &B_{1m}\\B_{21}&B_{22}&\cdots &B_{2m}\\\vdots &\vdots &\ddots &\vdots \\B_{n1}&B_{n2}&\cdots &B_{nm}\\\end{pmatrix}}$$

the Frobenius inner product is defined by the following summation Σ of matrix elements,

$$\langle \mathbf{A}, \mathbf{B} \rangle_\mathrm{F} =\sum_{i,j}\overline{A_{ij}} B_{ij} \,, = \mathrm{tr}\left(\overline{\mathbf{A}^T} \mathbf{B}\right)$$

where the overline denotes the complex conjugate. Explicitly this sum is

$$\begin{align} \langle \mathbf{A}, \mathbf{B} \rangle_\mathrm{F} = & \overline{A}_{11} B_{11} + \overline{A}_{12} B_{12} + \cdots + \overline{A}_{1m} B_{1m} \\
 & + \overline{A}_{21} B_{21} + \overline{A}_{22} B_{22} + \cdots + \overline{A}_{2m} B_{2m} \\
 & \vdots \\
 & + \overline{A}_{n1} B_{n1} + \overline{A}_{n2} B_{n2} + \cdots + \overline{A}_{nm} B_{nm} \\
\end{align}$$

The calculation is very similar to the dot product, which in turn is an example of an inner product.

Properties

It is a sesquilinear form, for four complex-valued matrices A, B, C, D, and two complex numbers _a_ and _b_:

$$\langle a\mathbf{A}, b\mathbf{B} \rangle_\mathrm{F} = \overline{a}b\langle \mathbf{A}, \mathbf{B} \rangle_\mathrm{F}$$

⟨A + C, B + D⟩_(_F_) = ⟨A, B⟩_(_F_) + ⟨A, D⟩_(_F_) + ⟨C, B⟩_(_F_) + ⟨C, D⟩_(_F_)

Also, exchanging the matrices amounts to complex conjugation:

$$\langle \mathbf{B}, \mathbf{A} \rangle_\mathrm{F} = \overline{\langle \mathbf{A}, \mathbf{B} \rangle_\mathrm{F}}$$

For the same matrix,

⟨A, A⟩_(_F_) ≥ 0 .


Examples

Real-valued matrices

For two real-valued matrices, if

$$\mathbf{A} = \begin{pmatrix} 2 & 0 & 6 \\ 1 & -1 & 2 \end{pmatrix} \,,\quad \mathbf{B} = \begin{pmatrix} 8 & -3 & 2 \\ 4 & 1 & -5 \end{pmatrix}$$

then

$$\begin{align}\langle \mathbf{A} ,\mathbf{B}\rangle_\mathrm{F} & = 2\cdot 8 + 0\cdot (-3) + 6\cdot 2 + 1\cdot 4 + (-1)\cdot 1 + 2\cdot(-5) \\
& = 16 + 12 + 4 - 1 - 10 \\
& = 21 \end{align}$$

Complex-valued matrices

For two complex-valued matrices, if

$$\mathbf{A} = \begin{pmatrix} 1+i & -2i \\ 3 & -5 \end{pmatrix} \,,\quad \mathbf{B} = \begin{pmatrix} -2 & 3i \\ 4-3i & 6 \end{pmatrix}$$

then the complex conjugates (without transpose) are

$$\overline{\mathbf{A}} = \begin{pmatrix} 1-i & +2i \\ 3 & -5 \end{pmatrix} \,,\quad \overline{\mathbf{B}} = \begin{pmatrix} -2 & -3i \\ 4+3i & 6 \end{pmatrix}$$

and

$$\begin{align} \langle \mathbf{A} ,\mathbf{B}\rangle_\mathrm{F} & = (1-i)\cdot (-2) + (+2i)\cdot 3i + 3\cdot (4-3i) + (-5)\cdot 6 \\
& = (-2+2i) + -6 + 12-9i + -30 \\
& = -26 -7i \end{align}$$

while

$$\begin{align} \langle \mathbf{B} ,\mathbf{A}\rangle_\mathrm{F} & = (-2)\cdot (1+i) + (-3i)\cdot (-2i) + (4+3i)\cdot 3 + 6 \cdot (-5) \\
& = -26 + 7i \end{align}$$

The Frobenius inner products of A with itself, and B with itself, are respectively

⟨A, A⟩_(_F_) = 2 + 4 + 9 + 25 = 40

⟨B, B⟩_(_F_) = 4 + 9 + 25 + 36 = 74


Frobenius norm

The inner product induces the Frobenius norm

$$\|\mathbf{A}\|_\mathrm{F} = \sqrt{\langle \mathbf{A}, \mathbf{A} \rangle_\mathrm{F}} \,.$$


Relation to other products

If A and B are each real-valued matrices, the Frobenius inner product is the sum of the entries of the Hadamard product.

If the matrices are vectorised (denoted by "vec", converted into column vectors) as follows,

$$\mathrm{vec}(\mathbf {A}) = {\begin{pmatrix} A_{11} \\ A_{12} \\ \vdots \\ A_{21} \\ A_{22} \\ \vdots \\ A_{nm} \end{pmatrix}},\quad \mathrm{vec}(\mathbf {B}) = {\begin{pmatrix} B_{11} \\ B_{12} \\ \vdots \\ B_{21} \\ B_{22} \\ \vdots \\ B_{nm} \end{pmatrix}} \,,$$

the matrix product

$$\overline{\mathrm{vec}(\mathbf{A})}^T\mathrm{vec}(\mathbf {B}) = {\begin{pmatrix} \overline{A}_{11} & \overline{A}_{12} & \cdots & \overline{A}_{21} & \overline{A}_{22} & \cdots & \overline{A}_{nm} \end{pmatrix}} {\begin{pmatrix} B_{11} \\ B_{12} \\ \vdots \\ B_{21} \\ B_{22} \\ \vdots \\ B_{nm} \end{pmatrix}}$$

reproduces the definition, therefore

$$\langle \mathbf{A}, \mathbf{B} \rangle_\mathrm{F} = \overline{\mathrm{vec}(\mathbf{A})}^T \mathrm{vec}(\mathbf{B}) \, .$$


See also

-   Hadamard product (matrices)
-   Hilbert–Schmidt inner product
-   Kronecker product
-   Matrix analysis
-   Matrix multiplication
-   Matrix norm

Category:Matrix theory Category:Bilinear operators Category:Binary operations Category:Multiplication Category:Numerical linear algebra