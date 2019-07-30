The FOKAS METHOD, or unified transform, is an algorithmic procedure for analysing boundary value problems for linear partial differential equations and for an important class of nonlinear PDEs belonging to the so-called integrable systems. It is named after Greek mathematician Athanassios S. Fokas.

Traditionally, linear boundary value problems are analysed using either integral transforms and infinite series, or by employing appropriate fundamental solutions.


Integral transforms and infinite series

For example, the Dirichlet problem of the heat equation on the half-line, i.e., the problem

u₀ and g₀ given, can be solved via the sine-transform. The analogous problem on a finite interval can be solved via an infinite series. However, the solutions obtained via integral transforms and infinite series have several disadvantages: 1. The relevant representations are not uniformly convergent at the boundaries. For example, using the sine-transform, equations and imply For g₀(t) ≠ 0, this representation cannot be uniformly convergent at x = 0, otherwise one could compute u(0, t) by inserting the limit x → 0 inside the integral of the rhs of and this would yield zero instead of g₀(t).

2. The above representations are unsuitable for numerical computations. This fact is a direct consequence of 1.

3. There exist traditional integral transforms and infinite series representations only for a very limited class of boundary value problems.
For example, there does not exist the analogue of the sine-transform for solving the following simple problem: supplemented with the initial and boundary conditions .

For evolution PDEs, the Fokas method:

1.  Constructs representations which are always uniformly convergent at the boundaries.
2.  These representations can be used in a straightforward way, for example using MATLAB, for the numerical evaluation of the solution.
3.  Constructs representations for evolution PDEs with spatial derivatives of any order.

In addition, the Fokas method constructs representations which are always of the form of the Ehrenpreis fundamental principle.


Fundamental solutions

For example, the solutions of the Laplace, modified Helmholtz and Helmholtz equations in the interior of the two-dimensional domain Ω, can be expressed as integrals along the boundary of Ω. However, these representations involve both the Dirichlet and the Neumann boundary values, thus since only one of these boundary values is known from the given data, the above representations are not effective. In order to obtain an effective representation, one needs to characterize the generalized Dirichlet to Neumann map; for example, for the Dirichlet problem one needs to obtain the Neumann boundary value in terms of the given Dirichlet datum.
For elliptic PDEs, the Fokas method:

1.  Provides an elegant formulation of the generalised Dirichlet to Neumann map by deriving an algebraic relation, called the global relation, which couples appropriate transforms of all boundary values.
2.  For simple domains and a variety of boundary conditions the global relation can be solved analytically. Furthermore, for the case that Ω is an arbitrary convex polygon, the global relation can be solved numerically in a straightforward way, for example using MATLAB. Furthermore, for the case that Ω is a convex polygon, the Fokas method constructs an integral representation in the Fourier complex plane. By using this representation together with the global relation it is possible to compute the solution numerically inside the polygon in a straightforward semi-analytic manner.


The forced heat equation on the half-line

Let u(x, t) satisfy the forced heat equation

supplemental with the initial and boundary conditions , where g(t), u₀(x), f(x, t) are given functions with sufficient smoothness, which decay as x → ∞.

The unified transform involves the following three simple steps.

_1. By employing the Fourier transform pair_
_f̂_(_λ_) = ∫₀^(∞)_e_^( − _i__λ__x_)_f_(_x_) _d__x_, Im _λ_ ≤ 0;

_obtain the global relation.
For equation , we find_

_where the functions $\hat u, \ Q,\ \tilde{g_1}$ and $\tilde{g_0}$ are the following integral transforms:_

_û_(_λ_, _t_) = ∫₀^(∞)_e_^( − _i__λ__x_)_u_(_x_, _t_) _d__x_, Im _λ_ ≤ 0,

_Q_(_λ_, _t_) = ∫₀^(∞)_e_^( − _i__λ__x_)_u_₀(_x_)_d__x_ + ∫₀^(_t_) _d__τ_∫₀^(∞)_d__x_ _e_^( − _i__λ__x_ + _λ_²_τ_)_f_(_x_, _τ_), Im _λ_ ≤ 0,

_This step is similar with the first step used for the traditional transforms. However, equation involves the t-transforms of both u(0, t) and u_(x)(0, t), whereas in the case of the sine-transform u_(x)(0, t) does not appear in the analogous equation (similarly, in the case of the cosine-transform only u_(x)(0, t) appears). On the other hand, equation is valid in the lower-half complex λ-plane, wheres the analogous equations for the sine and cosine transforms are valid only for λ real. The Fokas method is based on the fact that equation has a large domain of validity._

_2. By using the inverse Fourier transform, the global relation yields an integral representation on the real line. By deforming the real axis to a contour in the upper half λ-complex plane, it is possible to rewrite this expression as an integral along the contour ∂D⁺, where ∂D⁺ is the boundary of the domain D⁺, which is the part of D in the upper half complex λ plane, with D defined by_

_D_ : {_λ_ ∈ ℂ, ℜ _ω_(_λ_) < 0},
_where ω(λ) is defined by the requirement that e^(iλx + ω(λ)t) solves the given PDE._ Figure_the_curve.png For equation , equations and imply

where the contour ∂D⁺ is depicted in figure 1.

In this case, ω(λ) =  − λ² =  − |λ|²e^(2iθ), where $\theta=\rm{arg}\lambda$. Thus, ℜ ω(k) < 0 implies sin 2θ > 0, i.e., $-\frac{\pi}{4}<\theta<\frac{\pi}{4}$ and $\frac{3\pi}{4}<\theta<\frac{5\pi}{4}$.
The fact that the real axis can be deformed to ∂D⁺ is a consequence of the fact that the relevant integral is an analytic function of λ which decays in D⁺ as λ → ∞.[1]

_3. By using the global relation and by employing the transformations in the complex-λ plane which leave ω(λ) invariant, it is possible to eliminate from the integral representation of u(x, t) the transforms of the unknown boundary values._ For equation , ω(λ) = λ², thus the relevant transformation is λ →  − λ. Using this transformation, equation becomes

In the case of the Dirichlet problem, solving equation for $\tilde{g_1}$ and substituting the resulting expression in we find

If is important to note that the unknown term û( − λ, t) does not contribute to the solution u. Indeed, the relevant integral involves the term e^(iλx)û( − λ, t), which is analytic and decays as λ → ∞ in D^(−), thus Jordan's lemma implies that û( − λ, t) yields a zero contribution.
Equation can be rewritten in a form which is consistent with the Ehrenpreis fundamental principle: if the boundary condition is specified for 0 < τ < T, where T is a given positive constant, then using Cauchy's integral theorem, it follows that is equivalent with the following equation:

where

_Q_(_λ_) = _û_₀(_λ_) + ∫₀^(∞)_d__x_∫₀^(_T_)_d__t_ _e_^( − _i__λ__x_ + _λ_²_t_)_f_(_x_, _t_),

$$\tilde{g_0}(\lambda^2)=\int_0^T e^{\lambda^2 t} g_0(t) \, dt.$$

UNIFORM CONVERGENCE
The unified transform constructs representations which are always uniformly convergent at the boundaries. For example, evaluating at x = 0, and then letting λ →  − λ in the first term of the second integral in the rhs of (3.8), it follows that

$$u(0,t) = -\frac i \pi \int_{\partial D} e^{-\lambda^2 t}\lambda\tilde{g_0}(\lambda^2) \, d\lambda.$$
The change of variables $\lambda=e^{\frac{i\pi}{4}}\sqrt k$, k > 0, implies that u(0, t) = g(t).

NUMERICAL EVALUATION It is straightforward to compute the solution numerically using quadrature after the contour has been deformed to ensure exponential decay of the integrand[2]. For simplicity we concentrate on the case that the relevant transforms can be computed analytically. For example,

_f_(_x_, _t_) = 0, _u_₀(_x_) = _e_^( − _a_²_x_), _g_₀(_t_) = cos (_b__t_), _a_, _b_, real constants.
Then, equation becomes

{i\lambda + a^2} \, d\lambda - \int_{\partial D^{+}} e^{i\lambda x-\lambda^2 t} \left[ \frac 1 {-i\lambda +a^2} +\frac{i\lambda }{\lambda +ib}\bigl ( e^{(\lambda^2+ib)t}-1 \bigr) +\frac{i\lambda }{\lambda -ib}\bigl( e^{(\lambda^2-ib)t}-1 \bigr) \right] \, d\lambda . |}}

File:Figure the countour1.png|Figure 2: The contour L

For λ on ∂D⁺, the term e^(iλx) decays exponentially as |λ| → ∞. Also by deforming ∂D⁺ to L where L is a contour between the real axis and ∂D⁺, it follows that for λ on L the term e^( − λ²t) also decays exponentially as |λ| → ∞. Thus, equation becomes

$2\pi u(x,t)=\int_L \left\{e^{i\lambda x-\lambda^2 t}\left[ \frac 1 {i\lambda + a^2} + \frac 1 {i\lambda -a^{2}}  \right] + i\lambda e^{i\lambda x}\left[ \frac{e^{ibt} - e^{-\lambda^2 t}}{\lambda +ib}+\frac{e^{-ibt}-e^{-\lambda^2 t}}{\lambda -ib} \right] \right\} \, d\lambda,$

and the rhs of the above equation can be computed using MATLAB.
AN EVOLUTION EQUATION WITH SPATIAL DERIVATIVES OF ARBITRARY ORDER.
Suppose that e^(iλx + ω(λ)t) is a solution of the given PDE. Then, ∂D⁺ is the boundary of the domain D⁺ defined earlier.
If the given PDE contain spatial derivatives of order n, then for n even, the global relation involves $\frac{n}{2}$ unknowns, whereas for n odd it involves (n + 1)/2 or (n − 1)/2 unknowns (depending on the coefficient of the highest derivative). However, using an appropriate number of transformations in the complex λ-plane which leave ω(λ) invariant, it is possible to obtain the needed number of equations, so that the transforms of the unknown boundary values can be obtained in terms of û and of the given boundary data in terms of the solution of a system of algebraic equations.


A Numerical Collocation Method

The Fokas method gives rise to a novel spectral collocation method occurring in Fourier space. Recent work of Matthew Colbrook has extended the method and demonstrated a number of its advantages; it avoids the computation of singular integrals encountered in more traditional boundary based approaches, it is fast and easy to code up, it can be used for separable PDEs where no Green's function is known analytically and it can be made to converge exponentially with the correct choice of basis functions.

Basic method in a convex bounded polygon

Suppose that u and v both satisfy Laplace's equation in the interior of a convex bounded polygon Ω. It follows that

$$0=v(u_{xx}+u_{yy})-u(v_{xx}+v_{yy})=\frac{\partial}{\partial x}\big(vu_x-uv_x\big)+\frac{\partial}{\partial y}\big(vu_y-uv_y\big).$$

Then Green's theorem implies the relation

In order to express the integrand of the above equation in terms of just the Dirichlet and Neumann boundary values, we parameterize u(x, y) and v(x, y) in terms of the arc length, s, of ∂Ω. This leads to

where $\frac{\partial u}{\partial w}$ denotes the normal derivative.

In order to further simplify the global relation, we introduce the complex variable z = x + iy, and its conjugate z̄ = x − iy. We then choose the test function v = e^( − iλz), leading to the global relation for Laplace's equation:

A similar argument can also be used in the presence of a forcing term (giving a non-zero right-hand side). An identical argument works for the Helmholtz equation

_u__(_x__x_) + _u__(_y__y_) + 4_β_²_u_ = 0

and the modified Helmholtz equation

_u__(_x__x_) + _u__(_y__y_) − 4_β_²_u_ = 0.

Choosing respective test functions $v=e^{-i\beta(\lambda z+\frac{\bar{z}}{\lambda})}$ and $v=e^{-i\beta(\lambda z-\frac{\bar{z}}{\lambda})}$ lead to respective global relations

$$\int_{\partial \Omega}e^{-i\beta(\lambda z+\frac{\bar{z}}{\lambda})}\left[\frac{\partial u}{\partial w}+\beta\left(\lambda \frac{dz}{ds}-\frac{1}{\lambda}\frac{d\bar{z}}{ds}\right)u\right]ds=0, \qquad \lambda\in\mathbb{C}\backslash\{0\},$$

and

$$\int_{\partial \Omega}e^{-i\beta(\lambda z-\frac{\bar{z}}{\lambda})}\left[\frac{\partial u}{\partial w}+\beta\left(\lambda \frac{dz}{ds}+\frac{1}{\lambda}\frac{d\bar{z}}{ds}\right)u\right]ds=0, \qquad \lambda\in\mathbb{C}\backslash\{0\}.$$

These three cases deal with more general second order elliptic constant coefficient PDEs through a suitable linear change of variables.

THE DIRICHLET TO NEUMANN MAP FOR A CONVEX POLYGON Suppose that Ω is the interior of a bounded convex polygon specified by the corners z₁, z₂, … z_(n). In this case, the global relation takes the form where or

The side S_(j), which is the side between z_(j) and z_(j + 1), can be parametrized by

$$z(t)=m_j+th_j,\ m_j=\frac{z_j+z_{j+1}}{2},\ h_j=\frac{z_{j+1}-z_j}{2},\ t\in [-1,1].$$

Hence,

_d__s_ = |_h__(_j_)| _d__t_, _d__z_ = _h__(_j_) _d__t_.

The functions u and $\frac{\partial u}{\partial w}$ can be approximated in terms of Legendre polynomials: where for the cases of the Dirichlet, Neumann or Robin boundary value problems either a_(ℓ)^(j), b_(ℓ)^(j)or a linear combination of a_(ℓ)^(j)and b_(ℓ)^(j) is given.

Equation now becomes an approximate global relation, where with P̂_(ℓ)(λ) denoting the Fourier transform of P_(ℓ)(t), i.e., P̂_(ℓ)(λ) can be computed numerically via $\hat P_\ell(\lambda)=\frac{\sqrt{-2i\pi\lambda}}{-i\lambda}I_{\ell+\frac{1}{2}}(-i \lambda),$ where I_(ℓ) denotes the modified Bessel function of the first kind.

The global relation involves N unknown constants (for the Dirichlet problem, these constants are b_(ℓ)^(j)). By evaluating the global relation at a sufficiently large number of different values of λ, the unknown constants can be obtained via the solution of a system of algebraic equations.

It is convenient to choose the above values of λ on the n rays  − h̄_(j)ρ, ρ > 0, j = 1, …, n. For this choice, as |λ| → ∞, the relevant system is diagonally dominant, thus its condition number is very small.[3]

Dealing with non-convexity

Whilst the global relation is valid for non-convex domains Ω, the above collocation method becomes numerically unstable [4]. A heuristic explanation for this ill-conditioning in the case of the Laplace equation is as follows. The `test functions' e^( − iλz) grow/decay exponentially in certain directions of λ. When using a sufficiently large selection of complex λ-values, located in all directions from the origin, each side of a convex polygon will for many of these λ-values encounter larger test functions than do the remaining sides. This is exactly the same argument that motivates the `ray' choice of collocation points given by $-\overline{h}_j\rho$, which yield a diagonally dominant system. In contrast, for a non-convex polygon, boundary regions in indented regions will always be dominated by effects from other boundary parts, no matter the λ-value. This can easily be overcome by splitting up the domain into numerous convex regions (introducing fictitious boundaries) and matching the solution and normal derivative across these internal boundaries. Such splitting also allows the extension of the method to exterior/unbounded domains Ω (see below).

Evaluating in the domain interior

Let G = G(z, ζ) be the associated fundamental solution of the PDE satisfied by u. In the case of straight edges, Green's representation theorem leads to

Due to the orthogonality of the Legendre polynomials, for a given z = x + iy, the integrals in the above representation are Legendre expansion coefficients of certain analytic functions (written in terms of G). Hence the integrals can be computed rapidly (all at once) by expanding the functions in a Chebyshev basis (using the FFT) and then converting to a Legendre basis [5]. This can also be used to approximate the `smooth' part of the solution after adding global singular functions to take care of corner singularities.

Extension to curved boundaries and separable PDEs

The method can be extended to variable coefficient PDEs and curved boundaries in the following manner (see [6]). Suppose that α(x, y) ∈ ℂ^(2 × 2) is a matrix valued function, β(x, y) ∈ ℂ² a vector valued function and γ a function (all sufficiently smooth) defined over Ω. Consider the formal PDE in divergence form:

Assume that the domain Ω is a bounded connected Lipschitz domain whose boundary consists of a finite number of vertices connected by C¹ arcs. Denote the corners of Ω in anticlockwise order as {z_(j)}₁^(n) with the side Γ_(j), joining z_(j) to z_(j + 1). Γ_(j) can be parametrised by

[ − 1, 1] ∋ _t_ → (_x__(_j_)(_t_), _y__(_j_)(_t_)) ∈ ℝ²,
where we assume that the parametrisation is C¹.

The adjoint of equation is given by

The expression v× − u× can be written in the form

Integrating across the domain and applying the divergence theorem we recover the global relation (n denotes the outward normal):

Define $l_j(t)=\sqrt{\dot{x}_j(t)^2+\dot{y}_j(t)^2}$ along the curve Γ_(j) and assume that l_(j)(t) > 0. Suppose that we have a one-parameter family of solutions of the adjoint equation, v(x, y; λ) = v_(λ), for some λ ∈ 𝒞, where 𝒞 denotes the collocation set. Denoting the solution u along side Γ_(j) by u^(j), the unit outward normal by n_(j) and analogously the oblique derivative by n_(j) ⋅ (α∇u^(j)), we define the following important transform:

Using , the global relation becomes

For separable PDEs, a suitable one-parameter family of solutions v_(λ) can be constructed. If we expand each u^(j) and its derivative n_(j) ⋅ (α∇u^(j)) along the boundary Γ_(j) in Legendre polynomials, then we cover a similar approximate global relation as before. To compute the integrals that form the approximate global relation, we can use the same trick as before - expanding the function integrated against Legendre polynomials in a Chebyshev series and then converting to a Legendre series. A major advantage of the method in this scenario is that it is a boundary-based method which does not need any knowledge of the corresponding Green's function. Hence, it is more applicable than boundary integral methods in the setting of variable coefficients.

Singular functions and an exterior scattering problems

A major advantage of the above collocation method is that the basis choice (Legendre polynomials in the above discussion) can be flexibly chosen to capture local properties of the solution along each boundary. This is useful when the solution has different scalings in different regions of Ω, but is particularly useful for capturing singular behavior, for example, near sharp corners of Ω.

We consider the acoustic scattering problem solved in [7] by the method. The solution u satisfies Helmholtz equation in ℝ² ∖ {x ∈ [ − 1, 1], y = 0} with frequency k₀ = 2β, along with the Sommerfeld radiation condition at infinity:

where $r=\sqrt{x^2+y^2}$. The boundary condition along the plate is

for the incident field

By considering the domains y > 0 and y < 0 separately and matching the global relations, the global relation for this problem becomes

with Λ = ( − 1, 0) ∪ (1, ∞) ∪ {e^( − iθ) : 0 < θ < π} and where [u](x, 0) = u(x, 0₊) − u(x, 0_(−)) denotes the jump in u across the plate. The complex collocation points are allowed precisely because of the radiation condition. To capture the endpoint singularities, we expand [u](x, 0) for x ∈ [ − 1, 1] in terms of weighted Chebyshev polynomials of the second kind:

These have the following Fourier transform:

where J_(α)( ⋅ ) denotes the Bessel function of the first kind of order α. For the derivative u_(y) along ℝ ∖ [ − 1, 1], a suitable basis choice are Bessel functions of fractional order (to capture the singularity and algebraic decay at infinity).

We introduce the dimensionless frequency k̃₀ = k₀L^( − 1), where L is the length of the plate. The figure below shows the convergence of the method for various k̃₀. Here N is the number of basis functions C_(m) used to approximate the jump [u] across the plate. The maximum relative absolute error is the maximum error of the computed solution divided by the maximum absolute value of the solution. The figure is for θ = π/3 and shows the quadratic-exponential convergence of the method, namely the error decreases like 𝒪(ρ^(N²)) for some positive ρ < 1. More complicated geometries (including different angles of touching boundaries and infinite wedges) can also be dealt with in a similar fashion as well as more complicated boundary conditions such as those modeling elasticity[8].

Convergence_results_for_the_method_and_different2.jpg


References

Category:Partial differential equations

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]