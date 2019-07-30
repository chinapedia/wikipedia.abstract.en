In integral calculus, ELLIPTIC INTEGRALS originally arose in connection with the problem of giving the arc length of an ellipse. They were first studied by Giulio Fagnano and Leonhard Euler (). Modern mathematics defines an "elliptic integral" as any function which can be expressed in the form

    $f(x) = \int_{c}^{x} R \left(t, \sqrt{P(t)} \right) \, dt,$

where is a rational function of its two arguments, is a polynomial of degree 3 or 4 with no repeated roots, and is a constant.

In general, integrals in this form cannot be expressed in terms of elementary functions. Exceptions to this general rule are when has repeated roots, or when contains no odd powers of . However, with the appropriate reduction formula, every elliptic integral can be brought into a form that involves integrals over rational functions and the three Legendre canonical forms (i.e. the elliptic integrals of the first, second and third kind).

Besides the Legendre form given below, the elliptic integrals may also be expressed in Carlson symmetric form. Additional insight into the theory of the elliptic integral may be gained through the study of the Schwarz–Christoffel mapping. Historically, elliptic functions were discovered as inverse functions of elliptic integrals.


Argument notation

_Incomplete elliptic integrals_ are functions of two arguments; _complete elliptic integrals_ are functions of a single argument. These arguments are expressed in a variety of different but equivalent ways (they give the same elliptic integral). Most texts adhere to a canonical naming scheme, using the following naming conventions.

For expressing one argument:

-   , the _modular angle_

-   sin _α_}}, the _elliptic modulus_ or _eccentricity_

-   _k_² {{=}} sin² _α_}}, _the parameter_

Each of the above three quantities is completely determined by any of the others (given that they are non-negative). Thus, they can be used interchangeably.

The other argument can likewise be expressed as , the _amplitude_, or as or , where sin _φ_ {{=}} sn _u_}} and is one of the Jacobian elliptic functions.

Specifying the value of any one of these quantities determines the others. Note that also depends on . Some additional relationships involving _u_ include

    $\cos \varphi = \operatorname{cn} u, \quad \textrm{and} \quad \sqrt{1 - m \sin^2 \varphi} = \operatorname{dn} u.$

The latter is sometimes called the _delta amplitude_ and written as dn _u_}}. Sometimes the literature also refers to the _complementary parameter_, the _complementary modulus,_ or the _complementary modular angle_. These are further defined in the article on quarter periods.


Incomplete elliptic integral of the first kind

The INCOMPLETE ELLIPTIC INTEGRAL OF THE FIRST KIND is defined as

    $F(\varphi,k) = F\left(\varphi \,|\, k^2\right) = F(\sin \varphi ; k) = \int_0^\varphi \frac {d\theta}{\sqrt{1 - k^2 \sin^2 \theta}}.$

This is the trigonometric form of the integral; substituting sin _θ_}} and sin _φ_}}, one obtains the Legendre normal form:

    $F(x ; k) = \int_{0}^{x} \frac{dt}{\sqrt{\left(1 - t^2\right)\left(1 - k^2 t^2\right)}}.$

Equivalently, in terms of the amplitude and modular angle one has:

    $F(\varphi \setminus \alpha) = F(\varphi, \sin \alpha) = \int_0^\varphi \frac{d \theta}{\sqrt{1-(\sin \theta \sin \alpha)^2}}.$

In this notation, the use of a vertical bar as delimiter indicates that the argument following it is the "parameter" (as defined above), while the backslash indicates that it is the modular angle. The use of a semicolon implies that the argument preceding it is the sine of the amplitude:

    F(φ, sin α) = F(φ | sin²α) = F(φ \ α) = F(sin φ; sin α).

This potentially confusing use of different argument delimiters is traditional in elliptic integrals and much of the notation is compatible with that used in the reference book by Abramowitz and Stegun and that used in the integral tables by Gradshteyn and Ryzhik.

With sn(_u_,_k_)}} one has:

    F(x; k) = u;

thus, the Jacobian elliptic functions are inverses to the elliptic integrals.

Notational variants

There are still other conventions for the notation of elliptic integrals employed in the literature. The notation with interchanged arguments, , is often encountered; and similarly for the integral of the second kind. Abramowitz and Stegun substitute the integral of the first kind, , for the argument in their definition of the integrals of the second and third kinds, unless this argument is followed by a vertical bar: i.e. _k_²)}} for _k_²)}}. Moreover, their complete integrals employ the _parameter_ as argument in place of the modulus , i.e. rather than . And the integral of the third kind defined by Gradshteyn and Ryzhik, , puts the amplitude first and not the "characteristic" .

Thus one must be careful with the notation when using these functions, because various reputable references and software packages use different conventions in the definitions of the elliptic functions. For example, some references, and Wolfram's Mathematica software and Wolfram Alpha, define the complete elliptic integral of the first kind in terms of the parameter , instead of the elliptic modulus .

$$K(m)=\int_0^\tfrac{\pi}{2} \frac{d\theta}{\sqrt{1-m\sin^2\theta}}$$


Incomplete elliptic integral of the second kind

The INCOMPLETE ELLIPTIC INTEGRAL OF THE SECOND KIND in trigonometric form is

$$E(\varphi,k) = E\left(\varphi \,|\,k^2\right) = E(\sin\varphi;k) = \int_0^\varphi \sqrt{1-k^2 \sin^2\theta}\, d\theta.$$

Substituting sin _θ_}} and sin _φ_}}, one obtains the Legendre normal form:

$$E(x;k) = \int_0^x \frac{\sqrt{1-k^2 t^2} }{\sqrt{1-t^2}}\, dt.$$

Equivalently, in terms of the amplitude and modular angle:

$$E(\varphi \setminus \alpha) = E(\varphi, \sin \alpha) = \int_0^\varphi \sqrt{1-\left(\sin \theta \sin \alpha\right)^2} \,d\theta.$$

Relations with the Jacobi elliptic functions include

_E_(sn (_u_; _k_); _k_) = ∫₀^(_u_)dn²(_w_; _k_) _d__w_ = _u_ − _k_²∫₀^(_u_)sn²(_w_; _k_) _d__w_ = (1−_k_²)_u_ + _k_²∫₀^(_u_)cn²(_w_; _k_) _d__w_.

The meridian arc length from the equator to latitude is written in terms of :

$$m(\varphi) = a\left(E(\varphi,e)+\frac{d^2}{d\varphi^2}E(\varphi,e)\right),$$
where is the semi-major axis, and is the eccentricity.


Incomplete elliptic integral of the third kind

The INCOMPLETE ELLIPTIC INTEGRAL OF THE THIRD KIND is

$$\Pi(n ; \varphi \setminus \alpha) = \int_0^\varphi  \frac{1}{1-n\sin^2 \theta} \frac {d\theta}{\sqrt{1-\left(\sin\theta\sin \alpha\right)^2}}$$

or

$$\Pi(n ; \varphi \,|\,m) = \int_{0}^{\sin \varphi} \frac{1}{1-nt^2} \frac{dt}{\sqrt{\left(1-m t^2\right)\left(1-t^2\right) }}.$$

The number is called the CHARACTERISTIC and can take on any value, independently of the other arguments. Note though that the value _m_)}} is infinite, for any .

A relation with the Jacobian elliptic functions is

$$\Pi\bigl(n; \,\operatorname{am}(u;k); \,k\bigr) = \int_0^u \frac{dw} {1 - n \,\operatorname{sn}^2 (w;k)}.$$

The meridian arc length from the equator to latitude is also related to a special case of :

_m_(_φ_) = _a_(1−_e_²)_Π_(_e_²;_φ_ | _e_²).


Complete elliptic integral of the first kind

Elliptic Integrals are said to be 'complete' when the amplitude }} and therefore 1}}. The COMPLETE ELLIPTIC INTEGRAL OF THE FIRST KIND may thus be defined as

$$K(k)=\int_0^\tfrac{\pi}{2} \frac{d\theta}{\sqrt{1-k^2 \sin^2\theta}}=\int_0^1 \frac{dt}{\sqrt{\left(1-t^2\right)\left(1-k^2 t^2\right)}},$$

or more compactly in terms of the incomplete integral of the first kind as

$$K(k)=F\left(\tfrac{\pi}{2},k\right) = F\left(\tfrac{\pi}{2} \,|\, k^2\right) = F(1;k).$$

It can be expressed as a power series

$$K(k)=\frac{\pi}{2}\sum_{n=0}^\infty \left(\frac{(2n)!}{2^{2 n} (n!)^2}\right)^2 k^{2n}=\frac{\pi}{2}\sum_{n=0}^\infty \bigl(P_{2 n}(0)\bigr)^2 k^{2n},$$

where is the Legendre polynomials, which is equivalent to

$$K(k)=\frac{\pi}{2}\left(1+\left(\frac{1}{2}\right)^2 k^2+\left(\frac{1\cdot 3}{2\cdot 4}\right)^2 k^4+\cdots+\left(\frac{\left(2n-1\right)!!}{\left(2n\right)!!}\right)^2 k^{2n}+\cdots\right),$$

where denotes the double factorial. In terms of the Gauss hypergeometric function, the complete elliptic integral of the first kind can be expressed as

$$K(k)=\tfrac{\pi}{2} \,{}_2F_1 \left(\tfrac{1}{2}, \tfrac{1}{2}; 1; k^2\right).$$

The complete elliptic integral of the first kind is sometimes called the quarter period. It can be computed very efficiently in terms of the arithmetic–geometric mean:

$$K(k)=\frac{\frac{\pi}{2}}{\operatorname{agm}\left(1,\sqrt{1-k^2}\right)}.$$
See for details.

Relation to Jacobi theta function

The relation to Jacobi's theta function is given by

$$K(k)=\frac{\pi}{2}\theta_3^2(q),$$
where the nome is

$$q(k)=\exp\left(-\pi \frac{K\left(\sqrt{1-k^2}\right)}{K(k)}\right).$$

Asymptotic expressions

$$K\left(k\right)\approx\frac{\pi}{2}+\frac{\pi}{8}\frac{k^2}{1-k^2}-\frac{\pi}{16}\frac{k^4}{1-k^2}$$
This approximation has a relative precision better than for . Keeping only the first two terms is correct to 0.01 precision for .

Differential equation

The differential equation for the elliptic integral of the first kind is

$$\frac{d}{dk}\left(k\left(1-k^2\right)\frac{dK(k)}{dk}\right)=k K(k)$$

A second solution to this equation is $K\left(\sqrt{1-k^2}\right)$. This solution satisfies the relation

$$\frac{d}{dk}K(k)=\frac{E(k)}{k\left(1-k^2\right)}-\frac{K(k)}{k}$$
.


Complete elliptic integral of the second kind

The COMPLETE ELLIPTIC INTEGRAL OF THE SECOND KIND is defined as

$$E(k)=\int_0^\tfrac{\pi}{2} \sqrt{1-k^2 \sin^2\theta}\, d\theta=\int_0^1 \frac{\sqrt{1-k^2 t^2}}{\sqrt{1-t^2}}\,dt,$$

or more compactly in terms of the incomplete integral of the second kind as

$$E(k)=E\left(\tfrac{\pi}{2},k\right)=E(1;k).$$

For an ellipse with semi-major axis and semi-minor axis and eccentricity }}, the complete elliptic integral of the second kind is equal to one quarter of the circumference of the ellipse measured in units of the semi-major axis . In other words:

_c_ = 4_a__E_(_e_).

The complete elliptic integral of the second kind can be expressed as a power series

$$E(k)=\frac{\pi}{2}\sum_{n=0}^\infty \left(\frac{(2n)!}{2^{2n} \left(n!\right)^2}\right)^2 \frac{k^{2n}}{1-2n},$$

which is equivalent to

$$E(k)=\frac{\pi}{2}\left(1-\left(\frac12\right)^2 \frac{k^2}{1}-\left(\frac{1\cdot 3}{2\cdot 4}\right)^2 \frac{k^4}{3}-\cdots-\left(\frac{(2n-1)!!}{(2n)!!}\right)^2 \frac{k^{2n}}{2n-1}-\cdots\right).$$

In terms of the Gauss hypergeometric function, the complete elliptic integral of the second kind can be expressed as

$$E(k) = \tfrac{\pi}{2}  \,{}_2F_1 \left(\tfrac12, -\tfrac12; 1; k^2 \right).$$

The complete elliptic integral of the second kind can also be computed very efficiently using the arithmetic–geometric mean .

Derivative and differential equation

$$\frac{dE(k)}{dk}=\frac{E(k)-K(k)}{k}$$

$$\left(k^2-1\right) \frac {d} {dk} \left( k \;\frac {dE(k)} {dk} \right) = k E(k)$$

A second solution to this equation is .


Complete elliptic integral of the third kind

The COMPLETE ELLIPTIC INTEGRAL OF THE THIRD KIND can be defined as

$$\Pi(n,k)=\int_0^\tfrac{\pi}{2} \frac{d\theta}{\left(1-n\sin^2\theta\right)\sqrt{1-k^2 \sin^2\theta}}.$$

Note that sometimes the elliptic integral of the third kind is defined with an inverse sign for the _characteristic_ ,

$$\Pi'(n,k)=\int_0^\tfrac{\pi}{2} \frac{d\theta}{\left(1+n\sin^2\theta\right)\sqrt{1-k^2 \sin^2\theta}}.$$

Just like the complete elliptic integrals of the first and second kind, the complete elliptic integral of the third kind can be computed very efficiently using the arithmetic-geometric mean .

Partial derivatives

$$\begin{align}
\frac{\partial\Pi(n,k)}{\partial n}&=\frac{1}{2\left(k^2-n\right)(n-1)}\left(E(k)+\frac{1}{n}\left(k^2-n\right)K(k)+\frac{1}{n}\left(n^2-k^2\right)\Pi(n,k)\right) \\[10px]

\frac{\partial\Pi(n,k)}{\partial k}&=\frac{k}{n-k^2}\left(\frac{E(k)}{k^2-1}+\Pi(n,k)\right)
\end{align}$$


Functional relations

Legendre's relation:

$$K(k) E\left(\sqrt{1-k^2}\right) + E(k) K\left(\sqrt{1-k^2}\right) - K(k) K\left(\sqrt{1-k^2}\right) = \frac \pi 2.$$


See also

-   Elliptic curve
-   Schwarz–Christoffel mapping
-   Carlson symmetric form
-   Jacobi's elliptic functions
-   Weierstrass's elliptic functions
-   Jacobi theta function
-   Ramanujan theta function
-   Arithmetic–geometric mean
-   Pendulum period
-   Meridian arc


References

-   -   -   -   -   -   -   -   -


External links

-   -   Eric W. Weisstein, "Elliptic Integral" (Mathworld)
-   Matlab code for elliptic integrals evaluation by elliptic project
-   Rational Approximations for Complete Elliptic Integrals (Exstrom Laboratories)
-   A Brief History of Elliptic Integral Addition Theorems

Category:Elliptic functions Category:Special hypergeometric functions