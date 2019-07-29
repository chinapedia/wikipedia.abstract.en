In vector calculus, the CURL is a vector operator that describes the infinitesimal rotation of a vector field in three-dimensional Euclidean space. At every point in the field, the curl of that point is represented by a vector. The attributes of this vector (length and direction) characterize the rotation at that point.

The direction of the curl is the axis of rotation, as determined by the right-hand rule, and the magnitude of the curl is the magnitude of rotation. If the vector field represents the flow velocity of a moving fluid, then the curl is the CIRCULATION DENSITY of the fluid. A vector field whose curl is zero is called irrotational. The curl is a form of differentiation for vector fields. The corresponding form of the fundamental theorem of calculus is Stokes' theorem, which relates the surface integral of the curl of a vector field to the line integral of the vector field around the boundary curve.

The alternative terminology _rotation_ or _rotational_ and alternative notations and are often used (the former especially in many European countries, the latter, using the del (or nabla) operator and the cross product, is more used in other countries) for .

Unlike the gradient and divergence, curl does not generalize as simply to other dimensions; some generalizations are possible, but only in three dimensions is the geometrically defined curl of a vector field again a vector field. This is a phenomenon similar to the 3-dimensional cross product, and the connection is reflected in the notation for the curl.

The name "curl" was first suggested by James Clerk Maxwell in 1871[1] but the concept was apparently first used in the construction of an optical field theory by James MacCullagh in 1839.[2]


Definition

Curl.svg _A_N̂}}.]]

The curl of a vector field , denoted by , or , or , at a point is defined in terms of its projection onto various lines through the point. If is any unit vector, the projection of the curl of onto is defined to be the limiting value of a closed line integral in a plane orthogonal to divided by the area enclosed, as the path of integration is contracted around the point.

The curl operator maps continuously differentiable functions to continuous functions , and more generally, it maps [[Smooth_function| \ \overset{\underset{\mathrm{def}}{}}{=} \lim_{A \to 0}\left( \frac{1}{|A|}\oint_C \mathbf{F} \cdot d\mathbf{r}\right)

where is a line integral along the boundary of the area in question, and is the magnitude of the area. This equation defines the projection of the curl of onto , where is the normal vector to the surface bounded by ; and is defined via the right-hand rule (see diagram).Right_hand_rule_simple.png.

The above formula means that the curl of a vector field is defined as the infinitesimal area density of the _circulation_ of that field. To this definition fit naturally

-   the Kelvin–Stokes theorem, as a global formula corresponding to the definition, and
-   the following "easy to memorize" definition of the curl in curvilinear orthogonal coordinates, e.g. in Cartesian coordinates, spherical, cylindrical, or even elliptical or parabolic coordinates:

$$\begin{align}
& (\operatorname{curl}\mathbf F)_1=\frac{1}{h_2h_3}\left (\frac{\partial (h_3F_3)}{\partial u_2}-\frac{\partial (h_2F_2)}{\partial u_3}\right ), \\[5pt]
& (\operatorname{curl}\mathbf F)_2=\frac{1}{h_3h_1}\left (\frac{\partial (h_1F_1)}{\partial u_3}-\frac{\partial (h_3F_3)}{\partial u_1}\right ), \\[5pt]
& (\operatorname{curl}\mathbf F)_3=\frac{1}{h_1h_2}\left (\frac{\partial (h_2F_2)}{\partial u_1}-\frac{\partial (h_1F_1)}{\partial u_2}\right ).
\end{align}$$

The equation for each component can be obtained by exchanging each occurrence of a subscript 1, 2, 3 in cyclic permutation: 1 → 2, 2 → 3, and 3 → 1 (where the subscripts represent the relevant indices).

If are the Cartesian coordinates and are the orthogonal coordinates, then

$$h_i = \sqrt{\left (\frac{\partial x_1}{\partial u_i} \right )^2 + \left (\frac{\partial x_2}{\partial u_i} \right )^2 + \left (\frac{\partial x_3}{\partial u_i} \right )^2}$$
is the length of the coordinate vector corresponding to . The remaining two components of curl result from cyclic permutation of indices: 3,1,2 → 1,2,3 → 2,3,1.

Intuitive interpretation

Suppose the vector field describes the velocity field of a fluid flow (such as a large tank of liquid or gas) and a small ball is located within the fluid or gas (the centre of the ball being fixed at a certain point). If the ball has a rough surface, the fluid flowing past it will make it rotate. The rotation axis (oriented according to the right hand rule) points in the direction of the curl of the field at the centre of the ball, and the angular speed of the rotation is half the magnitude of the curl at this point.[3]

The curl of the vector at any point is given by the rotation of an infinitesimal area in the _xy_-plane (for _z_-axis component of the curl), _zx_-plane (for _y_-axis component of the curl) and _yz_-plane (for _x_-axis component of the curl vector). This can be clearly seen in the examples below.


Inverse

The inverse curl of a three-dimensional vector field can be obtained up to an integration constant and an unknown irrotational field with the Biot-Savart law.


Usage

In practice, the above definition is rarely used because in virtually all cases, the curl operator can be applied using some set of curvilinear coordinates, for which simpler representations have been derived.

The notation has its origins in the similarities to the 3-dimensional cross product, and it is useful as a mnemonic in Cartesian coordinates if is taken as a vector differential operator del. Such notation involving operators is common in physics and algebra.

Expanded in 3-dimensional Cartesian coordinates (see _Del in cylindrical and spherical coordinates_ for spherical and cylindrical coordinate representations), is, for composed of :

$$\begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\[5pt]
{\dfrac{\partial}{\partial x}} & {\dfrac{\partial}{\partial y}} & {\dfrac{\partial}{\partial z}} \\[10pt]
F_x & F_y & F_z \end{vmatrix}$$

where , , and are the unit vectors for the -, -, and -axes, respectively. This expands as follows:[4]

$$\left(\frac{\partial F_z}{\partial y} - \frac{\partial F_y}{\partial z}\right) \mathbf{i} + \left(\frac{\partial F_x}{\partial z} - \frac{\partial F_z}{\partial x} \right) \mathbf{j} + \left(\frac{\partial F_y}{\partial x} - \frac{\partial F_x}{\partial y} \right) \mathbf{k} = \begin{bmatrix}\frac{\partial F_z}{\partial y} - \frac{\partial F_y}{\partial z} \\ \frac{\partial F_x}{\partial z} - \frac{\partial F_z}{\partial x} \\ \frac{\partial F_y}{\partial x} - \frac{\partial F_x}{\partial y}\end{bmatrix}$$

Although expressed in terms of coordinates, the result is invariant under proper rotations of the coordinate axes but the result inverts under reflection.

In a general coordinate system, the curl is given by[5]

(∇ × F)^(_k_) = _ε_^(_k_ℓ_m_)∇_(ℓ)_F__(_m_)

where denotes the Levi-Civita tensor and the covariant derivative, the metric tensor is used to lower the index on , and the Einstein summation convention implies that repeated indices are summed over. Equivalently,

(∇ × F) = E_(_k_)_ε_^(_k_ℓ_m_)∇_(_l_)_F__(_m_)

where are the coordinate vector fields. Equivalently, using the exterior derivative, the curl can be expressed as:

∇ × F = (⋆(_d__F_^(♭)))^(♯)

Here and are the musical isomorphisms, and is the Hodge star operator. This formula shows how to calculate the curl of in any coordinate system, and how to extend the curl to any oriented three-dimensional Riemannian manifold. Since this depends on a choice of orientation, curl is a chiral operation. In other words, if the orientation is reversed, then the direction of the curl is also reversed.


Examples

Example 1

Take the vector field:

F(_x_, _y_, _z_) = _y_X̂ − _x_Ŷ.

For clarity, this can be decomposed as follows:

F_(_x_) = _y_, F_(_y_) =  − _x_, F_(_z_) = 0.

Its corresponding plot:

Uniform_curl.svg

Upon visual inspection, the field can be described as "rotating". If a stationary object were to be placed in the field with the vectors representing a linear force, the object would rotate clockwise.

Calculating the curl:

$$\nabla \times \mathbf{F} =0\boldsymbol{\hat{x}}+0\boldsymbol{\hat{y}}+ \left({\frac{\partial}{\partial x}}(-x) -{\frac{\partial}{\partial y}} y\right)\boldsymbol{\hat{z}}=-2\boldsymbol{\hat{z}}$$

The resulting vector field describing the curl would be uniformly going in the negative direction. The results of this equation align with what could have been predicted using the right-hand rule using a right-handed coordinate system. Being a uniform vector field, the object described before would have the same rotational intensity regardless of where it was placed.

The plot describing the curl of :

Curl_of_uniform_curl.png

Example 2

Take the vector field:

F(_x_, _y_, _z_) =  − _x_²Ŷ.

Its corresponding plot:

Nonuniform_curl.svg

Upon initial inspection, curl existing in this graph would not be obvious. However, taking the object in the previous example, and placing it anywhere on the line 3}}, the force exerted on the right side would be slightly greater than the force exerted on the left, causing it to rotate clockwise. Using the right-hand rule, it can be predicted that the resulting curl would be straight in the negative direction. Inversely, if placed on −3}}, the object would rotate counterclockwise and the right-hand rule would result in a positive direction.

Calculating the curl:

$${\nabla} \times \mathbf{F} =0\boldsymbol{\hat{x}}+0\boldsymbol{\hat{y}}+ {\frac{\partial}{\partial x}}(-x^2) \boldsymbol{\hat{z}}=-2x\boldsymbol{\hat{z}}.$$

As predicted, the curl points in the negative direction when is positive and vice versa. In this field, the intensity of rotation would be greater as the object moves away from the plane 0}}.

The plot describing the curl of :

Curl_of_nonuniform_curl.png

Identities

In general curvilinear coordinates (not only in Cartesian coordinates), the curl of a cross product of vector fields and can be shown to be

∇ × (V × F) = ((∇ ⋅ F) + F ⋅ ∇)V − ((∇ ⋅ V) + V ⋅ ∇)F .

Interchanging the vector field and operator, we arrive at the cross product of a vector field with curl of a vector field:

V ×(∇ × F) = ∇_(F)(V ⋅ F) − (V ⋅ ∇)F ,

where is the Feynman subscript notation, which considers only the variation due to the vector field (i.e., in this case, is treated as being constant in space).

Another example is the curl of a curl of a vector field. It can be shown that in general coordinates

∇ × (∇ × F) = ∇(∇ ⋅ F) − ∇²F ,

and this identity defines the vector Laplacian of , symbolized as .

The curl of the gradient of _any_ scalar field is always the zero vector field

∇ × (∇_φ_) = 0

which follows from the antisymmetry in the definition of the curl, and the symmetry of second derivatives.

If is a scalar valued function and is a vector field, then

∇ × (_φ_F) = ∇_φ_ × F + _φ_∇ × F

Descriptive examples

-   In a vector field describing the linear velocities of each part of a rotating disk, the curl has the same value at all points.
-   Of the four Maxwell's equations, two—Faraday's law and Ampère's law—can be compactly expressed using curl. Faraday's law states that the curl of an electric field is equal to the opposite of the time rate of change of the magnetic field, while Ampère's law relates the curl of the magnetic field to the current and rate of change of the electric field.


Generalizations

The vector calculus operations of grad, curl, and div are most easily generalized and understood in the context of differential forms, which involves a number of steps. In a nutshell, they correspond to the derivatives of 0-forms, 1-forms, and 2-forms, respectively. The geometric interpretation of curl as rotation corresponds to identifying bivectors (2-vectors) in 3 dimensions with the special orthogonal Lie algebra of infinitesimal rotations (in coordinates, skew-symmetric 3 × 3 matrices), while representing rotations by vectors corresponds to identifying 1-vectors (equivalently, 2-vectors) and , these all being 3-dimensional spaces.

Differential forms

In 3 dimensions, a differential 0-form is simply a function ; a differential 1-form is the following expression:

_a_₁ _d__x_ + _a_₂ _d__y_ + _a_₃ _d__z_;
a differential 2-form is the formal sum:

_a_₁₂ _d__x_ ∧ _d__y_ + _a_₁₃ _d__x_ ∧ _d__z_ + _a_₂₃ _d__y_ ∧ _d__z_;
and a differential 3-form is defined by a single term:

_a_₁₂₃ _d__x_ ∧ _d__y_ ∧ _d__z_.
(Here the -coefficients are real functions; the "wedge products", e.g. , can be interpreted as some kind of oriented area elements, −_dy_ ∧ _dx_}}, etc.)

The exterior derivative of a -form in is defined as the -form from above—and in if, e.g.,

$$\omega^{(k)}=\sum_{\scriptstyle{i_1<i_2<\cdots<i_k} \atop \forall \scriptstyle{i_\nu\in 1,\ldots,n}} a_{i_1,\ldots,i_k}\,dx_{i_1}\wedge \cdots\wedge dx_{i_k},$$

then the exterior derivative leads to

$$d\omega^{(k)}=\sum_{\scriptstyle{j=1} \atop \scriptstyle{i_1<\cdots<i_k}}^n\frac{\partial a_{i_1,\ldots,i_k}}{\partial x_j}\,dx_j \wedge dx_{i_1}\wedge \cdots \wedge dx_{i_k}.$$

The exterior derivative of a 1-form is therefore a 2-form, and that of a 2-form is a 3-form. On the other hand, because of the interchangeability of mixed derivatives, e.g. because of

$$\frac{\partial^2}{\partial x\,\partial y}=\frac{\partial^2}{\partial y\,\partial x},$$

the twofold application of the exterior derivative leads to 0.

Thus, denoting the space of -forms by and the exterior derivative by one gets a sequence:

$$0 \, \overset{d}{\longrightarrow} \, \Omega^0(\mathbf{R}^3) \, \overset{d}{\longrightarrow} \, \Omega^1(\mathbf{R}^3) \, \overset{d}{\longrightarrow} \, \Omega^2(\mathbf{R}^3) \, \overset{d}{\longrightarrow} \, \Omega^3(\mathbf{R}^3) \, \overset{d}{\longrightarrow} \, 0.$$

Here is the space of sections of the exterior algebra vector bundle over ℝ^(_n_), whose dimension is the binomial coefficient ; note that 0}} for or . Writing only dimensions, one obtains a row of Pascal's triangle:

    0 → 1 → 3 → 3 → 1 → 0;

the 1-dimensional fibers correspond to scalar fields, and the 3-dimensional fibers to vector fields, as described below. Modulo suitable identifications, the three nontrivial occurrences of the exterior derivative correspond to grad, curl, and div.

Differential forms and the differential can be defined on any Euclidean space, or indeed any manifold, without any notion of a Riemannian metric. On a Riemannian manifold, or more generally pseudo-Riemannian manifold, -forms can be identified with [[p-vector|, and corresponds to . Thus the form corresponds to the "dual form" .

Thus, identifying 0-forms and 3-forms with scalar fields, and 1-forms and 2-forms with vector fields:

-   grad takes a scalar field (0-form) to a vector field (1-form);
-   curl takes a vector field (1-form) to a pseudovector field (2-form);
-   div takes a pseudovector field (2-form) to a pseudoscalar field (3-form)

On the other hand, the fact that 0}} corresponds to the identities

∇ × (∇_f_) = 0
for any scalar field , and

∇ ⋅ (∇ × V) = 0
for any vector field .

Grad and div generalize to all oriented pseudo-Riemannian manifolds, with the same geometric interpretation, because the spaces of 0-forms and -forms is always (fiberwise) 1-dimensional and can be identified with scalar fields, while the spaces of 1-forms and -forms are always fiberwise -dimensional and can be identified with vector fields.

Curl does not generalize in this way to 4 or more dimensions (or down to 2 or fewer dimensions); in 4 dimensions the dimensions are

    0 → 1 → 4 → 6 → 4 → 1 → 0;

so the curl of a 1-vector field (fiberwise 4-dimensional) is a _2-vector field_, which is fiberwise 6-dimensional, one has

_ω_⁽²⁾ = ∑_(_i_ < _k_ = 1, 2, 3, 4)_a__(_i_, _k_) _d__x__(_i_) ∧ _d__x__(_k_),

which yields a sum of six independent terms, and cannot be identified with a 1-vector field. Nor can one meaningfully go from a 1-vector field to a 2-vector field to a 3-vector field (4 → 6 → 4), as taking the differential twice yields zero ( 0}}). Thus there is no curl function from vector fields to vector fields in other dimensions arising in this way.

However, one can define a curl of a vector field as a _2-vector field_ in general, as described below.

Curl geometrically

2-vectors correspond to the exterior power ; in the presence of an inner product, in coordinates these are the skew-symmetric matrices, which are geometrically considered as the special orthogonal Lie algebra of infinitesimal rotations. This has _n_(_n_ − 1)}} dimensions, and allows one to interpret the differential of a 1-vector field as its infinitesimal rotations. Only in 3 dimensions (or trivially in 0 dimensions) does _n_(_n_ − 1)}}, which is the most elegant and common case. In 2 dimensions the curl of a vector field is not a vector field but a function, as 2-dimensional rotations are given by an angle (a scalar – an orientation is required to choose whether one counts clockwise or counterclockwise rotations as positive); this is not the div, but is rather perpendicular to it. In 3 dimensions the curl of a vector field is a vector field as is familiar (in 1 and 0 dimensions the curl of a vector field is 0, because there are no non-trivial 2-vectors), while in 4 dimensions the curl of a vector field is, geometrically, at each point an element of the 6-dimensional Lie algebra .

Note also that the curl of a 3-dimensional vector field which only depends on 2 coordinates (say and ) is simply a vertical vector field (in the direction) whose magnitude is the curl of the 2-dimensional vector field, as in the examples on this page.

Considering curl as a 2-vector field (an antisymmetric 2-tensor) has been used to generalize vector calculus and associated physics to higher dimensions.[6]


See also

-   Cross product
-   Del
-   Divergence
-   Gradient
-   Helmholtz decomposition
-   Del in cylindrical and spherical coordinates
-   Vorticity


Notes


References

-   Arfken, George B. and Hans J. Weber. _Mathematical Methods For Physicists_, Academic Press; 6 edition (June 21, 2005). .
-   -


External links

-   -   The idea of curl of a vector field
-   Curl BetterExplained
-

Category:Differential operators Category:Linear operators in calculus Category:Vector calculus Category:Analytic geometry

[1] Proceedings of the London Mathematical Society, March 9th, 1871

[2] Collected works of James MacCullagh

[3]

[4] Arfken, p. 43.

[5]

[6] Generalizing Cross Products and Maxwell's Equations to Universal Extra Dimensions, A.W. McDavid, C.D. McMullen, 2006