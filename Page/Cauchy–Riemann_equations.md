In the field of complex analysis in mathematics, the CAUCHY–RIEMANN EQUATIONS, named after Augustin Cauchy and Bernhard Riemann, consist of a system of two partial differential equations which, together with certain continuity and differentiability criteria, form a necessary and sufficient condition for a complex function to be complex differentiable, that is, holomorphic. This system of equations first appeared in the work of Jean le Rond d'Alembert . Later, Leonhard Euler connected this system to the analytic functions . then used these equations to construct his theory of functions. Riemann's dissertation on the theory of functions appeared in 1851.

The Cauchy–Riemann equations on a pair of real-valued functions of two real variables _u_(_x_,_y_) and _v_(_x_,_y_) are the two equations:



\begin{align} (1a)\qquad & \frac{\partial u}{\partial x} = \frac{\partial v}{\partial y} \\[6pt] (1b)\qquad & \frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x} \end{align}

Typically _u_ and _v_ are taken to be the real and imaginary parts respectively of a complex-valued function of a single complex variable , . Suppose that _u_ and _v_ are real-differentiable at a point in an open subset of ℂ, which can be considered as functions from ℝ² to ℝ. This implies that the partial derivatives of _u_ and _v_ exist (although they need not be continuous) and we can approximate small variations of _f_ linearly. Then is complex-differentiable at that point if and only if the partial derivatives of _u_ and _v_ satisfy the Cauchy–Riemann equations (1a) and (1b) at that point. The sole existence of partial derivatives satisfying the Cauchy–Riemann equations is not enough to ensure complex differentiability at that point. It is necessary that _u_ and _v_ be real differentiable, which is a stronger condition than the existence of the partial derivatives, but in general, weaker than continuous differentiability.

Holomorphy is the property of a complex function of being differentiable at every point of an open and connected subset of ℂ (this is called a domain in ℂ). Consequently, we can assert that a complex function _f_, whose real and imaginary parts _u_ and _v_ are real-differentiable functions, is holomorphic if and only if, equations (1a) and (1b) are satisfied throughout the domain we are dealing with. Holomorphic functions are analytic and vice versa. This means that, in complex analysis, a function that is complex-differentiable in a whole domain (holomorphic) is the same as an analytic function. This is not true for real differentiable functions.


Simple example

Suppose that _z_ = _x_ + _iy_. The complex-valued function _f_(_z_) = _z_² is differentiable at any point _z_ in the complex plane.

_f_(_z_) = (_x_ + _i__y_)² = _x_² − _y_² + 2_i__x__y_
The real part _u_(_x_, _y_) and the imaginary part _v_(_x_, _y_) of _f_(_z_) are

_u_(_x_, _y_) = _x_² − _y_²

_v_(_x_, _y_) = 2_x__y_
respectively. The partial derivatives of these are

$$\dfrac{ \partial u }{ \partial x } = 2x$$

$$\dfrac{ \partial u }{ \partial y } = -2y$$

$$\dfrac{ \partial v }{ \partial x } = 2y$$

$$\dfrac{ \partial v }{ \partial y } = 2x$$
. These partial derivatives have the following relationships:

    $\frac{\partial u}{\partial x} = \frac{\partial v}{\partial y}$
    $\frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x}$.

Thus this complex-valued function f(z) satisfies the Cauchy–Riemann equations (1a) and (1b).


Interpretation and reformulation

The equations are one way of looking at the condition on a function to be differentiable in the sense of complex analysis: in other words they encapsulate the notion of function of a complex variable by means of conventional differential calculus. In the theory there are several other major ways of looking at this notion, and the translation of the condition into other language is often needed.

Conformal mappings

First, the Cauchy–Riemann equations may be written in complex form

    (2)${ i \dfrac{ \partial f }{ \partial x } } = \dfrac{ \partial f }{ \partial y } .$

In this form, the equations correspond structurally to the condition that the Jacobian matrix is of the form

$$\begin{pmatrix}
  a &   -b  \\
  b & \;\; a
\end{pmatrix},$$

where a = ∂u/∂x = ∂v/∂y and b = ∂v/∂x =  − ∂u/∂y. A matrix of this form is the matrix representation of a complex number. Geometrically, such a matrix is always the composition of a rotation with a scaling, and in particular preserves angles. The Jacobian of a function _f_(_z_) takes infinitesimal line segments at the intersection of two curves in z and rotates them to the corresponding segments in _f_(_z_). Consequently, a function satisfying the Cauchy–Riemann equations, with a nonzero derivative, preserves the angle between curves in the plane. That is, the Cauchy–Riemann equations are the conditions for a function to be conformal.

Moreover, because the composition of a conformal transformation with another conformal transformation is also conformal, the composition of a solution of the Cauchy–Riemann equations with a conformal map must itself solve the Cauchy–Riemann equations. Thus the Cauchy–Riemann equations are conformally invariant.

Complex differentiability

Suppose that

    f(z) = u(z) + i ⋅ v(z)

is a function of a complex number _z_. Then the complex derivative of _f_ at a point _z_₀ is defined by

    $\lim_{\underset{h\in\mathbb{C}}{h\to 0}} \frac{f(z_0+h)-f(z_0)}{h} = f'(z_0)$

provided this limit exists.

If this limit exists, then it may be computed by taking the limit as _h_ → 0 along the real axis or imaginary axis; in either case it should give the same result. Approaching along the real axis, one finds

$$\lim_{\underset{h\in\mathbb{R}}{h\to 0}} \frac{f(z_0+h)-f(z_0)}{h} = \frac{\partial f}{\partial x}(z_0).$$

On the other hand, approaching along the imaginary axis,

$$\lim_{\underset{h\in \mathbb{R}}{h\to 0}} \frac{f(z_0+ih)-f(z_0)}{ih} =\frac{1}{i}\frac{\partial f}{\partial y}(z_0).$$

The equality of the derivative of _f_ taken along the two axis is

$$i\frac{\partial f}{\partial x}(z_0)=\frac{\partial f}{\partial y}(z_0),$$

which are the Cauchy–Riemann equations (2) at the point _z_₀.

Conversely, if _f_ : ℂ → ℂ is a function which is differentiable when regarded as a function on ℝ², then _f_ is complex differentiable if and only if the Cauchy–Riemann equations hold. In other words, if u and v are real-differentiable functions of two real variables, obviously _u_ + _iv_ is a (complex-valued) real-differentiable function, but _u_ + _iv_ is complex-differentiable if and only if the Cauchy–Riemann equations hold.

Indeed, following , suppose _f_ is a complex function defined in an open set Ω ⊂ ℂ. Then, writing _x_ + i_y_}} for every _z_ ∈ Ω, one can also regard Ω as an open subset of ℝ², and _f_ as a function of two real variables _x_ and _y_, which maps Ω ⊂ ℝ² to ℂ. We consider the Cauchy–Riemann equations at _z_ = _z_₀. So assume _f_ is differentiable at _z_₀, as a function of two real variables from Ω to ℂ. This is equivalent to the existence of the following linear approximation

_f_(_z_₀ + _Δ__z_) − _f_(_z_₀) = _f__(_x_) _Δ__x_ + _f__(_y_) _Δ__y_ + _η_(_Δ__z_) _Δ__z_ 

where _z_ = _x_ + _iy_ and _η_(Δ_z_) → 0 as Δ_z_ → 0. Since Δz + Δz̄ = 2 Δx and Δz − Δz̄ = 2i Δy, the above can be re-written as

$$\Delta f(z_0) = \frac{f_x - if_y}{2} \, \Delta z + \frac{f_x + if_y}{2} \, \Delta \bar{z} + \eta(\Delta z) \, \Delta z\,$$

Defining the two Wirtinger derivatives as

$$\frac{\partial}{\partial z} = \frac{1}{2} \Bigl( \frac{\partial}{\partial x} - i \frac{\partial}{\partial y} \Bigr), \;\;\; \frac{\partial}{\partial\bar{z}}= \frac{1}{2} \Bigl( \frac{\partial}{\partial x} + i \frac{\partial}{\partial y} \Bigr),$$
in the limit Δz → 0, Δz̄ → 0 the above equality can be written as
: $\left.\frac{df}{dz}\right|_{z=z_0} = \left.\frac{\partial f}{\partial z}\right |_{z=z_0} + \left.\frac{\partial f}{\partial\bar{z}}\right |_{z=z_0} \cdot \frac{d\bar{z}}{dz} + \eta(\Delta z), \;\;\;\;(\Delta z \neq 0).$

Now consider the potential values of dz̄/dz when the limit is taken at the origin. For _z_ along the real line, z̄ = z so that dz̄/dz = 1. Similarly for purely imaginary _z_ we have dz̄/dz =  − 1 so that the value of dz̄/dz is not well defined at the origin. It's easy to verify that dz̄/dz is not well defined at any complex _z_, hence _f_ is complex differentiable at _z_₀ if and only if (∂f/∂z̄) = 0 at z = z₀. But this is exactly the Cauchy–Riemann equations, thus _f_ is differentiable at _z_₀ if and only if the Cauchy–Riemann equations hold at _z_₀.

Independence of the complex conjugate

The above proof suggests another interpretation of the Cauchy–Riemann equations. The complex conjugate of _z_, denoted z̄, is defined by

$$\overline{x + iy} := x - iy$$

for real _x_ and _y_. The Cauchy–Riemann equations can then be written as a single equation

    (3)$\dfrac{\partial f}{\partial\bar{z}} = 0$

by using the Wirtinger derivative with respect to the conjugate variable. In this form, the Cauchy–Riemann equations can be interpreted as the statement that _f_ is independent of the variable z̄. As such, we can view analytic functions as true functions of _one_ complex variable as opposed to complex functions of _two_ real variables.

Physical interpretation

Contours_of_holomorphic_function.png of a pair _u_ and _v_ satisfying the Cauchy–Riemann equations. Streamlines (_v_ = const, red) are perpendicular to equipotentials (_u_ = const, blue). The point (0,0) is a stationary point of the potential flow, with six streamlines meeting, and six equipotentials also meeting and bisecting the angles formed by the streamlines.]] A standard physical interpretation of the Cauchy–Riemann equations going back to Riemann's work on function theory (see ) is that _u_ represents a velocity potential of an incompressible steady fluid flow in the plane, and _v_ is its stream function. Suppose that the pair of (twice continuously differentiable) functions u, v satisfies the Cauchy–Riemann equations. We will take _u_ to be a velocity potential, meaning that we imagine a flow of fluid in the plane such that the velocity vector of the fluid at each point of the plane is equal to the gradient of _u_, defined by

$$\nabla u = \frac{\partial u}{\partial x}\mathbf i + \frac{\partial u}{\partial y}\mathbf j$$

By differentiating the Cauchy–Riemann equations a second time, one shows that _u_ solves Laplace's equation:

$$\frac{\partial^2u}{\partial x^2} + \frac{\partial^2u}{\partial y^2} = 0.$$
That is, _u_ is a harmonic function. This means that the divergence of the gradient is zero, and so the fluid is incompressible.

The function _v_ also satisfies the Laplace equation, by a similar analysis. Also, the Cauchy–Riemann equations imply that the dot product ∇u ⋅ ∇v = 0. This implies that the gradient of _u_ must point along the v = const curves; so these are the streamlines of the flow. The u = const curves are the equipotential curves of the flow.

A holomorphic function can therefore be visualized by plotting the two families of level curves u = const and v = const. Near points where the gradient of _u_ (or, equivalently, _v_) is not zero, these families form an orthogonal family of curves. At the points where ∇u = 0, the stationary points of the flow, the equipotential curves of u = const intersect. The streamlines also intersect at the same point, bisecting the angles formed by the equipotential curves.

Harmonic vector field

Another interpretation of the Cauchy–Riemann equations can be found in . Suppose that _u_ and _v_ satisfy the Cauchy–Riemann equations in an open subset of ℝ², and consider the vector field

$$\bar{f} = \begin{bmatrix}u\\ -v\end{bmatrix}$$

regarded as a (real) two-component vector. Then the second Cauchy–Riemann equation (1b) asserts that f̄ is irrotational (its curl is 0):

$$\frac{\partial (-v)}{\partial x} - \frac{\partial u}{\partial y} = 0.$$

The first Cauchy–Riemann equation (1a) asserts that the vector field is solenoidal (or divergence-free):

$$\frac{\partial u}{\partial x} + \frac{\partial (-v)}{\partial y}=0.$$

Owing respectively to Green's theorem and the divergence theorem, such a field is necessarily a conservative one, and it is free from sources or sinks, having net flux equal to zero through any open domain without holes. (These two observations combine as real and imaginary parts in Cauchy's integral theorem.) In fluid dynamics, such a vector field is a potential flow . In magnetostatics, such vector fields model static magnetic fields on a region of the plane containing no current. In electrostatics, they model static electric fields in a region of the plane containing no electric charge.

This interpretation can equivalently be restated in the language of differential forms. The pair _u_,_v_ satisfy the Cauchy–Riemann equations if and only if the one-form v dx + u dy is both closed and coclosed (a harmonic differential form).

Preservation of complex structure

Another formulation of the Cauchy–Riemann equations involves the complex structure in the plane, given by

$$J=\begin{bmatrix}0&-1\\1&0\end{bmatrix}.$$
This is a complex structure in the sense that the square of _J_ is the negative of the 2×2 identity matrix: J² =  − I. As above, if _u_(_x_,_y_),_v_(_x_,_y_) are two functions in the plane, put

$$f(x,y) = \begin{bmatrix}u(x,y)\\v(x,y)\end{bmatrix}.$$

The Jacobian matrix of _f_ is the matrix of partial derivatives

$$Df(x,y) = \begin{bmatrix}\dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\[12pt] \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y}\end{bmatrix}$$

Then the pair of functions _u_, _v_ satisfies the Cauchy–Riemann equations if and only if the 2×2 matrix _Df_ commutes with _J_

This interpretation is useful in symplectic geometry, where it is the starting point for the study of pseudoholomorphic curves.

Other representations

Other representations of the Cauchy–Riemann equations occasionally arise in other coordinate systems. If (1a) and (1b) hold for a differentiable pair of functions _u_ and _v_, then so do

$$\frac{\partial u}{\partial n} = \frac{\partial v}{\partial s},\quad \frac{\partial v}{\partial n} = -\frac{\partial u}{\partial s}$$

for any coordinate system such that the pair (∇_n_, ∇_s_) is orthonormal and positively oriented. As a consequence, in particular, in the system of coordinates given by the polar representation _r_ _e_^(iθ)}}, the equations then take the form

$${ \partial u \over \partial r } = {1 \over r}{ \partial v \over \partial \theta},\quad{ \partial v \over \partial r } = -{1 \over r}{ \partial u \over \partial \theta}.$$

Combining these into one equation for _f_ gives

$${\partial f \over \partial r} = {1 \over i r}{\partial f \over \partial \theta}.$$

The inhomogeneous Cauchy–Riemann equations consist of the two equations for a pair of unknown functions _u_(_x_,_y_) and _v_(_x_,_y_) of two real variables

$$\begin{align}
& \frac{\partial u}{\partial x}-\frac{\partial v}{\partial y} = \alpha(x,y) \\[4pt]
& \frac{\partial u}{\partial y}+\frac{\partial v}{\partial x} = \beta(x,y)
\end{align}$$

for some given functions α(_x_,_y_) and β(_x_,_y_) defined in an open subset of ℝ². These equations are usually combined into a single equation

$$\frac{\partial f}{\partial\bar{z}} = \varphi(z,\bar{z})$$

where _f_ = _u_ + i_v_ and _φ_ = (_α_ + i_β_)/2.

If _φ_ is _C_^(_k_), then the inhomogeneous equation is explicitly solvable in any bounded domain _D_, provided _φ_ is continuous on the closure of _D_. Indeed, by the Cauchy integral formula,

$$f(\zeta,\bar{\zeta}) = \frac{1}{2\pi i} \iint_D \varphi(z,\bar{z}) \, \frac{dz\wedge d\bar{z}}{z-\zeta}$$

for all ζ ∈ _D_.


Generalizations

Goursat's theorem and its generalizations

Suppose that _u_ + i_v_}} is a complex-valued function which is differentiable as a function . Then GOURSAT'S THEOREM asserts that _f_ is analytic in an open complex domain Ω if and only if it satisfies the Cauchy–Riemann equation in the domain . In particular, continuous differentiability of _f_ need not be assumed .

The hypotheses of Goursat's theorem can be weakened significantly. If _u_ + i_v_}} is continuous in an open set Ω and the partial derivatives of _f_ with respect to _x_ and _y_ exist in Ω, and satisfy the Cauchy–Riemann equations throughout Ω, then _f_ is holomorphic (and thus analytic). This result is the Looman–Menchoff theorem.

The hypothesis that _f_ obey the Cauchy–Riemann equations throughout the domain Ω is essential. It is possible to construct a continuous function satisfying the Cauchy–Riemann equations at a point, but which is not analytic at the point (e.g., _f_(_z_) = z{{!}}⁴)}}. Similarly, some additional assumption is needed besides the Cauchy–Riemann equations (such as continuity), as the following example illustrates

$$f(z) = \begin{cases}
\exp(-z^{-4})&\text{if }z\not=0\\
0&\text{if }z=0
\end{cases}$$

which satisfies the Cauchy–Riemann equations everywhere, but fails to be continuous at _z_ = 0.

Nevertheless, if a function satisfies the Cauchy–Riemann equations in an open set in a weak sense, then the function is analytic. More precisely :

-   If _f_(_z_) is locally integrable in an open domain Ω ⊂ ℂ, and satisfies the Cauchy–Riemann equations weakly, then _f_ agrees almost everywhere with an analytic function in Ω.

This is in fact a special case of a more general result on the regularity of solutions of hypoelliptic partial differential equations.

Several variables

There are Cauchy–Riemann equations, appropriately generalized, in the theory of several complex variables. They form a significant overdetermined system of PDEs. This is done using a straightforward generalization of the Wirtinger derivative, where the function in question is required to have the (partial) Wirtinger derivative with respect to each complex variable vanish.

Complex differential forms

As often formulated, the _d-bar operator_

$$\bar{\partial}$$

annihilates holomorphic functions. This generalizes most directly the formulation

$${\partial f \over \partial \bar z} = 0,$$

where

$${\partial f \over \partial \bar z} = {1 \over 2}\left({\partial f \over \partial x} + i{\partial f \over \partial y}\right).$$

Bäcklund transform

Viewed as conjugate harmonic functions, the Cauchy–Riemann equations are a simple example of a Bäcklund transform. More complicated, generally non-linear Bäcklund transforms, such as in the sine-Gordon equation, are of great interest in the theory of solitons and integrable systems.

Definition in Clifford algebra

In Clifford algebra the complex number z = x + iy is represented as z ≡ x + Iy where I ≡ σ₁σ₂. The fundamental derivative operator in Clifford algebra of Complex numbers is defined as ∇ ≡ σ₁∂_(x) + σ₂∂_(y). The function f = u + Iv is considered analytic if and only if ∇f = 0, which can be calculated in following way:

$$\begin{align}
0 & =\nabla f= ( \sigma_1 \partial_x + \sigma_2 \partial_y )(u + \sigma_1 \sigma_2 v) \\[4pt]
& =\sigma_1 \partial_x u + \underbrace{\sigma_1 \sigma_1 \sigma_2}_{=\sigma_2} \partial_x v + \sigma_2 \partial_y u + \underbrace{\sigma_2 \sigma_1 \sigma_2}_{=-\sigma_1} \partial_y v =0
\end{align}$$

Grouping by σ₁ and σ₂:

$$\nabla f = \sigma_1 ( \partial_x u - \partial_y v) + \sigma_2 ( \partial_x v + \partial_y u) = 0 \Leftrightarrow \begin{cases}
\partial_x u - \partial_y v = 0\\[4pt]
\partial_x v + \partial_y u = 0
\end{cases}$$

Henceforth in traditional notation:

$$\begin{cases}
\dfrac{ \partial u }{ \partial x } = \dfrac{ \partial v }{ \partial y }\\[12pt]
\dfrac{ \partial u }{ \partial y } = -\dfrac{ \partial v }{ \partial x }
\end{cases}$$

Conformal mappings in higher dimensions

Let Ω be an open set in the Euclidean space ℝ^(_n_). The equation for an orientation-preserving mapping f : Ω → ℝ^(n) to be a conformal mapping (that is, angle-preserving) is that

_D__f_^(_T_)_D__f_ = (det (_D__f_))^(2/_n_)_I_
where _Df_ is the Jacobian matrix, with transpose Df^(T), and _I_ denotes the identity matrix . For 2}}, this system is equivalent to the standard Cauchy–Riemann equations of complex variables, and the solutions are holomorphic functions. In dimension , this is still sometimes called the Cauchy–Riemann system, and Liouville's theorem implies, under suitable smoothness assumptions, that any such mapping is a Möbius transformation.


See also

-   List of complex analysis topics
-   Morera's theorem
-   Wirtinger derivatives


References

-   .

-   .

-   -   .

-   .

-   -   .

-   ; translated by Frances Hardcastle.

-   .

-   .

-   .

-   -   -   .

-   -   .


External links

-   -   Cauchy–Riemann Equations Module by John H. Mathews

Category:Partial differential equations Category:Complex analysis Category:Harmonic functions Category:Bernhard Riemann