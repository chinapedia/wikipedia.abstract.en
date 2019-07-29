Sphere_wireframe_10deg_6r.svg of a sphere]] A SPHERE (from Greek —, "globe, ball"[1]) is a perfectly round geometrical object in three-dimensional space that is the surface of a completely round ball (viz., analogous to the circular objects in two dimensions, where a "circle" circumscribes its "disk").

Like a circle in a two-dimensional space, a sphere is defined mathematically as the set of points that are all at the same distance from a given point, but in a three-dimensional space.[2] This distance is the radius of the ball, which is made up from all points with a distance less than (or, for a closed ball, less than _or equal to_) from the given point, which is the center of the mathematical ball. These are also referred to as the radius and center of the sphere, respectively. The longest straight line segment through the ball, connecting two points of the sphere, passes through the center and its length is thus twice the radius; it is a diameter of both the sphere and its ball.

While outside mathematics the terms "sphere" and "ball" are sometimes used interchangeably, in mathematics the above distinction is made between a _sphere_, which is a two-dimensional closed surface embedded in a three-dimensional Euclidean space, and a _ball_, which is a three-dimensional shape that includes the sphere and everything _inside_ the sphere (a _closed ball_), or, more often, just the points _inside_, but _not on_ the sphere (an _open ball_). The distinction between _ball_ and _sphere_ has not always been maintained and especially older mathematical references talk about a sphere as a solid. This is analogous to the situation in the plane, where the terms "circle" and "disk" can also be confounded.


Equations in three-dimensional space

Sphere_and_Ball.png

In analytic geometry, a sphere with center and radius is the locus of all points such that

(_x_ − _x_₀)² + (_y_ − _y_₀)² + (_z_ − _z_₀)² = _r_².

Let be real numbers with and put

$$x_0 = \frac{-b}{a}, \quad y_0 = \frac{-c}{a}, \quad z_0 = \frac{-d}{a}, \quad \rho = \frac{b^2 +c^2+d^2 - ae}{a^2}.$$
Then the equation

_f_(_x_, _y_, _z_) = _a_(_x_² + _y_² + _z_²) + 2(_b__x_ + _c__y_ + _d__z_) + _e_ = 0
has no real points as solutions if ρ < 0 and is called the equation of an IMAGINARY SPHERE. If ρ = 0, the only solution of f(x, y, z) = 0 is the point P₀ = (x₀, y₀, z₀) and the equation is said to be the equation of a POINT SPHERE. Finally, in the case ρ > 0, f(x, y, z) = 0 is an equation of a sphere whose center is P₀ and whose radius is $\sqrt \rho$.[3]

If in the above equation is zero then is the equation of a plane. Thus, a plane may be thought of as a sphere of infinite radius whose center is a point at infinity.[4]

The points on the sphere with radius r > 0 and center (x₀, y₀, z₀) can be parameterized via

$$\begin{align} x &= x_0 + r \sin \theta  \; \cos\varphi \\
y &= y_0 + r \sin  \theta \; \sin\varphi \qquad (0 \leq  \theta \leq \pi,\;  0 \leq \varphi < 2\pi ) \\
z &= z_0 + r \cos \theta \,\end{align}$$
[5]

The parameter θ can be associated with the angle counted positive from the direction of the positive _z_-axis through the center to the radius-vector, and the parameter φ can be associated with the angle counted positive from the direction of the positive _x_-axis through the center to the projection of the radius-vector on the _xy_-plane.

A sphere of any radius centered at zero is an integral surface of the following differential form:

_x_ _d__x_ + _y_ _d__y_ + _z_ _d__z_ = 0.

This equation reflects that position and velocity vectors of a point, and , traveling on the sphere are always orthogonal to each other.

A sphere can also be constructed as the surface formed by rotating a circle about any of its diameters. Since a circle is a special type of ellipse, a sphere is a special type of ellipsoid of revolution. Replacing the circle with an ellipse rotated about its major axis, the shape becomes a prolate spheroid; rotated about the minor axis, an oblate spheroid.[6]


Enclosed volume

Esfera_Arquímedes0.svg

In three dimensions, the volume inside a sphere (that is, the volume of a ball, but classically referred to as the volume of a sphere) is

    $V = \frac{4}{3}\pi r^3 \approx 0.523 \cdot d^3$

where is the radius and is the diameter of the sphere. Archimedes first derived this formula by showing that the volume inside a sphere is twice the volume between the sphere and the circumscribed cylinder of that sphere (having the height and diameter equal to the diameter of the sphere).[7] This may be proved by inscribing a cone upside down into semi-sphere, noting that the area of a cross section of the cone plus the area of a cross section of the sphere is the same as the area of the cross section of the circumscribing cylinder, and applying Cavalieri's principle.[8] This formula can also be derived using integral calculus, i.e. disk integration to sum the volumes of an infinite number of circular disks of infinitesimally small thickness stacked side by side and centered along the -axis from to , assuming the sphere of radius is centered at the origin.

At any given , the incremental volume () equals the product of the cross-sectional area of the disk at and its thickness ():

    δV ≈ πy² ⋅ δx.

The total volume is the summation of all incremental volumes:

    V ≈ ∑πy² ⋅ δx.

In the limit as approaches zero,[9] this equation becomes:

    V = ∫_( − r)^(r)πy²dx.

At any given , a right-angled triangle connects , and to the origin; hence, applying the Pythagorean theorem yields:

    y² = r² − x².

Using this substitution gives

    V = ∫_( − r)^(r)π(r²−x²)dx,

which can be evaluated to give the result

    $V = \pi \left[r^2x - \frac{x^3}{3} \right]_{-r}^{r} = \pi \left(r^3 - \frac{r^3}{3} \right) - \pi \left(-r^3 + \frac{r^3}{3} \right) = \frac43\pi r^3.$

An alternative formula is found using spherical coordinates, with volume element

    dV = r²sin θ dr dθ dφ

so

    V=\int_0^{2\pi} \int_{0}^{\pi} \int_0^r r'^2\sin\theta\, dr'\, d\theta\, d\varphi

= 2\pi \int_{0}^{\pi} \int_0^r r'^2\sin\theta\, dr'\, d\theta



4\PI \INT_0^R R'^2\, DR'\


\frac43\pi r^3. For most practical purposes, the volume inside a sphere inscribed in a cube can be approximated as 52.4% of the volume of the cube, since , where is the diameter of the sphere and also the length of a side of the cube and  ≈ 0.5236. For example, a sphere with diameter 1m has 52.4% the volume of a cube with edge length 1m, or about 0.524 m³.


Surface area

The surface area of a sphere of radius is:

_A_ = 4_π__r_².

Archimedes first derived this formula[10] from the fact that the projection to the lateral surface of a circumscribed cylinder is area-preserving.[11] Another approach to obtaining the formula comes from the fact that it equals the derivative of the formula for the volume with respect to because the total volume inside a sphere of radius can be thought of as the summation of the surface area of an infinite number of spherical shells of infinitesimal thickness concentrically stacked inside one another from radius 0 to radius . At infinitesimal thickness the discrepancy between the inner and outer surface area of any given shell is infinitesimal, and the elemental volume at radius is simply the product of the surface area at radius and the infinitesimal thickness.

At any given radius , the incremental volume () equals the product of the surface area at radius () and the thickness of a shell ():

_δ__V_ ≈ _A_(_r_) ⋅ _δ__r_.

The total volume is the summation of all shell volumes:

_V_ ≈ ∑_A_(_r_) ⋅ _δ__r_.

In the limit as approaches zero[12] this equation becomes:

_V_ = ∫₀^(_r_)_A_(_r_) _d__r_.

Substitute :

$$\frac43\pi r^3 = \int_0^r A(r) \, dr.$$

Differentiating both sides of this equation with respect to yields as a function of :

4_π__r_² = _A_(_r_).

This is generally abbreviated as:

_A_ = 4_π__r_²,
where is now considered to be the fixed radius of the sphere.

Alternatively, the area element on the sphere is given in spherical coordinates by . In Cartesian coordinates, the area element is

    $dS=\frac{r}{\sqrt{r^{2}-{\displaystyle \sum_{i\ne k}x_{i}^{2}}}}\prod_{i\ne k}dx_{i},\;\forall k.$

The total area can thus be obtained by integration:

_A_ = ∫₀^(2_π_)∫₀^(_π_)_r_²sin _θ_ _d__θ_ _d__φ_ = 4_π__r_².

The sphere has the smallest surface area of all surfaces that enclose a given volume, and it encloses the largest volume among all closed surfaces with a given surface area. The sphere therefore appears in nature: for example, bubbles and small water drops are roughly spherical because the surface tension locally minimizes surface area.

The surface area relative to the mass of a ball is called the specific surface area and can be expressed from the above stated equations as

$$\mathrm{SSA} = \frac{A}{V\rho} = \frac{3}{r\rho},$$
where is the density (the ratio of mass to volume).


Geometric properties

A sphere is uniquely determined by four points that are not coplanar. More generally, a sphere is uniquely determined by four conditions such as passing through a point, being tangent to a plane, etc.[13] This property is analogous to the property that three non-collinear points determine a unique circle in a plane.

Consequently, a sphere is uniquely determined by (that is, passes through) a circle and a point not in the plane of that circle.

By examining the common solutions of the equations of two spheres, it can be seen that two spheres intersect in a circle and the plane containing that circle is called the RADICAL PLANE of the intersecting spheres.[14] Although the radical plane is a real plane, the circle may be imaginary (the spheres have no real point in common) or consist of a single point (the spheres are tangent at that point).[15]

The angle between two spheres at a real point of intersection is the dihedral angle determined by the tangent planes to the spheres at that point. Two spheres intersect at the same angle at all points of their circle of intersection.[16] They intersect at right angles (are orthogonal) if and only if the square of the distance between their centers is equal to the sum of the squares of their radii.[17]

Pencil of spheres

If and are the equations of two distinct spheres then

_s__f_(_x_, _y_, _z_) + _t__g_(_x_, _y_, _z_) = 0
is also the equation of a sphere for arbitrary values of the parameters and . The set of all spheres satisfying this equation is called a PENCIL OF SPHERES determined by the original two spheres. In this definition a sphere is allowed to be a plane (infinite radius, center at infinity) and if both the original spheres are planes then all the spheres of the pencil are planes, otherwise there is only one plane (the radical plane) in the pencil.[18]

If the pencil of spheres does not consist of all planes, then there are three types of pencils:[19]

-   If the spheres intersect in a real circle , then the pencil consists of all the spheres containing , including the radical plane. The centers of all the ordinary spheres in the pencil lie on a line passing through the center of and perpendicular to the radical plane.
-   If the spheres intersect in an imaginary circle, all the spheres of the pencil also pass through this imaginary circle but as ordinary spheres they are disjoint (have no real points in common). The line of centers is perpendicular to the radical plane, which is a real plane in the pencil containing the imaginary circle.
-   If the spheres intersect in a point , all the spheres in the pencil are tangent at and the radical plane is the common tangent plane of all these spheres. The line of centers is perpendicular to the radical plane at .

All the tangent lines from a fixed point of the radical plane to the spheres of a pencil have the same length.[20]

The radical plane is the locus of the centers of all the spheres that are orthogonal to all the spheres in a pencil. Moreover, a sphere orthogonal to any two spheres of a pencil of spheres is orthogonal to all of them and its center lies in the radical plane of the pencil.[21]


Terminology

Plane sections

A _great circle_ on the sphere has the same center and radius as the sphere—consequently dividing it into two equal parts. The plane sections of a sphere are called _spheric sections—_which are either great circles for planes through the sphere's center or _small circles_ for all others.[22]

Any plane that includes the center of a sphere divides it into two equal HEMISPHERES. Any two intersecting planes that include the center of a sphere subdivide the sphere into four lunes or biangles, the vertices of which coincide with the antipodal points lying on the line of intersection of the planes.

Branches of geometry

Non-Euclidean distance

Any pair of points on a sphere that lie on a straight line through the sphere's center (i.e. the diameter) are called _antipodal points_—on the sphere, the distance between them is exactly half the length of the circumference. Any other (i.e. not antipodal) pair of distinct points on a sphere

-   lie on a unique great circle,
-   segment it into one minor (i.e. shorter) and one major (i.e. longer) arc, and
-   have the minor arc's length be the _shortest distance_ between them on the sphere.

Spherical geometry shares many analogous properties to Euclidean once equipped with this "great-circle distance".

Differential geometry

And a much more abstract generalization of geometry also uses the same distance concept in the Riemannian circle.

The hemisphere is conjectured to be the optimal (least area) isometric filling of the Riemannian circle.

Projective geometry

The antipodal quotient of the sphere is the surface called the real projective plane, which can also be thought of as the northern hemisphere with antipodal points of the equator identified.

Geography

Terms borrowed directly from geography of the Earth, despite its spheroidal shape having greater or lesser departures from a perfect sphere (see geoid), are widely well-understood. In geometry unrelated to astronomical bodies, geocentric terminology should be used only for illustration and _noted_ as such, unless there is no chance of misunderstanding.

Poles, longitude and latitudes

If a particular point on a sphere is (arbitrarily) designated as its _north pole_, its antipodal point is called the _south pole_. The great circle equidistant to each is then the _equator_. Great circles through the poles are called lines of longitude (or meridians). A line _not on the sphere_ but through its center connecting the two poles _may_ be called the axis of rotation. Circles on the sphere that are parallel (i.e. not great circles) to the equator are lines of latitude.


Generalizations

Dimensionality

Spheres can be generalized to spaces of any number of dimensions. For any natural number , an "-sphere," often written as , is the set of points in ()-dimensional Euclidean space that are at a fixed distance from a central point of that space, where is, as before, a positive real number. In particular:

-   : a 0-sphere is a pair of endpoints of an interval of the real line

-   : a 1-sphere is a circle of radius _r_

-   : a 2-sphere is an ordinary sphere

-   : a 3-sphere is a sphere in 4-dimensional Euclidean space.

Spheres for are sometimes called hyperspheres.

The -sphere of unit radius centered at the origin is denoted and is often referred to as "the" -sphere. Note that the ordinary sphere is a 2-sphere, because it is a 2-dimensional surface (which is embedded in 3-dimensional space).

The surface area of the unit ()-sphere is

$$\frac{2 \pi^{\frac{n}{2}}}{\Gamma\left(\frac{n}{2}\right)}$$

where is Euler's gamma function.

Another expression for the surface area is

$$\begin{cases}
 \displaystyle \frac{(2\pi)^{n/2}\,r^{n-1}}{2 \cdot 4 \cdots (n-2)}, & \text{if } n \text{ is even}; \\ \\
 \displaystyle \frac{2(2\pi)^{(n-1)/2}\,r^{n-1}}{1 \cdot 3 \cdots (n-2)}, & \text{if } n \text{ is odd}.
 \end{cases}$$

and the volume is the surface area times or

$$\begin{cases}
 \displaystyle \frac{(2\pi)^{n/2}\,r^n}{2 \cdot 4 \cdots n}, & \text{if } n \text{ is even}; \\ \\
 \displaystyle \frac{2(2\pi)^{(n-1)/2}\,r^n}{1 \cdot 3 \cdots n}, & \text{if } n \text{ is odd}.
 \end{cases}$$

General recursive formulas also exist for the volume of an {{mvar.

Metric spaces

More generally, in a metric space , the sphere of center and radius is the set of points such that .

If the center is a distinguished point that is considered to be the origin of , as in a normed space, it is not mentioned in the definition and notation. The same applies for the radius if it is taken to equal one, as in the case of a unit sphere.

Unlike a ball, even a large sphere may be an empty set. For example, in with Euclidean metric, a sphere of radius is nonempty only if can be written as sum of squares of integers.


Topology

In topology, an -sphere is defined as a space homeomorphic to the boundary of an [[ball_(mathematics)#Topological_balls|.

-   .

-   .


External links

-   Sphere (PlanetMath.org website)
-   Mathematica/Uniform Spherical Distribution
-   Surface area of sphere proof

Category:Differential geometry Category:Differential topology Category:Elementary geometry Category:Elementary shapes Category:Homogeneous spaces Spheres Category:Surfaces Category:Topology

[1] [http://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.04.0057%3Aentry%3Dsfai%3Dra^ σφαῖρα], Henry George Liddell, Robert Scott, _A Greek-English Lexicon_, on Perseus.

[2] .

[3]

[4] .

[5] .

[6] .

[7] .

[8]

[9]

[10]

[11] .

[12]

[13] .

[14] .

[15] .

[16] .

[17]

[18]

[19]

[20]

[21]

[22]