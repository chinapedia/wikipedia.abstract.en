Complexity theory}}

Color_complex_plot.jpg of the function (_z_² − 1)(_z_ + 2 − _i_)²}} .
Hue represents the argument, brightness the magnitude.]]

COMPLEX ANALYSIS, traditionally known as the THEORY OF FUNCTIONS OF A COMPLEX VARIABLE, is the branch of mathematical analysis that investigates functions of complex numbers. It is useful in many branches of mathematics, including algebraic geometry, number theory, analytic combinatorics, applied mathematics; as well as in physics, including the branches of hydrodynamics, thermodynamics, and particularly quantum mechanics. By extension, use of complex analysis also has applications in engineering fields such as nuclear, aerospace, mechanical and electrical engineering.

As a differentiable function of a complex variable is equal to the sum of its Taylor series (that is, it is analytic), complex analysis is particularly concerned with analytic functions of a complex variable (that is, holomorphic functions).


History

Mandel_zoom_00_mandelbrot_set.jpg, a fractal]] Complex analysis is one of the classical branches in mathematics, with roots in the 18th century and just prior. Important mathematicians associated with complex numbers include Euler, Gauss, Riemann, Cauchy, Weierstrass, and many more in the 20th century. Complex analysis, in particular the theory of conformal mappings, has many physical applications and is also used throughout analytic number theory. In modern times, it has become very popular through a new boost from complex dynamics and the pictures of fractals produced by iterating holomorphic functions. Another important application of complex analysis is in string theory which studies conformal invariants in quantum field theory.


Complex functions

Exponentials_of_complex_number_within_unit_circle.svg function of a discrete (integer) variable , similar to geometric progression]] A complex function is a function from complex numbers to complex numbers. In other words, it is a function that has a subset of the complex numbers as a domain and the complex numbers as a codomain. Complex functions are generally supposed to have a domain that contains a nonempty open subset of the complex plane.

For any complex function, the values z from the domain and their images f(z) in the range may be separated into real and imaginary parts:

    z = x + iy  and  f(z) = f(x + iy) = u(x, y) + iv(x, y),

where x, y, u(x, y), v(x, y) are all real-valued.

In other words, a complex function f : ℂ → ℂ may be decomposed into

    u : ℝ² → ℝ  and  v : ℝ² → ℝ,

i.e., into two real-valued functions (u, v) of two real variables (x, y).

Similarly, any complex-valued function on an arbitrary set can be considered as an ordered pair of two real-valued functions: or, alternatively, as a vector-valued function from into ℝ².

Some properties of complex-valued functions (such as continuity) are nothing more than the corresponding properties of vector valued functions of two real variables. Other concepts of complex analysis, such as differentiability are direct generalizations of the similar concepts for real functions, but may have very different properties. In particular, every differentiable complex function is analytic (see next section), and two differentiable functions that are equal in a neighborhood of a point are equal on the intersection of their domain (if the domains are connected). The latter property is the basis of the principle of analytic continuation which allows extending every real analytic function in a unique way for getting a complex analytic function whose domain is the whole complex plane with a finite number of curve arcs removed. Many basic and special complex functions are defined in this way, including exponential functions, logarithmic functions, and trigonometric functions.


Holomorphic functions

Complex functions that are differentiable at every point of an open subset Ω of the complex plane are said to be _holomorphic_ _on_ Ω. In the context of complex analysis, the derivative of f at z₀ is defined to be

    $f'(z_0)=\lim_{z\to z_0} \frac{f(z)-f(z_0)}{z-z_0}, \quad z\in \mathbb{C}.$

Superficially, this definition is formally analogous to that of the derivative of a real function. However, complex derivatives and differentiable functions behave in significantly different ways compared to their real counterparts. In particular, for this limit to exist, the value of the difference quotient must approach the same complex number, regardless of the manner in which we approach z₀ in the complex plane. Consequently, complex differentiability has much stronger implications than real differentiability. For instance, holomorphic functions are infinitely differentiable, whereas the existence of the _n_th derivative need not imply the existence of the (_n_ + 1)th derivative for real functions. Furthermore, all holomorphic functions satisfy the stronger condition of analyticity, meaning that the function is, at every point in its domain, locally given by a convergent power series. In essence, this means that functions holomorphic on Ω can be approximated arbitrarily well by polynomials in some neighborhood of every point in Ω. This stands in sharp contrast to differentiable real functions; even infinitely differentiable real functions can be _nowhere_ analytic.

Most elementary functions, including the exponential function, the trigonometric functions, and all polynomial functions, extended appropriately to complex arguments as functions ℂ → ℂ, are holomorphic over the entire complex plane, making them _entire_ _functions_, while rational functions p/q, where _p_ and _q_ are polynomials, are holomorphic on domains that exclude points where _q_ is zero. Such functions that are holomorphic everywhere except a set of isolated points are known as _meromorphic functions_. On the other hand, the functions z ↦ ℜ(z), z ↦ |z|, and z ↦ z̄ are not holomorphic anywhere on the complex plane, as can be shown by their failure to satisfy the Cauchy–Riemann conditions (see below).

An important property of holomorphic functions is the relationship between the partial derivatives of their real and imaginary components, known as the Cauchy–Riemann conditions. If f : ℂ → ℂ, defined by f(z) = f(x + iy) = u(x, y) + iv(x, y), where x, y, u(x, y), v(x, y) ∈ ℝ, is holomorphic on a region Ω, then _(∂f/∂z̄)(z₀) = 0_ must hold for all z₀ ∈ Ω. Here, the differential operator ∂/∂z̄ is defined as (1/2)(∂/∂x + i∂/∂y)_._ In terms of the real and imaginary parts of the function, _u_ and _v_, this is equivalent to the pair of equations u_(x) = v_(y) and u_(y) =  − v_(x), where the subscripts indicate partial differentiation. However, the Cauchy–Riemann conditions do not characterize holomorphic functions, without additional continuity conditions (see Looman–Menchoff theorem).

Holomorphic functions exhibit some remarkable features. For instance, Picard's theorem asserts that the range of an entire function can only take three possible forms: ℂ, ℂ ∖ {z₀}, or {z₀} for some z₀ ∈ ℂ. In other words, if two distinct complex numbers z and w are not in the range of entire function f, then f is a constant function. Moreover, given a holomorphic function f defined on an open set U, the analytic continuation of f to a larger open set V ⊃ U is unique. As a result, the value of a holomorphic function over an arbitrarily small region in fact determines the value of the function everywhere to which it can be extended as a holomorphic function.

_See also_: analytic function, coherent sheaf and vector bundles.


Major results

One of the central tools in complex analysis is the line integral. The line integral around a closed path of a function that is holomorphic everywhere inside the area bounded by the closed path is always zero, as is stated by the Cauchy integral theorem. The values of such a holomorphic function inside a disk can be computed by a path integral on the disk's boundary (as shown in Cauchy's integral formula). Path integrals in the complex plane are often used to determine complicated real integrals, and here the theory of residues among others is applicable (see methods of contour integration). A "pole" (or isolated singularity) of a function is a point where the function's value becomes unbounded, or "blows up". If a function has such a pole, then one can compute the function's residue there, which can be used to compute path integrals involving the function; this is the content of the powerful residue theorem. The remarkable behavior of holomorphic functions near essential singularities is described by Picard's Theorem. Functions that have only poles but no essential singularities are called meromorphic. Laurent series are the complex-valued equivalent to Taylor series, but can be used to study the behavior of functions near singularities through infinite sums of more well understood functions, such as polynomials.

A bounded function that is holomorphic in the entire complex plane must be constant; this is Liouville's theorem. It can be used to provide a natural and short proof for the fundamental theorem of algebra which states that the field of complex numbers is algebraically closed.

If a function is holomorphic throughout a connected domain then its values are fully determined by its values on any smaller subdomain. The function on the larger domain is said to be analytically continued from its values on the smaller domain. This allows the extension of the definition of functions, such as the Riemann zeta function, which are initially defined in terms of infinite sums that converge only on limited domains to almost the entire complex plane. Sometimes, as in the case of the natural logarithm, it is impossible to analytically continue a holomorphic function to a non-simply connected domain in the complex plane but it is possible to extend it to a holomorphic function on a closely related surface known as a Riemann surface.

All this refers to complex analysis in one variable. There is also a very rich theory of complex analysis in more than one complex dimension in which the analytic properties such as power series expansion carry over whereas most of the geometric properties of holomorphic functions in one complex dimension (such as conformality) do not carry over. The Riemann mapping theorem about the conformal relationship of certain domains in the complex plane, which may be the most important result in the one-dimensional theory, fails dramatically in higher dimensions.

A major use of certain complex spaces is in quantum mechanics as wave functions.


See also

-   Analytic continuation
-   Complex dynamics
-   List of complex analysis topics
-   Monodromy theorem
-   Real analysis
-   Runge's theorem
-   Several complex variables


References

-   Ahlfors, L., _Complex Analysis, 3 ed._ (McGraw-Hill, 1979).
-   Stephen D. Fisher, _Complex Variables, 2 ed._ (Dover, 1999).
-   Carathéodory, C., _Theory of Functions of a Complex Variable_ (Chelsea, New York). [2 volumes.]
-   Henrici, P., _Applied and Computational Complex Analysis_ (Wiley). [Three volumes: 1974, 1977, 1986.]
-   Kreyszig, E., _Advanced Engineering Mathematics, 10 ed._, Ch. 13–18 (Wiley, 2011).
-   Markushevich, A.I.,_Theory of Functions of a Complex Variable_ (Prentice-Hall, 1965). [Three volumes.]
-   Marsden & Hoffman, _Basic Complex Analysis. 3 ed._ (Freeman, 1999).
-   Needham, T., _Visual Complex Analysis_ (Oxford, 1997).
-   Rudin, W., _Real and Complex Analysis, 3 ed._ (McGraw-Hill, 1986).
-   Scheidemann, V., _Introduction to complex analysis in several variables_ (Birkhauser, 2005)
-   Shaw, W.T., _Complex Analysis with Mathematica_ (Cambridge, 2006).
-   Spiegel, Murray R. _Theory and Problems of Complex Variables – with an introduction to Conformal Mapping and its applications_ (McGraw-Hill, 1964).
-   Stein & Shakarchi, _Complex Analysis_ (Princeton, 2003).
-   Ablowitz & Fokas, _Complex Variables: Introduction and Applications_ (Cambridge, 2003).


External links

-   Wolfram Research's MathWorld Complex Analysis Page

Complex_analysis