In applied mathematics, the FAST SWEEPING METHOD is a numerical method for solving boundary value problems of the Eikonal equation.

    |\nabla u(\mathbf{x})| = \frac 1 {f(\mathbf{x})} \text{ for } \mathbf{x} \in \Omega

    u(\mathbf{x}) = 0 \text{ for } \mathbf{x} \in \partial \Omega

where Ω is an open set in ℝ^(n), f(X) is a function with positive values, ∂Ω is a well-behaved boundary of the open set and | ⋅ | is the L² norm.

The fast sweeping method is an iterative method which uses upwind difference for discretization and uses Gauss–Seidel iterations with alternating sweeping ordering to solve the discretized Eikonal equation on a rectangular grid. The origins of this approach lie in control theory. Although fast sweeping methods have existed in control theory, it was first proposed for Eikonal equations[1] by Hongkai Zhao, an applied mathematician at the University of California, Irvine.

Sweeping algorithms are highly efficient for solving Eikonal equations when the corresponding characteristic curves do not change direction very often.[2]


References


See also

-   Fast marching method

Category:Numerical differential equations Category:Partial differential equations Category:Hyperbolic partial differential equations

[1]

[2] A. Chacon and A. Vladimirsky. Fast two-scale methods for Eikonal equations. SIAM J. on Scientific Computing 34/2: A547-A578, 2012. 1