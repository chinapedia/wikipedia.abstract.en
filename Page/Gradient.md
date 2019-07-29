Gradient2.svg

In vector calculus, the GRADIENT is a multi-variable generalization of the derivative.[1] Whereas the ordinary derivative of a function of a single variable is a scalar-valued function, the gradient of a function of several variables is a vector-valued function. Specifically, the gradient of a differentiable function f of several variables, at a point P, is the vector whose components are the partial derivatives of f at P.[2][3][4][5][6][7][8][9][10]

Much as the derivative of a function of a single variable represents the slope of the tangent to the graph of the function,[11] if at a point P, the gradient of a function of several variables is not the zero vector, it has the direction of greatest increase of the function at P, and its magnitude is the rate of increase in that direction.[12][13][14][15][16][17][18]

The magnitude and direction of the gradient vector are independent of the particular coordinate representation.[19][20]

The Jacobian is the generalization of the gradient for vector-valued functions of several variables and differentiable maps between Euclidean spaces or, more generally, manifolds.[21][22] A further generalization for a function between Banach spaces is the Fréchet derivative.


Motivation

Gradient_of_a_Function.tif

Consider a room in which the temperature is given by a scalar field, , so at each point the temperature is . (Assume that the temperature does not change over time.) At each point in the room, the gradient of at that point will show the direction in which the temperature rises most quickly. The magnitude of the gradient will determine how fast the temperature rises in that direction.

Consider a surface whose height above sea level at point is . The gradient of at a point is a vector pointing in the direction of the steepest slope or grade at that point. The steepness of the slope at that point is given by the magnitude of the gradient vector.

The gradient can also be used to measure how a scalar field changes in other directions, rather than just the direction of greatest change, by taking a dot product. Suppose that the steepest slope on a hill is 40%. If a road goes directly up the hill, then the steepest slope on the road will also be 40%. If, instead, the road goes around the hill at an angle, then it will have a shallower slope. For example, if the angle between the road and the uphill direction, projected onto the horizontal plane, is 60°, then the steepest slope along the road will be 20%, which is 40% times the cosine of 60°.

This observation can be mathematically stated as follows. If the hill height function is differentiable, then the gradient of dotted with a unit vector gives the slope of the hill in the direction of the vector. More precisely, when is differentiable, the dot product of the gradient of with a given unit vector is equal to the directional derivative of in the direction of that unit vector.


Definition

3d-gradient-cos.svg on the bottom plane.]]

The gradient (or gradient vector field) of a scalar function is denoted or where (the nabla symbol) denotes the vector differential operator, del. The notation is also commonly used for the gradient. The gradient of is defined as the unique vector field whose dot product with any unit vector at each point is the directional derivative of along . That is,

(∇_f_(_x_)) ⋅ V = _D__(V)_f_(_x_).

When a function also depends on a parameter such as time, the gradient often refers simply to the vector of its spatial derivatives only (see Spatial gradient).

Cartesian coordinates

In the three-dimensional Cartesian coordinate system with a Euclidean metric, the gradient, if it exists, is given by:

$$\nabla f = \frac{\partial f}{\partial x} \mathbf{i} + \frac{\partial f}{\partial y} \mathbf{j} + \frac{\partial f}{\partial z} \mathbf{k},$$

where , , are the standard unit vectors in the directions of the , and coordinates, respectively. For example, the gradient of the function

_f_(_x_, _y_, _z_) = 2_x_ + 3_y_² − sin (_z_)
is

∇_f_ = 2I + 6_y_J − cos (_z_)K.

In some applications it is customary to represent the gradient as a row vector or column vector of its components in a rectangular coordinate system.

Cylindrical and spherical coordinates

In cylindrical coordinates with a Euclidean metric, the gradient is given by:[23]

$$\nabla f(\rho, \varphi, z) = \frac{\partial f}{\partial \rho}\mathbf{e}_\rho + \frac{1}{\rho}\frac{\partial f}{\partial \varphi}\mathbf{e}_\varphi + \frac{\partial f}{\partial z}\mathbf{e}_z,$$

where is the axial distance, is the azimuthal or azimuth angle, is the axial coordinate, and , and are unit vectors pointing along the coordinate directions.

In spherical coordinates, the gradient is given by:[24]

$$\nabla f(r, \theta, \varphi) = \frac{\partial f}{\partial r}\mathbf{e}_r + \frac{1}{r}\frac{\partial f}{\partial \theta}\mathbf{e}_\theta + \frac{1}{r \sin\theta}\frac{\partial f}{\partial \varphi}\mathbf{e}_\varphi,$$

where is the radial distance, is the azimuthal angle and is the polar angle, and , and are again local unit vectors pointing in the coordinate directions (i.e. the normalized covariant basis).

For the gradient in other orthogonal coordinate systems, see Orthogonal coordinates (Differential operators in three dimensions).

General coordinates

We consider general coordinates, which we write as , where is the number of dimensions of the domain. Here, the upper index refers to the position in the list of the coordinate or component, so refers to the second component—not the quantity squared. The index variable refers to an arbitrary element . Using Einstein notation, the gradient can then be written as:

$$\nabla f = \frac{\partial f}{\partial x^{i}}g^{ij} \mathbf{e}_j$$
( Note that its dual is $\mathrm{d}f= \frac{\partial f}{\partial x^{i}}\mathbf{e}^i$ ),

where E_(i) = ∂X/∂x^(i) and E^(i) = dx^(i) refer to the unnormalized local covariant and contravariant bases respectively, g^(ij) is the inverse metric tensor, and the Einstein summation convention implies summation over _i_ and _j_.

If the coordinates are orthogonal we can easily express the gradient (and the differential) in terms of the normalized bases, which we refer to as $\hat{\mathbf{e}}_i$ and $\hat{\mathbf{e}}^i$, using the scale factors (also known as Lamé coefficients) h_(i) = ∥E_(i)∥ = 1 /∥E^(i) ∥ :

$$\nabla f = \sum_{i=1}^n \, \frac{\partial f}{\partial x^{i}}\frac{1}{h_i}\mathbf{\hat{e}}_i$$
( and $\mathrm{d}f = \sum_{i=1}^n \, \frac{\partial f}{\partial x^{i}}\frac{1}{h_i}\mathbf{\hat{e}}^i$ ),

where we cannot use Einstein notation, since it is impossible to avoid the repetition of more than two indices. Despite the use of upper and lower indices, Ê_(i), Ê^(i), and h_(i) are neither contravariant nor covariant.

The latter expression evaluates to the expressions given above for cylindrical and spherical coordinates.


Gradient and the derivative or differential

Linear approximation to a function

The gradient of a function from the Euclidean space to at any particular point in characterizes the best linear approximation to at . The approximation is as follows:

_f_(_x_) ≈ _f_(_x_₀) + (∇_f_)_(_x_₀) ⋅ (_x_ − _x_₀)

for close to , where is the gradient of computed at , and the dot denotes the dot product on . This equation is equivalent to the first two terms in the multivariable Taylor series expansion of at .

Differential or (exterior) derivative

The best linear approximation to a differentiable function

_f_: R^(_n_) → R
at a point in is a linear map from to which is often denoted by or and called the DIFFERENTIAL or (TOTAL) DERIVATIVE of at . The gradient is therefore related to the differential by the formula

(∇_f_)_(_x_) ⋅ _v_ = _d__f__(_x_)(_v_)
for any . The function , which maps to , is called the differential or exterior derivative of and is an example of a differential 1-form.

If is viewed as the space of (dimension ) column vectors (of real numbers), then one can regard as the row vector with components

$$\left( \frac{\partial f}{\partial x_1}, \dots, \frac{\partial f}{\partial x_n}\right),$$
so that is given by matrix multiplication. Assuming the standard Euclidean metric on , the gradient is then the corresponding column vector, i.e.,

(∇_f_)_(_i_) = _d__f__(_i_)^(T).

Gradient as a derivative

Let be an open set in . If the function is differentiable, then the differential of is the (Fréchet) derivative of . Thus is a function from to the space such that

$$\lim_{h\to 0} \frac{|f(x+h)-f(x) -\nabla f(x)\cdot h|}{\|h\|} = 0,$$
where · is the dot product.

As a consequence, the usual properties of the derivative hold for the gradient:

Linearity

The gradient is linear in the sense that if and are two real-valued functions differentiable at the point , and and are two constants, then is differentiable at , and moreover

∇(_α__f_+_β__g_)(_a_) = _α_∇_f_(_a_) + _β_∇_g_(_a_).

Product rule

If and are real-valued functions differentiable at a point , then the product rule asserts that the product is differentiable at , and

∇(_f__g_)(_a_) = _f_(_a_)∇_g_(_a_) + _g_(_a_)∇_f_(_a_).

Chain rule

Suppose that is a real-valued function defined on a subset of , and that is differentiable at a point . There are two forms of the chain rule applying to the gradient. First, suppose that the function is a parametric curve; that is, a function maps a subset into . If is differentiable at a point such that _a_}}, then

(_f_ ∘ _g_)′(_c_) = ∇_f_(_a_) ⋅ _g_′(_c_),
where ∘ is the composition operator: _f_(_g_(_x_))}}.

More generally, if instead , then the following holds:

∇(_f_ ∘ _g_)(_c_) = (_D__g_(_c_))^(T)(∇_f_(_a_)),
where ^(T) denotes the transpose Jacobian matrix.

For the second form of the chain rule, suppose that is a real valued function on a subset of , and that is differentiable at the point . Then

∇(_h_ ∘ _f_)(_a_) = _h_′(_f_(_a_))∇_f_(_a_).


Further properties and applications

Level sets

A level surface, or isosurface, is the set of all points where some function has a given value.

If is differentiable, then the dot product of the gradient at a point with a vector gives the directional derivative of at in the direction . It follows that in this case the gradient of is orthogonal to the level sets of . For example, a level surface in three-dimensional space is defined by an equation of the form . The gradient of is then normal to the surface.

More generally, any embedded hypersurface in a Riemannian manifold can be cut out by an equation of the form such that is nowhere zero. The gradient of is then normal to the hypersurface.

Similarly, an affine algebraic hypersurface may be defined by an equation , where is a polynomial. The gradient of is zero at a singular point of the hypersurface (this is the definition of a singular point). At a non-singular point, it is a nonzero normal vector.

Conservative vector fields and the gradient theorem

The gradient of a function is called a gradient field. A (continuous) gradient field is always a conservative vector field: its line integral along any path depends only on the endpoints of the path, and can be evaluated by the gradient theorem (the fundamental theorem of calculus for line integrals). Conversely, a (continuous) conservative vector field is always the gradient of a function.


Generalizations

Gradient of a vector

Since the total derivative of a vector field is a linear mapping from vectors to vectors, it is a tensor quantity.

In rectangular coordinates, the gradient of a vector field is defined by:

$$\nabla \mathbf{f}=g^{jk}\frac{\partial f^i}{\partial x^j} \mathbf{e}_i \otimes \mathbf{e}_k,$$

(where the Einstein summation notation is used and the tensor product of the vectors and is a dyadic tensor of type (2,0)). Overall, this expression equals the transpose of the Jacobian matrix:

$$\frac{\partial f^i}{\partial x^j} = \frac{\partial (f^1,f^2,f^3)}{\partial (x^1,x^2,x^3)}.$$

In curvilinear coordinates, or more generally on a curved manifold, the gradient involves Christoffel symbols:

$$\nabla \mathbf{f}=g^{jk}\left(\frac{\partial f^i}{\partial x^j}+{\Gamma^i}_{jl}f^l\right) \mathbf{e}_i \otimes \mathbf{e}_k,$$

where are the components of the inverse metric tensor and the are the coordinate basis vectors.

Expressed more invariantly, the gradient of a vector field can be defined by the Levi-Civita connection and metric tensor:[25]

∇^(_a_)_f_^(_b_) = _g_^(_a__c_)∇_(_c_)_f_^(_b_),

where is the connection.

Riemannian manifolds

For any smooth function on a Riemannian manifold , the gradient of is the vector field such that for any vector field ,

_g_(∇_f_, _X_) = ∂_(_X_)_f_,
i.e.,

_g__(_x_)((∇_f_)_(_x_), _X__(_x_)) = (∂_(_X_)_f_)(_x_),
where denotes the inner product of tangent vectors at defined by the metric and is the function that takes any point to the directional derivative of in the direction , evaluated at . In other words, in a coordinate chart from an open subset of to an open subset of , is given by:

$$\sum_{j=1}^n X^{j} \big(\varphi(x)\big) \frac{\partial}{\partial x_{j}}(f \circ \varphi^{-1}) \Bigg|_{\varphi(x)},$$
where denotes the th component of in this coordinate chart.

So, the local form of the gradient takes the form:

$$\nabla f = g^{ik} \frac{\partial f}{\partial x^k} {\textbf e}_i .$$

Generalizing the case , the gradient of a function is related to its exterior derivative, since

(∂_(_X_)_f_)(_x_) = (_d__f_)_(_x_)(_X__(_x_)).
More precisely, the gradient is the vector field associated to the differential 1-form using the musical isomorphism

♯ = ♯^(_g_): _T_^(*)_M_ → _T__M_
(called "sharp") defined by the metric . The relation between the exterior derivative and the gradient of a function on is a special case of this in which the metric is the flat metric given by the dot product.


See also

-   Curl
-   Divergence
-   Four-gradient
-   Hessian matrix
-   Skew gradient


Notes


References

-   {{ citation | last1 = Bachman | first1 = David | title = Advanced Calculus Demystified | location = New York | publisher = McGraw-Hill | year = 2007 | isbn = 0-07-148121-4 }}
-   {{ citation | last1 = Beauregard | first1 = Raymond A. | last2 = Fraleigh | first2 = John B. | title = A First Course In Linear Algebra: with Optional Introduction to Groups, Rings, and Fields | location = Boston | publisher = Houghton Mifflin Company | year = 1973 | isbn = 0-395-14017-X }}
-   {{ citation | last1 = Downing | first1 = Douglas, Ph.D. | title = Barron's E-Z Calculus | location = New York | publisher = Barron's | year = 2010 | isbn = 978-0-7641-4461-5 }}
-   -   {{ citation | last1 = Harper | first1 = Charlie | title = Introduction to Mathematical Physics | location = New Jersey | publisher = Prentice-Hall | year = 1976 | isbn = 0-13-487538-9 }}
-   {{ citation | last1 = Kreyszig | first1 = Erwin | authorlink = Erwin Kreyszig | title = Advanced Engineering Mathematics | edition = 3rd | location = New York | publisher = Wiley | year = 1972 | isbn = 0-471-50728-8 }}
-   {{ cite encyclopedia | encyclopedia = McGraw-Hill Encyclopedia of Science & Technology | edition = 10th | location = New York | publisher = McGraw-Hill | year = 2007 | isbn = 0-07-144143-3 | ref = }}
-   {{ citation | last1 = Moise | first1 = Edwin E. | title = Calculus: Complete | location = Reading | publisher = Addison-Wesley | year = 1967 }}
-   {{ citation | last1 = Protter | first1 = Murray H. | last2 = Morrey, Jr. | first2 = Charles B. | title = College Calculus with Analytic Geometry | edition = 2nd | location = Reading | publisher = Addison-Wesley | year = 1970 | lccn = 76087042 }}
-   -   {{ citation | last1 = Stoker | first1 = J. J. | title = Differential Geometry | location = New York | publisher = Wiley | year = 1969 | isbn = 0-471-82825-4 }}
-   {{ citation | last1 = Swokowski | first1 = Earl W. | last2 = Olinick | first2 = Michael | last3 = Pence | first3 = Dennis | last4 = Cole | first4 = Jeffery A. | title = Calculus | edition = 6th | location = Boston | publisher = PWS Publishing Company | year = 1994 | isbn = 0-534-93624-5 | ref = }}


Further reading

-


External links

-   -   .

-

Category:Differential operators Category:Differential calculus Category:Generalizations of the derivative Category:Linear operators in calculus Category:Vector calculus Category:Rates

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23] .

[24]

[25] .