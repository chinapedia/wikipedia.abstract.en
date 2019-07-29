GAUSSIAN ELIMINATION, also known as ROW REDUCTION, is an algorithm in linear algebra for solving a system of linear equations. It is usually understood as a sequence of operations performed on the corresponding matrix of coefficients. This method can also be used to find the rank of a matrix, to calculate the determinant of a matrix, and to calculate the inverse of an invertible square matrix. The method is named after Carl Friedrich Gauss (1777–1855), although it was known to Chinese mathematicians as early as 179 A.D. (see History section).

To perform row reduction on a matrix, one uses a sequence of elementary row operations to modify the matrix until the lower left-hand corner of the matrix is filled with zeros, as much as possible. There are three types of elementary row operations:

-   Swapping two rows,
-   Multiplying a row by a nonzero number,
-   Adding a multiple of one row to another row.

Using these operations, a matrix can always be transformed into an upper triangular matrix, and in fact one that is in row echelon form. Once all of the leading coefficients (the leftmost nonzero entry in each row) are 1, and every column containing a leading coefficient has zeros elsewhere, the matrix is said to be in reduced row echelon form. This final form is unique; in other words, it is independent of the sequence of row operations used. For example, in the following sequence of row operations (where multiple elementary operations might be done at each step), the third and fourth matrices are the ones in row echelon form, and the final matrix is the unique reduced row echelon form.

$$\left[\begin{array}{rrr|r}
1 & 3 & 1 & 9 \\
1 & 1 & -1 & 1 \\
3 & 11 & 5 & 35
\end{array}\right]\to
\left[\begin{array}{rrr|r}
1 & 3 & 1 & 9 \\
0 & -2 & -2 & -8 \\
0 & 2 & 2 & 8
\end{array}\right]\to
\left[\begin{array}{rrr|r}
1 & 3 & 1 & 9 \\
0 & -2 & -2 & -8 \\
0 & 0 & 0 & 0
\end{array}\right]\to
\left[\begin{array}{rrr|r}
1 & 0 & -2 & -3 \\
0 & 1 & 1 & 4 \\
0 & 0 & 0 & 0
\end{array}\right]$$

Using row operations to convert a matrix into reduced row echelon form is sometimes called GAUSS–JORDAN ELIMINATION. Some authors use the term Gaussian elimination to refer to the process until it has reached its upper triangular, or (unreduced) row echelon form. For computational reasons, when solving systems of linear equations, it is sometimes preferable to stop row operations before the matrix is completely reduced.


Definitions and example of algorithm

The process of row reduction makes use of elementary row operations, and can be divided into two parts. The first part (sometimes called forward elimination) reduces a given system to _row echelon form_, from which one can tell whether there are no solutions, a unique solution, or infinitely many solutions. The second part (sometimes called back substitution) continues to use row operations until the solution is found; in other words, it puts the matrix into _reduced_ row echelon form.

Another point of view, which turns out to be very useful to analyze the algorithm, is that row reduction produces a matrix decomposition of the original matrix. The elementary row operations may be viewed as the multiplication on the left of the original matrix by elementary matrices. Alternatively, a sequence of elementary operations that reduces a single row may be viewed as multiplication by a Frobenius matrix. Then the first part of the algorithm computes an LU decomposition, while the second part writes the original matrix as the product of a uniquely determined invertible matrix and a uniquely determined reduced row echelon matrix.

Row operations

There are three types of ELEMENTARY ROW OPERATIONS which may be performed on the rows of a matrix:

1.  Swap the positions of two rows.
2.  Multiply a row by a non-zero scalar.
3.  Add to one row a scalar multiple of another.

If the matrix is associated to a system of linear equations, then these operations do not change the solution set. Therefore, if one's goal is to solve a system of linear equations, then using these row operations could make the problem easier.

Echelon form

For each row in a matrix, if the row does not consist of only zeros, then the leftmost nonzero entry is called the _leading coefficient_ (or _pivot_) of that row. So if two leading coefficients are in the same column, then a row operation of type 3 could be used to make one of those coefficients zero. Then by using the row swapping operation, one can always order the rows so that for every non-zero row, the leading coefficient is to the right of the leading coefficient of the row above. If this is the case, then matrix is said to be in ROW ECHELON FORM. So the lower left part of the matrix contains only zeros, and all of the zero rows are below the non-zero rows. The word "echelon" is used here because one can roughly think of the rows being ranked by their size, with the largest being at the top and the smallest being at the bottom.

For example, the following matrix is in row echelon form, and its leading coefficients are shown in red:

    \begin{bmatrix}

 0 & \color{red}{\mathbf{2}} &                     1   & -1 \\
 0 &                     0   & \color{red}{\mathbf{3}} &  1 \\
 0 &                     0   &                     0   &  0

\end{bmatrix}.

It is in echelon form because the zero row is at the bottom, and the leading coefficient of the second row (in the third column), is to the right of the leading coefficient of the first row (in the second column).

A matrix is said to be in REDUCED ROW ECHELON FORM if furthermore all of the leading coefficients are equal to 1 (which can be achieved by using the elementary row operation of type 2), and in every column containing a leading coefficient, all of the other entries in that column are zero (which can be achieved by using elementary row operations of type 3).

Example of the algorithm

Suppose the goal is to find and describe the set of solutions to the following system of linear equations:



\begin{alignat}{4}

 2x &{}+{}& y &{}-{}&  z &{}={}&   8 & \qquad (L_1) \\
-3x &{}-{}& y &{}+{}& 2z &{}={}& -11 & \qquad (L_2) \\
-2x &{}+{}& y &{}+{}& 2z &{}={}&  -3 & \qquad (L_3)

\end{alignat}

The table below is the row reduction process applied simultaneously to the system of equations and its associated augmented matrix. In practice, one does not usually deal with the systems in terms of equations, but instead makes use of the augmented matrix, which is more suitable for computer manipulations. The row reduction procedure may be summarized as follows: eliminate from all equations below , and then eliminate from all equations below . This will put the system into triangular form. Then, using back-substitution, each unknown can be solved for.

    {| style="background-color:white;" class="wikitable"

|- ! System of equations !! Row operations !! Augmented matrix |- align="center" | $\begin{alignat}{4}
  2x &{}+{}& y &{}-{}&  z &{}={}&   8 & \\
 -3x &{}-{}& y &{}+{}& 2z &{}={}& -11 & \\
 -2x &{}+{}& y &{}+{}& 2z &{}={}&  -3 &
\end{alignat}$ | | $\left[\begin{array}{rrr|r}
  2 &  1 & -1 &   8 \\
 -3 & -1 &  2 & -11 \\
 -2 &  1 &  2 &  -3
\end{array}\right]$ |- align="center" | $\begin{alignat}{4}
 2x &{}+{}&          y &{}-{}&          z &{}={}& 8 & \\
    &     & \tfrac12 y &{}+{}& \tfrac12 z &{}={}& 1 & \\
    &     &         2y &{}+{}&          z &{}={}& 5 &
\end{alignat}$ | $\begin{align}
 L_2 + \tfrac32 L_1 &\to L_2 \\
 L_3 +          L_1 &\to L_3
\end{align}$ | $\left[\begin{array}{rrr|r}
 2 &      1  &     -1  & 8 \\
 0 & \frac12 & \frac12 & 1 \\
 0 &      2  &      1  & 5
\end{array}\right]$ |- align="center" | $\begin{alignat}{4}
 2x &{}+{}&          y &{}-{}&          z &{}={}& 8 & \\
    &     & \tfrac12 y &{}+{}& \tfrac12 z &{}={}& 1 & \\
    &     &            &     &         -z &{}={}& 1 &
\end{alignat}$ | L₃ +  − 4L₂ → L₃ | $\left[\begin{array}{rrr|r}
 2 &      1  &     -1  & 8 \\
 0 & \frac12 & \frac12 & 1 \\
 0 &      0  &     -1  & 1
\end{array}\right]$ |- |colspan=3; align="center"| The matrix is now in echelon form (also called triangular form) |- align="center" | $\begin{alignat}{4}
 2x &{}+{}&          y &     &   &{}={}       7  & \\
    &     & \tfrac12 y &     &   &{}={} \tfrac32 & \\
    &     &            &{}-{}& z &{}={}       1  &
\end{alignat}$ | $\begin{align}
 L_2 + \tfrac12 L_3 &\to L_2 \\
 L_1 -          L_3 &\to L_1
\end{align}$ | $\left[\begin{array}{rrr|r}
 2 &      1  &  0 &      7  \\
 0 & \frac12 &  0 & \frac32 \\
 0 &      0  & -1 &      1
\end{array}\right]$ |- align="center" | $\begin{alignat}{4}
 2x &{}+{}& y &\quad&   &{}={}&  7 & \\
    &     & y &\quad&   &{}={}&  3 & \\
    &     &   &\quad& z &{}={}& -1 &
\end{alignat}$ | $\begin{align}
 2 L_2 &\to L_2 \\
  -L_3 &\to L_3
\end{align}$ | $\left[\begin{array}{rrr|r}
 2 & 1 & 0 &  7 \\
 0 & 1 & 0 &  3 \\
 0 & 0 & 1 & -1
\end{array}\right]$ |- align="center" | $\begin{alignat}{4}
 x &\quad&   &\quad&   &{}={}&  2 & \\
   &\quad& y &\quad&   &{}={}&  3 & \\
   &\quad&   &\quad& z &{}={}& -1 &
\end{alignat}$ | $\begin{align}
          L_1 - L_2 &\to L_1 \\
 \tfrac12 L_1       &\to L_1
\end{align}$ | $\left[\begin{array}{rrr|r}
 1 & 0 & 0 &  2 \\
 0 & 1 & 0 &  3 \\
 0 & 0 & 1 & -1
\end{array}\right]$ |}

The second column describes which row operations have just been performed. So for the first step, the is eliminated from by adding to . Next, is eliminated from by adding to . These row operations are labelled in the table as

    \begin{align}

L_2 + \tfrac32 L_1 &\to L_2, \\
L_3 +          L_1 &\to L_3.

\end{align}

Once is also eliminated from the third row, the result is a system of linear equations in triangular form, and so the first part of the algorithm is complete. From a computational point of view, it is faster to solve the variables in reverse order, a process known as back-substitution. One sees the solution is −1}}, 3}}, and 2}}. So there is a unique solution to the original system of equations.

Instead of stopping once the matrix is in echelon form, one could continue until the matrix is in _reduced_ row echelon form, as it is done in the table. The process of row reducing until the matrix is reduced is sometimes referred to as GAUSS–JORDAN ELIMINATION, to distinguish it from stopping after reaching echelon form.


History

The method of Gaussian elimination appears in the Chinese mathematical text Chapter Eight: _Rectangular Arrays_ of _The Nine Chapters on the Mathematical Art_. Its use is illustrated in eighteen problems, with two to five equations. The first reference to the book by this title is dated to 179 CE, but parts of it were written as early as approximately 150 BCE.[1][2] It was commented on by Liu Hui in the 3rd century.

The method in Europe stems from the notes of Isaac Newton.[3][4] In 1670, he wrote that all the algebra books known to him lacked a lesson for solving simultaneous equations, which Newton then supplied. Cambridge University eventually published the notes as _Arithmetica Universalis_ in 1707 long after Newton had left academic life. The notes were widely imitated, which made (what is now called) Gaussian elimination a standard lesson in algebra textbooks by the end of the 18th century. Carl Friedrich Gauss in 1810 devised a notation for symmetric elimination that was adopted in the 19th century by professional hand computers to solve the normal equations of least-squares problems.[5] The algorithm that is taught in high school was named for Gauss only in the 1950s as a result of confusion over the history of the subject.[6]

Some authors use the term _Gaussian elimination_ to refer only to the procedure until the matrix is in echelon form, and use the term GAUSS–JORDAN ELIMINATION to refer to the procedure which ends in reduced echelon form. The name is used because it is a variation of Gaussian elimination as described by Wilhelm Jordan in 1888. However, the method also appears in an article by Clasen published in the same year. Jordan and Clasen probably discovered Gauss–Jordan elimination independently.[7]


Applications

Historically, the first application of the row reduction method is for solving systems of linear equations. Here are some other important applications of the algorithm.

Computing determinants

To explain how Gaussian elimination allows the computation of the determinant of a square matrix, we have to recall how the elementary row operations change the determinant:

-   Swapping two rows multiplies the determinant by −1
-   Multiplying a row by a nonzero scalar multiplies the determinant by the same scalar
-   Adding to one row a scalar multiple of another does not change the determinant.

If Gaussian elimination applied to a square matrix produces a row echelon matrix , let be the product of the scalars by which the determinant has been multiplied, using the above rules. Then the determinant of is the quotient by of the product of the elements of the diagonal of :

$$\det(A) = \frac{\prod\operatorname{diag}(B)}{d}.$$

Computationally, for an matrix, this method needs only arithmetic operations, while solving by elementary methods requires or operations. Even on the fastest computers, the elementary methods are impractical for above 20.

Finding the inverse of a matrix

A variant of Gaussian elimination called Gauss–Jordan elimination can be used for finding the inverse of a matrix, if it exists. If is an square matrix, then one can use row reduction to compute its inverse matrix, if it exists. First, the identity matrix is augmented to the right of , forming an block matrix _I_]}}. Now through application of elementary row operations, find the reduced echelon form of this matrix. The matrix is invertible if and only if the left block can be reduced to the identity matrix ; in this case the right block of the final matrix is . If the algorithm is unable to reduce the left block to , then is not invertible.

For example, consider the following matrix:

    A =

\begin{bmatrix}
 2 & -1 &  0 \\
-1 &  2 & -1 \\
 0 & -1 &  2
\end{bmatrix}.

To find the inverse of this matrix, one takes the following matrix augmented by the identity and row-reduces it as a 3 × 6 matrix:

    [ A | I ] =

\left[\begin{array}{rrr|rrr}
  2 & -1 &  0 & 1 & 0 & 0 \\
 -1 &  2 & -1 & 0 & 1 & 0 \\
  0 & -1 &  2 & 0 & 0 & 1
\end{array}\right].

By performing row operations, one can check that the reduced row echelon form of this augmented matrix is

    [ I | B ] =

\left[\begin{array}{rrr|rrr}
 1 & 0 & 0 & \frac34 & \frac12 & \frac14 \\
 0 & 1 & 0 & \frac12 &      1  & \frac12 \\
 0 & 0 & 1 & \frac14 & \frac12 & \frac34
\end{array}\right].

One can think of each row operation as the left product by an elementary matrix. Denoting by the product of these elementary matrices, we showed, on the left, that _I_}}, and therefore, _A_^(−1)}}. On the right, we kept a record of _B_}}, which we know is the inverse desired. This procedure for finding the inverse works for square matrices of any size.

Computing ranks and bases

The Gaussian elimination algorithm can be applied to any matrix . In this way, for example, some 6 × 9 matrices can be transformed to a matrix that has a row echelon form like

$$T=
\begin{bmatrix}
a & * & * & *& * & * & * & * & * \\
0 & 0 & b & * & * & * & * & * & * \\
0 & 0 & 0 & c & * & * & * & * & * \\
0 & 0 & 0 & 0 & 0 & 0 & d & * & * \\
0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & e \\
0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0
\end{bmatrix},$$
where the stars are arbitrary entries, and are nonzero entries. This echelon matrix contains a wealth of information about : the rank of is 5, since there are 5 nonzero rows in ; the vector space spanned by the columns of has a basis consisting of its columns 1, 3, 4, 7 and 9 (the columns with in ), and the stars show how the other columns of can be written as linear combinations of the basis columns. This is a consequence of the distributivity of the dot product in the expression of a linear map as a matrix.

All of this applies also to the reduced row echelon form, which is a particular row echelon format.


Computational efficiency

The number of arithmetic operations required to perform row reduction is one way of measuring the algorithm's computational efficiency. For example, to solve a system of equations for unknowns by performing row operations on the matrix until it is in echelon form, and then solving for each unknown in reverse order, requires divisions, multiplications, and subtractions,[8] for a total of approximately operations. Thus it has arithmetic complexity of ; see Big O notation. This arithmetic complexity is a good measure of the time needed for the whole computation when the time for each arithmetic operation is approximately constant. This is the case when the coefficients are represented by floating-point numbers or when they belong to a finite field. If the coefficients are integers or rational numbers exactly represented, the intermediate entries can grow exponentially large, so the bit complexity is exponential.[9] However, there is a variant of Gaussian elimination, called the Bareiss algorithm, that avoids this exponential growth of the intermediate entries and, with the same arithmetic complexity of , has a bit complexity of .

This algorithm can be used on a computer for systems with thousands of equations and unknowns. However, the cost becomes prohibitive for systems with millions of equations. These large systems are generally solved using iterative methods. Specific methods exist for systems whose coefficients follow a regular pattern (see system of linear equations).

To put an matrix into reduced echelon form by row operations, one needs arithmetic operations, which is approximately 50% more computation steps.[10]

One possible problem is numerical instability, caused by the possibility of dividing by very small numbers. If, for example, the leading coefficient of one of the rows is very close to zero, then to row-reduce the matrix, one would need to divide by that number. This means that any error existed for the number that was close to zero would be amplified. Gaussian elimination is numerically stable for diagonally dominant or positive-definite matrices. For general matrices, Gaussian elimination is usually considered to be stable, when using partial pivoting, even though there are examples of stable matrices for which it is unstable.[11]

Generalizations

Gaussian elimination can be performed over any field, not just the real numbers.

Buchberger's algorithm is a generalization of Gaussian elimination to systems of polynomial equations. This generalization depends heavily on the notion of a monomial order. The choice of an ordering on the variables is already implicit in Gaussian elimination, manifesting as the choice to work from left to right when selecting pivot positions.

Gaussian elimination does not generalize in any way to higher-order tensors (matrices are array representations of order-2 tensors); even computing the rank of a tensor of order greater than 2 is NP-hard.[12]


Pseudocode

As explained above, Gaussian elimination transforms a given matrix into a matrix in row-echelon form.

In the following pseudocode, A[i, j] denotes the entry of the matrix in row and column with the indices starting from 1. The transformation is performed _in place_, meaning that the original matrix is lost for being eventually replaced by its row-echelon form.

 h := 1 /* _Initialization of the pivot row_ */
 k := 1 /* _Initialization of the pivot column_ */
 while h ≤ m and k ≤ n
   /* _Find the k-th pivot:_ */
   i_max := argmax (i = h ... m, abs(A[i, k]))
   if A[i_max, k] = 0
     /* _No pivot in this column, pass to next column_ */
     k := k+1
   else
      swap rows(h, i_max)
      /* _Do for all rows below pivot:_ */
      for i = h + 1 ... m:
         f := A[i, k] / A[h, k]
         /* _Fill with zeros the lower part of pivot column:_ */
         A[i, k]  := 0
         /* _Do for all remaining elements in current row:_ */
         for j = k + 1 ... n:
            A[i, j] := A[i, j] - A[h, j] * f
      /* _Increase pivot row and column_ */
      h := h+1 
      k := k+1

This algorithm differs slightly from the one discussed earlier, by choosing a pivot with largest absolute value. Such a _partial pivoting_ may be required if, at the pivot place, the entry of the matrix is zero. In any case, choosing the largest possible absolute value of the pivot improves the numerical stability of the algorithm, when floating point is used for representing numbers.

Upon completion of this procedure the matrix will be in row echelon form and the corresponding system may be solved by back substitution.


See also

-   Fangcheng (mathematics)


Notes


References

-   .

-   .

-   .

-   .

-   .

-   .

-   -   -   .

-   .

-   -   .

-

Category:Numerical linear algebra Category:Articles with example pseudocode Category:Exchange algorithms

[1] , pp. 234–236

[2]

[3] , pp. 169-172

[4] , pp. 783-785

[5] , p. 3

[6] , p. 789

[7]

[8] , p. 12.

[9]

[10] J. B. Fraleigh and R. A. Beauregard, Linear Algebra. Addison-Wesley Publishing Company, 1995, Chapter 10.

[11] , §3.4.6.

[12]