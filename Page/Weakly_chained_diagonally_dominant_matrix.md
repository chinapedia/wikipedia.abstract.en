WCDD_Venn_Diagram.png

In mathematics, the WEAKLY CHAINED DIAGONALLY DOMINANT MATRICES are a family of nonsingular matrices that include the strictly diagonally dominant matrices.


Definition

Preliminaries

We say row i of a complex matrix A = (a_(ij)) is STRICTLY DIAGONALLY DOMINANT (SDD) if $|a_{ii}|>\textstyle{\sum_{j\neq i}}|a_{ij}|$. We say A is SDD if all of its rows are SDD. WEAKLY DIAGONALLY DOMINANT (WDD) is defined with ≥ instead.

The DIRECTED GRAPH associated with an m × m complex matrix A = (a_(ij)) is given by the vertices {1, …, m} and edges defined as follows: there exists an edge from i → j if and only if a_(ij) ≠ 0.

Definition

A complex square matrix A is said to be WEAKLY CHAINED DIAGONALLY DOMINANT (WCDD) if

-   A is WDD and
-   for each row i₁ that is _not_ SDD, there exists a walk i₁ → i₂ → ⋯ → i_(k) in the directed graph of A ending at an SDD row i_(k).


Example

Graph_of_a_WCDD_matrix.png The m × m matrix

$$\begin{pmatrix}1\\
-1 & 1\\
 & -1 & 1\\
 &  & \ddots & \ddots\\
 &  &  & -1 & 1
\end{pmatrix}$$
is WCDD.


Properties

Nonsingularity

A WCDD matrix is nonsingular.[1]

_Proof_:[2] Let A = (a_(ij)) be a WCDD matrix. Suppose there exists a nonzero x in the null space of A. Without loss of generality, let i₁ be such that |x_(i₁)| = 1 ≥ |x_(j)| for all j. Since A is WCDD, we may pick a walk i₁ → i₂ → ⋯ → i_(k) ending at an SDD row i_(k).

Taking moduli on both sides of

 − _a__(_i_₁_i_₁)_x__(_i_₁) = ∑_(_j_ ≠ _i_₁)_a__(_i_₁_j_)_x__(_j_)
and applying the triangle inequality yields

|_a__(_i_₁_i_₁)| ≤ ∑_(_j_ ≠ _i_₁)|_a__(_i_₁_j_)||_x__(_j_)| ≤ ∑_(_j_ ≠ _i_₁)|_a__(_i_₁_j_)|,
and hence row i₁ is not SDD. Moreover, since A is WDD, the above chain of inequalities holds with equality so that |x_(j)| = 1 whenever a_(i₁j) ≠ 0. Therefore, |x_(i₂)| = 1. Repeating this argument with i₂, i₃, etc., we find that i_(k) is not SDD, a contradiction. ▫

Recalling that an irreducible matrix is one whose associated directed graph is strongly connected, a trivial corollary of the above is that an _irreducibly diagonally dominant matrix_ (i.e., an irreducible WDD matrix with at least one SDD row) is nonsingular.[3]

Relationship with nonsingular M-matrices

The following are equivalent:[4]

-   A is a nonsingular WDD M-matrix.
-   A is a nonsingular WDD L-matrix;
-   A is a WCDD L-matrix;

In fact, WCDD L-matrices were studied (by James H. Bramble and B. E. Hubbard) as early as 1964 in a journal article[5] in which they appear under the alternate name of _matrices of positive type_.

Moreover, if A is an n × n WCDD L-matrix, we can bound its inverse as follows:[6]

$$\left\Vert A^{-1}\right\Vert _{\infty}\leq\sum_{i}\left[a_{ii}\prod_{j=1}^{i}(1-u_{j})\right]^{-1}$$
  where   $u_{i}=\frac{1}{\left|a_{ii}\right|}\sum_{j=i+1}^{n}\left|a_{ij}\right|.$ Note that u_(n) is always zero and that the right-hand side of the bound above is ∞ whenever one or more of the constants u_(i) is one.

Tighter bounds for the inverse of a WCDD L-matrix are known.[7][8][9][10]


Applications

Due to their relationship with M-matrices (see above), WCDD matrices appear often in practical applications. An example is given below.

Monotone numerical schemes

WCDD L-matrices arise naturally from monotone approximation schemes for partial differential equations.

For example, consider the one-dimensional Poisson problem

_u_^(′′)(_x_) + _g_(_x_) = 0
  for   x ∈ (0, 1) with Dirichlet boundary conditions u(0) = u(1) = 0. Letting {0, h, 2h, …, 1} be a numerical grid (for some positive h that divides unity), a monotone finite difference scheme for the Poisson problem takes the form of

$$-\frac{1}{h^2}A\vec{u} + \vec{g} = 0$$
  where   [g⃗]_(j) = g(jh) and

$$A = \begin{pmatrix}2 & -1\\
-1 & 2 & -1\\
 & -1 & 2 & -1\\
 &  & \ddots & \ddots & \ddots\\
 &  &  & -1 & 2 & -1\\
 &  &  &  & -1 & 2
\end{pmatrix}.$$
Note that A is a WCDD L-matrix.


References

Category:Matrices

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]