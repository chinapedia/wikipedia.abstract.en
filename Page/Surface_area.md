Sphere_wireframe_10deg_6r.svg of radius r has surface area 4πr²]] The SURFACE AREA of a solid object is a measure of the total area that the surface of the object occupies.[1] The mathematical definition of surface area in the presence of curved surfaces is considerably more involved than the definition of arc length of one-dimensional curves, or of the surface area for polyhedra (i.e., objects with flat polygonal faces), for which the surface area is the sum of the areas of its faces. Smooth surfaces, such as a sphere, are assigned surface area using their representation as parametric surfaces. This definition of surface area is based on methods of infinitesimal calculus and involves partial derivatives and double integration.

A general definition of surface area was sought by Henri Lebesgue and Hermann Minkowski at the turn of the twentieth century. Their work led to the development of geometric measure theory, which studies various notions of surface area for irregular objects of any dimension. An important example is the Minkowski content of a surface.


Definition

While the areas of many simple surfaces have been known since antiquity, a rigorous mathematical _definition_ of area requires a great deal of care. This should provide a function

    S ↦ A(S)

which assigns a positive real number to a certain class of surfaces that satisfies several natural requirements. The most fundamental property of the surface area is its ADDITIVITY: _the area of the whole is the sum of the areas of the parts_. More rigorously, if a surface _S_ is a union of finitely many pieces _S_₁, …, _S__(_r_) which do not overlap except at their boundaries, then

    A(S) = A(S₁) + ⋯ + A(S_(r)).

Surface areas of flat polygonal shapes must agree with their geometrically defined area. Since surface area is a geometric notion, areas of congruent surfaces must be the same and the area must depend only on the shape of the surface, but not on its position and orientation in space. This means that surface area is invariant under the group of Euclidean motions. These properties uniquely characterize surface area for a wide class of geometric surfaces called _piecewise smooth_. Such surfaces consist of finitely many pieces that can be represented in the parametric form

    S_(D) : r⃗ = r⃗(u, v), (u, v) ∈ D

with a continuously differentiable function r⃗. The area of an individual piece is defined by the formula

    A(S_(D)) = ∬_(D)|r⃗_(u)×r⃗_(v)| du dv.

Thus the area of _S__(_D_) is obtained by integrating the length of the normal vector r⃗_(u) × r⃗_(v) to the surface over the appropriate region _D_ in the parametric _uv_ plane. The area of the whole surface is then obtained by adding together the areas of the pieces, using additivity of surface area. The main formula can be specialized to different classes of surfaces, giving, in particular, formulas for areas of graphs _z_ = _f_(_x_,_y_) and surfaces of revolution.

Schwarz-lantern.gif with M axial slices and N radial vertices. The limit of the area as M and N tend to infinity doesn't converge. In particular it doesn't converge to the area of the cylinder.]]One of the subtleties of surface area, as compared to arc length of curves, is that surface area cannot be defined simply as the limit of areas of polyhedral shapes approximating a given smooth surface. It was demonstrated by Hermann Schwarz that already for the cylinder, different choices of approximating flat surfaces can lead to different limiting values of the area; this example is known as the Schwarz lantern.[2][3]

Various approaches to a general definition of surface area were developed in the late nineteenth and the early twentieth century by Henri Lebesgue and Hermann Minkowski. While for piecewise smooth surfaces there is a unique natural notion of surface area, if a surface is very irregular, or rough, then it may not be possible to assign an area to it at all. A typical example is given by a surface with spikes spread throughout in a dense fashion. Many surfaces of this type occur in the study of fractals. Extensions of the notion of area which partially fulfill its function and may be defined even for very badly irregular surfaces are studied in geometric measure theory. A specific example of such an extension is the Minkowski content of the surface.


Common formulas

+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Shape                          | Equation                                                                               | Variables                                                                                                                           |
+================================+========================================================================================+=====================================================================================================================================+
| Cube                           | 6s²                                                                                    | _s_ = side length                                                                                                                   |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Cuboid                         | 2(ℓw + ℓh + wh)                                                                        | _ℓ_ = length, _w_ = width, _h_ = height                                                                                             |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Triangular prism               | bh + l(a + b + c)                                                                      | _b_ = base length of triangle, _h_ = height of triangle, _l_ = distance between triangular bases, _a_, _b_, _c_ = sides of triangle |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| All prisms                     | 2B + Ph                                                                                | _B_ = the area of one base, _P_ = the perimeter of one base, _h_ = height                                                           |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Sphere                         | 4πr² = πd²                                                                             | _r_ = radius of sphere, _d_ = diameter                                                                                              |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Spherical lune                 | 2r²θ                                                                                   | _r_ = radius of sphere, _θ_ = dihedral angle                                                                                        |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Torus                          | (2πr)(2πR) = 4π²Rr                                                                     | _r_ = minor radius (radius of the tube), _R_ = major radius (distance from center of tube to center of torus)                       |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Closed cylinder                | 2πr² + 2πrh = 2πr(r + h)                                                               | _r_ = radius of the circular base, _h_ = height of the cylinder                                                                     |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Lateral surface area of a cone | $\pi r \left(\sqrt{r^2+h^2}\right) = \pi rs \,$                                        | $s = \sqrt{r^2+h^2}$                                                                                                                |
|                                |                                                                                        | _s_ = slant height of the cone,                                                                                                     |
|                                |                                                                                        | _r_ = radius of the circular base,                                                                                                  |
|                                |                                                                                        | _h_ = height of the cone                                                                                                            |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Full surface area of a cone    | $\pi r \left(r + \sqrt{r^2+h^2}\right) = \pi r(r + s) \,$                              | _s_ = slant height of the cone,                                                                                                     |
|                                |                                                                                        | _r_ = radius of the circular base,                                                                                                  |
|                                |                                                                                        | _h_ = height of the cone                                                                                                            |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Pyramid                        | $B + \frac{PL}{2}$                                                                     | _B_ = area of base, _P_ = perimeter of base, _L_ = slant height                                                                     |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Square pyramid                 | $b^2 + 2bs = b^2 + 2b\sqrt{\left(\frac{b}{2}\right)^2+h^2}$                            | _b_ = base length, _s_ = slant height, _h_ = vertical height                                                                        |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Rectangular pyramid            | $lw + l\sqrt{\left(\frac{w}{2}\right)^2+h^2} + w\sqrt{\left(\frac{l}{2}\right)^2+h^2}$ | _ℓ_ = length, _w_ = width, _h_ = height                                                                                             |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Tetrahedron                    | $\sqrt{3}a^2$                                                                          | _a_ = side length                                                                                                                   |
+--------------------------------+----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

: Surface areas of common solids

Ratio of surface areas of a sphere and cylinder of the same radius and height

Inscribed_cone_sphere_cylinder.svg The below given formulas can be used to show that the surface area of a sphere and cylinder of the same radius and height are in the ratio 2 : 3, as follows.

Let the radius be _r_ and the height be _h_ (which is 2_r_ for the sphere).

$\begin{array}{rlll}
\text{Sphere surface area}   & = 4 \pi r^2      &                    & = (2 \pi r^2) \times 2 \\
\text{Cylinder surface area} & = 2 \pi r (h + r) & = 2 \pi r (2r + r) & = (2 \pi r^2) \times 3
\end{array}$

The discovery of this ratio is credited to Archimedes.[4]


In chemistry

Surface_area.svg Surface area is important in chemical kinetics. Increasing the surface area of a substance generally increases the rate of a chemical reaction. For example, iron in a fine powder will combust, while in solid blocks it is stable enough to use in structures. For different applications a minimal or maximal surface area may be desired.


In biology

Mitochondrion_186.jpg has a large surface area due to infoldings, allowing higher rates of cellular respiration (electron micrograph).]] The surface area of an organism is important in several considerations, such as regulation of body temperature and digestion. Animals use their teeth to grind food down into smaller particles, increasing the surface area available for digestion. The epithelial tissue lining the digestive tract contains microvilli, greatly increasing the area available for absorption. Elephants have large ears, allowing them to regulate their own body temperature. In other instances, animals will need to minimize surface area; for example, people will fold their arms over their chest when cold to minimize heat loss.

The surface area to volume ratio (SA:V) of a cell imposes upper limits on size, as the volume increases much faster than does the surface area, thus limiting the rate at which substances diffuse from the interior across the cell membrane to interstitial spaces or to other cells. Indeed, representing a cell as an idealized sphere of radius _r_, the volume and surface area are, respectively, _V_ = 4/3 π _r_³; _SA_ = 4 π _r_². The resulting surface area to volume ratio is therefore 3/_r_. Thus, if a cell has a radius of 1 μm, the SA:V ratio is 3; whereas if the radius of the cell is instead 10 μm, then the SA:V ratio becomes 0.3. With a cell radius of 100, SA:V ratio is 0.03. Thus, the surface area falls off steeply with increasing volume.


See also

-   Perimeter length
-   BET theory, technique for the measurement of the specific surface area of materials
-   Spherical area
-   Surface integral


References

-


External links

-   Surface Area Video at Thinkwell

Category:Area

[1]

[2]

[3]

[4]