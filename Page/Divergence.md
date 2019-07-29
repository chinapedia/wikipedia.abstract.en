500px|thumb|upright=1.75|alt= A vector field with diverging vectors, a vector field with converging vectors, and a vector field with parallel vectors that neither diverge nor converge|The divergence of different vector fields. The divergence of vectors from point (x,y) equals the sum of the partial derivative-with-respect-to-x of the x-component and the partial derivative-with-respect-to-y of the y-component at that point: $\nabla\!\cdot(\mathbf{V}(x,y))=\frac{\partial\ {\mathbf{V}_x(x,y)}}{\partial{x}}+\frac{\partial\ {\mathbf{V}_y(x,y)}}{\partial{y}}$

In vector calculus, DIVERGENCE is a vector operator that produces a scalar field, giving the quantity of a vector field's source at each point. More technically, the divergence represents the volume density of the outward flux of a vector field from an infinitesimal volume around a given point.

As an example, consider air as it is heated or cooled. The velocity of the air at each point defines a vector field. While air is heated in a region, it expands in all directions, and thus the velocity field points outward from that region. The divergence of the velocity field in that region would thus have a positive value. While the air is cooled and thus contracting, the divergence of the velocity has a negative value.


Physical interpretation of divergence

In physical terms, the divergence of a three-dimensional vector field is the extent to which the vector field flux behaves like a source at a given point. It is a local measure of its "outgoingness" – the extent to which there is more of some quantity exiting an infinitesimal region of space than entering it. If the divergence is nonzero at some point then there is compression or expansion at that point. (Note that we are imagining the vector field to be like the velocity vector field of a fluid (in motion) when we use the terms _flux_ and so on.)

More rigorously, the divergence of a vector field at a point can be defined as the limit of the net flux of across the smooth boundary of a three-dimensional region divided by the volume of as shrinks to . Formally,

$$\left. \operatorname{div} \mathbf{F} \right|_p = \lim_{V \rightarrow \{p\}} \iint_{S(V)} \frac{\mathbf{F}\cdot\mathbf{\hat n}}{|V|} \, dS,$$

where is the volume of , is the boundary of , and the integral is a surface integral with being the outward unit normal to that surface. The result, , is a function of . From this definition it also becomes obvious that can be seen as the _source density_ of the flux of .

In light of the physical interpretation, a vector field with zero divergence everywhere is called _incompressible_ or _solenoidal_ – in which case any closed surface has no net flux across it.

The intuition that the sum of all sources minus the sum of all sinks should give the net flux outwards of a region is made precise by the divergence theorem.


Definition

Cartesian coordinates

In three-dimensional Cartesian coordinates, the divergence of a continuously differentiable vector field F = F_(x)I + F_(y)J + F_(z)K is defined as the scalar-valued function:

$$\operatorname{div} \mathbf{F} = \nabla\cdot\mathbf{F} = \left( \frac{\partial}{\partial x}, \frac{\partial}{\partial y}, \frac{\partial}{\partial z} \right) \cdot (F_x,F_y,F_z) = \frac{\partial F_x}{\partial x}+\frac{\partial F_y}{\partial y}+\frac{\partial F_z}{\partial z}.$$

Although expressed in terms of coordinates, the result is invariant under rotations, as the physical interpretation suggests. This is because the trace of the Jacobian matrix of an -dimensional vector field in -dimensional space is invariant under any invertible linear transformation.

The common notation for the divergence is a convenient mnemonic, where the dot denotes an operation reminiscent of the dot product: take the components of the operator (see del), apply them to the corresponding components of , and sum the results. Because applying an operator is different from multiplying the components, this is considered an abuse of notation.

The divergence of a continuously differentiable second-order tensor field is a first-order tensor field:

$$\overrightarrow{\operatorname{div}} (\mathbf{\varepsilon}) = \begin{bmatrix}
\dfrac{\partial \varepsilon_{xx}}{\partial x} +\dfrac{\partial \varepsilon_{yx}}{\partial y} +\dfrac{\partial \varepsilon_{zx}}{\partial z} \\
\dfrac{\partial \varepsilon_{xy}}{\partial x} +\dfrac{\partial \varepsilon_{yy}}{\partial y} +\dfrac{\partial \varepsilon_{zy}}{\partial z} \\
\dfrac{\partial \varepsilon_{xz}}{\partial x} +\dfrac{\partial \varepsilon_{yz}}{\partial y} +\dfrac{\partial \varepsilon_{zz}}{\partial z}
\end{bmatrix}.$$

Cylindrical coordinates

For a vector expressed in LOCAL unit cylindrical coordinates as

F = E_(_r_)_F__(_r_) + E_(_θ_)_F__(_θ_) + E_(_z_)_F__(_z_),
where is the unit vector in direction , the divergence is

$$\operatorname{div} \mathbf F = \nabla\cdot\mathbf F = \frac1r \frac{\partial}{\partial r} \left(rF_r\right) + \frac1r \frac{\partial F_\theta}{\partial\theta} + \frac{\partial F_z}{\partial z}.$$

The use of local coordinates is vital for the validity of the expression. If we consider the position vector and the functions r(X), θ(X), and z(X), which assign the corresponding GLOBAL cylindrical coordinate to a vector, in general r(F(X)) ≠ F_(r)(X), θ(F(X)) ≠ F_(θ)(X), and z(F(X)) ≠ F_(z)(X). In particular, if we consider the identity function F(X) = X, we find that:

_θ_(F(X)) = _θ_ ≠ _F__(_θ_)(X) = 0
.

Spherical coordinates

In spherical coordinates, with the angle with the axis and the rotation around the axis, and F again written in local unit coordinates, the divergence is

$$\operatorname{div}\mathbf{F} = \nabla\cdot\mathbf F = \frac1{r^2} \frac{\partial}{\partial r}\left(r^2 F_r\right) + \frac1{r\sin\theta} \frac{\partial}{\partial \theta} (\sin\theta\, F_\theta) + \frac1{r\sin\theta} \frac{\partial F_\varphi}{\partial \varphi}.$$

General coordinates

Using Einstein notation we can consider the divergence in general coordinates, which we write as , where is the number of dimensions of the domain. Here, the upper index refers to the number of the coordinate or component, so refers to the second component, and not the quantity squared. The index variable is used to refer to an arbitrary element, such as . The divergence can then be written via the Voss-Weyl formula[1], as:

$$\operatorname{div}(\mathbf{F}) = \frac{1}{\rho} \frac{\partial \left(\rho\, F^i\right)}{\partial x^i},$$

where ρ is the local coefficient of the volume element and are the components of with respect to the local UNNORMALIZED covariant basis (sometimes written as E_(i) = ∂X/∂x^(i)). The Einstein notation implies summation over , since it appears as both an upper and lower index.

The volume coefficient ρ is a function of position which depends on the coordinate system. In Cartesian, cylindrical and spherical coordinates, using the same conventions as before, we have ρ = 1, ρ = r and ρ = r²sin θ, respectively. It can also be expressed as $\rho=\sqrt{\operatorname{det}g_{ab}}$, where g_(ab) is the metric tensor. Since the determinant is a scalar quantity which doesn't depend on the indices, we can suppress them and simply write $\rho=\sqrt{\operatorname{det}g}$. Another expression comes from computing the determinant of the Jacobian for transforming from Cartesian coordinates, which for gives $\rho=\left |\frac{\partial(x,y,z)}{\partial (x^1,x^2,x^3)}\right|.$

Some conventions expect all local basis elements to be normalized to unit length, as was done in the previous sections. If we write $\hat{\mathbf{e}}_i$ for the normalized basis, and F̂^(i) for the components of with respect to it, we have that

$$\mathbf{F}=F^i \mathbf{e}_i =
F^i {\lVert{\mathbf{e}_i }\rVert } \frac{\mathbf{e}_i}{\lVert{\mathbf{e}_i }\rVert} =
F^i {\sqrt{g_{ii}}} \, \hat{\mathbf{e}}_i =
\hat{F}^i \hat{\mathbf{e}}_i,$$
using one of the properties of the metric tensor. By dotting both sides of the last equality with the contravariant element $\hat{\mathbf{e}}^i$, we can conclude that $F^i = \hat{F}^i / \sqrt{g_{ii}}$. After substituting, the formula becomes:

$$\operatorname{div}(\mathbf{F}) = \frac1{\rho} \frac{\partial \left(\frac{\rho}{\sqrt{g_{ii}}}\hat{F}^i\right)}{\partial x^i} =
 \frac1{\sqrt{\operatorname{det}g}} \frac{\partial \left(\sqrt{\frac{\operatorname{det}g}{g_{ii}}}\,\hat{F}^i\right)}{\partial x^i}$$
.

See __ for further discussion.


Decomposition theorem

It can be shown that any stationary flux that is at least twice continuously differentiable in and vanishes sufficiently fast for can be decomposed into an _irrotational part_ and a _source-free part_ . Moreover, these parts are explicitly determined by the respective _source densities_ (see above) and _circulation densities_ (see the article Curl):

For the irrotational part one has

E =  − ∇_Φ_(R),
with

$$\Phi (\mathbf{r})=\int_{\mathbb R^3}\,d^3\mathbf r'\;\frac{\operatorname{div} \mathbf{v}(\mathbf{r}')}{4\pi\left|\mathbf{r}-\mathbf{r}'\right|}.$$

The source-free part, , can be similarly written: one only has to replace the _scalar potential_ by a _vector potential_ and the terms by , and the source density by the circulation density .

This "decomposition theorem" is a by-product of the stationary case of electrodynamics. It is a special case of the more general Helmholtz decomposition which works in dimensions greater than three as well.


Properties

The following properties can all be derived from the ordinary differentiation rules of calculus. Most importantly, the divergence is a linear operator, i.e.,

div (_a_F + _b_G) = _a_div F + _b_div G

for all vector fields and and all real numbers and .

There is a product rule of the following type: if is a scalar-valued function and is a vector field, then

div (_φ_F) = grad _φ_ ⋅ F + _φ_div F,

or in more suggestive notation

∇ ⋅ (_φ_F) = (∇_φ_) ⋅ F + _φ_(∇ ⋅ F).

Another product rule for the cross product of two vector fields and in three dimensions involves the curl and reads as follows:

div (F × G) = curl F ⋅ G − F ⋅ curl G,

or

∇ ⋅ (F × G) = (∇ × F) ⋅ G − F ⋅ (∇ × G).

The Laplacian of a scalar field is the divergence of the field's gradient:

div (∇_φ_) = _Δ__φ_.

The divergence of the curl of any vector field (in three dimensions) is equal to zero:

∇ ⋅ (∇ × F) = 0.

If a vector field with zero divergence is defined on a ball in , then there exists some vector field on the ball with curl G}}. For regions in more topologically complicated than this, the latter statement might be false (see Poincaré lemma). The degree of _failure_ of the truth of the statement, measured by the homology of the chain complex

$$\{ \text{scalar fields on } U \} ~ \overset{\operatorname{grad}}{\rarr} ~ \{ \text{vector fields on } U \} ~ \overset{\operatorname{curl}}{\rarr} ~ \{ \text{vector fields on } U \} ~ \overset{\operatorname{div}}{\rarr} ~ \{ \text{scalar fields on } U \}$$

serves as a nice quantification of the complicatedness of the underlying region . These are the beginnings and main motivations of de Rham cohomology.


Relation with the exterior derivative

One can express the divergence as a particular case of the exterior derivative, which takes a 2-form to a 3-form in . Define the current two-form as

_j_ = _F_₁ _d__y_ ∧ _d__z_ + _F_₂ _d__z_ ∧ _d__x_ + _F_₃ _d__x_ ∧ _d__y_.
It measures the amount of "stuff" flowing through a surface per unit time in a "stuff fluid" of density 1 _dx_ ∧ _dy_ ∧ _dz_}} moving with local velocity . Its exterior derivative is then given by

$$dj = \left( \frac{\partial F_1}{\partial x} +\frac{\partial F_2}{\partial y} +\frac{\partial F_3}{\partial z} \right) dx \wedge dy \wedge dz = ( \nabla \cdot {\mathbf F} ) \rho .$$

Thus, the divergence of the vector field can be expressed as:

∇ ⋅ F =  ⋆ _d_ ⋆ (F^(♭)).
Here the superscript is one of the two musical isomorphisms, and is the Hodge star operator. Working with the current two-form and the exterior derivative is usually easier than working with the vector field and divergence, because unlike the divergence, the exterior derivative commutes with a change of (curvilinear) coordinate system.


Generalizations

The divergence of a vector field can be defined in any number of dimensions. If

F = (_F_₁, _F_₂, …_F__(_n_)),

in a Euclidean coordinate system with coordinates , define

$$\operatorname{div} \mathbf{F} = \nabla\cdot\mathbf{F} = \frac{\partial F_1}{\partial x_1} + \frac{\partial F_2}{\partial x_2} + \cdots + \frac{\partial F_n}{\partial x_n}.$$
The appropriate expression is more complicated in curvilinear coordinates.

In the case of one dimension, reduces to a regular function, and the divergence reduces to the derivative.

For any , the divergence is a linear operator, and it satisfies the "product rule"

∇ ⋅ (_φ_F) = (∇_φ_) ⋅ F + _φ_(∇ ⋅ F)

for any scalar-valued function .

The divergence of a vector field extends naturally to any differentiable manifold of dimension that has a volume form (or density) , e.g. a Riemannian or Lorentzian manifold. Generalising the construction of a two-form for a vector field on , on such a manifold a vector field defines an -form _i_(X) μ_}} obtained by contracting with . The divergence is then the function defined by

_d__j_ = (div _X_)_μ_.

Standard formulas for the Lie derivative allow us to reformulate this as

ℒ_(_X_)_μ_ = (div _X_)_μ_.

This means that the divergence measures the rate of expansion of a volume element as we let it flow with the vector field.

On a pseudo-Riemannian manifold, the divergence with respect to the metric volume form can be computed in terms of the Levi-Civita connection :

div _X_ = ∇ ⋅ _X_ = _X_^(_a_)_(; _a_),

where the second expression is the contraction of the vector field valued 1-form with itself and the last expression is the traditional coordinate expression from Ricci calculus.

An equivalent expression without using connection is

$$\operatorname{div}(X) = \frac{1}{\sqrt{\operatorname{det} g}} \partial_a \left(\sqrt{\operatorname{det} g} \, X^a\right),$$

where is the metric and denotes the partial derivative with respect to coordinate .

Divergence can also be generalised to tensors. In Einstein notation, the divergence of a contravariant vector is given by

∇ ⋅ F = ∇_(_μ_)_F_^(_μ_),

where denotes the covariant derivative.

Equivalently, some authors define the divergence of a mixed tensor by using the musical isomorphism : if is a -tensor ( for the contravariant vector and for the covariant one), then we define the _divergence of _ to be the -tensor

(div _T_)(_Y_₁, …, _Y__(_q_ − 1)) = trace (_X_ ↦ ♯(∇_T_)(_X_, ⋅,_Y_₁, …, _Y__(_q_ − 1)));

that is, we take the trace over the _first two_ covariant indices of the covariant derivative


See also

-   Curl
-   Del in cylindrical and spherical coordinates
-   Divergence theorem
-   Gradient


Notes


Citations


References

-   -   -   -   -


External links

-   -   The idea of divergence of a vector field
-   Khan Academy: Divergence video lesson
-

Category:Differential operators Category:Linear operators in calculus Category:Vector calculus

[1]