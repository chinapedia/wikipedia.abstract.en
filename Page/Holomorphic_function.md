Conformal_map.svg _f_ (bottom).]] In mathematics, a HOLOMORPHIC FUNCTION is a complex-valued function of one or more complex variables that is, at every point of its domain, complex differentiable in a neighbourhood of the point. The existence of a complex derivative in a neighbourhood is a very strong condition, for it implies that any holomorphic function is actually infinitely differentiable and equal, locally, to its own Taylor series (_analytic_). Holomorphic functions are the central objects of study in complex analysis.

Though the term _analytic function_ is often used interchangeably with "holomorphic function", the word "analytic" is defined in a broader sense to denote any function (real, complex, or of more general type) that can be written as a convergent power series in a neighbourhood of each point in its domain. The fact that all holomorphic functions are complex analytic functions, and vice versa, is a major theorem in complex analysis.[1]

Holomorphic functions are also sometimes referred to as _regular functions_.[2] A holomorphic function whose domain is the whole complex plane is called an entire function. The phrase "holomorphic at a point _z_₀" means not just differentiable at _z_₀, but differentiable everywhere within some neighbourhood of _z_₀ in the complex plane.


Definition

Non-holomorphic_complex_conjugate.svg Given a complex-valued function _f_ of a single complex variable, the DERIVATIVE of _f_ at a point _z_₀ in its domain is defined by the limit[3]

$$f'(z_0) = \lim_{z \to z_0} {f(z) - f(z_0) \over z - z_0 }.$$

This is the same as the definition of the derivative for real functions, except that all of the quantities are complex. In particular, the limit is taken as the complex number _z_ approaches _z_₀, and must have the same value for any sequence of complex values for _z_ that approach _z_₀ on the complex plane. If the limit exists, we say that _f_ is COMPLEX-DIFFERENTIABLE at the point _z_₀. This concept of complex differentiability shares several properties with real differentiability: it is linear and obeys the product rule, quotient rule, and chain rule.[4]

If _f_ is _complex differentiable_ at _every_ point _z_₀ in an open set _U_, we say that _f_ is HOLOMORPHIC ON _U_. We say that _f_ is HOLOMORPHIC AT THE POINT _Z_₀ if _f_ is complex differentiable on some neighbourhood of _z_₀.[5] We say that _f_ is holomorphic on some non-open set _A_ if it is holomorphic in an open set containing _A_. As a pathological non-example, the function given by _f_(_z_) = |_z_|² is complex differentiable at exactly one point (_z_₀ = 0), and for this reason, it is _not_ holomorphic at 0 because there is no open set around 0 on which _f_ is complex differentiable.

The relationship between real differentiability and complex differentiability is the following. If a complex function is holomorphic, then _u_ and _v_ have first partial derivatives with respect to _x_ and _y_, and satisfy the Cauchy–Riemann equations:[6]

$$\frac{\partial u}{\partial x} = \frac{\partial v}{\partial y} \qquad \mbox{and} \qquad \frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x}\,$$

or, equivalently, the Wirtinger derivative of _f_ with respect to the complex conjugate of _z_ is zero:[7]

$$\frac{\partial f}{\partial\overline{z}} = 0,$$

which is to say that, roughly, _f_ is functionally independent from the complex conjugate of _z_.

If continuity is not given, the converse is not necessarily true. A simple converse is that if _u_ and _v_ have _continuous_ first partial derivatives and satisfy the Cauchy–Riemann equations, then _f_ is holomorphic. A more satisfying converse, which is much harder to prove, is the Looman–Menchoff theorem: if _f_ is continuous, _u_ and _v_ have first partial derivatives (but not necessarily continuous), and they satisfy the Cauchy–Riemann equations, then _f_ is holomorphic.[8]


Terminology

The word "holomorphic" was introduced by two of Cauchy's students, Briot (1817–1882) and Bouquet (1819–1895), and derives from the Greek ὅλος (_holos_) meaning "entire", and μορφή (_morphē_) meaning "form" or "appearance".[9]

Today, the term "holomorphic function" is sometimes preferred to "analytic function", as the latter is a more general concept. This is also because an important result in complex analysis is that every holomorphic function is complex analytic, a fact that does not follow obviously from the definitions. The term "analytic" is however also in wide use.


Properties

Because complex differentiation is linear and obeys the product, quotient, and chain rules; the sums, products and compositions of holomorphic functions are holomorphic, and the quotient of two holomorphic functions is holomorphic wherever the denominator is not zero.[10]

If one identifies C with R², then the holomorphic functions coincide with those functions of two real variables with continuous first derivatives which solve the Cauchy–Riemann equations, a set of two partial differential equations.[11]

Every holomorphic function can be separated into its real and imaginary parts, and each of these is a solution of Laplace's equation on R². In other words, if we express a holomorphic function _f_(_z_) as both _u_ and _v_ are harmonic functions, where v is the harmonic conjugate of u.[12]

Cauchy's integral theorem implies that the contour integral of every holomorphic function along a loop vanishes:[13]

∮_(_γ_)_f_(_z_) _d__z_ = 0.

Here _γ_ is a rectifiable path in a simply connected open subset _U_ of the complex plane C whose start point is equal to its end point, and is a holomorphic function.

Cauchy's integral formula states that every function holomorphic inside a disk is completely determined by its values on the disk's boundary.[14] Furthermore: Suppose _U_ is an open subset of C, is a holomorphic function and the closed disk is completely contained in _U_. Let γ be the circle forming the boundary of _D_. Then for every _a_ in the interior of _D_:

$$f(a) = \frac{1}{2\pi i} \oint_\gamma \frac{f(z)}{z-a}\, dz$$

where the contour integral is taken counter-clockwise.

The derivative _f_′(_a_) can be written as a contour integral[15] using CAUCHY'S DIFFERENTIATION FORMULA:

$$f'(a) = {1 \over 2\pi i} \oint_\gamma {f(z) \over (z-a)^{2}}\, dz,$$

for any simple loop positively winding once around _a_, and

$$f'(a) = \lim\limits_{\gamma\to a}\frac i{2\mathcal{A}(\gamma)}\oint_{\gamma}f(z) d\bar z,$$

for infinitesimal positive loops γ around _a_.

In regions where the first derivative is not zero, holomorphic functions are conformal in the sense that they preserve angles and the shape (but not size) of small figures.[16]

Every holomorphic function is analytic. That is, a holomorphic function _f_ has derivatives of every order at each point _a_ in its domain, and it coincides with its own Taylor series at _a_ in a neighbourhood of _a_. In fact, _f_ coincides with its Taylor series at _a_ in any disk centred at that point and lying within the domain of the function.

From an algebraic point of view, the set of holomorphic functions on an open set is a commutative ring and a complex vector space. Additionally, the set of holomorphic functions in an open set U is an integral domain if and only if the open set U is connected. [17] In fact, it is a locally convex topological vector space, with the seminorms being the suprema on compact subsets.

From a geometric perspective, a function _f_ is holomorphic at _z_₀ if and only if its exterior derivative _df_ in a neighbourhood _U_ of _z_₀ is equal to _f_′(_z_) _dz_ for some continuous function _f_′. It follows from

$$\textstyle 0 = d^2 f = d(f^\prime dz) = df^\prime \wedge dz$$

that _df_′ is also proportional to _dz_, implying that the derivative _f_′ is itself holomorphic and thus that _f_ is infinitely differentiable. Similarly, the fact that implies that any function _f_ that is holomorphic on the simply connected region _U_ is also integrable on _U_. (For a path γ from _z_₀ to _z_ lying entirely in _U_, define

$$\textstyle F_\gamma(z) = F_0 + \int_\gamma f dz$$
;

in light of the Jordan curve theorem and the generalized Stokes' theorem, _F__(γ)(_z_) is independent of the particular choice of path γ, and thus _F_(_z_) is a well-defined function on _U_ having and .)


Examples

All polynomial functions in _z_ with complex coefficients are holomorphic on C, and so are sine, cosine and the exponential function. (The trigonometric functions are in fact closely related to and can be defined via the exponential function using Euler's formula). The principal branch of the complex logarithm function is holomorphic on the set The square root function can be defined as

$$\sqrt{z} = e^{\frac{1}{2}\log z}$$

and is therefore holomorphic wherever the logarithm log(_z_) is. The function 1/_z_ is holomorphic on

As a consequence of the Cauchy–Riemann equations, a real-valued holomorphic function must be constant. Therefore, the absolute value of _z_, the argument of _z_, the real part of _z_ and the imaginary part of _z_ are not holomorphic. Another typical example of a continuous function which is not holomorphic is the complex conjugate formed by complex conjugation.


Several variables

The definition of a holomorphic function generalizes to several complex variables in a straightforward way. Let _D_ denote an open subset of C^(_n_), and let . The function _f_ is ANALYTIC at a point _p_ in _D_ if there exists an open neighbourhood of _p_ in which _f_ is equal to a convergent power series in _n_ complex variables.[18] Define _f_ to be HOLOMORPHIC if it is analytic at each point in its domain. Osgood's lemma shows (using the multivariate Cauchy integral formula) that, for a continuous function _f_, this is equivalent to _f_ being holomorphic in each variable separately (meaning that if any coordinates are fixed, then the restriction of _f_ is a holomorphic function of the remaining coordinate). The much deeper Hartogs' theorem proves that the continuity hypothesis is unnecessary: _f_ is holomorphic if and only if it is holomorphic in each variable separately.

More generally, a function of several complex variables that is square integrable over every compact subset of its domain is analytic if and only if it satisfies the Cauchy–Riemann equations in the sense of distributions.

Functions of several complex variables are in some basic ways more complicated than functions of a single complex variable. For example, the region of convergence of a power series is not necessarily an open ball; these regions are Reinhardt domains, the simplest example of which is a polydisk. However, they also come with some fundamental restrictions. Unlike functions of a single complex variable, the possible domains on which there are holomorphic functions that cannot be extended to larger domains are highly limited. Such a set is called a domain of holomorphy.


Extension to functional analysis

The concept of a holomorphic function can be extended to the infinite-dimensional spaces of functional analysis. For instance, the Fréchet or Gateaux derivative can be used to define a notion of a holomorphic function on a Banach space over the field of complex numbers.


See also

-   Antiderivative (complex analysis)
-   Antiholomorphic function
-   Biholomorphy
-   Holomorphic separability
-   Meromorphic function
-   Quadrature domains
-   Harmonic maps
-   Harmonic morphisms
-   Wirtinger derivatives


References


Further reading

-


External links

-

Category:Analytic functions

[1] _Analytic functions of one complex variable_, Encyclopedia of Mathematics. (European Mathematical Society ft. Springer, 2015)

[2] Springer Online Reference Books, Wolfram MathWorld

[3] Ahlfors, L., _Complex Analysis, 3 ed._ (McGraw-Hill, 1979).

[4] Henrici, P., _Applied and Computational Complex Analysis_ (Wiley). [Three volumes: 1974, 1977, 1986.]

[5] Peter Ebenfelt, Norbert Hungerbühler, Joseph J. Kohn, Ngaiming Mok, Emil J. Straube (2011) _Complex Analysis_ Springer Science & Business Media

[6] Markushevich, A.I.,_Theory of Functions of a Complex Variable_ (Prentice-Hall, 1965). [Three volumes.]

[7]

[8] .

[9]

[10] .

[11]

[12] .

[13]

[14]

[15]

[16]

[17]

[18] Gunning and Rossi, _Analytic Functions of Several Complex Variables_, p. 2.