The GENERALIZED-STRAIN MESH-FREE (GSMF) FORMULATION is a local meshfree method in the field of numerical analysis, completely integration free, working as a weighted-residual weak-form collocation. This method was first presented by Oliveira and Portela (2016),[1] in order to further improve the computational efficiency of meshfree methods in numerical analysis. Local meshfree methods are derived through a weighted-residual formulation which leads to a local weak form that is the well known work theorem of the theory of structures. In an arbitrary local region, the work theorem establishes an energy relationship between a statically-admissible stress field and an independent kinematically-admissible strain field. Based on the independence of these two fields, this formulation results in a local form of the work theorem that is reduced to regular boundary terms only, integration-free and free of volumetric locking.

Advantages over finite element methods are that GSMF doesn't rely on a grid, and is more precise and faster when solving bi-dimensional problems. When compared to other meshless methods, such as rigid-body displacement mesh-free (RBDMF) formulation, the element-free Galerkin (EFG)[2] and the meshless local Petrov-Galerkin finite volume method (MLPG FVM);[3] GSMF proved to be superior not only regarding the computational efficiency, but also regarding the accuracy.[4]

The moving least squares (MLS) approximation of the elastic field is used on this local meshless formulation.


Formulation

In the local form of the work theorem, equation:

    ∫_(Γ_(Q))T^(T)U^(*)dΓ + ∫_(Ω_(Q))B^(T)U^(*)dΩ = ∫_(Ω_(Q))Σ^(T)Ε^(*)dΩ.

The displacement field U^(*), was assumed as a continuous function leading to a regular integrable function that is the kinematically-admissible strain field Ε^(*). However, this continuity assumption on U^(*), enforced in the local form of the work theorem, is not absolutely required but can be relaxed by convenience, provided Ε^(*) can be useful as a generalized function, in the sense of the theory of distributions, see Gelfand and Shilov.[5] Hence, this formulation considers that the displacement field U^(*), is a piecewise continuous function, defined in terms of the Heaviside step function and therefore the corresponding strain field Ε^(*), is a generalized function defined in terms of the Dirac delta function.

For the sake of the simplicity, in dealing with Heaviside and Dirac delta functions in a two-dimensional coordinate space, consider a scalar function d, defined as:

    d = ∥ X − X_(Q)∥

which represents the absolute-value function of the distance between a field point X and a particular reference point X_(Q), in the local domain Ω_(Q) ∪ Γ_(Q) assigned to the field node Q. Therefore, this definition always assumes d = d(X, X_(Q)) ≥ 0, as a positive or null value, in this case whenever X and X_(Q) are coincident points.

For a scalar coordinate d ⊃ d(X, X_(Q)), the Heaviside step function can be defined as

    H(d) = 1      if     d ≤ 0      (d = 0   for   X ≡ X_(Q))
    H(d) = 0      if     d > 0      (X ≠ X_(Q))

in which the discontinuity is assumed at X_(Q) and consequently, the Dirac delta function is defined with the following properties

    δ(d) = H′(d) = ∞      if     d = 0   that  is   X ≡ X_(Q)
    δ(d) = H′(d) = 0      if     d ≠ 0   (d > 0   for   X ≠ X_(Q))

and

    $\int\limits_{-\infty}^{+\infty} \delta(d)\,d d=1$

in which H′(d) represents the distributional derivative of H(d). Note that the derivative of H(d), with respect to the coordinate x_(i), can be defined as

    H(d)_(, i) = H′(d)  d_(, i) = δ(d)  d_(, i) = δ(d)  n_(i)

Since the result of this equation is not affected by any particular value of the constant n_(i), this constant will be conveniently redefined later on.

Consider that d_(l), d_(j) and d_(k) represent the distance function d, for corresponding collocation points X_(l), X_(j) and X_(k). The displacement field U^(*)(X), can be conveniently defined as

    $\mathbf{u}^{*}(\mathbf{x}) = \Bigg[\frac{L_{i}}{n_i}\,\sum_{l=1}^{n_i} H(d_l)+\frac{L_{t}}{n_t}\,\sum_{j=1}^{n_t} H(d_j) +\frac{S}{n_\Omega}\,\sum_{k=1}^{n_\Omega} H(d_k)\Bigg] \mathbf{e}$

in which E = [1    1]^(T) represents the metric of the orthogonal directions and n_(i), n_(t) and n_(Ω) represent the number of collocation points, respectively on the local interior boundary Γ_(Qi) = Γ_(Q) − Γ_(Qt) − Γ_(Qu) with length L_(i), on the local static boundary Γ_(Qt) with length L_(t) and in the local domain Ω_(Q) with area S. This assumed displacement field U^(*)(X), a discrete rigid-body unit displacement defined at collocation points. The strain field Ε^(*)(X), is given by

    \boldsymbol{\varepsilon}^{*}(\mathbf{x})=\mathbf{L}\,\mathbf{u}^{*}(\mathbf{x})= \Bigg[\frac{L_{i}}{n_i}\,\sum_{l=1}^{n_i} \mathbf{L}\,H(d_l)+\frac{L_{t}}{n_t}\,\sum_{j=1}^{n_t} \mathbf{L}\,H(d_j) +\frac{S}{n_\Omega}\,\sum_{k=1}^{n_\Omega} \mathbf{L}\,H(d_k)\Bigg] \mathbf{e}



\BIGG[\FRAC{L_{I}}{N_I}\,\SUM_{L


1}^{n_i}\,\delta(d_l)\,\mathbf{n}^{T}\,+\frac{L_{t}}{n_t}\,\sum_{j=1}^{n_t} \,\delta(d_j)\,\mathbf{n}^{T}\, +\frac{S}{n_\Omega}\,\sum_{k=1}^{n_\Omega} \,\delta(d_k)\,\mathbf{n}^{T}\Bigg] \mathbf{e}

Having defined the displacement and the strain components of the kinematically-admissible field, the local work theorem can be written as

    \frac{L_{i}}{n_i}\sum_{l=1}^{n_i}\,\int\limits_{\Gamma_Q-\Gamma_{Qt}}\!\!\!\!\!\!\mathbf{t}^{T} H(d_l)\mathbf{e}\,d\Gamma +

 \frac{L_{t}}{n_t}\sum_{j=1}^{n_t}\,\int\limits_{\Gamma_{Qt}}\!\overline{\mathbf{t}}^{T} H(d_j)\mathbf{e}\,d\Gamma +
 \frac{S}{n_\Omega}\sum_{k=1}^{n_\Omega}\,\int\limits_{\Omega_Q}\mathbf{b}^{T} H(d_k)\mathbf{e}\,d\Omega
 =\frac{S}{n_\Omega}\sum_{k=1}^{n_\Omega}\,\int\limits_{\Omega_Q}\boldsymbol{\sigma}^{T}\delta(d_k)\,\mathbf{n}^{T}\mathbf{e}\,d\Omega.

Taking into account the properties of the Heaviside step function and Dirac delta function, this equation simply leads to

    $\frac{L_{i}}{n_i}\sum_{l=1}^{n_i}\,\mathbf{t}_{\mathbf{x}_l} = -\,\frac{L_{t}}{n_t}\sum_{j=1}^{n_t}\,\overline{\mathbf{t}}_{\mathbf{x}_j} -\,\frac{S}{n_\Omega}\sum_{k=1}^{n_\Omega}\,\mathbf{b}_{\mathbf{x}_k}$

Discretization of this equations can be carried out with the MLS approximation, for the local domain Ω_(Q), in terms of the nodal unknowns $\hat{\mathbf{u}}$, thus leading to the system of linear algebraic equations that can be written as

    $\frac{L_{i}}{n_i}\sum_{l=1}^{n_i}\,\mathbf{n}_{\mathbf{x}_l}\mathbf{D}\mathbf{B}_{\mathbf{x}_l}\hat{\mathbf{u}} =-\,\frac{L_{t}}{n_t}\sum_{j=1}^{n_t}\,\overline{\mathbf{t}}_{\mathbf{x}_j}-\,\frac{S}{n_\Omega}\sum_{k=1}^{n_\Omega}\,\mathbf{b}_{\mathbf{x}_k}$

or simply

    $\mathbf{K}_Q\,\hat{\mathbf{u}}=\mathbf{F}_Q$

This formulation states the equilibrium of tractions and body forces, pointwisely defined at collocation points, obviously, it is the pointwise version of the Euler-Cauchy stress principle. This is the equation used in the GENERALIZED-STRAIN MESH-FREE (GSMF) FORMULATION which, therefore, is free of integration. Since the work theorem is a weighted-residual weak form, it can be easily seen that this integration-free formulation is nothing else other than a weighted-residual weak-form collocation. The weighted-residual weak-form collocation readily overcomes the well-known difficulties posed by the weighted-residual strong-form collocation,[6] regarding accuracy and stability of the solution.


See also

-   Moving least squares
-   Finite element method
-   Boundary element method
-   Meshfree methods
-   Numerical analysis
-   Computational Solid Mechanics


References

Category:Numerical analysis

[1] Oliveira, T. and A. Portela (2016). "Weak-Form Collocation – a Local Meshless Method in Linear Elasticity". _Engineering Analysis with Boundary Elements_.

[2] Belytschko, T., Y. Y. Lu, and L. Gu (1994). "Element-free Galerkin methods". _International Journal for Numerical Methods in Engineering_. 37.2, pp. 229–256.

[3] Atluri, S.N., Z.D. Han, and A.M. Rajendran (2004). "A New Implementation of the Meshless Finite Volume Method Through the MLPG Mixed Approach". _CMES: Computer Modeling in Engineering and Sciences_. 6, pp. 491–513.

[4] Oliveira, T. and A. Portela (2016). "Comparative study of the weak-form collocation meshless formulation and other meshless methods". _Proceedings of the XXXVII Iberian Latin-American Congress on Computational Methods in Engineering_. ABMEC, Brazil

[5] Gelfand, I.M., Shilov, G.E. (1964). Generalized Functions. Volume I, Academic Press, New York.

[6] Kansa, E.J.,(1990) "Multiquadrics: A Scattered Data Approximation Scheme with Applications to Computational Fluid Dynamics", _Computers and Mathematics with Applications_, 19(8-9), 127--145.