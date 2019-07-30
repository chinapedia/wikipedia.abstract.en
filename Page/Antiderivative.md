of $F(x) = \frac{x^3}{3}-\frac{x^2}{2}-x+c$, showing three of the infinitely many solutions that can be produced by varying the arbitrary constant .]]

In calculus, an ANTIDERIVATIVE, PRIMITIVE FUNCTION, PRIMITIVE INTEGRAL or INDEFINITE INTEGRAL{{#tag:ref|Antiderivatives are also called GENERAL INTEGRALS, and sometimes INTEGRALS. The latter term is generic, and refers not only to indefinite integrals (antiderivatives), but also to definite integrals. When the word _integral_ is used without additional specification, the reader is supposed to deduce from the context whether it refers to a definite or indefinite integral. Some authors define the indefinite integral of a function as the set of its infinitely many possible antiderivatives. Others define it as an arbitrarily selected element of that set. This article adopts the latter approach.|group=Note}} of a function is a differentiable function whose derivative is equal to the original function . This can be stated symbolically as F′ = f.[1][2] The process of solving for antiderivatives is called ANTIDIFFERENTIATION (or INDEFINITE INTEGRATION) and its opposite operation is called differentiation, which is the process of finding a derivative.

Antiderivatives are related to definite integrals through the fundamental theorem of calculus: the definite integral of a function over an interval is equal to the difference between the values of an antiderivative evaluated at the endpoints of the interval.

The discrete equivalent of the notion of antiderivative is antidifference.


Example

The function $F(x) = \frac{x^3}{3}$ is an antiderivative of f(x) = x², as the derivative of $\frac{x^3}{3}$ is x². As the derivative of a constant is zero, x² will have an infinite number of antiderivatives, such as $\frac{x^3}{3}$, $\frac{x^3}{3}+1$, $\frac{x^3}{3}-2$, etc. Thus, all the antiderivatives of x² can be obtained by changing the value of in $F(x) = \frac{x^3}{3}+c$, where is an arbitrary constant known as the constant of integration. Essentially, the graphs of antiderivatives of a given function are vertical translations of each other; each graph's vertical location depending upon the value .

In physics, the integration of acceleration yields velocity plus a constant. The constant is the initial velocity term that would be lost upon taking the derivative of velocity because the derivative of a constant term is zero. This same pattern applies to further integrations and derivatives of motion (position, velocity, acceleration, and so on).


Uses and properties

Antiderivatives can be used to compute definite integrals, using the fundamental theorem of calculus: if is an antiderivative of the integrable function over the interval [a, b], then:

∫_(_a_)^(_b_)_f_(_x_) _d__x_ = _F_(_b_) − _F_(_a_).

Because of this, each of the infinitely many antiderivatives of a given function is sometimes called the "general integral" or "indefinite integral" of _f_ and is written using the integral symbol with no bounds:

∫_f_(_x_) _d__x_.

If is an antiderivative of , and the function is defined on some interval, then every other antiderivative of differs from by a constant: there exists a number such that G(x) = F(x) + c for all . is called the constant of integration. If the domain of is a disjoint union of two or more (open) intervals, then a different constant of integration may be chosen for each of the intervals. For instance

$$F(x)=\begin{cases}-\frac{1}{x}+c_1\quad x<0\\-\frac{1}{x}+c_2\quad x>0\end{cases}$$

is the most general antiderivative of f(x) = 1/x² on its natural domain ( − ∞, 0) ∪ (0, ∞).

Every continuous function has an antiderivative, and one antiderivative is given by the definite integral of with variable upper boundary:

_F_(_x_) = ∫₀^(_x_)_f_(_t_) _d__t_.
Varying the lower boundary produces other antiderivatives (but not necessarily all possible antiderivatives). This is another formulation of the fundamental theorem of calculus.

There are many functions whose antiderivatives, even though they exist, cannot be expressed in terms of elementary functions (like polynomials, exponential functions, logarithms, trigonometric functions, inverse trigonometric functions and their combinations). Examples of these are

$$\int e^{-x^2}\,dx,\qquad \int \sin x^2\,dx, \qquad\int \frac{\sin x}{x}\,dx,\qquad \int\frac{1}{\ln x}\,dx,\qquad \int x^{x}\,dx.$$
_From left to right, the first four are the error function, the Fresnel function, the trigonometric integral, and the logarithmic integral function._

See also Differential Galois theory for a more detailed discussion.


Techniques of integration

Finding antiderivatives of elementary functions is often considerably harder than finding their derivatives. For some elementary functions, it is impossible to find an antiderivative in terms of other elementary functions. See the articles on elementary functions and nonelementary integral for further information.

There are various methods available:

-   the linearity of integration allows us to break complicated integrals into simpler ones
-   integration by substitution, often combined with trigonometric identities or the natural logarithm
    -   the inverse chain rule method, a special case of integration by substitution
-   integration by parts to integrate products of functions
-   Inverse function integration, a formula that expresses the antiderivative of the inverse f^( − 1) of an invertible and continuous function f in terms of the antiderivative of f and of f^( − 1).
-   the method of partial fractions in integration allows us to integrate all rational functions (fractions of two polynomials)
-   the Risch algorithm
-   when integrating multiple times, certain additional techniques can be used, see for instance double integrals and polar coordinates, the Jacobian and the Stokes' theorem
-   if a function has no elementary antiderivative (for instance, exp ( − x²)), its definite integral can be approximated using numerical integration
-   it is often convenient to algebraically manipulate the integrand such that other integration techniques, such as integration by substitution, may be used.
-   to calculate the ( times) repeated antiderivative of a function , Cauchy's formula is useful (cf. Cauchy formula for repeated integration):

$$\int_{x_0}^x \int_{x_0}^{x_1} \dots \int_{x_0}^{x_{n-1}} f(x_n) \,dx_n \dots \, dx_2\, dx_1= \int_{x_0}^x f(t) \frac{(x-t)^{n-1}}{(n-1)!}\,dt.$$

Computer algebra systems can be used to automate some or all of the work involved in the symbolic techniques above, which is particularly useful when the algebraic manipulations involved are very complex or lengthy. Integrals which have already been derived can be looked up in a table of integrals.


Of non-continuous functions

Non-continuous functions can have antiderivatives. While there are still open questions in this area, it is known that:

-   Some highly pathological functions with large sets of discontinuities may nevertheless have antiderivatives.
-   In some cases, the antiderivatives of such pathological functions may be found by Riemann integration, while in other cases these functions are not Riemann integrable.

Assuming that the domains of the functions are open intervals:

-   A necessary, but not sufficient, condition for a function to have an antiderivative is that have the intermediate value property. That is, if is a subinterval of the domain of and is any real number between and , then there exists a between and such that . This is a consequence of Darboux's theorem.
-   The set of discontinuities of must be a meagre set. This set must also be an F-sigma set (since the set of discontinuities of any function must be of this type). Moreover, for any meagre F-sigma set, one can construct some function having an antiderivative, which has the given set as its set of discontinuities.
-   If has an antiderivative, is bounded on closed finite subintervals of the domain and has a set of discontinuities of Lebesgue measure 0, then an antiderivative may be found by integration in the sense of Lebesgue. In fact, using more powerful integrals like the Henstock–Kurzweil integral, every function for which an antiderivative exists is integrable, and its general integral coincides with its antiderivative.
-   If has an antiderivative on a closed interval [a, b], then for any choice of partition a = x₀ < x₁ < x₂ < … < x_(n) = b, if one chooses sample points x_(i)^(*) ∈ [x_(i − 1), x_(i)] as specified by the mean value theorem, then the corresponding Riemann sum telescopes to the value F(b) − F(a).





\begin{align} \sum_{i=1}^n f(x_i^*)(x_i-x_{i-1}) & = \sum_{i=1}^n [F(x_i)-F(x_{i-1})] \\ & = F(x_n)-F(x_0) = F(b)-F(a) \end{align}

    However if is unbounded, or if is bounded but the set of discontinuities of has positive Lebesgue measure, a different choice of sample points x_(i)^(*) may give a significantly different value for the Riemann sum, no matter how fine the partition. See Example 4 below.

Some examples


See also

-   Antiderivative (complex analysis)
-   Lists of integrals
-   Symbolic integration
-   Area


Notes


References


Further reading

-   _Introduction to Classical Real Analysis_, by Karl R. Stromberg; Wadsworth, 1981 (see also)
-   _Historical Essay On Continuity Of Derivatives_ by Dave L. Renfro


External links

-   Wolfram Integrator — Free online symbolic integration with Mathematica
-   Mathematical Assistant on Web — symbolic computations online. Allows users to integrate in small steps (with hints for next step (integration by parts, substitution, partial fractions, application of formulas and others), powered by Maxima
-   Function Calculator from WIMS
-   Integral at HyperPhysics
-   Antiderivatives and indefinite integrals at the Khan Academy
-   Integral calculator at Symbolab
-   The Antiderivative at MIT
-   Introduction to Integrals at SparkNotes
-   Antiderivatives at Harvy Mudd College

Category:Integral calculus Category:Linear operators in calculus

[1]

[2]