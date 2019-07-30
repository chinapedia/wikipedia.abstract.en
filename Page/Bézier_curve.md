s on the range for cubic Bézier curves: (1 − _t_)³}}, 3(1 − _t_)² _t_}}, 3(1 − _t_) _t_²}}, and _t_³}}.]] A BÉZIER CURVE ( )[1] is a parametric curve used in computer graphics and related fields.[2] The curve, which is related to the Bernstein polynomial, is named after Pierre Bézier, who used it in the 1960s for designing curves for the bodywork of Renault cars.[3] Other uses include the design of computer fonts and animation.[4] Bézier curves can be combined to form a Bézier spline, or generalized to higher dimensions to form Bézier surfaces.[5] The Bézier triangle is a special case of the latter.

In vector graphics, Bézier curves are used to model smooth curves that can be scaled indefinitely. "Paths", as they are commonly referred to in image manipulation programs,[6] are combinations of linked Bézier curves. Paths are not bound by the limits of rasterized images and are intuitive to modify.

Bézier curves are also used in the time domain, particularly in animation, user interface[7] design and smoothing cursor trajectory in eye gaze controlled interfaces.[8] For example, a Bézier curve can be used to specify the velocity over time of an object such as an icon moving from A to B, rather than simply moving at a fixed number of pixels per step. When animators or interface designers talk about the "physics" or "feel" of an operation, they may be referring to the particular Bézier curve used to control the velocity over time of the move in question.

This also applies to robotics where the motion of a welding arm, for example, should be smooth to avoid unnecessary wear.

The mathematical basis for Bézier curves—the Bernstein polynomial—had been known since 1912, but the polynomials were not applied to graphics until some 50 years later, when they were widely publicised by the French engineer Pierre Bézier, who used them to design automobile bodies at Renault. The study of these curves was however first developed in 1959 by mathematician Paul de Casteljau using de Casteljau's algorithm, a numerically stable method to evaluate Bézier curves at Citroën, another French automaker.[9]


Specific cases

A Bézier curve is defined by a set of _control points_ P₀ through P_(_n_), where _n_ is called its order (_n_ = 1 for linear, 2 for quadratic, etc.). The first and last control points are always the end points of the curve; however, the intermediate control points (if any) generally do not lie on the curve. The sums in the following sections are to be understood as affine combinations, the coefficients sum to 1.

Linear Bézier curves

Given distinct points P₀ and P₁, a linear Bézier curve is simply a straight line between those two points. The curve is given by

B(_t_) = P₀ + _t_(P₁ − P₀) = (1 − _t_)P₀ + _t_P₁ , 0 ≤ _t_ ≤ 1
and is equivalent to linear interpolation.

Quadratic Bézier curves

A quadratic Bézier curve is the path traced by the function B(_t_), given points P₀, P₁, and P₂,

    B(t) = (1 − t)[(1 − t)P₀ + tP₁] + t[(1 − t)P₁ + tP₂] , 0 ≤ t ≤ 1,

which can be interpreted as the linear interpolant of corresponding points on the linear Bézier curves from P₀ to P₁ and from P₁ to P₂ respectively. Rearranging the preceding equation yields:

    B(t) = (1 − t)²P₀ + 2(1 − t)tP₁ + t²P₂ , 0 ≤ t ≤ 1.

This can be written in a way that highlights the symmetry with respect to P₁:

    B(t) = P₁ + (1 − t)²(P₀ − P₁) + t²(P₂ − P₁) , 0 ≤ t ≤ 1.

Which immediately gives the derivative of the Bézier curve with respect to _t_:

    B′(t) = 2(1 − t)(P₁ − P₀) + 2t(P₂ − P₁) .

from which it can be concluded that the tangents to the curve at P₀ and P₂ intersect at P₁. As _t_ increases from 0 to 1, the curve departs from P₀ in the direction of P₁, then bends to arrive at P₂ from the direction of P₁.

The second derivative of the Bézier curve with respect to _t_ is

    B″(t) = 2(P₂ − 2P₁ + P₀) .

Cubic Bézier curves

Four points P₀, P₁, P₂ and P₃ in the plane or in higher-dimensional space define a cubic Bézier curve. The curve starts at P₀ going toward P₁ and arrives at P₃ coming from the direction of P₂. Usually, it will not pass through P₁ or P₂; these points are only there to provide directional information. The distance between P₁ and P₂ determines "how far" and "how fast" the curve moves towards P₁ before turning towards P₂.

Writing B_(P_(i),P_(j),P_(k))(_t_) for the quadratic Bézier curve defined by points P_(i), P_(j), and P_(k), the cubic Bézier curve can be defined as an affine combination of two quadratic Bézier curves:

B(_t_) = (1 − _t_)B_(P₀, P₁, P₂)(_t_) + _t_B_(P₁, P₂, P₃)(_t_) , 0 ≤ _t_ ≤ 1.

The explicit form of the curve is:

B(_t_) = (1 − _t_)³P₀ + 3(1 − _t_)²_t_P₁ + 3(1 − _t_)_t_²P₂ + _t_³P₃ , 0 ≤ _t_ ≤ 1.

For some choices of P₁ and P₂ the curve may intersect itself, or contain a cusp.

Any series of any 4 distinct points can be converted to a cubic Bézier curve that goes through all 4 points in order. Given the starting and ending point of some cubic Bézier curve, and the points along the curve corresponding to _t_ = 1/3 and _t_ = 2/3, the control points for the original Bézier curve can be recovered.[10]

The derivative of the cubic Bézier curve with respect to _t_ is

    B′(t) = 3(1 − t)²(P₁ − P₀) + 6(1 − t)t(P₂ − P₁) + 3t²(P₃ − P₂) .

The second derivative of the Bézier curve with respect to _t_ is

    B″(t) = 6(1 − t)(P₂ − 2P₁ + P₀) + 6t(P₃ − 2P₂ + P₁) .


General definition

Bézier curves can be defined for any degree _n._

Recursive definition

A recursive definition for the Bézier curve of degree _n_ expresses it as a point-to-point linear combination (linear interpolation) of a pair of corresponding points in two Bézier curves of degree _n_ − 1.

Let B_(P₀P₁…P_(n)) denote the Bézier curve determined by any selection of points P₀, P₁, ..., P_(_n_). Then to start,

B_(P₀)(_t_) = P₀, and

B(_t_) = B_(P₀P₁…P_(_n_))(_t_) = (1 − _t_)B_(P₀P₁…P_(_n_ − 1))(_t_) + _t_B_(P₁P₂…P_(_n_))(_t_)

This recursion is elucidated in the animations below.

Explicit definition

The formula can be expressed explicitly as follows:

$$\begin{align}
  \mathbf{B}(t) &= \sum_{i=0}^n {n\choose i}(1 - t)^{n - i}t^i\mathbf{P}_i \\
                &=(1 - t)^n\mathbf{P}_0 + {n\choose 1}(1 - t)^{n - 1}t\mathbf{P}_1 + \cdots + {n\choose n - 1}(1 - t)t^{n - 1}\mathbf{P}_{n - 1} + t^n\mathbf{P}_n && 0 \leqslant t \leqslant 1
\end{align}$$

where $\scriptstyle {n \choose i}$ are the binomial coefficients.

For example, for _n_ = 5:

$$\begin{align}
\mathbf{B}(t) &= (1 - t)^5\mathbf{P}_0 + 5t(1 - t)^4\mathbf{P}_1 + 10t^2(1 - t)^3 \mathbf{P}_2  + 10t^3 (1-t)^2 \mathbf{P}_3 + 5t^4(1-t) \mathbf{P}_4 + t^5 \mathbf{P}_5 && 0 \leqslant t \leqslant 1
\end{align}$$

Terminology

Some terminology is associated with these parametric curves. We have

$$\mathbf{B}(t) = \sum_{i=0}^n b_{i, n}(t)\mathbf{P}_i,\quad 0 \le t \le 1$$

where the polynomials

$$b_{i,n}(t) = {n\choose i} t^i (1 - t)^{n - i},\quad i = 0, \ldots, n$$

are known as Bernstein basis polynomials of degree _n_.

Note that _t_⁰ = 1, (1 − _t_)⁰ = 1, and that the binomial coefficient, $\scriptstyle {n \choose i}$, also expressed as ^(n)C_(i) or C_(i)^(n), is:

$${n \choose i} = \frac{n!}{i!(n - i)!}$$

The points P_(_i_) are called _control points_ for the Bézier curve. The polygon formed by connecting the Bézier points with lines, starting with P₀ and finishing with P_(_n_), is called the _Bézier polygon_ (or _control polygon_). The convex hull of the Bézier polygon contains the Bézier curve.

Polynomial form

Sometimes it is desirable to express the Bézier curve as a polynomial instead of a sum of less straightforward Bernstein polynomials. Application of the binomial theorem to the definition of the curve followed by some rearrangement will yield:

$$\mathbf{B}(t) = \sum_{j = 0}^n {t^j \mathbf{C}_j}$$

where

$$\mathbf{C}_j = \frac{n!}{(n - j)!} \sum_{i = 0}^j \frac{(-1)^{i + j} \mathbf{P}_i}{i! (j - i)!} =
\prod_{m = 0}^{j - 1} (n - m) \sum_{i = 0}^j \frac{(-1)^{i + j} \mathbf{P}_i}{i! (j - i)!}
.$$

This could be practical if C_(j) can be computed prior to many evaluations of B(t); however one should use caution as high order curves may lack numeric stability (de Casteljau's algorithm should be used if this occurs). Note that the empty product is 1.

Properties

[[File:quadratic_to_cubic_Bezier_curve.svg%7Cthumb%7Cupright%7CA cubic Bézier curve (yellow) can be made identical to a quadratic one (black) by

1. Copying the end points, and

2. Placing its 2 middle control points (yellow circles) 2/3 along line segments from the end points to the quadratic curve's middle control point (black rectangle)

]]

-   The curve begins at P₀ and ends at P_(_n_); this is the so-called _endpoint interpolation_ property.
-   The curve is a straight line if and only if all the control points are collinear.
-   The start and end of the curve is tangent to the first and last section of the Bézier polygon, respectively.
-   A curve can be split at any point into two subcurves, or into arbitrarily many subcurves, each of which is also a Bézier curve.
-   Some curves that seem simple, such as the circle, cannot be described exactly by a Bézier or piecewise Bézier curve; though a four-piece cubic Bézier curve can approximate a circle (see composite Bézier curve), with a maximum radial error of less than one part in a thousand, when each inner control point (or offline point) is the distance $\textstyle\frac{4\left(\sqrt {2}-1\right)}{3}$ horizontally or vertically from an outer control point on a unit circle. More generally, an _n_-piece cubic Bézier curve can approximate a circle, when each inner control point is the distance $\textstyle\frac{4}{3}\tan(t/4)$ from an outer control point on a unit circle, where _t_ is 360/_n_ degrees, and _n_ > 2.
-   Every quadratic Bézier curve is also a cubic Bézier curve, and more generally, every degree _n_ Bézier curve is also a degree _m_ curve for any _m_ > _n_. In detail, a degree _n_ curve with control points P₀, …, P_(_n_) is equivalent (including the parametrization) to the degree _n_ + 1 curve with control points P'₀, …, P'_(_n_ +\ 1), where $\mathbf P'_k=\tfrac{k}{n+1}\mathbf P_{k-1}+\left(1-\tfrac{k}{n+1}\right)\mathbf P_k$.
-   Bézier curves have the variation diminishing property. What this means in intuitive terms is that a Bézier curves does not "undulate" more than the polygon of its control points, and may actually "undulate" less than that.[11]
-   There is no local control in degree _n_ Bézier curves—meaning that any change to a control point requires recalculation of and thus affects the aspect of the entire curve, "although the further that one is from the control point that was changed, the smaller is the change in the curve."[12]

Second order curve is a parabolic segment

A quadratic Bézier curve is also a segment of a parabola. As a parabola is a conic section, some sources refer to quadratic Béziers as "conic arcs".[13] With reference to the figure on the right, the important features of the parabola can be derived as follows:[14]

1.  Tangents to the parabola at the end-points of the curve (A and B) intersect at its control point (C).
2.  If D is the midpoint of AB, the tangent to the curve which is perpendicular to CD (dashed cyan line) defines its vertex (V). Its axis of symmetry (dash-dot cyan) passes through V and is perpendicular to the tangent.
3.  E is either point on the curve with a tangent at 45° to CD (dashed green). If G is the intersection of this tangent and the axis, the line passing through G and perpendicular to CD is the directrix (solid green).
4.  The focus (F) is at the intersection of the axis and a line passing through E and perpendicular to CD (dotted yellow). The latus rectum is the line segment within the curve (solid yellow).

Derivative

The derivative for a curve of order _n_ is

$$\mathbf{B}'(t) = n \sum_{i=0}^{n-1} b_{i,n-1}(t) (\mathbf{P}_{i+1} - \mathbf{P}_i)$$


Constructing Bézier curves

Linear curves

The _t_ in the function for a linear Bézier curve can be thought of as describing how far B(_t_) is from P₀ to P₁. For example, when _t=0.25_, B(_t_) is one quarter of the way from point P₀ to P₁. As _t_ varies from 0 to 1, B(_t_) describes a straight line from P₀ to P₁.

  --------------------------------------------------
  ]
  Animation of a linear Bézier curve, _t_ in [0,1]
  --------------------------------------------------

Quadratic curves

For quadratic Bézier curves one can construct intermediate points Q₀ and Q₁ such that as _t_ varies from 0 to 1:

-   Point Q₀(_t_) varies from P₀ to P₁ and describes a linear Bézier curve.
-   Point Q₁(_t_) varies from P₁ to P₂ and describes a linear Bézier curve.
-   Point B(_t_) is interpolated linearly between Q₀(_t_) to Q₁(_t_) and describes a quadratic Bézier curve.

  ------------------------------------------ -- -----------------------------------------------------
                                                ]
  Construction of a quadratic Bézier curve      Animation of a quadratic Bézier curve, _t_ in [0,1]
  ------------------------------------------ -- -----------------------------------------------------

Higher-order curves

For higher-order curves one needs correspondingly more intermediate points. For cubic curves one can construct intermediate points Q₀, Q₁, and Q₂ that describe linear Bézier curves, and points R₀ & R₁ that describe quadratic Bézier curves:

  -------------------------------------- -- -------------------------------------------------
                                            ]
  Construction of a cubic Bézier curve      Animation of a cubic Bézier curve, _t_ in [0,1]
  -------------------------------------- -- -------------------------------------------------

For fourth-order curves one can construct intermediate points Q₀, Q₁, Q₂ & Q₃ that describe linear Bézier curves, points R₀, R₁ & R₂ that describe quadratic Bézier curves, and points S₀ & S₁ that describe cubic Bézier curves:

  ---------------------------------------- -- ---------------------------------------------------
                                              ]
  Construction of a quartic Bézier curve      Animation of a quartic Bézier curve, _t_ in [0,1]
  ---------------------------------------- -- ---------------------------------------------------

For fifth-order curves, one can construct similar intermediate points.

  ------------------------------------------------------------------------------------------------------------------------------
  Animation of a fifth-order Bézier curve, _t_ in [0,1] in red. The Bézier curves for each of the lower orders are also shown.
  ------------------------------------------------------------------------------------------------------------------------------

These representations rest on the process used in De Casteljau's algorithm to calculate Bézier curves.[15]

Offsets (a.k.a. stroking) of Bézier curves

The curve at a fixed offset from a given Bézier curve, called an offset or parallel curve in mathematics (lying "parallel" to the original curve, like the offset between rails in a railroad track), cannot be exactly formed by a Bézier curve (except in some trivial cases). In general, the two-sided offset curve of a cubic Bézier is a 10th-order algebraic curve[16] and more generally for a Bézier of degree _n_ the two-sided offset curve is an algebraic curve of degree 4_n_-2.[17] However, there are heuristic methods that usually give an adequate approximation for practical purposes.[18]

In the field of vector graphics, painting two symmetrically distanced offset curves is called _stroking_ (the Bézier curve or in general a path of several Bézier segments).[19] The conversion from offset curves to filled Bézier contours is of practical importance in converting fonts defined in METAFONT, which allows stroking of Bézier curves, to the more widely used PostScript type 1 fonts, which only allow (for efficiency purposes) the mathematically simpler operation of filling a contour defined by (non-self-intersecting) Bézier curves.[20]


Degree elevation

A Bézier curve of degree _n_ can be converted into a Bézier curve of degree _n_ + 1 _with the same shape_. This is useful if software supports Bézier curves only of specific degree. For example, systems that can only work with cubic Bézier curves can implicitly work with quadratic curves by using their equivalent cubic representation.

To do degree elevation, we use the equality B(t) = (1 − t)B(t) + tB(t). Each component B_(i, n)(t)P_(i) is multiplied by (1 − _t_) and _t_, thus increasing a degree by one, without changing the value. Here is the example of increasing degree from 2 to 3.

$$\begin{align}
(1 - t)^2 \mathbf{P}_0 + 2(1 - t)t\mathbf{P}_1 + t^2 \mathbf{P}_2 &= (1 - t)^3 \mathbf{P}_0  + 2(1 - t)^2 t\mathbf{P}_1 + (1 - t)t^2 \mathbf{P}_2 + (1 - t)^{2}t\mathbf{P}_0 + 2(1 - t)t^2 \mathbf{P}_1  + t^3 \mathbf{P}_2 \\
  &= (1 - t)^3 \mathbf{P}_0 + (1 - t)^2 t   \left( \mathbf{P}_0 + 2\mathbf{P}_1\right) + (1 - t)   t^2 \left(2\mathbf{P}_1 +  \mathbf{P}_2\right) + t^{3}\mathbf{P}_2 \\
  &= (1 - t)^3 \mathbf{P}_0 + 3(1 - t)^2 t   \tfrac{1}{3} \left(  \mathbf{P}_0 + 2\mathbf{P}_1 \right) + 3(1 - t)   t^2 \tfrac{1}{3} \left( 2\mathbf{P}_1 +  \mathbf{P}_2 \right) + t^{3}\mathbf{P}_2
\end{align}$$

For arbitrary _n_ we use equalities

$$\begin{cases}  {n + 1 \choose i}(1 - t)\mathbf{b}_{i, n} = {n \choose i} \mathbf{b}_{i, n + 1} \\  {n + 1 \choose i + 1} t\mathbf{b}_{i, n} = {n \choose i} \mathbf{b}_{i + 1, n + 1} \end{cases} \quad \Rightarrow \quad \begin{cases}  (1 - t)\mathbf{b}_{i, n} = \frac{n + 1 - i}{n + 1} \mathbf{b}_{i, n + 1} \\ t\mathbf{b}_{i, n} = \frac{i + 1}{n + 1} \mathbf{b}_{i + 1, n + 1} \end{cases}$$

Therefore:

$$\begin{align}
\mathbf{B}(t) &= (1 - t)\sum_{i=0}^n \mathbf{b}_{i, n}(t)\mathbf{P}_i + t\sum_{i=0}^n \mathbf{b}_{i, n}(t)\mathbf{P}_i \\
                &= \sum_{i=0}^n \frac{n + 1 - i}{n + 1}\mathbf{b}_{i, n + 1}(t)\mathbf{P}_i + \sum_{i=0}^n \frac{i + 1}{n + 1}\mathbf{b}_{i + 1, n + 1}(t)\mathbf{P}_i \\
                &= \sum_{i=0}^{n + 1} \left(\frac{i}{n + 1}\mathbf{P}_{i - 1} + \frac{n + 1 - i}{n + 1}\mathbf{P}_i\right) \mathbf{b}_{i, n + 1}(t) \\
                &= \sum_{i=0}^{n + 1} \mathbf{b}_{i, n + 1}(t)\mathbf{P'}_i
\end{align}$$

introducing arbitrary P_( − 1) and P_(n + 1).

Therefore, new control points are [21]

    $\mathbf{P'}_i = \frac{i}{n + 1}\mathbf{P}_{i - 1} + \frac{n + 1 - i}{n + 1}\mathbf{P}_i,\quad i=0, \ldots, n + 1$

Repeated Degree Elevation

The concept of Degree Elevation can be repeated on a control polygon R to get a sequence of control polygons R,R₁,R₂, and so on. After _r_ degree elevations, the polygon R_(r) has the vertices P_(0,r),P_(1,r),P_(2,r),...,P_(n+r,r) given by [22]

$$\mathbf{P}_{i,r} = \sum_{j=0}^n \mathbf{P}_j \tbinom nj \frac{\tbinom{r}{i-j}}{\tbinom{n+r}{i}}$$

It can also be shown that for the underlying Bézier curve _B_,

LIM_(R → ∞)R_(R) = B


Rational Bézier curves

The rational Bézier curve adds adjustable weights to provide closer approximations to arbitrary shapes. The numerator is a weighted Bernstein-form Bézier curve and the denominator is a weighted sum of Bernstein polynomials. Rational Bézier curves can, among other uses, be used to represent segments of conic sections exactly, including circular arcs.[23]

Given _n_ + 1 control points P_(_i_), the rational Bézier curve can be described by:

$$\mathbf{B}(t) =
\frac{
\sum_{i=0}^n b_{i,n}(t) \mathbf{P}_{i}w_i
}
{
\sum_{i=0}^n b_{i,n}(t) w_i
}$$
or simply

$$\mathbf{B}(t) =
\frac{
\sum_{i=0}^n {n \choose i} t^i (1-t)^{n-i}\mathbf{P}_{i}w_i
}
{
\sum_{i=0}^n {n \choose i} t^i (1-t)^{n-i}w_i
}.$$


Applications

Computer graphics

]] Bézier curves are widely used in computer graphics to model smooth curves. As the curve is completely contained in the convex hull of its control points, the points can be graphically displayed and used to manipulate the curve intuitively. Affine transformations such as translation and rotation can be applied on the curve by applying the respective transform on the control points of the curve.

Quadratic and cubic Bézier curves are most common. Higher degree curves are more computationally expensive to evaluate. When more complex shapes are needed, low order Bézier curves are patched together, producing a composite Bézier curve. A composite Bézier curve is commonly referred to as a "path" in vector graphics languages (like PostScript), vector graphics standards (like SVG) and vector graphics programs (like Artline, Timeworks Publisher, Adobe Illustrator, CorelDraw and Inkscape). To guarantee smoothness (_C_¹ continuity), the control point at which two curves meet must be on the line between the two control points on either side.

The simplest method for scan converting (rasterizing) a Bézier curve is to evaluate it at many closely spaced points and scan convert the approximating sequence of line segments. However, this does not guarantee that the rasterized output looks sufficiently smooth, because the points may be spaced too far apart. Conversely it may generate too many points in areas where the curve is close to linear. A common adaptive method is recursive subdivision, in which a curve's control points are checked to see if the curve approximates a straight line to within a small tolerance. If not, the curve is subdivided parametrically into two segments, 0 ≤ _t_ ≤ 0.5 and 0.5 ≤ _t_ ≤ 1, and the same procedure is applied recursively to each half. There are also forward differencing methods, but great care must be taken to analyse error propagation.[24]

Analytical methods where a Bézier is intersected with each scan line involve finding roots of cubic polynomials (for cubic Béziers) and dealing with multiple roots, so they are not often used in practice.[25]

Animation

In animation applications, such as Adobe Flash and Synfig, Bézier curves are used to outline, for example, movement. Users outline the wanted path in Bézier curves, and the application creates the needed frames for the object to move along the path.[26][27]

For 3D animation Bézier curves are often used to define 3D paths as well as 2D curves for keyframe interpolation.[28]. Bézier curves are now very frequently used to control the animation easing in CSS, JavaScript and JavaFx.

Fonts

TrueType fonts use composite Bézier curves composed of QUADRATIC Bézier curves. Other languages and imaging tools (such as PostScript, Asymptote, Metafont, and SVG) use composite Béziers composed of CUBIC Bézier curves for drawing curved shapes. OpenType fonts can use either kind, depending on the flavor of the font.[29]

The internal rendering of all Bézier curves in font or vector graphics renderers will split them recursively up to the point where the curve is flat enough to be drawn as a series of linear or circular segments. The exact splitting algorithm is implementation dependent, only the flatness criteria must be respected to reach the necessary precision and to avoid non-monotonic local changes of curvature. The "smooth curve" feature of charts in Microsoft Excel also uses this algorithm.[30]

Because arcs of circles and ellipses cannot be exactly represented by Bézier curves, they are first approximated by Bézier curves, which are in turn approximated by arcs of circles. This is inefficient as there exists also approximations of all Bézier curves using arcs of circles or ellipses, which can be rendered incrementally with arbitrary precision. Another approach, used by modern hardware graphics adapters with accelerated geometry, can convert exactly all Bézier and conic curves (or surfaces) into NURBS, that can be rendered incrementally without first splitting the curve recursively to reach the necessary flatness condition. This approach also allows preserving the curve definition under all linear or perspective 2D and 3D transforms and projections.

Font engines, like FreeType, draw the font's curves (and lines) on a pixellated surface using a process known as font rasterization.[31]


See also

-   Bézier surface
-   B-spline
-   GEM/4
-   Hermite curve
-   NURBS
-   String art – Bézier curves are also formed by many common forms of string art, where strings are looped across a frame of nails.[32]
-   Variation diminishing property of Bézier curves


Notes


References

-   -   -   Excellent discussion of implementation details; available for free as part of the TeX distribution.

-   -   -


Computer code

-   TinySpline: Open source C-library for NURBS, B-Splines and Bezier Splines with bindings for various languages


Further reading and external links

-   A Primer on Bézier Curves — An open source online book explaining Bézier curves and associated graphics algorithms, with interactive graphics.
-   Cubic Bezier Curves - Under the Hood (video) Video shows how computers render a cubic Bézier curve, by Peter Nowell
-   From Bézier to Bernstein Feature Column from American Mathematical Society
-   -   -   This book is out of print and freely available from the author.

-   -   -   Gernot Hoffmann Bézier Curves (pdf, 60 pages)
-   -   Jason Davies Animated Bézier curves

Category:Graphic design Category:Interpolation Category:Curves

[1]

[2]

[3]

[4]

[5]

[6] Image manipulation programs such as Inkscape, Adobe Photoshop, and GIMP.

[7] In animation applications such as Adobe Flash, Adobe After Effects, Microsoft Expression Blend, Blender, Autodesk Maya and Autodesk 3ds max.

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] , particularly p. 16 "taxonomy of offset curves".

[18] For example: 1 or 2. For a survey see 3.

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]