In mathematics, the POLAR COORDINATE SYSTEM is a two-dimensional coordinate system in which each point on a plane is determined by a distance from a reference point and an angle from a reference direction.

The reference point (analogous to the origin of a Cartesian coordinate system) is called the _pole_, and the ray from the pole in the reference direction is the _polar axis_. The distance from the pole is called the _radial coordinate_, _radial distance_ or simply _radius_, and the angle is called the _angular coordinate_, _polar angle_, or _azimuth_.[1]


History

The concepts of angle and radius were already used by ancient peoples of the first millennium BC. The Greek astronomer and astrologer Hipparchus (190–120 BC) created a table of chord functions giving the length of the chord for each angle, and there are references to his using polar coordinates in establishing stellar positions.[2] In _On Spirals_, Archimedes describes the Archimedean spiral, a function whose radius depends on the angle. The Greek work, however, did not extend to a full coordinate system.

From the 8th century AD onward, astronomers developed methods for approximating and calculating the direction to Mecca (qibla)—and its distance—from any location on the Earth.[3] From the 9th century onward they were using spherical trigonometry and map projection methods to determine these quantities accurately. The calculation is essentially the conversion of the equatorial polar coordinates of Mecca (i.e. its longitude and latitude) to its polar coordinates (i.e. its qibla and distance) relative to a system whose reference meridian is the great circle through the given location and the Earth's poles, and whose polar axis is the line through the location and its antipodal point.[4]

There are various accounts of the introduction of polar coordinates as part of a formal coordinate system. The full history of the subject is described in Harvard professor Julian Lowell Coolidge's _Origin of Polar Coordinates._[5] Grégoire de Saint-Vincent and Bonaventura Cavalieri independently introduced the concepts in the mid-seventeenth century. Saint-Vincent wrote about them privately in 1625 and published his work in 1647, while Cavalieri published his in 1635 with a corrected version appearing in 1653. Cavalieri first used polar coordinates to solve a problem relating to the area within an Archimedean spiral. Blaise Pascal subsequently used polar coordinates to calculate the length of parabolic arcs.

In _Method of Fluxions_ (written 1671, published 1736), Sir Isaac Newton examined the transformations between polar coordinates, which he referred to as the "Seventh Manner; For Spirals", and nine other coordinate systems.[6] In the journal _Acta Eruditorum_ (1691), Jacob Bernoulli used a system with a point on a line, called the _pole_ and _polar axis_ respectively. Coordinates were specified by the distance from the pole and the angle from the _polar axis_. Bernoulli's work extended to finding the radius of curvature of curves expressed in these coordinates.

The actual term _polar coordinates_ has been attributed to Gregorio Fontana and was used by 18th-century Italian writers. The term appeared in English in George Peacock's 1816 translation of Lacroix's _Differential and Integral Calculus_.[7][8] Alexis Clairaut was the first to think of polar coordinates in three dimensions, and Leonhard Euler was the first to actually develop them.[9]


Conventions

The radial coordinate is often denoted by _r_ or _ρ_, and the angular coordinate by _φ_, _θ_, or _t_. The angular coordinate is specified as _φ_ by ISO standard 31-11. However, in mathematical literature the angle is often denoted by θ instead of _φ_.

Angles in polar notation are generally expressed in either degrees or radians (2 rad being equal to 360°). Degrees are traditionally used in navigation, surveying, and many applied disciplines, while radians are more common in mathematics and mathematical physics.[10]

The angle _φ_ is defined to start at 0° from a _reference direction_, and to increase for rotations in either counterclockwise (ccw) or clockwise (cw) orientation. In mathematics, e.g., the reference direction is usually drawn as a ray from the pole horizontally to the right, and the polar angle increases to positive angles for ccw rotations, whereas in navigation (bearing, heading) the 0°-heading is drawn vertically upwards and the angle increases for cw rotations. The polar angles decrease towards negative values for rotations in the respectively opposite orientations.

Uniqueness of polar coordinates

Adding any number of full turns (360°) to the angular coordinate does not change the corresponding direction. Similarly, any polar coordinate is identical to the coordinate with the negative radial component and the opposite direction (adding 180° to the polar angle). Therefore, the same point (_r_, _φ_) can be expressed with an infinite number of different polar coordinates and (−_r_, _φ_ + (2_n_ + 1) × 180°)}}, where _n_ is an arbitrary integer.[11] Moreover, the pole itself can be expressed as (0, _φ_) for any angle _φ_.[12]

Where a unique representation is needed for any point besides the pole, it is usual to limit _r_ to positive numbers () and _φ_ to the interval [0, 360°) or (−180°, 180°] (in radians, [0, 2) or (−, ]).[13] Another convention, in reverence to the usual codomain of the arctan-function, is to allow for arbitrary nonzero real values of the radial component and restrict the polar angle to . In all cases a unique azimuth for the pole (_r_ = 0) must be chosen, e.g., _φ_ = 0.


Converting between polar and Cartesian coordinates

The polar coordinates _r_ and _φ_ can be converted to the Cartesian coordinates _x_ and _y_ by using the trigonometric functions sine and cosine:

$$\begin{align}
  x &= r \cos \varphi, \\
  y &= r \sin \varphi.
\end{align}$$

The Cartesian coordinates _x_ and _y_ can be converted to polar coordinates _r_ and _φ_ with _r_ ≥ 0 and _φ_ in the interval (−, ] by:[14]

$$r = \sqrt{x^2 + y^2} \quad$$
(as in the Pythagorean theorem or the Euclidean norm), and

_φ_ = atan2 (_y_, _x_),

where atan2 is a common variation on the arctangent function defined as

$$\operatorname{atan2}(y, x) = \begin{cases}
   \arctan\left(\frac{y}{x}\right)       & \mbox{if } x > 0\\
   \arctan\left(\frac{y}{x}\right) + \pi & \mbox{if } x < 0 \mbox{ and } y \ge 0\\
   \arctan\left(\frac{y}{x}\right) - \pi & \mbox{if } x < 0 \mbox{ and } y < 0\\
   \frac{\pi}{2}                         & \mbox{if } x = 0 \mbox{ and } y > 0\\
  -\frac{\pi}{2}                         & \mbox{if } x = 0 \mbox{ and } y < 0\\
   \text{undefined}                      & \mbox{if } x = 0 \mbox{ and } y = 0.
\end{cases}$$

If _r_ is calculated first as above, then this formula for φ may be stated a little more simply using the standard arccosine function:

$$\varphi = \begin{cases}
   \arccos\left(\frac{x}{r}\right) & \mbox{if } y \ge 0 \mbox{ and } r \neq 0 \\
  -\arccos\left(\frac{x}{r}\right) & \mbox{if } y < 0 \\
   \text{undefined}                & \mbox{if } r = 0.
\end{cases}$$

The value of _φ_ above is the principal value of the complex number function arg applied to _x_ + _iy_. An angle in the range [0, 2) may be obtained by adding 2 to the value in case it is negative (in other words when _y_ is negative).


Polar equation of a curve

The equation defining an algebraic curve expressed in polar coordinates is known as a _polar equation_. In many cases, such an equation can simply be specified by defining _r_ as a function of _φ_. The resulting curve then consists of points of the form (_r_(_φ_), _φ_) and can be regarded as the graph of the polar function _r_. Note that, in contrast to Cartesian coordinates, the independent variable _φ_ is the _second_ entry in the ordered pair.

Different forms of symmetry can be deduced from the equation of a polar function _r_. If _r_(_φ_)}} the curve will be symmetrical about the horizontal (0°/180°) ray, if _r_(_φ_)}} it will be symmetric about the vertical (90°/270°) ray, and if _r_(_φ_)}} it will be rotationally symmetric by α clockwise and counterclockwise about the pole.

Because of the circular nature of the polar coordinate system, many curves can be described by a rather simple polar equation, whereas their Cartesian form is much more intricate. Among the best known of these curves are the polar rose, Archimedean spiral, lemniscate, limaçon, and cardioid.

For the circle, line, and polar rose below, it is understood that there are no restrictions on the domain and range of the curve.

Circle

The general equation for a circle with a center at and radius _a_ is

_r_² − 2_r__r_₀cos (_φ_ − _γ_) + _r_₀² = _a_².

This can be simplified in various ways, to conform to more specific cases, such as the equation

_r_(_φ_) = _a_
for a circle with a center at the pole and radius _a_.[15]

When ₀ = , or when the origin lies on the circle, the equation becomes

_r_ = 2_a_cos (_φ_ − _γ_).

In the general case, the equation can be solved for , giving

$$r = r_0 \cos(\varphi - \gamma) + \sqrt{a^2 - r_0^2 \sin^2(\varphi - \gamma)},$$
the solution with a minus sign in front of the square root gives the same curve.

Line

_Radial_ lines (those running through the pole) are represented by the equation

_φ_ = _γ_,
where ɣ is the angle of elevation of the line; that is, arctan _m_}} where _m_ is the slope of the line in the Cartesian coordinate system. The non-radial line that crosses the radial line ɣ}} perpendicularly at the point (_r₀_, ɣ) has the equation

_r_(_φ_) = _r_₀sec (_φ_ − _γ_).

Otherwise stated (_r₀_, ɣ) is the point in which the tangent intersects the imaginary circle of radius _r₀_.

Polar rose

A polar rose is a mathematical curve that looks like a petaled flower, and that can be expressed as a simple polar equation,

_r_(_φ_) = _a_cos (_k__φ_+_γ_₀)

for any constant ɣ₀ (including 0). If _k_ is an integer, these equations will produce a _k_-petaled rose if _k_ is odd, or a 2_k_-petaled rose if _k_ is even. If _k_ is rational but not an integer, a rose-like shape may form but with overlapping petals. Note that these equations never define a rose with 2, 6, 10, 14, etc. petals. The variable _a_ represents the length of the petals of the rose.

Archimedean spiral

The Archimedean spiral is a spiral that was discovered by Archimedes, which can also be expressed as a simple polar equation. It is represented by the equation

_r_(_φ_) = _a_ + _b__φ_.
Changing the parameter _a_ will turn the spiral, while _b_ controls the distance between the arms, which for a given spiral is always constant. The Archimedean spiral has two arms, one for and one for . The two arms are smoothly connected at the pole. Taking the mirror image of one arm across the 90°/270° line will yield the other arm. This curve is notable as one of the first curves, after the conic sections, to be described in a mathematical treatise, and as being a prime example of a curve that is best defined by a polar equation.

Conic sections

A conic section with one focus on the pole and the other somewhere on the 0° ray (so that the conic's major axis lies along the polar axis) is given by:

    $r = { \ell\over {1 - e \cos \varphi}}$

where _e_ is the eccentricity and ℓ is the semi-latus rectum (the perpendicular distance at a focus from the major axis to the curve). If , this equation defines a hyperbola; if 1}}, it defines a parabola; and if , it defines an ellipse. The special case 0}} of the latter results in a circle of the radius ℓ.


Intersection of two polar curves

The graphs of two polar functions r = f(θ) and r = g(θ) have possible intersections of three types:

1.  In the origin if the equations f(θ) = 0 and g(θ) = 0 have at least one solution each.
2.  All the points [g(θ_(i)), θ_(i)] where θ_(i) are the solutions to the equation f(θ + 2kπ) = g(θ) where k is an integer.
3.  All the points [g(θ_(i)), θ_(i)] where θ_(i) are the solutions to the equation f(θ + (2k + 1)π) =  − g(θ) where k is an integer.


Complex numbers

]] Every complex number can be represented as a point in the complex plane, and can therefore be expressed by specifying either the point's Cartesian coordinates (called rectangular or Cartesian form) or the point's polar coordinates (called polar form). The complex number _z_ can be represented in rectangular form as

    z = x + iy

where _i_ is the imaginary unit, or can alternatively be written in polar form (via the conversion formulae given above) as

_z_ = _r_(cos _φ_ + _i_sin _φ_)
and from there as

    z = re^(iφ)

where _e_ is Euler's number, which are equivalent as shown by Euler's formula.[16] (Note that this formula, like all those involving exponentials of angles, assumes that the angle _φ_ is expressed in radians.) To convert between the rectangular and polar forms of a complex number, the conversion formulae given above can be used.

For the operations of multiplication, division, and exponentiation of complex numbers, it is generally much simpler to work with complex numbers expressed in polar form rather than rectangular form. From the laws of exponentiation:

Multiplication: r₀e^(iφ₀) r₁e^(iφ₁) = r₀r₁e^(i(φ₀+φ₁))
Division: $\frac{r_0 e^{i\varphi_0}}{r_1 e^{i\varphi_1}} = \frac{r_0}{r_1}e^{i(\varphi_0 - \varphi_1)}$
Exponentiation (De Moivre's formula): (re^(iφ))^(n) = r^(n)e^(inφ)


Calculus

Calculus can be applied to equations expressed in polar coordinates.[17][18]

The angular coordinate _φ_ is expressed in radians throughout this section, which is the conventional choice when doing calculus.

Differential calculus

Using _r_ cos _φ_ }} and _r_ sin _φ_ }}, one can derive a relationship between derivatives in Cartesian and polar coordinates. For a given function, _u_(_x_,_y_), it follows that (by computing its total derivatives)

$$\begin{align}
  r \frac{\partial u}{\partial r}
    &= r \frac{\partial u}{\partial x}\frac{\partial x}{\partial r} +
       r \frac{\partial u}{\partial y}\frac{\partial y}{\partial r}, \\[2pt]
  \frac{\partial u}{\partial \varphi}
    &= \frac{\partial u}{\partial x}\frac{\partial x}{\partial \varphi} +
       \frac{\partial u}{\partial y}\frac{\partial y}{\partial \varphi},
\end{align}$$

or

$$\begin{align}
  r \frac{\partial u}{\partial r}
    &= r \frac{\partial u}{\partial x} \cos\varphi  +
       r \frac{\partial u}{\partial y} \sin\varphi
     = x \frac{\partial u}{\partial x} + y \frac{\partial u}{\partial y}, \\[2pt]
  \frac{\partial u}{\partial \varphi}
    &= - \frac{\partial u}{\partial x} r \sin\varphi +
         \frac{\partial u}{\partial y} r \cos\varphi
     = -y \frac{\partial u}{\partial x} + x \frac{\partial u}{\partial y}.
\end{align}$$

Hence, we have the following formulae:

$$\begin{align}
      r \frac{\partial}{\partial r} &=  x \frac{\partial}{\partial x} + y \frac{\partial}{\partial y} \\[2pt]
  \frac{\partial}{\partial \varphi} &= -y \frac{\partial}{\partial x} + x \frac{\partial}{\partial y}.
\end{align}$$

Using the inverse coordinates transformation, an analogous reciprocal relationship can be derived between the derivatives. Given a function _u_(_r_,_φ_), it follows that

$$\begin{align}
  \frac{\partial u}{\partial x}
    &= \frac{\partial u}{\partial r}\frac{\partial r}{\partial x} +
       \frac{\partial u}{\partial \varphi}\frac{\partial \varphi}{\partial x}, \\[2pt]
  \frac{\partial u}{\partial y}
    &= \frac{\partial u}{\partial r}\frac{\partial r}{\partial y} +
       \frac{\partial u}{\partial \varphi}\frac{\partial \varphi}{\partial y},
\end{align}$$

or

$$\begin{align}
  \frac{\partial u}{\partial x}
    &= \frac{\partial u}{\partial r}\frac{x}{\sqrt{x^2+y^2}} -
       \frac{\partial u}{\partial \varphi}\frac{y}{x^2+y^2} \\[2pt]
    &= \cos \varphi \frac{\partial u}{\partial r} -
       \frac{1}{r} \sin\varphi \frac{\partial u}{\partial \varphi}, \\[2pt]
  \frac{\partial u}{\partial y}
    &= \frac{\partial u}{\partial r}\frac{y}{\sqrt{x^2+y^2}} +
       \frac{\partial u}{\partial \varphi}\frac{x}{x^2+y^2} \\[2pt]
    &= \sin\varphi \frac{\partial u}{\partial r} +
       \frac{1}{r} \cos\varphi \frac{\partial u}{\partial \varphi}.
\end{align}$$

Hence, we have the following formulae:

$$\begin{align}
  \frac{\partial}{\partial x}
    &= \cos \varphi \frac{\partial}{\partial r} -
       \frac{1}{r} \sin\varphi \frac{\partial}{\partial \varphi} \\[2pt]
  \frac{\partial}{\partial y}
    &= \sin \varphi \frac{\partial}{\partial r} +
       \frac{1}{r} \cos\varphi \frac{\partial}{\partial \varphi}.
\end{align}$$

To find the Cartesian slope of the tangent line to a polar curve _r_(_φ_) at any given point, the curve is first expressed as a system of parametric equations.

$$\begin{align}
  x &= r(\varphi)\cos\varphi \\
  y &= r(\varphi)\sin\varphi
\end{align}$$

Differentiating both equations with respect to _φ_ yields

$$\begin{align}
  \frac{dx}{d\varphi} &= r'(\varphi)\cos\varphi - r(\varphi)\sin\varphi \\[2pt]
  \frac{dy}{d\varphi} &= r'(\varphi)\sin\varphi + r(\varphi)\cos\varphi.
\end{align}$$

Dividing the second equation by the first yields the Cartesian slope of the tangent line to the curve at the point :

$$\frac{dy}{dx} = \frac{r'(\varphi)\sin\varphi + r(\varphi)\cos\varphi}{r'(\varphi)\cos\varphi-r(\varphi)\sin\varphi}.$$

For other useful formulas including divergence, gradient, and Laplacian in polar coordinates, see curvilinear coordinates.

Integral calculus (arc length)

The arc length (length of a line segment) defined by a polar function is found by the integration over the curve _r_(_φ_). Let _L_ denote this length along the curve starting from points _A_ through to point _B_, where these points correspond to _φ_ = _a_ and _φ_ = _b_ such that . The length of _L_ is given by the following integral

$$L = \int_a^b \sqrt{ \left[r(\varphi)\right]^2 + \left[ {\tfrac{dr(\varphi) }{ d\varphi }} \right] ^2 } d\varphi$$

Integral calculus (area)

Let _R_ denote the region enclosed by a curve _r_(_φ_) and the rays _φ_ = _a_ and _φ_ = _b_, where . Then, the area of _R_ is

$$\frac12\int_a^b \left[r(\varphi)\right]^2\, d\varphi.$$

, which mechanically computes polar integrals]] This result can be found as follows. First, the interval is divided into _n_ subintervals, where _n_ is an arbitrary positive integer. Thus Δ_φ_, the length of each subinterval, is equal to (the total length of the interval), divided by _n_, the number of subintervals. For each subinterval _i_ = 1, 2, ..., _n_, let _φ__(_i_) be the midpoint of the subinterval, and construct a sector with the center at the pole, radius _r_(_φ__(_i_)), central angle Δ_φ_ and arc length _r_(_φ__(_i_))Δ_φ_. The area of each constructed sector is therefore equal to

$$\left[r(\varphi_i)\right]^2 \pi \cdot \frac{\Delta \varphi}{2\pi} = \frac{1}{2}\left[r(\varphi_i)\right]^2 \Delta \varphi.$$
Hence, the total area of all of the sectors is

$$\sum_{i=1}^n \tfrac12r(\varphi_i)^2\,\Delta\varphi.$$

As the number of subintervals _n_ is increased, the approximation of the area continues to improve. In the limit as , the sum becomes the Riemann sum for the above integral.

A mechanical device that computes area integrals is the planimeter, which measures the area of plane figures by tracing them out: this replicates integration in polar coordinates by adding a joint so that the 2-element linkage effects Green's theorem, converting the quadratic polar integral to a linear integral.

Generalization

Using Cartesian coordinates, an infinitesimal area element can be calculated as _dA_ = _dx_ _dy_. The substitution rule for multiple integrals states that, when using other coordinates, the Jacobian determinant of the coordinate conversion formula has to be considered:

    J = \det\frac{\partial(x, y)}{\partial(r, \varphi)}

 = \begin{vmatrix}
     \frac{\partial x}{\partial r} & \frac{\partial x}{\partial \varphi} \\[2pt]
     \frac{\partial y}{\partial r} & \frac{\partial y}{\partial \varphi}
   \end{vmatrix}
 = \begin{vmatrix}
     \cos\varphi & -r\sin\varphi \\
     \sin\varphi &  r\cos\varphi
   \end{vmatrix}
 = r\cos^2\varphi + r\sin^2\varphi = r.

Hence, an area element in polar coordinates can be written as

_d__A_ = _d__x_ _d__y_  = _J_ _d__r_ _d__φ_ = _r_ _d__r_ _d__φ_.

Now, a function, that is given in polar coordinates, can be integrated as follows:

∬_(_R_)_f_(_x_, _y_) _d__A_ = ∫_(_a_)^(_b_)∫₀^(_r_(_φ_))_f_(_r_, _φ_) _r_ _d__r_ _d__φ_.

Here, _R_ is the same region as above, namely, the region enclosed by a curve _r_(_ϕ_) and the rays _φ_ = _a_ and _φ_ = _b_. The formula for the area of _R_ mentioned above is retrieved by taking _f_ identically equal to 1.

A more surprising application of this result yields the Gaussian integral, here denoted _K_:

$$K=\int_{-\infty}^\infty e^{-x^2} \, dx = \sqrt\pi.$$

Vector calculus

Vector calculus can also be applied to polar coordinates. For a planar motion, let R be the position vector , with _r_ and _φ_ depending on time _t_.

We define the unit vectors

$$\hat{\mathbf{r}} = (\cos(\varphi), \sin(\varphi))$$

in the direction of _r_ and

$$\hat{\boldsymbol{\varphi}} = (-\sin(\varphi), \cos(\varphi)) = \hat{\mathbf{k}} \times \hat{\mathbf{r}} \ ,$$

in the plane of the motion perpendicular to the radial direction, where $\hat{\mathbf{k}}$ is a unit vector normal to the plane of the motion.

Then

$$\begin{align}
         \mathbf{r} &= (x,\ y) = r(\cos\varphi,\ \sin\varphi) = r \hat{\mathbf{r}}\ , \\
   \dot{\mathbf{r}} &= \left(\dot{x},\ \dot{y}\right) = \dot{r}(\cos\varphi,\ \sin\varphi) + r\dot{\varphi}(-\sin\varphi,\ \cos\varphi) = \dot{r}\hat{\mathbf{r}} + r\dot{\varphi}\hat{\boldsymbol{\varphi}}\ ,\\
  \ddot{\mathbf{r}} &= \left(\ddot{x},\ \ddot{y}\right) \\
                    &= \ddot{r}(\cos\varphi,\ \sin\varphi) + 2\dot{r}\dot{\varphi}(-\sin\varphi,\ \cos\varphi) +  r\ddot{\varphi}(-\sin\varphi,\ \cos\varphi) - r\dot{\varphi}^2(\cos\varphi,\ \sin\varphi) \\
                    &= \left(\ddot{r} - r\dot{\varphi}^2\right) \hat{\mathbf{r}} + \left(r\ddot{\varphi} + 2\dot{r}\dot{\varphi}\right) \hat{\boldsymbol{\varphi}} \\
                    &= \left(\ddot{r} - r\dot{\varphi}^2\right) \hat{\mathbf{r}} + \frac{1}{r}\; \frac{d}{dt} \left(r^2\dot{\varphi}\right) \hat{\boldsymbol{\varphi}}.
\end{align}$$

Centrifugal and Coriolis terms

The term rφ̇² is sometimes referred to as the _centripetal acceleration_, and the term 2ṙφ̇ as the _Coriolis acceleration_. For example, see Shankar.[19]

Note: these terms, that appear when acceleration is expressed in polar coordinates, are a mathematical consequence of differentiation; they appear whenever polar coordinates are used. In planar particle dynamics these accelerations appear when setting up Newton's second law of motion in a rotating frame of reference. Here these extra terms are often called fictitious forces; fictitious because they are simply a result of a change in coordinate frame. That does not mean they do not exist, rather they exist only in the rotating frame.

Co-rotating frame

For a particle in planar motion, one approach to attaching physical significance to these terms is based on the concept of an instantaneous _co-rotating frame of reference_.[20] To define a co-rotating frame, first an origin is selected from which the distance _r_(_t_) to the particle is defined. An axis of rotation is set up that is perpendicular to the plane of motion of the particle, and passing through this origin. Then, at the selected moment _t_, the rate of rotation of the co-rotating frame Ω is made to match the rate of rotation of the particle about this axis, _dφ_/_dt_. Next, the terms in the acceleration in the inertial frame are related to those in the co-rotating frame. Let the location of the particle in the inertial frame be (_r(_t''), _φ_(_t_)), and in the co-rotating frame be (''r(t), _φ_′(t)''). Because the co-rotating frame rotates at the same rate as the particle, _dφ_′/_dt_ = 0. The fictitious centrifugal force in the co-rotating frame is ''mrΩ², radially outward. The velocity of the particle in the co-rotating frame also is radially outward, because _dφ_′/_dt_ = 0. The _fictitious Coriolis force_ therefore has a value −2_m_(_dr_/_dt_)Ω, pointed in the direction of increasing _φ_ only. Thus, using these forces in Newton's second law we find:

$$\boldsymbol{F} + \boldsymbol{F}_\text{cf} + \boldsymbol{F}_\text{Cor} = m\ddot{\boldsymbol{r}} \ ,$$

where over dots represent time differentiations, and F is the net real force (as opposed to the fictitious forces). In terms of components, this vector equation becomes:

$$\begin{align}
             F_r + mr\Omega^2 &= m\ddot{r} \\
  F_\varphi - 2m\dot{r}\Omega &= mr\ddot{\varphi} \ ,
\end{align}$$

which can be compared to the equations for the inertial frame:

$$\begin{align}
        F_r &= m\ddot{r} - mr\dot{\varphi}^2 \\
  F_\varphi &= mr\ddot{\varphi} + 2m\dot{r}\dot{\varphi} \ .
\end{align}$$

This comparison, plus the recognition that by the definition of the co-rotating frame at time _t_ it has a rate of rotation Ω = _dφ_/_dt_, shows that we can interpret the terms in the acceleration (multiplied by the mass of the particle) as found in the inertial frame as the negative of the centrifugal and Coriolis forces that would be seen in the instantaneous, non-inertial co-rotating frame.

For general motion of a particle (as opposed to simple circular motion), the centrifugal and Coriolis forces in a particle's frame of reference commonly are referred to the instantaneous osculating circle of its motion, not to a fixed center of polar coordinates. For more detail, see centripetal force.


Differential geometry

In the modern terminology of differential geometry, polar coordinates provide coordinate charts for the differentiable manifold ℝ² \ {(0,0)}, the plane minus the origin. In these coordinates, the Euclidean metric tensor is given byds² = dr² + r²dθ².This can be seen via the change of variables formula for the metric tensor, or by computing the differential forms _dx_, _dy_ via the exterior derivative of the 0-forms _x = r cos(θ), y = r sin(θ)_ and substituting them in the Euclidean metric tensor _ds² = dx² + dy²_. An orthonormal frame with respect to this metric is given by$e_r = \frac{\partial}{\partial r}, \quad e_\theta = \frac1r \frac{\partial}{\partial \theta},$with dual coframee^(r) = dr, e^(θ) = rdθ.The connection form relative to this frame and the Levi-Civita connection is given by the skew-symmetric matrix of 1-forms$\omega^i_j = \begin{pmatrix} 0 & -d\theta \\ d\theta & 0\end{pmatrix}$and hence the curvature form Ω = dω + ω∧ω vanishes identically. Therefore, as expected, the punctured plane is a flat manifold.


Extensions in 3D

The polar coordinate system is extended into three dimensions with two different coordinate systems, the cylindrical and spherical coordinate system.


Applications

Polar coordinates are two-dimensional and thus they can be used only where point positions lie on a single two-dimensional plane. They are most appropriate in any context where the phenomenon being considered is inherently tied to direction and length from a center point. For instance, the examples above show how elementary polar equations suffice to define curves—such as the Archimedean spiral—whose equation in the Cartesian coordinate system would be much more intricate. Moreover, many physical systems—such as those concerned with bodies moving around a central point or with phenomena originating from a central point—are simpler and more intuitive to model using polar coordinates. The initial motivation for the introduction of the polar system was the study of circular and orbital motion.

Position and navigation

Polar coordinates are used often in navigation as the destination or direction of travel can be given as an angle and distance from the object being considered. For instance, aircraft use a slightly modified version of the polar coordinates for navigation. In this system, the one generally used for any sort of navigation, the 0° ray is generally called heading 360, and the angles continue in a clockwise direction, rather than counterclockwise, as in the mathematical system. Heading 360 corresponds to magnetic north, while headings 90, 180, and 270 correspond to magnetic east, south, and west, respectively.[21] Thus, an aircraft traveling 5 nautical miles due east will be traveling 5 units at heading 90 (read zero-niner-zero by air traffic control).[22]

Modeling

Systems displaying radial symmetry provide natural settings for the polar coordinate system, with the central point acting as the pole. A prime example of this usage is the groundwater flow equation when applied to radially symmetric wells. Systems with a radial force are also good candidates for the use of the polar coordinate system. These systems include gravitational fields, which obey the inverse-square law, as well as systems with point sources, such as radio antennas.

Radially asymmetric systems may also be modeled with polar coordinates. For example, a microphone's pickup pattern illustrates its proportional response to an incoming sound from a given direction, and these patterns can be represented as polar curves. The curve for a standard cardioid microphone, the most common unidirectional microphone, can be represented as 0.5 + 0.5sin(_ϕ_)}} at its target design frequency.[23] The pattern shifts toward omnidirectionality at lower frequencies.


See also

-   Curvilinear coordinates
-   List of canonical coordinate transformations
-   Log-polar coordinates
-   Polar decomposition
-   Unit circle


References

SPECIFIC

GENERAL

-   -   -


External links

-   -   -   Coordinate Converter — converts between polar, Cartesian and spherical coordinates
-   Polar Coordinate System Dynamic Demo

Category:Two-dimensional coordinate systems

[1]

[2]

[3]

[4] King (2005, p. 169). The calculations were as accurate as could be achieved under the limitations imposed by their assumption that the Earth was a perfect sphere.

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

[20] For the following discussion, see

[21]

[22]

[23]