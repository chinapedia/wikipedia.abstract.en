In computational mathematics, an ITERATIVE METHOD is a mathematical procedure that uses an initial guess to generate a sequence of improving approximate solutions for a class of problems, in which the _n_-th approximation is derived from the previous ones. A specific implementation of an iterative method, including the termination criteria, is an algorithm of the iterative method. An iterative method is called CONVERGENT if the corresponding sequence converges for given initial approximations. A mathematically rigorous convergence analysis of an iterative method is usually performed; however, heuristic-based iterative methods are also common.

In contrast, DIRECT METHODS attempt to solve the problem by a finite sequence of operations. In the absence of rounding errors, direct methods would deliver an exact solution (like solving a linear system of equations AX = B by Gaussian elimination). Iterative methods are often the only choice for nonlinear equations. However, iterative methods are often useful even for linear problems involving a large number of variables (sometimes of the order of millions), where direct methods would be prohibitively expensive (and in some cases impossible) even with the best available computing power.[1]


Attractive fixed points

If an equation can be put into the form _f_(_x_) = _x_, and a solution X is an attractive fixed point of the function _f_, then one may begin with a point _x_₁ in the basin of attraction of X, and let _x__(_n_+1) = _f_(_x__(_n_)) for _n_ ≥ 1, and the sequence {_x__(_n_)}_(_n_ ≥ 1) will converge to the solution X. Here _x__(_n_) is the _n_th approximation or iteration of _x_ and _x__(_n_+1) is the next or _n_ + 1 iteration of _x_. Alternately, superscripts in parentheses are often used in numerical methods, so as not to interfere with subscripts with other meanings. (For example, _x_^((_n_+1)) = _f_(_x_^((_n_))).) If the function _f_ is continuously differentiable, a sufficient condition for convergence is that the spectral radius of the derivative is strictly bounded by one in a neighborhood of the fixed point. If this condition holds at the fixed point, then a sufficiently small neighborhood (basin of attraction) must exist.


Linear systems

In the case of a system of linear equations, the two main classes of iterative methods are the STATIONARY ITERATIVE METHODS, and the more general Krylov subspace methods.

Stationary iterative methods

Introduction

Stationary iterative methods solve a linear system with an operator approximating the original one; and based on a measurement of the error in the result (the residual), form a "correction equation" for which this process is repeated. While these methods are simple to derive, implement, and analyze, convergence is only guaranteed for a limited class of matrices.

Definition

An _iterative method_ is defined by

X^(_k_ + 1) := _Ψ_(X^(_k_)) , _k_ ≥ 0
and for a given linear system AX = B with exact solution X^(*) the _error_ by

E^(_k_) := X^(_k_) − X^(*) , _k_ ≥ 0 .
An iterative method is called _linear_ if there exists a matrix $C \in \R^{n\times n}$ such that

E^(_k_ + 1) = _C_E^(_k_) ∀ _k_ ≥ 0
and this matrix is called _iteration matrix_. An iterative method with a given iteration matrix C is called _convergent_ if the following holds

lim_(_k_ → ∞)_C_^(_k_) = 0 .

An important theorem states that for a given iterative method and its iteration matrix C it is convergent if and only if its spectral radius ρ(C) is smaller than unity, that is,

_ρ_(_C_) < 1 .

The basic iterative methods work by splitting the matrix A into

_A_ = _M_ − _N_
and here the matrix M should be easily invertible. The iterative methods are now defined as

_M_X^(_k_ + 1) = _N_X^(_k_) + _b_ , _k_ ≥ 0 .
From this follows that the iteration matrix is given by

_C_ = _I_ − _M_^( − 1)_A_ = _M_^( − 1)_N_ .

Examples

Basic examples of stationary iterative methods use a splitting of the matrix A such as

_A_ = _D_ − _L_ − _U_ , _D_ := diag((_a__(_i__i_))_(_i_))
where D is only the diagonal part of A, and L is the strict lower triangular part of A. Respectively, U is the upper triangular part of A.

-   Richardson method: $M:=\frac{1}{\omega} I \quad (\omega \neq 0)$
-   Jacobi method: M := D
-   Damped Jacobi method: $M:=\frac{1}{\omega}D \quad (\omega \neq 0)$
-   Gauss–Seidel method: M := D − L
-   Successive over-relaxation method (SOR): $M:=\frac{1}{\omega}D-L \quad (\omega \neq 0)$
-   Symmetric successive over-relaxation (SSOR): M := \frac{1}{\omega (2-\omega)} (D-\omega L) D^{-1} (D-\omega U)

\quad (\omega \neq \{0,2\}) Linear stationary iterative methods are also called relaxation methods.

Krylov subspace methods

Krylov subspace methods work by forming a basis of the sequence of successive matrix powers times the initial residual (the KRYLOV SEQUENCE). The approximations to the solution are then formed by minimizing the residual over the subspace formed. The prototypical method in this class is the conjugate gradient method (CG) which assumes that the system matrix A is symmetric positive-definite. For symmetric (and possibly indefinite) A one works with the minimal residual method (MINRES). In the case of not even symmetric matrices methods, such as the generalized minimal residual method (GMRES) and the biconjugate gradient method (BiCG), have been derived.

Convergence of Krylov subspace methods

Since these methods form a basis, it is evident that the method converges in _N_ iterations, where _N_ is the system size. However, in the presence of rounding errors this statement does not hold; moreover, in practice _N_ can be very large, and the iterative process reaches sufficient accuracy already far earlier. The analysis of these methods is hard, depending on a complicated function of the spectrum of the operator.

Preconditioners

The approximating operator that appears in stationary iterative methods can also be incorporated in Krylov subspace methods such as GMRES (alternatively, preconditioned Krylov methods can be considered as accelerations of stationary iterative methods), where they become transformations of the original operator to a presumably better conditioned one. The construction of preconditioners is a large research area.

History

Probably the first iterative method for solving a linear system appeared in a letter of Gauss to a student of his. He proposed solving a 4-by-4 system of equations by repeatedly solving the component in which the residual was the largest.

The theory of stationary iterative methods was solidly established with the work of D.M. Young starting in the 1950s. The Conjugate Gradient method was also invented in the 1950s, with independent developments by Cornelius Lanczos, Magnus Hestenes and Eduard Stiefel, but its nature and applicability were misunderstood at the time. Only in the 1970s was it realized that conjugacy based methods work very well for partial differential equations, especially the elliptic type.


See also

-   Closed-form expression
-   Non-linear least squares
-   Numerical analysis
-   Root-finding algorithm


References


External links

-   Templates for the Solution of Linear Systems
-   Y. Saad: _Iterative Methods for Sparse Linear Systems_, 1st edition, PWS 1996

Iterative_methods Category:Numerical analysis

[1]