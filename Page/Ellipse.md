Ellipse-conic.svg with an inclined plane]] Ellipse-def0.svg Ellipse-var.svg In mathematics, an ELLIPSE is a plane curve surrounding two focal points, such that for all points on the curve, the sum of the two distances to the focal points is a constant. As such, it generalizes a circle, which is the special type of ellipse in which the two focal points are the same. The elongation of an ellipse is measured by its eccentricity _e_, a number ranging from _e =_ 0 (the limiting case of a circle) to _e_ = 1 (the limiting case of infinite elongation, no longer an ellipse but a parabola).

Analytically, the equation of a standard ellipse centered at the origin with width 2_a_ and height 2_b_ is:

  $\frac{x^2}{a^2}+\frac{y^2}{b^2}= 1 .$

Assuming _a_ ≥ _b_, the foci are (±_c_, 0) for $c = \sqrt{a^2-b^2}$. The standard parametric equation is:

  (x, y) = (acos (t), bsin (t)) for 0 ≤ t ≤ 2π.

Ellipses are the closed type of conic section: a plane curve tracing the intersection of a cone with a plane (see figure). Ellipses have many similarities with the other two forms of conic sections, parabolas and hyperbolas, both of which are open and unbounded. An angled cross section of a cylinder is also an ellipse.

An ellipse may also be defined in terms of one focus point and a line outside the ellipse called the directrix: for all points on the ellipse, the ratio between the distance to the focus and the distance to the directrix is a constant. This constant ratio is the above-mentioned eccentricity $e=\tfrac ca=\sqrt{1-\tfrac{b^2}{a^2}}$.

Ellipses are common in physics, astronomy and engineering. For example, the orbit of each planet in the solar system is approximately an ellipse with the Sun at one focus point (more precisely, the focus is the barycenter of the Sunplanet pair). The same is true for moons orbiting planets and all other systems of two astronomical bodies. The shapes of planets and stars are often well described by ellipsoids. A circle viewed from a side angle looks like an ellipse: that is, the ellipse is the image of a circle under parallel or perspective projection. The ellipse is also the simplest Lissajous figure formed when the horizontal and vertical motions are sinusoids with the same frequency: a similar effect leads to elliptical polarization of light in optics.

The name, (, "omission"), was given by Apollonius of Perga in his _Conics_.


Definition as locus of points

Ellipse-def-e.svg Ellipse-def-dc.svg An ellipse can be defined geometrically as a set or locus of points in the Euclidean plane:

-   Given two fixed points F₁, F₂ called the foci and a distance 2a which is greater than the distance between the foci, the ellipse is the set of points P such that the sum of the distances |PF₁|, |PF₂| is equal to 2a
    _E_ = {_P_ ∈ ℝ² ∣ |_P__F_₂| + |_P__F_₁| = 2_a_} .

The midpoint C of the line segment joining the foci is called the _center_ of the ellipse. The line through the foci is called the _major axis_, and the line perpendicular to it through the center is the _minor axis_. The major axis intersects the ellipse at the _vertex_ points V₁, V₂, which have distance a to the center. The distance c of the foci to the center is called the _focal distance_ or linear eccentricity. The quotient $e=\tfrac{c}{a}$ is the _eccentricity_.

The case F₁ = F₂ yields a circle and is included as a special type of ellipse.

The equation |PF₂| + |PF₁| = 2a can be viewed in a different way (see figure):
If c₂ is the circle with midpoint F₂ and radius 2a, then the distance of a point P to the circle c₂ equals the distance to the focus F₁:

|_P__F_₁| = |_P__c_₂|.
c₂ is called the _circular directrix_ (related to focus F₂) of the ellipse.[1][2] This property should not be confused with the definition of an ellipse using a directrix line below.

Using Dandelin spheres, one can prove that any plane section of a cone with a plane is an ellipse, assuming the plane does not contain the apex and has slope less than that of the lines on the cone.


In Cartesian coordinates

shape parameters:
_a_: semi-major axis,
_b_: semi-minor axis
_c_: linear eccentricity,
_p_: semi-latus rectum (usually ℓ).

Standard equation

The standard form of an ellipse in Cartesian coordinates assumes that the origin is the center of the ellipse, the _x_-axis is the major axis, and:

    the foci are the points F₁ = (c, 0), F₂ = ( − c, 0),
    the vertices are V₁ = (a, 0), V₂ = ( − a, 0).

For an arbitrary point (x, y) the distance to the focus (c, 0) is $\sqrt{ (x-c)^2 + y^2 }$ and to the other focus $\sqrt{ (x+c)^2 + y^2 }$. Hence the point (x, y) is on the ellipse whenever:

$$\sqrt{(x-c)^2 + y^2} + \sqrt{(x+c)^2 + y^2} = 2a \ .$$

Removing the radicals by suitable squarings and using b² = a² − c² produces the standard equation of the ellipse:

  $\frac{x^2}{a^2}+\frac{y^2}{b^2}= 1 ,$

or, solved for _y:_

$$y=\pm\frac{b}{a}\sqrt{a^2-x^2}
= \pm \sqrt{(a^2{-}x^2)(1 {-} e^2)}.$$

The width and height parameters a, b are called the semi-major and semi-minor axes. The top and bottom points V₃ = (0, b), V₄ = (0,  − b) are the _co-vertices_. The distances from a point (x, y) on the ellipse to the left and right foci are a + ex and a − ex.

It follows from the equation that the ellipse is _symmetric_ with respect to the coordinate axes and hence with respect to the origin.

Parameters

Semi-major and semi-minor axes _a_ ≥ _b_

Throughout this article a is the semi-major axis, i.e. a ≥ b > 0 . In general the canonical ellipse equation $\tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}= 1$ may have a < b (and hence the ellipse would be taller than it is wide); in this form the semi-major axis would be b. This form can be converted to the standard form by transposing the variable names x and y and the parameter names a and b.

Linear eccentricity _c_

This is the distance from the center to a focus: $c = \sqrt{a^2-b^2}$.

Eccentricity _e_

The eccentricity can be expressed as:

  $e=\frac ca=\sqrt{1-\left(\frac{b}{a}\right)^2}$,

assuming a > b. An ellipse with equal axes (a = b) has zero eccentricity, and is a circle.

Semi-latus rectum _l_

The length of the chord through one of the foci, perpendicular to the major axis, is called the _latus rectum_. One half of it is the _semi-latus rectum_ ℓ. A calculation shows:

  $\ell \,=\, \frac{b^2}a \,=\, a (1{-}e^2).$

The semi-latus rectum ℓ is equal to the ''radius of curvature ''of the osculating circles at the vertices.

Tangent

An arbitrary line g intersects an ellipse at 0, 1, or 2 points, respectively called an _exterior line_, _tangent_ and _secant_. Through any point of an ellipse there is a unique tangent. The tangent at a point (x₁, y₁) of the ellipse $\; \tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}= 1\;$ has the coordinate equation:

    $\ \frac{x_1}{a^2}x+\frac{y_1}{b^2}y = 1\; .$

    A vector parametric equation of the tangent is:
      $\ \vec x=\begin{pmatrix}x_1\\ y_1 \end{pmatrix}+s\; \begin{pmatrix}\!-y_1a^2\!\\ \ \ \ x_1b^2\! \end{pmatrix}\quad$ with s ∈ ℝ .

PROOF: Let be (x₁, y₁) an ellipse point and $\;\vec x=\begin{pmatrix}x_1\\ y_1\end{pmatrix}+s\; \begin{pmatrix}u\\ v \end{pmatrix}\;$ the equation of any line g containing (x₁, y₁). Inserting the line's equation into the ellipse equation and respecting $\; \tfrac{x_1^2}{a^2}+\tfrac{y_1^2}{b^2}=1\;$ yields:

$$\frac{(x_1+su)^2}{a^2}+\frac{(y_1+sv)^2}{b^2}= 1\  \quad \Longrightarrow\quad 2s\left(\frac{x_1u}{a^2}+\frac{y_1v}{b^2}\right) + s^2\left(\frac{u^2}{a^2}+\frac{v^2}{b^2}\right)= 0\ .$$

-   Case (1): $\tfrac{x_1}{a^2}u+\tfrac{y_1}{b^2}v=0.$ Then line g and the ellipse have only point (x₁, y₁) in common, and g is a tangent. The tangent direction has perpendicular vector $(\tfrac{x_1}{a^2},\tfrac{y_1}{b^2})$, so the tangent line has equation $\;\tfrac{x_1}{a^2}x+\tfrac{y_1}{b^2}y = k\;$ for some k. Because (x₁, y₁) is on the tangent and the ellipse, one obtains k = 1.
-   Case (2): $\tfrac{x_1}{a^2}u+\tfrac{y_1}{b^2}v\ne0.$ Then line g has a second point in common with the ellipse, and is a secant.

Using (1) one finds that ( − y₁a², x₁b²) is a tangent vector at point (x₁, y₁), which proves the vector equation.

If (x₁, y₁) and (u, v) are two points of the ellipse such that $\; \tfrac{x_1u}{a^2}+\tfrac{y_1v}{b^2}=0\;$, then the points lie on two _conjugate diameters_ (see below). (If a = b, the ellipse is a circle and "conjugate" means "orthogonal".)

Shifted ellipse

If the standard ellipse is shifted to have center (x_(∘), y_(∘)), its equation is

  $\frac{(x{-}x_\circ)^2}{a^2}+\frac{(y{-}y_\circ)^2}{b^2}= 1 \ .$

The axes are still parallel to the x- and y-axes.

Elliko-sk.svg

General ellipse

In analytic geometry, the ellipse is defined as a quadric: the set of points (X, Y) of the Cartesian plane that, in non-degenerate cases, satisfy the implicit equation[3][4]

 _A__X_² + _B__X__Y_ + _C__Y_² + _D__X_ + _E__Y_ + _F_ = 0

provided B² − 4AC < 0.

To distinguish the degenerate cases from the non-degenerate case, let _∆_ be the determinant

$$\Delta \ =\ \begin{vmatrix} A & B/2 & D/2\\B/2 & C & E/2\\D/2 & E/2 & F \end{vmatrix}
\ =\ \left( AC - \frac{B^2}{4} \right) F + \frac{BED}{4} - \frac{CD^2}{4} - \frac{AE^2}{4}.$$

Then the ellipse is a non-degenerate real ellipse if and only if _C∆_ < 0. If _C∆_ > 0, we have an imaginary ellipse, and if _∆_ = 0, we have a point ellipse.[5]

The general equation's coefficients can be obtained from known semi-major axis a, semi-minor axis b, center coordinates (x_(∘), y_(∘)), and rotation angle Θ (the angle from the positive horizontal axis to the ellipse's major axis) using the formulae:

$$\begin{align}A &= a^2 (\sin\Theta)^2 + b^2 (\cos\Theta)^2\\
B &= 2 (b^2-a^2) \sin\Theta \cos\Theta\\
C &= a^2 (\cos\Theta)^2 + b^2 (\sin\Theta)^2\\
D &= -2 A x_\circ - B y_\circ\\
E &= -B x_\circ - 2 C y_\circ\\
F &= A x_\circ^2 + B x_\circ y_\circ + C y_\circ^2 - a^2 b^2.\end{align}$$

These expressions can be derived from the canonical equation $\tfrac{x^2}{a^2} + \tfrac{y^2}{b^2} = 1$ by an affine transformation of the coordinates (x, y):

_x_ = (_X_ − _x__(∘))cos _Θ_ + (_Y_ − _y__(∘))sin _Θ_

_y_ =  − (_X_ − _x__(∘))sin _Θ_ + (_Y_ − _y__(∘))cos _Θ_.

Conversely, the canonical form parameters can be obtained from the general form coefficients by the equations:

$$\begin{align}
a, b   &= \frac{\sqrt{2 \Big(A E^2 + C D^2 - B D E + (B^2 - 4 A C) F\Big)\left((A + C) \pm \sqrt{(A - C)^2 + B^2}\right)}}{B^2 - 4 A C} \\
x_\circ    &= \frac{2 C D - B E}{B^2 - 4 A C} \\
y_\circ    &= \frac{2 A E - B D}{B^2 - 4 A C} \\
\Theta &= \begin{cases}
  0 & \text{for } B = 0,\ A < C\\
  90^\circ & \text{for } B = 0,\ A > C\\
  \arctan\frac{C - A - \sqrt{(A - C)^2 + B^2}}{B} & \text{for } B \ne 0.
\end{cases}
\end{align}$$


Parametric representation

Ellipse-ratpar.svg

Standard parametric representation

Using trigonometric functions, a parametric representation of the standard ellipse $\tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}= 1$ is:

  (x, y) = (acos t, bsin t), 0 ≤ t < 2π .

The parameter _t_ (called the _eccentric anomaly_ in astronomy) is not the angle of (x(t), y(t)) with the _x_-axis, but has a geometric meaning due to Philippe de La Hire (see _Drawing ellipses_ below).[6]

Rational representation

With the substitution u = tan (t/2) and trigonometric formulae one obtains

cos _t_ = (1 − _u_²)/(_u_² + 1) , sin _t_ = 2_u_/(_u_² + 1)
and the _rational_ parametric equation of an ellipse

  $\ \begin{array}{lcl} x(u) & = & a(1-u^2)/(u^2+1) \\ y(u) & = & 2bu/(u^2+1) \end{array}\; ,\quad -\infty<u<\infty\; ,$

which covers any point of the ellipse $\; \tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}=1\;$ except the left vertex ( − a, 0).
For u ∈ [0, 1], this formula represents the right upper quarter of the ellipse moving counter-clockwise with increasing u. The left vertex is the limit lim_(u →  ± ∞)(x(u), y(u)) = ( − a, 0) .
Rational representations of conic sections are commonly used in Computer Aided Design (see Bezier curve).

Tangent slope as parameter

A parametric representation, which uses the slope m of the tangent at a point of the ellipse can be obtained from the derivative of the standard representation x⃗(t) = (acos t, bsin t)^(T):

$$\vec x'(t) = (-a\sin t, b\cos t)^T \quad \rightarrow \quad m = -\frac{b}{a}\cot t\quad \rightarrow \quad \cot t = -\frac{ma}{b}.$$

With help of trigonometric formulae one obtains:

$$\cos t = \frac{\cot t}{\pm\sqrt{1+\cot^2t}} = \frac{-ma}{\pm\sqrt{m^2a^2+b^2}}\ ,\quad\quad
\sin t = \frac{1}{\pm\sqrt{1+\cot^2t}} = \frac{b}{\pm\sqrt{m^2a^2+b^2}}.$$
Replacing cos t and sin t of the standard representation yields:

  $\vec c_\pm(m) = \left(-\frac{ma^2}{\pm\sqrt{m^2a^2+b^2}}\;,\;\frac{b^2}{\pm\sqrt{m^2a^2+b^2}}\right),\, m \in \R.$

Here m is the slope of the tangent at the corresponding ellipse point, c⃗₊ is the upper and c⃗_(−) the lower half of the ellipse. The vertices( ± a, 0), having vertical tangents, are not covered by the representation.
The equation of the tangent at point c⃗_(±)(m) has the form y = mx + n. The still unknown n can be determined by inserting the coordinates of the corresponding ellipse point c⃗_(±)(m):

  $y = m x \pm\sqrt{m^2a^2+b^2}\; .$

This description of the tangents of an ellipse is an essential tool for the determination of the orthoptic of an ellipse. The orthoptic article contains another proof, without differential calculus and trigonometric formulae.

General Ellipse

ellipse-aff.svg Another definition of an ellipse uses affine transformations:

-   Any _ellipse_ is an affine image of the unit circle with equation x² + y² = 1.

An affine transformation of the Euclidean plane has the form x⃗ ↦ f⃗​₀ + Ax⃗, where A is a regular matrix (with non-zero determinant) and f⃗​₀ is an arbitrary vector. If f⃗​₁, f⃗​₂ are the column vectors of the matrix A, the unit circle (cos (t), sin (t)), 0 ≤ t ≤ 2π, is mapped onto the ellipse:

  x⃗ = p⃗(t) = f⃗​₀ + f⃗​₁cos t + f⃗​₂sin t .

Here f⃗​₀ is the center and f⃗​₁, f⃗​₂ are the directions of two conjugate diameters, in general not perpendicular. The four vertices of the ellipse are $\vec p(t_0),\;\vec p(t_0{\pm}\tfrac{\pi}{2}),\; \vec p(t_0{+}\pi)$, for a parameter t = t₀ defined by:

  $\cot (2t_0)= \frac{\vec f\!_1^{\,2}-\vec f\!_2^{\, 2}}{2\vec f\!_1 {\cdot} \vec f\!_2}.$

(If f⃗₁ ⋅ f⃗₂ = 0, then t₀ = 0.) This is derived as follows. The tangent vector at point p⃗(t) is:

_p⃗_ ′(_t_) =  − _f⃗_​₁sin _t_ + _f⃗_​₂cos _t_ .

At a vertex parameter t = t₀, the tangent is perpendicular to the major/minor axes, so:

0 = _p⃗_ ′(_t_) ⋅ (_p⃗_(_t_) − _f⃗_​₀) = ( − _f⃗_​₁sin _t_ + _f⃗_​₂cos _t_) ⋅ (_f⃗_​₁cos _t_ + _f⃗_​₂sin _t_).

Expanding and applying the identities cos²t − sin²t = cos 2t,  2sin tcos t = sin 2t gives the equation for t = t₀.

This definition gives a parametric representation of an arbitrary ellipse, even in space, if we allow f⃗​₀, f⃗​₁, f⃗​₂ to be vectors in space.


Polar forms

Polar form relative to center

Ellipse_Polar_center.svg In polar coordinates, with the origin at the center of the ellipse and with the angular coordinate θ measured from the major axis, the ellipse's equation is[7]

$$r(\theta)=\frac{ab}{\sqrt{(b \cos \theta)^2 + (a\sin \theta)^2}}=\frac{b}{\sqrt{1 - (e\cos\theta)^2}}$$

Polar form relative to focus

Ellipse_Polar.svg If instead we use polar coordinates with the origin at one focus, with the angular coordinate θ = 0 still measured from the major axis, the ellipse's equation is

$$r(\theta)=\frac{a (1-e^2)}{1 \pm e\cos\theta}$$

where the sign in the denominator is negative if the reference direction θ = 0 points towards the center (as illustrated on the right), and positive if that direction points away from the center.

In the slightly more general case of an ellipse with one focus at the origin and the other focus at angular coordinate ϕ, the polar form is

$$r=\frac{a (1-e^2)}{1 - e\cos(\theta - \phi)}.$$

The angle θ in these formulas is called the true anomaly of the point. The numerator of these formulas is the semi-latus rectum ℓ = a(1 − e²).


Eccentricity and the directrix property

Ellipse-ll-e.svg Each of the two lines parallel to the minor axis, and at a distance of $d = \frac{a^2}c=\frac{a}e$ from it, is called a _directrix_ of the ellipse (see diagram).

-   For an arbitrary point P of the ellipse, the quotient of the distance to one focus and to the corresponding directrix (see diagram) is equal to the eccentricity:

$$\frac{|PF_1|}{|Pl_1|} = \frac{|PF_2|}{|Pl_2|} = e= \frac{c}{a}\ .$$
The proof for the pair F₁, l₁ follows from the fact that $|PF_1|^2=(x-c)^2+y^2,\ |Pl_1|^2=\left(x-\tfrac{a^2}{c}\right)^2$ and $y^2=b^2-\tfrac{b^2}{a^2}x^2$ satisfy the equation

$$|PF_1|^2-\frac{c^2}{a^2}|Pl_1|^2=0\ .$$
The second case is proven analogously.

The converse is also true and can be used to define an ellipse (in a manner similar to the definition of a parabola):

-   For any point F (focus), any line l (directrix) not through F, and any real number e with 0 < e < 1, the ellipse is the locus of points for which the quotient of the distances to the point and to the line is e, that is:

$$E = \left\{P \ \left|\ \tfrac{|PF|}{|Pl|} = e\right.\right\}.$$

The choice e = 0, which is the eccentricity of a circle, is not allowed in this context. One may consider the directrix of a circle to be the line at infinity.

(The choice e = 1 yields a parabola, and if e > 1, a hyperbola.) Kegelschnitt-schar-ev.svg

Proof

Let F = (f, 0), e > 0, and assume (0, 0) is a point on the curve. The directrix l has equation $x=-\tfrac{f}{e}$. With P = (x, y), the relation |PF|² = e²|Pl|² produces the equations

$$(x-f)^2+y^2=e^2\left(x+\tfrac{f}{e}\right)^2=(e x+f)^2$$
and x²(e² − 1) + 2xf(1 + e) − y² = 0. The substitution p = f(1 + e) yields

-   x²(e² − 1) + 2px − y² = 0.

This is the equation of an _ellipse_ (e < 1), or a _parabola_ (e = 1), or a _hyperbola_ (e > 1). All of these non-degenerate conics have, in common, the origin as a vertex (see diagram).

If e < 1, introduce new parameters a, b so that $1-e^2 =\tfrac{b^2}{a^2}, \text { and }\ p=\tfrac{b^2}{a}$, and then the equation above becomes

$$\tfrac{(x-a)^2}{a^2}+\tfrac{y^2}{b^2}=1\ ,$$
which is the equation of an ellipse with center (a, 0), the _x_-axis as major axis, and the major/minor semi axis a, b.

General ellipse

If the focus is F = (f₁, f₂) and the directrix ux + vy + w = 0, one obtains the equation

$$\left(x-f_1\right)^2+\left(y-f_2\right)^2= e^2\cdot\frac{\left(ux+vy+w\right)^2}{u^2+v^2}\ .$$

(The right side of the equation uses the Hesse normal form of a line to calculate the distance |Pl|.)


Focus-to-focus reflection property

Ellipse-reflex.svg Elli-norm-tang-n.svg An ellipse possesses the following property:

-   The normal at a point P bisects the angle between the lines $\overline{PF_1}, \overline{PF_2}$.

Proof

Because the tangent is perpendicular to the normal, the statement is true for the tangent and the supplementary angle of the angle between the lines to the foci (see diagram), too.

Let L be the point on the line $\overline{PF_2}$ with the distance 2a to the focus F₂, a is the semi-major axis of the ellipse. Let line w be the bisector of the supplementary angle to the angle between the lines $\overline{PF_1}, \overline{PF_2}$. In order to prove that w is the tangent line at point P, one checks that any point Q on line w which is different from P cannot be on the ellipse. Hence w has only point P in common with the ellipse and is, therefore, the tangent at point P.
From the diagram and the triangle inequality one recognizes that 2a = |LF₂| < |QF₂| + |QL| = |QF₂| + |QF₁| holds, which means: |QF₂| + |QF₁| > 2a. But if Q is a point of the ellipse, the sum should be 2a.

Application

The rays from one focus are reflected by the ellipse to the second focus. This property has optical and acoustic applications similar to the reflective property of a parabola (see whispering gallery).


Conjugate diameters

Parallelproj-kreis-ellipse.svg

A circle has the following property:

    The midpoints of parallel chords lie on a diameter.

An affine transformation preserves parallelism and midpoints of line segments, so this property is true for any ellipse. (Note that the parallel chords and the diameter are no longer orthogonal.)

Definition:

Two diameters d₁, d₂ of an ellipse are _conjugate_ if the midpoints of chords parallel to d₁ lie on d₂ .

From the diagram one finds:

    Two diameters $\overline{P_1Q_1} \; ,\overline{P_2Q_2}$ of an ellipse are conjugate whenever the tangents at P₁ and Q₁ are parallel to $\overline{P_2Q_2}$.

Conjugate diameters in an ellipse generalize orthogonal diameters in a circle.

In the parametric equation for a general ellipse given above,

_x⃗_ = _p⃗_(_t_) = _f⃗_​₀ + _f⃗_​₁cos _t_ + _f⃗_​₂sin _t_,

any pair of points p⃗(t), p⃗(t + π) belong to a diameter, and the pair $\vec p(t{+}\tfrac{\pi}{2},\ \vec p(t{-}\tfrac{\pi}{2})$ belong to its conjugate diameter.

Theorem of Apollonios on conjugate diameters

Elli-apoll-cd.svg For an ellipse with semi-axes a, b the following is true:

-   Let c₁ and c₂ be halves of two conjugate diameters (see diagram) then

1.  c₁² + c₂² = a² + b²,
2.  the _triangle_ formed by c₁, c₂ has the constant area $A_\Delta= \frac{1}{2}ab$
3.  the parallelogram of tangents adjacent to the given conjugate diameters has the Area₁₂ = 4ab .

Proof:

Let the ellipse be in the canonical form with parametric equation

_p⃗_(_t_) = (_a_cos _t_, _b_sin _t_)
.

The two points c⃗₁ = p⃗(t), c⃗₂ = p⃗(t + π/2) are on conjugate diameters (see previous section). From trigonometric formulae one obtains c⃗₂ = ( − asin t, bcos t)^(T) and

|_c⃗_₁|² + |_c⃗_₂|² = ⋯ = _a_² + _b_² .

The area of the triangle generated by c⃗₁, c⃗₂ is

$$A_\Delta= \tfrac{1}{2}\det(\vec c_1, \vec c_2)=\cdots = \tfrac{1}{2} ab$$

and from the diagram it can be seen that the area of the parallelogram is 8 times that of A_(Δ). Hence

Area₁₂ = 4_a__b_ .


Orthogonal tangents

Orthoptic-ellipse-s.svg For the ellipse $\tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}=1$ the intersection points of _orthogonal_ tangents lie on the circle x² + y² = a² + b².

This circle is called _orthoptic_ or director circle of the ellipse (not to be confused with the circular directrix defined above).


Drawing ellipses

Zp-turm-tor.svg Ellipses appear in descriptive geometry as images (parallel or central projection) of circles. There exist various tools to draw an ellipse. Computers provide the fastest and most accurate method for drawing an ellipse. However, technical tools (_ellipsographs_) to draw an ellipse without a computer exist. The principle of ellipsographs were known to Greek mathematicians such as Archimedes and Proklos.

If there is no ellipsograph available, one can draw an ellipse using an approximation by the four osculating circles at the vertices.

For any method described below

-   the knowledge of the axes and the semi-axes is necessary (or equivalent: the foci and the semi-major axis).

If this presumption is not fulfilled one has to know at least two conjugate diameters. With help of Rytz's construction the axes and semi-axes can be retrieved.

de La Hire's point construction

The following construction of single points of an ellipse is due to de La Hire.[8] It is based on the standard parametric representation (acos t, bsin t) of an ellipse:

    (1) Draw the two _circles_ centered at the center of the ellipse with radii a, b and the axes of the ellipse.
    (2) Draw a _line through the center_, which intersects the two circles at point A and B, respectively.
    (3) The _line_ through A, which is parallel to the minor axis, meets the _line_ through B, which is parallel to the major axis, at an ellipse point (see diagram).
    (4) Repeat steps (2) and (3) with different lines through the center.

Elliko-sk.svg|de La Hire's method Parametric ellipse.gif|Animation of the method

Elliko-g.svg

Pins-and-string method

The characterization of an ellipse as the locus of points so that sum of the distances to the foci is constant leads to a method of drawing one using two drawing pins, a length of string, and a pencil. In this method, pins are pushed into the paper at two points, which become the ellipse's foci. A string tied at each end to the two pins and the tip of a pencil pulls the loop taut to form a triangle. The tip of the pencil then traces an ellipse if it is moved while keeping the string taut. Using two pegs and a rope, gardeners use this procedure to outline an elliptical flower bed—thus it is called the _gardener's ellipse_.

A similar method for drawing confocal ellipses with a _closed_ string is due to the Irish bishop Charles Graves.

Paper strip methods

The two following methods rely on the parametric representation (see section _parametric representation_, above):

(_a_cos _t_, _b_sin _t_)
This representation can be modeled technically by two simple methods. In both cases center, the axes and semi axes a, b have to be known.

Method 1

The first method starts with

-   a strip of paper of length a + b.

The point, where the semi axes meet is marked by P. If the strip slides with both ends on the axes of the desired ellipse, then point P traces the ellipse. For the proof one shows that point P has the parametric representation (acos t, bsin t), where parameter t is the angle of the slope of the paper strip.

A technical realization of the motion of the paper strip can be achieved by a Tusi couple (see animation). The device is able to draw any ellipse with a _fixed_ sum a + b, which is the radius of the large circle. This restriction may be a disadvantage in real life. More flexible is the second paper strip method.

Elliko-pap1.svg|Ellipse construction: paper strip method 1 Tusi couple vs Paper strip plus Ellipses horizontal.gif|Ellipses with Tusi couple. Two examples: red and cyan.

A variation of the paper strip method 1 uses the observation that the midpoint N of the paper strip is moving on the circle with center M (of the ellipse) and radius $\tfrac{a+b}{2}$. Hence, the paperstrip can be cut at point N into halves, connected again by a joint at N and the sliding end K fixed at the center M (see diagram). After this operation the movement of the unchanged half of the paperstrip is unchanged.[9] This variation requires only one sliding shoe.

Ellipse-papsm-1a.svg|Variation of the paper strip method 1 Ellipses with SliderCrank inner Ellipses.gif|Animation of the variation of the paper strip method 1

Elliko-pap2.svg

Method 2:

The second method starts with

-   a strip of paper of length a.

One marks the point, which divides the strip into two substrips of length b and a − b. The strip is positioned onto the axes as described in the diagram. Then the free end of the strip traces an ellipse, while the strip is moved. For the proof, one recognizes that the tracing point can be described parametrically by (acos t, bsin t), where parameter t is the angle of slope of the paper strip.

This method is the base for several _ellipsographs_ (see section below).

Similar to the variation of the paper strip method 1 a _variation of the paper strip method 2_ can be established (see diagram) by cutting the part between the axes into halves.

File:Archimedes Trammel.gif|Trammel of Archimedes (principle) File:L-Ellipsenzirkel.png%7CEllipsograph due to Benjamin Bramer File:Ellipses with SliderCrank Ellipses at Slider Side.gif|Variation of the paper strip method 2

Most ellipsograph drafting instruments are based on the second paperstrip method.Elliko-skm.svg

Approximation by osculating circles

From _Metric properties_ below, one obtains:

-   The radius of curvature at the vertices V₁, V₂ is: $\tfrac{b^2}{a}$
-   The radius of curvature at the co-vertices V₃, V₄ is: $\tfrac{a^2}{b}\ .$

The diagram shows an easy way to find the centers of curvature $C_1=(a-\tfrac{b^2}{a},0),\; C_3=(0,b-\tfrac{a^2}{b})$ at vertex V₁ and co-vertex V₃, respectively:

    (1) mark the auxiliary point H = (a, b) and draw the line segment V₁V₃ ,
    (2) draw the line through H, which is perpendicular to the line V₁V₃ ,
    (3) the intersection points of this line with the axes are the centers of the osculating circles.

(proof: simple calculation.)

The centers for the remaining vertices are found by symmetry.

With help of a French curve one draws a curve, which has smooth contact to the osculating circles.

Steiner generation

Ellipse-steiner-e.svg Ellipse_construction_-_parallelogram_method.gif The following method to construct single points of an ellipse relies on the Steiner generation of a conic section:

-   Given two pencils B(U), B(V) of lines at two points U, V (all lines containing U and V, respectively) and a projective but not perspective mapping π of B(U) onto B(V), then the intersection points of corresponding lines form a non-degenerate projective conic section.

For the generation of points of the ellipse $\tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}=1$ one uses the pencils at the vertices V₁, V₂. Let P = (0, b) be an upper co-vertex of the ellipse and A = ( − a, 2b), B = (a, 2b). P is the center of the rectangle V₁, V₂, B, A. The side $\overline{AB}$ of the rectangle is divided into n equal spaced line segments and this division is projected parallel with the diagonal AV₂ as direction onto the line segment $\overline{V_1B}$ and assign the division as shown in the diagram. The parallel projection together with the reverse of the orientation is part of the projective mapping between the pencils at V₁ and V₂ needed. The intersection points of any two related lines V₁B_(i) and V₂A_(i) are points of the uniquely defined ellipse. With help of the points $C_1,\dotsc$ the points of the second quarter of the ellipse can be determined. Analogously one obtains the points of the lower half of the ellipse.

Steiner generation can also be defined for hyperbolas and parabolas. It is sometimes called a _parallelogram method_ because one can use other points rather than the vertices, which starts with a parallelogram instead of a rectangle.

As hypotrochoid

Ellipse_as_hypotrochoid.gif with _R_ = 2_r_]] The ellipse is a special case of the hypotrochoid when _R_ = 2_r_, as shown in the adjacent image. The special case of a moving circle with radius r inside a circle with radius R = 2r is called a Tusi couple.


Inscribed angles and three-point form

Circles

Inscribe-a-c.svg A circle with equation (x − x_(∘))² + (y − y_(∘))² = r² is uniquely determined by three points (x₁, y₁), (x₂, y₂), (x₃, y₃) not on a line. A simple way to determine the parameters x_(∘), y_(∘), r uses the _inscribed angle theorem_ for circles:

    For four points P_(i) = (x_(i), y_(i)), i = 1, 2, 3, 4, (see diagram) the following statement is true:
    The four points are on a circle if and only if the angles at P₃ and P₄ are equal.

Usually one measures inscribed angles by a degree or radian _θ,_ but here the following measurement is more convenient:

-   In order to measure the angle between two lines with equations y = m₁x + d₁, y = m₂x + d₂, m₁ ≠ m₂, one uses the quotient:

$$\frac{1+m_1\cdot m_2}{m_2-m_1}=\cot \theta\ .$$

Inscribed angle theorem for circles

For four points P_(i) = (x_(i), y_(i)), i = 1, 2, 3, 4, no three of them on a line, we have the following (see diagram):

-   The four points are on a circle, if and only if the angles at P₃ and P₄ are equal. In terms of the angle measurement above, this means:

$$\frac{(x_4-x_1)(x_4-x_2)+(y_4-y_1)(y_4-y_2)}
             {(y_4-y_1)(x_4-x_2)-(y_4-y_2)(x_4-x_1)}=
        \frac{(x_3-x_1)(x_3-x_2)+(y_3-y_1)(y_3-y_2)}
             {(y_3-y_1)(x_3-x_2)-(y_3-y_2)(x_3-x_1)}.$$

At first the measure is available only for chords not parallel to the y-axis, but the final formula works for any chord.

Three-point form of circle equation

    As a consequence, one obtains an equation for the circle determined by three non-colinear points P_(i) = (x_(i), y_(i)):
    :\frac{({\color{red}x}-x_1)({\color{red}x}-x_2)+({\color{red}y}-y_1)({\color{red}y}-y_2)}

            {({\color{red}y}-y_1)({\color{red}x}-x_2)-({\color{red}y}-y_2)({\color{red}x}-x_1)}=
       \frac{(x_3-x_1)(x_3-x_2)+(y_3-y_1)(y_3-y_2)}
            {(y_3-y_1)(x_3-x_2)-(y_3-y_2)(x_3-x_1)} \ .

For example, for P₁ = (2, 0), P₂ = (0, 1), P₃ = (0, 0) the three-point equation is:

$$\frac{(x-2)x+y(y-1)}{yx-(y-1)(x-2)}=0$$
, which can be rearranged to $(x{-}1)^2+(y{-}\tfrac12)^2=\tfrac54\ .$

Using vectors, dot products and determinants this formula can be arranged more clearly, letting x⃗ = (x, y):

$$\frac{({\color{red}\vec x}-\vec x_1)\cdot({\color{red}\vec x}-\vec x_2)}{\det({\color{red}\vec x}-\vec x_1,{\color{red}\vec x}-\vec x_2)}=\frac{(\vec x_3-\vec x_1)\cdot(\vec x_3-\vec x_2)}{\det(\vec x_3-\vec x_1,\vec x_3-\vec x_2)} \; .$$

The center of the circle (x_(∘), y_(∘)) satisfies:

$$\begin{bmatrix}
    1 & \frac{y_1-y_2}{x_1-x_2} \\
    \frac{x_1-x_3}{y_1-y_3} & 1
  \end{bmatrix}

\begin{bmatrix} x_\circ \\ y_\circ \end{bmatrix}
=
\begin{bmatrix} \frac{x_1^2-x_2^2+y_1^2-y_2^2}{2(x_1-x_2)} \\
                \frac{y_1^2-y_3^2+x_1^2-x_3^2}{2(y_1-y_3)}
  \end{bmatrix}.$$

The radius is the distance between any of the three points and the center.

$$r = \sqrt{(x_1-x_\circ)^2 + (y_1-y_\circ)^2} = \sqrt{(x_2-x_\circ)^2 + (y_2-y_\circ)^2} = \sqrt{(x_3-x_\circ)^2 + (y_3-y_\circ)^2}.$$

Ellipses

This section, we consider the family of ellipses defined by equations $\tfrac{(x-x_\circ)^2}{a^2}+ \tfrac{(y-y_\circ)^2}{b^2}=1$ with a _fixed_ eccentricity _e_. It is convenient to use the parameter:

  ${\color{blue}q}=\frac{a^2}{b^2}= \frac{1}{1-e^2},$

and to write the ellipse equation as:

  $(x{-}x_\circ)^2+{\color{blue}q}\, (y{-}y_\circ)^2=a^2,$

where _q_ is fixed and x_(∘), y_(∘), a vary over the real numbers. (Such ellipses have their axes parallel to the coordinate axes: if q < 1, the major axis is parallel to the _x_-axis; if q > 1, it is parallel to the _y_-axis.) Inscribe-a-e.svg Like a circle, such an ellipse is determined by three points not on a line.

For this family of ellipses, one introduces the following q-analog angle measure, which is _not_ a function of the usual angle measure _θ_:[10][11]

-   In order to measure an angle between two lines with equations y = m₁x + d₁, y = m₂x + d₂ , m₁ ≠ m₂ one uses the quotient:

$$\frac{1+{\color{blue}q}\; m_1\cdot m_2}{m_2-m_1}\ .$$

Inscribed angle theorem for ellipses

    Given four points P_(i) = (x_(i), y_(i)), i = 1, 2, 3, 4,, no three of them on a line (see diagram).
    The four points are on an ellipse with equation $(x{-}x_\circ)^2+{\color{blue}q}\, (y{-}y_\circ)^2=a^2$ if and only if the angles at P₃ and P₄ are equal in the sense of the measurement above—that is, if
    :\frac{(x_4-x_1)(x_4-x_2)+{\color{blue}q}\;(y_4-y_1)(y_4-y_2)}

            {(y_4-y_1)(x_4-x_2)-(y_4-y_2)(x_4-x_1)}=
       \frac{(x_3-x_1)(x_3-x_2)+{\color{blue}q}\;(y_3-y_1)(y_3-y_2)}
            {(y_3-y_1)(x_3-x_2)-(y_3-y_2)(x_3-x_1)} \ .

At first the measure is available only for chords which are not parallel to the y-axis. But the final formula works for any chord. The proof follows from a straightforward calculation. For the direction of proof given that the points are on an ellipse, one can assume that the center of the ellipse is the origin.

Three-point form of ellipse equation

    A consequence, one obtains an equation for the ellipse determined by three non-colinear points P_(i) = (x_(i), y_(i)):
    :\frac{({\color{red}x}-x_1)({\color{red}x}-x_2)+{\color{blue}q}\;({\color{red}y}-y_1)({\color{red}y}-y_2)}

            {({\color{red}y}-y_1)({\color{red}x}-x_2)-({\color{red}y}-y_2)({\color{red}x}-x_1)}=
       \frac{(x_3-x_1)(x_3-x_2)+{\color{blue}q}\;(y_3-y_1)(y_3-y_2)}
            {(y_3-y_1)(x_3-x_2)-(y_3-y_2)(x_3-x_1)}\ . 

For example, for P₁ = (2, 0), P₂ = (0, 1), P₃ = (0, 0) and q = 4 one obtains the three-point form

$$\frac{(x{-}2)x+4y(y{-}1)}{yx-(y{-}1)(x{-}2)}=0\;$$
and after conversion $\; \frac{(x{-}1)^2}{2}+\frac{(y{-}\frac12)^2}{1/2}=1\; .$

Analogously to the circle case, the equation can be written more clearly using vectors:

$$\frac{({\color{red}\vec x}-\vec x_1)*({\color{red}\vec x}-\vec x_2)}
             {\det({\color{red}\vec x}-\vec x_1,{\color{red}\vec x}-\vec x_2)}
=\frac{(\vec x_3-\vec x_1)*(\vec x_3-\vec x_2)}
      {\det(\vec x_3-\vec x_1,\vec x_3-\vec x_2)} \; ,$$

where * is the modified dot product $\; \vec u*\vec v=u_xv_x+{\color{blue}q}\,u_yv_y\; .$


Pole-polar relation

Ellipse-pol.svg Any ellipse can be described in a suitable coordinate system by an equation $\tfrac{x^2}{a^2}+\tfrac{y^2}{b^2}= 1$. The equation of the tangent at a point P₁ = (x₁, y₁) of the ellipse is $\tfrac{x_1x}{a^2}+\tfrac{y_1y}{b^2}=1.$ If one allows point P₁ = (x₁, y₁) to be an arbitrary point different from the origin, then

-   point P₁ = (x₁, y₁) ≠ (0, 0) is mapped onto the line $\tfrac{x_1x}{a^2}+\tfrac{y_1y}{b^2}=1$, not through the center of the ellipse.

This relation between points and lines is a bijection.

The inverse function maps

-   line y = mx + d, d ≠ 0 onto the point $\left(-\tfrac{ma^2}{d},\tfrac{b^2}{d}\right)$ and

    line x = c, c ≠ 0 onto the point $\left(\tfrac{a^2}{c},0\right)\ .$

Such a relation between points and lines generated by a conic is called _pole-polar relation_ or _polarity_. The pole is the point, the polar the line.

By calculation one can confirm the following properties of the pole-polar relation of the ellipse:

-   For a point (pole) _on_ the ellipse the polar is the tangent at this point (see diagram: P₁, p₁).
-   For a pole P _outside_ the ellipse the intersection points of its polar with the ellipse are the tangency points of the two tangents passing P (see diagram: P₂, p₂).
-   For a point _within_ the ellipse the polar has no point with the ellipse in common. (see diagram: F₁, l₁).

1.  The intersection point of two polars is the pole of the line through their poles.
2.  The foci (c, 0), and ( − c, 0) respectively and the directrices $x=\tfrac{a^2}{c}$ and $x=-\tfrac{a^2}{c}$ respectively belong to pairs of pole and polar.

Pole-polar relations exist for hyperbolas and parabolas, too.


Metric properties

All metric properties given below refer to an ellipse with equation $\frac{x^2}{a^2}+\frac{y^2}{b^2}= 1$.

Area

The area A_(ellipse) enclosed by an ellipse is:

-   A_(ellipse) = πab

where a and b are the lengths of the semi-major and semi-minor axes, respectively. The area formula πab is intuitive: start with a circle of radius b (so its area is πb²) and stretch it by a factor a/b to make an ellipse. This scales the area by the same factor: πb²(a/b) = πab. It is also easy to rigorously prove the area formula using integration as follows. Equation () can be rewritten as $y(x)= b \sqrt{1 - x^2/a^2}.$ For x ∈ [ − a, a], this curve is the top half of the ellipse. So twice the integral of y(x) over the interval [ − a, a] will be the area of the ellipse:

$$\begin{align}
A_\text{ellipse} &= \int_{-a}^a 2b\sqrt{1-x^2/a^2}\,dx\\
 &= \frac ba \int_{-a}^a 2\sqrt{a^2-x^2}\,dx.
\end{align}$$

The second integral is the area of a circle of radius a, that is, πa². So

$$A_\text{ellipse} = \frac{b}{a}\pi a^2 = \pi ab.$$

An ellipse defined implicitly by Ax² + Bxy + Cy² = 1 has area $2\pi / \sqrt{4AC - B^2}.$

The area can also be expressed in terms of eccentricity and the length of the semi-major axis as $a^2\pi\sqrt{1-e^2}$ (obtained by solving for flattening, then computing the semi-minor axis).

Circumference

The circumference C of an ellipse is:

$$C \,=\, 4a\int_0^{\pi/2}\sqrt {1 - e^2 \sin^2\theta}\ d\theta \,=\, 4 a \,E(e)$$

where again a is the length of the semi-major axis, $e=\sqrt{1 - b^2/a^2}$ is the eccentricity, and the function E is the complete elliptic integral of the second kind,

$$E(e) \,=\, \int_0^{\pi/2}\sqrt {1 - e^2 \sin^2\theta}\ d\theta.$$

The circumference of the ellipse may be evaluated in terms of E(e) using Gauss's arithmetic-geometric mean;[12] this is a quadratically converging iterative method.[13]

The exact infinite series is:

$$C = 2\pi a \left[{1 - \left(\frac{1}{2}\right)^2e^2 - \left(\frac{1\cdot 3}{2\cdot 4}\right)^2\frac{e^4}{3} - \left(\frac{1\cdot 3\cdot 5}{2\cdot 4\cdot 6}\right)^2\frac{e^6}{5} - \cdots}\right]$$

$$= 2\pi a \left[1 - \sum_{n=1}^\infty \left(\frac{(2n-1)!!}{(2n)!!}\right)^2 \frac{e^{2n}}{2n-1}\right],$$

where n!! is the double factorial. This series converges, but by expanding in terms of h = (a − b)²/(a + b)², James Ivory[14] and Bessel[15] derived an expression that converges much more rapidly:

$$C = \pi (a+b) \left[1 + \sum_{n=1}^\infty \left(\frac{(2n-1)!!}{2^n n!}\right)^2 \frac{h^n}{(2n-1)^2}\right].$$

$$= \pi (a+b) \left[1 + \frac{h}{4} + \sum_{n=2}^\infty \left(\frac{(2n-3)!!}{2^n n!}\right)^2 h^n\right].$$

Srinivasa Ramanujan gives two close approximations for the circumference in §16 of "Modular Equations and Approximations to π";[16] they are

$$C \approx \pi \left[3(a+b) - \sqrt{(3a+b)(a+3b)}\right]= \pi \left[3(a+b)-\sqrt{10ab+3(a^2+b^2)}\right]$$

and

$$C\approx\pi\left(a+b\right)\left(1+\frac{3h}{10+\sqrt{4-3h}}\right).$$

The errors in these approximations, which were obtained empirically, are of order h³ and h⁵, respectively.

More generally, the arc length of a portion of the circumference, as a function of the angle subtended (or -coordinates of any two points on the upper half of the ellipse), is given by an incomplete elliptic integral. The upper half of an ellipse is parameterized by

$$y=b\sqrt{1-\frac{x^{2}}{a^{2}}}.$$

Then the arc length s from x₁ to x₂ is:

$$s=-b\int_{\arccos \frac{x_{1}}{a}}^{\arccos \frac{x_{2}}{a}} \sqrt{1-\left(1-\frac{a^{2}}{b^{2}}\right)\sin ^{2}z} \, dz.$$

This is equivalent to

$$s=-b\Biggr[E\left(z \, \Biggr| \, 1-\frac{a^{2}}{b^{2}}\right)\Biggr]^{\arccos \frac{x_{2}}{a}}_{\arccos \frac{x_{1}}{a}}$$

where E(z | m) is the incomplete elliptic integral of the second kind with parameter m = k².

The inverse function, the angle subtended as a function of the arc length, is given by a certain elliptic function.

Some lower and upper bounds on the circumference of the canonical ellipse x²/a² + y²/b² = 1 with a ≥ b are[17]

2_π__b_ ≤ _C_ ≤ 2_π__a_,

_π_(_a_ + _b_) ≤ _C_ ≤ 4(_a_ + _b_),

$$4\sqrt{a^2+b^2}\le C\le \sqrt{2} \pi \sqrt{a^2+b^2} .$$

Here the upper bound 2πa is the circumference of a circumscribed concentric circle passing through the endpoints of the ellipse's major axis, and the lower bound $4\sqrt{a^2+b^2}$ is the perimeter of an inscribed rhombus with vertices at the endpoints of the major and the minor axes.

Curvature

The curvature is given by $\kappa = \frac{1}{a^2 b^2}\left(\frac{x^2}{a^4}+\frac{y^2}{b^4}\right)^{-\frac{3}{2}}\ ,$ radius of curvature at point (x, y):

$$\rho = a^2 b^2 \left(\frac{x^{2}}{a^4} + \frac{y^{2}}{b^4}\right)^{3/2} = \frac{1}{a^4 b^4} \sqrt{\left(a^4 y^{2} + b^4 x^{2}\right)^3} \ .$$

Radius of curvature at the two _vertices_ ( ± a, 0) and the centers of curvature:

$$\rho_0 = \frac{b^2}{a}=p\ , \qquad \left(\pm\frac{c^2}{a}\,\bigg|\,0\right)\ .$$

Radius of curvature at the two _co-vertices_ (0,  ± b) and the centers of curvature:

$$\rho_1 = \frac{a^2}{b}\ , \qquad \left(0\,\bigg|\,\pm\frac{c^2}{b}\right)\ .$$


In triangle geometry

Ellipses appear in triangle geometry as

1.  Steiner ellipse: ellipse through the vertices of the triangle with center at the centroid,
2.  inellipses: ellipses which touch the sides of a triangle. Special cases are the Steiner inellipse and the Mandart inellipse.


As plane sections of quadrics

Ellipses appear as plane sections of the following quadrics:

-   Ellipsoid
-   Elliptic cone
-   Elliptic cylinder
-   Hyperboloid of one sheet
-   Hyperboloid of two sheets

Ellipsoid Quadric.png|Ellipsoid Quadric Cone.jpg|Elliptic cone Elliptic Cylinder Quadric.png|Elliptic cylinder Hyperboloid1.png|Hyperboloid of one sheet Hyperboloid2.png|Hyperboloid of two sheets


Applications

Physics

Elliptical reflectors and acoustics

If the water's surface is disturbed at one focus of an elliptical water tank, the circular waves of that disturbance, after reflecting off the walls, converge simultaneously to a single point: the _second focus_. This is a consequence of the total travel length being the same along any wall-bouncing path between the two foci.

Similarly, if a light source is placed at one focus of an elliptic mirror, all light rays on the plane of the ellipse are reflected to the second focus. Since no other smooth curve has such a property, it can be used as an alternative definition of an ellipse. (In the special case of a circle with a source at its center all light would be reflected back to the center.) If the ellipse is rotated along its major axis to produce an ellipsoidal mirror (specifically, a prolate spheroid), this property holds for all rays out of the source. Alternatively, a cylindrical mirror with elliptical cross-section can be used to focus light from a linear fluorescent lamp along a line of the paper; such mirrors are used in some document scanners.

Sound waves are reflected in a similar way, so in a large elliptical room a person standing at one focus can hear a person standing at the other focus remarkably well. The effect is even more evident under a vaulted roof shaped as a section of a prolate spheroid. Such a room is called a _whisper chamber_. The same effect can be demonstrated with two reflectors shaped like the end caps of such a spheroid, placed facing each other at the proper distance. Examples are the National Statuary Hall at the United States Capitol (where John Quincy Adams is said to have used this property for eavesdropping on political matters); the Mormon Tabernacle at Temple Square in Salt Lake City, Utah; at an exhibit on sound at the Museum of Science and Industry in Chicago; in front of the University of Illinois at Urbana–Champaign Foellinger Auditorium; and also at a side chamber of the Palace of Charles V, in the Alhambra.

Planetary orbits

In the 17th century, Johannes Kepler discovered that the orbits along which the planets travel around the Sun are ellipses with the Sun [approximately] at one focus, in his first law of planetary motion. Later, Isaac Newton explained this as a corollary of his law of universal gravitation.

More generally, in the gravitational two-body problem, if the two bodies are bound to each other (that is, the total energy is negative), their orbits are similar ellipses with the common barycenter being one of the foci of each ellipse. The other focus of either ellipse has no known physical significance. The orbit of either body in the reference frame of the other is also an ellipse, with the other body at the same focus.

Keplerian elliptical orbits are the result of any radially directed attraction force whose strength is inversely proportional to the square of the distance. Thus, in principle, the motion of two oppositely charged particles in empty space would also be an ellipse. (However, this conclusion ignores losses due to electromagnetic radiation and quantum effects, which become significant when the particles are moving at high speed.)

For elliptical orbits, useful relations involving the eccentricity e are:

$$\begin{align}e &= \frac{r_{a}-r_{p}}{r_{a}+r_{p}}=\frac{r_{a}-r_{p}}{2a}\\
r_{a} &= (1+e)a\\
r_{p} &= (1-e)a\end{align}$$

where

-   r_(a) is the radius at apoapsis (the farthest distance)
-   r_(p) is the radius at periapsis (the closest distance)
-   a is the length of the semi-major axis

Also, in terms of r_(a) and r_(p), the semi-major axis a is their arithmetic mean, the semi-minor axis b is their geometric mean, and the semi-latus rectum ℓ is their harmonic mean. In other words,

$$\begin{align}a &= \frac{r_{a}+r_{p}}{2}\\
b &= \sqrt{r_{a}\cdot r_{p}}\\
\ell &= \frac{2}{\frac{1}{r_{a}}+\frac{1}{r_{p}}}=\frac{2r_{a}r_{p}}{r_{a}+r_{p}}\end{align}$$
.

Harmonic oscillators

The general solution for a harmonic oscillator in two or more dimensions is also an ellipse. Such is the case, for instance, of a long pendulum that is free to move in two dimensions; of a mass attached to a fixed point by a perfectly elastic spring; or of any object that moves under influence of an attractive force that is directly proportional to its distance from a fixed attractor. Unlike Keplerian orbits, however, these "harmonic orbits" have the center of attraction at the geometric center of the ellipse, and have fairly simple equations of motion.

Phase visualization

In electronics, the relative phase of two sinusoidal signals can be compared by feeding them to the vertical and horizontal inputs of an oscilloscope. If the Lissajous figure display is an ellipse, rather than a straight line, the two signals are out of phase.

Elliptical gears

Two non-circular gears with the same elliptical outline, each pivoting around one focus and positioned at the proper angle, turn smoothly while maintaining contact at all times. Alternatively, they can be connected by a link chain or timing belt, or in the case of a bicycle the main chainring may be elliptical, or an ovoid similar to an ellipse in form. Such elliptical gears may be used in mechanical equipment to produce variable angular speed or torque from a constant rotation of the driving axle, or in the case of a bicycle to allow a varying crank rotation speed with inversely varying mechanical advantage.

Elliptical bicycle gears make it easier for the chain to slide off the cog when changing gears.[18]

An example gear application would be a device that winds thread onto a conical bobbin on a spinning machine. The bobbin would need to wind faster when the thread is near the apex than when it is near the base.[19]

Optics

-   In a material that is optically anisotropic (birefringent), the refractive index depends on the direction of the light. The dependency can be described by an index ellipsoid. (If the material is optically isotropic, this ellipsoid is a sphere.)
-   In lamp-pumped solid-state lasers, elliptical cylinder-shaped reflectors have been used to direct light from the pump lamp (coaxial with one ellipse focal axis) to the active medium rod (coaxial with the second focal axis).[20]
-   In laser-plasma produced EUV light sources used in microchip lithography, EUV light is generated by plasma positioned in the primary focus of an ellipsoid mirror and is collected in the secondary focus at the input of the lithography machine.[21]

Statistics and finance

In statistics, a bivariate random vector (_X_, _Y_) is jointly elliptically distributed if its iso-density contours—loci of equal values of the density function—are ellipses. The concept extends to an arbitrary number of elements of the random vector, in which case in general the iso-density contours are ellipsoids. A special case is the multivariate normal distribution. The elliptical distributions are important in finance because if rates of return on assets are jointly elliptically distributed then all portfolios can be characterized completely by their mean and variance—that is, any two portfolios with identical mean and variance of portfolio return have identical distributions of portfolio return.[22][23]

Computer graphics

Drawing an ellipse as a graphics primitive is common in standard display libraries, such as the MacIntosh QuickDraw API, and Direct2D on Windows. Jack Bresenham at IBM is most famous for the invention of 2D drawing primitives, including line and circle drawing, using only fast integer operations such as addition and branch on carry bit. M. L. V. Pitteway extended Bresenham's algorithm for lines to conics in 1967.[24] Another efficient generalization to draw ellipses was invented in 1984 by Jerry Van Aken.[25]

In 1970 Danny Cohen presented at the "Computer Graphics 1970" conference in England a linear algorithm for drawing ellipses and circles. In 1971, L. B. Smith published similar algorithms for all conic sections and proved them to have good properties.[26] These algorithms need only a few multiplications and additions to calculate each vector.

It is beneficial to use a parametric formulation in computer graphics because the density of points is greatest where there is the most curvature. Thus, the change in slope between each successive point is small, reducing the apparent "jaggedness" of the approximation.

Drawing with Bézier paths:

Composite Bézier curves may also be used to draw an ellipse to sufficient accuracy, since any ellipse may be construed as an affine transformation of a circle. The spline methods used to draw a circle may be used to draw an ellipse, since the constituent Bézier curves behave appropriately under such transformations.

Optimization theory

It is sometimes useful to find the minimum bounding ellipse on a set of points. The ellipsoid method is quite useful for attacking this problem.


See also

-   Apollonius of Perga, the classical authority
-   Cartesian oval, a generalization of the ellipse
-   Circumconic and inconic
-   Conic section
-   Ellipse fitting
-   Ellipsoid, a higher dimensional analog of an ellipse
-   Elliptic coordinates, an orthogonal coordinate system based on families of ellipses and hyperbolae
-   Elliptic partial differential equation
-   Elliptical distribution, in statistics
-   Geodesics on an ellipsoid
-   Great ellipse
-   Hyperbola
-   Kepler's laws of planetary motion
-   Matrix representation of conic sections
-   _n_-ellipse, a generalization of the ellipse for _n_ foci
-   Oval
-   Parabola
-   Rytz’s construction, a method for finding the ellipse axes from conjugate diameters or a parallelogram
-   Spheroid, the ellipsoid obtained by rotating an ellipse about its major or minor axis
-   Stadium (geometry), a two-dimensional geometric shape constructed of a rectangle with semicircles at a pair of opposite sides
-   Steiner circumellipse, the unique ellipse circumscribing a triangle and sharing its centroid
-   Steiner inellipse, the unique ellipse inscribed in a triangle with tangencies at the sides' midpoints
-   Superellipse, a generalization of an ellipse that can look more rectangular or more "pointy"
-   True, eccentric, and mean anomaly


Notes


References

-   -   -   -


External links

-   -   -   -   -   -   -   Apollonius' Derivation of the Ellipse at Convergence
-   _The Shape and History of The Ellipse in Washington, D.C._ by Clark Kimberling
-   Ellipse circumference calculator
-   Collection of animated ellipse demonstrations
-   -   [https://commons.wikimedia.org/wiki/File:01-Ellipsenzirkel-van_Schooten-3.svg# Trammel according Frans van Schooten]

Category:Conic sections Category:Curves Category:Elementary shapes

[1]

[2] The German term for this circle is _Leitkreis_ which can be translated as "Director circle", but that term has a different meaning in the English literature (see Director circle).

[3]

[4]

[5] Lawrence, J. Dennis, _A Catalog of Special Plane Curves_, Dover Publ., 1972.

[6] K. Strubecker: _Vorlesungen über Darstellende Geometrie_, GÖTTINGEN, VANDENHOECK & RUPRECHT, 1967, p. 26

[7]

[8] K. Strubecker: _Vorlesungen über Darstellende Geometrie._ Vandenhoeck & Ruprecht, Göttingen 1967, S. 26.

[9] J. van Mannen: _Seventeenth century instruments for drawing conic sections._ In: _The Mathematical Gazette._ Vol. 76, 1992, p. 222–230.

[10] E. Hartmann: Lecture Note 'PLANAR CIRCLE GEOMETRIES', an Introduction to Möbius-, Laguerre- and Minkowski Planes, p. 55

[11] W. Benz, _Vorlesungen über Geomerie der Algebren_, Springer (1973)

[12]

[13]

[14]

[15]  Englisch translation of

[16]

[17]

[18] David Drew. "Elliptical Gears". 1

[19]

[20] Encyclopedia of Laser Physics and Technology - lamp-pumped lasers, arc lamps, flash lamps, high-power, Nd:YAG laser

[21]

[22]

[23]

[24]

[25]

[26]