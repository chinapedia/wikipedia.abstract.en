EULER'S FORMULA, named after Leonhard Euler, is a mathematical formula in complex analysis that establishes the fundamental relationship between the trigonometric functions and the complex exponential function. Euler's formula states that for any real number :

_e_^(_i__x_) = cos _x_ + _i_sin _x_,

where is the base of the natural logarithm, is the imaginary unit, and and are the trigonometric functions cosine and sine respectively, with the argument given in radians. This complex exponential function is sometimes denoted ("Cosine plus I Sine"). The formula is still valid if is a complex number, and so some authors refer to the more general complex version as Euler's formula.[1]

Euler's formula is ubiquitous in mathematics, physics, and engineering. The physicist Richard Feynman called the equation "our jewel" and "the most remarkable formula in mathematics".[2]

When x = π, Euler's formula evaluates to e^(iπ) + 1 = 0, which is known as Euler's identity.


History

Johann Bernoulli noted that[3]

$$\frac{1}{1 + x^2} = \frac12 \left( \frac{1}{1 - ix} + \frac{1}{1 + ix}\right).$$

And since

$$\int \frac{dx}{1 + ax} = \frac{1}{a} \ln(1 + ax) + C,$$

the above equation tells us something about complex logarithms by relating natural logarithms to imaginary (complex) numbers. Bernoulli, however, did not evaluate the integral.

Bernoulli's correspondence with Euler (who also knew the above equation) shows that Bernoulli did not fully understand complex logarithms. Euler also suggested that the complex logarithms can have infinitely many values.

Meanwhile, Roger Cotes in 1714 discovered that[4]

_i__x_ = ln (cos _x_ + _i_sin _x_).

Cotes missed the fact that a complex logarithm can have infinitely many values, differing by multiples of , due to the periodicity of the trigonometric functions.

Around 1740 Euler turned his attention to the exponential function instead of logarithms and obtained the formula used today that is named after him. It was published in 1748, obtained by comparing the series expansions of the exponential and trigonometric expressions.[5][6]

The view of complex numbers as points in the complex plane was described about 50 years later by Caspar Wessel.


Applications in complex number theory

Euler's_formula.svg Euler's_Formula_c.png.]]

Interpretation of the formula

This formula can be interpreted as saying that the function is a unit complex number, i.e., it traces out the unit circle in the complex plane as ranges through the real numbers. Here is the angle that a line connecting the origin with a point on the unit circle makes with the positive real axis, measured counterclockwise and in radians.

The original proof is based on the Taylor series expansions of the exponential function (where is a complex number) and of and for real numbers (see below). In fact, the same proof shows that Euler's formula is even valid for all _complex_ numbers .

A point in the complex plane can be represented by a complex number written in cartesian coordinates. Euler's formula provides a means of conversion between cartesian coordinates and polar coordinates. The polar form simplifies the mathematics when used in multiplication or powers of complex numbers. Any complex number , and its complex conjugate, , can be written as

$$\begin{align}
z &= x + iy = |z| (\cos \varphi + i\sin \varphi) = r e^{i \varphi}, \\
\bar{z} &= x - iy = |z| (\cos \varphi - i\sin \varphi) = r e^{-i \varphi},
\end{align}$$

where

    is the real part,

    is the imaginary part,

    is the magnitude of

    .

is the argument of , i.e., the angle between the _x_ axis and the vector _z_ measured counterclockwise in radians, which is defined up to addition of . Many texts write instead of , but the first equation needs adjustment when . This is because for any real and not both zero the angles of the vectors and differ by radians, but have the identical value of .

Use of the formula to define the logarithm of complex numbers

Now, taking this derived formula, we can use Euler's formula to define the logarithm of a complex number. To do this, we also use the definition of the logarithm (as the inverse operator of exponentiation):

_a_ = _e_^(ln _a_),

and that

_e_^(_a_)_e_^(_b_) = _e_^(_a_ + _b_),

both valid for any complex numbers and .

Therefore, one can write:

_z_ = |_z_|_e_^(_i__φ_) = _e_^(ln |_z_|)_e_^(_i__φ_) = _e_^(ln |_z_| + _i__φ_)

for any . Taking the logarithm of both sides shows that

ln _z_ = ln |_z_| + _i__φ_,

and in fact this can be used as the definition for the complex logarithm. The logarithm of a complex number is thus a multi-valued function, because is multi-valued.

Finally, the other exponential law

    (e^(a))^(k) = e^(ak),

which can be seen to hold for all integers , together with Euler's formula, implies several trigonometric identities, as well as de Moivre's formula.


Relationship to trigonometry

Sine_Cosine_Exponential_qtl1.svg Euler's formula provides a powerful connection between analysis and trigonometry, and provides an interpretation of the sine and cosine functions as weighted sums of the exponential function:

$$\begin{align}
\cos x &= \operatorname{Re} \left(e^{ix}\right) =\frac{e^{ix} + e^{-ix}}{2}, \\
\sin x &= \operatorname{Im} \left(e^{ix}\right) =\frac{e^{ix} - e^{-ix}}{2i}.
\end{align}$$

The two equations above can be derived by adding or subtracting Euler's formulas:

    \begin{align}

e^{ix} &= \cos x + i \sin x, \\ e^{-ix} &= \cos(- x) + i \sin(- x) = \cos x - i \sin x \end{align}

and solving for either cosine or sine.

These formulas can even serve as the definition of the trigonometric functions for complex arguments . For example, letting , we have:

$$\begin{align}
\cos(iy) &= \frac{e^{-y} + e^y}{2} = \cosh(y), \\
\sin(iy) &= \frac{e^{-y} - e^y}{2i} = i \left(\frac{e^y - e^{-y}}{2}\right) = i\sinh(y).
\end{align}$$

Complex exponentials can simplify trigonometry, because they are easier to manipulate than their sinusoidal components. One technique is simply to convert sinusoids into equivalent expressions in terms of exponentials. After the manipulations, the simplified result is still real-valued. For example:

$$\begin{align}
\cos x\cdot \cos y &= \frac{e^{ix}+e^{-ix}}{2} \cdot \frac{e^{iy}+e^{-iy}}{2} \\
 &= \frac12\cdot \frac{e^{i(x+y)}+e^{i(x-y)}+e^{i(-x+y)}+e^{i(-x-y)}}{2} \\
 &= \frac12 \bigg( \underbrace{ \frac{e^{i(x+y)} + e^{-i(x+y)}}{2} }_{\cos(x+y)} + \underbrace{ \frac{e^{i(x-y)} + e^{-i(x-y)}}{2} }_{\cos(x-y)} \bigg).
\end{align}$$

Another technique is to represent the sinusoids in terms of the real part of a complex expression and perform the manipulations on the complex expression. For example:

$$\begin{align}
\cos(nx) &= \operatorname{Re} \left(e^{inx}\right) \\
 &= \operatorname{Re} \left( e^{i(n-1)x}\cdot e^{ix} \right) \\
 &= \operatorname{Re} \Big( e^{i(n-1)x}\cdot \big(\underbrace{e^{ix} + e^{-ix}}_{2\cos x } - e^{-ix}\big) \Big) \\
 &= \operatorname{Re} \left( e^{i(n-1)x}\cdot 2\cos x - e^{i(n-2)x} \right) \\
 &= \cos[(n-1)x] \cdot [2 \cos(x)] - \cos[(n-2)x].
\end{align}$$

This formula is used for recursive generation of for integer values of and arbitrary (in radians).

See also Phasor arithmetic.


Topological interpretation

In the language of topology, Euler's formula states that the imaginary exponential function is a (surjective) morphism of topological groups from the real line to the unit circle . In fact, this exhibits as a covering space of 𝕊¹. Similarly, Euler's identity says that the kernel of this map is , where . These observations may be combined and summarized in the commutative diagram below:

Euler's_formula_commutative_diagram.png


Other applications

In differential equations, the function is often used to simplify solutions, even if the final answer is a real function involving sine and cosine. The reason for this is that the exponential function is the eigenfunction of the operation of differentiation.

In electrical engineering, signal processing, and similar fields, signals that vary periodically over time are often described as a combination of sinusoidal functions (see Fourier analysis), and these are more conveniently expressed as the sum of exponential functions with imaginary exponents, using Euler's formula. Also, phasor analysis of circuits can include Euler's formula to represent the impedance of a capacitor or an inductor.

In the four-dimensional space of quaternions, there is a sphere of imaginary units. For any point _r_ on this sphere, and _x_ a real number, Euler's formula applies:

exp (_x__r_) = cos _x_ + _r_sin _x_,
and the element is called a versor in quaternions. The set of all versors forms a 3-sphere in the 4-space.


Definitions of complex exponentiation

The exponential function for real values of may be defined in a few different equivalent ways (see Characterizations of the exponential function). Several of these methods may be directly extended to give definitions of for complex values of simply by substituting in place of and using the complex algebraic operations. In particular we may use either of the three following definitions, which are equivalent. From a more advanced perspective, each of these definitions may be interpreted as giving the unique analytic continuation of to the complex plane.

Differential equation definition

The exponential function z ↦ e^(z) is the unique differentiable function of a complex variable such that

$$\frac{de^z}{dz} = e^z$$
and

_e_⁰ = 1.

Power series definition

For complex

$$e^z = 1 + \frac{z}{1!} + \frac{z^2}{2!} + \frac{z^3}{3!} + \cdots = \sum_{n=0}^{\infty} \frac{z^n}{n!}.$$

Using the ratio test, it is possible to show that this power series has an infinite radius of convergence and so defines for all complex .

Limit definition

For complex

$$e^z = \lim_{n \rightarrow \infty} \left(1+\frac{z}{n}\right)^n.$$

Here, n is restricted to positive integers, so there is no question about what the power with exponent n means.


Proofs

Various proofs of the formula are possible.

Using power series

Here is a proof of Euler's formula using power-series expansions, as well as basic facts about the powers of :[7]

    \begin{align}

i^0 &= 1, & i^1 &= i, & i^2 &= -1, & i^3 &= -i, \\ i^4 &= 1, & i^5 &= i, & i^6 &= -1, & i^7 &= -i \\ &\vdots & &\vdots & &\vdots & &\vdots \end{align}

Using now the power-series definition from above, we see that for real values of

    \begin{align}

e^{ix} &= 1 + ix + \frac{(ix)^2}{2!} + \frac{(ix)^3}{3!} + \frac{(ix)^4}{4!} + \frac{(ix)^5}{5!} + \frac{(ix)^6}{6!} + \frac{(ix)^7}{7!} + \frac{(ix)^8}{8!} + \cdots \\[8pt]
&= 1 + ix - \frac{x^2}{2!} - \frac{ix^3}{3!} + \frac{x^4}{4!} + \frac{ix^5}{5!} - \frac{x^6}{6!} - \frac{ix^7}{7!} + \frac{x^8}{8!} + \cdots \\[8pt]
&= \left( 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \frac{x^8}{8!} - \cdots \right) + i\left( x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots \right) \\[8pt]
&= \cos x + i\sin x .

\end{align}

In the last step we have simply recognized the Maclaurin series for and . The rearrangement of terms is justified because each series is absolutely convergent.

Using polar coordinates

Another proof[8] is based on the fact that all complex numbers can be expressed in polar coordinates. Therefore, for _some_ and depending on ,

_e_^(_i__x_) = _r_(cos _θ_ + _i_sin _θ_).
No assumptions are being made about and ; they will be determined in the course of the proof. From any of the definitions of the exponential function it can be shown that the derivative of is . Therefore, differentiating both sides gives

$$i e ^{ix} = (\cos \theta  + i \sin \theta) \frac{dr}{dx} + r (-\sin \theta  + i \cos \theta) \frac{d\theta}{dx}.$$
Substituting for and equating real and imaginary parts in this formula gives 0}} and 1}}. Thus, is a constant, and is for some constant . The initial values 1}} and 0}} come from 1}}, giving 1}} and _x_}}. This proves the formula

_e_^(_i__x_) = 1(cos _x_ + _i_sin _x_) = cos _x_ + _i_sin _x_.

Using differential equations

Another proof is based on differential equations satisfied by exponential and trigonometric functions. See .


See also

-   Complex number
-   Euler's identity
-   Integration using Euler's formula
-   -   List of things named after Leonhard Euler


References


External links

-   Elements of Algebra

Category:Theorems in complex analysis Category:Articles containing proofs Category:E (mathematical constant) Category:Leonhard Euler

[1]

[2]

[3]

[4]

[5] Leonard Euler (1748) Chapter 8: On transcending quantities arising from the circle of Introduction to the Analysis of the Infinite, page 214, section 138 (translation by Ian Bruce, pdf link from 17 century maths).

[6]

[7]

[8]  Second proof on page.