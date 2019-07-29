3D_Spherical.svg convention): radial distance , polar angle (theta), and azimuthal angle (phi). The symbol (rho) is often used instead of .]]

3D_Spherical_2.svg

Spherical_coordinate_system.svg. In this image, equals 4/6, equals 90°, and equals 30°.]]

In mathematics, a SPHERICAL COORDINATE SYSTEM is a coordinate system for three-dimensional space where the position of a point is specified by three numbers: the _radial distance_ of that point from a fixed origin, its _polar angle_ measured from a fixed zenith direction, and the _azimuth angle_ of its orthogonal projection on a reference plane that passes through the origin and is orthogonal to the zenith, measured from a fixed reference direction on that plane. It can be seen as the three-dimensional version of the polar coordinate system.

The radial distance is also called the _radius_ or _radial coordinate_. The polar angle may be called _colatitude_, _zenith angle_, _normal angle_, or _inclination angle_.

The use of symbols and the order of the coordinates differs between sources. In one system frequently encountered in physics (, [[theta| = \arccos\frac{z}{r} \\ \varphi &= \arctan \frac{y}{x} \end{align}

The inverse tangent denoted in arctan }} must be suitably defined, taking into account the correct quadrant of . See the article on atan2.

Alternatively, the conversion can be considered as two sequential rectangular to polar conversions: the first in the Cartesian -plane from to , where is the projection of onto the -plane, and the second in the Cartesian -plane from to . The correct quadrants for and are implied by the correctness of the planar rectangular to polar conversions.

These formulae assume that the two systems have the same origin, that the spherical reference plane is the Cartesian -plane, that is inclination from the direction, and that the azimuth angles are measured from the Cartesian -axis (so that the -axis has +90°}}). If _θ_ measures elevation from the reference plane instead of inclination from the zenith the arccos above becomes an arcsin, and the and below become switched.

Conversely, the Cartesian coordinates may be retrieved from the spherical coordinates (_radius_ , _inclination_ , _azimuth_ ), where , , , by:

: $\begin{align} x&=r \, \sin\theta \, \cos\varphi \\ y&=r \, \sin\theta \, \sin\varphi \\ z&=r \, \cos\theta\end{align}$

Cylindrical coordinates

Cylindrical coordinates (_radius_ , _azimuth_ , _elevation_ ) may be converted into spherical coordinates (_radius_ , _inclination_ , _azimuth_ ), by the formulas

    $\begin{align} r&=\sqrt{\rho^2 + z^2} \\ \theta&=\arctan\frac{\rho}{z}=\arccos\frac{z}{\sqrt{\rho^2 + z^2}} \\ \varphi&=\varphi \end{align}$

Conversely, the spherical coordinates may be converted into cylindrical coordinates by the formulae

    $\begin{align} \rho &= r \sin \theta \\ \varphi &= \varphi \\ z &= r \cos \theta \end{align}$

These formulae assume that the two systems have the same origin and same reference plane, measure the azimuth angle in the same senses from the same axis, and that the spherical angle is inclination from the cylindrical -axis.


Integration and differentiation in spherical coordinates

The following equations assume that is inclination from the (polar) axis (ambiguous since , , and are mutually normal):

The line element for an infinitesimal displacement from to is



\mathrm{d}\mathbf{r} = \mathrm{d}r\,\hat{\mathbf r} + r\,\mathrm{d}\theta \,\hat{\boldsymbol\theta } + r \sin{\theta} \, \mathrm{d}\varphi\,\mathbf{\hat{\boldsymbol\varphi}}. where

$$\begin{align}
\hat{\mathbf r}
&=\sin \theta \cos \varphi \,\hat{\mathbf x} +
\sin \theta \sin \varphi \,\hat{\mathbf y} +
\cos \theta \,\hat{\mathbf z}
\\[5px]
\hat{\boldsymbol\theta}
&=\cos \theta \cos \varphi \,\hat{\mathbf x} +
\cos \theta \sin \varphi \,\hat{\mathbf y}
-\sin \theta \,\hat{\mathbf z}
\\[5px]
\hat{\boldsymbol\varphi}
&=-\sin \varphi \,\hat{\mathbf x}
+ \cos \varphi \,\hat{\mathbf y}
\end{align}$$
are the local orthogonal unit vectors in the directions of increasing , , and , respectively, and , , and are the unit vectors in Cartesian coordinates.

The general form of the formula to prove the differential line element, is[1]

$\mathrm{d}\mathbf{r}=\sum_i\frac{\partial \mathbf{r}}{\partial x_i}\mathrm{dx_i}=\sum_i \left|\frac{\partial \mathbf{r} }{\partial x_i}\right| \frac{\frac{\partial \mathbf{r} }{\partial x_i} }
{\left|\frac{ \partial \mathbf{r} }{\partial x_i}\right|} \mathrm{dx_i}=\sum_i \left| \frac{\partial \mathbf{r} }{\partial x_i} \right| \mathrm{dx_i}\hat{\boldsymbol{x}}_i$

that is, the change in R is decomposed into individual changes corresponding to changes in the individual coordinates. To apply this to the present case, you need to calculate how R changes with each of the coordinates. With the conventions being used, we have

$\mathbf{r}=\begin{bmatrix}r\sin\theta\cos\phi\\ r\sin\theta\sin\phi\\ r\cos\theta\end{bmatrix}$

Thus

$\frac{\partial\mathbf r}{\partial r}=\begin{bmatrix}\sin\theta\cos\phi \\ \sin\theta\sin\phi \\ \cos\theta\end{bmatrix} \,,
\frac{\partial\mathbf r}{\partial \theta}=\begin{bmatrix}r\cos\theta\cos\phi \\ r\cos\theta\sin\phi \\ -r\sin\theta\end{bmatrix} \,,
\frac{\partial\mathbf r}{\partial \phi}=\begin{bmatrix}-r\sin\theta\sin\phi \\ r\sin\theta\cos\phi \\ 0\end{bmatrix} \,$

Then the desired coefficients are the magnitudes of these vectors:

$\begin{align}
\left| \frac{\partial\mathbf r}{\partial r}\right| = 1 \\
\left| \frac{\partial\mathbf r}{\partial \theta}\right| = r \\
\left| \frac{\partial\mathbf r}{\partial \phi}\right| = r\sin\theta \\
\end{align}$ [2]

The surface element spanning from to and to on a spherical surface at (constant) radius is

$$\mathrm{d}S_r=\left\|{\partial r\hat{\mathbf r} \over \partial \theta}\times {\partial r\hat{\mathbf r} \over \partial \varphi}\right\|\mathrm{d}\theta\,\mathrm{d}\varphi=r^2\sin\theta\,\mathrm{d}\theta\,\mathrm{d}\varphi.$$

Thus the differential solid angle is

    $\mathrm{d}\Omega=\frac{\mathrm{d}S_r}{r^2}=\sin\theta\,\mathrm{d}\theta\,\mathrm{d}\varphi.$

The surface element in a surface of polar angle constant (a cone with vertex the origin) is

    dS_(θ) = rsin θ dφ dr.

The surface element in a surface of azimuth constant (a vertical half-plane) is

    dS_(φ) = r dr dθ.

The volume element spanning from to , to , and to is (determinant of the Jacobian matrix of partial derivatives):

$$\mathrm{d}V =  \left |\frac{\partial(x,y,z)}{\partial (r,\theta,\phi)}\right|
= r^2 \sin \theta \,\mathrm{d}r\,\mathrm{d}\theta\,\mathrm{d}\varphi = r^2 \, \mathrm{d}r \, \mathrm{d}\Omega.$$

Thus, for example, a function can be integrated over every point in ℝ³ by the triple integral

    $\ \int\limits_{\varphi=0}^{2 \pi}\ \int\limits_{\theta=0}^{\pi}\ \int\limits_{r=0}^{\infty} f(r,\theta,\varphi) r^2 \sin \theta \,\mathrm{d}r\,\mathrm{d}\theta\,\mathrm{d}\varphi.$

The del operator in this system leads to the following expressions for gradient, divergence, curl and Laplacian:



\begin{align} \nabla f = {} &{\partial f \over \partial r}\hat{\mathbf r}

 + {1 \over r}{\partial f \over \partial \theta}\hat{\boldsymbol\theta}
 + {1 \over r\sin\theta}{\partial f \over \partial \varphi}\hat{\boldsymbol\varphi}, \\[8pt]

\nabla\cdot \mathbf{A} = {} & \frac{1}{r^2}{\partial \over \partial r}\left( r^2 A_r \right) + \frac{1}{r \sin\theta}{\partial \over \partial\theta} \left( \sin\theta A_\theta \right) + \frac{1}{r \sin \theta} {\partial A_\varphi \over \partial \varphi}, \\[8pt] \nabla \times \mathbf{A} = {} & \frac{1}{r\sin\theta}\left({\partial \over \partial \theta} \left( A_\varphi\sin\theta \right)

   - {\partial A_\theta \over \partial \varphi}\right) \hat{\mathbf r} \\[8pt]

& {} + \frac 1 r \left({1 \over \sin\theta}{\partial A_r \over \partial \varphi}

   - {\partial \over \partial r} \left( r A_\varphi \right) \right) \hat{\boldsymbol\theta} \\[8pt]

& {} + \frac 1 r \left({\partial \over \partial r} \left( r A_\theta \right)

   - {\partial A_r \over \partial \theta}\right) \hat{\boldsymbol\varphi}, \\[8pt]

\nabla^2 f = {} & {1 \over r^2}{\partial \over \partial r} \left(r^2 {\partial f \over \partial r}\right) + {1 \over r^2 \sin\theta}{\partial \over \partial \theta} \left(\sin\theta {\partial f \over \partial \theta}\right) + {1 \over r^2 \sin^2\theta}{\partial^2 f \over \partial \varphi^2} \\[8pt] = {} & \left(\frac{\partial^2}{\partial r^2} + \frac{2}{r} \frac{\partial}{\partial r}\right)f + {1 \over r^2 \sin\theta}{\partial \over \partial \theta} \left(\sin\theta \frac{\partial}{\partial \theta}\right)f + \frac{1}{r^2 \sin^2\theta}\frac{\partial^2}{\partial \varphi^2}f. \end{align}


Kinematics

In spherical coordinates the position of a point is written

    R = rR̂.

Its velocity is then

    $\mathbf{v} = \dot{r} \mathbf{\hat r} + r\,\dot\theta\,\hat{\boldsymbol\theta } + r\,\dot\varphi \sin\theta\,\mathbf{\hat{\boldsymbol\varphi}},$

and its acceleration is



\begin{align} \mathbf{a} & = \left( \ddot{r} - r\,\dot\theta^2 - r\,\dot\varphi^2\sin^2\theta \right)\mathbf{\hat r} \\ & {} + \left( r\,\ddot\theta + 2\dot{r}\,\dot\theta - r\,\dot\varphi^2\sin\theta\cos\theta \right) \hat{\boldsymbol\theta } \\ & {} + \left( r\ddot\varphi\,\sin\theta + 2\dot{r}\,\dot\varphi\,\sin\theta + 2 r\,\dot\theta\,\dot\varphi\,\cos\theta \right) \hat{\boldsymbol\varphi}. \end{align}

In the case of a constant or }}, this reduces to vector calculus in polar coordinates.


See also

-   Celestial coordinate system
-   Coordinate system
-   Del in cylindrical and spherical coordinates
-   Elevation (ballistics)
-   Euler angles
-   Gimbal lock
-   Hypersphere
-   Jacobian matrix and determinant
-   List of canonical coordinate transformations
-   Sphere
-   Spherical harmonic
-   Theodolite
-   Vector fields in cylindrical and spherical coordinates
-   Yaw, pitch and roll


Notes


Bibliography

-   -   -   -   -   -


External links

-   -   MathWorld description of spherical coordinates
-   Coordinate Converter — converts between polar, Cartesian and spherical coordinates
-   Conventions for Spherical Coordinates Description of the different conventions in use for naming components of spherical coordinates, along with a proposal for standardizing this.

fi:Koordinaatisto#Pallokoordinaatisto

Category:Coordinate systems

[1]

[2]