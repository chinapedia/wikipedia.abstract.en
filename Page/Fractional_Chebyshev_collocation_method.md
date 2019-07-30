The FRACTIONAL CHEBYSHEV COLLOCATION (FCC) METHOD[1] is an efficient spectral method for solving a system of linear fractional-order differential equations (FDEs) with discrete delays. The FCC method overcomes several limitations of current numerical methods for solving linear FDEs. For instance, the FCC method can be used for linear incommensurate order FDEs and it does not require to be in canonical form. The essence of the method is that a discretization of the solution at the Chebyshev Gauss–Lobatto collocation points results in having spectral convergence and smaller computation time compared to finite difference methods. To accomplish this, a fractional differentiation matrix is derived at the Chebyshev Gauss–Lobatto collocation points by using the discrete orthogonal relationship of the Chebyshev polynomials. Then, using two proposed discretization operators for matrix functions results in an explicit form of solution for a system of linear FDEs with discrete delays. Moreover, it is shown that the proposed method can treat two common classes of linear FDEs: a system of linear commensurate order FDEs and a system of linear fractional-order delay-differential equations.

The fractional Chebyshev differentiation matrix in the sense of Caputo, _(t₀)D_(t_(N))^(α) , is a linear map that maps the discretized function at the CGL points T = [t₀, t₁, …, t_(N)] onto the discretized fractional derivative of the function at those points

    _{t_0}\text{D}_{t_N}^\alpha \mathbf{x} = \begin{bmatrix}

{}_{t_0}^C\mathcal{D}_t^\alpha x(t_0) & {}_{t_0}^C\mathcal{D}_t^\alpha x(t_1) & \cdots & {}_{t_0}^C\mathcal{D}_t^\alpha x(t_N) \end{bmatrix}^T

Then, it is shown that how a matrix function can be discretized in an interval at the CGL points by using two discretization operators. Finally, in two theories the solution of a system of linear commensurate order FDEs and a system of linear FDDEs are given by a state transition matrix.


References

Category:Spectral theory

[1]