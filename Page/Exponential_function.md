 ab^(x)|functions of the form f(x,y) {{=}} x^(y)|Exponentiation|functions of the form f(x) {{=}} x^(r)|Power function}}

exp.svg Exponenciala_priklad.png

In mathematics, an EXPONENTIAL FUNCTION is a function of the form where is a positive real number, and in which the argument occurs as an exponent. For real numbers and a function of the form f(x) = ab^(cx + d) is also an exponential function, as it can be rewritten as

_a__b_^(_c__x_ + _d_) = (_a__b_^(_d_))(_b_^(_c_))^(_x_).

As functions of a real variable, exponential functions are uniquely characterized by the fact that the growth rate of such a function (that is, its derivative) is directly proportional to the value of the function. The constant of proportionality of this relationship is the natural logarithm of the base :

For 1}} the real exponential function is a constant and the derivative is zero because log_(e)b = 0, for positive and the real exponential functions are monotonically increasing (as depicted for _e_}} and 2}}), because the derivative is greater than zero for all arguments, and for they are monotonically decreasing (as depicted for }}), because the derivative is less than zero for all arguments.

The constant [[e_(mathematical_constant)| for positive integers and relates the exponential function to the elementary notion of exponentiation.

The argument of the exponential function can be any real or complex number or even an entirely different kind of mathematical object (for example, a matrix).

Its ubiquitous occurrence in pure and applied mathematics has led mathematician W. Rudin to opine that the exponential function is "the most important function in mathematics".[1] In applied settings, exponential functions model a relationship in which a constant change in the independent variable gives the same proportional change (that is, percentage increase or decrease) in the dependent variable. This occurs widely in the natural and social sciences; thus, the exponential function also appears in a variety of contexts within physics, chemistry, engineering, mathematical biology, and economics.

The graph of y = e^(x) is upward-sloping, and increases faster as increases. The graph always lies above the -axis but can be arbitrarily close to it for negative ; thus, the -axis is a horizontal asymptote. The slope of the tangent to the graph at each point is equal to its -coordinate at that point, as implied by its derivative function (_see above_). Its inverse function is the natural logarithm, denoted log ,[2] ln ,[3] or log_(e); because of this, some old texts[4] refer to the exponential function as the ANTILOGARITHM.


Formal definition

Exp_series.gif

The real exponential function exp  : ℝ → ℝ can be characterized in a variety of equivalent ways. Most commonly, it is defined by the following power series:[5]

$$\exp x := \sum_{k = 0}^{\infty} \frac{x^k}{k!} = 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + \frac{x^4}{24} + \cdots$$

Since the radius of convergence of this power series is infinite, this definition is, in fact, applicable to all complex numbers z ∈ ℂ (see below for the extension of exp x to the complex plane). The constant can then be defined as $e=\exp 1=\sum_{k=0}^\infty(1/k!).$

The term-by-term differentiation of this power series reveals that (d/dx)(exp x) = exp x for all real , leading to another common characterization of exp x as the unique solution of the differential equation

_y_′(_x_) = _y_(_x_),

satisfying the initial condition y(0) = 1.

Based on this characterization, the chain rule shows that its inverse function, the natural logarithm, satisfies (d/dy)(log_(e)y) = 1/y for y > 0, or $\log_e y=\int_1^y \frac{1}{t}\,dt.$ This relationship leads to a less common definition of the real exponential function exp x as the solution y to the equation

    $x = \int_1^y \frac{1}{t} \, dt.$

By way of the binomial theorem and the power series definition, the exponential function can also be defined as the following limit:[6]

    $e^x = \lim_{n \to \infty} \left(1 + \frac{x}{n}\right)^n.$


Overview

Animation_of_exponential_function.gif The exponential function arises whenever a quantity grows or decays at a rate proportional to its current value. One such situation is continuously compounded interest, and in fact it was this observation that led Jacob Bernoulli in 1683[7] to the number

$$\lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^{n}$$

now known as . Later, in 1697, Johann Bernoulli studied the calculus of the exponential function.[8]

If a principal amount of 1 earns interest at an annual rate of compounded monthly, then the interest earned each month is times the current value, so each month the total value is multiplied by , and the value at the end of the year is . If instead interest is compounded daily, this becomes . Letting the number of time intervals per year grow without bound leads to the limit definition of the exponential function,

$$\exp x = \lim_{n\to\infty}\left(1 + \frac{x}{n}\right)^{n}$$

first given by Leonhard Euler.[9] This is one of a number of characterizations of the exponential function; others involve series or differential equations.

From any of these definitions it can be shown that the exponential function obeys the basic exponentiation identity,

exp (_x_ + _y_) = exp _x_ ⋅ exp _y_

which justifies the notation .

The derivative (rate of change) of the exponential function is the exponential function itself. More generally, a function with a rate of change _proportional_ to the function itself (rather than equal to it) is expressible in terms of the exponential function. This function property leads to exponential growth or exponential decay.

The exponential function extends to an entire function on the complex plane. Euler's formula relates its values at purely imaginary arguments to trigonometric functions. The exponential function also has analogues for which the argument is a matrix, or even an element of a Banach algebra or a Lie algebra.


Derivatives and differential equations

Exp_tangent.svg

The importance of the exponential function in mathematics and the sciences stems mainly from its definition as the unique function which is equal to its derivative and is equal to 1 when . That is,

    $\frac{d}{dx}e^x = e^x \quad\text{and}\quad e^0=1.$

Functions of the form for constant are the only functions that are equal to their derivative (by the Picard–Lindelöf theorem). Other ways of saying the same thing include:

-   The slope of the graph at any point is the height of the function at that point.
-   The rate of increase of the function at is equal to the value of the function at .
-   The function solves the differential equation .
-   is a fixed point of derivative as a functional.

If a variable's growth or decay rate is proportional to its size—as is the case in unlimited population growth (see Malthusian catastrophe), continuously compounded interest, or radioactive decay—then the variable can be written as a constant times an exponential function of time. Explicitly for any real constant , a function satisfies if and only if for some constant .

Furthermore, for any differentiable function , we find, by the chain rule:

    $\frac{d}{dx} e^{f(x)} = f'(x)e^{f(x)}.$


Continued fractions for

A continued fraction for can be obtained via an identity of Euler:

$$e^x = 1 + \cfrac{x}{1 - \cfrac{x}{x + 2 - \cfrac{2x}{x + 3 - \cfrac{3x}{x + 4 - \ddots}}}}$$

The following generalized continued fraction for converges more quickly:[10]

$$e^z = 1 + \cfrac{2z}{2 - z + \cfrac{z^2}{6 + \cfrac{z^2}{10 + \cfrac{z^2}{14 + \ddots}}}}$$

or, by applying the substitution }}:

$$e^\frac{x}{y} = 1 + \cfrac{2x}{2y - x + \cfrac{x^2} {6y + \cfrac{x^2} {10y + \cfrac{x^2} {14y + \ddots}}}}$$

with a special case for 2}}:

$$e^2 = 1 + \cfrac{4}{0 + \cfrac{2^2}{6 + \cfrac{2^2}{10 + \cfrac{2^2}{14 + \ddots\,}}}} = 7 + \cfrac{2}{5 + \cfrac{1}{7 + \cfrac{1}{9 + \cfrac{1}{11 + \ddots\,}}}}$$

This formula also converges, though more slowly, for . For example:

$$e^3 = 1 + \cfrac{6}{-1 + \cfrac{3^2}{6 + \cfrac{3^2}{10 + \cfrac{3^2}{14 + \ddots\,}}}} = 13 + \cfrac{54}{7 + \cfrac{9}{14 + \cfrac{9}{18 + \cfrac{9}{22 + \ddots\,}}}}$$


Complex plane

Complex_exp.jpg in the imaginary part of its argument.]]

As in the real case, the exponential function can be defined on the complex plane in several equivalent forms. The most common definition of the complex exponential function parallels the power series definition for real arguments, where the real variable is replaced by a complex one:

$$\exp z := \sum_{k = 0}^\infty\frac{z^k}{k!}$$

Term-wise multiplication of two copies of these power series in the Cauchy sense, permitted by Mertens' theorem, shows that the defining multiplicative property of exponential functions continues to hold for all complex arguments:

exp (_w_ + _z_) = exp _w_exp _z_
for all w, z ∈ ℂ

The definition of the complex exponential function in turn leads to the appropriate definitions extending the trigonometric functions to complex arguments.

In particular, when z = it (t real), the series definition yields the expansion

$$\exp(it) = \Big( 1-\frac{t^2}{2!}+\frac{t^4}{4!}-\frac{t^6}{6!}+\cdots\Big)+i\Big(t-\frac{t^3}{3!}+
\frac{t^5}{5!}-\frac{t^7}{7!}+\cdots\Big)$$

In this expansion, the rearrangement of the terms into real and imaginary parts is justified by the absolute convergence of the series. The real and imaginary parts of the above expression in fact correspond to the series expansions of cos t and sin t, respectively.

This correspondence provides motivation for _defining_ cosine and sine for all complex arguments in terms of exp ( ± iz) and the equivalent power series:[11]

$$\cos z:=\frac{1}{2}\Big[\exp(iz)+\exp(-iz)\Big]=\sum_{k=0}^{\infty}(-1)^k
\frac{z^{2k}}{(2k)!}$$
and $\sin z:=\frac{1}{2i}\Big[\exp(iz)-\exp(-iz)\Big]=\sum_{k=0}^{\infty}(-1)^k\frac{z^{2k+1}}{(2k+1)!}$ for all z ∈ ℂ

The functions exp, cos, and sin so defined have infinite radii of convergence by the ratio test and are therefore entire functions (_i.e._, holomorphic on ℂ). The range of the exponential function is ℂ \ {0}, while the ranges of the complex sine and cosine functions are both ℂ in its entirety, in accord with Picard's theorem, which asserts that the range of a nonconstant entire function is either all of ℂ, or ℂ excluding one lacunary value.

These definitions for the exponential and trigonometric functions lead trivially to Euler's formula:

exp (_i__z_) = cos _z_ + _i_sin _z_
for all z ∈ ℂ

We could alternatively define the complex exponential function based on this relationship. If z = x + iy, where x and y are both real, then we could define its exponential as

exp _z_ = exp (_x_ + _i__y_) := (exp _x_)(cos _y_ + _i_sin _y_)

where exp, cos, and sin on the right-hand side of the definition sign are to be interpreted as functions of a real variable, previously defined by other means.[12]

For t ∈ ℝ, the relationship $\overline{\exp(it)}=\exp(-it)$ holds, so that |exp (it)| = 1 for real t and t ↦ exp (it) maps the real line (mod 2π) to the unit circle. Based on the relationship between exp (it) and the unit circle, it is easy to see that, restricted to real arguments, the definitions of sine and cosine given above coincide with their more elementary definitions based on geometric notions.

The complex exponential function is periodic with period 2πi and exp (z + 2πik) = exp z holds for all z ∈ ℂ, k ∈ ℤ.

When its domain is extended from the real line to the complex plane, the exponential function retains the following properties:

-   e^(z + w) = e^(z)e^(w) 
-   e⁰ = 1 
-   e^(z) ≠ 0
-   $\tfrac{d}{dz} e^z = e^z$
-   (e^(z))^(n) = e^(nz), n ∈ ℤ

for all w, z ∈ ℂ.

Extending the natural logarithm to complex arguments yields the complex logarithm , which is a multivalued function.

We can then define a more general exponentiation:

    z^(w) = e^(wlog z)

for all complex numbers and . This is also a multivalued function, even when is real. This distinction is problematic, as the multivalued functions and are easily confused with their single-valued equivalents when substituting a real number for . The rule about multiplying exponents for the case of positive real numbers must be modified in a multivalued context:

    , but rather _e_}} multivalued over integers

See failure of power and logarithm identities for more about problems with combining powers.

The exponential function maps any line in the complex plane to a logarithmic spiral in the complex plane with the center at the origin. Two special cases might be noted: when the original line is parallel to the real axis, the resulting spiral never closes in on itself; when the original line is parallel to the imaginary axis, the resulting spiral is a circle of some radius.

Image:ExponentialAbs_real_SVG.svg|  Re(_e_^(_x_ + _iy_))}}
Image:ExponentialAbs_image_SVG.svg|  Im(_e_^(_x_ + _iy_))}}
Image:ExponentialAbs_SVG.svg|  }}

Considering the complex exponential function as a function involving four real variables:

    v + iw = exp (x + iy)

the graph of the exponential function is a two-dimensional surface curving through four dimensions.

Starting with a color-coded portion of the xy domain, the following are depictions of the graph as variously projected into two or three dimensions.

File: Complex exponential function graph domain xy dimensions.svg|Checker board key:
x > 0: green
x < 0: red
y > 0: yellow
y < 0: blue File: Complex exponential function graph range vw dimensions.svg|Projection onto the range complex plane (V/W). Compare to the next, perspective picture. File: Complex exponential function graph horn shape xvw dimensions.jpg|Projection into the x, v, and w dimensions, producing a flared horn or funnel shape (envisioned as 2-D perspective image). File: Complex exponential function graph spiral shape yvw dimensions.jpg|Projection into the y, v, and w dimensions, producing a spiral shape. (y range extended to ±2, again as 2-D perspective image).

The second image shows how the domain complex plane is mapped into the range complex plane:

-   zero is mapped to 1
-   the real x axis is mapped to the positive real v axis
-   the imaginary y axis is wrapped around the unit circle at a constant angular rate
-   values with negative real parts are mapped inside the unit circle
-   values with positive real parts are mapped outside of the unit circle
-   values with a constant real part are mapped to circles centered at zero
-   values with a constant imaginary part are mapped to rays extending from zero

The third and fourth images show how the graph in the second image extends into one of the other two dimensions not shown in the second image.

The third image shows the graph extended along the real x axis. It shows the graph is a surface of revolution about the x axis of the graph of the real exponential function, producing a horn or funnel shape.

The fourth image shows the graph extended along the imaginary y axis. It shows that the graph's surface for positive and negative y values doesn't really meet along the negative real v axis, but instead forms a spiral surface about the y axis. Because its y values have been extended to ±2π, this image also better depicts the 2π periodicity in the imaginary y value.

Computation of  where both  and  are complex

Complex exponentiation can be defined by converting to polar coordinates and using the identity _a_^(_b_)}}:

    a^(b) = (re^(θi))^(b) = (e^((ln r) + θi))^(b) = e^(((lnr)+θi)b)

However, when is not an integer, this function is multivalued, because is not unique (see failure of power and logarithm identities).


Matrices and Banach algebras

The power series definition of the exponential function makes sense for square matrices (for which the function is called the matrix exponential) and more generally in any unital Banach algebra . In this setting, 1}}, and is invertible with inverse for any in . If _yx_}}, then _e_^(_x_)_e_^(_y_)}}, but this identity can fail for noncommuting and .

Some alternative definitions lead to the same function. For instance, can be defined as

$$\lim_{n \to \infty} \left(1 + \frac{x}{n} \right)^n .$$

Or can be defined as , where is the solution to the differential equation _xf__(_x_)(_t_)}}, with initial condition 1}}; it follows that _e_^(_tx_)}} for every in


Lie algebras

Given a Lie group and its associated Lie algebra 𝔤, the exponential map is a map 𝔤 satisfying similar properties. In fact, since is the Lie algebra of the Lie group of all positive real numbers under multiplication, the ordinary exponential function for real arguments is a special case of the Lie algebra situation. Similarly, since the Lie group of invertible matrices has as Lie algebra , the space of all matrices, the exponential function for square matrices is a special case of the Lie algebra exponential map.

The identity exp _x_ exp _y_}} can fail for Lie algebra elements and that do not commute; the Baker–Campbell–Hausdorff formula supplies the necessary correction terms.


Transcendency

The function is not in (i.e., is not the quotient of two polynomials with complex coefficients).

For distinct complex numbers }, the set } is linearly independent over .

The function is transcendental over .


Computation

When computing (an approximation of) the exponential function near the argument , the result will be close to 1, and computing the value of the difference exp x − 1 with floating-point arithmetic may lead to the loss of (possibly all) significant figures, producing a large calculation error, possibly even a meaningless result.

Following a proposal by William Kahan, it may thus be useful to have a dedicated routine, often called expm1, for computing directly, bypassing computation of . For example, if the exponential is computed by using its Taylor series

$$e^x=1+x+\frac {x^2}2 + \frac{x^3}6+\cdots +\frac{x^n}{n!}+\cdots,$$
one may use the Taylor series of e^(x) − 1:

$$e^x-1=x+\frac {x^2}2 + \frac{x^3}6+\cdots +\frac{x^n}{n!}+\cdots.$$

This was first implemented in 1979 in the Hewlett-Packard HP-41C calculator, and provided by several calculators,[13][14] computer algebra systems, and programming languages (for example C99).[15]

A similar approach has been used for the logarithm (see lnp1).[16]

An identity in terms of the hyperbolic tangent,

$$\operatorname{expm1} (x) = \exp x - 1 = \frac{2 \tanh(x/2)}{1 - \tanh(x/2)},$$
gives a high-precision value for small values of on systems that do not implement .


See also

-   Approximating natural exponents (log base {{math
-   Carlitz exponential, a characteristic analogue
-   Double exponential function
-   Exponential field
-   Half-exponential function, a compositional square root of an exponential function
-   Linear function
-   List of exponential topics
-   List of integrals of exponential functions
-   Mittag-Leffler function, a generalization of the exponential function
-   Multiplicative calculus
-   {{math
-   Polynomial function
-   Padé table for exponential function – Padé approximation of exponential function by a fraction of polynomial functions
-   Tetration
-   Unrestricted algorithm for the computation of the exponential function


Notes


References


External links

-   -   -   -

Category:Elementary special functions Category:Analytic functions Category:Exponentials Category:Special hypergeometric functions Category:E (mathematical constant)

[1]

[2] In pure mathematics, the notation generally refers to the natural logarithm of or a logarithm in general if the base is immaterial.

[3] The notation is the ISO standard and is prevalent in the natural sciences and secondary education (US). However, some mathematicians (e.g., Paul Halmos) have criticized this notation and prefer to use for the natural logarithm of .

[4]

[5]

[6] Eli Maor, _e: the Story of a Number_, p.156.

[7]

[8]

[9]

[10] "A.2.2 The exponential function." L. Lorentzen and H. Waadeland, _Continued Fractions_, Atlantis Studies in Mathematics, page 268.

[11]

[12]

[13]

[14] Searchable PDF

[15]

[16] A similar approach to reduce round-off errors of calculations for certain input values of trigonometric functions consists of using the less common trigonometric functions versine, vercosine, coversine, covercosine, haversine, havercosine, hacoversine, hacovercosine, exsecant and excosecant.