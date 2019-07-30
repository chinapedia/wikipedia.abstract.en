A real square matrix A is MONOTONE (in the sense of Collatz) if for all real vectors v, Av ≥ 0 implies v ≥ 0, where ≥ is the element-wise order on ℝ^(n).[1]


Properties

A monotone matrix is nonsingular.[2]

_Proof_: Let A be a monotone matrix and assume there exists x ≠ 0 with Ax = 0. Then, by monotonicity, x ≥ 0 and  − x ≥ 0, and hence x = 0. ▫

Let A be a real square matrix. A is monotone if and only if A^( − 1) ≥ 0.[3]

_Proof_: Suppose A is monotone. Denote by x the i-th column of A^( − 1). Then, Ax is the i-th standard basis vector, and hence x ≥ 0 by monotonicity. For the reverse direction, suppose A admits an inverse such that A^( − 1) ≥ 0. Then, if Ax ≥ 0, x = A^( − 1)Ax ≥ A^( − 1)0 = 0, and hence A is monotone. ▫


Examples

The matrix $\left( \begin{smallmatrix} 1&-2\\ 0&1 \end{smallmatrix} \right)$ is monotone, with inverse $\left( \begin{smallmatrix} 1&2\\ 0&1 \end{smallmatrix} \right)$. In fact, this matrix is an M-matrix (i.e., a monotone L-matrix).

Note, however, that not all monotone matrices are M-matrices. An example is $\left( \begin{smallmatrix} -1&3\\ 2&-4 \end{smallmatrix} \right)$, whose inverse is $\left( \begin{smallmatrix} 2&3/2\\ 1&1/2 \end{smallmatrix} \right)$.


See also

-   M-matrix
-   SMAWK algorithm
-   Weakly chained diagonally dominant matrix


References

Category:Matrices

[1]

[2]

[3]