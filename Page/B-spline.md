In the mathematical subfield of numerical analysis, a B-SPLINE, or BASIS SPLINE, is a spline function that has minimal support with respect to a given degree, smoothness, and domain partition. Any spline function of given degree can be expressed as a linear combination of B-splines of that degree. Cardinal B-splines have knots that are equidistant from each other. B-splines can be used for curve-fitting and numerical differentiation of experimental data.

In computer-aided design and computer graphics, spline functions are constructed as linear combinations of B-splines with a set of control points.


Introduction

The term "B-spline" was coined by Isaac Jacob Schoenberg[1] and is short for basis spline.[2] A spline function of order n is a piecewise polynomial function of degree n − 1 in a variable x. The places where the pieces meet are known as knots. The key property of spline functions is that they and their derivatives may be continuous, depending on the multiplicities of the knots.

B-splines of order n are basis functions for spline functions of the same order defined over the same knots, meaning that all possible spline functions can be built from a linear combination of B-splines, and there is only one unique combination for each spline function.[3]


Definition

A spline of order n is a piecewise polynomial function of degree n − 1 in a variable x. The values of x where the pieces of polynomial meet are known as knots, denoted …, t₀, t₁, t₂, … and sorted into non-decreasing order. When the knots are distinct, the first n − 1 derivatives of the polynomial pieces are continuous across each knot. When r knots are coincident, then only the first n − r derivatives of the spline are continuous across that knot.

For a given sequence of knots, there is, up to a scaling factor, a unique spline B_(i, n)(x) satisfying

$$B_{i,n}(x) = \left\{
\begin{array}{ll}
0 & \mathrm{if} \quad x \leq t_i \quad \mathrm{or} \quad x \geq t_{i+n} \\
\mathrm{non zero} & \mathrm{otherwise}
\end{array}
\right.$$

If we add the additional constraint that ∑_(i)B_(i, n)(x) = 1 for all x between the first and last knot, then the scaling factor of B_(i, n)(x) becomes fixed. The resulting B_(i, n)(x) spline functions are called B-splines.

Alternatively, B-splines can be defined by construction by means of the Cox-de Boor recursion formula. Given a knot sequence …, t₀, t₁, t₂, …, then the B-splines of order 1 are defined by

$$B_{i,1}(x) := \left\{
\begin{matrix}
1 & \mathrm{if} \quad t_i \leq x < t_{i+1} \\
0 & \mathrm{otherwise}
\end{matrix}
\right.$$

Note that these satisfy ∑_(i)B_(i, 1)(x) = 1 for all x because for any x exactly one of the B_(i, 1)(x) = 1, and all the others are zero.

The higher order B-splines are defined by recursion

$$B_{i,k+1}(x) := \frac{x - t_i}{t_{i+k} - t_i} B_{i,k}(x) + \frac{t_{i+k+1} - x}{t_{i+k+1} - t_{i+1}} B_{i+1,k}(x).$$


Properties

B-spline function is a combination of flexible bands that passes through the number of points that are called control points and creates smooth curves. These functions enable the creation and management of complex shapes and surfaces using a number of points. B-spline function and Bézier functions are applied extensively in shape optimization methods.[4]

A B-spline of order n is a piecewise polynomial function of degree n − 1 in a variable x. It is defined over 1 + n locations t_(j), called knots or breakpoints, which must be in non-descending order t_(j) ≤ t_(j + 1). The B-spline contributes only in the range between the first and last of these knots and is zero elsewhere. If each knot is separated by the same distance h (where h = t_(j + 1) − t_(j)) from its predecessor, the knot vector and the corresponding B-splines are called 'uniform' (see cardinal B-spline below).

For each finite knot interval where it is non-zero, a B-spline is a polynomial of degree n − 1. A B-spline is a continuous function at the knots.[5] When all knots belonging to the B-spline are distinct, its derivatives are also continuous up to the derivative of degree n − 1. If the knots are coincident at a given value of x, the continuity of derivative order is reduced by 1 for each additional coincident knot. B-splines may share a subset of their knots, but two B-splines defined over exactly the same knots are identical. In other words, a B-spline is uniquely defined by its knots.

One distinguishes internal knots and end points. Internal knots cover the x-domain one is interested in. Since a single B-spline already extends over 1 + n knots, it follows that the internal knots need to be extended with n − 1 end points on each side, to give full support to the first and last B-spline which affect the internal knot intervals. The values of the endpoints do not matter, usually the first or last internal knot is just repeated.

The usefulness of B-splines lies in the fact that any spline function of order n on a given set of knots can be expressed as a linear combination of B-splines:

    S_(n, T)(x) = ∑_(i)α_(i)B_(i, n)(x).

B-splines play the role of basis functions for the spline function space, hence the name. This property follows from the fact that all pieces have the same continuity properties, within their individual range of support, at the knots.[6]

Expressions for the polynomial pieces can be derived by means of the Cox-de Boor recursion formula[7]

$$B_{i,0}(x) := \left\{
\begin{matrix}
1 & \mathrm{if} \quad t_i \leq x < t_{i+1} \\
0 & \mathrm{otherwise}
\end{matrix}
\right.$$

$$B_{i,k}(x) := \frac{x - t_i}{t_{i+k} - t_i} B_{i,k-1}(x) + \frac{t_{i+k+1} - x}{t_{i+k+1} - t_{i+1}} B_{i+1,k-1}(x).$$
[8]

That is, B_(j, 0)(x) is piecewise constant one or zero indicating which knot span _x_ is in (zero if knot span _j_ is repeated). The recursion equation is in two parts:

$$\frac{x - t_i}{t_{i+k} - t_i}$$
ramps from zero to one as _x_ goes from t_(i) to t_(i + k) and

$$\frac{t_{i+k+1} - x}{t_{i+k+1} - t_{i+1}}$$
ramps from one to zero as _x_ goes from t_(i + 1) to t_(i + k + 1). The corresponding _B_s are zero outside those respective ranges. For example, B_(i, 1)(x) is a triangular function that is zero below x = t_(i), ramps to one at x = t_(i + 1) and back to zero at and beyond x = t_(i + 2). However, because B-spline basis functions have local support, B-splines are typically computed by algorithms that do not need to evaluate basis functions where they are zero, such as de Boor's algorithm.

This relation leads directly to the FORTRAN-coded algorithm BSPLV which generates values of the B-splines of order _n_ at _x_.[9] The following scheme illustrates how each piece of order _n_ is a linear combination of the pieces of B-splines of order _n_-1 to its left.

$$\begin{matrix}
& & 0\\
 &0 & \\
0& &B_{i-2,2}\\
 &B_{i-1,1}& \\
B_{i,0}& &B_{i-1,2}\\
 &B_{i,1}& \\
0& &B_{i,2}\\
 &0& \\
& & 0\\
\end{matrix}$$

Application of the recursion formula with the knots at (0, 1, 2, 3) gives the pieces of the uniform B-spline of order 3

_B_₁ = _x_²/2  0 ≤ _x_ ≤ 1

_B_₂ = ( − 2_x_² + 6_x_ − 3)/2  1 ≤ _x_ ≤ 2

_B_₃ = (3 − _x_)²/2  2 ≤ _x_ ≤ 3
These pieces are shown in the diagram. The continuity property of a quadratic spline function and its first derivative at the internal knots are illustrated, as follows

    $\mbox{At }x=1, B_1=B_2=0.5; \frac{dB_1}{dx}=\frac{dB_2}{dx}=1$
    $\mbox{At }x=2, B_2=B_3=0.5; \frac{dB_2}{dx}=\frac{dB_3}{dx}=-1$

The second derivative of a B-spline of degree 2 is discontinuous at the knots:

    $\frac{d^2B_1}{dx^2}=1, \frac{d^2B_2}{dx^2}=-2,\frac{d^2B_3}{dx^2}=-1.$

Faster variants of the de Boor algorithm have been proposed but they suffer from comparatively lower stability.[10][11]

Cardinal B-spline

A cardinal B-spline has a constant separation, _h_, between knots. The cardinal B-splines for a given order _n_ are just shifted copies of each other. They can be obtained from the simpler definition.[12]

$$B_{i,n,t}(x) = \frac{x-t_i}{h} n[0,\dots,n](. - t_i)^{n-1}_+$$
The "placeholder" notation is used to indicate that the _n_th divided difference of the function (t − x)₊^(n − 1) of the two variables _t_ and _x_ is to be taken by fixing _x_ and considering (t − x)₊^(n − 1) as a function of _t_ alone.

A cardinal B-spline has uniform spaced knots, therefore interpolation between the knots equals convolution with a smoothing kernel.

Example, if we want to interpolate three values in between B-spline nodes (B), we can write the signal as:

X = [B₁, 0, 0, B₂, 0, 0, B₃, 0, 0, ...., B_(n), 0, 0]

Convolution of the signal X with a rectangle function H = [1/3, 1/3, 1/3] gives first order interpolated b-spline values. Second-order B-spline interpolation is convolution with a rectangle function twice Y = X * H * H, by iterative filtering with a rectangle function higher order interpolation is obtained.

Fast b-spline interpolation on a uniform sample domain can be done by iterative mean-filtering. Alternatively, a rectangle function equals Sinc in Fourier domain. Therefore, cubic spline interpolation equals multiplying the signal in Fourier domain with Sinc^4.

See Irwin–Hall distribution#Special cases for algebraic expressions for the cardinal B-splines of degree 1-4.

P-spline

The term P-spline stands for "penalized B-spline". It refers to using the B-spline representation where the coefficients are determined partly by the data to be fitted, and partly by an additional penalty function that aims to impose smoothness to avoid overfitting.[13]


Derivative expressions

The derivative of a B-spline of degree _k_ is simply a function of B-splines of degree _k_-1.[14]

$$\frac{dB_{i,k}(x)}{dx}=k\left(\frac{B_{i,k-1}(x)}{t_{i+k}-t_{i}}-\frac{B_{i+1,k-1}(x)}{t_{i+k+1}-t_{i+1}}
\right)$$
This implies that

$$\frac{d}{dx}\sum_i\alpha_i B_{i,k}=\sum_{i=r-k+2}^{s-1}k\frac{\alpha_i-\alpha_{i-1}}{t_{i+k}-t_i}B_{i,k-1} \ on [t_r.t_s]$$
which shows that there is a simple relationship between the derivative of a spline function and the B-splines of degree one less.


Moments of univariate B-Splines

Univariate B-Splines, i.e. B-Splines where the knot positions lie in a single dimension, can be used to represent 1-d probability density functions p(x). An example is a weighted sum of i B-Spline basis functions of order n, which each are area-normalized to unity (i.e. not directly evaluated using the standard de-Boor algorithm)

    p(x) = ∑_(i)c_(i) ⋅ B_(i, n, NORM)(x)

and with normalization constant constraint ∑_(i)c_(i) = 1. The k-th raw moment μ_(k) of a normalized B-Spline B_(i, n, NORM) can be written as Carlson's Dirichlet Average R_(k),[15] which in turn can be solved exactly via a contour integral and an iterative sum [16] as

    $\mu_k = R_k(\mathbf{m};\mathbf{t}) = \int_{-\infty}^{\infty} x^k \cdot B_{i,n,\textbf{norm}}(x|t_1 \dots t_j) dx = \frac{\Gamma(k+1) \Gamma(m)}{\Gamma(m+k)} \cdot D_k(\mathbf{m},\mathbf{t})$

with

    $D_{k}= \frac{1}{k}\sum\limits_{u=1}^{k} \left[\left(\sum\limits_{i=1}^{j} m_{i} \cdot {t_{i}}^u \right) D_{k-u}\right]$

and D₀ = 1. Here, T represents a vector with the j knot positions and M a vector with the respective knot multiplicities. One can therefore calculate any moment of a probability density function p(x) represented by a sum of B-Spline basis functions exactly, without resorting to numerical techniques.


Relationship to piecewise/composite Bézier

A piecewise/composite Bézier curve is a series of Bézier curves joined with at least C0 continuity (the last point of one curve coincides with the starting point of the next curve). Depending on the application, additional smoothness requirements (such as C1 or C2 continuity) may be added.[17] C1 continuous curves have identical tangents at the breakpoint (where the two curves meet). C2 continuous curves have identical curvature at the breakpoint.[18]

To gain C2 continuity the Bézier curve loses local control, because to enforce C2 continuity the control points are dependent on each other. If a single control point moves, the whole spline needs to be re-evaluated. B-splines have both C2 continuity and local control, but they lose the interpolation property of a piecewise Bézier.[19]


Curve fitting

Usually in curve fitting, a set of data points is fitted with a curve defined by some mathematical function. For example, common types of curve fitting use a polynomial or a set of exponential functions. When there is no theoretical basis for choosing a fitting function, the curve may be fitted with a spline function composed of a sum of B-splines, using the method of least squares.[20][21] Thus, the objective function for least squares minimization is, for a spline function of degree _k_,

    U = ∑_(all x){W(x)[y(x)−∑_(i)α_(i)B_(i, k, t)(x)]}²

_W(x)_ is a weight and _y(x)_ is the datum value at _x_. The coefficients α_(i) are the parameters to be determined. The knot values may be fixed or they too may be treated as parameters.

The main difficulty in applying this process is in determining the number of knots to use and where they should be placed. de Boor suggests various strategies to address this problem. For instance, the spacing between knots is decreased in proportion to the curvature (2nd. derivative) of the data. A few applications have been published. For instance, the use of B-splines for fitting single Lorentzian and Gaussian curves has been investigated. Optimal spline functions of degrees 3-7 inclusive, based on symmetric arrangements of 5, 6, and 7 knots, have been computed and the method was applied for smoothing and differentiation of spectroscopic curves.[22] In a comparable study, the two-dimensional version of the Savitzky-Golay filtering and the spline method produced better results than moving average or Chebyshev filtering.[23]


Computer Aided Design and Computer Graphics

In Computer Aided Design and Computer Graphics applications, a spline curve is sometimes represented as C(t), a parametric curve of some real parameter t. In this case the curve C(t) can be treated as two or three separate coordinate functions (x(t), y(t)), or (x(t), y(t), z(t)). The coordinate functions x(t), y(t) and z(t) are each spline functions, with a common set of knot values t₁, t₂, …, t_(n).

Because a B-splines form basis functions, each of the coordinate functions can be expressed as a linear sum of B-splines, so we have

$$\begin{array}{lcl}
X(t) & = & \sum_i x_i B_{i,n}(t) \\
Y(t) & = & \sum_i y_i B_{i,n}(t) \\
Z(t) & = & \sum_i z_i B_{i,n}(t)
\end{array}$$

The weights x_(i), y_(i) and z_(i) can be combined to form points P_(i) = (x_(i), y_(i), z_(i)) in 3-d space. These points P_(i) are commonly known as control points.

Working in reverse, a sequence of control points, knot values, and order of the B-spline define a parametric curve. This representation of a curve by control points has a several useful properties:

1. The control points P_(i) define a curve. If the control points are all transformed together in some way, such as being translated, rotated, scaled, or moved by any affine transformation, then the corresponding curve is transformed in the same way.

2. Because the B-splines are non-zero for just a finite number of knot intervals, if a single control point is moved, the corresponding change to the parametric curve is just over the parameter range of a small number knot intervals.

3. Because ∑_(i)(B_(i, n)(x)) = 1, and at all times each B_(i, n)(x) ≥ 0, then the curve remains inside the bounding box of the control points. Also, in some sense, the curve broadly follows the control points.

A less desirable feature is that the parametric curve does not interpolate the control points. Usually the curve does not pass through the control points.


NURBS

In computer aided design, computer aided manufacturing, and computer graphics, a powerful extension of B-splines is non-uniform rational B-splines (NURBS). NURBS are essentially B-splines in homogeneous coordinates. Like B-splines, they are defined by their order, and a knot vector, and a set of control points, but unlike simple B-splines, the control points each have a weight. When the weight is equal to 1, a NURBS is simply a B-spline and as such NURBS generalizes both B-splines and Bézier curves and surfaces, the primary difference being the weighting of the control points which makes NURBS curves "rational".

By evaluating a NURBS at various values of the parameters, the curve can be traced through space; likewise, by evaluating a NURBS surface at various values of the two parameters, the surface can be represented in Cartesian space.

Like B-splines, NURBS control points determine the shape of the curve. Each point of the curve is computed by taking a weighted sum of a number of control points. The weight of each point varies according to the governing parameter. For a curve of degree _d_, the influence of any control point is only nonzero in _d_+1 intervals (knot spans) of the parameter space. Within those intervals, the weight changes according to a polynomial function (basis functions) of degree _d_. At the boundaries of the intervals, the basis functions go smoothly to zero, the smoothness being determined by the degree of the polynomial.

The knot vector is a sequence of parameter values that determines where and how the control points affect the NURBS curve. The number of knots is always equal to the number of control points plus curve degree plus one. Each time the parameter value enters a new knot span, a new control point becomes active, while an old control point is discarded.

A NURBS curve takes the following form:[24]

    $C(u) = \frac {\sum_{i=1}^k {N_{i,n}w_i P}_i} {\sum_{i=1}^k {N_{i,n}w_i}}$

Here the notation is as follows. _u_ is the independent variable (instead of _x_), _k_ is the number of control points, _N_ is a B-spline (used instead of _B_), _n_ is the polynomial degree, _P_ is a control point and _w_ is a weight. The denominator is a normalizing factor that evaluates to one if all weights are one.

It is customary to write this as

    $C(u)=\sum_{i=1}^k R_{i,n}(u)P_i$

in which the functions

    $R_{i,n}(u) = {N_{i,n}(u)w_i \over \sum_{j=1}^k N_{j,n}(u)w_j}$

are known as the rational basis functions.

A NURBS surface is obtained as the tensor product of two NURBS curves, thus using two independent parameters _u_ and _v_ (with indices _i_ and _j_ respectively):[25]

    $S(u,v) = \sum_{i=1}^k \sum_{j=1}^l R_{i,j}(u,v) P_{i,j}$

with

    $R_{i,j}(u,v) = \frac {N_{i,n}(u) N_{j,m}(v) w_{i,j}} {\sum_{p=1}^k \sum_{q=1}^l N_{p,n}(u) N_{q,m}(v) w_{p,q}}$

as rational basis functions.


See also

-   Bézier curve
-   Box spline
-   De Boor algorithm
-   I-spline
-   M-spline
-   Spline wavelet
-   T-spline


Notes


References

WORKS CITED

-   -


Further reading

-   -   This book is out of print and freely available from the author.

-   -


External links

-   -   -   bivariate B-spline from numpy
-   Interactive B-splines with JSXGraph
-   TinySpline: Opensource C-library with bindings for various languages
-   Uniform non rational B-Splines, Modelling curves in 2D space. Author:Stefan G. Beck
-   B-Spline Editor by Shukant Pal

de:Spline#B-Splines

Category:Splines (mathematics) Category:Interpolation

[1] de Boor, p. 114

[2] Gary D. Knott (2000), _Interpolating cubic splines_. Springer. p. 151

[3]

[4]

[5] Strictly speaking, B-splines are usually defined as being left-continuous.

[6] de Boor, p 113.

[7] de Boor, p 131.

[8] de Boor, p. 131

[9] de Boor, p. 134.

[10]

[11]

[12] de Boor, p 322.

[13] Eilers, P.H.C. and Marx, B.D. (1996). Flexible smoothing with B-splines and penalties (with comments and rejoinder). Statistical Science 11(2): 89-121.

[14] de Boor, p. 115

[15]

[16] )

[17]

[18]

[19]

[20] de Boor, Chapter XIV, p. 235

[21] de Boor gives FORTRAN routines for least-squares fitting of experimental data.

[22]

[23]

[24] Piegl and Tiller, chapter 4, sec. 2

[25] Piegl and Tiller, chapter 4, sec. 4