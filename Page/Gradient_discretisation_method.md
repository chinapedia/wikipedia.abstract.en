Exact solution
$\overline{u}(x) = \frac 3 4 \big({0.5}^{4/3}- |x - 0.5|^{4/3}\big)$
of the _p_-Laplace problem $-( |\overline{u}'|^2 \overline{u}')'(x) = 1$ on the domain [0,1] with $\overline{u}(0) = \overline{u}(1) = 0$ (black line) and approximate one (blue line) computed with the first degree discontinuous Galerkin method plugged into the GDM (uniform mesh with 6 elements). In numerical mathematics, the GRADIENT DISCRETISATION METHOD (GDM) is a framework which contains classical and recent numerical schemes for diffusion problems of various kinds: linear or non-linear, steady-state or time-dependent. The schemes may be conforming or non-conforming, and may rely on very general polygonal or polyhedral meshes (or may even be meshless).

Some core properties are required to prove the convergence of a GDM. These core properties enable complete proofs of convergence of the GDM for elliptic and parabolic problems, linear or non-linear. For linear problems, stationary or transient, error estimates can be established based on three indicators specific to the GDM [1] (the quantities C_(D), S_(D) and W_(D), see below). For non-linear problems, the proofs are based on compactness techniques and do not require any non-physical strong regularity assumption on the solution or the model data.[2] Non-linear models for which such convergence proof of the GDM have been carried out comprise: the Stefan problem which is modelling a melting material, two-phase flows in porous media, the Richards equation of underground water flow, the fully non-linear Leray—Lions equations.[3]

Any scheme entering the GDM framework is then known to converge on all these problems. This applies in particular to conforming Finite Elements, Mixed Finite Elements, nonconforming Finite Elements, and, in the case of more recent schemes, the Discontinuous Galerkin method, Hybrid Mixed Mimetic method, the Nodal Mimetic Finite Difference method, some Discrete Duality Finite Volume schemes, and some Multi-Point Flux Approximation schemes


The example of a linear diffusion problem

Consider Poisson's equation in a bounded open domain Ω ⊂ ℝ^(d), with homogeneous Dirichlet boundary condition

$$\quad (1) \qquad  \qquad -\Delta \overline{u} = f,$$

where f ∈ L²(Ω). The usual sense of weak solution [4] to this model is:

$$\quad (2) \qquad\mbox{Find }\overline{u}\in H^1_0(\Omega)\mbox{ such that, for all } \overline{v} \in H^1_0(\Omega),\quad  \int_{\Omega} \nabla \overline{u}(x)\cdot\nabla \overline{v}(x) dx = \int_{\Omega} f(x)\overline{v}(x) dx.$$

In a nutshell, the GDM for such a model consists in selecting a finite-dimensional space and two reconstruction operators (one for the functions, one for the gradients) and to substitute these discrete elements in lieu of the continuous elements in (2). More precisely, the GDM starts by defining a Gradient Discretization (GD), which is a triplet D = (X_(D, 0), Π_(D), ∇_(D)), where:

-   the set of discrete unknowns X_(D, 0) is a finite dimensional real vector space,
-   the function reconstruction Π_(D) : X_(D, 0) → L²(Ω) is a linear mapping that reconstructs, from an element of X_(D, 0), a function over Ω,
-   the gradient reconstruction ∇_(D) : X_(D, 0) → L²(Ω)^(d) is a linear mapping which reconstructs, from an element of X_(D, 0), a "gradient" (vector-valued function) over Ω. This gradient reconstruction must be chosen such that ‖∇_(D) ⋅ ‖_(L²(Ω)^(d)) is a norm on X_(D, 0).

The related Gradient Scheme for the approximation of (2) is given by: find u ∈ X_(D, 0) such that

 (3)    ∀_v_ ∈ _X__(_D_, 0),  ∫_(_Ω_)∇_(_D_)_u_(_x_) ⋅ ∇_(_D_)_v_(_x_)_d__x_ = ∫_(_Ω_)_f_(_x_)_Π__(_D_)_v_(_x_)_d__x_.

The GDM is then in this case a nonconforming method for the approximation of (2), which includes the nonconforming finite element method. Note that the reciprocal is not true, in the sense that the GDM framework includes methods such that the function ∇_(D)u cannot be computed from the function Π_(D)u.

The following error estimate, inspired by G. Strang's second lemma,[5] holds

$$\quad (4) \qquad  \qquad  W_D(\nabla \overline{u}) \le \Vert \nabla \overline{u}  - \nabla_D u_D\Vert_{L^2(\Omega)^d}
\le  W_D(\nabla \overline{u}) + 2 S_D(\overline{u}),$$

and

$$\quad (5) \qquad  \qquad  \Vert \overline{u}  - \Pi_D u_D\Vert_{L^2(\Omega)}
\le C_D W_D(\nabla \overline{u}) + (C_D+1)S_D(\overline{u}),$$

defining:

$$\quad (6) \qquad  \qquad C_D =  \max_{v\in X_{D,0}\setminus\{0\}}\frac {\Vert \Pi_D v\Vert_{L^2(\Omega)}} {\Vert \nabla_D v \Vert_{L^2(\Omega)^d}},$$
which measures the coercivity (discrete Poincaré constant),

 (7)    ∀_φ_ ∈ _H_₀¹(_Ω_), _S__(_D_)(_φ_) = min_(_v_ ∈ _X__(_D_, 0))(‖_Π__(_D_)_v_−_φ_‖_(_L_²(_Ω_))+‖∇_(_D_)_v_−∇_φ_‖_(_L_²(_Ω_)^(_d_))),
which measures the interpolation error,

$$\quad (8) \qquad  \qquad
\forall \varphi\in H_\operatorname{div}(\Omega),\,
 W_D(\varphi) = \max_{v\in X_{D,0}\setminus\{0\}}\frac{
\left|\int_\Omega \left(\nabla_D v(x)\cdot\varphi(x) + \Pi_D v(x) \operatorname{div}\varphi(x)\right) \, dx \right|}{\Vert \nabla_D v \Vert_{L^2(\Omega)^d}},$$
which measures the defect of conformity.

Note that the following upper and lower bounds of the approximation error can be derived:

$$\quad (9) \qquad  \qquad \begin{align} &&\frac 1 2 [S_D(\overline{u}) + W_D(\nabla \overline{u})] \\  &\le & \Vert \overline{u}  - \Pi_D u_D\Vert_{L^2(\Omega)} + \Vert \nabla \overline{u}  - \nabla_D u_D\Vert_{L^2(\Omega)^d} \\ &\le &(C_D+2) [S_D(\overline{u}) + W_D(\nabla \overline{u})].\end{align}$$

Then the core properties which are necessary and sufficient for the convergence of the method are, for a family of GDs, the coercivity, the GD-consistency and the limit-conformity properties, as defined in the next section. More generally, these three core properties are sufficient to prove the convergence of the GDM for linear problems and for some nonlinear problems like the p-Laplace problem. For nonlinear problems such as nonlinear diffusion, degenerate parabolic problems..., we add in the next section two other core properties which may be required.


The core properties allowing for the convergence of a GDM

Let (D_(m))_(m ∈ ℕ) be a family of GDs, defined as above (generally associated with a sequence of regular meshes whose size tends to 0).

Coercivity

The sequence (C_(D_(m)))_(m ∈ ℕ) (defined by (6)) remains bounded.

GD-consistency

For all φ ∈ H₀¹(Ω), lim_(m → ∞)S_(D_(m))(φ) = 0 (defined by (7)).

Limit-conformity

For all φ ∈ H_(div)(Ω), lim_(m → ∞)W_(D_(m))(φ) = 0 (defined by (8)). This property implies the coercivity property.

Compactness (needed for some nonlinear problems)

For all sequence (u_(m))_(m ∈ ℕ) such that u_(m) ∈ X_(D_(m), 0) for all m ∈ ℕ and (‖u_(m)‖_(D_(m)))_(m ∈ ℕ) is bounded, then the sequence (Π_(D_(m))u_(m))_(m ∈ ℕ) is relatively compact in L²(Ω) (this property implies the coercivity property).

Piecewise constant reconstruction (needed for some nonlinear problems)

Let D = (X_(D, 0), Π_(D), ∇_(D)) be a gradient discretisation as defined above. The operator Π_(D) is a piecewise constant reconstruction if there exists a basis (e_(i))_(i ∈ B) of X_(D, 0) and a family of disjoint subsets (Ω_(i))_(i ∈ B) of Ω such that Π_(D)u = ∑_(i ∈ B)u_(i)χ_(Ω_(i)) for all u = ∑_(i ∈ B)u_(i)e_(i) ∈ X_(D, 0), where χ_(Ω_(i)) is the characteristic function of Ω_(i).


Some non-linear problems with complete convergence proofs of the GDM

We review some problems for which the GDM can be proved to converge when the above core properties are satisfied.

Nonlinear stationary diffusion problems

$$\quad  \qquad  \qquad -\operatorname{div}(\Lambda(\overline{u})\nabla \overline{u}) = f$$

In this case, the GDM converges under the coercivity, GD-consistency, limit-conformity and compactness properties.

_p_-Laplace problem for _p_ > 1

$$\quad  \qquad  \qquad -\operatorname{div}(|\nabla \overline{u}|^{p-2}\nabla \overline{u}) = f$$

In this case, the core properties must be written, replacing L²(Ω) by L^(p)(Ω), H₀¹(Ω) by W₀^(1, p)(Ω) and H_(div)(Ω) by W_(div^(p′))(Ω) with $\frac 1 p +\frac 1 {p'}=1$, and the GDM converges only under the coercivity, GD-consistency and limit-conformity properties.

Linear and nonlinear heat equation

$$\quad  \qquad  \qquad \partial_t \overline{u}- \operatorname{div}(\Lambda (\overline{u}) \nabla \overline{u}) = f$$

In this case, the GDM converges under the coercivity, GD-consistency (adapted to space-time problems), limit-conformity and compactness (for the nonlinear case) properties.

Degenerate parabolic problems

Assume that β and ζ are nondecreasing Lipschitz continuous functions:

$$\quad  \qquad  \qquad \partial_t \beta(\overline{u})-\Delta \zeta(\overline{u}) = f$$

Note that, for this problem, the piecewise constant reconstruction property is needed, in addition to the coercivity, GD-consistency (adapted to space-time problems), limit-conformity and compactness properties.


Review of some numerical methods which are GDM

All the methods below satisfy the first four core properties of GDM (coercivity, GD-consistency, limit-conformity, compactness), and in some cases the fifth one (piecewise constant reconstruction).

Galerkin methods and conforming finite element methods

Let V_(h) ⊂ H₀¹(Ω) be spanned by the finite basis (ψ_(i))_(i ∈ I). The Galerkin method in V_(h) is identical to the GDM where one defines

-   X_(D, 0) = {u = (u_(i))_(i ∈ I)} = ℝ^(I),
-   Π_(D)u = ∑_(i ∈ I)u_(i)ψ_(i)
-   ∇_(D)u = ∑_(i ∈ I)u_(i)∇ψ_(i).

In this case, C_(D) is the constant involved in the continuous Poincaré inequality, and, for all φ ∈ H_(div)(Ω), W_(D)(φ) = 0 (defined by (8)). Then (4) and (5) are implied by Céa's lemma.

The "mass-lumped" P¹ finite element case enters the framework of the GDM, replacing Π_(D)u by Π̃_(D)u = ∑_(i ∈ I)u_(i)χ_(Ω_(i)), where Ω_(i) is a dual cell centred on the vertex indexed by i ∈ I. Using mass lumping allows to get the piecewise constant reconstruction property.

Nonconforming finite element

On a mesh T which is a conforming set of simplices of ℝ^(d), the nonconforming P¹ finite elements are defined by the basis (ψ_(i))_(i ∈ I) of the functions which are affine in any K ∈ T, and whose value at the centre of gravity of one given face of the mesh is 1 and 0 at all the others (these finite elements are used in [Crouzeix _et al_][6] for the approximation of the Stokes and Navier-Stokes equations). Then the method enters the GDM framework with the same definition as in the case of the Galerkin method, except for the fact that ∇ψ_(i) must be understood as the "broken gradient" of ψ_(i), in the sense that it is the piecewise constant function equal in each simplex to the gradient of the affine function in the simplex.

Mixed finite element

The mixed finite element method consists in defining two discrete spaces, one for the approximation of $\nabla \overline{u}$ and another one for $\overline{u}$.[7] It suffices to use the discrete relations between these approximations to define a GDM. Using the low degree Raviart–Thomas basis functions allows to get the piecewise constant reconstruction property.

Discontinuous Galerkin method

The Discontinuous Galerkin method consists in approximating problems by a piecewise polynomial function, without requirements on the jumps from an element to the other.[8] It is plugged in the GDM framework by including in the discrete gradient a jump term, acting as the regularization of the gradient in the distribution sense.

Mimetic finite difference method and nodal mimetic finite difference method

This family of methods is introduced by [Brezzi _et al_][9] and completed in [Lipnikov _et al_].[10] It allows the approximation of elliptic problems using a large class of polyhedral meshes. The proof that it enters the GDM framework is done in [Droniou _et al_].[11]


See also

-   Finite element method


References


External links

-   The Gradient Discretisation Method by Jérôme Droniou, Robert Eymard, Thierry Gallouët, Cindy Guichard and Raphaèle Herbin

Category:Numerical differential equations Category:Numerical analysis

[1] R. EYMARD, C. GUICHARD, AND R. HERBIN. Small-stencil 3d schemes for diffusive flows in porous media. M2AN, 46:265–290, 2012.

[2] J. DRONIOU, R. EYMARD, T. GALLOUËT, AND R. HERBIN. Gradient schemes: a generic framework for the discretisation of linear, nonlinear and nonlocal elliptic and parabolic equations. Math. Models Methods Appl. Sci. (M3AS), 23(13):2395–2432, 2013.

[3] J. LERAY AND J. LIONS. Quelques résultats de Višik sur les problèmes elliptiques non linéaires par les méthodes de Minty-Browder. Bull. Soc. Math. France, 93:97–107, 1965.

[4] H. BREZIS. Functional analysis, Sobolev spaces and partial differential equations. Universitext. Springer, New York, 2011.

[5] G. STRANG. Variational crimes in the finite element method.'' In The mathematical foundations of the finite element method with applications to partial differential equations (Proc. Sympos., Univ. Maryland, Baltimore, Md., 1972)'', pages 689–710. Academic Press, New York, 1972.

[6] M. CROUZEIX AND P.-A. RAVIART. Conforming and nonconforming finite element methods for solving the stationary Stokes equations. I. Rev. Française Automat. Informat. Recherche Opérationnelle Sér. Rouge, 7(R-3):33–75, 1973.

[7] P.-A. RAVIART AND J. M. THOMAS. A mixed finite element method for 2nd order elliptic problems. In Mathematical aspects of finite element methods _(Proc. Conf., Consiglio Naz. delle Ricerche (C.N.R.), Rome, 1975)_, pages 292–315. Lecture Notes in Math., Vol. 606. Springer, Berlin, 1977.

[8] D. A. DI PIETRO AND A. ERN. Mathematical aspects of discontinuous Galerkin methods, volume 69 of Mathématiques & Applications (Berlin) [Mathematics & Applications]. Springer, Heidelberg, 2012.

[9] F. BREZZI, K. LIPNIKOV, AND M. SHASHKOV. Convergence of the mimetic finite difference method for diffusion problems on polyhedral meshes. SIAM J. Numer. Anal., 43(5):1872–1896, 2005.

[10] K. LIPNIKOV, G. MANZINI, AND M. SHASHKOV. Mimetic finite difference method. J. Comput. Phys., 257-Part B:1163–1227, 2014.

[11]